import 'package:bloomi/services/health/health_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthDataBundle tests', () {
    test('HealthDataBundle.empty creates valid zeroed object', () {
      final bundle = HealthDataBundle.empty();
      expect(bundle.steps, 0);
      expect(bundle.heartRate, 0);
      expect(bundle.sleepDuration, Duration.zero);
      expect(bundle.activeCalories, 0);
      expect(bundle.distanceMeters, 0);
      expect(bundle.primarySource, 'No data');
    });

    test('HealthDataBundle constructs with correct values and estimates', () {
      final now = DateTime.now();
      final bundle = HealthDataBundle(
        steps: 8450,
        heartRate: 72.0,
        restingHeartRate: 64.0,
        minHeartRate: 58.0,
        maxHeartRate: 135.0,
        activeCalories: 338.0,
        distanceMeters: 6438.9,
        spo2Percentage: 98.0,
        weightKg: 72.5,
        systolicBp: 118.0,
        diastolicBp: 78.0,
        sleepDuration: const Duration(hours: 7, minutes: 45),
        sleepBedtime: now.subtract(const Duration(hours: 8)),
        sleepWakeTime: now.subtract(const Duration(minutes: 15)),
        sleepStages: const {
          'deep': Duration(hours: 1, minutes: 30),
          'rem': Duration(hours: 2),
          'light': Duration(hours: 4, minutes: 15),
        },
        primarySource: 'Google Health Connect',
        lastUpdated: now,
      );

      expect(bundle.steps, 8450);
      expect(bundle.heartRate, 72.0);
      expect(bundle.restingHeartRate, 64.0);
      expect(bundle.activeCalories, 338.0);
      expect(bundle.distanceMeters, 6438.9);
      expect(bundle.spo2Percentage, 98.0);
      expect(bundle.weightKg, 72.5);
      expect(bundle.systolicBp, 118.0);
      expect(bundle.diastolicBp, 78.0);
      expect(bundle.sleepDuration.inMinutes, 7 * 60 + 45);
      expect(bundle.primarySource, 'Google Health Connect');
    });
  });
}

