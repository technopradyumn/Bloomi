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
  const FavouritesRecentPage({super.key});

  @override
  State<FavouritesRecentPage> createState() => _FavouritesRecentPageState();
}

class _FavouritesRecentPageState extends State<FavouritesRecentPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildRecentList(),
          _buildFavouritesList(),
        ],
      ),
    );
  }

  Widget _buildRecentList() {
    return StreamBuilder<List<MealLog>>(
      stream: sl<FoodRepository>().watchRecentFoods(limit: 50),
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
                  Text('Failed to load recent foods: ${snapshot.error}',
                      textAlign: TextAlign.center, style: TextStyle(color: context.appSlate)),
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
                    label: Text(context.tr('foodSearch_title'), style: TextStyle(fontWeight: FontWeight.w700)),
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
                  IconButton(
                    icon: Icon(CupertinoIcons.info_circle, size: 20, color: context.appSlate),
                    tooltip: 'Nutrition Details',
                    onPressed: () {
                      final grams = log.totalGrams > 0 ? log.totalGrams : 100.0;
                      final factor = 100.0 / grams;
                      final refId = log.foodReference.isNotEmpty ? log.foodReference : 'log_${log.id}';
                      context.push(
                        '/food/detail/$refId?mealType=${log.mealType}&name=${Uri.encodeComponent(log.foodName)}&kcal=${snap.calories * factor}&p=${snap.protein * factor}&c=${snap.carbs * factor}&f=${snap.fat * factor}&fib=${snap.fibre * factor}&servingGrams=$grams',
                      );
                    },
                  ),
                ],
              ),
              onTap: () => _quickReLogRecent(log),
            );
          },
        );
      },
    );
  }

  Widget _buildFavouritesList() {
    return StreamBuilder<List<FavouriteFoodEntity>>(
      stream: sl<FoodRepository>().watchFavourites(),
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
                  Text('Failed to load favourites: ${snapshot.error}',
                      textAlign: TextAlign.center, style: TextStyle(color: context.appSlate)),
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
                    child: const Icon(CupertinoIcons.heart_fill,
                        size: 48, color: AppColors.softOrange),
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
                    style: TextStyle(
                        color: context.appSlate, fontSize: 13, height: 1.4),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.appMint,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: const StadiumBorder(),
                    ),
                    icon: const Icon(CupertinoIcons.search, size: 18),
                    label: Text(context.tr('foodSearch_title'),
                        style: TextStyle(fontWeight: FontWeight.w700)),
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
          separatorBuilder: (context, index) =>
              Divider(height: 1, color: context.appBorderColor),
          itemBuilder: (context, index) {
            final item = favourites[index];
            return ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                          if (item.hindiName != null &&
                              item.hindiName!.isNotEmpty)
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.peach.withAlpha(60),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text('Custom',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => _quickLogFavourite(item),
                    child: const Text('+ Log',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 13)),
                  ),
                  const SizedBox(width: 4),
                  IconButton(
                    icon: const Icon(CupertinoIcons.heart_fill,
                        color: AppColors.softOrange, size: 22),
                    tooltip: 'Remove from favourites',
                    onPressed: () async {
                      await sl<FoodRepository>().toggleFavourite(item);
                      if (context.mounted) {
                        BloomiToast.show(context,
                            message: 'Removed ${item.name} from Favourites');
                      }
                    },
                  ),
                ],
              ),
              onTap: () {
                context.push(
                  '/food/detail/${item.foodId}?name=${Uri.encodeComponent(item.name)}&kcal=${item.kcalPer100g}&p=${item.proteinPer100g}&c=${item.carbsPer100g}&f=${item.fatPer100g}&fib=${item.fibrePer100g}&isCustom=${item.isCustom}&servingGrams=${item.defaultServingGrams}',
                );
              },
            );
          },
        );
      },
    );
  }
}
