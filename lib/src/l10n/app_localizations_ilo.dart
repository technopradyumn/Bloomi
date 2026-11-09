// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Iloko (`ilo`).
class AppLocalizationsIlo extends AppLocalizations {
  AppLocalizationsIlo([String locale = 'ilo']) : super(locale);

  @override
  String get app_name => 'Bloomi nga';

  @override
  String get nav_home => 'Taeng';

  @override
  String get nav_today => 'Ita nga aldaw';

  @override
  String get nav_plan => 'Plano';

  @override
  String get nav_food => 'Taraon';

  @override
  String get nav_food_diary => 'Diario ti Taraon';

  @override
  String get nav_workout => 'Log ti Panag-workout';

  @override
  String get nav_health => 'Salun-at';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Idulin';

  @override
  String get cancel => 'Kanselaen';

  @override
  String get delete => 'Buraken';

  @override
  String get edit => 'Urnosen ti';

  @override
  String get done => 'Naaramiden';

  @override
  String get close => 'Agserra';

  @override
  String get back => 'Agsubli';

  @override
  String get next => 'Sumaruno';

  @override
  String get continue_btn => 'Ituloymo';

  @override
  String get confirm => 'Pasingkedan';

  @override
  String get search => 'Agbirok';

  @override
  String get filter => 'Salaan ti';

  @override
  String get all => 'Amin';

  @override
  String get active => 'Aktibo nga';

  @override
  String get today => 'Ita nga aldaw';

  @override
  String get yesterday => 'Idi kalman';

  @override
  String get tomorrow => 'Inton bigat';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Ikkaten';

  @override
  String get refresh => 'Refresh ti';

  @override
  String get retry => 'Padasem manen';

  @override
  String get error => 'Biddut nga';

  @override
  String get success => 'Balligi';

  @override
  String get loading => 'Karga ti...';

  @override
  String get no_data => 'Awan ti magun-od a datos';

  @override
  String get offline => 'Offline nga Modo';

  @override
  String get offline_sub =>
      'Ag-sync dagiti panagbalbaliw apaman a maikonekta manen';

  @override
  String get undo => 'I-undo ti';

  @override
  String get portion => 'Porsion';

  @override
  String get quantity => 'Kaadu';

  @override
  String get unit => 'Yunit';

  @override
  String get clear => 'Nalawag';

  @override
  String get select => 'Pilien ti';

  @override
  String get apply => 'Agaplikar';

  @override
  String get reset => 'I-reset-na';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Wen';

  @override
  String get no => 'Saan';

  @override
  String get optional => 'Opsional';

  @override
  String get calories => 'Dagiti calorie';

  @override
  String get protein => 'Protina';

  @override
  String get carbs => 'Dagiti carbs';

  @override
  String get fat => 'Nalukmeg';

  @override
  String get fiber => 'Fiber ti lanot';

  @override
  String get water => 'Danum';

  @override
  String get steps => 'Addang';

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
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Panagserbi';

  @override
  String get servings => 'Dagiti Serbision';

  @override
  String get serving_size => 'Dakkel ti Serbision';

  @override
  String get per_100g => 'kada 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Makintengnga a Daya';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Taeng';

  @override
  String get home_greeting_morning => 'Naimbag nga Agsapa';

  @override
  String get home_greeting_afternoon => 'Naimbag nga Malem';

  @override
  String get home_greeting_evening => 'Naimbag a Malem';

  @override
  String get home_streak_title => 'Sabong nga Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nga aldaw ti panagsasaruno',
      one: '1 nga aldaw nga streak',
      zero: '0 nga aldaw nga streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Napuoran';

