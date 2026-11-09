import 'dart:math' as math;
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum AnimatedCardBackgroundType {
  waves, // Flowing horizontal wave contours (Hydration, Water)
  gradientShift, // Gentle animated gradient shift (Calories, Metabolism)
  floatingShapes, // Slow organic floating particles/circles (Steps, Walking, Activity)
  subtlePulse, // Gentle soothing glow pulse (Sleep, Recovery, Heart Rate)
}

/// A lightweight, high-performance animated background designed to sit inside
/// cards behind content, giving an ambient sense of life without sacrificing
/// readability, text contrast, or battery performance.
class AnimatedCardBackground extends StatefulWidget {
  final AnimatedCardBackgroundType type;
  final Color baseColor;

  const AnimatedCardBackground({
    super.key,
    required this.type,
    required this.baseColor,
  });

  @override
  State<AnimatedCardBackground> createState() => _AnimatedCardBackgroundState();
}

class _AnimatedCardBackgroundState extends State<AnimatedCardBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );
    if (!kDebugMode || !const bool.fromEnvironment('FLUTTER_TEST')) {
      _controller.repeat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;

    return IgnorePointer(
      child: RepaintBoundary(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            return CustomPaint(
              painter: _CardBackgroundPainter(
                progress: _controller.value,
                type: widget.type,
                color: widget.baseColor,
                isDark: isDark,
              ),
              size: Size.infinite,
            );
          },
        ),
      ),
    );
  }
}

class _CardBackgroundPainter extends CustomPainter {
  final double progress;
  final AnimatedCardBackgroundType type;
  final Color color;
  final bool isDark;

  _CardBackgroundPainter({
    required this.progress,
    required this.type,
    required this.color,
    required this.isDark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (size.width <= 0 || size.height <= 0) return;

    final paint = Paint()..isAntiAlias = true;

    switch (type) {
      case AnimatedCardBackgroundType.waves:
        _drawWaves(canvas, size, paint);
        break;
      case AnimatedCardBackgroundType.gradientShift:
        _drawGradientShift(canvas, size, paint);
        break;
      case AnimatedCardBackgroundType.floatingShapes:
        _drawFloatingShapes(canvas, size, paint);
        break;
      case AnimatedCardBackgroundType.subtlePulse:
        _drawSubtlePulse(canvas, size, paint);
        break;
    }
  }

  void _drawWaves(Canvas canvas, Size size, Paint paint) {
    final waveAlpha = isDark ? 0.08 : 0.07;
    paint.color = color.withAlpha((waveAlpha * 255).round());
    paint.style = PaintingStyle.fill;

    final path1 = Path();
    final h1 = size.height * 0.72;
    path1.moveTo(0, size.height);
    path1.lineTo(0, h1);

    final shift1 = progress * 2 * math.pi;
    for (double x = 0; x <= size.width; x += 10) {
      final y = h1 + math.sin((x / size.width * 2 * math.pi) + shift1) * 6;
      path1.lineTo(x, y);
    }
    path1.lineTo(size.width, size.height);
    path1.close();
    canvas.drawPath(path1, paint);

    // Second overlapping crest
    paint.color = color.withAlpha(((waveAlpha * 0.7) * 255).round());
    final path2 = Path();
    final h2 = size.height * 0.82;
    path2.moveTo(0, size.height);
    path2.lineTo(0, h2);

    final shift2 = (progress + 0.3) * 2 * math.pi;
    for (double x = 0; x <= size.width; x += 10) {
      final y = h2 + math.cos((x / size.width * 2 * math.pi) + shift2) * 5;
      path2.lineTo(x, y);
    }
    path2.lineTo(size.width, size.height);
    path2.close();
    canvas.drawPath(path2, paint);
  }

  void _drawGradientShift(Canvas canvas, Size size, Paint paint) {
    final shift = math.sin(progress * 2 * math.pi);
    final center = Offset(
      size.width * (0.8 + 0.15 * shift),
      size.height * (0.2 + 0.15 * math.cos(progress * 2 * math.pi)),
    );
    final radius = size.width * 0.7;

    final alpha = isDark ? 0.12 : 0.09;
    paint.shader = RadialGradient(
      center: Alignment(shift * 0.4 + 0.3, -0.4),
      radius: 0.9,
      colors: [
        color.withAlpha((alpha * 255).round()),
        color.withAlpha(((alpha * 0.3) * 255).round()),
        Colors.transparent,
      ],
      stops: const [0.0, 0.55, 1.0],
    ).createShader(Rect.fromCircle(center: center, radius: radius));

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  void _drawFloatingShapes(Canvas canvas, Size size, Paint paint) {
    final alpha = isDark ? 0.09 : 0.07;
    paint.style = PaintingStyle.fill;
    paint.color = color.withAlpha((alpha * 255).round());

    // 3 subtle floating circles with staggered sinusoidal offsets
    final p1 = (progress) % 1.0;
    final p2 = (progress + 0.33) % 1.0;
    final p3 = (progress + 0.66) % 1.0;

    final c1 = Offset(
      size.width * 0.85 + math.sin(p1 * 2 * math.pi) * 8,
      size.height * 0.35 + math.cos(p1 * 2 * math.pi) * 8,
    );
    final c2 = Offset(
      size.width * 0.25 + math.cos(p2 * 2 * math.pi) * 6,
      size.height * 0.75 + math.sin(p2 * 2 * math.pi) * 6,
    );
    final c3 = Offset(
      size.width * 0.60 + math.sin(p3 * 2 * math.pi) * 7,
      size.height * 0.85 + math.cos(p3 * 2 * math.pi) * 5,
    );

    canvas.drawCircle(c1, 24, paint);
    canvas.drawCircle(c2, 16, paint);
    canvas.drawCircle(c3, 12, paint);
  }

  void _drawSubtlePulse(Canvas canvas, Size size, Paint paint) {
    final pulse = 0.85 + 0.15 * math.sin(progress * 2 * math.pi);
    final alpha = (isDark ? 0.10 : 0.07) * pulse;

    final center = Offset(size.width * 0.85, size.height * 0.25);
    paint.shader = RadialGradient(
      colors: [
        color.withAlpha((alpha * 255).round()),
        Colors.transparent,
      ],
      stops: const [0.0, 1.0],
    ).createShader(Rect.fromCircle(center: center, radius: size.width * 0.5 * pulse));

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant _CardBackgroundPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.type != type ||
        oldDelegate.color != color ||
        oldDelegate.isDark != isDark;
  }
}

