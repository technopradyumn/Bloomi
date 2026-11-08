import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/plan/domain/entities/daily_plan_entity.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoalsTargetsPage extends StatefulWidget {
  const GoalsTargetsPage({super.key});

  @override
  State<GoalsTargetsPage> createState() => _GoalsTargetsPageState();
}

class _GoalsTargetsPageState extends State<GoalsTargetsPage> {
  final _caloriesCtrl = TextEditingController();
  final _proteinCtrl = TextEditingController();
  final _carbsCtrl = TextEditingController();
  final _fatCtrl = TextEditingController();
  final _fibreCtrl = TextEditingController();
  final _waterCtrl = TextEditingController();
  final _stepsCtrl = TextEditingController();
  final _sleepCtrl = TextEditingController();
  final _weightCtrl = TextEditingController();

  String? _gender;
  String? _calorieFloorError;
  bool _initialized = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadTargets();
  }

  Future<void> _loadTargets() async {
    final bundle = await sl<PlanRepository>().generateDailyPlan();
    if (mounted) {
      _initFields(bundle);
      setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    _caloriesCtrl.dispose();
    _proteinCtrl.dispose();
    _carbsCtrl.dispose();
    _fatCtrl.dispose();
    _fibreCtrl.dispose();
    _waterCtrl.dispose();
    _stepsCtrl.dispose();
    _sleepCtrl.dispose();
    _weightCtrl.dispose();
    super.dispose();
  }

  void _initFields(DailyPlanBundleEntity bundle) {
    if (_initialized) return;
    _initialized = true;

    _gender = bundle.profile?.gender;
    _caloriesCtrl.text = bundle.targets.calories.toInt().toString();
    _proteinCtrl.text = bundle.targets.protein.toInt().toString();
    _carbsCtrl.text = bundle.targets.carbs.toInt().toString();
    _fatCtrl.text = bundle.targets.fat.toInt().toString();
    _fibreCtrl.text = bundle.targets.fibre.toInt().toString();
    _waterCtrl.text = bundle.targets.waterMl.toInt().toString();
    _stepsCtrl.text = bundle.targets.steps.toString();
    _sleepCtrl.text = bundle.targets.sleepHours.toStringAsFixed(1);
    _weightCtrl.text = bundle.targets.targetWeightKg?.toStringAsFixed(1) ?? '65.0';
  }

  double get _calorieFloor {
    final isMale = (_gender?.toLowerCase() ?? '') == 'male';
    return isMale ? 1500.0 : 1200.0;
  }

  Future<void> _saveTargets() async {
    final cal = double.tryParse(_caloriesCtrl.text) ?? 1800.0;
    if (cal < _calorieFloor) {
      setState(() {
        _calorieFloorError =
            'For safe and sustainable nourishment, daily calories cannot be set below ${_calorieFloor.toInt()} kcal.';
      });
      return;
    }

    setState(() => _calorieFloorError = null);

    final prot = double.tryParse(_proteinCtrl.text) ?? 75.0;
    final carbs = double.tryParse(_carbsCtrl.text) ?? 210.0;
    final fat = double.tryParse(_fatCtrl.text) ?? 50.0;
    final fibre = double.tryParse(_fibreCtrl.text) ?? 25.0;
    final water = double.tryParse(_waterCtrl.text) ?? 2200.0;
    final steps = int.tryParse(_stepsCtrl.text) ?? 10000;
    final sleep = double.tryParse(_sleepCtrl.text) ?? 8.0;
    final targetWeight = double.tryParse(_weightCtrl.text);

    await sl<PlanRepository>().updateTargets(
      calories: cal,
      protein: prot,
      carbs: carbs,
      fat: fat,
      fibre: fibre,
      waterMl: water,
      steps: steps,
      sleepHours: sleep,
      targetWeightKg: targetWeight,
      gender: _gender,
    );

    if (mounted) {
      BloomiToast.show(context, message: 'Goals and targets updated! 🎯');
      if (context.canPop()) {
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Goals & Targets',
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
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: AppColors.mint))
          : _buildForm(),
    );
  }

  Widget _buildForm() {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        // Disclaimer & floor notice
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: AppColors.mint.withAlpha(context.isDarkMode ? 60 : 40),
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            border: Border.all(color: AppColors.mint.withAlpha(120)),
          ),
          child: Row(
            children: [
              const Icon(Icons.shield_outlined, color: AppColors.mint, size: 24),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Text(
                  'Minimum safe calorie floor: ${_calorieFloor.toInt()} kcal/day. Wording is for wellness, not medical advice.',
                  style: TextStyle(fontSize: 12, color: context.appInk, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),

        // Calories & Macros Card
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            boxShadow: context.appCardShadow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daily Energy & Nutrition',
                style: TextStyle(fontFamily: 'Baloo 2', fontWeight: FontWeight.w700, fontSize: 18, color: context.appInk),
              ),
              const SizedBox(height: AppSpacing.md),
              _buildField(
                label: 'Daily Calories',
                controller: _caloriesCtrl,
                suffix: 'kcal',
                icon: Icons.local_fire_department_rounded,
                color: AppColors.peach,
                onChanged: (_) {
                  if (_calorieFloorError != null) setState(() => _calorieFloorError = null);
                },
              ),
              if (_calorieFloorError != null) ...[
                const SizedBox(height: 4),
                Text(
                  _calorieFloorError!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: _buildField(
                      label: 'Protein',
                      controller: _proteinCtrl,
                      suffix: 'g',
                      icon: Icons.fitness_center_rounded,
                      color: AppColors.lilac,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _buildField(
                      label: 'Carbs',
                      controller: _carbsCtrl,
                      suffix: 'g',
                      icon: Icons.grain_rounded,
                      color: AppColors.butter,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: _buildField(
                      label: 'Fat',
                      controller: _fatCtrl,
                      suffix: 'g',
                      icon: Icons.opacity_rounded,
                      color: AppColors.sky,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _buildField(
                      label: 'Fibre',
                      controller: _fibreCtrl,
                      suffix: 'g',
                      icon: Icons.eco_rounded,
                      color: AppColors.mint,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),

        // Lifestyle & Activity Card
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            boxShadow: context.appCardShadow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lifestyle & Movement',
                style: TextStyle(fontFamily: 'Baloo 2', fontWeight: FontWeight.w700, fontSize: 18, color: context.appInk),
              ),
              const SizedBox(height: AppSpacing.md),
              _buildField(
                label: 'Daily Water Target',
                controller: _waterCtrl,
                suffix: 'ml',
                icon: Icons.water_drop_rounded,
                color: AppColors.sky,
              ),
              const SizedBox(height: AppSpacing.sm),
              _buildField(
                label: 'Daily Steps Goal',
                controller: _stepsCtrl,
                suffix: 'steps',
                icon: Icons.directions_walk_rounded,
                color: AppColors.mint,
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: _buildField(
                      label: 'Sleep Target',
                      controller: _sleepCtrl,
                      suffix: 'hours',
                      icon: Icons.bedtime_rounded,
                      color: AppColors.lilac,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _buildField(
                      label: 'Target Weight',
                      controller: _weightCtrl,
                      suffix: 'kg',
                      icon: Icons.scale_rounded,
                      color: AppColors.peach,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),

        PillButton(
          label: 'Save Goals & Targets',
          icon: Icons.check_circle_rounded,
          variant: PillButtonVariant.primary,
          onPressed: _saveTargets,
        ),
        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }

  Widget _buildField({
    required String label,
    required TextEditingController controller,
    required String suffix,
    required IconData icon,
    required Color color,
    ValueChanged<String>? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: 4),
            Text(label, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: context.appInk)),
          ],
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          onChanged: onChanged,
          style: TextStyle(color: context.appInk),
          decoration: InputDecoration(
            suffixText: suffix,
            filled: true,
            fillColor: context.appBackground,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: context.appBorderColor),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          ),
        ),
      ],
    );
  }
}

