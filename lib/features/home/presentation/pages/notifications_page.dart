import 'dart:async';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/empty_state_widget.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/features/insights/domain/entities/insights_entity.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:bloomi/features/settings/domain/entities/reminder_entity.dart';
import 'package:bloomi/features/settings/domain/repositories/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  StreamSubscription<List<ReminderEntity>>? _remindersSub;
  StreamSubscription<List<BadgeEntity>>? _badgesSub;

  final Map<String, Timer> _pendingDeletionTimers = {};

  List<Map<String, String>> _reminders = [
    {
      'id': 'water_default',
      'title': 'Stay Hydrated 💧',
      'message': 'Keep your body happy with a mindful glass of water.',
      'time': 'Scheduled every 2 hrs',
      'route': '/food/water',
      'type': 'water',
    },
    {
      'id': 'lunch_default',
      'title': 'Lunch Check-in 🥗',
      'message': 'Remember to log your delicious afternoon meal.',
      'time': 'Daily at 1:00 PM',
      'route': '/food',
      'type': 'lunch',
    },
    {
      'id': 'sleep_default',
      'title': 'Evening Wind-down 🌙',
      'message': 'Check your daily macro targets before sleep.',
      'time': 'Daily at 9:00 PM',
      'route': '/health/sleep',
      'type': 'sleep',
    },
  ];

  List<Map<String, String>> _milestones = [
    {
      'id': 'welcome_milestone',
      'title': 'Welcome to Bloomi! 🌱',
      'message': 'Your mindful, offline-first health tracking begins today.',
      'time': 'Today',
      'route': '/plan',
      'icon': '🌱',
      'actionLabel': 'View Plan',
    },
    {
      'id': 'privacy_milestone',
      'title': 'Privacy First 🔒',
      'message': 'Your data stays completely private on your device & Drive.',
      'time': 'Verified Offline',
      'route': '/settings/privacy',
      'icon': '🔒',
      'actionLabel': 'Privacy Details',
    },
  ];

  @override
  void initState() {
    super.initState();
    _loadLiveNotifications();
  }

  @override
  void dispose() {
    for (final timer in _pendingDeletionTimers.values) {
      timer.cancel();
    }
    _remindersSub?.cancel();
    _badgesSub?.cancel();
    super.dispose();
  }

  void _loadLiveNotifications() {
    // 1. Listen for real reminders from SettingsRepository if registered
    if (sl.isRegistered<SettingsRepository>()) {
      try {
        final settingsRepo = sl<SettingsRepository>();
        _remindersSub = settingsRepo.watchReminders().listen((list) {
          if (!mounted) return;
          if (list.isNotEmpty) {
            final mapped = list.map((r) {
              String route = '/settings/reminders';
              String title = 'Wellness Reminder 🌸';
              String message = 'Mindful wellness check-in at ${r.time}';

              switch (r.type.toLowerCase()) {
                case 'water':
                  route = '/food/water';
                  title = 'Stay Hydrated 💧';
                  message = 'Drink a mindful glass of water (${r.time})';
                  break;
                case 'breakfast':
                  route = '/food';
                  title = 'Breakfast Check-in 🍳';
                  message = 'Log your morning nourishment (${r.time})';
                  break;
                case 'lunch':
                  route = '/food';
                  title = 'Lunch Check-in 🥗';
                  message = 'Log your delicious afternoon meal (${r.time})';
                  break;
                case 'dinner':
                  route = '/food';
                  title = 'Dinner Reminder 🍲';
                  message = 'Log your evening dinner (${r.time})';
                  break;
                case 'weight':
                  route = '/health/weight';
                  title = 'Weekly Weigh-in ⚖️';
                  message = 'Track your weekly body metrics on Bloomi (${r.time})';
                  break;
                case 'sleep':
                  route = '/health/sleep';
                  title = 'Evening Wind-down 🌙';
                  message = 'Unwind and check daily targets (${r.time})';
                  break;
              }

              return {
                'id': r.id,
                'title': title,
                'message': message,
                'time': r.enabled ? 'Active · ${r.time}' : 'Paused · ${r.time}',
                'route': route,
                'type': r.type,
              };
            }).where((item) => !_pendingDeletionTimers.containsKey(item['id'])).toList();

            setState(() {
              _reminders = mapped;
            });
          }
        });
      } catch (_) {}
    }

    // 2. Listen for real unlocked badges from InsightsRepository if registered
    if (sl.isRegistered<InsightsRepository>()) {
      try {
        final insightsRepo = sl<InsightsRepository>();
        _badgesSub = insightsRepo.watchBadges().listen((badges) {
          if (!mounted) return;
          final dynamicMilestones = <Map<String, String>>[
            {
              'id': 'welcome_milestone',
              'title': 'Welcome to Bloomi! 🌱',
              'message': 'Your mindful, offline-first health tracking begins today.',
              'time': 'Started',
              'route': '/plan',
              'icon': '🌱',
              'actionLabel': 'View Plan',
            },
            {
              'id': 'privacy_milestone',
              'title': 'Privacy First 🔒',
              'message': 'Your data stays completely private on your device & Drive.',
              'time': 'Verified Offline',
              'route': '/settings/privacy',
              'icon': '🔒',
              'actionLabel': 'Privacy Details',
            },
          ];

          for (final b in badges) {
            dynamicMilestones.add({
              'id': b.id,
              'title': '${b.title} ${b.icon}',
              'message': b.description,
              'time': b.isUnlocked ? 'Unlocked 🎉' : 'In Progress (streak: ${b.streakCounter})',
              'route': '/insights/streaks',
              'icon': b.icon,
              'actionLabel': 'View Streaks',
            });
          }

          setState(() {
            _milestones = dynamicMilestones.where((m) => !_pendingDeletionTimers.containsKey(m['id'])).toList();
          });
        });
      } catch (_) {}
    }
  }

  void _onNotificationTapped(String route) {
    HapticFeedback.lightImpact();
    context.push(route);
  }

  void _permanentlyDeleteReminder(String id) {
    _pendingDeletionTimers.remove(id);
    // Work with offline-first local storage without breaking sync
    if (sl.isRegistered<SettingsRepository>()) {
      try {
        sl<SettingsRepository>().toggleReminder(id, false);
      } catch (_) {}
    }
  }

  void _dismissReminder(int index) {
    final item = _reminders[index];
    final originalIndex = index;
    final id = item['id'] ?? item['title'] ?? '$index';

    setState(() {
      _reminders.removeAt(index);
    });

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${item['title']} dismissed',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        duration: const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'UNDO',
          textColor: AppColors.mint,
          onPressed: () {
            _pendingDeletionTimers[id]?.cancel();
            _pendingDeletionTimers.remove(id);
            setState(() {
              final insertIdx = originalIndex.clamp(0, _reminders.length);
              _reminders.insert(insertIdx, item);
            });
          },
        ),
      ),
    );

    _pendingDeletionTimers[id] = Timer(const Duration(milliseconds: 4500), () {
      _permanentlyDeleteReminder(id);
    });
  }

  void _clearAllReminders() {
    if (_reminders.isEmpty) return;
    final backup = List<Map<String, String>>.from(_reminders);

    setState(() {
      _reminders.clear();
    });

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('All reminders cleared'),
        duration: const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'UNDO',
          textColor: AppColors.mint,
          onPressed: () {
            setState(() {
              _reminders = backup;
            });
          },
        ),
      ),
    );
  }

  void _dismissMilestone(int index) {
    final item = _milestones[index];
    final originalIndex = index;

    setState(() {
      _milestones.removeAt(index);
    });

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Milestone card dismissed',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        duration: const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'UNDO',
          textColor: AppColors.mint,
          onPressed: () {
            setState(() {
              final insertIdx = originalIndex.clamp(0, _milestones.length);
              _milestones.insert(insertIdx, item);
            });
          },
        ),
      ),
    );
  }

  void _clearAllMilestones() {
    if (_milestones.isEmpty) return;
    final backup = List<Map<String, String>>.from(_milestones);

    setState(() {
      _milestones.clear();
    });

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('All milestone cards cleared'),
        duration: const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'UNDO',
          textColor: AppColors.mint,
          onPressed: () {
            setState(() {
              _milestones = backup;
            });
          },
        ),
      ),
    );
  }

  String _getReminderRoute(Map<String, String> item) {
    if (item['route'] != null && item['route']!.isNotEmpty) {
      return item['route']!;
    }
    final title = (item['title'] ?? '').toLowerCase();
    final message = (item['message'] ?? '').toLowerCase();
    if (title.contains('water') || title.contains('hydrat') || message.contains('water')) {
      return '/food/water';
    }
    if (title.contains('lunch') ||
        title.contains('breakfast') ||
        title.contains('dinner') ||
        title.contains('meal') ||
        message.contains('meal')) {
      return '/food';
    }
    if (title.contains('wind-down') ||
        title.contains('sleep') ||
        title.contains('bedtime') ||
        message.contains('sleep')) {
      return '/health/sleep';
    }
    if (title.contains('weigh') || title.contains('weight') || message.contains('weight')) {
      return '/health/weight';
    }
    if (title.contains('workout') || title.contains('exercise') || title.contains('steps')) {
      return '/health/workout';
    }
    return '/settings/reminders';
  }

  String _getMilestoneRoute(Map<String, String> item) {
    if (item['route'] != null && item['route']!.isNotEmpty) {
      return item['route']!;
    }
    final title = (item['title'] ?? '').toLowerCase();
    if (title.contains('privacy')) {
      return '/settings/privacy';
    }
    if (title.contains('welcome') || title.contains('plan') || title.contains('target')) {
      return '/plan';
    }
    return '/insights/streaks';
  }

  String _getMilestoneMetricType(Map<String, String> item) {
    final title = (item['title'] ?? '').toLowerCase();
    final message = (item['message'] ?? '').toLowerCase();
    if (title.contains('water') || message.contains('water')) return 'water';
    if (title.contains('step') || message.contains('step') || message.contains('walk')) return 'steps';
    if (title.contains('heart') || message.contains('heart') || message.contains('pulse')) return 'heart_rate';
    if (title.contains('sleep') || message.contains('sleep') || message.contains('night')) return 'sleep';
    if (title.contains('calor') || message.contains('calor') || title.contains('burn')) return 'calories';
    if (title.contains('streak') || title.contains('bloom') || title.contains('plant')) return 'vegetarian';
    return 'milestone';
  }

  Color _getReminderColor(String? type, String title, BuildContext context) {
    final t = (type ?? title).toLowerCase();
    if (t.contains('water') || t.contains('hydrat')) {
      return AppColors.sky;
    }
    if (t.contains('breakfast') || t.contains('morning')) {
      return AppColors.peach;
    }
    if (t.contains('lunch') || t.contains('meal')) {
      return context.appMint;
    }
    if (t.contains('dinner')) {
      return AppColors.softOrange;
    }
    if (t.contains('sleep') || t.contains('wind-down')) {
      return AppColors.lilac;
    }
    if (t.contains('weight')) {
      return AppColors.butter;
    }
    return context.appMint;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: context.appBackground,
        appBar: AppBar(
          backgroundColor: context.appSurface,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded, color: context.appInk),
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              }
            },
          ),
          title: Text(
            'Notifications',
            style: TextStyle(
              fontFamily: 'Baloo 2',
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: context.appInk,
            ),
          ),
          actions: [
            Builder(
              builder: (ctx) {
                return IconButton(
                  tooltip: 'Clear all',
                  icon: Icon(Icons.delete_sweep_rounded, color: context.appInk),
                  onPressed: () {
                    final tabIdx = DefaultTabController.of(ctx).index;
                    if (tabIdx == 0) {
                      _clearAllReminders();
                    } else {
                      _clearAllMilestones();
                    }
                  },
                );
              },
            ),
            IconButton(
              tooltip: 'Notification Settings',
              icon: Icon(Icons.settings_outlined, color: context.appInk),
              onPressed: () => context.push('/settings/reminders'),
            ),
          ],
          bottom: TabBar(
            indicatorColor: AppColors.mint,
            indicatorWeight: 3,
            labelColor: context.appInk,
            labelStyle: const TextStyle(fontWeight: FontWeight.w700),
            unselectedLabelColor: context.appSlate,
            tabs: const [
              Tab(text: 'Reminders'),
              Tab(text: 'Milestones'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildRemindersTab(),
            _buildMilestonesTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildRemindersTab() {
    if (_reminders.isEmpty) {
      return EmptyStateWidget(
        mascotState: MascotState.sleepy,
        message: 'All quiet here! 🌿\nBloo will notify you about hydration and meal reminders.',
        actionLabel: 'Configure Reminders',
        onActionPressed: () => context.push('/settings/reminders'),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(AppSpacing.lg),
      itemCount: _reminders.length,
      separatorBuilder: (_, index) => const SizedBox(height: AppSpacing.sm),
      itemBuilder: (context, index) {
        final item = _reminders[index];
        final route = _getReminderRoute(item);
        final accentColor = _getReminderColor(item['type'], item['title'] ?? '', context);
        final typeStr = item['type'] ?? item['title'] ?? '';

        return Dismissible(
          key: ValueKey((item['id'] ?? item['title']!) + index.toString()),
          direction: DismissDirection.endToStart,
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            ),
            child: Icon(Icons.delete_outline_rounded, color: Theme.of(context).colorScheme.onError),
          ),
          onDismissed: (_) => _dismissReminder(index),
          child: Material(
            color: context.appSurface,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              onTap: () => _onNotificationTapped(route),
              child: Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                  boxShadow: context.appCardShadow,
                  border: Border.all(color: context.appDivider.withAlpha(80), width: 1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: accentColor.withAlpha(45),
                        shape: BoxShape.circle,
                      ),
                      child: HealthMetricAnimation(
                        metricType: typeStr,
                        size: 24,
                        color: context.isDarkMode ? AppColors.darkInk : accentColor,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            item['message']!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              color: context.appSlate,
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: AppSpacing.sm,
                            runSpacing: 4,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                                decoration: BoxDecoration(
                                  color: accentColor.withAlpha(35),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  item['time']!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    color: context.isDarkMode ? context.appInk : accentColor,
                                  ),
                                ),
                              ),
                              Text(
                                'Tap to open',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: context.appSlate,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: context.appSlate,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMilestonesTab() {
    if (_milestones.isEmpty) {
      return const EmptyStateWidget(
        mascotState: MascotState.idle,
        message: 'No milestones yet.\nAs you log your daily meals and water, achievements will appear here!',
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(AppSpacing.lg),
      itemCount: _milestones.length,
      separatorBuilder: (_, index) => const SizedBox(height: AppSpacing.sm),
      itemBuilder: (context, index) {
        final item = _milestones[index];
        final route = _getMilestoneRoute(item);

        return Dismissible(
          key: ValueKey((item['id'] ?? item['title']!) + index.toString()),
          direction: DismissDirection.endToStart,
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            ),
            child: Icon(Icons.delete_outline_rounded, color: Theme.of(context).colorScheme.onError),
          ),
          onDismissed: (_) => _dismissMilestone(index),
          child: Material(
            color: context.appSurface,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              onTap: () => _onNotificationTapped(route),
              child: Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                  boxShadow: context.appCardShadow,
                  border: Border.all(color: context.appDivider.withAlpha(80), width: 1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: AppColors.peach.withAlpha(60),
                        shape: BoxShape.circle,
                      ),
                      child: HealthMetricAnimation(
                        metricType: _getMilestoneMetricType(item),
                        size: 26,
                        color: context.isDarkMode ? AppColors.darkInk : AppColors.peach,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            item['message']!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              color: context.appSlate,
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: AppSpacing.sm,
                            runSpacing: 4,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                                decoration: BoxDecoration(
                                  color: context.appMint.withAlpha(35),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  item['time']!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    color: context.appInk,
                                  ),
                                ),
                              ),
                              Text(
                                item['actionLabel'] ?? 'View Milestone',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: context.appSlate,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
