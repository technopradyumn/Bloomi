import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/theme/app_background_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract final class AppTheme {
  static const String headingFont = 'Baloo 2';
  static const String bodyFont = 'Nunito';

  static ThemeData get lightTheme => getLightTheme(AppBackgroundOption.pure);
  static ThemeData get darkTheme => getDarkTheme(AppBackgroundOption.pure);

  static ThemeData getLightTheme([AppBackgroundOption bg = AppBackgroundOption.pure]) {
    final scaffoldBg = bg.lightScaffoldBg(AppColors.background);
    final surfaceColor = bg.lightSurface(AppColors.surface);
    final primaryAccent = bg.primaryAccent;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: scaffoldBg,
      dividerColor: AppColors.divider,
      iconTheme: const IconThemeData(color: AppColors.ink),
      primaryIconTheme: const IconThemeData(color: AppColors.ink),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColors.ink),
        actionsIconTheme: const IconThemeData(color: AppColors.ink),
        titleTextStyle: const TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: AppColors.ink,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: scaffoldBg,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryAccent,
        onPrimary: AppColors.ink,
        secondary: AppColors.sky,
        onSecondary: AppColors.ink,
        surface: surfaceColor,
        onSurface: AppColors.ink,
        surfaceContainer: surfaceColor,
        surfaceContainerHigh: surfaceColor,
        surfaceContainerHighest: surfaceColor,
        surfaceContainerLow: scaffoldBg,
        surfaceContainerLowest: Colors.white,
        onSurfaceVariant: AppColors.slate,
        outline: AppColors.divider,
        outlineVariant: AppColors.divider.withAlpha(120),
        error: AppColors.softOrange,
        onError: AppColors.surface,
      ),
      splashColor: primaryAccent.withAlpha(35),
      highlightColor: primaryAccent.withAlpha(18),
      fontFamily: bodyFont,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 48,
          color: AppColors.ink,
          height: 1.1,
        ),
        displayMedium: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 40,
          color: AppColors.ink,
          height: 1.1,
        ),
        headlineLarge: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 28,
          color: AppColors.ink,
        ),
        headlineMedium: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 24,
          color: AppColors.ink,
        ),
        headlineSmall: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: AppColors.ink,
        ),
        titleLarge: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: AppColors.ink,
        ),
        titleMedium: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColors.ink,
        ),
        bodyLarge: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: AppColors.ink,
        ),
        bodyMedium: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: AppColors.ink,
        ),
        bodySmall: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.slate,
        ),
      ),
      cardTheme: CardThemeData(
        color: surfaceColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: surfaceColor,
        selectedItemColor: AppColors.ink,
        unselectedItemColor: AppColors.slate,
        elevation: 0,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: surfaceColor,
        indicatorColor: primaryAccent.withAlpha(80),
        labelTextStyle: WidgetStateProperty.all(
          const TextStyle(
            fontFamily: bodyFont,
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: AppColors.ink,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryAccent,
          foregroundColor: AppColors.ink,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.pillRadius)),
          ),
          textStyle: const TextStyle(
            fontFamily: headingFont,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: AppColors.ink,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.ink,
          textStyle: const TextStyle(
            fontFamily: bodyFont,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.ink,
          side: const BorderSide(color: AppColors.divider),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.pillRadius),
          ),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: surfaceColor,
        modalBackgroundColor: surfaceColor,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: surfaceColor,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        titleTextStyle: const TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: AppColors.ink,
        ),
        contentTextStyle: const TextStyle(
          fontFamily: bodyFont,
          fontSize: 14,
          color: AppColors.ink,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        hintStyle: const TextStyle(
          fontFamily: bodyFont,
          fontSize: 14,
          color: AppColors.slate,
        ),
        labelStyle: const TextStyle(
          fontFamily: bodyFont,
          fontSize: 14,
          color: AppColors.slate,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.divider),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.divider),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: primaryAccent, width: 1.5),
        ),
      ),
      tabBarTheme: const TabBarThemeData(
        labelColor: AppColors.ink,
        unselectedLabelColor: AppColors.slate,
        indicatorColor: AppColors.mint,
        labelStyle: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 15,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: AppColors.ink,
        textColor: AppColors.ink,
        tileColor: Colors.transparent,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
        space: 1,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: surfaceColor,
        contentTextStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.ink,
          fontSize: 14,
        ),
        actionTextColor: primaryAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        behavior: SnackBarBehavior.floating,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: surfaceColor,
        surfaceTintColor: Colors.transparent,
        textStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.ink,
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: surfaceColor,
        surfaceTintColor: Colors.transparent,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return AppColors.ink;
          return AppColors.slate;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryAccent;
          return AppColors.divider;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryAccent;
          return Colors.transparent;
        }),
        checkColor: WidgetStateProperty.all(AppColors.ink),
        side: const BorderSide(color: AppColors.slate, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: surfaceColor,
        disabledColor: AppColors.divider,
        selectedColor: primaryAccent,
        secondarySelectedColor: primaryAccent,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.ink,
          fontSize: 14,
        ),
        secondaryLabelStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.ink,
          fontSize: 14,
        ),
        brightness: Brightness.light,
        shape: const StadiumBorder(side: BorderSide(color: AppColors.divider)),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: primaryAccent,
        inactiveTrackColor: AppColors.divider,
        thumbColor: primaryAccent,
        overlayColor: primaryAccent.withAlpha(40),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: primaryAccent,
        circularTrackColor: AppColors.divider,
        linearTrackColor: AppColors.divider,
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.divider),
        ),
        textStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.ink,
          fontSize: 12,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryAccent;
          return AppColors.slate;
        }),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryAccent,
        foregroundColor: AppColors.ink,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      badgeTheme: const BadgeThemeData(
        backgroundColor: AppColors.softOrange,
        textColor: Colors.white,
      ),
    );
  }

  static ThemeData getDarkTheme([AppBackgroundOption bg = AppBackgroundOption.pure]) {
    final scaffoldBg = bg.darkScaffoldBg(AppColors.darkBackground);
    final surfaceColor = bg.darkSurface(AppColors.darkSurface);
    final primaryAccent = bg.primaryAccent;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: scaffoldBg,
      dividerColor: AppColors.darkDivider,
      iconTheme: const IconThemeData(color: AppColors.darkInk),
      primaryIconTheme: const IconThemeData(color: AppColors.darkInk),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColors.darkInk),
        actionsIconTheme: const IconThemeData(color: AppColors.darkInk),
        titleTextStyle: const TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: AppColors.darkInk,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarColor: scaffoldBg,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: primaryAccent,
        onPrimary: AppColors.ink,
        secondary: AppColors.sky,
        onSecondary: AppColors.ink,
        surface: surfaceColor,
        onSurface: AppColors.darkInk,
        surfaceContainer: surfaceColor,
        surfaceContainerHigh: surfaceColor,
        surfaceContainerHighest: surfaceColor,
        surfaceContainerLow: scaffoldBg,
        surfaceContainerLowest: AppColors.darkBackground,
        onSurfaceVariant: AppColors.darkSlate,
        outline: AppColors.darkDivider,
        outlineVariant: AppColors.darkDivider.withAlpha(120),
        error: AppColors.softOrange,
        onError: AppColors.ink,
      ),
      splashColor: primaryAccent.withAlpha(50),
      highlightColor: primaryAccent.withAlpha(30),
      fontFamily: bodyFont,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 48,
          color: AppColors.darkInk,
          height: 1.1,
        ),
        displayMedium: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 40,
          color: AppColors.darkInk,
          height: 1.1,
        ),
        headlineLarge: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 28,
          color: AppColors.darkInk,
        ),
        headlineMedium: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 24,
          color: AppColors.darkInk,
        ),
        headlineSmall: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: AppColors.darkInk,
        ),
        titleLarge: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: AppColors.darkInk,
        ),
        titleMedium: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColors.darkInk,
        ),
        bodyLarge: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: AppColors.darkInk,
        ),
        bodyMedium: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: AppColors.darkInk,
        ),
        bodySmall: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.darkSlate,
        ),
      ),
      cardTheme: CardThemeData(
        color: surfaceColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: surfaceColor,
        selectedItemColor: AppColors.darkInk,
        unselectedItemColor: AppColors.darkSlate,
        elevation: 0,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: surfaceColor,
        indicatorColor: primaryAccent.withAlpha(90),
        labelTextStyle: WidgetStateProperty.all(
          const TextStyle(
            fontFamily: bodyFont,
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: AppColors.darkInk,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryAccent,
          foregroundColor: AppColors.ink,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.pillRadius)),
          ),
          textStyle: const TextStyle(
            fontFamily: headingFont,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: AppColors.darkInk,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.darkInk,
          textStyle: const TextStyle(
            fontFamily: bodyFont,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.darkInk,
          side: const BorderSide(color: AppColors.darkDivider),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.pillRadius),
          ),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: surfaceColor,
        modalBackgroundColor: surfaceColor,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: surfaceColor,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        titleTextStyle: const TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: AppColors.darkInk,
        ),
        contentTextStyle: const TextStyle(
          fontFamily: bodyFont,
          fontSize: 14,
          color: AppColors.darkInk,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        hintStyle: const TextStyle(
          fontFamily: bodyFont,
          fontSize: 14,
          color: AppColors.darkSlate,
        ),
        labelStyle: const TextStyle(
          fontFamily: bodyFont,
          fontSize: 14,
          color: AppColors.darkSlate,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.darkDivider),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.darkDivider),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: primaryAccent, width: 1.5),
        ),
      ),
      tabBarTheme: const TabBarThemeData(
        labelColor: AppColors.darkInk,
        unselectedLabelColor: AppColors.darkSlate,
        indicatorColor: AppColors.darkMint,
        labelStyle: TextStyle(
          fontFamily: headingFont,
          fontWeight: FontWeight.w700,
          fontSize: 15,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: bodyFont,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: AppColors.darkInk,
        textColor: AppColors.darkInk,
        tileColor: Colors.transparent,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.darkDivider,
        thickness: 1,
        space: 1,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: surfaceColor,
        contentTextStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.darkInk,
          fontSize: 14,
        ),
        actionTextColor: primaryAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        behavior: SnackBarBehavior.floating,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: surfaceColor,
        surfaceTintColor: Colors.transparent,
        textStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.darkInk,
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: surfaceColor,
        surfaceTintColor: Colors.transparent,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return AppColors.ink;
          return AppColors.darkSlate;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryAccent;
          return AppColors.darkDivider;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryAccent;
          return Colors.transparent;
        }),
        checkColor: WidgetStateProperty.all(AppColors.ink),
        side: const BorderSide(color: AppColors.darkSlate, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: surfaceColor,
        disabledColor: AppColors.darkDivider,
        selectedColor: primaryAccent,
        secondarySelectedColor: primaryAccent,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.darkInk,
          fontSize: 14,
        ),
        secondaryLabelStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.darkInk,
          fontSize: 14,
        ),
        brightness: Brightness.dark,
        shape: const StadiumBorder(side: BorderSide(color: AppColors.darkDivider)),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: primaryAccent,
        inactiveTrackColor: AppColors.darkDivider,
        thumbColor: primaryAccent,
        overlayColor: primaryAccent.withAlpha(50),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: primaryAccent,
        circularTrackColor: AppColors.darkDivider,
        linearTrackColor: AppColors.darkDivider,
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.darkDivider),
        ),
        textStyle: const TextStyle(
          fontFamily: bodyFont,
          color: AppColors.darkInk,
          fontSize: 12,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primaryAccent;
          return AppColors.darkSlate;
        }),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryAccent,
        foregroundColor: AppColors.ink,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      badgeTheme: const BadgeThemeData(
        backgroundColor: AppColors.softOrange,
        textColor: AppColors.darkInk,
      ),
    );
  }
}
