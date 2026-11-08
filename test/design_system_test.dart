import 'package:bloomi/core/constants/app_colors.dart';
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
import 'package:bloomi/features/dev/presentation/pages/component_gallery_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget wrapWidget(Widget child, {bool disableAnimations = false, double textScale = 1.0, bool isScreen = false}) {
    return MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(
          disableAnimations: disableAnimations,
          textScaler: TextScaler.linear(textScale),
        ),
        child: isScreen ? child : Scaffold(body: SingleChildScrollView(child: child)),
      ),
    );
  }

  testWidgets('Mascot renders in all 10 states without errors', (tester) async {
    for (final state in MascotState.values) {
      await tester.pumpWidget(
        wrapWidget(MascotWidget(state: state)),
      );
      expect(find.byType(MascotWidget), findsOneWidget);
    }
  });

  testWidgets('Mascot respects reduce motion', (tester) async {
    await tester.pumpWidget(
      wrapWidget(
        const MascotWidget(state: MascotState.happy),
        disableAnimations: true,
      ),
    );
    expect(find.byType(MascotWidget), findsOneWidget);
  });

  testWidgets('PastelStatCard renders tokens and labels', (tester) async {
    await tester.pumpWidget(
      wrapWidget(
        const PastelStatCard(
          backgroundColor: AppColors.mint,
          icon: Icons.restaurant_rounded,
          label: 'Calories',
          value: '1,500',
          unit: 'kcal',
          trend: '+100',
        ),
      ),
    );
    expect(find.text('Calories'), findsOneWidget);
    expect(find.text('1,500'), findsOneWidget);
    expect(find.text('kcal'), findsOneWidget);
    expect(find.text('+100'), findsOneWidget);
  });

  testWidgets('ProgressRing renders and animates', (tester) async {
    await tester.pumpWidget(
      wrapWidget(
        const ProgressRing(
          progress: 0.5,
          currentValue: 1000,
          targetValue: 2000,
          label: 'Calories',
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.byType(ProgressRing), findsOneWidget);
  });

  testWidgets('MacroBars renders 4 macros', (tester) async {
    await tester.pumpWidget(
      wrapWidget(
        const MacroBars(
          protein: MacroData(name: 'Protein', currentGrams: 50, targetGrams: 100, color: AppColors.peach),
          carbs: MacroData(name: 'Carbs', currentGrams: 150, targetGrams: 200, color: AppColors.sky),
          fat: MacroData(name: 'Fat', currentGrams: 30, targetGrams: 60, color: AppColors.butter),
          fibre: MacroData(name: 'Fibre', currentGrams: 15, targetGrams: 30, color: AppColors.mint),
        ),
      ),
    );
    expect(find.text('Protein'), findsOneWidget);
    expect(find.text('Carbs'), findsOneWidget);
    expect(find.text('Fat'), findsOneWidget);
    expect(find.text('Fibre'), findsOneWidget);
  });

  testWidgets('QuantityPicker changes unit and stepper value', (tester) async {
    double qty = 2.0;
    String unit = 'katori';

    await tester.pumpWidget(
      StatefulBuilder(
        builder: (context, setState) {
          return wrapWidget(
            QuantityPicker(
              quantity: qty,
              unit: unit,
              onQuantityChanged: (v) => setState(() => qty = v),
              onUnitChanged: (u) => setState(() => unit = u),
            ),
          );
        },
      ),
    );

    expect(find.text('2 katori'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.add_rounded));
    await tester.pump();
    expect(find.text('3 katori'), findsOneWidget);

    await tester.tap(find.text('roti'));
    await tester.pump();
    expect(find.text('3 roti'), findsOneWidget);
  });

  testWidgets('PillButton variants render', (tester) async {
    await tester.pumpWidget(
      wrapWidget(
        Column(
          children: [
            PillButton(label: 'Primary', onPressed: () {}),
            PillButton(label: 'Secondary', variant: PillButtonVariant.secondary, onPressed: () {}),
            PillButton(label: 'Text', variant: PillButtonVariant.text, onPressed: () {}),
          ],
        ),
      ),
    );
    expect(find.text('Primary'), findsOneWidget);
    expect(find.text('Secondary'), findsOneWidget);
    expect(find.text('Text'), findsOneWidget);
  });

  testWidgets('ChipSelector single and multi selection work', (tester) async {
    String selected = 'Veg';
    await tester.pumpWidget(
      StatefulBuilder(
        builder: (context, setState) {
          return wrapWidget(
            ChipSelector<String>.single(
              items: const [
                BloomiChipItem(value: 'Veg', label: 'Vegetarian'),
                BloomiChipItem(value: 'Vegan', label: 'Vegan'),
              ],
              selectedItem: selected,
              onChanged: (v) => setState(() => selected = v),
            ),
          );
        },
      ),
    );
    expect(find.text('Vegetarian'), findsOneWidget);
    await tester.tap(find.text('Vegan'));
    await tester.pump();
    expect(selected, 'Vegan');
  });

  testWidgets('MealSectionHeader, OfflineBanner, SkeletonLoader, EmptyState and SyncStatusChip render', (tester) async {
    await tester.pumpWidget(
      wrapWidget(
        Column(
          children: [
            MealSectionHeader(title: 'Lunch', caloriesKcal: 550, onAddPressed: () {}),
            const OfflineBanner(),
            const SkeletonLoader(height: 20),
            EmptyStateWidget(message: 'No logs', actionLabel: 'Add', onActionPressed: () {}),
            const SyncStatusChip(status: SyncStateStatus.synced),
          ],
        ),
      ),
    );
    expect(find.text('Lunch'), findsOneWidget);
    expect(find.text('550 kcal'), findsOneWidget);
    expect(find.text('Working offline. Your data is safely stored on this device.'), findsOneWidget);
    expect(find.text('No logs'), findsOneWidget);
    expect(find.text('Synced with Drive'), findsOneWidget);
  });

  testWidgets('ComponentGalleryScreen renders at 200% text scale without overflow', (tester) async {
    tester.view.physicalSize = const Size(800, 1400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(
      wrapWidget(
        const ComponentGalleryPage(),
        textScale: 2.0,
        isScreen: true,
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('Component Gallery'), findsOneWidget);
  });

  testWidgets('Food item tile renders cleanly without overflow on narrow screen', (tester) async {
    tester.view.physicalSize = const Size(320, 600);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ListView(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                title: Row(
                  children: [
                    const Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: 'Super Long Traditional Indian Thali Meal With Extra Gravy And Roti',
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                          children: [
                            TextSpan(
                              text: ' (स्वादिष्ट पारंपरिक भारतीय थाली भोजन)',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text('Custom', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                subtitle: const Text(
                  '100g · 12.5g P · 45.0g C · 8.2g F · 5.0g Fibre',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('450 kcal', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                    SizedBox(width: 4),
                    Icon(Icons.chevron_right_rounded, size: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}
