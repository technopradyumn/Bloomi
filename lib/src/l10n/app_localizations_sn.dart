// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Shona (`sn`).
class AppLocalizationsSn extends AppLocalizations {
  AppLocalizationsSn([String locale = 'sn']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Kumba';

  @override
  String get nav_today => 'Nhasi';

  @override
  String get nav_plan => 'Ronga';

  @override
  String get nav_food => 'Zvokudya';

  @override
  String get nav_food_diary => 'Food Diary';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Utano';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Sevha';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get done => 'Ndapedza';

  @override
  String get close => 'Close';

  @override
  String get back => 'Back';

  @override
  String get next => 'Next';

  @override
  String get continue_btn => 'Enderera mberi';

  @override
  String get confirm => 'Confirm';

  @override
  String get search => 'Search';

  @override
  String get filter => 'Sefa';

  @override
  String get all => 'Zvose';

  @override
  String get active => 'Active';

  @override
  String get today => 'Nhasi';

  @override
  String get yesterday => 'Nezuro';

  @override
  String get tomorrow => 'Mangwana';

  @override
  String get add => 'Wedzera';

  @override
  String get remove => 'Bvisa';

  @override
  String get refresh => 'Refresh';

  @override
  String get retry => 'Edza zvakare';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Hapana data iripo';

  @override
  String get offline => 'Offline Mode';

  @override
  String get offline_sub => 'Shanduko dzinozowiriranisa kana dzabatanidzwazve';

  @override
  String get undo => 'Undo';

  @override
  String get portion => 'Chikamu';

  @override
  String get quantity => 'Quantity';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Zvakajeka';

  @override
  String get select => 'Sarudza';

  @override
  String get apply => 'Shandisa';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Hongu';

  @override
  String get no => 'Kwete';

  @override
  String get optional => 'Optional';

  @override
  String get calories => 'Macalorie';

  @override
  String get protein => 'Mapuroteni';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Mafuta';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Mvura';

  @override
  String get steps => 'Matanho';

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
  String get serving => 'Kushumira';

  @override
  String get servings => 'Servings';

  @override
  String get serving_size => 'Kushumira saizi';

  @override
  String get per_100g => 'pa100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Kumba';

  @override
  String get home_greeting_morning => 'Mangwanani akanaka';

  @override
  String get home_greeting_afternoon => 'Masikati akanaka';

  @override
  String get home_greeting_evening => 'Manheru akanaka';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mutsetse wemazuva',
      one: '1 zuva streak',
      zero: '0 mazuva streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Kusvirwa';

  @override
  String get home_calories_budget => 'Calorie Budget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal yasara';
  }

  @override
  String get home_water_title => 'Daily Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Matanho Akafamba';

  @override
  String get home_quick_actions => 'Quick Actions';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Mvura';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Maonero Anhasi';

  @override
  String get home_quote =>
      'Sarudzo diki dzine hutano dzinogadzira shanduko inotumbuka.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Zvakatenderedza & Mhepo';

  @override
  String get home_notifications => 'Notifications';

  @override
  String get home_daily_score => 'Daily Wellness Score';

  @override
  String get home_view_all => 'View All';

  @override
  String get food_diary_title => 'Food Diary';

  @override
  String get food_breakfast => 'Chisvusvuro';

  @override
  String get food_lunch => 'Lunch';

  @override
  String get food_dinner => 'Kudya kwemanheru';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Wedzera Kudya';

  @override
  String get food_edit_food => 'Edit Food';

  @override
  String get food_add_breakfast => 'Wedzera Breakfast';

  @override
  String get food_add_lunch => 'Wedzera Lunch';

  @override
  String get food_add_dinner => 'Wedzera Kudya';

  @override
  String get food_add_snack => 'Wedzera Snack';

  @override
  String get food_total_calories => 'Total Calories';

  @override
  String get food_empty_meal => 'Hapana chikafu chakanyorwa pakudya uku';

  @override
  String get food_empty_diary => 'Hapana chikafu chakanyorwa chezuva iri';

