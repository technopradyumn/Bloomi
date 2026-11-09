import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: context.appSurface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
          onPressed: () {
            if (context.canPop()) context.pop();
          },
        ),
        title: Text(
          context.tr('settings'),
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: primaryTextColor,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          // 1. Preferences & App Appearance
          _buildSectionHeader(context.tr('preferences_habits'), secondaryTextColor),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.paintbrush_fill,
            title: context.tr('appearance_theme'),
            subtitle: context.tr('appearance_theme_sub'),
            color: AppColors.mint,
            onTap: () => context.push('/settings/theme'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.shield,
            title: context.tr('permissions'),
            subtitle: context.tr('permissions_sub'),
            color: AppColors.mint,
            onTap: () => context.push('/settings/permissions'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.alarm,
            title: context.tr('reminders_notifications'),
            subtitle: context.tr('reminders_sub'),
            color: AppColors.lilac,
            onTap: () => context.push('/settings/reminders'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.chart_bar,
            title: context.tr('units_of_measurement'),
            subtitle: context.tr('units_sub'),
            color: AppColors.peach,
            onTap: () => context.push('/settings/units'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.globe,
            title: context.tr('app_language'),
            subtitle: context.tr('language_sub'),
            color: AppColors.sky,
            onTap: () => context.push('/settings/language'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.square_grid_2x2_fill,
            title: context.tr('home_screen_widgets'),
            subtitle: context.tr('widgets_sub'),
            color: AppColors.butter,
            onTap: () => context.push('/settings/widgets'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.radiowaves_right,
            title: context.tr('wear_os_watch_app'),
            subtitle: context.tr('wear_os_sub'),
            color: AppColors.lilac,
            onTap: () => context.push('/settings/wear-os'),
          ),

          const SizedBox(height: AppSpacing.md),

          // 2. Goals, Wellness & Insights (Moved from Profile)
          _buildSectionHeader(context.tr('goals_wellness'), secondaryTextColor),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.scope,
            title: context.tr('nutrition_targets'),
            subtitle: context.tr('nutrition_targets_sub'),
            color: AppColors.mint,
            onTap: () => context.push('/plan/goals'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.calendar,
            title: context.tr('weekly_recap'),
            subtitle: context.tr('weekly_recap_sub'),
            color: AppColors.sky,
            onTap: () => context.push('/insights/weekly-report'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.rosette,
            title: context.tr('streaks_milestones'),
            subtitle: context.tr('streaks_sub'),
            color: AppColors.butter,
            onTap: () => context.push('/insights/streaks'),
          ),

          const SizedBox(height: AppSpacing.md),

          // 3. Connected Devices & Ecosystem
          _buildSectionHeader(context.tr('connected_devices'), secondaryTextColor),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.device_desktop,
            title: context.tr('devices_hub'),
            subtitle: context.tr('devices_hub_sub'),
            color: AppColors.lilac,
            onTap: () => context.push('/health/devices'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.sun_max_fill,
            title: context.tr('surroundings_weather'),
            subtitle: context.tr('surroundings_sub'),
            color: AppColors.sky,
            onTap: () => context.push('/surroundings'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.star_fill,
            title: context.tr('bloomi_pro'),
            subtitle: context.tr('bloomi_pro_sub'),
            color: AppColors.softOrange,
            onTap: () => context.push('/settings/premium'),
          ),

          const SizedBox(height: AppSpacing.md),

          // 4. About & Legal
          _buildSectionHeader(context.tr('about_security'), secondaryTextColor),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.info_circle,
            title: context.tr('about_bloomi'),
            subtitle: context.tr('about_bloomi_sub'),
            color: AppColors.lilac,
            onTap: () => context.push('/settings/about'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.shield_slash_fill,
            title: context.tr('privacy_policy'),
            subtitle: context.tr('privacy_policy_sub'),
            color: AppColors.mint,
            onTap: () => context.push('/settings/privacy-policy'),
          ),
          _buildSettingsTile(
            context: context,
            icon: CupertinoIcons.hammer_fill,
            title: context.tr('terms_conditions'),
            subtitle: context.tr('terms_conditions_sub'),
            color: AppColors.sky,
            onTap: () => context.push('/settings/terms'),
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, Color textColor) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8, top: 4),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w800,
          color: textColor,
          letterSpacing: 0.6,
        ),
      ),
    );
  }

  Widget _buildSettingsTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    final tileBg = context.appSurface;
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;

    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: tileBg,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
        border: Border.all(color: context.appBorderColor),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color.alphaBlend(color.withAlpha(51), context.appSurface),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: primaryTextColor, size: 20),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: primaryTextColor,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: secondaryTextColor),
        ),
        trailing: Icon(CupertinoIcons.chevron_right, color: secondaryTextColor),
        onTap: onTap,
      ),
    );
  }
}
