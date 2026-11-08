import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/chip_selector.dart';
import 'package:bloomi/core/widgets/empty_state_widget.dart';
import 'package:bloomi/core/widgets/macro_bars.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/meal_section_header.dart';
import 'package:bloomi/core/widgets/offline_banner.dart';
import 'package:bloomi/core/widgets/pastel_stat_card.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/core/widgets/progress_ring.dart';
import 'package:bloomi/core/widgets/quantity_picker.dart';
import 'package:bloomi/core/widgets/skeleton_loader.dart';
import 'package:bloomi/core/widgets/sync_status_chip.dart';
import 'package:flutter/material.dart';

class ComponentGalleryPage extends StatefulWidget {
  const ComponentGalleryPage({super.key});

  @override
  State<ComponentGalleryPage> createState() => _ComponentGalleryPageState();
}

class _ComponentGalleryPageState extends State<ComponentGalleryPage> {
  MascotState _selectedMascotState = MascotState.idle;
  double _ringProgress = 0.65;
  double _quantity = 2.0;
  String _unit = 'katori';
  String _singleChip = 'Veg';
  Set<String> _multiChips = {'Dairy Free'};
  double _simulatedTextScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.linear(_simulatedTextScale),
      ),
      child: Scaffold(
        backgroundColor: context.appBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Component Gallery',
            style: TextStyle(
              fontFamily: 'Baloo 2',
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: context.appInk,
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.screenSide,
              vertical: AppSpacing.md,
            ),
            children: [
              _buildSectionTitle(
                  'Accessibility: Text Scale Tester (${(_simulatedTextScale * 100).toInt()}%)'),
              Slider(
                value: _simulatedTextScale,
                min: 1.0,
                max: 2.0,
                divisions: 4,
                activeColor: AppColors.mint,
                onChanged: (val) => setState(() => _simulatedTextScale = val),
              ),
              const SizedBox(height: AppSpacing.md),
              _buildSectionTitle('Mascot: Bloo (${_selectedMascotState.name})'),
              Card(
                elevation: 0,
                color: context.appSurface,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    children: [
                      MascotWidget(
                        state: _selectedMascotState,
                        size: 130,
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        alignment: WrapAlignment.center,
                        children: MascotState.values.map((s) {
                          final isSel = s == _selectedMascotState;
                          return ChoiceChip(
                            label: Text(
                              s.name,
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight:
                                    isSel ? FontWeight.w700 : FontWeight.w600,
                                fontSize: 12,
                                color: isSel ? Theme.of(context).colorScheme.onPrimary : context.appInk,
                              ),
                            ),
                            selected: isSel,
                            selectedColor: AppColors.mint,
                            backgroundColor: context.appSurface,
                            onSelected: (_) =>
                                setState(() => _selectedMascotState = s),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Pastel Stat Cards (All 5 Tokens)'),
              LayoutBuilder(
                builder: (context, constraints) {
                  final isWide = constraints.maxWidth > 500;
                  final textScale =
                      MediaQuery.textScalerOf(context).scale(1.0);
                  final ratio =
                      textScale > 1.5 ? 0.95 : (isWide ? 1.2 : 1.1);
                  return GridView.count(
                    crossAxisCount: isWide ? 3 : 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: AppSpacing.sm,
                    mainAxisSpacing: AppSpacing.sm,
                    childAspectRatio: ratio,
                    children: [
                      PastelStatCard(
                        backgroundColor: AppColors.mint,
                        icon: Icons.restaurant_rounded,
                        label: 'Calories',
                        value: '1,420',
                        unit: 'kcal',
                        trend: '+120',
                        onTap: () {},
                      ),
                      PastelStatCard(
                        backgroundColor: AppColors.sky,
                        icon: Icons.water_drop_rounded,
                        label: 'Water',
                        value: '2.1',
                        unit: 'L',
                        trend: 'Goal hit',
                        onTap: () {},
                      ),
                      PastelStatCard(
                        backgroundColor: AppColors.butter,
                        icon: Icons.directions_walk_rounded,
                        label: 'Steps',
                        value: '8,450',
                        trend: '+850',
                        onTap: () {},
                      ),
                      PastelStatCard(
                        backgroundColor: AppColors.peach,
                        icon: Icons.favorite_rounded,
                        label: 'Heart Rate',
                        value: '72',
                        unit: 'bpm',
                        onTap: () {},
                      ),
                      PastelStatCard(
                        backgroundColor: AppColors.lilac,
                        icon: Icons.bedtime_rounded,
                        label: 'Sleep',
                        value: '7.5',
                        unit: 'hrs',
                        onTap: () {},
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Progress Ring with Count-Up'),
              Card(
                elevation: 0,
                color: context.appSurface,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    children: [
                      ProgressRing(
                        progress: _ringProgress,
                        currentValue: 1850 * _ringProgress,
                        targetValue: 1850,
                        label: 'Calories',
                      ),
                      Slider(
                        value: _ringProgress,
                        min: 0.0,
                        max: 1.0,
                        activeColor: AppColors.mint,
                        onChanged: (val) =>
                            setState(() => _ringProgress = val),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Macro Bars'),
              Card(
                elevation: 0,
                color: context.appSurface,
                child: const Padding(
                  padding: EdgeInsets.all(AppSpacing.md),
                  child: MacroBars(
                    protein: MacroData(
                      name: 'Protein',
                      currentGrams: 55,
                      targetGrams: 75,
                      color: AppColors.peach,
                    ),
                    carbs: MacroData(
                      name: 'Carbs',
                      currentGrams: 180,
                      targetGrams: 220,
                      color: AppColors.sky,
                    ),
                    fat: MacroData(
                      name: 'Fat',
                      currentGrams: 38,
                      targetGrams: 50,
                      color: AppColors.butter,
                    ),
                    fibre: MacroData(
                      name: 'Fibre',
                      currentGrams: 18,
                      targetGrams: 25,
                      color: AppColors.mint,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Quantity Picker with Unit Chips'),
              Card(
                elevation: 0,
                color: context.appSurface,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: QuantityPicker(
                    quantity: _quantity,
                    unit: _unit,
                    onQuantityChanged: (q) => setState(() => _quantity = q),
                    onUnitChanged: (u) => setState(() => _unit = u),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Pill Buttons'),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  PillButton(
                    label: 'Primary Button',
                    icon: Icons.check_circle_rounded,
                    onPressed: () {},
                  ),
                  PillButton(
                    label: 'Secondary Tonal',
                    variant: PillButtonVariant.secondary,
                    onPressed: () {},
                  ),
                  PillButton(
                    label: 'Text Variant',
                    variant: PillButtonVariant.text,
                    onPressed: () {},
                  ),
                  PillButton(
                    label: 'Loading State',
                    isLoading: true,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Chip Selectors (Single & Multi)'),
              Card(
                elevation: 0,
                color: context.appSurface,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Single Selection Diet Type:',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: 6),
                      ChipSelector<String>.single(
                        items: const [
                          BloomiChipItem(value: 'Veg', label: 'Vegetarian'),
                          BloomiChipItem(value: 'Eggs', label: 'Eggetarian'),
                          BloomiChipItem(
                              value: 'NonVeg', label: 'Non-Vegetarian'),
                          BloomiChipItem(value: 'Vegan', label: 'Vegan'),
                        ],
                        selectedItem: _singleChip,
                        onChanged: (val) =>
                            setState(() => _singleChip = val),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Text(
                        'Multi Selection Preferences:',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: 6),
                      ChipSelector<String>.multi(
                        items: const [
                          BloomiChipItem(
                              value: 'Dairy Free', label: 'Dairy Free'),
                          BloomiChipItem(
                              value: 'Gluten Free', label: 'Gluten Free'),
                          BloomiChipItem(value: 'Nut Free', label: 'Nut Free'),
                        ],
                        selectedItems: _multiChips,
                        onMultiChanged: (val) =>
                            setState(() => _multiChips = val),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Meal Section Header'),
              Card(
                elevation: 0,
                color: context.appSurface,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: MealSectionHeader(
                    title: 'Breakfast',
                    icon: Icons.wb_sunny_rounded,
                    caloriesKcal: 420,
                    onAddPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Sync Status Chips'),
              const Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  SyncStatusChip(
                      status: SyncStateStatus.synced, lastSyncTime: '2m ago'),
                  SyncStatusChip(status: SyncStateStatus.syncing),
                  SyncStatusChip(status: SyncStateStatus.offline),
                  SyncStatusChip(status: SyncStateStatus.error),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Offline Banner'),
              OfflineBanner(onRetry: () {}),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Skeleton Loader'),
              Card(
                elevation: 0,
                color: context.appSurface,
                child: const Padding(
                  padding: EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SkeletonLoader.circle(size: 40),
                          SizedBox(width: AppSpacing.sm),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SkeletonLoader(height: 14, width: 140),
                                SizedBox(height: 6),
                                SkeletonLoader(height: 10, width: 80),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSpacing.sm),
                      SkeletonLoader(height: 60),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Empty State'),
              Card(
                elevation: 0,
                color: context.appSurface,
                child: EmptyStateWidget(
                  message:
                      'No meals logged yet today.\nStart with a warm breakfast!',
                  actionLabel: 'Log Breakfast',
                  onActionPressed: () {},
                  mascotState: MascotState.eating,
                  mascotSize: 100,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _buildSectionTitle('Overlays (Dialog, BottomSheet, Toast)'),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  PillButton(
                    label: 'Show Toast',
                    variant: PillButtonVariant.secondary,
                    onPressed: () {
                      BloomiToast.show(
                        context,
                        message:
                            'Meal saved! Bloo is happy with your choice.',
                        icon: Icons.check_circle_rounded,
                      );
                    },
                  ),
                  PillButton(
                    label: 'Show Dialog',
                    variant: PillButtonVariant.secondary,
                    onPressed: () {
                      BloomiDialog.show<void>(
                        context,
                        title: 'Delete Meal?',
                        content:
                            'Are you sure you want to remove this meal? You can re-log it anytime.',
                        confirmLabel: 'Delete',
                        cancelLabel: 'Keep',
                        onConfirm: () {},
                      );
                    },
                  ),
                  PillButton(
                    label: 'Show Bottom Sheet',
                    variant: PillButtonVariant.secondary,
                    onPressed: () {
                      BloomiBottomSheet.show<void>(
                        context,
                        title: 'Select Serving Size',
                        child: Column(
                          children: [
                            Text(
                              'Standard Indian portions are mapped to average weights.',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                color: context.appSlate,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.md),
                            PillButton(
                              label: 'Done',
                              fullWidth: true,
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xl),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Baloo 2',
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: context.appInk,
        ),
      ),
    );
  }
}
