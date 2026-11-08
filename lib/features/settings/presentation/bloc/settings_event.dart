part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object?> get props => [];
}

class LoadSettingsEvent extends SettingsEvent {
  const LoadSettingsEvent();
}

class ToggleReminderEvent extends SettingsEvent {
  final String id;
  final bool enabled;

  const ToggleReminderEvent({required this.id, required this.enabled});

  @override
  List<Object?> get props => [id, enabled];
}

class UpdateReminderTimeEvent extends SettingsEvent {
  final String id;
  final String newTime;

  const UpdateReminderTimeEvent({required this.id, required this.newTime});

  @override
  List<Object?> get props => [id, newTime];
}

class UpdateUnitsEvent extends SettingsEvent {
  final String units;

  const UpdateUnitsEvent(this.units);

  @override
  List<Object?> get props => [units];
}

class UpdateLanguageEvent extends SettingsEvent {
  final String language;

  const UpdateLanguageEvent(this.language);

  @override
  List<Object?> get props => [language];
}

class ExportDataEvent extends SettingsEvent {
  const ExportDataEvent();
}

class DeleteAccountEvent extends SettingsEvent {
  const DeleteAccountEvent();
}

class PurchasePremiumEvent extends SettingsEvent {
  final String planId;

  const PurchasePremiumEvent(this.planId);

  @override
  List<Object?> get props => [planId];
}

class RestorePurchasesEvent extends SettingsEvent {
  const RestorePurchasesEvent();
}

class SyncWidgetsEvent extends SettingsEvent {
  const SyncWidgetsEvent();
}

