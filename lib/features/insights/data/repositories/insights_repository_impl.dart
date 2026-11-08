import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/insights/data/local/insights_local_data_source.dart';
import 'package:bloomi/features/insights/domain/entities/insights_entity.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:bloomi/services/notifications/notification_service.dart';
import 'package:drift/drift.dart' as drift;
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class InsightsRepositoryImpl implements InsightsRepository {
  final InsightsLocalDataSource _localDataSource;
  final PlanRepository _planRepo;

  InsightsRepositoryImpl({
    required InsightsLocalDataSource localDataSource,
    required PlanRepository planRepo,
  })  : _localDataSource = localDataSource,
        _planRepo = planRepo;

  static const List<(String, String, String, String)> standardBadges = [
    ('first_log', 'First Blossom', 'Log your very first meal or glass of water', '🌱'),
    ('hydration_hero', 'Hydration Hero', 'Log water 3 days in a row', '💧'),
    ('balanced_plate', 'Balanced Plate', 'Reach your daily protein and fiber balance', '🥗'),
    ('seven_days', '7-Day Blooming', 'Log consistently for 7 days in a row', '🌸'),
    ('rested_mind', 'Mindful Rest', 'Maintain mindful bedtime habits', '🌙'),
  ];

  @override
  Future<void> seedBadgesIfEmpty() async {
    final existing = await _localDataSource.getAchievements();

    if (existing.isEmpty) {
      final now = DateTime.now();
      for (final b in standardBadges) {
        await _localDataSource.insertAchievement(
          AchievementsAndStreaksCompanion.insert(
            id: const Uuid().v4(),
            badgeId: b.$1,
            streakCounter: const drift.Value(0),
            createdAt: now,
            updatedAt: now,
          ),
        );
      }
    }
  }

  @override
  Stream<List<BadgeEntity>> watchBadges() {
    return _localDataSource.watchAchievements().map((rows) {
      return standardBadges.map((badgeDef) {
        final row = rows.where((r) => r.badgeId == badgeDef.$1).firstOrNull;
        return BadgeEntity(
          id: row?.id ?? badgeDef.$1,
          badgeId: badgeDef.$1,
          title: badgeDef.$2,
          description: badgeDef.$3,
          icon: badgeDef.$4,
          isUnlocked: row?.unlockedAt != null,
          unlockedAt: row?.unlockedAt,
          streakCounter: row?.streakCounter ?? 0,
        );
      }).toList();
    });
  }

  @override
  Future<void> unlockBadge(String badgeId) async {
    final achievements = await _localDataSource.getAchievements();
    final existing = achievements.where((b) => b.badgeId == badgeId).firstOrNull;
    final isAlreadyUnlocked = existing?.unlockedAt != null;

    await _localDataSource.unlockBadge(badgeId, DateTime.now());

    if (!isAlreadyUnlocked) {
      final badgeDef = standardBadges.where((b) => b.$1 == badgeId).firstOrNull;
      if (badgeDef != null) {
        try {
          if (sl.isRegistered<NotificationService>()) {
            final notifService = sl<NotificationService>();
            await notifService.showMilestoneNotification(
              id: badgeId.hashCode,
              title: 'Milestone Unlocked! ${badgeDef.$4} ${badgeDef.$2}',
              body: badgeDef.$3,
              payload: '/insights/streaks',
            );
          }
        } catch (_) {}
      }
    }
  }

  @override
  Future<WeeklyReportDataEntity> getWeeklyReport() async {
    final targets = await _planRepo.getTargets();
    final now = DateTime.now();
    final sevenDaysAgo = now.subtract(const Duration(days: 6));
    final since = DateTime(sevenDaysAgo.year, sevenDaysAgo.month, sevenDaysAgo.day);

    final mealLogs = await _localDataSource.getMealLogsSince(since);
    final waterLogs = await _localDataSource.getWaterLogsSince(since);
    final stepRecords = await _localDataSource.getStepRecordsSince(since);

    int todayLiveSteps = 0;
    try {
      final bundle = await sl<HealthRepository>().getLatestBundle();
      todayLiveSteps = bundle.steps;
    } catch (_) {}

    final List<DaySummaryEntity> days = [];
    double totalCalories = 0;
    int totalWater = 0;
    int totalSteps = 0;
    String bestDay = DateFormat('EEEE').format(now);
    double maxScore = -1;

    for (int i = 0; i < 7; i++) {
      final curDate = sevenDaysAgo.add(Duration(days: i));
      final dayName = DateFormat('EEEE').format(curDate);
      final isToday = curDate.year == now.year && curDate.month == now.month && curDate.day == now.day;

      final dayMeals = mealLogs.where((m) =>
          m.date.year == curDate.year &&
          m.date.month == curDate.month &&
          m.date.day == curDate.day);

      final dayWater = waterLogs.where((w) =>
          w.date.year == curDate.year &&
          w.date.month == curDate.month &&
          w.date.day == curDate.day);

      double dayKcal = 0;
      for (final m in dayMeals) {
        final snap = NutrientSnapshotModel.fromJson(m.computedNutrientsSnapshot);
        dayKcal += snap.calories;
      }

      int dayMl = 0;
      for (final w in dayWater) {
        dayMl += w.ml;
      }

      int daySteps = 0;
      if (isToday && todayLiveSteps > 0) {
        daySteps = todayLiveSteps;
      } else {
        final dayStepRecs = stepRecords.where((s) =>
            s.startTime.year == curDate.year &&
            s.startTime.month == curDate.month &&
            s.startTime.day == curDate.day);
        for (final rec in dayStepRecs) {
          daySteps += rec.value.toInt();
        }
      }

      // Compute balance score: reward calories close to target, water logged, and steps taken
      double score = 0;
      if (dayKcal > 0) {
        final calRatio = (dayKcal / targets.calories).clamp(0.0, 1.0);
        score += calRatio * 40;
      }
      if (dayMl > 0) {
        final waterRatio = (dayMl / targets.waterMl).clamp(0.0, 1.0);
        score += waterRatio * 30;
      }
      if (daySteps > 0) {
        final stepRatio = (daySteps / targets.steps).clamp(0.0, 1.0);
        score += stepRatio * 30;
      }

      if (score > maxScore) {
        maxScore = score;
        bestDay = dayName;
      }

      totalCalories += dayKcal;
      totalWater += dayMl;
      totalSteps += daySteps;

      days.add(
        DaySummaryEntity(
          dayName: DateFormat('EEE').format(curDate),
          date: curDate,
          calories: dayKcal,
          waterMl: dayMl,
          steps: daySteps,
          isTargetMet: (dayKcal >= targets.calories * 0.8 && dayKcal <= targets.calories * 1.25) ||
              (dayWater.isNotEmpty && daySteps >= targets.steps * 0.75),
        ),
      );
    }

    final avgKcal = (totalCalories / 7).roundToDouble();
    final avgWater = (totalWater / 7).round();
    final avgSteps = (totalSteps / 7).round();

    String commentary = 'You did a wonderful job staying mindful and nourishing your body this week! Keep blooming at your own gentle pace.';
    if (avgKcal >= targets.calories * 0.9) {
      commentary = 'Splendid nourishment! You stayed very close to your daily calorie target with consistent balanced energy.';
    }

    return WeeklyReportDataEntity(
      averageCalories: avgKcal,
      targetCalories: targets.calories,
      averageWaterMl: avgWater,
      targetWaterMl: targets.waterMl.toInt(),
      averageSteps: avgSteps,
      targetSteps: targets.steps,
      bestDay: bestDay,
      mascotCommentary: commentary,
      dailyBreakdown: days,
    );
  }

  @override
  Future<int> getCurrentStreak() async {
    final mealLogs = await _localDataSource.getAllMealLogs();
    final waterLogs = await _localDataSource.getAllWaterLogs();

    final activeDates = <String>{};
    for (final m in mealLogs) {
      activeDates.add(
        '${m.date.year}-${m.date.month.toString().padLeft(2, '0')}-${m.date.day.toString().padLeft(2, '0')}',
      );
    }
    for (final w in waterLogs) {
      activeDates.add(
        '${w.date.year}-${w.date.month.toString().padLeft(2, '0')}-${w.date.day.toString().padLeft(2, '0')}',
      );
    }

    if (activeDates.isEmpty) return 0;

    final now = DateTime.now();
    final todayStr =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
    final yesterday = now.subtract(const Duration(days: 1));
    final yesterdayStr =
        '${yesterday.year}-${yesterday.month.toString().padLeft(2, '0')}-${yesterday.day.toString().padLeft(2, '0')}';

    // If no activity today and no activity yesterday, streak is broken
    if (!activeDates.contains(todayStr) && !activeDates.contains(yesterdayStr)) {
      return 0;
    }

    int streak = 0;
    DateTime checkDate = activeDates.contains(todayStr) ? now : yesterday;

    while (true) {
      final key =
          '${checkDate.year}-${checkDate.month.toString().padLeft(2, '0')}-${checkDate.day.toString().padLeft(2, '0')}';
      if (activeDates.contains(key)) {
        streak++;
        checkDate = checkDate.subtract(const Duration(days: 1));
      } else {
        break;
      }
    }

    return streak;
  }

  @override
  Future<void> evaluateAndUnlockMilestones() async {
    await seedBadgesIfEmpty();
    final mealLogs = await _localDataSource.getAllMealLogs();
    final waterLogs = await _localDataSource.getAllWaterLogs();
    final streak = await getCurrentStreak();

    // 1. first_log: First Blossom (at least 1 meal or 1 water log recorded)
    if (mealLogs.isNotEmpty || waterLogs.isNotEmpty) {
      await unlockBadge('first_log');
    }

    // 2. hydration_hero: Logged water on at least 3 distinct days
    final waterDates = <String>{};
    for (final w in waterLogs) {
      waterDates.add(
        '${w.date.year}-${w.date.month.toString().padLeft(2, '0')}-${w.date.day.toString().padLeft(2, '0')}',
      );
    }
    if (waterDates.length >= 3) {
      await unlockBadge('hydration_hero');
    }

    // 3. seven_days: 7-Day Blooming (streak >= 7)
    if (streak >= 7) {
      await unlockBadge('seven_days');
    }

    // 4. balanced_plate: At least 1 meal has protein and balanced calories
    for (final m in mealLogs) {
      try {
        final snap = NutrientSnapshotModel.fromJson(m.computedNutrientsSnapshot);
        if (snap.calories >= 250 && snap.protein >= 15) {
          await unlockBadge('balanced_plate');
          break;
        }
      } catch (_) {}
    }

    // 5. rested_mind: Mindful rest / active streak of at least 3 days
    if (streak >= 3) {
      await unlockBadge('rested_mind');
    }
  }
}

