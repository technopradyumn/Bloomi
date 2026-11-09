// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malagasy (`mg`).
class AppLocalizationsMg extends AppLocalizations {
  AppLocalizationsMg([String locale = 'mg']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Trano';

  @override
  String get nav_today => 'Androany';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Sakafo';

  @override
  String get nav_food_diary => 'Diary sakafo';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Fahasalamana';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Vonjeo';

  @override
  String get cancel => 'Manafoana';

  @override
  String get delete => 'Fafao';

  @override
  String get edit => 'Ahitsio';

  @override
  String get done => 'vita';

  @override
  String get close => 'Akatona';

  @override
  String get back => 'Miverina';

  @override
  String get next => 'Manaraka';

  @override
  String get continue_btn => 'Tohizo';

  @override
  String get confirm => 'Hamafiso';

  @override
  String get search => 'Fikarohana';

  @override
  String get filter => 'Sivana';

  @override
  String get all => 'Rehetra';

  @override
  String get active => 'Active';

  @override
  String get today => 'Androany';

  @override
  String get yesterday => 'Omaly';

  @override
  String get tomorrow => 'Rahampitso';

  @override
  String get add => 'Ampio';

  @override
  String get remove => 'Esory';

  @override
  String get refresh => 'Havaozina';

  @override
  String get retry => 'Andramo indray';

  @override
  String get error => 'Error';

  @override
  String get success => 'Fahombiazana';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Tsy misy angona azo';

  @override
  String get offline => 'Fomba an-tserasera';

  @override
  String get offline_sub => 'Hirindra ny fanovana rehefa mifandray indray';

  @override
  String get undo => 'Esory';

  @override
  String get portion => 'Ampahany';

  @override
  String get quantity => 'Hatrany';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Mazava';

  @override
  String get select => 'Select';

  @override
  String get apply => 'Ampiharo';

  @override
  String get reset => 'Avereno';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Eny';

  @override
  String get no => 'Tsia';

  @override
  String get optional => 'Tsy voatery';

  @override
  String get calories => 'Kaloria';

  @override
  String get protein => 'proteinina';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'matavy';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Rano';

  @override
  String get steps => 'Dingana';

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
  String get hours => 'ora';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Manompo';

  @override
  String get servings => 'Servings';

  @override
  String get serving_size => 'Haben\'ny fanompoana';

  @override
  String get per_100g => 'isaky ny 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Azia';

  @override
  String get europe => 'Eoropa';

  @override
  String get middle_east => 'Afovoany Atsinanana';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Trano';

  @override
  String get home_greeting_morning => 'Tsara maraina';

  @override
  String get home_greeting_afternoon => 'Tsara tolakandro';

  @override
  String get home_greeting_evening => 'Tsara hariva';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count andro nisesy',
      one: '1 andro streak',
      zero: '0 andro streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Nodorana';

  @override
  String get home_calories_budget => 'Tetibola kaloria';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal sisa';
  }

  @override
  String get home_water_title => 'Hydration isan\'andro';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Dingana Nandeha';

  @override
  String get home_quick_actions => 'Hetsika haingana';

  @override
  String get home_log_meal => 'Log sakafo';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Androany Insights';

  @override
  String get home_quote => 'Ny safidy salama kely dia miteraka fiovana mamony.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI mpanazatra';

  @override
  String get home_surroundings => 'Ny manodidina & rivotra';

  @override
  String get home_notifications => 'Fampandrenesana';

  @override
  String get home_daily_score => 'Daily Wellness Score';

  @override
  String get home_view_all => 'Jereo daholo';

  @override
  String get food_diary_title => 'Diary sakafo';

  @override
  String get food_breakfast => 'Sakafo maraina';

  @override
  String get food_lunch => 'Sakafo atoandro';

  @override
  String get food_dinner => 'Sakafo hariva';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Ampio sakafo';

  @override
  String get food_edit_food => 'Ahitsio Sakafo';

  @override
  String get food_add_breakfast => 'Ampio sakafo maraina';

  @override
  String get food_add_lunch => 'Ampio sakafo atoandro';

  @override
  String get food_add_dinner => 'Ampio sakafo hariva';

  @override
  String get food_add_snack => 'Ampio Snack';

  @override
  String get food_total_calories => 'Kaloria manontolo';

