// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class AppLocalizationsUg extends AppLocalizations {
  AppLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'ئۆي';

  @override
  String get nav_today => 'بۈگۈن';

  @override
  String get nav_plan => 'پىلان';

  @override
  String get nav_food => 'يېمەكلىك';

  @override
  String get nav_food_diary => 'يېمەكلىك كۈندىلىك خاتىرىسى';

  @override
  String get nav_workout => 'چېنىقىش خاتىرىسى';

  @override
  String get nav_health => 'ساغلاملىق';

  @override
  String get nav_profile => 'ئارخىپ';

  @override
  String get save => 'ساقلاش';

  @override
  String get cancel => 'بىكار قىلىش';

  @override
  String get delete => 'ئۆچۈرۈش';

  @override
  String get edit => 'تەھرىر';

  @override
  String get done => 'تامام';

  @override
  String get close => 'تاقاش';

  @override
  String get back => 'قايتىش';

  @override
  String get next => 'كېيىنكى';

  @override
  String get continue_btn => 'داۋاملاشتۇر';

  @override
  String get confirm => 'جەزملەشتۈرۈڭ';

  @override
  String get search => 'ئىزدەش';

  @override
  String get filter => 'سۈزگۈچ';

  @override
  String get all => 'ھەممىسى';

  @override
  String get active => 'ئاكتىپ';

  @override
  String get today => 'بۈگۈن';

  @override
  String get yesterday => 'تۈنۈگۈن';

  @override
  String get tomorrow => 'ئەتە';

  @override
  String get add => 'قوش';

  @override
  String get remove => 'ئۆچۈرۈڭ';

  @override
  String get refresh => 'يېڭىلاش';

  @override
  String get retry => 'قايتا سىناڭ';

  @override
  String get error => 'خاتالىق';

  @override
  String get success => 'مۇۋەپپەقىيەت';

  @override
  String get loading => 'Loading ...';

  @override
  String get no_data => 'سانلىق مەلۇمات يوق';

  @override
  String get offline => 'تورسىز ھالەت';

  @override
  String get offline_sub => 'قايتا ئۇلانغاندىن كېيىن ئۆزگەرتىش ماسقەدەملىنىدۇ';

  @override
  String get undo => 'ئەمەلدىن قالدۇرۇش';

  @override
  String get portion => 'بۆلەك';

  @override
  String get quantity => 'سانى';

  @override
  String get unit => 'بىرلىك';

  @override
  String get clear => 'Clear';

  @override
  String get select => 'تاللاڭ';

  @override
  String get apply => 'ئىلتىماس قىلىڭ';

  @override
  String get reset => 'ئەسلىگە قايتۇرۇش';

  @override
  String get ok => 'ماقۇل';

  @override
  String get yes => 'ھەئە';

  @override
  String get no => 'ياق';

  @override
  String get optional => 'ئىختىيارىي';

  @override
  String get calories => 'كالورىيە';

  @override
  String get protein => 'ئاقسىل';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'سېمىز';

  @override
  String get fiber => 'تالا';

  @override
  String get water => 'سۇ';

  @override
  String get steps => 'Steps';

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
  String get hours => 'سائەت';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'مۇلازىمەت قىلىش';

  @override
  String get servings => 'مۇلازىمەتلەر';

  @override
  String get serving_size => 'مۇلازىمەت چوڭلۇقى';

  @override
  String get per_100g => 'ھەر 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'ئاسىيا';

  @override
  String get europe => 'ياۋروپا';

  @override
  String get middle_east => 'ئوتتۇرا شەرق';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'ئامېرىكا قىتئەسى';

  @override
  String get home_title => 'ئۆي';

  @override
  String get home_greeting_morning => 'خەيرلىك ئەتىگەن!';

  @override
  String get home_greeting_afternoon => 'خەيرلىك چۈشتىن كېيىن';

  @override
  String get home_greeting_evening => 'خەيرلىك كەچ!';

  @override
  String get home_streak_title => 'گۈللۈكى';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كۈن تەرتىپى',
      one: '1 كۈنلۈك يول',
      zero: '0 كۈن داۋاملاشتى',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'كۆيدۈرۈلدى';

  @override
  String get home_calories_budget => 'كالورىيە خامچوتى';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal قالدى';
  }

  @override
  String get home_water_title => 'كۈندىلىك سۇ تولۇقلاش';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'قەدەملەر ماڭدى';

  @override
  String get home_quick_actions => 'تېز ھەرىكەت';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'بۈگۈنكى چۈشەنچىلەر';

  @override
  String get home_quote => 'كىچىك ساغلام تاللاشلار گۈللىنىشنى ئۆزگەرتىدۇ.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI مەشقاۋۇلى';

  @override
  String get home_surroundings => 'ئەتراپ ۋە ھاۋا';

  @override
  String get home_notifications => 'ئۇقتۇرۇش';

  @override
  String get home_daily_score => 'كۈندىلىك ساغلاملىق نومۇرى';

  @override
  String get home_view_all => 'ھەممىنى كۆرۈش';

  @override
  String get food_diary_title => 'يېمەكلىك كۈندىلىك خاتىرىسى';

  @override
  String get food_breakfast => 'ناشتىلىق';

  @override
  String get food_lunch => 'چۈشلۈك تاماق';

  @override
  String get food_dinner => 'كەچلىك تاماق';

  @override
  String get food_snacks => 'ئۇششاق-چۈششەك يېمەكلىكلەر';

  @override
  String get food_add_food => 'يېمەكلىك قوشۇڭ';

  @override
  String get food_edit_food => 'يېمەكلىكلەرنى تەھرىرلەش';

  @override
  String get food_add_breakfast => 'ناشتىلىق قوشۇڭ';

  @override
  String get food_add_lunch => 'چۈشلۈك تاماقنى قوشۇڭ';

  @override
  String get food_add_dinner => 'كەچلىك تاماقنى قوشۇڭ';

  @override
  String get food_add_snack => 'Snack نى قوشۇڭ';

  @override
  String get food_total_calories => 'ئومۇمىي كالورىيە';

  @override
  String get food_empty_meal => 'بۇ تاماققا تېخى تىزىملىتىلمىغان يېمەكلىكلەر';

  @override
  String get food_empty_diary => 'بۇ كۈنگە ھېچقانداق تاماق تىزىملىتىلمىدى';

  @override
  String get food_log_first_meal =>
      '+ نى چېكىپ تۇنجى مەززىلىك تامىقىڭىزنى خاتىرىلەڭ';

  @override
  String get food_quick_add => 'تېز قوشۇش';

  @override
  String get food_search_hint => 'تاماق ، مېۋە ، دال ، روتى ...';

  @override
  String get food_custom_recipe => 'Custom Food & Recipe';

  @override
  String get food_scan_barcode => 'تاياقچە كودىنى سايىلەڭ';

  @override
  String get food_camera_scan => 'AI يېمەكلىك سايىلىغۇچ';

  @override
  String get food_recent => 'يېقىنقى يېمەكلىكلەر';

  @override
  String get food_favourites => 'ياقتۇرىدىغانلار';

  @override
  String get food_macro_summary => 'Macronutrient Breakdown';

  @override
  String get food_delete_meal_confirm => 'بۇ تۈرنى ئۆچۈرمەكچىمۇ؟';

  @override
  String get food_item_deleted => 'يېمەكلىك تۈرى چىقىرىۋېتىلدى';

  @override
  String get food_remaining => 'قالغان';

  @override
  String get food_consumed => 'ئىستېمال قىلىندى';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'يېمەكلىكلەرنى ئىزدەش';

  @override
  String get foodSearch_scan_barcode => 'تاياقچە كودىنى سايىلەڭ';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'ئىختىيارى يېمەكلىك قۇرۇش';

  @override
  String get foodSearch_recent_searches => 'يېقىنقى ئىزدەشلەر';

  @override
  String get foodSearch_popular => 'ئاممىباب تاماقلار';

  @override
  String get foodSearch_no_results => 'ئىزدىشىڭىزگە ماس كېلىدىغان يېمەكلىك يوق';

  @override
  String get barcode_title => 'تاياقچە كود سايىلىغۇچ';

  @override
  String get barcode_align => 'تاياقچە كودنى كامېرا رامكىسىغا توغرىلاڭ';

  @override
  String get barcode_not_found => 'سانداندا مەھسۇلات تېپىلمىدى';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro ئارقىلىق تاياقچە كودنى سايىلەشكە بولىدۇ';

  @override
  String get camera_title => 'AI يېمەكلىك سايىلىغۇچ';

  @override
  String get camera_tap_hint => 'تامىقىڭىزنى ئېنىق سۈرەتكە تارتىڭ';

  @override
  String get camera_analysing => 'يېمەكلىك تەخسىسىنى تەھلىل قىلىش ...';

  @override
  String get camera_detected => 'بايقالغان بۇيۇملار';

  @override
  String get camera_flash => 'Flash نى قوزغىتىڭ';

  @override
  String get camera_retake => 'رەسىمنى قايتا ئېلىش';

  @override
  String get camera_confirm_food => 'تۈرلەرنى جەزملەشتۈرۈڭ';

  @override
  String get customFood_title => 'Custom Food & Recipe';

  @override
  String get customFood_name_hint => 'تاماق ياكى تەركىب ئىسمى';

  @override
  String get customFood_calories_hint => 'كالورىيە (kcal)';

  @override
  String get customFood_protein_hint => 'ئاقسىل (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Fat (g)';

  @override
  String get customFood_save => 'رېتسېپنى ساقلاڭ';

  @override
  String get water_tracker_title => 'Water Tracker';

  @override
  String get water_daily_target => 'كۈندىلىك سۇ تولۇقلاش نىشانى';

  @override
  String get water_logged_today => 'بۈگۈن تىزىملىتىلدى';

  @override
  String get water_add_glass => '+250 مىللىمېتىر ئەينەك';

  @override
  String get water_add_bottle => '+ 500 مىللىمېتىر بوتۇلكا';

  @override
  String get water_custom_amount => 'ئىختىيارى سومما';

  @override
  String get water_reminder_tip =>
      'تۇراقلىق ئېنېرگىيە ئۈچۈن كۈن بويى قەرەللىك سۇ ئىچىڭ.';

  @override
  String water_logged_toast(Object amount) {
    return 'تىزىمغا ئېلىنغان $amount مىللىمېتىر سۇ 💧';
  }

  @override
  String get workout_title => 'چېنىقىش خاتىرىسى';

  @override
  String get workout_add_exercise => 'چېنىقىش';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'كۈچ';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Duration';

  @override
  String get workout_intensity => 'قويۇقلۇقى';

  @override
  String get workout_calories_burned => 'كالورىيە كۆيۈپ كەتتى';

  @override
  String get workout_empty => 'بۈگۈن چېنىقىش يوق';

  @override
  String get workout_save_success => 'چېنىقىش مۇۋەپپەقىيەتلىك ساقلاندى!';

  @override
  String get workout_type => 'چېنىقىش تىپى';

  @override
  String get workout_notes => 'Notes & Reflections';

  @override
  String get health_overview_title => 'Health & Vital';

  @override
  String get health_heart_rate => 'يۈرەك رېتىمى';

  @override
  String get health_blood_oxygen => 'قان ئوكسىگىن (SpO2)';

  @override
  String get health_blood_pressure => 'قان بېسىمى';

  @override
  String get health_blood_glucose => 'قان گلۇكوزى';

  @override
  String get health_body_temperature => 'بەدەن تېمپېراتۇرىسى';

  @override
  String get health_sleep_tracking => 'ئۇيقۇ ئىز قوغلاش';

  @override
  String get health_weight_tracking => 'ئېغىرلىق ۋە بەدەن قۇرۇلمىسى';

  @override
  String get health_waist_hip => 'بەلدىن Hip نىسبىتى';

  @override
  String get health_devices_hub => 'ئۈسكۈنىلەر ۋە Smartwatch Hub';

  @override
  String get health_sync_now => 'ساغلاملىق سانلىق مەلۇماتلىرىنى ماسقەدەملەش';

  @override
  String health_last_synced(Object time) {
    return 'ئاخىرقى ماس قەدەمدە: $time';
  }

  @override
  String get health_manual_entry => 'Manual Health Entry';

  @override
  String get health_metric_detail => 'Metric Details';

  @override
  String get health_connected_sensors => 'ئۇلانغان ساغلاملىق سېنزورى';

  @override
  String get plan_title => 'كۈندىلىك پىلان';

  @override
  String get plan_weekly_title => 'ھەپتىلىك ساغلاملىق پىلانى';

  @override
  String get plan_calorie_target => 'كالورىيە نىشانى';

  @override
  String get plan_water_target => 'Hydration Target';

  @override
  String get plan_step_target => 'قەدەم نىشانى';

  @override
  String get plan_sleep_target => 'ئۇيقۇ نىشانى';

  @override
  String get plan_meal_suggestions => 'تاماق تەكلىپلىرى';

  @override
  String get plan_healthy_habits => 'ساغلام ئادەت ۋە كۆرسەتمىلەر';

  @override
  String get plan_coach_advice => 'Bloomi AI مەشقاۋۇلىنىڭ تەۋسىيەسى';

  @override
  String get plan_generated_title => 'خاسلاشتۇرۇلغان كۈندىلىك ۋاقىت جەدۋىلى';

  @override
  String get profile_title => 'ئارخىپ';

  @override
  String get profile_edit => 'ئارخىپنى تەھرىرلەش';

  @override
  String get profile_name => 'ئىسمى';

  @override
  String get profile_age => 'يېشى';

  @override
  String get profile_gender => 'جىنىس';

  @override
  String get profile_height => 'ئېگىزلىكى';

  @override
  String get profile_weight => 'ئېغىرلىقى';

  @override
  String get profile_goal => 'دەسلەپكى نىشان';

  @override
  String get profile_activity_level => 'پائالىيەت دەرىجىسى';

  @override
  String get profile_stats => 'مېنىڭ سالامەتلىكىم';

  @override
  String get profile_saved => 'ئارخىپ مۇۋەپپەقىيەتلىك يېڭىلاندى';

  @override
  String get profile_bmi => 'بەدەن ماسسىسى كۆرسەتكۈچى (BMI)';

  @override
  String get profile_membership => 'ئەزالىق';

  @override
  String get settings => 'تەڭشەك';

  @override
  String get preferences_habits => 'PREFERENCES & HABITS';

  @override
  String get appearance_theme => 'كۆرۈنۈش ۋە تېما';

  @override
  String get appearance_theme_sub =>
      'قاراڭغۇ ، نۇر ، سىستېما ھالىتى ۋە ئەپ تەگلىك تاللانمىلىرى';

  @override
  String get permissions => 'ئىجازەت ۋە سىستېمىغا كىرىش';

  @override
  String get permissions_sub =>
      'ساغلاملىق ئۇلىنىشى ، قەدەم سېنزورى ، GPS ، ئۇقتۇرۇش ۋە كامېرا';

  @override
  String get reminders_notifications => 'ئەسكەرتىش ۋە ئۇقتۇرۇش';

  @override
  String get reminders_sub =>
      'تاماق ۋاقتى ، سۇ ، ئېغىرلىقنى تەكشۈرۈش ۋە ئۇخلاش ۋاقتى ئەسكەرتىش';

  @override
  String get units_of_measurement => 'ئۆلچەم بىرلىكى';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) or Imperial (lbs, ft / in, fl oz)';

  @override
  String get app_language => 'ئەپ تىلى';

  @override
  String get language_sub =>
      'ئىنگلىزچە ، हिन्दी (ھىندىچە) ، Hinglish & 195+ يەرشارى تىلى';

  @override
  String get home_screen_widgets => 'ئائىلە ئېكران كىچىك قوراللىرى';

  @override
  String get widgets_sub =>
      'نەق مەيدان ئاندىرويىد كىچىك قوراللىرى: Hub ، قەدەملەر ، سۇ ، ئوزۇقلۇق ۋە ماسكوت';

  @override
  String get wear_os_watch_app => 'OS Watch App نى كىيىڭ';

  @override
  String get wear_os_sub =>
      'ئەقلىي ئىقتىدارلىق سائەت ھەمراھى ، كاھىش ، ئەگەشمە كېسەللىكلەر ۋە نەق مەيدان ھاياتىي كۈچى';

  @override
  String get goals_wellness => 'نىشان ۋە ياخشىلىق كۆز قاراشلىرى';

  @override
  String get nutrition_targets => 'ئوزۇقلۇق نىشانى ۋە ماكرو بۆلۈش';

  @override
  String get nutrition_targets_sub =>
      'كالورىيە نىشانى ، ئاقسىل ، كاربون ، ماي ۋە سۇ نىشانى';

  @override
  String get weekly_recap => 'ھەپتىلىك سالامەتلىكنى ئەسلىگە كەلتۈرۈش';

  @override
  String get weekly_recap_sub =>
      '7 كۈنلۈك ئىسسىقلىق ئېنىرگىيىسى ، ماكرو نىسبىتى ۋە ئەڭ ياخشى كۈن';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'ئاكتىپ گۈل چېچىش ، بەلگە ۋە مۇۋەپپەقىيەتلەر';

  @override
  String get connected_devices => 'CONNECTED DEVICES & ECOSYSTEM';

  @override
  String get devices_hub => 'ئۈسكۈنىلەر ۋە Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'ساغلاملىق ئۇلىنىشى ، Galaxy Watch ، Pixel Watch ، Garmin';

  @override
  String get surroundings_weather => 'ئەتراپ ۋە ھاۋارايى';

  @override
  String get surroundings_sub =>
      'ھاۋا سۈپىتى (AQI) ، UV كۆرسەتكۈچى ۋە ھاۋارايى سۇ تولۇقلاش كۆرسەتمىلىرى';

  @override
  String get bloomi_pro => 'Bloomi Pro مۇشتەرىلىكى';

  @override
  String get bloomi_pro_sub =>
      'سۈنئىي ئەقىل پىلانى مەشقاۋۇلى ، 5 ئائىلە ئېكران كىچىك قورالى ۋە ھاياتىي كۈچى ئىز قوغلاش';

  @override
  String get about_security => 'ABOUT & SECURITY';

  @override
  String get about_bloomi => 'Bloomi ھەققىدە';

  @override
  String get about_bloomi_sub => 'ئۆلچەم ، نەشرى ، خاسلىق قۇرۇڭ';

  @override
  String get privacy_policy => 'مەخپىيەتلىك تۈزۈمى';

  @override
  String get privacy_policy_sub =>
      'تورسىز بىرىنچى ، ئۈسكۈنىدىكى سانلىق مەلۇمات قۇرۇلمىسى';

  @override
  String get terms_conditions => 'شەرت ۋە شەرت';

  @override
  String get terms_conditions_sub =>
      'مۇلازىمەت شەرتلىرى ۋە ساغلاملىق كۆرسەتمىلىرى';

  @override
  String get delete_account => 'ھېسابات ۋە سانلىق مەلۇماتنى ئۆچۈرۈڭ';

  @override
  String get delete_account_sub =>
      'يەرلىك SQLite سانلىق مەلۇماتلىرى ۋە بۇلۇت زاپاسلاشنى ئەسلىگە كەلتۈرگىلى بولمايدۇ';

  @override
  String get healthy_habits =>
      'مۇلايىم ، ئۇزۇن مۇددەتلىك ساغلاملىق ئادىتىنى يېتىلدۈرۈڭ';

  @override
  String get all_logs => 'مېنىڭ ئىز قوغلانغان سانلىق مەلۇمات ۋە خاتىرىلىرىم';

  @override
  String get search_language => 'تىل ياكى ئانا يېزىق ئارقىلىق ئىزدەش ...';

  @override
  String get languages_available => 'تىللار بار';

  @override
  String get no_matching_languages => 'ماس كېلىدىغان تىل تېپىلمىدى';

  @override
  String get try_searching =>
      'ئانا يېزىق ياكى ئىنگلىزچە ئىملا ئارقىلىق ئىزدەپ بېقىڭ';

  @override
  String get partially_translated => 'قىسمەن تەرجىمە قىلىندى';

  @override
  String get complete_translation => 'تامام';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'تىل $name ($nativeName) قىلىپ تەڭشەلدى';
  }

  @override
  String get surroundings_title => 'مۇھىت ۋە مۇھىت';

  @override
  String get surroundings_aqi => 'ھاۋا سۈپىتى كۆرسەتكۈچى';

  @override
  String get surroundings_uv => 'UV كۆرسەتكۈچى';

  @override
  String get surroundings_temp => 'تېمپېراتۇرا';

  @override
  String get surroundings_humidity => 'نەملىك';

  @override
  String get surroundings_hydration_advice =>
      'ھازىرقى ھاۋارايى شارائىتىدا ياخشى سۇ تولۇقلاڭ.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'يېمەكلىك ئىزدەش';

  @override
  String get food_quick_barcode => 'تاياقچە كودنى سىكانىرلاڭ';

  @override
  String get food_quick_water => 'سۇ قوشۇڭ';

  @override
  String get food_quick_custom => 'Custom Food';

  @override
  String get surroundings_good => 'ياخشى';

  @override
  String get surroundings_moderate => 'ئوتتۇراھال';

  @override
  String get surroundings_unhealthy => 'ساغلام ئەمەس';

  @override
  String get notifications_title => 'ئۇقتۇرۇش ۋە ئاگاھلاندۇرۇش';

  @override
  String get notifications_empty => 'يېڭى ئۇقتۇرۇش يوق';

  @override
  String get notifications_mark_read => 'ھەممىنى ئوقۇشقا بەلگە قويۇڭ';

  @override
  String get notifications_clear => 'ھەممىنى تازىلاش';

  @override
  String get reminders => 'ئەسكەرتىش تەڭشەكلىرى';

  @override
  String get notifications => 'ئۇقتۇرۇش';

  @override
  String get reminders_breakfast_title => 'ناشتىلىق ئەسكەرتىش 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'خەيرلىك ئەتىگەن! $time دىكى ئوزۇقلۇق ناشتىلىق ۋاقتى.';
  }

  @override
  String get reminders_lunch_title => 'چۈشلۈك تاماق ئەسكەرتىش 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time دىكى تەڭپۇڭ ، كۆڭۈللۈك چۈشلۈك تاماقتىن توختاپ ھۇزۇرلىنىڭ.';
  }

  @override
  String get reminders_dinner_title => 'كەچلىك تاماق ئەسكەرتىش 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time دىكى يېنىك ، قانائەتلىنەرلىك كەچلىك تاماق ۋاقتى.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'يېڭى بىر ئىستاكان سۇ ئىچىدىغان ۋاقىت! ($time)';
  }

  @override
  String get reminders_weight_title => 'ھەپتىلىك ئېغىرلىقى ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ($time) دىكى ھەپتىلىك بەدەن كۆرسەتكۈچلىرىڭىزنى ئىز قوغلاڭ.';
  }

  @override
  String get reminders_sleep_title => 'ئۇخلاش ۋاقتى شامال down';

  @override
  String reminders_sleep_body(Object time) {
    return 'بوشاشتۇرۇپ ئۇخلاش ئۈچۈن تەييارلىق قىلىڭ ($time).';
  }

  @override
  String get onboard_welcome => 'Bloomi غا خۇش كەپسىز';

  @override
  String get onboard_sub =>
      'دوستانە ، تورسىز بىرىنچى ساغلاملىق ۋە ئوزۇقلۇق ھەمراھىڭىز.';

  @override
  String get onboard_get_started => 'باشلاڭ';

  @override
  String get onboard_sign_in => 'تىزىملىتىڭ';

  @override
  String get onboard_skip => 'ئاتلاش';

  @override
  String get onboard_choose_goal => 'ئاساسلىق ساغلاملىق نىشانىڭىز نېمە؟';

  @override
  String get onboard_goal_weight_loss => 'مۇلايىم ئورۇقلاش';

  @override
  String get onboard_goal_muscle => 'مۇسكۇلغا ئېرىشىش ۋە كۈچ';

  @override
  String get onboard_goal_energy => 'كۈندىلىك ئېنېرگىيە ۋە ھاياتىي كۈچ';

  @override
  String get onboard_goal_habits => 'ساغلام كۆڭۈللۈك يېيىش';

  @override
  String get onboard_about_you => 'ئۆزىڭىز ھەققىدە بىزگە سۆزلەپ بېرىڭ';

  @override
  String get onboard_lifestyle => 'كۈندىلىك ئادىتىڭىز';

  @override
  String get onboard_permissions_title => 'ئىجازەت ۋە سىستېمىغا كىرىش';

  @override
  String get onboard_permissions_sub =>
      'قەدەمداش قەدەم ، چېنىقىش ۋە ئەسكەرتىشلەرنى زىيارەت قىلىشقا ئىجازەت بېرىڭ.';

  @override
  String get onboard_plan_ready_title => 'ئىختىيارى پىلانىڭىز تەييار!';

  @override
  String get onboard_plan_ready_sub =>
      'بىز پەقەت سىز ئۈچۈن مۇلايىم ، خاسلاشتۇرۇلغان ئوزۇقلۇق ۋە ساغلاملىق يول خەرىتىسىنى تۈزدۇق.';

  @override
  String get onboard_enter_bloomi => 'Bloomi غا كىرىڭ';

  @override
  String get insights_weekly_report => 'ھەپتىلىك سالامەتلىكنى ئەسلىگە كەلتۈرۈش';

  @override
  String insights_best_day(Object day) {
    return 'ئەڭ ياخشى ئىزچىللىق كۈنى: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return '$date دا ئېچىلدى';
  }

  @override
  String get insights_keep_going => 'قالتىس ئىلگىرىلەشنى داۋاملاشتۇرۇڭ!';

  @override
  String get widgets_title => 'ئائىلە ئېكران كىچىك قوراللىرى';

  @override
  String widgets_active_count(Object count) {
    return 'ئاكتىپ كىچىك قوراللار: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'قەدەم ۋە ئاكتىپ ئۈزۈك';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot ھەمراھى';

  @override
  String get wear_os_title => 'OS Smartwatch نى كىيىڭ';

  @override
  String get wear_os_connected => 'كۆرۈشكە ئۇلاندى';

  @override
  String get wear_os_sync => 'سانلىق مەلۇماتلارنى ماسقەدەملەش';

  @override
  String get theme_title => 'كۆرۈنۈش ۋە تېما';

  @override
  String get theme_mode => 'ئۇسلۇب ھالىتى';

  @override
  String get theme_light => 'نۇر';

  @override
  String get theme_dark => 'قاراڭغۇ';

  @override
  String get theme_system => 'سىستېما كۆڭۈلدىكى قىممىتى';

  @override
  String get theme_background_palette => 'تەگلىك Palette';

  @override
  String get units_title => 'ئۆلچەم بىرلىكى';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'باشقۇرۇش تاختىسىنى يۈكلىيەلمىدى';

  @override
  String get home_health_permission_req =>
      'ساغلاملىق ئۇلىنىش ئىجازەتنامىسى تەلەپ قىلىنىدۇ';

  @override
  String get home_health_permission_desc =>
      'Bloomi ھەقىقىي ئۇلىنىش ، يۈرەك سوقۇشى ۋە كۆچمە ئائىلە كىچىك قوراللىرىنى دەل ۋاقتىدا تارتىش ئۈچۈن ساغلاملىق ئۇلىنىشى ئىجازىتىنى تەلەپ قىلىدۇ.';

  @override
  String get home_allow_health => 'ساغلاملىق ئۇلىنىشىغا يول قويۇڭ';

  @override
  String get home_ready_mindful_day => 'كۆڭۈللۈك بىر كۈنگە تەييارمۇ؟ ✨';

  @override
  String get home_quick_add => 'تېز قوشۇش';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'CALORIES REMAINING';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'يېيىش: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'سۇ ئىز قوغلاش نى چېكىڭ';

  @override
  String get home_water_goal_reached => 'كۈندىلىك نىشانغا يەتتى';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'كۈندىلىك نىشانغا $remaining مىللىمېتىر';
  }

  @override
  String get home_details => 'تەپسىلاتى';

  @override
  String get home_upgrade_plan_desc =>
      'خاسلاشتۇرۇلغان كۈندىلىك نىشان ۋە سۈنئىي ئەقىل پىلانىنىڭ قۇلۇپىنى ئېچىڭ';

  @override
  String get home_unlock => 'قۇلۇپ ئېچىش 👑';

  @override
  String get home_quick_log_hint => 'ساغلاملىق خاتىرىسىنى تېز خاتىرىلەڭ';

  @override
  String get food_serving_size => 'مۇلازىمەت چوڭلۇقى';

  @override
  String get food_serving_grams => 'مۇلازىمەت قىلىش (g)';

  @override
  String get food_number_servings => 'مۇلازىمەت سانى';

  @override
  String get food_calories_per_serving => 'ھەر مۇلازىمەت ئۈچۈن كالورىيە';

  @override
  String get food_recipe_ingredients => 'تەركىبلەر';

  @override
  String get food_recipe_add_ingredient => 'تەركىب قوشۇڭ';

  @override
  String get food_recipe_directions => 'كۆرسەتمە ۋە ئىزاھات';

  @override
  String get food_recipe_total => 'ئومۇمىي رېتسېپلىق ئوزۇقلۇق';

  @override
  String get food_recipe_per_serving => 'پەرۋىش مۇلازىمىتى';

  @override
  String get food_recipe_saved_toast =>
      'ئىختىيارى يېمەكلىك مۇۋەپپەقىيەتلىك تېجەلدى!';

  @override
  String get food_barcode_found => 'مەھسۇلات تېپىلدى!';

  @override
  String get food_barcode_not_found_desc =>
      'بىز بۇ كودنى ئوچۇق سانداندىن تاپالمىدۇق. ئۇنى مەخسۇس يېمەكلىك قىلىپ قوشسىڭىز بولىدۇ.';

  @override
  String get food_add_custom_btn => 'ئىختىيارى يېمەكلىك قوشۇڭ';

  @override
  String get food_scan_again => 'قايتا سايىلەڭ';

  @override
  String get food_review_items => 'بايقالغان يېمەكلىكلەرنى تەكشۈرۈش';

  @override
  String get food_review_hint =>
      'مىقدارنى تەڭشەش ياكى تونۇلمىغان تۈرلەرنى چىقىرىۋېتىش';

  @override
  String get food_log_selected => 'تاللانغان يېمەكلىكلەرنى خاتىرىلەش';

  @override
  String get food_favourites_title => 'ياقتۇرىدىغان يېمەكلىكلەر';

  @override
  String get food_recent_title => 'يېقىنقى يېمەكلىكلەر';

  @override
  String get food_no_favourites =>
      'ياخشى كۆرىدىغان يېمەكلىكلەر يوق. بۇ يەردە تېجەش ئۈچۈن ھەر قانداق يېمەكلىككە يۈرەكنى چېكىڭ.';

  @override
  String get food_no_recents =>
      'يېقىندا تىزىمغا ئېلىنغان يېمەكلىكلەر تېپىلمىدى.';

  @override
  String get food_nutrition_details_title => 'كۈندىلىك ئوزۇقلۇق تەپسىلاتلىرى';

  @override
  String get food_macro_protein_label => 'ئاقسىلنىڭ پارچىلىنىشى';

  @override
  String get food_macro_carbs_label => 'Carbs Breakdown';

  @override
  String get food_macro_fat_label => 'ماي پارچىلىنىش';

  @override
  String get food_macro_fiber_label => 'تالا پارچىلىنىش';

  @override
  String get food_daily_target_comparison => 'نىشان سېلىشتۇرۇش';

  @override
  String food_target_label(Object target) {
    return 'نىشان: $target';
  }

  @override
  String get food_edit_entry => 'كۈندىلىك خاتىرىسىنى تەھرىرلەڭ';

  @override
  String get food_delete_entry => 'تۈرنى ئۆچۈرۈڭ';

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
    return '$current نىڭ $current';
  }

  @override
  String get water_intake_history => 'بۈگۈنكى سۇ خاتىرىسى';

  @override
  String get water_no_logs_today =>
      'بۈگۈن سۇ يوق. تېز سۈرئەتتە قوشۇش كۇنۇپكىسىنى بېسىڭ!';

  @override
  String get water_adjust_goal => 'كۈندىلىك نىشاننى تەڭشەش';

  @override
  String get health_connect_banner => 'ساغلاملىق ئۇلىنىشىغا ئۇلاندى';

  @override
  String get health_vitals_summary => 'كۈندىلىك ساغلاملىق مۇھىم نۇقتىلىرى';

  @override
  String get health_latest_heart_rate => 'ئەڭ يېڭى يۈرەك رېتىمى';

  @override
  String get health_latest_bp => 'قان بېسىمى';

  @override
  String get health_latest_spo2 => 'قان ئوكسىگىن';

  @override
  String get health_latest_glucose => 'قان گلۇكوزى';

  @override
  String get health_latest_weight => 'ئېغىرلىقى';

  @override
  String get health_latest_sleep => 'ئۇيقۇ ۋاقتى';

  @override
  String get health_add_manual => 'قولدا ئۆلچەشنى قوشۇڭ';

  @override
  String get health_history_trends => 'تارىخى يۈزلىنىش';

  @override
  String get health_sync_success =>
      'ساغلاملىق سانلىق مەلۇماتلىرى مۇۋەپپەقىيەتلىك ماسقەدەملەندى!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours سائەت $mins مىنۇت';
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
    return '$pct%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg / dL';
  }

  @override
  String get health_devices_title => 'ئۇلانغان ئۈسكۈنىلەر ۋە تاقىما ئۈسكۈنىلەر';

  @override
  String get health_devices_desc =>
      'جۈپ ئەقلىي ئىقتىدارلىق سائەت ، چېنىقىش ئىز قوغلاش ئۈسكۈنىسى ۋە ساغلاملىق سېنزورلىرىنى باشقۇرۇڭ.';

  @override
  String get health_workout_editor_title => 'چېنىقىشنى تەھرىرلەڭ';

  @override
  String get health_workout_name_label => 'چېنىقىش ئىسمى';

  @override
  String get health_workout_duration_label => 'Duration (minutes)';

  @override
  String get health_workout_calories_label => 'مۆلچەرلەنگەن كالورىيە (kcal)';

  @override
  String get health_workout_date_label => 'چېسلا ۋە ۋاقىت';

  @override
  String get plan_daily_wellness_roadmap => 'خاسلاشتۇرۇلغان يول خەرىتىسى';

  @override
  String get plan_morning_routine => 'ئەتىگەنلىك يول';

  @override
  String get plan_afternoon_routine => 'چۈشلۈك ساغلاملىق';

  @override
  String get plan_evening_routine => 'كەچلىك شامال';

  @override
  String get plan_coach_badge => 'Bloomi AI مەشقاۋۇلى';

  @override
  String get plan_weekly_overview => '7 كۈنلۈك ساغلاملىق فوكۇس نۇقتىسى';

  @override
  String get plan_targets_title => 'ساغلاملىق نىشانى ۋە نىشانى';

  @override
  String get plan_calorie_budget_label => 'كۈندىلىك كالورىيە خامچوتى';

  @override
  String get plan_water_budget_label => 'كۈندىلىك سۇ نىشانى';

  @override
  String get plan_step_budget_label => 'كۈندىلىك قەدەم نىشانى';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'شەخسىي تەپسىلاتلار';

  @override
  String get profile_body_stats => 'بەدەن ئۆلچەش';

  @override
  String get profile_app_preferences => 'مايىللىق ۋە ئەپ تەڭشىكى';

  @override
  String get profile_edit_name_hint => 'ئىسمىڭىز';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ئېگىزلىكى ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'ئېغىرلىقى ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'يېشى';

  @override
  String get profile_gender_male => 'ئەر';

  @override
  String get profile_gender_female => 'ئايال';

  @override
  String get profile_gender_other => 'باشقا / دېمەسلىككە ئامراق';

  @override
  String get profile_activity_sedentary => 'ئولتۇرۇش (ئازراق چېنىقىش يوق)';

  @override
  String get profile_activity_light => 'يېنىك ئاكتىپ (1-3 كۈن / ھەپتە)';

  @override
  String get profile_activity_moderate => 'ئوتتۇراھال ئاكتىپ (3-5 كۈن / ھەپتە)';

  @override
  String get profile_activity_very => 'بەك ئاكتىپ (6-7 كۈن / ھەپتە)';

  @override
  String get settings_wear_os_header => 'OS ھەمراھى ئەپ دېتالى';

  @override
  String get settings_wear_os_desc =>
      'Wear OS قول سائىتىگە Bloomi كاھىش ۋە مۇرەككەپلىكىنى ئورنىتىپ ، ئىسسىقلىق ئېنېرگىيىسى ، سۇ ۋە باسقۇچلارغا قاراڭ.';

  @override
  String get settings_widgets_header =>
      'ئۆز-ئارا تەسىر كۆرسىتىدىغان ئاندىرويىد كىچىك قوراللىرى';

  @override
  String get settings_widgets_desc =>
      'دەرھال يېڭىلاش ئۈچۈن ئۈسكۈنىڭىزنىڭ باش ئېكرانىدىكى ھەقىقىي كىچىك قوراللارنى باغلاڭ.';

  @override
  String get settings_about_header => 'Bloomi ھەققىدە';

  @override
  String get settings_about_version => '1.0.0 نەشرى';

  @override
  String get settings_about_build => '100 قۇر';

  @override
  String get settings_about_credits =>
      'كۆڭۈل ، ساغلام ياشاشقا كۆڭۈل بۆلۈش بىلەن ياسالغان.';

  @override
  String get settings_terms_header => 'شەرت ۋە شەرت';

  @override
  String get settings_privacy_header => 'مەخپىيەتلىك تۈزۈمى';

  @override
  String get settings_delete_header => 'ھېسابات ۋە سانلىق مەلۇماتنى ئۆچۈرۈڭ';

  @override
  String get settings_delete_warning =>
      'بۇ ھەرىكەتنى ئەمەلدىن قالدۇرغىلى بولمايدۇ. بارلىق تاماقلىرىڭىز ، چېنىقىشلىرىڭىز ، ھاياتىي كۈچىڭىز ۋە ئارخىپىڭىز مەڭگۈلۈك ئۆچۈرۈلىدۇ.';

  @override
  String get settings_delete_confirm_btn => 'مەڭگۈلۈك ئۆچۈرۈش';

  @override
  String get onboard_welcome_headline => 'Bloomi to غا خۇش كەپسىز';

  @override
  String get onboard_welcome_tagline =>
      'مۇلايىم ، زېھنىي ساغلاملىقنى ئىز قوغلاش ھاياتىڭىزنى چۆرىدەپ لايىھەلەنگەن.';

  @override
  String get onboard_step_about => 'سەن ھەققىدە';

  @override
  String get onboard_step_goals => 'نىشانىڭىز';

  @override
  String get onboard_step_lifestyle => 'كۈندىلىك ئادەت';

  @override
  String get onboard_step_permissions => 'ئىجازەت';

  @override
  String get onboard_step_plan => 'تەييار!';

  @override
  String get onboard_health_connect_perm => 'ساغلاملىق ئۇلىنىشى';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'كۆڭۈلدىكىدەك ئەسكەرتىش ۋە ئۇقتۇرۇش';

  @override
  String get onboard_camera_perm =>
      'كامېرا (تاياقچە كودى ۋە يېمەكلىك سايىلىغۇچ)';

  @override
  String get onboard_grant_permissions => 'ئىجازەتنامە';

  @override
  String get onboard_continue_dashboard => 'باشقۇرۇش تاختىسىنى ئېچىڭ';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'كۈن بويى مۇلايىم سۇ ئەسكەرتىشلىرى';

  @override
  String get notif_channel_nutrition_name => 'تاماق ۋە ئوزۇقلۇق ئەسكەرتىشلىرى';

  @override
  String get notif_channel_nutrition_desc =>
      'ناشتىلىق ، چۈشلۈك تاماق ۋە كەچلىك تاماق ئەسكەرتىش ئاگاھلاندۇرۇشى';

  @override
  String get notif_channel_steps_name => 'قەدەم باسقۇچلىرى';

  @override
  String get notif_channel_steps_desc =>
      'كۈندىلىك قەدەم نىشانىغا يەتكەندە تەبرىكلەش';

  @override
  String get notif_channel_vitals_name => 'Health & Vital Checks';

  @override
  String get notif_channel_vitals_desc =>
      'ئېغىرلىق ۋە ئۇخلاش ۋاقتىدىكى شامالدىن ئەسكەرتىش';

  @override
  String get notif_action_log_water => '💧 Log + 250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

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
