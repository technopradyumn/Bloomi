// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hmong Mong (`hmn`).
class AppLocalizationsHmn extends AppLocalizations {
  AppLocalizationsHmn([String locale = 'hmn']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Tsev';

  @override
  String get nav_today => 'Hnub no';

  @override
  String get nav_plan => 'Npaj';

  @override
  String get nav_food => 'Khoom noj khoom haus';

  @override
  String get nav_food_diary => 'Khoom noj khoom haus Diary';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Kev noj qab haus huv';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Txuag';

  @override
  String get cancel => 'Tso tseg';

  @override
  String get delete => 'Rho tawm';

  @override
  String get edit => 'Kho kom raug';

  @override
  String get done => 'Ua tiav';

  @override
  String get close => 'Kaw';

  @override
  String get back => 'Rov qab';

  @override
  String get next => 'Tom ntej no';

  @override
  String get continue_btn => 'Mus ntxiv';

  @override
  String get confirm => 'Paub meej';

  @override
  String get search => 'Nrhiav';

  @override
  String get filter => 'Lim';

  @override
  String get all => 'Tag nrho';

  @override
  String get active => 'Active';

  @override
  String get today => 'Hnub no';

  @override
  String get yesterday => 'Nag hmo';

  @override
  String get tomorrow => 'Tag kis';

  @override
  String get add => 'Ntxiv';

  @override
  String get remove => 'Tshem tawm';

  @override
  String get refresh => 'Hloov tshiab';

  @override
  String get retry => 'Rov sim dua';

  @override
  String get error => 'yuam kev';

  @override
  String get success => 'Kev vam meej';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Tsis muaj ntaub ntawv';

  @override
  String get offline => 'Offline hom';

  @override
  String get offline_sub =>
      'Cov kev hloov pauv yuav sync ib zaug rov txuas dua';

  @override
  String get undo => 'Tshem tawm';

  @override
  String get portion => 'Ib feem';

  @override
  String get quantity => 'Ntau';

  @override
  String get unit => 'Chav tsev';

  @override
  String get clear => 'Ntshiab';

  @override
  String get select => 'Xaiv';

  @override
  String get apply => 'Thov';

  @override
  String get reset => 'Rov pib dua';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yog lawm';

  @override
  String get no => 'Tsis muaj';

  @override
  String get optional => 'xaiv tau';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Rog';

  @override
  String get fiber => 'Fiber ntau';

  @override
  String get water => 'Dej';

  @override
  String get steps => 'Cov kauj ruam';

  @override
  String get kcal => 'kcal ua';

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
  String get inches => 'hauv';

  @override
  String get bpm => 'bpm ua';

  @override
  String get hours => 'teev';

  @override
  String get minutes => 'feeb';

  @override
  String get serving => 'Kev pab';

  @override
  String get servings => 'Kev pab';

  @override
  String get serving_size => 'Kev Pab Cuam Loj';

  @override
  String get per_100g => 'rau 100 g';

  @override
  String get india => 'Is Nrias teb';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Teb chaws Europe';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Teb chaws Africa';

  @override
  String get americas => 'Tebchaws Asmeskas';

  @override
  String get home_title => 'Tsev';

  @override
  String get home_greeting_morning => 'Nyob zoo sawv ntxov';

  @override
  String get home_greeting_afternoon => 'Nyob zoo sawv ntxov';

  @override
  String get home_greeting_evening => 'Nyob zoo os';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hnub streak',
      one: '1 hnub streak',
      zero: '0d noj',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'hlawv';

  @override
  String get home_calories_budget => 'Calorie nyiaj txiag';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal seem';
  }

  @override
  String get home_water_title => 'Dej Txhua Hnub';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Cov kauj ruam taug kev';

  @override
  String get home_quick_actions => 'Kev ua ceev';

  @override
  String get home_log_meal => 'Log Noj';

  @override
  String get home_log_water => 'Log Dej';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Luj';

  @override
  String get home_insights_title => 'Niaj hnub no kev nkag siab';

