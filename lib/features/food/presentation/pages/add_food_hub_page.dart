import 'package:bloomi/core/localization/app_localizations.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/food/data/models/nutrient_snapshot_model.dart';
import 'package:bloomi/features/food/domain/entities/favourite_food_entity.dart';
import 'package:bloomi/features/food/domain/entities/food_search_result_entity.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/features/food/presentation/pages/barcode_scan_page.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddFoodHubPage extends StatefulWidget {
  const AddFoodHubPage({
    this.initialMealType = 'breakfast',
    super.key,
  });

  final String initialMealType;

  @override
  State<AddFoodHubPage> createState() => _AddFoodHubPageState();
}

class _AddFoodHubPageState extends State<AddFoodHubPage>
    with SingleTickerProviderStateMixin {
  late String _selectedMealType;
  final TextEditingController _searchCtrl = TextEditingController();
  List<FoodSearchResultEntity> _searchResults = [];
  bool _isLoading = true;
  late final TabController _tabController;
  int _activeTabIndex = 0;
  bool _isPremium = false;
  StreamSubscription<bool>? _premiumSub;

  @override
  void initState() {
    super.initState();
    _selectedMealType = widget.initialMealType;
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    _tabController.animation?.addListener(_handleTabAnimation);

    _checkPremium();
    _premiumSub = sl<BillingService>().onPremiumChanged.listen((val) {
      if (mounted) setState(() => _isPremium = val);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final repo = sl<FoodRepository>();
      await repo.ensureSeeded();
      await _doSearch('');
    });
  }

  Future<void> _checkPremium() async {
    final prem = await sl<BillingService>().isPremium();
    if (mounted) setState(() => _isPremium = prem);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      if (_activeTabIndex != _tabController.index) {
        setState(() {
          _activeTabIndex = _tabController.index;
        });
      }
    }
  }

  void _handleTabAnimation() {
    final val = _tabController.animation?.value;
    if (val == null) return;

    final nearest = val.round();
    final dist = (val - nearest).abs();

    if (dist < 0.05 && _activeTabIndex != nearest) {
      setState(() {
        _activeTabIndex = nearest;
      });
    } else if (dist >= 0.15 && _activeTabIndex == 1) {
      // Deactivate scanner as soon as sliding starts
      setState(() {
        _activeTabIndex = -1;
      });
    }
  }

  @override
  void dispose() {
    _premiumSub?.cancel();
    _tabController.removeListener(_handleTabSelection);
    _tabController.animation?.removeListener(_handleTabAnimation);
    _tabController.dispose();
    _searchCtrl.dispose();
    super.dispose();
  }

  Future<void> _doSearch(String query) async {
    if (!mounted) return;
    setState(() => _isLoading = true);
    final results = await sl<FoodRepository>().searchFoods(query, limit: 50);
    if (mounted) {
      setState(() {
        _searchResults = results;
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
          icon: Icon(CupertinoIcons.clear, color: context.appInk),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            }
          },
        ),
        title: Text(
          'Add Food (${_selectedMealType.toUpperCase()})',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: context.appInk,
          ),
        ),
        actions: [
          // Meal type switcher dropdown
          PopupMenuButton<String>(
            initialValue: _selectedMealType,
            icon: Icon(CupertinoIcons.cart_fill, color: context.appInk),
            tooltip: 'Switch meal type',
            color: context.appSurface,
            onSelected: (val) {
              setState(() => _selectedMealType = val);
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: 'breakfast', child: Text(context.tr('food_breakfast'))),
              PopupMenuItem(value: 'lunch', child: Text(context.tr('food_lunch'))),
              PopupMenuItem(value: 'snack', child: Text(context.tr('food_snacks'))),
              PopupMenuItem(value: 'dinner', child: Text(context.tr('food_dinner'))),
            ],
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.mint,
          indicatorWeight: 3,
          labelColor: context.appInk,
          labelStyle: const TextStyle(fontWeight: FontWeight.w700),
          unselectedLabelColor: context.appSlate,
          isScrollable: true,
          tabs: [
            const Tab(text: 'Search & Log'),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(context.tr('barcode_title')),
                  const SizedBox(width: 5),
                  if (!_isPremium)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: context.appSoftOrange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(CupertinoIcons.star_circle_fill, size: 12, color: context.appBackground),
                          const SizedBox(width: 2),
                          Text('PRO', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w800, color: context.appBackground)),
                        ],
                      ),
                    )
                  else
                    const Text('🏷️'),
                ],
              ),
            ),
            const Tab(text: 'Recent & Favs'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildSearchTab(),
          _isPremium
              ? BarcodeScanPage(
                  isEmbedded: true,
                  mealType: _selectedMealType,
                  isActive: _activeTabIndex == 1,
                )
              : _buildBarcodeScannerLockedPaywall(),
          _RecentAndFavsView(selectedMealType: _selectedMealType),
        ],
      ),
    );
  }

  Widget _buildSearchTab() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                    boxShadow: context.appCardShadow,
                    border: Border.all(color: context.appBorderColor, width: 1),
                  ),
                  child: TextField(
                    controller: _searchCtrl,
                    onChanged: _doSearch,
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
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          CupertinoIcons.search,
                          color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                          size: 22,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 42,
                        minHeight: 42,
                      ),
                      suffixIcon: _searchCtrl.text.isNotEmpty
                          ? IconButton(
                              icon: Icon(CupertinoIcons.clear_thick,
                                  color: context.appSlate, size: 18),
                              onPressed: () {
                                _searchCtrl.clear();
                                _doSearch('');
                              },
                            )
                          : null,
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    ),
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
                    await context.push('/food/custom-recipe?mealType=$_selectedMealType');
                    await _doSearch(_searchCtrl.text);
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
        Expanded(
          child: _isLoading
              ? const Center(
                  child: CircularProgressIndicator(color: AppColors.mint))
              : _searchResults.isEmpty
                  ? Center(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(AppSpacing.md),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(CupertinoIcons.search_circle,
                                size: 48, color: context.appSlate),
                            const SizedBox(height: AppSpacing.sm),
                            Text(
                              _searchCtrl.text.isNotEmpty
                                  ? 'No foods found for "${_searchCtrl.text}"'
                                  : 'No foods loaded yet',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Baloo 2',
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: context.appInk,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              _searchCtrl.text.isNotEmpty
                                  ? 'Try a different spelling or create a custom recipe.'
                                  : 'Tap below to refresh and load 500+ Indian & global foods.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 13, color: context.appSlate),
                            ),
                            const SizedBox(height: AppSpacing.md),
                            if (_searchCtrl.text.isEmpty) ...[
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.mint,
                                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                                  shape: const StadiumBorder(),
                                ),
                                icon: const Icon(CupertinoIcons.arrow_clockwise),
                                label: const Text('Reload Food Database'),
                                onPressed: () async {
                                  setState(() => _isLoading = true);
                                  await sl<FoodRepository>().ensureSeeded();
                                  await _doSearch('');
                                },
                              ),
                              const SizedBox(height: AppSpacing.sm),
                            ],
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _searchCtrl.text.isEmpty ? context.appSurface : AppColors.mint,
                                foregroundColor: context.appInk,
                                shape: const StadiumBorder(),
                                side: _searchCtrl.text.isEmpty ? BorderSide(color: context.appBorderColor) : null,
                              ),
                              icon: const Icon(CupertinoIcons.add),
                              label: Text(context.tr('foodSearch_custom_food')),
                              onPressed: () => context.push('/food/custom'),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                      itemCount: _searchResults.length,
                      separatorBuilder: (context, index) =>
                          Divider(height: 1, color: context.appBorderColor),
                      itemBuilder: (context, index) {
                        final item = _searchResults[index];
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
                                  child: const Text(
                                    'Custom',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ],
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              '100g · ${item.proteinPer100g.toStringAsFixed(1)}g P · ${item.carbsPer100g.toStringAsFixed(1)}g C · ${item.fatPer100g.toStringAsFixed(1)}g F',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12, color: context.appSlate),
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${item.kcalPer100g.round()} kcal',
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: context.appInk,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Icon(CupertinoIcons.chevron_right,
                                  color: context.appSlate, size: 20),
                            ],
                          ),
                          onTap: () {
                            context.push(
                              '/food/detail/${item.id}?mealType=$_selectedMealType&name=${Uri.encodeComponent(item.name)}&kcal=${item.kcalPer100g}&p=${item.proteinPer100g}&c=${item.carbsPer100g}&f=${item.fatPer100g}&fib=${item.fibrePer100g}&isCustom=${item.isCustom}&servingGrams=${item.defaultServingGrams}',
                            );
                          },
                        );
                      },
                    ),
        ),
      ],
    );
  }

  Widget _buildBarcodeScannerLockedPaywall() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            boxShadow: context.appCardShadow,
            border: Border.all(
              color: context.appSoftOrange.withAlpha(context.isDarkMode ? 100 : 70),
              width: 1.5,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: context.appSoftOrange.withAlpha(context.isDarkMode ? 40 : 25),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: context.appSoftOrange.withAlpha(context.isDarkMode ? 140 : 100),
                    width: 2,
                  ),
                ),
                child: Icon(
                  CupertinoIcons.qrcode_viewfinder,
                  color: context.appSoftOrange,
                  size: 40,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(CupertinoIcons.star_circle_fill, color: context.appSoftOrange, size: 20),
                  const SizedBox(width: 6),
                  Text(
                    'Bloomi Premium Feature',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: context.appSoftOrange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                'Barcode Scanner 🏷️',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: context.appInk,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Instantly scan grocery and packaged food barcodes for rapid nutritional logging and automated tracking.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 13,
                  color: context.appSlate,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Container(
                padding: const EdgeInsets.all(AppSpacing.sm),
                decoration: BoxDecoration(
                  color: context.appBackground,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: context.appBorderColor),
                ),
                child: const Column(
                  children: [
                    _BenefitItem(icon: CupertinoIcons.bolt_fill, text: 'Instant 1-second grocery barcode scanning'),
                    SizedBox(height: 6),
                    _BenefitItem(icon: CupertinoIcons.chart_pie_fill, text: 'Automatic calorie & macro calculation'),
                    SizedBox(height: 6),
                    _BenefitItem(icon: CupertinoIcons.archivebox_fill, text: '1M+ verified food products database'),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              SizedBox(
                width: double.infinity,
                child: PillButton(
                  label: 'Unlock with Premium 👑',
                  variant: PillButtonVariant.primary,
                  onPressed: () => context.push('/settings/premium'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BenefitItem extends StatelessWidget {
  const _BenefitItem({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: context.appInk,
            ),
          ),
        ),
      ],
    );
  }
}

class _RecentAndFavsView extends StatefulWidget {
  final String selectedMealType;
  const _RecentAndFavsView({required this.selectedMealType});

  @override
  State<_RecentAndFavsView> createState() => _RecentAndFavsViewState();
}

class _RecentAndFavsViewState extends State<_RecentAndFavsView> {
  late final Stream<List<FavouriteFoodEntity>> _favouritesStream;
  late final Stream<List<MealLog>> _recentFoodsStream;

  @override
  void initState() {
    super.initState();
    _favouritesStream = sl<FoodRepository>().watchFavourites();
    _recentFoodsStream = sl<FoodRepository>().watchRecentFoods(limit: 30);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<FavouriteFoodEntity>>(
      stream: _favouritesStream,
      builder: (context, favSnapshot) {
        final favourites = favSnapshot.data ?? [];

        return StreamBuilder<List<MealLog>>(
          stream: _recentFoodsStream,
          builder: (context, recentSnapshot) {
            final logs = recentSnapshot.data ?? [];
            final Map<String, MealLog> distinct = {};
            for (final l in logs) {
              if (!distinct.containsKey(l.foodName)) {
                distinct[l.foodName] = l;
              }
            }
            final distinctRecent = distinct.values.toList();

            if (favourites.isEmpty && distinctRecent.isEmpty) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.xl),
                  child: Text(
                    'No favourites or recent foods yet.\nTap the heart icon on any food item to save it to your favourites, or log foods to see them here for quick re-logging.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: context.appSlate, height: 1.4),
                  ),
                ),
              );
            }

            return ListView(
              padding: const EdgeInsets.all(AppSpacing.md),
              children: [
                if (favourites.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 8, top: 4),
                    child: Row(
                      children: [
                        const Icon(CupertinoIcons.heart_fill,
                            size: 16, color: AppColors.softOrange),
                        const SizedBox(width: 6),
                        Text(
                          'FAVOURITES (${favourites.length})',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            letterSpacing: 0.8,
                            color: context.appSlate,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...favourites.map((fav) => _buildFavouriteTile(context, fav)),
                  if (distinctRecent.isNotEmpty)
                    const SizedBox(height: AppSpacing.lg),
                ],
                if (distinctRecent.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 8, top: 4),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.clock_fill,
                            size: 16, color: context.appSlate),
                        const SizedBox(width: 6),
                        Text(
                          'RECENT FOODS (${distinctRecent.length})',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            letterSpacing: 0.8,
                            color: context.appSlate,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...distinctRecent.map((log) => _buildRecentTile(context, log)),
                ],
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildFavouriteTile(BuildContext context, FavouriteFoodEntity item) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
              child: const Text('Custom',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            ),
          ],
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Text(
          '${item.kcalPer100g.toInt()} kcal / 100g · ${item.proteinPer100g.toStringAsFixed(1)}g P · ${item.carbsPer100g.toStringAsFixed(1)}g C · ${item.fatPer100g.toStringAsFixed(1)}g F',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 12, color: context.appSlate),
        ),
      ),
      trailing: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mint,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          elevation: 0,
          visualDensity: VisualDensity.compact,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          shape: const StadiumBorder(),
        ),
        icon: const Icon(CupertinoIcons.add, size: 16),
        label: const Text(
          'Log',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        ),
        onPressed: () async {
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
            mealType: widget.selectedMealType,
            foodName: item.name,
            foodReference: item.foodId,
            quantity: 1.0,
            unit: item.defaultUnit,
            totalGrams: grams,
            nutrients: snap,
          );
          if (!context.mounted) return;
          if (context.canPop()) context.pop();
          BloomiToast.show(
            context,
            message: 'Logged "${item.name}" to ${widget.selectedMealType}',
          );
        },
      ),
      onTap: () {
        context.push(
          '/food/detail/${item.foodId}?mealType=${widget.selectedMealType}&name=${Uri.encodeComponent(item.name)}&kcal=${item.kcalPer100g}&p=${item.proteinPer100g}&c=${item.carbsPer100g}&f=${item.fatPer100g}&fib=${item.fibrePer100g}&isCustom=${item.isCustom}&servingGrams=${item.defaultServingGrams}',
        );
      },
    );
  }

  Widget _buildRecentTile(BuildContext context, MealLog log) {
    final snap = NutrientSnapshotModel.fromJson(log.computedNutrientsSnapshot);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      title: Text(
        log.foodName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
          fontSize: 15,
          color: context.appInk,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Text(
          '${log.quantity % 1 == 0 ? log.quantity.toInt() : log.quantity} ${log.unit} (${log.totalGrams.toInt()}g) · ${snap.calories.toInt()} kcal',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 12, color: context.appSlate),
        ),
      ),
      trailing: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mint,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          elevation: 0,
          visualDensity: VisualDensity.compact,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          shape: const StadiumBorder(),
        ),
        icon: const Icon(CupertinoIcons.add, size: 16),
        label: const Text(
          'Log',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        ),
        onPressed: () async {
          await sl<FoodRepository>().copyMealToDate(
            log,
            DateTime.now(),
            targetMealType: widget.selectedMealType,
          );
          if (!context.mounted) return;
          if (context.canPop()) context.pop();
          BloomiToast.show(
            context,
            message: 'Logged ${log.foodName} to ${widget.selectedMealType}',
          );
        },
      ),
      onTap: () {
        final grams = log.totalGrams > 0 ? log.totalGrams : 100.0;
        final factor = 100.0 / grams;
        final refId = log.foodReference.isNotEmpty ? log.foodReference : 'log_${log.id}';
        context.push(
          '/food/detail/$refId?mealType=${widget.selectedMealType}&name=${Uri.encodeComponent(log.foodName)}&kcal=${snap.calories * factor}&p=${snap.protein * factor}&c=${snap.carbs * factor}&f=${snap.fat * factor}&fib=${snap.fibre * factor}&servingGrams=$grams',
        );
      },
    );
  }
}

