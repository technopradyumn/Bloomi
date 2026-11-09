// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Central Bikol (`bcl`).
class AppLocalizationsBcl extends AppLocalizations {
  AppLocalizationsBcl([String locale = 'bcl']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Harong';

  @override
  String get nav_today => 'Ngonyan';

  @override
  String get nav_plan => 'Plano';

  @override
  String get nav_food => 'Pagkakan';

  @override
  String get nav_food_diary => 'Diary nin Pagkakan';

  @override
  String get nav_workout => 'Log nin Pag-ehersisyo';

  @override
  String get nav_health => 'Salud';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'I-save';

  @override
  String get cancel => 'Kanselaron';

  @override
  String get delete => 'Buraon';

  @override
  String get edit => 'I-edit';

  @override
  String get done => 'Tapos na';

  @override
  String get close => 'Isara';

  @override
  String get back => 'Balik';

  @override
  String get next => 'Sunod';

  @override
  String get continue_btn => 'Padagos';

  @override
  String get confirm => 'Kumpirmaron';

  @override
  String get search => 'Hanapon';

  @override
  String get filter => 'Salaan';

  @override
  String get all => 'Gabos';

  @override
  String get active => 'Aktibo';

  @override
  String get today => 'Ngonyan';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get tomorrow => 'Saaga';

  @override
  String get add => 'Dagdagan';

  @override
  String get remove => 'Haleon';

  @override
  String get refresh => 'I-refresh';

  @override
  String get retry => 'Probaran giraray';

  @override
  String get error => 'Sala';

  @override
  String get success => 'Kapangganahan';

  @override
  String get loading => 'Nagkarga...';

  @override
  String get no_data => 'Mayo nin datos na makukua';

  @override
  String get offline => 'Offline Mode';

  @override
  String get offline_sub => 'An mga pagbabago ma-sync kun maikonektar giraray';

  @override
  String get undo => 'Ibalik';

  @override
  String get portion => 'Porsyon';

  @override
  String get quantity => 'Daghan';

  @override
  String get unit => 'Yunit';

  @override
  String get clear => 'Malinaw';

  @override
  String get select => 'Pilion';

  @override
  String get apply => 'Mag-aplay';

  @override
  String get reset => 'I-reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Iyo';

  @override
  String get no => 'Dai';

  @override
  String get optional => 'Opsyonal';

  @override
  String get calories => 'Mga Kaloriya';

  @override
  String get protein => 'Protina';

  @override
  String get carbs => 'Mga karbohidrato';

  @override
  String get fat => 'Mataba';

  @override
  String get fiber => 'Hibla';

  @override
  String get water => 'Tubig';

  @override
  String get steps => 'Mga lakdang';

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
  String get serving => 'Paglingkod';

  @override
  String get servings => 'Mga Serving';

  @override
  String get serving_size => 'Sukol nin Pagserbi';

  @override
  String get per_100g => 'kada 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Tahaw na Sirangan';

  @override
  String get africa => 'Aprika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Harong';

  @override
  String get home_greeting_morning => 'Marhay na Aga';

  @override
  String get home_greeting_afternoon => 'Marhay na Hapon';

  @override
  String get home_greeting_evening => 'Marhay na Banggi';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aldaw na sunod-sunod',
      one: '1 aldaw na sunod-sunod',
      zero: '0 aldaw na sunod-sunod',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Nasulo';

  @override
  String get home_calories_budget => 'Badyet sa Kaloriya';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal na natatada';
  }

  @override
  String get home_water_title => 'Aroaldaw na Pagpatubig';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Mga Lakdang na Lakaw';

  @override
  String get home_quick_actions => 'Marikas na mga Aksyon';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Tubig sa Troso';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Timbang kan Troso';

  @override
  String get home_insights_title => 'Mga Pananaw Ngonyan';

  @override
  String get home_quote =>
      'An saradit na marahay na mga pagpili naggigibo nin nagbuburak na mga pagbabago.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Palibot asin Hangin';

  @override
  String get home_notifications => 'Mga Abiso';

