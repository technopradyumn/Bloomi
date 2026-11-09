// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pangasinan (`pag`).
class AppLocalizationsPag extends AppLocalizations {
  AppLocalizationsPag([String locale = 'pag']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Bilay';

  @override
  String get nav_today => 'Natan';

  @override
  String get nav_plan => 'Plano';

  @override
  String get nav_food => 'Panangan';

  @override
  String get nav_food_diary => 'Diary ng Pagkain';

  @override
  String get nav_workout => 'Log ng Pagsasanay';

  @override
  String get nav_health => 'Bunigas';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'I-save';

  @override
  String get cancel => 'Kanselaen';

  @override
  String get delete => 'Buraen';

  @override
  String get edit => 'I-edit';

  @override
  String get done => 'Asumpal la';

  @override
  String get close => 'Saraan';

  @override
  String get back => 'Pawil';

  @override
  String get next => 'Ontumbok';

  @override
  String get continue_btn => 'Ituloy';

  @override
  String get confirm => 'Kumpirmaen';

  @override
  String get search => 'Anapen';

  @override
  String get filter => 'Salain';

  @override
  String get all => 'Amin';

  @override
  String get active => 'Aktibo';

  @override
  String get today => 'Natan';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get tomorrow => 'Nabuas';

  @override
  String get add => 'Idagdag';

  @override
  String get remove => 'Ekalen';

  @override
  String get refresh => 'I-refresh';

  @override
  String get retry => 'Salien lamet';

  @override
  String get error => 'Lingo';

  @override
  String get success => 'Itatalona';

  @override
  String get loading => 'Mankarga...';

  @override
  String get no_data => 'Anggapoy naala ya datos';

  @override
  String get offline => 'Offline na Mode';

  @override
  String get offline_sub => 'Saray pananguman et man-sync no akakonekta lamet';

  @override
  String get undo => 'I-undo';

  @override
  String get portion => 'Porsyon';

  @override
  String get quantity => 'Dakel';

  @override
  String get unit => 'Yunit';

  @override
  String get clear => 'Malinew';

  @override
  String get select => 'Pilien';

  @override
  String get apply => 'Man-aplay';

  @override
  String get reset => 'I-reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'On';

  @override
  String get no => 'Andi';

  @override
  String get optional => 'Opsyonal';

  @override
  String get calories => 'Kaloriya';

  @override
  String get protein => 'Protina';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Taba';

  @override
  String get fiber => 'Lanot';

  @override
  String get water => 'Danum';

  @override
  String get steps => 'Saray kundang';

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
  String get inches => 'diad';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'oras';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Manlingkor';

  @override
  String get servings => 'Saray Serbi';

  @override
  String get serving_size => 'Kabaleg na Serbi';

  @override
  String get per_100g => 'kada 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Pegley Bukig';

  @override
  String get africa => 'Aprika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Bilay';

  @override
  String get home_greeting_morning => 'Masantos ya Kabuasan';

  @override
  String get home_greeting_afternoon => 'Masantos ya Ngarem';

  @override
  String get home_greeting_evening => 'Masantos ya Labi';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days streak',
      one: '1 agew ya nantutumbokan',
      zero: '0 agew ya nantutumbokan',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Apoolan';

  @override
  String get home_calories_budget => 'Calorie Badyet';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ya nakekeraan';
  }

  @override
  String get home_water_title => 'Inagew-agew ya Pan-hydrate';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Saray Kundang ya Inakar';

  @override
  String get home_quick_actions => 'Maples ya Gawaen';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Danum na Troso';

  @override
  String get home_log_workout => 'Mag-log Workout';

  @override
  String get home_log_weight => 'Belat na Troso';

  @override
  String get home_insights_title => 'Saray Pakatalos Natan';

  @override
  String get home_quote =>
      'Saray melag a makagunggona iran pilien so mamawala na marakep iran pananguman.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Kaliberliber tan Dagem';

  @override
  String get home_notifications => 'Saray Notipikasyon';

  @override
  String get home_daily_score => 'Inagew-agew ya Iskor na Bunigas';

  @override
  String get home_view_all => 'Nengnengen so amin';

  @override
  String get food_diary_title => 'Diary ng Pagkain';

  @override
  String get food_breakfast => 'Almusal';

  @override
  String get food_lunch => 'Pangdem';

  @override
  String get food_dinner => 'Pangdem';

  @override
  String get food_snacks => 'Meryenda';

