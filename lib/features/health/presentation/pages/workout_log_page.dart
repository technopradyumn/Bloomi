import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/health/presentation/widgets/workout_editor_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkoutLogPage extends StatefulWidget {
  const WorkoutLogPage({super.key});

  @override
  State<WorkoutLogPage> createState() => _WorkoutLogPageState();
}

class _WorkoutLogPageState extends State<WorkoutLogPage> {
  void _showAddWorkoutDialog() {
    showWorkoutEditorDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    final repo = sl<HealthRepository>();

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Workout Log',
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
            tooltip: 'Log Workout',
            onPressed: _showAddWorkoutDialog,
          ),
        ],
      ),
      body: StreamBuilder<List<WorkoutLog>>(
        stream: repo.watchWorkoutLogs(),
        builder: (context, snapshot) {
          final workouts = snapshot.data ?? [];

          final totalMinutes = workouts.fold<int>(0, (acc, w) => acc + w.durationMinutes);
          final totalCalories = workouts.fold<double>(0.0, (acc, w) => acc + w.calories);

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              // Summary Banner
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                  boxShadow: context.appCardShadow,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.lilac.withAlpha(context.isDarkMode ? 80 : 255),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.fitness_center_rounded, color: context.appInk, size: 26),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Activity Recorded',
                            style: TextStyle(fontSize: 12, color: context.appSlate, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '$totalMinutes mins · ${totalCalories.toInt()} kcal',
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                              color: context.appInk,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.md),

              // Workout History List
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recorded Workouts',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: context.appInk,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: _showAddWorkoutDialog,
                    icon: const Icon(Icons.add_rounded, size: 18),
                    label: const Text('Add Workout'),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xs),

              if (workouts.isEmpty)
                Container(
                  padding: const EdgeInsets.all(AppSpacing.xl),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(Icons.directions_run_rounded, size: 48, color: context.appSlate),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          'No workouts logged yet',
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: context.appInk),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Wear your connected watch or record your sessions manually here.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: context.appSlate, fontSize: 13),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        PillButton(
                          label: '+ Log Workout',
                          variant: PillButtonVariant.primary,
                          onPressed: _showAddWorkoutDialog,
                        ),
                      ],
                    ),
                  ),
                )
              else
                ...workouts.map((w) {
                  final dateStr = DateFormat('MMM d, h:mm a').format(w.recordedAt);
                  return Container(
                    margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                    decoration: BoxDecoration(
                      color: context.appSurface,
                      borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                    ),
                    child: ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: _getActivityColor(w.type).withAlpha(context.isDarkMode ? 80 : 255),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(_getActivityIcon(w.type), color: context.appInk, size: 20),
                      ),
                      title: Text(
                        w.type,
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: context.appInk),
                      ),
                      subtitle: Text('${w.durationMinutes} mins · ${w.calories.toInt()} kcal · $dateStr', style: TextStyle(color: context.appSlate)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit_outlined, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark, size: 20),
                            tooltip: 'Edit Workout',
                            onPressed: () => showWorkoutEditorDialog(context, workout: w),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete_outline_rounded, color: context.appSlate, size: 20),
                            tooltip: 'Delete Workout',
                            onPressed: () => confirmAndDeleteWorkout(context, workout: w),
                          ),
                        ],
                      ),
                      onTap: () => showWorkoutEditorDialog(context, workout: w),
                    ),
                  );
                }),
              const SizedBox(height: AppSpacing.xl),
            ],
          );
        },
      ),
    );
  }

  Color _getActivityColor(String type) {
    switch (type.toLowerCase()) {
      case 'running':
      case 'hiit':
        return AppColors.peach;
      case 'yoga':
        return AppColors.lilac;
      case 'cycling':
      case 'swimming':
        return AppColors.sky;
      case 'strength training':
        return AppColors.butter;
      default:
        return AppColors.mint;
    }
  }

  IconData _getActivityIcon(String type) {
    switch (type.toLowerCase()) {
      case 'running':
        return Icons.directions_run_rounded;
      case 'yoga':
        return Icons.self_improvement_rounded;
      case 'cycling':
        return Icons.directions_bike_rounded;
      case 'swimming':
        return Icons.pool_rounded;
      case 'strength training':
        return Icons.fitness_center_rounded;
      default:
        return Icons.directions_walk_rounded;
    }
  }
}

