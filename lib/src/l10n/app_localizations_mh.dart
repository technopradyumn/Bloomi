// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marshallese (`mh`).
class AppLocalizationsMh extends AppLocalizations {
  AppLocalizationsMh([String locale = 'mh']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Mweo';

  @override
  String get nav_today => 'Rainin';

  @override
  String get nav_plan => 'Karōk';

  @override
  String get nav_food => 'Mōñā';

  @override
  String get nav_food_diary => 'bok in mōñā ko';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Ājmour';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Kōjparok';

  @override
  String get cancel => 'Kanne';

  @override
  String get delete => 'Jolok';

  @override
  String get edit => 'Edit';

  @override
  String get done => 'Eṃōj';

  @override
  String get close => 'Kilōk';

  @override
  String get back => 'Jeblak';

  @override
  String get next => 'tok juon';

  @override
  String get continue_btn => 'Wōnm̧aanļo̧k wōt';

  @override
  String get confirm => 'Kamool';

  @override
  String get search => 'Pukot';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Aolep';

  @override
  String get active => 'Ej jerbal';

  @override
  String get today => 'Rainin';

  @override
  String get yesterday => 'Inne';

  @override
  String get tomorrow => 'Ilju';

  @override
  String get add => 'Kobaik';

  @override
  String get remove => 'Jolok';

  @override
  String get refresh => 'Kōkāāl';

  @override
  String get retry => 'Bar kajeoñ';

  @override
  String get error => 'Bōd';

  @override
  String get success => 'Tōbrak';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Ejelok melele ko rej bed';

  @override
  String get offline => 'Offline Mode';

  @override
  String get offline_sub => 'Oktak ko renaj sync ñe emoj bar kobalok';

  @override
  String get undo => 'Undo';

  @override
  String get portion => 'Mõttan';

  @override
  String get quantity => 'Joñan';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Alikar';

  @override
  String get select => 'Kālet';

  @override
  String get apply => 'Apply';

  @override
  String get reset => 'Bar kōmmane';

  @override
  String get ok => 'Emmōn';

  @override
  String get yes => 'Aet';

  @override
  String get no => 'Jaab';

  @override
  String get optional => 'Ejjab aikuj';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Mōttan';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Dān';

  @override
  String get steps => 'Bun̄tōn ko';

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
  String get inches => 'ilo';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'awa';

  @override
  String get minutes => 'minit';

  @override
  String get serving => 'Jerbal';

  @override
  String get servings => 'Jerbal ko';

  @override
  String get serving_size => 'joñan mōñā';

  @override
  String get per_100g => 'kajjojo 100g';

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
  String get americas => 'Amedka';

  @override
  String get home_title => 'Mweo';

  @override
  String get home_greeting_morning => 'Jibboñ emman';

  @override
  String get home_greeting_afternoon => 'Jibboñ emman';

  @override
  String get home_greeting_evening => 'Jota eo emman';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count raan ko',
      one: '1 raan',
      zero: '0 raan ko',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Eṃōj bwil';

  @override
  String get home_calories_budget => 'Calorie Budget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ej bed wōt';
  }

  @override
  String get home_water_title => 'Kōmman dren ilo raan otemjej';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Bun̄tōn ko kar etetal ie';

  @override
  String get home_quick_actions => 'Jerbal ko re mõkaj';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Dān in wōjke';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Depakpak in Log';

  @override
  String get home_insights_title => 'Meļeļe ko an Rainin';

  @override
  String get home_quote =>
      'Kālet ko reddik im emman rej kōmman oktak ko rejimwe.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Men ko iturin im mejatoto';

  @override
  String get home_notifications => 'Kōjjeḷā ko';

  @override
  String get home_daily_score => 'joñan ejmour eo an raan otemjej';

  @override
  String get home_view_all => 'Lale aolep';

  @override
  String get food_diary_title => 'bok in mōñā ko';

  @override
  String get food_breakfast => 'Mōñā in raelep';

  @override
  String get food_lunch => 'Mōñā in raelep';

