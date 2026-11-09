// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bodo (`brx`).
class AppLocalizationsBrx extends AppLocalizations {
  AppLocalizationsBrx([String locale = 'brx']) : super(locale);

  @override
  String get app_name => 'ব্লুমি';

  @override
  String get nav_home => 'ঘৰ';

  @override
  String get nav_today => 'আজি';

  @override
  String get nav_plan => 'পৰিকল্পনা';

  @override
  String get nav_food => 'খাদ্য';

  @override
  String get nav_food_diary => 'খাদ্য ডায়েৰী';

  @override
  String get nav_workout => 'ৱৰ্কআউট লগ';

  @override
  String get nav_health => 'স্বাস্থ্য';

  @override
  String get nav_profile => 'প্ৰফাইল';

  @override
  String get save => 'সংৰক্ষণ কৰক';

  @override
  String get cancel => 'বাতিল কৰক';

  @override
  String get delete => 'মচি পেলাওক';

  @override
  String get edit => 'সম্পাদনা কৰক';

  @override
  String get done => 'হৈ গ’ল';

  @override
  String get close => 'বন্ধ কৰক';

  @override
  String get back => 'পিছলৈ ঘূৰি আহিল';

  @override
  String get next => 'ইয়াৰ পিছত';

  @override
  String get continue_btn => 'আগবাঢ়ি যাওক';

  @override
  String get confirm => 'নিশ্চিত কৰক';

  @override
  String get search => 'সন্ধান কৰক';

  @override
  String get filter => 'ফিল্টাৰ কৰক';

  @override
  String get all => 'সকলো';

  @override
  String get active => 'সক্ৰিয়';

  @override
  String get today => 'আজি';

  @override
  String get yesterday => 'কালি';

  @override
  String get tomorrow => 'কাইলৈ';

  @override
  String get add => 'যোগ কৰক';

  @override
  String get remove => 'আঁতৰাই পেলাওক';

  @override
  String get refresh => 'সতেজ কৰক';

  @override
  String get retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get error => 'ত্ৰুটি';

  @override
  String get success => 'সফলতা';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get no_data => 'কোনো তথ্য উপলব্ধ নহয়';

  @override
  String get offline => 'অফলাইন মোড';

  @override
  String get offline_sub => 'পৰিবৰ্তনসমূহ এবাৰ পুনৰ সংযোগ কৰাৰ পিছত সিঙ্ক হ\'ব';

  @override
  String get undo => 'পূৰ্বৱৰ্তী অৱস্থালৈ ঘূৰাই আনিব';

  @override
  String get portion => 'অংশ';

  @override
  String get quantity => 'পৰিমাণ';

  @override
  String get unit => 'ইউনিট';

  @override
  String get clear => 'স্পষ্ট';

  @override
  String get select => 'নিৰ্বাচন কৰক';

  @override
  String get apply => 'আবেদন কৰক';

  @override
  String get reset => 'ৰিছেট কৰক';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get yes => 'হয়';

  @override
  String get no => 'নহয়';

  @override
  String get optional => 'ঐচ্ছিক';

  @override
  String get calories => 'কেলৰি';

  @override
  String get protein => 'প্ৰটিন';

  @override
  String get carbs => 'কাৰ্ব';

  @override
  String get fat => 'চৰ্বি';

  @override
  String get fiber => 'আঁহ';

  @override
  String get water => 'পানী';

  @override
  String get steps => 'পদক্ষেপ';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'ছ';

  @override
  String get milliliters => 'মি.লি';

  @override
  String get kilograms => 'কে.জি';

  @override
  String get pounds => 'পাউণ্ড';

  @override
  String get centimeters => 'চে.মি';

  @override
  String get inches => 'ইন';

  @override
  String get bpm => 'বিপিএম';

  @override
  String get hours => 'ঘন্টা';

  @override
  String get minutes => 'মিনিট';

  @override
  String get serving => 'সেৱা আগবঢ়োৱা';

  @override
  String get servings => 'পৰিবেশন কৰা';

  @override
  String get serving_size => 'পৰিবেশনৰ আকাৰ';

  @override
  String get per_100g => 'প্ৰতি ১০০গ্ৰামত';

  @override
  String get india => 'ভাৰত';

  @override
  String get asia => 'এছিয়া';

  @override
  String get europe => 'ইউৰোপ';

  @override
  String get middle_east => 'মধ্যপ্ৰাচ্য';

  @override
  String get africa => 'আফ্ৰিকা';

  @override
  String get americas => 'আমেৰিকা';

  @override
  String get home_title => 'ঘৰ';

  @override
  String get home_greeting_morning => 'গুড মৰ্নিং';

  @override
  String get home_greeting_afternoon => 'শুভ দুপৰীয়া';

  @override
  String get home_greeting_evening => 'শুভ সন্ধিয়া';

  @override
  String get home_streak_title => 'ফুলৰ ৰেখা';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিনৰ ধাৰাবাহিকতা',
      one: '১ দিনৰ ধাৰাবাহিকতা',
      zero: '০ দিনৰ ধাৰাবাহিকতা',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'জ্বলি গ’ল';