  @override
  String get food_empty_meal =>
      'Tsy mbola nisy sakafo voarakitra ho an\'ity sakafo ity';

  @override
  String get food_empty_diary =>
      'Tsy misy sakafo voarakitra ho an\'ity andro ity';

  @override
  String get food_log_first_meal =>
      'Tsindrio + raha te hisoratra anarana ny sakafo matsiro voalohany anao';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint => 'Mitadiava lovia, voankazo, dal, roti...';

  @override
  String get food_custom_recipe => 'Sakafo sy fomba fanao mahazatra';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Sakafo vao haingana';

  @override
  String get food_favourites => 'Favorites';

  @override
  String get food_macro_summary => 'Fahasimban\'ny macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Tena te hanala an\'io singa io tokoa ve ianao?';

  @override
  String get food_item_deleted => 'Nesorina ny sakafo';

  @override
  String get food_remaining => 'sisa';

  @override
  String get food_consumed => 'lanina';

  @override
  String food_of_target(Object target) {
    return 'ny $target kcal';
  }

  @override
  String get foodSearch_title => 'Search Foods';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Mamorona sakafo mahazatra';

  @override
  String get foodSearch_recent_searches => 'Fikarohana vao haingana';

  @override
  String get foodSearch_popular => 'Lovia malaza';

  @override
  String get foodSearch_no_results =>
      'Tsy misy sakafo mifanaraka amin\'ny fikarohanao';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Ampifanaraho ao anatin\'ny fakan-tsary';

  @override
  String get barcode_not_found => 'Vokatra tsy hita ao anaty angon-drakitra';

  @override
  String get barcode_premium_feature =>
      'Ny scan barcode dia misy amin\'ny Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Makà sary mazava ny sakafonao';

  @override
  String get camera_analysing => 'Famakafakana lovia sakafo...';

  @override
  String get camera_detected => 'Zavatra hita';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Avereno sary';

  @override
  String get camera_confirm_food => 'Confirm Items';

  @override
  String get customFood_title => 'Sakafo sy fomba fanao mahazatra';

  @override
  String get customFood_name_hint => 'Anaran\'ny lovia na ingredient';

  @override
  String get customFood_calories_hint => 'Kaloria (kcal)';

  @override
  String get customFood_protein_hint => 'Proteinina (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'matavy (g)';

  @override
  String get customFood_save => 'Save Recipe';

  @override
  String get water_tracker_title => 'Water Tracker';

  @override
  String get water_daily_target => 'Tanjona hydration isan\'andro';

  @override
  String get water_logged_today => 'Voasoratra androany';

  @override
  String get water_add_glass => '+250 ml vera';

  @override
  String get water_add_bottle => '+500 ml tavoahangy';

  @override
  String get water_custom_amount => 'Vola manokana';

  @override
  String get water_reminder_tip =>
      'Misotroa rano tsy tapaka mandritra ny andro mba hahazoana hery tsy tapaka.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml rano 💧';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Ampio Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Hery';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Faharetana';

  @override
  String get workout_intensity => 'Intensité';

  @override
  String get workout_calories_burned => 'Kaloria nodorana';

  @override
  String get workout_empty => 'Tsy misy fanazaran-tena voarakitra androany';

  @override
  String get workout_save_success =>
      'Voavonjy soa aman-tsara ny fanazaran-tena!';

  @override
  String get workout_type => 'Karazana fanazaran-tena';

  @override
  String get workout_notes => 'Notes & Reflections';

  @override
  String get health_overview_title => 'Fahasalamana & Vitals';

  @override
  String get health_heart_rate => 'Ny tahan\'ny fo';

  @override
  String get health_blood_oxygen => 'Oksizenina ra (SpO2)';

  @override
  String get health_blood_pressure => 'Tosi-drà';

  @override
  String get health_blood_glucose => 'Glucose ra';

  @override
  String get health_body_temperature => 'Ny hafanan\'ny vatana';

  @override
  String get health_sleep_tracking => 'Fanaraha-maso ny torimaso';

  @override
  String get health_weight_tracking => 'Lanja sy vatana';

  @override
  String get health_waist_hip => 'Andilany amin\'ny valahana';

