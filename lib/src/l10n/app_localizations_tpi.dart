// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tok Pisin (`tpi`).
class AppLocalizationsTpi extends AppLocalizations {
  AppLocalizationsTpi([String locale = 'tpi']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Haus';

  @override
  String get nav_today => 'Tede';

  @override
  String get nav_plan => 'Plen';

  @override
  String get nav_food => 'Kaikai';

  @override
  String get nav_food_diary => 'Dairi bilong kaikai';

  @override
  String get nav_workout => 'Wokaut Log';

  @override
  String get nav_health => 'Helt';

  @override
  String get nav_profile => 'Profail';

  @override
  String get save => 'Sevim';

  @override
  String get cancel => 'Kenselim';

  @override
  String get delete => 'Rausim';

  @override
  String get edit => 'Stretim';

  @override
  String get done => 'Pinis';

  @override
  String get close => 'Klosim';

  @override
  String get back => 'Go bek';

  @override
  String get next => 'Neks';

  @override
  String get continue_btn => 'Go het';

  @override
  String get confirm => 'Konfemim';

  @override
  String get search => 'Painim';

  @override
  String get filter => 'Filta';

  @override
  String get all => 'Olgeta';

  @override
  String get active => 'Ektiv';

  @override
  String get today => 'Tede';

  @override
  String get yesterday => 'Aste';

  @override
  String get tomorrow => 'Tumora';

  @override
  String get add => 'Putim';

  @override
  String get remove => 'Rausim';

  @override
  String get refresh => 'Refresim';

  @override
  String get retry => 'Traim gen';

  @override
  String get error => 'Asua';

  @override
  String get success => 'Sakses';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Nogat data i stap';

  @override
  String get offline => 'Oflain Mod';

  @override
  String get offline_sub =>
      'Ol senis bai wok bung wantaim taim yu konektim gen';

  @override
  String get undo => 'Undo';

  @override
  String get portion => 'Hap';

  @override
  String get quantity => 'Namba';

  @override
  String get unit => 'Yunit';

  @override
  String get clear => 'Kliarim';

  @override
  String get select => 'Yu mas makim';

  @override
  String get apply => 'Aplaim';

  @override
  String get reset => 'Setim gen';

  @override
  String get ok => 'Orait';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'Nogat';

  @override
  String get optional => 'Opsenel';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protin';

  @override
  String get carbs => 'Ol \'carbs\'';

  @override
  String get fat => 'Gris';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Wara';

  @override
  String get steps => 'Ol step';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'insait';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'aua';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Sevim';

  @override
  String get servings => 'Ol sevings';

  @override
  String get serving_size => 'Sais bilong Seving';

  @override
  String get per_100g => 'long wan wan 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Esia';

  @override
  String get europe => 'Yurop';

  @override
  String get middle_east => 'Midel Is';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Haus';

  @override
  String get home_greeting_morning => 'Gutpela moning';

  @override
  String get home_greeting_afternoon => 'Gutpela apinun';

  @override
  String get home_greeting_evening => 'Gutpela apinun';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de stret',
      one: '1 de stret',
      zero: '0 de stret',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Paia i kukim';

  @override
  String get home_calories_budget => 'Kalori Baset';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal i stap yet';
  }

  @override
  String get home_water_title => 'Haidresen long olgeta de';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Ol step yu wokabaut';

  @override
  String get home_quick_actions => 'Kwik Eksen';

  @override
  String get home_log_meal => 'Log Kaikai';

  @override
  String get home_log_water => 'Log Wara';

  @override
  String get home_log_workout => 'Log Wokaut';

  @override
  String get home_log_weight => 'Hevi bilong Log';

  @override
  String get home_insights_title => 'Ol tingting bilong tude';

  @override
  String get home_quote =>
      'Ol liklik helti disisen i save kamapim ol gutpela senis.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Kosa';

  @override
  String get home_surroundings => 'Ol samting i stap klostu na win';

  @override
  String get home_notifications => 'Ol toksave';

  @override
  String get home_daily_score => 'Deli Welnes Skoa';

  @override
  String get home_view_all => 'Lukim olgeta';

  @override
  String get food_diary_title => 'Dairi bilong kaikai';

  @override
  String get food_breakfast => 'Brekfas';

  @override
  String get food_lunch => 'Kaikai';

  @override
  String get food_dinner => 'Dina';

  @override
  String get food_snacks => 'Ol liklik kaikai';

