import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/animated_card_background.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:flutter/material.dart';

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

    // Resolve solid background color - strictly no glassmorphism or semi-transparent backgrounds
    final cardBg = (widget.backgroundColor == AppColors.surface || widget.backgroundColor == Colors.white)
        ? context.appSurface
        : (isDark
            ? Color.alphaBlend(widget.backgroundColor.withAlpha(46), context.appSurface)
            : widget.backgroundColor);

    final iconCircleBg = isDark
        ? Color.alphaBlend(primaryTextColor.withAlpha(31), context.appSurface)
        : Color.alphaBlend(Colors.black.withAlpha(15), cardBg);

    // Determine card background animation type based on content/metric
    AnimatedCardBackgroundType? bgAnimType;
    if (widget.animationMetricType != null) {
      final t = widget.animationMetricType!.toLowerCase();
      if (t.contains('water') || t.contains('hydrat')) {
        bgAnimType = AnimatedCardBackgroundType.waves;
      } else if (t.contains('calor') || t.contains('burn')) {
        bgAnimType = AnimatedCardBackgroundType.gradientShift;
      } else if (t.contains('step') || t.contains('walk') || t.contains('distance')) {
        bgAnimType = AnimatedCardBackgroundType.floatingShapes;
      } else if (t.contains('sleep') || t.contains('heart') || t.contains('pulse')) {
        bgAnimType = AnimatedCardBackgroundType.subtlePulse;
      }
    }

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
            onTap: widget.onTap,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              child: Stack(
                children: [
                  if (bgAnimType != null)
                    Positioned.fill(
                      child: IgnorePointer(
                        child: AnimatedCardBackground(
                          type: bgAnimType,
                          baseColor: widget.backgroundColor,
                        ),
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    constraints: const BoxConstraints(minHeight: 108),
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
                              Flexible(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
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
                                            ? CupertinoIcons.arrow_up
                                            : CupertinoIcons.arrow_down,
                                        size: 11,
                                        color: primaryTextColor,
                                      ),
                                      const SizedBox(width: 2),
                                      Flexible(
                                        child: Text(
                                          widget.trend!,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: primaryTextColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
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
                                  fontSize: 30,
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
                                    fontSize: 13,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
