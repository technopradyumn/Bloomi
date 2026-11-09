// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cebuano (`ceb`).
class AppLocalizationsCeb extends AppLocalizations {
  AppLocalizationsCeb([String locale = 'ceb']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Balay';

  @override
  String get nav_today => 'Karon';

  @override
  String get nav_plan => 'Plano';

  @override
  String get nav_food => 'Pagkaon';

  @override
  String get nav_food_diary => 'Diary sa Pagkaon';

  @override
  String get nav_workout => 'Log sa Pag-ehersisyo';

  @override
  String get nav_health => 'Panglawas';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Tipigi';

  @override
  String get cancel => 'Pagkanselar';

  @override
  String get delete => 'Pagtangtang';

  @override
  String get edit => 'Edit';

  @override
  String get done => 'Nahuman na';

  @override
  String get close => 'Duol';

  @override
  String get back => 'Balik';

  @override
  String get next => 'Sunod';

  @override
  String get continue_btn => 'Padayon';

  @override
  String get confirm => 'Confirm';

  @override
  String get search => 'Pangitaa';

  @override
  String get filter => 'Pagsala';

  @override
  String get all => 'Tanan';

  @override
  String get active => 'Aktibo';

  @override
  String get today => 'Karon';

  @override
  String get yesterday => 'Kagahapon';

  @override
  String get tomorrow => 'Ugma';

  @override
  String get add => 'Idugang';

  @override
  String get remove => 'Kuhaa';

  @override
  String get refresh => 'I-refresh';

  @override
  String get retry => 'Sulayi pag-usab';

  @override
  String get error => 'Sayop';

  @override
  String get success => 'Kalampusan';

  @override
  String get loading => 'Nagkarga...';

  @override
  String get no_data => 'Walay datos nga magamit';

  @override
  String get offline => 'Offline nga Mode';

  @override
  String get offline_sub =>
      'Ang mga pagbag-o mag-sync sa higayon nga makonektar pag-usab';

  @override
  String get undo => 'I-undo';

  @override
  String get portion => 'Porsyon';

  @override
  String get quantity => 'Kadaghanon';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Klaro';

  @override
  String get select => 'Pagpili';

  @override
  String get apply => 'Pag-aplay';

  @override
  String get reset => 'I-reset';

  @override
  String get ok => 'OK ra';

  @override
  String get yes => 'Oo';

  @override
  String get no => 'Dili';

  @override
  String get optional => 'Opsyonal';

  @override
  String get calories => 'Kaloriya';

  @override
  String get protein => 'Protina';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Tambok';

  @override
  String get fiber => 'lanot';

  @override
  String get water => 'Tubig';

  @override
  String get steps => 'Mga lakang';

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
  String get inches => 'sa';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'oras';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Pag-alagad';

  @override
  String get servings => 'Mga pag-alagad';

  @override
  String get serving_size => 'Gidak-on sa Pag-alagad';

  @override
  String get per_100g => 'kada 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Tungang Sidlakan';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'America';

  @override
  String get home_title => 'Balay';

  @override
  String get home_greeting_morning => 'Maayong Buntag';

  @override
  String get home_greeting_afternoon => 'Maayong hapon';

  @override
  String get home_greeting_evening => 'Maayong Gabie';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka adlaw nga sunodsunod',
      one: '1 ka adlaw nga streak',
      zero: '0 ka adlaw nga sunodsunod',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Nasunog';

  @override
  String get home_calories_budget => 'Kaloriya nga Badyet';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ang nahabilin';
  }

  @override
  String get home_water_title => 'Adlaw-adlaw nga Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Mga Lakang Naglakaw';

  @override
  String get home_quick_actions => 'Dali nga mga Aksyon';

  @override
  String get home_log_meal => 'Pagkaon sa Log';

  @override
  String get home_log_water => 'Tubig nga Log';

  @override
  String get home_log_workout => 'Pag-ehersisyo sa Log';

  @override
  String get home_log_weight => 'Timbang sa Log';

  @override
  String get home_insights_title => 'Karon nga Insights';