  @override
  String get food_add_food => 'Idagdag so Naakan';

  @override
  String get food_edit_food => 'I-edit so kakanen';

  @override
  String get food_add_breakfast => 'Idagdag so Almusal';

  @override
  String get food_add_lunch => 'Idagdag so panangan';

  @override
  String get food_add_dinner => 'Idagdag so Pangdem';

  @override
  String get food_add_snack => 'Idagdag so Meryenda';

  @override
  String get food_total_calories => 'Dagup na Kaloriya';

  @override
  String get food_empty_meal =>
      'Anggapo ni so aka-log ya kakanen parad sayan panangan';

  @override
  String get food_empty_diary => 'Anggapoy na-log ya panangan ed sayan agew';

  @override
  String get food_log_first_meal =>
      'Pindoten so + pian na-log so unonan mananam ya panangan mo';

  @override
  String get food_quick_add => 'Maples ya Idagdag';

  @override
  String get food_search_hint => 'Mananap na putahe, prutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom na Pagkain at Recipe';

  @override
  String get food_scan_barcode => 'I-scan so Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Saray Agano nin Naakan';

  @override
  String get food_favourites => 'Paborito';

  @override
  String get food_macro_summary => 'Pagkasira ng Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Segurado ka kasin labay mon ekalen iyan bengatla?';

  @override
  String get food_item_deleted => 'Inekal so kakanen';

  @override
  String get food_remaining => 'nakekeraan';

  @override
  String get food_consumed => 'naupot';

  @override
  String food_of_target(Object target) {
    return 'na $target kcal';
  }

  @override
  String get foodSearch_title => 'Mananap na naakan';

  @override
  String get foodSearch_scan_barcode => 'I-scan so Barcode';

  @override
  String get foodSearch_take_photo => 'Litrato na Tagano';

  @override
  String get foodSearch_custom_food => 'Manggawa na Custom Food';

  @override
  String get foodSearch_recent_searches => 'Saray Agano nin Inanap';

  @override
  String get foodSearch_popular => 'Sikat iran Putahe';

  @override
  String get foodSearch_no_results => 'Anggapoy kakanen ya mipara ed inanap mo';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'I-align so barcode ed loob na frame na kamera';

  @override
  String get barcode_not_found => 'Ag-aromog so produkto ed database';

  @override
  String get barcode_premium_feature =>
      'Say barcode scanning et nagawaan ed Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Mangala kay malinew ya litrato na putahe mo';

  @override
  String get camera_analysing => 'Say panagsukimat ed plato na kakanen...';

  @override
  String get camera_detected => 'Saray naimano ya bengatla';

  @override
  String get camera_flash => 'I-toggle so Flash';

  @override
  String get camera_retake => 'Alaen lamet so litrato';

  @override
  String get camera_confirm_food => 'Kumpirmaen iray Bengatla';

  @override
  String get customFood_title => 'Custom na Pagkain at Recipe';

  @override
  String get customFood_name_hint => 'Ngaran na putahe o ingrediente';

  @override
  String get customFood_calories_hint => 'Kaloriya (kcal)';

  @override
  String get customFood_protein_hint => 'Protina (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Taba (g)';

  @override
  String get customFood_save => 'I-save so Resipe';

  @override
  String get water_tracker_title => 'Tagasubaybay ng Tubig';

  @override
  String get water_daily_target => 'Kalat ed Inagew-agew a Pan-hydrate';

  @override
  String get water_logged_today => 'In-log Natan';

  @override
  String get water_add_glass => '+250 ml na Salamin';

  @override
  String get water_add_bottle => '+500 ml Bote';

  @override
  String get water_custom_amount => 'Custom na Halaga';

  @override
  String get water_reminder_tip =>
      'Regular ya oninum na danum ed interon agew pian mansiansian mabiskeg.';

  @override
  String water_logged_toast(Object amount) {
    return 'Naala so $amount ml na danum 💧';
  }

  @override
  String get workout_title => 'Log ng Pagsasanay';

  @override
  String get workout_add_exercise => 'Idagdag so Ehersisyo';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Biskeg';

  @override
  String get workout_yoga => 'Yoga tan Flexibility';

  @override
  String get workout_duration => 'Karukey';

  @override
  String get workout_intensity => 'Intensity';

  @override
  String get workout_calories_burned => 'Saray calories ya apoolan';

  @override
  String get workout_empty => 'Anggapoy na-log ya ehersisyo natan';

