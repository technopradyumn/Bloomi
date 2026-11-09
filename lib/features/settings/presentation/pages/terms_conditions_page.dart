import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

/// Terms and Conditions Screen for Bloomi.
class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Terms & Conditions',
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
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          // Header Summary Card
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
                    const Icon(CupertinoIcons.hammer_fill, color: AppColors.mint, size: 22),
                    const SizedBox(width: 8),
                    Text(
                      'Terms of Service',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: context.appInk,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  'Last Updated: November 2026',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: context.appSlate,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Please read these terms carefully before using Bloomi. By accessing or using our application, you agree to be bound by these terms.',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.45,
                    color: context.appSlate,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Term 1: Non-Medical Advice
          _buildTermCard(
            context: context,
            number: '1',
            icon: CupertinoIcons.heart_fill,
            title: 'General Wellness & Non-Medical Advice',
            content:
                'Bloomi is designed strictly for general lifestyle awareness, habit tracking, and informational wellness purposes. Bloomi is NOT a medical device, diagnostic tool, or clinical prescription service. The content, nutritional estimates, macro suggestions, and calculations (such as BMR and TDEE) are based on standard reference algorithms and must not be used as substitutes for professional medical diagnosis or medical consultation.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Term 2: Safe Calorie Floor
          _buildTermCard(
            context: context,
            number: '2',
            icon: CupertinoIcons.heart,
            title: 'Physiological Calorie Safety Floors',
            content:
                'To safeguard personal health and avoid metabolic risks, Bloomi enforces safe physiological calorie floors (1,200 kcal/day for females and 1,500 kcal/day for males). Target calories cannot be set below these minimum safe limits.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Term 3: Offline Local Data & Device Security
          _buildTermCard(
            context: context,
            number: '3',
            icon: CupertinoIcons.cube_box_fill,
            title: 'On-Device Storage & Device Security',
            content:
                'Because Bloomi operates on an offline-first architecture without a central server, all your logged health data is stored directly on your physical device. You are responsible for maintaining your device security and exporting data backups if transferring to a new device.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Term 4: Subscriptions & Payments
          _buildTermCard(
            context: context,
            number: '4',
            icon: CupertinoIcons.bag,
            title: 'In-App Purchases & Subscriptions',
            content:
                'Bloomi Premium features (unlimited photo meal scans, full lab micronutrients, and smartwatch widgets) are available via monthly, 6-month, or yearly subscriptions billed through Google Play Store or Apple App Store. Subscription renewals and cancellations are governed by Google Play or App Store terms.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Term 5: Intellectual Property
          _buildTermCard(
            context: context,
            number: '5',
            icon: CupertinoIcons.info_circle,
            title: 'Intellectual Property & Food References',
            content:
                'All trademarks, visual designs, mascots, illustrations, code, and interfaces of Bloomi are the intellectual property of the app creators. Food composition data is sourced from public scientific databases including the USDA FoodData Central and ICMR-NIN Indian Food Composition Tables.',
          ),
          const SizedBox(height: AppSpacing.md),

          // Term 6: Modifications
          _buildTermCard(
            context: context,
            number: '6',
            icon: CupertinoIcons.arrow_clockwise,
            title: 'Updates and Policy Changes',
            content:
                'We may update these terms occasionally to reflect software improvements, regulatory adjustments, or new store guidelines. Continued use of Bloomi following any updates constitutes acceptance of the modified terms.',
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  Widget _buildTermCard({
    required BuildContext context,
    required String number,
    required IconData icon,
    required String title,
    required String content,
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
                  '$number. $title',
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
            content,
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
