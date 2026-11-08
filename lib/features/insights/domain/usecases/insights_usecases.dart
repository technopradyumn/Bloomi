import 'package:bloomi/features/insights/domain/entities/insights_entity.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';

class GetWeeklyReportUseCase {
  final InsightsRepository repository;
  GetWeeklyReportUseCase(this.repository);

  Future<WeeklyReportDataEntity> call() => repository.getWeeklyReport();
}

class WatchBadgesUseCase {
  final InsightsRepository repository;
  WatchBadgesUseCase(this.repository);

  Stream<List<BadgeEntity>> call() => repository.watchBadges();
}

class UnlockBadgeUseCase {
  final InsightsRepository repository;
  UnlockBadgeUseCase(this.repository);

  Future<void> call(String badgeId) => repository.unlockBadge(badgeId);
}

