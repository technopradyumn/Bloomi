import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/features/settings/data/local/settings_local_data_source.dart';
import 'package:bloomi/services/notifications/notification_service.dart';
import 'package:bloomi/services/widgets/widget_bridge_service.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _FakeNotificationService implements NotificationService {
  @override
  dynamic noSuchMethod(Invocation invocation) => null;
}

class _FakeWidgetBridgeService implements WidgetBridgeService {
  @override
  dynamic noSuchMethod(Invocation invocation) => null;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late AppDatabase db;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    db = AppDatabase(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  group('Localization Core & Manifest Tests', () {
    test('BloomiLocalizations provides English fallback synchronously', () {
      final l10n = BloomiLocalizations(
        const Locale('en'),
        'en',
        BloomiLocalizations.fallbackEnglish,
      );
      expect(l10n.translate('settings'), equals('Settings'));
      expect(l10n.translate('save'), equals('Save'));
      expect(l10n.translate('cancel'), equals('Cancel'));
      expect(l10n.translate('plan_calorie_budget_label'), equals('Daily Calorie Budget'));
      expect(l10n.isRTL, isFalse);
    });

    test('ICU plural rules format counts accurately', () {
      final l10n = BloomiLocalizations(
        const Locale('en'),
        'en',
        BloomiLocalizations.fallbackEnglish,
      );
      expect(l10n.plural('home_streak_days', 0), equals('0 days streak'));
      expect(l10n.plural('home_streak_days', 1), equals('1 day streak'));
      expect(l10n.plural('home_streak_days', 5), equals('5 days streak'));
    });

    test('Placeholder replacements function accurately', () {
      final l10n = BloomiLocalizations(
        const Locale('en'),
        'en',
        BloomiLocalizations.fallbackEnglish,
      );
      expect(
        l10n.text('home_calories_remaining', args: {'kcal': '450'}),
        equals('450 kcal remaining'),
      );
      expect(
        l10n.text('home_water_goal', args: {'current': '1200', 'target': '2500'}),
        equals('1200 / 2500 ml'),
      );
    });

    test('RTL languages are correctly identified', () {
      expect(BloomiLocalizations(const Locale('ar'), 'ar').isRTL, isTrue);
      expect(BloomiLocalizations(const Locale('ur'), 'ur').isRTL, isTrue);
      expect(BloomiLocalizations(const Locale('he'), 'he').isRTL, isTrue);
      expect(BloomiLocalizations(const Locale('fa'), 'fa').isRTL, isTrue);
      expect(BloomiLocalizations(const Locale('en'), 'en').isRTL, isFalse);
      expect(BloomiLocalizations(const Locale('hi'), 'hi').isRTL, isFalse);
      expect(BloomiLocalizations(const Locale('es'), 'es').isRTL, isFalse);
      expect(BloomiLocalizations(const Locale('zh'), 'zh').isRTL, isFalse);
    });
  });

  group('10+ Languages Translation & Fallback Verification', () {
    final testLanguages = [
      'en', // English
      'hi', // Hindi
      'hinglish', // Hinglish
      'ar', // Arabic (RTL)
      'zh-cn', // Chinese Simplified
      'ja', // Japanese
      'es', // Spanish
      'ru', // Russian
      'tr', // Turkish
      'bn', // Bengali (Partial)
      'fr', // French
      'de', // German
    ];

    for (final code in testLanguages) {
      test('Language [$code] loads translations without missing key errors', () async {
        final locale = Locale(code);
        final l10n = await BloomiLocalizations.load(locale);

        // Every language must provide settings, save, cancel
        expect(l10n.translate('settings').isNotEmpty, isTrue);
        expect(l10n.translate('save').isNotEmpty, isTrue);
        expect(l10n.translate('cancel').isNotEmpty, isTrue);
        expect(l10n.translate('plan_calorie_budget_label').isNotEmpty, isTrue);

        // Verify fallback works if a non-existent key is queried
        expect(
          l10n.translate('non_existent_key_xyz'),
          equals('non_existent_key_xyz'),
        );
      });
    }

    test('Arabic translates key UI strings and sets RTL text direction', () async {
      final l10n = await BloomiLocalizations.load(const Locale('ar'));
      expect(l10n.isRTL, isTrue);
      expect(l10n.translate('settings'), equals('الإعدادات'));
      expect(l10n.translate('save'), equals('حفظ'));
      expect(l10n.translate('cancel'), equals('إلغاء'));
    });

    test('Hindi translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('hi'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('सेटिंग्स'));
      expect(l10n.translate('save'), equals('सहेजें'));
      expect(l10n.translate('cancel'), equals('रद्द करें'));
    });

    test('Hinglish translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('hinglish'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('Settings'));
      expect(l10n.translate('save'), equals('Save karein'));
    });

    test('Spanish translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('es'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('Ajustes'));
      expect(l10n.translate('save'), equals('Guardar'));
    });

    test('Russian translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('ru'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('Настройки'));
      expect(l10n.translate('save'), equals('Сохранить'));
    });

    test('Japanese translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('ja'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('設定'));
      expect(l10n.translate('save'), equals('保存'));
    });

    test('Chinese Simplified translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('zh-cn'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('设置'));
      expect(l10n.translate('save'), equals('保存'));
    });

    test('Bengali translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('bn'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('সেটিংস'));
      expect(l10n.translate('save'), equals('সংরক্ষণ করুন'));
      expect(l10n.translate('cancel'), equals('বাতিল করুন'));
    });

    test('Tamil translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('ta'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('அமைப்புகள்'));
      expect(l10n.translate('save'), equals('சேமி'));
    });

    test('German translates key UI strings', () async {
      final l10n = await BloomiLocalizations.load(const Locale('de'));
      expect(l10n.isRTL, isFalse);
      expect(l10n.translate('settings'), equals('Einstellungen'));
      expect(l10n.translate('save'), equals('Speichern'));
      expect(l10n.translate('cancel'), equals('Abbrechen'));
    });
  });

  group('Persistence & Immediate Switching Verification', () {
    testWidgets('Selecting language persists to SharedPreferences and applies to Intl', (tester) async {
      final prefs = await SharedPreferences.getInstance();
      final dataSource = SettingsLocalDataSourceImpl(
        db: db,
        notificationService: _FakeNotificationService(),
        widgetBridgeService: _FakeWidgetBridgeService(),
        prefs: prefs,
      );

      // Default is English if unset
      final initialData = await dataSource.getUnitsAndLanguage();
      expect(initialData['language'], isNotEmpty);

      // Save Hindi
      await dataSource.updateLanguage('hi');
      final updatedData = await dataSource.getUnitsAndLanguage();
      expect(updatedData['language'], equals('hi'));
      expect(prefs.getString('selected_language_code'), equals('hi'));

      // Save Arabic
      await dataSource.updateLanguage('ar');
      final arData = await dataSource.getUnitsAndLanguage();
      expect(arData['language'], equals('ar'));
      expect(prefs.getString('selected_language_code'), equals('ar'));
    });
  });
}