  @override
  String get home_quote =>
      'Ang gagmay nga himsog nga mga kapilian nagmugna sa mga pagbag-o sa bulak.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Kalibutan ug Hangin';

  @override
  String get home_notifications => 'Mga pahibalo';

  @override
  String get home_daily_score => 'Daily Wellness Score';

  @override
  String get home_view_all => 'Tan-awa Tanan';

  @override
  String get food_diary_title => 'Diary sa Pagkaon';

  @override
  String get food_breakfast => 'Pamahaw';

  @override
  String get food_lunch => 'Paniudto';

  @override
  String get food_dinner => 'Panihapon';

  @override
  String get food_snacks => 'Mga meryenda';

  @override
  String get food_add_food => 'Idugang ang Pagkaon';

  @override
  String get food_edit_food => 'I-edit ang Pagkaon';

  @override
  String get food_add_breakfast => 'Idugang ang Pamahaw';

  @override
  String get food_add_lunch => 'Idugang ang Paniudto';

  @override
  String get food_add_dinner => 'Idugang ang Panihapon';

  @override
  String get food_add_snack => 'Idugang ang Snack';

  @override
  String get food_total_calories => 'Kinatibuk-ang Kaloriya';

  @override
  String get food_empty_meal =>
      'Wala pa\'y mga pagkaon nga natala para sa kini nga pagkaon';

  @override
  String get food_empty_diary =>
      'Walay mga pagkaon nga natala alang niining adlawa';

  @override
  String get food_log_first_meal =>
      'I-tap ang + aron ma-log ang imong unang lamian nga pagkaon';

  @override
  String get food_quick_add => 'Dali nga Pagdugang';

  @override
  String get food_search_hint => 'Pangitag putahe, prutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom nga Pagkaon ug Resipe';

  @override
  String get food_scan_barcode => 'I-scan ang Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Bag-ong mga Pagkaon';

  @override
  String get food_favourites => 'Mga paborito';

  @override
  String get food_macro_summary => 'Pagkaguba sa Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Sigurado ka ba nga gusto nimong tangtangon kini nga butang?';

  @override
  String get food_item_deleted => 'Gikuha ang pagkaon';

  @override
  String get food_remaining => 'nahibilin';

  @override
  String get food_consumed => 'konsumo';

  @override
  String food_of_target(Object target) {
    return 'sa $target kcal';
  }

  @override
  String get foodSearch_title => 'Pangitaa ang mga Pagkaon';

  @override
  String get foodSearch_scan_barcode => 'I-scan ang Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food nga Litrato';

  @override
  String get foodSearch_custom_food => 'Paghimo og Custom nga Pagkaon';

  @override
  String get foodSearch_recent_searches => 'Bag-ong mga Pagpangita';

  @override
  String get foodSearch_popular => 'Popular nga mga putahe';

  @override
  String get foodSearch_no_results =>
      'Walay mga pagkaon nga motakdo sa imong pagpangita';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'I-align ang barcode sulod sa frame sa camera';

  @override
  String get barcode_not_found => 'Ang produkto wala makita sa database';

  @override
  String get barcode_premium_feature =>
      'Ang pag-scan sa barcode magamit sa Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint =>
      'Pagkuha og tin-aw nga litrato sa imong pinggan';

  @override
  String get camera_analysing => 'Pag-analisar sa plato sa pagkaon...';

  @override
  String get camera_detected => 'Namatikdan nga mga butang';

  @override
  String get camera_flash => 'I-toggle ang Flash';

  @override
  String get camera_retake => 'Kuhaa pag-usab ang Litrato';

  @override
  String get camera_confirm_food => 'Kumpirma ang mga butang';

  @override
  String get customFood_title => 'Custom nga Pagkaon ug Resipe';

  @override
  String get customFood_name_hint => 'Ngalan sa pinggan o sangkap';

  @override
  String get customFood_calories_hint => 'Kaloriya (kcal)';

  @override
  String get customFood_protein_hint => 'Protina (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Tambok (g)';

  @override
  String get customFood_save => 'I-save ang Recipe';