  @override
  String get food_add_food => 'Putim Kaikai';

  @override
  String get food_edit_food => 'Stretim Kaikai';

  @override
  String get food_add_breakfast => 'Putim Brekfas';

  @override
  String get food_add_lunch => 'Putim kaikai bilong apinun';

  @override
  String get food_add_dinner => 'Putim kaikai';

  @override
  String get food_add_snack => 'Putim liklik kaikai';

  @override
  String get food_total_calories => 'Olgeta Kalori';

  @override
  String get food_empty_meal => 'Nogat kaikai i stap long dispela kaikai yet';

  @override
  String get food_empty_diary => 'Nogat kaikai i stap long dispela de';

  @override
  String get food_log_first_meal =>
      'Taitim + long kisim namba wan gutpela kaikai bilong yu';

  @override
  String get food_quick_add => 'Kwik Putim';

  @override
  String get food_search_hint => 'Painim ol kaikai, prut, dal, roti...';

  @override
  String get food_custom_recipe => 'Kastom Kaikai & Resipi';

  @override
  String get food_scan_barcode => 'Skenim Barkod';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Ol nupela kaikai';

  @override
  String get food_favourites => 'Ol feveret';

  @override
  String get food_macro_summary => 'Makronutrien Brekdaun';

  @override
  String get food_delete_meal_confirm =>
      'Yu save tru olsem yu laik rausim dispela samting?';

  @override
  String get food_item_deleted => 'Ol i rausim kaikai';

  @override
  String get food_remaining => 'i stap yet';

  @override
  String get food_consumed => 'pinis';

  @override
  String food_of_target(Object target) {
    return 'bilong $target kcal';
  }

  @override
  String get foodSearch_title => 'Painim ol kaikai';

  @override
  String get foodSearch_scan_barcode => 'Skenim Barkod';

  @override
  String get foodSearch_take_photo => 'Snap Food Food';

  @override
  String get foodSearch_custom_food => 'Wokim Kastom Kaikai';

  @override
  String get foodSearch_recent_searches =>
      'Ol wok painim i no long taim i go pinis';

  @override
  String get foodSearch_popular => 'Ol kaikai we ol man i save laikim';

  @override
  String get foodSearch_no_results =>
      'Nogat kaikai i wankain olsem painim bilong yu';

  @override
  String get barcode_title => 'Barkod Skena';

  @override
  String get barcode_align => 'Stretim barkod insait long freim bilong kamera';

  @override
  String get barcode_not_found => 'Prodak i no stap insait long databes';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning i stap wantaim Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint =>
      'Kisim wanpela klia poto bilong kaikai bilong yu';

  @override
  String get camera_analysing => 'Skelim plet bilong kaikai...';

  @override
  String get camera_detected => 'Ol samting we ol i painimaut';

  @override
  String get camera_flash => 'Senisim Flash';

  @override
  String get camera_retake => 'Kisim gen poto';

  @override
  String get camera_confirm_food => 'Konfemim ol samting';

  @override
  String get customFood_title => 'Kastom Kaikai & Resipi';

  @override
  String get customFood_name_hint =>
      'Nem bilong kaikai o samting bilong kukim kaikai';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Protin (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Gris (g)';

  @override
  String get customFood_save => 'Sevim Resipi';

  @override
  String get water_tracker_title => 'Wara Traka';

  @override
  String get water_daily_target => 'Gol bilong kisim wara long olgeta de';

  @override
  String get water_logged_today => 'Logged tude';

  @override
  String get water_add_glass => '+250 ml Glas';

  @override
  String get water_add_bottle => '+500 ml Botol';

  @override
  String get water_custom_amount => 'Kastom Amaunt';

  @override
  String get water_reminder_tip =>
      'Dring wara oltaim long de bilong kisim strong.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml bilong wara 💧';
  }

  @override
  String get workout_title => 'Wokaut Log';

  @override
  String get workout_add_exercise => 'Putim Wokaut';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Strong';

  @override
  String get workout_yoga => 'Yoga na Fleksibiliti';

  @override
  String get workout_duration => 'Longpela taim';

  @override
  String get workout_intensity => 'Strong';

  @override
  String get workout_calories_burned => 'Ol kalori we ol i kukim';

  @override
  String get workout_empty => 'Nogat wok aut i stap tude';

  @override
  String get workout_save_success => 'Wokaut i sevim gut!';

