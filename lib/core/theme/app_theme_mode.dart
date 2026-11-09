import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum AppThemeMode {
  system,
  light,
  dark;

  ThemeMode get flutterThemeMode {
    switch (this) {
      case AppThemeMode.system:
        return ThemeMode.system;
      case AppThemeMode.light:
        return ThemeMode.light;
      case AppThemeMode.dark:
        return ThemeMode.dark;
    }
  }

  String get label {
    switch (this) {
      case AppThemeMode.system:
        return 'System Default';
      case AppThemeMode.light:
        return 'Light Mode';
      case AppThemeMode.dark:
        return 'Dark Mode';
    }
  }

  String get subtitle {
    switch (this) {
      case AppThemeMode.system:
        return 'Automatically matches device theme mode';
      case AppThemeMode.light:
        return 'Bright, fresh pastel design';
      case AppThemeMode.dark:
        return 'Comfortable dark colors for eyes & battery';
    }
  }

  IconData get icon {
    switch (this) {
      case AppThemeMode.system:
        return CupertinoIcons.brightness;
      case AppThemeMode.light:
        return CupertinoIcons.sun_max_fill;
      case AppThemeMode.dark:
        return CupertinoIcons.moon_stars_fill;
    }
  }
}
