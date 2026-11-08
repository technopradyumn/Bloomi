import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static bool _isAuthInProgress = false;
  bool _isLocalLoading = false;
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final authState = context.read<AuthBloc>().state;
    if (authState is AuthUnauthenticatedState || authState is AuthInitialState) {
      _isAuthInProgress = false;
      _isLocalLoading = false;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _handleContinue() {
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      BloomiToast.show(
        context,
        message: 'Please enter your name.',
        icon: Icons.info_outline_rounded,
      );
      return;
    }

    setState(() => _isLocalLoading = true);
    _isAuthInProgress = true;

    final authBloc = context.read<AuthBloc>();
    authBloc.add(AuthSignInRequested(displayName: name));
  }

  void _showDisclaimerDialog() {
    BloomiDialog.show<void>(
      context,
      title: 'General Wellness Disclaimer',
      content:
          'Bloomi is a personal wellness and lifestyle tracking tool. It is NOT a medical device and is not intended to diagnose, treat, cure, or prevent any medical condition or disease. All calorie, nutrition, and health targets are estimates for informational purposes only. Always consult a qualified healthcare professional before making significant dietary or fitness changes.',
      confirmLabel: 'I Understand',
      onConfirm: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    final isAuthenticating = _isLocalLoading ||
        _isAuthInProgress ||
        authState is AuthLoadingState ||
        (authState is AuthAuthenticatedState && authState.user != null);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is AuthUnauthenticatedState) {
          _isAuthInProgress = false;
          if (mounted) {
            setState(() => _isLocalLoading = false);
          }
          if (state.errorMessage != null && mounted) {
            BloomiToast.show(
              context,
              message: state.errorMessage!,
              icon: Icons.info_outline_rounded,
            );
          }
        } else if (state is AuthAuthenticatedState) {
          _isAuthInProgress = true;
          final user = state.user!;
          if (user.isUnder18) {
            context.go('/under-18');
            return;
          }

          if (user.isFirstTimeUser) {
            context.go('/onboarding/intro');
            return;
          }

          if (user.isReinstall) {
            context.go('/onboarding/intro?mode=reinstall');
            return;
          }

          context.go('/home');
        }
      },
      child: Scaffold(
        backgroundColor: context.appBackground,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 440),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.screenSide,
                          vertical: AppSpacing.md,
                        ),
                        child: IntrinsicHeight(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: AppSpacing.sm),

                              // Top Hero Section
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Welcoming Mascot
                                  Container(
                                    padding: const EdgeInsets.all(AppSpacing.md),
                                    decoration: BoxDecoration(
                                      color: context.appSurface,
                                      shape: BoxShape.circle,
                                      boxShadow: context.appCardShadow,
                                    ),
                                    child: const MascotWidget(
                                      state: MascotState.wave,
                                      size: 110,
                                    ),
                                  ),
                                  const SizedBox(height: AppSpacing.lg),

                                  Text(
                                    'Welcome to Bloomi',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Baloo 2',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32,
                                      color: context.appInk,
                                      height: 1.1,
                                    ),
                                  ),
                                  const SizedBox(height: AppSpacing.xs),
                                  Text(
                                    'Your gentle, offline-first health, habits, and nutrition companion.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: context.appSlate,
                                      height: 1.35,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: AppSpacing.md),

                              // Middle Section: Name Input & Continue Button
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: _nameController,
                                    decoration: const InputDecoration(
                                      labelText: 'What should we call you?',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(16)),
                                      ),
                                    ),
                                    enabled: !isAuthenticating,
                                    textCapitalization: TextCapitalization.words,
                                  ),
                                  const SizedBox(height: AppSpacing.md),
                                  PillButton(
                                    label: 'Start Tracking',
                                    loadingLabel: 'Setting up...',
                                    isLoading: isAuthenticating,
                                    fullWidth: true,
                                    height: 54,
                                    variant: PillButtonVariant.primary,
                                    onPressed: isAuthenticating ? null : _handleContinue,
                                  ),

                                  const SizedBox(height: AppSpacing.md),
                                  Text(
                                    '100% Private & offline: your data stays on your phone.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      color: context.appSlate.withAlpha(200),
                                      height: 1.3,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: AppSpacing.sm),

                              // Bottom Section: Disclaimer & Legal
                              Padding(
                                padding: const EdgeInsets.only(bottom: AppSpacing.xs),
                                child: TextButton(
                                  onPressed: _showDisclaimerDialog,
                                  style: TextButton.styleFrom(
                                    minimumSize: const Size(44, 44),
                                  ),
                                  child: Text(
                                    'Wellness Disclaimer & Terms',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: context.appInk,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
