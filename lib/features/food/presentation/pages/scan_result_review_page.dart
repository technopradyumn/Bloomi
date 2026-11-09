import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/services/food/photo_scan_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScanResultReviewPage extends StatefulWidget {
  final List<ScannedFoodItem> initialItems;
  final int remainingScans;

  const ScanResultReviewPage({
    super.key,
    required this.initialItems,
    this.remainingScans = 10,
  });

  @override
  State<ScanResultReviewPage> createState() => _ScanResultReviewPageState();
}

class _ScanResultReviewPageState extends State<ScanResultReviewPage> {
  late List<ScannedFoodItem> _items;
  String _selectedMealType = 'lunch';
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _items = List.from(widget.initialItems);
  }

  double get _totalCalories => _items.fold(0, (sum, i) => sum + i.calories);
  double get _totalProtein => _items.fold(0, (sum, i) => sum + i.protein);
  double get _totalCarbs => _items.fold(0, (sum, i) => sum + i.carbs);
  double get _totalFat => _items.fold(0, (sum, i) => sum + i.fat);

  void _editPortion(int index) {
    final item = _items[index];
    double newGrams = item.estimatedGrams;

    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: context.appSurface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSpacing.cardRadius)),
      ),
      builder: (ctx) {
        return StatefulBuilder(
          builder: (sheetCtx, setSheetState) {
            return Padding(
              padding: EdgeInsets.only(
                left: AppSpacing.lg,
                right: AppSpacing.lg,
                top: AppSpacing.lg,
                bottom: MediaQuery.of(sheetCtx).viewInsets.bottom + AppSpacing.lg,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adjust Portion: ${item.name}',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    '${newGrams.toInt()} grams',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.mint,
                    ),
                  ),
                  Slider(
                    value: newGrams.clamp(10, 600),
                    min: 10,
                    max: 600,
                    divisions: 59,
                    activeColor: AppColors.mint,
                    onChanged: (val) {
                      setSheetState(() => newGrams = val);
                    },
                  ),
                  const SizedBox(height: AppSpacing.md),
                  PillButton(
                    label: 'Apply Adjustment',
                    onPressed: () {
                      final ratio = newGrams / (item.estimatedGrams > 0 ? item.estimatedGrams : 100);
                      setState(() {
                        _items[index] = item.copyWith(
                          estimatedGrams: newGrams,
                          calories: item.calories * ratio,
                          protein: item.protein * ratio,
                          carbs: item.carbs * ratio,
                          fat: item.fat * ratio,
                        );
                      });
                      Navigator.pop(ctx);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _manualAddItem() {
    final nameCtrl = TextEditingController();
    double grams = 100;
    double kcal = 120;

    showDialog<void>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: context.appSurface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          ),
          title: Text(
            'Add Item to Plate',
            style: TextStyle(fontFamily: 'Baloo 2', fontWeight: FontWeight.bold, color: context.appInk),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameCtrl,
                style: TextStyle(color: context.appInk),
                decoration: InputDecoration(
                  labelText: 'Food Name (e.g. Papad, Raita)',
                  labelStyle: TextStyle(color: context.appSlate),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(color: context.appInk),
                decoration: InputDecoration(
                  labelText: 'Estimated Grams (g)',
                  labelStyle: TextStyle(color: context.appSlate),
                ),
                onChanged: (v) => grams = double.tryParse(v) ?? 100,
              ),
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(color: context.appInk),
                decoration: InputDecoration(
                  labelText: context.tr('health_workout_calories_label'),
                  labelStyle: TextStyle(color: context.appSlate),
                ),
                onChanged: (v) => kcal = double.tryParse(v) ?? 120,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(context.tr('cancel')),
            ),
            PillButton(
              label: 'Add',
              onPressed: () {
                if (nameCtrl.text.isNotEmpty) {
                  setState(() {
                    _items.add(
                      ScannedFoodItem(
                        name: nameCtrl.text.trim(),
                        estimatedGrams: grams,
                        unit: 'portion',
                        confidence: 1.0,
                        matchedCategory: 'Custom',
                        calories: kcal,
                        protein: kcal * 0.04,
                        carbs: kcal * 0.15,
                        fat: kcal * 0.02,
                      ),
                    );
                  });
                }
                Navigator.pop(ctx);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _saveAllToDiary() async {
    if (_items.isEmpty) {
      BloomiToast.show(context, message: 'Please add at least one food item');
      return;
    }

    setState(() => _isSaving = true);
    final repo = sl<FoodRepository>();
    final now = DateTime.now();

    for (final item in _items) {
      final snapshot = NutrientSnapshotModel(
        calories: item.calories,
        protein: item.protein,
        carbs: item.carbs,
        fat: item.fat,
        fibre: (item.carbs * 0.1),
      );

      await repo.logMeal(
        mealType: _selectedMealType,
        foodName: item.name,
        foodReference: item.matchedFood?.id ?? 'ai_detected_${item.name.toLowerCase().replaceAll(' ', '_')}',
        quantity: item.estimatedGrams,
        unit: item.unit,
        totalGrams: item.estimatedGrams,
        nutrients: snapshot,
        timestamp: now,
      );
    }

    if (mounted) {
      BloomiToast.show(context, message: '$_selectedMealType logged successfully! 🌿');
      try {
        context.go('/food');
      } catch (_) {
        await Navigator.of(context).maybePop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Review Identified Plate',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: context.appInk,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.add_circled, color: context.appInk),
            tooltip: 'Add item',
            onPressed: _manualAddItem,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.screenSide),
                children: [
                  // Total Card Banner
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    decoration: BoxDecoration(
                      color: context.appSurface,
                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                      boxShadow: context.appCardShadow,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Plate Summary',
                              style: TextStyle(
                                fontFamily: 'Baloo 2',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: context.appInk,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                color: AppColors.butter,
                                borderRadius: BorderRadius.circular(AppSpacing.chipRadius),
                              ),
                              child: Text(
                                '${_totalCalories.round()} kcal',
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: context.appInk,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        MacroBars(
                          protein: MacroData(
                            name: 'Protein',
                            currentGrams: _totalProtein,
                            targetGrams: 50,
                            color: AppColors.peach,
                          ),
                          carbs: MacroData(
                            name: 'Carbs',
                            currentGrams: _totalCarbs,
                            targetGrams: 150,
                            color: AppColors.sky,
                          ),
                          fat: MacroData(
                            name: 'Fat',
                            currentGrams: _totalFat,
                            targetGrams: 45,
                            color: AppColors.butter,
                          ),
                          fibre: MacroData(
                            name: 'Fibre',
                            currentGrams: _totalCarbs * 0.1,
                            targetGrams: 25,
                            color: AppColors.mint,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // Meal Slot Selection
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.sm,
                    ),
                    decoration: BoxDecoration(
                      color: context.appSurface,
                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Log this meal as:',
                          style: TextStyle(fontWeight: FontWeight.w600, color: context.appInk),
                        ),
                        DropdownButton<String>(
                          value: _selectedMealType,
                          dropdownColor: context.appSurface,
                          underline: const SizedBox(),
                          icon: Icon(CupertinoIcons.arrowtriangle_down_fill, color: context.appInk),
                          items: [
                            DropdownMenuItem(value: 'breakfast', child: Text(context.tr('food_breakfast'))),
                            DropdownMenuItem(value: 'lunch', child: Text(context.tr('food_lunch'))),
                            DropdownMenuItem(value: 'snack', child: Text(context.tr('food_snacks'))),
                            DropdownMenuItem(value: 'dinner', child: Text(context.tr('food_dinner'))),
                          ],
                          onChanged: (val) {
                            if (val != null) setState(() => _selectedMealType = val);
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  Text(
                    'Identified Items (tap to adjust portion)',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: context.appSlate,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),

                  // Items List
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _items.length,
                    separatorBuilder: (context, index) => const SizedBox(height: AppSpacing.xs),
                    itemBuilder: (ctx, index) {
                      final item = _items[index];
                      return Dismissible(
                        key: ValueKey('${item.name}_$index'),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: AppColors.softOrange,
                            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                          ),
                          child: Icon(CupertinoIcons.trash, color: Theme.of(context).colorScheme.onError),
                        ),
                        onDismissed: (_) {
                          setState(() => _items.removeAt(index));
                        },
                        child: Material(
                          color: context.appSurface,
                          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                          child: InkWell(
                            onTap: () => _editPortion(index),
                            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                            child: Padding(
                              padding: const EdgeInsets.all(AppSpacing.md),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: AppColors.mint.withAlpha(50),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      CupertinoIcons.cart_fill,
                                      size: 18,
                                      color: context.appInk,
                                    ),
                                  ),
                                  const SizedBox(width: AppSpacing.md),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.name,
                                          style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: context.appInk,
                                          ),
                                        ),
                                        Text(
                                          '${item.estimatedGrams.toInt()}g · ${item.unit} · ${(item.confidence * 100).toInt()}% match',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: context.appSlate,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${item.calories.round()} kcal',
                                        style: TextStyle(
                                          fontFamily: 'Baloo 2',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: context.appInk,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(CupertinoIcons.pencil, size: 13, color: context.appSlate),
                                          const SizedBox(width: 2),
                                          Text('Adjust', style: TextStyle(fontSize: 11, color: context.appSlate)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Bottom CTA
            Padding(
              padding: const EdgeInsets.all(AppSpacing.screenSide),
              child: PillButton(
                label: 'Save All to Food Diary 🌿',
                isLoading: _isSaving,
                onPressed: _saveAllToDiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
