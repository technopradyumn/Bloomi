// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Akan (`ak`).
class AppLocalizationsAk extends AppLocalizations {
  AppLocalizationsAk([String locale = 'ak']) : super(locale);

  @override
  String get app_name => 'Bloomi na ɔkyerɛwee';

  @override
  String get nav_home => 'Ofie';

  @override
  String get nav_today => 'Ɛnnɛ';

  @override
  String get nav_plan => 'Nhyehyɛe';

  @override
  String get nav_food => 'Aduan';

  @override
  String get nav_food_diary => 'Aduan Ho Nsɛm a Wɔakyerɛw';

  @override
  String get nav_workout => 'Apɔw-mu-teɛteɛ ho Nsɛm';

  @override
  String get nav_health => 'Akwahosan';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Fa sie';

  @override
  String get cancel => 'Twa mu';

  @override
  String get delete => 'Popa no';

  @override
  String get edit => 'Sesa no';

  @override
  String get done => 'Wɔayɛ';

  @override
  String get close => 'Bɛto mu';

  @override
  String get back => 'San akyi';

  @override
  String get next => 'Nea edi hɔ';

  @override
  String get continue_btn => 'Toa so';

  @override
  String get confirm => 'Si so dua';

  @override
  String get search => 'Hwehwɛ mu';

  @override
  String get filter => 'Filter na ɛyɛ adwuma';

  @override
  String get all => 'Ne nyinaa';

  @override
  String get active => 'Ɛyɛ nnam';

  @override
  String get today => 'Ɛnnɛ';

  @override
  String get yesterday => 'Nnɛra';

  @override
  String get tomorrow => 'Ɔkyena';

  @override
  String get add => 'Fa ka ho';

  @override
  String get remove => 'Yi fi hɔ';

  @override
  String get refresh => 'Fa foforo hyɛ mu';

  @override
  String get retry => 'San bɔ mmɔden bio';

  @override
  String get error => 'Mfomso a ɛbae';

  @override
  String get success => 'Odi nkonim';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Data biara nni hɔ a ɛwɔ hɔ';

  @override
  String get offline => 'Offline Mode a Wɔde Di Dwuma';

  @override
  String get offline_sub => 'Nsakrae no bɛyɛ sync bere a wɔasan abɔ mu no';

  @override
  String get undo => 'Undo no fi hɔ';

  @override
  String get portion => 'Ɔfã bi';

  @override
  String get quantity => 'Dodow a ɛwɔ hɔ';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Ɛda adi pefee';

  @override
  String get select => 'Paw';

  @override
  String get apply => 'Fa di dwuma';

  @override
  String get reset => 'Reset no bio';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yiw';

  @override
  String get no => 'Dabi';

  @override
  String get optional => 'Wopɛ sɛ wopaw';

  @override
  String get calories => 'Calories a ɛwɔ nipadua no mu';

  @override
  String get protein => 'Protein a ɛwɔ nipadua no mu';

  @override
  String get carbs => 'Carbs a ɛwɔ nipadua mu';

  @override
  String get fat => 'Srade a ɛyɛ den';

  @override
  String get fiber => 'Fiber a ɛyɛ den';

  @override
  String get water => 'Nsuo';

  @override
  String get steps => 'Anamɔn a wɔfa so yɛ';

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
  String get inches => 'mu';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Ɔsom';

  @override
  String get servings => 'Nnuan a wɔde ma';

  @override
  String get serving_size => 'Ɔsom Kɛseɛ';

  @override
  String get per_100g => 'wɔ 100g biara mu';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Mfinimfini Apuei';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika aman';

  @override
  String get home_title => 'Ofie';

  @override
  String get home_greeting_morning => 'Anɔpa Pa';

  @override
  String get home_greeting_afternoon => 'Awia Pa';

  @override
  String get home_greeting_evening => 'Anwummere Pa';

  @override
  String get home_streak_title => 'Nhwiren a Ɛyɛ Nhwiren';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nna a ɛtoatoa so',
      one: '1 da a ɛtoatoa so',
      zero: '0 nnafua streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Wɔahyew no';

