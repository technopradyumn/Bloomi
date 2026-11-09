import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/domain/entities/favourite_food_entity.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavouritesRecentPage extends StatefulWidget {
  final int initialTabIndex;
  const FavouritesRecentPage({super.key, this.initialTabIndex = 0});

  @override
  State<FavouritesRecentPage> createState() => _FavouritesRecentPageState();
}

class _FavouritesRecentPageState extends State<FavouritesRecentPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: widget.initialTabIndex.clamp(0, 2),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
          tooltip: context.tr('back'),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Favourites & Recent',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.mint,
          indicatorWeight: 3,
          labelColor: context.appInk,
          labelStyle: const TextStyle(fontWeight: FontWeight.w700),
          unselectedLabelColor: context.appSlate,
          tabs: const [
            Tab(text: 'Recent Foods'),
            Tab(text: 'Favourites'),
            Tab(text: 'Custom Foods'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          _RecentFoodsTab(),
          _FavouritesTab(),
          _CustomFoodsTab(),
        ],
      ),
    );
  }
}

/// Recent foods tab with AutomaticKeepAliveClientMixin to eliminate tab wipe-out and reload delay
class _RecentFoodsTab extends StatefulWidget {
  const _RecentFoodsTab();

  @override
  State<_RecentFoodsTab> createState() => _RecentFoodsTabState();
}

class _RecentFoodsTabState extends State<_RecentFoodsTab>
    with AutomaticKeepAliveClientMixin {
  late final Stream<List<MealLog>> _recentStream;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _recentStream = sl<FoodRepository>().watchRecentFoods(limit: 50);
  }

  Future<void> _quickReLogRecent(MealLog log) async {
    try {
      await sl<FoodRepository>().copyMealToDate(log, DateTime.now());
      if (mounted) {
        BloomiToast.show(
          context,
          message: 'Added "${log.foodName}" to today\'s diary! 🌿',
          icon: CupertinoIcons.check_mark_circled_solid,
        );
      }
    } catch (e) {
      if (mounted) {
        BloomiToast.show(
          context,
          message: 'Failed to log: $e',
          icon: CupertinoIcons.exclamationmark_triangle_fill,
        );
      }
    }
  }

  void _openDetail(MealLog log, NutrientSnapshotModel snap) {
    final grams = log.totalGrams > 0 ? log.totalGrams : 100.0;
    final factor = 100.0 / grams;
    final refId = log.foodReference.isNotEmpty ? log.foodReference : 'log_${log.id}';
    context.push(
      '/food/detail/$refId?mealType=${log.mealType}&name=${Uri.encodeComponent(log.foodName)}&kcal=${snap.calories * factor}&p=${snap.protein * factor}&c=${snap.carbs * factor}&f=${snap.fat * factor}&fib=${snap.fibre * factor}&servingGrams=$grams',
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return StreamBuilder<List<MealLog>>(
      stream: _recentStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(CupertinoIcons.exclamationmark_triangle, size: 40, color: AppColors.peach),
                  const SizedBox(height: 8),
                  Text(
                    'Failed to load recent foods: ${snapshot.error}',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: context.appSlate),
                  ),
                ],
              ),
            ),
          );
        }

        final list = snapshot.data ?? [];
        if (list.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    decoration: BoxDecoration(
                      color: AppColors.sky.withAlpha(60),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(CupertinoIcons.time, size: 48, color: AppColors.sky),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'No Recent Foods',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Foods you log will appear here without duplicates for instant 1-tap re-logging to your diary.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: context.appSlate, fontSize: 13, height: 1.4),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.appMint,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: const StadiumBorder(),
                    ),
                    icon: const Icon(CupertinoIcons.search, size: 18),
                    label: Text(context.tr('foodSearch_title'), style: const TextStyle(fontWeight: FontWeight.w700)),
                    onPressed: () => context.push('/food/search'),
                  ),
                ],
              ),
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.all(AppSpacing.md),
          itemCount: list.length,
          separatorBuilder: (context, index) => Divider(height: 1, color: context.appBorderColor),
          itemBuilder: (context, index) {
            final log = list[index];
            final snap = NutrientSnapshotModel.fromJson(log.computedNutrientsSnapshot);

            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              title: Text(
                log.foodName,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: context.appInk,
                ),
              ),
              subtitle: Text(
                '${log.quantity % 1 == 0 ? log.quantity.toInt() : log.quantity} ${log.unit} (${log.totalGrams.toInt()}g) · ${snap.calories.round()} kcal',
                style: TextStyle(fontSize: 12, color: context.appSlate),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.appMint,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      elevation: 0,
                      visualDensity: VisualDensity.compact,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => _quickReLogRecent(log),
                    child: const Text(
                      '+ Add',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(CupertinoIcons.chevron_right, size: 16, color: context.appSlate),
                ],
              ),
              // Item tap opens Food Detail Screen; only "+ Add" button logs the meal
              onTap: () => _openDetail(log, snap),
            );
          },
        );
      },
    );
  }
}

