// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pampanga Kapampangan (`pam`).
class AppLocalizationsPam extends AppLocalizations {
  AppLocalizationsPam([String locale = 'pam']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'bale';

  @override
  String get nav_today => 'Ngeni';

  @override
  String get nav_plan => 'Planu';

  @override
  String get nav_food => 'Pamangan';

  @override
  String get nav_food_diary => 'Diary ng Pagkain';

  @override
  String get nav_workout => 'Log ng Pagsasanay';

  @override
  String get nav_health => 'Kalusugan';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'I-save';

  @override
  String get cancel => 'kanseladu';

  @override
  String get delete => 'Bura';

  @override
  String get edit => 'I-edit';

  @override
  String get done => 'Tapos na';

  @override
  String get close => 'malapit';

  @override
  String get back => 'Mibalik';

  @override
  String get next => 'tutuki';

  @override
  String get continue_btn => 'Tuluy';

  @override
  String get confirm => 'Kumpirman';

  @override
  String get search => 'Manintun';

  @override
  String get filter => 'Salanan';

  @override
  String get all => 'Sabla';

  @override
  String get active => 'Aktibu';

  @override
  String get today => 'Ngeni';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get tomorrow => 'bukas';

  @override
  String get add => 'Dagdagan';

  @override
  String get remove => 'Ilako';

  @override
  String get refresh => 'I-refresh';

  @override
  String get retry => 'Subukan meng pasibayu';

  @override
  String get error => 'Mali';

  @override
  String get success => 'Tagumpe';

  @override
  String get loading => 'Naglo-load...';

  @override
  String get no_data => 'Ala yang data';

  @override
  String get offline => 'Offline na Mode';

  @override
  String get offline_sub => 'Mag sync la reng pamagbayu potang mibalik la';

  @override
  String get undo => 'Ibalik';

  @override
  String get portion => 'Porsyun';

  @override
  String get quantity => 'Dagul';

  @override
  String get unit => 'Yunit';

  @override
  String get clear => 'Malino';

  @override
  String get select => 'Pilinan me';

  @override
  String get apply => 'Mag apply';

  @override
  String get reset => 'I-reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'wa';

  @override
  String get no => 'ali';

  @override
  String get optional => 'Opsyonal';

  @override
  String get calories => 'Mga calorie';

  @override
  String get protein => 'Protina';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Mataba';

  @override
  String get fiber => 'Hibla';

  @override
  String get water => 'Danum';

  @override
  String get steps => 'Lakbang';

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
  String get inches => 'keng';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'oras';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Magsilbi';

  @override
  String get servings => 'Pamagsilbi';

  @override
  String get serving_size => 'Dagul ning Pamagsilbi';

  @override
  String get per_100g => 'balang 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Kalibudtang Aslagan';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'bale';

  @override
  String get home_greeting_morning => 'Mayap a Abak';

  @override
  String get home_greeting_afternoon => 'Mayap a gatpanapun';

  @override
  String get home_greeting_evening => 'Mayap a Bengi';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days streak',
      one: '1 aldo streak',
      zero: '0 aldo streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Mesilab';

  @override
  String get home_calories_budget => 'Calorie Badyet';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal mitagan';
  }

  @override
  String get home_water_title => 'Aldo-aldong Pamanalkus';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Lakbang a linakad';

  @override
  String get home_quick_actions => 'Mabilis a Aksyon';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Danum a Trosu';

  @override
  String get home_log_workout => 'Mag-log Workout';

  @override
  String get home_log_weight => 'Timbang ning troso';

  @override
  String get home_insights_title => 'Ding Panakit ngeni';

  @override
  String get home_quote =>
      'Deng malating masanting a pilinan gagawang masanting a pamagbayu.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Paligid & Angin';

  @override
  String get home_notifications => 'Pabalu';

  @override
  String get home_daily_score => 'Pang-araw-araw na Wellness Score';

  @override
  String get home_view_all => 'lawan ngan';

  @override
  String get food_diary_title => 'Diary ng Pagkain';

  @override
  String get food_breakfast => 'Almusal';

  @override
  String get food_lunch => 'Pamangan';

  @override
  String get food_dinner => 'apunan';

  @override
  String get food_snacks => 'Meryenda';

  @override
  String get food_add_food => 'Dagdagan Pamangan';

