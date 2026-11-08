import 'dart:io' show Platform;
import 'dart:math' as math;
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Base mixin to pause animations when app is backgrounded or when system reduce-motion is enabled.
mixin ResponsiveAnimationLifecycleMixin<T extends StatefulWidget> on State<T>, WidgetsBindingObserver {
  AnimationController get animController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (!isReduceMotion && !animController.isAnimating) {
        animController.repeat();
      }
    } else {
      if (animController.isAnimating) {
        animController.stop();
      }
    }
  }

  bool get isReduceMotion {
    if (!mounted) return false;
    if (kDebugMode && Platform.environment.containsKey('FLUTTER_TEST')) {
      return true;
    }
    return MediaQuery.maybeOf(context)?.disableAnimations ?? false;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

// =========================================================================
// 1. HYDRATION / WATER: Flowing wave animation & fill level
// =========================================================================
class AnimatedWaterWaveMetric extends StatefulWidget {
  final double progress; // 0.0 to 1.0
  final double size;
  final Color? color;

  const AnimatedWaterWaveMetric({
    super.key,
    this.progress = 0.65,
    this.size = 36,
    this.color,
  });

  @override
  State<AnimatedWaterWaveMetric> createState() => _AnimatedWaterWaveMetricState();
}

class _AnimatedWaterWaveMetricState extends State<AnimatedWaterWaveMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final waveColor = widget.color ?? (context.isDarkMode ? const Color(0xFF38BDF8) : AppColors.sky);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return CustomPaint(
            painter: _WaterWavePainter(
              wavePhase: isReduceMotion ? 0.0 : _controller.value * 2 * math.pi,
              fillLevel: widget.progress.clamp(0.08, 0.95),
              color: waveColor,
            ),
          );
        },
      ),
    );
  }
}

class _WaterWavePainter extends CustomPainter {
  final double wavePhase;
  final double fillLevel;
  final Color color;

  _WaterWavePainter({
    required this.wavePhase,
    required this.fillLevel,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final r = size.width / 2;
    final center = Offset(r, r);

    // Circular clip
    final clipPath = Path()..addOval(Rect.fromCircle(center: center, radius: r));
    canvas.save();
    canvas.clipPath(clipPath);

    // Background circle tint
    final bgPaint = Paint()..color = color.withAlpha(45);
    canvas.drawCircle(center, r, bgPaint);

    // Water level
    final waterY = size.height * (1.0 - fillLevel);
    final wavePath = Path();
    wavePath.moveTo(0, size.height);
    wavePath.lineTo(0, waterY);

    for (double x = 0; x <= size.width; x += 1) {
      final y = waterY + math.sin(x * 0.25 + wavePhase) * 2.5;
      wavePath.lineTo(x, y);
    }
    wavePath.lineTo(size.width, size.height);
    wavePath.close();

    final waterPaint = Paint()..color = color.withAlpha(200);
    canvas.drawPath(wavePath, waterPaint);

    // Subtle droplet crest
    final crestPath = Path();
    crestPath.moveTo(0, size.height);
    crestPath.lineTo(0, waterY);
    for (double x = 0; x <= size.width; x += 1) {
      final y = waterY + math.cos(x * 0.25 + wavePhase * 1.2) * 1.5;
      crestPath.lineTo(x, y);
    }
    crestPath.lineTo(size.width, size.height);
    crestPath.close();

    final crestPaint = Paint()..color = color.withAlpha(120);
    canvas.drawPath(crestPath, crestPaint);

    canvas.restore();

    // Drop outline / rim
    final rimPaint = Paint()
      ..color = color.withAlpha(150)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8;
    canvas.drawCircle(center, r - 0.9, rimPaint);
  }

  @override
  bool shouldRepaint(covariant _WaterWavePainter oldDelegate) =>
      oldDelegate.wavePhase != wavePhase ||
      oldDelegate.fillLevel != fillLevel ||
      oldDelegate.color != color;
}

// =========================================================================
// 2. STEPS: Walking footsteps alternating left and right
// =========================================================================
class AnimatedStepsFootstepsMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedStepsFootstepsMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedStepsFootstepsMetric> createState() => _AnimatedStepsFootstepsMetricState();
}

