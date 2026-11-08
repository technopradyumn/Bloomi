import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/features/auth/data/local/auth_local_data_source.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/features/onboarding/domain/entities/onboarding_profile_entity.dart';
import 'package:drift/drift.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

abstract class OnboardingLocalDataSource {
  Future<void> saveProfileAndTargets({
    required OnboardingProfileEntity profile,
    String? userId,
  });

  Future<OnboardingProfileEntity?> loadExistingProfile({String? userId});
}

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  const OnboardingLocalDataSourceImpl(this._db, {String Function()? userIdProvider})
      : _userIdProvider = userIdProvider;
  final AppDatabase _db;
  final String Function()? _userIdProvider;

  String get _currentUserId => _userIdProvider?.call() ?? 'default_user';

  @override
  Future<void> saveProfileAndTargets({
    required OnboardingProfileEntity profile,
    String? userId,
  }) async {
    final effectiveUserId = userId ?? _currentUserId;
    final now = DateTime.now();

    // 1. Save User Profile
    await _db.into(_db.userProfiles).insertOnConflictUpdate(
      UserProfilesCompanion.insert(
        id: effectiveUserId,
        userId: Value(effectiveUserId),
        isDirty: const Value(true),
        name: profile.name.isNotEmpty ? profile.name : 'Friend',
        gender: Value(profile.gender.name),
        birthDate: Value(profile.birthDate),
        heightCm: Value(profile.heightCm),
        units: Value(profile.isMetric ? 'metric' : 'imperial'),
        dietType: Value(profile.dietType),
        allergies: Value(profile.allergies.join(',')),
        createdAt: now,
        updatedAt: now,
      ),
    );

    // 2. Save Targets (Upsert single target record per user)
    final plan = profile.computedPlan;
    final existingTarget = await (_db.select(_db.targets)
          ..where((t) => t.userId.equals(effectiveUserId) & t.deleted.equals(false))
          ..orderBy([(t) => OrderingTerm(expression: t.updatedAt, mode: OrderingMode.desc)])
          ..limit(1))
        .getSingleOrNull();

    final targetId = existingTarget?.id ?? const Uuid().v4();
    await _db.into(_db.targets).insertOnConflictUpdate(
      TargetsCompanion.insert(
        id: targetId,
        userId: Value(effectiveUserId),
        isDirty: const Value(true),
        calories: plan.macros.calories,
        protein: plan.macros.proteinGrams,
        carbs: plan.macros.carbsGrams,
        fat: plan.macros.fatGrams,
        fibre: plan.macros.fibreGrams,
        waterMl: plan.waterMl,
        steps: plan.steps,
        sleepHours: plan.sleepHours,
        targetWeightKg: Value(profile.targetWeightKg),
        createdAt: existingTarget?.createdAt ?? now,
        updatedAt: now,
      ),
    );

    // Delete any stale duplicate targets for this user
    await (_db.delete(_db.targets)
          ..where((t) => t.userId.equals(effectiveUserId) & t.id.isNotValue(targetId)))
        .go();

    // 3. Record weight in bodyEntries
    await _db.into(_db.bodyEntries).insert(
      BodyEntriesCompanion.insert(
        id: const Uuid().v4(),
        userId: Value(effectiveUserId),
        isDirty: const Value(true),
        type: 'weight',
        value: profile.weightKg,
        unit: 'kg',
        measuredAt: now,
        createdAt: now,
        updatedAt: now,
      ),
    );

    // 4. Save goal and activity level in SharedPreferences
    try {
      final prefs = sl<SharedPreferences>();
      await prefs.setString('bloomi_user_goal_$effectiveUserId', profile.goal.name);
      await prefs.setString('bloomi_user_activity_$effectiveUserId', profile.activityLevel.name);
    } catch (_) {}
  }

  @override
  Future<OnboardingProfileEntity?> loadExistingProfile({String? userId}) async {
    final effectiveUserId = userId ?? _currentUserId;

    // 1. Query User Profile with effectiveUserId only — no cross-user fallback
    final userProfile = await (_db.select(_db.userProfiles)
          ..where((tbl) => tbl.userId.equals(effectiveUserId) & tbl.deleted.equals(false))
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.updatedAt)])
          ..limit(1))
        .getSingleOrNull();

    // 2. Query Targets with effectiveUserId only — no cross-user fallback
    final target = await (_db.select(_db.targets)
          ..where((tbl) => tbl.userId.equals(effectiveUserId) & tbl.deleted.equals(false))
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.updatedAt)])
          ..limit(1))
        .getSingleOrNull();

    // 3. Query Weight Entry with effectiveUserId only — no cross-user fallback
    final weightEntry = await (_db.select(_db.bodyEntries)
          ..where((tbl) =>
              tbl.userId.equals(effectiveUserId) &
              tbl.type.equals('weight') &
              tbl.deleted.equals(false))
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.measuredAt)])
          ..limit(1))
        .getSingleOrNull();

    // If no profile, target, or weight record exists for this specific user, they have no saved profile
    if (userProfile == null && target == null && weightEntry == null) {
      return null;
    }

    // 4. Resolve User Name (from profile, or cached session)
    String resolvedName = userProfile?.name ?? '';
    if (resolvedName.isEmpty || resolvedName == 'Friend') {
      try {
        final cachedUser = sl<AuthRepository>().getCachedUserSync();
        if (cachedUser?.displayName != null && cachedUser!.displayName.isNotEmpty) {
          resolvedName = cachedUser.displayName;
        }
      } catch (_) {}

      if (resolvedName.isEmpty || resolvedName == 'Friend') {
        try {
          final cachedUser = await sl<AuthLocalDataSource>().getCachedUser();
          final cachedName = cachedUser?.displayName;
          if (cachedName != null && cachedName.isNotEmpty) {
            resolvedName = cachedName;
          }
        } catch (_) {}
      }
    }
    if (resolvedName.isEmpty) resolvedName = 'Friend';

    Gender gender = Gender.female;
    if (userProfile?.gender != null) {
      gender = Gender.values.firstWhere(
        (g) => g.name.toLowerCase() == userProfile!.gender!.toLowerCase(),
        orElse: () => Gender.female,
      );
    }

    final allergiesSet = userProfile?.allergies != null && userProfile!.allergies!.isNotEmpty
        ? userProfile.allergies!.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toSet()
        : <String>{};

    final currentWeight = weightEntry?.value ?? 65.0;
    final targetWeight = target?.targetWeightKg ?? 60.0;

    // 5. Restore Goal and Activity Level
    HealthGoal resolvedGoal = HealthGoal.loseStandard;
    ActivityLevel resolvedActivity = ActivityLevel.light;

    try {
      final prefs = sl<SharedPreferences>();
      final savedGoalStr = prefs.getString('bloomi_user_goal_$effectiveUserId');
      if (savedGoalStr != null) {
        resolvedGoal = HealthGoal.values.firstWhere(
          (g) => g.name == savedGoalStr,
          orElse: () => HealthGoal.loseStandard,
        );
      } else {
        if (targetWeight < currentWeight - 0.5) {
          resolvedGoal = HealthGoal.loseStandard;
        } else if (targetWeight > currentWeight + 0.5) {
          resolvedGoal = HealthGoal.gainMuscle;
        } else {
          resolvedGoal = HealthGoal.maintain;
        }
      }

      final savedActivityStr = prefs.getString('bloomi_user_activity_$effectiveUserId');
      if (savedActivityStr != null) {
        resolvedActivity = ActivityLevel.values.firstWhere(
          (a) => a.name == savedActivityStr,
          orElse: () => ActivityLevel.light,
        );
      }
    } catch (_) {}

    return OnboardingProfileEntity(
      name: resolvedName,
      gender: gender,
      birthDate: userProfile?.birthDate,
      heightCm: userProfile?.heightCm ?? 165.0,
      weightKg: currentWeight,
      targetWeightKg: targetWeight,
      isMetric: userProfile == null || userProfile.units == 'metric',
      goal: resolvedGoal,
      activityLevel: resolvedActivity,
      dietType: userProfile?.dietType ?? 'Vegetarian',
      allergies: allergiesSet,
      isDisclaimerAccepted: true,
    );
  }
}