  @override
  String get water_tracker_title => 'Pagsubay sa Tubig';

  @override
  String get water_daily_target => 'Adlaw-adlaw nga Hydration Goal';

  @override
  String get water_logged_today => 'Naka-log Karon';

  @override
  String get water_add_glass => '+ 250 ml nga baso';

  @override
  String get water_add_bottle => '+ 500 ml nga botelya';

  @override
  String get water_custom_amount => 'Custom nga kantidad';

  @override
  String get water_reminder_tip =>
      'Pag-inom og tubig kanunay sa tibuok adlaw alang sa makanunayon nga kusog.';

  @override
  String water_logged_toast(Object amount) {
    return 'Naka-log $amount ml sa tubig 💧';
  }

  @override
  String get workout_title => 'Log sa Pag-ehersisyo';

  @override
  String get workout_add_exercise => 'Idugang ang Pag-ehersisyo';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Kusog';

  @override
  String get workout_yoga => 'Yoga ug Flexibility';

  @override
  String get workout_duration => 'Gidugayon';

  @override
  String get workout_intensity => 'Intensity';

  @override
  String get workout_calories_burned => 'Gisunog ang mga Kaloriya';

  @override
  String get workout_empty => 'Walay workouts nga na-log karon';

  @override
  String get workout_save_success => 'Malampuson nga na-save ang workout!';

  @override
  String get workout_type => 'Uri sa Pag-ehersisyo';

  @override
  String get workout_notes => 'Mga Mubo nga sulat & Mga Pamalandong';

  @override
  String get health_overview_title => 'Panglawas ug Panglawas';

  @override
  String get health_heart_rate => 'Pinili sa Kasingkasing';

  @override
  String get health_blood_oxygen => 'Oxygen sa Dugo (SpO2)';

  @override
  String get health_blood_pressure => 'Presyon sa Dugo';

  @override
  String get health_blood_glucose => 'Glucose sa dugo';

  @override
  String get health_body_temperature => 'Temperatura sa Lawas';

  @override
  String get health_sleep_tracking => 'Pagsubay sa Pagkatulog';

  @override
  String get health_weight_tracking => 'Timbang ug Komposisyon sa Lawas';

  @override
  String get health_waist_hip => 'Waist-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Mga Device ug Smartwatch Hub';

