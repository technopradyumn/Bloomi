import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum WorkoutIntensity {
  low('Low', 0.8, CupertinoIcons.speedometer),
  moderate('Moderate', 1.0, CupertinoIcons.bolt),
  high('High', 1.25, CupertinoIcons.bolt_fill);

  const WorkoutIntensity(this.label, this.multiplier, this.icon);
  final String label;
  final double multiplier;
  final IconData icon;
}

class WorkoutEditorPage extends StatefulWidget {
  final WorkoutLog? existingWorkout;
  final String? workoutId;
  final VoidCallback? onSaved;

  const WorkoutEditorPage({
    super.key,
    this.existingWorkout,
    this.workoutId,
    this.onSaved,
  });

  @override
  State<WorkoutEditorPage> createState() => _WorkoutEditorPageState();
}

class _WorkoutEditorPageState extends State<WorkoutEditorPage> {
  static const List<Map<String, dynamic>> _presets = [
    {'name': 'Walking', 'met': 3.5, 'icon': CupertinoIcons.compass},
    {'name': 'Running', 'met': 9.8, 'icon': CupertinoIcons.flame_fill},
    {'name': 'Yoga', 'met': 3.0, 'icon': CupertinoIcons.sportscourt_fill},
    {'name': 'Strength Training', 'met': 5.0, 'icon': CupertinoIcons.bolt_fill},
    {'name': 'Cycling', 'met': 7.5, 'icon': CupertinoIcons.sportscourt},
    {'name': 'Swimming', 'met': 8.0, 'icon': CupertinoIcons.drop_fill},
    {'name': 'HIIT', 'met': 8.5, 'icon': CupertinoIcons.flame},
    {'name': 'Badminton', 'met': 5.5, 'icon': CupertinoIcons.sportscourt_fill},
    {'name': 'Dance', 'met': 6.0, 'icon': CupertinoIcons.music_note},
    {'name': 'Pilates', 'met': 3.5, 'icon': CupertinoIcons.circle_grid_hex},
    {'name': 'Cricket', 'met': 5.0, 'icon': CupertinoIcons.sportscourt},
    {'name': 'Football', 'met': 8.0, 'icon': CupertinoIcons.sportscourt_fill},
    {'name': 'Tennis', 'met': 6.5, 'icon': CupertinoIcons.sportscourt},
    {'name': 'Jump Rope', 'met': 10.0, 'icon': CupertinoIcons.waveform},
    {'name': 'Zumba', 'met': 6.5, 'icon': CupertinoIcons.music_mic},
    {'name': 'Boxing', 'met': 9.0, 'icon': CupertinoIcons.shield_fill},
    {'name': 'Stretching', 'met': 2.5, 'icon': CupertinoIcons.sparkles},
  ];

  late final TextEditingController _activityCtrl;
  late final TextEditingController _durationCtrl;
  late final TextEditingController _caloriesCtrl;
  late final TextEditingController _notesCtrl;

  late DateTime _selectedDateTime;
  WorkoutIntensity _selectedIntensity = WorkoutIntensity.moderate;
  double _userWeightKg = 68.0;
  bool _isManualCaloriesEdit = false;
  bool _isSaving = false;
  String? _errorMessage;

  bool get isEditing => widget.existingWorkout != null;

  @override
  void initState() {
    super.initState();
    final w = widget.existingWorkout;
    _activityCtrl = TextEditingController(text: w?.type ?? 'Walking');
    _durationCtrl = TextEditingController(
      text: w != null ? w.durationMinutes.toString() : '30',
    );
    _caloriesCtrl = TextEditingController(
      text: w != null ? w.calories.toInt().toString() : '120',
    );
    _notesCtrl = TextEditingController();
    _selectedDateTime = w?.recordedAt ?? DateTime.now();

    _loadUserWeightAndNotes();
  }

  Future<void> _loadUserWeightAndNotes() async {
    try {
      final repo = sl<HealthRepository>();
      final weightEntry = await repo.getLatestBodyEntry('weight');
      if (weightEntry != null && weightEntry.value > 0) {
        if (mounted) setState(() => _userWeightKg = weightEntry.value);
      } else {
        final bundle = await repo.getLatestBundle();
        if ((bundle.weightKg ?? 0) > 0) {
          if (mounted) setState(() => _userWeightKg = bundle.weightKg!);
        }
      }
    } catch (_) {}

    // Load saved notes for existing workout
    if (widget.existingWorkout != null) {
      try {
        final prefs = sl<SharedPreferences>();
        final savedNotes = prefs.getString('workout_notes_${widget.existingWorkout!.id}');
        if (savedNotes != null && savedNotes.isNotEmpty) {
          if (mounted) {
            setState(() {
              _notesCtrl.text = savedNotes;
            });
          }
        }
      } catch (_) {}
    } else {
      // For new workouts, compute initial auto calories based on weight
      _recalculateCalories();
    }
  }

