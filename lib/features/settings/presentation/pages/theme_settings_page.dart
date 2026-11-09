import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/theme/app_background_option.dart';
import 'package:bloomi/core/theme/app_theme_mode.dart';
import 'package:bloomi/core/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr('appearance_theme'),
          style: const TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
      ),
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          final isDark = themeState.themeMode == AppThemeMode.dark ||
              (themeState.themeMode == AppThemeMode.system &&
                  MediaQuery.platformBrightnessOf(context) == Brightness.dark);

          final cardColor = context.appSurface;
          final primaryTextColor = context.appInk;
          final secondaryTextColor = context.appSlate;

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              // Header Info Banner
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: themeState.backgroundOption.primaryAccent.withAlpha(40),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        CupertinoIcons.paintbrush_fill,
                        color: themeState.backgroundOption.primaryAccent,
                        size: 26,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Personalize Your Bloomi Experience',
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: primaryTextColor,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Seamless Light, Dark & System Modes with customizable app background themes and real-time auto-syncing home widgets.',
                            style: TextStyle(
                              fontSize: 12,
                              color: secondaryTextColor,
                              height: 1.35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Section 1: Theme Mode Selection
              _buildSectionTitle('THEME MODE', primaryTextColor),
              const SizedBox(height: AppSpacing.xs),
              ...AppThemeMode.values.map((mode) {
                final isSelected = themeState.themeMode == mode;
                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                  child: InkWell(
                    onTap: () => context.read<ThemeCubit>().setThemeMode(mode),
                    borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                        border: Border.all(
                          color: isSelected
                              ? themeState.backgroundOption.primaryAccent
                              : context.appDivider,
                          width: isSelected ? 2 : 1,
                        ),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: themeState.backgroundOption.primaryAccent.withAlpha(40),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                )
                              ]
                            : null,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? themeState.backgroundOption.primaryAccent.withAlpha(35)
                                  : (isDark ? Colors.white10 : Colors.black.withAlpha(10)),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              mode.icon,
                              color: isSelected
                                  ? themeState.backgroundOption.primaryAccent
                                  : secondaryTextColor,
                              size: 22,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mode.label,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: primaryTextColor,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  mode.subtitle,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (isSelected)
                            Icon(
                              CupertinoIcons.checkmark_circle_fill,
                              color: themeState.backgroundOption.primaryAccent,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              }),

              const SizedBox(height: AppSpacing.lg),

              // Section 2: App Background Theme Options
              _buildSectionTitle('APP BACKGROUND THEME OPTIONS', primaryTextColor),
              const SizedBox(height: AppSpacing.xs),
              ...AppBackgroundOption.values.map((bg) {
                final isSelected = themeState.backgroundOption == bg;
                final previewScaffold = isDark
                    ? bg.darkScaffoldBg(AppColors.darkBackground)
                    : bg.lightScaffoldBg(AppColors.background);
                final previewSurface = isDark
                    ? bg.darkSurface(AppColors.darkSurface)
                    : bg.lightSurface(AppColors.surface);

                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                  child: InkWell(
                    onTap: () => context.read<ThemeCubit>().setBackgroundOption(bg),
                    borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                        border: Border.all(
                          color: isSelected ? bg.primaryAccent : context.appDivider,
                          width: isSelected ? 2 : 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          // Dual Color Preview Chip
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isDark ? Colors.white24 : Colors.black12,
                                width: 1.5,
                              ),
                              gradient: LinearGradient(
                                colors: [previewScaffold, previewSurface],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                width: 14,
                                height: 14,
                                decoration: BoxDecoration(
                                  color: bg.primaryAccent,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  bg.label,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: primaryTextColor,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  bg.subtitle,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (isSelected)
                            Icon(
                              CupertinoIcons.checkmark_circle_fill,
                              color: bg.primaryAccent,
                              size: 22,
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              }),

              const SizedBox(height: AppSpacing.lg),

              // Section 3: Live Theme & Widget Preview Card
              _buildSectionTitle('LIVE THEME PREVIEW', primaryTextColor),
              const SizedBox(height: AppSpacing.xs),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: context.appDivider),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '🌸 Bloomi Preview',
                              style: TextStyle(
                                fontFamily: 'Baloo 2',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: primaryTextColor,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: themeState.backgroundOption.primaryAccent.withAlpha(40),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                isDark ? 'DARK' : 'LIGHT',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  color: themeState.backgroundOption.primaryAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          themeState.themeMode.icon,
                          color: themeState.backgroundOption.primaryAccent,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Your app background is set to ${themeState.backgroundOption.label}. Everyday habits, stats, nutrition, and mascot quotes adjust seamlessly.',
                      style: TextStyle(
                        fontSize: 12,
                        color: secondaryTextColor,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Sample Progress Ring & Stat Row
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? Colors.white.withAlpha(12)
                                  : themeState.backgroundOption.primaryAccent.withAlpha(20),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              children: [
                                const Text('👟', style: TextStyle(fontSize: 18)),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '8,420 steps',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: primaryTextColor,
                                      ),
                                    ),
                                    Text(
                                      '84% of 10,000',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: secondaryTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? Colors.white.withAlpha(12)
                                  : AppColors.sky.withAlpha(40),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              children: [
                                const Text('💧', style: TextStyle(fontSize: 18)),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '1,750 ml',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: primaryTextColor,
                                      ),
                                    ),
                                    Text(
                                      '70% of 2,500 ml',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: secondaryTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: AppSpacing.lg),

              // Real-Time Widget Auto Sync Note
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppColors.mintLight.withAlpha(isDark ? 30 : 255),
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  border: Border.all(
                    color: AppColors.mintDark.withAlpha(80),
                  ),
                ),
                child: Row(
                  children: [
                    const Text('✨', style: TextStyle(fontSize: 20)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Home widgets support Light, Dark, & System theme modes! They update automatically in real-time whenever you change settings or when your device switches night mode.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: isDark ? AppColors.darkInk : AppColors.mintDark,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSectionTitle(String title, Color textColor) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 6),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w800,
          color: textColor.withAlpha(180),
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}
