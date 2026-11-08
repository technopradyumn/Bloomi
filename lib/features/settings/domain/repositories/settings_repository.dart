import '../entities/reminder_entity.dart';

abstract class SettingsRepository {
  Stream<List<ReminderEntity>> watchReminders();
  Future<List<ReminderEntity>> getReminders();
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

