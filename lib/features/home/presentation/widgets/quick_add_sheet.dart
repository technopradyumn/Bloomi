import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/features/home/domain/repositories/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuickAddSheet extends StatelessWidget {
  const QuickAddSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: context.appBackground,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: context.appInk),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/home');
            }
          },
          tooltip: 'Back',
        ),
        title: Text(
          'Quick Log',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: context.appInk,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenSide,
            vertical: AppSpacing.md,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mindful, instant logging for food, water, and movement.',
                style: TextStyle(fontSize: 13, color: context.appSlate),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Grid of 2x2 actions
              Row(
                children: [
                  Expanded(
                    child: _buildActionTile(
                      context: context,
                      icon: Icons.search_rounded,
                      color: AppColors.mint,
                      title: 'Search Food',
                      subtitle: 'Browse 1,000+ foods',
                      onTap: () {
                        if (context.canPop()) context.pop();
                        context.go('/food/search');
                      },
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _buildActionTile(
                      context: context,
                      icon: Icons.qr_code_scanner_rounded,
                      color: AppColors.peach,
                      title: 'Scan Barcode 👑',
                      subtitle: 'Premium package scan',
                      onTap: () {
                        if (context.canPop()) context.pop();
                        context.go('/food/barcode');
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: _buildActionTile(
                      context: context,
                      icon: Icons.water_drop_rounded,
                      color: AppColors.sky,
                      title: 'Add Water',
                      subtitle: '+250 ml glass',
                      onTap: () async {
                        await sl<HomeRepository>().logWater(ml: 250);
                        if (context.mounted) {
                          if (context.canPop()) context.pop();
                          BloomiToast.show(
                            context,
                            message: 'Logged 250 ml of water! Stay refreshed.',
                            icon: Icons.water_drop_rounded,
                          );
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _buildActionTile(
                      context: context,
                      icon: Icons.edit_note_rounded,
                      color: AppColors.butter,
                      title: 'Custom Food',
                      subtitle: 'Add custom recipe',
                      onTap: () {
                        if (context.canPop()) context.pop();
                        context.go('/food/custom');
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionTile({
    required BuildContext context,
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    final isDark = context.isDarkMode;
    return Material(
      color: color.withAlpha(isDark ? 60 : 50),
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isDark ? color.withAlpha(180) : color,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: context.appInk, size: 22),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: context.appInk,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: context.appSlate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

