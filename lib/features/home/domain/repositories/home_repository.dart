import 'package:bloomi/features/home/domain/entities/home_dashboard_entity.dart';

abstract class HomeRepository {
  Stream<HomeDashboardEntity> watchDashboardData({required String userName});
  Future<HomeDashboardEntity> getDashboardData({required String userName});
  Future<void> logWater({required int ml});
  Future<void> logBodyEntry({required String type, required double value, String? notes});
  Future<void> logWorkout({required String type, required int durationMinutes, required double calories});
}

