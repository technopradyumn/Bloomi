import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    required this.message,
    this.actionLabel,
    this.onActionPressed,
    this.mascotState = MascotState.idle,
    this.mascotSize = 100,
    super.key,
  });

  final String message;
  final String? actionLabel;
  final VoidCallback? onActionPressed;
  final MascotState mascotState;
  final double mascotSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MascotWidget(
              state: mascotState,
              size: mascotSize,
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: context.appSlate,
              ),
            ),
            if (actionLabel != null && onActionPressed != null) ...[
              const SizedBox(height: AppSpacing.md),
              PillButton(
                label: actionLabel!,
                onPressed: onActionPressed,
                variant: PillButtonVariant.primary,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
