import 'package:bloomi/features/home/presentation/pages/notifications_page.dart';
import 'package:bloomi/services/notifications/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

void main() {
  group('NotificationService Routing & Payload Click Tests', () {
    test('NotificationService delivers payload to route handler when notification is tapped', () {
      final tappedRoutes = <String>[];
      NotificationService.onNotificationRouteTap = (route) {
        tappedRoutes.add(route);
      };

      // 1. Water reminder clicked
      NotificationService.handleNotificationPayload('/food/water');
      expect(tappedRoutes, contains('/food/water'));

      // 2. Milestone celebration clicked
      NotificationService.handleNotificationPayload('/insights/streaks');
      expect(tappedRoutes, contains('/insights/streaks'));

      // 3. Meal reminder clicked
      NotificationService.handleNotificationPayload('/food');
      expect(tappedRoutes, contains('/food'));

      // 4. Weigh-in reminder clicked
      NotificationService.handleNotificationPayload('/health/weight');
      expect(tappedRoutes, contains('/health/weight'));

      // 5. Sleep reminder clicked
      NotificationService.handleNotificationPayload('/health/sleep');
      expect(tappedRoutes, contains('/health/sleep'));

      NotificationService.onNotificationRouteTap = null;
    });
  });

  group('NotificationsPage Clickable Reminders and Milestones Tests', () {
    testWidgets('Tapping reminder cards navigates to specific screens (/food/water, /food, /health/sleep)', (tester) async {
      final navigatedPaths = <String>[];

      final router = GoRouter(
        initialLocation: '/notifications',
        routes: [
          GoRoute(
            path: '/notifications',
            builder: (context, state) => const NotificationsPage(),
          ),
          GoRoute(
            path: '/food/water',
            builder: (context, state) {
              navigatedPaths.add('/food/water');
              return const Scaffold(body: Text('Water Tracker Screen'));
            },
          ),
          GoRoute(
            path: '/food',
            builder: (context, state) {
              navigatedPaths.add('/food');
              return const Scaffold(body: Text('Food Diary Screen'));
            },
          ),
          GoRoute(
            path: '/health/sleep',
            builder: (context, state) {
              navigatedPaths.add('/health/sleep');
              return const Scaffold(body: Text('Sleep Screen'));
            },
          ),
          GoRoute(
            path: '/health/weight',
            builder: (context, state) {
              navigatedPaths.add('/health/weight');
              return const Scaffold(body: Text('Weight Screen'));
            },
          ),
          GoRoute(
            path: '/plan',
            builder: (context, state) {
              navigatedPaths.add('/plan');
              return const Scaffold(body: Text('Plan Screen'));
            },
          ),
          GoRoute(
            path: '/insights/streaks',
            builder: (context, state) {
              navigatedPaths.add('/insights/streaks');
              return const Scaffold(body: Text('Streaks & Milestones Screen'));
            },
          ),
          GoRoute(
            path: '/settings/privacy',
            builder: (context, state) {
              navigatedPaths.add('/settings/privacy');
              return const Scaffold(body: Text('Privacy Screen'));
            },
          ),
          GoRoute(
            path: '/settings/reminders',
            builder: (context, state) {
              navigatedPaths.add('/settings/reminders');
              return const Scaffold(body: Text('Reminders Settings'));
            },
          ),
        ],
      );

      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );
      await tester.pumpAndSettle();

      // Verify Reminders tab is active and shows reminder items
      expect(find.text('Stay Hydrated 💧'), findsOneWidget);
      expect(find.text('Lunch Check-in 🥗'), findsOneWidget);
      expect(find.text('Evening Wind-down 🌙'), findsOneWidget);

      // Tap on "Stay Hydrated 💧"
      await tester.tap(find.text('Stay Hydrated 💧'));
      await tester.pumpAndSettle();

      // Verify it navigated to Water Tracker screen
      expect(navigatedPaths, contains('/food/water'));
      expect(find.text('Water Tracker Screen'), findsOneWidget);

      // Navigate back to notifications
      router.go('/notifications');
      await tester.pumpAndSettle();

      // Tap on "Lunch Check-in 🥗"
      await tester.tap(find.text('Lunch Check-in 🥗'));
      await tester.pumpAndSettle();

      // Verify it navigated to Food Diary screen
      expect(navigatedPaths, contains('/food'));
      expect(find.text('Food Diary Screen'), findsOneWidget);

      // Navigate back to notifications
      router.go('/notifications');
      await tester.pumpAndSettle();

      // Tap on "Evening Wind-down 🌙"
      await tester.tap(find.text('Evening Wind-down 🌙'));
      await tester.pumpAndSettle();

      // Verify it navigated to Sleep screen
      expect(navigatedPaths, contains('/health/sleep'));
      expect(find.text('Sleep Screen'), findsOneWidget);
    });

    testWidgets('Tapping milestone cards navigates to particular screens (/plan, /settings/privacy, /insights/streaks)', (tester) async {
      final navigatedPaths = <String>[];

      final router = GoRouter(
        initialLocation: '/notifications',
        routes: [
          GoRoute(
            path: '/notifications',
            builder: (context, state) => const NotificationsPage(),
          ),
          GoRoute(
            path: '/plan',
            builder: (context, state) {
              navigatedPaths.add('/plan');
              return const Scaffold(body: Text('Plan Screen'));
            },
          ),
          GoRoute(
            path: '/settings/privacy',
            builder: (context, state) {
              navigatedPaths.add('/settings/privacy');
              return const Scaffold(body: Text('Privacy Screen'));
            },
          ),
          GoRoute(
            path: '/insights/streaks',
            builder: (context, state) {
              navigatedPaths.add('/insights/streaks');
              return const Scaffold(body: Text('Streaks & Milestones Screen'));
            },
          ),
          GoRoute(
            path: '/settings/reminders',
            builder: (context, state) {
              navigatedPaths.add('/settings/reminders');
              return const Scaffold(body: Text('Reminders Settings'));
            },
          ),
        ],
      );

      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
        ),
      );
      await tester.pumpAndSettle();

      // Switch to Milestones tab
      await tester.tap(find.text('Milestones'));
      await tester.pumpAndSettle();

      // Verify milestone cards appear
      expect(find.text('Welcome to Bloomi! 🌱'), findsOneWidget);
      expect(find.text('Privacy First 🔒'), findsOneWidget);

      // Tap on "Welcome to Bloomi! 🌱"
      await tester.tap(find.text('Welcome to Bloomi! 🌱'));
      await tester.pumpAndSettle();

      // Verify navigation to Plan screen
      expect(navigatedPaths, contains('/plan'));
      expect(find.text('Plan Screen'), findsOneWidget);

      // Navigate back to notifications and switch to milestones
      router.go('/notifications');
      await tester.pumpAndSettle();
      await tester.tap(find.text('Milestones'));
      await tester.pumpAndSettle();

      // Tap on "Privacy First 🔒"
      await tester.tap(find.text('Privacy First 🔒'));
      await tester.pumpAndSettle();

      // Verify navigation to Privacy screen
      expect(navigatedPaths, contains('/settings/privacy'));
      expect(find.text('Privacy Screen'), findsOneWidget);
    });
  });
}

