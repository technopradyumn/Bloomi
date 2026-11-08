import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/theme/app_background_option.dart';
import 'package:bloomi/core/theme/app_theme_mode.dart';
import 'package:bloomi/services/widget/widget_sync_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeState extends Equatable {
  final AppThemeMode themeMode;
  final AppBackgroundOption backgroundOption;

  const ThemeState({
    required this.themeMode,
    required this.backgroundOption,
  });

  ThemeMode get flutterThemeMode => themeMode.flutterThemeMode;

  ThemeState copyWith({
    AppThemeMode? themeMode,
    AppBackgroundOption? backgroundOption,
  }) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
      backgroundOption: backgroundOption ?? this.backgroundOption,
    );
  }

  @override
  List<Object?> get props => [themeMode, backgroundOption];
}

class ThemeCubit extends Cubit<ThemeState> {
  static const String _keyThemeMode = 'bloomi_app_theme_mode';
  static const String _keyBackgroundOption = 'bloomi_app_background_option';

  final SharedPreferences _prefs;

  ThemeCubit(this._prefs)
      : super(ThemeState(
          themeMode: _loadInitialThemeMode(_prefs),
          backgroundOption: _loadInitialBackgroundOption(_prefs),
        ));

  static AppThemeMode _loadInitialThemeMode(SharedPreferences prefs) {
    final raw = prefs.getString(_keyThemeMode);
    if (raw != null) {
      for (final mode in AppThemeMode.values) {
        if (mode.name == raw) return mode;
      }
    }
    return AppThemeMode.system;
  }

  static AppBackgroundOption _loadInitialBackgroundOption(SharedPreferences prefs) {
    final raw = prefs.getString(_keyBackgroundOption);
    if (raw != null) {
      for (final bg in AppBackgroundOption.values) {
        if (bg.name == raw) return bg;
      }
    }
    return AppBackgroundOption.pure;
  }

  Future<void> setThemeMode(AppThemeMode mode) async {
    if (state.themeMode == mode) return;
    emit(state.copyWith(themeMode: mode));
    await _prefs.setString(_keyThemeMode, mode.name);
    _syncWidgets();
  }

  Future<void> setBackgroundOption(AppBackgroundOption option) async {
    if (state.backgroundOption == option) return;
    emit(state.copyWith(backgroundOption: option));
    await _prefs.setString(_keyBackgroundOption, option.name);
    _syncWidgets();
  }

  void _syncWidgets() {
    try {
      if (sl.isRegistered<WidgetSyncService>()) {
        sl<WidgetSyncService>().syncToNativeWidgets();
      }
    } catch (_) {}
  }
}