class _AnimatedStepsFootstepsMetricState extends State<AnimatedStepsFootstepsMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stepColor = widget.color ?? (context.isDarkMode ? const Color(0xFF34D399) : AppColors.mint);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          // Left foot steps on first half, right foot steps on second half
          final leftAlpha = t < 0.5 ? (1.0 - t * 1.5).clamp(0.3, 1.0) : 0.35;
          final rightAlpha = t >= 0.5 ? (1.0 - (t - 0.5) * 1.5).clamp(0.3, 1.0) : 0.35;
          final leftOffset = t < 0.5 ? (math.sin(t * 2 * math.pi) * 3) : 0.0;
          final rightOffset = t >= 0.5 ? (math.sin((t - 0.5) * 2 * math.pi) * 3) : 0.0;

          return Stack(
            alignment: Alignment.center,
            children: [
              // Left foot
              Positioned(
                left: widget.size * 0.15,
                top: widget.size * 0.18 - leftOffset,
                child: Opacity(
                  opacity: leftAlpha,
                  child: Icon(
                    Icons.directions_walk_rounded,
                    size: widget.size * 0.55,
                    color: stepColor,
                  ),
                ),
              ),
              // Right foot
              Positioned(
                right: widget.size * 0.15,
                bottom: widget.size * 0.18 - rightOffset,
                child: Opacity(
                  opacity: rightAlpha,
                  child: Transform.flip(
                    flipX: true,
                    child: Icon(
                      Icons.directions_walk_rounded,
                      size: widget.size * 0.55,
                      color: stepColor,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// =========================================================================
// 3. HEART RATE: Beating heart with ECG pulse line
// =========================================================================
class AnimatedHeartPulseMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedHeartPulseMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedHeartPulseMetric> createState() => _AnimatedHeartPulseMetricState();
}

class _AnimatedHeartPulseMetricState extends State<AnimatedHeartPulseMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 950),
    );
    // Double pulse: lub-dub
    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.25).chain(CurveTween(curve: Curves.easeOut)), weight: 20),
      TweenSequenceItem(tween: Tween(begin: 1.25, end: 1.05).chain(CurveTween(curve: Curves.easeIn)), weight: 15),
      TweenSequenceItem(tween: Tween(begin: 1.05, end: 1.20).chain(CurveTween(curve: Curves.easeOut)), weight: 15),
      TweenSequenceItem(tween: Tween(begin: 1.20, end: 1.0).chain(CurveTween(curve: Curves.easeIn)), weight: 20),
      TweenSequenceItem(tween: ConstantTween(1.0), weight: 30),
    ]).animate(_controller);

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final heartColor = widget.color ?? (context.isDarkMode ? const Color(0xFFFB7185) : AppColors.peach);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final scale = isReduceMotion ? 1.0 : _scaleAnimation.value;
          return Center(
            child: Transform.scale(
              scale: scale,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.favorite_rounded,
                    size: widget.size * 0.82,
                    color: heartColor,
                  ),
                  // Glowing pulse aura
                  if (!isReduceMotion)
                    Opacity(
                      opacity: (_scaleAnimation.value - 1.0).clamp(0.0, 0.45),
                      child: Icon(
                        Icons.favorite_border_rounded,
                        size: widget.size * 0.98,
                        color: heartColor,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// =========================================================================
// 4. SLEEP: Floating "z z z" letters
// =========================================================================
class AnimatedSleepZzzMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedSleepZzzMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedSleepZzzMetric> createState() => _AnimatedSleepZzzMetricState();
}

class _AnimatedSleepZzzMetricState extends State<AnimatedSleepZzzMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sleepColor = widget.color ?? (context.isDarkMode ? const Color(0xFFA78BFA) : AppColors.lilac);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          return Stack(
            children: [
              // Resting moon base
              Align(
                alignment: Alignment.bottomLeft,
                child: Icon(
                  Icons.nightlight_round,
                  size: widget.size * 0.65,
                  color: sleepColor,
                ),
              ),
              // Floating Z1
              _buildFloatingZ(
                t: (t + 0.0) % 1.0,
                fontSize: 10,
                baseX: widget.size * 0.45,
                color: sleepColor,
              ),
              // Floating Z2
              _buildFloatingZ(
                t: (t + 0.35) % 1.0,
                fontSize: 12,
                baseX: widget.size * 0.60,
                color: sleepColor,
              ),
              // Floating Z3
              _buildFloatingZ(
                t: (t + 0.70) % 1.0,
                fontSize: 15,
                baseX: widget.size * 0.75,
                color: sleepColor,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFloatingZ({
    required double t,
    required double fontSize,
    required double baseX,
    required Color color,
  }) {
    final dy = (1.0 - t) * (widget.size * 0.65) - 4;
    final dx = baseX + math.sin(t * 2 * math.pi) * 3;
    final opacity = math.sin(t * math.pi).clamp(0.0, 1.0);

    return Positioned(
      left: dx,
      top: dy,
      child: Opacity(
        opacity: opacity,
        child: Text(
          'z',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontSize: fontSize,
            fontWeight: FontWeight.w800,
            color: color,
            height: 1.0,
          ),
        ),
      ),
    );
  }
}

// =========================================================================
// 5. CALORIES: Animated flame with filling energy ring
// =========================================================================
class AnimatedCaloriesFlameMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedCaloriesFlameMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedCaloriesFlameMetric> createState() => _AnimatedCaloriesFlameMetricState();
}

class _AnimatedCaloriesFlameMetricState extends State<AnimatedCaloriesFlameMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final flameColor = widget.color ?? (context.isDarkMode ? const Color(0xFFFBBF24) : AppColors.butter);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          final scaleY = 1.0 + math.sin(t * math.pi) * 0.16;
          final scaleX = 1.0 - math.sin(t * math.pi) * 0.08;

          return Center(
            child: Transform(
              alignment: Alignment.bottomCenter,
              transform: Matrix4.diagonal3Values(scaleX, scaleY, 1.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.local_fire_department_rounded,
                    size: widget.size * 0.85,
                    color: flameColor,
                  ),
                  // Inner bright core
                  Positioned(
                    bottom: widget.size * 0.12,
                    child: Opacity(
                      opacity: (0.4 + t * 0.6).clamp(0.0, 1.0),
                      child: Icon(
                        Icons.local_fire_department_rounded,
                        size: widget.size * 0.45,
                        color: Colors.white.withAlpha(200),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// =========================================================================
// 6. BLOOD OXYGEN (SpO2): Animated rising oxygen bubbles & pulse ring
// =========================================================================
class AnimatedBloodOxygenMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedBloodOxygenMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedBloodOxygenMetric> createState() => _AnimatedBloodOxygenMetricState();
}

class _AnimatedBloodOxygenMetricState extends State<AnimatedBloodOxygenMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final oxyColor = widget.color ?? (context.isDarkMode ? const Color(0xFF38BDF8) : AppColors.sky);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          return CustomPaint(
            painter: _OxygenBubblesPainter(phase: t, color: oxyColor),
          );
        },
      ),
    );
  }
}

class _OxygenBubblesPainter extends CustomPainter {
  final double phase;
  final Color color;

  _OxygenBubblesPainter({required this.phase, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final r = size.width / 2;
    final center = Offset(r, r);

    // Ring
    final ringPaint = Paint()
      ..color = color.withAlpha(160)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawCircle(center, r - 2, ringPaint);

    // Center "O2" text
    final textSpan = TextSpan(
      text: 'O₂',
      style: TextStyle(
        fontFamily: 'Baloo 2',
        fontWeight: FontWeight.w800,
        fontSize: size.width * 0.36,
        color: color,
        height: 1.0,
      ),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout();
    textPainter.paint(
      canvas,
      Offset(center.dx - textPainter.width / 2, center.dy - textPainter.height / 2),
    );

    // Rising micro-bubbles
    final bubbleCoords = [
      (0.3, 0.0),
      (0.7, 0.33),
      (0.5, 0.66),
    ];

    for (var i = 0; i < bubbleCoords.length; i++) {
      final xPct = bubbleCoords[i].$1;
      final offset = bubbleCoords[i].$2;
      final bubblePhase = (phase + offset) % 1.0;
      final bx = size.width * xPct;
      final by = size.height * (0.85 - bubblePhase * 0.7);
      final alpha = math.sin(bubblePhase * math.pi).clamp(0.0, 1.0);

      final bPaint = Paint()..color = color.withAlpha((alpha * 200).toInt());
      canvas.drawCircle(Offset(bx, by), 2.2, bPaint);
    }
  }

  @override
  bool shouldRepaint(covariant _OxygenBubblesPainter oldDelegate) =>
      oldDelegate.phase != phase || oldDelegate.color != color;
}

// =========================================================================
// 7. BURNED CALORIES: Animated fire with glowing embers
// =========================================================================
class AnimatedBurnedFireMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedBurnedFireMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedBurnedFireMetric> createState() => _AnimatedBurnedFireMetricState();
}

class _AnimatedBurnedFireMetricState extends State<AnimatedBurnedFireMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fireColor = widget.color ?? (context.isDarkMode ? const Color(0xFFFB923C) : AppColors.softOrange);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          final rot = math.sin(t * math.pi) * 0.12;
          final scale = 1.0 + math.sin(t * math.pi) * 0.12;

          return Center(
            child: Transform.rotate(
              angle: rot,
              child: Transform.scale(
                scale: scale,
                child: Icon(
                  Icons.whatshot_rounded,
                  size: widget.size * 0.85,
                  color: fireColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// =========================================================================
// 8. WEIGHT: Animated scale with oscillating/settling needle
// =========================================================================
class AnimatedWeightScaleMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedWeightScaleMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedWeightScaleMetric> createState() => _AnimatedWeightScaleMetricState();
}

class _AnimatedWeightScaleMetricState extends State<AnimatedWeightScaleMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scaleColor = widget.color ?? (context.isDarkMode ? const Color(0xFF34D399) : AppColors.mint);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          // Smooth spring wobble
          final needleAngle = math.sin(t * math.pi * 2) * 0.45;

          return CustomPaint(
            painter: _ScaleNeedlePainter(needleAngle: needleAngle, color: scaleColor),
          );
        },
      ),
    );
  }
}

