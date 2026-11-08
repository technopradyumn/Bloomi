import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  const AppShell({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final navBg = context.appSurface;
    final primaryTextColor = context.appInk;
    final isDark = context.isDarkMode;

    return Scaffold(
      backgroundColor: context.appBackground,
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: navBg,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(AppSpacing.cardRadius)),
          boxShadow: isDark ? AppColors.darkCardShadow : AppColors.softCardShadow,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(AppSpacing.cardRadius),
          ),
          child: NavigationBar(
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: (index) {
              navigationShell.goBranch(
                index,
                initialLocation: index == navigationShell.currentIndex,
              );
            },
            backgroundColor: navBg,
            indicatorColor: Theme.of(context).colorScheme.primary.withAlpha(isDark ? 90 : 80),
            elevation: 0,
            destinations: [
              NavigationDestination(
                icon: const Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_rounded, color: primaryTextColor),
                label: 'Home',
              ),
              NavigationDestination(
                icon: const Icon(Icons.restaurant_outlined),
                selectedIcon: Icon(Icons.restaurant_rounded, color: primaryTextColor),
                label: 'Food',
              ),
              NavigationDestination(
                icon: const Icon(Icons.favorite_outline_rounded),
                selectedIcon: Icon(Icons.favorite_rounded, color: primaryTextColor),
                label: 'Health',
              ),
              NavigationDestination(
                icon: const Icon(Icons.calendar_today_outlined),
                selectedIcon: Icon(Icons.calendar_today_rounded, color: primaryTextColor),
                label: 'Plan',
              ),
              NavigationDestination(
                icon: const Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(Icons.person_rounded, color: primaryTextColor),
                label: 'Me',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
