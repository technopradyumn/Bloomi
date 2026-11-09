import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/features/insights/domain/entities/insights_entity.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:flutter/material.dart';

class WeeklyReportPage extends StatefulWidget {
  const WeeklyReportPage({super.key});

  @override
  State<WeeklyReportPage> createState() => _WeeklyReportPageState();
}

class _WeeklyReportPageState extends State<WeeklyReportPage> {
  WeeklyReportDataEntity? _report;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadReport();
  }

  Future<void> _loadReport() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });
    try {
      final report = await sl<InsightsRepository>().getWeeklyReport();
      if (mounted) {
        setState(() {
          _report = report;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Weekly Wellness Recap',
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
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: AppColors.mint))
          : _error != null
              ? Center(child: Text('Error loading report: $_error', style: TextStyle(color: context.appInk)))
              : _buildReportContent(context, _report!),
    );
  }

  Widget _buildReportContent(BuildContext context, WeeklyReportDataEntity report) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        // Mascot Header
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            boxShadow: context.appCardShadow,
          ),
          child: Row(
            children: [
              const MascotWidget(state: MascotState.happy, size: 75),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weekly Progress',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Baloo 2',
                        color: context.appInk,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      report.mascotCommentary,
                      style: TextStyle(
                        fontSize: 13,
                        color: context.appSlate,
                        height: 1.35,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),

        // Metric Grid (2x2)
        Row(
          children: [
            Expanded(
              child: _buildMetricTile(
                context,
                'Avg Daily Calories',
                '${report.averageCalories.toInt()} kcal',
                'Target: ${report.targetCalories.toInt()}',
                CupertinoIcons.flame_fill,
                AppColors.butter,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: _buildMetricTile(
                context,
                'Avg Daily Water',
                '${report.averageWaterMl} ml',
                'Target: ${report.targetWaterMl} ml',
                CupertinoIcons.drop_fill,
                AppColors.sky,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        Row(
          children: [
            Expanded(
              child: _buildMetricTile(
                context,
                'Average Steps',
                '${report.averageSteps}',
                'Target: ${report.targetSteps}',
                CupertinoIcons.compass,
                AppColors.mint,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: _buildMetricTile(
                context,
                'Best Day',
                report.bestDay,
                'Most balanced energy',
                CupertinoIcons.star_fill,
                AppColors.peach,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),

        // 7-Day Performance List
        Text(
          '7-DAY PERFORMANCE',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: context.appSlate,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),

        Container(
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            boxShadow: context.appCardShadow,
          ),
          child: Column(
            children: report.dailyBreakdown.map((day) {
              return ListTile(
                dense: true,
                leading: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: day.isTargetMet ? AppColors.mint.withValues(alpha: 0.3) : context.appBackground,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    day.dayName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: context.appInk),
                  ),
                ),
                title: Text(
                  '${day.calories.toInt()} kcal',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: context.appInk),
                ),
                subtitle: Text(
                  '${day.waterMl} ml water • ${day.steps} steps',
                  style: TextStyle(fontSize: 12, color: context.appSlate),
                ),
                trailing: Icon(
                  day.isTargetMet ? CupertinoIcons.checkmark_circle_fill : CupertinoIcons.circle,
                  color: day.isTargetMet ? AppColors.mint : context.appSlate,
                  size: 20,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildMetricTile(
    BuildContext context,
    String label,
    String value,
    String subtitle,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.35),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: context.appInk, size: 20),
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Baloo 2',
              color: context.appInk,
            ),
          ),
          Text(
            label,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: context.appInk),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: TextStyle(fontSize: 11, color: context.appSlate),
          ),
        ],
      ),
    );
  }
}
