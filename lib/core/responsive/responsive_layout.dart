import 'dart:math' as math;
import 'package:flutter/material.dart';

/// Screen classification based on standard responsive design breakpoints.
/// Covers phone, foldable (unfolded / dual-screen), tablet, desktop, and watch.
enum DeviceScreenType {
  watch, // < 300 dp
  compactPhone, // 300 - 359 dp
  phone, // 360 - 599 dp
  foldableOrDuo, // 600 - 719 dp (Galaxy Z Fold, Surface Duo, Pixel Fold)
  tablet, // 720 - 1023 dp (iPad, Android tablets)
  desktopOrLargeTablet, // >= 1024 dp
}

/// Helper class to provide consistent responsive layout values across the entire Bloomi app.
class ResponsiveLayout {
  final BuildContext context;
  final BoxConstraints? constraints;

  ResponsiveLayout(this.context, [this.constraints]);

  Size get size => MediaQuery.sizeOf(context);

  double get screenWidth => constraints?.maxWidth ?? size.width;
  double get screenHeight => constraints?.maxHeight ?? size.height;

  /// Check if the screen is a smartwatch / ultra-compact display
  bool get isWatch => screenWidth < 300;

  /// Check if screen is standard phone
  bool get isPhone => screenWidth >= 300 && screenWidth < 600;

  /// Check if device is a foldable unfolded, flip opened in dual mode, or Duo
  bool get isFoldableOrDuo => screenWidth >= 600 && screenWidth < 720;

  /// Check if device is a tablet or large foldable
  bool get isTablet => screenWidth >= 720 && screenWidth < 1024;

  /// Large screens
  bool get isDesktopOrLarge => screenWidth >= 1024;

  /// Whether current layout should present two columns or expanded side-by-side layout
  bool get isExpandedLayout => screenWidth >= 600;

  DeviceScreenType get deviceType {
    if (screenWidth < 300) return DeviceScreenType.watch;
    if (screenWidth < 360) return DeviceScreenType.compactPhone;
    if (screenWidth < 600) return DeviceScreenType.phone;
    if (screenWidth < 720) return DeviceScreenType.foldableOrDuo;
    if (screenWidth < 1024) return DeviceScreenType.tablet;
    return DeviceScreenType.desktopOrLargeTablet;
  }

  /// Recommended max content width for comfortable reading and thumb reach
  double get maxContentWidth {
    if (isWatch) return screenWidth;
    if (isPhone) return 500;
    if (isFoldableOrDuo) return 680;
    if (isTablet) return 840;
    return 1080;
  }

  /// Horizontal padding dynamically scaled to device size
  double get horizontalPadding {
    if (isWatch) return 10.0;
    if (screenWidth < 360) return 14.0;
    if (isPhone) return 20.0;
    if (isFoldableOrDuo) return 24.0;
    return 32.0;
  }

  /// Grid column count adaptively calculated for cards and stat tiles
  int get gridColumnCount {
    if (isWatch) return 1;
    if (isPhone) return 2;
    if (isFoldableOrDuo) return 2;
    if (isTablet) return 3;
    return 4;
  }
}

/// A responsive wrapper widget that centers content and constrains its maximum width
/// on tablets, foldable unfolded displays, and wide monitors, while adapting to watch screens.
class ResponsiveContentWrapper extends StatelessWidget {
  final Widget child;
  final double? maxWidth;
  final EdgeInsetsGeometry? padding;

  const ResponsiveContentWrapper({
    required this.child,
    this.maxWidth,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveLayout(context);
    final effectiveMaxWidth = maxWidth ?? responsive.maxContentWidth;

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: effectiveMaxWidth),
        child: padding != null
            ? Padding(padding: padding!, child: child)
            : child,
      ),
    );
  }
}

/// Adaptive two-pane layout for tablets, foldables, and Duo devices.
/// Falls back to single column list on phones and watches.
class ResponsiveTwoPane extends StatelessWidget {
  final Widget firstPane;
  final Widget secondPane;
  final double splitRatio; // Ratio for firstPane (e.g. 0.5 for 50/50, 0.4 for 40/60)
  final double spacing;

  const ResponsiveTwoPane({
    required this.firstPane,
    required this.secondPane,
    this.splitRatio = 0.5,
    this.spacing = 16.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDual = constraints.maxWidth >= 600;
        if (!isDual) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              firstPane,
              SizedBox(height: spacing),
              secondPane,
            ],
          );
        }

        final availableWidth = constraints.maxWidth - spacing;
        final firstWidth = math.max(0.0, availableWidth * splitRatio);
        final secondWidth = math.max(0.0, availableWidth * (1.0 - splitRatio));

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: firstWidth, child: firstPane),
            SizedBox(width: spacing),
            SizedBox(width: secondWidth, child: secondPane),
          ],
        );
      },
    );
  }
}

