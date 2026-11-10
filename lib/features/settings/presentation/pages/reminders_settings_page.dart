import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/utils/app_settings_helper.dart';
import 'package:bloomi/core/widgets/bloomi_cupertino_picker.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/settings/domain/entities/reminder_entity.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:bloomi/services/notifications/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RemindersSettingsPage extends StatefulWidget {
  const RemindersSettingsPage({super.key});

  @override
  State<RemindersSettingsPage> createState() => _RemindersSettingsPageState();
}

class _RemindersSettingsPageState extends State<RemindersSettingsPage> {
  bool _masterSound = true;
  final Map<String, bool> _typeSounds = {
    'hydration': true,
    'steps': true,
    'heartRate': true,
    'sleep': true,
    'calories': true,
    'bloodOxygen': true,
    'weight': true,
    'bloodPressure': true,
    'nutrition': true,
    'milestones': true,
    'dailyPlan': true,
  };

  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const LoadSettingsEvent());
    _loadSoundPrefs();
  }

  Future<void> _loadSoundPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _masterSound = prefs.getBool('notifications_sound_enabled') ?? true;
      for (final key in _typeSounds.keys) {
        _typeSounds[key] = prefs.getBool('notif_sound_$key') ?? true;
      }
    });
  }

  Future<void> _toggleMasterSound(bool val) async {
    setState(() => _masterSound = val);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notifications_sound_enabled', val);
    if (sl.isRegistered<NotificationService>()) {
      await sl<NotificationService>().updateChannelSoundSettings();
    }
  }

  Future<void> _toggleTypeSound(String key, bool val) async {
    setState(() => _typeSounds[key] = val);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notif_sound_$key', val);
    if (sl.isRegistered<NotificationService>()) {
      await sl<NotificationService>().updateChannelSoundSettings();
    }
  }

  String _formatTypeTitle(String type) {
    switch (type.toLowerCase()) {
      case 'breakfast':
        return 'Breakfast Reminder';
      case 'lunch':
        return 'Lunch Reminder';
      case 'dinner':
        return 'Dinner Reminder';
      case 'water':
        return 'Hydration Interval';
      case 'weight':
        return 'Weekly Weight Check-in';
      case 'sleep':
        return 'Bedtime Wind-down';
      default:
        return '${type[0].toUpperCase()}${type.substring(1)} Reminder';
    }
  }

  IconData _getTypeIcon(String type) {
    switch (type.toLowerCase()) {
      case 'breakfast':
        return CupertinoIcons.sunrise_fill;
      case 'lunch':
        return CupertinoIcons.bag_fill;
      case 'dinner':
        return CupertinoIcons.cart_fill;
      case 'water':
        return CupertinoIcons.drop_fill;
      case 'weight':
        return CupertinoIcons.gauge;
      case 'sleep':
        return CupertinoIcons.moon_fill;
      default:
        return CupertinoIcons.alarm;
    }
  }

  Color _getTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'breakfast':
        return AppColors.butter;
      case 'lunch':
        return AppColors.mint;
      case 'dinner':
        return AppColors.peach;
      case 'water':
        return AppColors.sky;
      case 'weight':
        return AppColors.lilac;
      case 'sleep':
        return AppColors.lilac;
      default:
        return AppColors.mint;
    }
  }

  Future<void> _pickTime(ReminderEntity reminder) async {
    final bloc = context.read<SettingsBloc>();

    if (reminder.type == 'water') {
      final intervals = [
        'Every 1 hr',
        'Every 1.5 hrs',
        'Every 2 hrs',
        'Every 3 hrs'
      ];
      final chosen = await showDialog<String>(
        context: context,
        builder: (ctx) => SimpleDialog(
          backgroundColor: context.appSurface,
          title: Text(
            'Select Hydration Interval',
            style: TextStyle(
              fontFamily: 'Baloo 2',
              fontWeight: FontWeight.w700,
              color: context.appInk,
            ),
          ),
          children: intervals
              .map(
                (intvl) => SimpleDialogOption(
                  onPressed: () => Navigator.pop(ctx, intvl),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      intvl,
                      style: TextStyle(fontSize: 16, color: context.appInk),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );
      if (chosen != null && mounted) {
        bloc.add(UpdateReminderTimeEvent(id: reminder.id, newTime: chosen));
        BloomiToast.show(context,
            message: 'Hydration interval updated to $chosen');
      }
      return;
    }

    if (reminder.type == 'weight') {
      final days = [
        'Monday 09:00',
        'Wednesday 09:00',
        'Friday 09:00',
        'Sunday 09:00'
      ];
      final chosen = await showDialog<String>(
        context: context,
        builder: (ctx) => SimpleDialog(
          backgroundColor: context.appSurface,
          title: Text(
            'Select Weigh-in Schedule',
            style: TextStyle(
              fontFamily: 'Baloo 2',
              fontWeight: FontWeight.w700,
              color: context.appInk,
            ),
          ),
          children: days
              .map(
                (d) => SimpleDialogOption(
                  onPressed: () => Navigator.pop(ctx, d),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      d,
                      style: TextStyle(fontSize: 16, color: context.appInk),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );
      if (chosen != null && mounted) {
        bloc.add(UpdateReminderTimeEvent(id: reminder.id, newTime: chosen));
        BloomiToast.show(context,
            message: 'Weigh-in reminder set to $chosen');
      }
      return;
    }

    TimeOfDay initial = const TimeOfDay(hour: 8, minute: 30);
    try {
      final parts = reminder.time.split(':');
      if (parts.length == 2) {
        initial =
            TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
      }
    } catch (_) {}

    final picked = await BloomiCupertinoPicker.showTimePicker(
      context,
      initialTime: initial,
      title: 'Reminder Time',
    );

    if (picked != null && mounted) {
      final formatted =
          '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}';
      bloc.add(UpdateReminderTimeEvent(id: reminder.id, newTime: formatted));
      BloomiToast.show(
        context,
        message: '${_formatTypeTitle(reminder.type)} set to $formatted',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Reminders & Alerts',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Baloo 2',
            color: context.appInk,
          ),
        ),
        backgroundColor: context.appSurface,
        foregroundColor: context.appInk,
        elevation: 0,
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          if (state is SettingsLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is SettingsError) {
            return Center(child: Text('Error loading reminders: ${state.message}', style: TextStyle(color: context.appInk)));
          }

          final reminders = state is SettingsLoaded ? state.reminders : <ReminderEntity>[];

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Row(
                  children: [
                    const MascotWidget(state: MascotState.happy, size: 70),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gentle Habits',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Baloo 2',
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Reminders are mindful nudges to help you stay hydrated, nourished, and rested without stress.',
                            style: TextStyle(
                              fontSize: 13,
                              color: context.appSlate,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.md),

              // Test Notification & Device Permission Actions
              Row(
                children: [
                  Expanded(
                    child: PillButton(
                      label: 'Send Test Alert',
                      icon: CupertinoIcons.bell_fill,
                      variant: PillButtonVariant.primary,
                      onPressed: () async {
                        if (sl.isRegistered<NotificationService>()) {
                          final notif = sl<NotificationService>();
                          await notif.requestPermission();
                          await notif.showNotification(
                            id: 9999,
                            title: 'Hydration Nudge 💧',
                            body: 'Mindful water check-in: Time to take a fresh sip of water!',
                            type: BloomiNotificationType.hydration,
                            payload: '/food/water',
                          );
                          if (context.mounted) {
                            BloomiToast.show(context, message: 'Test notification sent! ✨');
                          }
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: PillButton(
                      label: 'Battery & Alarms',
                      icon: CupertinoIcons.battery_100,
                      variant: PillButtonVariant.secondary,
                      onPressed: () async {
                        if (sl.isRegistered<NotificationService>()) {
                          await sl<NotificationService>().requestExactAlarmPermission();
                        }
                        await AppSettingsHelper.openBatteryOptimizationSettings();
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: AppSpacing.lg),
              Text(
                'DAILY NUDGES',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: context.appSlate,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              ...reminders.map((reminder) {
                final color = _getTypeColor(reminder.type);
                return Container(
                  margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                    boxShadow: context.appCardShadow,
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.md, vertical: 4),
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: color.withAlpha(89),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(_getTypeIcon(reminder.type),
                          color: context.appInk, size: 22),
                    ),
                    title: Text(
                      _formatTypeTitle(reminder.type),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: context.appInk,
                      ),
                    ),
                    subtitle: InkWell(
                      onTap: () => _pickTime(reminder),
                      borderRadius: BorderRadius.circular(6),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          '${reminder.time}  ✎',
                          style: TextStyle(
                            color: reminder.enabled
                                ? context.appInk
                                : context.appSlate,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    trailing: Switch.adaptive(
                      value: reminder.enabled,
                      activeTrackColor: AppColors.mint,
                      onChanged: (val) {
                        context.read<SettingsBloc>().add(
                              ToggleReminderEvent(
                                  id: reminder.id, enabled: val),
                            );
                      },
                    ),
                  ),
                );
              }),
              const SizedBox(height: AppSpacing.lg),
              Text(
                'NOTIFICATION SOUNDS',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: context.appSlate,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                'Each alert has its own unique tone. Sounds automatically respect Silent and Do Not Disturb modes.',
                style: TextStyle(
                  fontSize: 12,
                  color: context.appSlate,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),

              // Master Sound Toggle Card
              Container(
                margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.md,
                    vertical: 4,
                  ),
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.mint.withAlpha(89),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(CupertinoIcons.volume_up, color: context.appInk, size: 22),
                  ),
                  title: Text(
                    'Notification Sounds',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: context.appInk,
                    ),
                  ),
                  subtitle: Text(
                    _masterSound ? 'Enabled' : 'Muted across all notifications',
                    style: TextStyle(fontSize: 12, color: context.appSlate),
                  ),
                  trailing: Switch.adaptive(
                    value: _masterSound,
                    activeTrackColor: AppColors.mint,
                    onChanged: _toggleMasterSound,
                  ),
                ),
              ),

              // Individual Sound Toggles
              if (_masterSound) ...[
                _buildSoundTile(
                  keyName: 'hydration',
                  title: 'Hydration Reminders',
                  toneDescription: 'Water-drop chime (sound_water_drop)',
                  metricType: 'water',
                  color: AppColors.sky,
                ),
                _buildSoundTile(
                  keyName: 'steps',
                  title: 'Steps & Distance',
                  toneDescription: 'Movement stride tone (sound_steps_stride)',
                  metricType: 'steps',
                  color: AppColors.mint,
                ),
                _buildSoundTile(
                  keyName: 'heartRate',
                  title: 'Heart Rate Alerts',
                  toneDescription: 'Gentle heartbeat pulse (sound_heartbeat_pulse)',
                  metricType: 'heart_rate',
                  color: AppColors.peach,
                ),
                _buildSoundTile(
                  keyName: 'sleep',
                  title: 'Sleep & Wind-down',
                  toneDescription: 'Soft evening chime (sound_sleep_chime)',
                  metricType: 'sleep',
                  color: AppColors.lilac,
                ),
                _buildSoundTile(
                  keyName: 'calories',
                  title: 'Calorie Burn',
                  toneDescription: 'Active flame tone (sound_calories_flame)',
                  metricType: 'calories',
                  color: AppColors.butter,
                ),
                _buildSoundTile(
                  keyName: 'bloodOxygen',
                  title: 'Blood Oxygen (SpO2)',
                  toneDescription: 'Oxygen breeze tone (sound_oxygen_breeze)',
                  metricType: 'spo2',
                  color: AppColors.sky,
                ),
                _buildSoundTile(
                  keyName: 'weight',
                  title: 'Weigh-in & Body',
                  toneDescription: 'Scale ping (sound_weight_ping)',
                  metricType: 'weight',
                  color: AppColors.mint,
                ),
                _buildSoundTile(
                  keyName: 'bloodPressure',
                  title: 'Blood Pressure',
                  toneDescription: 'Pulsing vital tone (sound_blood_pressure)',
                  metricType: 'pressure',
                  color: AppColors.peach,
                ),
                _buildSoundTile(
                  keyName: 'nutrition',
                  title: 'Meals & Nourishment',
                  toneDescription: 'Nourishment bell (sound_nutrition_bell)',
                  metricType: 'nutrition',
                  color: AppColors.butter,
                ),
                _buildSoundTile(
                  keyName: 'milestones',
                  title: 'Milestones & Badges',
                  toneDescription: 'Upbeat celebration fanfare (sound_milestone_fanfare)',
                  metricType: 'milestone',
                  color: AppColors.softOrange,
                ),
                _buildSoundTile(
                  keyName: 'dailyPlan',
                  title: 'Daily Plan Briefing',
                  toneDescription: 'Morning acoustic chime (sound_daily_plan)',
                  metricType: 'vegetarian',
                  color: AppColors.mint,
                ),
              ],
              const SizedBox(height: AppSpacing.xl),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSoundTile({
    required String keyName,
    required String title,
    required String toneDescription,
    required String metricType,
    required Color color,
  }) {
    final enabled = _typeSounds[keyName] ?? true;
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: 2,
        ),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withAlpha(50),
            shape: BoxShape.circle,
          ),
          child: HealthMetricAnimation(
            metricType: metricType,
            size: 22,
            color: context.appInk,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: context.appInk,
          ),
        ),
        subtitle: Text(
          toneDescription,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 11,
            color: context.appSlate,
          ),
        ),
        trailing: Switch.adaptive(
          value: enabled,
          activeTrackColor: AppColors.mint,
          onChanged: (val) => _toggleTypeSound(keyName, val),
        ),
      ),
    );
  }
}

