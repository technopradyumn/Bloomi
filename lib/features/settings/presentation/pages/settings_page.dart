import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
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
          _buildSectionHeader('Preferences & Mindful Habits', secondaryTextColor),
          _buildSettingsTile(
            context: context,
            icon: Icons.palette_rounded,
            title: 'Appearance & Theme',
            subtitle: 'Dark, Light, System Mode & App Background Options',
            color: AppColors.mint,
            onTap: () => context.push('/settings/theme'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.shield_outlined,
            title: 'Permissions & System Access',
            subtitle: 'Health Connect, Step Sensors, GPS, Notifications & Camera',
            color: AppColors.mint,
            onTap: () => context.push('/settings/permissions'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.alarm_rounded,
            title: 'Reminders & Notifications',
            subtitle: 'Meal times, water, weight check-in & bedtime',
            color: AppColors.lilac,
            onTap: () => context.push('/settings/reminders'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.straighten_rounded,
            title: 'Units of Measurement',
            subtitle: 'Metric (kg, cm, ml, km) or Imperial (lbs, ft/in, fl oz)',
            color: AppColors.peach,
            onTap: () => context.push('/settings/units'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.translate_rounded,
            title: 'App Language',
            subtitle: 'English, हिन्दी (Hindi), or Hinglish',
            color: AppColors.sky,
            onTap: () => context.push('/settings/language'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.widgets_rounded,
            title: 'Home Screen Widgets',
            subtitle: 'Auto-updating light, dark & system widgets with live data',
            color: AppColors.butter,
            onTap: () => context.push('/settings/widgets'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.watch_rounded,
            title: 'Wear OS Watch App',
            subtitle: 'Smartwatch companion, tiles, complications & live vitals',
            color: AppColors.lilac,
            onTap: () => context.push('/settings/wear-os'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.devices_other_rounded,
            title: 'Devices & Smartwatch',
            subtitle: 'Health Connect, Galaxy Watch, Pixel Watch, Garmin',
            color: AppColors.mint,
            onTap: () => context.push('/health/devices'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.wb_sunny_rounded,
            title: 'Surroundings & Weather',
            subtitle: 'Air quality, UV index, and weather hydration tips',
            color: AppColors.sky,
            onTap: () => context.push('/surroundings'),
          ),
          const SizedBox(height: AppSpacing.md),
          _buildSectionHeader('About & Legal', secondaryTextColor),
          _buildSettingsTile(
            context: context,
            icon: Icons.info_outline_rounded,
            title: 'About Bloomi',
            subtitle: 'Build specifications, version, attributions',
            color: AppColors.lilac,
            onTap: () => context.push('/settings/about'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.privacy_tip_rounded,
            title: 'Privacy Policy',
            subtitle: 'Offline-first, on-device data architecture',
            color: AppColors.mint,
            onTap: () => context.push('/settings/privacy-policy'),
          ),
          _buildSettingsTile(
            context: context,
            icon: Icons.gavel_rounded,
            title: 'Terms & Conditions',
            subtitle: 'Terms of service and wellness guidelines',
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
          letterSpacing: 0.5,
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
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withAlpha(50),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: primaryTextColor, size: 20),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 15, color: primaryTextColor),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: secondaryTextColor),
        ),
        trailing:
            Icon(Icons.chevron_right_rounded, color: secondaryTextColor),
        onTap: onTap,
      ),
    );
  }
}