  @override
  String get food_edit_food => 'I-edit ing pamangan';

  @override
  String get food_add_breakfast => 'Dagdagan me ing almusal';

  @override
  String get food_add_lunch => 'Dagdagan ing Pamangan';

  @override
  String get food_add_dinner => 'Dagdagan ing apunan';

  @override
  String get food_add_snack => 'Dagdagan meryenda';

  @override
  String get food_total_calories => 'Kabuuang Calories';

  @override
  String get food_empty_meal =>
      'Ala pang pamangan a maka-log para kening pamangan ayni';

  @override
  String get food_empty_diary =>
      'Ala pang meals a me-log para keng aldong ayni';

  @override
  String get food_log_first_meal =>
      'Pindutan me ing + para i-log ing mumunang manyaman a pamangan';

  @override
  String get food_quick_add => 'Mabilis a Dagdag';

  @override
  String get food_search_hint => 'Manintun ulam, prutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom na Pagkain at Recipe';

  @override
  String get food_scan_barcode => 'I-scan ing Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Bayung Pamangan';

  @override
  String get food_favourites => 'Paboritu';

  @override
  String get food_macro_summary => 'Pagkasira ng Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Siguradu ka bang buri meng ilako ining bage?';

  @override
  String get food_item_deleted => 'Ing pamangan mewala ya';

  @override
  String get food_remaining => 'mitagan';

  @override
  String get food_consumed => 'meubus';

  @override
  String food_of_target(Object target) {
    return 'ning $target kcal';
  }

  @override
  String get foodSearch_title => 'Manintun Pamangan';

  @override
  String get foodSearch_scan_barcode => 'I-scan ing Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'gawa kang custom a pamangan';

  @override
  String get foodSearch_recent_searches => 'Bayung Pamanintun';

  @override
  String get foodSearch_popular => 'Sikat a Ulam';

  @override
  String get foodSearch_no_results =>
      'alang pamangan a makatuglung keng kekang panintunan';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align =>
      'I-align ing barcode kilub ning frame ning camera';

  @override
  String get barcode_not_found => 'E ya mayakit ing produktu keng database';

  @override
  String get barcode_premium_feature =>
      'Ing pamag-scan keng barcode malyari ya keng Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint =>
      'Kuanan meng malino ing litrato ning kekang ulam';

  @override
  String get camera_analysing => 'pamagsuri keng pinggan ning pamangan...';

  @override
  String get camera_detected => 'Ding akit a bage';

  @override
  String get camera_flash => 'I-Toggle ing Flash';

  @override
  String get camera_retake => 'Kuanan meng pasibayu ing litrato';

  @override
  String get camera_confirm_food => 'Kumpirman la reng bage';

  @override
  String get customFood_title => 'Custom na Pagkain at Recipe';

  @override
  String get customFood_name_hint => 'lagyu ning ulam o sangkap';

  @override
  String get customFood_calories_hint => 'Mga calorie (kcal)';

  @override
  String get customFood_protein_hint => 'Protina (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Taba (g)';

  @override
  String get customFood_save => 'I-save ing recipe';

  @override
  String get water_tracker_title => 'Tagasubaybay ng Tubig';

  @override
  String get water_daily_target => 'Pang-araw-araw na Layunin sa Hydration';

  @override
  String get water_logged_today => 'Me-log ngeni';

  @override
  String get water_add_glass => '+250 ml basu';

  @override
  String get water_add_bottle => '+500 ml Bote';

  @override
  String get water_custom_amount => 'Custom na Halaga';

