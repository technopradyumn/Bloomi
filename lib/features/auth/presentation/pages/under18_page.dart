import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Under18Page extends StatelessWidget {
  const Under18Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.screenSide),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Card(
                elevation: 0,
                color: context.appSurface,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(AppSpacing.heroCardRadius)),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSpacing.xl),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const MascotWidget(
                        state: MascotState.gentleSad,
                        size: 110,
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      Text(
                        'See You Later!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        'Bloomi is thoughtfully designed for adults (18+).\n\nWe care about your growth and well-being, but nutritional and caloric guidelines for teenagers and children are very different. Please consult a parent, doctor, or pediatric nutritionist, and we would love to welcome you back once you turn 18!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: context.appSlate,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xl),
                      PillButton(
                        label: 'Sign Out',
                        variant: PillButtonVariant.secondary,
                        fullWidth: true,
                        onPressed: () {
                          context.read<AuthBloc>().add(const AuthSignOutRequested());
                          context.go('/sign-in');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

