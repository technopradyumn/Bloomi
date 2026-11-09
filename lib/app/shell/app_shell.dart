import 'dart:math' as math;
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatefulWidget {
  const AppShell({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> with SingleTickerProviderStateMixin {
  late final AnimationController _animController;
  int _lastTappedIndex = -1;

  static const List<_TabItemData> _tabs = [
    _TabItemData(
      labelKey: 'nav_home',
      color: Color(0xFF10B981), // Mint / Emerald
      unselectedIcon: CupertinoIcons.house,
      selectedIcon: CupertinoIcons.house_fill,
    ),
    _TabItemData(
      labelKey: 'nav_food_diary',
      color: Color(0xFF0284C7), // Sky / Blue
      unselectedIcon: CupertinoIcons.cart,
      selectedIcon: CupertinoIcons.cart_fill,
    ),
    _TabItemData(
      labelKey: 'nav_workout',
      color: Color(0xFFF97316), // Orange / Flame
      unselectedIcon: CupertinoIcons.flame,
      selectedIcon: CupertinoIcons.flame_fill,
    ),
    _TabItemData(
      labelKey: 'nav_health',
      color: Color(0xFFF43F5E), // Peach / Rose / Red
      unselectedIcon: CupertinoIcons.heart,
      selectedIcon: CupertinoIcons.heart_fill,
    ),
    _TabItemData(
      labelKey: 'nav_profile',
      color: Color(0xFF8B5CF6), // Lilac / Purple
      unselectedIcon: CupertinoIcons.person,
      selectedIcon: CupertinoIcons.person_fill,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 380),
    );
    _animController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (mounted) {
          setState(() {
            _lastTappedIndex = -1;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      _lastTappedIndex = index;
    });
    _animController.forward(from: 0.0);

    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    // Solid background - strictly no glassmorphism or blur
    final barBg = isDark ? const Color(0xFF1E293B) : Colors.white;
    final topBorderColor = isDark ? const Color(0xFF334155) : const Color(0xFFE2E8F0);
    final currentIndex = widget.navigationShell.currentIndex;

    return Scaffold(
      backgroundColor: context.appBackground,
      body: widget.navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: barBg,
          border: Border(
            top: BorderSide(color: topBorderColor, width: 1.0),
          ),
          boxShadow: isDark
              ? const [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 8,
                    offset: Offset(0, -2),
                  )
                ]
              : const [
                  BoxShadow(
                    color: Color(0x0F000000),
                    blurRadius: 8,
                    offset: Offset(0, -2),
                  )
                ],
        ),
        child: SafeArea(
          top: false,
          child: SizedBox(
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(_tabs.length, (index) {
                final tab = _tabs[index];
                final isSelected = index == currentIndex;
                final isAnimatingThis = _lastTappedIndex == index;

                return Expanded(
                  child: RepaintBoundary(
                    child: InkWell(
                      onTap: () => _onTabTapped(index),
                      splashColor: tab.color.withValues(alpha: 0.12),
                      highlightColor: tab.color.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(16),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 48,
                          minHeight: 48,
                        ),
                        child: AnimatedBuilder(
                          animation: _animController,
                          builder: (context, child) {
                            final animValue = isAnimatingThis ? _animController.value : 0.0;
                            return _buildAnimatedIcon(index, tab, isSelected, animValue, isDark);
                          },
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedIcon(
    int index,
    _TabItemData tab,
    bool isSelected,
    double animProgress,
    bool isDark,
  ) {
    // Compute one-time tap animation transforms
    Widget iconWidget = Icon(
      isSelected ? tab.selectedIcon : tab.unselectedIcon,
      size: isSelected ? 24 : 22,
      color: isSelected ? tab.color : (isDark ? const Color(0xFF94A3B8) : const Color(0xFF64748B)),
    );

    if (animProgress > 0 && animProgress < 1.0) {
      switch (index) {
        case 0:
          // Home: Bounce (vertical displacement)
          final bounceOffset = -10.0 * math.sin(animProgress * math.pi);
          iconWidget = Transform.translate(
            offset: Offset(0, bounceOffset),
            child: iconWidget,
          );
          break;

        case 1:
          // Food Diary: Wobble / tilt
          final angle = 0.20 * math.sin(animProgress * math.pi * 3) * (1.0 - animProgress);
          iconWidget = Transform.rotate(
            angle: angle,
            child: iconWidget,
          );
          break;

        case 2:
          // Workout Log: Single pulse
          final scale = 1.0 + 0.28 * math.sin(animProgress * math.pi);
          iconWidget = Transform.scale(
            scale: scale,
            child: iconWidget,
          );
          break;

        case 3:
          // Health: Ring shake (horizontal vibration)
          final shakeX = 5.0 * math.sin(animProgress * math.pi * 4) * (1.0 - animProgress);
          iconWidget = Transform.translate(
            offset: Offset(shakeX, 0),
            child: iconWidget,
          );
          break;

        case 4:
          // Profile: Soft float
          final floatOffset = -6.0 * math.sin(animProgress * math.pi);
          iconWidget = Transform.translate(
            offset: Offset(0, floatOffset),
            child: iconWidget,
          );
          break;
      }
    }

    final unselectedTextColor = isDark ? const Color(0xFF94A3B8) : const Color(0xFF64748B);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Colored pill indicator around icon when selected
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: isSelected ? 14 : 8,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: isSelected ? tab.color.withValues(alpha: isDark ? 0.22 : 0.14) : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: iconWidget,
        ),
        const SizedBox(height: 2),
        // Tab label
        Text(
          context.tr(tab.labelKey),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: isSelected ? 11 : 10,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            color: isSelected ? tab.color : unselectedTextColor,
          ),
        ),
      ],
    );
  }
}

class _TabItemData {
  final String labelKey;
  final Color color;
  final IconData unselectedIcon;
  final IconData selectedIcon;

  const _TabItemData({
    required this.labelKey,
    required this.color,
    required this.unselectedIcon,
    required this.selectedIcon,
  });
}
