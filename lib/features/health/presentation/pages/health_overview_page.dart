import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/core/widgets/empty_state_widget.dart';
import 'package:bloomi/core/widgets/pastel_stat_card.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/core/widgets/step_target_sheet.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/health/presentation/pages/workout_editor_page.dart';
import 'package:bloomi/features/health/presentation/widgets/calories_in_out_card.dart';
import 'package:bloomi/services/health/health_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

class HealthOverviewPage extends StatefulWidget {
  const HealthOverviewPage({super.key});

  @override
  State<HealthOverviewPage> createState() => _HealthOverviewPageState();
}

class _HealthOverviewPageState extends State<HealthOverviewPage> with WidgetsBindingObserver {
  late Stream<HealthOverviewEntity> _overviewStream;
  bool _hasHealthPermissions = false;
  bool _hasActivityPermission = false;
  bool _isHealthConnectSupported = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _overviewStream = sl<HealthRepository>().watchHealthOverview();
    _checkPermissions();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _refresh();
      _checkPermissions();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> _checkPermissions() async {
    try {
      final hasHealth = await sl<HealthService>().hasPermissions();
      final act = await Permission.activityRecognition.isGranted;
      final avail = await sl<HealthService>().checkHealthConnectAvailability();
      if (mounted) {
        setState(() {
          _hasHealthPermissions = hasHealth;
          _hasActivityPermission = act;
          _isHealthConnectSupported = avail != HealthConnectAvailability.unsupportedPlatform;
        });
      }
    } catch (_) {}
  }

  void _refresh() {
    setState(() {
      _overviewStream = sl<HealthRepository>().watchHealthOverview();
    });
  }

  String _formatNumber(int n) {
    return n.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
  }