  @override
  String get home_calories_budget => 'Badyet ti Calorie';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ti nabati';
  }

  @override
  String get home_water_title => 'Inaldaw nga Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target nga ml';
  }

  @override
  String get home_steps_title => 'Addang a Nagna';

  @override
  String get home_quick_actions => 'Napartak nga Aramiden';

  @override
  String get home_log_meal => 'Pannangan iti Log';

  @override
  String get home_log_water => 'Danum ti Log';

  @override
  String get home_log_workout => 'Log nga Panag-workout';

  @override
  String get home_log_weight => 'Timbang ti Log';

  @override
  String get home_insights_title => 'Dagiti Pannakaawat ita nga aldaw';

  @override
  String get home_quote =>
      'Dagiti babassit a nasalun-at a pili ket mangpataud kadagiti agsabong a panagbalbaliw.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI nga Coach';

  @override
  String get home_surroundings => 'Aglawlaw & Angin';

  @override
  String get home_notifications => 'Dagiti Pakaammo';

  @override
  String get home_daily_score => 'Inaldaw nga Iskor ti Kinasalun-at';

  @override
  String get home_view_all => 'Kitaen Amin';

  @override
  String get food_diary_title => 'Diario ti Taraon';

  @override
  String get food_breakfast => 'Almusar';

  @override
  String get food_lunch => 'Pangngaldaw';

  @override
  String get food_dinner => 'Pangrabii';

  @override
  String get food_snacks => 'Merienda';

  @override
  String get food_add_food => 'Inayon ti Taraon';

  @override
  String get food_edit_food => 'Urnosen ti Taraon';

  @override
  String get food_add_breakfast => 'Inayon ti Almusar';

  @override
  String get food_add_lunch => 'Inayon ti Pangngaldaw';

  @override
  String get food_add_dinner => 'Inayon ti Pangrabii';

  @override
  String get food_add_snack => 'Inayon ti Merienda';

  @override
  String get food_total_calories => 'Dagup a Calorie';

  @override
  String get food_empty_meal =>
      'Awan pay ti nai-log a taraon para iti daytoy a pannangan';

  @override
  String get food_empty_diary =>
      'Awan ti nai-log a taraon para iti daytoy nga aldaw';

  @override
  String get food_log_first_meal =>
      'I-tap-mo ti + tapno mai-log ti umuna a naimas a taraonmo';

  @override
  String get food_quick_add => 'Napartak nga Add';

  @override
  String get food_search_hint =>
      'Agbirok kadagiti putahe, prutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom nga Taraon & Resipe';

  @override
  String get food_scan_barcode => 'I-scan ti Barcode';

  @override
  String get food_camera_scan => 'AI nga Scanner ti Taraon';

  @override
  String get food_recent => 'Dagiti Kabarbaro a Taraon';

  @override
  String get food_favourites => 'Paborito dagiti';

  @override
  String get food_macro_summary => 'Panagbingay ti Makronutriente';

  @override
  String get food_delete_meal_confirm =>
      'Sigurado kadi a kayatmo nga ikkaten daytoy a banag?';

  @override
  String get food_item_deleted => 'Food item naikkat';

  @override
  String get food_remaining => 'nabati';

  @override
  String get food_consumed => 'nabusbos';

  @override
  String food_of_target(Object target) {
    return 'ti $target kcal';
  }

  @override
  String get foodSearch_title => 'Agbirok kadagiti Taraon';

  @override
  String get foodSearch_scan_barcode => 'I-scan ti Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Larawan ti Taraon';

  @override
  String get foodSearch_custom_food => 'Mangaramid iti Kostumbre a Taraon';

  @override
  String get foodSearch_recent_searches => 'Dagiti Kabarbaro a Panagsapul';

  @override
  String get foodSearch_popular => 'Nalatak a Putahe';

  @override
  String get foodSearch_no_results =>
      'Awan dagiti taraon a maitunos iti panagbirokmo';

  @override
  String get barcode_title => 'Scanner ti Barcode';

  @override
  String get barcode_align => 'Itunos ti barcode iti uneg ti frame frame';

  @override
  String get barcode_not_found => 'Saan a nasarakan ti produkto iti database';

  @override
  String get barcode_premium_feature =>
      'Magun-od ti barcode scanning babaen ti Bloomi Pro';

  @override
  String get camera_title => 'AI nga Scanner ti Taraon';

  @override
  String get camera_tap_hint => 'Mangala iti nalawag a retrato ti putahem';

  @override
  String get camera_analysing => 'Panag-analisar ti food plate...';

  @override
  String get camera_detected => 'Dagiti naduktalan a banag';

  @override
  String get camera_flash => 'I-toggle ti Flash';

  @override
  String get camera_retake => 'Alaen manen ti Ladawan';

  @override
  String get camera_confirm_food => 'Pasingkedan Dagiti Banag';

  @override
  String get customFood_title => 'Custom nga Taraon & Resipe';

  @override
  String get customFood_name_hint => 'Nagan ti putahe wenno ramen';

  @override
  String get customFood_calories_hint => 'Dagiti kaloria (kcal) .';

  @override
  String get customFood_protein_hint => 'Protina (g) .';

  @override
  String get customFood_carbs_hint => 'Dagiti karbohidrato (g) .';

  @override
  String get customFood_fat_hint => 'Taba (g) .';

  @override
  String get customFood_save => 'I-save ti Resipe';

  @override
  String get water_tracker_title => 'Tracker ti Danum';

  @override
  String get water_daily_target => 'Inaldaw a Kalat ti Hydration';

  @override
  String get water_logged_today => 'Logged Ita nga aldaw';

  @override
  String get water_add_glass => '+250 ml Sarming';

  @override
  String get water_add_bottle => '+500 ml Bote nga';

  @override
  String get water_custom_amount => 'Kostumbre a Kantidad';

  @override
  String get water_reminder_tip =>
      'Regular nga uminum iti danum iti intero nga aldaw para iti natalged nga enerhia.';

  @override
  String water_logged_toast(Object amount) {
    return 'Na-log $amount ml ti danum 💧';
  }

  @override
  String get workout_title => 'Log ti Panag-workout';

  @override
  String get workout_add_exercise => 'Inayon ti Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Pigsa';

  @override
  String get workout_yoga => 'Yoga & Panagbalbaliw';

  @override
  String get workout_duration => 'Kapaut ti panagbiagna';

  @override
  String get workout_intensity => 'Intensidad ti kinapinget';

  @override
  String get workout_calories_burned => 'Calories nga Napuoran';

  @override
  String get workout_empty => 'Awan ti workouts a nai-log ita nga aldaw';

  @override
  String get workout_save_success => 'Naballigi a naisalakan ti workout!';

  @override
  String get workout_type => 'Tipo ti Panag-workout';

  @override
  String get workout_notes => 'Dagiti Nota & Panagpanunot';

  @override
  String get health_overview_title => 'Salun-at & Vitals';

  @override
  String get health_heart_rate => 'Panagpitik ti Puso';

  @override
  String get health_blood_oxygen => 'Oksiheno ti Dara (SpO2) .';

  @override
  String get health_blood_pressure => 'Presion ti Dara';

  @override
  String get health_blood_glucose => 'Glucose ti Dara';

  @override
  String get health_body_temperature => 'Temperatura ti Bagi';

  @override
  String get health_sleep_tracking => 'Panangsurot iti Turog';

  @override
  String get health_weight_tracking => 'Timbang & Komposision ti Bagi';

  @override
  String get health_waist_hip => 'Ratio ti Siket-iti-Hip';

  @override
  String get health_devices_hub => 'Dagiti Alikamen & Smartwatch Hub';

  @override
  String get health_sync_now => 'I-sync ti Datos ti Salun-at';

  @override
  String health_last_synced(Object time) {
    return 'Naudi a naisinkron: $time .';
  }

  @override
  String get health_manual_entry => 'Manual nga Entry ti Salun-at';

  @override
  String get health_metric_detail => 'Dagiti Detalye ti Metriko';

  @override
  String get health_connected_sensors =>
      'Dagiti Nakonekta a Sensor ti Salun-at';

  @override
  String get plan_title => 'Inaldaw a Plano';

  @override
  String get plan_weekly_title => 'Linawas a Plano ti Kinasalun-at';

  @override
  String get plan_calorie_target => 'Target ti Calorie';

  @override
  String get plan_water_target => 'Target ti Hydration';

  @override
  String get plan_step_target => 'Addang nga Target';

  @override
  String get plan_sleep_target => 'Target ti Pannaturog';

  @override
  String get plan_meal_suggestions => 'Dagiti Singasing iti Pannangan';

  @override
  String get plan_healthy_habits => 'Nasalun-at nga Ugali & Tips';

  @override
  String get plan_coach_advice => 'Dagiti Rekomendasion ti Coach ti Bloomi AI';

  @override
  String get plan_generated_title => 'Naipersonal nga Inaldaw nga Iskediul';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Urnosen ti Profile';

  @override
  String get profile_name => 'Nagan';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Sekso';

  @override
  String get profile_height => 'Katayag';

  @override
  String get profile_weight => 'Timbang';

  @override
  String get profile_goal => 'Kangrunaan a Kalat';

  @override
  String get profile_activity_level => 'Lebel ti Aktibidad';

  @override
  String get profile_stats => 'Ti Estadistika ti Pagimbagak';

  @override
  String get profile_saved => 'Naballigi a na-update ti profile';

  @override
  String get profile_bmi => 'Indeks ti Masa ti Bagi (BMI) .';

  @override
  String get profile_membership => 'Panagkameng';

  @override
  String get settings => 'Dagiti Setting';

  @override
  String get preferences_habits => 'PREFERENCES & Ugali';

  @override
  String get appearance_theme => 'Pagparang & Tema';

  @override
  String get appearance_theme_sub =>
      'Nasipnget, Lawag, Modo ti Sistema & Pagpilian iti Background ti App';

  @override
  String get permissions => 'Dagiti Pammalubos & Panagserrek ti Sistema';

  @override
  String get permissions_sub =>
      'Health Connect, Sensor ti Addang, GPS, Pakaammo & Kamera';

  @override
  String get reminders_notifications => 'Palagip & Pakaammo';

  @override
  String get reminders_sub =>
      'Oras ti pannangan, danum, weight check-in & palagip sakbay ti pannaturog';

  @override
  String get units_of_measurement => 'Dagiti Yunit ti Panangrukod';

  @override
  String get units_sub =>
      'Metriko (kg, cm, ml, km) wenno Imperial (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'Pagsasao ti App';

  @override
  String get language_sub =>
      'Ingles, हिन्दी (Hindi), Hinglish & 195+ a sangalubongan a pagsasao';

  @override
  String get home_screen_widgets => 'Dagiti Widget ti Iskrin ti Balay';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Addang, Danum, Nutrision & Mascot';

  @override
  String get wear_os_watch_app => 'Isuot ti OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch kadua, baldosa, komplikasion & live vitals';

  @override
  String get goals_wellness => 'GOALS & WELLNESS INSIGHTS TI PANANGIWANWAN';

  @override
  String get nutrition_targets => 'Target ti Nutrision & Makro a Panagbingay';

  @override
  String get nutrition_targets_sub =>
      'Target ti calorie, protina, carbs, taba & danum a kalat';

  @override
  String get weekly_recap => 'Linnawas a Recap ti Kinasalun-at';

  @override
  String get weekly_recap_sub =>
      '7-aldaw a promedio ti calorie, macro ratio & kasayaatan nga aldaw';

  @override
  String get streaks_milestones => 'Streaks & Dagiti Pagalagadan';

  @override
  String get streaks_sub => 'Aktibo nga blossom streaks, badge & gapuanan';

  @override
  String get connected_devices => 'NAKAKONEKTA NGA ARAMIDEN & ECOSYSTEM';

  @override
  String get devices_hub => 'Dagiti Alikamen & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Pagkonekta ti Salun-at, Relo ti Galaxy, Relo ti Pixel, Garmin';

  @override
  String get surroundings_weather => 'Aglawlaw & Panawen';

  @override
  String get surroundings_sub =>
      'Kalidad ti angin (AQI), UV index & tips ti hydration ti paniempo';

  @override
  String get bloomi_pro => 'Suskrision ti Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 a widget ti iskrin ti pagtaengan & panangsurot kadagiti vitals';

  @override
  String get about_security => 'MAIPAPAN & SEGURIDAD';

  @override
  String get about_bloomi => 'Maipapan ken ni Bloomi';

  @override
  String get about_bloomi_sub =>
      'Mangbangon kadagiti espesipikasion, bersion, attribusion';

  @override
  String get privacy_policy => 'Pagannurotan iti Kinapribado';

  @override
  String get privacy_policy_sub =>
      'Offline-umuna, on-device nga arkitektura ti datos';

  @override
  String get terms_conditions => 'Dagiti Kondision & Kondision';

  @override
  String get terms_conditions_sub =>
      'Dagiti kondision ti serbisio ken dagiti pagannurotan ti salun-at';

  @override
  String get delete_account => 'Buraken ti Kuenta & Datos';

  @override
  String get delete_account_sub =>
      'Di mabaliwan a burasen ti lokal a datos ti SQLite ken dagiti backup ti ulep';

  @override
  String get healthy_habits =>
      'Mangbangon kadagiti naalumamay, manayon nga ugali iti salun-at';

  @override
  String get all_logs => 'Ti Nasurot a Datos & Logs-ko';

  @override
  String get search_language =>
      'Agbirok babaen ti pagsasao wenno katutubo nga iskrip...';

  @override
  String get languages_available => 'Dagiti Pagsasao a Magun-od';

  @override
  String get no_matching_languages => 'Awan ti nasarakan a maitunos a pagsasao';

  @override
  String get try_searching =>
      'Padasem ti agsapul babaen ti native script wenno English spelling';

  @override
  String get partially_translated => 'Paset ti naipatarus';

  @override
  String get complete_translation => 'Kompleto';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lenguahe a naikeddeng iti $name ($nativeName ) .';
  }

  @override
  String get surroundings_title => 'Aglawlaw & Aglawlaw';

  @override
  String get surroundings_aqi => 'Indeks ti Kalidad ti Angin';

  @override
  String get surroundings_uv => 'Indeks ti UV';

  @override
  String get surroundings_temp => 'Temperatura ti temperatura';

  @override
  String get surroundings_humidity => 'Dam-ekna';

  @override
  String get surroundings_hydration_advice =>
      'Agtalinaedka a nasayaat ti hydrated iti agdama a kasasaad ti paniempo.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Agbirok iti Taraon';

  @override
  String get food_quick_barcode => 'I-scan ti Barcode 👑';

  @override
  String get food_quick_water => 'Inayon ti Danum';

  @override
  String get food_quick_custom => 'Kostumbre a Taraon';

  @override
  String get surroundings_good => 'Nasayaat';

  @override
  String get surroundings_moderate => 'Kalkalainganna ti kalalainganna';

  @override
  String get surroundings_unhealthy => 'Saan a nasalun-at';

  @override
  String get notifications_title => 'Dagiti Pakaammo & Alerto';

  @override
  String get notifications_empty => 'Awan dagiti baro a pakaammo';

  @override
  String get notifications_mark_read => 'Markaam Amin kas Basaen';

  @override
  String get notifications_clear => 'Nalawag Amin';

  @override
  String get reminders => 'Dagiti Setting ti Palagip';

  @override
  String get notifications => 'Dagiti Pakaammo';

  @override
  String get reminders_breakfast_title => 'Palagip ti Almusar 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Naimbag nga agsapa! Oras para iti nasustansia a pammigat iti $time .';
  }

  @override
  String get reminders_lunch_title => 'Palagip ti Pangngaldaw 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Agsardeng ken tagiragsaken ti natimbeng, nainsiriban a pangngaldaw iti $time .';
  }

  @override
  String get reminders_dinner_title => 'Palagip ti Pangrabii 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Panawen para iti nalag-an, makapnek a pangrabii iti $time .';
  }

  @override
  String get reminders_water_title => 'Hydration nga Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Panawen ti uminum iti presko a baso a danum! ($time) .';
  }

  @override
  String get reminders_weight_title => 'Linnawas a Panagtimbang ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Subayan dagiti linawas a metriko ti bagim iti Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Panagturog nga Angin-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Ag-unwind ken agsagana para iti natalna a turog ( $time ).';
  }

  @override
  String get onboard_welcome => 'Maikablaawkayo iti Bloomi';

  @override
  String get onboard_sub =>
      'Nainggayyeman, offline-first a kaduam iti salun-at ken nutrision.';

  @override
  String get onboard_get_started => 'Mangrugika';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'Laktawan';

  @override
  String get onboard_choose_goal =>
      'Ania ti kangrunaan a kalatmo iti salun-at?';

  @override
  String get onboard_goal_weight_loss => 'Naalumamay a Panaglukmeg';

  @override
  String get onboard_goal_muscle => 'Muscle Gain & Pigsa';

  @override
  String get onboard_goal_energy => 'Inaldaw nga Enerhia & Vitality';

  @override
  String get onboard_goal_habits => 'Nasalun-at a Pannangan a Napanunot';

  @override
  String get onboard_about_you => 'Ibagam Kadakami Maipapan iti Bagim';

  @override
  String get onboard_lifestyle => 'Inaldaw a Rutinam';

  @override
  String get onboard_permissions_title =>
      'Dagiti Pammalubos & Panagserrek ti Sistema';

  @override
  String get onboard_permissions_sub =>
      'Ikkan ti access kadagiti sync steps, workouts, ken palagip.';

  @override
  String get onboard_plan_ready_title => 'Nakasaganan ti Custom Plan-yo!';

  @override
  String get onboard_plan_ready_sub =>
      'Nangaramidkami iti naalumamay, personalized a nutrition ken wellness roadmap para laeng kadakayo.';

  @override
  String get onboard_enter_bloomi => 'Sumalog ni Bloomi';

  @override
  String get insights_weekly_report => 'Linnawas a Recap ti Kinasalun-at';

  @override
  String insights_best_day(Object day) {
    return 'Kasayaatan nga Aldaw ti Panagpapada: $day .';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Dagiti Pagalagadan';

  @override
  String insights_unlocked_on(Object date) {
    return 'Naluktan ti $date .';
  }

  @override
  String get insights_keep_going =>
      'Itultuloyyo ti nakaskasdaaw nga irarang-ay!';

  @override
  String get widgets_title => 'Dagiti Widget ti Iskrin ti Balay';

  @override
  String widgets_active_count(Object count) {
    return 'Dagiti Aktibo a Widget: $count .';
  }

  @override
  String get widgets_hub_title => 'Bloomi Hub ti Pagimbagan';

  @override
  String get widgets_steps_title => 'Addang & Aktibo a Singsing';

  @override
  String get widgets_water_title => 'Hydration Napartak a Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot nga Kaduana';

  @override
  String get wear_os_title => 'Isuot ti OS Smartwatch';

  @override
  String get wear_os_connected => 'Nakonekta iti Watch';

  @override
  String get wear_os_sync => 'I-sync ti Datos ti Panagbantay';

  @override
  String get theme_title => 'Pagparang & Tema';

  @override
  String get theme_mode => 'Modo ti Tema';

  @override
  String get theme_light => 'Lawag';

  @override
  String get theme_dark => 'Nasipnget';

  @override
  String get theme_system => 'Default ti Sistema';

  @override
  String get theme_background_palette => 'Paleta ti Likud';

  @override
  String get units_title => 'Dagiti Yunit ti Panangrukod';

  @override
  String get units_metric => 'Metriko (kg, cm, ml) .';

  @override
  String get units_imperial => 'Imperial (lbs, iti, fl oz) .';

  @override
  String get home_unable_load => 'Saan a makakarga ti dashboard';

  @override
  String get home_health_permission_req =>
      'Masapul ti Pammalubos ti Health Connect';

  @override
  String get home_health_permission_desc =>
      'Kasapulan ti Bloomi ti pammalubos ti Health Connect tapno maguyod dagiti pudno nga addang, panagpitik ti puso, ken panag-sync kadagiti mobile home widget iti aktual nga oras.';

  @override
  String get home_allow_health => 'Bay-an nga Agkonekta ti Salun-at';

  @override
  String get home_ready_mindful_day =>
      'Nakasaganaka kadi para iti aldaw a nainsiriban? ✨';

  @override
  String get home_quick_add => 'Napartak nga Add';

  @override
  String get home_live_gps => 'Live nga GPS';

  @override
  String get home_calories_remaining_label => 'NABABAD TI CALORIES';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Nakankan: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Gripo para iti Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Inaldaw a kalat a nagun-od 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml iti inaldaw a kalat';
  }

  @override
  String get home_details => 'Detalye';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade tapno mailukat dagiti personalized nga inaldaw a target & AI plan';

  @override
  String get home_unlock => 'Ilukat ti 👑';

  @override
  String get home_quick_log_hint => 'Napartak nga irekord ti wellness entry';

  @override
  String get food_serving_size => 'Dakkel ti Serbision';

  @override
  String get food_serving_grams => 'Panagserbi (g) .';

  @override
  String get food_number_servings => 'Bilang ti Serbision';

  @override
  String get food_calories_per_serving => 'Calorie iti kada porsion';

  @override
  String get food_recipe_ingredients => 'Dagiti ramen';

  @override
  String get food_recipe_add_ingredient => 'Inayon ti Ramen';

  @override
  String get food_recipe_directions => 'Instruksion & Nota';

  @override
  String get food_recipe_total => 'Dagup a Resipe Nutrision';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrision ti Panagserbi';

  @override
  String get food_recipe_saved_toast =>
      'Naballigi a naisalakan ti custom food!';

  @override
  String get food_barcode_found => 'Nasarakan ti Produkto!';

  @override
  String get food_barcode_not_found_desc =>
      'Saanmi a nasarakan daytoy a barcode iti silulukat a database. Mabalin nga inayon dayta kas custom food.';

  @override
  String get food_add_custom_btn => 'Inayon ti Custom Food';

  @override
  String get food_scan_again => 'I-scan Manen';

  @override
  String get food_review_items => 'Repasuen Dagiti Naduktalan a Taraon';

  @override
  String get food_review_hint =>
      'Baliwan dagiti kaadu wenno ikkaten ti aniaman a di mabigbig a banag';

  @override
  String get food_log_selected => 'Log Dagiti Napili a Taraon';

  @override
  String get food_favourites_title => 'Paborito a Taraon';

  @override
  String get food_recent_title => 'Dagiti Kabarbaro a Taraon';

  @override
  String get food_no_favourites =>
      'Awan pay ti paborito a taraon. Tap heart iti aniaman a taraon tapno makaurnong ditoy.';

  @override
  String get food_no_recents =>
      'Awan dagiti nabiit pay a nai-log a taraon a nasarakan.';

  @override
  String get food_nutrition_details_title => 'Inaldaw a Detalye ti Nutrision';

  @override
  String get food_macro_protein_label => 'Panagrupsa ti Protina';

  @override
  String get food_macro_carbs_label => 'Panagbingay ti Carbs';

  @override
  String get food_macro_fat_label => 'Panagbingay ti Taba';

  @override
  String get food_macro_fiber_label => 'Panagrupsa ti Lanot';

  @override
  String get food_daily_target_comparison => 'Panangidilig iti Target';

  @override
  String food_target_label(Object target) {
    return 'Target: $target nga .';
  }

  @override
  String get food_edit_entry => 'Urnosen ti Entry ti Diary';

  @override
  String get food_delete_entry => 'Buraken ti Entry';

  @override
  String food_grams_short(Object grams) {
    return '$grams nga g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal nga kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ti $target ml';
  }

  @override
  String get water_intake_history => 'Dagiti Troso ti Danum ita nga aldaw';

  @override
  String get water_no_logs_today =>
      'Awan pay ti na-log ti danum ita nga aldaw. I-hydrate ken i-tap ti quick add button!';

  @override
  String get water_adjust_goal => 'Baliwan ti Inaldaw a Kalat';

  @override
  String get health_connect_banner => 'Nakonekta iti Health Connect';

  @override
  String get health_vitals_summary => 'Inaldaw a Vital ti Salun-at';

  @override
  String get health_latest_heart_rate => 'Kabarbaro a Panagpitik ti Puso';

  @override
  String get health_latest_bp => 'Presion ti Dara';

  @override
  String get health_latest_spo2 => 'Oksihena ti Dara';

  @override
  String get health_latest_glucose => 'Glucose ti Dara';

  @override
  String get health_latest_weight => 'Timbang';

  @override
  String get health_latest_sleep => 'Kapaut ti Pannaturog';

  @override
  String get health_add_manual => 'Inayon ti Manual a Panangrukod';

  @override
  String get health_history_trends => 'Dagiti Naipakasaritaan nga Uso';

  @override
  String get health_sync_success =>
      'Naballigi ti panag-sync ti datos ti salun-at!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours oras $mins mins';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val nga kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm nga bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % nga .';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic nga mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val nga mg/dL';
  }

  @override
  String get health_devices_title => 'Nakonekta nga Alikamen & Wearables';

  @override
  String get health_devices_desc =>
      'Imanehar dagiti naiparis nga smartwatch, fitness tracker, ken health sensor.';

  @override
  String get health_workout_editor_title => 'I-edit ti Panag-ehersisio';

  @override
  String get health_workout_name_label => 'Nagan ti Panag-workout';

  @override
  String get health_workout_duration_label => 'Kapaut (minuto) .';

  @override
  String get health_workout_calories_label => 'Napattapatta a Kaloria (kcal) .';

  @override
  String get health_workout_date_label => 'Petsa ken Oras';

  @override
  String get plan_daily_wellness_roadmap => 'Ti Naipersonal a Roadmap-mo';

  @override
  String get plan_morning_routine => 'Rutina iti Agsapa';

  @override
  String get plan_afternoon_routine => 'Kinasalun-at iti Tengnga ti Aldaw';

  @override
  String get plan_evening_routine => 'Malem Angin-Panagbaba';

  @override
  String get plan_coach_badge => 'Bloomi AI nga Coach';

  @override
  String get plan_weekly_overview => '7-Aldaw a Pokus ti Kinasalun-at';

  @override
  String get plan_targets_title => 'Target & Kalat ti Pagimbagan';

  @override
  String get plan_calorie_budget_label => 'Inaldaw a Badyet ti Calorie';

  @override
  String get plan_water_budget_label => 'Inaldaw a Target ti Danum';

  @override
  String get plan_step_budget_label => 'Inaldaw nga Addang a Kalat';

  @override
  String get plan_macro_split_label => 'Ratio ti Makronutriente';

  @override
  String get profile_personal_details => 'Personal a Detalye';

  @override
  String get profile_body_stats => 'Dagiti Rukod ti Bagi';

  @override
  String get profile_app_preferences =>
      'Dagiti Kaykayat & Dagiti Setting ti App';

  @override
  String get profile_edit_name_hint => 'Ti naganmo';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Katayag ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Timbang ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Edad';

  @override
  String get profile_gender_male => 'Lalaki';

  @override
  String get profile_gender_female => 'Babai';

  @override
  String get profile_gender_other => 'Sabali / Kaykayat a saan nga ibaga';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Bassit wenno awan ti ehersisio) .';

  @override
  String get profile_activity_light =>
      'Nalag-an nga Aktibo (1-3 nga aldaw/lawas) .';

  @override
  String get profile_activity_moderate =>
      'Kalkalainganna nga Aktibo (3-5 nga aldaw/lawas) .';

  @override
  String get profile_activity_very => 'Aktibo unay (6-7 nga aldaw/lawas)';

  @override
  String get settings_wear_os_header => 'Isuot ti OS a Kaduana nga App';

  @override
  String get settings_wear_os_desc =>
      'Ikabil ti Bloomi tile ken komplikasion iti Wear OS watch-mo tapno agsiput kadagiti calorie, danum, ken addang.';

  @override
  String get settings_widgets_header => 'Interaktibo nga Android Widgets';

  @override
  String get settings_widgets_desc =>
      'I-pin dagiti real-time widget iti home screen ti device-mo para kadagiti dagus nga update.';

  @override
  String get settings_about_header => 'Maipapan ken ni Bloomi';

  @override
  String get settings_about_version => 'Bersion 1.0.0';

  @override
  String get settings_about_build => 'Mangbangon iti 100';

  @override
  String get settings_about_credits =>
      'Naaramid buyogen ti panangaywan iti nainsiriban, nasalun-at a panagbiag.';

  @override
  String get settings_terms_header => 'Dagiti Kondision ken Kondision';

  @override
  String get settings_privacy_header => 'Pagannurotan iti Kinapribado';

  @override
  String get settings_delete_header => 'Buraken ti Kuenta & Datos';

  @override
  String get settings_delete_warning =>
      'Saan a mabaliwan daytoy nga aramid. Permanente a ma-delete amin a taraon, workout, vitals, ken profile-mo.';

  @override
  String get settings_delete_confirm_btn => 'Permanente nga I-delete';

  @override
  String get onboard_welcome_headline => 'Maikablaawkayo iti Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Naalumamay, nainsiriban a panangsurot iti salun-at a nadisenio iti aglawlaw ti biagmo.';

  @override
  String get onboard_step_about => 'Maipapan Kenka';

  @override
  String get onboard_step_goals => 'Dagiti Kalatmo';

  @override
  String get onboard_step_lifestyle => 'Inaldaw nga Ugali';

  @override
  String get onboard_step_permissions => 'Dagiti Pammalubos';

  @override
  String get onboard_step_plan => 'Nakasagana!';

  @override
  String get onboard_health_connect_perm => 'Salun-at a Panagkonekta ti Access';

  @override
  String get onboard_step_sensors_perm => 'Sensor ti Kontador ti Addang';

  @override
  String get onboard_notif_perm => 'Dagiti Napanunot a Palagip & Pakaammo';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Scanner ti Taraon) .';

  @override
  String get onboard_grant_permissions => 'Mangted kadagiti Pammalubos';

  @override
  String get onboard_continue_dashboard => 'Luktan ti Dashboard';

  @override
  String get notif_channel_hydration_name => 'Dagiti Nudges ti Hydration';

  @override
  String get notif_channel_hydration_desc =>
      'Naalumamay a palagip ti danum iti intero nga aldaw';

  @override
  String get notif_channel_nutrition_name => 'Palagip ti Pannangan & Nutrision';

  @override
  String get notif_channel_nutrition_desc =>
      'Dagiti alerto a mangipalagip iti pammigat, pangngaldaw, ken pangrabii';

  @override
  String get notif_channel_steps_name => 'Dagiti Addang a Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Rambak no maragpat dagiti inaldaw nga addang a target';

  @override
  String get notif_channel_vitals_name => 'Panagsukimat ti Salun-at & Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Palagip ti wind-down ti timbang ken sakbay ti pannaturog';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze ti 15m';

  @override
  String get notif_action_log_meal => '🥗 Pannangan iti Log';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
