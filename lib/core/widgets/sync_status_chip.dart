import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

enum SyncStateStatus {
  synced,
  syncing,
  offline,
  error,
}

class SyncStatusChip extends StatelessWidget {
  const SyncStatusChip({
    required this.status,
    this.lastSyncTime,
    this.onTap,
    super.key,
  });

  final SyncStateStatus status;
  final String? lastSyncTime;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    final IconData icon;
    final String label;
    final Color bg;
    final Color fg = context.appInk;

    switch (status) {
      case SyncStateStatus.synced:
        icon = CupertinoIcons.cloud_upload_fill;
        label = lastSyncTime != null ? 'Synced $lastSyncTime' : 'Synced with Drive';
        bg = isDark ? AppColors.darkMint.withAlpha(80) : AppColors.mint.withAlpha(120);
      case SyncStateStatus.syncing:
        icon = CupertinoIcons.arrow_2_circlepath;
        label = 'Syncing...';
        bg = isDark ? AppColors.sky.withAlpha(80) : AppColors.sky.withAlpha(160);
      case SyncStateStatus.offline:
        icon = CupertinoIcons.wifi_slash;
        label = 'Offline';
        bg = isDark ? AppColors.butter.withAlpha(80) : AppColors.butter.withAlpha(160);
      case SyncStateStatus.error:
        icon = CupertinoIcons.exclamationmark_circle_fill;
        label = 'Sync paused';
        bg = isDark ? AppColors.softOrange.withAlpha(80) : AppColors.softOrange.withAlpha(160);
    }

    return Material(
      color: bg,
      borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.chipRadius)),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.chipRadius)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 48),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                status == SyncStateStatus.syncing
                    ? SizedBox(
                        width: 14,
                        height: 14,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(fg),
                        ),
                      )
                    : Icon(icon, size: 16, color: fg),
                const SizedBox(width: 6),
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: fg,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
