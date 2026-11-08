import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Privacy Policy Screen for Bloomi.
class PrivacyPolicyPage extends StatelessWidget {
  final String policyUrl;

  const PrivacyPolicyPage({
    super.key,
    this.policyUrl = 'https://sites.google.com/view/bloomihealth',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: context.appSurface,
        elevation: 0,
        foregroundColor: context.appInk,
        actions: [
          IconButton(
            tooltip: 'Copy Policy Link',
            icon: Icon(Icons.link_rounded, color: context.appInk),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: policyUrl));
              BloomiToast.show(
                context,
                message: 'Privacy Policy URL copied to clipboard!',
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          // Live Hosted URL Notice Banner
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
              border: Border.all(color: AppColors.mint.withAlpha(80)),
              boxShadow: context.appCardShadow,
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.mint.withAlpha(40),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.public_rounded,
                      color: AppColors.mint, size: 20),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hosted Web Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        policyUrl,
                        style: TextStyle(
                          fontSize: 11,
                          color: context.appSlate,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.copy_rounded,
                      size: 18, color: context.appSlate),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: policyUrl));
                    BloomiToast.show(context, message: 'Link copied!');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Core Privacy Commitment Card
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
                    const Icon(Icons.verified_user_rounded,
                        color: AppColors.mint, size: 22),
                    const SizedBox(width: 8),
                    Text(
                      'Privacy-First Architecture',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: context.appInk,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Last Updated: November 2026 | Effective Date: November 2026',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: context.appSlate,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Bloomi is built from the ground up on an offline-first architecture. We do not collect, store, or sell your personal health, nutrition, or body metrics on remote servers.',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.5,
                    color: context.appInk,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Policy Section 1: Local On-Device Storage
          _buildPolicyCard(
            context: context,
            sectionNumber: '1',
            icon: Icons.phone_android_rounded,
            title: '100% On-Device Local Data Storage',
            body:
                '• Standalone Database: All meal logs, custom recipes, water intake, body weight entries, workout records, and personal targets are saved strictly on your local device in an encrypted SQLite database.\n\n'
                '• Zero Central Data Mining: Bloomi operates without proprietary data aggregation servers. Your physical records belong entirely to you and never leave your phone.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Policy Section 2: In-App Purchases & Google Play Billing
          _buildPolicyCard(
            context: context,
            sectionNumber: '2',
            icon: Icons.shopping_bag_outlined,
            title: 'In-App Purchases & Play Store Billing',
            body:
                '• Direct Store Processing: All premium subscriptions and purchases are processed directly through Google Play Store Billing (or Apple App Store).\n\n'
                '• Zero Payment Data Collection: Bloomi never receives or stores your payment card numbers, bank details, or billing addresses. Store purchases are managed by Google or Apple under their standard payment privacy policies.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Policy Section 3: Android Health Connect
          _buildPolicyCard(
            context: context,
            sectionNumber: '3',
            icon: Icons.health_and_safety_rounded,
            title: 'Health Connect & Device Sensors',
            body:
                '• Local Data Reading: Bloomi integrates with Android Health Connect to read daily steps, distance, active calories, sleep duration, and heart rate.\n\n'
                '• Explicit Granular Permission: Health Connect permissions are requested individually. You can grant or revoke any health permission at any time in Android System Settings.\n\n'
                '• Zero Monetization: In strict compliance with Google Play Health Apps Policies, Health Connect data is never transferred to data brokers, advertising networks, or external parties.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Policy Section 4: Location & Surroundings
          _buildPolicyCard(
            context: context,
            sectionNumber: '4',
            icon: Icons.wb_sunny_rounded,
            title: 'Location & Weather Data',
            body:
                '• Ephemeral Lookup: When you open Surroundings, your approximate location coordinates are used strictly to query public weather and Air Quality Index (AQI) data via Open-Meteo.\n\n'
                '• No Tracking: Bloomi does not track your location in the background or maintain any GPS movement logs.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Policy Section 5: No Ads & No Trackers
          _buildPolicyCard(
            context: context,
            sectionNumber: '5',
            icon: Icons.do_not_disturb_on_rounded,
            title: 'Zero Third-Party Trackers & Zero Ads',
            body:
                '• No Advertising SDKs: Bloomi contains zero advertising networks, marketing trackers, or cross-site profiling scripts.\n\n'
                '• Complete Data Isolation: Your personal logs are kept isolated on your device.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Policy Section 6: Data Rights & Export
          _buildPolicyCard(
            context: context,
            sectionNumber: '6',
            icon: Icons.file_download_outlined,
            title: 'Data Control & Export',
            body:
                '• Data Export: You can export your entire nutritional and activity records as a structured JSON file at any time from Settings.\n\n'
                '• App Uninstallation: Uninstalling Bloomi purges all local data records stored on your device.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Policy Section 7: Contact & Support
          _buildPolicyCard(
            context: context,
            sectionNumber: '7',
            icon: Icons.mail_outline_rounded,
            title: 'Contact Information',
            body:
                'If you have any questions or feedback regarding this Privacy Policy or data security, please contact us at:\n\n'
                'Email: privacy@bloomi.app\n'
                'Website: https://sites.google.com/view/bloomihealth',
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  Widget _buildPolicyCard({
    required BuildContext context,
    required String sectionNumber,
    required IconData icon,
    required String title,
    required String body,
  }) {
    return Container(
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
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: context.appBackground,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, size: 20, color: context.appInk),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Section $sectionNumber: $title',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: context.appInk,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            body,
            style: TextStyle(
              fontSize: 13,
              height: 1.5,
              color: context.appSlate,
            ),
          ),
        ],
      ),
    );
  }
}