  @override
  String get food_log_first_meal =>
      'Tinya + kuti utore chikafu chako chekutanga chinonaka';

  @override
  String get food_quick_add => 'Kurumidza Wedzera';

  @override
  String get food_search_hint => 'Tsvaga ndiro, michero, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom Food & Recipe';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Chikafu Scanner';

  @override
  String get food_recent => 'Recent Foods';

  @override
  String get food_favourites => 'Favorites';

  @override
  String get food_macro_summary => 'Kuparara kweMacronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Une chokwadi chekuti unoda kubvisa chinhu ichi?';

  @override
  String get food_item_deleted => 'Chinhu chekudya chabviswa';

  @override
  String get food_remaining => 'zvakasara';

  @override
  String get food_consumed => 'kudyiwa';

  @override
  String food_of_target(Object target) {
    return 'ye $target kcal';
  }

  @override
  String get foodSearch_title => 'Tsvaga Zvikafu';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Chikafu Mufananidzo';

  @override
  String get foodSearch_custom_food => 'Gadzira Chikafu Chekudya';

  @override
  String get foodSearch_recent_searches => 'Recent Searches';

  @override
  String get foodSearch_popular => 'Popular Dishes';

  @override
  String get foodSearch_no_results =>
      'Hapana chikafu chinoenderana netsvakiridzo yako';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Rongedza bhakodhi mukati memera kamera';

  @override
  String get barcode_not_found => 'Chigadzirwa hachina kuwanikwa mudhatabhesi';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning inowanikwa neBloomi Pro';

  @override
  String get camera_title => 'AI Chikafu Scanner';

  @override
  String get camera_tap_hint => 'Tora mufananidzo wakajeka wendiro yako';

  @override
  String get camera_analysing => 'Kuongorora ndiro yechikafu...';

  @override
  String get camera_detected => 'Zvinhu zvakaonekwa';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Torazve Mufananidzo';

  @override
  String get camera_confirm_food => 'Simbisa Zvinhu';

  @override
  String get customFood_title => 'Custom Food & Recipe';

  @override
  String get customFood_name_hint => 'Dish kana ingredient zita';

  @override
  String get customFood_calories_hint => 'Macalorie (kcal)';

  @override
  String get customFood_protein_hint => 'Mapuroteni (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Mafuta (g)';

  @override
  String get customFood_save => 'Sevha Recipe';

  @override
  String get water_tracker_title => 'Mvura Tracker';

  @override
  String get water_daily_target => 'Daily Hydration Chinangwa';

  @override
  String get water_logged_today => 'Logged Nhasi';

  @override
  String get water_add_glass => '+250 ml Girazi';

  @override
  String get water_add_bottle => '+500 ml Bhodhoro';

  @override
  String get water_custom_amount => 'Custom Mari';

  @override
  String get water_reminder_tip =>
      'Inwa mvura nguva dzose zuva rose kuti uwane simba rakagadzikana.';

  @override
  String water_logged_toast(Object amount) {
    return 'Yakaiswa $amount ml yemvura 💧';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Wedzera Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Simba';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Duration';

  @override
  String get workout_intensity => 'Kusimba';

  @override
  String get workout_calories_burned => 'Macalorie Akapiswa';

  @override
  String get workout_empty => 'Hapana maekisesaizi akanyorwa nhasi';

  @override
  String get workout_save_success => 'Workout yakachengetedzwa zvakabudirira!';

  @override
  String get workout_type => 'Workout Type';

  @override
  String get workout_notes => 'Notes & Reflections';

  @override
  String get health_overview_title => 'Hutano & Zvinokosha';

  @override
  String get health_heart_rate => 'Kurova Kwemoyo';

  @override
  String get health_blood_oxygen => 'Ropa Okisijeni (SpO2)';

  @override
  String get health_blood_pressure => 'Blood Pressure';

  @override
  String get health_blood_glucose => 'Ropa Glucose';

  @override
  String get health_body_temperature => 'Kupisa Kwemuviri';

  @override
  String get health_sleep_tracking => 'Kurara Tracking';

  @override
  String get health_weight_tracking => 'Huremu & Muviri Kuumbwa';

  @override
  String get health_waist_hip => 'Waist-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Zvishandiso & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Kekupedzisira kuwiriraniswa: $time';
  }

