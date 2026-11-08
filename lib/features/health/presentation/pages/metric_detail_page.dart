import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/step_target_sheet.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MetricDetailPage extends StatefulWidget {
  final String metricType;

  const MetricDetailPage({
    super.key,
    this.metricType = 'steps',
  });

  @override
  State<MetricDetailPage> createState() => _MetricDetailPageState();
}

class _MetricDetailPageState extends State<MetricDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _ranges = ['Day', 'Week', 'Month', 'Year'];
  HealthDataBundleEntity? _bundle;
  bool _isLoading = true;
  int _stepTarget = 10000;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _ranges.length, vsync: this);
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final b = await sl<HealthRepository>().getLatestBundle();
      final target = await sl<HealthRepository>().getStepTarget();
      if (mounted) {
        setState(() {
          _bundle = b;
          _stepTarget = target;
          _isLoading = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _openStepTargetModal() async {
    await showStepTargetModal(
      context,
      currentTarget: _stepTarget,
      onTargetSaved: (newTarget) async {
        await sl<HealthRepository>().updateStepTarget(newTarget);
        if (mounted) {
          setState(() => _stepTarget = newTarget);
        }
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String _getSourceLabel() {
    final type = widget.metricType.toLowerCase();
    if (type == 'steps') {
      return _bundle?.stepsSourceLabel ?? 'Health Connect';
    } else if (type == 'distance') {
      return _bundle?.distanceSourceLabel ?? 'Health Connect';
    } else if (type == 'calories') {
      return _bundle?.caloriesSourceLabel ?? 'Health Connect';
    }
    return _bundle?.primarySource ?? 'Health Connect';
  }

  Map<String, dynamic> _getMetricConfig() {
    final b = _bundle;

    switch (widget.metricType.toLowerCase()) {
      case 'heart_rate':
        final hr = b?.heartRate ?? 0.0;
        final minHr = b?.minHeartRate ?? 0.0;
        final maxHr = b?.maxHeartRate ?? 0.0;
        final avgHr = b?.restingHeartRate ?? hr;
        return {
          'title': 'Heart Rate',
          'unit': 'BPM',
          'color': AppColors.peach,
          'icon': Icons.favorite_rounded,
          'isCumulative': false,
          'min': minHr,
          'avg': avgHr,
          'max': maxHr,
          'today': hr,
          'total': null,
          'chartType': 'line',
          'description':
              'Your heart rate shows how hard your heart works throughout the day. Normal resting heart rate for adults ranges between 60 to 100 BPM.',
        };
      case 'spo2':
        final spo2 = b?.spo2Percentage ?? 0.0;
        return {
          'title': 'Blood Oxygen (SpO2)',
          'unit': '%',
          'color': AppColors.sky,
          'icon': Icons.air_rounded,
          'isCumulative': false,
          'min': spo2,
          'avg': spo2,
          'max': spo2,
          'today': spo2,
          'total': null,
          'chartType': 'line',
          'description':
              'Pulse oximetry estimates the percentage of oxygen-carrying hemoglobin in your blood. Typical healthy readings are between 95% and 100%.',
        };
      case 'calories':
        final kcal = b?.activeCalories ?? 0.0;
        return {
          'title': 'Active Calories',
          'unit': 'kcal',
          'color': AppColors.butter,
          'icon': Icons.local_fire_department_rounded,
          'isCumulative': true,
          'min': 0.0,
          'avg': kcal,
          'max': kcal,
          'today': kcal,
          'total': kcal,
          'chartType': 'bar',
          'description':
              'Active calories reflect the energy burned during movement and workouts above your baseline resting metabolic rate.',
        };
      case 'distance':
        final double distMeters = (b != null && b.distanceMeters > 0)
            ? b.distanceMeters
            : ((b?.steps ?? 0) * 0.762);
        final isMeters = distMeters < 1000.0;
        final distVal = isMeters ? distMeters.roundToDouble() : (distMeters / 1000.0);
        final unitStr = isMeters ? 'm' : 'km';
        return {
          'title': 'Distance Walked',
          'unit': unitStr,
          'color': AppColors.sky,
          'icon': Icons.place_rounded,
          'isCumulative': true,
          'min': 0.0,
          'avg': distVal,
          'max': distVal,
          'today': distVal,
          'total': distVal,
          'chartType': 'bar',
          'description':
              'Distance measured by your watch GPS or estimated from phone step cadence. Great for tracking daily mobility.',
        };
      case 'blood_pressure':
        final sys = b?.systolicBp ?? 0.0;
        final dia = b?.diastolicBp ?? 0.0;
        return {
          'title': 'Blood Pressure',
          'unit': 'mmHg',
          'color': AppColors.peach,
          'icon': Icons.speed_rounded,
          'isCumulative': false,
          'min': dia,
          'avg': sys,
          'max': sys,
          'today': sys,
          'total': null,
          'chartType': 'line',
          'description':
              'Blood pressure measures systolic over diastolic pressure. Typical optimal wellness resting blood pressure is near 120/80 mmHg.',
        };
      case 'steps':
      default:
        final steps = (b?.steps ?? 0).toDouble();
        return {
          'title': 'Daily Steps',
          'unit': 'steps',
          'color': AppColors.mint,
          'icon': Icons.directions_walk_rounded,
          'isCumulative': true,
          'min': 0.0,
          'avg': steps,
          'max': steps,
          'today': steps,
          'total': steps,
          'chartType': 'bar',
          'description':
              'Daily steps keep your circulation active and support cardiovascular endurance. A steady 6,000 to 10,000 steps maintains good vitality.',
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: context.appBackground,
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        body: const Center(child: CircularProgressIndicator(color: AppColors.mint)),
      );
    }

    final cfg = _getMetricConfig();
    final String title = cfg['title'] as String;
    final String unit = cfg['unit'] as String;
    final Color color = cfg['color'] as Color;
    final bool isCumulative = cfg['isCumulative'] as bool;
    final double minVal = cfg['min'] as double;
    final double avgVal = cfg['avg'] as double;
    final double maxVal = cfg['max'] as double;
    final double? totalVal = cfg['total'] as double?;
    final double todayVal = (cfg['today'] as num?)?.toDouble() ?? 0.0;
    final String chartType = cfg['chartType'] as String;
    final String description = cfg['description'] as String;

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          // Range Tabs
          Container(
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              border: Border.all(color: context.appBorderColor),
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: color.withAlpha(context.isDarkMode ? 120 : 180),
                borderRadius: const BorderRadius.all(Radius.circular(24)),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: context.appInk,
              unselectedLabelColor: context.appSlate,
              labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              tabs: _ranges.map((r) => Tab(text: r)).toList(),
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          if (widget.metricType.toLowerCase() == 'steps') ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: 12),
              decoration: BoxDecoration(
                color: context.appSurface,
                borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                boxShadow: context.appCardShadow,
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.mint.withAlpha(120),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.flag_rounded, color: context.appInk, size: 20),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daily Step Target',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: context.appSlate,
                          ),
                        ),
                        Text(
                          '$_stepTarget steps',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: context.appInk,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: _openStepTargetModal,
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppColors.mint,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.edit_outlined, size: 14, color: context.appInk),
                          const SizedBox(width: 4),
                          Text(
                            'Change Goal',
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
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
          ],

          // Primary Average Stat Card
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
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(color: color.withAlpha(80), shape: BoxShape.circle),
                      child: HealthMetricAnimation(
                        metricType: widget.metricType,
                        size: 26,
                        color: context.appInk,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Average ($unit)',
                            style: TextStyle(fontSize: 12, color: context.appSlate, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            avgVal % 1 == 0 ? avgVal.toInt().toString() : avgVal.toStringAsFixed(1),
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w800,
                              fontSize: 32,
                              color: context.appInk,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: context.appBackground,
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        border: Border.all(color: context.appBorderColor),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.sensors_rounded,
                            size: 14,
                            color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            _getSourceLabel(),
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: context.appInk,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),

                // Chart Container
                SizedBox(
                  height: 190,
                  child: chartType == 'bar'
                      ? _buildBarChart(context, color, todayVal)
                      : _buildLineChart(context, color, minVal, maxVal, todayVal),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Min / Avg / Max / Total Row
          Row(
            children: [
              Expanded(
                child: _buildSummaryBox(
                  context,
                  'Minimum',
                  minVal % 1 == 0 ? minVal.toInt().toString() : minVal.toStringAsFixed(1),
                  unit,
                  AppColors.sky,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: _buildSummaryBox(
                  context,
                  'Average',
                  avgVal % 1 == 0 ? avgVal.toInt().toString() : avgVal.toStringAsFixed(1),
                  unit,
                  AppColors.mint,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: _buildSummaryBox(
                  context,
                  'Maximum',
                  maxVal % 1 == 0 ? maxVal.toInt().toString() : maxVal.toStringAsFixed(1),
                  unit,
                  AppColors.peach,
                ),
              ),
              if (isCumulative && totalVal != null) ...[
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: _buildSummaryBox(
                    context,
                    'Total',
                    totalVal % 1 == 0 ? totalVal.toInt().toString() : totalVal.toStringAsFixed(0),
                    unit,
                    AppColors.butter,
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: AppSpacing.md),

          // Device & Source Attribution Card
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              boxShadow: context.appCardShadow,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.devices_other_rounded,
                  size: 22,
                  color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data Source',
                        style: TextStyle(fontSize: 12, color: context.appSlate, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Samsung Galaxy Watch via Health Connect',
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: context.appInk),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Live',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          // Educational Description Card
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: context.appBackground,
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              border: Border.all(color: context.appBorderColor),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.lightbulb_outline_rounded, size: 18, color: context.appSlate),
                    const SizedBox(width: 6),
                    Text(
                      'About this metric',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: context.appInk),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: TextStyle(fontSize: 12, color: context.appSlate, height: 1.4),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  Widget _buildSummaryBox(BuildContext context, String label, String value, String unit, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
        border: Border.all(color: color.withAlpha(120)),
        boxShadow: context.appCardShadow,
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 10, color: context.appSlate, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: context.appInk),
          ),
          Text(
            unit,
            style: TextStyle(fontSize: 9, color: context.appSlate),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildBarChart(BuildContext context, Color color, double todayVal) {
    if (todayVal == 0) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_walk_rounded, size: 36, color: color.withAlpha(160)),
            const SizedBox(height: 8),
            Text(
              'No activity points recorded today yet.',
              style: TextStyle(color: context.appSlate, fontSize: 13, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              'Connect Google Health Connect or your wearable to auto-sync.',
              style: TextStyle(color: context.appSlate, fontSize: 11),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    final days = ['M', 'T', 'W', 'T', 'F', 'S', 'Today'];
    final values = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, todayVal];

    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: (todayVal * 1.25).clamp(100.0, 50000.0),
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem(
                rod.toY % 1 == 0 ? '${rod.toY.toInt()}' : rod.toY.toStringAsFixed(1),
                TextStyle(color: context.appInk, fontWeight: FontWeight.bold),
              );
            },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (val, meta) {
                final idx = val.toInt();
                if (idx >= 0 && idx < days.length) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(days[idx], style: TextStyle(fontSize: 11, color: context.appSlate)),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
          leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        barGroups: List.generate(values.length, (i) {
          final isToday = i == values.length - 1;
          return BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                toY: values[i],
                color: isToday ? color : color.withAlpha(80),
                width: 18,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildLineChart(BuildContext context, Color color, double min, double max, double todayVal) {
    if (todayVal == 0) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.monitor_heart_outlined, size: 36, color: color.withAlpha(160)),
            const SizedBox(height: 8),
            Text(
              'No vitals data recorded today yet.',
              style: TextStyle(color: context.appSlate, fontSize: 13, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              'Connect Google Health Connect or record manually.',
              style: TextStyle(color: context.appSlate, fontSize: 11),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    final spots = [
      FlSpot(0, min > 0 ? min : todayVal),
      FlSpot(1, todayVal),
      FlSpot(2, max > 0 ? max : todayVal),
    ];

    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            color: color,
            barWidth: 3.5,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: true),
            belowBarData: BarAreaData(
              show: true,
              color: color.withAlpha(45),
            ),
          ),
        ],
      ),
    );
  }
}
