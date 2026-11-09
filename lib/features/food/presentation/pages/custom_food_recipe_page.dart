import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomFoodRecipePage extends StatefulWidget {
  const CustomFoodRecipePage({super.key});

  @override
  State<CustomFoodRecipePage> createState() => _CustomFoodRecipePageState();
}

class _CustomFoodRecipePageState extends State<CustomFoodRecipePage> {
  // Custom Food Form
  final _foodNameCtrl = TextEditingController();
  final _servingSizeCtrl = TextEditingController(text: '100');
  final _kcalCtrl = TextEditingController();
  final _proteinCtrl = TextEditingController();
  final _carbsCtrl = TextEditingController();
  final _fatCtrl = TextEditingController();
  final _fibreCtrl = TextEditingController();

  // Recipe Builder Form
  final _recipeNameCtrl = TextEditingController();
  final _servingsCtrl = TextEditingController(text: '4');
  final List<Map<String, dynamic>> _ingredients = [];
  final _ingNameCtrl = TextEditingController();
  final _ingKcalCtrl = TextEditingController();
  final _ingProteinCtrl = TextEditingController();

  @override
  void dispose() {
    _foodNameCtrl.dispose();
    _servingSizeCtrl.dispose();
    _kcalCtrl.dispose();
    _proteinCtrl.dispose();
    _carbsCtrl.dispose();
    _fatCtrl.dispose();
    _fibreCtrl.dispose();
    _recipeNameCtrl.dispose();
    _servingsCtrl.dispose();
    _ingNameCtrl.dispose();
    _ingKcalCtrl.dispose();
    _ingProteinCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: context.appBackground,
        appBar: AppBar(
          backgroundColor: context.appSurface,
          elevation: 0,
          leading: IconButton(
            icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
            onPressed: () => context.pop(),
          ),
          title: Text(
            'Create Food or Recipe',
            style: TextStyle(
              fontFamily: 'Baloo 2',
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: context.appInk,
            ),
          ),
          bottom: TabBar(
            indicatorColor: AppColors.mint,
            indicatorWeight: 3,
            labelColor: context.appInk,
            labelStyle: const TextStyle(fontWeight: FontWeight.w700),
            unselectedLabelColor: context.appSlate,
            tabs: const [
              Tab(text: 'Single Food'),
              Tab(text: 'Recipe Builder'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildCustomFoodTab(),
            _buildRecipeTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomFoodTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _foodNameCtrl,
            style: TextStyle(color: context.appInk),
            decoration: InputDecoration(
              labelText: 'Food Name',
              hintText: 'e.g. Grandma\'s Special Dosa',
              filled: true,
              fillColor: context.appSurface,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          TextField(
            controller: _servingSizeCtrl,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            style: TextStyle(color: context.appInk),
            decoration: InputDecoration(
              labelText: 'Serving Size (grams)',
              hintText: '100',
              filled: true,
              fillColor: context.appSurface,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),

          Text(
            'Nutritional Values per serving',
            style: TextStyle(
              fontFamily: 'Baloo 2',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: context.appInk,
            ),
          ),
          const SizedBox(height: AppSpacing.md),

          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _kcalCtrl,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  style: TextStyle(color: context.appInk),
                  decoration: InputDecoration(
                    labelText: context.tr('customFood_calories_hint'),
                    hintText: '0',
                    filled: true,
                    fillColor: context.appSurface,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: TextField(
                  controller: _proteinCtrl,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  style: TextStyle(color: context.appInk),
                  decoration: InputDecoration(
                    labelText: context.tr('customFood_protein_hint'),
                    hintText: '0',
                    filled: true,
                    fillColor: context.appSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),

          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _carbsCtrl,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  style: TextStyle(color: context.appInk),
                  decoration: InputDecoration(
                    labelText: context.tr('customFood_carbs_hint'),
                    hintText: '0',
                    filled: true,
                    fillColor: context.appSurface,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: TextField(
                  controller: _fatCtrl,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  style: TextStyle(color: context.appInk),
                  decoration: InputDecoration(
                    labelText: context.tr('customFood_fat_hint'),
                    hintText: '0',
                    filled: true,
                    fillColor: context.appSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),

          TextField(
            controller: _fibreCtrl,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            style: TextStyle(color: context.appInk),
            decoration: InputDecoration(
              labelText: 'Fibre (g)',
              hintText: '0',
              filled: true,
              fillColor: context.appSurface,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          PillButton(
            label: 'Save Custom Food',
            onPressed: () async {
              final name = _foodNameCtrl.text.trim();
              if (name.isEmpty) {
                BloomiToast.show(context, message: 'Please enter a food name');
                return;
              }

              final serving = double.tryParse(_servingSizeCtrl.text) ?? 100.0;
              final kcal = double.tryParse(_kcalCtrl.text) ?? 0.0;
              final protein = double.tryParse(_proteinCtrl.text) ?? 0.0;
              final carbs = double.tryParse(_carbsCtrl.text) ?? 0.0;
              final fat = double.tryParse(_fatCtrl.text) ?? 0.0;
              final fibre = double.tryParse(_fibreCtrl.text) ?? 0.0;

              await sl<FoodRepository>().createCustomFood(
                name: name,
                category: 'Custom',
                defaultGrams: serving,
                kcal: kcal,
                protein: protein,
                carbs: carbs,
                fat: fat,
                fibre: fibre,
              );

              if (!mounted) return;
              BloomiToast.show(context, message: 'Saved "$name" to custom foods!');
              context.pop();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeTab() {
    double totalKcal = 0;
    double totalP = 0;
    for (final ing in _ingredients) {
      totalKcal += (ing['kcal'] as num).toDouble();
      totalP += (ing['protein'] as num).toDouble();
    }
    final servings = double.tryParse(_servingsCtrl.text) ?? 1.0;
    final perServingKcal = servings > 0 ? totalKcal / servings : totalKcal;
    final perServingP = servings > 0 ? totalP / servings : totalP;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _recipeNameCtrl,
            style: TextStyle(color: context.appInk),
            decoration: InputDecoration(
              labelText: 'Recipe Name',
              hintText: 'e.g. Mixed Lentil Khichdi',
              filled: true,
              fillColor: context.appSurface,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          TextField(
            controller: _servingsCtrl,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            style: TextStyle(color: context.appInk),
            decoration: InputDecoration(
              labelText: context.tr('food_number_servings'),
              hintText: '4',
              filled: true,
              fillColor: context.appSurface,
            ),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: AppSpacing.lg),

          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.mintLight.withAlpha(context.isDarkMode ? 40 : 80),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('Total Recipe', style: TextStyle(color: context.appSlate, fontSize: 12)),
                    Text('${totalKcal.toStringAsFixed(0)} kcal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: context.appInk)),
                    Text('${totalP.toStringAsFixed(1)}g protein', style: TextStyle(color: context.appInk, fontSize: 13)),
                  ],
                ),
                Container(width: 1, height: 40, color: AppColors.mint),
                Column(
                  children: [
                    Text('Per Serving', style: TextStyle(color: context.appSlate, fontSize: 12)),
                    Text('${perServingKcal.toStringAsFixed(0)} kcal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark)),
                    Text('${perServingP.toStringAsFixed(1)}g protein', style: TextStyle(color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark, fontSize: 13)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ingredients',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: context.appInk,
                ),
              ),
              TextButton.icon(
                onPressed: _showAddIngredientDialog,
                icon: const Icon(CupertinoIcons.add),
                label: const Text('Add Item'),
              ),
            ],
          ),
          if (_ingredients.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'No ingredients added yet. Tap "Add Item" to add ingredients.',
                style: TextStyle(color: context.appSlate, fontSize: 13),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _ingredients.length,
              separatorBuilder: (context, index) => Divider(height: 1, color: context.appBorderColor),
              itemBuilder: (context, index) {
                final ing = _ingredients[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(ing['name'] as String, style: TextStyle(fontWeight: FontWeight.w600, color: context.appInk)),
                  subtitle: Text('${ing['kcal']} kcal · ${ing['protein']}g protein', style: TextStyle(color: context.appSlate)),
                  trailing: IconButton(
                    icon: Icon(CupertinoIcons.trash, color: context.appSlate),
                    onPressed: () => setState(() => _ingredients.removeAt(index)),
                  ),
                );
              },
            ),
          const SizedBox(height: AppSpacing.xl),

          PillButton(
            label: 'Save Recipe',
            onPressed: () async {
              final name = _recipeNameCtrl.text.trim();
              if (name.isEmpty) {
                BloomiToast.show(context, message: 'Please enter a recipe name');
                return;
              }
              if (_ingredients.isEmpty) {
                BloomiToast.show(context, message: 'Please add at least one ingredient');
                return;
              }

              await sl<FoodRepository>().createCustomFood(
                name: name,
                category: 'Recipe',
                defaultGrams: 100.0,
                kcal: perServingKcal,
                protein: perServingP,
                carbs: 0.0,
                fat: 0.0,
                fibre: 0.0,
                ingredients: _ingredients,
              );

              if (!mounted) return;
              BloomiToast.show(context, message: 'Saved recipe "$name" with ${servings.toInt()} servings!');
              context.pop();
            },
          ),
        ],
      ),
    );
  }

  void _showAddIngredientDialog() {
    _ingNameCtrl.clear();
    _ingKcalCtrl.clear();
    _ingProteinCtrl.clear();

    showDialog<void>(
      context: context,
      builder: (dialogCtx) {
        return AlertDialog(
          backgroundColor: context.appSurface,
          title: Text(context.tr('food_recipe_add_ingredient'), style: TextStyle(fontFamily: 'Baloo 2', fontWeight: FontWeight.bold, color: context.appInk)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _ingNameCtrl,
                style: TextStyle(color: context.appInk),
                decoration: const InputDecoration(labelText: 'Ingredient Name (e.g. 100g Rice)'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _ingKcalCtrl,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                style: TextStyle(color: context.appInk),
                decoration: InputDecoration(labelText: context.tr('customFood_calories_hint')),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _ingProteinCtrl,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                style: TextStyle(color: context.appInk),
                decoration: InputDecoration(labelText: context.tr('customFood_protein_hint')),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogCtx).pop(),
              child: Text(context.tr('cancel')),
            ),
            ElevatedButton(
              onPressed: () {
                final name = _ingNameCtrl.text.trim();
                final kcal = double.tryParse(_ingKcalCtrl.text) ?? 0.0;
                final protein = double.tryParse(_ingProteinCtrl.text) ?? 0.0;
                if (name.isNotEmpty) {
                  setState(() {
                    _ingredients.add({
                      'name': name,
                      'kcal': kcal,
                      'protein': protein,
                    });
                  });
                }
                Navigator.of(dialogCtx).pop();
              },
              child: Text(context.tr('add')),
            ),
          ],
        );
      },
    );
  }
}