  @override
  String get water_reminder_tip =>
      'Minum kang danum parati keng mabilug a aldo para keng matatag a sikanan.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml ning danum 💧';
  }

  @override
  String get workout_title => 'Log ng Pagsasanay';

  @override
  String get workout_add_exercise => 'Dagdagan ing Ehersisyu';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Lakas';

  @override
  String get workout_yoga => 'Yoga at Flexibility';

  @override
  String get workout_duration => 'Tagal';

  @override
  String get workout_intensity => 'Intensity';

  @override
  String get workout_calories_burned => 'Nasunog ang mga calorie';

  @override
  String get workout_empty => 'alang workouts a me log ngeni';

  @override
  String get workout_save_success => 'Ing ehersisyu meligtas yang matagumpe!';

  @override
  String get workout_type => 'Uri ning pamag-ehersisyu';

  @override
  String get workout_notes => 'Tala at Pamanalala';

  @override
  String get health_overview_title => 'Kalusugan & Vitals';

  @override
  String get health_heart_rate => 'Bilis ng Puso';

  @override
  String get health_blood_oxygen => 'Oxygen ning daya (SpO2)';

  @override
  String get health_blood_pressure => 'Presyon ning Daya';

  @override
  String get health_blood_glucose => 'Glucose keng daya';

  @override
  String get health_body_temperature => 'Temperatura ning katawan';

  @override
  String get health_sleep_tracking => 'Pamagsubaybay king Pamantudtud';

  @override
  String get health_weight_tracking => 'Timbang & Komposisyun ning Katawan';

  @override
  String get health_waist_hip => 'waist-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Mga Device at Smartwatch Hub';

  @override
  String get health_sync_now => 'I-sync ing Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Tauling me-sync: $time';
  }

  @override
  String get health_manual_entry => 'Manual Health Entry';

  @override
  String get health_metric_detail => 'Detalye ning Metric';

  @override
  String get health_connected_sensors => 'Makasuglung a Sensor ning Kalusugan';

  @override
  String get plan_title => 'Aldo-aldo Planu';

  @override
  String get plan_weekly_title => 'Lingguhang Wellness Plan';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Target ng Hydration';

  @override
  String get plan_step_target => 'Lakbang Target';

  @override
  String get plan_sleep_target => 'Target sa pagtulog';

  @override
  String get plan_meal_suggestions => 'Suhestiyun keng Pamangan';

  @override
  String get plan_healthy_habits => 'Malusog a Gawi at Tips';

  @override
  String get plan_coach_advice => 'Mga Rekomendasyon ng Bloomi AI Coach';

  @override
  String get plan_generated_title =>
      'Personalized na Pang-araw-araw na Iskedyul';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'I-edit ing profile';

  @override
  String get profile_name => 'Lagyu';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Kasarian';

  @override
  String get profile_height => 'katas';

  @override
  String get profile_weight => 'Timbang';

  @override
  String get profile_goal => 'Pangunahing Layunin';

  @override
  String get profile_activity_level => 'Antas ning Aktibidad';

  @override
  String get profile_stats => 'Ing kanakung Wellness Stats';

  @override
  String get profile_saved => 'Matagumpe yang me-update ing profile';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Pamagmiyembru';

  @override
  String get settings => 'Mga setting';

  @override
  String get preferences_habits => 'KABURIAN & GAWA';

  @override
  String get appearance_theme => 'Itsura & Tema';

  @override
  String get appearance_theme_sub =>
      'Madalumdum, Sala, System Mode & App Background Options';

  @override
  String get permissions => 'Paintulut & Pamanlub king Sistema';

  @override
  String get permissions_sub =>
      'Health Connect, Mga Step Sensor, GPS, Mga Notification at Camera';

  @override
  String get reminders_notifications => 'Paganaka & Pabalu';

  @override
  String get reminders_sub =>
      'oras ning pamangan, danum, pamag-check-in timbang ampo pamanalala keng oras ning pamatudtud';

  @override
  String get units_of_measurement => 'Unit ning Sukat';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) o Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Wika ng App';

  @override
  String get language_sub =>
      'English, हिन्दी (Hindi), Hinglish at 195+ pandaigdigang wika';

  @override
  String get home_screen_widgets => 'Mga Widget ng Home Screen';

  @override
  String get widgets_sub =>
      'Live na Android widgets: Hub, Steps, Water, Nutrition at Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Kasama sa Smartwatch, mga tile, komplikasyon, at live na vitals';

  @override
  String get goals_wellness => 'MGA LAYUNIN AT KAWALAN NG MGA INSIGHT';

  @override
  String get nutrition_targets => 'Mga Target sa Nutrisyon at Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie target, protina, carbs, taba & danum goal';

  @override
  String get weekly_recap => 'Lingguhang Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-day calorie average, macro ratio & pekamasanting a aldo';

  @override
  String get streaks_milestones => 'Mga Streak at Milestone';

  @override
  String get streaks_sub =>
      'Mga aktibong blossom streak, badge, at achievement';

  @override
  String get connected_devices => 'CONECTED DEVICES & ECOSYSTEM';

  @override
  String get devices_hub => 'Mga Device at Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Paligid & Panaun';

  @override
  String get surroundings_sub =>
      'Kalidad ning angin (AQI), UV index & weather hydration tips';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget sa home screen at pagsubaybay sa vitals';

  @override
  String get about_security => 'TUNGKUL & SEGURIDAD';

  @override
  String get about_bloomi => 'tungkul kang Bloomi';

  @override
  String get about_bloomi_sub => 'Bumuo ng mga detalye, bersyon, attribution';

  @override
  String get privacy_policy => 'Patakaran king Privacy';

  @override
  String get privacy_policy_sub =>
      'Offline-una, on-device na arkitektura ng data';

  @override
  String get terms_conditions => 'Mga Tuntunin at Kundisyon';

  @override
  String get terms_conditions_sub =>
      'Kautusan ning serbisyu at tuntunan king kalusugan';

  @override
  String get delete_account => 'buraran ing account ampo ing data';

  @override
  String get delete_account_sub =>
      'E malyaring ibalik ing lokal a SQLite data ampo ing cloud backups';

  @override
  String get healthy_habits =>
      'Gawa kang banayad, matagal a gawi king kalusugan';

  @override
  String get all_logs => 'Ing kanakung Tracked Data & Logs';

  @override
  String get search_language => 'Manintun keng amanu o katutubung sulat...';

  @override
  String get languages_available => 'Deng amanung magagamit';

  @override
  String get no_matching_languages => 'Ala lang ikit a katugma a amanu';

  @override
  String get try_searching =>
      'Subukan mung manintun kapamilatan ning katutubung sulat o pamagbaybay king Ingles';

  @override
  String get partially_translated => 'Bahagyang isinalin';

  @override
  String get complete_translation => 'Kumpletu';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Language set to $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Paligid & Kapaligiran';

  @override
  String get surroundings_aqi => 'Indeks ning Kalidad ning Angin';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Halumigmig';

  @override
  String get surroundings_hydration_advice =>
      'Manatili kang hydrated keng kasalukuyan a panaun.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Manintun pamangan';

  @override
  String get food_quick_barcode => 'I-scan ang Barcode 👑';

  @override
  String get food_quick_water => 'Dagdagan me ing danum';

  @override
  String get food_quick_custom => 'Pamangan a Pasadya';

  @override
  String get surroundings_good => 'Mayap';

  @override
  String get surroundings_moderate => 'Katamtaman';

  @override
  String get surroundings_unhealthy => 'E malusog';

  @override
  String get notifications_title => 'Mga Notification at Alerto';

  @override
  String get notifications_empty => 'Ala nang bayung abisu';

  @override
  String get notifications_mark_read => 'Markan la ngan bilang mebasa';

  @override
  String get notifications_clear => 'Linisan ngan';

  @override
  String get reminders => 'Paganaka Settings';

  @override
  String get notifications => 'Pabalu';

  @override
  String get reminders_breakfast_title => 'Paganaka keng almusal 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Mayap a abak! Oras na para keng masustansyang almusal keng $time .';
  }

  @override
  String get reminders_lunch_title => 'Paganaka keng pamangan 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'tuknang ka at mag enjoy kang balansi, mindful a pamangan keng $time .';
  }

  @override
  String get reminders_dinner_title => 'Paganaka keng apunan 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Oras na para keng light, satisfying dinner keng $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Oras na para minum metung a basung danum! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Lingguhang Pagtimbang ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'I-track me ing kekang body metrics keng Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Wind-down sa oras ng pagtulog 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Magrelaks ka at magsadia kang matudtud ( $time ).';
  }

  @override
  String get onboard_welcome => 'Mayap a abak keng Bloomi';

  @override
  String get onboard_sub =>
      'Ing kekang friendly, offline-first a kalusugan ampo nutrisyon a kayabe.';

  @override
  String get onboard_get_started => 'Magumpisa na';

  @override
  String get onboard_sign_in => 'Mag-sign In';

  @override
  String get onboard_skip => 'Laktawan';

  @override
  String get onboard_choose_goal =>
      'Nanu ing kekang mumunang goal keng kalusugan?';

  @override
  String get onboard_goal_weight_loss => 'malumanay a pamagbawas timbang';

  @override
  String get onboard_goal_muscle => 'Gain & Lakas ning Kalamnan';

  @override
  String get onboard_goal_energy => 'Aldo-aldo Sigla & Sigla';

  @override
  String get onboard_goal_habits => 'Malusog a Pamangan';

  @override
  String get onboard_about_you => 'Sabyan mu kekami ing tungkul keng sarili mu';

  @override
  String get onboard_lifestyle => 'Ing kekang aldo-aldo a gagawan';

  @override
  String get onboard_permissions_title => 'Paintulut & Pamanlub king Sistema';

  @override
  String get onboard_permissions_sub =>
      'dinan meng access ing sync steps, workouts, ampo reminders.';

  @override
  String get onboard_plan_ready_title => 'Sadya na ing kekang Custom Plan!';

  @override
  String get onboard_plan_ready_sub =>
      'ginawa kaming malumanay, personalized a nutrition ampo wellness roadmap para keka.';

  @override
  String get onboard_enter_bloomi => 'Lumub kang Bloomi';

  @override
  String get insights_weekly_report => 'Lingguhang Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'pekamasanting a aldo ning pamisanmetung: $day';
  }

  @override
  String get insights_streaks_badges => 'Mga Streak at Milestone';

  @override
  String insights_unlocked_on(Object date) {
    return 'mebuklat ya keng $date';
  }

  @override
  String get insights_keep_going => 'isundu mu ing masanting a pamagprogresu!';

  @override
  String get widgets_title => 'Mga Widget ng Home Screen';

  @override
  String widgets_active_count(Object count) {
    return 'Mga Aktibong Widget: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Lakbang & Aktibung Singsing';

  @override
  String get widgets_water_title => 'Mabilis na Log ng Hydration';

  @override
  String get widgets_mascot_title => 'Kasamang Mascot ng Bloomi';

  @override
  String get wear_os_title => 'Magsuot kang OS Smartwatch';

  @override
  String get wear_os_connected => 'Makasuglung keng Watch';

  @override
  String get wear_os_sync => 'I-sync ing Data ning Relo';

  @override
  String get theme_title => 'Itsura & Tema';

  @override
  String get theme_mode => 'Mode ng Tema';

  @override
  String get theme_light => 'sulu';

  @override
  String get theme_dark => 'Madalumdum';

  @override
  String get theme_system => 'Default ng System';

  @override
  String get theme_background_palette => 'Palette ng Background';

  @override
  String get units_title => 'Unit ning Sukat';

  @override
  String get units_metric => 'Sukatan (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'E malyaring i-load ing dashboard';

  @override
  String get home_health_permission_req =>
      'Kailangan ing Health Connect Permission';

  @override
  String get home_health_permission_desc =>
      'Ing Bloomi mangailangan yang Health Connect permission para makagawa yang real steps, heart rate, ampo maka-sync kareng mobile home widgets keng real time.';

  @override
  String get home_allow_health => 'Paintulutan ing Health Connect';

  @override
  String get home_ready_mindful_day =>
      'makasadya na ka para keng aldo a makaisip? ✨';

  @override
  String get home_quick_add => 'Mabilis a Dagdag';

  @override
  String get home_live_gps => 'Live na GPS';

  @override
  String get home_calories_remaining_label => 'CALORIES NA NATITILI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Mengan: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'tap para keng water tracker 💧';

  @override
  String get home_water_goal_reached => 'Daily goal miras na 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml keng aldo-aldong goal';
  }

  @override
  String get home_details => 'Detalye';

  @override
  String get home_upgrade_plan_desc =>
      'Mag-upgrade para maka-unlock kareng personalized daily targets ampo AI plan';

  @override
  String get home_unlock => 'Ibuklat me 👑';

  @override
  String get home_quick_log_hint =>
      'Mabilis kang magrecord keng wellness entry';

  @override
  String get food_serving_size => 'Dagul ning Pamagsilbi';

  @override
  String get food_serving_grams => 'Magsilbi (g)';

  @override
  String get food_number_servings => 'Bilang ning Pamagsilbi';

  @override
  String get food_calories_per_serving => 'Calories balang serving';

  @override
  String get food_recipe_ingredients => 'sangkap';

  @override
  String get food_recipe_add_ingredient => 'Dagdagan ing sangkap';

  @override
  String get food_recipe_directions => 'Instruksyun & Tala';

  @override
  String get food_recipe_total => 'Kabuuang Nutrisyon ng Recipe';

  @override
  String get food_recipe_per_serving => 'Balang Serbing Nutrisyon';

  @override
  String get food_recipe_saved_toast =>
      'Ing custom a pamangan me-save yang matagumpe!';

  @override
  String get food_barcode_found => 'Mekit ya ing produktu!';

  @override
  String get food_barcode_not_found_desc =>
      'E mi akit ining barcode keng makabuklat a database. Malyari meng idagdag bilang custom a pamangan.';

  @override
  String get food_add_custom_btn => 'Dagdagan me ing custom a pamangan';

  @override
  String get food_scan_again => 'I-scan Pasibayu';

  @override
  String get food_review_items => 'Suriin ang Mga Natukoy na Pagkain';

  @override
  String get food_review_hint =>
      'I-adjust ing dagul o ilako ing nanu mang bage a e akilala';

  @override
  String get food_log_selected => 'I-log la reng piniling pamangan';

  @override
  String get food_favourites_title => 'Paboritung Pamangan';

  @override
  String get food_recent_title => 'Bayung Pamangan';

  @override
  String get food_no_favourites =>
      'Ala pang paboritung pamangan. Tap pusu ing nanu mang pamangan para makatipid keni.';

  @override
  String get food_no_recents => 'Ala lang ikit a bayung me-log a pamangan.';

  @override
  String get food_nutrition_details_title =>
      'Detalye ning Aldo-aldong Nutrisyon';

  @override
  String get food_macro_protein_label => 'Pagkasira ng Protina';

  @override
  String get food_macro_carbs_label => 'Pagkasira ng Carbs';

  @override
  String get food_macro_fat_label => 'Pamaglaso ning Taba';

  @override
  String get food_macro_fiber_label => 'Pagkasira ng Hibla';

  @override
  String get food_daily_target_comparison => 'Target na Paghahambing';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'I-edit ing Diary Entry';

  @override
  String get food_delete_entry => 'Bura ing Entry';

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
    return '$current ning $target ml';
  }

  @override
  String get water_intake_history => 'Water Logs ngeni';

  @override
  String get water_no_logs_today =>
      'Ala pang danum a me-log ngeni. Mag-hydrate ka at pindutan me ing quick add button!';

  @override
  String get water_adjust_goal => 'I-adjust ing daily goal';

  @override
  String get health_connect_banner => 'Makasuglung keng Health Connect';

  @override
  String get health_vitals_summary => 'Pang-araw-araw na Health Vitals';

  @override
  String get health_latest_heart_rate => 'Bayung Tikdo ning Pusu';

  @override
  String get health_latest_bp => 'Presyon ning Daya';

  @override
  String get health_latest_spo2 => 'Oxygen ning daya';

  @override
  String get health_latest_glucose => 'Glucose keng daya';

  @override
  String get health_latest_weight => 'Timbang';

  @override
  String get health_latest_sleep => 'Panaun ning Pamantudtud';

  @override
  String get health_add_manual => 'Dagdagan ing Manual a Sukat';

  @override
  String get health_history_trends => 'Makasaysayan a Uso';

  @override
  String get health_sync_success =>
      'Ing data ning kalusugan me-sync yang matagumpe!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours oras $mins min';
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
  String get health_devices_title => 'Mga Nakakonektang Device at Nasusuot';

  @override
  String get health_devices_desc =>
      'Pamahalaan la reng pares a smartwatches, fitness trackers, ampo reng health sensors.';

  @override
  String get health_workout_editor_title => 'I-edit ing pamag-ehersisyu';

  @override
  String get health_workout_name_label => 'Lagyu ning Ehersisyu';

  @override
  String get health_workout_duration_label => 'Tagal (minutu)';

  @override
  String get health_workout_calories_label => 'Tinantyang Mga Calorie (kcal)';

  @override
  String get health_workout_date_label => 'Petsa at Oras';

  @override
  String get plan_daily_wellness_roadmap => 'Ing kekang Personalized Roadmap';

  @override
  String get plan_morning_routine => 'Routine sa Umaga';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Angin ning Bengi';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-aldong pokus keng kayapan';

  @override
  String get plan_targets_title => 'Mga Target at Layunin sa Kaayusan';

  @override
  String get plan_calorie_budget_label => 'Pang-araw-araw na Calorie Badyet';

  @override
  String get plan_water_budget_label => 'Aldo-aldong Target ning Danum';

  @override
  String get plan_step_budget_label => 'Layunin ning Aldo-aldong Lakbang';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Personal a detalye';

  @override
  String get profile_body_stats => 'sukad ning katawan';

  @override
  String get profile_app_preferences => 'Mga Kagustuhan at Mga Setting ng App';

  @override
  String get profile_edit_name_hint => 'Ing lagyu mu';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'katas ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Timbang ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Edad';

  @override
  String get profile_gender_male => 'Lalaki';

  @override
  String get profile_gender_female => 'Babae';

  @override
  String get profile_gender_other => 'Aliwa / Mas buri kung e sabyan';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Ditak o alang ehersisyu)';

  @override
  String get profile_activity_light => 'Bahagyang Aktibo (1-3 araw/linggo)';

  @override
  String get profile_activity_moderate =>
      'Katamtaman a aktibo (3-5 aldo/duminggu)';

  @override
  String get profile_activity_very => 'sobrang aktibo (6-7 aldo/duminggu)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'I-install me ing Bloomi tile ampo ing complication keng kekang Wear OS watch para akit me ing calories, danum, ampo reng steps.';

  @override
  String get settings_widgets_header => 'Mga Interactive na Android Widget';

  @override
  String get settings_widgets_desc =>
      'I-pin la reng real-time widgets keng kekang device home screen para agad lang updates.';

  @override
  String get settings_about_header => 'tungkul kang Bloomi';

  @override
  String get settings_about_version => 'Bersion 1.0.0';

  @override
  String get settings_about_build => 'gawa kang 100';

  @override
  String get settings_about_credits =>
      'Gawa keng malasakit para keng maingat, malusog a pamibiebie.';

  @override
  String get settings_terms_header => 'Mga Tuntunin at Kundisyon';

  @override
  String get settings_privacy_header => 'Patakaran king Privacy';

  @override
  String get settings_delete_header => 'buraran ing account ampo ing data';

  @override
  String get settings_delete_warning =>
      'E malyaring ibalik ing aksyon a ini. Deng sablang pamangan, pamag-ehersisyu, vitals, ampo profile permanenti lang mabura.';

  @override
  String get settings_delete_confirm_btn => 'Permanenti nang Bura';

  @override
  String get onboard_welcome_headline => 'Mayap a abak keng Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Maluat, makaisip a pamagsubaybay king kalusugan a dinisenyu king paligid ning bie mu.';

  @override
  String get onboard_step_about => 'Tungkul Keka';

  @override
  String get onboard_step_goals => 'Deng kekang layunin';

  @override
  String get onboard_step_lifestyle => 'Aldo-aldo Gawi';

  @override
  String get onboard_step_permissions => 'Paintulut';

  @override
  String get onboard_step_plan => 'Sadya na!';

  @override
  String get onboard_health_connect_perm => 'Access sa Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm =>
      'Mga Maalalahanin na Paalala at Notification';

  @override
  String get onboard_camera_perm => 'Camera (Barcode at Food Scanner)';

  @override
  String get onboard_grant_permissions => 'dinan meng pamanintindi';

  @override
  String get onboard_continue_dashboard => 'buklat me ing dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Malambut a paganaka keng danum keng mabilug a aldo';

  @override
  String get notif_channel_nutrition_name =>
      'Paganaka keng Pamangan & Nutrisyon';

  @override
  String get notif_channel_nutrition_desc =>
      'almusal, tanghalian, ampo apunan a paganaka';

  @override
  String get notif_channel_steps_name => 'Hakbang Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Pagmasusian nung miras la kareng target a aldo-aldo';

  @override
  String get notif_channel_vitals_name =>
      'Mga Pagsusuri sa Kalusugan at Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Paganaka keng timbang ampo oras ning pamatudtud';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'I-snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Wika';

  @override
  String get share => 'Ibahagi';

  @override
  String common_days(Object count) {
    return '$count d ang nakalipas';
  }
}
