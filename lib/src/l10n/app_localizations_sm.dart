// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Samoan (`sm`).
class AppLocalizationsSm extends AppLocalizations {
  AppLocalizationsSm([String locale = 'sm']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Aiga';

  @override
  String get nav_today => 'I aso nei';

  @override
  String get nav_plan => 'Fuafuaga';

  @override
  String get nav_food => 'Mea\'ai';

  @override
  String get nav_food_diary => 'Talaaga o Mea\'ai';

  @override
  String get nav_workout => 'Fa\'amaumauga o toleniga';

  @override
  String get nav_health => 'Soifua Maloloina';

  @override
  String get nav_profile => 'Tala\'aga';

  @override
  String get save => 'Faasaoina';

  @override
  String get cancel => 'Fa\'aleaogaina';

  @override
  String get delete => 'Aveese';

  @override
  String get edit => 'Fa\'atonu';

  @override
  String get done => 'Ua uma';

  @override
  String get close => 'Tapuni';

  @override
  String get back => 'Tua';

  @override
  String get next => 'Sosoo ai';

  @override
  String get continue_btn => 'Fa\'aauau';

  @override
  String get confirm => 'Faamaonia';

  @override
  String get search => 'Saili';

  @override
  String get filter => 'Filifili';

  @override
  String get all => 'O mea uma';

  @override
  String get active => 'Malosi';

  @override
  String get today => 'I aso nei';

  @override
  String get yesterday => 'O ananafi';

  @override
  String get tomorrow => 'O taeao';

  @override
  String get add => 'Faaopoopo';

  @override
  String get remove => 'Aveese';

  @override
  String get refresh => 'Toe faafou';

  @override
  String get retry => 'Toe taumafai';

  @override
  String get error => 'Sese';

  @override
  String get success => 'Manuia';

  @override
  String get loading => 'utaina...';

  @override
  String get no_data => 'E leai ni fa\'amatalaga e maua';

  @override
  String get offline => 'Faiga e leai se initaneti';

  @override
  String get offline_sub =>
      'O suiga o le a fa\'amaopoopo pe a toe fa\'afeso\'ota\'i';

  @override
  String get undo => 'Tatala';

  @override
  String get portion => 'Vaega';

  @override
  String get quantity => 'Tele';

  @override
  String get unit => 'Vaega';

  @override
  String get clear => 'manino';

  @override
  String get select => 'Filifili';

  @override
  String get apply => 'Talosaga';

  @override
  String get reset => 'Toe setiina';

  @override
  String get ok => 'Ua lelei';

  @override
  String get yes => 'Ioe';

  @override
  String get no => 'Leai';

  @override
  String get optional => 'Filifili';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Polotini';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Ga\'o';

  @override
  String get fiber => 'Alava';

  @override
  String get water => 'Vai';

  @override
  String get steps => 'Laasaga';

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
  String get inches => 'i totonu';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'itula';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Auauna atu';

  @override
  String get servings => 'Tautua';

  @override
  String get serving_size => 'Tele o le Auauna';

  @override
  String get per_100g => 'ile 100g';

  @override
  String get india => 'Initia';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Sasa\'e Tutotonu';

  @override
  String get africa => 'Aferika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Aiga';

  @override
  String get home_greeting_morning => 'Taeao manuia';

  @override
  String get home_greeting_afternoon => 'Manuia le aoauli';

  @override
  String get home_greeting_evening => 'Manuia le Afiafi';

  @override
  String get home_streak_title => 'Fugalaau Fugalaau';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aso fa\'asologa',
      one: '1 aso fa\'asologa',
      zero: '0 aso fa\'asologa',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Mu';

  @override
  String get home_calories_budget => 'Calorie Budget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal totoe';
  }

  @override
  String get home_water_title => 'Fa\'asusu i Aso Ta\'itasi';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Laasaga Savali';

  @override
  String get home_quick_actions => 'Gaioiga vave';

  @override
  String get home_log_meal => 'Mea\'ai ogalaau';

  @override
  String get home_log_water => 'Vai ogalaau';

  @override
  String get home_log_workout => 'Toleniga Fa\'amau';

  @override
  String get home_log_weight => 'Ogalaau mamafa';

  @override
  String get home_insights_title => 'Malamalamaga o Aso nei';

  @override
  String get home_quote =>
      'O filifiliga laiti fa\'alesoifua maloloina e fa\'atupu ai suiga fuga.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Faiaoga';

