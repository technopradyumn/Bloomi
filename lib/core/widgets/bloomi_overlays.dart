import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:flutter/material.dart';

abstract final class BloomiToast {
  static void show(
    BuildContext context, {
    required String message,
    IconData? icon,
    Duration duration = const Duration(seconds: 3),
  }) {
    final messenger = ScaffoldMessenger.of(context);
    final isDark = context.isDarkMode;
    final cardBg = context.appSurface;
    final primaryTextColor = context.appInk;

    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        duration: duration,
        content: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: cardBg,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            boxShadow: isDark ? AppColors.darkCardShadow : AppColors.softCardShadow,
          ),
          child: Row(
            children: [
              if (icon != null) ...[
                Icon(icon, color: primaryTextColor, size: 20),
                const SizedBox(width: AppSpacing.sm),
              ],
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: primaryTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract final class BloomiDialog {
  static Future<T?> show<T>(
    BuildContext context, {
    required String title,
    required String content,
    String confirmLabel = 'Confirm',
    String? cancelLabel,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    Color confirmColor = AppColors.mint,
  }) {
    final cardBg = context.appSurface;
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;

    return showDialog<T>(
      context: context,
      builder: (ctx) {
        return Dialog(
          backgroundColor: cardBg,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: primaryTextColor,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  content,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15,
                    color: secondaryTextColor,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                Wrap(
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: AppSpacing.sm,
                  runSpacing: AppSpacing.sm,
                  children: [
                    if (cancelLabel != null)
                      PillButton(
                        label: cancelLabel,
                        variant: PillButtonVariant.text,
                        onPressed: () {
                          onCancel?.call();
                          Navigator.of(ctx).pop(false is T ? false as T : null);
                        },
                      ),
                    PillButton(
                      label: confirmLabel,
                      variant: PillButtonVariant.primary,
                      onPressed: () {
                        onConfirm?.call();
                        Navigator.of(ctx).pop(true is T ? true as T : null);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

abstract final class BloomiBottomSheet {
  static Future<T?> show<T>(
    BuildContext context, {
    required Widget child,
    String? title,
  }) {
    final cardBg = context.appSurface;
    final primaryTextColor = context.appInk;

    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: cardBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSpacing.heroCardRadius)),
      ),
      builder: (ctx) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: AppSpacing.md),
                  decoration: BoxDecoration(
                    color: context.appDivider,
                    borderRadius: const BorderRadius.all(Radius.circular(2)),
                  ),
                ),
                if (title != null) ...[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                ],
                Flexible(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
