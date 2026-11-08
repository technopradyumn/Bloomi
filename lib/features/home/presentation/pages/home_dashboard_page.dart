import 'dart:async';
import 'dart:ui';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/responsive/responsive_layout.dart';
import 'package:bloomi/core/utils/app_settings_helper.dart';
import 'package:bloomi/core/utils/health_calculators.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/pastel_stat_card.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/core/widgets/progress_ring.dart';
import 'package:bloomi/core/widgets/skeleton_loader.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:bloomi/features/home/presentation/bloc/home_dashboard_bloc.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:bloomi/services/health/health_service.dart';
import 'package:bloomi/services/widget/widget_sync_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeDashboardPage extends StatefulWidget {
  const HomeDashboardPage({super.key});

  @override
  State<HomeDashboardPage> createState() => _HomeDashboardPageState();
}

class _HomeDashboardPageState extends State<HomeDashboardPage>
    with WidgetsBindingObserver {
  bool _isPremium = false;
  bool _hasHealthPermission = true;
  StreamSubscription<bool>? _premiumSub;
  Timer? _realtimeStepTimer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkPremium();
    _checkHealthPermission();
    _premiumSub = sl<BillingService>().onPremiumChanged.listen((val) {
      if (mounted) setState(() => _isPremium = val);
    });
    // Real-time step counter polling while dashboard is active
    _realtimeStepTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      if (mounted) {
        setState(() {});
        sl<WidgetSyncService>().syncToNativeWidgets();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final bloc = context.read<HomeDashboardBloc>();
      if (bloc.state is HomeDashboardInitialState) {
        final user = context.read<AuthBloc>().state.user;
        final userName = user?.displayName.split(' ').first ?? 'Friend';
        bloc.add(HomeDashboardStarted(userName));
      }
    });
  }

  Future<void> _checkPremium() async {
    final prem = await sl<BillingService>().isPremium();
    if (mounted) setState(() => _isPremium = prem);
  }

  Future<void> _checkHealthPermission() async {
    try {
      final avail = await sl<HealthService>().checkHealthConnectAvailability();
      if (avail != HealthConnectAvailability.unsupportedPlatform) {
        final hasPerm = await sl<HealthService>().hasPermissions();
        if (mounted) setState(() => _hasHealthPermission = hasPerm);
      }
    } catch (_) {}
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkPremium();
      _checkHealthPermission();
      sl<HealthRepository>().getLatestBundle(forceRefresh: true).then((_) {
        if (mounted) setState(() {});
        sl<WidgetSyncService>().syncToNativeWidgets();
      });
    }
  }

  @override
  void dispose() {
    _realtimeStepTimer?.cancel();
    _premiumSub?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDashboardBloc, HomeDashboardState>(
      builder: (context, state) {
        if (state is HomeDashboardLoadingState ||
            state is HomeDashboardInitialState) {
          return Scaffold(
            backgroundColor: context.appBackground,
            body: const SafeArea(child: _DashboardSkeleton()),
          );
        }

        if (state is HomeDashboardErrorState) {
          return Scaffold(
            backgroundColor: context.appBackground,
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.error_outline_rounded,
                        size: 48,
                        color: AppColors.softOrange,
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Text(
                        'Unable to load dashboard',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        state.message,
                        style: TextStyle(color: context.appSlate),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppSpacing.md),
                      PillButton(
                        label: 'Retry',
                        onPressed: () {
                          final user = context.read<AuthBloc>().state.user;
                          final userName =
                              user?.displayName.split(' ').first ?? 'Friend';
                          context.read<HomeDashboardBloc>().add(
                            HomeDashboardStarted(userName),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }

        final data = (state as HomeDashboardLoadedState).data;

        return Scaffold(
          backgroundColor: context.appBackground,
          body: SafeArea(
            child: RefreshIndicator(
              color: AppColors.mint,
              onRefresh: () async {
                await sl<HealthRepository>().getLatestBundle(
                  forceRefresh: true,
                );
                if (!context.mounted) return;
                setState(() {});
                context.read<HomeDashboardBloc>().add(
                  const HomeDashboardRefreshRequested(),
                );
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.screenSide,
                  vertical: AppSpacing.md,
                ),
                child: ResponsiveContentWrapper(
                  maxWidth: 880,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(context, data),
                      if (!_hasHealthPermission) ...[
                        const SizedBox(height: AppSpacing.md),
                        _buildMandatoryHealthBanner(context),
                      ],
                      const SizedBox(height: AppSpacing.md),
                      _buildStatusRow(context),
                      _buildSurroundingsCard(context),
                      const SizedBox(height: AppSpacing.lg),
                      _buildHeroCalorieCard(context, data),
                      const SizedBox(height: AppSpacing.lg),
                      _buildWaterSection(context, data),
                      const SizedBox(height: AppSpacing.lg),
                      _buildHealthMetrics(context),
                      const SizedBox(height: AppSpacing.lg),
                      _buildPlanPreviewCard(context, data),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMandatoryHealthBanner(BuildContext context) {
    final isDark = context.isDarkMode;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF3F1D1D) : const Color(0xFFFEF2F2),
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        border: Border.all(color: isDark ? const Color(0xFF991B1B) : const Color(0xFFFCA5A5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF581C1C) : const Color(0xFFFEE2E2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.health_and_safety_rounded,
              color: Color(0xFFEF4444),
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Health Connect Permission Required',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: isDark ? const Color(0xFFFCA5A5) : const Color(0xFF991B1B),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Bloomi requires Health Connect permission to pull real steps, heart rate, and sync mobile home widgets in real time.',
                  style: TextStyle(
                    fontSize: 11,
                    color: isDark ? const Color(0xFFFEE2E2) : const Color(0xFF7F1D1D),
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 32,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.error,
                      foregroundColor: Theme.of(context).colorScheme.onError,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    ),
                    onPressed: () async {
                      final granted = await sl<HealthService>().requestPermissions();
                      if (granted) {
                        if (!context.mounted) return;
                        BloomiToast.show(context, message: 'Health Connect connected! ✨');
                        await sl<HealthRepository>().getLatestBundle(forceRefresh: true);
                        await sl<WidgetSyncService>().syncToNativeWidgets();
                        await _checkHealthPermission();
                      } else {
                        await AppSettingsHelper.openHealthConnectSettings();
                      }
                    },
                    child: const Text('Allow Health Connect', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, HomeDashboardEntity data) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.greeting,
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: context.appInk,
                  height: 1.15,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Ready for a mindful day? ✨',
                style: TextStyle(fontSize: 13, color: context.appSlate),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () => context.push('/home/quick-add'),
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: context.appSurface,
              shape: BoxShape.circle,
              boxShadow: context.appCardShadow,
            ),
            child: Icon(
              Icons.add_rounded,
              color: context.appInk,
              size: 22,
            ),
          ),
          tooltip: 'Quick Add',
        ),
        const SizedBox(width: AppSpacing.xs),
        IconButton(
          onPressed: () => context.push('/notifications'),
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: context.appSurface,
              shape: BoxShape.circle,
              boxShadow: context.appCardShadow,
            ),
            child: Icon(
              Icons.notifications_none_rounded,
              color: context.appInk,
              size: 22,
            ),
          ),
          tooltip: 'Notifications',
        ),
      ],
    );
  }

  Widget _buildStatusRow(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => context.push('/surroundings'),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSpacing.chipRadius),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.mint.withAlpha(context.isDarkMode ? 70 : 50),
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSpacing.chipRadius),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.my_location_rounded, size: 14, color: context.appInk),
                const SizedBox(width: 5),
                Text(
                  'Live GPS',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: context.appInk,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSurroundingsCard(BuildContext context) {
    return FutureBuilder<SurroundingsEntity?>(
      future: sl<SurroundingsRepository>().getSurroundingsData(),
      builder: (context, snapshot) {
        final surroundings = snapshot.data;
        if (surroundings == null) {
          return const SizedBox.shrink();
        }

        return Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: AppSpacing.sm),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSpacing.cardRadius),
            ),
            boxShadow: context.appCardShadow,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => context.push('/surroundings'),
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSpacing.cardRadius),
              ),
              splashColor: AppColors.sky.withAlpha(50),
              highlightColor: AppColors.sky.withAlpha(20),
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppColors.butter.withAlpha(context.isDarkMode ? 80 : 255),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            surroundings.weatherIcon,
                            size: 28,
                            color: context.appInk,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${surroundings.temperatureC.round()}°C',
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w800,
                                  fontSize: 28,
                                  height: 1.1,
                                  color: context.appInk,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                surroundings.weatherDescription,
                                softWrap: true,
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  height: 1.3,
                                  color: context.appInk,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 24,
                          color: context.appSlate,
                        ),
                      ],
                    ),

                    const SizedBox(height: AppSpacing.md),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _infoChip(
                          icon: Icons.thermostat_rounded,
                          text: 'Feels like ${surroundings.feelsLikeC.round()}°C',
                          color: context.appSlate,
                        ),
                        _infoChip(
                          icon: Icons.location_on_rounded,
                          text: surroundings.coordinatesDisplay,
                          color: context.appSlate,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: surroundings.aqiColor.withAlpha(context.isDarkMode ? 65 : 45),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: surroundings.aqiColor.withAlpha(120),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.air_rounded,
                                size: 14,
                                color: surroundings.aqiColor,
                              ),
                              const SizedBox(width: 6),
                              Flexible(
                                child: Text(
                                  'AQI ${surroundings.aqi} · ${surroundings.aqiLabel}',
                                  softWrap: true,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12,
                                    color: surroundings.aqiColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: AppSpacing.md),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.sky.withAlpha(context.isDarkMode ? 60 : 30),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 1),
                            child: Icon(
                              Icons.wb_twilight_rounded,
                              size: 18,
                              color: AppColors.sky,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              surroundings.kindnessTips.first,
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 13,
                                height: 1.4,
                                fontWeight: FontWeight.w600,
                                color: context.appInk,
                              ),
                            ),
                          ),
                        ],
                      ),
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

  Widget _infoChip({
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withAlpha(25),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              text,
              softWrap: true,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroCalorieCard(BuildContext context, HomeDashboardEntity data) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const HealthMetricAnimation(metricType: 'calories', size: 18),
                        const SizedBox(width: 6),
                        Text(
                          'CALORIES REMAINING',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: context.appSlate,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          data.caloriesRemaining.toInt().toString(),
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: context.appInk,
                            height: 1.0,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'kcal',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: context.appSlate,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Eaten: ${data.consumedCalories.toInt()} / ${data.targetCalories.toInt()} kcal',
                      style: TextStyle(
                        fontSize: 12,
                        color: context.appSlate,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              ProgressRing(
                progress: data.calorieProgress,
                currentValue: data.consumedCalories,
                targetValue: data.targetCalories,
                label: 'Calories',
                size: 96,
                strokeWidth: 9,
                ringColor: AppColors.mint,
                backgroundColor: AppColors.mint.withAlpha(50),
                child: MascotWidget(state: data.mascotState, size: 52),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Divider(height: 1, color: context.appDivider),
          const SizedBox(height: AppSpacing.md),
          MacroBars(
            protein: data.protein,
            carbs: data.carbs,
            fat: data.fat,
            fibre: data.fibre,
          ),
        ],
      ),
    );
  }

  Widget _buildWaterSection(BuildContext context, HomeDashboardEntity data) {
    final progress = data.waterProgress.clamp(0.0, 1.0);
    final percent = (progress * 100).round();
    final remainingMl =
    (data.targetWaterMl - data.consumedWaterMl).clamp(0, data.targetWaterMl).toInt();
    final goalReached = remainingMl == 0;

    return Material(
      color: context.appSurface,
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          HapticFeedback.lightImpact();
          context.push('/food/water');
        },
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        splashColor: AppColors.sky.withAlpha(50),
        highlightColor: AppColors.sky.withAlpha(20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            boxShadow: context.appCardShadow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColors.sky.withAlpha(45),
                      shape: BoxShape.circle,
                    ),
                    child: HealthMetricAnimation(
                      metricType: 'water',
                      size: 30,
                      progress: progress,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hydration',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: context.appInk,
                          ),
                        ),
                        Text(
                          'Tap for Water Tracker 💧',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: context.appSlate,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.sky.withAlpha(45),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '$percent%',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: context.appInk,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.chevron_right_rounded,
                    size: 20,
                    color: context.appSlate,
                  ),
                ],
              ),

              const SizedBox(height: AppSpacing.md),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${data.consumedWaterMl}',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontSize: 28,
                        height: 1.1,
                        fontWeight: FontWeight.w800,
                        color: context.appInk,
                      ),
                    ),
                    TextSpan(
                      text: ' / ${data.targetWaterMl.toInt()} ml',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: context.appSlate,
                      ),
                    ),
                  ],
                ),
                softWrap: true,
              ),

              const SizedBox(height: AppSpacing.sm),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: AppColors.sky.withAlpha(50),
                  valueColor: const AlwaysStoppedAnimation<Color>(AppColors.sky),
                  minHeight: 12,
                ),
              ),

              const SizedBox(height: AppSpacing.sm),
              Text(
                goalReached
                    ? 'Daily goal reached 🎉'
                    : '$remainingMl ml to daily goal',
                softWrap: true,
                style: TextStyle(
                  fontSize: 13,
                  height: 1.3,
                  fontWeight: FontWeight.w600,
                  color: context.appSlate,
                ),
              ),

              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  if (data.consumedWaterMl > 0) ...[
                    Expanded(
                      child: PillButton(
                        label: '-250 ml',
                        variant: PillButtonVariant.secondary,
                        height: 44,
                        onPressed: () {
                          final toSubtract = data.consumedWaterMl >= 250
                              ? 250
                              : data.consumedWaterMl;
                          context.read<HomeDashboardBloc>().add(
                            HomeDashboardWaterQuickLogged(-toSubtract),
                          );
                          BloomiToast.show(
                            context,
                            message: 'Removed $toSubtract ml of water',
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                  ],
                  Expanded(
                    child: PillButton(
                      label: '+250 ml 💧',
                      variant: PillButtonVariant.primary,
                      height: 44,
                      onPressed: () {
                        context.read<HomeDashboardBloc>().add(
                          const HomeDashboardWaterQuickLogged(250),
                        );
                        BloomiToast.show(
                          context,
                          message: 'Added 250 ml of water 💧',
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatNumber(int n) {
    return n.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
  }

  Widget _buildHealthMetrics(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: Future.wait([
        sl<HealthRepository>().getLatestBundle(),
        sl<HealthRepository>().getStepTarget(),
      ]),
      builder: (context, snapshot) {
        final bundle = (snapshot.data != null && snapshot.data!.isNotEmpty)
            ? snapshot.data![0] as HealthDataBundleEntity
            : null;
        final targetSteps = (snapshot.data != null && snapshot.data!.length > 1)
            ? snapshot.data![1] as int
            : 10000;
        final stepsStr = (bundle != null && bundle.steps > 0)
            ? '${bundle.steps}'
            : '--';
        final double distanceMeters = (bundle != null && bundle.distanceMeters > 0)
            ? bundle.distanceMeters
            : ((bundle?.steps ?? 0) * 0.762);
        final stepsTrend = (bundle != null && bundle.steps > 0)
            ? HealthCalculators.formatDistance(distanceMeters)
            : 'Tap to sync';

        final hrStr = (bundle != null && bundle.heartRate > 0)
            ? '${bundle.heartRate.toInt()}'
            : '--';
        final hrTrend = (bundle != null && bundle.heartRate > 0)
            ? 'Resting: ${bundle.restingHeartRate > 0 ? bundle.restingHeartRate.toInt() : bundle.heartRate.toInt()} bpm'
            : 'Tap to measure';

        final sleepHours =
            (bundle != null && bundle.sleepDuration.inMinutes > 0)
            ? (bundle.sleepDuration.inMinutes / 60.0).toStringAsFixed(1)
            : '--';
        final sleepTrend =
            (bundle != null && bundle.sleepDuration.inMinutes > 0)
            ? 'Tracked last night'
            : 'Connect watch or Health Connect';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Activity & Vitals',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: context.appInk,
                  ),
                ),
                TextButton(
                  onPressed: () => context.push('/health'),
                  style: TextButton.styleFrom(
                    foregroundColor: context.appInk,
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Details',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.chevron_right_rounded, size: 18),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Row(
              children: [
                Expanded(
                  child: PastelStatCard(
                    backgroundColor: AppColors.mint.withAlpha(130),
                    icon: Icons.directions_walk_rounded,
                    animationMetricType: 'steps',
                    label: 'Steps',
                    value: stepsStr,
                    unit: '/ ${_formatNumber(targetSteps)}',
                    trend: stepsTrend,
                    onTap: () async {
                      if (bundle == null || bundle.steps == 0) {
                        final hasPerm = await sl<HealthRepository>()
                            .hasPermissions();
                        if (!hasPerm) {
                          await sl<HealthRepository>().requestPermissions();
                        }
                        await sl<HealthRepository>().getLatestBundle(
                          forceRefresh: true,
                        );
                        if (!mounted) return;
                        setState(() {});
                      }
                      if (context.mounted) {
                        await context.push('/health/metric-detail?type=steps');
                      }
                    },
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: PastelStatCard(
                    backgroundColor: AppColors.peach.withAlpha(130),
                    icon: Icons.favorite_rounded,
                    animationMetricType: 'heart_rate',
                    label: 'Heart Rate',
                    value: hrStr,
                    unit: 'bpm',
                    trend: hrTrend,
                    onTap: () =>
                        context.push('/health/metric-detail?type=heart_rate'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            PastelStatCard(
              backgroundColor: AppColors.lilac.withAlpha(130),
              icon: Icons.bedtime_rounded,
              animationMetricType: 'sleep',
              label: 'Sleep',
              value: sleepHours,
              unit: 'hrs',
              trend: sleepTrend,
              onTap: () => context.push('/health/sleep'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPlanPreviewCard(BuildContext context, HomeDashboardEntity data) {
    final baseCard = Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSpacing.cardRadius),
        ),
        boxShadow: context.appCardShadow,
        border: Border.all(color: AppColors.mint.withAlpha(90)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.mint.withAlpha(50),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.flag_rounded,
              color: context.appInk,
              size: 22,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Target Plan",
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: context.appInk,
                  ),
                ),
                Text(
                  '${data.targetCalories.toInt()} kcal · ${data.targetWaterMl.toInt()} ml water · Tap to view full plan',
                  style: TextStyle(fontSize: 12, color: context.appSlate),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: context.appInk,
          ),
        ],
      ),
    );

    if (_isPremium) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => context.push('/plan'),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSpacing.cardRadius),
          ),
          child: baseCard,
        ),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      child: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 4.5, sigmaY: 4.5),
            child: baseCard,
          ),
          Positioned.fill(
            child: Material(
              color: context.isDarkMode ? context.appSurface.withAlpha(210) : context.appSurface.withAlpha(190),
              child: InkWell(
                onTap: () => context.push('/settings/premium'),
                borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: 8),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.softOrange.withAlpha(40),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.lock_rounded, color: AppColors.softOrange, size: 20),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today's Target Plan 🔒",
                              style: TextStyle(
                                fontFamily: 'Baloo 2',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: context.appInk,
                              ),
                            ),
                            Text(
                              'Upgrade to unlock personalized daily targets & AI plan',
                              style: TextStyle(fontSize: 11, color: context.appSlate),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: context.appInk,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Unlock 👑',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: context.appSurface,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DashboardSkeleton extends StatelessWidget {
  const _DashboardSkeleton();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(AppSpacing.lg),
      child: Column(
        children: [
          SkeletonLoader(height: 60),
          SizedBox(height: AppSpacing.md),
          SkeletonLoader(height: 36),
          SizedBox(height: AppSpacing.md),
          SkeletonLoader(height: 200),
          SizedBox(height: AppSpacing.md),
          SkeletonLoader(height: 100),
        ],
      ),
    );
  }
}