  @override
  String get food_dinner => 'Jibboñ';

  @override
  String get food_snacks => 'Snack';

  @override
  String get food_add_food => 'Kobaik Mōñā';

  @override
  String get food_edit_food => 'Kōkōmman mōñā';

  @override
  String get food_add_breakfast => 'Kobaik mōñā in raelep';

  @override
  String get food_add_lunch => 'Kobaik mõñā in raelep';

  @override
  String get food_add_dinner => 'Kobaik mõñā in jota';

  @override
  String get food_add_snack => 'Kobaik Snack';

  @override
  String get food_total_calories => 'Oran Calories ko';

  @override
  String get food_empty_meal => 'Ejelok mõñā ko kar jeje ñan mõñā in kiõ';

  @override
  String get food_empty_diary => 'Ejelok mōñā ko ilo raan in';

  @override
  String get food_log_first_meal => 'Kōtlok + ñan bōk mōñā eo am moktata emman';

  @override
  String get food_quick_add => 'Mōkaj in kobaik';

  @override
  String get food_search_hint => 'Pukot mōñā ko, leen wijki ko, dal, roti...';

  @override
  String get food_custom_recipe => 'Mōñā ko im wāween kōmat';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Mōñā ko Rekãl';

  @override
  String get food_favourites => 'Men ko ij iakwe';

  @override
  String get food_macro_summary => 'Macronutrient Breakdown';

  @override
  String get food_delete_meal_confirm => 'Kwoj ke lukkun kōnan jolok men in?';

  @override
  String get food_item_deleted => 'Mōñā eo kar jolok';

  @override
  String get food_remaining => 'ej bed wōt';

  @override
  String get food_consumed => 'jolok';

  @override
  String food_of_target(Object target) {
    return 'an $target kcal';
  }

  @override
  String get foodSearch_title => 'Pukot Mōñā ko';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Kōmmane Mōñā ko Rekwojarjar';

  @override
  String get foodSearch_recent_searches => 'Pukōt ko rej kab motlok';

  @override
  String get foodSearch_popular => 'Mōñā ko rebuñbuñ';

  @override
  String get foodSearch_no_results => 'Ejelok mõñā ko rej errā ippān am pukōt';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Likūt barcode eo ilowaan kamera eo';

  @override
  String get barcode_not_found => 'Men eo ejjab walok ilo database eo';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning ej bed ilo Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Bōk juon pija in mōñā eo am';

  @override
  String get camera_analysing => 'Etale pileij in mōñā ko...';

  @override
  String get camera_detected => 'Men ko kar loe';

  @override
  String get camera_flash => 'Ukōt Flash';

  @override
  String get camera_retake => 'Bar bōk pija eo';

  @override
  String get camera_confirm_food => 'Kamool men ko';

  @override
  String get customFood_title => 'Mōñā ko im wāween kōmat';

  @override
  String get customFood_name_hint => 'Etan mōñā eo ak men ko ie';

  @override
  String get customFood_calories_hint => 'Calories (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Fat (g)';

  @override
  String get customFood_save => 'Kōjparok Recipe eo';

  @override
  String get water_tracker_title => 'Water Ricker';

  @override
  String get water_daily_target => 'Mejenkajjik in idaak dren ilo raan otemjej';

  @override
  String get water_logged_today => 'Emoj deloñ Rainin';

  @override
  String get water_add_glass => '+250 ml Glass';

  @override
  String get water_add_bottle => '+500 ml Bottle';

  @override
  String get water_custom_amount => 'Joñan eo ekkar';

  @override
  String get water_reminder_tip =>
      'Idaak den aolep ien ilo raan eo ñan am kajoor.';