  @override
  String get home_calories_budget => 'কেলৰি বাজেট';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal কিলোকেলৰি বাকী আছে';
  }

  @override
  String get home_water_title => 'দৈনিক হাইড্ৰেচন';

  @override
  String home_water_goal(Object current, Object target) {
    return '__পি এইচ_০__ / __পি এইচ_১__ মি.লি';
  }

  @override
  String get home_steps_title => 'খোজবোৰ খোজ কাঢ়িলে';

  @override
  String get home_quick_actions => 'দ্ৰুত কাৰ্য্যসমূহ';

  @override
  String get home_log_meal => 'লগ খাদ্য';

  @override
  String get home_log_water => 'লগ পানী';

  @override
  String get home_log_workout => 'লগ ৱৰ্কআউট';

  @override
  String get home_log_weight => 'লগ ওজন';

  @override
  String get home_insights_title => 'আজিৰ অন্তৰ্দৃষ্টি';

  @override
  String get home_quote =>
      'সৰু সৰু সুস্থ পছন্দই ফুলি উঠা ৰূপান্তৰৰ সৃষ্টি কৰে।';

  @override
  String get home_ai_coach_tip => 'ব্লুমি এ আই প্ৰশিক্ষক';

  @override
  String get home_surroundings => 'চৌপাশ আৰু বায়ু';

  @override
  String get home_notifications => 'জাননীসমূহ';

  @override
  String get home_daily_score => 'দৈনিক সুস্থতা স্ক\'ৰ';

  @override
  String get home_view_all => 'সকলো চাওক';

  @override
  String get food_diary_title => 'খাদ্য ডায়েৰী';

  @override
  String get food_breakfast => 'ব্ৰেকফাষ্ট';

  @override
  String get food_lunch => 'দুপৰীয়াৰ আহাৰ';

  @override
  String get food_dinner => 'ৰাতিৰ আহাৰ';

  @override
  String get food_snacks => 'জলপান';

  @override
  String get food_add_food => 'খাদ্য যোগ কৰক';

  @override
  String get food_edit_food => 'খাদ্য সম্পাদনা কৰক';

  @override
  String get food_add_breakfast => 'ব্ৰেকফাষ্ট যোগ কৰক';

  @override
  String get food_add_lunch => 'দুপৰীয়াৰ আহাৰ যোগ কৰক';

  @override
  String get food_add_dinner => 'ৰাতিৰ আহাৰ যোগ কৰক';

  @override
  String get food_add_snack => 'Snack যোগ কৰক';

  @override
  String get food_total_calories => 'মুঠ কেলৰি';

  @override
  String get food_empty_meal =>
      'এই খাদ্যৰ বাবে এতিয়াও কোনো খাদ্য লগ কৰা হোৱা নাই';

  @override
  String get food_empty_diary => 'এই দিনটোৰ বাবে কোনো খাদ্য লগ কৰা হোৱা নাই';

  @override
  String get food_log_first_meal =>
      'আপোনাৰ প্ৰথম সুস্বাদু খাদ্য লগ কৰিবলৈ + টেপ কৰক';

  @override
  String get food_quick_add => 'দ্ৰুত যোগ কৰক';

  @override
  String get food_search_hint => 'ডিশ, ফল, দালি, রোটি অনুসন্ধান...';

  @override
  String get food_custom_recipe => 'কাষ্টম খাদ্য আৰু ৰেচিপি';

  @override
  String get food_scan_barcode => 'বাৰকোড স্কেন কৰক';

  @override
  String get food_camera_scan => 'এ আই ফুড স্ক্যানাৰ';

  @override
  String get food_recent => 'শেহতীয়া খাদ্য';

  @override
  String get food_favourites => 'প্ৰিয়';

  @override
  String get food_macro_summary => 'মেক্ৰ’নিউট্ৰিয়েণ্টৰ বিভাজন';

  @override
  String get food_delete_meal_confirm =>
      'আপুনি নিশ্চিতভাৱে এই বস্তুটো আঁতৰাব বিচাৰেনে?';

  @override
  String get food_item_deleted => 'খাদ্য সামগ্ৰী আঁতৰাই দিয়া হৈছে';

  @override
  String get food_remaining => 'বাকী থকা';

  @override
  String get food_consumed => 'ভক্ষণ কৰা হৈছে';

  @override
  String food_of_target(Object target) {
    return '$target কিলোকেলৰিৰ';
  }

  @override
  String get foodSearch_title => 'খাদ্য সন্ধান কৰক';

  @override
  String get foodSearch_scan_barcode => 'বাৰকোড স্কেন কৰক';

  @override
  String get foodSearch_take_photo => 'স্নেপ ফুড ফটো';

  @override
  String get foodSearch_custom_food => 'কাষ্টম ফুড তৈয়াৰ কৰক';

  @override
  String get foodSearch_recent_searches => 'শেহতীয়া সন্ধানসমূহ';

  @override
  String get foodSearch_popular => 'জনপ্ৰিয় খাদ্য';

  @override
  String get foodSearch_no_results =>
      'আপোনাৰ সন্ধানৰ সৈতে মিল থকা কোনো খাদ্য নাই';

  @override
  String get barcode_title => 'বাৰকোড স্ক্যানাৰ';

  @override
  String get barcode_align => 'কেমেৰাৰ ফ্ৰেমৰ ভিতৰত বাৰক’ড প্ৰান্তিককৰণ কৰক';

  @override
  String get barcode_not_found => 'ডাটাবেছত প্ৰডাক্ট পোৱা নগ\'ল';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro ৰ সৈতে বাৰকোড স্কেনিং উপলব্ধ';

  @override
  String get camera_title => 'এ আই ফুড স্ক্যানাৰ';

  @override
  String get camera_tap_hint => 'আপোনাৰ খাদ্যৰ স্পষ্ট ফটো এখন লওক';

  @override
  String get camera_analysing => 'খাদ্য প্লেট বিশ্লেষণ...';

  @override
  String get camera_detected => 'ধৰা পৰা বস্তু';

  @override
  String get camera_flash => 'ফ্লেচ টগল কৰক';

  @override
  String get camera_retake => 'ফটো পুনৰ লওক';

  @override
  String get camera_confirm_food => 'বস্তু নিশ্চিত কৰক';

  @override
  String get customFood_title => 'কাষ্টম খাদ্য আৰু ৰেচিপি';

  @override
  String get customFood_name_hint => 'খাদ্য বা উপাদানৰ নাম';

  @override
  String get customFood_calories_hint => 'কেলৰি (kcal)';

  @override
  String get customFood_protein_hint => 'প্ৰটিন (ছ)';

  @override
  String get customFood_carbs_hint => 'কাৰ্ব (g)';

  @override
  String get customFood_fat_hint => 'চৰ্বি (ছ)';

  @override
  String get customFood_save => 'ৰেচিপি সংৰক্ষণ কৰক';

  @override
  String get water_tracker_title => 'পানী ট্ৰেকাৰ';

  @override
  String get water_daily_target => 'দৈনিক হাইড্ৰেচনৰ লক্ষ্য';

  @override
  String get water_logged_today => 'আজি লগ কৰা হৈছে';

  @override
  String get water_add_glass => '+২৫০ মিলিলিটাৰ গ্লাছ';

  @override
  String get water_add_bottle => '+৫০০ মিলিলিটাৰ বটল';

  @override
  String get water_custom_amount => 'কাষ্টম পৰিমাণ';

  @override
  String get water_reminder_tip =>
      'স্থিৰ শক্তিৰ বাবে গোটেই দিনটো নিয়মিতভাৱে পানী খাব লাগে।';

  @override
  String water_logged_toast(Object amount) {
    return 'লগ কৰিলে $amount মিলিলিটাৰ পানী 💧';
  }

  @override
  String get workout_title => 'ৱৰ্কআউট লগ';

  @override
  String get workout_add_exercise => 'Workout যোগ কৰক';

  @override
  String get workout_cardio => 'কাৰ্ডিঅ\'';

  @override
  String get workout_strength => 'শক্তি';

  @override
  String get workout_yoga => 'যোগ আৰু নমনীয়তা';

  @override
  String get workout_duration => 'সময়সীমা';

  @override
  String get workout_intensity => 'তীব্ৰতা';

  @override
  String get workout_calories_burned => 'কেলৰি জ্বলি যোৱা';

  @override
  String get workout_empty => 'আজি কোনো ৱৰ্কআউট লগ কৰা হোৱা নাই';

  @override
  String get workout_save_success => 'ৱৰ্কআউট সফলতাৰে ৰক্ষা কৰা হৈছে!';

  @override
  String get workout_type => 'ৱৰ্কআউটৰ ধৰণ';

  @override
  String get workout_notes => 'টোকা আৰু প্ৰতিফলন';

  @override
  String get health_overview_title => 'স্বাস্থ্য আৰু জীৱনদায়ক';

  @override
  String get health_heart_rate => 'হৃদস্পন্দন';

  @override
  String get health_blood_oxygen => 'তেজৰ অক্সিজেন (SpO2)';

  @override
  String get health_blood_pressure => 'ৰক্তচাপ';

  @override
  String get health_blood_glucose => 'তেজৰ গ্লুক’জ';

  @override
  String get health_body_temperature => 'শৰীৰৰ উষ্ণতা';

  @override
  String get health_sleep_tracking => 'টোপনি অনুসৰণ কৰা';

  @override
  String get health_weight_tracking => 'ওজন আৰু শৰীৰৰ গঠন';

  @override
  String get health_waist_hip => 'কঁকালৰ পৰা নিতম্বৰ অনুপাত';

  @override
  String get health_devices_hub => 'ডিভাইচ আৰু স্মাৰ্টৱাচ হাব';

  @override
  String get health_sync_now => 'স্বাস্থ্য তথ্য ছিঙ্ক কৰক';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'শেষবাৰৰ বাবে সিঙ্ক কৰা হৈছে: $time';
  }

  @override
  String get health_manual_entry => 'মেনুৱেল স্বাস্থ্য প্ৰৱেশ';

  @override
  String get health_metric_detail => 'মেট্ৰিক বিৱৰণ';

  @override
  String get health_connected_sensors => 'সংযুক্ত স্বাস্থ্য চেন্সৰ';

  @override
  String get plan_title => 'দৈনিক পৰিকল্পনা';

  @override
  String get plan_weekly_title => 'সাপ্তাহিক সুস্থতা পৰিকল্পনা';

  @override
  String get plan_calorie_target => 'কেলৰি লক্ষ্য';

  @override
  String get plan_water_target => 'হাইড্ৰেচন লক্ষ্য';

  @override
  String get plan_step_target => 'ষ্টেপ টাৰ্গেট';

  @override
  String get plan_sleep_target => 'টোপনিৰ লক্ষ্য';

  @override
  String get plan_meal_suggestions => 'খাদ্যৰ পৰামৰ্শ';

  @override
  String get plan_healthy_habits => 'স্বাস্থ্যকৰ অভ্যাস আৰু টিপছ';

  @override
  String get plan_coach_advice => 'Bloomi AI প্ৰশিক্ষকৰ পৰামৰ্শ';

  @override
  String get plan_generated_title => 'ব্যক্তিগতকৃত দৈনিক সূচী';

  @override
  String get profile_title => 'প্ৰফাইল';

  @override
  String get profile_edit => 'প্ৰফাইল সম্পাদনা কৰক';

  @override
  String get profile_name => 'নাম';

  @override
  String get profile_age => 'বয়স';

  @override
  String get profile_gender => 'লিংগ';

  @override
  String get profile_height => 'উচ্চতা';

  @override
  String get profile_weight => 'ওজন';

  @override
  String get profile_goal => 'প্ৰাথমিক লক্ষ্য';

  @override
  String get profile_activity_level => 'কাৰ্য্যকলাপৰ স্তৰ';

  @override
  String get profile_stats => 'মোৰ সুস্থতাৰ পৰিসংখ্যা';

  @override
  String get profile_saved => 'প্ৰফাইল সফলতাৰে আপডেট কৰা হৈছে';

  @override
  String get profile_bmi => 'বডি মাছ ইনডেক্স (BMI)';

  @override
  String get profile_membership => 'সদস্যপদ';

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get preferences_habits => 'পছন্দ আৰু অভ্যাস';

  @override
  String get appearance_theme => 'চেহেৰা আৰু বিষয়বস্তু';

  @override
  String get appearance_theme_sub =>
      'ডাৰ্ক, লাইট, চিষ্টেম মোড আৰু এপ পটভূমি বিকল্পসমূহ';

  @override
  String get permissions => 'অনুমতি আৰু চিস্টেম অভিগম';

  @override
  String get permissions_sub =>
      'হেল্থ কানেক্ট, ষ্টেপ চেন্সৰ, জিপিএছ, জাননী আৰু কেমেৰা';

  @override
  String get reminders_notifications => 'সোঁৱৰাই দিয়া আৰু জাননী';

  @override
  String get reminders_sub =>
      'খাদ্যৰ সময়, পানী, ওজন চেক-ইন আৰু শুই উঠাৰ সময়ৰ সোঁৱৰাই দিয়া';

  @override
  String get units_of_measurement => 'জোখৰ একক';

  @override
  String get units_sub =>
      'মেট্ৰিক (কিলোগ্ৰাম, চে.মি., মিলিলিটাৰ, কিলোমিটাৰ) বা ইম্পেৰিয়েল (পাউণ্ড, ফুট/ইঞ্চি, ফ্ল\'জ)';

  @override
  String get app_language => 'এপ ভাষা';

  @override
  String get language_sub =>
      'ইংৰাজী, हिन्दী (হিন্দী), হিংলিছ & ১৯৫+ বিশ্বব্যাপী ভাষা';

  @override
  String get home_screen_widgets => 'হোম স্ক্ৰীণ ৱিজেটসমূহ';

  @override
  String get widgets_sub =>
      'লাইভ এণ্ড্ৰইড ৱিজেট: হাব, ষ্টেপ, পানী, পুষ্টি আৰু মাস্কট';

  @override
  String get wear_os_watch_app => 'OS Watch App পিন্ধক';

  @override
  String get wear_os_sub => 'স্মাৰ্টৱাচৰ সংগী, টাইল, জটিলতা আৰু লাইভ ভিটাল';

  @override
  String get goals_wellness => 'লক্ষ্য আৰু সুস্থতাৰ অন্তৰ্দৃষ্টি';

  @override
  String get nutrition_targets => 'পুষ্টিৰ লক্ষ্য আৰু বৃহৎ বিভাজন';

  @override
  String get nutrition_targets_sub =>
      'কেলৰিৰ লক্ষ্য, প্ৰটিন, কাৰ্ব, চৰ্বি আৰু পানীৰ লক্ষ্য';

  @override
  String get weekly_recap => 'সাপ্তাহিক সুস্থতা পুনৰাবৃত্তি';

  @override
  String get weekly_recap_sub =>
      '৭ দিনৰ কেলৰিৰ গড়, মেক্ৰ’ ৰেচিঅ’ আৰু শ্ৰেষ্ঠ দিন';

  @override
  String get streaks_milestones => 'ষ্ট্ৰিক আৰু মাইলৰ খুঁটি';

  @override
  String get streaks_sub => 'সক্ৰিয় ফুলৰ ৰেখা, বেজ আৰু কৃতিত্ব';

  @override
  String get connected_devices => 'সংযুক্ত ডিভাইচ আৰু ইক\'চিষ্টেম';

  @override
  String get devices_hub => 'ডিভাইচ আৰু স্মাৰ্টৱাচ হাব';

  @override
  String get devices_hub_sub =>
      'হেল্থ কানেক্ট, গেলাক্সি ৱাচ, পিক্সেল ৱাচ, গাৰ্মিন';

  @override
  String get surroundings_weather => 'চৌপাশ আৰু বতৰ';

  @override
  String get surroundings_sub =>
      'বায়ুৰ গুণাগুণ (AQI), UV সূচকাংক আৰু বতৰৰ হাইড্ৰেচনৰ টিপছ';

  @override
  String get bloomi_pro => 'Bloomi Pro চাবস্ক্ৰিপচন';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 টা হোম স্ক্ৰীণ ৱিজেট আৰু ভিটালছ ট্ৰেকিং';

  @override
  String get about_security => 'ABOUT & SECURITY ৰ বিষয়ে';

  @override
  String get about_bloomi => 'ব্লুমিৰ বিষয়ে';

  @override
  String get about_bloomi_sub => 'বিল্ড স্পেচিফিকেশন, সংস্কৰণ, এট্ৰিবিউচন';

  @override
  String get privacy_policy => 'গোপনীয়তা নীতি';

  @override
  String get privacy_policy_sub => 'অফলাইন-প্ৰথম, অন-ডিভাইচ ডাটা আৰ্কিটেকচাৰ';

  @override
  String get terms_conditions => 'চৰ্ত আৰু নিয়ম';

  @override
  String get terms_conditions_sub => 'সেৱাৰ চৰ্ত আৰু সুস্থতাৰ নিৰ্দেশনা';

  @override
  String get delete_account => 'একাউণ্ট আৰু ডাটা মচি পেলাওক';

  @override
  String get delete_account_sub =>
      'স্থানীয় SQLite তথ্য আৰু ক্লাউড বেকআপসমূহ অপ্ৰত্যাৱৰ্তনীয়ভাৱে মচি পেলাওক';

  @override
  String get healthy_habits => 'কোমল, স্থায়ী সুস্থতাৰ অভ্যাস গঢ়ি তোলক';

  @override
  String get all_logs => 'মোৰ ট্ৰেক কৰা ডাটা আৰু লগসমূহ';

  @override
  String get search_language => 'ভাষা বা স্থানীয় লিপি দ্বারা অনুসন্ধান...';

  @override
  String get languages_available => 'উপলব্ধ ভাষাসমূহ';

  @override
  String get no_matching_languages => 'কোনো মিল থকা ভাষা পোৱা নগ\'ল';

  @override
  String get try_searching =>
      'স্থানীয় লিপি বা ইংৰাজী বানানৰ দ্বাৰা সন্ধান কৰিবলৈ চেষ্টা কৰক';

  @override
  String get partially_translated => 'আংশিকভাৱে অনুবাদ কৰা হৈছে';

  @override
  String get complete_translation => 'সম্পূৰ্ণ';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ভাষা $name ( $nativeName ) লে সংহতি কৰা হৈছে।';
  }

  @override
  String get surroundings_title => 'চৌপাশ আৰু পৰিৱেশ';

  @override
  String get surroundings_aqi => 'বায়ুৰ গুণাগুণ সূচকাংক';

  @override
  String get surroundings_uv => 'UV সূচকাংক';

  @override
  String get surroundings_temp => 'তাপমাত্ৰা';

  @override
  String get surroundings_humidity => 'আৰ্দ্ৰতা';

  @override
  String get surroundings_hydration_advice =>
      'বৰ্তমানৰ বতৰত ভালদৰে জলসিঞ্চিত হৈ থাকক।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'খাদ্য সন্ধান কৰক';

  @override
  String get food_quick_barcode => 'স্কেন বাৰকোড 👑';

  @override
  String get food_quick_water => 'পানী দিব';

  @override
  String get food_quick_custom => 'কাষ্টম খাদ্য';

  @override
  String get surroundings_good => 'ভাল';

  @override
  String get surroundings_moderate => 'মধ্যমীয়া';

  @override
  String get surroundings_unhealthy => 'অস্বাস্থ্যকৰ';

  @override
  String get notifications_title => 'জাননী আৰু সতৰ্কবাণী';

  @override
  String get notifications_empty => 'কোনো নতুন জাননী নাই';

  @override
  String get notifications_mark_read => 'সকলোকে পঢ়া বুলি চিহ্নিত কৰক';

  @override
  String get notifications_clear => 'সকলো পৰিষ্কাৰ কৰক';

  @override
  String get reminders => 'সোঁৱৰাই দিয়া ছেটিংছ';

  @override
  String get notifications => 'জাননীসমূহ';

  @override
  String get reminders_breakfast_title => 'ব্ৰেকফাষ্টৰ সোঁৱৰাই দিয়া 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'শুভ ৰাতিপুৱা! $time ত পুষ্টিকৰ ব্ৰেকফাষ্টৰ সময়।';
  }

  @override
  String get reminders_lunch_title => 'দুপৰীয়াৰ আহাৰ সোঁৱৰাই দিয়া 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'থমকি ৰওক আৰু $time ত সুষম, মননশীল দুপৰীয়াৰ আহাৰ উপভোগ কৰক।';
  }

  @override
  String get reminders_dinner_title => 'ৰাতিৰ আহাৰ সোঁৱৰাই দিয়া 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time ত এটা লঘু, সন্তুষ্টিদায়ক ৰাতিৰ আহাৰ গ্ৰহণৰ সময়।';
  }

  @override
  String get reminders_water_title => 'হাইড্ৰেচন নুজ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'এগিলাচ সতেজ পানী খোৱাৰ সময়! ( __পি এইচ_০__ )';
  }

  @override
  String get reminders_weight_title => 'সাপ্তাহিক ওজন ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) ত আপোনাৰ সাপ্তাহিক শৰীৰৰ মেট্ৰিক্স অনুসৰণ কৰক।';
  }

  @override
  String get reminders_sleep_title => 'শুই উঠাৰ সময়ত বতাহ-ডাউন 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'আৰাম কৰক আৰু জিৰণি লোৱা টোপনিৰ বাবে প্ৰস্তুত হওক ( $time ).';
  }

  @override
  String get onboard_welcome => 'ব্লুমীলৈ আপোনাক স্বাগতম';

  @override
  String get onboard_sub =>
      'আপোনাৰ বন্ধুত্বপূৰ্ণ, অফলাইন-প্ৰথম স্বাস্থ্য আৰু পুষ্টিৰ সংগী।';

  @override
  String get onboard_get_started => 'আৰম্ভ কৰক';

  @override
  String get onboard_sign_in => 'চাইন ইন কৰক';

  @override
  String get onboard_skip => 'এৰি দিয়ক';

  @override
  String get onboard_choose_goal => 'আপোনাৰ প্ৰাথমিক সুস্থতাৰ লক্ষ্য কি?';

  @override
  String get onboard_goal_weight_loss => 'কোমল ওজন হ্ৰাস';

  @override
  String get onboard_goal_muscle => 'পেশীৰ লাভ আৰু শক্তি';

  @override
  String get onboard_goal_energy => 'দৈনিক শক্তি আৰু সজীৱতা';

  @override
  String get onboard_goal_habits => 'স্বাস্থ্যসন্মত মননশীল খাদ্যাভ্যাস';

  @override
  String get onboard_about_you => 'আমাক নিজৰ বিষয়ে কওক';

  @override
  String get onboard_lifestyle => 'আপোনাৰ দৈনন্দিন ৰুটিন';

  @override
  String get onboard_permissions_title => 'অনুমতি আৰু চিস্টেম অভিগম';

  @override
  String get onboard_permissions_sub =>
      'ছিংক পদক্ষেপসমূহ, ৱৰ্কআউটসমূহ, আৰু সোঁৱৰাই দিয়াসমূহলৈ অভিগম প্ৰদান কৰক।';

  @override
  String get onboard_plan_ready_title => 'আপোনাৰ কাষ্টম প্লেন সাজু!';

  @override
  String get onboard_plan_ready_sub =>
      'আমি কেৱল আপোনাৰ বাবে এটা কোমল, ব্যক্তিগতকৃত পুষ্টি আৰু সুস্থতাৰ ৰোডমেপ তৈয়াৰ কৰিলোঁ।';

  @override
  String get onboard_enter_bloomi => 'ব্লুমিত প্ৰৱেশ কৰক';

  @override
  String get insights_weekly_report => 'সাপ্তাহিক সুস্থতা পুনৰাবৃত্তি';

  @override
  String insights_best_day(Object day) {
    return 'শ্ৰেষ্ঠ সামঞ্জস্যতা দিৱস: $day';
  }

  @override
  String get insights_streaks_badges => 'ষ্ট্ৰিক আৰু মাইলৰ খুঁটি';

  @override
  String insights_unlocked_on(Object date) {
    return '$date ত আনলক কৰা হৈছে';
  }

  @override
  String get insights_keep_going => 'কল্পনাতীত অগ্ৰগতি অব্যাহত ৰাখক!';

  @override
  String get widgets_title => 'হোম স্ক্ৰীণ ৱিজেটসমূহ';

  @override
  String widgets_active_count(Object count) {
    return 'সক্ৰিয় ৱিজেটসমূহ: $count';
  }

  @override
  String get widgets_hub_title => 'ব্লুমি ৱেলনেছ হাব';

  @override
  String get widgets_steps_title => 'ষ্টেপছ আৰু এক্টিভ ৰিং';

  @override
  String get widgets_water_title => 'হাইড্ৰেচন দ্ৰুত লগ';

  @override
  String get widgets_mascot_title => 'ব্লুমি মাস্কট কম্পেনিয়ন';

  @override
  String get wear_os_title => 'অ’ এছ স্মাৰ্টৱাচ পিন্ধক';

  @override
  String get wear_os_connected => 'Watch ৰ সৈতে সংযুক্ত';

  @override
  String get wear_os_sync => 'ঘড়ীৰ তথ্য ছিঙ্ক কৰক';

  @override
  String get theme_title => 'চেহেৰা আৰু বিষয়বস্তু';

  @override
  String get theme_mode => 'থিম মোড';

  @override
  String get theme_light => 'পোহৰ';

  @override
  String get theme_dark => 'আন্ধাৰ';

  @override
  String get theme_system => 'চিস্টেম অবিকল্পিত';

  @override
  String get theme_background_palette => 'পটভূমি পেলেট';

  @override
  String get units_title => 'জোখৰ একক';

  @override
  String get units_metric => 'মেট্ৰিক (কিলোগ্ৰাম, চে.মি., মিলিলিটাৰ)';

  @override
  String get units_imperial => 'ইম্পেৰিয়েল (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'ডেচব\'ৰ্ড লোড কৰিব পৰা নাই';

  @override
  String get home_health_permission_req => 'স্বাস্থ্য সংযোগৰ অনুমতিৰ প্ৰয়োজন';

  @override
  String get home_health_permission_desc =>
      'Bloomi ৰ বাবে প্ৰকৃত পদক্ষেপ, হৃদস্পন্দন, আৰু বাস্তৱ সময়ত মোবাইল হোম ৱিজেটসমূহ ছিঙ্ক কৰিবলৈ Health Connect অনুমতিৰ প্ৰয়োজন।';

  @override
  String get home_allow_health => 'স্বাস্থ্য সংযোগৰ অনুমতি দিয়ক';

  @override
  String get home_ready_mindful_day => 'মননশীল দিনৰ বাবে সাজুনে? ✨';

  @override
  String get home_quick_add => 'দ্ৰুত যোগ কৰক';

  @override
  String get home_live_gps => 'লাইভ জিপিএছ';

  @override
  String get home_calories_remaining_label => 'বাকী থকা কেলৰি';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'খোৱা: $consumed / $target কিলোকেলৰি';
  }

  @override
  String get home_tap_water_tracker => 'পানী ট্ৰেকাৰ 💧 ৰ বাবে টেপ কৰক';

  @override
  String get home_water_goal_reached => 'দৈনিক লক্ষ্যত উপনীত হ\'ল 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml দৈনিক লক্ষ্যলৈ';
  }

  @override
  String get home_details => 'সবিশেষ';

  @override
  String get home_upgrade_plan_desc =>
      'ব্যক্তিগতকৃত দৈনিক লক্ষ্য আৰু AI পৰিকল্পনা আনলক কৰিবলৈ উন্নীত কৰক';

  @override
  String get home_unlock => 'আনলক 👑';

  @override
  String get home_quick_log_hint => 'দ্ৰুতভাৱে এটা সুস্থতা প্ৰৱেশ ৰেকৰ্ড কৰক';

  @override
  String get food_serving_size => 'পৰিবেশনৰ আকাৰ';

  @override
  String get food_serving_grams => 'পৰিবেশন কৰা (ছ)';

  @override
  String get food_number_servings => 'পৰিবেশনৰ সংখ্যা';

  @override
  String get food_calories_per_serving => 'প্ৰতিটো পৰিবেশনত কেলৰি';

  @override
  String get food_recipe_ingredients => 'উপাদান';

  @override
  String get food_recipe_add_ingredient => 'উপাদান যোগ কৰক';

  @override
  String get food_recipe_directions => 'নিৰ্দেশনা আৰু টোকা';

  @override
  String get food_recipe_total => 'মুঠ ৰেচিপি পুষ্টি';

  @override
  String get food_recipe_per_serving => 'প্ৰতি পৰিবেশন পুষ্টি';

  @override
  String get food_recipe_saved_toast => 'কাষ্টম খাদ্য সফলতাৰে সঞ্চয়!';

  @override
  String get food_barcode_found => 'প্ৰডাক্ট পোৱা গৈছে!';

  @override
  String get food_barcode_not_found_desc =>
      'আমি এই বাৰক\'ডটো মুকলি ডাটাবেছত বিচাৰি নাপালোঁ। কাষ্টম খাদ্য হিচাপে যোগ কৰিব পাৰে।';

  @override
  String get food_add_custom_btn => 'কাষ্টম খাদ্য যোগ কৰক';

  @override
  String get food_scan_again => 'আকৌ স্কেন কৰক';

  @override
  String get food_review_items => 'ধৰা পৰা খাদ্যসমূহ পৰ্যালোচনা কৰক';

  @override
  String get food_review_hint =>
      'পৰিমাণ সামঞ্জস্য কৰক বা কোনো অচিনাক্ত বস্তু আঁতৰাই পেলাওক';

  @override
  String get food_log_selected => 'নিৰ্বাচিত খাদ্যসমূহ লগ কৰক';

  @override
  String get food_favourites_title => 'প্ৰিয় খাদ্য';

  @override
  String get food_recent_title => 'শেহতীয়া খাদ্য';

  @override
  String get food_no_favourites =>
      'এতিয়াও কোনো প্ৰিয় খাদ্য নাই। ইয়াত সঞ্চয় কৰিবলৈ যিকোনো খাদ্যৰ ওপৰত হৃদয় টেপ কৰক।';

  @override
  String get food_no_recents => 'শেহতীয়াকৈ লগ কৰা কোনো খাদ্য পোৱা নগ’ল।';

  @override
  String get food_nutrition_details_title => 'দৈনিক পুষ্টিৰ বিৱৰণ';

  @override
  String get food_macro_protein_label => 'প্ৰটিনৰ বিভাজন';

  @override
  String get food_macro_carbs_label => 'কাৰ্বছ ব্ৰেকডাউন';

  @override
  String get food_macro_fat_label => 'ফেট ব্ৰেকডাউন';

  @override
  String get food_macro_fiber_label => 'ফাইবাৰ ব্ৰেকডাউন';

  @override
  String get food_daily_target_comparison => 'লক্ষ্য তুলনা';

  @override
  String food_target_label(Object target) {
    return 'লক্ষ্য: $target';
  }

  @override
  String get food_edit_entry => 'ডায়েৰী প্ৰৱেশ সম্পাদনা কৰক';

  @override
  String get food_delete_entry => 'প্ৰৱেশ মচি পেলাওক';

  @override
  String food_grams_short(Object grams) {
    return '__পি এইচ_০__ ছ';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal কিলোকেলৰি';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ৰ $target মি.লি';
  }

  @override
  String get water_intake_history => 'আজিৰ পানীৰ লগ';

  @override
  String get water_no_logs_today =>
      'আজিও কোনো পানী লগোৱা হোৱা নাই। হাইড্ৰেট কৰক আৰু এটা দ্ৰুত যোগ বুটাম টেপ কৰক!';

  @override
  String get water_adjust_goal => 'দৈনিক লক্ষ্য সামঞ্জস্য কৰক';

  @override
  String get health_connect_banner => 'স্বাস্থ্য সংযোগৰ সৈতে সংযুক্ত';

  @override
  String get health_vitals_summary => 'দৈনিক স্বাস্থ্য গুৰুত্বপূৰ্ণ';

  @override
  String get health_latest_heart_rate => 'শেহতীয়া হৃদস্পন্দন';

  @override
  String get health_latest_bp => 'ৰক্তচাপ';

  @override
  String get health_latest_spo2 => 'তেজৰ অক্সিজেন';

  @override
  String get health_latest_glucose => 'তেজৰ গ্লুক’জ';

  @override
  String get health_latest_weight => 'ওজন';

  @override
  String get health_latest_sleep => 'টোপনিৰ সময়সীমা';

  @override
  String get health_add_manual => 'হাতৰ জোখ যোগ কৰক';

  @override
  String get health_history_trends => 'ঐতিহাসিক প্ৰৱণতা';

  @override
  String get health_sync_success => 'স্বাস্থ্যৰ তথ্য সফলতাৰে ছিংক কৰা হ’ল!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ঘন্টা $mins মিনিট';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val কেজি';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm বিপিএম';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '__পি এইচ_০__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '__পি এইচ_০__ / __পি এইচ_১__ মি.মি.এইচ.জি';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val মিলিগ্ৰাম/ডিএল';
  }

  @override
  String get health_devices_title => 'সংযুক্ত ডিভাইচ আৰু পৰিধানযোগ্য';

  @override
  String get health_devices_desc =>
      'যোৰযুক্ত স্মাৰ্টৱাচ, ফিটনেছ ট্ৰেকাৰ, আৰু স্বাস্থ্য চেন্সৰসমূহ পৰিচালনা কৰক।';

  @override
  String get health_workout_editor_title => 'সম্পাদনা ৱৰ্কআউট';

  @override
  String get health_workout_name_label => 'ৱৰ্কআউটৰ নাম';

  @override
  String get health_workout_duration_label => 'সময়সীমা (মিনিট)';

  @override
  String get health_workout_calories_label => 'আনুমানিক কেলৰি (kcal)';

  @override
  String get health_workout_date_label => 'তাৰিখ আৰু সময়';

  @override
  String get plan_daily_wellness_roadmap => 'আপোনাৰ ব্যক্তিগতকৃত ৰোডমেপ';

  @override
  String get plan_morning_routine => 'ৰাতিপুৱাৰ ৰুটিন';

  @override
  String get plan_afternoon_routine => 'মিডডে ৱেলনেছ';

  @override
  String get plan_evening_routine => 'সন্ধিয়াৰ বতাহ-ডাউন';

  @override
  String get plan_coach_badge => 'ব্লুমি এ আই প্ৰশিক্ষক';

  @override
  String get plan_weekly_overview => '৭ দিনীয়া সুস্থতা ফোকাচ';

  @override
  String get plan_targets_title => 'সুস্থতাৰ লক্ষ্য আৰু লক্ষ্য';

  @override
  String get plan_calorie_budget_label => 'দৈনিক কেলৰি বাজেট';

  @override
  String get plan_water_budget_label => 'দৈনিক পানীৰ লক্ষ্য';

  @override
  String get plan_step_budget_label => 'দৈনিক পদক্ষেপৰ লক্ষ্য';

  @override
  String get plan_macro_split_label => 'বৃহৎ পুষ্টিকৰ অনুপাত';

  @override
  String get profile_personal_details => 'ব্যক্তিগত বিৱৰণ';

  @override
  String get profile_body_stats => 'শৰীৰৰ জোখ-মাখ';

  @override
  String get profile_app_preferences => 'পছন্দ আৰু এপ ছেটিংছ';

  @override
  String get profile_edit_name_hint => 'তোমাৰ নাম';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'উচ্চতা ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'ওজন ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'বয়স';

  @override
  String get profile_gender_male => 'পুৰুষ';

  @override
  String get profile_gender_female => 'মহিলা';

  @override
  String get profile_gender_other => 'অন্যান্য / নক\'বলৈ পছন্দ কৰে';

  @override
  String get profile_activity_sedentary =>
      'বহি থকা (সামান্য বা কোনো ব্যায়াম নকৰা)';

  @override
  String get profile_activity_light => 'লঘু সক্ৰিয় (১-৩ দিন/সপ্তাহ)';

  @override
  String get profile_activity_moderate => 'মধ্যমীয়া সক্ৰিয় (৩-৫ দিন/সপ্তাহ)';

  @override
  String get profile_activity_very => 'অতি সক্ৰিয় (৬-৭ দিন/সপ্তাহ)';

  @override
  String get settings_wear_os_header => 'অ\' এছ কম্পেনিয়ন এপ পিন্ধক';

  @override
  String get settings_wear_os_desc =>
      'কেলৰি, পানী, আৰু পদক্ষেপসমূহলৈ এবাৰ চকু ফুৰাবলৈ আপোনাৰ Wear OS ঘড়ীত Bloomi টাইল আৰু জটিলতা সংস্থাপন কৰক।';

  @override
  String get settings_widgets_header => 'ইন্টাৰেক্টিভ এণ্ড্ৰইড উইজেট';

  @override
  String get settings_widgets_desc =>
      'তৎক্ষণাত আপডেইটসমূহৰ বাবে আপোনাৰ ডিভাইচৰ হোম পৰ্দাত বাস্তৱ-সময়ৰ ৱিজেটসমূহ পিন কৰক।';

  @override
  String get settings_about_header => 'ব্লুমিৰ বিষয়ে';

  @override
  String get settings_about_version => 'সংস্কৰণ ১.০.০';

  @override
  String get settings_about_build => '১০০ টা নিৰ্মাণ কৰক';

  @override
  String get settings_about_credits =>
      'মননশীল, সুস্থ জীৱন যাপনৰ বাবে যত্ন লৈ নিৰ্মিত।';

  @override
  String get settings_terms_header => 'চৰ্ত আৰু নিয়মসমূহ';

  @override
  String get settings_privacy_header => 'গোপনীয়তা নীতি';

  @override
  String get settings_delete_header => 'একাউণ্ট আৰু ডাটা মচি পেলাওক';

  @override
  String get settings_delete_warning =>
      'এই কাৰ্য্য বাতিল কৰিব নোৱাৰি। আপোনাৰ সকলো খাদ্য, ৱৰ্কআউট, ভিটাল, আৰু প্ৰফাইল স্থায়ীভাৱে ডিলিট হৈ যাব।';

  @override
  String get settings_delete_confirm_btn => 'স্থায়ীভাৱে মচি পেলাওক';

  @override
  String get onboard_welcome_headline => 'ব্লুমীলৈ আপোনাক স্বাগতম ✨';

  @override
  String get onboard_welcome_tagline =>
      'আপোনাৰ জীৱনৰ চাৰিওফালে ডিজাইন কৰা কোমল, মননশীল সুস্থতা অনুসৰণ।';

  @override
  String get onboard_step_about => 'আপোনাৰ বিষয়ে';

  @override
  String get onboard_step_goals => 'আপোনাৰ লক্ষ্য';

  @override
  String get onboard_step_lifestyle => 'দৈনিক অভ্যাস';

  @override
  String get onboard_step_permissions => 'অনুমতিসমূহ';

  @override
  String get onboard_step_plan => 'সাজু!';

  @override
  String get onboard_health_connect_perm => 'স্বাস্থ্য সংযোগ অভিগম';

  @override
  String get onboard_step_sensors_perm => 'ষ্টেপ কাউণ্টাৰ চেন্সৰ';

  @override
  String get onboard_notif_perm => 'মাইণ্ডফুল ৰিমাইণ্ডাৰ আৰু জাননী';

  @override
  String get onboard_camera_perm => 'কেমেৰা (বাৰকোড আৰু খাদ্য স্ক্যানাৰ)';

  @override
  String get onboard_grant_permissions => 'অনুমতি প্ৰদান কৰক';

  @override
  String get onboard_continue_dashboard => 'ডেচব\'ৰ্ড খোলক';

  @override
  String get notif_channel_hydration_name => 'হাইড্ৰেচন নুজ';

  @override
  String get notif_channel_hydration_desc => 'গোটেই দিনটো কোমল পানীৰ সোঁৱৰণী';

  @override
  String get notif_channel_nutrition_name => 'খাদ্য আৰু পুষ্টিৰ সোঁৱৰাই দিয়া';

  @override
  String get notif_channel_nutrition_desc =>
      'ব্ৰেকফাষ্ট, লাঞ্চ, আৰু ডিনাৰৰ সোঁৱৰাই দিয়া সতৰ্কবাণী';

  @override
  String get notif_channel_steps_name => 'ষ্টেপ মাইলৰ খুঁটি';

  @override
  String get notif_channel_steps_desc =>
      'দৈনিক ষ্টেপ টাৰ্গেটত উপনীত হ’লে উদযাপন';

  @override
  String get notif_channel_vitals_name => 'স্বাস্থ্য আৰু জীৱনদায়িনী পৰীক্ষা';

  @override
  String get notif_channel_vitals_desc =>
      'ওজন আৰু শুই উঠাৰ আগতে বতাহ-ডাউন সোঁৱৰাই দিয়া';

  @override
  String get notif_action_log_water => '💧 লগ +২৫০মিলিলিটাৰ';

  @override
  String get notif_action_snooze => 'স্নুজ ১৫মিটাৰ';

  @override
  String get notif_action_log_meal => '🥗 লগ খাদ্য';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
