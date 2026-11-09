import 'package:bloomi/core/localization/app_languages.dart';
import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/core/services/country_detection_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    try {
      await initializeDateFormatting(null, null);
    } catch (_) {}
  });

  group('Country Detection & Languages on Top', () {
    test('CountryDetectionService maps codes to names and flag emojis correctly', () {
      expect(CountryDetectionService.getCountryName('IN'), equals('India'));
      expect(CountryDetectionService.getCountryName('US'), equals('United States'));
      expect(CountryDetectionService.getCountryName('GB'), equals('United Kingdom'));
      expect(CountryDetectionService.getCountryName('FR'), equals('France'));
      expect(CountryDetectionService.getCountryName('DE'), equals('Germany'));

      expect(CountryDetectionService.countryCodeToEmoji('IN'), equals('🇮🇳'));
      expect(CountryDetectionService.countryCodeToEmoji('US'), equals('🇺🇸'));
      expect(CountryDetectionService.countryCodeToEmoji('GB'), equals('🇬🇧'));
    });

    test('CountryDetectionService getCachedOrInitialCountry returns a valid DetectedCountry', () {
      final detected = CountryDetectionService.getCachedOrInitialCountry();
      expect(detected.code.length, equals(2));
      expect(detected.name, isNotEmpty);
      expect(detected.flag, isNotEmpty);
    });

    test('AppLanguage.getLanguagesForCountry prioritizes country languages on top', () {
      // 1. India
      final indiaLangs = AppLanguage.getLanguagesForCountry('India', 'IN');
      expect(indiaLangs, isNotEmpty);
      // Hindi, Hinglish, English, Bengali, Telugu, etc. should be present
      final codes = indiaLangs.map((l) => l.code).toSet();
      expect(codes.contains('hi'), isTrue);
      expect(codes.contains('en'), isTrue);
      expect(codes.contains('en_IN'), isTrue);
      expect(codes.contains('ta'), isTrue);
      expect(codes.contains('te'), isTrue);

      // 2. United States
      final usLangs = AppLanguage.getLanguagesForCountry('United States', 'US');
      final usCodes = usLangs.map((l) => l.code).toList();
      expect(usCodes.contains('en'), isTrue);
      expect(usCodes.contains('es'), isTrue);

      // 3. Germany
      final deLangs = AppLanguage.getLanguagesForCountry('Germany', 'DE');
      final deCodes = deLangs.map((l) => l.code).toList();
      expect(deCodes.contains('de'), isTrue);
      expect(deCodes.contains('en'), isTrue);

      // 4. France
      final frLangs = AppLanguage.getLanguagesForCountry('France', 'FR');
      final frCodes = frLangs.map((l) => l.code).toList();
      expect(frCodes.contains('fr'), isTrue);
      expect(frCodes.contains('en'), isTrue);
    });
  });

  group('Safe Locale & DateFormat for all 197 languages', () {
    test('applySafeIntlLocale does not throw for any language code or regional dialect', () {
      // Test unusual and custom codes that previously crashed with ArgumentError
      final testCodes = [
        'en', 'hi', 'en_IN', 'hinglish', 'bho', 'raj', 'szl', 'tcy', 'trp',
        'ceb', 'fil', 'zh-CN', 'ar', 'ur', 'es', 'fr', 'de', 'ja', 'unknown_xyz',
      ];

      for (final code in testCodes) {
        // Must never throw
        BloomiLocalizations.applySafeIntlLocale(code);
        expect(Intl.defaultLocale, isNotNull);

        // DateFormat formatting must never throw Invalid argument (locale)
        final now = DateTime(2026, 11, 9, 14, 30);
        expect(() => DateFormat('d MMM').format(now), returnsNormally);
        expect(() => DateFormat('EEE, d MMM').format(now), returnsNormally);
        expect(() => DateFormat('h:mm a').format(now), returnsNormally);
      }
    });

    test('BloomiLocalizations fallback and delegate loads without crashing', () async {
      const delegate = BloomiLocalizationsDelegate();
      expect(delegate.isSupported(const Locale('en')), isTrue);
      expect(delegate.isSupported(const Locale('hi')), isTrue);
      expect(delegate.isSupported(const Locale('bho')), isTrue);
      expect(delegate.isSupported(const Locale('szl')), isTrue);

      const matDelegate = FallbackMaterialLocalizationsDelegate();
      expect(matDelegate.isSupported(const Locale('bho')), isTrue);
      expect(matDelegate.isSupported(const Locale('szl')), isTrue);

      const cupDelegate = FallbackCupertinoLocalizationsDelegate();
      expect(cupDelegate.isSupported(const Locale('bho')), isTrue);
      expect(cupDelegate.isSupported(const Locale('szl')), isTrue);
    });
  });
}
