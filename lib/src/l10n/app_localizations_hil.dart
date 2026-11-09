// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hiligaynon (`hil`).
class AppLocalizationsHil extends AppLocalizations {
  AppLocalizationsHil([String locale = 'hil']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Puluy-an';

  @override
  String get nav_today => 'Subong nga adlaw';

  @override
  String get nav_plan => 'Plano';

  @override
  String get nav_food => 'Pagkaon';

  @override
  String get nav_food_diary => 'Diary sang Pagkaon';

  @override
  String get nav_workout => 'Log sang Pag-ehersisyo';

  @override
  String get nav_health => 'Panglawas';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Luwasa';

  @override
  String get cancel => 'Kanselahon';

  @override
  String get delete => 'Panason';

  @override
  String get edit => 'I-edit';

  @override
  String get done => 'Tapos na';

  @override
  String get close => 'Magsira';

  @override
  String get back => 'Balik';

  @override
  String get next => 'Masunod';

  @override
  String get continue_btn => 'Padayon';

  @override
  String get confirm => 'Kumpirmahi';

  @override
  String get search => 'Pangitaa';

  @override
  String get filter => 'Pagsala';

  @override
  String get all => 'Tanan';

  @override
  String get active => 'Aktibo';

  @override
  String get today => 'Subong nga adlaw';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get tomorrow => 'Buwas';

  @override
  String get add => 'Idugang';

  @override
  String get remove => 'Kuhaa';

  @override
  String get refresh => 'I-refresh';

  @override
  String get retry => 'Tilawi liwat';

  @override
  String get error => 'Sayop';

  @override
  String get success => 'Kadalag-an';

  @override
  String get loading => 'Nagakarga...';

  @override
  String get no_data => 'Wala sing datos nga magamit';

  @override
  String get offline => 'Offline Mode';

  @override
  String get offline_sub => 'Ang mga pagbag-o maga-sync kon makonektar liwat';

  @override
  String get undo => 'I-undo';

  @override
  String get portion => 'Porsyon';

  @override
  String get quantity => 'Kadamuon';

  @override
  String get unit => 'Yunit';

  @override
  String get clear => 'Tin-aw';

  @override
  String get select => 'Pilia';

  @override
  String get apply => 'Mag-apply';

  @override
  String get reset => 'I-reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Huo';

  @override
  String get no => 'Indi';

  @override
  String get optional => 'Opsyonal';

  @override
  String get calories => 'Mga Kaloriya';

  @override
  String get protein => 'Protina';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Tambok';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Tubig';

  @override
  String get steps => 'Mga tikang';

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
  String get minutes => 'mins';

  @override
  String get serving => 'Pag-alagad';

  @override
  String get servings => 'Mga Serbisyon';

  @override
  String get serving_size => 'Kadakuon sang Pag-alagad';

  @override
  String get per_100g => 'kada 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Natung-an nga Sidlangan';

  @override
  String get africa => 'Aprika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Puluy-an';

  @override
  String get home_greeting_morning => 'Maayong Aga';

  @override
  String get home_greeting_afternoon => 'Maayong Hapon';

  @override
  String get home_greeting_evening => 'Maayong Gab-i';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka adlaw nga sunod-sunod',
      one: '1 ka adlaw nga streak',
      zero: '0 ka adlaw nga sunod-sunod',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Nasunog';

  @override
  String get home_calories_budget => 'Badyet sa Kaloriya';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal nga nabilin';
  }

  @override
  String get home_water_title => 'Adlaw-adlaw nga Pag-inom';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Mga Tikang nga Ginlakat';

  @override
  String get home_quick_actions => 'Madasig nga mga Aksyon';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Tubig';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Mga Panan-awan Subong nga Adlaw';

  @override
  String get home_quote =>
      'Ang magagmay nga makapapagros nga mga pagpili nagahimo sang nagauswag nga mga pagbag-o.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Palibot kag Hangin';

  @override
  String get home_notifications => 'Mga abiso';

  @override
  String get home_daily_score => 'Adlaw-adlaw nga Iskor sa Kaayuhan';