  Future<void> _openStepTargetModal(BuildContext context, int currentGoal) async {
    await showStepTargetModal(
      context,
      currentTarget: currentGoal,
      onTargetSaved: (newTarget) async {
        await sl<HealthRepository>().updateStepTarget(newTarget);
        if (mounted) {
          _refresh();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Health Overview',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.device_laptop, color: context.appInk),
            tooltip: context.tr('health_devices_hub'),
            onPressed: () => context.push('/health/devices'),
          ),
          IconButton(
            icon: Icon(CupertinoIcons.plus_circle, color: context.appInk),
            tooltip: context.tr('health_add_manual'),
            onPressed: () => context.push('/health/manual-body'),
          ),
        ],
      ),
      body: StreamBuilder<HealthOverviewEntity>(
        stream: _overviewStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting && !snapshot.hasData) {
            return const Center(child: CircularProgressIndicator(color: AppColors.mint));
          }
          if (snapshot.hasError) {
            return Center(
              child: EmptyStateWidget(
                message: 'Could not read health metrics: ${snapshot.error}',
                actionLabel: 'Retry',
                onActionPressed: _refresh,
              ),
            );
          }

          final data = snapshot.data;
          if (data == null) {
            return const Center(child: CircularProgressIndicator(color: AppColors.mint));
          }

          final bundle = data.bundle;
          final timeStr = DateFormat('h:mm a').format(bundle.lastUpdated);
          final double effectiveDistMeters = bundle.distanceMeters > 0
              ? bundle.distanceMeters
              : (bundle.steps * 0.762);
          final distComponents = HealthCalculators.getDistanceComponents(effectiveDistMeters);

          // Calculate burned calories combining health sensors and manual logged workouts
          final workoutBurned = data.todayWorkouts.fold<double>(0.0, (acc, w) => acc + w.calories);
          final manualWorkoutBurned = data.todayWorkouts
              .where((w) => !w.source.toLowerCase().contains('health connect'))
              .fold<double>(0.0, (acc, w) => acc + w.calories);
          final activityBurned = bundle.activeCalories;
          final totalBurned = activityBurned + manualWorkoutBurned;

          String burnedTrend;
          if (totalBurned > 0) {
            if (workoutBurned > 0 && activityBurned > 0) {
              burnedTrend = '${workoutBurned.toInt()}w + ${activityBurned.toInt()}a';
            } else if (workoutBurned > 0) {
              burnedTrend = '${workoutBurned.toInt()} kcal wkt';
            } else {
              burnedTrend = 'Active';
            }
          } else {
            burnedTrend = 'No activity';
          }

          // Extract latest body metrics
          final glucoseEntry = data.recentBodyEntries.where((e) => e.type == 'blood_glucose').firstOrNull;
          final tempEntry = data.recentBodyEntries.where((e) => e.type == 'temperature').firstOrNull;
          final waistEntry = data.recentBodyEntries.where((e) => e.type == 'waist').firstOrNull;
          final hipEntry = data.recentBodyEntries.where((e) => e.type == 'hip').firstOrNull;

          return RefreshIndicator(
            color: AppColors.mint,
            onRefresh: () async {
              await sl<HealthRepository>().getLatestBundle(forceRefresh: true);
              _refresh();
            },
            child: ListView(
              padding: const EdgeInsets.all(AppSpacing.md),
              children: [
                // Medical Disclaimer Banner
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.butter.withAlpha(90),
                    borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                    border: Border.all(color: AppColors.butter.withAlpha(180)),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.info,
                        size: 20,
                        color: context.isDarkMode ? const Color(0xFFFBBF24) : const Color(0xFF8A6D05),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Wellness tracker only · Not a medical device. Consult your physician for medical advice.',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: context.isDarkMode ? const Color(0xFFFDE68A) : const Color(0xFF6B5404),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),

                // Permission status warning banner if permissions are missing
                if (!_hasHealthPermissions && !_hasActivityPermission) ...[
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      color: context.isDarkMode ? const Color(0xFFD97706).withAlpha(40) : const Color(0xFFFEF3C7),
                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                      border: Border.all(
                        color: context.isDarkMode ? const Color(0xFFF59E0B).withAlpha(140) : const Color(0xFFF59E0B).withAlpha(140),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.exclamationmark_triangle,
                              color: context.isDarkMode ? const Color(0xFFF59E0B) : const Color(0xFFD97706),
                              size: 22,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Step & Health Permissions Not Granted',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                  color: context.isDarkMode ? const Color(0xFFFDE68A) : const Color(0xFF92400E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Permissions are required to sync steps, heart rate, and workouts. Tap below to manage permissions in settings.',
                          style: TextStyle(
                            fontSize: 12,
                            color: context.isDarkMode ? const Color(0xFFFEF3C7) : const Color(0xFF78350F),
                            height: 1.35,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            PillButton(
                              label: 'Manage Permissions',
                              icon: CupertinoIcons.shield,
                              height: 38,
                              variant: PillButtonVariant.primary,
                              onPressed: () => context.push('/settings/permissions'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                ] else if (!_isHealthConnectSupported) ...[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.sky.withAlpha(40),
                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                      border: Border.all(color: AppColors.sky.withAlpha(120)),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.compass,
                          color: context.isDarkMode ? const Color(0xFF38BDF8) : const Color(0xFF0284C7),
                          size: 18,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Health Connect unavailable on this device · Tracking steps with hardware motion sensor.',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: context.isDarkMode ? const Color(0xFF7DD3FC) : const Color(0xFF0369A1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                ],

                // Source & Sync Status Bar
                InkWell(
                  onTap: () => context.push('/health/devices'),
                  borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: context.appSurface,
                      borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                      boxShadow: context.appCardShadow,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.arrow_2_circlepath,
                          size: 18,
                          color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Source: ${bundle.stepsSourceLabel != 'Health Connect' ? bundle.stepsSourceLabel : bundle.primarySource} · Synced $timeStr',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: context.appSlate),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Icon(CupertinoIcons.chevron_right, size: 20, color: context.appSlate),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

                // Section Header with Target Edit Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Activity & Vitals',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: context.appInk,
                      ),
                    ),
                    InkWell(
                      onTap: () => _openStepTargetModal(context, data.stepGoal),
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: context.appSurface,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: AppColors.mint.withAlpha(160)),
                          boxShadow: context.appCardShadow,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              CupertinoIcons.pencil,
                              size: 14,
                              color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Goal: ${_formatNumber(data.stepGoal)}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),

                // Metrics Grid
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: AppSpacing.sm,
                  mainAxisSpacing: AppSpacing.sm,
                  childAspectRatio: 1.05,
                  children: [
                    // 1. Steps
                    PastelStatCard(
                      label: 'Steps',
                      value: bundle.steps.toString(),
                      unit: '/ ${_formatNumber(data.stepGoal)}',
                      icon: CupertinoIcons.flame_fill,
                      animationMetricType: 'steps',
                      backgroundColor: AppColors.mint,
                      trend: HealthCalculators.formatDistance(effectiveDistMeters),
                      onTap: () async {
                        if (bundle.steps == 0) {
                          final hasPerm = await sl<HealthRepository>().hasPermissions();
                          if (!hasPerm) {
                            await sl<HealthRepository>().requestPermissions();
                          }
                          await sl<HealthRepository>().getLatestBundle(forceRefresh: true);
                          _refresh();
                        }
                        if (context.mounted) {
                          await context.push('/health/metric-detail?type=steps');
                        }
                      },
                    ),

                    // 2. Heart Rate
                    PastelStatCard(
                      label: 'Heart Rate',
                      value: bundle.heartRate > 0 ? bundle.heartRate.toInt().toString() : '--',
                      unit: 'BPM',
                      icon: CupertinoIcons.heart_fill,
                      animationMetricType: 'heart_rate',
                      backgroundColor: AppColors.peach,
                      trend: bundle.minHeartRate > 0
                          ? '${bundle.minHeartRate.toInt()}-${bundle.maxHeartRate.toInt()} bpm'
                          : '~${bundle.restingHeartRate.toInt()} bpm',
                      onTap: () => context.push('/health/metric-detail?type=heart_rate'),
                    ),

                    // 3. Sleep
                    PastelStatCard(
                      label: 'Sleep',
                      value: bundle.sleepDuration.inMinutes > 0
                          ? '${bundle.sleepDuration.inHours}h ${bundle.sleepDuration.inMinutes % 60}m'
                          : '--',
                      unit: '',
                      icon: CupertinoIcons.moon_fill,
                      animationMetricType: 'sleep',
                      backgroundColor: AppColors.lilac,
                      trend: bundle.sleepDuration.inMinutes > 0 ? 'Recorded' : 'No data yet',
                      onTap: () => context.push('/health/sleep-detail'),
                    ),

                    // 4. SpO2 Blood Oxygen
                    PastelStatCard(
                      label: 'Blood Oxygen',
                      value: bundle.spo2Percentage > 0 ? '${bundle.spo2Percentage.toStringAsFixed(0)}%' : '--',
                      unit: '',
                      icon: CupertinoIcons.wind,
                      animationMetricType: 'spo2',
                      backgroundColor: AppColors.sky,
                      trend: bundle.spo2Percentage > 0 ? 'Healthy Range' : 'No reading',
                      onTap: () => context.push('/health/metric-detail?type=spo2'),
                    ),

                    // 5. Active & Workout Burned Calories
                    PastelStatCard(
                      label: 'Burned',
                      value: totalBurned > 0 ? totalBurned.toInt().toString() : '--',
                      unit: totalBurned > 0 ? 'kcal' : '',
                      icon: CupertinoIcons.flame_fill,
                      animationMetricType: 'burned',
                      backgroundColor: AppColors.butter,
                      trend: burnedTrend,
                      onTap: () => context.push('/health/metric-detail?type=calories'),
                    ),

                    // 6. Weight & BMI
                    PastelStatCard(
                      label: 'Weight',
                      value: data.latestWeightKg > 0 ? data.latestWeightKg.toStringAsFixed(1) : '--',
                      unit: data.latestWeightKg > 0 ? 'kg' : '',
                      icon: CupertinoIcons.gauge,
                      animationMetricType: 'weight',
                      backgroundColor: AppColors.mint,
                      trend: data.latestWeightKg > 0 ? 'Recorded' : 'Tap to log',
                      onTap: () => context.push('/health/weight-body'),
                    ),

                    // 7. Blood Pressure
                    PastelStatCard(
                      label: 'Blood Pressure',
                      value: data.latestSystolicBp != null && data.latestDiastolicBp != null
                          ? '${data.latestSystolicBp!.toInt()}/${data.latestDiastolicBp!.toInt()}'
                          : '--/--',
                      unit: data.latestSystolicBp != null ? 'mmHg' : '',
                      icon: CupertinoIcons.waveform_path_ecg,
                      animationMetricType: 'blood_pressure',
                      backgroundColor: AppColors.peach,
                      trend: data.latestSystolicBp != null ? 'Recorded' : 'Tap to log',
                      onTap: () => context.push('/health/metric-detail?type=blood_pressure'),
                    ),

                    // 8. Distance
                    PastelStatCard(
                      label: 'Distance',
                      value: distComponents.value,
                      unit: distComponents.unit,
                      icon: CupertinoIcons.location_solid,
                      animationMetricType: 'distance',
                      backgroundColor: AppColors.sky,
                      trend: 'Total movement',
                      onTap: () => context.push('/health/metric-detail?type=distance'),
                    ),

                    // 9. Blood Glucose
                    PastelStatCard(
                      label: 'Blood Glucose',
                      value: glucoseEntry != null ? glucoseEntry.value.toStringAsFixed(0) : '--',
                      unit: glucoseEntry != null ? glucoseEntry.unit : '',
                      icon: CupertinoIcons.drop_fill,
                      animationMetricType: 'blood_pressure',
                      backgroundColor: AppColors.mint,
                      trend: glucoseEntry != null
                          ? DateFormat('MMM d, h:mm a').format(glucoseEntry.measuredAt)
                          : 'Tap to log',
                      onTap: () => context.push('/health/manual-body?type=sugar'),
                    ),

                    // 10. Temperature
                    PastelStatCard(
                      label: 'Temperature',
                      value: tempEntry != null ? tempEntry.value.toStringAsFixed(1) : '--',
                      unit: tempEntry != null ? tempEntry.unit : '',
                      icon: CupertinoIcons.thermometer,
                      animationMetricType: 'sleep',
                      backgroundColor: AppColors.peach,
                      trend: tempEntry != null
                          ? DateFormat('MMM d, h:mm a').format(tempEntry.measuredAt)
                          : 'Tap to log',
                      onTap: () => context.push('/health/manual-body?type=temp'),
                    ),

                    // 11. Waist & Hip
                    PastelStatCard(
                      label: 'Waist / Hip',
                      value: (waistEntry != null || hipEntry != null)
                          ? '${waistEntry?.value.toInt() ?? '--'}/${hipEntry?.value.toInt() ?? '--'}'
                          : '--/--',
                      unit: 'cm',
                      icon: CupertinoIcons.chart_bar_alt_fill,
                      animationMetricType: 'weight',
                      backgroundColor: AppColors.butter,
                      trend: waistEntry != null
                          ? DateFormat('MMM d, h:mm a').format(waistEntry.measuredAt)
                          : 'Tap to log',
                      onTap: () => context.push('/health/manual-body?type=circumference'),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),

                // Calories In vs Out - Daily Insights & 7-Day Trend
                CaloriesInOutCard(
                  onBurnedTap: () => context.push('/health/metric-detail?type=calories'),
                  onIntakeTap: () => context.push('/food'),
                ),
                const SizedBox(height: AppSpacing.md),

                // Workouts Section
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                    boxShadow: context.appCardShadow,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.clock_fill, color: context.appInk, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                "Today's Workouts",
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: context.appInk,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () => context.push('/health/workout'),
                            child: Text(context.tr('home_view_all'), style: const TextStyle(fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                      if (data.todayWorkouts.isEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                          child: Text(
                            'No workouts logged today yet.',
                            style: TextStyle(color: context.appSlate, fontSize: 13),
                          ),
                        )
                      else
                        ...data.todayWorkouts.map(
                          (w) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: AppColors.lilac.withAlpha(context.isDarkMode ? 80 : 255),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(CupertinoIcons.bolt_fill, color: context.appInk, size: 20),
                            ),
                            title: Text(w.type, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: context.appInk)),
                            subtitle: Text('${w.durationMinutes} mins · ${w.calories.toInt()} kcal burned · ${w.source}', style: TextStyle(color: context.appSlate)),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(CupertinoIcons.pencil, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark, size: 18),
                                  tooltip: context.tr('edit'),
                                  onPressed: () {
                                    Navigator.of(context).push<void>(
                                      CupertinoPageRoute<void>(
                                        builder: (_) => WorkoutEditorPage(
                                          existingWorkout: w,
                                          onSaved: _refresh,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: Icon(CupertinoIcons.trash, color: context.appSlate, size: 18),
                                  tooltip: context.tr('delete'),
                                  onPressed: () async {
                                    final confirmed = await showCupertinoDialog<bool>(
                                      context: context,
                                      builder: (ctx) => CupertinoAlertDialog(
                                        title: Text('${context.tr('delete')}?'),
                                        content: Text('Are you sure you want to delete "${w.type}" (${w.durationMinutes} mins)?'),
                                        actions: [
                                          CupertinoDialogAction(
                                            isDefaultAction: true,
                                            onPressed: () => Navigator.pop(ctx, false),
                                            child: Text(context.tr('cancel')),
                                          ),
                                          CupertinoDialogAction(
                                            isDestructiveAction: true,
                                            onPressed: () => Navigator.pop(ctx, true),
                                            child: Text(context.tr('delete')),
                                          ),
                                        ],
                                      ),
                                    );
                                    if (confirmed == true) {
                                      await sl<HealthRepository>().softDeleteWorkoutLog(w.id);
                                      _refresh();
                                      if (context.mounted) {
                                        final messenger = ScaffoldMessenger.of(context);
                                        messenger.hideCurrentSnackBar();
                                        messenger.showSnackBar(
                                          SnackBar(
                                            content: Text('Deleted "${w.type}" workout'),
                                            duration: const Duration(seconds: 4),
                                            action: SnackBarAction(
                                              label: 'Undo',
                                              textColor: Theme.of(context).colorScheme.primary,
                                              onPressed: () async {
                                                final db = sl<AppDatabase>();
                                                await (db.update(db.workoutLogs)..where((tbl) => tbl.id.equals(w.id)))
                                                    .write(const WorkoutLogsCompanion(deleted: drift.Value(false)));
                                                _refresh();
                                              },
                                            ),
                                          ),
                                        );
                                      }
                                    }
                                  },
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).push<void>(
                                CupertinoPageRoute<void>(
                                  builder: (_) => WorkoutEditorPage(
                                    existingWorkout: w,
                                    onSaved: _refresh,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),

                // Quick Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: PillButton(
                        label: 'Manual Body Entry',
                        icon: CupertinoIcons.square_pencil,
                        variant: PillButtonVariant.secondary,
                        onPressed: () => context.push('/health/manual-body'),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(
                      child: PillButton(
                        label: 'Connect Watch',
                        icon: CupertinoIcons.radiowaves_right,
                        variant: PillButtonVariant.primary,
                        onPressed: () => context.push('/health/devices'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),
              ],
            ),
          );
        },
      ),
    );
  }
}

