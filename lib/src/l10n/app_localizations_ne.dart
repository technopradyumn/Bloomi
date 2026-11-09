// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get app_name => 'ब्लूमी';

  @override
  String get nav_home => 'घर';

  @override
  String get nav_today => 'आज';

  @override
  String get nav_plan => 'योजना';

  @override
  String get nav_food => 'खाना';

  @override
  String get nav_food_diary => 'खाना डायरी';

  @override
  String get nav_workout => 'कसरत लग';

  @override
  String get nav_health => 'स्वास्थ्य';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get save => 'बचत गर्नुहोस्';

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get delete => 'हटाउनुहोस्';

  @override
  String get edit => 'सम्पादन गर्नुहोस्';

  @override
  String get done => 'सम्पन्न';

  @override
  String get close => 'बन्द गर्नुहोस्';

  @override
  String get back => 'पछाडि';

  @override
  String get next => 'अर्को';

  @override
  String get continue_btn => 'जारी राख्नुहोस्';

  @override
  String get confirm => 'पुष्टि गर्नुहोस्';

  @override
  String get search => 'खोज्नुहोस्';

  @override
  String get filter => 'फिल्टर गर्नुहोस्';

  @override
  String get all => 'सबै';

  @override
  String get active => 'सक्रिय';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'हिजो';

  @override
  String get tomorrow => 'भोलि';

  @override
  String get add => 'थप्नुहोस्';

  @override
  String get remove => 'हटाउनुहोस्';

  @override
  String get refresh => 'रिफ्रेस गर्नुहोस्';

  @override
  String get retry => 'पुन: प्रयास गर्नुहोस्';

  @override
  String get error => 'त्रुटि';

  @override
  String get success => 'सफलता';

  @override
  String get loading => 'लोड गर्दै...';

  @override
  String get no_data => 'कुनै डाटा उपलब्ध छैन';

  @override
  String get offline => 'अफलाइन मोड';

  @override
  String get offline_sub => 'पुन: जडान भएपछि परिवर्तनहरू सिंक हुनेछन्';

  @override
  String get undo => 'फिर्ता';

  @override
  String get portion => 'भाग';

  @override
  String get quantity => 'मात्रा';

  @override
  String get unit => 'एकाइ';

  @override
  String get clear => 'खाली गर्नुहोस्';

  @override
  String get select => 'चयन गर्नुहोस्';

  @override
  String get apply => 'लागु गर्नुहोस्';

  @override
  String get reset => 'रिसेट';

  @override
  String get ok => 'ठिक छ';

  @override
  String get yes => 'हो';

  @override
  String get no => 'छैन';

  @override
  String get optional => 'ऐच्छिक';

  @override
  String get calories => 'क्यालोरी';

  @override
  String get protein => 'प्रोटिन';

  @override
  String get carbs => 'कार्बोहाइड्रेट';

  @override
  String get fat => 'मोटो';

  @override
  String get fiber => 'फाइबर';

  @override
  String get water => 'पानी';

  @override
  String get steps => 'चरणहरू';

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
  String get centimeters => 'सेमी';

  @override
  String get inches => 'मा';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'घण्टा';

  @override
  String get minutes => 'मिनेट';

  @override
  String get serving => 'सेवा गर्दै';

  @override
  String get servings => 'सेवाहरू';

  @override
  String get serving_size => 'सेवा आकार';

  @override
  String get per_100g => 'प्रति 100 ग्राम';

  @override
  String get india => 'भारत';

  @override
  String get asia => 'एशिया';

  @override
  String get europe => 'युरोप';

  @override
  String get middle_east => 'मध्य पूर्व';

  @override
  String get africa => 'अफ्रिका';

  @override
  String get americas => 'अमेरिका';

  @override
  String get home_title => 'घर';

  @override
  String get home_greeting_morning => 'शुभ प्रभात';

  @override
  String get home_greeting_afternoon => 'शुभ दिउँसो';

  @override
  String get home_greeting_evening => 'शुभ साँझ';

  @override
  String get home_streak_title => 'ब्लोसम स्ट्रीक';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिनको सिलसिला',
      one: '1 दिन स्ट्रीक',
      zero: '० दिनको स्ट्रीक',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'जलेको';

  @override
  String get home_calories_budget => 'क्यालोरी बजेट';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal बाँकी';
  }

  @override
  String get home_water_title => 'दैनिक हाइड्रेशन';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target एमएल';
  }

  @override
  String get home_steps_title => 'पाइला पाइला चाल्यो';

  @override
  String get home_quick_actions => 'द्रुत कार्यहरू';

  @override
  String get home_log_meal => 'लग भोजन';

  @override
  String get home_log_water => 'लग पानी';

  @override
  String get home_log_workout => 'लग कसरत';

  @override
  String get home_log_weight => 'लग वजन';

  @override
  String get home_insights_title => 'आजको अन्तर्दृष्टि';

  @override
  String get home_quote =>
      'साना स्वस्थ छनोटहरूले फुल्ने परिवर्तनहरू सिर्जना गर्दछ।';

  @override
  String get home_ai_coach_tip => 'ब्लूमी एआई कोच';

  @override
  String get home_surroundings => 'परिवेश र हावा';

  @override
  String get home_notifications => 'सूचनाहरू';

  @override
  String get home_daily_score => 'दैनिक कल्याण स्कोर';

  @override
  String get home_view_all => 'सबै हेर्नुहोस्';

  @override
  String get food_diary_title => 'खाना डायरी';

  @override
  String get food_breakfast => 'बिहानको खाजा';

  @override
  String get food_lunch => 'लंच';

  @override
  String get food_dinner => 'डिनर';

  @override
  String get food_snacks => 'खाजा';

  @override
  String get food_add_food => 'खाना थप्नुहोस्';

  @override
  String get food_edit_food => 'खाना सम्पादन गर्नुहोस्';

  @override
  String get food_add_breakfast => 'ब्रेकफास्ट थप्नुहोस्';

  @override
  String get food_add_lunch => 'लंच थप्नुहोस्';

  @override
  String get food_add_dinner => 'डिनर थप्नुहोस्';

  @override
  String get food_add_snack => 'खाजा थप्नुहोस्';

  @override
  String get food_total_calories => 'कुल क्यालोरी';

  @override
  String get food_empty_meal => 'यो खानाको लागि कुनै पनि खाना अझै लगाइएको छैन';

  @override
  String get food_empty_diary => 'यस दिनको लागि कुनै खाना लगाइएको छैन';

  @override
  String get food_log_first_meal =>
      'आफ्नो पहिलो स्वादिष्ट भोजन लग गर्न + ट्याप गर्नुहोस्';

  @override
  String get food_quick_add => 'द्रुत थप्नुहोस्';

  @override
  String get food_search_hint => 'परिकार, फलफूल, दाल, रोटी खोज्नुहोस्...';

  @override
  String get food_custom_recipe => 'कस्टम खाना र नुस्खा';

  @override
  String get food_scan_barcode => 'बारकोड स्क्यान गर्नुहोस्';

  @override
  String get food_camera_scan => 'एआई फूड स्क्यानर';

  @override
  String get food_recent => 'भर्खरका खानाहरू';

  @override
  String get food_favourites => 'मनपर्नेहरू';

  @override
  String get food_macro_summary => 'Macronutrient ब्रेकडाउन';

  @override
  String get food_delete_meal_confirm =>
      'के तपाइँ यो वस्तु हटाउन निश्चित हुनुहुन्छ?';

  @override
  String get food_item_deleted => 'खाद्य वस्तु हटाइयो';

  @override
  String get food_remaining => 'बाँकी';

  @override
  String get food_consumed => 'खपत';

  @override
  String food_of_target(Object target) {
    return '$target kcal को';
  }

  @override
  String get foodSearch_title => 'खाना खोज्नुहोस्';

  @override
  String get foodSearch_scan_barcode => 'बारकोड स्क्यान गर्नुहोस्';

  @override
  String get foodSearch_take_photo => 'स्न्याप फूड फोटो';

  @override
  String get foodSearch_custom_food => 'अनुकूलन खाना सिर्जना गर्नुहोस्';

  @override
  String get foodSearch_recent_searches => 'हालका खोजहरू';

  @override
  String get foodSearch_popular => 'लोकप्रिय परिकार';

  @override
  String get foodSearch_no_results => 'तपाईको खोजसँग मिल्दो खानेकुरा छैन';

  @override
  String get barcode_title => 'बारकोड स्क्यानर';

  @override
  String get barcode_align =>
      'क्यामेरा फ्रेम भित्र बारकोड पङ्क्तिबद्ध गर्नुहोस्';

  @override
  String get barcode_not_found => 'डाटाबेसमा उत्पादन फेला परेन';

  @override
  String get barcode_premium_feature =>
      'बारकोड स्क्यानिङ Bloomi Pro मा उपलब्ध छ';

  @override
  String get camera_title => 'एआई फूड स्क्यानर';

  @override
  String get camera_tap_hint => 'आफ्नो डिशको स्पष्ट फोटो लिनुहोस्';

  @override
  String get camera_analysing => 'खानाको प्लेटको विश्लेषण...';

  @override
  String get camera_detected => 'पत्ता लगाइएका वस्तुहरू';

  @override
  String get camera_flash => 'फ्ल्यास टगल गर्नुहोस्';

  @override
  String get camera_retake => 'फोटो पुन: लिनुहोस्';

  @override
  String get camera_confirm_food => 'वस्तुहरू पुष्टि गर्नुहोस्';

  @override
  String get customFood_title => 'कस्टम खाना र नुस्खा';

  @override
  String get customFood_name_hint => 'परिकार वा सामग्रीको नाम';

  @override
  String get customFood_calories_hint => 'क्यालोरी (kcal)';

  @override
  String get customFood_protein_hint => 'प्रोटिन (g)';

  @override
  String get customFood_carbs_hint => 'कार्बोहाइड्रेट (g)';

  @override
  String get customFood_fat_hint => 'बोसो (g)';

  @override
  String get customFood_save => 'नुस्खा बचत गर्नुहोस्';

  @override
  String get water_tracker_title => 'पानी ट्रयाकर';

  @override
  String get water_daily_target => 'दैनिक हाइड्रेशन लक्ष्य';

  @override
  String get water_logged_today => 'आज लगाइयो';

  @override
  String get water_add_glass => '+250 एमएल गिलास';

  @override
  String get water_add_bottle => '+500 ml बोतल';

  @override
  String get water_custom_amount => 'अनुकूलन रकम';

  @override
  String get water_reminder_tip =>
      'स्थिर ऊर्जाको लागि दिनभर नियमित रूपमा पानी पिउनुहोस्।';

  @override
  String water_logged_toast(Object amount) {
    return 'लगाइएको $amount ml पानी 💧';
  }

  @override
  String get workout_title => 'कसरत लग';

  @override
  String get workout_add_exercise => 'कसरत थप्नुहोस्';

  @override
  String get workout_cardio => 'कार्डियो';

  @override
  String get workout_strength => 'शक्ति';

  @override
  String get workout_yoga => 'योग र लचकता';

  @override
  String get workout_duration => 'अवधि';

  @override
  String get workout_intensity => 'तीव्रता';

  @override
  String get workout_calories_burned => 'क्यालोरी जल्यो';

  @override
  String get workout_empty => 'आज कुनै कसरत लगाइएको छैन';

  @override
  String get workout_save_success => 'कसरत सफलतापूर्वक सुरक्षित गरियो!';

  @override
  String get workout_type => 'कसरत प्रकार';

  @override
  String get workout_notes => 'नोट र प्रतिबिम्ब';

  @override
  String get health_overview_title => 'स्वास्थ्य र महत्वपूर्ण';

  @override
  String get health_heart_rate => 'मुटुको दर';

  @override
  String get health_blood_oxygen => 'रक्त अक्सिजन (SpO2)';

  @override
  String get health_blood_pressure => 'रक्तचाप';

  @override
  String get health_blood_glucose => 'रगत ग्लुकोज';

  @override
  String get health_body_temperature => 'शरीरको तापक्रम';

  @override
  String get health_sleep_tracking => 'निद्रा ट्र्याकिंग';

  @override
  String get health_weight_tracking => 'वजन र शारीरिक संरचना';

  @override
  String get health_waist_hip => 'कम्मर-देखि-हिप अनुपात';

  @override
  String get health_devices_hub => 'यन्त्रहरू र स्मार्टवाच हब';

  @override
  String get health_sync_now => 'स्वास्थ्य डेटा सिंक गर्नुहोस्';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'पछिल्लो पटक सिंक गरिएको: $time';
  }

  @override
  String get health_manual_entry => 'म्यानुअल स्वास्थ्य प्रविष्टि';

  @override
  String get health_metric_detail => 'मेट्रिक विवरणहरू';

  @override
  String get health_connected_sensors => 'जडान गरिएको स्वास्थ्य सेन्सरहरू';

  @override
  String get plan_title => 'दैनिक योजना';

  @override
  String get plan_weekly_title => 'साप्ताहिक कल्याण योजना';

  @override
  String get plan_calorie_target => 'क्यालोरी लक्ष्य';

  @override
  String get plan_water_target => 'हाइड्रेसन लक्ष्य';

  @override
  String get plan_step_target => 'चरण लक्ष्य';

  @override
  String get plan_sleep_target => 'निद्रा लक्ष्य';

  @override
  String get plan_meal_suggestions => 'भोजन सुझावहरू';

  @override
  String get plan_healthy_habits => 'स्वस्थ बानी र सुझावहरू';

  @override
  String get plan_coach_advice => 'Bloomi AI कोच सिफारिसहरू';

  @override
  String get plan_generated_title => 'निजीकृत दैनिक तालिका';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'प्रोफाइल सम्पादन गर्नुहोस्';

  @override
  String get profile_name => 'नाम';

  @override
  String get profile_age => 'उमेर';

  @override
  String get profile_gender => 'लिङ्ग';

  @override
  String get profile_height => 'उचाइ';

  @override
  String get profile_weight => 'वजन';

  @override
  String get profile_goal => 'प्राथमिक लक्ष्य';

  @override
  String get profile_activity_level => 'गतिविधि स्तर';

  @override
  String get profile_stats => 'मेरो स्वास्थ्य तथ्याङ्क';

  @override
  String get profile_saved => 'प्रोफाइल सफलतापूर्वक अपडेट गरियो';

  @override
  String get profile_bmi => 'बडी मास इन्डेक्स (BMI)';

  @override
  String get profile_membership => 'सदस्यता';

  @override
  String get settings => 'सेटिङहरू';

  @override
  String get preferences_habits => 'प्राथमिकता र बानीहरू';

  @override
  String get appearance_theme => 'उपस्थिति र विषयवस्तु';

  @override
  String get appearance_theme_sub =>
      'गाढा, प्रकाश, प्रणाली मोड र एप पृष्ठभूमि विकल्पहरू';

  @override
  String get permissions => 'अनुमति र प्रणाली पहुँच';

  @override
  String get permissions_sub =>
      'स्वास्थ्य जडान, चरण सेन्सर, GPS, सूचनाहरू र क्यामेरा';

  @override
  String get reminders_notifications => 'रिमाइन्डर र सूचनाहरू';

  @override
  String get reminders_sub =>
      'खाना समय, पानी, वजन चेक-इन र सुत्ने समय रिमाइन्डरहरू';

  @override
  String get units_of_measurement => 'मापन को एकाइहरू';

  @override
  String get units_sub =>
      'मेट्रिक (kg, cm, ml, km) वा इम्पेरियल (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'एप भाषा';

  @override
  String get language_sub =>
      'अंग्रेजी, हिन्दी (हिन्दी), हिंग्लिश र १९५+ विश्वव्यापी भाषाहरू';

  @override
  String get home_screen_widgets => 'होम स्क्रिन विजेटहरू';

  @override
  String get widgets_sub =>
      'लाइभ एन्ड्रोइड विजेटहरू: हब, चरणहरू, पानी, पोषण र मस्कट';

  @override
  String get wear_os_watch_app => 'OS वाच एप लगाउनुहोस्';

  @override
  String get wear_os_sub =>
      'स्मार्टवाच साथी, टाइलहरू, जटिलताहरू र प्रत्यक्ष महत्त्वपूर्ण';

  @override
  String get goals_wellness => 'लक्ष्य र कल्याण अन्तर्दृष्टि';

  @override
  String get nutrition_targets => 'पोषण लक्ष्य र म्याक्रो विभाजन';

  @override
  String get nutrition_targets_sub =>
      'क्यालोरी लक्ष्य, प्रोटीन, कार्बोहाइड्रेट, फ्याट र पानी लक्ष्य';

  @override
  String get weekly_recap => 'साप्ताहिक वेलनेस रिक्याप';

  @override
  String get weekly_recap_sub =>
      '7-दिन क्यालोरी औसत, म्याक्रो अनुपात र उत्तम दिन';

  @override
  String get streaks_milestones => 'स्ट्रेक्स र माइलस्टोनहरू';

  @override
  String get streaks_sub => 'सक्रिय ब्लोसम स्ट्रिक्स, ब्याज र उपलब्धिहरू';

  @override
  String get connected_devices => 'जडान गरिएका उपकरणहरू र इकोसिस्टम';

  @override
  String get devices_hub => 'यन्त्रहरू र स्मार्टवाच हब';

  @override
  String get devices_hub_sub =>
      'स्वास्थ्य जडान, ग्यालेक्सी वाच, पिक्सेल वाच, गार्मिन';

  @override
  String get surroundings_weather => 'परिवेश र मौसम';

  @override
  String get surroundings_sub =>
      'वायु गुणस्तर (AQI), UV सूचकांक र मौसम हाइड्रेशन सुझावहरू';

  @override
  String get bloomi_pro => 'ब्लूमी प्रो सदस्यता';

  @override
  String get bloomi_pro_sub =>
      'एआई प्लान कोच, 5 होम स्क्रिन विजेटहरू र महत्त्वपूर्ण ट्र्याकिङ';

  @override
  String get about_security => 'बारेमा र सुरक्षा';

  @override
  String get about_bloomi => 'Bloomi को बारेमा';

  @override
  String get about_bloomi_sub =>
      'विनिर्देशहरू, संस्करण, विशेषताहरू निर्माण गर्नुहोस्';

  @override
  String get privacy_policy => 'गोपनीयता नीति';

  @override
  String get privacy_policy_sub => 'अफलाइन-पहिलो, अन-यन्त्र डेटा संरचना';

  @override
  String get terms_conditions => 'नियम र सर्तहरू';

  @override
  String get terms_conditions_sub => 'सेवा सर्तहरू र कल्याण दिशानिर्देशहरू';

  @override
  String get delete_account => 'खाता र डाटा मेटाउनुहोस्';

  @override
  String get delete_account_sub =>
      'स्थानीय SQLite डाटा र क्लाउड ब्याकअपहरू अपरिवर्तनीय रूपमा मेटाउनुहोस्';

  @override
  String get healthy_habits => 'कोमल, स्थायी कल्याण बानीहरू निर्माण गर्नुहोस्';

  @override
  String get all_logs => 'मेरो ट्र्याक गरिएको डाटा र लगहरू';

  @override
  String get search_language => 'भाषा वा नेटिभ लिपिद्वारा खोज्नुहोस्...';

  @override
  String get languages_available => 'भाषाहरू उपलब्ध छन्';

  @override
  String get no_matching_languages => 'कुनै मिल्दो भाषाहरू फेला परेनन्';

  @override
  String get try_searching =>
      'नेटिभ लिपि वा अंग्रेजी हिज्जे द्वारा खोजी प्रयास गर्नुहोस्';

  @override
  String get partially_translated => 'आंशिक अनुवाद';

  @override
  String get complete_translation => 'पूरा';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'भाषा $name मा सेट गरियो ( $nativeName )';
  }

  @override
  String get surroundings_title => 'परिवेश र वातावरण';

  @override
  String get surroundings_aqi => 'वायु गुणस्तर सूचकांक';

  @override
  String get surroundings_uv => 'UV सूचकांक';

  @override
  String get surroundings_temp => 'तापक्रम';

  @override
  String get surroundings_humidity => 'आर्द्रता';

  @override
  String get surroundings_hydration_advice =>
      'वर्तमान मौसममा राम्रोसँग हाइड्रेटेड रहनुहोस्।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'खाना खोज्नुहोस्';

  @override
  String get food_quick_barcode => 'स्क्यान बारकोड 👑';

  @override
  String get food_quick_water => 'पानी थप्नुहोस्';

  @override
  String get food_quick_custom => 'कस्टम खाना';

  @override
  String get surroundings_good => 'राम्रो';

  @override
  String get surroundings_moderate => 'मध्यम';

  @override
  String get surroundings_unhealthy => 'अस्वस्थ';

  @override
  String get notifications_title => 'सूचनाहरू र अलर्टहरू';

  @override
  String get notifications_empty => 'कुनै नयाँ सूचनाहरू छैनन्';

  @override
  String get notifications_mark_read => 'सबैलाई पढिएको रूपमा चिन्ह लगाउनुहोस्';

  @override
  String get notifications_clear => 'सबै खाली गर्नुहोस्';

  @override
  String get reminders => 'रिमाइन्डर सेटिङहरू';

  @override
  String get notifications => 'सूचनाहरू';

  @override
  String get reminders_breakfast_title => 'ब्रेकफास्ट रिमाइन्डर 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'शुभ प्रभात! $time मा पौष्टिक नाश्ताको लागि समय।';
  }

  @override
  String get reminders_lunch_title => 'लंच रिमाइन्डर 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'रोक्नुहोस् र $time मा सन्तुलित, ध्यानपूर्वक खाजाको आनन्द लिनुहोस्।';
  }

  @override
  String get reminders_dinner_title => 'डिनर रिमाइन्डर 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'हल्का, सन्तोषजनक डिनरको लागि समय $time मा।';
  }

  @override
  String get reminders_water_title => 'हाइड्रेशन नज 💧';

  @override
  String reminders_water_body(Object time) {
    return 'एक गिलास ताजा पानी पिउने समय! ( $time )';
  }

  @override
  String get reminders_weight_title => 'साप्ताहिक तौल-इन ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) मा तपाईको साप्ताहिक बडी मेट्रिक्स ट्र्याक गर्नुहोस्।';
  }

  @override
  String get reminders_sleep_title => 'सुत्ने समय विन्ड-डाउन 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'आराम गर्नुहोस् र आरामदायी निद्राको लागि तयारी गर्नुहोस् ( $time )।';
  }

  @override
  String get onboard_welcome => 'Bloomi मा स्वागत छ';

  @override
  String get onboard_sub =>
      'तपाईंको मैत्री, अफलाइन-पहिलो स्वास्थ्य र पोषण साथी।';

  @override
  String get onboard_get_started => 'सुरु गर्नुहोस्';

  @override
  String get onboard_sign_in => 'साइन इन गर्नुहोस्';

  @override
  String get onboard_skip => 'छोड्नुहोस्';

  @override
  String get onboard_choose_goal => 'तपाईको प्राथमिक स्वास्थ्य लक्ष्य के हो?';

  @override
  String get onboard_goal_weight_loss => 'कोमल वजन घटाने';

  @override
  String get onboard_goal_muscle => 'मांसपेशी वृद्धि र शक्ति';

  @override
  String get onboard_goal_energy => 'दैनिक ऊर्जा र जीवन शक्ति';

  @override
  String get onboard_goal_habits => 'स्वस्थ दिमागी खाना';

  @override
  String get onboard_about_you => 'हामीलाई आफ्नो बारेमा बताउनुहोस्';

  @override
  String get onboard_lifestyle => 'तपाईंको दैनिक दिनचर्या';

  @override
  String get onboard_permissions_title => 'अनुमति र प्रणाली पहुँच';

  @override
  String get onboard_permissions_sub =>
      'सिंक चरणहरू, कसरत, र रिमाइन्डरहरूमा पहुँच प्रदान गर्नुहोस्।';

  @override
  String get onboard_plan_ready_title => 'तपाईंको अनुकूलन योजना तयार छ!';

  @override
  String get onboard_plan_ready_sub =>
      'हामीले केवल तपाईंको लागि कोमल, व्यक्तिगत पोषण र कल्याण रोडम्याप तयार गरेका छौं।';

  @override
  String get onboard_enter_bloomi => 'Bloomi प्रविष्ट गर्नुहोस्';

  @override
  String get insights_weekly_report => 'साप्ताहिक वेलनेस रिक्याप';

  @override
  String insights_best_day(Object day) {
    return 'उत्कृष्ट स्थिरता दिन: $day';
  }

  @override
  String get insights_streaks_badges => 'स्ट्रेक्स र माइलस्टोनहरू';

  @override
  String insights_unlocked_on(Object date) {
    return '$date मा अनलक';
  }

  @override
  String get insights_keep_going => 'उत्कृष्ट प्रगति जारी राख्नुहोस्!';

  @override
  String get widgets_title => 'गृह स्क्रिन विजेटहरू';

  @override
  String widgets_active_count(Object count) {
    return 'सक्रिय विजेटहरू: $count';
  }

  @override
  String get widgets_hub_title => 'ब्लूमी वेलनेस हब';

  @override
  String get widgets_steps_title => 'चरण र सक्रिय घण्टी';

  @override
  String get widgets_water_title => 'हाइड्रेशन द्रुत लग';

  @override
  String get widgets_mascot_title => 'ब्लूमी मस्कट साथी';

  @override
  String get wear_os_title => 'ओएस स्मार्टवाच लगाउनुहोस्';

  @override
  String get wear_os_connected => 'Watch मा जडान गरियो';

  @override
  String get wear_os_sync => 'वाच डेटा सिंक गर्नुहोस्';

  @override
  String get theme_title => 'उपस्थिति र विषयवस्तु';

  @override
  String get theme_mode => 'थिम मोड';

  @override
  String get theme_light => 'लाइट';

  @override
  String get theme_dark => 'डार्क';

  @override
  String get theme_system => 'सिस्टम';

  @override
  String get theme_background_palette => 'पृष्ठभूमि प्यालेट';

  @override
  String get units_title => 'मापन को एकाइहरू';

  @override
  String get units_metric => 'मेट्रिक (kg, cm, ml)';

  @override
  String get units_imperial => 'इम्पेरियल (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'ड्यासबोर्ड लोड गर्न असमर्थ';

  @override
  String get home_health_permission_req => 'स्वास्थ्य जडान अनुमति आवश्यक छ';

  @override
  String get home_health_permission_desc =>
      'Bloomi लाई वास्तविक चरणहरू, हृदय गति, र वास्तविक समयमा मोबाइल घर विजेटहरू सिंक गर्न स्वास्थ्य जडान अनुमति चाहिन्छ।';

  @override
  String get home_allow_health => 'स्वास्थ्य जडानलाई अनुमति दिनुहोस्';

  @override
  String get home_ready_mindful_day => 'ध्यान दिनको लागि तयार हुनुहुन्छ? ✨';

  @override
  String get home_quick_add => 'द्रुत थप्नुहोस्';

  @override
  String get home_live_gps => 'प्रत्यक्ष जीपीएस';

  @override
  String get home_calories_remaining_label => 'क्यालोरी बाँकी छ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'खाएको: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker =>
      'वाटर ट्र्याकरको लागि ट्याप गर्नुहोस् 💧';

  @override
  String get home_water_goal_reached => 'दैनिक लक्ष्य 🎉 पुग्यो';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'दैनिक लक्ष्यमा $remaining ml';
  }

  @override
  String get home_details => 'विवरणहरू';

  @override
  String get home_upgrade_plan_desc =>
      'व्यक्तिगत दैनिक लक्ष्य र AI योजना अनलक गर्न अपग्रेड गर्नुहोस्';

  @override
  String get home_unlock => 'अनलक गर्नुहोस् 👑';

  @override
  String get home_quick_log_hint =>
      'चाँडै एक कल्याण प्रविष्टि रेकर्ड गर्नुहोस्';

  @override
  String get food_serving_size => 'सेवा आकार';

  @override
  String get food_serving_grams => 'सेवा गर्दै (g)';

  @override
  String get food_number_servings => 'सेवाहरूको संख्या';

  @override
  String get food_calories_per_serving => 'प्रति सेवा क्यालोरी';

  @override
  String get food_recipe_ingredients => 'सामाग्री';

  @override
  String get food_recipe_add_ingredient => 'अवयव थप्नुहोस्';

  @override
  String get food_recipe_directions => 'निर्देशन र नोटहरू';

  @override
  String get food_recipe_total => 'कुल नुस्खा पोषण';

  @override
  String get food_recipe_per_serving => 'प्रति सेवा पोषण';

  @override
  String get food_recipe_saved_toast =>
      'अनुकूलन खाना सफलतापूर्वक सुरक्षित गरियो!';

  @override
  String get food_barcode_found => 'उत्पादन भेटियो!';

  @override
  String get food_barcode_not_found_desc =>
      'हामीले यो बारकोड खुला डाटाबेसमा फेला पार्न सकेनौं। तपाईं यसलाई अनुकूलन खानाको रूपमा थप्न सक्नुहुन्छ।';

  @override
  String get food_add_custom_btn => 'कस्टम खाना थप्नुहोस्';

  @override
  String get food_scan_again => 'फेरि स्क्यान गर्नुहोस्';

  @override
  String get food_review_items =>
      'पत्ता लगाइएका खाद्य पदार्थहरूको समीक्षा गर्नुहोस्';

  @override
  String get food_review_hint =>
      'परिमाणहरू समायोजन गर्नुहोस् वा कुनै पनि अपरिचित वस्तु हटाउनुहोस्';

  @override
  String get food_log_selected => 'चयन गरिएका खानाहरू लग गर्नुहोस्';

  @override
  String get food_favourites_title => 'मनपर्ने खानाहरू';

  @override
  String get food_recent_title => 'भर्खरका खानाहरू';

  @override
  String get food_no_favourites =>
      'अझै मनपर्ने खानाहरू छैनन्। यहाँ बचत गर्न कुनै पनि खानामा हृदय ट्याप गर्नुहोस्।';

  @override
  String get food_no_recents =>
      'हालसालै लग गरिएको कुनै पनि खाद्य पदार्थ फेला परेन।';

  @override
  String get food_nutrition_details_title => 'दैनिक पोषण विवरण';

  @override
  String get food_macro_protein_label => 'प्रोटीन ब्रेकडाउन';

  @override
  String get food_macro_carbs_label => 'कार्बोहाइड्रेट ब्रेकडाउन';

  @override
  String get food_macro_fat_label => 'फ्याट ब्रेकडाउन';

  @override
  String get food_macro_fiber_label => 'फाइबर ब्रेकडाउन';

  @override
  String get food_daily_target_comparison => 'लक्ष्य तुलना';

  @override
  String food_target_label(Object target) {
    return 'लक्ष्य: $target';
  }

  @override
  String get food_edit_entry => 'डायरी प्रविष्टि सम्पादन गर्नुहोस्';

  @override
  String get food_delete_entry => 'प्रविष्टि मेटाउनुहोस्';

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
    return '$current को $target एमएल';
  }

  @override
  String get water_intake_history => 'आजको पानी लगहरू';

  @override
  String get water_no_logs_today =>
      'आज पनि पानी परेको छैन । हाइड्रेट गर्नुहोस् र द्रुत थप बटन ट्याप गर्नुहोस्!';

  @override
  String get water_adjust_goal => 'दैनिक लक्ष्य समायोजन गर्नुहोस्';

  @override
  String get health_connect_banner => 'स्वास्थ्य जडानमा जोडिएको छ';

  @override
  String get health_vitals_summary => 'दैनिक स्वास्थ्य महत्वपूर्ण';

  @override
  String get health_latest_heart_rate => 'पछिल्लो मुटुको दर';

  @override
  String get health_latest_bp => 'रक्तचाप';

  @override
  String get health_latest_spo2 => 'रगत अक्सिजन';

  @override
  String get health_latest_glucose => 'रगत ग्लुकोज';

  @override
  String get health_latest_weight => 'वजन';

  @override
  String get health_latest_sleep => 'निद्रा अवधि';

  @override
  String get health_add_manual => 'म्यानुअल मापन थप्नुहोस्';

  @override
  String get health_history_trends => 'ऐतिहासिक प्रवृत्तिहरू';

  @override
  String get health_sync_success => 'स्वास्थ्य डेटा सफलतापूर्वक सिंक भयो!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours घण्टा $mins मिनेट';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val किग्रा';
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
  String get health_devices_title => 'जडान गरिएका यन्त्रहरू र पहिरन योग्यहरू';

  @override
  String get health_devices_desc =>
      'जोडी स्मार्ट घडीहरू, फिटनेस ट्र्याकरहरू, र स्वास्थ्य सेन्सरहरू प्रबन्ध गर्नुहोस्।';

  @override
  String get health_workout_editor_title => 'कसरत सम्पादन गर्नुहोस्';

  @override
  String get health_workout_name_label => 'कसरत नाम';

  @override
  String get health_workout_duration_label => 'अवधि (मिनेट)';

  @override
  String get health_workout_calories_label => 'अनुमानित क्यालोरी (kcal)';

  @override
  String get health_workout_date_label => 'मिति र समय';

  @override
  String get plan_daily_wellness_roadmap => 'तपाईंको निजीकृत रोडम्याप';

  @override
  String get plan_morning_routine => 'बिहानको दिनचर्या';

  @override
  String get plan_afternoon_routine => 'मध्यान्ह कल्याण';

  @override
  String get plan_evening_routine => 'साँझ पवन-डाउन';

  @override
  String get plan_coach_badge => 'ब्लूमी एआई कोच';

  @override
  String get plan_weekly_overview => '७-दिने स्वास्थ्य फोकस';

  @override
  String get plan_targets_title => 'कल्याण लक्ष्य र लक्ष्यहरू';

  @override
  String get plan_calorie_budget_label => 'दैनिक क्यालोरी बजेट';

  @override
  String get plan_water_budget_label => 'दैनिक पानी लक्ष्य';

  @override
  String get plan_step_budget_label => 'दैनिक चरण लक्ष्य';

  @override
  String get plan_macro_split_label => 'म्याक्रोन्यूट्रिएन्ट अनुपात';

  @override
  String get profile_personal_details => 'व्यक्तिगत विवरणहरू';

  @override
  String get profile_body_stats => 'शारीरिक मापन';

  @override
  String get profile_app_preferences => 'प्राथमिकताहरू र एप सेटिङहरू';

  @override
  String get profile_edit_name_hint => 'तिम्रो नाम';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'उचाई ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'तौल ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'उमेर';

  @override
  String get profile_gender_male => 'पुरुष';

  @override
  String get profile_gender_female => 'महिला';

  @override
  String get profile_gender_other => 'अन्य / भन्न रुचाउनुहोस्';

  @override
  String get profile_activity_sedentary =>
      'आसीन (थोरैदेखि कुनै व्यायाम नगर्ने)';

  @override
  String get profile_activity_light => 'हल्का सक्रिय (1-3 दिन/हप्ता)';

  @override
  String get profile_activity_moderate => 'मध्यम सक्रिय (3-5 दिन / हप्ता)';

  @override
  String get profile_activity_very => 'धेरै सक्रिय (6-7 दिन/हप्ता)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion एप';

  @override
  String get settings_wear_os_desc =>
      'क्यालोरी, पानी र चरणहरू हेर्न आफ्नो Wear OS घडीमा Bloomi टाइल र जटिलता स्थापना गर्नुहोस्।';

  @override
  String get settings_widgets_header => 'अन्तरक्रियात्मक एन्ड्रोइड विजेटहरू';

  @override
  String get settings_widgets_desc =>
      'तत्काल अद्यावधिकहरूका लागि तपाईंको उपकरणको गृह स्क्रिनमा वास्तविक-समय विजेटहरू पिन गर्नुहोस्।';

  @override
  String get settings_about_header => 'Bloomi को बारेमा';

  @override
  String get settings_about_version => 'संस्करण';

  @override
  String get settings_about_build => '100 बनाउनुहोस्';

  @override
  String get settings_about_credits =>
      'ध्यानपूर्वक, स्वस्थ जीवनको लागि हेरचाहको साथ बनाइएको।';

  @override
  String get settings_terms_header => 'नियम र सर्तहरू';

  @override
  String get settings_privacy_header => 'गोपनीयता नीति';

  @override
  String get settings_delete_header => 'खाता र डाटा मेटाउनुहोस्';

  @override
  String get settings_delete_warning =>
      'यो कार्य अन्डू गर्न सकिँदैन। तपाईंका सबै खाना, कसरत, महत्त्वपूर्ण र प्रोफाइल सदाका लागि मेटिने छन्।';

  @override
  String get settings_delete_confirm_btn => 'स्थायी रूपमा मेटाउनुहोस्';

  @override
  String get onboard_welcome_headline => 'Bloomi ✨ मा स्वागत छ';

  @override
  String get onboard_welcome_tagline =>
      'तपाईंको जीवन वरपर डिजाइन गरिएको कोमल, सजग कल्याण ट्र्याकिङ।';

  @override
  String get onboard_step_about => 'तिम्रो बारेमा';

  @override
  String get onboard_step_goals => 'तपाईंको लक्ष्यहरू';

  @override
  String get onboard_step_lifestyle => 'दैनिक बानीहरू';

  @override
  String get onboard_step_permissions => 'अनुमतिहरू';

  @override
  String get onboard_step_plan => 'तयार!';

  @override
  String get onboard_health_connect_perm => 'स्वास्थ्य जडान पहुँच';

  @override
  String get onboard_step_sensors_perm => 'चरण काउन्टर सेन्सर';

  @override
  String get onboard_notif_perm => 'ध्यान दिएर रिमाइन्डर र सूचनाहरू';

  @override
  String get onboard_camera_perm => 'क्यामेरा (बारकोड र फूड स्क्यानर)';

  @override
  String get onboard_grant_permissions => 'अनुमतिहरू प्रदान गर्नुहोस्';

  @override
  String get onboard_continue_dashboard => 'ड्यासबोर्ड खोल्नुहोस्';

  @override
  String get notif_channel_hydration_name => 'हाइड्रेशन नजहरू';

  @override
  String get notif_channel_hydration_desc => 'दिनभरि कोमल पानी रिमाइन्डरहरू';

  @override
  String get notif_channel_nutrition_name => 'खाना र पोषण रिमाइन्डरहरू';

  @override
  String get notif_channel_nutrition_desc =>
      'ब्रेकफास्ट, लंच, र डिनर रिमाइन्डर अलर्टहरू';

  @override
  String get notif_channel_steps_name => 'चरण माइलस्टोनहरू';

  @override
  String get notif_channel_steps_desc => 'दैनिक चरण लक्ष्यमा पुग्दा उत्सवहरू';

  @override
  String get notif_channel_vitals_name => 'स्वास्थ्य र महत्वपूर्ण जाँचहरू';

  @override
  String get notif_channel_vitals_desc =>
      'वजन र सुत्ने समय विन्ड-डाउन रिमाइन्डरहरू';

  @override
  String get notif_action_log_water => '💧 लग +250ml';

  @override
  String get notif_action_snooze => 'स्नुज १५ मि';

  @override
  String get notif_action_log_meal => '🥗 लग भोजन';

  @override
  String get language => 'भाषा';

  @override
  String get share => 'साझा गर्नुहोस्';

  @override
  String common_days(Object count) {
    return '$count दिन अघि';
  }
}