  @override
  String get home_surroundings => 'Si\'osi\'omaga & Ea';

  @override
  String get home_notifications => 'Fa\'asilasilaga';

  @override
  String get home_daily_score => 'Sikoa Soifua Maloloina i Aso Taitasi';

  @override
  String get home_view_all => 'Va\'ai uma';

  @override
  String get food_diary_title => 'Talaaga o Mea\'ai';

  @override
  String get food_breakfast => 'Malu taeao';

  @override
  String get food_lunch => '\'aiga o le aoauli';

  @override
  String get food_dinner => '\'aiga o le afiafi';

  @override
  String get food_snacks => 'Mea\'ai';

  @override
  String get food_add_food => 'Faaopoopo Mea\'ai';

  @override
  String get food_edit_food => 'Fa\'atonu Mea\'ai';

  @override
  String get food_add_breakfast => 'Faaopoopo le taeao';

  @override
  String get food_add_lunch => 'Faaopoopo le aoauli';

  @override
  String get food_add_dinner => 'Faaopoopo le Talisuaga';

  @override
  String get food_add_snack => 'Faaopoopo Mea\'ai';

  @override
  String get food_total_calories => 'Aofa\'i Kalori';

  @override
  String get food_empty_meal =>
      'E le\'i fa\'amauina ni mea\'ai mo lenei taumafataga';

  @override
  String get food_empty_diary => 'E leai ni mea\'ai na tusia mo lenei aso';

  @override
  String get food_log_first_meal =>
      'Tap + e fa\'amau ai lau \'aiga suamalie muamua';

  @override
  String get food_quick_add => 'Fa\'aopoopo vave';

  @override
  String get food_search_hint => 'Su\'e ipu, fualaau aina, dal, roti...';

  @override
  String get food_custom_recipe => 'Mea\'ai Fa\'aleaganu\'u & Resepi';

  @override
  String get food_scan_barcode => 'Su\'e le Barcode';

  @override
  String get food_camera_scan => 'AI Su\'e Mea\'ai';

  @override
  String get food_recent => 'Mea\'ai lata mai nei';

  @override
  String get food_favourites => 'Mea e fiafia iai';

  @override
  String get food_macro_summary => 'Macronutrient malepe';

  @override
  String get food_delete_meal_confirm =>
      'E te mautinoa e te mana\'o e aveese lenei mea?';

  @override
  String get food_item_deleted => 'Ua aveese mea taumafa';

  @override
  String get food_remaining => 'totoe';

  @override
  String get food_consumed => '\'aina';

  @override
  String food_of_target(Object target) {
    return 'ole $target kcal';
  }

  @override
  String get foodSearch_title => 'Su\'e Mea\'ai';

  @override
  String get foodSearch_scan_barcode => 'Su\'e le Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Ata';

  @override
  String get foodSearch_custom_food => 'Fausia Mea\'ai Fa\'apitoa';

  @override
  String get foodSearch_recent_searches => 'Su\'esu\'ega lata mai';

  @override
  String get foodSearch_popular => 'Mea\'ai Ta\'uta\'ua';

  @override
  String get foodSearch_no_results => 'Leai ni mea\'ai e fetaui ma lau sailiga';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align =>
      'Fa\'asa\'o le pa\'u i totonu o le fa\'avaa meapueata';

  @override
  String get barcode_not_found => 'Oloa e le maua ile fa\'amaumauga';

  @override
  String get barcode_premium_feature =>
      'O lo\'o maua le su\'esu\'ega o Barcode i Bloomi Pro';

  @override
  String get camera_title => 'AI Su\'e Mea\'ai';

  @override
  String get camera_tap_hint => 'Pu\'e se ata manino o lau ipu';

  @override
  String get camera_analysing => 'Iloiloina ipu meaai...';

  @override
  String get camera_detected => 'Mea ua maua';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Toe Pu\'e Ata';

  @override
  String get camera_confirm_food => 'Fa\'amaonia Mea';

  @override
  String get customFood_title => 'Mea\'ai Fa\'aleaganu\'u & Resepi';