/// Favourites tab with AutomaticKeepAliveClientMixin to eliminate tab wipe-out and reload delay
class _FavouritesTab extends StatefulWidget {
  const _FavouritesTab();

  @override
  State<_FavouritesTab> createState() => _FavouritesTabState();
}

class _FavouritesTabState extends State<_FavouritesTab>
    with AutomaticKeepAliveClientMixin {
  late final Stream<List<FavouriteFoodEntity>> _favouritesStream;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _favouritesStream = sl<FoodRepository>().watchFavourites();
  }

  Future<void> _quickLogFavourite(FavouriteFoodEntity item) async {
    try {
      final grams = item.defaultServingGrams;
      final factor = grams / 100.0;
      final snap = NutrientSnapshotEntity(
        calories: item.kcalPer100g * factor,
        protein: item.proteinPer100g * factor,
        carbs: item.carbsPer100g * factor,
        fat: item.fatPer100g * factor,
        fibre: item.fibrePer100g * factor,
      );

      await sl<FoodRepository>().logMeal(
        mealType: 'Snack',
        foodName: item.name,
        foodReference: item.foodId,
        quantity: 1.0,
        unit: item.defaultUnit,
        totalGrams: grams,
        nutrients: snap,
      );

      if (mounted) {
        BloomiToast.show(
          context,
          message: 'Added "${item.name}" to today\'s diary! 🌿',
          icon: CupertinoIcons.check_mark_circled_solid,
        );
      }
    } catch (e) {
      if (mounted) {
        BloomiToast.show(
          context,
          message: 'Failed to log: $e',
          icon: CupertinoIcons.exclamationmark_triangle_fill,
        );
      }
    }
  }

  void _openDetail(FavouriteFoodEntity item) {
    context.push(
      '/food/detail/${item.foodId}?name=${Uri.encodeComponent(item.name)}&kcal=${item.kcalPer100g}&p=${item.proteinPer100g}&c=${item.carbsPer100g}&f=${item.fatPer100g}&fib=${item.fibrePer100g}&isCustom=${item.isCustom}&servingGrams=${item.defaultServingGrams}',
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return StreamBuilder<List<FavouriteFoodEntity>>(
      stream: _favouritesStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(CupertinoIcons.exclamationmark_triangle, size: 40, color: AppColors.peach),
                  const SizedBox(height: 8),
                  Text(
                    'Failed to load favourites: ${snapshot.error}',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: context.appSlate),
                  ),
                ],
              ),
            ),
          );
        }

        final favourites = snapshot.data ?? [];
        if (favourites.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    decoration: BoxDecoration(
                      color: AppColors.peach.withAlpha(60),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(CupertinoIcons.heart_fill, size: 48, color: AppColors.softOrange),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'No Favourite Foods Yet',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Tap the heart icon on any food item to save it here for instant 1-tap logging.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: context.appSlate, fontSize: 13, height: 1.4),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.appMint,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: const StadiumBorder(),
                    ),
                    icon: const Icon(CupertinoIcons.search, size: 18),
                    label: Text(context.tr('foodSearch_title'), style: const TextStyle(fontWeight: FontWeight.w700)),
                    onPressed: () => context.push('/food/search'),
                  ),
                ],
              ),
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.all(AppSpacing.md),
          itemCount: favourites.length,
          separatorBuilder: (context, index) => Divider(height: 1, color: context.appBorderColor),
          itemBuilder: (context, index) {
            final item = favourites[index];
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              title: Row(
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: item.name,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: context.appInk,
                        ),
                        children: [
                          if (item.hindiName != null && item.hindiName!.isNotEmpty)
                            TextSpan(
                              text: ' (${item.hindiName})',
                              style: TextStyle(
                                fontFamily: 'Nunito',
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
                  if (item.isCustom) ...[
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.peach.withAlpha(60),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text('Custom', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  '${item.defaultServingGrams.toInt()}g · ${item.kcalPer100g.round()} kcal · ${item.proteinPer100g.toStringAsFixed(1)}g P · ${item.carbsPer100g.toStringAsFixed(1)}g C · ${item.fatPer100g.toStringAsFixed(1)}g F',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: context.appSlate),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.appMint,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      elevation: 0,
                      visualDensity: VisualDensity.compact,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => _quickLogFavourite(item),
                    child: const Text('+ Log', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13)),
                  ),
                  const SizedBox(width: 4),
                  IconButton(
                    icon: const Icon(CupertinoIcons.heart_fill, color: AppColors.softOrange, size: 22),
                    tooltip: 'Remove from favourites',
                    onPressed: () async {
                      await sl<FoodRepository>().toggleFavourite(item);
                      if (context.mounted) {
                        BloomiToast.show(context, message: 'Removed ${item.name} from Favourites');
                      }
                    },
                  ),
                ],
              ),
              // Item tap opens Food Detail Screen; only "+ Log" button logs the food
              onTap: () => _openDetail(item),
            );
          },
        );
      },
    );
  }
}

