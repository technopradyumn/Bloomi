import 'dart:convert';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/chip_selector.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/core/widgets/quantity_picker.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/domain/entities/favourite_food_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({
    required this.foodId,
    this.initialMealType = 'breakfast',
    this.fallbackName,
    this.fallbackKcal,
    this.fallbackProtein,
    this.fallbackCarbs,
    this.fallbackFat,
    this.fallbackFibre,
    this.fallbackIsCustom = false,
    this.fallbackServingGrams = 100.0,
    super.key,
  });

  final String foodId;
  final String initialMealType;
  final String? fallbackName;
  final double? fallbackKcal;
  final double? fallbackProtein;
  final double? fallbackCarbs;
  final double? fallbackFat;
  final double? fallbackFibre;
  final bool fallbackIsCustom;
  final double fallbackServingGrams;

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  FoodItem? _food;
  CustomFood? _customFood;
  bool _isLoading = true;

  double _quantity = 1.0;
  String _selectedUnit = 'katori';
  final Map<String, double> _unitWeights = {
    'katori': 150.0,
    'roti': 40.0,
    'bowl': 250.0,
    'glass': 200.0,
    'tablespoon': 15.0,
    'teaspoon': 5.0,
    'piece': 50.0,
    'serving': 100.0,
    'g': 1.0,
  };

  late String _selectedMealType;
  bool _isFavourite = false;
  late final TextEditingController _weightCtrl;

  @override
  void initState() {
    super.initState();
    _selectedMealType = widget.initialMealType;
    _weightCtrl = TextEditingController(text: '100');
    _loadFood();
  }

  @override
  void dispose() {
    _weightCtrl.dispose();
    super.dispose();
  }

  Future<void> _loadFood() async {
    final db = sl<AppDatabase>();
    final standardList = await (db.select(db.foodItems)
          ..where((t) => t.id.equals(widget.foodId)))
        .get();

    if (standardList.isNotEmpty) {
      _food = standardList.first;
      final units = await (db.select(db.foodUnits)
            ..where((t) => t.foodId.equals(widget.foodId))
            ..where((t) => t.deleted.equals(false)))
          .get();
      for (final u in units) {
        _unitWeights[u.unitName] = u.gramsPerUnit;
      }
      if (units.isNotEmpty) {
        _selectedUnit = units.first.unitName;
      } else if (_food!.name.toLowerCase().contains('roti') ||
          _food!.name.toLowerCase().contains('chapati')) {
        _selectedUnit = 'roti';
      } else if (_food!.category.contains('Dairy') || _food!.name.contains('Milk')) {
        _selectedUnit = 'glass';
      }
    } else {
      final customList = await (db.select(db.customFoods)
            ..where((t) => t.id.equals(widget.foodId)))
          .get();
      if (customList.isNotEmpty) {
        _customFood = customList.first;
        _selectedUnit = 'g';
        _quantity = _customFood!.servingSizeGrams;
      }
    }

    final isFav = await sl<FoodRepository>().isFavourite(widget.foodId);
    if (mounted) {
      setState(() {
        _isFavourite = isFav;
        _isLoading = false;
        _weightCtrl.text = _totalGrams.toInt().toString();
      });
    }
  }

  void _onQuantityChanged(double q) {
    setState(() {
      _quantity = q;
      _weightCtrl.text = _totalGrams.toInt().toString();
    });
  }

  void _onUnitChanged(String u) {
    setState(() {
      _selectedUnit = u;
      _weightCtrl.text = _totalGrams.toInt().toString();
    });
  }

  void _onWeightInputChanged(String val) {
    final grams = double.tryParse(val.trim());
    if (grams != null && grams > 0) {
      setState(() {
        final unitWeight = _unitWeights[_selectedUnit] ?? 100.0;
        if (_selectedUnit == 'g') {
          _quantity = grams;
        } else {
          _quantity = grams / unitWeight;
        }
      });
    }
  }

  void _setWeightInGrams(double grams) {
    setState(() {
      _selectedUnit = 'g';
      _quantity = grams;
      _weightCtrl.text = grams.toInt().toString();
    });
  }

  double get _totalGrams {
    final unitWeight = _unitWeights[_selectedUnit] ?? 100.0;
    return _quantity * unitWeight;
  }

  NutrientSnapshotModel _calculateNutrients() {
    final totalGrams = _totalGrams;
    final factor = totalGrams / 100.0;

    if (_food != null) {
      return NutrientSnapshotModel(
        calories: _food!.kcalPer100g * factor,
        protein: _food!.proteinPer100g * factor,
        carbs: _food!.carbsPer100g * factor,
        fat: _food!.fatPer100g * factor,
        fibre: _food!.fibrePer100g * factor,
      );
    } else if (_customFood != null) {
      final per100Factor = 100.0 / (_customFood!.servingSizeGrams > 0 ? _customFood!.servingSizeGrams : 100.0);
      return NutrientSnapshotModel(
        calories: (_customFood!.kcal * per100Factor) * factor,
        protein: (_customFood!.protein * per100Factor) * factor,
        carbs: (_customFood!.carbs * per100Factor) * factor,
        fat: (_customFood!.fat * per100Factor) * factor,
        fibre: (_customFood!.fibre * per100Factor) * factor,
      );
    } else {
      final kcal = widget.fallbackKcal ?? 100.0;
      final p = widget.fallbackProtein ?? 5.0;
      final c = widget.fallbackCarbs ?? 15.0;
      final f = widget.fallbackFat ?? 2.0;
      final fib = widget.fallbackFibre ?? 2.0;

      return NutrientSnapshotModel(
        calories: kcal * factor,
        protein: p * factor,
        carbs: c * factor,
        fat: f * factor,
        fibre: fib * factor,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: context.appBackground,
        body: const Center(child: CircularProgressIndicator(color: AppColors.mint)),
      );
    }
    final name = _food?.name ?? _customFood?.name ?? widget.fallbackName ?? 'Food Details';
    final hindiName = _food?.hindiName;
    final category = _food?.category ?? (_customFood != null ? 'Custom Food' : 'General');
    final nutrients = _calculateNutrients();

    final availableUnits = _unitWeights.keys.toList();

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: context.appInk),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            }
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              _isFavourite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
              color: _isFavourite ? AppColors.softOrange : context.appInk,
            ),
            tooltip: _isFavourite ? 'Unfavourite' : 'Favourite',
            onPressed: () async {
              final repo = sl<FoodRepository>();
              final name = _food?.name ??
                  _customFood?.name ??
                  widget.fallbackName ??
                  'Food Item';
              final hindi = _food?.hindiName;
              final kcal = _food?.kcalPer100g ??
                  (_customFood != null
                      ? (_customFood!.kcal /
                          _customFood!.servingSizeGrams *
                          100.0)
                      : (widget.fallbackKcal ?? 0.0));
              final p = _food?.proteinPer100g ??
                  (_customFood != null
                      ? (_customFood!.protein /
                          _customFood!.servingSizeGrams *
                          100.0)
                      : (widget.fallbackProtein ?? 0.0));
              final c = _food?.carbsPer100g ??
                  (_customFood != null
                      ? (_customFood!.carbs /
                          _customFood!.servingSizeGrams *
                          100.0)
                      : (widget.fallbackCarbs ?? 0.0));
              final f = _food?.fatPer100g ??
                  (_customFood != null
                      ? (_customFood!.fat /
                          _customFood!.servingSizeGrams *
                          100.0)
                      : (widget.fallbackFat ?? 0.0));
              final fib = _food?.fibrePer100g ??
                  (_customFood != null
                      ? (_customFood!.fibre /
                          _customFood!.servingSizeGrams *
                          100.0)
                      : (widget.fallbackFibre ?? 0.0));
              final isCustom = _customFood != null || widget.fallbackIsCustom;

              final favItem = FavouriteFoodEntity(
                foodId: widget.foodId,
                name: name,
                hindiName: hindi,
                category: _food?.category ?? 'General',
                kcalPer100g: kcal,
                proteinPer100g: p,
                carbsPer100g: c,
                fatPer100g: f,
                fibrePer100g: fib,
                defaultUnit: _selectedUnit,
                defaultServingGrams: _unitWeights[_selectedUnit] ?? 100.0,
                isCustom: isCustom,
                createdAt: DateTime.now(),
              );

              final nowFav = await repo.toggleFavourite(favItem);
              if (!context.mounted) return;
              setState(() => _isFavourite = nowFav);
              BloomiToast.show(
                context,
                message: nowFav
                    ? 'Saved to Favourites! ❤️'
                    : 'Removed from Favourites',
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenSide,
            vertical: AppSpacing.md,
          ),
          children: [
            // Food Header
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
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.mint.withAlpha(50),
                      borderRadius: BorderRadius.circular(AppSpacing.chipRadius),
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: context.appInk,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                  ),
                  if (hindiName != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      hindiName,
                      style: TextStyle(
                        fontSize: 14,
                        color: context.appSlate,
                      ),
                    ),
                  ],
                  const SizedBox(height: AppSpacing.md),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Estimated Weight',
                            style: TextStyle(fontSize: 12, color: context.appSlate),
                          ),
                          Text(
                            '${_totalGrams.toInt()} grams',
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: context.appInk,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          color: AppColors.butter.withAlpha(context.isDarkMode ? 80 : 255),
                          borderRadius: BorderRadius.circular(AppSpacing.chipRadius),
                        ),
                        child: Text(
                          '${nutrients.calories.toInt()} kcal',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: context.appInk,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),

            // Quantity & Portion Picker
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Portion & Household Measure',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: context.appInk,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.mint.withAlpha(40),
                          borderRadius: BorderRadius.circular(AppSpacing.chipRadius),
                        ),
                        child: Text(
                          '${_totalGrams.toInt()} gm total',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  QuantityPicker(
                    quantity: _quantity,
                    unit: _selectedUnit,
                    availableUnits: availableUnits,
                    onQuantityChanged: _onQuantityChanged,
                    onUnitChanged: _onUnitChanged,
                  ),
                  Divider(height: 28, color: context.appBorderColor),

                  // Direct Weight Input in gm
                  Row(
                    children: [
                      Icon(Icons.scale_rounded, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark, size: 20),
                      const SizedBox(width: 6),
                      Text(
                        'Enter Weight / Grams (gm)',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: context.appInk,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _weightCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                    decoration: InputDecoration(
                      hintText: 'e.g. 100, 150, 250',
                      suffixText: 'gm',
                      suffixStyle: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                      ),
                      prefixIcon: Icon(Icons.scale_outlined, size: 20, color: context.appSlate),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                      filled: true,
                      fillColor: context.appBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: context.appBorderColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: AppColors.mint, width: 2),
                      ),
                    ),
                    onChanged: _onWeightInputChanged,
                  ),
                  const SizedBox(height: 10),

                  // Quick Weight Preset Chips
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [50, 100, 150, 200, 250, 300, 400, 500].map((grams) {
                        final isCurrent = (_totalGrams.toInt() == grams);
                        return Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: ActionChip(
                            label: Text('${grams}g'),
                            backgroundColor: isCurrent ? context.appMint : context.appSurface,
                            labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: isCurrent ? FontWeight.w700 : FontWeight.w600,
                              color: isCurrent ? Theme.of(context).colorScheme.onPrimary : context.appSlate,
                            ),
                            side: BorderSide(
                              color: isCurrent ? (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark) : context.appBorderColor,
                            ),
                            onPressed: () => _setWeightInGrams(grams.toDouble()),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),

            // Macros Breakdown Card
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
                    'Macro Nutrients',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  MacroBars(
                    protein: MacroData(
                      name: 'Protein',
                      currentGrams: nutrients.protein,
                      targetGrams: 50,
                      color: AppColors.peach,
                    ),
                    carbs: MacroData(
                      name: 'Carbs',
                      currentGrams: nutrients.carbs,
                      targetGrams: 150,
                      color: AppColors.sky,
                    ),
                    fat: MacroData(
                      name: 'Fat',
                      currentGrams: nutrients.fat,
                      targetGrams: 40,
                      color: AppColors.butter,
                    ),
                    fibre: MacroData(
                      name: 'Fibre',
                      currentGrams: nutrients.fibre,
                      targetGrams: 25,
                      color: AppColors.mint,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),

            // Ingredients & Quantity Details (if available)
            if (_food?.micronutrientsJson != null &&
                _food!.micronutrientsJson!.isNotEmpty) ...[
              _buildIngredientsCard(context, _food!.micronutrientsJson!),
              const SizedBox(height: AppSpacing.md),
            ],

            // Meal Slot Selector
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
                    'Log to Meal',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  ChipSelector<String>.single(
                    items: const [
                      BloomiChipItem(value: 'breakfast', label: 'Breakfast'),
                      BloomiChipItem(value: 'lunch', label: 'Lunch'),
                      BloomiChipItem(value: 'snack', label: 'Snack'),
                      BloomiChipItem(value: 'dinner', label: 'Dinner'),
                    ],
                    selectedItem: _selectedMealType,
                    onChanged: (val) => setState(() => _selectedMealType = val),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.lg),

            // Save PillButton
            PillButton(
              label: 'Log Food to ${_selectedMealType[0].toUpperCase() + _selectedMealType.substring(1)}',
              onPressed: () async {
                final foodRef = _food?.id ?? _customFood?.id ?? widget.foodId;
                await sl<FoodRepository>().logMeal(
                  mealType: _selectedMealType,
                  foodName: name,
                  foodReference: foodRef,
                  quantity: _quantity,
                  unit: _selectedUnit,
                  totalGrams: _totalGrams,
                  nutrients: nutrients,
                );

                if (context.mounted) {
                  BloomiToast.show(
                    context,
                    message: 'Logged $name to ${_selectedMealType[0].toUpperCase() + _selectedMealType.substring(1)}! 🌱',
                  );
                  if (context.canPop()) {
                    context.pop();
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIngredientsCard(BuildContext context, String jsonStr) {
    String? ingredients;
    String? stdQty;
    try {
      final map = jsonDecode(jsonStr);
      if (map is Map) {
        ingredients = map['ingredients'] as String?;
        stdQty = map['standardQuantity'] as String?;
      }
    } catch (_) {}

    if (ingredients == null || ingredients.isEmpty) {
      return const SizedBox.shrink();
    }

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
          Row(
            children: [
              const Icon(Icons.menu_book_rounded,
                  size: 18, color: AppColors.mint),
              const SizedBox(width: 8),
              Text(
                'Information',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: context.appInk,
                ),
              ),
              const Spacer(),
              if (stdQty != null && stdQty.isNotEmpty)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.lilac.withAlpha(context.isDarkMode ? 60 : 100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    stdQty,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            ingredients,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 13,
              height: 1.45,
              color: context.appSlate,
            ),
          ),
        ],
      ),
    );
  }
}