class _ScaleNeedlePainter extends CustomPainter {
  final double needleAngle;
  final Color color;

  _ScaleNeedlePainter({required this.needleAngle, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final r = size.width / 2;
    final center = Offset(r, r * 1.05);

    // Dial plate
    final platePaint = Paint()
      ..color = color.withAlpha(45)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, r - 2, platePaint);

    final borderPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawCircle(center, r - 2, borderPaint);

    // Ticks
    final tickPaint = Paint()
      ..color = color.withAlpha(180)
      ..strokeWidth = 1.2;
    for (double deg = -60; deg <= 60; deg += 30) {
      final rad = (deg - 90) * math.pi / 180;
      final p1 = Offset(center.dx + (r - 7) * math.cos(rad), center.dy + (r - 7) * math.sin(rad));
      final p2 = Offset(center.dx + (r - 3) * math.cos(rad), center.dy + (r - 3) * math.sin(rad));
      canvas.drawLine(p1, p2, tickPaint);
    }

    // Needle
    final needlePaint = Paint()
      ..color = color
      ..strokeWidth = 2.2
      ..strokeCap = StrokeCap.round;

    final rad = (needleAngle - math.pi / 2);
    final needleTip = Offset(
      center.dx + (r - 6) * math.cos(rad),
      center.dy + (r - 6) * math.sin(rad),
    );
    canvas.drawLine(center, needleTip, needlePaint);

    // Center pivot
    final pivotPaint = Paint()..color = color;
    canvas.drawCircle(center, 2.5, pivotPaint);
  }

