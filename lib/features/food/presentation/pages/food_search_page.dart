import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/features/food/domain/entities/food_search_result_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FoodSearchPage extends StatefulWidget {
  const FoodSearchPage({this.mealType = 'lunch', super.key});

  final String mealType;

  @override
  State<FoodSearchPage> createState() => _FoodSearchPageState();
}

class _FoodSearchPageState extends State<FoodSearchPage> {
  final TextEditingController _searchCtrl = TextEditingController();
  String _selectedCategory = 'All';
  List<FoodSearchResultEntity> _results = [];
  bool _isLoading = false;

  final List<String> _categories = [
    'All',
    'Breads & Grains',
    'Vegetables & Sabzis',
    'Dals & Legumes',
    'Fast Food & Street Food',
    'Snacks & Sweets',
    'Fruits',
    'Dairy & Drinks',
    'Eggs & Meats',
    'Regional & Chutneys',
    'Nuts & Snacks',
    'Seeds & Fats',
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await sl<FoodRepository>().ensureSeeded();
      await _runSearch('');
    });
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  Future<void> _runSearch(String query) async {
    setState(() => _isLoading = true);
    final results = await sl<FoodRepository>().searchFoods(
      query,
      category: _selectedCategory,
      limit: 60,
    );
    if (mounted) {
      setState(() {
        _results = results;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: context.appSurface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            }
          },
        ),
        title: Text(
          'Food Database',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        actions: [
          IconButton(
            tooltip: context.tr('foodSearch_custom_food'),
            icon: Icon(CupertinoIcons.add, color: context.appInk),
            onPressed: () => context.push('/food/custom'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Search Input with Custom + Button
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchCtrl,
                      autofocus: true,
                      onChanged: _runSearch,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: context.appInk,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Search food (roti, dal)...',
                        hintStyle: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 13,
                          color: context.appSlate,
                        ),
                        prefixIcon: Icon(CupertinoIcons.search, color: context.appSlate, size: 22),
                        suffixIcon: _searchCtrl.text.isNotEmpty
                            ? IconButton(
                                icon: Icon(CupertinoIcons.clear_thick, color: context.appSlate, size: 18),
                                onPressed: () {
                                  _searchCtrl.clear();
                                  _runSearch('');
                                },
                              )
                            : null,
                        filled: true,
                        fillColor: context.appSurface,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Material(
                    color: AppColors.mint,
                    borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                    elevation: 0,
                    child: InkWell(
                      onTap: () async {
                        await context.push('/food/custom-recipe?mealType=${widget.mealType}');
                        await _runSearch(_searchCtrl.text);
                      },
                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        alignment: Alignment.center,
                        child: Text(
                          'Custom +',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w800,
                            fontSize: 13,
                            color: context.appInk,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Category Filter Pills
            SizedBox(
              height: 38,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                itemCount: _categories.length,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final cat = _categories[index];
                  final isSelected = cat == _selectedCategory;
                  return ChoiceChip(
                    label: Text(cat),
                    selected: isSelected,
                    selectedColor: AppColors.mint,
                    backgroundColor: context.appSurface,
                    labelStyle: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: isSelected ? Theme.of(context).colorScheme.onPrimary : context.appSlate,
                    ),
                    onSelected: (val) {
                      if (val) {
                        setState(() => _selectedCategory = cat);
                        _runSearch(_searchCtrl.text);
                      }
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: AppSpacing.sm),

            // Search Results List
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator(color: AppColors.mint))
                  : _results.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(CupertinoIcons.search_circle, size: 48, color: context.appSlate),
                              const SizedBox(height: AppSpacing.sm),
                              Text(
                                'No food matches found',
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: context.appInk,
                                ),
                              ),
                              const SizedBox(height: AppSpacing.md),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.mint,
                                  foregroundColor: context.appInk,
                                  shape: const StadiumBorder(),
                                ),
                                icon: const Icon(CupertinoIcons.add),
                                label: const Text('Add Custom Recipe'),
                                onPressed: () => context.push('/food/custom'),
                              ),
                            ],
                          ),
                        )
                      : ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                          itemCount: _results.length,
                          separatorBuilder: (context, index) =>
                              Divider(height: 1, color: context.appBorderColor),
                          itemBuilder: (context, index) {
                            final item = _results[index];
                            return ListTile(
                              title: Row(
                                children: [
                                  Expanded(
                                    child: Text.rich(
                                      TextSpan(
                                        text: item.name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: context.appInk,
                                        ),
                                        children: [
                                          if (item.hindiName != null &&
                                              item.hindiName!.isNotEmpty)
                                            TextSpan(
                                              text: ' (${item.hindiName})',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: context.appSlate,
                                              ),
                                            ),
                                        ],
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text(
                                  '${item.category} · 100g · ${item.proteinPer100g.toStringAsFixed(1)}g P · ${item.carbsPer100g.toStringAsFixed(1)}g C · ${item.fatPer100g.toStringAsFixed(1)}g F',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12, color: context.appSlate),
                                ),
                              ),
                              trailing: Text(
                                '${item.kcalPer100g.round()} kcal',
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: context.appInk,
                                ),
                              ),
                              onTap: () {
                                context.push(
                                  '/food/detail/${item.id}?mealType=${widget.mealType}&name=${Uri.encodeComponent(item.name)}&kcal=${item.kcalPer100g}&p=${item.proteinPer100g}&c=${item.carbsPer100g}&f=${item.fatPer100g}&fib=${item.fibrePer100g}&isCustom=${item.isCustom}&servingGrams=${item.defaultServingGrams}',
                                );
                              },
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}

