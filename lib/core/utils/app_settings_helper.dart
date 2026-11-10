import 'dart:io';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

class AppSettingsHelper {
  static const MethodChannel _channel = MethodChannel('com.bloomi.app/settings');

  /// Opens the specific Android App Permissions management screen (showing switches for each permission)
  /// instead of just the generic Application Info page.
  static Future<void> openAppPermissionSettings() async {
    if (Platform.isAndroid) {
      try {
        final success = await _channel.invokeMethod<bool>('openAppPermissionSettings');
        if (success == true) return;
      } catch (_) {}
    }
    await openAppSettings();
  }

  /// Opens the Android Notification Settings specifically for Bloomi.
  static Future<void> openNotificationSettings() async {
    if (Platform.isAndroid) {
      try {
        final success = await _channel.invokeMethod<bool>('openNotificationSettings');
        if (success == true) return;
      } catch (_) {}
    }
    await openAppSettings();
  }

  /// Opens the Android Battery Optimization Settings screen so user can exempt Bloomi.
  static Future<void> openBatteryOptimizationSettings() async {
    if (Platform.isAndroid) {
      try {
        final success = await _channel.invokeMethod<bool>('openBatteryOptimizationSettings');
        if (success == true) return;
      } catch (_) {}
    }
    await openAppSettings();
  }

  /// Opens the system Location Source / Services settings page directly.
  static Future<void> openLocationSettings() async {
    if (Platform.isAndroid) {
      try {
        final success = await _channel.invokeMethod<bool>('openLocationSettings');
        if (success == true) return;
      } catch (_) {}
    }
    await openAppSettings();
  }

  /// Opens the Health Connect permissions or app page directly.
  static Future<void> openHealthConnectSettings() async {
    if (Platform.isAndroid) {
      try {
        final success = await _channel.invokeMethod<bool>('openHealthConnectSettings');
        if (success == true) return;
      } catch (_) {}
    }
    await openAppSettings();
  }
}