  @override
  bool shouldRepaint(covariant _ScaleNeedlePainter oldDelegate) =>
      oldDelegate.needleAngle != needleAngle || oldDelegate.color != color;
}

// =========================================================================
// 9. BLOOD PRESSURE: Pulsing gauge rings
// =========================================================================
class AnimatedBloodPressureMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedBloodPressureMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedBloodPressureMetric> createState() => _AnimatedBloodPressureMetricState();
}

class _AnimatedBloodPressureMetricState extends State<AnimatedBloodPressureMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bpColor = widget.color ?? (context.isDarkMode ? const Color(0xFFFB7185) : AppColors.peach);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          final pulse = math.sin(t * math.pi);

          return Stack(
            alignment: Alignment.center,
            children: [
              // Outer pulsing shockwave
              Container(
                width: widget.size * (0.7 + pulse * 0.28),
                height: widget.size * (0.7 + pulse * 0.28),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: bpColor.withAlpha(((1.0 - pulse) * 180).toInt()),
                    width: 1.5,
                  ),
                ),
              ),
              Icon(
                Icons.speed_rounded,
                size: widget.size * 0.75,
                color: bpColor,
              ),
            ],
          );
        },
      ),
    );
  }
}

// =========================================================================
// 10. NUTRITION: Animated food & nutrient bars
// =========================================================================
class AnimatedNutritionMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedNutritionMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedNutritionMetric> createState() => _AnimatedNutritionMetricState();
}

