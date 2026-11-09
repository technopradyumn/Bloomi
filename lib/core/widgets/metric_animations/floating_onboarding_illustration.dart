import 'dart:io' show Platform;
import 'dart:math' as math;
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Floating, looping illustration container that bobs gently up and down.
/// Pauses automatically when the app is backgrounded or when system reduce motion is on.
class FloatingIllustration extends StatefulWidget {
  final Widget child;
  final double distance;
  final Duration duration;

  const FloatingIllustration({
    super.key,
    required this.child,
    this.distance = 7.0,
    this.duration = const Duration(milliseconds: 2200),
  });

  @override
  State<FloatingIllustration> createState() => _FloatingIllustrationState();
}

class _FloatingIllustrationState extends State<FloatingIllustration>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late AnimationController _controller;

  bool get _isReduceMotion {
    if (!mounted) return false;
    if (kDebugMode && Platform.environment.containsKey('FLUTTER_TEST')) {
      return true;
    }
    return MediaQuery.maybeOf(context)?.disableAnimations ?? false;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !_isReduceMotion) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (!_isReduceMotion && !_controller.isAnimating) {
        _controller.repeat(reverse: true);
      }
    } else {
      if (_controller.isAnimating) {
        _controller.stop();
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isReduceMotion) return widget.child;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final dy = math.sin(_controller.value * math.pi) * widget.distance;
        return Transform.translate(
          offset: Offset(0, -dy),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

/// Animated step progress bar for onboarding screens with glowing active step.
class OnboardingStepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const OnboardingStepIndicator({
    super.key,
    required this.currentStep,
    this.totalSteps = 7,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    const activeColor = AppColors.mint;
    final inactiveColor = isDark ? Colors.white.withAlpha(25) : AppColors.divider;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: List.generate(totalSteps, (index) {
          final isCompleted = index < currentStep;
          final isCurrent = index == currentStep;

          return Expanded(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeOutCubic,
              margin: const EdgeInsets.symmetric(horizontal: 3),
              height: isCurrent ? 6 : 4,
              decoration: BoxDecoration(
                color: isCompleted
                    ? activeColor
                    : (isCurrent ? activeColor.withAlpha(230) : inactiveColor),
                borderRadius: BorderRadius.circular(3),
                boxShadow: isCurrent
                    ? [
                        BoxShadow(
                          color: activeColor.withAlpha(120),
                          blurRadius: 6,
                          offset: const Offset(0, 1),
                        ),
                      ]
                    : null,
              ),
            ),
          );
        }),
      ),
    );
  }
}

