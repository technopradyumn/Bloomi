import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/plan/domain/entities/daily_plan_entity.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WeeklyPlanPage extends StatefulWidget {
  const WeeklyPlanPage({super.key});

  @override
  State<WeeklyPlanPage> createState() => _WeeklyPlanPageState();
}

class _WeeklyPlanPageState extends State<WeeklyPlanPage> {
  int _selectedDayIndex = 0;
  DailyPlanBundleEntity? _planData;
  bool _isLoading = true;
  String? _error;

  static const List<String> _days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  @override
  void initState() {
    super.initState();
    _loadPlan();
  }

  Future<void> _loadPlan() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });
    try {
      final plan = await sl<PlanRepository>().generateDailyPlan();
      if (mounted) {
        setState(() {
          _planData = plan;
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
          'Weekly Meal Plan',
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
              ? Center(child: Text('Error loading plan: $_error', style: TextStyle(color: context.appInk)))
              : _buildContent(context, _planData!),
    );
  }

  Widget _buildContent(BuildContext context, DailyPlanBundleEntity planData) {
    final targetKcal = planData.totalCaloriesTarget;

    return Column(
      children: [
        // Day tabs horizontal list
        Container(
          color: context.appSurface,
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
          child: SizedBox(
            height: 48,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              itemCount: _days.length,
              itemBuilder: (context, index) {
                final isSelected = index == _selectedDayIndex;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(
                      _days[index].substring(0, 3),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Theme.of(context).colorScheme.onPrimary : context.appSlate,
                      ),
                    ),
                    selected: isSelected,
                    selectedColor: AppColors.mint,
                    backgroundColor: context.appSurface,
                    onSelected: (_) => setState(() => _selectedDayIndex = index),
                  ),
                );
              },
            ),
          ),
        ),

        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              // Daily Target Card for selected day
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.butter.withValues(alpha: 0.4),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(CupertinoIcons.calendar, color: context.appInk),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${_days[_selectedDayIndex]} Planned Meals',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Baloo 2',
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Target: ${targetKcal.toInt()} kcal • Balanced Nutrition',
                            style: TextStyle(fontSize: 13, color: context.appSlate),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              PillButton(
                label: 'Open Food Diary',
                icon: CupertinoIcons.book,
                onPressed: () {
                  context.push('/food');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
