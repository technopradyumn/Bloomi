// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yiddish (`yi`).
class AppLocalizationsYi extends AppLocalizations {
  AppLocalizationsYi([String locale = 'yi']) : super(locale);

  @override
  String get app_name => 'בלום';

  @override
  String get nav_home => 'היים';

  @override
  String get nav_today => 'היינט';

  @override
  String get nav_plan => 'פּלאַן';

  @override
  String get nav_food => 'עסנוואַרג';

  @override
  String get nav_food_diary => 'פוד דייערי';

  @override
  String get nav_workout => 'וואָרקאָוט קלאָץ';

  @override
  String get nav_health => 'געזונט';

  @override
  String get nav_profile => 'פּראָפיל';

  @override
  String get save => 'היט';

  @override
  String get cancel => 'באָטל מאַכן';

  @override
  String get delete => 'ויסמעקן';

  @override
  String get edit => 'רעדאַגירן';

  @override
  String get done => 'געטאן';

  @override
  String get close => 'נאָענט';

  @override
  String get back => 'צוריק';

  @override
  String get next => 'ווייַטער';

  @override
  String get continue_btn => 'פאָרזעצן';

  @override
  String get confirm => 'באַשטעטיקן';

  @override
  String get search => 'זוכן';

  @override
  String get filter => 'פילטער';

  @override
  String get all => 'אַלע';

  @override
  String get active => 'אַקטיוו';

  @override
  String get today => 'היינט';

  @override
  String get yesterday => 'נעכטן';

  @override
  String get tomorrow => 'מאָרגן';

  @override
  String get add => 'לייג';

  @override
  String get remove => 'אַראָפּנעמען';

  @override
  String get refresh => 'דערפרישן';

  @override
  String get retry => 'פרובירט ווידער';

  @override
  String get error => 'טעות';

  @override
  String get success => 'הצלחה';

  @override
  String get loading => 'לאָדן...';

  @override
  String get no_data => 'קיין דאַטן בנימצא';

  @override
  String get offline => 'אָפפלינע מאָדע';

  @override
  String get offline_sub => 'ענדערונגען וועלן סינק אַמאָל ריקאַנעקטיד';

  @override
  String get undo => 'ופמאַכן';

  @override
  String get portion => 'חלק';

  @override
  String get quantity => 'קוואַנטיטי';

  @override
  String get unit => 'אַפּאַראַט';

  @override
  String get clear => 'קלאָר';

  @override
  String get select => 'אויסקלייַבן';

  @override
  String get apply => 'צולייגן';

  @override
  String get reset => 'באַשטעטיק';

  @override
  String get ok => 'גוט';

  @override
  String get yes => 'יא';

  @override
  String get no => 'ניין';

  @override
  String get optional => 'אָפּטיאָנאַל';

  @override
  String get calories => 'קאַלאָריעס';

  @override
  String get protein => 'פּראָטעין';

  @override
  String get carbs => 'קאַרבס';

  @override
  String get fat => 'פעט';

  @override
  String get fiber => 'פיברע';

  @override
  String get water => 'וואַסער';

  @override
  String get steps => 'סטעפּס';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'ג';

  @override
  String get milliliters => 'מל';

  @override
  String get kilograms => 'קג';

  @override
  String get pounds => 'לבס';

  @override
  String get centimeters => 'סענטימעטער';

  @override
  String get inches => 'אין';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'הרס';

  @override
  String get minutes => 'מינס';

  @override
  String get serving => 'סערווינג';

  @override
  String get servings => 'סערווינגז';

  @override
  String get serving_size => 'סערווינג גרייס';

  @override
  String get per_100g => 'פּער 100 ג';

  @override
  String get india => 'אינדיע';

  @override
  String get asia => 'אזיע';

  @override
  String get europe => 'אייראָפּע';

  @override
  String get middle_east => 'מיטל מזרח';

  @override
  String get africa => 'אפריקע';

  @override
  String get americas => 'אמעריקע';

  @override
  String get home_title => 'היים';

  @override
  String get home_greeting_morning => 'גוט מאָרגן';

  @override
  String get home_greeting_afternoon => 'גוט נאָכמיטאָג';

  @override
  String get home_greeting_evening => 'גוטן אָוונט';

  @override
  String get home_streak_title => 'בלום סטרייק';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count טעג סטרייק',
      one: '1 טאָג סטריק',
      zero: '0 טעג סטריק',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'פארברענט';

