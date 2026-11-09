import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

enum PillButtonVariant {
  primary,
  secondary,
  text,
}

/// A premium, responsive pill button featuring:
/// - Adaptive theme support for primary/secondary text and icon
/// - Smooth interactive micro-interaction tap scale feedback
/// - Subtle haptic touch feedback
class PillButton extends StatefulWidget {
  const PillButton({
    required this.label,
    required this.onPressed,
    this.variant = PillButtonVariant.primary,
    this.icon,
    this.iconWidget,
    this.isLoading = false,
    this.loadingLabel,
    this.fullWidth = false,
    this.height = 52,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final PillButtonVariant variant;
  final IconData? icon;
  final Widget? iconWidget;
  final bool isLoading;
  final String? loadingLabel;
  final bool fullWidth;
  final double height;

  @override
  State<PillButton> createState() => _PillButtonState();
}

class _PillButtonState extends State<PillButton> {
  bool _isPressed = false;

  void _onTapDown(TapDownDetails _) {
    if (widget.onPressed != null && !widget.isLoading) {
      setState(() => _isPressed = true);
    }
  }

  void _onTapUp(TapUpDetails _) {
    if (_isPressed) {
      setState(() => _isPressed = false);
    }
  }

  void _onTapCancel() {
    if (_isPressed) {
      setState(() => _isPressed = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    final primaryTextColor = context.appInk;

    Color bg;
    Color fg;
    BorderSide? border;

    switch (widget.variant) {
      case PillButtonVariant.primary:
        bg = isDark ? AppColors.darkMint : AppColors.mint;
        fg = Theme.of(context).colorScheme.onPrimary;
      case PillButtonVariant.secondary:
        bg = isDark ? AppColors.sky.withAlpha(80) : AppColors.sky;
        fg = primaryTextColor;
      case PillButtonVariant.text:
        bg = Colors.transparent;
        fg = primaryTextColor;
        border = BorderSide.none;
    }

    final isInteractive = widget.onPressed != null && !widget.isLoading;

    final childWidget = widget.isLoading
        ? Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    valueColor: AlwaysStoppedAnimation<Color>(fg),
                  ),
                ),
                if (widget.loadingLabel != null) ...[
                  const SizedBox(width: AppSpacing.sm),
                  Flexible(
                    child: Text(
                      widget.loadingLabel!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: fg,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          )
        : Row(
            mainAxisSize: widget.fullWidth ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.iconWidget != null) ...[
                widget.iconWidget!,
              ] else if (widget.icon != null) ...[
                Icon(widget.icon, size: 20, color: isInteractive ? fg : context.appSlate),
                const SizedBox(width: AppSpacing.sm),
              ],
              Flexible(
                child: Text(
                  widget.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: isInteractive ? fg : context.appSlate,
                  ),
                ),
              ),
            ],
          );

    return AnimatedScale(
      scale: _isPressed ? 0.96 : 1.0,
      duration: const Duration(milliseconds: 120),
      curve: Curves.easeOutQuad,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: widget.height > 48.0 ? widget.height : 48.0,
          minWidth: widget.fullWidth ? double.infinity : 48.0,
        ),
        child: Material(
          color: isInteractive
              ? bg
              : (widget.variant == PillButtonVariant.text
                  ? Colors.transparent
                  : bg.withAlpha(120)),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.pillRadius)),
            side: border ?? BorderSide.none,
          ),
          child: InkWell(
            onTapDown: _onTapDown,
            onTapUp: _onTapUp,
            onTapCancel: _onTapCancel,
            onTap: isInteractive ? widget.onPressed : null,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.pillRadius)),
            splashColor: widget.variant == PillButtonVariant.text
                ? AppColors.mint.withAlpha(40)
                : fg.withAlpha(25),
            highlightColor: widget.variant == PillButtonVariant.text
                ? AppColors.mint.withAlpha(20)
                : fg.withAlpha(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Center(
                widthFactor: widget.fullWidth ? 1.0 : null,
                child: childWidget,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
