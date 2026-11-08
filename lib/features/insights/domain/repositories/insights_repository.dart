import 'package:bloomi/features/insights/domain/entities/insights_entity.dart';

abstract class InsightsRepository {
  Future<void> seedBadgesIfEmpty();
  Stream<List<BadgeEntity>> watchBadges();
  Future<void> unlockBadge(String badgeId);
  Future<WeeklyReportDataEntity> getWeeklyReport();
  Future<int> getCurrentStreak();
  Future<void> evaluateAndUnlockMilestones();
}