  @override
  String get home_view_all => 'Tan-awa ang Tanan';

  @override
  String get food_diary_title => 'Diary sang Pagkaon';

  @override
  String get food_breakfast => 'Pamahaw';

  @override
  String get food_lunch => 'Paniudto';

  @override
  String get food_dinner => 'Panihapon';

  @override
  String get food_snacks => 'Mga meryenda';

  @override
  String get food_add_food => 'Magdugang sang Pagkaon';

  @override
  String get food_edit_food => 'I-edit ang Pagkaon';

  @override
  String get food_add_breakfast => 'Idugang ang Pamahaw';

  @override
  String get food_add_lunch => 'Idugang ang Paniudto';

  @override
  String get food_add_dinner => 'Idugang ang Panihapon';

  @override
  String get food_add_snack => 'Magdugang sang Meryenda';

  @override
  String get food_total_calories => 'Kabug-usan nga Kaloriya';

  @override
  String get food_empty_meal =>
      'Wala pa sang mga pagkaon nga na-log para sa sini nga pagkaon';

  @override
  String get food_empty_diary =>
      'Wala sang pagkaon nga na-log para sa sini nga adlaw';

  @override
  String get food_log_first_meal =>
      'I-tap ang + para ma-log ang imo una nga manamit nga pagkaon';

  @override
  String get food_quick_add => 'Madasig nga Pagdugang';

  @override
  String get food_search_hint =>
      'Pangitaa ang mga putahe, prutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom nga Pagkaon kag Resipe';

  @override
  String get food_scan_barcode => 'I-scan ang Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Bag-o nga mga Pagkaon';

  @override
  String get food_favourites => 'Mga paborito';

  @override
  String get food_macro_summary => 'Pagbungkag sang Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Sigurado ka bala nga gusto mo kuhaon ini nga butang?';

  @override
  String get food_item_deleted => 'Ginkuha ang pagkaon';

  @override
  String get food_remaining => 'nabilin';

  @override
  String get food_consumed => 'gin-ubos';

  @override
  String food_of_target(Object target) {
    return 'sang $target kcal';
  }

  @override
  String get foodSearch_title => 'Pangitaa ang mga Pagkaon';

  @override
  String get foodSearch_scan_barcode => 'I-scan ang Barcode';

  @override
  String get foodSearch_take_photo => 'Kuhaa ang Litrato sang Pagkaon';

  @override
  String get foodSearch_custom_food => 'Maghimo sang Custom nga Pagkaon';

  @override
  String get foodSearch_recent_searches => 'Mga Bag-o nga Pagpangita';

  @override
  String get foodSearch_popular => 'Mga Popular nga Pinggan';

  @override
  String get foodSearch_no_results =>
      'Wala sing pagkaon nga nagahisanto sa imo pagpangita';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align =>
      'I-align ang barcode sa sulod sang frame sang kamera';

  @override
  String get barcode_not_found => 'Ang produkto wala makita sa database';

  @override
  String get barcode_premium_feature =>
      'Ang pag-scan sang barcode magamit sa Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint =>
      'Magkuha sang maathag nga litrato sang imo putahe';

  @override
  String get camera_analysing => 'Pag-analisar sang plato sang pagkaon...';

  @override
  String get camera_detected => 'Natukiban nga mga butang';

  @override
  String get camera_flash => 'I-toggle ang Flash';

  @override
  String get camera_retake => 'Kuhaa liwat ang litrato';

  @override
  String get camera_confirm_food => 'Kumpirmahi ang mga Butang';

  @override
  String get customFood_title => 'Custom nga Pagkaon kag Resipe';

  @override
  String get customFood_name_hint => 'Ngalan sang pinggan ukon sangkap';

  @override
  String get customFood_calories_hint => 'Mga kaloriya (kcal)';

  @override
  String get customFood_protein_hint => 'Protina (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Tambok (g)';

  @override
  String get customFood_save => 'Luwasa ang Resipe';

  @override
  String get water_tracker_title => 'Water Tracker';

