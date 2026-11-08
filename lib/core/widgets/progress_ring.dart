import 'dart:math' as math;
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressRing extends StatefulWidget {
  const ProgressRing({
    required this.progress,
    required this.currentValue,
    required this.targetValue,
    required this.label,
    this.unit = 'kcal',
    this.ringColor = AppColors.mint,
    this.backgroundColor,
    this.size = 180,
    this.strokeWidth = 14,
    this.child,
    super.key,
  });

  final double progress; // 0.0 to 1.0 (or > 1.0)
  final double currentValue;
  final double targetValue;
  final String label;
  final String unit;
  final Color ringColor;
  final Color? backgroundColor;
  final double size;
  final double strokeWidth;
  final Widget? child;

  @override
  State<ProgressRing> createState() => _ProgressRingState();
}

class _ProgressRingState extends State<ProgressRing>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animController;
  late Animation<double> _progressAnimation;
  late Animation<double> _valueAnimation;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _setupAnimations();
  }

  void _setupAnimations() {
    _progressAnimation = Tween<double>(
      begin: 0.0,
      end: widget.progress.clamp(0.0, 1.5),
    ).animate(CurvedAnimation(
      parent: _animController,
      curve: Curves.easeOut,
    ));

    _valueAnimation = Tween<double>(
      begin: 0.0,
      end: widget.currentValue,
    ).animate(CurvedAnimation(
      parent: _animController,
      curve: Curves.easeOut,
    ));

    _animController.forward(from: 0.0);
  }

  @override
  void didUpdateWidget(ProgressRing oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.progress != widget.progress ||
        oldWidget.currentValue != widget.currentValue) {
      _setupAnimations();
    }
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.of(context).disableAnimations;
    final currentProgress = reduceMotion ? widget.progress : _progressAnimation.value;
    final displayValue = reduceMotion ? widget.currentValue : _valueAnimation.value;
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;
    final isDark = context.isDarkMode;

    final trackBg = widget.backgroundColor ??
        (isDark ? context.appInk.withAlpha(25) : context.appDivider);

    return Semantics(
      label: '${widget.label}: ${widget.currentValue.toInt()} of ${widget.targetValue.toInt()} ${widget.unit}',
      child: AnimatedBuilder(
        animation: _animController,
        builder: (context, child) {
          return SizedBox(
            width: widget.size,
            height: widget.size,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomPaint(
                  size: Size(widget.size, widget.size),
                  painter: _RingPainter(
                    progress: currentProgress,
                    ringColor: widget.ringColor,
                    bgColor: trackBg,
                    strokeWidth: widget.strokeWidth,
                  ),
                ),
                if (widget.child != null)
                  Center(child: widget.child!)
                else
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        displayValue.toInt().toString(),
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          height: 1.0,
                          color: primaryTextColor,
                        ),
                      ),
                      Text(
                        '${widget.unit} remaining',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: secondaryTextColor,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'of ${widget.targetValue.toInt()}',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 11,
                          color: secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  const _RingPainter({
    required this.progress,
    required this.ringColor,
    required this.bgColor,
    required this.strokeWidth,
  });

  final double progress;
  final Color ringColor;
  final Color bgColor;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    // Background track
    final bgPaint = Paint()
      ..color = bgColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawCircle(center, radius, bgPaint);

    // Active progress arc
    if (progress > 0) {
      final sweepAngle = 2 * math.pi * progress.clamp(0.0, 1.0);
      final activePaint = Paint()
        ..color = ringColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        -math.pi / 2,
        sweepAngle,
        false,
        activePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _RingPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.ringColor != ringColor ||
        oldDelegate.bgColor != bgColor ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
