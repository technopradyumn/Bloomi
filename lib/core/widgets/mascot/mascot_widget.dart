import 'dart:math' as math;
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:flutter/material.dart';

class MascotWidget extends StatefulWidget {
  const MascotWidget({
    this.state = MascotState.idle,
    this.size = 120,
    this.riveAssetPath,
    super.key,
  });

  final MascotState state;
  final double size;
  final String? riveAssetPath;

  @override
  State<MascotWidget> createState() => _MascotWidgetState();
}

class _MascotWidgetState extends State<MascotWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.of(context).disableAnimations;
    final inkColor = context.appInk;

    return Semantics(
      label: 'Bloomi mascot: ${widget.state.name}',
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final progress = reduceMotion ? 0.0 : _controller.value;
          return CustomPaint(
            size: Size(widget.size, widget.size),
            painter: _BloomiPainter(
              state: widget.state,
              animationProgress: progress,
              inkColor: inkColor,
            ),
          );
        },
      ),
    );
  }
}

class _BloomiPainter extends CustomPainter {
  const _BloomiPainter({
    required this.state,
    required this.animationProgress,
    required this.inkColor,
  });

  final MascotState state;
  final double animationProgress;
  final Color inkColor;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height * 0.54);
    final radius = size.width * 0.38;

    // Breathing / state bounce
    double bounceY = 0;
    double squishX = 1.0;
    double squishY = 1.0;

    switch (state) {
      case MascotState.idle:
        bounceY = math.sin(animationProgress * math.pi) * 3;
        squishY = 1.0 + (animationProgress * 0.03);
        squishX = 1.0 - (animationProgress * 0.03);
      case MascotState.happy:
      case MascotState.cheer:
        bounceY = -math.sin(animationProgress * math.pi) * 8;
        squishY = 1.05 - (animationProgress * 0.05);
      case MascotState.sleepy:
        bounceY = math.sin(animationProgress * math.pi) * 1.5;
        squishY = 0.96;
      case MascotState.walking:
        bounceY = math.sin(animationProgress * 2 * math.pi) * 5;
      case MascotState.thinking:
        bounceY = 0;
      default:
        bounceY = math.sin(animationProgress * math.pi) * 2;
    }

    final adjustedCenter = Offset(center.dx, center.dy + bounceY);

    // 1. Sprout / Leaf on top
    _drawSprout(canvas, adjustedCenter, radius, size);

    // 2. Blob Body
    final bodyPaint = Paint()
      ..color = AppColors.mint
      ..style = PaintingStyle.fill;

    canvas.save();
    canvas.translate(adjustedCenter.dx, adjustedCenter.dy);
    canvas.scale(squishX, squishY);

    final bodyRect = Rect.fromCircle(center: Offset.zero, radius: radius);
    final bodyRRect = RRect.fromRectAndRadius(
      bodyRect,
      Radius.circular(radius * 0.88),
    );
    canvas.drawRRect(bodyRRect, bodyPaint);

    // Soft highlight on body top-left
    final highlightPaint = Paint()
      ..color = Colors.white.withAlpha(90)
      ..style = PaintingStyle.fill;
    final highlightRect = Rect.fromCenter(
      center: Offset(-radius * 0.35, -radius * 0.35),
      width: radius * 0.45,
      height: radius * 0.28,
    );
    canvas.drawOval(highlightRect, highlightPaint);

    // 3. Cheeks (soft blush)
    final blushPaint = Paint()
      ..color = const Color(0xFFFF9EAA).withAlpha(150)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(-radius * 0.52, radius * 0.15), radius * 0.16, blushPaint);
    canvas.drawCircle(Offset(radius * 0.52, radius * 0.15), radius * 0.16, blushPaint);

    // 4. Eyes & Mouth according to state
    _drawFace(canvas, radius);

    // 5. Special accessories (e.g. food crumb, water cup, waving hand, zzz)
    _drawAccessories(canvas, radius);

    canvas.restore();
  }

  void _drawSprout(Canvas canvas, Offset center, double radius, Size size) {
    final leafPaint = Paint()
      ..color = const Color(0xFF48B388)
      ..style = PaintingStyle.fill;

    final leafCenter = Offset(center.dx, center.dy - radius * 0.95);
    final path = Path()
      ..moveTo(leafCenter.dx, leafCenter.dy)
      ..quadraticBezierTo(
        leafCenter.dx - 12,
        leafCenter.dy - 16,
        leafCenter.dx - 4,
        leafCenter.dy - 22,
      )
      ..quadraticBezierTo(
        leafCenter.dx + 10,
        leafCenter.dy - 16,
        leafCenter.dx,
        leafCenter.dy,
      );

    canvas.drawPath(path, leafPaint);
  }

  void _drawFace(Canvas canvas, double radius) {
    final eyePaint = Paint()
      ..color = inkColor
      ..style = PaintingStyle.fill;

    final mouthPaint = Paint()
      ..color = inkColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = radius * 0.08
      ..strokeCap = StrokeCap.round;

    final leftEye = Offset(-radius * 0.32, -radius * 0.05);
    final rightEye = Offset(radius * 0.32, -radius * 0.05);

    switch (state) {
      case MascotState.happy:
      case MascotState.cheer:
        // Curved happy eyes ^ ^
        final happyEyePaint = Paint()
          ..color = inkColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = radius * 0.08
          ..strokeCap = StrokeCap.round;

        final leftPath = Path()
          ..moveTo(leftEye.dx - 8, leftEye.dy + 4)
          ..quadraticBezierTo(leftEye.dx, leftEye.dy - 6, leftEye.dx + 8, leftEye.dy + 4);
        final rightPath = Path()
          ..moveTo(rightEye.dx - 8, rightEye.dy + 4)
          ..quadraticBezierTo(rightEye.dx, rightEye.dy - 6, rightEye.dx + 8, rightEye.dy + 4);
        canvas.drawPath(leftPath, happyEyePaint);
        canvas.drawPath(rightPath, happyEyePaint);

        // Big smile
        final smilePath = Path()
          ..moveTo(-radius * 0.22, radius * 0.16)
          ..quadraticBezierTo(0, radius * 0.42, radius * 0.22, radius * 0.16);
        canvas.drawPath(smilePath, mouthPaint);

      case MascotState.sleepy:
        // Closed relaxed eyes - -
        final sleepyEyePaint = Paint()
          ..color = inkColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = radius * 0.08
          ..strokeCap = StrokeCap.round;

        canvas.drawLine(
          Offset(leftEye.dx - 7, leftEye.dy),
          Offset(leftEye.dx + 7, leftEye.dy),
          sleepyEyePaint,
        );
        canvas.drawLine(
          Offset(rightEye.dx - 7, rightEye.dy),
          Offset(rightEye.dx + 7, rightEye.dy),
          sleepyEyePaint,
        );

        // Small round relaxed mouth
        canvas.drawCircle(Offset(0, radius * 0.22), radius * 0.06, eyePaint);

      case MascotState.gentleSad:
        // Gentle caring eyes
        canvas.drawCircle(leftEye, radius * 0.11, eyePaint);
        canvas.drawCircle(rightEye, radius * 0.11, eyePaint);
        // Small gentle pout (kind, never shaming)
        final sadPath = Path()
          ..moveTo(-radius * 0.14, radius * 0.24)
          ..quadraticBezierTo(0, radius * 0.17, radius * 0.14, radius * 0.24);
        canvas.drawPath(sadPath, mouthPaint);

      case MascotState.thinking:
        // Looking up eyes
        canvas.drawCircle(Offset(leftEye.dx + 2, leftEye.dy - 4), radius * 0.11, eyePaint);
        canvas.drawCircle(Offset(rightEye.dx + 2, rightEye.dy - 4), radius * 0.11, eyePaint);
        // Small curious 'o' mouth
        canvas.drawCircle(Offset(radius * 0.08, radius * 0.2), radius * 0.06, eyePaint);

      default:
        // Normal friendly round eyes with glints
        canvas.drawCircle(leftEye, radius * 0.11, eyePaint);
        canvas.drawCircle(rightEye, radius * 0.11, eyePaint);
        final glintPaint = Paint()..color = Colors.white;
        canvas.drawCircle(Offset(leftEye.dx - 2, leftEye.dy - 3), radius * 0.04, glintPaint);
        canvas.drawCircle(Offset(rightEye.dx - 2, rightEye.dy - 3), radius * 0.04, glintPaint);

        // Friendly gentle smile
        final defaultSmile = Path()
          ..moveTo(-radius * 0.16, radius * 0.18)
          ..quadraticBezierTo(0, radius * 0.32, radius * 0.16, radius * 0.18);
        canvas.drawPath(defaultSmile, mouthPaint);
    }
  }

  void _drawAccessories(Canvas canvas, double radius) {
    if (state == MascotState.wave) {
      final handPaint = Paint()
        ..color = AppColors.mint
        ..style = PaintingStyle.fill;
      final waveAngle = math.sin(animationProgress * math.pi * 3) * 0.25;
      canvas.save();
      canvas.translate(radius * 0.88, -radius * 0.2);
      canvas.rotate(-0.4 + waveAngle);
      canvas.drawOval(
        Rect.fromCenter(center: Offset.zero, width: radius * 0.38, height: radius * 0.22),
        handPaint,
      );
      canvas.restore();
    } else if (state == MascotState.sleepy) {
      final tp = TextPainter(
        text: const TextSpan(
          text: 'Zzz',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.lilac,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas, Offset(radius * 0.55, -radius * 0.9));
    }
  }

  @override
  bool shouldRepaint(covariant _BloomiPainter oldDelegate) {
    return oldDelegate.state != state ||
        oldDelegate.animationProgress != animationProgress ||
        oldDelegate.inkColor != inkColor;
  }
}