  @override
  String get water_daily_target => 'Adlaw-adlaw nga Tumong sa Pag-inom';

  @override
  String get water_logged_today => 'Gin-log subong nga adlaw';

  @override
  String get water_add_glass => '+250 ml nga Baso';

  @override
  String get water_add_bottle => '+500 ml Botelya';

  @override
  String get water_custom_amount => 'Custom nga Kantidad';

  @override
  String get water_reminder_tip =>
      'Mag-inom sing tubig sing regular sa bug-os nga adlaw para sa tayuyon nga enerhiya.';

  @override
  String water_logged_toast(Object amount) {
    return 'Naka-log $amount ml sang tubig 💧';
  }

  @override
  String get workout_title => 'Log sang Pag-ehersisyo';

  @override
  String get workout_add_exercise => 'Idugang ang Pag-ehersisyo';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Kusog';

  @override
  String get workout_yoga => 'Yoga kag Pagka-flexible';

  @override
  String get workout_duration => 'Kalawigon';

  @override
  String get workout_intensity => 'Intensidad';

  @override
  String get workout_calories_burned => 'Mga Kaloriya nga Nasunog';

  @override
  String get workout_empty =>
      'Wala sang mga ehersisyo nga na-log subong nga adlaw';

  @override
  String get workout_save_success =>
      'Madinalag-on nga naluwas ang pag-ehersisyo!';

  @override
  String get workout_type => 'Sahi sang Pag-ehersisyo';

  @override
  String get workout_notes => 'Mga Tala kag mga Pamalandong';

  @override
  String get health_overview_title => 'Panglawas kag mga Importante';

  @override
  String get health_heart_rate => 'Kadasig sang Tagipusuon';

  @override
  String get health_blood_oxygen => 'Oksiheno sa Dugo (SpO2)';

  @override
  String get health_blood_pressure => 'Presyon sang Dugo';

  @override
  String get health_blood_glucose => 'Glucose sa Dugo';

  @override
  String get health_body_temperature => 'Temperatura sang Lawas';

  @override
  String get health_sleep_tracking => 'Pagsubaybay sa Pagtulog';

  @override
  String get health_weight_tracking => 'Timbang kag Komposisyon sang Lawas';

  @override
  String get health_waist_hip => 'Ratio sang Hawak-sa-Hip';

  @override
  String get health_devices_hub => 'Mga gamit kag Smartwatch Hub';