  @override
  String get home_calories_budget => 'קאַלאָריע בודזשעט';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal קייקאַל רימיינדיד';
  }

  @override
  String get home_water_title => 'טעגלעך כיידריישאַן';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target מל';
  }

  @override
  String get home_steps_title => 'סטעפּס געגאנגען';

  @override
  String get home_quick_actions => 'שנעל אַקשאַנז';

  @override
  String get home_log_meal => 'קלאָץ מאָלצייַט';

  @override
  String get home_log_water => 'קלאָץ וואַסער';

  @override
  String get home_log_workout => 'קלאָץ וואָרקאָוט';

  @override
  String get home_log_weight => 'קלאָץ ווייט';

  @override
  String get home_insights_title => 'הייַנט ס ינסייץ';

  @override
  String get home_quote =>
      'קליין געזונט ברירות מאַכן בלומינג טראַנספאָרמאַציע.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI קאָוטש';

  @override
  String get home_surroundings => 'סביבה & לופט';

  @override
  String get home_notifications => 'נאָוטאַפאַקיישאַנז';

  @override
  String get home_daily_score => 'טעגלעך וועללנעסס כעזשבן';

  @override
  String get home_view_all => 'View אַלע';

  @override
  String get food_diary_title => 'פוד דייערי';

  @override
  String get food_breakfast => 'פרישטיק';

  @override
  String get food_lunch => 'לאָנטש';

  @override
  String get food_dinner => 'מיטאָג';

  @override
  String get food_snacks => 'סנאַקקס';

  @override
  String get food_add_food => 'לייג פוד';

  @override
  String get food_edit_food => 'רעדאַגירן פוד';

  @override
  String get food_add_breakfast => 'לייג פרישטיק';

  @override
  String get food_add_lunch => 'לייג לאָנטש';

  @override
  String get food_add_dinner => 'לייג דינער';

  @override
  String get food_add_snack => 'לייג פֿאַרבייַסן';

  @override
  String get food_total_calories => 'גאַנץ קאַלאָריעס';

  @override
  String get food_empty_meal => 'ניט קיין פודז לאָגד פֿאַר דעם מאָלצייַט נאָך';

  @override
  String get food_empty_diary => 'קיין מילז לאָגד פֿאַר דעם טאָג';

  @override
  String get food_log_first_meal =>
      'צאַפּן + צו קלאָץ דיין ערשטער געשמאַק מאָלצייַט';

  @override
  String get food_quick_add => 'שנעל לייג';

  @override
  String get food_search_hint => 'זוכן קיילים, פירות, דאַל, ראָטי ...';

  @override
  String get food_custom_recipe => 'מנהג פוד & רעצעפּט';

  @override
  String get food_scan_barcode => 'יבערקוקן באַרקאָדע';

  @override
  String get food_camera_scan => 'אַי פוד סקאַננער';

  @override
  String get food_recent => 'לעצטע פאָאָדס';

  @override
  String get food_favourites => 'פאַוואָריטעס';

  @override
  String get food_macro_summary => 'מאַקראָנוטריענט ברייקדאַון';

  @override
  String get food_delete_meal_confirm =>
      'זענט איר זיכער אַז איר ווילט צונעמען דעם נומער?';

  @override
  String get food_item_deleted => 'עסנוואַרג נומער אַוועקגענומען';

  @override
  String get food_remaining => 'געבליבן';

  @override
  String get food_consumed => 'קאַנסומד';

  @override
  String food_of_target(Object target) {
    return 'פון $target קייקאַל';
  }

  @override
  String get foodSearch_title => 'זוכן פודז';

  @override
  String get foodSearch_scan_barcode => 'יבערקוקן באַרקאָדע';

  @override
  String get foodSearch_take_photo => 'קנאַקן פוד פאָטאָ';

  @override
  String get foodSearch_custom_food => 'שאַפֿן מנהג פוד';

  @override
  String get foodSearch_recent_searches => 'לעצטע אָנפֿרעגן';

  @override
  String get foodSearch_popular => 'פאָלקס דישעס';

  @override
  String get foodSearch_no_results => 'קיין פודז וואָס ריכטן זיך צו דיין זוכן';

  @override
  String get barcode_title => 'באַרקאָדע סקאַננער';

  @override
  String get barcode_align => 'ייַנרייען באַרקאָדע ין דער אַפּאַראַט ראַם';

  @override
  String get barcode_not_found => 'פּראָדוקט ניט געפֿונען אין דייטאַבייס';

  @override
  String get barcode_premium_feature =>
      'באַרקאָדע סקאַנינג איז בנימצא מיט Bloomi Pro';

  @override
  String get camera_title => 'אַי פוד סקאַננער';

  @override
  String get camera_tap_hint => 'נעמען אַ קלאָר פאָטאָ פון דיין שיסל';

  @override
  String get camera_analysing => 'אַנאַליזינג עסנוואַרג טעלער ...';

  @override
  String get camera_detected => 'דיטעקטאַד זאכן';

  @override
  String get camera_flash => 'טאַגאַל פלאַש';

  @override
  String get camera_retake => 'צוריקקריגן פאָטאָ';

  @override
  String get camera_confirm_food => 'באַשטעטיקן יטעמס';

  @override
  String get customFood_title => 'מנהג פוד & רעצעפּט';

  @override
  String get customFood_name_hint => 'די נאָמען פון די שיסל אָדער ינגרידיאַנט';

  @override
  String get customFood_calories_hint => 'קאַלאָריעס (קייקאַל)';

  @override
  String get customFood_protein_hint => 'פּראָטעין (ג)';

  @override
  String get customFood_carbs_hint => 'קאַרבס (ג)';

  @override
  String get customFood_fat_hint => 'פעט (ג)';

  @override
  String get customFood_save => 'היט רעסיפּע';

  @override
  String get water_tracker_title => 'וואַסער טראַקער';

  @override
  String get water_daily_target => 'טעגלעך הידראַטיאָן ציל';

  @override
  String get water_logged_today => 'לאָגד הייַנט';

  @override
  String get water_add_glass => '+250 מל גלאז';

  @override
  String get water_add_bottle => '+500 מל פלאַש';

  @override
  String get water_custom_amount => 'מנהג סומע';

  @override
  String get water_reminder_tip =>
      'טרינקען וואַסער קעסיידער איבער דעם טאָג פֿאַר פעסט ענערגיע.';

  @override
  String water_logged_toast(Object amount) {
    return 'לאָגד $amount מל פון וואַסער 💧';
  }

  @override
  String get workout_title => 'וואָרקאָוט קלאָץ';

  @override
  String get workout_add_exercise => 'לייג וואָרקאָוט';

  @override
  String get workout_cardio => 'קאַרדיאָו';

  @override
  String get workout_strength => 'שטאַרקייט';

  @override
  String get workout_yoga => 'יאָגאַ & בייגיקייַט';

  @override
  String get workout_duration => 'געדויער';

  @override
  String get workout_intensity => 'ינטענסיטי';

  @override
  String get workout_calories_burned => 'קאַלאָריעס פארברענט';

  @override
  String get workout_empty => 'קיין ווערקאַוץ לאָגד הייַנט';

  @override
  String get workout_save_success => 'וואָרקאָוט געראטעוועט הצלחה!';

  @override
  String get workout_type => 'וואָרקאָוט טיפּ';

  @override
  String get workout_notes => 'נאָטעס & רעפלעקטיאָנס';

  @override
  String get health_overview_title => 'געזונט & וויטאַלס';

  @override
  String get health_heart_rate => 'האַרץ קורס';

  @override
  String get health_blood_oxygen => 'בלוט זויערשטאָף (SpO2)';

  @override
  String get health_blood_pressure => 'בלוט דרוק';

  @override
  String get health_blood_glucose => 'בלוט גלוקאָוס';

  @override
  String get health_body_temperature => 'גוף טעמפּעראַטור';

  @override
  String get health_sleep_tracking => 'שלאָף טראַקינג';

  @override
  String get health_weight_tracking => 'וואָג & גוף זאַץ';

  @override
  String get health_waist_hip => 'טאַליע-צו-היפּ פאַרהעלטעניש';

  @override
  String get health_devices_hub => 'דעוויסעס און סמאַרטוואַטטש הוב';

  @override
  String get health_sync_now => 'סינק געזונט דאַטן';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'לעצטע סינסעד: $time';
  }

  @override
  String get health_manual_entry => 'מאַנואַל געזונט פּאָזיציע';

  @override
  String get health_metric_detail => 'מעטריק דעטאַילס';

  @override
  String get health_connected_sensors => 'קאָננעקטעד געזונט סענסאָרס';

  @override
  String get plan_title => 'טעגלעך פּלאַן';

  @override
  String get plan_weekly_title => 'וואכנשריפט וועללנעסס פּלאַן';

  @override
  String get plan_calorie_target => 'קאַלאָריע ציל';

  @override
  String get plan_water_target => 'הידראַטיאָן ציל';

  @override
  String get plan_step_target => 'שריט ציל';

  @override
  String get plan_sleep_target => 'שלאָף ציל';

  @override
  String get plan_meal_suggestions => 'מאָלצייַט פֿירלייגן';

  @override
  String get plan_healthy_habits => 'געזונט געוווינהייטן & עצות';

  @override
  String get plan_coach_advice => 'רעקאַמאַנדיישאַנז פֿאַר Bloomi AI קאָוטש';

  @override
  String get plan_generated_title => 'פערזענליכען דיילי סקעדזשול';

  @override
  String get profile_title => 'פּראָפיל';

  @override
  String get profile_edit => 'רעדאַגירן פּראָפיל';

  @override
  String get profile_name => 'נאָמען';

  @override
  String get profile_age => 'עלטער';

  @override
  String get profile_gender => 'דזשענדער';

  @override
  String get profile_height => 'הייך';

  @override
  String get profile_weight => 'וואָג';

  @override
  String get profile_goal => 'ערשטיק ציל';

  @override
  String get profile_activity_level => 'אַקטיוויטעט מדרגה';

  @override
  String get profile_stats => 'מיין וועללנעסס סטאַץ';

  @override
  String get profile_saved => 'פּראָפיל דערהייַנטיקט הצלחה';

  @override
  String get profile_bmi => 'גוף מאַסע אינדעקס (BMI)';

  @override
  String get profile_membership => 'מיטגלידערשאַפֿט';

  @override
  String get settings => 'סעטטינגס';

  @override
  String get preferences_habits => 'פּרעפֿערענצן & געוווינהייטן';

  @override
  String get appearance_theme => 'אויסזען & טעמע';

  @override
  String get appearance_theme_sub =>
      'דאַרק, ליכט, סיסטעם מאָדע און אַפּ הינטערגרונט אָפּציעס';

  @override
  String get permissions => 'פּערמישאַנז & סיסטעם אַקסעס';

  @override
  String get permissions_sub =>
      'געזונט קאָננעקט, סטעפּ סענסאָרס, גפּס, נאָוטאַפאַקיישאַנז און אַפּאַראַט';

  @override
  String get reminders_notifications => 'רימיינדערז און נאָוטאַפאַקיישאַנז';

  @override
  String get reminders_sub =>
      'מאָלצייַט צייט, וואַסער, וואָג טשעק-אין און בעדטיים רימיינדערז';

  @override
  String get units_of_measurement => 'וניץ פון מעזשערמאַנט';

  @override
  String get units_sub =>
      'מעטריק (קג, סענטימעטער, מל, קילאמעטער) אָדער ימפּעריאַל (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'אַפּ שפּראַך';

  @override
  String get language_sub =>
      'ענגליש, हिन्दी (הינדי), הינגליש און 195+ גלאבאלע שפּראַכן';

  @override
  String get home_screen_widgets => 'היים פאַרשטעלן ווידזשיץ';

  @override
  String get widgets_sub =>
      'לעבן אַנדרויד ווידזשיץ: הוב, סטעפּס, וואַסער, דערנערונג און מאַסקאַט';

  @override
  String get wear_os_watch_app => 'טראָגן OS וואַך אַפּ';

  @override
  String get wear_os_sub =>
      'סמאַרטוואַטטש באַגלייטער, טיילז, קאַמפּלאַקיישאַנז און לעבן וויטאַל';

  @override
  String get goals_wellness => 'צילן און געזונט ינסייץ';

  @override
  String get nutrition_targets => 'דערנערונג טאַרגאַץ און מאַקראָו שפּאַלטן';

  @override
  String get nutrition_targets_sub =>
      'קאַלאָריע ציל, פּראָטעין, קאַרבס, פעט און וואַסער ציל';

  @override
  String get weekly_recap => 'וויקלי וועללנעסס רעקאַפּ';

  @override
  String get weekly_recap_sub =>
      '7-טאָג קאַלאָריע דורכשניטלעך, מאַקראָו פאַרהעלטעניש און בעסטער טאָג';

  @override
  String get streaks_milestones => 'סטריקס & מיילסטאָונז';

  @override
  String get streaks_sub => 'אַקטיוו קווייט סטריקס, באַדזשיז און דערגרייכונגען';

  @override
  String get connected_devices => 'קאָננעקטעד דעוויסעס און יקאָוסיסטאַם';

  @override
  String get devices_hub => 'דעוויסעס און סמאַרטוואַטטש הוב';

  @override
  String get devices_hub_sub =>
      'געזונט קאָננעקט, גאַלאַקסי וואַך, פּיקסעל וואַך, גאַרמין';

  @override
  String get surroundings_weather => 'סעראַונדז & וועטער';

  @override
  String get surroundings_sub =>
      'עצות פֿאַר לופט קוואַליטעט (AQI), UV אינדעקס און וועטער כיידריישאַן';

  @override
  String get bloomi_pro => 'Bloomi פּראָ אַבאָנעמענט';

  @override
  String get bloomi_pro_sub =>
      'AI פּלאַן קאָוטש, 5 היים פאַרשטעלן ווידזשיץ און וויטאַל טראַקינג';

  @override
  String get about_security => 'וועגן & זיכערהייט';

  @override
  String get about_bloomi => 'וועגן בלומי';

  @override
  String get about_bloomi_sub => 'בויען ספּעסאַפאַקיישאַנז, ווערסיע, אַטריביוץ';

  @override
  String get privacy_policy => 'פּריוואַטקייט פּאָליטיק';

  @override
  String get privacy_policy_sub =>
      'אָפפלינע-ערשטער, אויף-מיטל דאַטן אַרקאַטעקטשער';

  @override
  String get terms_conditions => 'תּנאָים & קאָנדיטיאָנס';

  @override
  String get terms_conditions_sub =>
      'תּנאָים פון דינסט און וועללנעסס גיידליינז';

  @override
  String get delete_account => 'ויסמעקן אַקאַונט & דאַטן';

  @override
  String get delete_account_sub =>
      'יריווערסאַבאַל מעקן היגע SQLite דאַטן און וואָלקן באַקאַפּס';

  @override
  String get healthy_habits => 'בויען מילד, בלייַביק וועללנעסס געוווינהייטן';

  @override
  String get all_logs => 'מייַן טראַקט דאַטאַ & לאָגס';

  @override
  String get search_language => 'זוך לויט שפּראַך אָדער געבוירן שריפט...';

  @override
  String get languages_available => 'שפּראַכן בנימצא';

  @override
  String get no_matching_languages => 'קיין שטיפערישע שפראכן געפונען';

  @override
  String get try_searching =>
      'פּרוּווט זוכן דורך געבוירן שריפט אָדער ענגליש אויסלייג';

  @override
  String get partially_translated => 'טייל איבערגעזעצט';

  @override
  String get complete_translation => 'גאַנץ';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'שפּראַך באַשטימט צו $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'סביבה & ענוויראָנמענט';

  @override
  String get surroundings_aqi => 'לופט קוואַליטי אינדעקס';

  @override
  String get surroundings_uv => 'UV אינדעקס';

  @override
  String get surroundings_temp => 'טעמפּעראַטור';

  @override
  String get surroundings_humidity => 'הומידיטי';

  @override
  String get surroundings_hydration_advice =>
      'בלייבן געזונט כיידרייטאַד אין קראַנט וועטער טנאָים.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'זוכן פוד';

  @override
  String get food_quick_barcode => 'יבערקוקן באַרקאָדע 👑';

  @override
  String get food_quick_water => 'לייג וואַסער';

  @override
  String get food_quick_custom => 'מנהג פוד';

  @override
  String get surroundings_good => 'גוט';

  @override
  String get surroundings_moderate => 'מעסיק';

  @override
  String get surroundings_unhealthy => 'אַנכעלטי';

  @override
  String get notifications_title => 'נאָוטאַפאַקיישאַנז & אַלערץ';

  @override
  String get notifications_empty => 'קיין נייַע נאָוטאַפאַקיישאַנז';

  @override
  String get notifications_mark_read => 'מארק אַלע ווי לייענען';

  @override
  String get notifications_clear => 'קלאָר אַלע';

  @override
  String get reminders => 'דערמאָנונג סעטטינגס';

  @override
  String get notifications => 'נאָוטאַפאַקיישאַנז';

  @override
  String get reminders_breakfast_title => 'פרישטיק דערמאָנונג 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'גוט מאָרגן! צייט פֿאַר אַ נערישינג פרישטיק ביי $time.';
  }

  @override
  String get reminders_lunch_title => 'לאָנטש דערמאָנונג 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'פּויזע און געניסן פון אַ באַלאַנסט, מיינדפאַל לאָנטש ביי $time.';
  }

  @override
  String get reminders_dinner_title => 'מיטאָג דערמאָנונג 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'צייט פֿאַר אַ ליכט, סאַטיספייינג מיטאָג ביי $time.';
  }

  @override
  String get reminders_water_title => 'הידראַטיאָן נאַדזש 💧';

  @override
  String reminders_water_body(Object time) {
    return 'צייט צו טרינקען אַ פריש גלאז פון וואַסער! ( $time )';
  }

  @override
  String get reminders_weight_title => 'וואכנשריפט וועיגה-אין ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'שפּור דיין וואכנשריפט גוף מעטריקס אויף Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'בעדטיים ווינט-אַראָפּ 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'אָפּרוען און צוגרייטן פֿאַר אַ רעסטפאַל שלאָפן ($time).';
  }

  @override
  String get onboard_welcome => 'ברוכים הבאים צו Bloomi';

  @override
  String get onboard_sub =>
      'דיין פרייַנדלעך, אָפפלינע-ערשטער באַגלייטער פֿאַר געזונט און דערנערונג.';

  @override
  String get onboard_get_started => 'באַקומען סטאַרטעד';

  @override
  String get onboard_sign_in => 'צייכן אין';

  @override
  String get onboard_skip => 'האָפּקען';

  @override
  String get onboard_choose_goal => 'וואָס איז דיין ערשטיק וועללנעסס ציל?';

  @override
  String get onboard_goal_weight_loss => 'מילד ווייט לאָס';

  @override
  String get onboard_goal_muscle => 'מוסקל געווינען & סטרענגטה';

  @override
  String get onboard_goal_energy => 'טעגלעך ענערגיע & ווייטאַלאַטי';

  @override
  String get onboard_goal_habits => 'געזונט מיינדפאַל עסן';

  @override
  String get onboard_about_you => 'דערציילן אונדז וועגן זיך';

  @override
  String get onboard_lifestyle => 'דיין טעגלעך רוטין';

  @override
  String get onboard_permissions_title => 'פּערמישאַנז & סיסטעם אַקסעס';

  @override
  String get onboard_permissions_sub =>
      'געבן אַקסעס צו סינק סטעפּס, ווערקאַוץ און רימיינדערז.';

  @override
  String get onboard_plan_ready_title => 'דיין מנהג פּלאַן איז גרייט!';

  @override
  String get onboard_plan_ready_sub =>
      'מיר קראַפטעד אַ מילד, פערזענליכען דערנערונג און וועלנאַס ראָאַדמאַפּ נאָר פֿאַר איר.';

  @override
  String get onboard_enter_bloomi => 'אַרייַן בלומי';

  @override
  String get insights_weekly_report => 'וויקלי וועללנעסס רעקאַפּ';

  @override
  String insights_best_day(Object day) {
    return 'בעסטער קאָנסיסטענסי טאָג: $day';
  }

  @override
  String get insights_streaks_badges => 'סטריקס & מיילסטאָונז';

  @override
  String insights_unlocked_on(Object date) {
    return 'אַנלאַקט אויף $date';
  }

  @override
  String get insights_keep_going => 'האַלטן די פאַנטאַסטיש פּראָגרעס!';

  @override
  String get widgets_title => 'היים פאַרשטעלן ווידזשיץ';

  @override
  String widgets_active_count(Object count) {
    return 'אַקטיוו ווידזשיץ: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'סטעפּס & אַקטיוו רינג';

  @override
  String get widgets_water_title => 'כיידריישאַן שנעל קלאָץ';

  @override
  String get widgets_mascot_title => 'בלאָאָמי מאַסקאַט באַגלייטער';

  @override
  String get wear_os_title => 'טראָגן אַס סמאַרטוואַטטש';

  @override
  String get wear_os_connected => 'קאָננעקטעד צו וואַך';

  @override
  String get wear_os_sync => 'סינק וואַך דאַטן';

  @override
  String get theme_title => 'אויסזען & טעמע';

  @override
  String get theme_mode => 'טעמע מאָדע';

  @override
  String get theme_light => 'ליכט';

  @override
  String get theme_dark => 'טונקל';

  @override
  String get theme_system => 'סיסטעם פעליקייַט';

  @override
  String get theme_background_palette => 'הינטערגרונט פּאַלעטטע';

  @override
  String get units_title => 'וניץ פון מעזשערמאַנט';

  @override
  String get units_metric => 'מעטריק (קג, סענטימעטער, מל)';

  @override
  String get units_imperial => 'ימפּעריאַל (לבס, אין, פל אָז)';

  @override
  String get home_unable_load => 'ניט געקענט צו לאָדן דאַשבאָרד';

  @override
  String get home_health_permission_req =>
      'געזונט קאָננעקט דערלויבעניש פארלאנגט';

  @override
  String get home_health_permission_desc =>
      'Bloomi ריקווייערז געזונט קאָננעקט דערלויבעניש צו ציען פאַקטיש סטעפּס, האַרץ קורס און סינק ווידזשיץ פֿאַר רירעוודיק היים אין פאַקטיש צייט.';

  @override
  String get home_allow_health => 'לאָזן געזונט קאָננעקט';

  @override
  String get home_ready_mindful_day => 'גרייט פֿאַר אַ מיינדפאַל טאָג? ✨';

  @override
  String get home_quick_add => 'שנעל לייג';

  @override
  String get home_live_gps => 'לעבן גפּס';

  @override
  String get home_calories_remaining_label => 'קאַלאָריעס רימיינינג';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'געגעסן: $consumed / $target קייקאַל';
  }

  @override
  String get home_tap_water_tracker => 'צאַפּן פֿאַר וואַסער טראַקער 💧';

  @override
  String get home_water_goal_reached => 'טעגלעך ציל ריטשט 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining מל צו טעגלעך ציל';
  }

  @override
  String get home_details => 'דעטאַילס';

  @override
  String get home_upgrade_plan_desc =>
      'אַפּגרייד צו ופשליסן פערזענליכען טעגלעך טאַרגאַץ און אַי פּלאַן';

  @override
  String get home_unlock => 'ופשליסן 👑';

  @override
  String get home_quick_log_hint =>
      'געשווינד רעקאָרדירן אַ וועללנעסס פּאָזיציע';

  @override
  String get food_serving_size => 'סערווינג גרייס';

  @override
  String get food_serving_grams => 'סערווינג (ג)';

  @override
  String get food_number_servings => 'נומער פון סערווינגז';

  @override
  String get food_calories_per_serving => 'קאַלאָריעס פּער סערווינג';

  @override
  String get food_recipe_ingredients => 'ינגרידיאַנץ';

  @override
  String get food_recipe_add_ingredient => 'לייג ינגרידיאַנט';

  @override
  String get food_recipe_directions => 'אינסטרוקציעס & נאָטעס';

  @override
  String get food_recipe_total => 'גאַנץ רעסיפּע נוטרישאַן';

  @override
  String get food_recipe_per_serving => 'פּער סערווינג דערנערונג';

  @override
  String get food_recipe_saved_toast => 'מנהג עסנוואַרג געראטעוועט הצלחה!';

  @override
  String get food_barcode_found => 'פּראָדוקט געפֿונען!';

  @override
  String get food_barcode_not_found_desc =>
      'מיר קען נישט געפֿינען דעם באַרקאָדע אין די אָפֿן דאַטאַבייס. איר קענען לייגן עס ווי אַ מנהג עסנוואַרג.';

  @override
  String get food_add_custom_btn => 'לייג מנהג פוד';

  @override
  String get food_scan_again => 'יבערקוקן ווידער';

  @override
  String get food_review_items => 'איבערבליק דיטעקטיד פודז';

  @override
  String get food_review_hint =>
      'סטרויערן קוואַנטאַטיז אָדער באַזייַטיקן קיין אַנרעקאַגנייזד נומער';

  @override
  String get food_log_selected => 'קלאָץ סעלעקטעד פודז';

  @override
  String get food_favourites_title => 'באַליבסטע פודז';

  @override
  String get food_recent_title => 'לעצטע פאָאָדס';

  @override
  String get food_no_favourites =>
      'ניט קיין באַליבסטע פודז נאָך. צאַפּן האַרץ אויף קיין עסנוואַרג צו ראַטעווען דאָ.';

  @override
  String get food_no_recents => 'ניט לעצטנס לאָגד פודז געפֿונען.';

  @override
  String get food_nutrition_details_title => 'טעגלעך נוטרישאַן דעטאַילס';

  @override
  String get food_macro_protein_label => 'פּראָטעין ברייקדאַון';

  @override
  String get food_macro_carbs_label => 'קאַרבס ברייקדאַון';

  @override
  String get food_macro_fat_label => 'פעט ברייקדאַון';

  @override
  String get food_macro_fiber_label => 'פיברע ברייקדאַון';

  @override
  String get food_daily_target_comparison => 'ציל פאַרגלייַך';

  @override
  String food_target_label(Object target) {
    return 'ציל: $target';
  }

  @override
  String get food_edit_entry => 'רעדאַגירן טאָגבוך פּאָזיציע';

  @override
  String get food_delete_entry => 'ויסמעקן פּאָזיציע';

  @override
  String food_grams_short(Object grams) {
    return '$grams ג';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal קייקאַל';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current פון $target מל';
  }

  @override
  String get water_intake_history => 'הייַנט ס וואַסער לאָגס';

  @override
  String get water_no_logs_today =>
      'קיין וואַסער לאָגד נאָך הייַנט. כיידרייט און צאַפּן אויף אַ שנעל לייגן קנעפּל!';

  @override
  String get water_adjust_goal => 'סטרויערן די טעגלעך ציל';

  @override
  String get health_connect_banner => 'קאָננעקטעד צו געזונט קאָננעקט';

  @override
  String get health_vitals_summary => 'טעגלעך געזונט וויטאַלס';

  @override
  String get health_latest_heart_rate => 'לעצטע האַרץ קורס';

  @override
  String get health_latest_bp => 'בלוט דרוק';

  @override
  String get health_latest_spo2 => 'בלוט זויערשטאָף';

  @override
  String get health_latest_glucose => 'בלוט גלוקאָוס';

  @override
  String get health_latest_weight => 'וואָג';

  @override
  String get health_latest_sleep => 'שלאָף געדויער';

  @override
  String get health_add_manual => 'לייג מאַנואַל מעאַסורעמענט';

  @override
  String get health_history_trends => 'היסטאָריש טרענדס';

  @override
  String get health_sync_success => 'געזונט דאַטן סינסעד הצלחה!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours שעה $mins מינוט';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val קג';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm בפּם';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic ממהג';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val מג/דל';
  }

  @override
  String get health_devices_title => 'קאָננעקטעד דעוויסעס און וועראַבאַלז';

  @override
  String get health_devices_desc =>
      'פירן פּערד סמאַרטוואַטטשעס, טויגיקייט טראַקערז און געזונט סענסאָרס.';

  @override
  String get health_workout_editor_title => 'רעדאַגירן וואָרקאָוט';

  @override
  String get health_workout_name_label => 'וואָרקאָוט נאָמען';

  @override
  String get health_workout_duration_label => 'געדויער (מינוט)';

  @override
  String get health_workout_calories_label => 'עסטימאַטעד קאַלאָריעס (קקאַל)';

  @override
  String get health_workout_date_label => 'טאָג און צייט';

  @override
  String get plan_daily_wellness_roadmap => 'דיין פערזענליכען ראָאַדמאַפּ';

  @override
  String get plan_morning_routine => 'מאָרגן רוטין';

  @override
  String get plan_afternoon_routine => 'מיטאָג וועללנעסס';

  @override
  String get plan_evening_routine => 'אָוונט ווינט-אַראָפּ';

  @override
  String get plan_coach_badge => 'Bloomi AI קאָוטש';

  @override
  String get plan_weekly_overview => '7-טאָג וועללנעסס פאָקוס';

  @override
  String get plan_targets_title => 'וועללנעסס טאַרגאַץ & גאָולז';

  @override
  String get plan_calorie_budget_label => 'טעגלעך קאַלאָריע בודזשעט';

  @override
  String get plan_water_budget_label => 'טעגלעך וואַסער ציל';

  @override
  String get plan_step_budget_label => 'טעגלעך שריט ציל';

  @override
  String get plan_macro_split_label => 'מאַקראָנוטריענט פאַרהעלטעניש';

  @override
  String get profile_personal_details => 'פערזענלעכע דעטאַילס';

  @override
  String get profile_body_stats => 'גוף מעזשערמאַנץ';

  @override
  String get profile_app_preferences => 'פּרעפֿערענצן & אַפּ סעטטינגס';

  @override
  String get profile_edit_name_hint => 'דיין נאָמען';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'הייך ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'וואָג ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'עלטער';

  @override
  String get profile_gender_male => 'זכר';

  @override
  String get profile_gender_female => 'ווייַבלעך';

  @override
  String get profile_gender_other => 'אנדערע / בעסער נישט צו זאָגן';

  @override
  String get profile_activity_sedentary => 'זיציק (קליין צו קיין געניטונג)';

  @override
  String get profile_activity_light => 'לייטלי אַקטיוו (1-3 טעג / וואָך)';

  @override
  String get profile_activity_moderate => 'מעסיק אַקטיוו (3-5 טעג / וואָך)';

  @override
  String get profile_activity_very => 'זייער אַקטיוו (6-7 טעג / וואָך)';

  @override
  String get settings_wear_os_header => 'טראָגן OS Companion אַפּ';

  @override
  String get settings_wear_os_desc =>
      'ינסטאַלירן די Bloomi קאַכל און קאַמפּלאַקיישאַנז אויף דיין Wear OS וואַך צו קוקן אין קאַלאָריעס, וואַסער און סטעפּס.';

  @override
  String get settings_widgets_header => 'ינטעראַקטיווע אַנדרויד ווידזשיץ';

  @override
  String get settings_widgets_desc =>
      'שטיפט פאַקטיש-צייט ווידזשיץ אויף דיין מיטל פאַרשטעלן פֿאַר רעגע דערהייַנטיקונגען.';

  @override
  String get settings_about_header => 'וועגן בלומי';

  @override
  String get settings_about_version => 'ווערסיע 1.0.0';

  @override
  String get settings_about_build => 'בויען 100';

  @override
  String get settings_about_credits =>
      'קראַפטעד מיט זאָרג פֿאַר מיינדפאַל, געזונט לעבעדיק.';

  @override
  String get settings_terms_header => 'תּנאָים און קאָנדיטיאָנס';

  @override
  String get settings_privacy_header => 'פּריוואַטקייט פּאָליטיק';

  @override
  String get settings_delete_header => 'ויסמעקן אַקאַונט & דאַטן';

  @override
  String get settings_delete_warning =>
      'דעם קאַמף קענען ניט זיין ומקערן. אַלע דיין מילז, ווערקאַוץ, וויטאַל און פּראָפיל וועט זיין פּערמאַנאַנטלי אויסגעמעקט.';

  @override
  String get settings_delete_confirm_btn => 'פּערמאַנענטלי ויסמעקן';

  @override
  String get onboard_welcome_headline => 'ברוכים הבאים צו Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'מילד, מיינדפאַל וועלנאַס טראַקינג דיזיינד אַרום דיין לעבן.';

  @override
  String get onboard_step_about => 'וועגן איר';

  @override
  String get onboard_step_goals => 'דיין צילן';

  @override
  String get onboard_step_lifestyle => 'טעגלעך געוווינהייטן';

  @override
  String get onboard_step_permissions => 'פּערמישאַנז';

  @override
  String get onboard_step_plan => 'גרייט!';

  @override
  String get onboard_health_connect_perm => 'געזונט קאָננעקט אַקסעס';

  @override
  String get onboard_step_sensors_perm => 'שריט קאָונטער סענסאָר';

  @override
  String get onboard_notif_perm =>
      'מיינדפאַל רימיינדערז און נאָוטאַפאַקיישאַנז';

  @override
  String get onboard_camera_perm => 'אַפּאַראַט (באַרקאָדע און פוד סקאַננער)';

  @override
  String get onboard_grant_permissions => 'שענקען פּערמישאַנז';

  @override
  String get onboard_continue_dashboard => 'עפענען דאַשבאָרד';

  @override
  String get notif_channel_hydration_name => 'הידראַטיאָן נודגעס';

  @override
  String get notif_channel_hydration_desc =>
      'מילד וואַסער רימיינדערז איבער דעם טאָג';

  @override
  String get notif_channel_nutrition_name =>
      'רימיינדערז פֿאַר מאָלצייַט און דערנערונג';

  @override
  String get notif_channel_nutrition_desc =>
      'דערמאָנונג אַלערץ פֿאַר פרישטיק, לאָנטש און מיטאָג';

  @override
  String get notif_channel_steps_name => 'שריט מיילסטאָונז';

  @override
  String get notif_channel_steps_desc =>
      'סעלאַבריישאַנז ווען ריטשינג טעגלעך שריט טאַרגאַץ';

  @override
  String get notif_channel_vitals_name => 'געזונט & וויטאַל טשעקס';

  @override
  String get notif_channel_vitals_desc => 'רימיינדערז פֿאַר וואָג און בעדטיים';

  @override
  String get notif_action_log_water => '💧 קלאָץ +250 מל';

  @override
  String get notif_action_snooze => 'סנוז 15 ם';

  @override
  String get notif_action_log_meal => '🥗 קלאָץ מאָלצייַט';

  @override
  String get language => 'שפּראַך';

  @override
  String get share => 'ייַנטיילן';

  @override
  String common_days(Object count) {
    return '$count ד צוריק';
  }
}