  @override
  String get home_daily_score => 'Aroaldaw na Iskor sa Karahayan';

  @override
  String get home_view_all => 'Hilingon an Gabos';

  @override
  String get food_diary_title => 'Diary nin Pagkakan';

  @override
  String get food_breakfast => 'Pamahaw';

  @override
  String get food_lunch => 'Pangudtohan';

  @override
  String get food_dinner => 'Pamanggihan';

  @override
  String get food_snacks => 'Mga meryenda';

  @override
  String get food_add_food => 'Magdagdag nin Kakanon';

  @override
  String get food_edit_food => 'I-edit an Pagkakan';

  @override
  String get food_add_breakfast => 'Dagdagan nin Pamahaw';

  @override
  String get food_add_lunch => 'Dagdagan nin Pangudtohan';

  @override
  String get food_add_dinner => 'Dagdagan nin Pamanggihan';

  @override
  String get food_add_snack => 'Magdagdag nin Meryenda';

  @override
  String get food_total_calories => 'Total na Kaloriya';

  @override
  String get food_empty_meal =>
      'Mayo pang mga kakanon na naka-log para sa pagkakan na ini';

  @override
  String get food_empty_diary =>
      'Mayo nin mga pagkakan na naitala para sa aldaw na ini';

  @override
  String get food_log_first_meal =>
      'I-tap an + tanganing i-log an saimong enot na masiram na pagkakan';

  @override
  String get food_quick_add => 'Marikas na Pagdagdag';

  @override
  String get food_search_hint => 'Hanapon an mga putahe, prutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Pasadyang Pagkakan asin Resipe';

  @override
  String get food_scan_barcode => 'I-scan an Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Mga Bagong Kakanon';

  @override
  String get food_favourites => 'Mga Paborito';

  @override
  String get food_macro_summary => 'Pagkabaranga kan Makronutriente';

  @override
  String get food_delete_meal_confirm =>
      'Sigurado ka daw na gusto mong haleon an bagay na ini?';

  @override
  String get food_item_deleted => 'Hinale an kakanon';

  @override
  String get food_remaining => 'natatada';

  @override
  String get food_consumed => 'naubos';

  @override
  String food_of_target(Object target) {
    return 'nin $target kcal';
  }

  @override
  String get foodSearch_title => 'Maghanap nin mga Kakanon';

  @override
  String get foodSearch_scan_barcode => 'I-scan an Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Magmukna nin Pasadyang Pagkakan';

  @override
  String get foodSearch_recent_searches => 'Mga Bagong Paghanap';

  @override
  String get foodSearch_popular => 'Mga Popular na Putahe';

  @override
  String get foodSearch_no_results =>
      'Mayo nin mga kakanon na nakakatugma sa saimong hinahanap';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'I-align an barcode sa laog kan frame kan kamera';

  @override
  String get barcode_not_found => 'Dai nakua an produkto sa database';

  @override
  String get barcode_premium_feature =>
      'An pag-scan kan barcode makukua sa Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint =>
      'Magkua nin malinaw na retrato kan saimong putahe';

  @override
  String get camera_analysing => 'Pag-analisar kan plato nin kakanon...';

  @override
  String get camera_detected => 'Mga nadetektar na bagay';

  @override
  String get camera_flash => 'I-Toggle an Flash';

  @override
  String get camera_retake => 'Kuanon giraray an retrato';

  @override
  String get camera_confirm_food => 'Kumpirmaron an mga Bagay';

  @override
  String get customFood_title => 'Pasadyang Pagkakan asin Resipe';

  @override
  String get customFood_name_hint => 'Pangaran kan putahe o sangkap';

  @override
  String get customFood_calories_hint => 'Mga Kaloriya (kcal)';

  @override
  String get customFood_protein_hint => 'Protina (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Taba (g)';

  @override
  String get customFood_save => 'I-save an Resipe';

  @override
  String get water_tracker_title => 'Parasubaybay nin Tubig';

  @override
  String get water_daily_target => 'Aroaldaw na Pasohan sa Pag-inom nin tubig';

