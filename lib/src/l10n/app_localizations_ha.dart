// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Gida';

  @override
  String get nav_today => 'Yau';

  @override
  String get nav_plan => 'Tsari';

  @override
  String get nav_food => 'Abinci';

  @override
  String get nav_food_diary => 'Diary Diary';

  @override
  String get nav_workout => 'Log ɗin motsa jiki';

  @override
  String get nav_health => 'Lafiya';

  @override
  String get nav_profile => 'Bayanan martaba';

  @override
  String get save => 'Ajiye';

  @override
  String get cancel => 'Soke';

  @override
  String get delete => 'Share';

  @override
  String get edit => 'Gyara';

  @override
  String get done => 'Anyi';

  @override
  String get close => 'Kusa';

  @override
  String get back => 'Baya';

  @override
  String get next => 'Na gaba';

  @override
  String get continue_btn => 'Ci gaba';

  @override
  String get confirm => 'Tabbatar';

  @override
  String get search => 'Bincika';

  @override
  String get filter => 'Tace';

  @override
  String get all => 'Duka';

  @override
  String get active => 'Mai aiki';

  @override
  String get today => 'Yau';

  @override
  String get yesterday => 'Jiya';

  @override
  String get tomorrow => 'Gobe';

  @override
  String get add => 'Ƙara';

  @override
  String get remove => 'Cire';

  @override
  String get refresh => 'Sake sabuntawa';

  @override
  String get retry => 'Sake gwadawa';

  @override
  String get error => 'Kuskure';

  @override
  String get success => 'Nasara';

  @override
  String get loading => 'Ana lodawa...';

  @override
  String get no_data => 'Babu bayanai samuwa';

  @override
  String get offline => 'Yanayin Wuta';

  @override
  String get offline_sub =>
      'Canje-canje za su yi aiki tare da zarar an sake haɗawa';

  @override
  String get undo => 'Gyara';

  @override
  String get portion => 'Rabo';

  @override
  String get quantity => 'Yawan';

  @override
  String get unit => 'Naúrar';

  @override
  String get clear => 'Share';

  @override
  String get select => 'Zaɓi';

  @override
  String get apply => 'Aiwatar';

  @override
  String get reset => 'Sake saiti';

  @override
  String get ok => 'Yayi';

  @override
  String get yes => 'Ee';

  @override
  String get no => 'A\'a';

  @override
  String get optional => 'Na zaɓi';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Kiba';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Ruwa';

  @override
  String get steps => 'Matakai';

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
  String get hours => 'sa\'a';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Yin hidima';

  @override
  String get servings => 'Hidima';

  @override
  String get serving_size => 'Girman Bautawa';

  @override
  String get per_100g => 'da 100 g';

  @override
  String get india => 'Indiya';

  @override
  String get asia => 'Asiya';

  @override
  String get europe => 'Turai';

  @override
  String get middle_east => 'Gabas ta Tsakiya';

  @override
  String get africa => 'Afirka';

  @override
  String get americas => 'Amurkawa';

  @override
  String get home_title => 'Gida';

  @override
  String get home_greeting_morning => 'Barka da Safiya';

  @override
  String get home_greeting_afternoon => 'Barka da yamma';

  @override
  String get home_greeting_evening => 'Barka da yamma';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '_PH_0__ kwanaki jere',
      one: 'Tsawon kwana 1',
      zero: '0 kwana jere',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Kone';

  @override
  String get home_calories_budget => 'Kalori Budget';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal ya rage';
  }

  @override
  String get home_water_title => 'Ruwan Ruwa na yau da kullun';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / _PH_1__ ml';
  }

  @override
  String get home_steps_title => 'Matakai Tafiya';

  @override
  String get home_quick_actions => 'Ayyukan gaggawa';

  @override
  String get home_log_meal => 'Log Abinci';

  @override
  String get home_log_water => 'Log Ruwa';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Fahimtar Yau';

  @override
  String get home_quote =>
      'Ƙananan zaɓuɓɓuka masu lafiya suna haifar da canje-canje masu girma.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Kewaye & Iska';

  @override
  String get home_notifications => 'Sanarwa';

  @override
  String get home_daily_score => 'Makin Lafiya na Kullum';

  @override
  String get home_view_all => 'Duba Duk';

  @override
  String get food_diary_title => 'Diary Diary';

  @override
  String get food_breakfast => 'Abincin karin kumallo';

  @override
  String get food_lunch => 'Abincin rana';

  @override
  String get food_dinner => 'Abincin dare';

  @override
  String get food_snacks => 'Abun ciye-ciye';

  @override
  String get food_add_food => 'Ƙara Abinci';

  @override
  String get food_edit_food => 'Gyara Abinci';

  @override
  String get food_add_breakfast => 'Ƙara Breakfast';

  @override
  String get food_add_lunch => 'Ƙara Abincin rana';

  @override
  String get food_add_dinner => 'Ƙara Abincin dare';

  @override
  String get food_add_snack => 'Ƙara Abun ciye-ciye';

  @override
  String get food_total_calories => 'Jimlar Calories';

  @override
  String get food_empty_meal =>
      'Babu abincin da aka shiga don wannan abincin tukuna';

  @override
  String get food_empty_diary => 'Ba a shigar da abinci don wannan rana ba';

  @override
  String get food_log_first_meal =>
      'Matsa + don shiga abincinku na farko mai daɗi';

  @override
  String get food_quick_add => 'Ƙara sauri';

  @override
  String get food_search_hint =>
      'Bincika jita-jita, \'ya\'yan itatuwa, dal, roti...';

  @override
  String get food_custom_recipe => 'Abincin Abinci & Girke-girke';

  @override
  String get food_scan_barcode => 'Duba Barcode';

  @override
  String get food_camera_scan => 'AI Abinci Scanner';

  @override
  String get food_recent => 'Abinci na baya-bayan nan';

  @override
  String get food_favourites => 'Abubuwan da aka fi so';

  @override
  String get food_macro_summary => 'Ragewar Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Ka tabbata kana son cire wannan abun?';

  @override
  String get food_item_deleted => 'An cire kayan abinci';

  @override
  String get food_remaining => 'saura';

  @override
  String get food_consumed => 'cinyewa';

  @override
  String food_of_target(Object target) {
    return 'na _PH_0__ kcal';
  }

  @override
  String get foodSearch_title => 'Bincika Abinci';

  @override
  String get foodSearch_scan_barcode => 'Duba Barcode';

  @override
  String get foodSearch_take_photo => 'Hoton Abincin Karya';

  @override
  String get foodSearch_custom_food => 'Ƙirƙiri Abinci na Musamman';

  @override
  String get foodSearch_recent_searches => 'Bincike na baya-bayan nan';

  @override
  String get foodSearch_popular => 'Shahararrun jita-jita';

  @override
  String get foodSearch_no_results => 'Babu abinci da ya dace da bincikenku';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Daidaita lambar lamba a cikin firam ɗin kamara';

  @override
  String get barcode_not_found => 'Ba a samo samfurin a cikin bayanai ba';

  @override
  String get barcode_premium_feature =>
      'Ana samun sikanin barcode tare da Bloomi Pro';

  @override
  String get camera_title => 'AI Abinci Scanner';

  @override
  String get camera_tap_hint => 'Ɗauki hoto bayyananne na tasa';

  @override
  String get camera_analysing => 'Ana nazarin farantin abinci...';

  @override
  String get camera_detected => 'Abubuwan da aka gano';

  @override
  String get camera_flash => 'Juya Flash';

  @override
  String get camera_retake => 'Sake ɗaukar Hoto';

  @override
  String get camera_confirm_food => 'Tabbatar da Abubuwan';

  @override
  String get customFood_title => 'Abincin Abinci & Girke-girke';

  @override
  String get customFood_name_hint => 'Tasa ko sunan sashi';

  @override
  String get customFood_calories_hint => 'Calories (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Carbohydrates (g)';

  @override
  String get customFood_fat_hint => 'Mai (g)';

  @override
  String get customFood_save => 'Ajiye girke-girke';

  @override
  String get water_tracker_title => 'Ruwan Tracker';

  @override
  String get water_daily_target => 'Burin Ruwa na Kullum';

  @override
  String get water_logged_today => 'Shiga Yau';

  @override
  String get water_add_glass => 'Gilashin + 250 ml';

  @override
  String get water_add_bottle => '+ 500 ml kwalban';

  @override
  String get water_custom_amount => 'Adadin al\'ada';

  @override
  String get water_reminder_tip =>
      'Sha ruwa akai-akai a tsawon yini don samun kuzari.';

  @override
  String water_logged_toast(Object amount) {
    return 'An shiga _PH_0__ ml na ruwa 💧';
  }

  @override
  String get workout_title => 'Log ɗin motsa jiki';

  @override
  String get workout_add_exercise => 'Ƙara motsa jiki';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Ƙarfi';

  @override
  String get workout_yoga => 'Yoga & Sassautu';

  @override
  String get workout_duration => 'Tsawon lokaci';

  @override
  String get workout_intensity => 'Ƙarfi';

  @override
  String get workout_calories_burned => 'Calories sun ƙone';

  @override
  String get workout_empty => 'Babu motsa jiki da aka shiga yau';

  @override
  String get workout_save_success => 'An ajiye aikin motsa jiki cikin nasara!';

  @override
  String get workout_type => 'Nau\'in motsa jiki';

  @override
  String get workout_notes => 'Bayanan kula & Tunani';

  @override
  String get health_overview_title => 'Lafiya & Muhimmanci';

  @override
  String get health_heart_rate => 'Yawan Zuciya';

  @override
  String get health_blood_oxygen => 'Oxygen jini (SpO2)';

  @override
  String get health_blood_pressure => 'Hawan jini';

  @override
  String get health_blood_glucose => 'Glucose na jini';

  @override
  String get health_body_temperature => 'Yanayin Jiki';

  @override
  String get health_sleep_tracking => 'Bibiyar Barci';

  @override
  String get health_weight_tracking => 'Nauyi & Tsarin Jiki';

  @override
  String get health_waist_hip => 'Rabon kugu-zuwa-Hip';

  @override
  String get health_devices_hub => 'Na\'urori & Smartwatch Hub';

  @override
  String get health_sync_now => 'Daidaita Bayanan Lafiya';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Ƙarshe da aka daidaita: _PH_0__';
  }

  @override
  String get health_manual_entry => 'Shigar da Lafiya ta Manual';

  @override
  String get health_metric_detail => 'Cikakken Bayani';

  @override
  String get health_connected_sensors => 'Haɗaɗɗen Senssor na Lafiya';

  @override
  String get plan_title => 'Shirye-shiryen Kullum';

  @override
  String get plan_weekly_title => 'Shirin Lafiya Jari na mako-mako';

  @override
  String get plan_calorie_target => 'Kalori Target';

  @override
  String get plan_water_target => 'Manufar Hydration';

  @override
  String get plan_step_target => 'Manufar Mataki';

  @override
  String get plan_sleep_target => 'Manufar Barci';

  @override
  String get plan_meal_suggestions => 'Shawarwari na Abinci';

  @override
  String get plan_healthy_habits => 'Lafiyayyan Halaye & Nasihu';

  @override
  String get plan_coach_advice => 'Bloomi AI Kocin Shawarwari';

  @override
  String get plan_generated_title => 'Keɓaɓɓen Jadawalin Kullum';

  @override
  String get profile_title => 'Bayanan martaba';

  @override
  String get profile_edit => 'Shirya Bayanan martaba';

  @override
  String get profile_name => 'Suna';

  @override
  String get profile_age => 'Shekaru';

  @override
  String get profile_gender => 'Jinsi';

  @override
  String get profile_height => 'Tsayi';

  @override
  String get profile_weight => 'Nauyi';

  @override
  String get profile_goal => 'Manufar Farko';

  @override
  String get profile_activity_level => 'Matsayin Ayyuka';

  @override
  String get profile_stats => 'Kididdigar Lafiyata';

  @override
  String get profile_saved => 'An sabunta bayanin martaba cikin nasara';

  @override
  String get profile_bmi => 'Jiki Mass Index (BMI)';

  @override
  String get profile_membership => 'Memba';

  @override
  String get settings => 'Saituna';

  @override
  String get preferences_habits => 'FADAKARWA & DABI\'U';

  @override
  String get appearance_theme => 'Bayyanawa & Jigo';

  @override
  String get appearance_theme_sub =>
      'Duhu, Haske, Yanayin Tsarin & Zaɓuɓɓukan Fayil na App';

  @override
  String get permissions => 'Izini & Shigar Tsarin';

  @override
  String get permissions_sub =>
      'Haɗin Kiwon Lafiya, Na\'urori na Mataki, GPS, Fadakarwa & Kamara';

  @override
  String get reminders_notifications => 'Tunatarwa & Fadakarwa';

  @override
  String get reminders_sub =>
      'Lokutan abinci, ruwa, dubawar nauyi & tunasarwar lokacin kwanciya barci';

  @override
  String get units_of_measurement => 'Raka\'a na Ma\'auni';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) ko Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Harshen App';

  @override
  String get language_sub =>
      'Turanci, हिन्दी (Hindi), Hinglish & 195+ harsunan duniya';

  @override
  String get home_screen_widgets => 'Widgets na allo';

  @override
  String get widgets_sub =>
      'Live widgets na Android: Hub, Matakai, Ruwa, Abinci & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Abokin Smartwatch, fale-falen fale-falen buraka, rikitarwa & abubuwan rayuwa masu rai';

  @override
  String get goals_wellness => 'MANUFOFI & CIWON LAFIYA';

  @override
  String get nutrition_targets => 'Makasudin Nutrition & Macro Rarraba';

  @override
  String get nutrition_targets_sub =>
      'Manufar calorie, furotin, carbohydrates, mai & burin ruwa';

  @override
  String get weekly_recap => 'Makomar Lafiya ta mako-mako';

  @override
  String get weekly_recap_sub =>
      'Matsakaicin kalori na kwanaki 7, rabon macro & mafi kyawun rana';

  @override
  String get streaks_milestones => 'Rarraba & Mahimmanci';

  @override
  String get streaks_sub => 'Fitattun furanni masu aiki, baji & nasarori';

  @override
  String get connected_devices => 'NA\'urori masu haɗi & ECOSYSTEM';

  @override
  String get devices_hub => 'Na\'urori & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Haɗin Lafiya, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Kewaye & Yanayi';

  @override
  String get surroundings_sub =>
      'Ingantacciyar iska (AQI), UV index & nasihu na ruwa';

  @override
  String get bloomi_pro => 'Biyan kuɗi na Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Kocin Shirin AI, widget din allo na gida 5 & bin diddigin abubuwan rayuwa';

  @override
  String get about_security => 'GAME & TSARO';

  @override
  String get about_bloomi => 'Game da Bloomi';

  @override
  String get about_bloomi_sub => 'Gina ƙayyadaddun bayanai, sigar, halaye';

  @override
  String get privacy_policy => 'Manufar Keɓantawa';

  @override
  String get privacy_policy_sub =>
      'Offline-na farko, gine-ginen bayanan na\'urar';

  @override
  String get terms_conditions => 'Sharuɗɗa & Sharuɗɗa';

  @override
  String get terms_conditions_sub => 'Sharuɗɗan sabis da jagororin lafiya';

  @override
  String get delete_account => 'Share Account & Data';

  @override
  String get delete_account_sub =>
      'Goge bayanan SQLite na gida ba tare da juyowa ba da madaidaitan gajimare';

  @override
  String get healthy_habits => 'Gina tausasawa, halaye masu ɗorewa';

  @override
  String get all_logs => 'Bayanan da Na Bibiya & Logs';

  @override
  String get search_language => 'Bincika ta harshe ko rubutun asali...';

  @override
  String get languages_available => 'Akwai Harsuna';

  @override
  String get no_matching_languages => 'Ba a sami yarukan da suka dace ba';

  @override
  String get try_searching =>
      'Gwada bincike ta hanyar rubutun asali ko harafin Turanci';

  @override
  String get partially_translated => 'Fassara juzu\'i';

  @override
  String get complete_translation => 'Cikakkun';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'An saita harshe zuwa _PH_0__ ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Kewaye & Muhalli';

  @override
  String get surroundings_aqi => 'Fihirisar ingancin iska';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Zazzabi';

  @override
  String get surroundings_humidity => 'Danshi';

  @override
  String get surroundings_hydration_advice =>
      'Kasance cikin ruwa sosai a yanayin yanayi na yanzu.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Bincika Abinci';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Ƙara Ruwa';

  @override
  String get food_quick_custom => 'Abinci na al\'ada';

  @override
  String get surroundings_good => 'Yayi kyau';

  @override
  String get surroundings_moderate => 'Matsakaici';

  @override
  String get surroundings_unhealthy => 'Mara lafiya';

  @override
  String get notifications_title => 'Fadakarwa & Faɗakarwa';

  @override
  String get notifications_empty => 'Babu sabon sanarwa';

  @override
  String get notifications_mark_read => 'Alama Duk kamar yadda ake karantawa';

  @override
  String get notifications_clear => 'Share Duk';

  @override
  String get reminders => 'Saitunan Tunatarwa';

  @override
  String get notifications => 'Sanarwa';

  @override
  String get reminders_breakfast_title => 'Tunatarwa Breakfast 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Barka da safiya! Lokaci don karin kumallo mai gina jiki a _PH_0__ .';
  }

  @override
  String get reminders_lunch_title => 'Tunasarwar Abincin rana 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Dakata kuma ku ji daɗin daidaitaccen abincin abincin rana a $time .';
  }

  @override
  String get reminders_dinner_title => 'Tunasarwar Abincin Abinci 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Lokaci don haske, abincin dare mai gamsarwa a _PH_0__ .';
  }

  @override
  String get reminders_water_title => 'Rashin Ruwan Ruwa';

  @override
  String reminders_water_body(Object time) {
    return 'Lokaci don sha gilashin ruwan sabo! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Nauyin Makowa ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bibiyar ma\'aunin jikin ku na mako-mako akan Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Lokacin kwanciya barci iska ya sauka 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Cire iska kuma shirya don kwanciyar hankali ( $time ).';
  }

  @override
  String get onboard_welcome => 'Barka da zuwa Bloomi';

  @override
  String get onboard_sub =>
      'Abokin abokantaka, lafiya da abinci na farko a layi.';

  @override
  String get onboard_get_started => 'Fara';

  @override
  String get onboard_sign_in => 'Shiga';

  @override
  String get onboard_skip => 'Tsallake';

  @override
  String get onboard_choose_goal => 'Menene burin lafiyar ku na farko?';

  @override
  String get onboard_goal_weight_loss => 'Rage nauyi mai laushi';

  @override
  String get onboard_goal_muscle => 'Samun Nazari & Ƙarfi';

  @override
  String get onboard_goal_energy => 'Makamashi Kullum & Mahimmanci';

  @override
  String get onboard_goal_habits => 'Abincin Hankali Lafiya';

  @override
  String get onboard_about_you => 'Faɗa Mana Kanku';

  @override
  String get onboard_lifestyle => 'Ayyukanku na yau da kullun';

  @override
  String get onboard_permissions_title => 'Izini & Shigar Tsarin';

  @override
  String get onboard_permissions_sub =>
      'Bada dama ga matakan daidaitawa, motsa jiki, da masu tuni.';

  @override
  String get onboard_plan_ready_title =>
      'Shirye-shiryenku na Musamman ya Shirya!';

  @override
  String get onboard_plan_ready_sub =>
      'Mun ƙirƙira taswirar abinci mai sauƙi, keɓaɓɓen abinci da taswirar lafiya kawai gare ku.';

  @override
  String get onboard_enter_bloomi => 'Shiga Bloomi';

  @override
  String get insights_weekly_report => 'Makomar Lafiya ta mako-mako';

  @override
  String insights_best_day(Object day) {
    return 'Mafi kyawun Rana: _PH_0__';
  }

  @override
  String get insights_streaks_badges => 'Rarraba & Mahimmanci';

  @override
  String insights_unlocked_on(Object date) {
    return 'An buɗe a _PH_0__';
  }

  @override
  String get insights_keep_going => 'Ci gaba da kyakkyawan ci gaba!';

  @override
  String get widgets_title => 'Widgets na allo';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets masu aiki: _PH_0__';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Matakai & Zobe Mai Aiki';

  @override
  String get widgets_water_title => 'Log ɗin Saurin Ruwa';

  @override
  String get widgets_mascot_title => 'Abokin Mascot Bloomi';

  @override
  String get wear_os_title => 'Sanya OS Smartwatch';

  @override
  String get wear_os_connected => 'Haɗa zuwa Watch';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Bayyanawa & Jigo';

  @override
  String get theme_mode => 'Yanayin Jigo';

  @override
  String get theme_light => 'Haske';

  @override
  String get theme_dark => 'Duhu';

  @override
  String get theme_system => 'Tsoffin tsarin';

  @override
  String get theme_background_palette => 'Palette Bayan Fage';

  @override
  String get units_title => 'Raka\'a na Ma\'auni';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'An kasa loda dashboard';

  @override
  String get home_health_permission_req => 'Ana Bukatar Izinin Haɗin Lafiya';

  @override
  String get home_health_permission_desc =>
      'Bloomi yana buƙatar izinin Haɗin Lafiya don cire matakai na gaske, ƙimar zuciya, da daidaita kayan aikin gida ta hannu a ainihin lokacin.';

  @override
  String get home_allow_health => 'Bada Haɗin Lafiya';

  @override
  String get home_ready_mindful_day => 'Shirya don ranar tunawa? ✨';

  @override
  String get home_quick_add => 'Ƙara sauri';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORIES SAURAN';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'An ci: _PH_0__ / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Matsa don Ruwan Tracker 💧';

  @override
  String get home_water_goal_reached => 'An cimma burin yau da kullun 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '_PH_0__ ml zuwa burin yau da kullun';
  }

  @override
  String get home_details => 'Cikakkun bayanai';

  @override
  String get home_upgrade_plan_desc =>
      'Haɓaka don buɗe keɓaɓɓun manufofin yau da kullun & shirin AI';

  @override
  String get home_unlock => 'Bude 👑';

  @override
  String get home_quick_log_hint => 'Yi rikodin shigarwar lafiya da sauri';

  @override
  String get food_serving_size => 'Girman Bautawa';

  @override
  String get food_serving_grams => 'Yin Hidima (g)';

  @override
  String get food_number_servings => 'Yawan Hidima';

  @override
  String get food_calories_per_serving => 'Calories a kowace hidima';

  @override
  String get food_recipe_ingredients => 'Sinadaran';

  @override
  String get food_recipe_add_ingredient => 'Ƙara Sinadari';

  @override
  String get food_recipe_directions => 'Umarni & Bayanan kula';

  @override
  String get food_recipe_total => 'Jimlar Abincin Gina Jiki';

  @override
  String get food_recipe_per_serving => 'Ta hanyar Bada Abinci';

  @override
  String get food_recipe_saved_toast =>
      'An adana abinci na musamman cikin nasara!';

  @override
  String get food_barcode_found => 'Samfurin Samfura!';

  @override
  String get food_barcode_not_found_desc =>
      'Ba mu iya samun wannan barcode a cikin buɗaɗɗen bayanai ba. Kuna iya ƙara shi azaman abincin al\'ada.';

  @override
  String get food_add_custom_btn => 'Ƙara Abinci na Musamman';

  @override
  String get food_scan_again => 'Sake dubawa';

  @override
  String get food_review_items => 'Bitar Abincin da Aka Gano';

  @override
  String get food_review_hint =>
      'Daidaita adadi ko cire duk wani abu da ba a gane shi ba';

  @override
  String get food_log_selected => 'Shiga Zaɓaɓɓen Abinci';

  @override
  String get food_favourites_title => 'Abincin da aka fi so';

  @override
  String get food_recent_title => 'Abinci na baya-bayan nan';

  @override
  String get food_no_favourites =>
      'Babu abincin da aka fi so tukuna. Matsa zuciyar kowane abinci don adanawa anan.';

  @override
  String get food_no_recents => 'Ba a sami abinci kwanan nan ba.';

  @override
  String get food_nutrition_details_title => 'Cikakkun Gina Jiki na Kullum';

  @override
  String get food_macro_protein_label => 'Rushewar Protein';

  @override
  String get food_macro_carbs_label => 'Ragewar Carbobi';

  @override
  String get food_macro_fat_label => 'Rushewar Kitse';

  @override
  String get food_macro_fiber_label => 'Ragewar Fiber';

  @override
  String get food_daily_target_comparison => 'Kwatanta manufa';

  @override
  String food_target_label(Object target) {
    return 'Manufar: _PH_0__';
  }

  @override
  String get food_edit_entry => 'Shirya Shigar Diary';

  @override
  String get food_delete_entry => 'Share Shiga';

  @override
  String food_grams_short(Object grams) {
    return '_PH_0__ g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '_PH_0__ kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '_PH_0__ na _PH_1__ ml';
  }

  @override
  String get water_intake_history => 'Ragowar Ruwan Yau';

  @override
  String get water_no_logs_today =>
      'Har yanzu ba a sami ruwa a yau ba. Sanya ruwa kuma danna maɓallin ƙara sauri!';

  @override
  String get water_adjust_goal => 'Daidaita Manufar Kullum';

  @override
  String get health_connect_banner => 'Haɗa zuwa Haɗin Lafiya';

  @override
  String get health_vitals_summary => 'Muhimman Kiwon Lafiyar Jama\'a';

  @override
  String get health_latest_heart_rate => 'Sabbin Ƙimar Zuciya';

  @override
  String get health_latest_bp => 'Hawan jini';

  @override
  String get health_latest_spo2 => 'Oxygen jini';

  @override
  String get health_latest_glucose => 'Glucose na jini';

  @override
  String get health_latest_weight => 'Nauyi';

  @override
  String get health_latest_sleep => 'Tsawon bacci';

  @override
  String get health_add_manual => 'Ƙara Ma\'auni na Manual';

  @override
  String get health_history_trends => 'Abubuwan Tarihi';

  @override
  String get health_sync_success => 'An daidaita bayanan lafiya cikin nasara!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '_PH_0__ awa _PH_1__ min';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '_PH_0__ kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '_PH_0__ bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '_PH_0__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '_PH_0__ / _PH_1__ mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '_PH_0__ mg/dL';
  }

  @override
  String get health_devices_title => 'Na\'urorin Haɗe & Abubuwan Sawa';

  @override
  String get health_devices_desc =>
      'Sarrafa agogon smartwatches guda biyu, na\'urorin motsa jiki, da na\'urori masu auna lafiya.';

  @override
  String get health_workout_editor_title => 'Gyara Ayyukan motsa jiki';

  @override
  String get health_workout_name_label => 'Sunan motsa jiki';

  @override
  String get health_workout_duration_label => 'Tsawon lokaci (mintuna)';

  @override
  String get health_workout_calories_label => 'Ƙimar Calories (kcal)';

  @override
  String get health_workout_date_label => 'Kwanan wata da Lokaci';

  @override
  String get plan_daily_wellness_roadmap => 'Taswirar hanya ta Keɓaɓɓen ku';

  @override
  String get plan_morning_routine => 'Safiya na yau da kullun';

  @override
  String get plan_afternoon_routine => 'Zaman Lafiya';

  @override
  String get plan_evening_routine => 'Iskar Maraice';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => 'Mayar da hankali na Lafiya na Kwanaki 7';

  @override
  String get plan_targets_title => 'Manufofin Lafiya & Maƙasudai';

  @override
  String get plan_calorie_budget_label => 'Kasafin Kalori Kullum';

  @override
  String get plan_water_budget_label => 'Manufar Ruwa ta Kullum';

  @override
  String get plan_step_budget_label => 'Burin Mataki na Kullum';

  @override
  String get plan_macro_split_label => 'Matsakaicin rabo na Macronutrient';

  @override
  String get profile_personal_details => 'Cikakken Bayani';

  @override
  String get profile_body_stats => 'Ma\'aunin Jiki';

  @override
  String get profile_app_preferences => 'Zaɓuɓɓuka & Saitunan App';

  @override
  String get profile_edit_name_hint => 'Sunan ku';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Tsayi ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Nauyi ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Shekaru';

  @override
  String get profile_gender_male => 'Namiji';

  @override
  String get profile_gender_female => 'Mace';

  @override
  String get profile_gender_other => 'Wani / Fi son kar a faɗi';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Kadan zuwa babu motsa jiki)';

  @override
  String get profile_activity_light => 'Aiki Mai Sauƙi (kwanaki 1-3/mako)';

  @override
  String get profile_activity_moderate => 'Matsakaicin Aiki (kwanaki 3-5/mako)';

  @override
  String get profile_activity_very => 'Aiki sosai (6-7 kwanaki / mako)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Shigar da tayal na Bloomi da rikitarwa akan agogon Wear OS ɗin ku don kallon adadin kuzari, ruwa, da matakai.';

  @override
  String get settings_widgets_header => 'Widgets masu hulɗa da Android';

  @override
  String get settings_widgets_desc =>
      'Sanya widgets na ainihi akan allon gida na na\'urar don sabuntawa nan take.';

  @override
  String get settings_about_header => 'Game da Bloomi';

  @override
  String get settings_about_version => 'Shafin 1.0.0';

  @override
  String get settings_about_build => 'Gina 100';

  @override
  String get settings_about_credits =>
      'An yi shi tare da kulawa da hankali, rayuwa lafiya.';

  @override
  String get settings_terms_header => 'Sharuɗɗa da Sharuɗɗa';

  @override
  String get settings_privacy_header => 'Manufar Keɓantawa';

  @override
  String get settings_delete_header => 'Share Account & Data';

  @override
  String get settings_delete_warning =>
      'Ba za a iya soke wannan aikin ba. Duk abincinku, ayyukan motsa jiki, abubuwan rayuwa, da bayanan martaba za a share su har abada.';

  @override
  String get settings_delete_confirm_btn => 'Share na dindindin';

  @override
  String get onboard_welcome_headline => 'Barka da zuwa Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'M, kula da lafiya mai hankali da aka tsara a rayuwar ku.';

  @override
  String get onboard_step_about => 'Game da Kai';

  @override
  String get onboard_step_goals => 'Burin ku';

  @override
  String get onboard_step_lifestyle => 'Halayen yau da kullun';

  @override
  String get onboard_step_permissions => 'Izini';

  @override
  String get onboard_step_plan => 'Shirya!';

  @override
  String get onboard_health_connect_perm => 'Samun Haɗin Lafiya';

  @override
  String get onboard_step_sensors_perm => 'Sensor Counter Mataki';

  @override
  String get onboard_notif_perm => 'Tunatarwa & Fadakarwa';

  @override
  String get onboard_camera_perm => 'Kamara (Barcode & Scanner Abinci)';

  @override
  String get onboard_grant_permissions => 'Bada Izinin';

  @override
  String get onboard_continue_dashboard => 'Bude Dashboard';

  @override
  String get notif_channel_hydration_name => 'Ruwan Ruwa';

  @override
  String get notif_channel_hydration_desc =>
      'Tunasarwar ruwa mai laushi a cikin yini';

  @override
  String get notif_channel_nutrition_name => 'Tunasarwar Abinci & Gina Jiki';

  @override
  String get notif_channel_nutrition_desc =>
      'Faɗakarwar tunatarwar karin kumallo, abincin rana, da abincin dare';

  @override
  String get notif_channel_steps_name => 'Matsalolin Matakai';

  @override
  String get notif_channel_steps_desc =>
      'Bukukuwa lokacin da aka cimma burin matakan yau da kullun';

  @override
  String get notif_channel_vitals_name => 'Binciken Lafiya & Muhimmanci';

  @override
  String get notif_channel_vitals_desc =>
      'Nauyi da lokacin bacci abin tunatarwa';

  @override
  String get notif_action_log_water => '💧 Login + 250ml';

  @override
  String get notif_action_snooze => 'Tsawon 15m';

  @override
  String get notif_action_log_meal => '🥗 Abincin Abinci';

  @override
  String get language => 'Harshe';

  @override
  String get share => 'Raba';

  @override
  String common_days(Object count) {
    return '_PH_0__ d da suka wuce';
  }
}