  @override
  String water_logged_toast(Object amount) {
    return 'Ear bōk $amount ml in den 💧';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Kobaik Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Kajoor';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Iien';

  @override
  String get workout_intensity => 'Kajoor';

  @override
  String get workout_calories_burned => 'Calories ko rar bwil';

  @override
  String get workout_empty => 'Ejelok ikkure ko rar jeje rainin';

  @override
  String get workout_save_success => 'Workout eo emoj an emman!';

  @override
  String get workout_type => 'Kain jerbal';

  @override
  String get workout_notes => 'Kōmeļeļe ko im ļōmņak ko';

  @override
  String get health_overview_title => 'Ājmour im Aorōk';

  @override
  String get health_heart_rate => 'joñan an buruen mōkaj';

  @override
  String get health_blood_oxygen => 'Oxygen ilo bōtōktōk (SpO2)';

  @override
  String get health_blood_pressure => 'Bōtōktōk';

  @override
  String get health_blood_glucose => 'Glucose ilo bōtōktōk';

  @override
  String get health_body_temperature => 'Bwil im molo enbwin';

  @override
  String get health_sleep_tracking => 'Sleep Tracking';

  @override
  String get health_weight_tracking => 'joñan depakpak im joñan enbwinin';

  @override
  String get health_waist_hip => 'Waist-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Devices & Smartwatch Hub';

  @override
  String get health_sync_now => 'Kōllaajrake Data in Ājmour';

  @override
  String health_last_synced(Object time) {
    return 'Last sync: $time';
  }

  @override
  String get health_manual_entry => 'Manual Health Entry';

  @override
  String get health_metric_detail => 'Meļeļe ko an Metric';

  @override
  String get health_connected_sensors => 'Connected Health Sensors';

  @override
  String get plan_title => 'Karōk in raan otemjej';

  @override
  String get plan_weekly_title => 'Karōk in ājmour ilo kajjojo wiik';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Target in Dān';

  @override
  String get plan_step_target => 'Step Target';

  @override
  String get plan_sleep_target => 'Sleep Target';

  @override
  String get plan_meal_suggestions => 'Kōmeļeļe ko kōn m̧ōn̄ā';

  @override
  String get plan_healthy_habits => 'Mwil ko remman im nan in kakapilōk ko';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Recommendations';

  @override
  String get plan_generated_title =>
      'Schedule in raan otemjej eo emōj kōmmane ñan juon make';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Ukok Profile';

  @override
  String get profile_name => 'Etan';

  @override
  String get profile_age => 'Yio';

  @override
  String get profile_gender => 'Kōrā';

  @override
  String get profile_height => 'Utiej';

  @override
  String get profile_weight => 'joñan depakpak';

  @override
  String get profile_goal => 'Mejenkajjik eo elaptata';

  @override
  String get profile_activity_level => 'joñan jerbal';

  @override
  String get profile_stats => 'joñan ejmour eo aõ';

  @override
  String get profile_saved => 'Eṃōj kōkāāl profile eo an ilo tōprak';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Membōr';

  @override
  String get settings => 'Jekjek ko';

  @override
  String get preferences_habits => 'MEN KO REJ KŌNŌNĀN im MANŌT KO';

  @override
  String get appearance_theme => 'Wāween im Unin';

  @override
  String get appearance_theme_sub =>
      'Marok, Meram, System Mode & App Background Options';

  @override
  String get permissions => 'Mālim ko & Deloñ ilo System';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'Kakememej ko im kōjjelā ko';

  @override
  String get reminders_sub =>
      'Iien mõñā, den, lale joñan depakpak im kakememej ko kin ien kiki';

  @override
  String get units_of_measurement => 'Unit in joñan';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) ak Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Kajin App';

  @override
  String get language_sub =>
      'Kajin English, हिन्दी (Hindi), Hinglish & 195+ kajin ko ibelakin lal';

  @override
  String get home_screen_widgets => 'Home Screen Widgets';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch companion, tiles, complications & live vitals';

  @override
  String get goals_wellness => 'GOAL KO & WELLNESS INSIGHTS';

  @override
  String get nutrition_targets => 'Nutrition Targets & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Mejenkajjik in calorie, protein, carbs, bōtōktōk im den';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-raan in calorie average, macro ratio & raan eo emman tata';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Bōlōk ko rej jerbal, badge ko im tōprak ko';