  @override
  String get workout_save_success => 'Say ehersisyos so matalonan nisalba!';

  @override
  String get workout_type => 'Klase na Ehersisyo';

  @override
  String get workout_notes => 'Saray Nota tan Panmolimoli';

  @override
  String get health_overview_title => 'Salud tan Vitals';

  @override
  String get health_heart_rate => 'Kapeles na Puso';

  @override
  String get health_blood_oxygen => 'Oxygen ng Dugo (SpO2)';

  @override
  String get health_blood_pressure => 'Presyon na Dala';

  @override
  String get health_blood_glucose => 'Glucose ed Dala';

  @override
  String get health_body_temperature => 'Temperatura na Laman';

  @override
  String get health_sleep_tracking => 'Pansubaybay ed Ugip';

  @override
  String get health_weight_tracking => 'Timbang tan Komposisyon na Laman';

  @override
  String get health_waist_hip => 'Say Ratio na Pagka-ed-Baleng';

  @override
  String get health_devices_hub => 'Saray kagawaan tan Smartwatch Hub';

  @override
  String get health_sync_now => 'I-sync so Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Kaunoran ya in-sync: $time';
  }

  @override
  String get health_manual_entry => 'Manual ya Inloob ed Salud';

  @override
  String get health_metric_detail => 'Saray Detalye na Sukat';

  @override
  String get health_connected_sensors => 'Saray Konektadon Sensor na Salud';

  @override
  String get plan_title => 'Plano ed Inagew-agew';

  @override
  String get plan_weekly_title => 'Simban Plano ed Bunigas';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Puntirya na Hydration';

  @override
  String get plan_step_target => 'Kundang a Puntirya';

  @override
  String get plan_sleep_target => 'Puntirya ed Ugip';

  @override
  String get plan_meal_suggestions => 'Saray Suhestion ed Panangan';

  @override
  String get plan_healthy_habits => 'Makagunggunan Ugali tan Tip';

  @override
  String get plan_coach_advice => 'Rekomendasyon na Bloomi AI Coach';

  @override
  String get plan_generated_title => 'Personal ya Inagew-agew ya Iskedyul';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'I-edit so Profile';

  @override
  String get profile_name => 'Ngaran';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Kasarian';

  @override
  String get profile_height => 'Katagey';

  @override
  String get profile_weight => 'Belat';

  @override
  String get profile_goal => 'Manunan Kalat';

  @override
  String get profile_activity_level => 'Antas na Aktibidad';

  @override
  String get profile_stats => 'Saray estadistika na bunigas ko';

  @override
  String get profile_saved => 'Matalonan na-update so profile';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Panmiyembro';

  @override
  String get settings => 'Mga setting';

  @override
  String get preferences_habits => 'LABAY TAN UGALI';

  @override
  String get appearance_theme => 'Itsura tan Tema';

  @override
  String get appearance_theme_sub =>
      'Bilunget, Liwawa, System Mode tan Saray Opsyon ed Background na App';

  @override
  String get permissions => 'Mga Pahintulot at System Access';

  @override
  String get permissions_sub =>
      'Health Connect, Mga Step Sensor, GPS, Mga Notification at Camera';

  @override
  String get reminders_notifications => 'Saray Panonot tan Pakabat';

  @override
  String get reminders_sub =>
      'Oras na panangan, danum, panag-check-in na belat tan panonot ed oras na ugip';

  @override
  String get units_of_measurement => 'Yunit na Sukat';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) o Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Lenguahe na App';

  @override
  String get language_sub =>
      'Ingles, हिन्दी (Hindi), Hinglish tan 195+ ya sankamundoan iran lenguahe';

  @override
  String get home_screen_widgets => 'Mga Widget ng Home Screen';

  @override
  String get widgets_sub =>
      'Live na Android widgets: Hub, Steps, Water, Nutrition at Mascot';

  @override
  String get wear_os_watch_app => 'Isulong so OS Watch App';

  @override
  String get wear_os_sub =>
      'Kasama sa Smartwatch, mga tile, komplikasyon, at live na vitals';

  @override
  String get goals_wellness => 'SARAY KALAT TAN SARAY PANAG-AKIT';

  @override
  String get nutrition_targets => 'Saray Puntirya ed Nutrisyon tan Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Say target na calorie, protina, carbs, taba tan danum';

  @override
  String get weekly_recap => 'Simba-simba ya Recap na Pankaabigan';

  @override
  String get weekly_recap_sub =>
      '7-agew ya average na calorie, macro ratio tan sankaabigan ya agew';

  @override
  String get streaks_milestones => 'Saray Streaks & Milestones';

  @override
  String get streaks_sub =>
      'Saray aktibon blossom streaks, badges & achievements';

  @override
  String get connected_devices => 'KONEKTADO A KAGAWAAN TAN ECOSYSTEM';

  @override
  String get devices_hub => 'Saray kagawaan tan Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Kaliberliber tan Panaon';

  @override
  String get surroundings_sub =>
      'Kalidad na dagem (AQI), UV index tan saray tip ed panag-hydrate ed panaon';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 home screen widgets tan vitals tracking';

  @override
  String get about_security => 'NIPAAKAR TAN SEGURIDAD';

  @override
  String get about_bloomi => 'Nipaakar ed si Bloomi';

  @override
  String get about_bloomi_sub =>
      'Saray detalye na panagpaalagey, bersion, tan saray atribusyon';

  @override
  String get privacy_policy => 'Patakaran sa Privacy';

  @override
  String get privacy_policy_sub =>
      'Offline-una, on-device na arkitektura ng data';

  @override
  String get terms_conditions => 'Saray Kondisyon tan Kondisyon';

  @override
  String get terms_conditions_sub =>
      'Saray kondisyon na serbisyo tan saray giya ed bunigas';

  @override
  String get delete_account => 'Buraen so Account tan Data';

  @override
  String get delete_account_sub =>
      'Agla nauman ya buralen so lokal ya data na SQLite tan saray backup ed cloud';

  @override
  String get healthy_habits =>
      'Manggawa na mauyamo tan manbayag iran ugali ed bunigas';

  @override
  String get all_logs => 'Say Nasubaybayan kon Data tan Logs';

  @override
  String get search_language => 'Mananap unong ed lenguahe odino sulat...';

  @override
  String get languages_available => 'Saray Lenguahe ya Nausar';

  @override
  String get no_matching_languages =>
      'Anggapoy naromog ya mipara iran lenguahe';

  @override
  String get try_searching =>
      'Salien so mananap base ed native script odino English spelling';

  @override
  String get partially_translated => 'Anggapoy pigaran impatalos';

  @override
  String get complete_translation => 'Kompleto';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Say lenguahe et inletneg ed $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Kaliberliber tan Kaliberliber';

  @override
  String get surroundings_aqi => 'Indeks na Kalidad na Dagem';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Halumigmig';

  @override
  String get surroundings_hydration_advice =>
      'Mansiansian maong so danum ed kaplesan ya kondisyon na panaon.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Mananap na naakan';

  @override
  String get food_quick_barcode => 'I-scan so Barcode 👑';

  @override
  String get food_quick_water => 'Mangiyan na Danum';

  @override
  String get food_quick_custom => 'Custom na Pagkain';

  @override
  String get surroundings_good => 'Maong';

  @override
  String get surroundings_moderate => 'Katamtaman';

  @override
  String get surroundings_unhealthy => 'Aliwan mabunigas';

  @override
  String get notifications_title => 'Saray Notipikasyon tan Alerto';

  @override
  String get notifications_empty => 'Anggapoy balon abiso';

  @override
  String get notifications_mark_read => 'Markaan so Amin ya Abasa la';

  @override
  String get notifications_clear => 'Linisan so amin';

  @override
  String get reminders => 'Saray Setting na Panonot';

  @override
  String get notifications => 'Saray Notipikasyon';

  @override
  String get reminders_breakfast_title => 'Panonot ed Almusal 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Masantos ya kabwasan! Panaon na masustansian almusal ed $time .';
  }

  @override
  String get reminders_lunch_title => 'Panonot ed Pangugto 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Manpainawa tan manliket na balanse tan maalwar ya panangan ed $time .';
  }

  @override
  String get reminders_dinner_title => 'Panonot ed Pangdem 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Panaon na anlemew tan makapenek a pangdem ed $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Panaon la pian oninum na sakey a baso na danum! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Simba-simbang ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Subaybayan so sinimban sukat na laman mo ed Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Oras na ugip Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Manpainawa tan manparaan parad makapainawa ya ugip ( $time ).';
  }

  @override
  String get onboard_welcome => 'Masantos ya kabwasan ed Bloomi';

  @override
  String get onboard_sub =>
      'Say makaaro, offline-first ya kaiba yo ed bunigas tan nutrisyon.';

  @override
  String get onboard_get_started => 'Igapo';

  @override
  String get onboard_sign_in => 'Man-sign In';

  @override
  String get onboard_skip => 'Laktawan';

  @override
  String get onboard_choose_goal => 'Antoy manunan kalat mo ed bunigas?';

  @override
  String get onboard_goal_weight_loss => 'Maalwar ya Pambawas na Timbang';

  @override
  String get onboard_goal_muscle => 'Ondarakel tan Biskeg na Masel';

  @override
  String get onboard_goal_energy => 'Inagew-agew ya Enerhiya tan Kabiskegan';

  @override
  String get onboard_goal_habits => 'Masustansian Panangan';

  @override
  String get onboard_about_you => 'Ibagam ed Sikami so Nipaakar ed Sika';

  @override
  String get onboard_lifestyle => 'Say Inagew-agew a Gagawaen Mo';

  @override
  String get onboard_permissions_title => 'Mga Pahintulot at System Access';

  @override
  String get onboard_permissions_sub =>
      'Mangiter na access ed saray kundang na panag-sync, saray ehersisyo, tan saray panonot.';

  @override
  String get onboard_plan_ready_title => 'Akaparaan lay Custom Plan mo!';

  @override
  String get onboard_plan_ready_sub =>
      'Nanggawa kami na maabig, personal ya roadmap na nutrisyon tan bunigas parad sika.';

  @override
  String get onboard_enter_bloomi => 'Onloob ed Bloomi';

  @override
  String get insights_weekly_report => 'Simba-simba ya Recap na Pankaabigan';

  @override
  String insights_best_day(Object day) {
    return 'Sankaabigan ya Agew na Pankakasakey: $day';
  }

  @override
  String get insights_streaks_badges => 'Saray Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Nilukas ed $date';
  }

  @override
  String get insights_keep_going => 'Itultuloy so marakep ya iyaaligwas!';

  @override
  String get widgets_title => 'Mga Widget ng Home Screen';

  @override
  String widgets_active_count(Object count) {
    return 'Saray Aktibon Widget: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Kundang tan Aktibon Singsing';

  @override
  String get widgets_water_title => 'Mabilis na Log ng Hydration';

  @override
  String get widgets_mascot_title => 'Kasamang Mascot ng Bloomi';

  @override
  String get wear_os_title => 'Isulong so OS Smartwatch';

  @override
  String get wear_os_connected => 'Konektado ed Relo';

  @override
  String get wear_os_sync => 'I-sync so Data na Relo';

  @override
  String get theme_title => 'Itsura tan Tema';

  @override
  String get theme_mode => 'Mode na Tema';

  @override
  String get theme_light => 'Liwawa';

  @override
  String get theme_dark => 'Ambilunget';

  @override
  String get theme_system => 'Default ng System';

  @override
  String get theme_background_palette => 'Palette ng Background';

  @override
  String get units_title => 'Yunit na Sukat';

  @override
  String get units_metric => 'Sukatan (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ag nayarin i-load so dashboard';

  @override
  String get home_health_permission_req =>
      'Kaukolan so Permission ed Health Connect';

  @override
  String get home_health_permission_desc =>
      'Kaukolan na Bloomi so permiso na Health Connect pian makagawa na totoon kundang, heart rate, tan maka-sync na mobile home widgets diad mismon panaon.';

  @override
  String get home_allow_health => 'Abuloyan so Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Akaparaan ka la parad sakey ya agew ya makapanonot? ✨';

  @override
  String get home_quick_add => 'Maples ya Idagdag';

  @override
  String get home_live_gps => 'Live na GPS';

  @override
  String get home_calories_remaining_label => 'SARAY KALORIYA YA NAKERDA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Nakan: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'I-tap so Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Naabot so inagew-agew ya kalat 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ed inagew-agew a kalat';
  }

  @override
  String get home_details => 'Detalye';

  @override
  String get home_upgrade_plan_desc =>
      'I-upgrade pian na-unlock iray personalized ya inagew-agew ya target tan AI plan';

  @override
  String get home_unlock => 'Ilukas 👑';

  @override
  String get home_quick_log_hint => 'Maples ya irekord so wellness entry';

  @override
  String get food_serving_size => 'Kabaleg na Serbi';

  @override
  String get food_serving_grams => 'Manserbi (g)';

  @override
  String get food_number_servings => 'Bilang na Panangiter';

  @override
  String get food_calories_per_serving => 'Kaloriya kada porsiyon';

  @override
  String get food_recipe_ingredients => 'Saray sangkaili';

  @override
  String get food_recipe_add_ingredient => 'Ilaktip so Ingredient';

  @override
  String get food_recipe_directions => 'Instruksion tan Nota';

  @override
  String get food_recipe_total => 'Sustansya ed Resipe';

  @override
  String get food_recipe_per_serving => 'Kada Serbi na Nutrisyon';

  @override
  String get food_recipe_saved_toast => 'Matalonan natipid so custom food!';

  @override
  String get food_barcode_found => 'Naromog so Produkto!';

  @override
  String get food_barcode_not_found_desc =>
      'Agtayo naromog iyan barcode ed lukas a database. Sarag mon idagdag itan bilang custom food.';

  @override
  String get food_add_custom_btn => 'Mangiyan na Custom Food';

  @override
  String get food_scan_again => 'I-scan lamet';

  @override
  String get food_review_items => 'Repasoen iray Naimanon Naakan';

  @override
  String get food_review_hint =>
      'I-adjust so karakel odino ekalen so antokaman ya ag nabidbir ya bengatla';

  @override
  String get food_log_selected => 'I-log iray pinilin kakanen';

  @override
  String get food_favourites_title => 'Paboriton Kakanen';

  @override
  String get food_recent_title => 'Saray Agano nin Naakan';

  @override
  String get food_no_favourites =>
      'Anggapo ni paboritok ya kakanen. I-tap so puso ed antokaman a naakan pian makatipid dia.';

  @override
  String get food_no_recents =>
      'Anggapoy agano nin na-log ya kakanen ya aromog.';

  @override
  String get food_nutrition_details_title =>
      'Detalye na Nutrisyon ed Inagew-agew';

  @override
  String get food_macro_protein_label => 'Inkabuyak na Protina';

  @override
  String get food_macro_carbs_label => 'Pagkasira ng Carbs';

  @override
  String get food_macro_fat_label => 'Panangibiig na Taba';

  @override
  String get food_macro_fiber_label => 'Pankabuyak na Fiber';

  @override
  String get food_daily_target_comparison => 'Panangikompara ed Puntirya';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'I-edit so Diary Entry';

  @override
  String get food_delete_entry => 'Buraen so Entry';

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
    return '$current na $target ml';
  }

  @override
  String get water_intake_history => 'Saray Water Logs natan';

  @override
  String get water_no_logs_today =>
      'Anggapo ni so danum ya akaloob natan. Man-hydrate tan pindoten so quick add button!';

  @override
  String get water_adjust_goal => 'I-adjust so Daily Goal';

  @override
  String get health_connect_banner => 'Konektado ed Health Connect';

  @override
  String get health_vitals_summary => 'Inagew-agew ya Importante ed Salud';

  @override
  String get health_latest_heart_rate => 'Sankabaloan ya Heart Rate';

  @override
  String get health_latest_bp => 'Presyon na Dala';

  @override
  String get health_latest_spo2 => 'Oksihena ed Dala';

  @override
  String get health_latest_glucose => 'Glucose ed Dala';

  @override
  String get health_latest_weight => 'Belat';

  @override
  String get health_latest_sleep => 'Karukey na Ugip';

  @override
  String get health_add_manual => 'Idagdag so Manual a Sukat';

  @override
  String get health_history_trends => 'Saray Uso ed Kasaysayan';

  @override
  String get health_sync_success => 'Matalonan aka-sync so data na bunigas!';

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
  String get health_devices_title => 'Saray Konektadon Kagawaan tan Isulong';

  @override
  String get health_devices_desc =>
      'Mangasikaso na saray akapares ya smartwatch, fitness tracker, tan health sensor.';

  @override
  String get health_workout_editor_title => 'I-edit so Ehersisyo';

  @override
  String get health_workout_name_label => 'Ngaran na Ehersisyo';

  @override
  String get health_workout_duration_label => 'Karukey (minuto)';

  @override
  String get health_workout_calories_label => 'Kalkuladon Kaloriya (kcal)';

  @override
  String get health_workout_date_label => 'Petsa tan Oras';

  @override
  String get plan_daily_wellness_roadmap => 'Say Personalized Roadmap Mo';

  @override
  String get plan_morning_routine => 'Rotina ed kabuasan';

  @override
  String get plan_afternoon_routine => 'Pankaabigan ed Pegley-agew';

  @override
  String get plan_evening_routine => 'Ontunda so Dagem ed Labi';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Agew ya Pokus ed Bunigas';

  @override
  String get plan_targets_title => 'Saray Puntirya tan Gagala ed Bunigas';

  @override
  String get plan_calorie_budget_label => 'Inagew-agew ya Badyet ed Kaloriya';

  @override
  String get plan_water_budget_label => 'Inagew-agew ya Puntirya na Danum';

  @override
  String get plan_step_budget_label => 'Kalat ed Inagew-agew a Kundang';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Personal iran Detalye';

  @override
  String get profile_body_stats => 'Sukat na Laman';

  @override
  String get profile_app_preferences => 'Saray Labay tan Saray Setting na App';

  @override
  String get profile_edit_name_hint => 'Say ngaran mo';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Katagey ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Belat ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Edad';

  @override
  String get profile_gender_male => 'Lalaki';

  @override
  String get profile_gender_female => 'Bii';

  @override
  String get profile_gender_other => 'Arum / Mas labay kon ibaga';

  @override
  String get profile_activity_sedentary =>
      'Ag-onkikiwas (Dagdaiset o anggapoy ehersisyos)';

  @override
  String get profile_activity_light => 'Ag-aktibo (1-3 agew/simba)';

  @override
  String get profile_activity_moderate => 'Medyo aktibo (3-5 agew/simba)';

  @override
  String get profile_activity_very => 'Aktibon maong (6-7 agew/simba)';

  @override
  String get settings_wear_os_header => 'Isulong so OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'I-install so Bloomi tile tan complication ed Wear OS watch mo pian nanengneng mo ray calories, danum, tan saray kundang.';

  @override
  String get settings_widgets_header => 'Mga Interactive na Android Widget';

  @override
  String get settings_widgets_desc =>
      'I-pin iray real-time widgets ed home screen na device mo parad tampol iran update.';

  @override
  String get settings_about_header => 'Nipaakar ed si Bloomi';

  @override
  String get settings_about_version => 'Bersion 1.0.0';

  @override
  String get settings_about_build => 'Manggawa na 100';

  @override
  String get settings_about_credits =>
      'Ginawa tekep na panangasikaso parad maalwar, mabunigas a panagbilay.';

  @override
  String get settings_terms_header => 'Saray Kondisyon tan Kondisyon';

  @override
  String get settings_privacy_header => 'Patakaran sa Privacy';

  @override
  String get settings_delete_header => 'Buraen so Account tan Data';

  @override
  String get settings_delete_warning =>
      'Sayan kiwas et ag nayarin ipawil. Amin ya panangan, panag-ehersisyo, vitals, tan profile mo et permanente lan nabura.';

  @override
  String get settings_delete_confirm_btn => 'Permanen ya buralen';

  @override
  String get onboard_welcome_headline => 'Masantos ya kabwasan ed Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Maamo, maalwar ya panagsubaybay ed bunigas ya ginawa ed bilay mo.';

  @override
  String get onboard_step_about => 'Nipaakar ed Sika';

  @override
  String get onboard_step_goals => 'Saray Kalat Mo';

  @override
  String get onboard_step_lifestyle => 'Inagew-agew ya Ugali';

  @override
  String get onboard_step_permissions => 'Saray permiso';

  @override
  String get onboard_step_plan => 'Akaparaan la!';

  @override
  String get onboard_health_connect_perm => 'Access sa Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Saray Maalwar ya Panonot tan Pakabat';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode tan Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Iter iray Permiso';

  @override
  String get onboard_continue_dashboard => 'Lukasan so Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Maalwar iran panonot ed danum ed interon agew';

  @override
  String get notif_channel_nutrition_name =>
      'Saray Panonot ed Panangan tan Nutrisyon';

  @override
  String get notif_channel_nutrition_desc =>
      'Saray panonot ed almusal, panangugto, tan pangdem';

  @override
  String get notif_channel_steps_name => 'Saray Importante iran Kundang';

  @override
  String get notif_channel_steps_desc =>
      'Saray selebrasyon no naabot iray inagew-agew ya target';

  @override
  String get notif_channel_vitals_name => 'Saray tsek ed bunigas tan bilay';

  @override
  String get notif_channel_vitals_desc =>
      'Saray panonot ed belat tan oras na ugip';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Man-snooze 15m';

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
