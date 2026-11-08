import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:flutter/material.dart';

class MealSectionHeader extends StatelessWidget {
  const MealSectionHeader({
    required this.title,
    required this.caloriesKcal,
    this.icon,
    this.onAddPressed,
    super.key,
  });

  final String title;
  final double caloriesKcal;
  final IconData? icon;
  final VoidCallback? onAddPressed;

  @override
  Widget build(BuildContext context) {
    final primaryTextColor = context.appInk;
    final isDark = context.isDarkMode;
    final badgeBg = isDark ? AppColors.butter.withAlpha(60) : AppColors.butter;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.only(right: AppSpacing.sm),
              child: HealthMetricAnimation(
                metricType: 'nutrition',
                size: 20,
                color: primaryTextColor,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Baloo 2',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: primaryTextColor,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: badgeBg,
                borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.chipRadius)),
              ),
              child: Text(
                '${caloriesKcal.toInt()} kcal',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: primaryTextColor,
                ),
              ),
            ),
          ],
        ),
        if (onAddPressed != null)
          IconButton(
            onPressed: onAddPressed,
            icon: Icon(Icons.add_circle_outline_rounded, color: primaryTextColor),
            tooltip: 'Add food to $title',
            constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
          ),
      ],
    );
  }
}
