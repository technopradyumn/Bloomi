import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class SleepDetailPage extends StatefulWidget {
  const SleepDetailPage({super.key});

  @override
  State<SleepDetailPage> createState() => _SleepDetailPageState();
}

class _SleepDetailPageState extends State<SleepDetailPage> {
  HealthDataBundleEntity? _bundle;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSleepData();
  }

  Future<void> _loadSleepData() async {
    try {
      final bundle = await sl<HealthRepository>().getLatestBundle();
      if (mounted) {
        setState(() {
          _bundle = bundle;
          _isLoading = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: context.appBackground,
        appBar: _buildAppBar(context),
        body: const Center(
          child: CircularProgressIndicator(color: AppColors.lilac),
        ),
      );
    }

    final bundle = _bundle;
    final totalDuration = bundle?.sleepDuration ?? Duration.zero;
    final hasData = totalDuration.inMinutes > 0;

    final totalHours = totalDuration.inMinutes / 60.0;
    final sleepScore = hasData
        ? ((totalHours / 8.0) * 100).clamp(20, 99).toInt()
        : 0;

    final timeFmt = DateFormat('h:mm a');
    final bedtimeStr = bundle?.sleepBedtime != null
        ? timeFmt.format(bundle!.sleepBedtime!)
        : '--';
    final wakeTimeStr = bundle?.sleepWakeTime != null
        ? timeFmt.format(bundle!.sleepWakeTime!)
        : '--';

    // Sleep stages breakdown
    final deepMinutes = bundle?.sleepStages['deep']?.inMinutes ??
        (hasData ? (totalDuration.inMinutes * 0.22).round() : 0);
    final remMinutes = bundle?.sleepStages['rem']?.inMinutes ??
        (hasData ? (totalDuration.inMinutes * 0.20).round() : 0);
    final lightMinutes = bundle?.sleepStages['light']?.inMinutes ??
        (hasData ? (totalDuration.inMinutes * 0.50).round() : 0);
    final awakeMinutes = bundle?.sleepStages['awake']?.inMinutes ??
        (hasData ? (totalDuration.inMinutes * 0.08).round() : 0);
    final totalStageMinutes =
        deepMinutes + remMinutes + lightMinutes + awakeMinutes;

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: _buildAppBar(context),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          // Primary Sleep Score Card
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              boxShadow: context.appCardShadow,
            ),
            child: Row(
              children: [
                // Circular Sleep Score Gauge
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.lilac, width: 6),
                    color: AppColors.lilac.withAlpha(60),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          hasData ? '$sleepScore' : '--',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: context.appInk,
                            height: 1,
                          ),
                        ),
                        Text(
                          '/ 100',
                          style: TextStyle(
                            fontSize: 10,
                            color: context.appSlate,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Sleep',
                            style: TextStyle(
                              fontSize: 13,
                              color: context.appSlate,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const HealthMetricAnimation(metricType: 'sleep', size: 30),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        hasData
                            ? '${totalDuration.inHours}h ${totalDuration.inMinutes % 60}m'
                            : '--',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w800,
                          fontSize: 28,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: (hasData ? AppColors.mint : AppColors.peach)
                              .withAlpha(120),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Text(
                          hasData
                              ? (totalHours >= 7.0
                                  ? 'Optimal restorative sleep'
                                  : 'Sleep duration below goal')
                              : 'No sleep recorded yet',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
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
          const SizedBox(height: AppSpacing.md),

          // Bedtime & Wake Time Row
          Row(
            children: [
              Expanded(
                child: _buildTimeBox(context, 'Bedtime', bedtimeStr,
                    Icons.nightlight_round, AppColors.lilac),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: _buildTimeBox(context, 'Wake Time', wakeTimeStr,
                    Icons.wb_sunny_rounded, AppColors.butter),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),

          if (!hasData) ...[
            Container(
              padding: const EdgeInsets.all(AppSpacing.lg),
              decoration: BoxDecoration(
                color: context.appSurface,
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                boxShadow: context.appCardShadow,
              ),
              child: Column(
                children: [
                  const Icon(Icons.nightlight_outlined,
                      size: 40, color: AppColors.lilac),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'No Sleep Sessions Synced',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Wear your smartwatch or fitness tracker to bed. Bloomi syncs automatic sleep stages and duration via Health Connect.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: context.appSlate,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  PillButton(
                    label: 'Connect Health Tracker',
                    onPressed: () => context.push('/health/devices'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),
          ] else ...[
            // Sleep Stages Visual Bar & Legend
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: context.appSurface,
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                boxShadow: context.appCardShadow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sleep Stages',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),

                  // Multi-colored segmented bar
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: SizedBox(
                      height: 24,
                      child: Row(
                        children: [
                          if (deepMinutes > 0)
                            Expanded(
                              flex: deepMinutes,
                              child: Container(
                                  color: const Color(0xFF6B4EE6),
                                  child: const SizedBox()),
                            ),
                          if (remMinutes > 0)
                            Expanded(
                              flex: remMinutes,
                              child: Container(
                                  color: const Color(0xFF8B5CF6),
                                  child: const SizedBox()),
                            ),
                          if (lightMinutes > 0)
                            Expanded(
                              flex: lightMinutes,
                              child: Container(
                                  color: const Color(0xFFA78BFA),
                                  child: const SizedBox()),
                            ),
                          if (awakeMinutes > 0)
                            Expanded(
                              flex: awakeMinutes,
                              child: Container(
                                  color: const Color(0xFFFDBA74),
                                  child: const SizedBox()),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // Stages Legend
                  _buildStageTile(
                    context,
                    'Deep Sleep',
                    '${deepMinutes ~/ 60}h ${deepMinutes % 60}m',
                    totalStageMinutes > 0
                        ? '${((deepMinutes / totalStageMinutes) * 100).toInt()}%'
                        : '0%',
                    const Color(0xFF6B4EE6),
                    'Physical recovery & tissue renewal',
                  ),
                  Divider(height: 12, color: context.appBorderColor),
                  _buildStageTile(
                    context,
                    'REM Sleep',
                    '${remMinutes ~/ 60}h ${remMinutes % 60}m',
                    totalStageMinutes > 0
                        ? '${((remMinutes / totalStageMinutes) * 100).toInt()}%'
                        : '0%',
                    const Color(0xFF8B5CF6),
                    'Dreaming & memory consolidation',
                  ),
                  Divider(height: 12, color: context.appBorderColor),
                  _buildStageTile(
                    context,
                    'Light Sleep',
                    '${lightMinutes ~/ 60}h ${lightMinutes % 60}m',
                    totalStageMinutes > 0
                        ? '${((lightMinutes / totalStageMinutes) * 100).toInt()}%'
                        : '0%',
                    const Color(0xFFA78BFA),
                    'Baseline restful phase',
                  ),
                  Divider(height: 12, color: context.appBorderColor),
                  _buildStageTile(
                    context,
                    'Awake',
                    '${awakeMinutes}m',
                    totalStageMinutes > 0
                        ? '${((awakeMinutes / totalStageMinutes) * 100).toInt()}%'
                        : '0%',
                    const Color(0xFFFDBA74),
                    'Brief awakenings throughout night',
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),

            // Weekly Trend Chart
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: context.appSurface,
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                boxShadow: context.appCardShadow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sleep Log (Hours)',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: context.appInk),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  SizedBox(
                    height: 140,
                    child: BarChart(
                      BarChartData(
                        maxY: 12,
                        alignment: BarChartAlignment.spaceAround,
                        gridData: const FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (val, _) {
                                const days = [
                                  'M',
                                  'T',
                                  'W',
                                  'T',
                                  'F',
                                  'S',
                                  'Today'
                                ];
                                final i = val.toInt();
                                if (i >= 0 && i < days.length) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Text(days[i],
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: context.appSlate)),
                                  );
                                }
                                return const SizedBox();
                              },
                            ),
                          ),
                          leftTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                        ),
                        barGroups: [
                          _makeBar(0, 0.0),
                          _makeBar(1, 0.0),
                          _makeBar(2, 0.0),
                          _makeBar(3, 0.0),
                          _makeBar(4, 0.0),
                          _makeBar(5, 0.0),
                          _makeBar(6, totalHours, isCurrent: true),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),
          ],

          // Sleep Hygiene Tip Card
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.lilac.withAlpha(50),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              border: Border.all(color: AppColors.lilac.withAlpha(120)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.bedtime_rounded,
                  color: context.isDarkMode ? const Color(0xFFA78BFA) : const Color(0xFF6B4EE6),
                  size: 22,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gentle Sleep Tip',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: context.appInk),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Keeping your wake time consistent within 30 minutes every morning strengthens your circadian rhythm and deepens sleep architecture.',
                        style: TextStyle(
                            fontSize: 12, color: context.appSlate, height: 1.4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Sleep Detail',
        style: TextStyle(
          fontFamily: 'Baloo 2',
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: context.appInk,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  Widget _buildTimeBox(
      BuildContext context, String label, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
        boxShadow: context.appCardShadow,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Icon(icon, color: context.appInk, size: 18),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label,
                  style: TextStyle(
                      fontSize: 11,
                      color: context.appSlate,
                      fontWeight: FontWeight.w600)),
              Text(value,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: context.appInk)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStageTile(
      BuildContext context, String title, String duration, String pct, Color color, String desc) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: context.appInk)),
              Text(desc,
                  style: TextStyle(fontSize: 11, color: context.appSlate)),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(duration,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: context.appInk)),
            Text(pct,
                style: TextStyle(fontSize: 11, color: context.appSlate)),
          ],
        ),
      ],
    );
  }

  BarChartGroupData _makeBar(int x, double y, {bool isCurrent = false}) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: isCurrent ? const Color(0xFF6B4EE6) : const Color(0xFFA78BFA),
          width: 16,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
        ),
      ],
    );
  }
}