  @override
  String get customFood_name_hint => 'Mea\'ai po\'o le igoa ole mea\'ai';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Polotini (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Ga\'o (g)';

  @override
  String get customFood_save => 'Faasao fua';

  @override
  String get water_tracker_title => 'Suavai Su\'e';

  @override
  String get water_daily_target => 'Manulauti o le Suavai i Aso Taitasi';

  @override
  String get water_logged_today => 'Logged Aso';

  @override
  String get water_add_glass => '+250 ml tioata';

  @override
  String get water_add_bottle => '+500 ml Fagu';

  @override
  String get water_custom_amount => 'Aofaiga Fa\'apitoa';

  @override
  String get water_reminder_tip =>
      'Inu vai i taimi uma i le aso atoa mo le malosi tumau.';

  @override
  String water_logged_toast(Object amount) {
    return 'Fa\'amauina $amount ml vai 💧';
  }

  @override
  String get workout_title => 'Fa\'amaumauga o toleniga';

  @override
  String get workout_add_exercise => 'Fa\'aopoopo le Toleniga';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Malosi';

  @override
  String get workout_yoga => 'Yoga & Fetuuna\'i';

  @override
  String get workout_duration => 'Umi';

  @override
  String get workout_intensity => 'Malosi';

  @override
  String get workout_calories_burned => 'Kalori Mu';

  @override
  String get workout_empty => 'Leai ni ta\'aloga na fa\'amauina i le aso';

  @override
  String get workout_save_success => 'Fa\'aola lelei le toleniga!';

  @override
  String get workout_type => 'Ituaiga Taleni';

  @override
  String get workout_notes => 'Faamatalaga & Mafaufauga Loloto';

  @override
  String get health_overview_title => 'Soifua Maloloina & Taua';

  @override
  String get health_heart_rate => 'Fa\'asamoa o le fatu';

  @override
  String get health_blood_oxygen => 'Toto Okesene (SpO2)';

  @override
  String get health_blood_pressure => 'Toto toto';

  @override
  String get health_blood_glucose => 'Kulukose toto';

  @override
  String get health_body_temperature => 'Vevela o le Tino';

  @override
  String get health_sleep_tracking => 'Su\'ega Moe';

  @override
  String get health_weight_tracking => 'Mamafa & Fa\'atulagaina o le Tino';

  @override
  String get health_waist_hip => 'Fuafuaga Puimanava-i-Hip';

  @override
  String get health_devices_hub => 'Meafaigaluega & Smartwatch Hub';

  @override
  String get health_sync_now => 'Fa\'atasi Fa\'amatalaga Soifua Maloloina';

  @override
  String health_last_synced(Object time) {
    return 'Fa\'atasiga mulimuli: $time';
  }

  @override
  String get health_manual_entry => 'Tusitala Soifua Maloloina';

  @override
  String get health_metric_detail => 'Fa\'amatalaga Fa\'atatau';

  @override
  String get health_connected_sensors =>
      'Feso\'ota\'i Soifua Maloloina Sensors';

  @override
  String get plan_title => 'Fuafuaga i Aso Taitasi';

  @override
  String get plan_weekly_title => 'Fuafuaga Soifua Maloloina Faalevaiaso';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Fa\'asusu Fa\'atatau';

  @override
  String get plan_step_target => 'Laasaga Sini';

  @override
  String get plan_sleep_target => 'Moe Target';

  @override
  String get plan_meal_suggestions => 'Fautuaga o Mea\'ai';

  @override
  String get plan_healthy_habits => 'Mausa Soifua Maloloina & Fautuaga';

  @override
  String get plan_coach_advice => 'Bloomi AI Fautuaga Faiaoga';

  @override
  String get plan_generated_title => 'Fa\'asologa o Aso Ta\'itasi';

  @override
  String get profile_title => 'Tala\'aga';

  @override
  String get profile_edit => 'Fa\'atonu Tala\'aga';

  @override
  String get profile_name => 'Igoa';

  @override
  String get profile_age => 'Tausaga';

  @override
  String get profile_gender => 'Itupa';

  @override
  String get profile_height => 'Maualuluga';

  @override
  String get profile_weight => 'mamafa';

  @override
  String get profile_goal => 'Sini Autu';

  @override
  String get profile_activity_level => 'Tulaga o Gaoioiga';

  @override
  String get profile_stats => 'O\'u Fuainumera Fa\'alesoifua maloloina';

  @override
  String get profile_saved => 'Fa\'afou manuia';

  @override
  String get profile_bmi => 'Fa\'asinomaga Massa o le Tino (BMI)';

  @override
  String get profile_membership => 'Sui Usufono';

  @override
  String get settings => 'Fa\'atonu';

  @override
  String get preferences_habits => 'FA\'AALIGA MA AGA';

  @override
  String get appearance_theme => 'Foliga & Autu';

  @override
  String get appearance_theme_sub =>
      'Pogisa, Malamalama, Faiga Faiga & Fa\'amatalaga Fa\'amatalaga Fa\'amatalaga';

  @override
  String get permissions => 'Fa\'atagaga & Avanoa Fa\'atonu';

  @override
  String get permissions_sub =>
      'Soifua Maloloina Feso\'ota\'i, Step Sensors, GPS, Fa\'amatalaga & Meapueata';

  @override
  String get reminders_notifications => 'Faamanatu & Faasilasilaga';

  @override
  String get reminders_sub =>
      'Taimi o taumafataga, vai, siaki-i totonu o le mamafa & faamanatu taimi moe';

  @override
  String get units_of_measurement => 'Unite o Fua';

  @override
  String get units_sub =>
      'Fua (kg, cm, ml, km) po\'o le Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Gagana App';

  @override
  String get language_sub =>
      'Igilisi, हिन्दी (Hindi), Hinglish & 195+ gagana a le lalolagi';

  @override
  String get home_screen_widgets => 'Widgets Screen Screen';

  @override
  String get widgets_sub =>
      'Live widget Android: Hub, Laasaga, Vai, Mea\'ai & Mascot';

  @override
  String get wear_os_watch_app => 'Fai OS Matamata App';

  @override
  String get wear_os_sub => 'Smartwatch soa, ta\'ele, fa\'alavelave & ola ola';

  @override
  String get goals_wellness => 'SINI & MALAMALAMAGA O LE LELEI';

  @override
  String get nutrition_targets => 'Mea\'ai Fa\'atatau & Vaeluaga Mata\'utia';

  @override
  String get nutrition_targets_sub =>
      'Calorie sini, polotini, carbs, ga\'o & vai sini';

  @override
  String get weekly_recap => 'Fa\'asologa o Vaiaso Soifua Maloloina';

  @override
  String get weekly_recap_sub =>
      '7-aso calorie averesi, macro ratio & aso sili ona lelei';

  @override
  String get streaks_milestones => 'Fa\'ailoga & Mata\'utia';

  @override
  String get streaks_sub => 'Fuga fuga malosi, pine & taunu\'uga';

  @override
  String get connected_devices => 'MESIN FESOASOANI & ECOSYSTEM';

  @override
  String get devices_hub => 'Meafaigaluega & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Si\'osi\'omaga & Tau';

  @override
  String get surroundings_sub =>
      'Tulaga lelei o le ea (AQI), fa\'asinomaga o le UV & fa\'amatalaga mo le fa\'amamaina o le tau';

  @override
  String get bloomi_pro => 'Bloomi Pro Fa\'atauga';

  @override
  String get bloomi_pro_sub =>
      'AI Fuafuaga Faiaʻoga, 5 mataʻitusi mataʻitusi o le fale ma mea taua';

  @override
  String get about_security => 'UIGA & SAULOIGA';

  @override
  String get about_bloomi => 'E uiga ia Bloomi';

  @override
  String get about_bloomi_sub =>
      'Fausia faʻamatalaga, faʻasologa, faʻamatalaga';

  @override
  String get privacy_policy => 'Faiga Fa\'alilolilo';

  @override
  String get privacy_policy_sub =>
      'Fa\'atosina-muamua, ata fa\'amaumauga i luga ole masini';

  @override
  String get terms_conditions => 'Tuutuuga & Tulaga';

  @override
  String get terms_conditions_sub =>
      'Tulaga o auaunaga ma ta\'iala mo le soifua manuia';

  @override
  String get delete_account => 'Ave\'ese Fa\'amatalaga & Fa\'amatalaga';

  @override
  String get delete_account_sub =>
      'Aveese fa\'aletonu fa\'amaumauga SQLite fa\'apitonu\'u ma fa\'amaumauga ao';

  @override
  String get healthy_habits => 'Fausia ni masaniga filemu ma tumau';

  @override
  String get all_logs => 'O\'u Fa\'amaumauga & Fa\'amaumauga ua Su\'eina';

  @override
  String get search_language =>
      'Su\'esu\'e ile gagana po\'o le fa\'amatalaga moni...';

  @override
  String get languages_available => 'Gagana e Maua';

  @override
  String get no_matching_languages => 'Leai gagana tutusa na maua';

  @override
  String get try_searching =>
      'Taumafai e su\'esu\'e e ala i tusitusiga fa\'ale-aganu\'u po\'o sipelaga Igilisi';

  @override
  String get partially_translated => 'Faaliliu vaega';

  @override
  String get complete_translation => 'mae\'a';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Gagana ua seti i le $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Si\'osi\'omaga & Siosiomaga';

  @override
  String get surroundings_aqi => 'Fa\'asinomaga Tulaga o le Ea';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'vevela';

  @override
  String get surroundings_humidity => 'Susū';

  @override
  String get surroundings_hydration_advice =>
      'Ia fa\'asusu lelei i tulaga o le tau.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Su\'e Mea\'ai';

  @override
  String get food_quick_barcode => 'Su\'e le Barcode 👑';

  @override
  String get food_quick_water => 'Faaopoopo Vai';

  @override
  String get food_quick_custom => 'Mea\'ai masani';

  @override
  String get surroundings_good => 'Lelei';

  @override
  String get surroundings_moderate => 'feololo';

  @override
  String get surroundings_unhealthy => 'Le soifua maloloina';

  @override
  String get notifications_title => 'Fa\'asilasilaga & Fa\'aliga';

  @override
  String get notifications_empty => 'Leai ni fa\'amatalaga fou';

  @override
  String get notifications_mark_read => 'Faailoga Uma ua Faitau';

  @override
  String get notifications_clear => 'Fa\'amama uma';

  @override
  String get reminders => 'Fa\'amanatu Fa\'atonu';

  @override
  String get notifications => 'Fa\'asilasilaga';

  @override
  String get reminders_breakfast_title => 'Faamanatuga o le taeao 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Taeao manuia! Taimi mo se malu taeao fa\'asusu i $time .';
  }

