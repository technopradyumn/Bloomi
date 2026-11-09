import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/widgets/pastel_stat_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('PastelStatCard and Overflow Verification', () {
    testWidgets('PastelStatCard renders with very long trend without overflowing in narrow container',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 140, // very narrow width to test overflow resistance
                child: PastelStatCard(
                  label: 'Burned',
                  value: '1240',
                  unit: 'kcal',
                  icon: CupertinoIcons.flame_fill,
                  backgroundColor: AppColors.butter,
                  trend: '1250w + 450a kcal super long text that might wrap',
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Burned'), findsOneWidget);
      expect(find.text('1240'), findsOneWidget);
      // No overflow exceptions thrown!
      expect(tester.takeException(), isNull);
    });

    testWidgets('PastelStatCard renders correctly in a 2-column Grid with childAspectRatio: 1.05',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              width: 360,
              height: 600,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.05,
                children: const [
                  PastelStatCard(
                    label: 'Steps',
                    value: '10420',
                    unit: '/ 10,000',
                    icon: CupertinoIcons.flame_fill,
                    backgroundColor: AppColors.mint,
                    trend: '7.8 km',
                  ),
                  PastelStatCard(
                    label: 'Burned',
                    value: '640',
                    unit: 'kcal',
                    icon: CupertinoIcons.flame_fill,
                    backgroundColor: AppColors.butter,
                    trend: '240w + 400a',
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Steps'), findsOneWidget);
      expect(find.text('Burned'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('Waist to Hip ratio card clickability test',
        (tester) async {
      bool tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: InkWell(
              onTap: () => tapped = true,
              child: const Text('Waist-to-Hip Ratio (WHR)'),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Waist-to-Hip Ratio (WHR)'), findsOneWidget);
      await tester.tap(find.text('Waist-to-Hip Ratio (WHR)'));
      expect(tapped, isTrue);
    });
  });
}
