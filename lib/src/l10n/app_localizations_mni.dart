// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Manipuri (`mni`).
class AppLocalizationsMni extends AppLocalizations {
  AppLocalizationsMni([String locale = 'mni']) : super(locale);

  @override
  String get app_name => 'ব্লুমি';

  @override
  String get nav_home => 'বাড়ি';

  @override
  String get nav_today => 'আজ';

  @override
  String get nav_plan => 'পরিকল্পনা';

  @override
  String get nav_food => 'খাদ্য';

  @override
  String get nav_food_diary => 'খাদ্য ডায়েরি';

  @override
  String get nav_workout => 'ওয়ার্কআউট লগ';

  @override
  String get nav_health => 'স্বাস্থ্য';

  @override
  String get nav_profile => 'প্রোফাইল';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String get cancel => 'বাতিল করুন';

  @override
  String get delete => 'মুছুন';

  @override
  String get edit => 'সম্পাদনা করুন';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get close => 'বন্ধ';

  @override
  String get back => 'ফিরে';

  @override
  String get next => 'পরবর্তী';

  @override
  String get continue_btn => 'চালিয়ে যান';

  @override
  String get confirm => 'নিশ্চিত করুন';

  @override
  String get search => 'অনুসন্ধান করুন';

  @override
  String get filter => 'ফিল্টার';

  @override
  String get all => 'সব';

  @override
  String get active => 'সক্রিয়';

  @override
  String get today => 'আজ';

  @override
  String get yesterday => 'গতকাল';

  @override
  String get tomorrow => 'কাল';

  @override
  String get add => 'যোগ করুন';

  @override
  String get remove => 'সরান';

  @override
  String get refresh => 'রিফ্রেশ';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get error => 'ত্রুটি';

  @override
  String get success => 'সফলতা';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get no_data => 'কোন তথ্য উপলব্ধ নেই';

  @override
  String get offline => 'অফলাইন মোড';

  @override
  String get offline_sub =>
      'একবার পুনরায় সংযোগ করা হলে পরিবর্তনগুলি সিঙ্ক হবে৷';

  @override
  String get undo => 'পূর্বাবস্থায় ফেরান';

  @override
  String get portion => 'অংশ';

  @override
  String get quantity => 'পরিমাণ';

  @override
  String get unit => 'ইউনিট';

  @override
  String get clear => 'পরিষ্কার';

  @override
  String get select => 'নির্বাচন করুন';

  @override
  String get apply => 'আবেদন করুন';

  @override
  String get reset => 'রিসেট করুন';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get no => 'না';

  @override
  String get optional => 'ঐচ্ছিক';

  @override
  String get calories => 'ক্যালরি';

  @override
  String get protein => 'প্রোটিন';

  @override
  String get carbs => 'শর্করা';

  @override
  String get fat => 'মোটা';

  @override
  String get fiber => 'ফাইবার';

  @override
  String get water => 'জল';

  @override
  String get steps => 'ধাপ';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'মিলি';

  @override
  String get kilograms => 'কেজি';

  @override
  String get pounds => 'পাউন্ড';

  @override
  String get centimeters => 'সেমি';

  @override
  String get inches => 'মধ্যে';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ঘন্টা';

  @override
  String get minutes => 'মিনিট';

  @override
  String get serving => 'পরিবেশন করা';

  @override
  String get servings => 'পরিবেশন';

  @override
  String get serving_size => 'পরিবেশন আকার';

  @override
  String get per_100g => 'প্রতি 100 গ্রাম';

  @override
  String get india => 'ভারত';

  @override
  String get asia => 'এশিয়া';

  @override
  String get europe => 'ইউরোপ';

  @override
  String get middle_east => 'মধ্যপ্রাচ্য';

  @override
  String get africa => 'আফ্রিকা';

  @override
  String get americas => 'আমেরিকা';

  @override
  String get home_title => 'বাড়ি';

  @override
  String get home_greeting_morning => 'শুভ সকাল';

  @override
  String get home_greeting_afternoon => 'শুভ বিকাল';

  @override
  String get home_greeting_evening => 'শুভ সন্ধ্যা';

  @override
  String get home_streak_title => 'ব্লসম স্ট্রিক';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিনের ধারা',
      one: '1 দিনের স্ট্রীক',
      zero: '0 দিনের স্ট্রীক',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'পুড়ে গেছে';