  @override
  String get health_manual_entry => 'Manual Health Entry';

  @override
  String get health_metric_detail => 'Metric Details';

  @override
  String get health_connected_sensors => 'Yakabatanidzwa Health Sensors';

  @override
  String get plan_title => 'Daily Plan';

  @override
  String get plan_weekly_title => 'Weekly Wellness Plan';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Hydration Target';

  @override
  String get plan_step_target => 'Step Target';

  @override
  String get plan_sleep_target => 'Kurara Chinangwa';

  @override
  String get plan_meal_suggestions => 'Kudya Mazano';

  @override
  String get plan_healthy_habits => 'Hutano Tsika & Mazano';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Recommendations';

  @override
  String get plan_generated_title => 'Yakasarudzika Zuva Nezuva Rondedzero';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Rongedza Profile';

  @override
  String get profile_name => 'Zita';

  @override
  String get profile_age => 'Age';

  @override
  String get profile_gender => 'Gender';

  @override
  String get profile_height => 'Urefu';

  @override
  String get profile_weight => 'Kurema';

  @override
  String get profile_goal => 'Chinangwa chikuru';

  @override
  String get profile_activity_level => 'Chikamu Chekuita';

  @override
  String get profile_stats => 'Hutano Hwangu Stats';

  @override
  String get profile_saved => 'Profile yakagadziridzwa';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Kuva nhengo';

  @override
  String get settings => 'Settings';

  @override
  String get preferences_habits => 'ZVINODA NEZVIITIKO';

  @override
  String get appearance_theme => 'Chitarisiko & Dingindira';

  @override
  String get appearance_theme_sub =>
      'Rima, Chiedza, System Modhi uye App Background Sarudzo';

  @override
  String get permissions => 'Mvumo & System Access';

  @override
  String get permissions_sub =>
      'Hutano Unganidzo, Nhanho Sensors, GPS, Zviziviso & Kamera';

  @override
  String get reminders_notifications => 'Zviyeuchidzo & Zviziviso';

  @override
  String get reminders_sub =>
      'Nguva dzekudya, mvura, uremu kutarisa-mukati & zviyeuchidzo zvekurara';