class _AnimatedNutritionMetricState extends State<AnimatedNutritionMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final nutColor = widget.color ?? (context.isDarkMode ? const Color(0xFF34D399) : AppColors.mint);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildBar(heightRatio: 0.4 + 0.3 * math.sin(t * math.pi), color: AppColors.peach),
              const SizedBox(width: 3),
              _buildBar(heightRatio: 0.6 + 0.35 * math.cos(t * math.pi), color: nutColor),
              const SizedBox(width: 3),
              _buildBar(heightRatio: 0.5 + 0.25 * math.sin((t + 0.3) * math.pi), color: AppColors.butter),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBar({required double heightRatio, required Color color}) {
    return Container(
      width: widget.size * 0.20,
      height: widget.size * heightRatio.clamp(0.2, 0.95),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

// =========================================================================
// 11. DISTANCE: Moving path / runner
// =========================================================================
class AnimatedDistanceMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedDistanceMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedDistanceMetric> createState() => _AnimatedDistanceMetricState();
}

class _AnimatedDistanceMetricState extends State<AnimatedDistanceMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final distColor = widget.color ?? (context.isDarkMode ? const Color(0xFF38BDF8) : AppColors.sky);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          final runnerBob = math.sin(t * 4 * math.pi) * 2;
          final runnerX = (t * (widget.size * 0.4)) - (widget.size * 0.2);

          return Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.place_rounded,
                size: widget.size * 0.8,
                color: distColor,
              ),
              Positioned(
                bottom: 2 + runnerBob,
                child: Transform.translate(
                  offset: Offset(runnerX, 0),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: distColor, blurRadius: 4),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// =========================================================================
// 12. BMI: Animated gauge / slider
// =========================================================================
class AnimatedBmiGaugeMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedBmiGaugeMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedBmiGaugeMetric> createState() => _AnimatedBmiGaugeMetricState();
}