  @override
  String get health_sync_now => 'I-sync ang Data sa Panglawas';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Katapusan nga gin-sync: $time';
  }

  @override
  String get health_manual_entry => 'Manwal nga Pagsulod sa Panglawas';

  @override
  String get health_metric_detail => 'Mga Detalye sang Metric';

  @override
  String get health_connected_sensors =>
      'Mga Konektado nga Sensor sa Panglawas';

  @override
  String get plan_title => 'Adlaw-adlaw nga Plano';

  @override
  String get plan_weekly_title => 'Semana nga Plano sa Kaayohan';

  @override
  String get plan_calorie_target => 'Target sang Kaloriya';

  @override
  String get plan_water_target => 'Target sa Hydration';

  @override
  String get plan_step_target => 'Lakang nga Target';

  @override
  String get plan_sleep_target => 'Target sa Pagtulog';

  @override
  String get plan_meal_suggestions => 'Mga Suhestyon sa Pagkaon';

  @override
  String get plan_healthy_habits => 'Mapagros nga mga Pamatasan kag mga Tip';

  @override
  String get plan_coach_advice => 'Mga Rekomendasyon sang Bloomi AI Coach';

  @override
  String get plan_generated_title =>
      'Personalized nga Adlaw-adlaw nga Iskedyul';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'I-edit ang Profile';

  @override
  String get profile_name => 'Ngalan';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Gender';

  @override
  String get profile_height => 'Kataason';

  @override
  String get profile_weight => 'Timbang';

  @override
  String get profile_goal => 'Panguna nga Tulumuron';

  @override
  String get profile_activity_level => 'Lebel sang Hilikuton';

  @override
  String get profile_stats => 'Ang Akon mga Estadistika sa Kaayuhan';

  @override
  String get profile_saved => 'Madinalag-on nga gin-update ang profile';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Pagkamiyembro';

  @override
  String get settings => 'Mga setting';

  @override
  String get preferences_habits => 'MGA GUSTO KAG MGA BATASAN';

  @override
  String get appearance_theme => 'Hitsura kag Tema';

  @override
  String get appearance_theme_sub =>
      'Madulom, Masanag, Mode sang Sistema kag mga Opsyon sa Background sang App';

  @override
  String get permissions => 'Mga Pagtugot kag Pag-access sa Sistema';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'Mga Pahanumdom kag mga Pahibalo';

  @override
  String get reminders_sub =>
      'Mga oras sang pagkaon, tubig, pag-usisa sang kabug-aton kag mga pahanumdom sa tion sang pagtulog';

  @override
  String get units_of_measurement => 'Mga Yunit sang Pagtakus';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) ukon Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Lenguahe sang App';

  @override
  String get language_sub =>
      'Ingles, हिन्दी (Hindi), Hinglish kag 195+ ka pangkalibutanon nga mga lenguahe';

  @override
  String get home_screen_widgets => 'Mga Widget sa Home Screen';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch nga kaupod, mga baldosa, mga komplikasyon kag mga buhi nga vitals';

  @override
  String get goals_wellness => 'MGA TUYO KAG MGA PAGPANGITA SANG KAAYUHAN';

  @override
  String get nutrition_targets => 'Mga Target sa Nutrisyon kag Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Target sang kaloriya, protina, karbohidrato, tambok kag tubig nga katuyuan';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-adlaw nga average nga kaloriya, macro ratio & pinakamaayo nga adlaw';

  @override
  String get streaks_milestones => 'Mga streak kag milestones';

  @override
  String get streaks_sub =>
      'Aktibo nga mga streak sang bulak, mga badge kag mga kadalag-an';

  @override
  String get connected_devices => 'MGA KONEKTADO NGA MGA DEVICES KAG ECOSYSTEM';

  @override
  String get devices_hub => 'Mga gamit kag Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Palibot kag Panahon';

  @override
  String get surroundings_sub =>
      'Kalidad sang hangin (AQI), UV index & mga tip sa hydration sang panahon';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 home screen widgets & vitals tracking';

  @override
  String get about_security => 'PARTE KAG SEGURIDAD';

  @override
  String get about_bloomi => 'Parte kay Bloomi';

  @override
  String get about_bloomi_sub =>
      'Mga detalye sa pagtukod, bersyon, mga attribusyon';

  @override
  String get privacy_policy => 'Patakaran sa Pagkapribado';

  @override
  String get privacy_policy_sub =>
      'Offline-una, on-device nga arkitektura sang datos';

  @override
  String get terms_conditions => 'Mga Termino kag Kondisyon';

  @override
  String get terms_conditions_sub =>
      'Mga termino sang serbisyo kag mga pagsulundan sa ikaayong lawas';

  @override
  String get delete_account => 'Panason ang Account kag Data';

  @override
  String get delete_account_sub =>
      'Indi na mabalik nga panason ang lokal nga datos sang SQLite kag mga backup sa panganod';

  @override
  String get healthy_habits =>
      'Magtukod sang malulo, nagadugay nga mga batasan sa ikaayong lawas';

  @override
  String get all_logs => 'Ang Akon Ginsubaybayan nga Data kag mga Log';

  @override
  String get search_language =>
      'Pangitaa paagi sa lenguahe ukon tumandok nga sulat...';

  @override
  String get languages_available => 'Mga Lenguahe nga Magamit';

  @override
  String get no_matching_languages =>
      'Wala sing nakita nga nagakaigo nga mga lenguahe';

  @override
  String get try_searching =>
      'Tilawi ang pagpangita paagi sa tumandok nga script ukon Ingles nga spelling';

  @override
  String get partially_translated => 'Ginbadbad sing bahin';

  @override
  String get complete_translation => 'Kompleto';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ang lenguahe ginbutang sa $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Palibot kag Palibot';

  @override
  String get surroundings_aqi => 'Indeks sang Kalidad sang Hangin';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Humidity';

  @override
  String get surroundings_hydration_advice =>
      'Magpabilin nga hydrated sa karon nga kondisyon sa panahon.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Pangitaa ang Pagkaon';

  @override
  String get food_quick_barcode => 'I-scan ang Barcode 👑';

  @override
  String get food_quick_water => 'Magdugang sang Tubig';

  @override
  String get food_quick_custom => 'Custom nga Pagkaon';

  @override
  String get surroundings_good => 'Maayo';

  @override
  String get surroundings_moderate => 'Kasarangan';

  @override
  String get surroundings_unhealthy => 'Indi makapapagros';

  @override
  String get notifications_title => 'Mga Pahibalo kag mga Alerto';

  @override
  String get notifications_empty => 'Wala sing bag-o nga mga abiso';

  @override
  String get notifications_mark_read => 'Markahi ang Tanan nga Nabasa';

  @override
  String get notifications_clear => 'Tinluan ang Tanan';

  @override
  String get reminders => 'Mga Setting sang Pahanumdom';

  @override
  String get notifications => 'Mga abiso';

  @override
  String get reminders_breakfast_title => 'Pahanumdom sa Pamahaw 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Maayong aga! Tion para sa isa ka masustansia nga pamahaw sa $time .';
  }

  @override
  String get reminders_lunch_title => 'Pahanumdom sa Paniudto 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Magdulog kag mag-enjoy sang balanse, mahunahunaon nga paniudto sa $time .';
  }

  @override
  String get reminders_dinner_title => 'Pahanumdom sa Panihapon 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tion na para sa isa ka mamag-an, makapakunyag nga panihapon sa $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tion na nga mag-inom sang isa ka preska nga baso sang tubig! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Semana nga Pagtimbang ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Sunda ang imo semanal nga mga metrics sang lawas sa Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Bedtime Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Magrelaks kag maghanda para sa isa ka makapahuway nga pagtulog ( $time ).';
  }

  @override
  String get onboard_welcome => 'Welcome sa Bloomi';

  @override
  String get onboard_sub =>
      'Ang imo mainabyanon, offline-una nga kaupod sa ikaayong lawas kag nutrisyon.';

  @override
  String get onboard_get_started => 'Magsugod';

  @override
  String get onboard_sign_in => 'Mag-sign In';

  @override
  String get onboard_skip => 'Laktawan';

  @override
  String get onboard_choose_goal =>
      'Ano ang imo panguna nga katuyuan sa ikaayong lawas?';

  @override
  String get onboard_goal_weight_loss => 'Mahinay nga Pagbuhin sang Timbang';

  @override
  String get onboard_goal_muscle => 'Pag-uswag kag Kusog sang Maskulo';

  @override
  String get onboard_goal_energy => 'Adlaw-adlaw nga Enerhiya kag Kapagsik';

  @override
  String get onboard_goal_habits => 'Mapagros nga Pagkaon nga Mahunahunaon';

  @override
  String get onboard_about_you => 'Sugiri Kami Parte sa Imo Kaugalingon';

  @override
  String get onboard_lifestyle => 'Ang Imo Adlaw-adlaw nga Rutina';

  @override
  String get onboard_permissions_title =>
      'Mga Pagtugot kag Pag-access sa Sistema';

  @override
  String get onboard_permissions_sub =>
      'Hatagi sing access sa mga tikang sa pag-sync, mga ehersisyo, kag mga pahanumdom.';

  @override
  String get onboard_plan_ready_title => 'Handa na ang imo Custom nga Plano!';

  @override
  String get onboard_plan_ready_sub =>
      'Naghimo kami sang isa ka malulo, personal nga nutrisyon kag roadmap sang kaayuhan para lang sa imo.';

  @override
  String get onboard_enter_bloomi => 'Pagsulod sa Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Pinakamaayo nga Adlaw sang Pagkamakanunayon: $day';
  }

  @override
  String get insights_streaks_badges => 'Mga streak kag milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Gin-unlock sa $date';
  }

  @override
  String get insights_keep_going => 'Padayon sa makahalawhaw nga pag-uswag!';

  @override
  String get widgets_title => 'Mga Widget sa Home Screen';

  @override
  String widgets_active_count(Object count) {
    return 'Aktibo nga mga Widget: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Mga tikang kag aktibo nga singsing';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Magsuksok sang OS Smartwatch';

  @override
  String get wear_os_connected => 'Konektado sa Watch';

  @override
  String get wear_os_sync => 'I-sync ang Data sang Watch';

  @override
  String get theme_title => 'Hitsura kag Tema';

  @override
  String get theme_mode => 'Mode sang Tema';

  @override
  String get theme_light => 'Kasanag';

  @override
  String get theme_dark => 'Madulom';

  @override
  String get theme_system => 'Default sang Sistema';

  @override
  String get theme_background_palette => 'Background Palette';

  @override
  String get units_title => 'Mga Yunit sang Pagtakus';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Indi maka-load sang dashboard';

  @override
  String get home_health_permission_req =>
      'Kinahanglan ang Pagtugot sa Health Connect';

  @override
  String get home_health_permission_desc =>
      'Ang Bloomi nagakinahanglan sang pahanugot sang Health Connect sa pagguyod sang matuod nga mga tikang, kadasigon sang tagipusuon, kag pag-sync sang mga widget sang mobile home sa matuod nga tion.';

  @override
  String get home_allow_health => 'Tuguti ang Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Handa na bala para sa isa ka mahunahunaon nga adlaw? ✨';

  @override
  String get home_quick_add => 'Madasig nga Pagdugang';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORIYA NGA NAHABILIN';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ginkaon: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Gripo para sa Tracker sang Tubig 💧';

  @override
  String get home_water_goal_reached =>
      'Adlaw-adlaw nga katuyuan nga nalab-ot 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml sa adlaw-adlaw nga katuyuan';
  }

  @override
  String get home_details => 'Mga detalye';

  @override
  String get home_upgrade_plan_desc =>
      'Mag-upgrade para ma-unlock ang personal nga mga target sa adlaw-adlaw kag plano sa AI';

  @override
  String get home_unlock => 'I-unlock 👑';

  @override
  String get home_quick_log_hint =>
      'Madasig nga irekord ang isa ka entry sa ikaayong lawas';

  @override
  String get food_serving_size => 'Kadakuon sang Pag-alagad';

  @override
  String get food_serving_grams => 'Pag-alagad (g)';

  @override
  String get food_number_servings => 'Numero sang Pag-alagad';

  @override
  String get food_calories_per_serving => 'Mga kaloriya kada pag-alagad';

  @override
  String get food_recipe_ingredients => 'Mga sangkap';

  @override
  String get food_recipe_add_ingredient => 'Idugang ang Sangkap';

  @override
  String get food_recipe_directions => 'Mga Instruksyon kag mga Tala';

  @override
  String get food_recipe_total => 'Kabug-usan nga Nutrisyon sang Resipe';

  @override
  String get food_recipe_per_serving => 'Kada Pag-alagad sa Nutrisyon';

  @override
  String get food_recipe_saved_toast =>
      'Madinalag-on nga naluwas ang custom nga pagkaon!';

  @override
  String get food_barcode_found => 'Nakita ang Produkto!';

  @override
  String get food_barcode_not_found_desc =>
      'Wala namon makita ini nga barcode sa bukas nga database. Mahimo mo ini idugang bilang isa ka pinasahi nga pagkaon.';

  @override
  String get food_add_custom_btn => 'Magdugang sang Custom nga Pagkaon';

  @override
  String get food_scan_again => 'I-scan Liwat';

  @override
  String get food_review_items => 'Repasuha ang mga Natukiban nga Pagkaon';

  @override
  String get food_review_hint =>
      'I-adjust ang kadamuon ukon kuhaa ang bisan ano nga wala makilala nga butang';

  @override
  String get food_log_selected => 'I-log ang mga Pinili nga Pagkaon';

  @override
  String get food_favourites_title => 'Paborito nga mga Pagkaon';

  @override
  String get food_recent_title => 'Bag-o nga mga Pagkaon';

  @override
  String get food_no_favourites =>
      'Wala pa sang paborito nga mga pagkaon. I-tap ang tagipusuon sa bisan ano nga pagkaon nga makatipid diri.';

  @override
  String get food_no_recents =>
      'Walay nakit-an nga mga pagkaon nga bag-o lang na-log.';

  @override
  String get food_nutrition_details_title =>
      'Mga Detalye sa Adlaw-adlaw nga Nutrisyon';

  @override
  String get food_macro_protein_label => 'Pagbungkag sang Protina';

  @override
  String get food_macro_carbs_label => 'Pagbungkag sang Carbs';

  @override
  String get food_macro_fat_label => 'Pagbungkag sang Tambok';

  @override
  String get food_macro_fiber_label => 'Pagkaguba sang Fiber';

  @override
  String get food_daily_target_comparison => 'Pagpaanggid sang Target';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'I-edit ang Diary Entry';

  @override
  String get food_delete_entry => 'Panason ang Entry';

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
    return '$current sang $target ml';
  }

  @override
  String get water_intake_history => 'Mga Log sang Tubig Subong nga Adlaw';

  @override
  String get water_no_logs_today =>
      'Wala pa sang tubig nga na-log subong nga adlaw. Mag-hydrate kag mag-tap sang quick add button!';

  @override
  String get water_adjust_goal => 'I-adjust ang Adlaw-adlaw nga Tulumuron';

  @override
  String get health_connect_banner => 'Konektado sa Health Connect';

  @override
  String get health_vitals_summary => 'Adlaw-adlaw nga Importante sa Panglawas';

  @override
  String get health_latest_heart_rate => 'Pinakabag-o nga Heart Rate';

  @override
  String get health_latest_bp => 'Presyon sang Dugo';

  @override
  String get health_latest_spo2 => 'Oksiheno sa Dugo';

  @override
  String get health_latest_glucose => 'Glucose sa Dugo';

  @override
  String get health_latest_weight => 'Timbang';

  @override
  String get health_latest_sleep => 'Kalawigon sang Pagtulog';

  @override
  String get health_add_manual => 'Idugang ang Manwal nga Pagsukol';

  @override
  String get health_history_trends => 'Mga Uso sa Kasaysayan';

  @override
  String get health_sync_success =>
      'Madinalag-on nga na-sync ang datos sa ikaayong lawas!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours hrs $mins mins';
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
      'Mga Konektado nga mga Device kag mga Wearables';

  @override
  String get health_devices_desc =>
      'Dumalaha ang mga ginpares nga smartwatch, mga fitness tracker, kag mga sensor sa ikaayong lawas.';

  @override
  String get health_workout_editor_title => 'I-edit ang Pag-ehersisyo';

  @override
  String get health_workout_name_label => 'Ngalan sang Pag-ehersisyo';

  @override
  String get health_workout_duration_label => 'Kalawigon (mga minuto)';

  @override
  String get health_workout_calories_label =>
      'Ginabulubanta nga mga Kaloriya (kcal)';

  @override
  String get health_workout_date_label => 'Petsa kag Oras';

  @override
  String get plan_daily_wellness_roadmap => 'Ang Imo Personalized Roadmap';

  @override
  String get plan_morning_routine => 'Rutina sa Aga';

  @override
  String get plan_afternoon_routine => 'Kaayuhan sa Udto';

  @override
  String get plan_evening_routine => 'Hangin sa gab-i';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Adlaw nga Pagtutok sa Kaayuhan';

  @override
  String get plan_targets_title => 'Mga Target kag Tulumuron sa Kaayohan';

  @override
  String get plan_calorie_budget_label => 'Adlaw-adlaw nga Badyet sa Kaloriya';

  @override
  String get plan_water_budget_label => 'Adlaw-adlaw nga Target sang Tubig';

  @override
  String get plan_step_budget_label => 'Adlaw-adlaw nga Tikang nga Tulumuron';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Personal nga mga Detalye';

  @override
  String get profile_body_stats => 'Mga Sukol sang Lawas';

  @override
  String get profile_app_preferences => 'Mga Gusto kag Mga Setting sang App';

  @override
  String get profile_edit_name_hint => 'Ang imo ngalan';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Kataason ( $unit )';
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
  String get profile_gender_other => 'Ang iban / Mas gusto nga indi magsiling';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Diutay ukon wala sing ehersisyo)';

  @override
  String get profile_activity_light =>
      'Magaan nga Aktibo (1-3 ka adlaw/semana)';

  @override
  String get profile_activity_moderate =>
      'Kasarangan nga Aktibo (3-5 ka adlaw/semana)';

  @override
  String get profile_activity_very => 'Aktibo gid (6-7 ka adlaw/semana)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Ibutang ang Bloomi tile kag komplikasyon sa imo Wear OS nga relo sa pagtan-aw sa mga kaloriya, tubig, kag mga tikang.';

  @override
  String get settings_widgets_header => 'Interactive Android Widgets';

  @override
  String get settings_widgets_desc =>
      'I-pin ang mga real-time widget sa home screen sang imo device para sa gilayon nga mga update.';

  @override
  String get settings_about_header => 'Parte kay Bloomi';

  @override
  String get settings_about_version => 'Bersyon 1.0.0';

  @override
  String get settings_about_build => 'Magtukod sang 100';

  @override
  String get settings_about_credits =>
      'Ginhimo nga may pag-atipan para sa mahunahunaon, mapagros nga pagkabuhi.';

  @override
  String get settings_terms_header => 'Mga Termino kag Kondisyon';

  @override
  String get settings_privacy_header => 'Patakaran sa Pagkapribado';

  @override
  String get settings_delete_header => 'Panason ang Account kag Data';

  @override
  String get settings_delete_warning =>
      'Ini nga aksyon indi na mahimo. Ang tanan mo nga pagkaon, ehersisyo, vitals, kag profile pagadulaon sing permanente.';

  @override
  String get settings_delete_confirm_btn => 'Permanente nga Panason';

  @override
  String get onboard_welcome_headline => 'Welcome sa Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Ang malulo, mahunahunaon nga pagsubaybay sa kaayuhan nga gindesinyo sa palibot sang imo kabuhi.';

  @override
  String get onboard_step_about => 'Parte sa Imo';

  @override
  String get onboard_step_goals => 'Ang Imo mga Tulumuron';

  @override
  String get onboard_step_lifestyle => 'Adlaw-adlaw nga mga Batasan';

  @override
  String get onboard_step_permissions => 'Mga pagtugot';

  @override
  String get onboard_step_plan => 'Handa na!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm =>
      'Mahunahunaon nga mga Pahanumdom kag mga Pahibalo';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Ihatag ang mga Pagtugot';

  @override
  String get onboard_continue_dashboard => 'Buksi ang Dashboard';

  @override
  String get notif_channel_hydration_name => 'Mga Pag-ipit sa Pag-inom';

  @override
  String get notif_channel_hydration_desc =>
      'Mahinay nga mga pahanumdom sa tubig sa bug-os nga adlaw';

  @override
  String get notif_channel_nutrition_name =>
      'Mga Pahanumdom sa Pagkaon kag Nutrisyon';

  @override
  String get notif_channel_nutrition_desc =>
      'Mga alerto sa pahanumdom sa pamahaw, paniudto, kag panihapon';

  @override
  String get notif_channel_steps_name => 'Mga Milestone sang Tikang';

  @override
  String get notif_channel_steps_desc =>
      'Mga selebrasyon kon malab-ot ang mga target sa adlaw-adlaw nga tikang';

  @override
  String get notif_channel_vitals_name =>
      'Mga Pag-usisa sa Panglawas kag Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Mga pahanumdom sa pag-untat sang kabug-aton kag oras sang pagtulog';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Magtulog 15m';

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
