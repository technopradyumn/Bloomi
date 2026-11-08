import 'dart:async';
import 'package:bloomi/app/router/app_router.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

enum BloomiNotificationType {
  hydration,
  steps,
  heartRate,
  sleep,
  calories,
  bloodOxygen,
  weight,
  bloodPressure,
  nutrition,
  milestones,
  dailyPlan,
}

class NotificationChannelDefinition {
  final String id;
  final String name;
  final String description;
  final String rawSoundName;
  final Importance importance;

  const NotificationChannelDefinition({
    required this.id,
    required this.name,
    required this.description,
    required this.rawSoundName,
    this.importance = Importance.high,
  });
}

class NotificationService {
  final FlutterLocalNotificationsPlugin _plugin = FlutterLocalNotificationsPlugin();
  bool _isInitialized = false;

  static const Map<BloomiNotificationType, NotificationChannelDefinition> channels = {
    BloomiNotificationType.hydration: NotificationChannelDefinition(
      id: 'bloomi_channel_hydration_v2',
      name: 'Hydration Reminders',
      description: 'Gentle water reminders with mindful droplet tones.',
      rawSoundName: 'sound_water_drop',
    ),
    BloomiNotificationType.steps: NotificationChannelDefinition(
      id: 'bloomi_channel_steps_v2',
      name: 'Step & Mobility Alerts',
      description: 'Daily step goals and movement milestones.',
      rawSoundName: 'sound_steps_stride',
    ),
    BloomiNotificationType.heartRate: NotificationChannelDefinition(
      id: 'bloomi_channel_heart_rate_v2',
      name: 'Heart Rate Alerts',
      description: 'Cardiovascular wellness and resting pulse highlights.',
      rawSoundName: 'sound_heartbeat_pulse',
    ),
    BloomiNotificationType.sleep: NotificationChannelDefinition(
      id: 'bloomi_channel_sleep_v2',
      name: 'Sleep & Wind-down',
      description: 'Evening wind-down and bedtime macro checklists.',
      rawSoundName: 'sound_sleep_chime',
    ),
    BloomiNotificationType.calories: NotificationChannelDefinition(
      id: 'bloomi_channel_calories_v2',
      name: 'Calorie & Active Energy',
      description: 'Daily active calorie burn and target pacing.',
      rawSoundName: 'sound_calories_flame',
    ),
    BloomiNotificationType.bloodOxygen: NotificationChannelDefinition(
      id: 'bloomi_channel_blood_oxygen_v2',
      name: 'Blood Oxygen (SpO2)',
      description: 'Respiratory vitals and oxygen saturation updates.',
      rawSoundName: 'sound_oxygen_breeze',
    ),
    BloomiNotificationType.weight: NotificationChannelDefinition(
      id: 'bloomi_channel_weight_v2',
      name: 'Weight & Body Metrics',
      description: 'Weekly weigh-in and body composition tracking.',
      rawSoundName: 'sound_weight_ping',
    ),
    BloomiNotificationType.bloodPressure: NotificationChannelDefinition(
      id: 'bloomi_channel_blood_pressure_v2',
      name: 'Blood Pressure Vitals',
      description: 'Resting systolic and diastolic wellness checks.',
      rawSoundName: 'sound_blood_pressure',
    ),
    BloomiNotificationType.nutrition: NotificationChannelDefinition(
      id: 'bloomi_channel_nutrition_v2',
      name: 'Meal & Nourishment',
      description: 'Breakfast, lunch, and dinner check-ins.',
      rawSoundName: 'sound_nutrition_bell',
    ),
    BloomiNotificationType.milestones: NotificationChannelDefinition(
      id: 'bloomi_channel_milestones_v2',
      name: 'Achievements & Milestones',
      description: 'Celebratory streak badges and wellness achievements.',
      rawSoundName: 'sound_milestone_fanfare',
      importance: Importance.max,
    ),
    BloomiNotificationType.dailyPlan: NotificationChannelDefinition(
      id: 'bloomi_channel_daily_plan_v2',
      name: 'Daily Plan & Targets',
      description: 'Morning mindful daily target briefing.',
      rawSoundName: 'sound_daily_plan',
    ),
  };

  /// Optional listener hook for testing or custom navigation overrides.
  static void Function(String route)? onNotificationRouteTap;

  /// Handles routing and actions when a notification is clicked or an action is pressed.
  static void handleNotificationResponse(NotificationResponse response) {
    final payload = response.payload;
    final actionId = response.actionId;

    debugPrint('Notification interacted: actionId=$actionId, payload=$payload');

    // Handle interactive notification actions
    if (actionId == 'action_log_water') {
      final context = rootNavigatorKey.currentContext;
      if (context != null) {
        try {
          GoRouter.of(context).push('/food/water');
        } catch (_) {}
      }
      return;
    } else if (actionId == 'action_log_meal') {
      final context = rootNavigatorKey.currentContext;
      if (context != null) {
        try {
          GoRouter.of(context).push('/food');
        } catch (_) {}
      }
      return;
    } else if (actionId == 'action_snooze') {
      debugPrint('Notification snoozed by user');
      return;
    }

    if (payload != null && payload.isNotEmpty) {
      handleNotificationPayload(payload);
    }
  }