  @override
  String get units_of_measurement => 'Zviyero zvekuyera';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) kana Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Mutauro weApp';

  @override
  String get language_sub =>
      'Chirungu, हिन्दी (Hindi), Hinglish & 195+ mitauro yepasi rose';

  @override
  String get home_screen_widgets => 'Home Screen Widgets';

  @override
  String get widgets_sub =>
      'Rarama Android majeti: Hub, Matanho, Mvura, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Pfeka OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch shamwari, mataira, zvinonetsa & zvinorarama zvakakosha';

  @override
  String get goals_wellness => 'ZVINANGWA & HUTANO ZVINOGONA';

  @override
  String get nutrition_targets => 'Nutrition Targets & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie chinangwa, mapuroteni, carbs, mafuta & mvura chinangwa';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-mazuva calorie avhareji, macro ratio uye zuva rakanakisa';

  @override
  String get streaks_milestones => 'Mitsetse & Milestones';

  @override
  String get streaks_sub => 'Active blossom streaks, mabheji & kubudirira';

  @override
  String get connected_devices => 'CONNECTED DEVICES & ECOSYSTEM';

  @override
  String get devices_hub => 'Zvishandiso & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Hutano Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Zvakatenderedza & Mamiriro ekunze';

  @override
  String get surroundings_sub =>
      'Hunhu hwemhepo (AQI), UV index uye matipi emamiriro ekunze emvura';

  @override
  String get bloomi_pro => 'Bloomi Pro Kunyoreswa';

  @override
  String get bloomi_pro_sub =>
      'AI Kuronga Kochi, mashanu emba chidzitiro majeti & akakosha ekutevera';

  @override
  String get about_security => 'ABOUT & SECURITY';

  @override
  String get about_bloomi => 'About Bloomi';

  @override
  String get about_bloomi_sub => 'Gadzira zvakatemwa, shanduro, maitiro';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get privacy_policy_sub =>
      'Offline-kutanga, pane-mudziyo data architecture';

  @override
  String get terms_conditions => 'Terms & Conditions';

  @override
  String get terms_conditions_sub => 'Mitemo yebasa uye mazano ehutano';

  @override
  String get delete_account => 'Delete Account & Data';

  @override
  String get delete_account_sub =>
      'Zvisingadzoreki dzima yemuno SQLite data uye gore backups';

  @override
  String get healthy_habits => 'Vaka hunyoro, hunogara hutsika hwakanaka';

  @override
  String get all_logs => 'My Tracked Data & Logs';

  @override
  String get search_language =>
      'Tsvaga nemutauro kana manyorerwo echinyakare...';

  @override
  String get languages_available => 'Mitauro Inowanikwa';

  @override
  String get no_matching_languages => 'Hapana mitauro inoenderana yawanikwa';

  @override
  String get try_searching =>
      'Edza kutsvaga nemavara echinyakare kana chiperengo cheChirungu';

  @override
  String get partially_translated => 'Yakaturikirwa zvishoma';

  @override
  String get complete_translation => 'Complete';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Mutauro wakaiswa ku$name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Zvakatenderedza & Zvakatipoteredza';

  @override
  String get surroundings_aqi => 'Air Quality Index';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Tembiricha';

  @override
  String get surroundings_humidity => 'Humidity';

  @override
  String get surroundings_hydration_advice =>
      'Gara uine hydrated zvakanaka mumamiriro ekunze aripo.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Tsvaga Zvokudya';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Wedzera Mvura';

  @override
  String get food_quick_custom => 'Custom Food';

  @override
  String get surroundings_good => 'Zvakanaka';

  @override
  String get surroundings_moderate => 'Pakati nepakati';

  @override
  String get surroundings_unhealthy => 'Hutano';

  @override
  String get notifications_title => 'Zviziviso & Zviziviso';

  @override
  String get notifications_empty => 'Hapana zvitsva zviziviso';

  @override
  String get notifications_mark_read => 'Maka All as Read';

  @override
  String get notifications_clear => 'Bvisa Zvose';

  @override
  String get reminders => 'Zviyeuchidzo Settings';

  @override
  String get notifications => 'Notifications';

  @override
  String get reminders_breakfast_title =>
      'Chiyeuchidzo chekudya kwemangwanani 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Mangwanani akanaka! Nguva yekudya kwemangwanani kunovaka pa$time .';
  }

  @override
  String get reminders_lunch_title => 'Lunch Chiyeuchidzo 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Chimbomira uye unakirwe nekudya kwemasikati kuri pakati nepakati pa $time .';
  }

  @override
  String get reminders_dinner_title => 'Chiyeuchidzo chekudya kwemanheru 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Nguva yekudya kwakareruka, kunogutsa pa $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Nguva yekunwa girazi remvura nyowani! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Weekly Weigh-in ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Tevera maitiro emuviri wako paBloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Nguva yekurara Mhepo-pasi 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Zorora uye gadzirira kurara zvakanaka ( $time ).';
  }

  @override
  String get onboard_welcome => 'Kugamuchirwa kuBloomi';

  @override
  String get onboard_sub =>
      'Wako ane hushamwari, asiri pamhepo-yekutanga hutano uye hutano shamwari.';

  @override
  String get onboard_get_started => 'Tanga';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal =>
      'Chinangwa chako chekutanga cheutano ndechei?';

  @override
  String get onboard_goal_weight_loss => 'Nyoro Huremu Kurasikirwa';

  @override
  String get onboard_goal_muscle => 'Tsandanyama Kuwana & Simba';

  @override
  String get onboard_goal_energy => 'Daily Energy & Vitality';

  @override
  String get onboard_goal_habits => 'Utano Hwepfungwa Kudya';

  @override
  String get onboard_about_you => 'Tiudze nezvako';

  @override
  String get onboard_lifestyle => 'Rako Zuva Nezuva';

  @override
  String get onboard_permissions_title => 'Mvumo & System Access';

  @override
  String get onboard_permissions_sub =>
      'Ipa mukana kune sync matanho, maekisesaizi, uye zviyeuchidzo.';

  @override
  String get onboard_plan_ready_title => 'Yako Custom Plan Yagadzirira!';

  @override
  String get onboard_plan_ready_sub =>
      'Isu takagadzira yakapfava, yakasarudzika yekudya uye yehutano nzira iwe chete.';

  @override
  String get onboard_enter_bloomi => 'Pinda Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Zuva Rekuwirirana: $day';
  }

  @override
  String get insights_streaks_badges => 'Mitsetse & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Yakavhurwa pa$date';
  }

  @override
  String get insights_keep_going => 'Ramba uchifambira mberi zvakanaka!';

  @override
  String get widgets_title => 'Home Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Mawijeti Anoshanda: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Matanho & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Shamwari';

  @override
  String get wear_os_title => 'Pfeka OS Smartwatch';

  @override
  String get wear_os_connected => 'Yakabatanidzwa kuWatch';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Chitarisiko & Dingindira';

  @override
  String get theme_mode => 'Theme Mode';

  @override
  String get theme_light => 'Chiedza';

  @override
  String get theme_dark => 'Rima';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Background Palette';

  @override
  String get units_title => 'Zviyero zvekuyera';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Tatadza kurodha dashboard';

  @override
  String get home_health_permission_req => 'Hutano Connect Mvumo Inodiwa';

  @override
  String get home_health_permission_desc =>
      'Bloomi inoda Hutano Connect mvumo yekudhonza nhanho chaidzo, kurova kwemoyo, uye kuwiriranisa nhare dzeimba majeti munguva chaiyo.';

  @override
  String get home_allow_health => 'Bvumira Health Connect';

  @override
  String get home_ready_mindful_day => 'Wakagadzirira zuva rakajeka? ✨';

  @override
  String get home_quick_add => 'Kurumidza Wedzera';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'MAKARORI ACHIRIRA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Zvakadyiwa: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tinya yeMvura Tracker 💧';

  @override
  String get home_water_goal_reached => 'Chinangwa chezuva nezuva chasvika 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml kusvika kune chinangwa chezuva nezuva';
  }

  @override
  String get home_details => 'Details';

  @override
  String get home_upgrade_plan_desc =>
      'Simudzira kuti uvhure yakasarudzika zvibodzwa zvezuva nezuva & chirongwa cheAI';

  @override
  String get home_unlock => 'Kiinura 👑';

  @override
  String get home_quick_log_hint => 'Kurumidza kurekodha chinyorwa chehutano';

  @override
  String get food_serving_size => 'Kushumira saizi';

  @override
  String get food_serving_grams => 'Kupa (g)';

  @override
  String get food_number_servings => 'Nhamba Yeshumiro';

  @override
  String get food_calories_per_serving => 'Macalories pakushumira';

  @override
  String get food_recipe_ingredients => 'Ingredients';

  @override
  String get food_recipe_add_ingredient => 'Wedzera Ingredient';

  @override
  String get food_recipe_directions => 'Mirayiridzo & Zvinyorwa';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast =>
      'Chikafu chemazuva ese chakachengetedzwa zvakanaka!';

  @override
  String get food_barcode_found => 'Chigadzirwa Chawanikwa!';

  @override
  String get food_barcode_not_found_desc =>
      'Hatina kukwanisa kuwana iyi barcode mudhatabhesi rakavhurika. Iwe unogona kuwedzera sechikafu chekudya.';

  @override
  String get food_add_custom_btn => 'Wedzera Custom Food';

  @override
  String get food_scan_again => 'Scan Zvakare';

  @override
  String get food_review_items => 'Ongorora Zvakaonekwa Zvokudya';

  @override
  String get food_review_hint =>
      'Gadzirisa huwandu kana kubvisa chero chinhu chisingazivikanwe';

  @override
  String get food_log_selected => 'Log Selected Foods';

  @override
  String get food_favourites_title => 'Favorite Foods';

  @override
  String get food_recent_title => 'Recent Foods';

  @override
  String get food_no_favourites =>
      'Hapasati pava nezvokudya zvaunofarira. Bata mwoyo pane chero chikafu chekuchengetedza pano.';

  @override
  String get food_no_recents =>
      'Hapana chikafu chakadhindwa nguva pfupi yadarika chawanikwa.';

  @override
  String get food_nutrition_details_title => 'Daily Nutrition Details';

  @override
  String get food_macro_protein_label => 'Kuparara kweprotein';

  @override
  String get food_macro_carbs_label => 'Kuparara kweCarbs';

  @override
  String get food_macro_fat_label => 'Kuparadza Kwemafuta';

  @override
  String get food_macro_fiber_label => 'Fiber Breakdown';

  @override
  String get food_daily_target_comparison => 'Target Kuenzanisa';

  @override
  String food_target_label(Object target) {
    return 'Chinangwa: $target';
  }

  @override
  String get food_edit_entry => 'Rongedza Diary Entry';

  @override
  String get food_delete_entry => 'Delete Entry';

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
    return '$current ye $target ml';
  }

  @override
  String get water_intake_history => 'Nhasi Matanda eMvura';

  @override
  String get water_no_logs_today =>
      'Hapana mvura yatikwa nhasi. Hydrate uye tinya bhatani rekuwedzera nekukurumidza!';

  @override
  String get water_adjust_goal => 'Gadzirisa Chinangwa cheZuva';

  @override
  String get health_connect_banner => 'Yakabatana neHealth Connect';

  @override
  String get health_vitals_summary => 'Daily Health Vitals';

  @override
  String get health_latest_heart_rate => 'Latest Heart Rate';

  @override
  String get health_latest_bp => 'Blood Pressure';

  @override
  String get health_latest_spo2 => 'Ropa Okisijeni';

  @override
  String get health_latest_glucose => 'Ropa Glucose';

  @override
  String get health_latest_weight => 'Kurema';

  @override
  String get health_latest_sleep => 'Kurara Nguva';

  @override
  String get health_add_manual => 'Wedzera Manual Measurement';

  @override
  String get health_history_trends => 'Historical Trends';

  @override
  String get health_sync_success => 'Data yehutano yakabatana zvakabudirira!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours maawa $mins maminetsi';
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
    return '_PH_0__ %';
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
  String get health_devices_title => 'Yakabatanidzwa Midziyo & Zvinopfekeka';

  @override
  String get health_devices_desc =>
      'Tonga akapetwa smartwachi, kusimba matracker, uye hutano sensors.';

  @override
  String get health_workout_editor_title => 'Edit Workout';

  @override
  String get health_workout_name_label => 'Zita reKushanda';

  @override
  String get health_workout_duration_label => 'Nguva (maminitsi)';

  @override
  String get health_workout_calories_label =>
      'Zvinofungidzirwa macalorie (kcal)';

  @override
  String get health_workout_date_label => 'Zuva uye Nguva';

  @override
  String get plan_daily_wellness_roadmap => 'Yako Yako Yega Mugwagwa';

  @override
  String get plan_morning_routine => 'Morning Routine';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Manheru Mhepo-Kudzika';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Day Wellness Focus';

  @override
  String get plan_targets_title => 'Hutano Zvinangwa & Zvinangwa';

  @override
  String get plan_calorie_budget_label => 'Daily Calorie Budget';

  @override
  String get plan_water_budget_label => 'Daily Water Target';

  @override
  String get plan_step_budget_label => 'Zuva Nezuva Chinangwa';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Personal Details';

  @override
  String get profile_body_stats => 'Kuyera Muviri';

  @override
  String get profile_app_preferences => 'Zvaunoda & Zvirongwa zveApp';

  @override
  String get profile_edit_name_hint => 'Zita rako';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Urefu ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Huremu ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Age';

  @override
  String get profile_gender_male => 'Murume';

  @override
  String get profile_gender_female => 'Mukadzi';

  @override
  String get profile_gender_other => 'Zvimwe / Kusada kusataura';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Zvidiki kusvika pasina kurovedza muviri)';

  @override
  String get profile_activity_light => 'Zvishoma Kushanda (1-3 mazuva / vhiki)';

  @override
  String get profile_activity_moderate =>
      'Zviri pakati nepakati (3-5 mazuva / vhiki)';

  @override
  String get profile_activity_very => 'Kunyanya Kushanda (6-7 mazuva / vhiki)';

  @override
  String get settings_wear_os_header => 'Pfeka OS Shamwari App';

  @override
  String get settings_wear_os_desc =>
      'Isa iyo Bloomi tile uye complication pane yako Wear OS wachi kuti utarise macalorie, mvura, uye matanho.';

  @override
  String get settings_widgets_header => 'Interactive Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Pina chaiyo-nguva majeti pane chako kifaa chemba chekuvandudza ipapo.';

  @override
  String get settings_about_header => 'About Bloomi';

  @override
  String get settings_about_version => 'Shanduro 1.0.0';

  @override
  String get settings_about_build => 'Kuvaka 100';

  @override
  String get settings_about_credits =>
      'Yakagadzirwa nehanya nekurangarira, hupenyu hune hutano.';

  @override
  String get settings_terms_header => 'Terms and Conditions';

  @override
  String get settings_privacy_header => 'Privacy Policy';

  @override
  String get settings_delete_header => 'Delete Account & Data';

  @override
  String get settings_delete_warning =>
      'Chiito ichi hachigone kuregererwa. Zvekudya zvako zvese, maekisesaizi, zvakakosha, uye chimiro zvichabviswa zvachose.';

  @override
  String get settings_delete_confirm_btn => 'Delete zvachose';

  @override
  String get onboard_welcome_headline => 'Kugamuchirwa kuBloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Hunyoro, hune hunhu hwekutevera hwakagadzirirwa kutenderedza hupenyu hwako.';

  @override
  String get onboard_step_about => 'Nezve Iwe';

  @override
  String get onboard_step_goals => 'Zvinangwa Zvako';

  @override
  String get onboard_step_lifestyle => 'Tsika Dzezuva Nezuva';

  @override
  String get onboard_step_permissions => 'Mvumo';

  @override
  String get onboard_step_plan => 'Ready!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Nhanho Counter Sensor';

  @override
  String get onboard_notif_perm => 'Hungwaru Zviyeuchidzo & Zviziviso';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Grant Mvumo';

  @override
  String get onboard_continue_dashboard => 'Vhura Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Zviyeuchidzo zvemvura zvinyoro zuva rose';

  @override
  String get notif_channel_nutrition_name =>
      'Kudya & Zvokudya Zvokudya Zviyeuchidzo';

  @override
  String get notif_channel_nutrition_desc =>
      'Zvokudya zvemangwanani, masikati, uye zviyeuchidzo zvechisvusvuro';

  @override
  String get notif_channel_steps_name => 'Nhanho Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Mhemberero kana wasvika nhanho dzemazuva ese';

  @override
  String get notif_channel_vitals_name => 'Health & Vitals Checks';

  @override
  String get notif_channel_vitals_desc =>
      'Kurema uye nguva yekurara mhepo-pasi zviyeuchidzo';

  @override
  String get notif_action_log_water => '💧 Rog +250ml';

  @override
  String get notif_action_snooze => 'Snueza 15m';

  @override
  String get notif_action_log_meal => '🥗 Kudya kweLog';

  @override
  String get language => 'Mutauro';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '$count d rapfuura';
  }
}
