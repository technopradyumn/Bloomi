import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A polished, tactile stat card featuring:
/// - Adaptive light/dark theme colors
/// - Tactile micro-interaction press scale animation
/// - Light haptic tap feedback
/// - Smooth animated health metric visualizations
class PastelStatCard extends StatefulWidget {
  const PastelStatCard({
    required this.backgroundColor,
    required this.icon,
    required this.label,
    required this.value,
    this.unit,
    this.trend,
    this.isPositiveTrend = true,
    this.onTap,
    this.animationMetricType,
    this.customAnimation,
    super.key,
  });

  final Color backgroundColor;
  final IconData icon;
  final String label;
  final String value;
  final String? unit;
  final String? trend;
  final bool isPositiveTrend;
  final VoidCallback? onTap;
  final String? animationMetricType;
  final Widget? customAnimation;

  @override
  State<PastelStatCard> createState() => _PastelStatCardState();
}

class _PastelStatCardState extends State<PastelStatCard> {
  bool _isPressed = false;

  void _onTapDown(TapDownDetails _) {
    if (widget.onTap != null) {
      setState(() => _isPressed = true);
    }
  }

  void _onTapUp(TapUpDetails _) {
    if (_isPressed) {
      setState(() => _isPressed = false);
    }
  }

  void _onTapCancel() {
    if (_isPressed) {
      setState(() => _isPressed = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;

    // Resolve background color gracefully for dark mode
    final cardBg = (widget.backgroundColor == AppColors.surface)
        ? context.appSurface
        : (isDark ? widget.backgroundColor.withAlpha(50) : widget.backgroundColor);

    final iconCircleBg = isDark ? primaryTextColor.withAlpha(25) : context.appSurface.withAlpha(160);

    return Semantics(
      button: widget.onTap != null,
      label:
          '${widget.label}: ${widget.value} ${widget.unit ?? ""}. ${widget.trend != null ? "Trend: ${widget.trend}" : ""}',
      child: AnimatedScale(
        scale: _isPressed ? 0.96 : 1.0,
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOutQuad,
        child: Material(
          color: cardBg,
          borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
          child: InkWell(
            onTapDown: _onTapDown,
            onTapUp: _onTapUp,
            onTapCancel: _onTapCancel,
            onTap: widget.onTap != null
                ? () {
                    HapticFeedback.lightImpact();
                    widget.onTap!();
                  }
                : null,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            splashColor: cardBg.withAlpha(80),
            highlightColor: cardBg.withAlpha(40),
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              constraints: const BoxConstraints(minHeight: 120),
              decoration: BoxDecoration(
                boxShadow: isDark ? AppColors.darkCardShadow : AppColors.softCardShadow,
                borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: iconCircleBg,
                          shape: BoxShape.circle,
                        ),
                        child: widget.customAnimation ??
                            (widget.animationMetricType != null
                                ? HealthMetricAnimation(
                                    metricType: widget.animationMetricType!,
                                    size: 18,
                                    color: primaryTextColor,
                                  )
                                : Icon(widget.icon, color: primaryTextColor, size: 16)),
                      ),
                      if (widget.trend != null)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          decoration: BoxDecoration(
                            color: iconCircleBg,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(AppSpacing.chipRadius),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                widget.isPositiveTrend
                                    ? Icons.arrow_upward_rounded
                                    : Icons.arrow_downward_rounded,
                                size: 12,
                                color: primaryTextColor,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                widget.trend!,
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: primaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    widget.label,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: secondaryTextColor,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          widget.value,
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            height: 1.0,
                            color: primaryTextColor,
                          ),
                        ),
                        if (widget.unit != null) ...[
                          const SizedBox(width: 4),
                          Text(
                            widget.unit!,
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: primaryTextColor,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