  @override
  String get reminders_lunch_title => 'Faamanatu i le aoauli 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Taofi ma fiafia i se taumafataga paleni ma le mafaufau i le $time .';
  }

  @override
  String get reminders_dinner_title => 'Faamanatu o le afiafi 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Taimi mo se taumafataga mama ma faamalieina ile $time .';
  }

  @override
  String get reminders_water_title => 'Fa\'asuava Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Le taimi e inu ai se ipu vai fou! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Fuafuaga i vaiaso ta\'itasi ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Su\'e au fua fa\'alevaiaso ole tino ile Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Taimi e momoe ai 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Malolo ma sauni mo se moe filemu ( $time ).';
  }

  @override
  String get onboard_welcome => 'Susu mai i Bloomi';

  @override
  String get onboard_sub =>
      'Lau soa faauo, tuusao-muamua soifua maloloina ma meaai.';

  @override
  String get onboard_get_started => 'Amata';

  @override
  String get onboard_sign_in => 'Saini i totonu';

  @override
  String get onboard_skip => 'Fa\'ase\'e';

  @override
  String get onboard_choose_goal =>
      'O le a lau sini autu ole soifua maloloina?';

  @override
  String get onboard_goal_weight_loss => 'Fa\'amama le mamafa';

  @override
  String get onboard_goal_muscle => 'Maua ma Malosi';

  @override
  String get onboard_goal_energy => 'Malosiaga & Malosiaga i Aso Ta\'itasi';

  @override
  String get onboard_goal_habits => '\'Ai Manatu maloloina';

  @override
  String get onboard_about_you => 'Ta\'u Mai E Uiga Oe Lava';

  @override
  String get onboard_lifestyle => 'Lau Fa\'asologa i Aso Taitasi';

  @override
  String get onboard_permissions_title => 'Fa\'atagaga & Avanoa Fa\'atonu';

  @override
  String get onboard_permissions_sub =>
      'Fa\'ataga le avanoa i la\'asaga sync, ta\'aloga, ma fa\'amanatu.';

  @override
  String get onboard_plan_ready_title => 'Ua Sauni lau Fuafuaga Fa\'apitoa!';

  @override
  String get onboard_plan_ready_sub =>
      'Na matou faia se fa\'afanua mālū, fa\'apitoa mea\'ai ma le soifua manuia mo oe.';

  @override
  String get onboard_enter_bloomi => 'Ulufale Bloomi';

  @override
  String get insights_weekly_report => 'Fa\'asologa o Vaiaso Soifua Maloloina';

  @override
  String insights_best_day(Object day) {
    return 'Aso Sili Fa\'atasi: $day';
  }

  @override
  String get insights_streaks_badges => 'Fa\'ailoga & Mata\'utia';

  @override
  String insights_unlocked_on(Object date) {
    return 'Tatala ile $date';
  }

  @override
  String get insights_keep_going => 'Fa\'aauau le alualu i luma matagofie!';

  @override
  String get widgets_title => 'Widgets Screen Screen';

  @override
  String widgets_active_count(Object count) {
    return 'Fa\'agaioiga Fa\'atonu: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'La\'asaga & Ta\'aloga Gaoioiga';

  @override
  String get widgets_water_title => 'Fa\'asao Fa\'asa\'o Tala';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Fai OS Smartwatch';

  @override
  String get wear_os_connected => 'Feso\'ota\'i i Matamata';

  @override
  String get wear_os_sync => 'Fa\'amaopoopo Mata\'i Fa\'amatalaga';

  @override
  String get theme_title => 'Foliga & Autu';

  @override
  String get theme_mode => 'Faiga Autu';

  @override
  String get theme_light => 'Malamalama';

  @override
  String get theme_dark => 'Pogisa';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Papati Talaaga';

  @override
  String get units_title => 'Unite o Fua';

  @override
  String get units_metric => 'Fua (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Le mafai ona utaina le dashboard';

  @override
  String get home_health_permission_req =>
      'Soifua Maloloina Feso\'ota\'i Fa\'atagaga Manaomia';

  @override
  String get home_health_permission_desc =>
      'E manaʻomia e Bloomi le faʻatagaina o le Health Connect e tosoina ai laʻasaga moni, fatu fatu, ma faʻafetaui masini feaveaʻi fale i le taimi moni.';

  @override
  String get home_allow_health => 'Fa\'ataga Soifua Maloloina Feso\'ota\'i';

  @override
  String get home_ready_mindful_day => 'Sauni mo se aso mafaufau? ✨';

  @override
  String get home_quick_add => 'Fa\'aopoopo vave';

  @override
  String get home_live_gps => 'GPS ola';

  @override
  String get home_calories_remaining_label => 'KALORI TUMAU';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return '\'aina: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap mo Suavai Su\'e 💧';

  @override
  String get home_water_goal_reached => 'Na ausia le sini i aso uma 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ile sini ile aso';
  }

  @override
  String get home_details => 'Fa\'amatalaga';

  @override
  String get home_upgrade_plan_desc =>
      'Faʻaleleia e tatala faʻatatau i aso taʻitasi ma fuafuaga AI';

  @override
  String get home_unlock => 'Tatala 👑';

  @override
  String get home_quick_log_hint =>
      'Fa\'amaumau vave se tala fa\'alesoifua maloloina';

  @override
  String get food_serving_size => 'Tele o le Auauna';

  @override
  String get food_serving_grams => 'Auauna (g)';

  @override
  String get food_number_servings => 'Numera o Tautua';

  @override
  String get food_calories_per_serving => 'Kalori ile laulau';

  @override
  String get food_recipe_ingredients => 'Mea\'ai';

  @override
  String get food_recipe_add_ingredient => 'Fa\'aopoopo Mea';

  @override
  String get food_recipe_directions => 'Faatonuga & Faamatalaga';

  @override
  String get food_recipe_total => 'Aofa\'i Resipe Mea\'ai';

  @override
  String get food_recipe_per_serving => 'Perserving Mea\'ai';

  @override
  String get food_recipe_saved_toast => 'Ua manuia sefe mea\'ai masani!';

  @override
  String get food_barcode_found => 'Oloa Maua!';

  @override
  String get food_barcode_not_found_desc =>
      'Matou te le\'i maua le barcode lea i le fa\'amaumauga tatala. E mafai ona e fa\'aopoopoina e fai ma mea\'ai masani.';

  @override
  String get food_add_custom_btn => 'Fa\'aopoopo Mea\'ai Fa\'apitoa';

  @override
  String get food_scan_again => 'Toe su\'esu\'e';

  @override
  String get food_review_items => 'Toe iloilo Mea\'ai ua Maua';

  @override
  String get food_review_hint =>
      'Fetuuna\'i le aofa\'i pe aveese so\'o se mea e le o iloa';

  @override
  String get food_log_selected => 'Ogalaau Mea\'ai Filifilia';

  @override
  String get food_favourites_title => 'Mea\'ai e fiafia i ai';

  @override
  String get food_recent_title => 'Mea\'ai lata mai nei';

  @override
  String get food_no_favourites =>
      'Leai se mea\'ai e fiafia iai. Tap le fatu i so\'o se mea\'ai e teu ai iinei.';

  @override
  String get food_no_recents => 'Leai se mea\'ai lata mai nei ua maua.';

  @override
  String get food_nutrition_details_title =>
      'Auiliiliga o Mea\'ai i Aso Ta\'itasi';

  @override
  String get food_macro_protein_label => 'Polotini malepe';

  @override
  String get food_macro_carbs_label => 'Carbs malepe';

  @override
  String get food_macro_fat_label => 'Ga\'o malepe';

  @override
  String get food_macro_fiber_label => 'Alava malepe';

  @override
  String get food_daily_target_comparison => 'Fa\'atatau Fa\'atatau';

  @override
  String food_target_label(Object target) {
    return 'Sini: $target';
  }

  @override
  String get food_edit_entry => 'Fa\'asa\'o Fa\'amatalaga Fa\'amatalaga';

  @override
  String get food_delete_entry => 'Aveese le Ulufale';

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
    return '$current o $target ml';
  }

  @override
  String get water_intake_history => 'Ogalaau Suavai o aso nei';

  @override
  String get water_no_logs_today =>
      'E le\'i o\'o i le taimi nei se vai. Fa\'asusu ma ta\'i se faamau fa\'aopoopo vave!';

  @override
  String get water_adjust_goal => 'Fetuuna\'i Manulauti i Aso Taitasi';

  @override
  String get health_connect_banner => 'Feso\'ota\'i ile Health Connect';

  @override
  String get health_vitals_summary => 'Soifua Maloloina i Aso Ta\'itasi';

  @override
  String get health_latest_heart_rate =>
      'Fa\'ato\'a Fa\'ato\'a Fua Fa\'atatau o le fatu';

  @override
  String get health_latest_bp => 'Toto toto';

  @override
  String get health_latest_spo2 => 'Toto Okesene';

  @override
  String get health_latest_glucose => 'Kulukose toto';

  @override
  String get health_latest_weight => 'mamafa';

  @override
  String get health_latest_sleep => 'Umi ole moe';

  @override
  String get health_add_manual => 'Fa\'aopoopo le Fua Tusia';

  @override
  String get health_history_trends => 'Tulaga Fa\'asolopito';

  @override
  String get health_sync_success =>
      'Fa\'amalieina fa\'amaumauga fa\'alesoifua maloloina!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours itula $mins min';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilokalama';
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
  String get health_devices_title => 'Meafaigaluega Feso\'ota\'i & Meafaitau';

  @override
  String get health_devices_desc =>
      'Pulea va\'aiga atamai fa\'atasi, su\'esu\'ega malosi, ma masini fa\'alesoifua maloloina.';

  @override
  String get health_workout_editor_title => 'Fa\'asa\'o le Toleniga';

  @override
  String get health_workout_name_label => 'Igoa Ta\'aloga';

  @override
  String get health_workout_duration_label => 'Umi (minute)';

  @override
  String get health_workout_calories_label => 'Kalori Fa\'atatau (kcal)';

  @override
  String get health_workout_date_label => 'Aso ma Taimi';

  @override
  String get plan_daily_wellness_roadmap => 'Lau Fa\'afanua Fa\'asinomaga';

  @override
  String get plan_morning_routine => 'Fa\'asologa o le Taeao';

  @override
  String get plan_afternoon_routine => 'Soifua Maloloina i le aoauli';

  @override
  String get plan_evening_routine => 'Matagi Afiafi';

  @override
  String get plan_coach_badge => 'Bloomi AI Faiaoga';

  @override
  String get plan_weekly_overview => '7-Aso Soifua Maloloina Taulai';

  @override
  String get plan_targets_title => 'Manulauti ma Sini';

  @override
  String get plan_calorie_budget_label => 'Tala o le Calorie i Aso Taitasi';

  @override
  String get plan_water_budget_label => 'Suavai i Aso Taitasi';

  @override
  String get plan_step_budget_label => 'Sini Laasaga i Aso Taitasi';

  @override
  String get plan_macro_split_label => 'Fa\'atatau o le Macronutrient';

  @override
  String get profile_personal_details => 'Fa\'amatalaga patino';

  @override
  String get profile_body_stats => 'Fua o le Tino';

  @override
  String get profile_app_preferences => 'Fa\'atonuga & Fa\'atonu Fa\'aoga';

  @override
  String get profile_edit_name_hint => 'Lou igoa';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Maualuluga ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Mamafa ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Tausaga';

  @override
  String get profile_gender_male => 'Male';

  @override
  String get profile_gender_female => 'Fafine';

  @override
  String get profile_gender_other => 'Isi / Mana\'o e aua le fai atu';

  @override
  String get profile_activity_sedentary =>
      'Nofo (E itiiti pe leai se faamalositino)';

  @override
  String get profile_activity_light => 'Faigofie (1-3 aso/vaiaso)';

  @override
  String get profile_activity_moderate => 'Faigofie (3-5 aso/vaiaso)';

  @override
  String get profile_activity_very => 'Malosi tele (6-7 aso/vaiaso)';

  @override
  String get settings_wear_os_header => 'Fai OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Fa\'apipi\'i le ta\'ele Bloomi ma fa\'alavelave i lau matamata Wear OS e va\'ai i kalori, vai, ma laasaga.';

  @override
  String get settings_widgets_header => 'Fesootaiga Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Fa\'apipi\'i widget taimi-i luga o lau masini lau masini mo fa\'afouga vave.';

  @override
  String get settings_about_header => 'E uiga ia Bloomi';

  @override
  String get settings_about_version => 'Ituaiga 1.0.0';

  @override
  String get settings_about_build => 'Fausia 100';

  @override
  String get settings_about_credits =>
      'Faia ma le fa\'aeteete mo le ola mafaufau, soifua maloloina.';

  @override
  String get settings_terms_header => 'Tulaga ma Tulaga';

  @override
  String get settings_privacy_header => 'Faiga Fa\'alilolilo';

  @override
  String get settings_delete_header => 'Ave\'ese Fa\'amatalaga & Fa\'amatalaga';

  @override
  String get settings_delete_warning =>
      'E le mafai ona faaleaogaina lenei gaioiga. O au mea\'ai uma, toleniga, mea taua, ma fa\'amatalaga o le a tape\'a tumau.';

  @override
  String get settings_delete_confirm_btn => 'Aveese Tumau';

  @override
  String get onboard_welcome_headline => 'Susu mai i Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Su\'esu\'ega fa\'alelei ma le mafaufau lelei ua fuafuaina i lou olaga.';

  @override
  String get onboard_step_about => 'E uiga ia Oe';

  @override
  String get onboard_step_goals => 'Au Sini';

  @override
  String get onboard_step_lifestyle => 'Mausa i Aso Taitasi';

  @override
  String get onboard_step_permissions => 'Fa\'atagaga';

  @override
  String get onboard_step_plan => 'Sauni!';

  @override
  String get onboard_health_connect_perm =>
      'Soifua Maloloina Feso\'ota\'i Avanoa';

  @override
  String get onboard_step_sensors_perm => 'Laasaga Counter Sensor';

  @override
  String get onboard_notif_perm => 'Fa\'amanatu ma Fa\'asilasilaga';

  @override
  String get onboard_camera_perm =>
      'Meapueata (Fa\'ailoga Fa\'ailoga & Su\'e Mea\'ai)';

  @override
  String get onboard_grant_permissions => 'Tuuina atu Faatagaga';

  @override
  String get onboard_continue_dashboard => 'Tatala Dashboard';

  @override
  String get notif_channel_hydration_name => 'Fa\'asuava Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Faamanatuga vai malie i le aso atoa';

  @override
  String get notif_channel_nutrition_name => 'Mea\'ai & Mea\'ai Faamanatu';

  @override
  String get notif_channel_nutrition_desc =>
      'Faamanatuga o le taeao, aoauli, ma le afiafi';

  @override
  String get notif_channel_steps_name => 'Laasaga Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Fa\'amanatuga pe a o\'o atu i fa\'ailoga la\'a i aso ta\'itasi';

  @override
  String get notif_channel_vitals_name => 'Su\'ega Soifua Maloloina & Mea\'ai';

  @override
  String get notif_channel_vitals_desc =>
      'Faamanatuga mamafa ma le taimi e momoe ai';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'moe 15m';

  @override
  String get notif_action_log_meal => '🥗 Mea\'ai ogalaau';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
