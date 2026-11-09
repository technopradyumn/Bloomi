import 'dart:convert';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/localization/app_languages.dart';
import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:bloomi/services/notifications/notification_service.dart';
import 'package:bloomi/services/widgets/widget_bridge_service.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

abstract class SettingsLocalDataSource {
  Stream<List<Reminder>> watchReminders();
  Future<List<Reminder>> getReminders();
  Future<void> seedDefaultReminders();
  Future<void> toggleReminder(String id, bool enabled);
  Future<void> updateReminderTime(String id, String newTime);
  Future<Map<String, String>> getUnitsAndLanguage();
  Future<void> updateUnits(String units);
  Future<void> updateLanguage(String language);
  Future<String> exportDataJson();
  Future<void> deleteAccountAndData();
  Future<bool> isPremium();
  Future<bool> purchasePlan(String planId);
  Future<bool> restorePurchases();
  Future<void> syncWidgets();
}

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  final AppDatabase _db;
  final NotificationService _notificationService;
  final WidgetBridgeService _widgetBridgeService;
  final BillingService? _billingService;
  final AuthRepository? _authRepository;
  final String Function()? _userIdProvider;
  final SharedPreferences? _prefs;

  SettingsLocalDataSourceImpl({
    required AppDatabase db,
    required NotificationService notificationService,
    required WidgetBridgeService widgetBridgeService,
    BillingService? billingService,
    AuthRepository? authRepository,
    String Function()? userIdProvider,
    SharedPreferences? prefs,
  })  : _db = db,
        _notificationService = notificationService,
        _widgetBridgeService = widgetBridgeService,
        _billingService = billingService,
        _authRepository = authRepository,
        _userIdProvider = userIdProvider,
        _prefs = prefs;

  String get _currentUserId =>
      _userIdProvider?.call() ?? _authRepository?.currentUserId ?? 'default_user';

  @override
  Stream<List<Reminder>> watchReminders() {
    return (_db.select(_db.reminders)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .watch();
  }

  @override
  Future<List<Reminder>> getReminders() async {
    final list = await (_db.select(_db.reminders)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .get();

    if (list.isEmpty) {
      await seedDefaultReminders();
      return (_db.select(_db.reminders)
            ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
          .get();
    }
    return list;
  }

  @override
  Future<void> seedDefaultReminders() async {
    final now = DateTime.now();
    const defaults = [
      ('breakfast', '08:30', true),
      ('lunch', '13:00', true),
      ('dinner', '20:00', true),
      ('water', 'Every 2 hrs', true),
      ('weight', 'Sunday 09:00', true),
      ('sleep', '22:30', true),
    ];

    for (final def in defaults) {
      final existing = await (_db.select(_db.reminders)
            ..where((t) =>
                t.userId.equals(_currentUserId) &
                t.type.equals(def.$1) &
                t.deleted.equals(false)))
          .getSingleOrNull();
      if (existing == null) {
        await _db.into(_db.reminders).insert(
              RemindersCompanion(
                id: drift.Value(const Uuid().v4()),
                userId: drift.Value(_currentUserId),
                isDirty: const drift.Value(true),
                type: drift.Value(def.$1),
                time: drift.Value(def.$2),
                enabled: drift.Value(def.$3),
                createdAt: drift.Value(now),
                updatedAt: drift.Value(now),
                deleted: const drift.Value(false),
              ),
            );
      }
    }
  }

  Future<void> _scheduleReminderFromRow(Reminder r) async {
    if (!r.enabled) {
      await _notificationService.cancelReminder(r.id.hashCode);
      return;
    }

    int hour = 9;
    int minute = 0;
    try {
      final parts = r.time.split(':');
      if (parts.length == 2) {
        hour = int.parse(parts[0].trim());
        minute = int.parse(parts[1].trim());
      } else if (r.time.toLowerCase().contains('hr')) {
        hour = 10;
        minute = 0;
      } else if (r.time.toLowerCase().contains('09:00')) {
        hour = 9;
        minute = 0;
      }
    } catch (_) {}

    String title = 'Bloomi Reminder 🌸';
    String body = 'Time for your mindful wellness check-in.';
    String payload = '/settings/reminders';

    switch (r.type.toLowerCase()) {
      case 'breakfast':
        title = 'Breakfast Reminder 🍳';
        body = 'Good morning! Time for a nourishing breakfast at ${r.time}.';
        payload = '/food';
        break;
      case 'lunch':
        title = 'Lunch Reminder 🥗';
        body = 'Pause and enjoy a balanced, mindful lunch at ${r.time}.';
        payload = '/food';
        break;
      case 'dinner':
        title = 'Dinner Reminder 🍲';
        body = 'Time for a light, satisfying dinner at ${r.time}.';
        payload = '/food';
        break;
      case 'water':
        title = 'Hydration Nudge 💧';
        body = 'Time to drink a fresh glass of water! (${r.time})';
        payload = '/food/water';
        break;
      case 'weight':
        title = 'Weekly Weigh-in ⚖️';
        body = 'Track your weekly body metrics on Bloomi (${r.time}).';
        payload = '/health/weight';
        break;
      case 'sleep':
        title = 'Bedtime Wind-down 🌙';
        body = 'Unwind and prepare for a restful sleep (${r.time}).';
        payload = '/health/sleep';
        break;
    }

    await _notificationService.scheduleDailyReminder(
      id: r.id.hashCode,
      title: title,
      body: body,
      hour: hour,
      minute: minute,
      typeStr: r.type,
      payload: payload,
    );
  }

  @override
  Future<void> toggleReminder(String id, bool enabled) async {
    final now = DateTime.now();
    await (_db.update(_db.reminders)..where((t) => t.id.equals(id) & t.userId.equals(_currentUserId))).write(
      RemindersCompanion(
        enabled: drift.Value(enabled),
        isDirty: const drift.Value(true),
        updatedAt: drift.Value(now),
      ),
    );

    final row = await (_db.select(_db.reminders)..where((t) => t.id.equals(id))).getSingleOrNull();
    if (row != null) {
      await _scheduleReminderFromRow(row);
    }
  }

  @override
  Future<void> updateReminderTime(String id, String newTime) async {
    final now = DateTime.now();
    await (_db.update(_db.reminders)..where((t) => t.id.equals(id) & t.userId.equals(_currentUserId))).write(
      RemindersCompanion(
        time: drift.Value(newTime),
        isDirty: const drift.Value(true),
        updatedAt: drift.Value(now),
      ),
    );

    final row = await (_db.select(_db.reminders)..where((t) => t.id.equals(id))).getSingleOrNull();
    if (row != null) {
      await _scheduleReminderFromRow(row);
    }
  }

  @override
  Future<Map<String, String>> getUnitsAndLanguage() async {
    final savedLang = _prefs?.getString('selected_language_code');
    final savedUnits = _prefs?.getString('selected_units');

    final profiles = await (_db.select(_db.userProfiles)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..limit(1))
        .get();

    final String units = savedUnits ?? (profiles.isNotEmpty ? profiles.first.units : 'metric');
    String language;

    if (savedLang != null && savedLang.isNotEmpty) {
      language = savedLang;
    } else if (profiles.isNotEmpty && profiles.first.language.isNotEmpty) {
      language = profiles.first.language;
    } else {
      // Default to device language if supported, otherwise English
      final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
      final devCode = deviceLocale.languageCode.toLowerCase();
      final hasMatch = AppLanguage.supportedLanguages.any((l) => l.code.toLowerCase() == devCode);
      language = hasMatch ? devCode : 'en';
    }

    try {
      BloomiLocalizations.applySafeIntlLocale(language);
    } catch (_) {}

    return {
      'units': units,
      'language': language,
    };
  }

  @override
  Future<void> updateUnits(String units) async {
    await _prefs?.setString('selected_units', units);
    final profiles = await (_db.select(_db.userProfiles)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..limit(1))
        .get();
    if (profiles.isNotEmpty) {
      await (_db.update(_db.userProfiles)..where((p) => p.id.equals(profiles.first.id))).write(
        UserProfilesCompanion(
          units: drift.Value(units),
          isDirty: const drift.Value(true),
          updatedAt: drift.Value(DateTime.now()),
        ),
      );
    }
  }

  @override
  Future<void> updateLanguage(String language) async {
    await _prefs?.setString('selected_language_code', language);
    try {
      BloomiLocalizations.applySafeIntlLocale(language);
    } catch (_) {}

    final profiles = await (_db.select(_db.userProfiles)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false))
          ..limit(1))
        .get();
    if (profiles.isNotEmpty) {
      await (_db.update(_db.userProfiles)..where((p) => p.id.equals(profiles.first.id))).write(
        UserProfilesCompanion(
          language: drift.Value(language),
          isDirty: const drift.Value(true),
          updatedAt: drift.Value(DateTime.now()),
        ),
      );
    }
  }

  @override
  Future<String> exportDataJson() async {
    final profile = await (_db.select(_db.userProfiles)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .get();
    final targets = await (_db.select(_db.targets)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .get();
    final meals = await (_db.select(_db.mealLogs)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .get();
    final water = await (_db.select(_db.waterLogs)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .get();
    final body = await (_db.select(_db.bodyEntries)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .get();
    final workouts = await (_db.select(_db.workoutLogs)
          ..where((t) => t.userId.equals(_currentUserId) & t.deleted.equals(false)))
        .get();

    return jsonEncode({
      'exportDate': DateTime.now().toIso8601String(),
      'profile': profile.map((p) => p.name).toList(),
      'targetsCount': targets.length,
      'mealLogsCount': meals.length,
      'waterLogsCount': water.length,
      'bodyEntriesCount': body.length,
      'workoutLogsCount': workouts.length,
    });
  }

  @override
  Future<void> deleteAccountAndData() async {
    // 1. Clear current user's local database records
    await _db.clearUserScopedDataForUser(_currentUserId);

    // 2. Clear SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('bloomi_cached_user_session');
    await prefs.remove('bloomi_has_completed_onboarding');
    await prefs.remove('bloomi_last_logged_in_user_id');
  }

  @override
  Future<bool> isPremium() async {
    if (_billingService != null) {
      return await _billingService.isPremium();
    }
    final prefs = await SharedPreferences.getInstance();
    final isExplicitlyUnlocked = prefs.getBool('is_bloomi_premium_unlocked') ?? false;
    if (isExplicitlyUnlocked) return true;

    int? firstInstallMs = prefs.getInt('bloomi_first_install_timestamp');
    if (firstInstallMs == null) {
      firstInstallMs = DateTime.now().millisecondsSinceEpoch;
      await prefs.setInt('bloomi_first_install_timestamp', firstInstallMs);
    }
    final firstInstallDate = DateTime.fromMillisecondsSinceEpoch(firstInstallMs);
    return DateTime.now().difference(firstInstallDate).inDays < 7;
  }

  @override
  Future<bool> purchasePlan(String planId) async {
    if (_billingService != null) {
      return await _billingService.buyPlanById(planId);
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('is_bloomi_premium_unlocked', true);
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> restorePurchases() async {
    if (_billingService != null) {
      return await _billingService.restorePurchases();
    }
    return true;
  }

  @override
  Future<void> syncWidgets() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);

    final targetRow = await (_db.select(_db.targets)
          ..where((t) => t.deleted.equals(false))
          ..orderBy([(t) => drift.OrderingTerm.desc(t.updatedAt)])
          ..limit(1))
        .getSingleOrNull();

    final targetCalories = targetRow?.calories ?? 2000.0;
    final targetWater = targetRow?.waterMl.toInt() ?? 2200;
    final targetSteps = targetRow?.steps ?? 10000;

    final todayMeals = await (_db.select(_db.mealLogs)
          ..where((t) =>
              t.date.isBiggerOrEqualValue(startOfDay) &
              t.date.isSmallerOrEqualValue(endOfDay) &
              t.deleted.equals(false)))
        .get();

    double consumedCalories = 0.0;
    for (final m in todayMeals) {
      try {
        final decoded = jsonDecode(m.computedNutrientsSnapshot) as Map<String, dynamic>;
        consumedCalories += (decoded['calories'] as num?)?.toDouble() ?? 0.0;
      } catch (_) {}
    }

    final remainingCalories = (targetCalories - consumedCalories).clamp(0.0, targetCalories);

    final todayWaterLogs = await (_db.select(_db.waterLogs)
          ..where((t) =>
              t.date.isBiggerOrEqualValue(startOfDay) &
              t.date.isSmallerOrEqualValue(endOfDay) &
              t.deleted.equals(false)))
        .get();
    final waterLogged = todayWaterLogs.fold<int>(0, (sum, w) => sum + w.ml);

    final activeReminders = await (_db.select(_db.reminders)
          ..where((t) => t.enabled.equals(true) & t.deleted.equals(false)))
        .get();
    String nextReminderStr = 'Mindful day in progress ✨';
    if (activeReminders.isNotEmpty) {
      final r = activeReminders.first;
      nextReminderStr = '${r.type.toUpperCase()}: ${r.time}';
    }

    final payload = WidgetSyncPayload(
      remainingCalories: remainingCalories,
      targetCalories: targetCalories,
      waterLoggedMl: waterLogged,
      targetWaterMl: targetWater,
      steps: 0,
      targetSteps: targetSteps,
      streakCount: 0,
      nextReminder: nextReminderStr,
      lastUpdated: now,
    );
    await _widgetBridgeService.updateWidgets(payload);
  }
}

