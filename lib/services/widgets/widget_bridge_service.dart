import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WidgetSyncPayload {
  final double remainingCalories;
  final double targetCalories;
  final int waterLoggedMl;
  final int targetWaterMl;
  final int steps;
  final int targetSteps;
  final int streakCount;
  final String nextReminder;
  final DateTime lastUpdated;

  const WidgetSyncPayload({
    required this.remainingCalories,
    required this.targetCalories,
    required this.waterLoggedMl,
    required this.targetWaterMl,
    required this.steps,
    required this.targetSteps,
    required this.streakCount,
    required this.nextReminder,
    required this.lastUpdated,
  });

  Map<String, dynamic> toMap() => {
        'remainingCalories': remainingCalories,
        'targetCalories': targetCalories,
        'waterLoggedMl': waterLoggedMl,
        'targetWaterMl': targetWaterMl,
        'steps': steps,
        'targetSteps': targetSteps,
        'streakCount': streakCount,
        'nextReminder': nextReminder,
        'lastUpdated': lastUpdated.toIso8601String(),
      };

  factory WidgetSyncPayload.fromMap(Map<String, dynamic> map) {
    return WidgetSyncPayload(
      remainingCalories: (map['remainingCalories'] as num?)?.toDouble() ?? 0.0,
      targetCalories: (map['targetCalories'] as num?)?.toDouble() ?? 2000.0,
      waterLoggedMl: (map['waterLoggedMl'] as num?)?.toInt() ?? 0,
      targetWaterMl: (map['targetWaterMl'] as num?)?.toInt() ?? 2500,
      steps: (map['steps'] as num?)?.toInt() ?? 0,
      targetSteps: (map['targetSteps'] as num?)?.toInt() ?? 10000,
      streakCount: (map['streakCount'] as num?)?.toInt() ?? 0,
      nextReminder: map['nextReminder'] as String? ?? 'Dinner at 8:00 PM',
      lastUpdated: map['lastUpdated'] != null
          ? DateTime.parse(map['lastUpdated'] as String)
          : DateTime.now(),
    );
  }

  String toJson() => jsonEncode(toMap());

  factory WidgetSyncPayload.fromJson(String jsonStr) =>
      WidgetSyncPayload.fromMap(jsonDecode(jsonStr) as Map<String, dynamic>);
}

class WidgetBridgeService {
  static const MethodChannel _channel =
      MethodChannel('com.bloomi.app/widget_bridge');

  static const String _prefKey = 'bloomi_widget_payload';

  Future<void> updateWidgets(WidgetSyncPayload payload) async {
    try {
      // 1. Save to SharedPreferences for Android/iOS Glance widget extensions
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_prefKey, payload.toJson());

      // 2. Invoke platform method channel for Wear OS tile & Home screen broadcast
      try {
        await _channel.invokeMethod('updateWidgetData', payload.toMap());
      } on MissingPluginException {
        // Expected when running on Desktop or during automated tests
        debugPrint('WidgetBridge: Native channel not present on this platform/test');
      } catch (e) {
        debugPrint('WidgetBridge channel error: $e');
      }
    } catch (e) {
      debugPrint('WidgetBridge failed to update: $e');
    }
  }

  Future<WidgetSyncPayload?> getLatestWidgetData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final str = prefs.getString(_prefKey);
      if (str != null) {
        return WidgetSyncPayload.fromJson(str);
      }
    } catch (_) {}
    return null;
  }
}