  /// Handles routing when a notification (reminder or milestone) is clicked.
  static void handleNotificationPayload(String payload) {
    debugPrint('Notification payload opened: $payload');
    final handler = onNotificationRouteTap;
    if (handler != null) {
      handler(payload);
      return;
    }

    final context = rootNavigatorKey.currentContext;
    if (context != null) {
      try {
        GoRouter.of(context).push(payload);
      } catch (_) {
        try {
          GoRouter.of(context).go(payload);
        } catch (e) {
          debugPrint('Failed to navigate to notification payload: $e');
        }
      }
    }
  }

  Future<void> initialize() async {
    if (_isInitialized) return;
    try {
      // 1. Initialize timezones
      try {
        tz.initializeTimeZones();
      } catch (_) {}

      // 2. Initialize platform settings
      const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
      const darwinSettings = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );

      const initSettings = InitializationSettings(
        android: androidSettings,
        iOS: darwinSettings,
      );

      await _plugin.initialize(
        settings: initSettings,
        onDidReceiveNotificationResponse: handleNotificationResponse,
      );

      // 3. Configure Android Channels with unique custom sounds
      final androidPlugin = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
      if (androidPlugin != null) {
        // Delete legacy channels that don't have custom sounds
        try {
          await androidPlugin.deleteNotificationChannel(channelId: 'bloomi_reminders');
          await androidPlugin.deleteNotificationChannel(channelId: 'bloomi_milestones');
        } catch (_) {}

        // Read user sound preferences
        final prefs = await SharedPreferences.getInstance();
        final masterSoundEnabled = prefs.getBool('notifications_sound_enabled') ?? true;

        for (final entry in channels.entries) {
          final def = entry.value;
          final typeSoundEnabled = prefs.getBool('notif_sound_${entry.key.name}') ?? true;
          final playSound = masterSoundEnabled && typeSoundEnabled;

          final channel = AndroidNotificationChannel(
            def.id,
            def.name,
            description: def.description,
            importance: def.importance,
            playSound: playSound,
            sound: playSound ? RawResourceAndroidNotificationSound(def.rawSoundName) : null,
            enableVibration: true,
            showBadge: true,
          );
          await androidPlugin.createNotificationChannel(channel);
        }
      }

      // 4. Check if app was cold-started from tapping a notification
      final launchDetails = await _plugin.getNotificationAppLaunchDetails();
      if (launchDetails != null && launchDetails.didNotificationLaunchApp) {
        final resp = launchDetails.notificationResponse;
        if (resp != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            handleNotificationResponse(resp);
          });
        }
      }

      _isInitialized = true;
    } catch (e) {
      debugPrint('NotificationService init error (safe to ignore in tests): $e');
    }
  }

  /// Re-syncs notification channel sound settings when user toggles sounds in Settings.
  Future<void> updateChannelSoundSettings() async {
    _isInitialized = false;
    await initialize();
  }

  Future<bool> requestPermission() async {
    try {
      if (!_isInitialized) await initialize();
      final androidImplementation = _plugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
      if (androidImplementation != null) {
        final granted = await androidImplementation.requestNotificationsPermission();
        try {
          await androidImplementation.requestExactAlarmsPermission();
        } catch (_) {}
        return granted ?? false;
      }
      final iosImplementation =
          _plugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();
      if (iosImplementation != null) {
        final granted = await iosImplementation.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
        return granted ?? false;
      }
      return true;
    } catch (e) {
      debugPrint('Notification permission request error: $e');
      return false;
    }
  }

  BloomiNotificationType resolveNotificationType(String typeStr) {
    switch (typeStr.toLowerCase()) {
      case 'water':
      case 'hydration':
        return BloomiNotificationType.hydration;
      case 'step':
      case 'steps':
      case 'distance':
      case 'walk':
        return BloomiNotificationType.steps;
      case 'heart_rate':
      case 'pulse':
      case 'bpm':
        return BloomiNotificationType.heartRate;
      case 'sleep':
      case 'bedtime':
      case 'wind_down':
        return BloomiNotificationType.sleep;
      case 'calories':
      case 'burned':
        return BloomiNotificationType.calories;
      case 'spo2':
      case 'oxygen':
      case 'blood_oxygen':
        return BloomiNotificationType.bloodOxygen;
      case 'weight':
      case 'weigh_in':
        return BloomiNotificationType.weight;
      case 'bp':
      case 'blood_pressure':
        return BloomiNotificationType.bloodPressure;
      case 'breakfast':
      case 'lunch':
      case 'dinner':
      case 'meal':
      case 'snack':
      case 'nutrition':
        return BloomiNotificationType.nutrition;
      case 'milestone':
      case 'achievement':
      case 'badge':
      case 'streak':
        return BloomiNotificationType.milestones;
      case 'plan':
      case 'daily_plan':
      case 'target':
        return BloomiNotificationType.dailyPlan;
      default:
        return BloomiNotificationType.nutrition;
    }
  }

  NotificationDetails _buildNotificationDetails({
    required BloomiNotificationType type,
    List<AndroidNotificationAction>? actions,
  }) {
    final def = channels[type]!;
    final androidDetails = AndroidNotificationDetails(
      def.id,
      def.name,
      channelDescription: def.description,
      importance: def.importance,
      priority: Priority.high,
      sound: RawResourceAndroidNotificationSound(def.rawSoundName),
      playSound: true,
      enableVibration: true,
      showWhen: true,
      actions: actions,
      styleInformation: const BigTextStyleInformation(''),
    );

    final darwinDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      sound: '${def.rawSoundName}.wav',
    );

    return NotificationDetails(android: androidDetails, iOS: darwinDetails);
  }

  /// Sends a real-time system notification immediately with sound and channel actions.
  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    required BloomiNotificationType type,
    String? payload,
    List<AndroidNotificationAction>? actions,
  }) async {
    try {
      if (!_isInitialized) await initialize();
      await requestPermission();

      final details = _buildNotificationDetails(
        type: type,
        actions: actions,
      );

      await _plugin.show(
        id: id,
        title: title,
        body: body,
        notificationDetails: details,
        payload: payload,
      );

      debugPrint('Real system notification #$id posted on channel ${type.name}: "$title"');
    } catch (e) {
      debugPrint('Failed to post notification #$id: $e');
    }
  }

  /// Schedules a timezone-aware recurring daily reminder with exact alarm capability.
  Future<void> scheduleDailyReminder({
    required int id,
    required String title,
    required String body,
    required int hour,
    required int minute,
    String typeStr = 'nutrition',
    String? payload,
  }) async {
    try {
      if (!_isInitialized) await initialize();
      await requestPermission();

      final type = resolveNotificationType(typeStr);

      List<AndroidNotificationAction>? actions;
      if (type == BloomiNotificationType.hydration) {
        actions = [
          const AndroidNotificationAction(
            'action_log_water',
            '💧 Log +250ml',
            showsUserInterface: true,
          ),
          const AndroidNotificationAction(
            'action_snooze',
            'Snooze 15m',
            showsUserInterface: false,
          ),
        ];
      } else if (type == BloomiNotificationType.nutrition) {
        actions = [
          const AndroidNotificationAction(
            'action_log_meal',
            '🥗 Log Meal',
            showsUserInterface: true,
          ),
          const AndroidNotificationAction(
            'action_snooze',
            'Snooze',
            showsUserInterface: false,
          ),
        ];
      }

      final details = _buildNotificationDetails(
        type: type,
        actions: actions,
      );

      // 1. Immediate trigger for user confirmation
      await _plugin.show(
        id: id,
        title: title,
        body: body,
        notificationDetails: details,
        payload: payload,
      );

      // 2. Schedule recurring daily reminder
      final now = tz.TZDateTime.now(tz.local);
      var scheduledDate = tz.TZDateTime(
        tz.local,
        now.year,
        now.month,
        now.day,
        hour,
        minute,
      );
      if (scheduledDate.isBefore(now)) {
        scheduledDate = scheduledDate.add(const Duration(days: 1));
      }

      await _plugin.zonedSchedule(
        id: id,
        title: title,
        body: body,
        scheduledDate: scheduledDate,
        notificationDetails: details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: DateTimeComponents.time,
        payload: payload,
      );

      debugPrint(
          'Scheduled timezone-aware daily notification #$id ($typeStr) for $hour:$minute at $scheduledDate');
    } catch (e) {
      debugPrint('Failed to schedule daily reminder #$id: $e');
    }
  }

  /// Displays an achievement celebration notification with the upbeat milestone fanfare.
  Future<void> showMilestoneNotification({
    required int id,
    required String title,
    required String body,
    String payload = '/insights/streaks',
  }) async {
    await showNotification(
      id: id,
      title: title,
      body: body,
      type: BloomiNotificationType.milestones,
      payload: payload,
    );
  }

  Future<void> cancelReminder(int id) async {
    try {
      if (!_isInitialized) await initialize();
      await _plugin.cancel(id: id);
    } catch (e) {
      debugPrint('Failed to cancel reminder #$id: $e');
    }
  }

  Future<void> cancelAll() async {
    try {
      if (!_isInitialized) await initialize();
      await _plugin.cancelAll();
    } catch (e) {
      debugPrint('Failed to cancel all notifications: $e');
    }
  }
}
