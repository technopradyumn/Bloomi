part of 'insights_bloc.dart';

abstract class InsightsEvent extends Equatable {
  const InsightsEvent();

  @override
  List<Object?> get props => [];
}

class InsightsReportRequested extends InsightsEvent {
  const InsightsReportRequested();
}

class InsightsBadgeUnlocked extends InsightsEvent {
  final String badgeId;
  const InsightsBadgeUnlocked(this.badgeId);

  @override
  List<Object?> get props => [badgeId];
}