  @override
  void dispose() {
    _activityCtrl.dispose();
    _durationCtrl.dispose();
    _caloriesCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  double _getMetForActivity(String activityName) {
    final lower = activityName.trim().toLowerCase();
    for (final p in _presets) {
      if ((p['name'] as String).toLowerCase() == lower) {
        return (p['met'] as num).toDouble();
      }
    }
    // Heuristic fallbacks for custom names
    if (lower.contains('run') || lower.contains('jog')) return 9.0;
    if (lower.contains('walk')) return 3.5;
    if (lower.contains('cycle') || lower.contains('bike')) return 7.5;
    if (lower.contains('swim')) return 8.0;
    if (lower.contains('strength') || lower.contains('gym') || lower.contains('weight') || lower.contains('lift')) return 5.0;
    if (lower.contains('hiit') || lower.contains('tabata') || lower.contains('crossfit')) return 8.5;
    if (lower.contains('yoga') || lower.contains('stretch')) return 3.0;
    return 4.5; // General moderate exercise
  }

  void _recalculateCalories() {
    final duration = int.tryParse(_durationCtrl.text.trim()) ?? 0;
    if (duration <= 0) return;

    final met = _getMetForActivity(_activityCtrl.text);
    final intensityFactor = _selectedIntensity.multiplier;
    // Calories = MET * Intensity * Weight(kg) * Duration(hours)
    final calculated = (met * intensityFactor * _userWeightKg * (duration / 60.0)).round();

    _caloriesCtrl.text = calculated.toString();
  }

  void _onPresetSelected(String preset) {
    setState(() {
      _activityCtrl.text = preset;
      _isManualCaloriesEdit = false;
      _recalculateCalories();
      _errorMessage = null;
    });
  }

  void _onDurationChanged(String val) {
    if (!_isManualCaloriesEdit) {
      _recalculateCalories();
    }
    setState(() => _errorMessage = null);
  }

  void _onIntensityChanged(WorkoutIntensity intensity) {
    setState(() {
      _selectedIntensity = intensity;
      if (!_isManualCaloriesEdit) {
        _recalculateCalories();
      }
    });
  }

  void _showCupertinoDatePicker() {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (ctx) {
        return Container(
          height: 280,
          color: context.appSurface,
          child: Column(
            children: [
              Container(
                color: context.appSurface,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: Text(context.tr('cancel'), style: TextStyle(color: context.appSlate)),
                      onPressed: () => Navigator.pop(ctx),
                    ),
                    Text(
                      'Select Date & Time',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: context.appInk,
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: Text(context.tr('done'), style: const TextStyle(fontWeight: FontWeight.w700)),
                      onPressed: () => Navigator.pop(ctx),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.dateAndTime,
                  initialDateTime: _selectedDateTime,
                  maximumDate: DateTime.now().add(const Duration(minutes: 5)),
                  minimumYear: 2020,
                  maximumYear: DateTime.now().year + 1,
                  use24hFormat: false,
                  onDateTimeChanged: (DateTime newDateTime) {
                    setState(() {
                      _selectedDateTime = newDateTime;
                    });
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _saveWorkout() async {
    final type = _activityCtrl.text.trim();
    if (type.isEmpty) {
      setState(() => _errorMessage = 'Please enter or select a workout activity.');
      return;
    }

    final duration = int.tryParse(_durationCtrl.text.trim());
    if (duration == null || duration <= 0) {
      setState(() => _errorMessage = 'Please enter a valid workout duration in minutes.');
      return;
    }

    final calories = double.tryParse(_caloriesCtrl.text.trim());
    if (calories == null || calories < 0) {
      setState(() => _errorMessage = 'Please enter valid estimated calories.');
      return;
    }

    setState(() {
      _isSaving = true;
      _errorMessage = null;
    });

    try {
      final repo = sl<HealthRepository>();
      final prefs = sl<SharedPreferences>();
      final notesText = _notesCtrl.text.trim();

      if (isEditing) {
        final workoutId = widget.existingWorkout!.id;
        await repo.updateWorkoutLog(
          id: workoutId,
          type: type,
          durationMinutes: duration,
          calories: calories,
          recordedAt: _selectedDateTime,
        );

        if (notesText.isNotEmpty) {
          await prefs.setString('workout_notes_$workoutId', notesText);
        } else {
          await prefs.remove('workout_notes_$workoutId');
        }

        if (mounted) {
          BloomiToast.show(context, message: 'Workout updated successfully! 🌿');
          widget.onSaved?.call();
          Navigator.pop(context, true);
        }
      } else {
        await repo.logWorkout(
          type: type,
          durationMinutes: duration,
          calories: calories,
          recordedAt: _selectedDateTime,
          source: 'manual',
        );

        if (mounted) {
          BloomiToast.show(context, message: 'Workout logged successfully! 🌿');
          widget.onSaved?.call();
          Navigator.pop(context, true);
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isSaving = false;
          _errorMessage = 'Failed to save workout: ${e.toString()}';
        });
      }
    }
  }

  Future<void> _confirmAndDelete() async {
    if (widget.existingWorkout == null) return;

    final confirmed = await showCupertinoDialog<bool>(
      context: context,
      builder: (ctx) => CupertinoAlertDialog(
        title: const Text('Delete Workout?'),
        content: Text(
          'Are you sure you want to delete "${widget.existingWorkout!.type}" (${widget.existingWorkout!.durationMinutes} mins)?',
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
      try {
        await sl<HealthRepository>().softDeleteWorkoutLog(widget.existingWorkout!.id);
        final prefs = sl<SharedPreferences>();
        await prefs.remove('workout_notes_${widget.existingWorkout!.id}');

        if (mounted) {
          final workout = widget.existingWorkout!;
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
                  widget.onSaved?.call();
                },
              ),
            ),
          );
          widget.onSaved?.call();
          Navigator.pop(context, true);
        }
      } catch (e) {
        if (mounted) {
          BloomiToast.show(context, message: 'Failed to delete: $e');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentActivity = _activityCtrl.text.trim();
    final dateFormat = DateFormat('EEE, MMM d, yyyy · h:mm a');

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: context.appSurface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
          tooltip: context.tr('back'),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          isEditing ? 'Edit Workout' : 'Add Workout',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        actions: [
          if (isEditing)
            IconButton(
              icon: const Icon(CupertinoIcons.trash, color: AppColors.peach, size: 22),
              tooltip: 'Delete Workout',
              onPressed: _confirmAndDelete,
            ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.screenSide),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Error banner if any
              if (_errorMessage != null) ...[
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.peach.withAlpha(50),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.peach),
                  ),
                  child: Row(
                    children: [
                      const Icon(CupertinoIcons.exclamationmark_triangle_fill,
                          color: AppColors.peach, size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          _errorMessage!,
                          style: const TextStyle(
                            color: AppColors.peach,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
              ],

              // 1. Activity Presets
              Text(
                'Activity Type',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: context.appInk,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Choose an activity or enter custom name below:',
                style: TextStyle(fontSize: 12, color: context.appSlate),
              ),
              const SizedBox(height: 8),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: _presets.map((preset) {
                    final name = preset['name'] as String;
                    final icon = preset['icon'] as IconData;
                    final isSelected = currentActivity.toLowerCase() == name.toLowerCase();

                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        avatar: Icon(
                          icon,
                          size: 16,
                          color: isSelected
                              ? Theme.of(context).colorScheme.onPrimary
                              : context.appSlate,
                        ),
                        label: Text(name),
                        selected: isSelected,
                        selectedColor: AppColors.mint,
                        backgroundColor: context.appSurface,
                        labelStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                          color: isSelected
                              ? Theme.of(context).colorScheme.onPrimary
                              : context.appInk,
                        ),
                        side: BorderSide(
                          color: isSelected
                              ? (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark)
                              : context.appBorderColor,
                        ),
                        onSelected: (_) => _onPresetSelected(name),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),

              // Activity Name Input
              TextField(
                controller: _activityCtrl,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: context.appInk),
                decoration: InputDecoration(
                  labelText: 'Activity Name',
                  hintText: 'e.g. Walking, Morning Run, CrossFit',
                  prefixIcon: Icon(
                    CupertinoIcons.flame_fill,
                    color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: context.appSurface,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.mint, width: 2),
                  ),
                ),
                onChanged: (val) {
                  if (!_isManualCaloriesEdit) _recalculateCalories();
                  setState(() => _errorMessage = null);
                },
              ),
              const SizedBox(height: AppSpacing.lg),

              // 2. Duration & Intensity
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Duration Input
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Duration (minutes)',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: context.appInk,
                          ),
                        ),
                        const SizedBox(height: 6),
                        TextField(
                          controller: _durationCtrl,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: context.appInk),
                          decoration: InputDecoration(
                            prefixIcon: Icon(CupertinoIcons.timer, color: context.appSlate, size: 20),
                            suffixText: 'mins',
                            filled: true,
                            fillColor: context.appSurface,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: context.appBorderColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: context.appBorderColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: AppColors.mint, width: 2),
                            ),
                          ),
                          onChanged: _onDurationChanged,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),

              // Intensity Selector
              Text(
                'Intensity',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: context.appInk,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: WorkoutIntensity.values.map((intensity) {
                  final isSelected = _selectedIntensity == intensity;
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: InkWell(
                        onTap: () => _onIntensityChanged(intensity),
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.mint.withAlpha(context.isDarkMode ? 80 : 255)
                                : context.appSurface,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected
                                  ? (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark)
                                  : context.appBorderColor,
                              width: isSelected ? 2 : 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                intensity.icon,
                                size: 18,
                                color: isSelected
                                    ? Theme.of(context).colorScheme.onPrimary
                                    : context.appSlate,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                intensity.label,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                                  color: isSelected
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : context.appInk,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: AppSpacing.lg),

              // 3. Estimated Calories Burned
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Estimated Burned (kcal)',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: context.appInk,
                    ),
                  ),
                  Text(
                    'Auto-calculated based on ${_userWeightKg.toInt()} kg weight',
                    style: TextStyle(fontSize: 11, color: context.appSlate),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _caloriesCtrl,
                keyboardType: TextInputType.number,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: context.appInk),
                decoration: InputDecoration(
                  prefixIcon: const Icon(CupertinoIcons.flame_fill, color: AppColors.softOrange, size: 20),
                  suffixText: 'kcal',
                  filled: true,
                  fillColor: context.appSurface,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.mint, width: 2),
                  ),
                ),
                onChanged: (_) {
                  _isManualCaloriesEdit = true;
                  setState(() => _errorMessage = null);
                },
              ),
              const SizedBox(height: AppSpacing.lg),

              // 4. Date and Time Picker
              Text(
                'Date & Time',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: context.appInk,
                ),
              ),
              const SizedBox(height: 6),
              InkWell(
                onTap: _showCupertinoDatePicker,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: context.appBorderColor),
                  ),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.calendar, color: context.appSlate, size: 20),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          dateFormat.format(_selectedDateTime),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: context.appInk,
                          ),
                        ),
                      ),
                      Icon(CupertinoIcons.chevron_down, color: context.appSlate, size: 16),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // 5. Notes
              Text(
                'Notes (Optional)',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: context.appInk,
                ),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _notesCtrl,
                maxLines: 3,
                style: TextStyle(fontSize: 14, color: context.appInk),
                decoration: InputDecoration(
                  hintText: 'e.g. Felt energetic, 5 km route in the park, new PB',
                  filled: true,
                  fillColor: context.appSurface,
                  contentPadding: const EdgeInsets.all(14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: context.appBorderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.mint, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.xl),

              // Action Buttons: Save & Delete
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mint,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  icon: _isSaving
                      ? const CupertinoActivityIndicator(color: Colors.white)
                      : Icon(
                          isEditing ? CupertinoIcons.check_mark_circled_solid : CupertinoIcons.add_circled_solid,
                          size: 20,
                        ),
                  label: Text(
                    _isSaving
                        ? 'Saving...'
                        : (isEditing ? 'Save Changes' : 'Log Workout'),
                    style: const TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: _isSaving ? null : _saveWorkout,
                ),
              ),

              if (isEditing) ...[
                const SizedBox(height: AppSpacing.md),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.peach,
                      side: const BorderSide(color: AppColors.peach, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    icon: const Icon(CupertinoIcons.trash, size: 18),
                    label: const Text(
                      'Delete Workout',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    onPressed: _confirmAndDelete,
                  ),
                ),
              ],
              const SizedBox(height: AppSpacing.xxl),
            ],
          ),
        ),
      ),
    );
  }
}