  @override
  String get health_devices_hub => 'Fitaovana & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Data momba ny fahasalamana';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Narindra farany: $time';
  }

  @override
  String get health_manual_entry => 'Fidirana ara-pahasalamana amin\'ny tanana';

  @override
  String get health_metric_detail => 'Details metrika';

  @override
  String get health_connected_sensors => 'Sensors ara-pahasalamana mifandray';

  @override
  String get plan_title => 'Drafitra isan\'andro';

  @override
  String get plan_weekly_title => 'Drafi-pahasalamana isan-kerinandro';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Tanjona hydration';

  @override
  String get plan_step_target => 'Dingana Target';

  @override
  String get plan_sleep_target => 'Tanjona torimaso';

  @override
  String get plan_meal_suggestions => 'Soso-kevitra momba ny sakafo';

  @override
  String get plan_healthy_habits =>
      'Fahazarana sy toro-hevitra ara-pahasalamana';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Recommendations';

  @override
  String get plan_generated_title => 'Fandaharam-potoana isan\'andro manokana';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Ahitsio ny mombamomba';

  @override
  String get profile_name => 'Anarana';

  @override
  String get profile_age => 'Age';

  @override
  String get profile_gender => 'lahy sy vavy';

  @override
  String get profile_height => 'Haavo';

  @override
  String get profile_weight => 'lanja';

  @override
  String get profile_goal => 'Tanjona voalohany';

  @override
  String get profile_activity_level => 'Ambaratonga hetsika';

  @override
  String get profile_stats => 'My Wellness Stats';

  @override
  String get profile_saved => 'Nohavaozina soa aman-tsara ny mombamomba';

  @override
  String get profile_bmi => 'Fanondroan\'ny vatana (BMI)';

  @override
  String get profile_membership => 'Mpikambana';

  @override
  String get settings => 'Settings';

  @override
  String get preferences_habits => 'PREFERENSIANA & FANAOVANA';

  @override
  String get appearance_theme => 'Fisehoana & Lohahevitra';

  @override
  String get appearance_theme_sub =>
      'Maizina, Maivana, Safidy Rafitra & Safidy Background App';

  @override
  String get permissions => 'Fahazoan-dàlana sy fidirana amin\'ny rafitra';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'Fampahatsiahivana & Fampandrenesana';

  @override
  String get reminders_sub =>
      'Fotoana hisakafo, rano, fisavana lanja & fampahatsiahivana ny fotoana hatoriana';

  @override
  String get units_of_measurement => 'Unite de fandrefesana';

  @override
  String get units_sub =>
      'Metrika (kg, cm, ml, km) na Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Language';

  @override
  String get language_sub =>
      'Anglisy, हिन्दी (Hindi), Hinglish & fiteny maneran-tany 195+';

  @override
  String get home_screen_widgets => 'Widget efijery an-trano';

  @override
  String get widgets_sub =>
      'Widget Android mivantana: Hub, dingana, rano, sakafo ary mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch mpiara-mitory, taila, fahasarotana & velona velona';

  @override
  String get goals_wellness => 'TANJONA SY FAHASALAMANA';

  @override
  String get nutrition_targets => 'Tanjona ara-tsakafo & Fizarana Macro';

  @override
  String get nutrition_targets_sub =>
      'Tanjona kaloria, proteinina, karbônina, tavy & rano';

  @override
  String get weekly_recap => 'Recap isan-kerinandro momba ny fahasalamana';

  @override
  String get weekly_recap_sub =>
      '7 andro kalôria antonony, macro ratio & andro tsara indrindra';

  @override
  String get streaks_milestones => 'Diary & Milestones';

  @override
  String get streaks_sub => 'Taratasy mamony mavitrika, marika & zava-bita';

  @override
  String get connected_devices => 'FITAOVANA Mifandray & ECOSYSTEM';

  @override
  String get devices_hub => 'Fitaovana & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ny manodidina sy ny toetrandro';

  @override
  String get surroundings_sub =>
      'Ny kalitaon\'ny rivotra (AQI), ny tondro UV ary ny toro-hevitra momba ny fanadiovana ny toetr\'andro';

  @override
  String get bloomi_pro => 'Famandrihana Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, Widget efi-trano 5 & fanaraha-maso zava-dehibe';

  @override
  String get about_security => 'MOMBA NY & FIANARANA';

  @override
  String get about_bloomi => 'Momba an\'i Bloomi';

  @override
  String get about_bloomi_sub =>
      'Manorina famaritana, dikan-teny, attributions';

  @override
  String get privacy_policy => 'Politika momba ny fiainana manokana';

  @override
  String get privacy_policy_sub =>
      'Fikirakirana angon-drakitra an-tserasera voalohany amin\'ny fitaovana';

  @override
  String get terms_conditions => 'Fepetra sy fepetra';

  @override
  String get terms_conditions_sub =>
      'Fepetra momba ny serivisy sy torolalana ara-pahasalamana';

  @override
  String get delete_account => 'Fafao ny kaonty & angona';

  @override
  String get delete_account_sub =>
      'Famafana tsy azo ovana ny angona SQLite eo an-toerana sy ny backup cloud';

  @override
  String get healthy_habits =>
      'Mamorona fahazarana ara-pahasalamana malefaka sy maharitra';

  @override
  String get all_logs => 'Ny angon-draiko sy ny diako';

  @override
  String get search_language => 'Karoka amin\'ny fiteny na sora-baventy...';

  @override
  String get languages_available => 'Fiteny misy';

  @override
  String get no_matching_languages => 'Tsy misy fiteny mifanandrify hita';

  @override
  String get try_searching =>
      'Andramo hikaroka amin\'ny alàlan\'ny soratra teratany na tsipelina anglisy';

  @override
  String get partially_translated => 'Nadika ampahany';

  @override
  String get complete_translation => 'feno';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Fiteny napetraka amin\'ny $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Ny manodidina sy ny tontolo iainana';

  @override
  String get surroundings_aqi => 'Fanondroana kalitaon\'ny rivotra';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperature';

  @override
  String get surroundings_humidity => 'Hamandoana';

  @override
  String get surroundings_hydration_advice =>
      'Mijanòna tsara amin\'ny toetr\'andro amin\'izao fotoana izao.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Mitadiava sakafo';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Ampio rano';

  @override
  String get food_quick_custom => 'Sakafo mahazatra';

  @override
  String get surroundings_good => 'Tsara';

  @override
  String get surroundings_moderate => 'antonony';

  @override
  String get surroundings_unhealthy => 'Tsy salama';

  @override
  String get notifications_title => 'Fampandrenesana & Fampandrenesana';

  @override
  String get notifications_empty => 'Tsy misy fampandrenesana vaovao';

  @override
  String get notifications_mark_read => 'Mariho ho Voavaky ny Rehetra';

  @override
  String get notifications_clear => 'Fafao daholo';

  @override
  String get reminders => 'Fampahatsiahivana Settings';

  @override
  String get notifications => 'Fampandrenesana';

  @override
  String get reminders_breakfast_title => 'Fampahatsiahivana sakafo maraina 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Arahabaina! Fotoana hanaovana sakafo maraina mahavelona ao amin\'ny $time .';
  }

  @override
  String get reminders_lunch_title => 'Fampahatsiahivana sakafo atoandro 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Miato ary ankafizo ny sakafo antoandro voalanjalanja sy feno saina ao amin\'ny $time .';
  }

  @override
  String get reminders_dinner_title => 'Fampahatsiahivana sakafo hariva 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Fotoana hanaovana sakafo hariva maivana sy mahafa-po ao amin\'ny $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Fotoana hisotroana rano iray vera vaovao! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Lanja isan-kerinandro ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Araho ny metrika vatanao isan-kerinandro amin\'ny Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Fandripahana alohan\'ny hatoriana 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Mialà sasatra ary miomàna hatory milamina ( $time ).';
  }

  @override
  String get onboard_welcome => 'Tongasoa eto Bloomi';

  @override
  String get onboard_sub =>
      'Sariaka, ivelan\'ny aterineto, mpiara-miasa amin\'ny fahasalamana sy sakafo.';

  @override
  String get onboard_get_started => 'Manomboha';

  @override
  String get onboard_sign_in => 'Midira';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal =>
      'Inona no tanjona voalohany amin\'ny fahasalamanao?';

  @override
  String get onboard_goal_weight_loss => 'Malefaka lanja';

  @override
  String get onboard_goal_muscle => 'Fahazoan\'ny hozatra sy hery';

  @override
  String get onboard_goal_energy => 'Energy & Vitality isan\'andro';

  @override
  String get onboard_goal_habits => 'Sakafo ara-pahasalamana';

  @override
  String get onboard_about_you => 'Lazao anay ny momba anao';

  @override
  String get onboard_lifestyle => 'Ny fanaonao isan\'andro';

  @override
  String get onboard_permissions_title =>
      'Fahazoan-dàlana sy fidirana amin\'ny rafitra';

  @override
  String get onboard_permissions_sub =>
      'Omeo fahafahana miditra amin\'ny dingana fampifanarahana, fanazaran-tena ary fampahatsiahivana.';

  @override
  String get onboard_plan_ready_title => 'Vonona ny drafitra manokanao!';

  @override
  String get onboard_plan_ready_sub =>
      'Nanamboatra tondrozotra ara-pahasalamana malefaka sy voatokana ho anao izahay.';

  @override
  String get onboard_enter_bloomi => 'Hiverina any amin\'ny Bloomi';

  @override
  String get insights_weekly_report =>
      'Recap isan-kerinandro momba ny fahasalamana';

  @override
  String insights_best_day(Object day) {
    return 'Andro tsy miovaova tsara indrindra: $day';
  }

  @override
  String get insights_streaks_badges => 'Diary & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Voahidy tamin\'ny $date';
  }

  @override
  String get insights_keep_going => 'Tohizo ny fandrosoana mahafinaritra!';

  @override
  String get widgets_title => 'Widget efijery an-trano';

  @override
  String widgets_active_count(Object count) {
    return 'Widget mavitrika: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Manaova OS Smartwatch';

  @override
  String get wear_os_connected => 'Mifandray amin\'ny Watch';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Fisehoana & Lohahevitra';

  @override
  String get theme_mode => 'Fomba lohahevitra';

  @override
  String get theme_light => 'Fahazavana';

  @override
  String get theme_dark => 'Maizina';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Palete background';

  @override
  String get units_title => 'Unite de fandrefesana';

  @override
  String get units_metric => 'Metrika (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Tsy afaka mampiditra dashboard';

  @override
  String get home_health_permission_req =>
      'Ilaina ny fahazoan-dàlana mifandray amin\'ny fahasalamana';

  @override
  String get home_health_permission_desc =>
      'Mila fahazoan-dàlana amin\'ny Health Connect i Bloomi mba hisintonana ny dingana tena izy, ny fitepon\'ny fo ary ny fampifanarahana ny widgets an-trano amin\'ny fotoana tena izy.';

  @override
  String get home_allow_health => 'Avelao ny Health Connect';

  @override
  String get home_ready_mindful_day => 'Vonona amin\'ny andro misaina? ✨';

  @override
  String get home_quick_add => 'Quick Add';

  @override
  String get home_live_gps => 'GPS mivantana';

  @override
  String get home_calories_remaining_label => 'KALORIANA MIASA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Nohanina: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap ho an\'ny Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Tanjona isan\'andro 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml mankany amin\'ny tanjona isan\'andro';
  }

  @override
  String get home_details => 'Details';

  @override
  String get home_upgrade_plan_desc =>
      'Fanavaozana mba hamaha ny tanjona isan\'andro manokana & drafitra AI';

  @override
  String get home_unlock => 'Sokafy 👑';

  @override
  String get home_quick_log_hint =>
      'Raketo haingana ny fidirana ara-pahasalamana';

  @override
  String get food_serving_size => 'Haben\'ny fanompoana';

  @override
  String get food_serving_grams => 'Manompo (g)';

  @override
  String get food_number_servings => 'Isan\'ny fanompoana';

  @override
  String get food_calories_per_serving => 'Kaloria isaky ny manompo';

  @override
  String get food_recipe_ingredients => 'Ingredients';

  @override
  String get food_recipe_add_ingredient => 'Ampio ny Ingredient';

  @override
  String get food_recipe_directions => 'Torolàlana & Fanamarihana';

  @override
  String get food_recipe_total => 'Total Nutrition Recipe';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast =>
      'Voatahiry soa aman-tsara ny sakafo mahazatra!';

  @override
  String get food_barcode_found => 'Vokatra hita!';

  @override
  String get food_barcode_not_found_desc =>
      'Tsy hitanay tao anaty angon-drakitra misokatra ity barcode ity. Azonao atao ny manampy azy ho sakafo mahazatra.';

  @override
  String get food_add_custom_btn => 'Ampio sakafo mahazatra';

  @override
  String get food_scan_again => 'Scan indray';

  @override
  String get food_review_items => 'Avereno jerena ny sakafo hita';

  @override
  String get food_review_hint =>
      'Ahitsio ny fatra na esory izay entana tsy fantatra';

  @override
  String get food_log_selected => 'Log voafantina sakafo';

  @override
  String get food_favourites_title => 'Sakafo ankafizina';

  @override
  String get food_recent_title => 'Sakafo vao haingana';

  @override
  String get food_no_favourites =>
      'Tsy mbola misy sakafo ankafizina. Tsindrio ny fo amin\'izay sakafo hotehirizina eto.';

  @override
  String get food_no_recents => 'Tsy nisy sakafo voarakitra vao haingana.';

  @override
  String get food_nutrition_details_title =>
      'Ny antsipirian\'ny sakafo isan\'andro';

  @override
  String get food_macro_protein_label => 'Fahasimban\'ny proteinina';

  @override
  String get food_macro_carbs_label => 'Carbs Breakdown';

  @override
  String get food_macro_fat_label => 'Fat Breakdown';

  @override
  String get food_macro_fiber_label => 'Fibre tapaka';

  @override
  String get food_daily_target_comparison => 'Tanjona fampitahana';

  @override
  String food_target_label(Object target) {
    return 'Kendrena: $target';
  }

  @override
  String get food_edit_entry => 'Ahitsio Diary Entry';

  @override
  String get food_delete_entry => 'Fafao ny fidirana';

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
    return '$current amin\'ny $target ml';
  }

  @override
  String get water_intake_history => 'Loharanon-drano androany';

  @override
  String get water_no_logs_today =>
      'Tsy mbola nisy rano tafavoaka androany. Manaova rano ary kitiho ny bokotra manampy haingana!';

  @override
  String get water_adjust_goal => 'Ahitsio ny tanjona isan\'andro';

  @override
  String get health_connect_banner => 'Mifandray amin\'ny Health Connect';

  @override
  String get health_vitals_summary =>
      'Zava-dehibe ara-pahasalamana isan\'andro';

  @override
  String get health_latest_heart_rate => 'Ny tahan\'ny fo farany';

  @override
  String get health_latest_bp => 'Tosi-drà';

  @override
  String get health_latest_spo2 => 'Ra Oxygène';

  @override
  String get health_latest_glucose => 'Glucose ra';

  @override
  String get health_latest_weight => 'lanja';

  @override
  String get health_latest_sleep => 'Faharetan\'ny torimaso';

  @override
  String get health_add_manual => 'Ampio fandrefesana tanana';

  @override
  String get health_history_trends => 'Fironana ara-tantara';

  @override
  String get health_sync_success => 'Nahomby ny angona momba ny fahasalamana!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ora $mins min';
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
  String get health_devices_title => 'Fitaovana mifandray & azo ampiasaina';

  @override
  String get health_devices_desc =>
      'Tantano ny famantaranandro maranitra, mpanara-maso ara-batana ary sensor ara-pahasalamana.';

  @override
  String get health_workout_editor_title => 'Ahitsio Fanazaran-tena';

  @override
  String get health_workout_name_label => 'Anaran\'ny fanatanjahantena';

  @override
  String get health_workout_duration_label => 'Faharetana (minitra)';

  @override
  String get health_workout_calories_label => 'Kaloria tombanana (kcal)';

  @override
  String get health_workout_date_label => 'Daty sy Ora';

  @override
  String get plan_daily_wellness_roadmap => 'Ny tondrozotranao manokana';

  @override
  String get plan_morning_routine => 'Fanaon\'ny maraina';

  @override
  String get plan_afternoon_routine => 'Fahasalamana mitataovovonana';

  @override
  String get plan_evening_routine => 'Rindrina hariva';

  @override
  String get plan_coach_badge => 'Bloomi AI mpanazatra';

  @override
  String get plan_weekly_overview => 'Fifantohana ara-pahasalamana 7 andro';

  @override
  String get plan_targets_title => 'Tanjona sy tanjona ara-pahasalamana';

  @override
  String get plan_calorie_budget_label => 'Tetibola kaloria isan\'andro';

  @override
  String get plan_water_budget_label => 'Tanjon\'ny rano isan\'andro';

  @override
  String get plan_step_budget_label => 'Tanjona isan\'andro';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Details manokana';

  @override
  String get profile_body_stats => 'Fandrefesana vatana';

  @override
  String get profile_app_preferences => 'Préférences & App Settings';

  @override
  String get profile_edit_name_hint => 'Ny anaranao';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Haavo ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Lanja ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Age';

  @override
  String get profile_gender_male => 'Lahy';

  @override
  String get profile_gender_female => 'Vehivavy';

  @override
  String get profile_gender_other => 'Hafa / Aleo tsy miteny';

  @override
  String get profile_activity_sedentary =>
      'Mipetrapetraka (kely na tsy manao fanatanjahan-tena)';

  @override
  String get profile_activity_light =>
      'Mavitrika maivana (1-3 andro/herinandro)';

  @override
  String get profile_activity_moderate =>
      'Mavitrika antonony (3-5 andro/herinandro)';

  @override
  String get profile_activity_very => 'Tena mavitrika (6-7 andro / herinandro)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Ampidiro ny taila Bloomi sy ny fahasarotana amin\'ny famantaranandro Wear OS mba hijery ny kaloria, ny rano ary ny dingana.';

  @override
  String get settings_widgets_header => 'Widget Android Interactive';

  @override
  String get settings_widgets_desc =>
      'Ampidiro ny widget amin\'ny fotoana tena izy eo amin\'ny efijerin\'ny fitaovanao mba hahazoana fanavaozana eo noho eo.';

  @override
  String get settings_about_header => 'Momba an\'i Bloomi';

  @override
  String get settings_about_version => 'Version 1.0.0';

  @override
  String get settings_about_build => 'Manangana 100';

  @override
  String get settings_about_credits =>
      'Namboarina tamim-pitandremana ho an\'ny fiainana misaina sy salama.';

  @override
  String get settings_terms_header => 'Fepetra sy fepetra';

  @override
  String get settings_privacy_header => 'Politika momba ny fiainana manokana';

  @override
  String get settings_delete_header => 'Fafao ny kaonty & angona';

  @override
  String get settings_delete_warning =>
      'Tsy azo averina io hetsika io. Ny sakafonao, ny fanazaran-tena, ny zava-manan\'aina ary ny mombamomba anao dia ho voafafa mandrakizay.';

  @override
  String get settings_delete_confirm_btn => 'Fafao Maharitra';

  @override
  String get onboard_welcome_headline => 'Tongasoa eto Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Fanaraha-maso ara-pahasalamana malefaka sy saina natao manodidina ny fiainanao.';

  @override
  String get onboard_step_about => 'Momba Anao';

  @override
  String get onboard_step_goals => 'Ny tanjonao';

  @override
  String get onboard_step_lifestyle => 'Fahazarana isan\'andro';

  @override
  String get onboard_step_permissions => 'Fahazoan-dalana';

  @override
  String get onboard_step_plan => 'Vonona!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Fampahatsiahivana & Fampandrenesana';

  @override
  String get onboard_camera_perm =>
      'Fakan-tsary (Kaody barazy & Scanner sakafo)';

  @override
  String get onboard_grant_permissions => 'Omeo alalana';

  @override
  String get onboard_continue_dashboard => 'Sokafy ny Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Fampahatsiahivana rano malefaka mandritra ny andro';

  @override
  String get notif_channel_nutrition_name =>
      'Fampahatsiahivana sakafo sy sakafo';

  @override
  String get notif_channel_nutrition_desc =>
      'Fampandrenesana fampahatsiahivana sakafo maraina, atoandro ary sakafo hariva';

  @override
  String get notif_channel_steps_name => 'Dingana Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Fankalazana rehefa mahatratra ny tanjona isan\'andro';

  @override
  String get notif_channel_vitals_name => 'Fahasalamana & Vitals Checks';

  @override
  String get notif_channel_vitals_desc =>
      'Fampahatsiahivana fampahatsiahivana ny lanja sy ny fotoana hatoriana';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Mijanona 15m';

  @override
  String get notif_action_log_meal => '🥗 Log sakafo';

  @override
  String get language => 'Fiteny';

  @override
  String get share => 'Zarao';

  @override
  String common_days(Object count) {
    return '$count d lasa izay';
  }
}