/// Custom foods tab that separates custom added food so user can directly add or manage them
class _CustomFoodsTab extends StatefulWidget {
  const _CustomFoodsTab();

  @override
  State<_CustomFoodsTab> createState() => _CustomFoodsTabState();
}

class _CustomFoodsTabState extends State<_CustomFoodsTab>
    with AutomaticKeepAliveClientMixin {
  late final Stream<List<CustomFood>> _customStream;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _customStream = sl<FoodRepository>().watchCustomFoods();
  }

  Future<void> _quickLogCustom(CustomFood food) async {
    try {
      final grams = food.servingSizeGrams > 0 ? food.servingSizeGrams : 100.0;
      final snap = NutrientSnapshotEntity(
        calories: food.kcal,
        protein: food.protein,
        carbs: food.carbs,
        fat: food.fat,
        fibre: food.fibre,
      );

      await sl<FoodRepository>().logMeal(
        mealType: 'Snack',
        foodName: food.name,
        foodReference: food.id,
        quantity: 1.0,
        unit: 'serving',
        totalGrams: grams,
        nutrients: snap,
      );

      if (mounted) {
        BloomiToast.show(
          context,
          message: 'Added "${food.name}" to today\'s diary! 🌿',
          icon: CupertinoIcons.check_mark_circled_solid,
        );
      }
    } catch (e) {
      if (mounted) {
        BloomiToast.show(
          context,
          message: 'Failed to log: $e',
          icon: CupertinoIcons.exclamationmark_triangle_fill,
        );
      }
    }
  }

  void _openDetail(CustomFood food) {
    final grams = food.servingSizeGrams > 0 ? food.servingSizeGrams : 100.0;
    final factor = 100.0 / grams;
    context.push(
      '/food/detail/${food.id}?name=${Uri.encodeComponent(food.name)}&kcal=${food.kcal * factor}&p=${food.protein * factor}&c=${food.carbs * factor}&f=${food.fat * factor}&fib=${food.fibre * factor}&isCustom=true&servingGrams=$grams',
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return StreamBuilder<List<CustomFood>>(
      stream: _customStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(CupertinoIcons.exclamationmark_triangle, size: 40, color: AppColors.peach),
                  const SizedBox(height: 8),
                  Text('Failed to load custom foods: ${snapshot.error}',
                      textAlign: TextAlign.center, style: TextStyle(color: context.appSlate)),
                ],
              ),
            ),
          );
        }

        final customList = snapshot.data ?? [];
        if (customList.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    decoration: BoxDecoration(
                      color: AppColors.mint.withAlpha(50),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(CupertinoIcons.plus_app, size: 48, color: AppColors.mint),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'No Custom Foods Created',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Create your own recipes, dishes, and portion sizes to easily add them anytime.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: context.appSlate, fontSize: 13, height: 1.4),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.appMint,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: const StadiumBorder(),
                    ),
                    icon: const Icon(CupertinoIcons.add, size: 18),
                    label: Text(context.tr('foodSearch_custom_food'), style: const TextStyle(fontWeight: FontWeight.w700)),
                    onPressed: () => context.push('/food/custom-recipe'),
                  ),
                ],
              ),
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.all(AppSpacing.md),
          itemCount: customList.length,
          separatorBuilder: (context, index) => Divider(height: 1, color: context.appBorderColor),
          itemBuilder: (context, index) {
            final food = customList[index];
            final grams = food.servingSizeGrams > 0 ? food.servingSizeGrams : 100.0;

            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      food.name,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: context.appInk,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppColors.mint.withAlpha(50),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text('Custom', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.mintDark)),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  '${grams.toInt()}g serving · ${food.kcal.round()} kcal · ${food.protein.toStringAsFixed(1)}g P · ${food.carbs.toStringAsFixed(1)}g C · ${food.fat.toStringAsFixed(1)}g F',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: context.appSlate),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.appMint,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      elevation: 0,
                      visualDensity: VisualDensity.compact,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => _quickLogCustom(food),
                    child: const Text('+ Add', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13)),
                  ),
                  const SizedBox(width: 4),
                  Icon(CupertinoIcons.chevron_right, size: 16, color: context.appSlate),
                ],
              ),
              // Item tap opens Food Detail Screen; only "+ Add" button logs the food
              onTap: () => _openDetail(food),
            );
          },
        );
      },
    );
  }
}
