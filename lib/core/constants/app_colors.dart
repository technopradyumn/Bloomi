import 'package:flutter/material.dart';

abstract final class AppColors {
  // Pastel Light Brand Colors
  static const Color mint = Color(0xFF7ED3B2);
  static const Color sky = Color(0xFFBFE6F5);
  static const Color butter = Color(0xFFFFE9A8);
  static const Color peach = Color(0xFFFFC9B5);
  static const Color lilac = Color(0xFFD9CCFF);
  static const Color ink = Color(0xFF1F2A37);
  static const Color slate = Color(0xFF6B7785);
  static const Color background = Color(0xFFF6F7FB);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color softOrange = Color(0xFFFFA94D);
  static const Color divider = Color(0xFFE5E7EB);
  static const Color mintLight = Color(0xFFD1FAE5);
  static const Color mintDark = Color(0xFF065F46);

  // Dark Theme Base Colors
  static const Color darkBackground = Color(0xFF121824);
  static const Color darkSurface = Color(0xFF1E2638);
  static const Color darkInk = Color(0xFFF8FAFC);
  static const Color darkSlate = Color(0xFF94A3B8);
  static const Color darkDivider = Color(0xFF334155);
  static const Color darkMint = Color(0xFF10B981);
  static const Color darkMintSurface = Color(0xFF064E3B);

  // Soft shadow used across pastel cards in light mode
  static const List<BoxShadow> softCardShadow = [
    BoxShadow(
      color: Color.fromRGBO(31, 42, 55, 0.06),
      blurRadius: 24,
      offset: Offset(0, 8),
    ),
  ];

  // Subtle shadow for dark theme cards
  static const List<BoxShadow> darkCardShadow = [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.35),
      blurRadius: 16,
      offset: Offset(0, 4),
    ),
  ];
}

extension AppThemeContext on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  Color get appBackground => Theme.of(this).scaffoldBackgroundColor;
  Color get appSurface => Theme.of(this).cardTheme.color ?? Theme.of(this).colorScheme.surface;
  Color get appInk => Theme.of(this).colorScheme.onSurface;
  Color get appSlate => isDarkMode ? AppColors.darkSlate : AppColors.slate;
  Color get appDivider => Theme.of(this).dividerColor;
  Color get appPrimary => Theme.of(this).colorScheme.primary;
  Color get appBorderColor => isDarkMode ? AppColors.darkDivider : AppColors.divider;
  List<BoxShadow> get appCardShadow => isDarkMode ? AppColors.darkCardShadow : AppColors.softCardShadow;

  Color get appSoftOrange => isDarkMode ? const Color(0xFFF97316) : AppColors.softOrange;
  Color get appMint => isDarkMode ? AppColors.darkMint : AppColors.mint;
  Color get appSky => isDarkMode ? const Color(0xFF38BDF8) : AppColors.sky;
  Color get appButter => isDarkMode ? const Color(0xFFFBBF24) : AppColors.butter;
  Color get appPeach => isDarkMode ? const Color(0xFFFB923C) : AppColors.peach;
  Color get appLilac => isDarkMode ? const Color(0xFFA78BFA) : AppColors.lilac;
  Color get appError => Theme.of(this).colorScheme.error;
  Color get appOnSurface => Theme.of(this).colorScheme.onSurface;
  Color get appOnPrimary => Theme.of(this).colorScheme.onPrimary;
  Color get appOutline => Theme.of(this).colorScheme.outline;
  Color get appSurfaceContainer => Theme.of(this).colorScheme.surfaceContainer;
  Color get appSurfaceContainerHigh => Theme.of(this).colorScheme.surfaceContainerHigh;
  Color get appSurfaceContainerLowest => Theme.of(this).colorScheme.surfaceContainerLowest;

  Color adaptiveCardBg(Color inputColor) {
    if (inputColor == AppColors.surface || inputColor == Colors.white) {
      return appSurface;
    }
    if (isDarkMode) {
      return inputColor.withAlpha(55);
    }
    return inputColor;
  }

  Color adaptiveBannerBg(Color lightBg, Color darkBg) => isDarkMode ? darkBg : lightBg;
  Color adaptiveAccentColor(Color lightAccent, Color darkAccent) => isDarkMode ? darkAccent : lightAccent;
  Color adaptiveTextColor(Color lightText, Color darkText) => isDarkMode ? darkText : lightText;
  Color adaptiveContainerBg(Color lightBg, [int darkAlpha = 50]) =>
      isDarkMode ? lightBg.withAlpha(darkAlpha) : lightBg;
  Color adaptiveColor(Color lightColor, Color darkColor) => isDarkMode ? darkColor : lightColor;
  Color adaptiveAlpha(Color color, int lightAlpha, int darkAlpha) =>
      color.withAlpha(isDarkMode ? darkAlpha : lightAlpha);
}