  @override
  String get home_calories_budget => 'ক্যালোরি বাজেট';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal অবশিষ্ট';
  }

  @override
  String get home_water_title => 'দৈনিক হাইড্রেশন';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target মিলি';
  }

  @override
  String get home_steps_title => 'পায়ে হেঁটেছি';

  @override
  String get home_quick_actions => 'দ্রুত অ্যাকশন';

  @override
  String get home_log_meal => 'লগ খাবার';

  @override
  String get home_log_water => 'লগ জল';

  @override
  String get home_log_workout => 'লগ ওয়ার্কআউট';

  @override
  String get home_log_weight => 'লগ ওজন';

  @override
  String get home_insights_title => 'আজকের অন্তর্দৃষ্টি';

  @override
  String get home_quote =>
      'ছোট স্বাস্থ্যকর পছন্দগুলি প্রস্ফুটিত রূপান্তর তৈরি করে।';

  @override
  String get home_ai_coach_tip => 'ব্লুমি এআই কোচ';

  @override
  String get home_surroundings => 'পারিপার্শ্বিক এবং বায়ু';

  @override
  String get home_notifications => 'বিজ্ঞপ্তি';

  @override
  String get home_daily_score => 'দৈনিক সুস্থতা স্কোর';

  @override
  String get home_view_all => 'সব দেখুন';

  @override
  String get food_diary_title => 'খাদ্য ডায়েরি';

  @override
  String get food_breakfast => 'সকালের নাস্তা';

  @override
  String get food_lunch => 'দুপুরের খাবার';

  @override
  String get food_dinner => 'রাতের খাবার';

  @override
  String get food_snacks => 'স্ন্যাকস';

  @override
  String get food_add_food => 'খাদ্য যোগ করুন';

  @override
  String get food_edit_food => 'খাদ্য সম্পাদনা করুন';

  @override
  String get food_add_breakfast => 'প্রাতঃরাশ যোগ করুন';

  @override
  String get food_add_lunch => 'লাঞ্চ যোগ করুন';

  @override
  String get food_add_dinner => 'ডিনার যোগ করুন';

  @override
  String get food_add_snack => 'জলখাবার যোগ করুন';

  @override
  String get food_total_calories => 'মোট ক্যালোরি';

  @override
  String get food_empty_meal => 'এই খাবারের জন্য এখনো কোনো খাবার লগ করা হয়নি';

  @override
  String get food_empty_diary => 'এই দিন জন্য কোন খাবার লগ';

  @override
  String get food_log_first_meal =>
      'আপনার প্রথম সুস্বাদু খাবার লগ করতে + আলতো চাপুন';

  @override
  String get food_quick_add => 'দ্রুত যোগ করুন';

  @override
  String get food_search_hint => 'খাবার, ফল, ডাল, রুটি অনুসন্ধান করুন...';

  @override
  String get food_custom_recipe => 'কাস্টম খাদ্য এবং রেসিপি';

  @override
  String get food_scan_barcode => 'বারকোড স্ক্যান করুন';

  @override
  String get food_camera_scan => 'এআই ফুড স্ক্যানার';

  @override
  String get food_recent => 'সাম্প্রতিক খাবার';

  @override
  String get food_favourites => 'প্রিয়';

  @override
  String get food_macro_summary => 'ম্যাক্রোনিউট্রিয়েন্ট ব্রেকডাউন';

  @override
  String get food_delete_meal_confirm =>
      'আপনি কি এই আইটেমটি সরানোর বিষয়ে নিশ্চিত?';

  @override
  String get food_item_deleted => 'খাবার আইটেম সরানো হয়েছে';

  @override
  String get food_remaining => 'অবশিষ্ট';

  @override
  String get food_consumed => 'গ্রাস করা';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'খাদ্য অনুসন্ধান করুন';

  @override
  String get foodSearch_scan_barcode => 'বারকোড স্ক্যান করুন';

  @override
  String get foodSearch_take_photo => 'স্ন্যাপ ফুড ফটো';

  @override
  String get foodSearch_custom_food => 'কাস্টম ফুড তৈরি করুন';

  @override
  String get foodSearch_recent_searches => 'সাম্প্রতিক অনুসন্ধান';

  @override
  String get foodSearch_popular => 'জনপ্রিয় খাবার';

  @override
  String get foodSearch_no_results => 'আপনার অনুসন্ধানের সাথে মেলে কোন খাবার';

  @override
  String get barcode_title => 'বারকোড স্ক্যানার';

  @override
  String get barcode_align => 'ক্যামেরা ফ্রেমের ভিতরে বারকোড সারিবদ্ধ করুন';

  @override
  String get barcode_not_found => 'পণ্য ডাটাবেসে পাওয়া যায়নি';

  @override
  String get barcode_premium_feature =>
      'ব্লুমি প্রো এর সাথে বারকোড স্ক্যানিং উপলব্ধ';

  @override
  String get camera_title => 'এআই ফুড স্ক্যানার';

  @override
  String get camera_tap_hint => 'আপনার থালা একটি পরিষ্কার ছবি নিন';

  @override
  String get camera_analysing => 'খাবারের প্লেট বিশ্লেষণ করা হচ্ছে...';

  @override
  String get camera_detected => 'সনাক্ত করা আইটেম';

  @override
  String get camera_flash => 'ফ্ল্যাশ টগল করুন';

  @override
  String get camera_retake => 'ছবি আবার তুলুন';

  @override
  String get camera_confirm_food => 'আইটেম নিশ্চিত করুন';

  @override
  String get customFood_title => 'কাস্টম খাদ্য এবং রেসিপি';

  @override
  String get customFood_name_hint => 'থালা বা উপাদানের নাম';

  @override
  String get customFood_calories_hint => 'ক্যালোরি (kcal)';

  @override
  String get customFood_protein_hint => 'প্রোটিন (ছ)';

  @override
  String get customFood_carbs_hint => 'শর্করা (ছ)';

  @override
  String get customFood_fat_hint => 'চর্বি (ছ)';

  @override
  String get customFood_save => 'রেসিপি সংরক্ষণ করুন';

  @override
  String get water_tracker_title => 'জল ট্র্যাকার';

  @override
  String get water_daily_target => 'দৈনিক হাইড্রেশন লক্ষ্য';

  @override
  String get water_logged_today => 'আজ লগ ইন';

  @override
  String get water_add_glass => '+250 মিলি গ্লাস';

  @override
  String get water_add_bottle => '+500 মিলি বোতল';

  @override
  String get water_custom_amount => 'কাস্টম পরিমাণ';

  @override
  String get water_reminder_tip =>
      'স্থির শক্তির জন্য সারাদিন নিয়মিত পানি পান করুন।';

  @override
  String water_logged_toast(Object amount) {
    return 'লগ করা হয়েছে $amount মিলি জল 💧৷';
  }

  @override
  String get workout_title => 'ওয়ার্কআউট লগ';

  @override
  String get workout_add_exercise => 'ওয়ার্কআউট যোগ করুন';

  @override
  String get workout_cardio => 'কার্ডিও';

  @override
  String get workout_strength => 'শক্তি';

  @override
  String get workout_yoga => 'যোগব্যায়াম এবং নমনীয়তা';

  @override
  String get workout_duration => 'সময়কাল';

  @override
  String get workout_intensity => 'তীব্রতা';

  @override
  String get workout_calories_burned => 'ক্যালোরি পোড়া';

  @override
  String get workout_empty => 'আজ কোন ওয়ার্কআউট লগ করা হয়নি';

  @override
  String get workout_save_success => 'ওয়ার্কআউট সফলভাবে সংরক্ষিত!';

  @override
  String get workout_type => 'ওয়ার্কআউটের ধরন';

  @override
  String get workout_notes => 'নোট এবং প্রতিফলন';

  @override
  String get health_overview_title => 'স্বাস্থ্য এবং গুরুত্বপূর্ণ';

  @override
  String get health_heart_rate => 'হার্ট রেট';

  @override
  String get health_blood_oxygen => 'রক্তের অক্সিজেন (SpO2)';

  @override
  String get health_blood_pressure => 'রক্তচাপ';

  @override
  String get health_blood_glucose => 'রক্তের গ্লুকোজ';

  @override
  String get health_body_temperature => 'শরীরের তাপমাত্রা';

  @override
  String get health_sleep_tracking => 'স্লিপ ট্র্যাকিং';

  @override
  String get health_weight_tracking => 'ওজন এবং শারীরিক গঠন';

  @override
  String get health_waist_hip => 'কোমর থেকে হিপ অনুপাত';

  @override
  String get health_devices_hub => 'ডিভাইস এবং স্মার্টওয়াচ হাব';

  @override
  String get health_sync_now => 'স্বাস্থ্য ডেটা সিঙ্ক করুন';

  @override
  String health_last_synced(Object time) {
    return 'শেষবার সিঙ্ক হয়েছে: $time';
  }

  @override
  String get health_manual_entry => 'ম্যানুয়াল স্বাস্থ্য এন্ট্রি';

  @override
  String get health_metric_detail => 'মেট্রিক বিবরণ';

  @override
  String get health_connected_sensors => 'সংযুক্ত স্বাস্থ্য সেন্সর';

  @override
  String get plan_title => 'দৈনিক পরিকল্পনা';

  @override
  String get plan_weekly_title => 'সাপ্তাহিক সুস্থতা পরিকল্পনা';

  @override
  String get plan_calorie_target => 'ক্যালোরি টার্গেট';

  @override
  String get plan_water_target => 'হাইড্রেশন টার্গেট';

  @override
  String get plan_step_target => 'স্টেপ টার্গেট';

  @override
  String get plan_sleep_target => 'ঘুমের লক্ষ্য';

  @override
  String get plan_meal_suggestions => 'খাবারের পরামর্শ';

  @override
  String get plan_healthy_habits => 'স্বাস্থ্যকর অভ্যাস এবং টিপস';

  @override
  String get plan_coach_advice => 'ব্লুমি এআই কোচের সুপারিশ';

  @override
  String get plan_generated_title => 'ব্যক্তিগতকৃত দৈনিক সময়সূচী';

  @override
  String get profile_title => 'প্রোফাইল';

  @override
  String get profile_edit => 'প্রোফাইল সম্পাদনা করুন';

  @override
  String get profile_name => 'নাম';

  @override
  String get profile_age => 'বয়স';

  @override
  String get profile_gender => 'লিঙ্গ';

  @override
  String get profile_height => 'উচ্চতা';

  @override
  String get profile_weight => 'ওজন';

  @override
  String get profile_goal => 'প্রাথমিক লক্ষ্য';

  @override
  String get profile_activity_level => 'কার্যকলাপ স্তর';

  @override
  String get profile_stats => 'আমার সুস্থতার পরিসংখ্যান';

  @override
  String get profile_saved => 'প্রোফাইল সফলভাবে আপডেট করা হয়েছে৷';

  @override
  String get profile_bmi => 'বডি মাস ইনডেক্স (BMI)';

  @override
  String get profile_membership => 'সদস্যপদ';

  @override
  String get settings => 'সেটিংস';

  @override
  String get preferences_habits => 'পছন্দ এবং অভ্যাস';

  @override
  String get appearance_theme => 'চেহারা এবং থিম';

  @override
  String get appearance_theme_sub =>
      'অন্ধকার, হালকা, সিস্টেম মোড এবং অ্যাপ পটভূমি বিকল্প';

  @override
  String get permissions => 'অনুমতি এবং সিস্টেম অ্যাক্সেস';

  @override
  String get permissions_sub =>
      'স্বাস্থ্য সংযোগ, স্টেপ সেন্সর, জিপিএস, বিজ্ঞপ্তি এবং ক্যামেরা';

  @override
  String get reminders_notifications => 'অনুস্মারক এবং বিজ্ঞপ্তি';

  @override
  String get reminders_sub =>
      'খাবারের সময়, জল, ওজন চেক-ইন এবং শোবার সময় অনুস্মারক';

  @override
  String get units_of_measurement => 'পরিমাপের একক';

  @override
  String get units_sub =>
      'মেট্রিক (kg, cm, ml, km) বা ইম্পেরিয়াল (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'অ্যাপের ভাষা';

  @override
  String get language_sub =>
      'ইংরেজি, হিন্দি (হিন্দি), হিংলিশ এবং 195+ বৈশ্বিক ভাষা';

  @override
  String get home_screen_widgets => 'হোম স্ক্রীন উইজেট';

  @override
  String get widgets_sub =>
      'লাইভ অ্যান্ড্রয়েড উইজেট: হাব, স্টেপস, ওয়াটার, নিউট্রিশন এবং মাসকট';

  @override
  String get wear_os_watch_app => 'ওএস ওয়াচ অ্যাপ পরিধান করুন';

  @override
  String get wear_os_sub =>
      'স্মার্টওয়াচের সঙ্গী, টাইলস, জটিলতা এবং লাইভ গুরুত্বপূর্ণ';

  @override
  String get goals_wellness => 'লক্ষ্য এবং সুস্থতার অন্তর্দৃষ্টি';

  @override
  String get nutrition_targets => 'পুষ্টি লক্ষ্য এবং ম্যাক্রো বিভক্ত';

  @override
  String get nutrition_targets_sub =>
      'ক্যালোরি লক্ষ্য, প্রোটিন, কার্বোহাইড্রেট, চর্বি এবং জল লক্ষ্য';

  @override
  String get weekly_recap => 'সাপ্তাহিক ওয়েলনেস রিক্যাপ';

  @override
  String get weekly_recap_sub =>
      '7-দিনের ক্যালোরি গড়, ম্যাক্রো রেশিও এবং সেরা দিন';

  @override
  String get streaks_milestones => 'স্ট্রীক এবং মাইলস্টোনস';

  @override
  String get streaks_sub => 'সক্রিয় ফুলের রেখা, ব্যাজ এবং কৃতিত্ব';

  @override
  String get connected_devices => 'সংযুক্ত ডিভাইস এবং ইকোসিস্টেম';

  @override
  String get devices_hub => 'ডিভাইস এবং স্মার্টওয়াচ হাব';

  @override
  String get devices_hub_sub =>
      'হেলথ কানেক্ট, গ্যালাক্সি ওয়াচ, পিক্সেল ওয়াচ, গারমিন';

  @override
  String get surroundings_weather => 'পারিপার্শ্বিক এবং আবহাওয়া';

  @override
  String get surroundings_sub =>
      'বায়ুর গুণমান (AQI), UV সূচক এবং আবহাওয়া হাইড্রেশন টিপস';

  @override
  String get bloomi_pro => 'ব্লুমি প্রো সাবস্ক্রিপশন';

  @override
  String get bloomi_pro_sub =>
      'এআই প্ল্যান কোচ, 5টি হোম স্ক্রীন উইজেট এবং গুরুত্বপূর্ণ ট্র্যাকিং';

  @override
  String get about_security => 'সম্পর্কে এবং নিরাপত্তা';

  @override
  String get about_bloomi => 'ব্লুমি সম্পর্কে';

  @override
  String get about_bloomi_sub =>
      'স্পেসিফিকেশন, সংস্করণ, অ্যাট্রিবিউশন তৈরি করুন';

  @override
  String get privacy_policy => 'গোপনীয়তা নীতি';

  @override
  String get privacy_policy_sub => 'অফলাইন-প্রথম, অন-ডিভাইস ডেটা আর্কিটেকচার';

  @override
  String get terms_conditions => 'শর্তাবলী';

  @override
  String get terms_conditions_sub =>
      'পরিষেবার শর্তাবলী এবং সুস্থতার নির্দেশিকা';

  @override
  String get delete_account => 'অ্যাকাউন্ট এবং ডেটা মুছুন';

  @override
  String get delete_account_sub =>
      'অপরিবর্তনীয়ভাবে স্থানীয় SQLite ডেটা এবং ক্লাউড ব্যাকআপ মুছে ফেলুন';

  @override
  String get healthy_habits => 'মৃদু, দীর্ঘস্থায়ী সুস্থতার অভ্যাস গড়ে তুলুন';

  @override
  String get all_logs => 'আমার ট্র্যাক করা ডেটা এবং লগ';

  @override
  String get search_language =>
      'ভাষা বা নেটিভ স্ক্রিপ্ট দ্বারা অনুসন্ধান করুন...';

  @override
  String get languages_available => 'ভাষা উপলব্ধ';

  @override
  String get no_matching_languages => 'কোন মিলিত ভাষা পাওয়া যায়নি';

  @override
  String get try_searching =>
      'স্থানীয় লিপি বা ইংরেজি বানান দ্বারা অনুসন্ধান করার চেষ্টা করুন';

  @override
  String get partially_translated => 'আংশিক অনূদিত';

  @override
  String get complete_translation => 'সম্পূর্ণ';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ভাষা $name ( $nativeName ) এ সেট করা হয়েছে';
  }

  @override
  String get surroundings_title => 'পারিপার্শ্বিক ও পরিবেশ';

  @override
  String get surroundings_aqi => 'বায়ুর গুণমান সূচক';

  @override
  String get surroundings_uv => 'UV সূচক';

  @override
  String get surroundings_temp => 'তাপমাত্রা';

  @override
  String get surroundings_humidity => 'আর্দ্রতা';

  @override
  String get surroundings_hydration_advice =>
      'বর্তমান আবহাওয়ায় ভালোভাবে হাইড্রেটেড থাকুন।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'খাদ্য অনুসন্ধান করুন';

  @override
  String get food_quick_barcode => 'বারকোড স্ক্যান করুন 👑';

  @override
  String get food_quick_water => 'জল যোগ করুন';

  @override
  String get food_quick_custom => 'কাস্টম খাদ্য';

  @override
  String get surroundings_good => 'ভাল';

  @override
  String get surroundings_moderate => 'পরিমিত';

  @override
  String get surroundings_unhealthy => 'অস্বাস্থ্যকর';

  @override
  String get notifications_title => 'বিজ্ঞপ্তি এবং সতর্কতা';

  @override
  String get notifications_empty => 'কোন নতুন বিজ্ঞপ্তি নেই';

  @override
  String get notifications_mark_read => 'সমস্ত পঠিত হিসাবে চিহ্নিত করুন';

  @override
  String get notifications_clear => 'সব সাফ করুন';

  @override
  String get reminders => 'অনুস্মারক সেটিংস';

  @override
  String get notifications => 'বিজ্ঞপ্তি';

  @override
  String get reminders_breakfast_title => 'প্রাতঃরাশের অনুস্মারক 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'শুভ সকাল! $time এ একটি পুষ্টিকর প্রাতঃরাশের সময়।';
  }

  @override
  String get reminders_lunch_title => 'দুপুরের খাবারের অনুস্মারক 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'বিরতি দিন এবং $time এ একটি সুষম, মননশীল মধ্যাহ্নভোজ উপভোগ করুন।';
  }

  @override
  String get reminders_dinner_title => 'ডিনার রিমাইন্ডার 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time এ হালকা, তৃপ্তিদায়ক ডিনারের সময়।';
  }

  @override
  String get reminders_water_title => 'হাইড্রেশন নাজ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'এক গ্লাস তাজা জল পান করার সময়! ( $time )';
  }

  @override
  String get reminders_weight_title => 'সাপ্তাহিক ওজন ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ব্লুমি ( $time ) এ আপনার সাপ্তাহিক বডি মেট্রিক্স ট্র্যাক করুন।';
  }

  @override
  String get reminders_sleep_title => 'ঘুমানোর সময় উইন্ড-ডাউন 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'বিশ্রাম নিন এবং একটি বিশ্রামের ঘুমের জন্য প্রস্তুত করুন ( $time )।';
  }

  @override
  String get onboard_welcome => 'ব্লুমিতে স্বাগতম';

  @override
  String get onboard_sub =>
      'আপনার বন্ধুত্বপূর্ণ, অফলাইন-প্রথম স্বাস্থ্য এবং পুষ্টি সহচর।';

  @override
  String get onboard_get_started => 'শুরু করুন';

  @override
  String get onboard_sign_in => 'সাইন ইন করুন';

  @override
  String get onboard_skip => 'এড়িয়ে যান';

  @override
  String get onboard_choose_goal => 'আপনার প্রাথমিক সুস্থতা লক্ষ্য কি?';

  @override
  String get onboard_goal_weight_loss => 'মৃদু ওজন হ্রাস';

  @override
  String get onboard_goal_muscle => 'পেশী লাভ এবং শক্তি';

  @override
  String get onboard_goal_energy => 'দৈনিক শক্তি এবং জীবনীশক্তি';

  @override
  String get onboard_goal_habits => 'স্বাস্থ্যকর মননশীল খাওয়া';

  @override
  String get onboard_about_you => 'আপনার নিজের সম্পর্কে আমাদের বলুন';

  @override
  String get onboard_lifestyle => 'আপনার দৈনন্দিন রুটিন';

  @override
  String get onboard_permissions_title => 'অনুমতি এবং সিস্টেম অ্যাক্সেস';

  @override
  String get onboard_permissions_sub =>
      'সিঙ্ক পদক্ষেপ, ওয়ার্কআউট এবং অনুস্মারকগুলিতে অ্যাক্সেস মঞ্জুর করুন৷';

  @override
  String get onboard_plan_ready_title => 'আপনার কাস্টম পরিকল্পনা প্রস্তুত!';

  @override
  String get onboard_plan_ready_sub =>
      'আমরা শুধুমাত্র আপনার জন্য একটি মৃদু, ব্যক্তিগতকৃত পুষ্টি এবং সুস্থতার রোডম্যাপ তৈরি করেছি।';

  @override
  String get onboard_enter_bloomi => 'ব্লুমিতে প্রবেশ করুন';

  @override
  String get insights_weekly_report => 'সাপ্তাহিক ওয়েলনেস রিক্যাপ';

  @override
  String insights_best_day(Object day) {
    return 'সেরা সামঞ্জস্য দিবস: $day';
  }

  @override
  String get insights_streaks_badges => 'স্ট্রীক এবং মাইলস্টোনস';

  @override
  String insights_unlocked_on(Object date) {
    return '$date এ আনলক করা হয়েছে';
  }

  @override
  String get insights_keep_going => 'চমত্কার অগ্রগতি আপ রাখুন!';

  @override
  String get widgets_title => 'হোম স্ক্রীন উইজেট';

  @override
  String widgets_active_count(Object count) {
    return 'সক্রিয় উইজেট: $count';
  }

  @override
  String get widgets_hub_title => 'ব্লুমি ওয়েলনেস হাব';

  @override
  String get widgets_steps_title => 'পদক্ষেপ এবং সক্রিয় রিং';

  @override
  String get widgets_water_title => 'হাইড্রেশন দ্রুত লগ';

  @override
  String get widgets_mascot_title => 'ব্লুমি মাসকট সঙ্গী';

  @override
  String get wear_os_title => 'ওএস স্মার্টওয়াচ পরুন';

  @override
  String get wear_os_connected => 'ওয়াচের সাথে সংযুক্ত';

  @override
  String get wear_os_sync => 'ঘড়ির ডেটা সিঙ্ক করুন';

  @override
  String get theme_title => 'চেহারা এবং থিম';

  @override
  String get theme_mode => 'থিম মোড';

  @override
  String get theme_light => 'আলো';

  @override
  String get theme_dark => 'অন্ধকার';

  @override
  String get theme_system => 'সিস্টেম ডিফল্ট';

  @override
  String get theme_background_palette => 'পটভূমি প্যালেট';

  @override
  String get units_title => 'পরিমাপের একক';

  @override
  String get units_metric => 'মেট্রিক (কেজি, সেমি, মিলি)';

  @override
  String get units_imperial => 'ইম্পেরিয়াল (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'ড্যাশবোর্ড লোড করতে অক্ষম৷';

  @override
  String get home_health_permission_req => 'স্বাস্থ্য সংযোগ অনুমতি প্রয়োজন';

  @override
  String get home_health_permission_desc =>
      'ব্লুমির রিয়েল টাইমে বাস্তব পদক্ষেপ, হার্ট রেট এবং মোবাইল হোম উইজেট সিঙ্ক করার জন্য হেলথ কানেক্টের অনুমতি প্রয়োজন।';

  @override
  String get home_allow_health => 'স্বাস্থ্য সংযোগের অনুমতি দিন';

  @override
  String get home_ready_mindful_day => 'একটি মননশীল দিনের জন্য প্রস্তুত? ✨';

  @override
  String get home_quick_add => 'দ্রুত যোগ করুন';

  @override
  String get home_live_gps => 'লাইভ জিপিএস';

  @override
  String get home_calories_remaining_label => 'ক্যালোরি অবশিষ্ট';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'খাওয়া হয়েছে: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'ওয়াটার ট্র্যাকারের জন্য ট্যাপ করুন 💧';

  @override
  String get home_water_goal_reached => 'দৈনিক লক্ষ্যে পৌঁছেছে 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'দৈনিক লক্ষ্যে $remaining মিলি';
  }

  @override
  String get home_details => 'বিস্তারিত';

  @override
  String get home_upgrade_plan_desc =>
      'ব্যক্তিগতকৃত দৈনিক লক্ষ্য এবং AI প্ল্যান আনলক করতে আপগ্রেড করুন';

  @override
  String get home_unlock => 'আনলক 👑';

  @override
  String get home_quick_log_hint => 'দ্রুত একটি সুস্থতা এন্ট্রি রেকর্ড করুন';

  @override
  String get food_serving_size => 'পরিবেশন আকার';

  @override
  String get food_serving_grams => 'পরিবেশন করা (ছ)';

  @override
  String get food_number_servings => 'পরিবেশনের সংখ্যা';

  @override
  String get food_calories_per_serving => 'পরিবেশন প্রতি ক্যালোরি';

  @override
  String get food_recipe_ingredients => 'উপকরণ';

  @override
  String get food_recipe_add_ingredient => 'উপাদান যোগ করুন';

  @override
  String get food_recipe_directions => 'নির্দেশাবলী এবং নোট';

  @override
  String get food_recipe_total => 'মোট রেসিপি পুষ্টি';

  @override
  String get food_recipe_per_serving => 'প্রতি পরিবেশন পুষ্টি';

  @override
  String get food_recipe_saved_toast => 'কাস্টম খাদ্য সফলভাবে সংরক্ষিত!';

  @override
  String get food_barcode_found => 'পণ্য পাওয়া গেছে!';

  @override
  String get food_barcode_not_found_desc =>
      'আমরা খোলা ডাটাবেসে এই বারকোড খুঁজে পাইনি. আপনি এটি একটি কাস্টম খাদ্য হিসাবে যোগ করতে পারেন.';

  @override
  String get food_add_custom_btn => 'কাস্টম খাদ্য যোগ করুন';

  @override
  String get food_scan_again => 'আবার স্ক্যান করুন';

  @override
  String get food_review_items => 'সনাক্ত খাদ্য পর্যালোচনা';

  @override
  String get food_review_hint =>
      'পরিমাণ সামঞ্জস্য করুন বা কোনো অচেনা আইটেম সরান';

  @override
  String get food_log_selected => 'নির্বাচিত খাবার লগ করুন';

  @override
  String get food_favourites_title => 'প্রিয় খাবার';

  @override
  String get food_recent_title => 'সাম্প্রতিক খাবার';

  @override
  String get food_no_favourites =>
      'এখনো কোনো প্রিয় খাবার নেই। এখানে সংরক্ষণ করতে যে কোনো খাবারে হার্ট ট্যাপ করুন।';

  @override
  String get food_no_recents => 'সম্প্রতি লগ করা কোনো খাবার পাওয়া যায়নি।';

  @override
  String get food_nutrition_details_title => 'দৈনিক পুষ্টির বিবরণ';

  @override
  String get food_macro_protein_label => 'প্রোটিন ভাঙ্গন';

  @override
  String get food_macro_carbs_label => 'কার্বোহাইড্রেট ভাঙ্গন';

  @override
  String get food_macro_fat_label => 'ফ্যাট ব্রেকডাউন';

  @override
  String get food_macro_fiber_label => 'ফাইবার ব্রেকডাউন';

  @override
  String get food_daily_target_comparison => 'লক্ষ্য তুলনা';

  @override
  String food_target_label(Object target) {
    return 'লক্ষ্য: $target';
  }

  @override
  String get food_edit_entry => 'ডায়েরি এন্ট্রি সম্পাদনা করুন';

  @override
  String get food_delete_entry => 'এন্ট্রি মুছুন';

  @override
  String food_grams_short(Object grams) {
    return '$grams গ্রাম';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$target মিলি এর $current';
  }

  @override
  String get water_intake_history => 'আজকের জল লগ্ন';

  @override
  String get water_no_logs_today =>
      'আজও জলাবদ্ধতা নেই। হাইড্রেট এবং একটি দ্রুত যোগ বোতাম আলতো চাপুন!';

  @override
  String get water_adjust_goal => 'দৈনিক লক্ষ্য সামঞ্জস্য করুন';

  @override
  String get health_connect_banner => 'হেলথ কানেক্টের সাথে যুক্ত';

  @override
  String get health_vitals_summary => 'দৈনিক স্বাস্থ্য গুরুত্বপূর্ণ';

  @override
  String get health_latest_heart_rate => 'সর্বশেষ হার্ট রেট';

  @override
  String get health_latest_bp => 'রক্তচাপ';

  @override
  String get health_latest_spo2 => 'রক্তের অক্সিজেন';

  @override
  String get health_latest_glucose => 'রক্তের গ্লুকোজ';

  @override
  String get health_latest_weight => 'ওজন';

  @override
  String get health_latest_sleep => 'ঘুমের সময়কাল';

  @override
  String get health_add_manual => 'ম্যানুয়াল পরিমাপ যোগ করুন';

  @override
  String get health_history_trends => 'ঐতিহাসিক প্রবণতা';

  @override
  String get health_sync_success => 'স্বাস্থ্য ডেটা সফলভাবে সিঙ্ক হয়েছে!';

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
    return '$val মিগ্রা/ডিএল';
  }

  @override
  String get health_devices_title => 'সংযুক্ত ডিভাইস এবং পরিধানযোগ্য';

  @override
  String get health_devices_desc =>
      'জোড়া স্মার্টওয়াচ, ফিটনেস ট্র্যাকার এবং স্বাস্থ্য সেন্সর পরিচালনা করুন।';

  @override
  String get health_workout_editor_title => 'ওয়ার্কআউট সম্পাদনা করুন';

  @override
  String get health_workout_name_label => 'ওয়ার্কআউটের নাম';

  @override
  String get health_workout_duration_label => 'সময়কাল (মিনিট)';

  @override
  String get health_workout_calories_label => 'আনুমানিক ক্যালোরি (kcal)';

  @override
  String get health_workout_date_label => 'তারিখ এবং সময়';

  @override
  String get plan_daily_wellness_roadmap => 'আপনার ব্যক্তিগতকৃত রোডম্যাপ';

  @override
  String get plan_morning_routine => 'সকালের রুটিন';

  @override
  String get plan_afternoon_routine => 'মধ্যাহ্ন সুস্থতা';

  @override
  String get plan_evening_routine => 'সন্ধ্যায় উইন্ড-ডাউন';

  @override
  String get plan_coach_badge => 'ব্লুমি এআই কোচ';

  @override
  String get plan_weekly_overview => '7-দিনের সুস্থতা ফোকাস';

  @override
  String get plan_targets_title => 'সুস্থতা লক্ষ্য এবং লক্ষ্য';

  @override
  String get plan_calorie_budget_label => 'দৈনিক ক্যালোরি বাজেট';

  @override
  String get plan_water_budget_label => 'দৈনিক জল লক্ষ্যমাত্রা';

  @override
  String get plan_step_budget_label => 'দৈনিক পদক্ষেপের লক্ষ্য';

  @override
  String get plan_macro_split_label => 'ম্যাক্রোনিউট্রিয়েন্ট অনুপাত';

  @override
  String get profile_personal_details => 'ব্যক্তিগত বিবরণ';

  @override
  String get profile_body_stats => 'শরীরের পরিমাপ';

  @override
  String get profile_app_preferences => 'পছন্দ এবং অ্যাপ সেটিংস';

  @override
  String get profile_edit_name_hint => 'তোমার নাম';

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
  String get profile_gender_male => 'পুরুষ';

  @override
  String get profile_gender_female => 'মহিলা';

  @override
  String get profile_gender_other => 'অন্য / না বলতে পছন্দ করুন';

  @override
  String get profile_activity_sedentary => 'আসীন (অল্প থেকে কোন ব্যায়াম)';

  @override
  String get profile_activity_light => 'হালকাভাবে সক্রিয় (1-3 দিন/সপ্তাহ)';

  @override
  String get profile_activity_moderate => 'পরিমিতভাবে সক্রিয় (3-5 দিন/সপ্তাহ)';

  @override
  String get profile_activity_very => 'খুব সক্রিয় (6-7 দিন/সপ্তাহ)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion অ্যাপ';

  @override
  String get settings_wear_os_desc =>
      'আপনার Wear OS ঘড়িতে ব্লুমি টাইল এবং জটিলতা ইনস্টল করুন ক্যালোরি, জল এবং পদক্ষেপগুলি এক নজরে দেখতে।';

  @override
  String get settings_widgets_header => 'ইন্টারেক্টিভ অ্যান্ড্রয়েড উইজেট';

  @override
  String get settings_widgets_desc =>
      'তাত্ক্ষণিক আপডেটের জন্য আপনার ডিভাইসের হোম স্ক্রিনে রিয়েল-টাইম উইজেটগুলি পিন করুন৷';

  @override
  String get settings_about_header => 'ব্লুমি সম্পর্কে';

  @override
  String get settings_about_version => 'সংস্করণ 1.0.0';

  @override
  String get settings_about_build => '100 তৈরি করুন';

  @override
  String get settings_about_credits =>
      'মননশীল, স্বাস্থ্যকর জীবনযাপনের জন্য যত্ন নিয়ে তৈরি করা হয়েছে।';

  @override
  String get settings_terms_header => 'শর্তাবলী';

  @override
  String get settings_privacy_header => 'গোপনীয়তা নীতি';

  @override
  String get settings_delete_header => 'অ্যাকাউন্ট এবং ডেটা মুছুন';

  @override
  String get settings_delete_warning =>
      'এই ক্রিয়াটি পূর্বাবস্থায় ফেরানো যাবে না৷ আপনার সমস্ত খাবার, ওয়ার্কআউট, গুরুত্বপূর্ণ জিনিস এবং প্রোফাইল স্থায়ীভাবে মুছে ফেলা হবে।';

  @override
  String get settings_delete_confirm_btn => 'স্থায়ীভাবে মুছে ফেলুন';

  @override
  String get onboard_welcome_headline => 'ব্লুমি ✨ এ স্বাগতম';

  @override
  String get onboard_welcome_tagline =>
      'আপনার জীবনের চারপাশে ডিজাইন করা মৃদু, মননশীল সুস্থতা ট্র্যাকিং।';

  @override
  String get onboard_step_about => 'আপনার সম্পর্কে';

  @override
  String get onboard_step_goals => 'আপনার লক্ষ্য';

  @override
  String get onboard_step_lifestyle => 'প্রতিদিনের অভ্যাস';

  @override
  String get onboard_step_permissions => 'অনুমতি';

  @override
  String get onboard_step_plan => 'প্রস্তুত!';

  @override
  String get onboard_health_connect_perm => 'স্বাস্থ্য সংযোগ অ্যাক্সেস';

  @override
  String get onboard_step_sensors_perm => 'স্টেপ কাউন্টার সেন্সর';

  @override
  String get onboard_notif_perm => 'মননশীল অনুস্মারক এবং বিজ্ঞপ্তি';

  @override
  String get onboard_camera_perm => 'ক্যামেরা (বারকোড এবং ফুড স্ক্যানার)';

  @override
  String get onboard_grant_permissions => 'অনুমতি প্রদান করুন';

  @override
  String get onboard_continue_dashboard => 'ড্যাশবোর্ড খুলুন';

  @override
  String get notif_channel_hydration_name => 'হাইড্রেশন নাজেস';

  @override
  String get notif_channel_hydration_desc => 'সারা দিন মৃদু জল অনুস্মারক';

  @override
  String get notif_channel_nutrition_name => 'খাবার এবং পুষ্টি অনুস্মারক';

  @override
  String get notif_channel_nutrition_desc =>
      'প্রাতঃরাশ, দুপুরের খাবার এবং রাতের খাবারের অনুস্মারক সতর্কতা';

  @override
  String get notif_channel_steps_name => 'ধাপের মাইলফলক';

  @override
  String get notif_channel_steps_desc =>
      'উদযাপন যখন দৈনিক পদক্ষেপ লক্ষ্যে পৌঁছান';

  @override
  String get notif_channel_vitals_name => 'স্বাস্থ্য এবং গুরুত্বপূর্ণ চেক';

  @override
  String get notif_channel_vitals_desc =>
      'ওজন এবং শোবার সময় উইন্ড-ডাউন রিমাইন্ডার';

  @override
  String get notif_action_log_water => '💧 লগ +২৫০ মিলি';

  @override
  String get notif_action_snooze => 'স্নুজ 15 মি';

  @override
  String get notif_action_log_meal => '🥗 লগ খাবার';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