  @override
  String get home_calories_budget => 'Calorie Budget a Wɔde Di Dwuma';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal a aka';
  }

  @override
  String get home_water_title => 'Nsu a Wɔde Ma Daa Da biara';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Anamɔn Nantew';

  @override
  String get home_quick_actions => 'Nneyɛe a Wɔyɛ Ntɛmntɛm';

  @override
  String get home_log_meal => 'Log Aduan a Wɔde Di Dwuma';

  @override
  String get home_log_water => 'Log Nsuo';

  @override
  String get home_log_workout => 'Log Apɔw-mu-teɛteɛ';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Ɛnnɛ Nhumu';

  @override
  String get home_quote =>
      'Nneɛma nketenkete a wɔpaw a ahoɔden wom ma nsakrae a ɛrefifi ba.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Ɔkyerɛkyerɛfo';

  @override
  String get home_surroundings => 'Nneɛma a Atwa Yɛn Ho Ahyia & Mframa';

  @override
  String get home_notifications => 'Amanneɛbɔ ahorow';

  @override
  String get home_daily_score => 'Da biara da Yiyedi Nkonimdi';

  @override
  String get home_view_all => 'Hwɛ Ne Nyinaa';

  @override
  String get food_diary_title => 'Aduan Ho Nsɛm a Wɔakyerɛw';

  @override
  String get food_breakfast => 'Anɔpa anɔpaduan';

  @override
  String get food_lunch => 'Awia aduan';

  @override
  String get food_dinner => 'Anwummere aduan';

  @override
  String get food_snacks => 'Nnuan a wɔde di agoru';

  @override
  String get food_add_food => 'Fa Aduan ka ho';

  @override
  String get food_edit_food => 'Sesa Aduan';

  @override
  String get food_add_breakfast => 'Fa Anɔpaduan ka ho';

  @override
  String get food_add_lunch => 'Fa Awia Aduan ka ho';

  @override
  String get food_add_dinner => 'Fa Anwummere Aduan ka ho';

  @override
  String get food_add_snack => 'Fa Snack ka ho';

  @override
  String get food_total_calories => 'Calories a Ɛyɛ Nyinaa';

  @override
  String get food_empty_meal =>
      'Nnuan biara nni hɔ a wɔakyerɛw ama saa aduan yi de besi nnɛ';

  @override
  String get food_empty_diary => 'Adidi biara nni hɔ a wɔakyerɛw ama saa da yi';

  @override
  String get food_log_first_meal =>
      'Kɔ + so na kyerɛw w’aduan a edi kan a ɛyɛ dɛ no';

  @override
  String get food_quick_add => 'Ntɛmntɛm Fa ka ho';

  @override
  String get food_search_hint => 'Hwehwɛ nnuan, nnuaba, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom Aduan & Nnuan a Wɔyɛ';

  @override
  String get food_scan_barcode => 'Scan Barcode a Wɔde Di Dwuma';

  @override
  String get food_camera_scan => 'AI Aduan Ho Nhwehwɛmu';

  @override
  String get food_recent => 'Nnansa yi Nnuan';

  @override
  String get food_favourites => 'Nea wɔpɛ paa';

  @override
  String get food_macro_summary => 'Macronutrient a Ɛpaapae';

  @override
  String get food_delete_meal_confirm =>
      'So wugye di sɛ wopɛ sɛ wuyi saa ade yi fi hɔ?';

  @override
  String get food_item_deleted => 'Aduan ade a wɔayi afi hɔ';

  @override
  String get food_remaining => 'a aka';

  @override
  String get food_consumed => 'a wɔnom';

  @override
  String food_of_target(Object target) {
    return 'a ɛyɛ $target kcal';
  }

  @override
  String get foodSearch_title => 'Hwehwɛ Nnuan';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode a Wɔde Di Dwuma';

  @override
  String get foodSearch_take_photo => 'Snap Aduan Mfonini';

  @override
  String get foodSearch_custom_food => 'Yɛ Aduan a Wɔayɛ no Amanneɛbɔ';

  @override
  String get foodSearch_recent_searches => 'Nhwehwɛmu a Wɔayɛ Nnansa Yi';

  @override
  String get foodSearch_popular => 'Nnuan a Agye Din';

  @override
  String get foodSearch_no_results =>
      'Nnuan biara nni hɔ a ɛne wo hwehwɛ no hyia';

  @override
  String get barcode_title => 'Barcode Scanner a Wɔde Di Dwuma';

  @override
  String get barcode_align => 'Fa barcode no hyɛ mfoninitwa afiri no mu';

  @override
  String get barcode_not_found => 'Product a wɔanhu wɔ database mu';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning wɔ hɔ wɔ Bloomi Pro so';

  @override
  String get camera_title => 'AI Aduan Ho Nhwehwɛmu';

  @override
  String get camera_tap_hint => 'Twa wo aduan no mfonini a emu da hɔ';

  @override
  String get camera_analysing => 'Analyzing aduan prɛte...';

  @override
  String get camera_detected => 'Nneɛma a wɔahu';

  @override
  String get camera_flash => 'Toggle Flash no mu';

  @override
  String get camera_retake => 'San Twe Mfonini no';

  @override
  String get camera_confirm_food => 'Si Nneɛma a Wɔahyɛ no So dua';

  @override
  String get customFood_title => 'Custom Aduan & Nnuan a Wɔyɛ';

  @override
  String get customFood_name_hint => 'Dish anaa ingredient din';

  @override
  String get customFood_calories_hint => 'Calorie ahorow (kcal) .';

  @override
  String get customFood_protein_hint => 'Protein (g) .';

  @override
  String get customFood_carbs_hint => 'Nneɛma a ɛma mogya tu (g) .';

  @override
  String get customFood_fat_hint => 'Srade (g) .';

  @override
  String get customFood_save => 'Save Recipe a Wɔde Sie';

  @override
  String get water_tracker_title => 'Nsuo a Wɔde Di Dwuma';

  @override
  String get water_daily_target => 'Daa Nsuo a Wɔde Ma Botaeɛ';

  @override
  String get water_logged_today => 'Logged Ɛnnɛ';

  @override
  String get water_add_glass => '+250 ml Ahwehwɛ a wɔde hwɛ nneɛma';

  @override
  String get water_add_bottle => '+500 ml Toa a wɔde ahyɛ mu';

  @override
  String get water_custom_amount => 'Amanneɛbɔ Sikakorabea';

  @override
  String get water_reminder_tip =>
      'Nom nsu daa da mũ no nyinaa na ama woanya ahoɔden a enhinhim.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml nsuo 💧';
  }

  @override
  String get workout_title => 'Apɔw-mu-teɛteɛ ho Nsɛm';

  @override
  String get workout_add_exercise => 'Fa Apɔw-mu-teɛteɛ ka ho';

  @override
  String get workout_cardio => 'Cardio a wɔde yɛ adwuma';

  @override
  String get workout_strength => 'Ahoɔden';

  @override
  String get workout_yoga => 'Yoga & Nneɛma a Wɔde Yɛ Nsakrae';

  @override
  String get workout_duration => 'Bere tenten a Egye';

  @override
  String get workout_intensity => 'Nneɛma a emu yɛ den';

  @override
  String get workout_calories_burned => 'Calories a Wɔahyew';

  @override
  String get workout_empty => 'No workouts logged nnɛ';

  @override
  String get workout_save_success => 'Workout gyee no yiye!';

  @override
  String get workout_type => 'Apɔw-mu-teɛteɛ Type';

  @override
  String get workout_notes => 'Nsɛm a Wɔahyɛ no Nsow & Nsusuwii';

  @override
  String get health_overview_title => 'Akwahosan & Nneɛma a Ɛho Hia';

  @override
  String get health_heart_rate => 'Koma a Ɛbɔ';

  @override
  String get health_blood_oxygen => 'Mogya mu Oxygen (SpO2) .';

  @override
  String get health_blood_pressure => 'Mogya Nhyɛso';

  @override
  String get health_blood_glucose => 'Mogya mu Glucose';

  @override
  String get health_body_temperature => 'Nipadua mu Ɔhyew';

  @override
  String get health_sleep_tracking => 'Dae a Wɔde Di Dwuma';

  @override
  String get health_weight_tracking =>
      'Mu duru & Nipadua mu Nneɛma a Wɔahyehyɛ';

  @override
  String get health_waist_hip => 'Asen ne Asen Nkyɛmu';

  @override
  String get health_devices_hub => 'Mfiri & Smartwatch Hub a Wɔde Yɛ Adwuma';

  @override
  String get health_sync_now => 'Sync Akwahosan Ho Nsɛm';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Nea etwa to a wɔde yɛɛ sync: $time';
  }

  @override
  String get health_manual_entry => 'Nsaano Akwahosan Nkyerɛwee';

  @override
  String get health_metric_detail => 'Metric Nsɛm a Wɔakyerɛkyerɛ Mu';

  @override
  String get health_connected_sensors => 'Akwahosan Sensors a Wɔaka abom';

  @override
  String get plan_title => 'Daa Nhyehyɛe';

  @override
  String get plan_weekly_title => 'Nnawɔtwe Biara Yiyedi Nhyehyɛe';

  @override
  String get plan_calorie_target => 'Calorie Botae a Wɔde Di Dwuma';

  @override
  String get plan_water_target => 'Hydration Botae a Wɔde Di Dwuma';

  @override
  String get plan_step_target => 'Anamɔn Botae';

  @override
  String get plan_sleep_target => 'Dae a Wɔde Botae';

  @override
  String get plan_meal_suggestions => 'Adidi Ho Nyansahyɛ Ahorow';

  @override
  String get plan_healthy_habits => 'Akwahosan Suban & Afotu';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Nyansahyɛ ahorow';

  @override
  String get plan_generated_title => 'Daa Nhyehyɛe a Wɔayɛ no Ankorankoro';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Sesa Profile no';

  @override
  String get profile_name => 'Edin';

  @override
  String get profile_age => 'Mfe a obi adi';

  @override
  String get profile_gender => 'Bɔbeasu';

  @override
  String get profile_height => 'Ɔsorokɔ';

  @override
  String get profile_weight => 'Mu duru';

  @override
  String get profile_goal => 'Botae Titiriw';

  @override
  String get profile_activity_level => 'Dwumadie Nkyekyɛmu';

  @override
  String get profile_stats => 'Me Yiyedi Ho Akontaabu';

  @override
  String get profile_saved => 'Profile updated yiye';

  @override
  String get profile_bmi => 'Nipadua Mu Nsõ Ho Nsɛnkyerɛnne (BMI) .';

  @override
  String get profile_membership => 'Asɔremma a wɔyɛ';

  @override
  String get settings => 'Nsiesiei a Wɔde Yɛ Adwuma';

  @override
  String get preferences_habits => 'NSƐM A WƆPƐ & SU';

  @override
  String get appearance_theme => 'Ahosiesie & Asɛmti';

  @override
  String get appearance_theme_sub =>
      'Esum, Hann, System Mode & App Akyi Nneɛma a Wɔpaw';

  @override
  String get permissions => 'Tumi krataa & System Access';

  @override
  String get permissions_sub =>
      'Akwahosan Nkitahodi, Anamɔn Sensors, GPS, Amanneɛbɔ & Kamera';

  @override
  String get reminders_notifications => 'Nkaebɔ & Nsɛm a Wɔde Bɔ Amanneɛbɔ';

  @override
  String get reminders_sub =>
      'Adidi bere, nsu, weight check-in & nkaebɔ a wɔde ma ansa na wɔada';

  @override
  String get units_of_measurement => 'Nsusuwii Ahorow a Wɔde Susuw Nneɛma';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) anaa Imperial (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'App Kasa a Wɔde Di Dwuma';

  @override
  String get language_sub =>
      'Borɔfo, हिन्दी (Hindi), Hinglish & wiase nyinaa kasa ahorow 195+';

  @override
  String get home_screen_widgets => 'Home Screen Widgets a Wɔde Di Dwuma';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Anamɔn, Nsu, Aduandi & Mascot';

  @override
  String get wear_os_watch_app => 'Hyɛ OS Watch App no';

  @override
  String get wear_os_sub =>
      'Smartwatch hokafo, tiles, nsɛnnennen & nkwa vitals';

  @override
  String get goals_wellness => 'BOTAEƐ & WELLNESS NHWEHWƐMU';

  @override
  String get nutrition_targets => 'Aduandi Botae & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie botae, protein, carbs, srade & nsu botae';

  @override
  String get weekly_recap =>
      'Nnawɔtwe Biara Akwahosan Ho Nsɛm a Wɔasan Asusuw Ho';

  @override
  String get weekly_recap_sub =>
      '7-da calorie average, macro ratio & da a eye sen biara';

  @override
  String get streaks_milestones => 'Streaks & Nneɛma a Ɛho Hia';

  @override
  String get streaks_sub => 'Nhwiren a ɛyɛ nnam streaks, badges & nkɔso';

  @override
  String get connected_devices => 'NKYERƐKYERƐMU A ƐKA HO & ECOSYSTEM';

  @override
  String get devices_hub => 'Mfiri & Smartwatch Hub a Wɔde Yɛ Adwuma';

  @override
  String get devices_hub_sub =>
      'Akwahosan Nkitahodi, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Nneɛma a Atwa Yɛn Ho Ahyia & Wim Tebea';

  @override
  String get surroundings_sub =>
      'Mframa pa (AQI), UV index & wim tebea mu nsu ho afotu';

  @override
  String get bloomi_pro => 'Bloomi Pro Nkrataa a Wɔde Di Dwuma';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 fie screen widgets & nneɛma a ɛho hia akyi di';

  @override
  String get about_security => 'ABOUT & SECURITY HO NSƐM';

  @override
  String get about_bloomi => 'Bloomi ho asɛm';

  @override
  String get about_bloomi_sub =>
      'Build specifications, nkyerɛase, attributions';

  @override
  String get privacy_policy => 'Nsɛm a Wɔde Sie';

  @override
  String get privacy_policy_sub => 'Offline-kan, on-device data nhyehyɛe';

  @override
  String get terms_conditions => 'Nsɛm ne Nsɛm a Wɔahyehyɛ';

  @override
  String get terms_conditions_sub =>
      'Ɔsom ho nhyehyɛe ne akwahosan ho akwankyerɛ';

  @override
  String get delete_account => 'Popa Akontaabu & Data';

  @override
  String get delete_account_sub =>
      'Popa mpɔtam hɔ SQLite data ne mununkum backups a wontumi nsakra';

  @override
  String get healthy_habits => 'Nya apɔwmuden ho su a ɛyɛ brɛoo na ɛtra hɔ daa';

  @override
  String get all_logs => 'Me Data & Logs a Wɔadi Akyi';

  @override
  String get search_language => 'Hwehwɛ kasa anaa kurom hɔ nkyerɛwde so...';

  @override
  String get languages_available => 'Kasa Ahorow a Ɛwɔ Hɔ';

  @override
  String get no_matching_languages => 'Wonhuu kasa horow a ɛne no hyia biara';

  @override
  String get try_searching =>
      'Bɔ mmɔden sɛ wode kurom hɔ nkyerɛwee anaa Engiresi kasa mu nkyerɛwde bɛhwehwɛ';

  @override
  String get partially_translated => 'Wɔakyerɛ ase fã bi';

  @override
  String get complete_translation => 'Awiei koraa';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Kasa a wɔde asi hɔ sɛ $name ($nativeName ) .';
  }

  @override
  String get surroundings_title =>
      'Nneɛma a Atwa Yɛn Ho Ahyia & Nneɛma a Atwa Yɛn Ho Ahyia';

  @override
  String get surroundings_aqi => 'Mframa Pa Ho Nkyerɛkyerɛmu';

  @override
  String get surroundings_uv => 'UV Index a Wɔde Kyerɛkyerɛ';

  @override
  String get surroundings_temp => 'Ɔhyew a ɛwɔ hɔ';

  @override
  String get surroundings_humidity => 'Nsu a ɛyɛ nwini';

  @override
  String get surroundings_hydration_advice =>
      'Kɔ so nya nsu pa wɔ wim tebea a ɛwɔ hɔ mprempren mu.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Hwehwɛ Aduan mu';

  @override
  String get food_quick_barcode => 'Scan Barcode a ɛwɔ hɔ 👑';

  @override
  String get food_quick_water => 'Fa Nsu ka ho';

  @override
  String get food_quick_custom => 'Aduan a Wɔayɛ no Amanneɛbɔ';

  @override
  String get surroundings_good => 'Eye';

  @override
  String get surroundings_moderate => 'Ɛyɛ nea ɛkɔ fam';

  @override
  String get surroundings_unhealthy => 'Nea ɛnteɛ';

  @override
  String get notifications_title => 'Amanneɛbɔ & Kɔkɔbɔ';

  @override
  String get notifications_empty => 'Amanneɛbɔ foforo biara nni hɔ';

  @override
  String get notifications_mark_read => 'Hyɛ Ne Nyinaa agyirae sɛ Akenkan';

  @override
  String get notifications_clear => 'Popa Ne Nyinaa';

  @override
  String get reminders => 'Nkaebɔ Nhyehyɛe';

  @override
  String get notifications => 'Amanneɛbɔ ahorow';

  @override
  String get reminders_breakfast_title => 'Anɔpaduan Nkaebɔ 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Anɔpa pa! Bere a wɔde di anɔpaduan a ahoɔden wom wɔ $time .';
  }

  @override
  String get reminders_lunch_title => 'Awia Aduan Nkaebɔ 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Gyina kakra na nya awia aduan a ɛkari pɛ, a adwene wom wɔ $time .';
  }

  @override
  String get reminders_dinner_title => 'Anwummere Adidi Nkaebɔ 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Bere a wɔde di anwummere aduan a emu yɛ hare na ɛma abotɔyam wɔ $time .';
  }

  @override
  String get reminders_water_title => 'Nsuo a Ɛma Nsuo Nsuo 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Bere a ɛsɛ sɛ wɔnom nsu a ɛyɛ foforo kuruwa! ( $time ) Ɔde ne nsa kyerɛɛ ne so.';
  }

  @override
  String get reminders_weight_title => 'Nnawɔtwe Biara Nkaribo ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Di wo dapɛn dapɛn nipadua metrics akyi wɔ Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Daa Mframa-akɔ fam 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Gye w’ahome na siesie wo ho ma nna a ɛyɛ ahomegye ( $time ).';
  }

  @override
  String get onboard_welcome => 'Yɛma wo akwaaba ba Bloomi';

  @override
  String get onboard_sub =>
      'Wo adamfofa su, offline-di kan akwahosan ne aduannuru hokafo.';

  @override
  String get onboard_get_started => 'Fi Ase';

  @override
  String get onboard_sign_in => 'Hyehyɛ Mu';

  @override
  String get onboard_skip => 'Twa so';

  @override
  String get onboard_choose_goal => 'Dɛn ne w’akwahosan botae titiriw?';

  @override
  String get onboard_goal_weight_loss => 'Mu duru a Wɔtew So Bbrɛoo';

  @override
  String get onboard_goal_muscle => 'Ntini mu Mfaso & Ahoɔden';

  @override
  String get onboard_goal_energy => 'Da biara da Ahoɔden & Nhoɔden';

  @override
  String get onboard_goal_habits => 'Adwene mu Adidi a Ɛma Apɔwmuden';

  @override
  String get onboard_about_you => 'Ka Wo Ho Ho Nsɛm Kyerɛ Yɛn';

  @override
  String get onboard_lifestyle => 'Wo Daa Daa Nneɛma a Wobɛyɛ';

  @override
  String get onboard_permissions_title => 'Tumi krataa & System Access';

  @override
  String get onboard_permissions_sub =>
      'Ma kwan ma sync anammɔn, apɔw-mu-teɛteɛ, ne nkaebɔ ahorow.';

  @override
  String get onboard_plan_ready_title => 'Wo Amanneɛbɔ Nhyehyɛe no Asiesie!';

  @override
  String get onboard_plan_ready_sub =>
      'Yɛyɛɛ aduannuru ne apɔwmuden ho nhyehyɛe a ɛyɛ brɛoo, a ɛyɛ ankorankoro de maa wo nkutoo.';

  @override
  String get onboard_enter_bloomi => 'Hyɛn Bloomi mu';

  @override
  String get insights_weekly_report =>
      'Nnawɔtwe Biara Akwahosan Ho Nsɛm a Wɔasan Asusuw Ho';

  @override
  String insights_best_day(Object day) {
    return 'Da a Ɛyɛ Nkɔso a Ɛyɛ Paara: $day .';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Nneɛma a Ɛho Hia';

  @override
  String insights_unlocked_on(Object date) {
    return 'Wɔabue wɔ $date so.';
  }

  @override
  String get insights_keep_going => 'Kɔ so nya nkɔso a ɛyɛ nwonwa no!';

  @override
  String get widgets_title => 'Home Screen Widgets a Wɔde Di Dwuma';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets a ɛyɛ adwuma: $count .';
  }

  @override
  String get widgets_hub_title => 'Bloomi Akwahosan Ho Adesuabea';

  @override
  String get widgets_steps_title => 'Anamɔn & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Ntɛmntɛm Nkyerɛwde';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Ɔhokafo';

  @override
  String get wear_os_title => 'Hyɛ OS Smartwatch a ɛwɔ hɔ';

  @override
  String get wear_os_connected => 'Wɔde Bata Watch ho';

  @override
  String get wear_os_sync => 'Sync Watch Data no yɛ pɛ';

  @override
  String get theme_title => 'Ahosiesie & Asɛmti';

  @override
  String get theme_mode => 'Asɛmti Mode';

  @override
  String get theme_light => 'Hann';

  @override
  String get theme_dark => 'Esum mu';

  @override
  String get theme_system => 'System Default a Wɔde Di Dwuma';

  @override
  String get theme_background_palette => 'Akyi Nsɛm a Wɔakyerɛw';

  @override
  String get units_title => 'Nsusuwii Ahorow a Wɔde Susuw Nneɛma';

  @override
  String get units_metric => 'Metric (kg, cm, ml) 1.1.';

  @override
  String get units_imperial => 'Ahemman (lbs, wɔ, fl oz) .';

  @override
  String get home_unable_load => 'Entumi nhyɛ dashboard no mu';

  @override
  String get home_health_permission_req =>
      'Akwahosan Nkitahodi ho kwan a Wɔhwehwɛ';

  @override
  String get home_health_permission_desc =>
      'Bloomi hwehwɛ Health Connect kwan na ama wɔatwe anammɔn ankasa, koma bɔ, na wɔayɛ mobile home widgets wɔ bere ankasa mu.';

  @override
  String get home_allow_health => 'Ma Akwahosan Nkitahodi Ho Nkitahodi';

  @override
  String get home_ready_mindful_day =>
      'Woasiesie wo ho ama da a wode adwene bɛba? ✨';

  @override
  String get home_quick_add => 'Ntɛmntɛm Fa ka ho';

  @override
  String get home_live_gps => 'GPS a ɛte ase';

  @override
  String get home_calories_remaining_label => 'CALORIES A ƐKA HO';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Wodi: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap ma Nsuo Tracker 💧';

  @override
  String get home_water_goal_reached => 'Da biara botae a woduu ho 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml to da biara da botae';
  }

  @override
  String get home_details => 'Nsɛm a ɛkɔ akyiri';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade na woabue personalized da biara da botae & AI nhyehyɛe';

  @override
  String get home_unlock => 'Bue 👑 no mu';

  @override
  String get home_quick_log_hint => 'Kyerɛw wellness entry bi ntɛm ara';

  @override
  String get food_serving_size => 'Ɔsom Kɛseɛ';

  @override
  String get food_serving_grams => 'Ɔsom (g) .';

  @override
  String get food_number_servings => 'Nnipa Dodow a Wɔsom';

  @override
  String get food_calories_per_serving => 'Calories a ɛwɔ aduan biara mu';

  @override
  String get food_recipe_ingredients => 'Nneɛma a wɔde yɛ aduan';

  @override
  String get food_recipe_add_ingredient => 'Fa Ingredient ka ho';

  @override
  String get food_recipe_directions => 'Akwankyerɛ & Nsɛm a Wɔakyerɛw';

  @override
  String get food_recipe_total => 'Total Recipe Aduandi a Wɔde Ma';

  @override
  String get food_recipe_per_serving => 'Per Serving Aduandi a Wɔde Di Dwuma';

  @override
  String get food_recipe_saved_toast => 'Amanne aduan a wɔkora so yiye!';

  @override
  String get food_barcode_found => 'Wɔahu Aguade!';

  @override
  String get food_barcode_not_found_desc =>
      'Yɛantumi anhu saa barcode yi wɔ database a wɔabue no mu. Wubetumi de aka ho sɛ aduan a wɔahyɛ da ayɛ.';

  @override
  String get food_add_custom_btn => 'Fa Custom Food ka ho';

  @override
  String get food_scan_again => 'Scan Bio';

  @override
  String get food_review_items => 'Hwɛ Nnuan a Wɔahu mu';

  @override
  String get food_review_hint =>
      'Yɛ nsakrae wɔ dodow mu anaa yi ade biara a wunnim fi hɔ';

  @override
  String get food_log_selected => 'Log Nnuan a Wɔapaw';

  @override
  String get food_favourites_title => 'Nnuan a M’ani gye ho';

  @override
  String get food_recent_title => 'Nnansa yi Nnuan';

  @override
  String get food_no_favourites =>
      'Nnuan a wɔpɛ biara nni hɔ de besi nnɛ. Tap heart wɔ aduan biara a wode besie wɔ ha.';

  @override
  String get food_no_recents => 'Wonhuu nnuan a wɔakyerɛw nnansa yi biara.';

  @override
  String get food_nutrition_details_title => 'Daa Aduandi Ho Nsɛm';

  @override
  String get food_macro_protein_label => 'Protein a Ɛpaapae';

  @override
  String get food_macro_carbs_label => 'Carbs a Ɛpaapae';

  @override
  String get food_macro_fat_label => 'Srade a Ɛpaapae';

  @override
  String get food_macro_fiber_label => 'Fiber a Ɛpaapae';

  @override
  String get food_daily_target_comparison => 'Botae a Wɔde Toto Ho';

  @override
  String food_target_label(Object target) {
    return 'Botaeɛ: $target .';
  }

  @override
  String get food_edit_entry => 'Sesa Diary Nsɛm a Wɔakyerɛw';

  @override
  String get food_delete_entry => 'Popa Nsɛm a Wɔakyerɛw no';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal na ɛwɔ hɔ';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current a ɛyɛ $target ml';
  }

  @override
  String get water_intake_history => 'Ɛnnɛ Nsuo Nnua';

  @override
  String get water_no_logs_today =>
      'Nsu biara nni hɔ a wɔatwa de besi nnɛ. Hydrate na pia ntɛm add button!';

  @override
  String get water_adjust_goal => 'Yɛ Daa Botae no mu Nsakrae';

  @override
  String get health_connect_banner => 'Nkitahodi ne Health Connect';

  @override
  String get health_vitals_summary => 'Daa Akwahosan Ho Nneɛma a Ɛho Hia';

  @override
  String get health_latest_heart_rate => 'Koma a Ɛbɔ a Ɛba Akyiri Yi';

  @override
  String get health_latest_bp => 'Mogya Nhyɛso';

  @override
  String get health_latest_spo2 => 'Mogya mu Oxygen';

  @override
  String get health_latest_glucose => 'Mogya mu Glucose';

  @override
  String get health_latest_weight => 'Mu duru';

  @override
  String get health_latest_sleep => 'Bere tenten a Wɔde Da';

  @override
  String get health_add_manual => 'Fa Nsaano Nsusuwii ka ho';

  @override
  String get health_history_trends => 'Abakɔsɛm mu Nneɛma a Ɛkɔ So';

  @override
  String get health_sync_success => 'Akwahosan ho nsɛm a wɔde yɛɛ sync yiye!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours dɔnhwerew $mins simma';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilogram';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm na ɛyɛ adwuma';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % na ɛwɔ hɔ.';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL na ɛyɛ adwuma';
  }

  @override
  String get health_devices_title => 'Mfiri a Wɔde Di Dwuma & Nneɛma a Wɔhyɛ';

  @override
  String get health_devices_desc =>
      'Hwɛ smartwatches a wɔabɔ no abien, fitness trackers, ne akwahosan sensor ahorow so.';

  @override
  String get health_workout_editor_title => 'Sesa Apɔw-mu-teɛteɛ';

  @override
  String get health_workout_name_label => 'Apɔw-mu-teɛteɛ Edin';

  @override
  String get health_workout_duration_label => 'Bere tenten (simma) .';

  @override
  String get health_workout_calories_label =>
      'Calories a Wɔabu akontaa (kcal) .';

  @override
  String get health_workout_date_label => 'Da ne Bere';

  @override
  String get plan_daily_wellness_roadmap =>
      'Wo Ɔkwankyerɛ a Woayɛ no Ankorankoro';

  @override
  String get plan_morning_routine => 'Anɔpa Nneɛma a Wɔyɛ';

  @override
  String get plan_afternoon_routine => 'Awia Yiyedi';

  @override
  String get plan_evening_routine => 'Anwummere Mframa-Ase';

  @override
  String get plan_coach_badge => 'Bloomi AI Ɔkyerɛkyerɛfo';

  @override
  String get plan_weekly_overview => 'Nnafua 7 Akwahosan Ho Adwene';

  @override
  String get plan_targets_title => 'Wellness Botae & Botae Ahorow';

  @override
  String get plan_calorie_budget_label => 'Da biara da Calorie Budget';

  @override
  String get plan_water_budget_label => 'Daa Nsuo Botaeɛ';

  @override
  String get plan_step_budget_label => 'Daa Anamɔn Botae';

  @override
  String get plan_macro_split_label => 'Macronutrient Nkyɛmu';

  @override
  String get profile_personal_details => 'Ankorankoro Nsɛm';

  @override
  String get profile_body_stats => 'Nipadua Nsusuwii';

  @override
  String get profile_app_preferences => 'Nneɛma a Wɔpɛ & App Nsiesiei';

  @override
  String get profile_edit_name_hint => 'Wo din';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ɔsorokɔ ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Mu duru ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Mfe a obi adi';

  @override
  String get profile_gender_male => 'Ɔbarima';

  @override
  String get profile_gender_female => 'Ɔbea';

  @override
  String get profile_gender_other => 'Afoforo / Pɛ sɛ worenka';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Apɔw-mu-teɛteɛ kakraa bi anaasɛ wonnyɛ hwee) .';

  @override
  String get profile_activity_light => 'Ɛnyɛ den (nnafua 1-3/dapɛn) .';

  @override
  String get profile_activity_moderate =>
      'Ɛyɛ nnam a ɛkɔ fam (nnafua 3-5/dapɛn) .';

  @override
  String get profile_activity_very => 'Ɛyɛ nnam paa (nnafua 6-7/dapɛn) .';

  @override
  String get settings_wear_os_header => 'Hyɛ OS Ɔhokafo App';

  @override
  String get settings_wear_os_desc =>
      'Fa Bloomi tile ne nsɛnnennen no hyɛ wo Wear OS dɔn no so na ama woahwɛ calories, nsu, ne anammɔn ahorow.';

  @override
  String get settings_widgets_header => 'Nkitahodi Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Pin bere ankasa mu widgets wɔ wo device home screen so na woanya updates ntɛm ara.';

  @override
  String get settings_about_header => 'Bloomi ho asɛm';

  @override
  String get settings_about_version => 'Nkyerɛaseɛ 1.0.0';

  @override
  String get settings_about_build => 'Si 100 na ɛyɛ';

  @override
  String get settings_about_credits =>
      'Wɔde ahwɛyiye na ɛyɛɛ no sɛnea ɛbɛyɛ a wobenya adwene, apɔwmuden asetra.';

  @override
  String get settings_terms_header => 'Nsɛm ne Nsɛm a Wɔahyehyɛ';

  @override
  String get settings_privacy_header => 'Nsɛm a Wɔde Sie';

  @override
  String get settings_delete_header => 'Popa Akontaabu & Data';

  @override
  String get settings_delete_warning =>
      'Wɔrentumi nsan nyɛ adeyɛ yi. Wɔbɛpopa w’aduan, w’apɔw-mu-teɛteɛ, nneɛma a ɛho hia, ne wo profile nyinaa koraa.';

  @override
  String get settings_delete_confirm_btn => 'Popa Daa';

  @override
  String get onboard_welcome_headline => 'Yɛma wo akwaaba ba Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Dwo, adwene mu wellness tracking a wɔayɛ atwa w’asetra ho ahyia.';

  @override
  String get onboard_step_about => 'Wo Ho Nsɛm';

  @override
  String get onboard_step_goals => 'Wo Botae Ahorow';

  @override
  String get onboard_step_lifestyle => 'Da biara da Suban';

  @override
  String get onboard_step_permissions => 'Mma ho kwan';

  @override
  String get onboard_step_plan => 'Woasiesie wo ho!';

  @override
  String get onboard_health_connect_perm => 'Akwahosan Nkitahodi Ho Nkɔmmɔbɔ';

  @override
  String get onboard_step_sensors_perm => 'Anamɔn Counter Sensor';

  @override
  String get onboard_notif_perm => 'Nkaebɔ & Amanneɛbɔ a Ɛwɔ Adwene Mu';

  @override
  String get onboard_camera_perm =>
      'Mfoninitwa afiri (Barcode & Aduan Scanner) .';

  @override
  String get onboard_grant_permissions => 'Ma Hokwan a Wɔde Ma';

  @override
  String get onboard_continue_dashboard => 'Bue Dashboard no mu';

  @override
  String get notif_channel_hydration_name => 'Nsuo a Ɛma Nsuo Nsuo Nsuo';

  @override
  String get notif_channel_hydration_desc =>
      'Nsu ho nkaebɔ a ɛyɛ brɛoo da mũ no nyinaa';

  @override
  String get notif_channel_nutrition_name => 'Aduan & Aduandi Ho Nkaebɔ';

  @override
  String get notif_channel_nutrition_desc =>
      'Anɔpa, awia, ne anwummere nkaebɔ kɔkɔbɔ ahorow';

  @override
  String get notif_channel_steps_name => 'Anamɔn Nsɛntitiriw';

  @override
  String get notif_channel_steps_desc =>
      'Afahyɛ ahorow bere a wodu da biara da anammɔn botae ahorow ho no';

  @override
  String get notif_channel_vitals_name =>
      'Akwahosan & Nneɛma a Ɛho Hia Nhwehwɛmu';

  @override
  String get notif_channel_vitals_desc =>
      'Nkaebɔ ahorow a ɛma mframa mu duru ne ansa na wɔada';

  @override
  String get notif_action_log_water => '💧 Log +250ml na ɛwɔ hɔ';

  @override
  String get notif_action_snooze => 'Snooze 15m na wobɛda';

  @override
  String get notif_action_log_meal => '🥗 Nnua Aduan';

  @override
  String get language => 'Kasa a wɔka';

  @override
  String get share => 'Kyɛ';

  @override
  String common_days(Object count) {
    return '$count d a atwam ni';
  }
}