  @override
  String get water_logged_today => 'Naka-log Ngonyan';

  @override
  String get water_add_glass => '+250 ml na Baso';

  @override
  String get water_add_bottle => '+500 ml na Bote';

  @override
  String get water_custom_amount => 'Pasadyang Kantidad';

  @override
  String get water_reminder_tip =>
      'Mag-inom nin tubig nin regular sa bilog na aldaw para sa padagos na enerhiya.';

  @override
  String water_logged_toast(Object amount) {
    return 'Naka-log $amount ml nin tubig 💧';
  }

  @override
  String get workout_title => 'Log nin Pag-ehersisyo';

  @override
  String get workout_add_exercise => 'Magdagdag nin Ehersisyo';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Kusog';

  @override
  String get workout_yoga => 'Yoga asin Pagkamapag-ayon';

  @override
  String get workout_duration => 'Lawig';

  @override
  String get workout_intensity => 'Intensidad';

  @override
  String get workout_calories_burned => 'Mga Kaloriyang Nasulo';

  @override
  String get workout_empty =>
      'Mayo nin mga ehersisyo na naka-log ngonian na aldaw';

  @override
  String get workout_save_success => 'Matrayumpong naligtas an pag-ehersisyo!';

  @override
  String get workout_type => 'Tipo nin Pag-ehersisyo';

  @override
  String get workout_notes => 'Mga Tala asin Paghorop-horop';

  @override
  String get health_overview_title => 'Salud asin Vitals';

  @override
  String get health_heart_rate => 'Rikas kan Puso';

  @override
  String get health_blood_oxygen => 'Oksiheno sa Dugo (SpO2)';

  @override
  String get health_blood_pressure => 'Presyon nin Dugo';

  @override
  String get health_blood_glucose => 'Glucose sa Dugo';

  @override
  String get health_body_temperature => 'Temperatura kan Hawak';

  @override
  String get health_sleep_tracking => 'Pagsubaybay sa Pagturog';

  @override
  String get health_weight_tracking => 'Timbang asin Komposisyon kan Hawak';

  @override
  String get health_waist_hip => 'Ratio kan Habayan-sa-Balakang';

  @override
  String get health_devices_hub => 'Mga aparato asin Smartwatch Hub';

  @override
  String get health_sync_now => 'I-sync an Data sa Salud';

  @override
  String health_last_synced(Object time) {
    return 'Huring na-sync: $time';
  }

  @override
  String get health_manual_entry => 'Manwal na Paglaog sa Salud';

  @override
  String get health_metric_detail => 'Mga Detalye kan Sukat';

  @override
  String get health_connected_sensors => 'Mga Konektadong Sensor sa Salud';

  @override
  String get plan_title => 'Aroaldaw na Plano';

  @override
  String get plan_weekly_title => 'Semanal na Plano sa Karahayan';

  @override
  String get plan_calorie_target => 'Target sa Kaloriya';

  @override
  String get plan_water_target => 'Target sa Pagpatubig';

  @override
  String get plan_step_target => 'Lakdang na Target';

  @override
  String get plan_sleep_target => 'Target sa Pagturog';

  @override
  String get plan_meal_suggestions => 'Mga Suhestiyon sa Pagkakan';

  @override
  String get plan_healthy_habits => 'Mga Marahay na Gawi asin Tip';

  @override
  String get plan_coach_advice => 'Mga Rekomendasyon sa Bloomi AI Coach';

  @override
  String get plan_generated_title => 'Personalized na Aroaldaw na Iskedyul';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'I-edit an Profile';

  @override
  String get profile_name => 'Pangaran';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Gender';

  @override
  String get profile_height => 'Lalangkaw';

  @override
  String get profile_weight => 'Timbang';

  @override
  String get profile_goal => 'Pangenot na Pasohan';

  @override
  String get profile_activity_level => 'Antas nin Aktibidad';

  @override
  String get profile_stats => 'An Sakong mga Estadistika sa Karahayan';

  @override
  String get profile_saved => 'An profile mapangganang na-update';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Pagigin miyembro';

