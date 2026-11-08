import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class WeightBodyPage extends StatelessWidget {
  const WeightBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = sl<HealthRepository>();

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Weight & Body',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.add_rounded, color: context.appInk),
            tooltip: 'Add Measurement',
            onPressed: () => context.push('/health/manual-body'),
          ),
        ],
      ),
      body: StreamBuilder<List<BodyEntry>>(
        stream: repo.watchBodyEntries(),
        builder: (context, snapshot) {
          final entries = snapshot.data ?? [];
          final weightEntries =
              entries.where((e) => e.type == 'weight').toList();

          final hasWeight = weightEntries.isNotEmpty;
          final currentWeight = hasWeight ? weightEntries.first.value : 0.0;

          const heightM = 1.70;
          final bmi = hasWeight ? currentWeight / (heightM * heightM) : 0.0;
          String bmiCategory = hasWeight ? 'Healthy Weight' : 'No data';
          Color bmiColor =
              hasWeight ? (context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E)) : context.appSlate;
          if (hasWeight) {
            if (bmi < 18.5) {
              bmiCategory = 'Underweight';
              bmiColor = AppColors.sky;
            } else if (bmi >= 25.0 && bmi < 30.0) {
              bmiCategory = 'Overweight';
              bmiColor = context.isDarkMode ? const Color(0xFFFBBF24) : const Color(0xFFD97706);
            } else if (bmi >= 30.0) {
              bmiCategory = 'High BMI';
              bmiColor = AppColors.peach;
            }
          }

          final waistEntry =
              entries.where((e) => e.type == 'waist').firstOrNull;
          final hipEntry = entries.where((e) => e.type == 'hip').firstOrNull;
          final chestEntry =
              entries.where((e) => e.type == 'chest').firstOrNull;

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              // Main Weight & BMI Card
              Container(
                padding: const EdgeInsets.all(AppSpacing.lg),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppSpacing.cardRadius)),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const HealthMetricAnimation(metricType: 'weight', size: 36),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Current Weight',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: context.appSlate,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      hasWeight
                                          ? currentWeight.toStringAsFixed(1)
                                          : '--',
                                      style: TextStyle(
                                        fontFamily: 'Baloo 2',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 34,
                                        color: context.appInk,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      'kg',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: context.appSlate,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        // BMI Badge
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: bmiColor.withAlpha(40),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color: bmiColor.withAlpha(100)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const HealthMetricAnimation(metricType: 'bmi', size: 20),
                              const SizedBox(width: 6),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    hasWeight ? bmi.toStringAsFixed(1) : '--',
                                    style: TextStyle(
                                      fontFamily: 'Baloo 2',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: bmiColor,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                    bmiCategory,
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: bmiColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.md),

                    // Weight trend line chart
                    SizedBox(
                      height: 160,
                      child: hasWeight
                          ? LineChart(
                              LineChartData(
                                lineTouchData:
                                    const LineTouchData(enabled: false),
                                gridData: const FlGridData(show: false),
                                titlesData: const FlTitlesData(
                                  bottomTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  leftTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  topTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  rightTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                ),
                                borderData: FlBorderData(show: false),
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: weightEntries.length >= 2
                                        ? weightEntries.reversed
                                            .toList()
                                            .asMap()
                                            .entries
                                            .map((e) => FlSpot(
                                                e.key.toDouble(), e.value.value))
                                            .toList()
                                        : [
                                            FlSpot(0, weightEntries.first.value),
                                            FlSpot(1, weightEntries.first.value),
                                          ],
                                    isCurved: true,
                                    color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                                    barWidth: 3.5,
                                    dotData: const FlDotData(show: true),
                                    belowBarData: BarAreaData(
                                      show: true,
                                      color: AppColors.mint.withAlpha(50),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Center(
                              child: Text(
                                'Record your weight to visualize progress over time.',
                                style: TextStyle(
                                    color: context.appSlate, fontSize: 13),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.md),

              // Body Circumferences Card
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppSpacing.cardRadius)),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Body Circumferences',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: context.appInk,
                          ),
                        ),
                        TextButton(
                          onPressed: () => context.push('/health/manual-body'),
                          child: const Text('+ Record',
                              style: TextStyle(fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Row(
                      children: [
                        Expanded(
                          child: _buildMeasureBox(
                            context,
                            'Waist',
                            waistEntry != null
                                ? '${waistEntry.value.toInt()} cm'
                                : '--',
                            Icons.straighten_rounded,
                            AppColors.butter,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        Expanded(
                          child: _buildMeasureBox(
                            context,
                            'Hip',
                            hipEntry != null
                                ? '${hipEntry.value.toInt()} cm'
                                : '--',
                            Icons.accessibility_new_rounded,
                            AppColors.sky,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        Expanded(
                          child: _buildMeasureBox(
                            context,
                            'Chest',
                            chestEntry != null
                                ? '${chestEntry.value.toInt()} cm'
                                : '--',
                            Icons.fitness_center_rounded,
                            AppColors.peach,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.md),

              // Log History List
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
                      'Measurement History',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: context.appInk,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    if (entries.isEmpty)
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: AppSpacing.md),
                        child: Center(
                          child: Text(
                            'No body entries recorded yet.\nTap below to record weight or waist.',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: context.appSlate, fontSize: 13),
                          ),
                        ),
                      )
                    else
                      ...entries.take(8).map((e) {
                        final dateStr =
                            DateFormat('MMM d, h:mm a').format(e.measuredAt);
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: context.appBackground,
                                shape: BoxShape.circle),
                            child: Icon(Icons.scale_rounded,
                                size: 20, color: context.appInk),
                          ),
                          title: Text(
                            '${e.type.toUpperCase()}: ${e.value % 1 == 0 ? e.value.toInt() : e.value} ${e.unit}',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk),
                          ),
                          subtitle: Text('$dateStr · ${e.source}', style: TextStyle(color: context.appSlate)),
                          trailing: IconButton(
                            icon: Icon(Icons.delete_outline_rounded,
                                color: context.appSlate, size: 18),
                            onPressed: () => repo.softDeleteBodyEntry(e.id),
                          ),
                        );
                      }),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              PillButton(
                label: 'Record New Measurement',
                icon: Icons.add_rounded,
                variant: PillButtonVariant.primary,
                onPressed: () => context.push('/health/manual-body'),
              ),
              const SizedBox(height: AppSpacing.xl),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMeasureBox(
      BuildContext context, String label, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm),
      decoration: BoxDecoration(
        color: color.withAlpha(context.isDarkMode ? 50 : 80),
        borderRadius:
            const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
        border: Border.all(color: color.withAlpha(120)),
      ),
      child: Column(
        children: [
          Icon(icon, size: 18, color: context.appInk),
          const SizedBox(height: 4),
          Text(label,
              style: TextStyle(
                  fontSize: 11,
                  color: context.appSlate,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 2),
          Text(value,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: context.appInk)),
        ],
      ),
    );
  }
}
