import '../../domain/entities/reminder_entity.dart';
import '../../domain/repositories/settings_repository.dart';
import '../local/settings_local_data_source.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalDataSource localDataSource;

  SettingsRepositoryImpl({required this.localDataSource});

  @override
  Stream<List<ReminderEntity>> watchReminders() {
    return localDataSource.watchReminders().map(
          (list) => list
              .map(
                (r) => ReminderEntity(
                  id: r.id,
                  type: r.type,
                  time: r.time,
                  enabled: r.enabled,
                  createdAt: r.createdAt,
                  updatedAt: r.updatedAt,
                ),
              )
              .toList(),
        );
  }

  @override
  Future<List<ReminderEntity>> getReminders() async {
    final list = await localDataSource.getReminders();
    return list
        .map(
          (r) => ReminderEntity(
            id: r.id,
            type: r.type,
            time: r.time,
            enabled: r.enabled,
            createdAt: r.createdAt,
            updatedAt: r.updatedAt,
          ),
        )
        .toList();
  }

  @override
  Future<void> seedDefaultReminders() => localDataSource.seedDefaultReminders();

  @override
  Future<void> toggleReminder(String id, bool enabled) =>
      localDataSource.toggleReminder(id, enabled);

  @override
  Future<void> updateReminderTime(String id, String newTime) =>
      localDataSource.updateReminderTime(id, newTime);

  @override
  Future<Map<String, String>> getUnitsAndLanguage() =>
      localDataSource.getUnitsAndLanguage();

  @override
  Future<void> updateUnits(String units) => localDataSource.updateUnits(units);

  @override
  Future<void> updateLanguage(String language) =>
      localDataSource.updateLanguage(language);

  @override
  Future<String> exportDataJson() => localDataSource.exportDataJson();

  @override
  Future<void> deleteAccountAndData() => localDataSource.deleteAccountAndData();

  @override
  Future<bool> isPremium() => localDataSource.isPremium();

  @override
  Future<bool> purchasePlan(String planId) =>
      localDataSource.purchasePlan(planId);

  @override
  Future<bool> restorePurchases() => localDataSource.restorePurchases();

  @override
  Future<void> syncWidgets() => localDataSource.syncWidgets();
}