class _AnimatedBmiGaugeMetricState extends State<AnimatedBmiGaugeMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gaugeColor = widget.color ?? (context.isDarkMode ? const Color(0xFF34D399) : AppColors.mint);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          final sliderOffset = (t * (widget.size * 0.5)) - (widget.size * 0.25);

          return Stack(
            alignment: Alignment.center,
            children: [
              // Gauge arch
              Icon(
                Icons.tune_rounded,
                size: widget.size * 0.8,
                color: gaugeColor,
              ),
              Transform.translate(
                offset: Offset(sliderOffset, 0),
                child: Container(
                  width: 3,
                  height: widget.size * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// =========================================================================
// 13. VEGETARIAN: Animated growing leaf
// =========================================================================
class AnimatedVegetarianLeafMetric extends StatefulWidget {
  final double size;
  final Color? color;

  const AnimatedVegetarianLeafMetric({super.key, this.size = 36, this.color});

  @override
  State<AnimatedVegetarianLeafMetric> createState() => _AnimatedVegetarianLeafMetricState();
}

class _AnimatedVegetarianLeafMetricState extends State<AnimatedVegetarianLeafMetric>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver, ResponsiveAnimationLifecycleMixin {
  late AnimationController _controller;

  @override
  AnimationController get animController => _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !isReduceMotion) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final leafColor = widget.color ?? (context.isDarkMode ? const Color(0xFF34D399) : AppColors.mintDark);
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final t = isReduceMotion ? 0.5 : _controller.value;
          final sway = math.sin(t * math.pi) * 0.15;
          final scale = 0.95 + math.sin(t * math.pi) * 0.12;

          return Center(
            child: Transform.rotate(
              angle: sway,
              child: Transform.scale(
                scale: scale,
                child: Icon(
                  Icons.eco_rounded,
                  size: widget.size * 0.85,
                  color: leafColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// =========================================================================
// UNIFIED FACTORY WIDGET FOR ANY HEALTH METRIC
// =========================================================================
class HealthMetricAnimation extends StatelessWidget {
  final String metricType;
  final double size;
  final Color? color;
  final double progress; // used by water wave

  const HealthMetricAnimation({
    super.key,
    required this.metricType,
    this.size = 28,
    this.color,
    this.progress = 0.6,
  });

  @override
  Widget build(BuildContext context) {
    final type = metricType.toLowerCase().trim();

    if (type.contains('water') || type.contains('hydrat')) {
      return AnimatedWaterWaveMetric(size: size, color: color, progress: progress);
    }
    if (type.contains('step') || type.contains('walk')) {
      return AnimatedStepsFootstepsMetric(size: size, color: color);
    }
    if (type.contains('heart') || type.contains('bpm') || type.contains('pulse')) {
      return AnimatedHeartPulseMetric(size: size, color: color);
    }
    if (type.contains('sleep') || type.contains('bedtime')) {
      return AnimatedSleepZzzMetric(size: size, color: color);
    }
    if (type.contains('burned') || type.contains('fire')) {
      return AnimatedBurnedFireMetric(size: size, color: color);
    }
    if (type.contains('calor') || type.contains('active')) {
      return AnimatedCaloriesFlameMetric(size: size, color: color);
    }
    if (type.contains('spo2') || type.contains('oxygen')) {
      return AnimatedBloodOxygenMetric(size: size, color: color);
    }
    if (type.contains('weight') || type.contains('scale')) {
      return AnimatedWeightScaleMetric(size: size, color: color);
    }
    if (type.contains('pressure') || type.contains('bp')) {
      return AnimatedBloodPressureMetric(size: size, color: color);
    }
    if (type.contains('nutrition') || type.contains('meal') || type.contains('food') || type.contains('diet')) {
      return AnimatedNutritionMetric(size: size, color: color);
    }
    if (type.contains('dist') || type.contains('runner')) {
      return AnimatedDistanceMetric(size: size, color: color);
    }
    if (type.contains('bmi')) {
      return AnimatedBmiGaugeMetric(size: size, color: color);
    }
    if (type.contains('veg') || type.contains('leaf') || type.contains('plant')) {
      return AnimatedVegetarianLeafMetric(size: size, color: color);
    }

    // Default fallback to gentle leaf/bloom
    return AnimatedVegetarianLeafMetric(size: size, color: color);
  }
}

