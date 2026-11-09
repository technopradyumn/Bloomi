import 'dart:async';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/home/data/local/home_local_data_source.dart';
import 'package:bloomi/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:bloomi/features/home/domain/repositories/home_repository.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({required HomeLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  final HomeLocalDataSource _localDataSource;

  HomeDashboardEntity _buildDashboardEntity({
    required String userName,
    required DateTime now,
    required List<MealLog> meals,
    required int water,
    required Target? target,
    required UserProfile? profile,
    required int streak,
  }) {
    final hour = now.hour;
    String greeting;
    MascotState defaultMascotState;

    if (hour >= 5 && hour < 12) {
      greeting = 'Good morning, $userName!';
      defaultMascotState = MascotState.wave;
    } else if (hour >= 12 && hour < 17) {
      greeting = 'Good afternoon, $userName!';
      defaultMascotState = MascotState.happy;
    } else if (hour >= 17 && hour < 22) {
      greeting = 'Good evening, $userName!';
      defaultMascotState = MascotState.idle;
    } else {
      greeting = 'Good night, $userName!';
      defaultMascotState = MascotState.sleepy;
    }

    double totalKcal = 0;
    double totalProtein = 0;
    double totalCarbs = 0;
    double totalFat = 0;
    double totalFibre = 0;

    for (final meal in meals) {
      final snap = NutrientSnapshot.fromJson(meal.computedNutrientsSnapshot);
      totalKcal += snap.calories;
      totalProtein += snap.protein;
      totalCarbs += snap.carbs;
      totalFat += snap.fat;
      totalFibre += snap.fibre;
    }

    final isMale = (profile?.gender?.toLowerCase() ?? '') == 'male';
    double targetCalories = isMale ? 2000.0 : 1700.0;
    double targetProtein = 70.0;
    double targetCarbs = 210.0;
    double targetFat = 48.0;
    double targetFibre = 24.0;
    double targetWater = 2500.0;

    if (target != null) {
      targetCalories = target.calories;
      targetProtein = target.protein;
      targetCarbs = target.carbs;
      targetFat = target.fat;
      targetFibre = target.fibre;
      targetWater = target.waterMl;
    } else if (profile != null && (profile.heightCm ?? 0) > 0) {
      try {
        final age = profile.birthDate != null
            ? HealthCalculators.calculateAge(profile.birthDate!)
            : 25;
        final gender = isMale ? Gender.male : Gender.female;
        final plan = HealthCalculators.computeFullPlan(
          weightKg: 65.0,
          heightCm: profile.heightCm!,
          age: age,
          gender: gender,
          activityLevel: ActivityLevel.light,
          goal: HealthGoal.maintain,
        );
        targetCalories = plan.macros.calories;
        targetProtein = plan.macros.proteinGrams;
        targetCarbs = plan.macros.carbsGrams;
        targetFat = plan.macros.fatGrams;
        targetFibre = plan.macros.fibreGrams;
        targetWater = plan.waterMl;
      } catch (_) {}
    }

    return HomeDashboardEntity(
      greeting: greeting,
      userName: userName,
      mascotState: totalKcal >= targetCalories && targetCalories > 0
          ? MascotState.cheer
          : defaultMascotState,
      targetCalories: targetCalories,
      consumedCalories: totalKcal,
      protein: MacroData(
        name: 'Protein',
        currentGrams: totalProtein,
        targetGrams: targetProtein,
        color: AppColors.peach,
      ),
      carbs: MacroData(
        name: 'Carbs',
        currentGrams: totalCarbs,
        targetGrams: targetCarbs,
        color: AppColors.sky,
      ),
      fat: MacroData(
        name: 'Fat',
        currentGrams: totalFat,
        targetGrams: targetFat,
        color: AppColors.butter,
      ),
      fibre: MacroData(
        name: 'Fibre',
        currentGrams: totalFibre,
        targetGrams: targetFibre,
        color: AppColors.mint,
      ),
      targetWaterMl: targetWater,
      consumedWaterMl: water,
      streakDays: streak,
    );
  }

  @override
  Future<HomeDashboardEntity> getDashboardData({required String userName}) async {
    final now = DateTime.now();
    final results = await Future.wait([
      _localDataSource.getMealsForDate(now),
      _localDataSource.getWaterForDate(now),
      _localDataSource.getLatestTargets(),
      _localDataSource.getUserProfile(),
      _localDataSource.getCurrentStreak(),
    ]);

    final meals = results[0] as List<MealLog>;
    final water = results[1] as int;
    var target = results[2] as Target?;
    final profile = results[3] as UserProfile?;
    final streak = results[4] as int;

    if (target == null) {
      try {
        target = await sl<PlanRepository>().getTargets();
      } catch (_) {}
    }

    return _buildDashboardEntity(
      userName: userName,
      now: now,
      meals: meals,
      water: water,
      target: target,
      profile: profile,
      streak: streak,
    );
  }

  @override
  Stream<HomeDashboardEntity> watchDashboardData({required String userName}) {
    final controller = StreamController<HomeDashboardEntity>();
    final now = DateTime.now();

    List<MealLog> latestMeals = [];
    int latestWater = 0;
    Target? latestTarget;
    UserProfile? latestProfile;
    int latestStreak = 0;
    bool hasEmittedInitial = false;

    void emitCurrent() {
      if (controller.isClosed) return;
      controller.add(
        _buildDashboardEntity(
          userName: userName,
          now: DateTime.now(),
          meals: latestMeals,
          water: latestWater,
          target: latestTarget,
          profile: latestProfile,
          streak: latestStreak,
        ),
      );
    }

    // Immediately fetch current DB data and emit real state first
    getDashboardData(userName: userName).then((initialData) {
      if (!controller.isClosed && !hasEmittedInitial) {
        hasEmittedInitial = true;
        controller.add(initialData);
      }
    }).catchError((_) {});

    final sub1 = _localDataSource.watchMealsForDate(now).listen((meals) {
      latestMeals = meals;
      hasEmittedInitial = true;
      emitCurrent();
    });

    final sub2 = _localDataSource.watchWaterForDate(now).listen((water) {
      latestWater = water;
      hasEmittedInitial = true;
      emitCurrent();
    });

    final sub3 = _localDataSource.watchLatestTargets().listen((targets) {
      if (targets != null) {
        latestTarget = targets;
      }
      hasEmittedInitial = true;
      emitCurrent();
    });

    final sub4 = _localDataSource.watchCurrentStreak().listen((streak) {
      latestStreak = streak;
      hasEmittedInitial = true;
      emitCurrent();
    });

    final sub5 = _localDataSource.watchUserProfile().listen((profile) {
      if (profile != null) {
        latestProfile = profile;
      }
      hasEmittedInitial = true;
      emitCurrent();
    });

    final sub6 = sl<HealthRepository>().watchWorkoutLogs().listen((_) {
      emitCurrent();
    });

    controller.onCancel = () {
      sub1.cancel();
      sub2.cancel();
      sub3.cancel();
      sub4.cancel();
      sub5.cancel();
      sub6.cancel();
    };

    return controller.stream;
  }

  @override
  Future<void> logWater({required int ml}) => _localDataSource.logWater(ml: ml);

  @override
  Future<void> logBodyEntry({
    required String type,
    required double value,
    String? notes,
  }) =>
      _localDataSource.logBodyEntry(
        type: type,
        value: value,
        unit: type == 'weight' ? 'kg' : 'cm',
      );

  @override
  Future<void> logWorkout({
    required String type,
    required int durationMinutes,
    required double calories,
  }) =>
      _localDataSource.logWorkout(
        type: type,
        durationMinutes: durationMinutes,
        calories: calories,
      );
}

