import 'package:bloomi/core/localization/app_localizations.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/empty_state_widget.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/features/insights/domain/entities/insights_entity.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:bloomi/features/settings/domain/entities/reminder_entity.dart';
import 'package:bloomi/features/settings/domain/repositories/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  StreamSubscription<List<ReminderEntity>>? _remindersSub;
  StreamSubscription<List<BadgeEntity>>? _badgesSub;

  static const String _deletedPrefKey = 'bloomi_permanent_deleted_notifications';
  final Set<String> _deletedIds = {};

  bool _isSelectionMode = false;
  final Set<String> _selectedIds = {};

  List<Map<String, String>> _reminders = [];
  List<Map<String, String>> _milestones = [];

  @override
  void initState() {
    super.initState();
    _populateDefaultNotifications();
    _loadDeletedIds();
    _loadLiveNotifications();
  }

  @override
  void dispose() {
    _remindersSub?.cancel();
    _badgesSub?.cancel();
    super.dispose();
  }

  Future<void> _loadDeletedIds() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedList = prefs.getStringList(_deletedPrefKey) ?? [];
      if (savedList.isNotEmpty && mounted) {
        setState(() {
          _deletedIds.addAll(savedList);
          _reminders.removeWhere((item) => _deletedIds.contains(item['id']));
          _milestones.removeWhere((item) => _deletedIds.contains(item['id']));
        });
      }
    } catch (_) {}
  }

  Future<void> _persistDeletedIds() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_deletedPrefKey, _deletedIds.toList());
    } catch (_) {}
  }

  void _populateDefaultNotifications() {
    final now = DateTime.now();
    final todayStr = DateFormat('MMM d').format(now);
    final tomorrowStr = DateFormat('MMM d').format(now.add(const Duration(days: 1)));

    // Generate upcoming preview occurrences for reminders with date and time
    final List<Map<String, String>> initial = [
      {
        'id': 'water_today_1',
        'title': 'Stay Hydrated 💧',
        'message': 'Keep your body happy with a mindful glass of water.',
        'time': 'Today, $todayStr · 10:00 AM',
        'route': '/food/water',
        'type': 'water',
      },
      {
        'id': 'lunch_today',
        'title': 'Lunch Check-in 🥗',
        'message': 'Remember to log your delicious afternoon meal.',
        'time': 'Today, $todayStr · 01:00 PM',
        'route': '/food',
        'type': 'lunch',
      },
      {
        'id': 'sleep_today',
        'title': 'Evening Wind-down 🌙',
        'message': 'Check your daily macro targets before sleep.',
        'time': 'Today, $todayStr · 09:00 PM',
        'route': '/health/sleep',
        'type': 'sleep',
      },
      {
        'id': 'water_today_2',
        'title': 'Afternoon Hydration 💧',
        'message': 'Drink 250ml water for refreshing focus.',
        'time': 'Today, $todayStr · 03:00 PM',
        'route': '/food/water',
        'type': 'water',
      },
      {
        'id': 'dinner_today',
        'title': 'Dinner Reminder 🍲',
        'message': 'Mindful evening nourishment: Log your balanced dinner.',
        'time': 'Today, $todayStr · 08:30 PM',
        'route': '/food',
        'type': 'dinner',
      },
      {
        'id': 'water_tomorrow_1',
        'title': 'Morning Water 💧',
        'message': 'Start your day with 1 fresh glass of water.',
        'time': 'Tomorrow, $tomorrowStr · 08:00 AM',
        'route': '/food/water',
        'type': 'water',
      },
      {
        'id': 'breakfast_tomorrow',
        'title': 'Breakfast Check-in 🍳',
        'message': 'Fuel your day with mindful morning breakfast.',
        'time': 'Tomorrow, $tomorrowStr · 09:00 AM',
        'route': '/food',
        'type': 'breakfast',
      },
    ];

    final List<Map<String, String>> initialMilestones = [
      {
        'id': 'welcome_milestone',
        'title': 'Welcome to Bloomi! 🌱',
        'message': 'Your mindful, offline-first health tracking begins today.',
        'time': 'Today, $todayStr · Started',
        'route': '/plan',
        'icon': '🌱',
        'actionLabel': 'View Plan',
      },
      {
        'id': 'privacy_milestone',
        'title': 'Privacy First 🔒',
        'message': 'Your health data stays 100% private on your device & Drive.',
        'time': 'Today, $todayStr · Verified Offline',
        'route': '/settings/privacy',
        'icon': '🔒',
        'actionLabel': 'Privacy Details',
      },
    ];

    _reminders = initial.where((item) => !_deletedIds.contains(item['id'])).toList();
    _milestones = initialMilestones.where((item) => !_deletedIds.contains(item['id'])).toList();
  }

  void _loadLiveNotifications() {
    if (sl.isRegistered<SettingsRepository>()) {
      try {
        final settingsRepo = sl<SettingsRepository>();
        _remindersSub = settingsRepo.watchReminders().listen((list) {
          if (!mounted) return;
          if (list.isNotEmpty) {
            final now = DateTime.now();
            final todayStr = DateFormat('MMM d').format(now);
            final tomorrowStr = DateFormat('MMM d').format(now.add(const Duration(days: 1)));
            final dayAfterStr = DateFormat('MMM d').format(now.add(const Duration(days: 2)));

            final expandedItems = <Map<String, String>>[];

            for (final r in list) {
              if (!r.enabled) continue;

              String route = '/settings/reminders';
              String title = 'Wellness Reminder 🌸';
              String msg = 'Mindful wellness check-in';

              switch (r.type.toLowerCase()) {
                case 'water':
                  route = '/food/water';
                  title = 'Stay Hydrated 💧';
                  msg = 'Drink a mindful glass of water';
                  break;
                case 'breakfast':
                  route = '/food';
                  title = 'Breakfast Check-in 🍳';
                  msg = 'Log your morning breakfast nourishment';
                  break;
                case 'lunch':
                  route = '/food';
                  title = 'Lunch Check-in 🥗';
                  msg = 'Log your delicious afternoon meal';
                  break;
                case 'dinner':
                  route = '/food';
                  title = 'Dinner Reminder 🍲';
                  msg = 'Log your evening dinner';
                  break;
                case 'weight':
                  route = '/health/weight';
                  title = 'Weekly Weigh-in ⚖️';
                  msg = 'Track your weekly body metrics on Bloomi';
                  break;
                case 'sleep':
                  route = '/health/sleep';
                  title = 'Evening Wind-down 🌙';
                  msg = 'Unwind and check daily targets';
                  break;
              }

              if (r.type.toLowerCase() == 'water') {
                // Repeating water reminder: expand into scheduled occurrences
                final times = ['10:00 AM', '12:00 PM', '02:00 PM', '04:00 PM', '06:00 PM'];
                for (int i = 0; i < times.length; i++) {
                  final occId = '${r.id}_today_$i';
                  expandedItems.add({
                    'id': occId,
                    'title': title,
                    'message': '$msg (${times[i]})',
                    'time': 'Today, $todayStr · ${times[i]}',
                    'route': route,
                    'type': r.type,
                  });
                }
                expandedItems.add({
                  'id': '${r.id}_tomorrow_0',
                  'title': title,
                  'message': '$msg (08:00 AM)',
                  'time': 'Tomorrow, $tomorrowStr · 08:00 AM',
                  'route': route,
                  'type': r.type,
                });
              } else {
                // Daily repeating reminder: expand upcoming occurrences
                expandedItems.add({
                  'id': '${r.id}_today',
                  'title': title,
                  'message': '$msg (${r.time})',
                  'time': 'Today, $todayStr · ${r.time}',
                  'route': route,
                  'type': r.type,
                });
                expandedItems.add({
                  'id': '${r.id}_tomorrow',
                  'title': title,
                  'message': '$msg (${r.time})',
                  'time': 'Tomorrow, $tomorrowStr · ${r.time}',
                  'route': route,
                  'type': r.type,
                });
                expandedItems.add({
                  'id': '${r.id}_dayafter',
                  'title': title,
                  'message': '$msg (${r.time})',
                  'time': '$dayAfterStr · ${r.time}',
                  'route': route,
                  'type': r.type,
                });
              }
            }

            final filtered = expandedItems.where((item) => !_deletedIds.contains(item['id'])).toList();
            if (filtered.isNotEmpty) {
              setState(() {
                _reminders = filtered;
              });
            }
          }
        });
      } catch (_) {}
    }

    if (sl.isRegistered<InsightsRepository>()) {
      try {
        final insightsRepo = sl<InsightsRepository>();
        _badgesSub = insightsRepo.watchBadges().listen((badges) {
          if (!mounted) return;
          final now = DateTime.now();
          final todayStr = DateFormat('MMM d').format(now);

          final dynamicMilestones = <Map<String, String>>[
            {
              'id': 'welcome_milestone',
              'title': 'Welcome to Bloomi! 🌱',
              'message': 'Your mindful, offline-first health tracking begins today.',
              'time': 'Today, $todayStr · Started',
              'route': '/plan',
              'icon': '🌱',
              'actionLabel': 'View Plan',
            },
            {
              'id': 'privacy_milestone',
              'title': 'Privacy First 🔒',
              'message': 'Your data stays completely private on your device & Drive.',
              'time': 'Today, $todayStr · Verified Offline',
              'route': '/settings/privacy',
              'icon': '🔒',
              'actionLabel': 'Privacy Details',
            },
          ];

          for (final b in badges) {
            dynamicMilestones.add({
              'id': 'badge_${b.id}',
              'title': '${b.title} ${b.icon}',
              'message': b.description,
              'time': b.isUnlocked ? 'Today, $todayStr · Unlocked 🎉' : 'Today, $todayStr · In Progress (streak: ${b.streakCounter})',
              'route': '/insights/streaks',
              'icon': b.icon,
              'actionLabel': 'View Streaks',
            });
          }

          setState(() {
            _milestones = dynamicMilestones.where((m) => !_deletedIds.contains(m['id'])).toList();
          });
        });
      } catch (_) {}
    }
  }

  void _onNotificationTapped(String route, String id) {
    if (_isSelectionMode) {
      _toggleSelection(id);
    } else {
      context.push(route);
    }
  }

  void _onNotificationLongPress(String id) {
    setState(() {
      _isSelectionMode = true;
      _selectedIds.add(id);
    });
  }

  void _toggleSelection(String id) {
    setState(() {
      if (_selectedIds.contains(id)) {
        _selectedIds.remove(id);
        if (_selectedIds.isEmpty) {
          _isSelectionMode = false;
        }
      } else {
        _selectedIds.add(id);
      }
    });
  }

  void _selectAll(int tabIndex) {
    final currentList = tabIndex == 0 ? _reminders : _milestones;
    setState(() {
      _selectedIds.addAll(currentList.map((item) => item['id']!));
    });
  }

  Future<void> _deleteSelected(int tabIndex) async {
    if (_selectedIds.isEmpty) return;

    final count = _selectedIds.length;
    _deletedIds.addAll(_selectedIds);
    await _persistDeletedIds();

    setState(() {
      _reminders.removeWhere((item) => _selectedIds.contains(item['id']));
      _milestones.removeWhere((item) => _selectedIds.contains(item['id']));
      _selectedIds.clear();
      _isSelectionMode = false;
    });

    if (mounted) {
      BloomiToast.show(context, message: 'Permanently deleted $count notifications 🗑️');
    }
  }

  Color _getReminderColor(String? type, String title, BuildContext context) {
    final t = (type ?? title).toLowerCase();
    if (t.contains('water') || t.contains('hydrat')) return AppColors.sky;
    if (t.contains('breakfast') || t.contains('morning')) return AppColors.peach;
    if (t.contains('lunch') || t.contains('meal')) return context.appMint;
    if (t.contains('dinner')) return AppColors.softOrange;
    if (t.contains('sleep') || t.contains('wind-down')) return AppColors.lilac;
    if (t.contains('weight')) return AppColors.butter;
    return context.appMint;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (ctx) {
          final tabController = DefaultTabController.of(ctx);
          return Scaffold(
            backgroundColor: context.appBackground,
            appBar: AppBar(
              backgroundColor: context.appSurface,
              elevation: 0,
              leading: _isSelectionMode
                  ? IconButton(
                      icon: const Icon(CupertinoIcons.clear),
                      onPressed: () {
                        setState(() {
                          _isSelectionMode = false;
                          _selectedIds.clear();
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
                      onPressed: () {
                        if (context.canPop()) context.pop();
                      },
                    ),
              title: Text(
                _isSelectionMode ? '${_selectedIds.length} ${context.tr('select')}' : context.tr('notifications'),
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: context.appInk,
                ),
              ),
              actions: [
                if (_isSelectionMode) ...[
                  TextButton(
                    onPressed: () => _selectAll(tabController.index),
                    child: Text(
                      context.tr('all'),
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        color: context.appInk,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(CupertinoIcons.trash_fill, color: Theme.of(context).colorScheme.error),
                    tooltip: context.tr('delete'),
                    onPressed: () => _deleteSelected(tabController.index),
                  ),
                ] else ...[
                  // Replaced standard settings icon with dedicated Reminder Settings button
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: context.appInk,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    ),
                    icon: const Icon(CupertinoIcons.alarm, size: 18, color: AppColors.mintDark),
                    label: Text(
                      context.tr('reminders'),
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: context.appInk,
                      ),
                    ),
                    onPressed: () => context.push('/settings/reminders'),
                  ),
                ],
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
          );
        },
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
        final id = item['id']!;
        final route = item['route'] ?? '/settings/reminders';
        final accentColor = _getReminderColor(item['type'], item['title'] ?? '', context);
        final typeStr = item['type'] ?? item['title'] ?? '';
        final isSelected = _selectedIds.contains(id);

        return Material(
          color: context.appSurface,
          borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            onTap: () => _onNotificationTapped(route, id),
            onLongPress: () => _onNotificationLongPress(id),
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                boxShadow: context.appCardShadow,
                border: Border.all(
                  color: isSelected ? AppColors.mint : context.appBorderColor,
                  width: isSelected ? 2.0 : 1.0,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_isSelectionMode) ...[
                    Checkbox(
                      value: isSelected,
                      activeColor: AppColors.mint,
                      onChanged: (_) => _toggleSelection(id),
                    ),
                    const SizedBox(width: 8),
                  ],
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.alphaBlend(accentColor.withOpacity(0.18), context.appSurface),
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
                            fontWeight: FontWeight.w600,
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
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                color: Color.alphaBlend(accentColor.withOpacity(0.20), context.appSurface),
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
                              _isSelectionMode ? 'Tap to select' : 'Tap to open',
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
                    CupertinoIcons.chevron_right,
                    color: context.appSlate,
                    size: 20,
                  ),
                ],
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
        final id = item['id']!;
        final route = item['route'] ?? '/plan';
        final isSelected = _selectedIds.contains(id);

        return Material(
          color: context.appSurface,
          borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            onTap: () => _onNotificationTapped(route, id),
            onLongPress: () => _onNotificationLongPress(id),
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                boxShadow: context.appCardShadow,
                border: Border.all(
                  color: isSelected ? AppColors.mint : context.appBorderColor,
                  width: isSelected ? 2.0 : 1.0,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_isSelectionMode) ...[
                    Checkbox(
                      value: isSelected,
                      activeColor: AppColors.mint,
                      onChanged: (_) => _toggleSelection(id),
                    ),
                    const SizedBox(width: 8),
                  ],
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.alphaBlend(AppColors.peach.withOpacity(0.20), context.appSurface),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      item['icon'] ?? '🌱',
                      style: const TextStyle(fontSize: 22),
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
                            fontWeight: FontWeight.w600,
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
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                color: Color.alphaBlend(context.appMint.withOpacity(0.20), context.appSurface),
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
                    CupertinoIcons.chevron_right,
                    color: context.appSlate,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
