import 'package:equatable/equatable.dart';

class DaySummaryEntity extends Equatable {
  final String dayName;
  final DateTime date;
  final double calories;
  final int waterMl;
  final int steps;
  final bool isTargetMet;

  const DaySummaryEntity({
    required this.dayName,
    required this.date,
    required this.calories,
    required this.waterMl,
    required this.steps,
    required this.isTargetMet,
  });

  @override
  List<Object?> get props => [dayName, date, calories, waterMl, steps, isTargetMet];
}

class WeeklyReportDataEntity extends Equatable {
  final double averageCalories;
  final double targetCalories;
  final int averageWaterMl;
  final int targetWaterMl;
  final int averageSteps;
  final int targetSteps;
  final String bestDay;
  final String mascotCommentary;
  final List<DaySummaryEntity> dailyBreakdown;

  const WeeklyReportDataEntity({
    required this.averageCalories,
    required this.targetCalories,
    required this.averageWaterMl,
    required this.targetWaterMl,
    required this.averageSteps,
    required this.targetSteps,
    required this.bestDay,
    required this.mascotCommentary,
    required this.dailyBreakdown,
  });

  @override
  List<Object?> get props => [
        averageCalories,
        targetCalories,
        averageWaterMl,
        targetWaterMl,
        averageSteps,
        targetSteps,
        bestDay,
        mascotCommentary,
        dailyBreakdown,
      ];
}

class BadgeEntity extends Equatable {
  final String id;
  final String badgeId;
  final String title;
  final String description;
  final String icon;
  final bool isUnlocked;
  final DateTime? unlockedAt;
  final int streakCounter;

  const BadgeEntity({
    required this.id,
    required this.badgeId,
    required this.title,
    required this.description,
    required this.icon,
    required this.isUnlocked,
    this.unlockedAt,
    this.streakCounter = 0,
  });

  @override
  List<Object?> get props => [
        id,
        badgeId,
        title,
        description,
        icon,
        isUnlocked,
        unlockedAt,
        streakCounter,
      ];
}

typedef WeeklyReportData = WeeklyReportDataEntity;
typedef BadgeModel = BadgeEntity;
typedef DaySummary = DaySummaryEntity;

