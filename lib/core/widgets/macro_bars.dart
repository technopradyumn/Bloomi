import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:flutter/material.dart';

class MacroData {
  const MacroData({
    required this.name,
    required this.currentGrams,
    required this.targetGrams,
    required this.color,
  });

  final String name;
  final double currentGrams;
  final double targetGrams;
  final Color color;

  double get ratio => targetGrams > 0 ? (currentGrams / targetGrams).clamp(0.0, 1.0) : 0.0;
}

class MacroBars extends StatefulWidget {
  const MacroBars({
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fibre,
    super.key,
  });

  final MacroData protein;
  final MacroData carbs;
  final MacroData fat;
  final MacroData fibre;

  @override
  State<MacroBars> createState() => _MacroBarsState();
}

class _MacroBarsState extends State<MacroBars>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.of(context).disableAnimations;

    return Semantics(
      label: 'Macronutrients overview: '
          'Protein ${widget.protein.currentGrams.toInt()} of ${widget.protein.targetGrams.toInt()}g, '
          'Carbs ${widget.carbs.currentGrams.toInt()} of ${widget.carbs.targetGrams.toInt()}g, '
          'Fat ${widget.fat.currentGrams.toInt()} of ${widget.fat.targetGrams.toInt()}g, '
          'Fibre ${widget.fibre.currentGrams.toInt()} of ${widget.fibre.targetGrams.toInt()}g',
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final factor = reduceMotion ? 1.0 : _animation.value;
          return Column(
            children: [
              _buildMacroRow(context, widget.protein, factor),
              const SizedBox(height: AppSpacing.sm),
              _buildMacroRow(context, widget.carbs, factor),
              const SizedBox(height: AppSpacing.sm),
              _buildMacroRow(context, widget.fat, factor),
              const SizedBox(height: AppSpacing.sm),
              _buildMacroRow(context, widget.fibre, factor),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMacroRow(BuildContext context, MacroData data, double animationFactor) {
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;
    final trackColor = context.isDarkMode ? context.appInk.withAlpha(25) : context.appDivider;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                HealthMetricAnimation(metricType: data.name, size: 14, color: data.color),
                const SizedBox(width: 5),
                Text(
                  data.name,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: primaryTextColor,
                  ),
                ),
              ],
            ),
            Text(
              '${data.currentGrams.toInt()} / ${data.targetGrams.toInt()}g',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: secondaryTextColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          child: Container(
            height: 8,
            width: double.infinity,
            color: trackColor,
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: (data.ratio * animationFactor).clamp(0.0, 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: data.color,
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