  @override
  String get home_quote =>
      'Cov kev xaiv noj qab haus huv me me tsim kev hloov pauv hloov pauv.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Surroundings & Cua';

  @override
  String get home_notifications => 'Kev ceeb toom';

  @override
  String get home_daily_score => 'Kev Noj Qab Haus Huv Txhua Hnub';

  @override
  String get home_view_all => 'Saib tag nrho';

  @override
  String get food_diary_title => 'Khoom noj khoom haus Diary';

  @override
  String get food_breakfast => 'Noj tshais';

  @override
  String get food_lunch => 'Noj su';

  @override
  String get food_dinner => 'Noj hmo';

  @override
  String get food_snacks => 'Khoom txom ncauj';

  @override
  String get food_add_food => 'Ntxiv Khoom Noj';

  @override
  String get food_edit_food => 'Kho kom raug zaub mov';

  @override
  String get food_add_breakfast => 'Ntxiv Noj tshais';

  @override
  String get food_add_lunch => 'Ntxiv noj su';

  @override
  String get food_add_dinner => 'Ntxiv noj hmo';

  @override
  String get food_add_snack => 'Ntxiv Khoom txom ncauj';

  @override
  String get food_total_calories => 'Cov calories tag nrho';

  @override
  String get food_empty_meal =>
      'Tseem tsis tau muaj zaub mov nkag rau pluas mov no';

  @override
  String get food_empty_diary => 'Tsis muaj zaub mov nkag rau hnub no';

  @override
  String get food_log_first_meal =>
      'Coj mus rhaub + txhawm rau sau koj thawj pluas noj qab';

  @override
  String get food_quick_add => 'Ntxiv ceev';

  @override
  String get food_search_hint =>
      'Nrhiav zaub mov, txiv hmab txiv ntoo, dal, roti ...';

  @override
  String get food_custom_recipe => 'Custom Food & Recipe';

  @override
  String get food_scan_barcode => 'Luam theej duab Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Cov zaub mov tsis ntev los no';

  @override
  String get food_favourites => 'Nyiam';

  @override
  String get food_macro_summary => 'Macronutrient tawg';

  @override
  String get food_delete_meal_confirm =>
      'Koj puas paub tseeb tias koj xav tshem cov khoom no?';

  @override
  String get food_item_deleted => 'Cov khoom noj raug tshem tawm';

  @override
  String get food_remaining => 'tshuav';

  @override
  String get food_consumed => 'noj';

  @override
  String food_of_target(Object target) {
    return 'ntawm $target kcal';
  }

  @override
  String get foodSearch_title => 'Nrhiav zaub mov';

  @override
  String get foodSearch_scan_barcode => 'Luam theej duab Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Tsim Khoom Noj Khoom Haus';

  @override
  String get foodSearch_recent_searches => 'Nrhiav tsis ntev los no';

  @override
  String get foodSearch_popular => 'Nrov tais';

  @override
  String get foodSearch_no_results =>
      'Tsis muaj khoom noj uas phim koj qhov kev tshawb nrhiav';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Teem barcode hauv lub koob yees duab ncej';

  @override
  String get barcode_not_found => 'Cov khoom tsis pom nyob rau hauv database';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning muaj nyob nrog Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Siv daim duab meej ntawm koj lub tais';

  @override
  String get camera_analysing => 'Analyzing zaub mov ...';

  @override
  String get camera_detected => 'Cov khoom kuaj pom';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Rov thaij duab';

  @override
  String get camera_confirm_food => 'Paub meej cov khoom';

  @override
  String get customFood_title => 'Custom Food & Recipe';

  @override
  String get customFood_name_hint =>
      'Lub npe ntawm lub tais los yog cov khoom xyaw';

  @override
  String get customFood_calories_hint => 'Cov calories (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Rog (g)';

  @override
  String get customFood_save => 'Txuag daim ntawv qhia';

  @override
  String get water_tracker_title => 'Dej Tracker';