  @override
  String get health_sync_now => 'I-sync ang Data sa Panglawas';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Katapusan nga gi-sync: $time';
  }

  @override
  String get health_manual_entry => 'Manwal nga Pagsulod sa Panglawas';

  @override
  String get health_metric_detail => 'Mga Detalye sa Sukatan';

  @override
  String get health_connected_sensors =>
      'Konektado nga mga Sensor sa Panglawas';

  @override
  String get plan_title => 'Adlaw-adlaw nga Plano';

  @override
  String get plan_weekly_title => 'Senemanang Plano sa Kaayohan';

  @override
  String get plan_calorie_target => 'Kaloriya nga Target';

  @override
  String get plan_water_target => 'Target sa Hydration';

  @override
  String get plan_step_target => 'Lakang Target';

  @override
  String get plan_sleep_target => 'Target sa Pagkatulog';

  @override
  String get plan_meal_suggestions => 'Mga Sugyot sa Pagkaon';

  @override
  String get plan_healthy_habits => 'Himsog nga Kinaiya ug Tip';

  @override
  String get plan_coach_advice => 'Mga Rekomendasyon sa Bloomi AI Coach';

  @override
  String get plan_generated_title => 'Personal nga Adlaw-adlaw nga Iskedyul';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Usba ang Profile';

  @override
  String get profile_name => 'Ngalan';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Gender';

  @override
  String get profile_height => 'Gitas-on';

  @override
  String get profile_weight => 'Timbang';

  @override
  String get profile_goal => 'Panguna nga Tumong';

  @override
  String get profile_activity_level => 'Antas sa Kalihokan';

  @override
  String get profile_stats => 'Akong Wellness Stats';

  @override
  String get profile_saved => 'Malampusong na-update ang profile';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Membership';

  @override
  String get settings => 'Mga setting';

  @override
  String get preferences_habits => 'MGA PREPERENSYA UG MGA HABIS';

  @override
  String get appearance_theme => 'Panagway ug Tema';

  @override
  String get appearance_theme_sub =>
      'Ngitngit, Kahayag, System Mode ug Mga Opsyon sa Background sa App';

  @override
  String get permissions => 'Mga Permiso ug Pag-access sa Sistema';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'Mga Pahinumdom & Mga Pahibalo';

  @override
  String get reminders_sub =>
      'Mga oras sa pagpangaon, tubig, check-in sa timbang ug mga pahinumdom sa oras sa pagtulog';

  @override
  String get units_of_measurement => 'Mga Yunit sa Pagsukod';

  @override
  String get units_sub =>
      'Sukatan (kg, cm, ml, km) o Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Pinulongan sa App';

  @override
  String get language_sub =>
      'English, हिन्दी (Hindi), Hinglish & 195+ ka global nga mga pinulongan';

  @override
  String get home_screen_widgets => 'Mga Widget sa Home Screen';

  @override
  String get widgets_sub =>
      'Live nga mga widget sa Android: Hub, Lakang, Tubig, Nutrisyon ug Mascot';

  @override
  String get wear_os_watch_app => 'Pagsul-ob sa OS Watch App';

  @override
  String get wear_os_sub =>
      'Kauban sa Smartwatch, mga tile, komplikasyon ug mga buhi nga vital';

  @override
  String get goals_wellness => 'MGA TUMONG UG WELLNESS INSIGHTS';

  @override
  String get nutrition_targets => 'Mga Target sa Nutrisyon ug Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie target, protina, carbs, tambok ug tubig nga tumong';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-adlaw nga calorie average, macro ratio & labing maayo nga adlaw';

  @override
  String get streaks_milestones => 'Mga Streak ug Milestones';

  @override
  String get streaks_sub => 'Aktibo nga blossom streaks, badge & achievements';

  @override
  String get connected_devices => 'KONEKTADO NGA MGA DEVICES UG ECOSYSTEM';

  @override
  String get devices_hub => 'Mga Device ug Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Kalibutan ug Panahon';

  @override
  String get surroundings_sub =>
      'Ang kalidad sa hangin (AQI), indeks sa UV ug mga tip sa hydration sa panahon';

  @override
  String get bloomi_pro => 'Suskrisyon sa Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 ka home screen widgets ug vitals tracking';

  @override
  String get about_security => 'MAHITUNGOD & SEGURIDAD';

  @override
  String get about_bloomi => 'Mahitungod sa Bloomi';

  @override
  String get about_bloomi_sub =>
      'Pagtukod og mga detalye, bersyon, mga attribution';

  @override
  String get privacy_policy => 'Patakaran sa Pagkapribado';

  @override
  String get privacy_policy_sub =>
      'Offline-una, on-device nga arkitektura sa datos';

  @override
  String get terms_conditions => 'Mga Termino ug Kondisyon';

  @override
  String get terms_conditions_sub =>
      'Mga termino sa serbisyo ug mga giya sa kahimsog';

  @override
  String get delete_account => 'Pagtangtang sa Account ug Data';

  @override
  String get delete_account_sub =>
      'Dili mabalik nga papason ang lokal nga datos sa SQLite ug mga backup sa panganod';

  @override
  String get healthy_habits =>
      'Pagtukod og malumo, malungtaron nga mga batasan sa kahimsog';

  @override
  String get all_logs => 'Akong Gisubay nga Data ug Log';

  @override
  String get search_language =>
      'Pangita pinaagi sa pinulongan o lumad nga script...';

  @override
  String get languages_available => 'Mga Pinulongan Anaa';

  @override
  String get no_matching_languages =>
      'Walay katugbang nga mga pinulongan nga nakit-an';

  @override
  String get try_searching =>
      'Sulayi pagpangita pinaagi sa lumad nga script o English spelling';

  @override
  String get partially_translated => 'Partially gihubad';

  @override
  String get complete_translation => 'Kompleto';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Pinulongan gitakda sa $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Kalibutan ug Kalibutan';

  @override
  String get surroundings_aqi => 'Index sa Kalidad sa Hangin';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Humidity';

  @override
  String get surroundings_hydration_advice =>
      'Pagpabiling maayo nga hydrated sa kasamtangang kahimtang sa panahon.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Pangitag Pagkaon';

  @override
  String get food_quick_barcode => 'I-scan ang Barcode 👑';

  @override
  String get food_quick_water => 'Idugang ang Tubig';

  @override
  String get food_quick_custom => 'Custom nga Pagkaon';

  @override
  String get surroundings_good => 'Maayo';

  @override
  String get surroundings_moderate => 'Kasarangan';

  @override
  String get surroundings_unhealthy => 'Dili himsog';

  @override
  String get notifications_title => 'Mga Notipikasyon ug Alerto';

  @override
  String get notifications_empty => 'Walay bag-ong mga pahibalo';

  @override
  String get notifications_mark_read => 'Markahi ang Tanan nga Gibasa';

  @override
  String get notifications_clear => 'Klaro ang Tanan';

  @override
  String get reminders => 'Mga Setting sa Pahinumdom';

  @override
  String get notifications => 'Mga pahibalo';

  @override
  String get reminders_breakfast_title => 'Pahinumdom sa pamahaw 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Maayong buntag! Panahon na alang sa usa ka makapasustansya nga pamahaw sa $time .';
  }

  @override
  String get reminders_lunch_title => 'Pahinumdom sa Paniudto 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Hunong ug pahimusli ang balanse, mahunahunaon nga paniudto sa $time .';
  }

  @override
  String get reminders_dinner_title => 'Pahinumdom sa Panihapon 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Panahon sa usa ka gaan, makapatagbaw nga panihapon sa $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Panahon na sa pag-inom ug lab-as nga baso nga tubig! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Senemanang Timbang-timbang ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Pagsubay sa imong senemanang sukod sa lawas sa Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Hangtud sa Pagkatulog 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Pahawa ug pangandam alang sa usa ka malinawon nga pagkatulog ( $time ).';
  }

  @override
  String get onboard_welcome => 'Welcome sa Bloomi';

  @override
  String get onboard_sub =>
      'Ang imong mahigalaon, offline-una nga kauban sa kahimsog ug nutrisyon.';

  @override
  String get onboard_get_started => 'Pagsugod';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'Laktaw';

  @override
  String get onboard_choose_goal =>
      'Unsa ang imong panguna nga katuyoan sa kahimsog?';

  @override
  String get onboard_goal_weight_loss => 'Malumo nga Pagkawala sa Timbang';

  @override
  String get onboard_goal_muscle => 'Pagbaton ug Kalig-on sa Kaunuran';

  @override
  String get onboard_goal_energy => 'Adlaw-adlaw nga Enerhiya ug Kalagsik';

  @override
  String get onboard_goal_habits => 'Healthy Mindful nga Pagkaon';

  @override
  String get onboard_about_you =>
      'Sultihi Kami Mahitungod sa Imong Kaugalingon';

  @override
  String get onboard_lifestyle => 'Imong Adlaw-adlaw nga Routine';

  @override
  String get onboard_permissions_title =>
      'Mga Permiso ug Pag-access sa Sistema';

  @override
  String get onboard_permissions_sub =>
      'Hatagi og access sa mga lakang sa pag-sync, pag-ehersisyo, ug mga pahinumdom.';

  @override
  String get onboard_plan_ready_title => 'Andam na ang Imong Custom nga Plano!';

  @override
  String get onboard_plan_ready_sub =>
      'Naghimo kami usa ka malumo, personal nga nutrisyon ug mapa sa kahimsog alang lang kanimo.';

  @override
  String get onboard_enter_bloomi => 'Pagsulod sa Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Labing Maayong Adlaw sa Pagkakonsistent: $day';
  }

  @override
  String get insights_streaks_badges => 'Mga Streak ug Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Giablihan sa $date';
  }

  @override
  String get insights_keep_going => 'Ipadayon ang talagsaong pag-uswag!';

  @override
  String get widgets_title => 'Mga Widget sa Home Screen';

  @override
  String widgets_active_count(Object count) {
    return 'Aktibo nga mga Widget: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Mga Lakang ug Aktibo nga Singsing';

  @override
  String get widgets_water_title => 'Dali nga Log sa Hydration';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Kauban';

  @override
  String get wear_os_title => 'Pagsul-ob sa OS Smartwatch';

  @override
  String get wear_os_connected => 'Konektado sa Pagtan-aw';

  @override
  String get wear_os_sync => 'I-sync ang Data sa Pagtan-aw';

  @override
  String get theme_title => 'Panagway ug Tema';

  @override
  String get theme_mode => 'Mode sa Tema';

  @override
  String get theme_light => 'Kahayag';

  @override
  String get theme_dark => 'Ngitngit';

  @override
  String get theme_system => 'Default sa Sistema';

  @override
  String get theme_background_palette => 'Paleta sa Background';

  @override
  String get units_title => 'Mga Yunit sa Pagsukod';

  @override
  String get units_metric => 'Sukatan (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Dili ma-load ang dashboard';

  @override
  String get home_health_permission_req =>
      'Kinahanglan ang Permiso sa Pagkonektar sa Panglawas';

  @override
  String get home_health_permission_desc =>
      'Nanginahanglan ang Bloomi og pagtugot sa Health Connect aron makuha ang tinuud nga mga lakang, rate sa kasingkasing, ug pag-sync sa mga widget sa mobile home sa tinuud nga oras.';

  @override
  String get home_allow_health => 'Tugoti ang Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Andam na alang sa usa ka mahunahunaon nga adlaw? ✨';

  @override
  String get home_quick_add => 'Dali nga Pagdugang';

  @override
  String get home_live_gps => 'Live nga GPS';

  @override
  String get home_calories_remaining_label => 'NAGPABILIN ANG KALORI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Gikaon: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Pag-tap para sa Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Naabot ang adlaw-adlaw nga tumong 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml sa adlaw-adlaw nga tumong';
  }

  @override
  String get home_details => 'Mga Detalye';

  @override
  String get home_upgrade_plan_desc =>
      'Pag-upgrade aron maablihan ang personal nga adlaw-adlaw nga target ug plano sa AI';

  @override
  String get home_unlock => 'Unlock 👑';

  @override
  String get home_quick_log_hint =>
      'Pagrekord dayon sa usa ka entry sa kahimsog';

  @override
  String get food_serving_size => 'Gidak-on sa Pag-alagad';

  @override
  String get food_serving_grams => 'Pag-alagad (g)';

  @override
  String get food_number_servings => 'Gidaghanon sa Pag-alagad';

  @override
  String get food_calories_per_serving => 'Kaloriya kada pag-alagad';

  @override
  String get food_recipe_ingredients => 'Mga sangkap';

  @override
  String get food_recipe_add_ingredient => 'Idugang ang Ingredient';

  @override
  String get food_recipe_directions => 'Mga Instruksyon & Nota';

  @override
  String get food_recipe_total => 'Kinatibuk-ang Recipe Nutrisyon';

  @override
  String get food_recipe_per_serving => 'Kada Pag-alagad sa Nutrisyon';

  @override
  String get food_recipe_saved_toast =>
      'Malampuson nga natipig ang custom nga pagkaon!';

  @override
  String get food_barcode_found => 'Nakaplagan ang Produkto!';

  @override
  String get food_barcode_not_found_desc =>
      'Dili namo makit-an kining barcode sa open database. Mahimo nimong idugang kini ingon usa ka naandan nga pagkaon.';

  @override
  String get food_add_custom_btn => 'Idugang ang Custom nga Pagkaon';

  @override
  String get food_scan_again => 'I-scan Pag-usab';

  @override
  String get food_review_items => 'Ribyuha ang Namatikdan nga Pagkaon';

  @override
  String get food_review_hint =>
      'I-adjust ang gidaghanon o kuhaa ang bisan unsang wala mailhi nga butang';

  @override
  String get food_log_selected => 'Log Pinili nga Pagkaon';

  @override
  String get food_favourites_title => 'Paboritong Pagkaon';

  @override
  String get food_recent_title => 'Bag-ong mga Pagkaon';

  @override
  String get food_no_favourites =>
      'Wala pay paborito nga mga pagkaon. Pag-tap sa kasingkasing sa bisan unsang pagkaon aron matipigan dinhi.';

  @override
  String get food_no_recents =>
      'Walay nakit-an nga mga pagkaon nga bag-o lang na-log.';

  @override
  String get food_nutrition_details_title =>
      'Mga Detalye sa Adlaw-adlaw nga Nutrisyon';

  @override
  String get food_macro_protein_label => 'Pagkaguba sa Protina';

  @override
  String get food_macro_carbs_label => 'Pagkaguba sa Carbs';

  @override
  String get food_macro_fat_label => 'Pagkabungkag sa Tambok';

  @override
  String get food_macro_fiber_label => 'Pagkaguba sa Fiber';

  @override
  String get food_daily_target_comparison => 'Target nga Pagtandi';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'I-edit ang Entry sa Diary';

  @override
  String get food_delete_entry => 'Pagtangtang sa Entry';

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
    return '$current sa $target ml';
  }

  @override
  String get water_intake_history => 'Karong Tubig Logs';

  @override
  String get water_no_logs_today =>
      'Wala pay tubig nga na-log karon. Pag-hydrate ug pag-tap sa usa ka dali nga add button!';

  @override
  String get water_adjust_goal => 'Ipasibo ang Adlaw-adlaw nga Tumong';

  @override
  String get health_connect_banner => 'Konektado sa Health Connect';

  @override
  String get health_vitals_summary => 'Adlaw-adlaw nga Panglawas sa Panglawas';

  @override
  String get health_latest_heart_rate => 'Pinakabag-o nga Piso sa Kasingkasing';

  @override
  String get health_latest_bp => 'Presyon sa Dugo';

  @override
  String get health_latest_spo2 => 'Oxygen sa Dugo';

  @override
  String get health_latest_glucose => 'Glucose sa dugo';

  @override
  String get health_latest_weight => 'Timbang';

  @override
  String get health_latest_sleep => 'Gidugayon sa Pagkatulog';

  @override
  String get health_add_manual => 'Idugang ang Manwal nga Pagsukod';

  @override
  String get health_history_trends => 'Mga Trend sa Kasaysayan';

  @override
  String get health_sync_success =>
      'Malampuson nga na-sync ang datos sa kahimsog!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ka oras $mins ka minuto';
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
  String get health_devices_title => 'Konektado nga mga Device ug Masul-ob';

  @override
  String get health_devices_desc =>
      'Pagdumala sa gipares nga mga smartwatch, fitness tracker, ug health sensor.';

  @override
  String get health_workout_editor_title => 'I-edit ang Pag-ehersisyo';

  @override
  String get health_workout_name_label => 'Ngalan sa Pag-ehersisyo';

  @override
  String get health_workout_duration_label => 'Gidugayon (minuto)';

  @override
  String get health_workout_calories_label => 'Gibanabana nga Kaloriya (kcal)';

  @override
  String get health_workout_date_label => 'Petsa ug Oras';

  @override
  String get plan_daily_wellness_roadmap => 'Ang imong Personalized Roadmap';

  @override
  String get plan_morning_routine => 'Routine sa buntag';

  @override
  String get plan_afternoon_routine => 'Kaayohan sa Udto';

  @override
  String get plan_evening_routine => 'Gabii nga Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Day Wellness Focus';

  @override
  String get plan_targets_title => 'Mga Target ug Tumong sa Kaayohan';

  @override
  String get plan_calorie_budget_label => 'Adlaw-adlaw nga Kaloriya nga Badyet';

  @override
  String get plan_water_budget_label => 'Adlaw-adlaw nga Target sa Tubig';

  @override
  String get plan_step_budget_label => 'Adlaw-adlaw nga Lakang nga Tumong';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Personal nga mga Detalye';

  @override
  String get profile_body_stats => 'Mga Pagsukod sa Lawas';

  @override
  String get profile_app_preferences => 'Mga Kagustuhan ug Mga Setting sa App';

  @override
  String get profile_edit_name_hint => 'imong ngalan';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Taas ( $unit )';
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
  String get profile_gender_female => 'Babaye';

  @override
  String get profile_gender_other => 'Uban pa / Mas gusto nga dili isulti';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Gamay o walay ehersisyo)';

  @override
  String get profile_activity_light => 'Gaan nga Aktibo (1-3 ka adlaw/semana)';

  @override
  String get profile_activity_moderate =>
      'Moderately Aktibo (3-5 ka adlaw/semana)';

  @override
  String get profile_activity_very => 'Aktibo kaayo (6-7 ka adlaw/semana)';

  @override
  String get settings_wear_os_header => 'Pagsul-ob sa OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'I-install ang Bloomi tile ug komplikasyon sa imong Wear OS nga relo aron tan-awon ang mga kaloriya, tubig, ug mga lakang.';

  @override
  String get settings_widgets_header => 'Interactive nga Android Widgets';

  @override
  String get settings_widgets_desc =>
      'I-pin ang real-time nga mga widget sa home screen sa imong device para sa instant updates.';

  @override
  String get settings_about_header => 'Mahitungod sa Bloomi';

  @override
  String get settings_about_version => 'Bersyon 1.0.0';

  @override
  String get settings_about_build => 'Pagtukod 100';

  @override
  String get settings_about_credits =>
      'Gihimo uban ang pag-atiman alang sa mahunahunaon, himsog nga pagkinabuhi.';

  @override
  String get settings_terms_header => 'Mga Termino ug Kondisyon';

  @override
  String get settings_privacy_header => 'Patakaran sa Pagkapribado';

  @override
  String get settings_delete_header => 'Pagtangtang sa Account ug Data';

  @override
  String get settings_delete_warning =>
      'Kini nga aksyon dili mabawi. Ang tanan nimong pagkaon, ehersisyo, vitals, ug profile permanenteng mapapas.';

  @override
  String get settings_delete_confirm_btn => 'Permanente nga Pagtangtang';

  @override
  String get onboard_welcome_headline => 'Welcome sa Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Ang malumo, mahunahunaon nga pagsubay sa kahimsog gidisenyo sa imong kinabuhi.';

  @override
  String get onboard_step_about => 'Mahitungod kanimo';

  @override
  String get onboard_step_goals => 'Imong mga Tumong';

  @override
  String get onboard_step_lifestyle => 'Adlaw-adlaw nga Kinaiya';

  @override
  String get onboard_step_permissions => 'Mga permiso';

  @override
  String get onboard_step_plan => 'Andam na!';

  @override
  String get onboard_health_connect_perm => 'Pag-access sa Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Lakang nga Counter Sensor';

  @override
  String get onboard_notif_perm =>
      'Mahunahunaon nga mga Pahinumdom & Mga Pahibalo';

  @override
  String get onboard_camera_perm => 'Camera (Barcode ug Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Ihatag ang mga Permiso';

  @override
  String get onboard_continue_dashboard => 'Ablihi ang Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Mga pahinumdom sa malumo nga tubig sa tibuok adlaw';

  @override
  String get notif_channel_nutrition_name =>
      'Mga Pahinumdom sa Pagkaon ug Nutrisyon';

  @override
  String get notif_channel_nutrition_desc =>
      'Mga alerto sa pahinumdom sa pamahaw, paniudto, ug panihapon';

  @override
  String get notif_channel_steps_name => 'Mga Milestone sa Lakang';

  @override
  String get notif_channel_steps_desc =>
      'Mga selebrasyon kung maabot ang adlaw-adlaw nga mga target nga lakang';

  @override
  String get notif_channel_vitals_name => 'Mga Pagsusi sa Panglawas ug Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Mga pahinumdom sa gibug-aton ug oras sa pagtulog';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Pag-snooze 15m';

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
