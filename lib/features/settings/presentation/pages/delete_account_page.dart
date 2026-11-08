import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/settings/domain/repositories/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> {
  bool _isDeleting = false;

  Future<void> _handleDeleteAccount() async {
    final confirmed = await BloomiDialog.show<bool>(
      context,
      title: 'Permanently Delete Account & Data?',
      content:
          'This will permanently delete all your local records and profile. This action cannot be undone.',
      confirmLabel: 'Delete Everything',
      cancelLabel: 'Cancel',
      confirmColor: const Color(0xFFDC2626),
    );

    if (confirmed == true && mounted) {
      setState(() => _isDeleting = true);
      try {
        await sl<SettingsRepository>().deleteAccountAndData();
      } catch (_) {}
      if (!mounted) return;
      context.read<AuthBloc>().add(const AuthSignOutRequested());

      BloomiToast.show(context, message: 'Account and all data permanently deleted.');
      context.go('/sign-in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Delete Account',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error.withAlpha(context.isDarkMode ? 40 : 25),
              borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
              border: Border.all(color: Theme.of(context).colorScheme.error.withAlpha(context.isDarkMode ? 100 : 70)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.warning_amber_rounded,
                        color: Theme.of(context).colorScheme.error, size: 28),
                    const SizedBox(width: 8),
                    Text(
                      'Irreversible Action',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Deleting your account will immediately remove all your personal data stored locally.',
                  style: TextStyle(
                      fontSize: 13, color: context.appSlate, height: 1.4),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What will be deleted:',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: context.appInk),
                ),
                const SizedBox(height: AppSpacing.sm),
                const _DeleteBullet(text: 'All food diary logs and custom recipes'),
                const _DeleteBullet(
                    text: 'All body measurements and weight recordings'),
                const _DeleteBullet(
                    text: 'All water intake tracking and workout records'),
                const _DeleteBullet(text: 'Personal targets and profile setup'),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          PillButton(
            label: _isDeleting
                ? 'Deleting Everything...'
                : 'Delete My Account & All Data',
            icon: Icons.delete_forever_rounded,
            variant: PillButtonVariant.secondary,
            onPressed: _isDeleting ? null : _handleDeleteAccount,
          ),
        ],
      ),
    );
  }
}

class _DeleteBullet extends StatelessWidget {
  final String text;

  const _DeleteBullet({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.error, fontWeight: FontWeight.w900)),
          Expanded(
            child: Text(text,
                style: TextStyle(fontSize: 13, color: context.appSlate)),
          ),
        ],
      ),
    );
  }
}