  @override
  String get water_daily_target => 'Lub Hom Phiaj Txhua Hnub Dej';

  @override
  String get water_logged_today => 'Logged Hnub no';

  @override
  String get water_add_glass => '+ 250 ml iav';

  @override
  String get water_add_bottle => '+ 500 ml Lub raj mis';

  @override
  String get water_custom_amount => 'Custom Awm';

  @override
  String get water_reminder_tip =>
      'Haus dej tsis tu ncua txhua hnub kom lub zog khov kho.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml dej 💧';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Ntxiv Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Lub zog';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Duration';

  @override
  String get workout_intensity => 'Kev siv zog';

  @override
  String get workout_calories_burned => 'Calories hlawv';

  @override
  String get workout_empty => 'Tsis muaj workouts teev hnub no';

  @override
  String get workout_save_success => 'Workout cawm tau tiav!';

  @override
  String get workout_type => 'Hom kev ua haujlwm';

  @override
  String get workout_notes => 'Sau ntawv & Reflections';

  @override
  String get health_overview_title => 'Health & Vitals';

  @override
  String get health_heart_rate => 'Lub plawv dhia';

  @override
  String get health_blood_oxygen => 'Ntshav Oxygen (SpO2)';

  @override
  String get health_blood_pressure => 'Ntshav siab';

  @override
  String get health_blood_glucose => 'Ntshav Qab Zib';

  @override
  String get health_body_temperature => 'Lub cev kub';

  @override
  String get health_sleep_tracking => 'Pw tsaug zog taug qab';

  @override
  String get health_weight_tracking => 'Nyhav & Lub Cev Muaj Zog';

  @override
  String get health_waist_hip => 'Lub duav-rau-Hip Ratio';