  @override
  String get workout_type => 'Kain Wokaut';

  @override
  String get workout_notes => 'Ol toksave na tingting';

  @override
  String get health_overview_title => 'Helt & Vitals';

  @override
  String get health_heart_rate => 'Hat Reit';

  @override
  String get health_blood_oxygen => 'Blut Oksijen (SpO2)';

  @override
  String get health_blood_pressure => 'Blut Presa';

  @override
  String get health_blood_glucose => 'Blut Glukos';

  @override
  String get health_body_temperature => 'Tempereja bilong bodi';

  @override
  String get health_sleep_tracking => 'Slip Traking';

  @override
  String get health_weight_tracking => 'Hevi na Bodi Komposisen';

  @override
  String get health_waist_hip => 'Waist-to-Hip Retio';

  @override
  String get health_devices_hub => 'Ol divais na smatwats hab';

  @override
  String get health_sync_now => 'Sinkim Helt Data';

  @override
  String health_last_synced(Object time) {
    return 'Laspela taim ol i bin bungim: $time';
  }

  @override
  String get health_manual_entry => 'Helt Entri long han';

  @override
  String get health_metric_detail => 'Ol Ditel bilong Metric';

  @override
  String get health_connected_sensors => 'Ol Helt Sensa we i konektim';

  @override
  String get plan_title => 'Plen bilong olgeta de';

  @override
  String get plan_weekly_title => 'Plen bilong helt bilong olgeta wik';

  @override
  String get plan_calorie_target => 'Kalori Taget';

  @override
  String get plan_water_target => 'Haidresen Taget';

  @override
  String get plan_step_target => 'Step Taget';

  @override
  String get plan_sleep_target => 'Slip Taget';

  @override
  String get plan_meal_suggestions => 'Ol tingting bilong kaikai';

  @override
  String get plan_healthy_habits => 'Ol Gutpela Pasin na Toksave';

  @override
  String get plan_coach_advice => 'Bloomi AI Kosa Rekomendasen';

  @override
  String get plan_generated_title =>
      'Sediul bilong olgeta de we i stret long yu yet';

  @override
  String get profile_title => 'Profail';

  @override
  String get profile_edit => 'Senitim Profail';

  @override
  String get profile_name => 'Nem';

  @override
  String get profile_age => 'Krismas';

  @override
  String get profile_gender => 'Jenda';

  @override
  String get profile_height => 'Hait';

  @override
  String get profile_weight => 'Hevi';

  @override
  String get profile_goal => 'Namba wan mak';

  @override
  String get profile_activity_level => 'Aktiviti Level';

  @override
  String get profile_stats => 'Stat bilong helt bilong mi';

  @override
  String get profile_saved => 'Ol i bin apdetim profail gut';

  @override
  String get profile_bmi => 'Bodi Mass Indeks (BMI)';

  @override
  String get profile_membership => 'Membasip';

  @override
  String get settings => 'Ol seting';

  @override
  String get preferences_habits => 'OL LAIKIM NA PASIN';

  @override
  String get appearance_theme => 'Lukluk na Het Tok';

  @override
  String get appearance_theme_sub =>
      'Tudak, Lait, Sistem Mod na Ap Bekgraun Opsen';

  @override
  String get permissions => 'Ol tok orait na sistem akses';

  @override
  String get permissions_sub =>
      'Helt Konekt, Step Sensa, GPS, Notifikesen na Kamera';

  @override
  String get reminders_notifications => 'Ol toksave na toksave';

  @override
  String get reminders_sub =>
      'Taim bilong kaikai, wara, sekim hevi bilong bodi na ol toksave bilong slip';

