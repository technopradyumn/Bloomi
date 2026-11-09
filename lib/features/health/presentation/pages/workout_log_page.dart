import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/health/presentation/pages/workout_editor_page.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkoutLogPage extends StatefulWidget {
  const WorkoutLogPage({super.key});

  @override
  State<WorkoutLogPage> createState() => _WorkoutLogPageState();
}

class _WorkoutLogPageState extends State<WorkoutLogPage> {
  void _openAddWorkoutScreen() {
    Navigator.of(context).push(
      CupertinoPageRoute<void>(
        builder: (_) => const WorkoutEditorPage(),
      ),
    );
  }

  void _openEditWorkoutScreen(WorkoutLog workout) {
    Navigator.of(context).push(
      CupertinoPageRoute<void>(
        builder: (_) => WorkoutEditorPage(existingWorkout: workout),
      ),
    );
  }

  Future<void> _confirmAndDelete(WorkoutLog workout) async {
    final confirmed = await showCupertinoDialog<bool>(
      context: context,
      builder: (ctx) => CupertinoAlertDialog(
        title: Text('${context.tr('delete')}?'),
        content: Text(
          'Are you sure you want to delete "${workout.type}" (${workout.durationMinutes} mins)?',
        ),
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

    if (confirmed == true && mounted) {
      await sl<HealthRepository>().softDeleteWorkoutLog(workout.id);
      if (mounted) {
        final messenger = ScaffoldMessenger.of(context);
        messenger.hideCurrentSnackBar();
        messenger.showSnackBar(
          SnackBar(
            content: Text('Deleted "${workout.type}" workout'),
            duration: const Duration(seconds: 4),
            action: SnackBarAction(
              label: 'Undo',
              textColor: Theme.of(context).colorScheme.primary,
              onPressed: () async {
                final db = sl<AppDatabase>();
                await (db.update(db.workoutLogs)..where((tbl) => tbl.id.equals(workout.id)))
                    .write(const WorkoutLogsCompanion(deleted: drift.Value(false)));
              },
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final repo = sl<HealthRepository>();

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          context.tr('workout_title'),
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
            icon: Icon(CupertinoIcons.add, color: context.appInk),
            tooltip: context.tr('workout_add_exercise'),
            onPressed: _openAddWorkoutScreen,
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
                      child: Icon(CupertinoIcons.bolt_fill, color: context.appInk, size: 26),
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
                    onPressed: _openAddWorkoutScreen,
                    icon: const Icon(CupertinoIcons.add, size: 18),
                    label: Text(context.tr('workout_add_exercise')),
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
                        Icon(CupertinoIcons.flame_fill, size: 48, color: context.appSlate),
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
                          onPressed: _openAddWorkoutScreen,
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
                            icon: Icon(CupertinoIcons.pencil, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark, size: 20),
                            tooltip: context.tr('edit'),
                            onPressed: () => _openEditWorkoutScreen(w),
                          ),
                          IconButton(
                            icon: Icon(CupertinoIcons.trash, color: context.appSlate, size: 20),
                            tooltip: context.tr('delete'),
                            onPressed: () => _confirmAndDelete(w),
                          ),
                        ],
                      ),
                      onTap: () => _openEditWorkoutScreen(w),
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
        return CupertinoIcons.flame_fill;
      case 'yoga':
        return CupertinoIcons.sportscourt_fill;
      case 'cycling':
        return CupertinoIcons.sportscourt_fill;
      case 'swimming':
        return CupertinoIcons.sportscourt_fill;
      case 'strength training':
        return CupertinoIcons.bolt_fill;
      default:
        return CupertinoIcons.compass;
    }
  }
}