  @override
  String get settings => 'Mga Setting';

  @override
  String get preferences_habits => 'MGA GUSTO ASIN MGA UGALI';

  @override
  String get appearance_theme => 'Itsura asin Tema';

  @override
  String get appearance_theme_sub =>
      'Madiklom, Maliwanag, Mode kan Sistema asin Mga Opsyon sa Likod kan App';

  @override
  String get permissions => 'Mga Pagtugot asin Pag-access sa Sistema';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notipikasyon asin Kamera';

  @override
  String get reminders_notifications => 'Mga Pagirumdom asin mga Abiso';

  @override
  String get reminders_sub =>
      'Mga oras nin pagkakan, tubig, pag-check-in kan timbang asin mga pagirumdom sa oras nin pagturog';

  @override
  String get units_of_measurement => 'Mga Yunit nin Pagsukol';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) o Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Tataramon kan App';

  @override
  String get language_sub =>
      'Ingles, हिन्दी (Hindi), Hinglish asin 195+ na pankinaban na mga tataramon';

  @override
  String get home_screen_widgets => 'Mga Widget sa Home Screen';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Kaiba sa smartwatch, mga baldosa, mga komplikasyon asin mga buhay na vitals';

  @override
  String get goals_wellness => 'MGA TUYO ASIN MGA PANAHON SA KAHULUGAN';

  @override
  String get nutrition_targets =>
      'Mga Target sa Nutrisyon asin Pagbanga kan Makro';

  @override
  String get nutrition_targets_sub =>
      'Target sa kaloriya, protina, karbohidrato, taba asin katuyuhan sa tubig';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-aldaw na average nin kaloriya, macro ratio asin pinakamarahay na aldaw';

  @override
  String get streaks_milestones => 'Mga Guhit asin mga Milestone';

  @override
  String get streaks_sub =>
      'Mga aktibong guhit nin burak, mga badge asin mga naginibohan';

  @override
  String get connected_devices => 'MGA KONEKTAD NA DEVICES ASIN EKOSISTEMA';

  @override
  String get devices_hub => 'Mga aparato asin Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Palibot asin Panahon';

  @override
  String get surroundings_sub =>
      'Kalidad kan aire (AQI), UV index asin mga tip sa pag-inom nin tubig sa panahon';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 home screen widgets & vitals tracking';

  @override
  String get about_security => 'MANUNGOD SA ASIN SEGURIDAD';

  @override
  String get about_bloomi => 'Manungod ki Bloomi';

  @override
  String get about_bloomi_sub =>
      'Mga espesipikasyon sa pagtogdok, bersyon, mga atribusyon';

  @override
  String get privacy_policy => 'Patakaran sa Pribasiya';

  @override
  String get privacy_policy_sub =>
      'Offline-enot, on-device na arkitektura nin datos';

  @override
  String get terms_conditions => 'Mga Termino asin Kondisyon';

  @override
  String get terms_conditions_sub =>
      'Mga termino nin serbisyo asin mga giya sa karahayan';

  @override
  String get delete_account => 'Buraon an Account asin Data';

  @override
  String get delete_account_sub =>
      'Dai na mababawi na paraon an lokal na datos kan SQLite asin mga backup sa panganuron';

  @override
  String get healthy_habits =>
      'Magtogdok nin malumoy, nagdadanay na mga gawi sa ikararahay';

  @override
  String get all_logs => 'An Sakong Nasubaybayan na Datos asin mga Log';

  @override
  String get search_language =>
      'Maghanap sa paagi nin tataramon o katutubong iskrip...';

  @override
  String get languages_available => 'Mga Tataramon na Makukua';

  @override
  String get no_matching_languages =>
      'Mayo nin nakuang magkaparehong tataramon';

  @override
  String get try_searching =>
      'Probaran na maghanap sa katutubong iskrip o sa Ingles na ispeling';

  @override
  String get partially_translated => 'Parsyal na itrinadusir';

  @override
  String get complete_translation => 'Kumpleto';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'An tataramon itinalaga sa $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Palibot asin Kapalibutan';

  @override
  String get surroundings_aqi => 'Indeks nin Kalidad kan Hangin';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Kahamutan';

  @override
  String get surroundings_hydration_advice =>
      'Magdanay na hydrated sa presenteng kamugtakan kan panahon.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Maghanap nin Kakanon';

  @override
  String get food_quick_barcode => 'I-scan an Barcode 👑';

  @override
  String get food_quick_water => 'Magdagdag nin Tubig';

  @override
  String get food_quick_custom => 'Pasadya na Pagkakan';

  @override
  String get surroundings_good => 'Marahay';

  @override
  String get surroundings_moderate => 'Katamtaman';

  @override
  String get surroundings_unhealthy => 'Bakong marahay sa salud';

  @override
  String get notifications_title => 'Mga Notipikasyon asin Alerto';

  @override
  String get notifications_empty => 'Mayo nin bagong mga abiso';

  @override
  String get notifications_mark_read => 'Markahan an Gabos bilang Nabasa';

  @override
  String get notifications_clear => 'Linigon an Gabos';

  @override
  String get reminders => 'Mga Setting nin Pagirumdom';

  @override
  String get notifications => 'Mga Abiso';

  @override
  String get reminders_breakfast_title => 'Pagirumdom sa Pamahaw 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Marhay na aga! Oras na para sa masustansiyang pamahaw sa $time .';
  }

  @override
  String get reminders_lunch_title => 'Pagirumdom sa Pangudtohan 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Mag-ontok asin mag-ogma nin balanse, may pag-isip na pangudtohan sa $time .';
  }

  @override
  String get reminders_dinner_title => 'Pagirumdom sa Pamanggihan 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Oras na para sa sarong magaan, nakakakontentong pamanggihan sa $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Oras na para mag-inom nin sarong preskong baso nin tubig! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Semanal na Pagtimbang ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Subaybayan an saimong semanal na mga sukatan kan hawak sa Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Oras nin Pagturog Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Magrelaks asin mag-andam para sa sarong mapahingalong pagturog ( $time ).';
  }

  @override
  String get onboard_welcome => 'Maogmang Pag-abot sa Bloomi';

  @override
  String get onboard_sub =>
      'An saimong makikatood, offline-enot na kaibaiba sa salud asin nutrisyon.';

  @override
  String get onboard_get_started => 'Magpoon na';

  @override
  String get onboard_sign_in => 'Mag-sign In';

  @override
  String get onboard_skip => 'Laktawan';

  @override
  String get onboard_choose_goal =>
      'Ano an saimong pangenot na katuyuhan sa ikararahay?';

  @override
  String get onboard_goal_weight_loss => 'Mahinahon na Pagbaba kan Timbang';

  @override
  String get onboard_goal_muscle => 'Pag-uswag kan Kalamnan asin Kusog';

  @override
  String get onboard_goal_energy => 'Aroaldaw na Enerhiya asin Kabuhayan';

  @override
  String get onboard_goal_habits => 'Marahay na Pagkakan na May Pag-isip';

  @override
  String get onboard_about_you =>
      'Sabihon mo samuya an manungod sa saimong sadiri';

  @override
  String get onboard_lifestyle => 'An Saimong Aroaldaw na Rutina';

  @override
  String get onboard_permissions_title =>
      'Mga Pagtugot asin Pag-access sa Sistema';

  @override
  String get onboard_permissions_sub =>
      'Magtao nin access sa mga lakdang nin pag-sync, mga ehersisyo, asin mga pagirumdom.';

  @override
  String get onboard_plan_ready_title => 'Andam na an saimong Pasadyang Plano!';

  @override
  String get onboard_plan_ready_sub =>
      'Naggibo kami nin sarong maboot, personalisadong roadmap sa nutrisyon asin karahayan para sana saimo.';

  @override
  String get onboard_enter_bloomi => 'Maglaog sa Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Pinakamarahay na Aldaw nin Pagkakapareho: $day';
  }

  @override
  String get insights_streaks_badges => 'Mga Guhit asin mga Milestone';

  @override
  String insights_unlocked_on(Object date) {
    return 'Nabuksan sa $date';
  }

  @override
  String get insights_keep_going => 'Padagos an makangangalas na pag-uswag!';

  @override
  String get widgets_title => 'Mga Widget sa Home Screen';

  @override
  String widgets_active_count(Object count) {
    return 'Mga Aktibong Widget: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Mga Lakang & Aktibong Singsing';

  @override
  String get widgets_water_title => 'Marikas na Log nin Pagpatubig';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Magsulot nin OS Smartwatch';

  @override
  String get wear_os_connected => 'Konektado sa Relo';

  @override
  String get wear_os_sync => 'I-sync an Datos kan Relo';

  @override
  String get theme_title => 'Itsura asin Tema';

  @override
  String get theme_mode => 'Mode nin Tema';

  @override
  String get theme_light => 'Liwanag';

  @override
  String get theme_dark => 'Madiklom';

  @override
  String get theme_system => 'Default kan Sistema';

  @override
  String get theme_background_palette => 'Paleta nin Likod';

  @override
  String get units_title => 'Mga Yunit nin Pagsukol';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Dai kayang i-load an dashboard';

  @override
  String get home_health_permission_req =>
      'Kaipuhan an Pagtugot sa Health Connect';

  @override
  String get home_health_permission_desc =>
      'An Bloomi nangangaipo nin permiso kan Health Connect tanganing makagibo nin tunay na mga lakdang, kumpas kan puso, asin mag-sync nin mga mobile home widget sa totoong oras.';

  @override
  String get home_allow_health => 'Tugutan an Pagkonektar sa Salud';

  @override
  String get home_ready_mindful_day =>
      'Handa na para sa sarong aldaw na may pag-isip? ✨';

  @override
  String get home_quick_add => 'Marikas na Pagdagdag';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'MGA KALORIYA NA NAATADA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kinakan: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Gripo para sa Water Tracker 💧';

  @override
  String get home_water_goal_reached =>
      'Naabot an pang-aroaldaw na katuyuhan 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml sa aroaldaw na katuyuhan';
  }

  @override
  String get home_details => 'Mga detalye';

  @override
  String get home_upgrade_plan_desc =>
      'Mag-upgrade tanganing ma-unlock an mga personalisadong target sa aroaldaw asin plano sa AI';

  @override
  String get home_unlock => 'Magbukas 👑';

  @override
  String get home_quick_log_hint =>
      'Marikas na magrekord nin sarong entry sa karahayan';

  @override
  String get food_serving_size => 'Sukol nin Pagserbi';

  @override
  String get food_serving_grams => 'Pagserbi (g)';

  @override
  String get food_number_servings => 'Bilang kan mga Serving';

  @override
  String get food_calories_per_serving => 'Mga kaloriya kada pagserbi';

  @override
  String get food_recipe_ingredients => 'Mga sangkap';

  @override
  String get food_recipe_add_ingredient => 'Magdagdag nin Sangkap';

  @override
  String get food_recipe_directions => 'Mga Instruksyon asin Nota';

  @override
  String get food_recipe_total => 'Total na Nutrisyon sa Resipe';

  @override
  String get food_recipe_per_serving => 'Kada Pagserbi nin Nutrisyon';

  @override
  String get food_recipe_saved_toast =>
      'An pasadyang kakanon na natipon nin matrayumpo!';

  @override
  String get food_barcode_found => 'Nakua an Produkto!';

  @override
  String get food_barcode_not_found_desc =>
      'Dai mi nakua an barcode na ini sa bukas na database. Pwede mo ining idagdag bilang sarong pasadyang kakanon.';

  @override
  String get food_add_custom_btn => 'Magdagdag nin Pasadyang Kakanon';

  @override
  String get food_scan_again => 'I-scan giraray';

  @override
  String get food_review_items => 'Repasohon an mga Nadetektar na Kakanon';

  @override
  String get food_review_hint =>
      'I-adjust an mga kantidad o haleon an anuman na dai namidbid na bagay';

  @override
  String get food_log_selected => 'I-log an mga Piling Kakanon';

  @override
  String get food_favourites_title => 'Mga Paboritong Kakanon';

  @override
  String get food_recent_title => 'Mga Bagong Kakanon';

  @override
  String get food_no_favourites =>
      'Mayo pang paboritong kakanon. I-tap an puso sa anuman na kakanon tanganing makatipid digdi.';

  @override
  String get food_no_recents =>
      'Mayo nin mga bagong na-log na kakanon na nakua.';

  @override
  String get food_nutrition_details_title =>
      'Mga Detalye kan Nutrisyon sa Aroaldaw';

  @override
  String get food_macro_protein_label => 'Pagkabaraak kan Protina';

  @override
  String get food_macro_carbs_label => 'Pagkabaranga kan mga Karbohidrato';

  @override
  String get food_macro_fat_label => 'Pagkabaranga kan Taba';

  @override
  String get food_macro_fiber_label => 'Pagkabaraak kan Hibla';

  @override
  String get food_daily_target_comparison => 'Pagkumpara kan Target';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'I-edit an Diary Entry';

  @override
  String get food_delete_entry => 'Buraon an Entry';

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
    return '$current kan $target ml';
  }

  @override
  String get water_intake_history => 'Mga Log nin Tubig Ngonyan';

  @override
  String get water_no_logs_today =>
      'Mayo pang tubig na na-log ngunyan na aldaw. Mag-hydrate asin mag-tap nin quick add button!';

  @override
  String get water_adjust_goal => 'I-adjust an Pang-aroaldaw na Pasohan';

  @override
  String get health_connect_banner => 'Konektado sa Health Connect';

  @override
  String get health_vitals_summary => 'Mga Importante sa Salud sa Aroaldaw';

  @override
  String get health_latest_heart_rate => 'Pinakabagong Rikas kan Puso';

  @override
  String get health_latest_bp => 'Presyon nin Dugo';

  @override
  String get health_latest_spo2 => 'Oksiheno sa Dugo';

  @override
  String get health_latest_glucose => 'Glucose sa Dugo';

  @override
  String get health_latest_weight => 'Timbang';

  @override
  String get health_latest_sleep => 'Lawig nin Pagturog';

  @override
  String get health_add_manual => 'Magdagdag nin Manwal na Pagsukol';

  @override
  String get health_history_trends => 'Mga Uso sa Kasaysayan';

  @override
  String get health_sync_success => 'An datos sa salud mapangganang na-sync!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours oras $mins mins';
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
      'Mga Konektadong Kagamitan asin mga Masulot';

  @override
  String get health_devices_desc =>
      'Pamahalaan an mga nakapares na smartwatch, mga fitness tracker, asin mga sensor sa salud.';

  @override
  String get health_workout_editor_title => 'I-edit an Pag-ehersisyo';

  @override
  String get health_workout_name_label => 'Pangaran nin Ehersisyo';

  @override
  String get health_workout_duration_label => 'Lawig (mga minuto)';

  @override
  String get health_workout_calories_label => 'Tinatayang Kaloriya (kcal)';

  @override
  String get health_workout_date_label => 'Petsa asin Oras';

  @override
  String get plan_daily_wellness_roadmap => 'An Saimong Personalized Roadmap';

  @override
  String get plan_morning_routine => 'Rutina sa Aga';

  @override
  String get plan_afternoon_routine => 'Karahayan sa Udto';

  @override
  String get plan_evening_routine => 'Pababa kan Hangin sa Banggi';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Aldaw na Pagtutok sa Karahayan';

  @override
  String get plan_targets_title => 'Mga Target asin Pasohan sa Karahayan';

  @override
  String get plan_calorie_budget_label => 'Aroaldaw na Badyet sa Kaloriya';

  @override
  String get plan_water_budget_label => 'Aroaldaw na Target sa Tubig';

  @override
  String get plan_step_budget_label => 'Pasohan sa Aroaldaw na Lakdang';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Personal na mga Detalye';

  @override
  String get profile_body_stats => 'Mga Sukol kan Hawak';

  @override
  String get profile_app_preferences =>
      'Mga Kagustuhan asin Mga Setting kan App';

  @override
  String get profile_edit_name_hint => 'An saimong pangaran';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Lalangkaw ( $unit )';
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
  String get profile_gender_other => 'Iba / Mas gustong dai sabihon';

  @override
  String get profile_activity_sedentary =>
      'Dai nagtutukaw (Dikit o mayong ehersisyo)';

  @override
  String get profile_activity_light => 'Bakong Aktibo (1-3 aldaw/semana)';

  @override
  String get profile_activity_moderate =>
      'Katamtaman na Aktibo (3-5 aldaw/semana)';

  @override
  String get profile_activity_very => 'Aktibo nanggad (6-7 aldaw/semana)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Ibugtak an Bloomi tile asin complication sa saimong Wear OS watch tanganing mahiling an mga kaloriya, tubig, asin mga lakdang.';

  @override
  String get settings_widgets_header => 'Mga Interaktibong Android Widget';

  @override
  String get settings_widgets_desc =>
      'I-pin an mga real-time na widget sa home screen kan saimong aparato para sa instant na mga pag-update.';

  @override
  String get settings_about_header => 'Manungod ki Bloomi';

  @override
  String get settings_about_version => 'Bersyon 1.0.0';

  @override
  String get settings_about_build => 'Magtogdok nin 100';

  @override
  String get settings_about_credits =>
      'Ginibo na may pag-iingat para sa mapag-isip, marahay na pamumuhay.';

  @override
  String get settings_terms_header => 'Mga Termino asin Kondisyon';

  @override
  String get settings_privacy_header => 'Patakaran sa Pribasiya';

  @override
  String get settings_delete_header => 'Buraon an Account asin Data';

  @override
  String get settings_delete_warning =>
      'An aksyon na ini dai pwedeng ibalik. An gabos mong pagkakan, ehersisyo, vitals, asin profile permanenteng hahaleon.';

  @override
  String get settings_delete_confirm_btn => 'Permanenteng Buraon';

  @override
  String get onboard_welcome_headline => 'Maogmang Pag-abot sa Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Maboot, may pag-isip na pagsubaybay sa karahayan na dinisenyo sa palibot kan saimong buhay.';

  @override
  String get onboard_step_about => 'Manungod Saimo';

  @override
  String get onboard_step_goals => 'An Saindong mga Pasohan';

  @override
  String get onboard_step_lifestyle => 'Mga Ugale sa Aroaldaw';

  @override
  String get onboard_step_permissions => 'Mga Pagtugot';

  @override
  String get onboard_step_plan => 'Handa na!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm =>
      'Mga Mapag-isip na Pagirumdom asin mga Paisi';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Magtao nin mga Pagtugot';

  @override
  String get onboard_continue_dashboard => 'Buksan an Dashboard';

  @override
  String get notif_channel_hydration_name => 'Mga Pagtulod sa Pagpatubig';

  @override
  String get notif_channel_hydration_desc =>
      'Mga pagirumdom sa maluyang tubig sa bilog na aldaw';

  @override
  String get notif_channel_nutrition_name =>
      'Mga Pagirumdom sa Pagkakan asin Nutrisyon';

  @override
  String get notif_channel_nutrition_desc =>
      'Mga alerto sa pagirumdom sa pamahaw, pangudtohan, asin pamanggihan';

  @override
  String get notif_channel_steps_name => 'Mga Milesto nin Lakdang';

  @override
  String get notif_channel_steps_desc =>
      'Mga selebrasyon kun nakakaabot sa mga target sa aroaldaw na lakdang';

  @override
  String get notif_channel_vitals_name => 'Mga Pagsiyasat sa Salud asin Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Mga pagirumdom sa pag-ontok sa timbang asin oras nin pagturog';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Magturog 15m';

  @override
  String get notif_action_log_meal => '🥗 Pagkakan nin Troso';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