  @override
  String get units_of_measurement => 'Ol yunit bilong skelim';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) o Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Tokples bilong Ap';

  @override
  String get language_sub =>
      'Inglis, हिन्दी (Hindi), Hinglish & 195+ global tokples';

  @override
  String get home_screen_widgets => 'Ol \'Home Screen Widgets\'';

  @override
  String get widgets_sub =>
      'Ol laip Android widget: Hub, Step, Wara, Nutrisen & Maskot';

  @override
  String get wear_os_watch_app => 'Werim OS Was Ap';

  @override
  String get wear_os_sub =>
      'Smatwats poroman, ol tail, ol hevi na ol laip vitals';

  @override
  String get goals_wellness => 'OL MAK & OL TINGTING BILONG WELLNESS';

  @override
  String get nutrition_targets => 'Ol Nutrisen Taget na Makro Split';

  @override
  String get nutrition_targets_sub =>
      'Mak bilong kalori, protin, karbohidret, gris na wara';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub => '7-de kalori averej, makro resio & bes de';

  @override
  String get streaks_milestones => 'Ol mak na mak';

  @override
  String get streaks_sub =>
      'Ol mak bilong plaua, ol \'badge\' na ol samting yu winim';

  @override
  String get connected_devices => 'OL KONEKTED DIVAIS & EKOSISTEM';

  @override
  String get devices_hub => 'Ol divais na smatwats hab';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ol samting i stap klostu na weta';

  @override
  String get surroundings_sub =>
      'Kwaliti bilong win (AQI), UV indeks na ol toksave bilong haidresen long weta';

  @override
  String get bloomi_pro => 'Bloomi Pro sabskripsen';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5-pela \'home screen widgets\' na \'vitals tracking\'';

  @override
  String get about_security => 'LONG & SEKURITI';

  @override
  String get about_bloomi => 'Long Bloomi';

  @override
  String get about_bloomi_sub =>
      'Ol spesifikasen bilong wokim, vesen, ol atribiusen';

  @override
  String get privacy_policy => 'Polisi bilong Praivesi';

  @override
  String get privacy_policy_sub => 'Oflain-pastaim, on-divais data akiteksa';

  @override
  String get terms_conditions => 'Ol tok orait na kondisen';

  @override
  String get terms_conditions_sub =>
      'Ol tok bilong sevis na ol stia tok bilong helt';

  @override
  String get delete_account => 'Rausim Akaun na Data';

  @override
  String get delete_account_sub =>
      'Rausim ol lokol SQLite data na ol klaut bekap';

  @override
  String get healthy_habits => 'Kamapim ol gutpela pasin bilong stap gut';

  @override
  String get all_logs => 'Ol data na log bilong mi';

  @override
  String get search_language => 'Painim long tok ples o rait bilong ples...';

  @override
  String get languages_available => 'Ol tokples i stap';

  @override
  String get no_matching_languages => 'Nogat wankain tokples i stap';

  @override
  String get try_searching => 'Traim painim long asples rait o tok Inglis';

  @override
  String get partially_translated => 'Ol i tanim hap tok';

  @override
  String get complete_translation => 'Pinisim';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Tok ples i stap long $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Ol samting i stap klostu na envairomen';

  @override
  String get surroundings_aqi => 'Indeks bilong kwaliti bilong win';

  @override
  String get surroundings_uv => 'UV Indeks';

  @override
  String get surroundings_temp => 'Tempereja';

  @override
  String get surroundings_humidity => 'Humidity';

  @override
  String get surroundings_hydration_advice =>
      'Stap dring gut wara long weta kondisen bilong nau.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Painim Kaikai';

  @override
  String get food_quick_barcode => 'Skenim Barkod 👑';

  @override
  String get food_quick_water => 'Putim wara';

  @override
  String get food_quick_custom => 'Kastom Kaikai';

  @override
  String get surroundings_good => 'Gutpela';

  @override
  String get surroundings_moderate => 'Namel';

  @override
  String get surroundings_unhealthy => 'No helti';

  @override
  String get notifications_title => 'Ol toksave na toksave';

  @override
  String get notifications_empty => 'Nogat nupela toksave';

  @override
  String get notifications_mark_read => 'Makim olgeta olsem ol i ritim pinis';

  @override
  String get notifications_clear => 'Kliarim olgeta';

  @override
  String get reminders => 'Ol Seting bilong Tingim Tingim';

  @override
  String get notifications => 'Ol toksave';

  @override
  String get reminders_breakfast_title => 'Tingim bilong kaikai belo 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Gutpela moning! Taim bilong kisim gutpela belo kaikai long $time .';
  }

  @override
  String get reminders_lunch_title => 'Tingim bilong kaikai long apinun 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Stop na amamas long gutpela, gutpela kaikai long $time .';
  }

  @override
  String get reminders_dinner_title => 'Tingim bilong kaikai 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Taim bilong kisim liklik kaikai long $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Taim bilong dring wanpela nupela glas wara! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Weekly Weigh-in ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Trakim ol mak bilong bodi bilong yu long Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Taim bilong slip Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Yu mas malolo na redi long slip gut ( $time ).';
  }

  @override
  String get onboard_welcome => 'Welkam long Bloomi';

  @override
  String get onboard_sub =>
      'Prenli, oflain-pastaim helt na nutrisen poroman bilong yu.';

  @override
  String get onboard_get_started => 'Stat';

  @override
  String get onboard_sign_in => 'Sain In';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal =>
      'Wanem em i nambawan mak bilong yu long kamap gutpela?';

  @override
  String get onboard_goal_weight_loss => 'Smol Weit Lus';

  @override
  String get onboard_goal_muscle => 'Masol i kamap strong na strong';

  @override
  String get onboard_goal_energy => 'Eneji na Vitaliti bilong olgeta de';

  @override
  String get onboard_goal_habits => 'Gutpela Tingting Kaikai';

  @override
  String get onboard_about_you => 'Tokim Mipela Long Yu Yet';

  @override
  String get onboard_lifestyle => 'Ol samting yu save mekim long olgeta de';

  @override
  String get onboard_permissions_title => 'Ol tok orait na sistem akses';

  @override
  String get onboard_permissions_sub =>
      'Givim rot long ol step bilong \'sync\', ol wok aut, na ol \'reminder\'.';

  @override
  String get onboard_plan_ready_title => 'Kastom Plen bilong yu i redi!';

  @override
  String get onboard_plan_ready_sub =>
      'Mipela i wokim wanpela gutpela, pesonel nutrisen na welnes rotmap bilong yu tasol.';

  @override
  String get onboard_enter_bloomi => 'Putim Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Gutpela Konsistensi De: $day';
  }

  @override
  String get insights_streaks_badges => 'Ol mak na mak';

  @override
  String insights_unlocked_on(Object date) {
    return 'Oli op long $date';
  }

  @override
  String get insights_keep_going => 'Yu mas wok yet long mekim gutpela wok!';

  @override
  String get widgets_title => 'Ol \'Home Screen Widgets\'';

  @override
  String widgets_active_count(Object count) {
    return 'Ol Widget i wok: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Step & Aktiv Ring';

  @override
  String get widgets_water_title => 'Haidresen Kwik Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Werim OS Smatwats';

  @override
  String get wear_os_connected => 'Konektim long Was';

  @override
  String get wear_os_sync => 'Sinkim Wats Data';

  @override
  String get theme_title => 'Lukluk na Het Tok';

  @override
  String get theme_mode => 'Theme Mode';

  @override
  String get theme_light => 'Lait';

  @override
  String get theme_dark => 'Tudak';

  @override
  String get theme_system => 'Sistem Difolt';

  @override
  String get theme_background_palette => 'Background Palette';

  @override
  String get units_title => 'Ol yunit bilong skelim';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'No inap long putim \'dashboard\'';

  @override
  String get home_health_permission_req =>
      'Yu mas kisim tok orait long Helt Konekt';

  @override
  String get home_health_permission_desc =>
      'Bloomi i nidim tok orait bilong Health Connect long pulim ol step tru, \'heart rate\', na \'sync\' ol \'mobile home widgets\' long taim stret.';

  @override
  String get home_allow_health => 'Larim Helt Konekt';

  @override
  String get home_ready_mindful_day => 'Yu redi long wanpela gutpela de? ✨';

  @override
  String get home_quick_add => 'Kwik Putim';

  @override
  String get home_live_gps => 'Laip GPS';

  @override
  String get home_calories_remaining_label => 'OL KALORI I STAP';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kaikai: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Paitim Wara Traka 💧';

  @override
  String get home_water_goal_reached => 'Yu winim mak bilong olgeta de 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml long mak bilong de';
  }

  @override
  String get home_details => 'Ol ditel';

  @override
  String get home_upgrade_plan_desc =>
      'Apgredim long opim ol mak bilong yu yet na AI plen';

  @override
  String get home_unlock => 'Opim 👑';

  @override
  String get home_quick_log_hint => 'Rekodim hariap wanpela welnes entri';

  @override
  String get food_serving_size => 'Sais bilong Seving';

  @override
  String get food_serving_grams => 'Sevim (g)';

  @override
  String get food_number_servings => 'Namba bilong ol sevings';

  @override
  String get food_calories_per_serving => 'Kalori long wanwan seving';

  @override
  String get food_recipe_ingredients => 'Ol samting bilong kukim';

  @override
  String get food_recipe_add_ingredient => 'Putim Ingredient';

  @override
  String get food_recipe_directions => 'Ol toksave na toksave';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Nutrisen long wan wan seving';

  @override
  String get food_recipe_saved_toast => 'Kastom kaikai i sevim gut!';

  @override
  String get food_barcode_found => 'Ol i painim pinis prodak!';

  @override
  String get food_barcode_not_found_desc =>
      'Mipela i no inap painim dispela \'barcode\' insait long \'open database\'. Yu ken putim olsem wanpela kaikai bilong yu yet.';

  @override
  String get food_add_custom_btn => 'Putim Kastom Kaikai';

  @override
  String get food_scan_again => 'Sken gen';

  @override
  String get food_review_items =>
      'Lukluk gen long ol kaikai we ol i painim pinis';

  @override
  String get food_review_hint =>
      'Stretim namba o rausim olgeta samting yu no luksave long en';

  @override
  String get food_log_selected => 'Raitim ol kaikai yu makim';

  @override
  String get food_favourites_title => 'Ol kaikai mi laikim';

  @override
  String get food_recent_title => 'Ol nupela kaikai';

  @override
  String get food_no_favourites =>
      'Nogat ol feveret kaikai yet. Putim bel long wanem kain kaikai yu laik sevim long hia.';

  @override
  String get food_no_recents =>
      'Nogat ol kaikai we ol i bin logim i no long taim i go pinis.';

  @override
  String get food_nutrition_details_title =>
      'Ol Ditel bilong Nutrisen long olgeta de';

  @override
  String get food_macro_protein_label => 'Protin Brekdaun';

  @override
  String get food_macro_carbs_label => 'Ol \'carbs\' i bruk';

  @override
  String get food_macro_fat_label => 'Brukdaun bilong gris';

  @override
  String get food_macro_fiber_label => 'Ol \'Fiber\' i bruk';

  @override
  String get food_daily_target_comparison => 'Skelim mak';

  @override
  String food_target_label(Object target) {
    return 'Taget: $target';
  }

  @override
  String get food_edit_entry => 'Stretim Daeri Entri';

  @override
  String get food_delete_entry => 'Rausim Entri';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current bilong $target ml';
  }

  @override
  String get water_intake_history => 'Ol wara log bilong tude';

  @override
  String get water_no_logs_today =>
      'Nogat wara i kapsait yet tude. Putim wara na paitim wanpela \'quick add\' baten!';

  @override
  String get water_adjust_goal => 'Stretim mak bilong olgeta de';

  @override
  String get health_connect_banner => 'Konekt long Helt Konekt';

  @override
  String get health_vitals_summary => 'Ol samting bilong helt long olgeta de';

  @override
  String get health_latest_heart_rate => 'Laspela hat ret';

  @override
  String get health_latest_bp => 'Blut Presa';

  @override
  String get health_latest_spo2 => 'Blut Oksijen';

  @override
  String get health_latest_glucose => 'Blut Glukos';

  @override
  String get health_latest_weight => 'Hevi';

  @override
  String get health_latest_sleep => 'Taim bilong slip';

  @override
  String get health_add_manual => 'Putim Manuel Mesamen';

  @override
  String get health_history_trends => 'Ol samting i bin kamap long bipo';

  @override
  String get health_sync_success => 'Helt data i wok gut wantaim!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours aua $mins minit';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title =>
      'Ol samting we i konektim na ol samting bilong werim';

  @override
  String get health_devices_desc =>
      'Lukautim ol \'smartwatch\', ol \'fitness tracker\', na ol \'health sensor\'.';

  @override
  String get health_workout_editor_title => 'Stretim Wokaut';

  @override
  String get health_workout_name_label => 'Nem bilong Wokaut';

  @override
  String get health_workout_duration_label => 'Longpela taim (minit)';

  @override
  String get health_workout_calories_label => 'Ol Kalori (kcal)';

  @override
  String get health_workout_date_label => 'Deit na Taim';

  @override
  String get plan_daily_wellness_roadmap => 'Rotmap bilong yu yet';

  @override
  String get plan_morning_routine => 'Moning Routine';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Wind-Daun long apinun';

  @override
  String get plan_coach_badge => 'Bloomi AI Kosa';

  @override
  String get plan_weekly_overview => '7-De Welnes Fokas';

  @override
  String get plan_targets_title => 'Ol mak na mak bilong helt';

  @override
  String get plan_calorie_budget_label =>
      'Baset bilong ol kalori long olgeta de';

  @override
  String get plan_water_budget_label => 'Mak bilong wara long olgeta de';

  @override
  String get plan_step_budget_label => 'Gol bilong olgeta de';

  @override
  String get plan_macro_split_label => 'Makronutrien Resio';

  @override
  String get profile_personal_details => 'Ol Ditel bilong Yu yet';

  @override
  String get profile_body_stats => 'Skelim bilong bodi';

  @override
  String get profile_app_preferences =>
      'Ol samting yu laikim na ol seting bilong ap';

  @override
  String get profile_edit_name_hint => 'Nem bilong yu';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Hait ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Hevi ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Krismas';

  @override
  String get profile_gender_male => 'Man';

  @override
  String get profile_gender_female => 'Meri';

  @override
  String get profile_gender_other => 'Narapela / Mi no laik tok';

  @override
  String get profile_activity_sedentary =>
      'Noken sindaun (Liklik o nogat eksasais)';

  @override
  String get profile_activity_light => 'Lait Aktiv (1-3 de/wik)';

  @override
  String get profile_activity_moderate => 'Moderately Active (3-5 days/wik)';

  @override
  String get profile_activity_very => 'Mi wok strong tru (6-7 de/wik)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Putim Bloomi tile na komplikesen long Wear OS wats bilong yu long lukluk long ol kalori, wara, na ol step.';

  @override
  String get settings_widgets_header => 'Ol Android Widget we i wok wantaim';

  @override
  String get settings_widgets_desc =>
      'Pinim ol \'real-time widget\' long \'home screen\' bilong divais bilong yu long kisim ol \'update\' hariap.';

  @override
  String get settings_about_header => 'Long Bloomi';

  @override
  String get settings_about_version => 'Vesen 1.0.0';

  @override
  String get settings_about_build => 'Wokim 100';

  @override
  String get settings_about_credits =>
      'Ol i wokim wantaim gutpela tingting na helti laip.';

  @override
  String get settings_terms_header => 'Ol tok orait na kondisen';

  @override
  String get settings_privacy_header => 'Polisi bilong Praivesi';

  @override
  String get settings_delete_header => 'Rausim Akaun na Data';

  @override
  String get settings_delete_warning =>
      'Dispela eksen i no inap long kamap gen. Olgeta kaikai, wok aut, ol \'vitals\', na \'profile\' bilong yu bai pinis olgeta.';

  @override
  String get settings_delete_confirm_btn => 'Rausim Oltaim';

  @override
  String get onboard_welcome_headline => 'Welkam long Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Gutpela, gutpela \'wellness tracking\' we ol i wokim long laip bilong yu.';

  @override
  String get onboard_step_about => 'Long Yu';

  @override
  String get onboard_step_goals => 'Ol Mak Bilong Yu';

  @override
  String get onboard_step_lifestyle => 'Ol pasin bilong olgeta de';

  @override
  String get onboard_step_permissions => 'Ol tok orait';

  @override
  String get onboard_step_plan => 'Redi!';

  @override
  String get onboard_health_connect_perm => 'Helt Konekt Akses';

  @override
  String get onboard_step_sensors_perm => 'Step Kaunta Sensa';

  @override
  String get onboard_notif_perm => 'Ol gutpela tingting na toksave';

  @override
  String get onboard_camera_perm => 'Kamera (Barkod & Skena bilong Kaikai)';

  @override
  String get onboard_grant_permissions => 'Givim ol tok orait';

  @override
  String get onboard_continue_dashboard => 'Opim Dasbod';

  @override
  String get notif_channel_hydration_name => 'Ol \'Hidration Nudges\'';

  @override
  String get notif_channel_hydration_desc => 'Ol liklik wara toksave long de';

  @override
  String get notif_channel_nutrition_name => 'Kaikai na Nutrisen Rimainda';

  @override
  String get notif_channel_nutrition_desc =>
      'Ol tok lukaut bilong tingim belo kaikai, belo kaikai, na apinun';

  @override
  String get notif_channel_steps_name => 'Step Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Ol selebresen taim ol i winim ol step mak bilong olgeta de';

  @override
  String get notif_channel_vitals_name => 'Helt na Vitals Sekim';

  @override
  String get notif_channel_vitals_desc =>
      'Ol samting bilong tingim hevi bilong bodi na taim bilong slip';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
