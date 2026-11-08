import 'dart:math' as math;
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animController;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _animController,
      curve: Curves.elasticOut,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animController,
      curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
    );

    _animController.forward();
    context.read<SplashBloc>().add(const SplashInitialized());
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.of(context).disableAnimations;

    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashNavigateState) {
          context.go(state.targetRoute);
        }
      },
      child: Scaffold(
        backgroundColor: context.appBackground,
        body: Stack(
          alignment: Alignment.center,
          children: [
            // Soft floating pastel icons in background
            if (!reduceMotion) ...[
              const _FloatingIcon(
                icon: Icons.favorite_rounded,
                color: AppColors.peach,
                top: 120,
                left: 50,
                phase: 0.0,
              ),
              const _FloatingIcon(
                icon: Icons.water_drop_rounded,
                color: AppColors.sky,
                top: 160,
                right: 60,
                phase: 1.5,
              ),
              const _FloatingIcon(
                icon: Icons.spa_rounded,
                color: AppColors.mint,
                bottom: 180,
                left: 70,
                phase: 3.0,
              ),
              const _FloatingIcon(
                icon: Icons.wb_sunny_rounded,
                color: AppColors.butter,
                bottom: 140,
                right: 80,
                phase: 4.5,
              ),
            ],

            // Central logo & mascot
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ScaleTransition(
                    scale: reduceMotion
                        ? const AlwaysStoppedAnimation(1.0)
                        : _scaleAnimation,
                    child: const MascotWidget(
                      state: MascotState.wave,
                      size: 140,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  FadeTransition(
                    opacity: reduceMotion
                        ? const AlwaysStoppedAnimation(1.0)
                        : _fadeAnimation,
                    child: Column(
                      children: [
                        Text(
                          'Bloomi',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontWeight: FontWeight.w700,
                            fontSize: 48,
                            color: context.appInk,
                            letterSpacing: 1.0,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Text(
                          'Your gentle health & nutrition companion',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: context.appSlate.withAlpha(220),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FloatingIcon extends StatefulWidget {
  const _FloatingIcon({
    required this.icon,
    required this.color,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.phase = 0.0,
  });

  final IconData icon;
  final Color color;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double phase;

  @override
  State<_FloatingIcon> createState() => _FloatingIconState();
}

class _FloatingIconState extends State<_FloatingIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      bottom: widget.bottom,
      left: widget.left,
      right: widget.right,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final dy = math.sin(_controller.value * math.pi * 2 + widget.phase) * 8;
          return Transform.translate(
            offset: Offset(0, dy),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: widget.color.withAlpha(160),
                shape: BoxShape.circle,
              ),
              child: Icon(widget.icon, color: context.appInk, size: 24),
            ),
          );
        },
      ),
    );
  }
}