  @override
  String get connected_devices => 'CONNECTED DEVICES & ECOSYSTEM';

  @override
  String get devices_hub => 'Devices & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Jikin ko iturin im mejatoto';

  @override
  String get surroundings_sub =>
      'Emman in mejatoto (AQI), UV index & weather hydration tips';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 home screen widgets & vitals tracking';

  @override
  String get about_security => 'ABOUT & SECURITY';

  @override
  String get about_bloomi => 'Kin Bloomi';

  @override
  String get about_bloomi_sub => 'Build specifications, version, attributions';

  @override
  String get privacy_policy => 'Kien in Kōjparok Mejenkajjik';

  @override
  String get privacy_policy_sub => 'Offline-first, on-device data architecture';

  @override
  String get terms_conditions => 'Kien ko im Jekjek ko';

  @override
  String get terms_conditions_sub =>
      'Kien ko an jerbal im kakien ko kin ejmour';

  @override
  String get delete_account => 'Jolok Account & Data';

  @override
  String get delete_account_sub =>
      'Jolok melele ko jen SQLite im backup ko ilo cloud';

  @override
  String get healthy_habits => 'Kalōk mwil ko rejimwe, im rej bed wot';

  @override
  String get all_logs => 'Data im Log ko ao kar lale';

  @override
  String get search_language => 'Pukot ilo kajin ak jeje ko an armij ro...';

  @override
  String get languages_available => 'Kajin ko rej bed';

  @override
  String get no_matching_languages => 'Ejelok kajin ko rej einlok wōt juon';

  @override
  String get try_searching =>
      'Kajjioñ pukōt ilo jeje ko an ri-Ṃajeḷ ak jeje in kajin Iñlij';

  @override
  String get partially_translated => 'Eṃōj ukōte jidik wōt';

  @override
  String get complete_translation => 'Kadedelok';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Kajin eo kar kōmmane ñan $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Jikin ko iturin im jikin ko ibelakin';

  @override
  String get surroundings_aqi => 'Air Quality Index';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Bwil im molo';

  @override
  String get surroundings_humidity => 'Bwil im molo';

  @override
  String get surroundings_hydration_advice =>
      'Kōmman bwe en emman am idaak dren ilo ien in.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Pukot Mōñā';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Kobaik Dān';

  @override
  String get food_quick_custom => 'Mōñā ko rekāāl';

  @override
  String get surroundings_good => 'Emmōn';

  @override
  String get surroundings_moderate => 'Moderate';

  @override
  String get surroundings_unhealthy => 'Ejjab ājmour';

  @override
  String get notifications_title => 'Kōjjelā ko im kakkōl ko';

  @override
  String get notifications_empty => 'Ejelok kōjjelā ko rekāāl';

  @override
  String get notifications_mark_read => 'Marke All as Read';

  @override
  String get notifications_clear => 'jolok aolep';

  @override
  String get reminders => 'Kōjparok ko an kakeememej';

  @override
  String get notifications => 'Kōjjeḷā ko';

