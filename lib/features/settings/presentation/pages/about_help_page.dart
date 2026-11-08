import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// About and System Information Page.
///
/// Dynamically reads live build number, version number, package name,
/// and metadata directly from the native platform environment via PackageInfo.
class AboutHelpPage extends StatefulWidget {
  const AboutHelpPage({super.key});

  @override
  State<AboutHelpPage> createState() => _AboutHelpPageState();
}

class _AboutHelpPageState extends State<AboutHelpPage> {
  late final Future<PackageInfo> _packageInfoFuture;

  @override
  void initState() {
    super.initState();
    _packageInfoFuture = PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'About Bloomi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Baloo 2',
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: context.appSurface,
        foregroundColor: context.appInk,
        elevation: 0,
      ),
      body: FutureBuilder<PackageInfo>(
        future: _packageInfoFuture,
        builder: (context, snapshot) {
          final info = snapshot.data;
          final appName = (info?.appName.isNotEmpty == true) ? info!.appName : 'Bloomi';
          final version = (info?.version.isNotEmpty == true) ? info!.version : '1.0.0';
          final buildNumber = (info?.buildNumber.isNotEmpty == true) ? info!.buildNumber : '1';
          final packageName = (info?.packageName.isNotEmpty == true)
              ? info!.packageName
              : 'com.bloomi.app.bloomi';

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              // Mascot & Dynamic Header
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: AppSpacing.sm),
                    const MascotWidget(state: MascotState.cheer, size: 84),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      appName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Baloo 2',
                        fontSize: 24,
                        color: context.appInk,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Version $version (Build $buildNumber)',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: context.appSlate,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.mint.withAlpha(50),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '100% Offline-First • Mindful Health',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: context.appInk,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Technical & Build Specifications Card
              _buildSectionHeader('APPLICATION & SYSTEM DETAILS'),
              const SizedBox(height: AppSpacing.sm),
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  children: [
                    _buildDetailRow(
                      context: context,
                      icon: Icons.tag_rounded,
                      label: 'App Version',
                      value: 'v$version',
                    ),
                    const Divider(height: 16),
                    _buildDetailRow(
                      context: context,
                      icon: Icons.numbers_rounded,
                      label: 'Build Number',
                      value: buildNumber,
                    ),
                    const Divider(height: 16),
                    _buildDetailRow(
                      context: context,
                      icon: Icons.fingerprint_rounded,
                      label: 'Package ID',
                      value: packageName,
                    ),
                    const Divider(height: 16),
                    _buildDetailRow(
                      context: context,
                      icon: Icons.storage_rounded,
                      label: 'Database Schema',
                      value: 'Drift SQLite v4 (Per-User Scoped)',
                    ),
                    const Divider(height: 16),
                    _buildDetailRow(
                      context: context,
                      icon: Icons.health_and_safety_rounded,
                      label: 'Health Engine',
                      value: 'Android Health Connect API',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Wellness & Guidance Disclaimer
              _buildSectionHeader('DISCLAIMER'),
              const SizedBox(height: AppSpacing.sm),
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shield_outlined, color: AppColors.mint, size: 20),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Wellness & Guidance Disclaimer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Baloo 2',
                              color: context.appInk,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Bloomi is designed exclusively for general wellness, lifestyle tracking, and nutritional awareness. It is not a medical device and does not provide clinical diagnosis, prescriptions, or medical treatment. Always consult a licensed physician or registered dietitian for medical questions.',
                      style: TextStyle(
                        fontSize: 12.5,
                        height: 1.45,
                        color: context.appSlate,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Data Sources & Attributions
              _buildSectionHeader('DATA SOURCES & ATTRIBUTIONS'),
              const SizedBox(height: AppSpacing.sm),
              Container(
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.menu_book_rounded, color: AppColors.mint),
                      title: Text(
                        'IFCT 2017',
                        style: TextStyle(fontWeight: FontWeight.bold, color: context.appInk),
                      ),
                      subtitle: const Text('Indian Food Composition Tables (ICMR-NIN, Hyderabad)'),
                    ),
                    const Divider(height: 1, indent: 56),
                    ListTile(
                      leading: const Icon(Icons.restaurant_rounded, color: AppColors.butter),
                      title: Text(
                        'USDA FoodData Central',
                        style: TextStyle(fontWeight: FontWeight.bold, color: context.appInk),
                      ),
                      subtitle: const Text('U.S. Department of Agriculture standard food references'),
                    ),
                    const Divider(height: 1, indent: 56),
                    ListTile(
                      leading: const Icon(Icons.cloud_outlined, color: AppColors.sky),
                      title: Text(
                        'Open-Meteo',
                        style: TextStyle(fontWeight: FontWeight.bold, color: context.appInk),
                      ),
                      subtitle: const Text('Open-source localized weather and AQI service'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Dedicated Legal Navigation
              _buildSectionHeader('LEGAL POLICIES & TERMS'),
              const SizedBox(height: AppSpacing.sm),
              Container(
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.privacy_tip_outlined, color: AppColors.mint),
                      title: Text(
                        'Privacy Policy',
                        style: TextStyle(fontWeight: FontWeight.w600, color: context.appInk),
                      ),
                      subtitle: const Text('Offline-first privacy and on-device data storage'),
                      trailing: Icon(Icons.chevron_right_rounded, color: context.appSlate),
                      onTap: () => context.push('/settings/privacy-policy'),
                    ),
                    const Divider(height: 1, indent: 56),
                    ListTile(
                      leading: const Icon(Icons.gavel_outlined, color: AppColors.sky),
                      title: Text(
                        'Terms & Conditions',
                        style: TextStyle(fontWeight: FontWeight.w600, color: context.appInk),
                      ),
                      subtitle: const Text('Terms of service and non-medical disclaimers'),
                      trailing: Icon(Icons.chevron_right_rounded, color: context.appSlate),
                      onTap: () => context.push('/settings/terms'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Frequently Asked Questions
              _buildSectionHeader('FREQUENTLY ASKED QUESTIONS'),
              const SizedBox(height: AppSpacing.sm),
              Container(
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  children: [
                    ExpansionTile(
                      title: Text(
                        'Where is my data stored?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: context.appInk,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            'All your health logs, meals, water entries, and targets are saved locally on your phone in an offline SQLite database. Bloomi has no central company database. If you enable Google Drive Sync, an encrypted backup file is saved into your private Google Drive App Data folder.',
                            style: TextStyle(fontSize: 13, height: 1.4, color: context.appSlate),
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 1),
                    ExpansionTile(
                      title: Text(
                        'How are safe calorie floors enforced?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: context.appInk,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            'To safeguard metabolic health, Bloomi strictly enforces a floor of at least 1,200 kcal/day for females and 1,500 kcal/day for males. Target calorie adjustments below these thresholds are prevented.',
                            style: TextStyle(fontSize: 13, height: 1.4, color: context.appSlate),
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 1),
                    ExpansionTile(
                      title: Text(
                        'Can I use Bloomi completely offline?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: context.appInk,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            'Yes! Bloomi is built from the ground up to be fully functional without internet connectivity. Food database lookups, meal logs, water tracking, and plan suggestions work entirely offline.',
                            style: TextStyle(fontSize: 13, height: 1.4, color: context.appSlate),
                          ),
                        ),
                      ],
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

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        color: context.appSlate,
      ),
    );
  }

  Widget _buildDetailRow({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Icon(icon, size: 18, color: context.appSlate),
        const SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: context.appInk,
          ),
        ),
        const Spacer(),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: context.appSlate,
            ),
          ),
        ),
      ],
    );
  }
}
