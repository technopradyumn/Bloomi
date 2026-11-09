import 'package:flutter/cupertino.dart';
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
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({
    required this.foodId,
    this.mealEntryId,
    this.isEditMode = false,
    this.initialMealType = 'breakfast',
    this.fallbackName,
    this.fallbackKcal,
    this.fallbackProtein,
    this.fallbackCarbs,
    this.fallbackFat,
    this.fallbackFibre,
    this.fallbackIsCustom = false,
    this.fallbackServingGrams = 100.0,
    this.savedQuantity,
    this.savedUnit,
    this.savedTotalGrams,
    super.key,
  });

  final String foodId;
  final String? mealEntryId;
  final bool isEditMode;
  final String initialMealType;
  final String? fallbackName;
  final double? fallbackKcal;
  final double? fallbackProtein;
  final double? fallbackCarbs;
  final double? fallbackFat;
  final double? fallbackFibre;
  final bool fallbackIsCustom;
  final double fallbackServingGrams;
  final double? savedQuantity;
  final String? savedUnit;
  final double? savedTotalGrams;

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  FoodItem? _food;
  CustomFood? _customFood;
  bool _isLoading = true;

  double _quantity = 1.0;
  String _selectedUnit = 'serving';
  Map<String, double> _unitWeights = {
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
    _quantity = widget.savedQuantity ?? 1.0;
    _weightCtrl = TextEditingController(
      text: (widget.savedTotalGrams ?? 100.0).toInt().toString(),
    );
    _loadFood();
  }

  @override
  void dispose() {
    _weightCtrl.dispose();
    super.dispose();
  }

  /// Resolve serving units tailored to the exact food name and category.
  /// Roti -> pieces, Rice/Dal -> bowl/katori, Milk -> glass/ml, Egg -> pieces, Fruits -> pieces/serving.
  Map<String, double> _resolveUnitsForFood(String name, String category) {
    final n = name.toLowerCase();
    final c = category.toLowerCase();

    // 1. Indian Breads, Rotis, Chapatis, Parathas, Dosas, Idlis
    if (n.contains('roti') ||
        n.contains('chapati') ||
        n.contains('phulka') ||
        n.contains('paratha') ||
        n.contains('naan') ||
        n.contains('puri') ||
        n.contains('bread') ||
        n.contains('toast') ||
        n.contains('dosa') ||
        n.contains('idli') ||
        n.contains('bhatura') ||
        n.contains('kulcha')) {
      double perPiece = 40.0;
      if (n.contains('paratha') || n.contains('naan')) perPiece = 65.0;
      if (n.contains('dosa')) perPiece = 75.0;
      if (n.contains('idli')) perPiece = 45.0;
      if (n.contains('bread') || n.contains('toast')) perPiece = 30.0;
      if (n.contains('puri')) perPiece = 25.0;
      return {
        'pieces': perPiece,
        'serving': perPiece * 2,
        'g': 1.0,
      };
    }

    // 2. Liquids, Dairy, Beverages, Milk, Juice, Tea, Coffee, Shakes, Lassi, Water
    if (c.contains('dairy') ||
        c.contains('beverage') ||
        n.contains('milk') ||
        n.contains('tea') ||
        n.contains('chai') ||
        n.contains('coffee') ||
        n.contains('juice') ||
        n.contains('lassi') ||
        n.contains('shake') ||
        n.contains('smoothie') ||
        n.contains('water') ||
        n.contains('buttermilk') ||
        n.contains('chaas') ||
        n.contains('curd') ||
        n.contains('yogurt')) {
      return {
        'glass': 250.0,
        'cup': 150.0,
        'bowl': 200.0,
        'ml': 1.0,
      };
    }

    // 3. Rice, Dal, Curries, Sabzis, Khichdi, Biryani, Soups, Poha, Upma
    if (c.contains('grain') ||
        c.contains('curry') ||
        c.contains('dal') ||
        c.contains('lentil') ||
        c.contains('vegetable') ||
        n.contains('rice') ||
        n.contains('dal') ||
        n.contains('curry') ||
        n.contains('sabzi') ||
        n.contains('khichdi') ||
        n.contains('biryani') ||
        n.contains('pulao') ||
        n.contains('soup') ||
        n.contains('poha') ||
        n.contains('upma') ||
        n.contains('pasta') ||
        n.contains('noodle') ||
        n.contains('chole') ||
        n.contains('rajma')) {
      return {
        'bowl': 250.0,
        'katori': 150.0,
        'serving': 150.0,
        'tablespoon': 20.0,
        'g': 1.0,
      };
    }

    // 4. Eggs
    if (n.contains('egg') || n.contains('omelette') || n.contains('bhurji')) {
      return {
        'pieces': 50.0,
        'serving': 100.0,
        'g': 1.0,
      };
    }

    // 5. Fruits & Snacks (Apple, Banana, Mango, Orange, Samosa, Biscuit)
    if (c.contains('fruit') ||
        c.contains('snack') ||
        n.contains('apple') ||
        n.contains('banana') ||
        n.contains('mango') ||
        n.contains('orange') ||
        n.contains('samosa') ||
        n.contains('cookie') ||
        n.contains('biscuit') ||
        n.contains('snack')) {
      return {
        'pieces': 100.0,
        'serving': 100.0,
        'bowl': 150.0,
        'g': 1.0,
      };
    }

    // 6. Oils, Ghee, Butter, Spreads, Sugar, Honey
    if (c.contains('fat') ||
        c.contains('oil') ||
        n.contains('oil') ||
        n.contains('ghee') ||
        n.contains('butter') ||
        n.contains('sugar') ||
        n.contains('honey')) {
      return {
        'tablespoon': 15.0,
        'teaspoon': 5.0,
        'g': 1.0,
      };
    }

    // 7. General fallback
    return {
      'serving': 100.0,
      'bowl': 200.0,
      'pieces': 50.0,
      'g': 1.0,
    };
  }

  Future<void> _loadFood() async {
    final db = sl<AppDatabase>();
    final standardList = await (db.select(db.foodItems)
          ..where((t) => t.id.equals(widget.foodId)))
        .get();

    String foodName = widget.fallbackName ?? 'Food Item';
    String category = 'General';

    if (standardList.isNotEmpty) {
      _food = standardList.first;
      foodName = _food!.name;
      category = _food!.category;
    } else {
      final customList = await (db.select(db.customFoods)
            ..where((t) => t.id.equals(widget.foodId)))
          .get();
      if (customList.isNotEmpty) {
        _customFood = customList.first;
        foodName = _customFood!.name;
        category = 'Custom Food';
      }
    }

    // Populate food-appropriate serving units
    _unitWeights = _resolveUnitsForFood(foodName, category);

    // If in edit/view mode and saved unit was provided, ensure it exists in unit weights
    if (widget.savedUnit != null && widget.savedUnit!.isNotEmpty) {
      final unit = widget.savedUnit!;
      if (!_unitWeights.containsKey(unit)) {
        final totalG = widget.savedTotalGrams ?? 100.0;
        final q = widget.savedQuantity ?? 1.0;
        _unitWeights[unit] = q > 0 ? (totalG / q) : 100.0;
      }
      _selectedUnit = unit;
    } else {
      _selectedUnit = _unitWeights.keys.first;
    }

    if (widget.savedQuantity != null) {
      _quantity = widget.savedQuantity!;
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
        if (_selectedUnit == 'g' || _selectedUnit == 'ml') {
          _quantity = grams;
        } else {
          _quantity = grams / unitWeight;
        }
      });
    }
  }

  void _setWeightInGrams(double grams) {
    setState(() {
      _selectedUnit = _unitWeights.containsKey('g') ? 'g' : (_unitWeights.containsKey('ml') ? 'ml' : _selectedUnit);
      if (_selectedUnit == 'g' || _selectedUnit == 'ml') {
        _quantity = grams;
      } else {
        final unitWeight = _unitWeights[_selectedUnit] ?? 100.0;
        _quantity = grams / unitWeight;
      }
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
      final kcal = widget.fallbackKcal ?? 120.0;
      final p = widget.fallbackProtein ?? 5.0;
      final c = widget.fallbackCarbs ?? 18.0;
      final f = widget.fallbackFat ?? 3.0;
      final fib = widget.fallbackFibre ?? 2.5;

      return NutrientSnapshotModel(
        calories: kcal * factor,
        protein: p * factor,
        carbs: c * factor,
        fat: f * factor,
        fibre: fib * factor,
      );
    }
  }

  Future<void> _saveOrUpdateMeal() async {
    final name = _food?.name ?? _customFood?.name ?? widget.fallbackName ?? 'Food Item';
    final nutrients = _calculateNutrients();

    if (widget.isEditMode && widget.mealEntryId != null) {
      // EDIT MODE: Update existing row in SQLite database
      final db = sl<AppDatabase>();
      await (db.update(db.mealLogs)..where((t) => t.id.equals(widget.mealEntryId!)))
          .write(MealLogsCompanion(
        mealType: drift.Value(_selectedMealType),
        quantity: drift.Value(_quantity),
        unit: drift.Value(_selectedUnit),
        totalGrams: drift.Value(_totalGrams),
        computedNutrientsSnapshot: drift.Value(nutrients.toJson()),
        updatedAt: drift.Value(DateTime.now()),
        isDirty: const drift.Value(true),
      ));

      if (mounted) {
        BloomiToast.show(context, message: 'Updated $name in ${_selectedMealType[0].toUpperCase() + _selectedMealType.substring(1)}! ✨');
        if (context.canPop()) context.pop(true);
      }
    } else {
      // ADD MODE: Log new food entry
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

      if (mounted) {
        BloomiToast.show(context, message: 'Logged $name to ${_selectedMealType[0].toUpperCase() + _selectedMealType.substring(1)}! 🌱');
        if (context.canPop()) context.pop(true);
      }
    }
  }

  Future<void> _deleteMeal() async {
    if (widget.mealEntryId == null) return;
    final mealId = widget.mealEntryId!;
    final name = widget.fallbackName ?? _food?.name ?? _customFood?.name ?? 'food';
    await sl<FoodRepository>().deleteMealLog(mealId);
    if (mounted) {
      final messenger = ScaffoldMessenger.of(context);
      messenger.hideCurrentSnackBar();
      messenger.showSnackBar(
        SnackBar(
          content: Text('Removed "$name" from diary'),
          duration: const Duration(seconds: 4),
          action: SnackBarAction(
            label: 'Undo',
            textColor: Theme.of(context).colorScheme.primary,
            onPressed: () {
              sl<FoodRepository>().restoreMealLog(mealId);
            },
          ),
        ),
      );
      if (context.canPop()) context.pop(true);
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

    final isEdit = widget.isEditMode && widget.mealEntryId != null;

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: context.appSurface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
          onPressed: () {
            if (context.canPop()) context.pop();
          },
        ),
        title: Text(
          isEdit ? 'Edit Logged Food' : 'Food Nutrition Details',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: context.appInk,
          ),
        ),
        actions: [
          if (isEdit)
            IconButton(
              icon: Icon(CupertinoIcons.trash, color: Theme.of(context).colorScheme.error),
              tooltip: 'Delete Food Entry',
              onPressed: _deleteMeal,
            )
          else
            IconButton(
              icon: Icon(
                _isFavourite ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                color: _isFavourite ? AppColors.softOrange : context.appInk,
              ),
              tooltip: _isFavourite ? 'Unfavourite' : 'Favourite',
              onPressed: () async {
                final repo = sl<FoodRepository>();
                final kcal = _food?.kcalPer100g ??
                    (_customFood != null
                        ? (_customFood!.kcal / _customFood!.servingSizeGrams * 100.0)
                        : (widget.fallbackKcal ?? 0.0));
                final p = _food?.proteinPer100g ??
                    (_customFood != null
                        ? (_customFood!.protein / _customFood!.servingSizeGrams * 100.0)
                        : (widget.fallbackProtein ?? 0.0));
                final c = _food?.carbsPer100g ??
                    (_customFood != null
                        ? (_customFood!.carbs / _customFood!.servingSizeGrams * 100.0)
                        : (widget.fallbackCarbs ?? 0.0));
                final f = _food?.fatPer100g ??
                    (_customFood != null
                        ? (_customFood!.fat / _customFood!.servingSizeGrams * 100.0)
                        : (widget.fallbackFat ?? 0.0));
                final fib = _food?.fibrePer100g ??
                    (_customFood != null
                        ? (_customFood!.fibre / _customFood!.servingSizeGrams * 100.0)
                        : (widget.fallbackFibre ?? 0.0));

                final favItem = FavouriteFoodEntity(
                  foodId: widget.foodId,
                  name: name,
                  hindiName: hindiName,
                  category: category,
                  kcalPer100g: kcal,
                  proteinPer100g: p,
                  carbsPer100g: c,
                  fatPer100g: f,
                  fibrePer100g: fib,
                  defaultUnit: _selectedUnit,
                  defaultServingGrams: _unitWeights[_selectedUnit] ?? 100.0,
                  isCustom: _customFood != null || widget.fallbackIsCustom,
                  createdAt: DateTime.now(),
                );

                final nowFav = await repo.toggleFavourite(favItem);
                if (!context.mounted) return;
                setState(() => _isFavourite = nowFav);
                BloomiToast.show(
                  context,
                  message: nowFav ? 'Saved to Favourites! ❤️' : 'Removed from Favourites',
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
            // Mode Banner
            if (isEdit)
              Container(
                margin: const EdgeInsets.only(bottom: AppSpacing.md),
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: Color.alphaBlend(AppColors.mint.withAlpha(46), context.appSurface),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.mint, width: 1.5),
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.square_pencil, color: AppColors.mintDark, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Editing saved diary entry: ${widget.savedQuantity != null ? "${widget.savedQuantity! % 1 == 0 ? widget.savedQuantity!.toInt() : widget.savedQuantity} ${widget.savedUnit ?? ''}" : ''} (${(widget.savedTotalGrams ?? _totalGrams).toInt()}g)',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            // Food Header Card (Solid background)
            Container(
              padding: const EdgeInsets.all(AppSpacing.lg),
              decoration: BoxDecoration(
                color: context.appSurface,
                borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                boxShadow: context.appCardShadow,
                border: Border.all(color: context.appBorderColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color.alphaBlend(AppColors.mint.withAlpha(46), context.appSurface),
                          borderRadius: BorderRadius.circular(AppSpacing.chipRadius),
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Color.alphaBlend(AppColors.butter.withAlpha(89), context.appSurface),
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
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                  ),
                  if (hindiName != null && hindiName.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(
                      hindiName,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: context.appSlate,
                      ),
                    ),
                  ],
                  const SizedBox(height: AppSpacing.md),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Weight',
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: context.appSlate),
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
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),

            // Quantity & Portion Picker (Tailored to food)
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: context.appSurface,
                borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                boxShadow: context.appCardShadow,
                border: Border.all(color: context.appBorderColor),
              ),
              child: Column(
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
                  const SizedBox(height: AppSpacing.sm),
                  QuantityPicker(
                    quantity: _quantity,
                    unit: _selectedUnit,
                    availableUnits: availableUnits,
                    onQuantityChanged: _onQuantityChanged,
                    onUnitChanged: _onUnitChanged,
                  ),
                  const SizedBox(height: 12),

                  // Direct Gram Weight Input
                  TextField(
                    controller: _weightCtrl,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Weight in Grams (or ml)',
                      labelStyle: TextStyle(color: context.appSlate, fontWeight: FontWeight.w600),
                      suffixText: 'g',
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
                              color: isCurrent ? Theme.of(context).colorScheme.onPrimary : context.appInk,
                            ),
                            side: BorderSide(
                              color: isCurrent ? AppColors.mintDark : context.appBorderColor,
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

            // Macros Breakdown Card (Solid background)
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: context.appSurface,
                borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                boxShadow: context.appCardShadow,
                border: Border.all(color: context.appBorderColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nutritional Breakdown',
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

            // Meal Slot Selector
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: context.appSurface,
                borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                boxShadow: context.appCardShadow,
                border: Border.all(color: context.appBorderColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isEdit ? 'Meal Slot' : 'Log to Meal',
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

            // Action Buttons
            PillButton(
              label: isEdit
                  ? 'Update in ${_selectedMealType[0].toUpperCase() + _selectedMealType.substring(1)}'
                  : 'Log Food to ${_selectedMealType[0].toUpperCase() + _selectedMealType.substring(1)}',
              onPressed: _saveOrUpdateMeal,
            ),

            if (isEdit) ...[
              const SizedBox(height: AppSpacing.sm),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.error,
                  side: BorderSide(color: Theme.of(context).colorScheme.error),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSpacing.pillRadius),
                  ),
                ),
                icon: const Icon(CupertinoIcons.trash, size: 20),
                label: const Text(
                  'Delete from Diary',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                onPressed: _deleteMeal,
              ),
            ],
            const SizedBox(height: AppSpacing.xl),
          ],
        ),
      ),
    );
  }
}
