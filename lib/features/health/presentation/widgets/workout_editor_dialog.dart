import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/health/presentation/pages/workout_editor_page.dart';
import 'package:flutter/material.dart';

class WorkoutEditorDialog extends StatefulWidget {
  final WorkoutLog? existingWorkout;
  final VoidCallback? onSaved;

  const WorkoutEditorDialog({
    super.key,
    this.existingWorkout,
    this.onSaved,
  });

  @override
  State<WorkoutEditorDialog> createState() => _WorkoutEditorDialogState();
}

class _WorkoutEditorDialogState extends State<WorkoutEditorDialog> {
  static const List<String> _presets = [
    'Walking',
    'Running',
    'Yoga',
    'Strength Training',
    'Cycling',
    'Swimming',
    'Badminton',
    'HIIT',
    'Dance',
    'Pilates',
    'Cricket',
    'Football',
    'Tennis',
    'Jump Rope',
    'Zumba',
    'Boxing',
    'Stretching',
  ];

  late final TextEditingController _activityCtrl;
  late final TextEditingController _durationCtrl;
  late final TextEditingController _caloriesCtrl;

  @override
  void initState() {
    super.initState();
    final w = widget.existingWorkout;
    _activityCtrl = TextEditingController(text: w?.type ?? 'Walking');
    _durationCtrl = TextEditingController(text: w != null ? w.durationMinutes.toString() : '30');
    _caloriesCtrl = TextEditingController(text: w != null ? w.calories.toInt().toString() : '140');
  }

  @override
  void dispose() {
    _activityCtrl.dispose();
    _durationCtrl.dispose();
    _caloriesCtrl.dispose();
    super.dispose();
  }