  @override
  String get reminders_breakfast_title => 'Kakememej kin mõñā in raelep 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Jibboñ emman! Iien ñan juon mōñā in raelep eo emman ilo $time .';
  }

  @override
  String get reminders_lunch_title => 'Kakememej kin mõñā in raelep 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Bōjrak im enjake juon mōñā in raelep eo emman im emman ilo $time .';
  }

  @override
  String get reminders_dinner_title => 'Kakememej kin mõñā in jota 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Iien ñan juon mōñā in jibboñ eo emera im emman ilo $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Iien in idaak juon kap in den! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Weekly Weigh-in ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Lale joñan enbwinnio ilo Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Iien kiki Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Kakkije im kōppopo ñan juon kiki eo emman ( $time ).';
  }

  @override
  String get onboard_welcome => 'Jouj im itok ñan Bloomi';

  @override
  String get onboard_sub =>
      'Ri mōttam eo ej jouj, ejjab jerbal ilo online ejmour im mōñā.';

  @override
  String get onboard_get_started => 'Jinoe';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'Jolok';

  @override
  String get onboard_choose_goal => 'Ta mejenkajjik eo am ñan ejmour?';

  @override
  String get onboard_goal_weight_loss => 'Diiklok joñan depakpak';

  @override
  String get onboard_goal_muscle => 'Muscle Gain im Kajoor';

  @override
  String get onboard_goal_energy => 'Kajoor im mour raan otemjej';

  @override
  String get onboard_goal_habits => 'Mōñā eo emman im ejmour';

  @override
  String get onboard_about_you => 'Kwalok ñan kim kin kwe make';

  @override
  String get onboard_lifestyle => 'Jerbal eo am raan otemjej';

  @override
  String get onboard_permissions_title => 'Mālim ko & Deloñ ilo System';

  @override
  String get onboard_permissions_sub =>
      'Lelok maroñ ñan sync step ko, jerbal ko, im kakememej ko.';

  @override
  String get onboard_plan_ready_title => 'Karōk eo am ej pojak!';

  @override
  String get onboard_plan_ready_sub =>
      'Kōm kar kōmmane juon ial in mōñā im ejmour eo emman ñan kwe make.';

  @override
  String get onboard_enter_bloomi => 'Deloñ ilo Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Ran in jemlok eo emman tata: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ear bellok ilo $date';
  }

  @override
  String get insights_keep_going =>
      'Wōnm̧aanļo̧k wōt kōn wōnm̧aanļo̧k eo em̧m̧an!';

  @override
  String get widgets_title => 'Home Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Widget ko rej jerbal: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Bun̄tōn ko & Ring eo ej jerbal';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Kōņak OS Smartwatch';

  @override
  String get wear_os_connected => 'Ej kobalok ñan Watch';

  @override
  String get wear_os_sync => 'Kōllaajrake Data in Wa eo';

  @override
  String get theme_title => 'Wāween im Unin';

  @override
  String get theme_mode => 'Theme Mode';

  @override
  String get theme_light => 'Meram';

  @override
  String get theme_dark => 'Marok';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Background Palette';

  @override
  String get units_title => 'Unit in joñan';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ejjab maroñ in load dashboard eo';

  @override
  String get home_health_permission_req => 'Ej aikuj mālim ñan Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi ej aikuj Health Connect mālim ñan an maroñ in kōmman step ko remol, joñan an bōro mōkaj, im sync mobile home widget ko ilo ien eo emol.';

  @override
  String get home_allow_health => 'Kōtlok bwe Health Connect';

  @override
  String get home_ready_mindful_day => 'Pojak ke ñan juon raan in lemnok? ✨';

  @override
  String get home_quick_add => 'Mōkaj in kobaik';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'CALORIE ko rej bed wot';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kar mōñā: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap ñan Water Tracker 💧';

  @override
  String get home_water_goal_reached =>
      'Kar tōpar mejenkajjik eo an raan otemjej 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ñan mejenkajjik eo an raan otemjej';
  }

  @override
  String get home_details => 'Melele ko';

  @override
  String get home_upgrade_plan_desc =>
      'Kōkōmanmanlok ñan kōtlok target ko an juon make im karōk in AI';

  @override
  String get home_unlock => 'Kōtlok 👑';

  @override
  String get home_quick_log_hint =>
      'Kōmman bwe en mõkaj am rekoote juon melele kin ejmour';

  @override
  String get food_serving_size => 'joñan mōñā';

  @override
  String get food_serving_grams => 'Jerbal (g)';

  @override
  String get food_number_servings => 'Oran mōñā ko';

  @override
  String get food_calories_per_serving => 'Kalori ko ilo juon mōñā';

  @override
  String get food_recipe_ingredients => 'Men ko rej kōjerbali';

  @override
  String get food_recipe_add_ingredient => 'Kobaik men ko rej aikuji';

  @override
  String get food_recipe_directions => 'Naan in jiron ko im melele ko';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast =>
      'Mōñā ko kar kōmmani kar kōjparoki ilo emman!';

  @override
  String get food_barcode_found => 'Men eo emoj loe!';

  @override
  String get food_barcode_not_found_desc =>
      'Jejjab maroñ loe barcode in ilo database eo ekar bellok. Kwomaroñ kobaiktok einwot juon mōñā eo emōj kōmmane.';

  @override
  String get food_add_custom_btn => 'Kobaik mõñā ko rekāāl';

  @override
  String get food_scan_again => 'Bar Scan';

  @override
  String get food_review_items => 'Lale mōñā ko emoj loe';

  @override
  String get food_review_hint =>
      'Kōmman joñan ak jolok jabdrewot men ko rejjab kile';

  @override
  String get food_log_selected => 'Log Mōñā ko Kar Kālet';

  @override
  String get food_favourites_title => 'Mōñā ko ij iakwe';

  @override
  String get food_recent_title => 'Mōñā ko Rekãl';

  @override
  String get food_no_favourites =>
      'Ejelok mõñā ko ij iakwe. Lale jabdrewot mōñā ñan kōjparok ijin.';

  @override
  String get food_no_recents => 'Ejelok mōñā ko kar loe.';

  @override
  String get food_nutrition_details_title =>
      'Meļeļe ko kin mōñā ko ilo raan otemjej';

  @override
  String get food_macro_protein_label => 'Protein Breakdown';

  @override
  String get food_macro_carbs_label => 'Carbs Breakdown';

  @override
  String get food_macro_fat_label => 'Kōmman Fat Breakdown';

  @override
  String get food_macro_fiber_label => 'Fiber Breakdown';

  @override
  String get food_daily_target_comparison => 'Target Comparison';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'Ukōt Diary Entry';

  @override
  String get food_delete_entry => 'Jolok Entry';

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
    return '$current an $target ml';
  }

  @override
  String get water_intake_history => 'Water Log ko rainin';

  @override
  String get water_no_logs_today =>
      'Ejelok den ilo rainin. Kōmat im jibwe juon bōtōktōk in kobaik!';

  @override
  String get water_adjust_goal => 'Kōmmane Mejenkajjik eo an Ran otemjej';

  @override
  String get health_connect_banner => 'Connected to Health Connect';

  @override
  String get health_vitals_summary => 'Men ko Raorōk ñan Ājmour Ran otemjej';

  @override
  String get health_latest_heart_rate => 'Mōkaj in bōro eo ekãl tata';

  @override
  String get health_latest_bp => 'Bōtōktōk';

  @override
  String get health_latest_spo2 => 'Bōtōktōk Oxygen';

  @override
  String get health_latest_glucose => 'Glucose ilo bōtōktōk';

  @override
  String get health_latest_weight => 'joñan depakpak';

  @override
  String get health_latest_sleep => 'Iien kiki';

  @override
  String get health_add_manual => 'Kobaik joñan eo ilo pein';

  @override
  String get health_history_trends => 'Men ko ilo bwebwenato';

  @override
  String get health_sync_success => 'Data ko ikijen ejmour emoj an jejjet!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours awa $mins minit';
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
      'Kein jerbal ko rej kobalok im kein jerbal ko';

  @override
  String get health_devices_desc =>
      'Lale smartwatch ko, fitness tracker ko, im health sensor ko.';

  @override
  String get health_workout_editor_title => 'Edit Workout';

  @override
  String get health_workout_name_label => 'Etan jikin ikkure eo';

  @override
  String get health_workout_duration_label => 'Iien (minit ko)';

  @override
  String get health_workout_calories_label => 'Calories ko (kcal)';

  @override
  String get health_workout_date_label => 'Ran im Iien';

  @override
  String get plan_daily_wellness_roadmap => 'Roadmap eo am make';

  @override
  String get plan_morning_routine => 'Jerbal in Jibboñ';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Kōto eo ilo jota';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Day Wellness Focus';

  @override
  String get plan_targets_title =>
      'Mejenkajjik ko im Mejenkajjik ko ñan Ejmour';

  @override
  String get plan_calorie_budget_label => 'joñan calorie ko ilo raan otemjej';

  @override
  String get plan_water_budget_label => 'Target in den ilo raan otemjej';

  @override
  String get plan_step_budget_label => 'Mejenkajjik eo an raan otemjej';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Meļeļe ko an juon make';

  @override
  String get profile_body_stats => 'joñan enbwin';

  @override
  String get profile_app_preferences =>
      'Men ko kwoj kōnaan im kōmman ko an App eo';

  @override
  String get profile_edit_name_hint => 'Etam';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Utiej ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'joñan ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Yio';

  @override
  String get profile_gender_male => 'Emān';

  @override
  String get profile_gender_female => 'Kōrā';

  @override
  String get profile_gender_other => 'Bar jet / Ejjab kōnan ba';

  @override
  String get profile_activity_sedentary =>
      'Jijet wōt (Edik ak ejelok ekjerjaij)';

  @override
  String get profile_activity_light => 'Ejjab lukkun jerbal (1-3 raan/wiik)';

  @override
  String get profile_activity_moderate => 'Ej lukkun jerbal (3-5 raan/wik)';

  @override
  String get profile_activity_very => 'Elap an jerbal (6-7 raan/wiik)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Likūt Bloomi tile eo im complication eo ioon Wear OS watch eo am̧ n̄an lale calorie ko, dān, im step ko.';

  @override
  String get settings_widgets_header =>
      'Android Widget ko rej jerbal ibben don';

  @override
  String get settings_widgets_desc =>
      'Pin widget ko ilo ien eo emool ilo home screen eo am ñan update ko ilo ien eo wot.';

  @override
  String get settings_about_header => 'Kin Bloomi';

  @override
  String get settings_about_version => 'Version 1.0.0';

  @override
  String get settings_about_build => 'Kalōk 100';

  @override
  String get settings_about_credits =>
      'Kar kōmmane ilo kea ñan mour eo emman im ejmour.';

  @override
  String get settings_terms_header => 'Kien ko im Jekjek ko';

  @override
  String get settings_privacy_header => 'Kien in Kōjparok Mejenkajjik';

  @override
  String get settings_delete_header => 'Jolok Account & Data';

  @override
  String get settings_delete_warning =>
      'Jerbal in ejjab maroñ in bar jeblak. Aolep mōñā ko am, ikkure ko, men ko raorōk, im profile eo am renaj jako ñan indeeo.';

  @override
  String get settings_delete_confirm_btn => 'jolok ñan indio';

  @override
  String get onboard_welcome_headline => 'Jouj im itok ñan Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Emmōn, im lale ejmour eo kar kōmmane ilo mour eo am.';

  @override
  String get onboard_step_about => 'Kin Kwe';

  @override
  String get onboard_step_goals => 'Mejenkajjik ko am';

  @override
  String get onboard_step_lifestyle => 'Mwil ko raan otemjej';

  @override
  String get onboard_step_permissions => 'Mālim ko';

  @override
  String get onboard_step_plan => 'Pojak!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Kakememej ko im kōjjelā ko';

  @override
  String get onboard_camera_perm => 'Camera (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Lelok maroñ ko';

  @override
  String get onboard_continue_dashboard => 'Kōpeļļo̧k Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Kakememej ko kin den ilo aolepen raan eo';

  @override
  String get notif_channel_nutrition_name =>
      'Mōñā im Kakememej ko kin Mōñā ko Rejmour';

  @override
  String get notif_channel_nutrition_desc => 'Mōñā in jibboñ, raelep, im jota';

  @override
  String get notif_channel_steps_name => 'Step Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Kōjeraam̧m̧an ko n̄e rej tōpar kōttōpar ko raan otemjej';

  @override
  String get notif_channel_vitals_name => 'Ājmour im Vitals Checks';

  @override
  String get notif_channel_vitals_desc =>
      'Kakememej ko kin joñan eddo im ien kiki';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Kiki 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Kajin';

  @override
  String get share => 'Kwalok';

  @override
  String common_days(Object count) {
    return '$count d ago';
  }
}