  @override
  String get health_devices_hub => 'Devices & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Kawg synced: $time';
  }

  @override
  String get health_manual_entry => 'Phau ntawv Health nkag';

  @override
  String get health_metric_detail => 'Metric Paub meej';

  @override
  String get health_connected_sensors => 'Txuas Health Sensors';

  @override
  String get plan_title => 'Kev Npaj Txhua Hnub';

  @override
  String get plan_weekly_title => 'Kev Npaj Noj Qab Haus Huv Txhua Lub Limtiam';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Dej Lub Hom Phiaj';

  @override
  String get plan_step_target => 'Kauj ruam Target';

  @override
  String get plan_sleep_target => 'Pw Lub Hom Phiaj';

  @override
  String get plan_meal_suggestions => 'Cov lus qhia noj mov';

  @override
  String get plan_healthy_habits => 'Noj Qab Haus Huv & Cov Lus Qhia';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Cov Lus Pom Zoo';

  @override
  String get plan_generated_title => 'Personalized Txhua Hnub Teem Caij';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Kho kom raug Profile';

  @override
  String get profile_name => 'Lub npe';

  @override
  String get profile_age => 'Hnub nyoog';

  @override
  String get profile_gender => 'Poj niam los txiv neej';

  @override
  String get profile_height => 'Qhov siab';

  @override
  String get profile_weight => 'Qhov hnyav';

  @override
  String get profile_goal => 'Lub Hom Phiaj Tseem Ceeb';

  @override
  String get profile_activity_level => 'Kev Ua Haujlwm Qib';

  @override
  String get profile_stats => 'Kuv Kev Noj Qab Haus Huv Stats';

  @override
  String get profile_saved => 'Qhov profile tau hloov kho tiav';

  @override
  String get profile_bmi => 'Lub cev Mass Index (BMI)';

  @override
  String get profile_membership => 'Kev ua tswv cuab';

  @override
  String get settings => 'Chaw';

  @override
  String get preferences_habits => 'NYEEM & HAIV NEEG';

  @override
  String get appearance_theme => 'Tsom & Ntsiab Lus';

  @override
  String get appearance_theme_sub =>
      'Tsaus, Teeb, System Hom & App Background Options';

  @override
  String get permissions => 'Permissions & System Access';

  @override
  String get permissions_sub =>
      'Health Txuas, Kauj Ruam Sensors, GPS, Kev Ceeb Toom & Lub Koob Yees Duab';

  @override
  String get reminders_notifications => 'Ceeb toom & Ceeb toom';

  @override
  String get reminders_sub =>
      'Lub sij hawm noj mov, dej, qhov hnyav check-in & ceeb toom thaum pw';

  @override
  String get units_of_measurement => 'Chav ntsuas ntsuas';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) los yog Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Lus';

  @override
  String get language_sub =>
      'Lus Askiv, हिन्दी (Hindi), Hinglish & 195+ hom lus thoob ntiaj teb';

  @override
  String get home_screen_widgets => 'Tsev Screen Widgets';

  @override
  String get widgets_sub =>
      'Nyob Android widget: Hub, Cov kauj ruam, Dej, Khoom noj khoom haus & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch tus khub, pobzeb, teeb meem & nyob qhov tseem ceeb';

  @override
  String get goals_wellness => 'COV PHOOJ YWG & KEV SAIB XYUAS';

  @override
  String get nutrition_targets => 'Nutrition Targets & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie phiaj, protein, carbs, rog & dej lub hom phiaj';

  @override
  String get weekly_recap => 'Lub Limtiam Kev Noj Qab Haus Huv Recap';

  @override
  String get weekly_recap_sub =>
      '7-hnub calorie nruab nrab, macro piv & hnub zoo tshaj plaws';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Active paj streaks, paib tiv npe & achievements';

  @override
  String get connected_devices => 'Connected Devices & ECOSYSTEM';

  @override
  String get devices_hub => 'Devices & Smartwatch Hub';

  @override
  String get devices_hub_sub => 'Health Txuas, Galaxy Saib, Pixel Saib, Garmin';

  @override
  String get surroundings_weather => 'Ib puag ncig & Huab cua';

  @override
  String get surroundings_sub =>
      'Huab cua zoo (AQI), UV index & huab cua hydration tswv yim';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 lub vijtsam hauv tsev widgets & nrhiav qhov tseem ceeb';

  @override
  String get about_security => 'QHOV CHAW & SECURITY';

  @override
  String get about_bloomi => 'Hais txog Bloomi';

  @override
  String get about_bloomi_sub =>
      'Tsim cov specifications, version, attributions';

  @override
  String get privacy_policy => 'Txoj Cai Tswjfwm Ntiag Tug';

  @override
  String get privacy_policy_sub => 'Offline-thawj, on-device data architecture';

  @override
  String get terms_conditions => 'Cov Cai & Cov Cai';

  @override
  String get terms_conditions_sub =>
      'Cov ntsiab lus ntawm kev pabcuam thiab cov txheej txheem kev noj qab haus huv';

  @override
  String get delete_account => 'Rho tawm Account & Cov ntaub ntawv';

  @override
  String get delete_account_sub =>
      'Irreversibly lwv cov ntaub ntawv SQLite hauv zos thiab huab thaub qab';

  @override
  String get healthy_habits =>
      'Tsim kom muaj tus cwj pwm zoo, ua kom lub neej ntev';

  @override
  String get all_logs => 'Kuv Tracked Data & Logs';

  @override
  String get search_language =>
      'Nrhiav los ntawm hom lus lossis cov ntawv ib txwm ...';

  @override
  String get languages_available => 'Lus muaj';

  @override
  String get no_matching_languages => 'Tsis pom muaj hom lus zoo sib xws';

  @override
  String get try_searching =>
      'Sim nrhiav los ntawm cov ntawv sau ib txwm muaj lossis kev sau ntawv Askiv';

  @override
  String get partially_translated => 'Txhais ib nrab';

  @override
  String get complete_translation => 'Ua kom tiav';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Cov lus teem rau $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Ib puag ncig & Ib puag ncig';

  @override
  String get surroundings_aqi => 'Cua Zoo Index';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Kub';

  @override
  String get surroundings_humidity => 'Cov av noo';

  @override
  String get surroundings_hydration_advice =>
      'Nyob zoo hydrated nyob rau hauv cov huab cua tam sim no.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Nrhiav zaub mov';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Ntxiv Dej';

  @override
  String get food_quick_custom => 'Khoom noj khoom haus';

  @override
  String get surroundings_good => 'Zoo';

  @override
  String get surroundings_moderate => 'Nruab nrab';

  @override
  String get surroundings_unhealthy => 'Tsis noj qab nyob zoo';

  @override
  String get notifications_title => 'Kev ceeb toom & ceeb toom';

  @override
  String get notifications_empty => 'Tsis muaj ntawv ceeb toom tshiab';

  @override
  String get notifications_mark_read => 'Kos tag nrho raws li Nyeem';

  @override
  String get notifications_clear => 'Clear Txhua';

  @override
  String get reminders => 'Kev ceeb toom chaw';

  @override
  String get notifications => 'Kev ceeb toom';

  @override
  String get reminders_breakfast_title => 'Breakfast Reminder';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Nyob zoo sawv ntxov! Sijhawm rau noj tshais ntawm $time .';
  }

  @override
  String get reminders_lunch_title => 'Lunch Reminder 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Ncua tseg thiab txaus siab rau noj su noj qab nyob zoo ntawm $time .';
  }

  @override
  String get reminders_dinner_title => 'Noj hmo Reminder 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Lub sij hawm rau lub teeb, txaus siab noj hmo ntawm $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nug 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Lub sij hawm haus ib khob dej tshiab! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Lub Limtiam Weigh-in ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Taug qab koj lub cev ntsuas txhua lub limtiam ntawm Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Bedtime Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Tshem tawm thiab npaj rau kev pw tsaug zog ($time ).';
  }

  @override
  String get onboard_welcome => 'Txais tos rau Bloomi';

  @override
  String get onboard_sub =>
      'Koj tus phooj ywg, offline-thawj kev noj qab haus huv thiab khoom noj khoom haus tus khub.';

  @override
  String get onboard_get_started => 'Pib pib';

  @override
  String get onboard_sign_in => 'Sau npe';

  @override
  String get onboard_skip => 'Hla';

  @override
  String get onboard_choose_goal =>
      'Koj lub hom phiaj kev noj qab haus huv yog dab tsi?';

  @override
  String get onboard_goal_weight_loss => 'Maj mam poob phaus';

  @override
  String get onboard_goal_muscle => 'Muscle nce & muaj zog';

  @override
  String get onboard_goal_energy => 'Txhua Hnub Zog & Lub Zog';

  @override
  String get onboard_goal_habits => 'Noj qab nyob zoo Mindful noj';

  @override
  String get onboard_about_you => 'Qhia Peb Txog Koj Tus Kheej';

  @override
  String get onboard_lifestyle => 'Koj Lub Sij Hawm Txhua Hnub';

  @override
  String get onboard_permissions_title => 'Permissions & System Access';

  @override
  String get onboard_permissions_sub =>
      'Muab kev nkag mus rau sync cov kauj ruam, workouts, thiab ceeb toom.';

  @override
  String get onboard_plan_ready_title =>
      'Koj Txoj Kev Npaj Kho Mob tau npaj txhij!';

  @override
  String get onboard_plan_ready_sub =>
      'Peb crafted ib tug maj mam, tus kheej kev noj haus thiab noj qab haus huv roadmap rau koj.';

  @override
  String get onboard_enter_bloomi => 'Nkag mus rau Bloomi';

  @override
  String get insights_weekly_report => 'Lub Limtiam Kev Noj Qab Haus Huv Recap';

  @override
  String insights_best_day(Object day) {
    return 'Hnub zoo tshaj plaws: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Xauv ntawm $date';
  }

  @override
  String get insights_keep_going => 'Ua raws li qhov kev vam meej zoo heev!';

  @override
  String get widgets_title => 'Tsev Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Active Widgets: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Cov kauj ruam & Ntiv nplhaib';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Tus khub';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'Txuas nrog Saib';

  @override
  String get wear_os_sync => 'Sync saib cov ntaub ntawv';

  @override
  String get theme_title => 'Tsom & Ntsiab Lus';

  @override
  String get theme_mode => 'Ntsiab lus hom';

  @override
  String get theme_light => 'Teeb';

  @override
  String get theme_dark => 'Tsaus';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Background Palette';

  @override
  String get units_title => 'Chav ntsuas ntsuas';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, hauv, fl oz)';

  @override
  String get home_unable_load => 'Tsis tuaj yeem thauj khoom dashboard';

  @override
  String get home_health_permission_req =>
      'Yuav tsum muaj daim ntawv tso cai Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi xav kom Health Connect tso cai rub cov kauj ruam tiag tiag, lub plawv dhia, thiab synchronize mobile widget hauv lub sijhawm.';

  @override
  String get home_allow_health => 'Tso cai rau Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Npaj txhij rau ib hnub nco ntsoov? ✨ ib';

  @override
  String get home_quick_add => 'Ntxiv ceev';

  @override
  String get home_live_gps => 'Nyob GPS';

  @override
  String get home_calories_remaining_label => 'CALORIES REMAINING';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Noj: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Coj mus rhaub rau Dej Tracker 💧';

  @override
  String get home_water_goal_reached => 'Lub hom phiaj niaj hnub mus txog 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml rau lub hom phiaj niaj hnub';
  }

  @override
  String get home_details => 'Paub meej';

  @override
  String get home_upgrade_plan_desc =>
      'Hloov kho kom qhib lub hom phiaj ntawm tus kheej txhua hnub & AI txoj kev npaj';

  @override
  String get home_unlock => 'Xauv 👑';

  @override
  String get home_quick_log_hint =>
      'Ceev ceev sau ib qho kev noj qab haus huv nkag';

  @override
  String get food_serving_size => 'Kev Pab Cuam Loj';

  @override
  String get food_serving_grams => 'Kev pab (g)';

  @override
  String get food_number_servings => 'Tus naj npawb ntawm Kev Pab';

  @override
  String get food_calories_per_serving => 'Calories ib servings';

  @override
  String get food_recipe_ingredients => 'Cov khoom xyaw';

  @override
  String get food_recipe_add_ingredient => 'Ntxiv Cov Khoom xyaw';

  @override
  String get food_recipe_directions => 'Cov Lus Qhia & Lus Cim';

  @override
  String get food_recipe_total => 'Daim ntawv qhia zaub mov tag nrho';

  @override
  String get food_recipe_per_serving => 'Rau Kev Pab Khoom Noj';

  @override
  String get food_recipe_saved_toast =>
      'Cov zaub mov kev cai khaws tseg ua tiav!';

  @override
  String get food_barcode_found => 'Khoom Pom!';

  @override
  String get food_barcode_not_found_desc =>
      'Peb nrhiav tsis tau qhov barcode no hauv cov ntaub ntawv qhib. Koj tuaj yeem ntxiv nws ua zaub mov kev cai.';

  @override
  String get food_add_custom_btn => 'Ntxiv Custom Food';

  @override
  String get food_scan_again => 'Luam theej duab dua';

  @override
  String get food_review_items => 'Saib xyuas cov zaub mov pom';

  @override
  String get food_review_hint =>
      'Kho kom muaj nuj nqis lossis tshem tawm ib qho khoom tsis paub';

  @override
  String get food_log_selected => 'Log Xaiv cov zaub mov';

  @override
  String get food_favourites_title => 'Cov khoom noj uas nyiam';

  @override
  String get food_recent_title => 'Cov zaub mov tsis ntev los no';

  @override
  String get food_no_favourites =>
      'Tseem tsis tau muaj zaub mov nyiam. Coj mus rhaub lub plawv ntawm tej zaub mov kom txuag tau ntawm no.';

  @override
  String get food_no_recents => 'Tsis pom cov khoom noj uas tsis ntev los no.';

  @override
  String get food_nutrition_details_title => 'Cov Lus Qhia Txhua Hnub';

  @override
  String get food_macro_protein_label => 'Protein tawg';

  @override
  String get food_macro_carbs_label => 'Carbs tawg';

  @override
  String get food_macro_fat_label => 'Kev rog rog';

  @override
  String get food_macro_fiber_label => 'Fiber tawg';

  @override
  String get food_daily_target_comparison => 'Lub hom phiaj sib piv';

  @override
  String food_target_label(Object target) {
    return 'Lub hom phiaj: $target';
  }

  @override
  String get food_edit_entry => 'Kho kom raug Diary nkag';

  @override
  String get food_delete_entry => 'Rho tawm nkag';

  @override
  String food_grams_short(Object grams) {
    return '${grams}g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ntawm $target ml';
  }

  @override
  String get water_intake_history => 'Niaj hnub no cov ntaub ntawv dej';

  @override
  String get water_no_logs_today =>
      'Tsis muaj dej nkag los hnub no. Hydrate thiab coj mus rhaub khawm ntxiv nrawm!';

  @override
  String get water_adjust_goal => 'Kho Lub Hom Phiaj Txhua Hnub';

  @override
  String get health_connect_banner => 'Txuas rau Health Connect';

  @override
  String get health_vitals_summary => 'Txhua hnub Health Vitals';

  @override
  String get health_latest_heart_rate => 'Latest Heart Rate';

  @override
  String get health_latest_bp => 'Ntshav siab';

  @override
  String get health_latest_spo2 => 'Ntshav Oxygen';

  @override
  String get health_latest_glucose => 'Ntshav Qab Zib';

  @override
  String get health_latest_weight => 'Qhov hnyav';

  @override
  String get health_latest_sleep => 'Pw tsaug zog Duration';

  @override
  String get health_add_manual => 'Ntxiv Kev Ntsuas Kev Ntsuas';

  @override
  String get health_history_trends => 'Keeb kwm Trends';

  @override
  String get health_sync_success =>
      'Cov ntaub ntawv kev noj qab haus huv synced tiav!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours teev $mins mins';
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
    return '$pct%';
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
  String get health_devices_title => 'Txuas Devices & Wearables';

  @override
  String get health_devices_desc =>
      'Tswj cov smartwatches ua ke, lub zog trackers, thiab kev noj qab haus huv sensors.';

  @override
  String get health_workout_editor_title => 'Kho kom raug Workout';

  @override
  String get health_workout_name_label => 'Workout npe';

  @override
  String get health_workout_duration_label => 'Duration (minutes)';

  @override
  String get health_workout_calories_label => 'Calories kwv yees (kcal)';

  @override
  String get health_workout_date_label => 'Hnub tim thiab Sijhawm';

  @override
  String get plan_daily_wellness_roadmap => 'Koj Tus Kheej Txoj Kev Npaj';

  @override
  String get plan_morning_routine => 'Sawv ntxov Routine';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Hmo ntuj Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Hnub Kev Noj Qab Haus Huv Focus';

  @override
  String get plan_targets_title =>
      'Kev Noj Qab Haus Huv Lub Hom Phiaj & Lub Hom Phiaj';

  @override
  String get plan_calorie_budget_label => 'Calorie Budget txhua hnub';

  @override
  String get plan_water_budget_label => 'Lub Hom Phiaj Dej Txhua Hnub';

  @override
  String get plan_step_budget_label => 'Lub Hom Phiaj Txhua Hnub';

  @override
  String get plan_macro_split_label => 'Macronutrient ratio';

  @override
  String get profile_personal_details => 'Tus kheej Paub meej';

  @override
  String get profile_body_stats => 'Kev ntsuas lub cev';

  @override
  String get profile_app_preferences => 'Preferences & App Settings';

  @override
  String get profile_edit_name_hint => 'Koj lub npe';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Qhov siab ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Qhov hnyav ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Hnub nyoog';

  @override
  String get profile_gender_male => 'Txiv neej';

  @override
  String get profile_gender_female => 'Poj niam';

  @override
  String get profile_gender_other => 'Lwm yam / Tsis nyiam hais';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Me ntsis rau tsis muaj kev tawm dag zog)';

  @override
  String get profile_activity_light =>
      'Yooj Yim Yooj Yim (1-3 hnub / lub lis piam)';

  @override
  String get profile_activity_moderate =>
      'Kev nquag nquag (3-5 hnub / lub lis piam)';

  @override
  String get profile_activity_very => 'Active heev (6-7 hnub / lub lis piam)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Nruab Bloomi pobzeb thiab teeb meem ntawm koj lub Wear OS saib kom pom cov calories, dej, thiab cov kauj ruam.';

  @override
  String get settings_widgets_header => 'Sib tham sib Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Pin widgets real-time ntawm koj lub vijtsam hauv tsev rau kev hloov tshiab tam sim.';

  @override
  String get settings_about_header => 'Hais txog Bloomi';

  @override
  String get settings_about_version => 'Version 1.0.0';

  @override
  String get settings_about_build => 'Tsim 100';

  @override
  String get settings_about_credits =>
      'Crafted nrog kev saib xyuas rau lub siab, noj qab nyob zoo nyob.';

  @override
  String get settings_terms_header => 'Cov Cai thiab Cov Cai';

  @override
  String get settings_privacy_header => 'Txoj Cai Tswjfwm Ntiag Tug';

  @override
  String get settings_delete_header => 'Rho tawm Account & Cov ntaub ntawv';

  @override
  String get settings_delete_warning =>
      'Qhov kev txiav txim no tsis tuaj yeem thim rov qab. Tag nrho koj cov pluas noj, kev tawm dag zog, qhov tseem ceeb, thiab qhov profile yuav raug tshem tawm mus tas li.';

  @override
  String get settings_delete_confirm_btn => 'Rho tawm mus tas li';

  @override
  String get onboard_welcome_headline => 'Txais tos rau Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Yooj yim, nco qab kev noj qab haus huv taug qab tsim nyob ib puag ncig koj lub neej.';

  @override
  String get onboard_step_about => 'Txog Koj';

  @override
  String get onboard_step_goals => 'Koj Lub Hom Phiaj';

  @override
  String get onboard_step_lifestyle => 'Cov cwj pwm niaj hnub';

  @override
  String get onboard_step_permissions => 'Tso cai';

  @override
  String get onboard_step_plan => 'Npaj txhij!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Kauj ruam Counter Sensor';

  @override
  String get onboard_notif_perm => 'Nco Ntsoov & Ceeb Toom';

  @override
  String get onboard_camera_perm =>
      'Lub koob yees duab (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Muab Kev Tso Cai';

  @override
  String get onboard_continue_dashboard => 'Qhib Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Cov lus ceeb toom maj mam dej txhua hnub';

  @override
  String get notif_channel_nutrition_name =>
      'Kev ceeb toom zaub mov & Khoom noj khoom haus';

  @override
  String get notif_channel_nutrition_desc =>
      'Noj tshais, pluas su, thiab noj hmo ceeb toom ceeb toom';

  @override
  String get notif_channel_steps_name => 'Kauj ruam Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Kev ua koob tsheej thaum ncav cuag cov hom phiaj txhua hnub';

  @override
  String get notif_channel_vitals_name => 'Health & Vitals Checks';

  @override
  String get notif_channel_vitals_desc =>
      'Qhov hnyav thiab lub sijhawm pw tsaug zog cua-down ceeb toom';

  @override
  String get notif_action_log_water => '💧 Log + 250ml';

  @override
  String get notif_action_snooze => 'Luas 15 m';

  @override
  String get notif_action_log_meal => '🥗 Log Noj';

  @override
  String get language => 'Lus';

  @override
  String get share => 'Qhia';

  @override
  String common_days(Object count) {
    return '$count d dhau los';
  }
}