  void _onPresetSelected(String preset) {
    setState(() {
      _activityCtrl.text = preset;
      final dur = int.tryParse(_durationCtrl.text) ?? 30;
      final factor = dur / 30.0;
      switch (preset) {
        case 'Running':
        case 'HIIT':
        case 'Jump Rope':
        case 'Boxing':
          _caloriesCtrl.text = (260 * factor).toInt().toString();
          break;
        case 'Yoga':
        case 'Stretching':
          _caloriesCtrl.text = (110 * factor).toInt().toString();
          break;
        case 'Strength Training':
          _caloriesCtrl.text = (180 * factor).toInt().toString();
          break;
        case 'Cycling':
        case 'Swimming':
        case 'Badminton':
        case 'Tennis':
        case 'Football':
        case 'Cricket':
        case 'Dance':
        case 'Zumba':
          _caloriesCtrl.text = (210 * factor).toInt().toString();
          break;
        default:
          _caloriesCtrl.text = (140 * factor).toInt().toString();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.existingWorkout != null;
    final currentActivity = _activityCtrl.text.trim();

    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
      ),
      title: Text(
        isEditing ? 'Edit Workout' : 'Log Workout',
        style: TextStyle(
          fontFamily: 'Baloo 2',
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: context.appInk,
        ),
      ),
      content: SizedBox(
        width: 340,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Activity Type',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: context.appInk),
              ),
              const SizedBox(height: 4),
              Text(
                'Select from popular activities or type any custom workout name below:',
                style: TextStyle(fontSize: 12, color: context.appSlate),
              ),
              const SizedBox(height: 8),

              // Horizontal Presets List
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _presets.map((preset) {
                    final isSelected = currentActivity.toLowerCase() == preset.toLowerCase();
                    return Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: ChoiceChip(
                        label: Text(preset),
                        selected: isSelected,
                        selectedColor: AppColors.mint,
                        backgroundColor: context.appSurface,
                        labelStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                          color: isSelected ? Theme.of(context).colorScheme.onPrimary : context.appSlate,
                        ),
                        side: BorderSide(
                          color: isSelected ? (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark) : context.appBorderColor,
                        ),
                        onSelected: (_) => _onPresetSelected(preset),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),

              // Custom Input Field for Activity Type
              TextField(
                controller: _activityCtrl,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: context.appInk),
                decoration: InputDecoration(
                  labelText: 'Activity Name / Type',
                  hintText: 'e.g. Morning Walk, Zumba, CrossFit...',
                  prefixIcon: Icon(CupertinoIcons.bolt_fill, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark, size: 20),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.mint, width: 2),
                  ),
                ),
                onChanged: (_) => setState(() {}),
              ),
              const SizedBox(height: AppSpacing.md),

              // Duration Field
              Text(
                'Duration (minutes)',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: context.appInk),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _durationCtrl,
                keyboardType: TextInputType.number,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: context.appInk),
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.timer, color: context.appSlate, size: 20),
                  suffixText: 'mins',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.md),

              // Calories Field
              Text(
                'Estimated Calories Burned (kcal)',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: context.appInk),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _caloriesCtrl,
                keyboardType: TextInputType.number,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: context.appInk),
                decoration: InputDecoration(
                  prefixIcon: const Icon(CupertinoIcons.flame_fill, color: AppColors.softOrange, size: 20),
                  suffixText: 'kcal',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(context.tr('cancel'), style: TextStyle(color: context.appSlate)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mint,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            elevation: 0,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: () async {
            final type = _activityCtrl.text.trim();
            if (type.isEmpty) {
              BloomiToast.show(context, message: 'Please enter an activity name.');
              return;
            }

            final duration = int.tryParse(_durationCtrl.text.trim()) ?? 30;
            final calories = double.tryParse(_caloriesCtrl.text.trim()) ?? 140.0;
            final repo = sl<HealthRepository>();

            if (isEditing) {
              await repo.updateWorkoutLog(
                id: widget.existingWorkout!.id,
                type: type,
                durationMinutes: duration,
                calories: calories,
              );
              if (context.mounted) {
                Navigator.pop(context);
                BloomiToast.show(context, message: 'Workout updated! 🌿');
              }
            } else {
              await repo.logWorkout(
                type: type,
                durationMinutes: duration,
                calories: calories,
                source: 'manual',
              );
              if (context.mounted) {
                Navigator.pop(context);
                BloomiToast.show(context, message: 'Workout logged! 🌿');
              }
            }

            widget.onSaved?.call();
          },
          child: Text(
            isEditing ? 'Save Changes' : 'Log Workout',
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}

Future<void> showWorkoutEditorDialog(
  BuildContext context, {
  WorkoutLog? workout,
  VoidCallback? onSaved,
}) {
  return Navigator.of(context).push<void>(
    CupertinoPageRoute<void>(
      builder: (_) => WorkoutEditorPage(
        existingWorkout: workout,
        onSaved: onSaved,
      ),
    ),
  );
}

Future<void> confirmAndDeleteWorkout(
  BuildContext context, {
  required WorkoutLog workout,
  VoidCallback? onDeleted,
}) async {
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
      ),
      title: const Text(
        'Delete Workout?',
        style: TextStyle(fontFamily: 'Baloo 2', fontWeight: FontWeight.w700, fontSize: 18),
      ),
      content: Text(
        'Are you sure you want to remove "${workout.type}" (${workout.durationMinutes} mins)?',
        style: TextStyle(fontSize: 14, color: context.appInk),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx, false),
          child: Text(context.tr('cancel'), style: TextStyle(color: context.appSlate)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Theme.of(context).colorScheme.onError,
            elevation: 0,
            shape: const StadiumBorder(),
          ),
          onPressed: () => Navigator.pop(ctx, true),
          child: Text(context.tr('delete'), 
          style: const TextStyle(fontWeight: FontWeight.w700)),
        ),
      ],
    ),
  );

  if (confirmed == true) {
    await sl<HealthRepository>().softDeleteWorkoutLog(workout.id);
    if (context.mounted) {
      BloomiToast.show(context, message: 'Workout deleted.');
    }
    onDeleted?.call();
  }
}

