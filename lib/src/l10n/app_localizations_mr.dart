// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get app_name => 'ब्लूमी';

  @override
  String get nav_home => 'घर';

  @override
  String get nav_today => 'आज';

  @override
  String get nav_plan => 'योजना';

  @override
  String get nav_food => 'अन्न';

  @override
  String get nav_food_diary => 'अन्न डायरी';

  @override
  String get nav_workout => 'कसरत लॉग';

  @override
  String get nav_health => 'आरोग्य';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get save => 'सेव्ह करा';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get delete => 'हटवा';

  @override
  String get edit => 'संपादन';

  @override
  String get done => 'पूर्ण झाले';

  @override
  String get close => 'बंद करा';

  @override
  String get back => 'मागे';

  @override
  String get next => 'पुढे';

  @override
  String get continue_btn => 'चालू ठेवा';

  @override
  String get confirm => 'पुष्टी करा';

  @override
  String get search => 'शोधा';

  @override
  String get filter => 'फिल्टर करा';

  @override
  String get all => 'सर्व';

  @override
  String get active => 'सक्रिय';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'काल';

  @override
  String get tomorrow => 'उद्या';

  @override
  String get add => 'ॲड';

  @override
  String get remove => 'काढा';

  @override
  String get refresh => 'रिफ्रेश करा';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get error => 'त्रुटी';

  @override
  String get success => 'यश';

  @override
  String get loading => 'लोड करत आहे...';

  @override
  String get no_data => 'कोणताही डेटा उपलब्ध नाही';

  @override
  String get offline => 'ऑफलाइन मोड';

  @override
  String get offline_sub => 'पुन्हा कनेक्ट झाल्यावर बदल समक्रमित केले जातील';

  @override
  String get undo => 'पूर्ववत करा';

  @override
  String get portion => 'भाग';

  @override
  String get quantity => 'प्रमाण';

  @override
  String get unit => 'युनिट';

  @override
  String get clear => 'साफ';

  @override
  String get select => 'निवडा';

  @override
  String get apply => 'लागू करा';

  @override
  String get reset => 'रीसेट करा';

  @override
  String get ok => 'ठीक आहे';

  @override
  String get yes => 'होय';

  @override
  String get no => 'नाही';

  @override
  String get optional => 'ऐच्छिक';

  @override
  String get calories => 'कॅलरीज';

  @override
  String get protein => 'प्रथिने';

  @override
  String get carbs => 'कार्ब्स';

  @override
  String get fat => 'चरबी';

  @override
  String get fiber => 'फायबर';

  @override
  String get water => 'पाणी';

  @override
  String get steps => 'पायऱ्या';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'मिली';

  @override
  String get kilograms => 'किलो';

  @override
  String get pounds => 'एलबीएस';

  @override
  String get centimeters => 'सेमी';

  @override
  String get inches => 'मध्ये';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'तास';

  @override
  String get minutes => 'मि';

  @override
  String get serving => 'सेवा देत आहे';

  @override
  String get servings => 'सर्विंग्स';

  @override
  String get serving_size => 'सर्व्हिंग आकार';

  @override
  String get per_100g => 'प्रति 100 ग्रॅम';

  @override
  String get india => 'भारत';

  @override
  String get asia => 'आशिया';

  @override
  String get europe => 'युरोप';

  @override
  String get middle_east => 'मध्य पूर्व';

  @override
  String get africa => 'आफ्रिका';

  @override
  String get americas => 'अमेरिका';

  @override
  String get home_title => 'घर';

  @override
  String get home_greeting_morning => 'शुभ सकाळ';

  @override
  String get home_greeting_afternoon => 'शुभ दुपार';

  @override
  String get home_greeting_evening => 'शुभ संध्याकाळ';

  @override
  String get home_streak_title => 'ब्लॉसम स्ट्रीक';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवसांचा सिलसिला',
      one: '1 दिवसाचा सिलसिला',
      zero: '0 दिवसांचा सिलसिला',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'जाळले';

  @override
  String get home_calories_budget => 'कॅलरी बजेट';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal शिल्लक';
  }

  @override
  String get home_water_title => 'दैनिक हायड्रेशन';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target मिली';
  }

  @override
  String get home_steps_title => 'पावले चालली';

  @override
  String get home_quick_actions => 'जलद क्रिया';

  @override
  String get home_log_meal => 'लॉग जेवण';

  @override
  String get home_log_water => 'लॉग पाणी';

  @override
  String get home_log_workout => 'लॉग वर्कआउट';

  @override
  String get home_log_weight => 'लॉग वजन';

  @override
  String get home_insights_title => 'आजचे अंतर्दृष्टी';

  @override
  String get home_quote => 'लहान निरोगी निवडी बहरणारी परिवर्तने निर्माण करतात.';

  @override
  String get home_ai_coach_tip => 'ब्लूमी एआय प्रशिक्षक';

  @override
  String get home_surroundings => 'परिसर आणि हवा';

  @override
  String get home_notifications => 'नोटिफिकेशन्स';

  @override
  String get home_daily_score => 'दैनिक कल्याण स्कोअर';

  @override
  String get home_view_all => 'सर्व पहा';

  @override
  String get food_diary_title => 'अन्न डायरी';

  @override
  String get food_breakfast => 'नाश्ता';

  @override
  String get food_lunch => 'दुपारचे जेवण';

  @override
  String get food_dinner => 'रात्रीचे जेवण';

  @override
  String get food_snacks => 'स्नॅक्स';

  @override
  String get food_add_food => 'अन्न जोडा';

  @override
  String get food_edit_food => 'अन्न संपादित करा';

  @override
  String get food_add_breakfast => 'नाश्ता जोडा';

  @override
  String get food_add_lunch => 'लंच जोडा';

  @override
  String get food_add_dinner => 'रात्रीचे जेवण जोडा';

  @override
  String get food_add_snack => 'स्नॅक घाला';

  @override
  String get food_total_calories => 'एकूण कॅलरीज';

  @override
  String get food_empty_meal =>
      'या जेवणासाठी अद्याप कोणतेही पदार्थ लॉग केलेले नाहीत';

  @override
  String get food_empty_diary => 'या दिवसासाठी कोणतेही जेवण लॉग केलेले नाही';

  @override
  String get food_log_first_meal =>
      'तुमचे पहिले स्वादिष्ट जेवण लॉग करण्यासाठी + वर टॅप करा';

  @override
  String get food_quick_add => 'द्रुत जोडा';

  @override
  String get food_search_hint => 'पदार्थ, फळे, डाळ, रोटी शोधा...';

  @override
  String get food_custom_recipe => 'सानुकूल अन्न आणि कृती';

  @override
  String get food_scan_barcode => 'बारकोड स्कॅन करा';

  @override
  String get food_camera_scan => 'एआय फूड स्कॅनर';

  @override
  String get food_recent => 'अलीकडील खाद्यपदार्थ';

  @override
  String get food_favourites => 'आवडी';

  @override
  String get food_macro_summary => 'मॅक्रोन्यूट्रिएंट ब्रेकडाउन';

  @override
  String get food_delete_meal_confirm =>
      'तुमची खात्री आहे की तुम्ही हा आयटम काढू इच्छिता?';

  @override
  String get food_item_deleted => 'खाद्यपदार्थ काढले';

  @override
  String get food_remaining => 'बाकी';

  @override
  String get food_consumed => 'सेवन';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'खाद्यपदार्थ शोधा';

  @override
  String get foodSearch_scan_barcode => 'बारकोड स्कॅन करा';

  @override
  String get foodSearch_take_photo => 'स्नॅप फूड फोटो';

  @override
  String get foodSearch_custom_food => 'सानुकूल अन्न तयार करा';

  @override
  String get foodSearch_recent_searches => 'अलीकडील शोध';

  @override
  String get foodSearch_popular => 'लोकप्रिय पदार्थ';

  @override
  String get foodSearch_no_results =>
      'तुमच्या शोधाशी जुळणारे कोणतेही पदार्थ नाहीत';

  @override
  String get barcode_title => 'बारकोड स्कॅनर';

  @override
  String get barcode_align => 'कॅमेरा फ्रेममध्ये बारकोड संरेखित करा';

  @override
  String get barcode_not_found => 'डेटाबेसमध्ये उत्पादन आढळले नाही';

  @override
  String get barcode_premium_feature =>
      'ब्लूमी प्रो सह बारकोड स्कॅनिंग उपलब्ध आहे';

  @override
  String get camera_title => 'एआय फूड स्कॅनर';

  @override
  String get camera_tap_hint => 'तुमच्या डिशचा स्पष्ट फोटो घ्या';

  @override
  String get camera_analysing => 'फूड प्लेटचे विश्लेषण करत आहे...';

  @override
  String get camera_detected => 'सापडलेल्या वस्तू';

  @override
  String get camera_flash => 'फ्लॅश टॉगल करा';

  @override
  String get camera_retake => 'फोटो पुन्हा घ्या';

  @override
  String get camera_confirm_food => 'आयटमची पुष्टी करा';

  @override
  String get customFood_title => 'सानुकूल अन्न आणि कृती';

  @override
  String get customFood_name_hint => 'डिश किंवा घटकाचे नाव';

  @override
  String get customFood_calories_hint => 'कॅलरीज (kcal)';

  @override
  String get customFood_protein_hint => 'प्रथिने (ग्रॅ)';

  @override
  String get customFood_carbs_hint => 'कर्बोदकांमधे (ग्रॅ)';

  @override
  String get customFood_fat_hint => 'चरबी (ग्रॅ)';

  @override
  String get customFood_save => 'रेसिपी सेव्ह करा';

  @override
  String get water_tracker_title => 'पाणी ट्रॅकर';

  @override
  String get water_daily_target => 'दैनिक हायड्रेशन ध्येय';

  @override
  String get water_logged_today => 'आज लॉग इन केले';

  @override
  String get water_add_glass => '+250 मिली ग्लास';

  @override
  String get water_add_bottle => '+500 मिली बाटली';

  @override
  String get water_custom_amount => 'सानुकूल रक्कम';

  @override
  String get water_reminder_tip =>
      'स्थिर उर्जेसाठी दिवसभर नियमितपणे पाणी प्या.';

  @override
  String water_logged_toast(Object amount) {
    return 'लॉग केलेले $amount मिली पाणी 💧';
  }

  @override
  String get workout_title => 'कसरत लॉग';

  @override
  String get workout_add_exercise => 'कसरत जोडा';

  @override
  String get workout_cardio => 'कार्डिओ';

  @override
  String get workout_strength => 'ताकद';

  @override
  String get workout_yoga => 'योग आणि लवचिकता';

  @override
  String get workout_duration => 'कालावधी';

  @override
  String get workout_intensity => 'तीव्रता';

  @override
  String get workout_calories_burned => 'कॅलरीज बर्न';

  @override
  String get workout_empty => 'आज कोणतेही वर्कआउट लॉग केलेले नाहीत';

  @override
  String get workout_save_success => 'कसरत यशस्वीरित्या जतन केली!';

  @override
  String get workout_type => 'कसरत प्रकार';

  @override
  String get workout_notes => 'नोट्स आणि रिफ्लेक्शन्स';

  @override
  String get health_overview_title => 'आरोग्य आणि जीवनावश्यक गोष्टी';

  @override
  String get health_heart_rate => 'हृदय गती';

  @override
  String get health_blood_oxygen => 'रक्त ऑक्सिजन (SpO2)';

  @override
  String get health_blood_pressure => 'रक्तदाब';

  @override
  String get health_blood_glucose => 'रक्तातील ग्लुकोज';

  @override
  String get health_body_temperature => 'शरीराचे तापमान';

  @override
  String get health_sleep_tracking => 'स्लीप ट्रॅकिंग';

  @override
  String get health_weight_tracking => 'वजन आणि शरीर रचना';

  @override
  String get health_waist_hip => 'कंबर ते हिप गुणोत्तर';

  @override
  String get health_devices_hub => 'उपकरणे आणि स्मार्टवॉच हब';

  @override
  String get health_sync_now => 'आरोग्य डेटा समक्रमित करा';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'अंतिम समक्रमित: $time';
  }

  @override
  String get health_manual_entry => 'मॅन्युअल हेल्थ एंट्री';

  @override
  String get health_metric_detail => 'मेट्रिक तपशील';

  @override
  String get health_connected_sensors => 'कनेक्ट केलेले आरोग्य सेन्सर्स';

  @override
  String get plan_title => 'दैनिक योजना';

  @override
  String get plan_weekly_title => 'साप्ताहिक आरोग्य योजना';

  @override
  String get plan_calorie_target => 'कॅलरी लक्ष्य';

  @override
  String get plan_water_target => 'हायड्रेशन लक्ष्य';

  @override
  String get plan_step_target => 'पायरी लक्ष्य';

  @override
  String get plan_sleep_target => 'झोपेचे लक्ष्य';

  @override
  String get plan_meal_suggestions => 'जेवणाच्या सूचना';

  @override
  String get plan_healthy_habits => 'निरोगी सवयी आणि टिपा';

  @override
  String get plan_coach_advice => 'ब्लूमी एआय प्रशिक्षक शिफारसी';

  @override
  String get plan_generated_title => 'वैयक्तिकृत दैनिक वेळापत्रक';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'प्रोफाइल संपादित करा';

  @override
  String get profile_name => 'नाव';

  @override
  String get profile_age => 'वय';

  @override
  String get profile_gender => 'लिंग';

  @override
  String get profile_height => 'उंची';

  @override
  String get profile_weight => 'वजन';

  @override
  String get profile_goal => 'प्राथमिक ध्येय';

  @override
  String get profile_activity_level => 'क्रियाकलाप स्तर';

  @override
  String get profile_stats => 'माझी आरोग्य आकडेवारी';

  @override
  String get profile_saved => 'प्रोफाइल यशस्वीरित्या अपडेट केले';

  @override
  String get profile_bmi => 'बॉडी मास इंडेक्स (BMI)';

  @override
  String get profile_membership => 'सदस्यत्व';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get preferences_habits => 'प्राधान्ये आणि सवयी';

  @override
  String get appearance_theme => 'स्वरूप आणि थीम';

  @override
  String get appearance_theme_sub =>
      'गडद, प्रकाश, सिस्टम मोड आणि ॲप पार्श्वभूमी पर्याय';

  @override
  String get permissions => 'परवानग्या आणि सिस्टम ऍक्सेस';

  @override
  String get permissions_sub =>
      'हेल्थ कनेक्ट, स्टेप सेन्सर्स, जीपीएस, सूचना आणि कॅमेरा';

  @override
  String get reminders_notifications => 'स्मरणपत्रे आणि सूचना';

  @override
  String get reminders_sub =>
      'जेवणाच्या वेळा, पाणी, वजन तपासणे आणि झोपण्याच्या वेळेचे स्मरणपत्र';

  @override
  String get units_of_measurement => 'मोजमापाची एकके';

  @override
  String get units_sub =>
      'मेट्रिक (kg, cm, ml, km) किंवा इंपीरियल (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'ॲप भाषा';

  @override
  String get language_sub =>
      'इंग्रजी, हिंदी (हिंदी), हिंग्लिश आणि 195+ जागतिक भाषा';

  @override
  String get home_screen_widgets => 'होम स्क्रीन विजेट्स';

  @override
  String get widgets_sub =>
      'थेट Android विजेट्स: हब, पायऱ्या, पाणी, पोषण आणि शुभंकर';

  @override
  String get wear_os_watch_app => 'वेअर ओएस वॉच ॲप';

  @override
  String get wear_os_sub =>
      'स्मार्टवॉच सोबती, टाइल्स, गुंतागुंत आणि थेट जीवनावश्यक गोष्टी';

  @override
  String get goals_wellness => 'ध्येय आणि कल्याण अंतर्दृष्टी';

  @override
  String get nutrition_targets => 'पोषण लक्ष्ये आणि मॅक्रो स्प्लिट';

  @override
  String get nutrition_targets_sub =>
      'कॅलरी लक्ष्य, प्रथिने, कार्ब, चरबी आणि पाण्याचे लक्ष्य';

  @override
  String get weekly_recap => 'साप्ताहिक वेलनेस रीकॅप';

  @override
  String get weekly_recap_sub =>
      '7-दिवसांची कॅलरी सरासरी, मॅक्रो प्रमाण आणि सर्वोत्तम दिवस';

  @override
  String get streaks_milestones => 'स्ट्रीक्स आणि माइलस्टोन';

  @override
  String get streaks_sub => 'सक्रिय ब्लॉसम स्ट्रीक्स, बॅज आणि यश';

  @override
  String get connected_devices => 'कनेक्ट केलेली उपकरणे आणि इकोसिस्टम';

  @override
  String get devices_hub => 'उपकरणे आणि स्मार्टवॉच हब';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'परिसर आणि हवामान';

  @override
  String get surroundings_sub =>
      'हवेची गुणवत्ता (AQI), अतिनील निर्देशांक आणि हवामान हायड्रेशन टिप्स';

  @override
  String get bloomi_pro => 'ब्लूमी प्रो सदस्यता';

  @override
  String get bloomi_pro_sub =>
      'एआय प्लॅन कोच, 5 होम स्क्रीन विजेट्स आणि महत्त्वपूर्ण ट्रॅकिंग';

  @override
  String get about_security => 'बद्दल आणि सुरक्षितता';

  @override
  String get about_bloomi => 'ब्लूमी बद्दल';

  @override
  String get about_bloomi_sub => 'वैशिष्ट्ये, आवृत्ती, विशेषता तयार करा';

  @override
  String get privacy_policy => 'गोपनीयता धोरण';

  @override
  String get privacy_policy_sub => 'ऑफलाइन-प्रथम, ऑन-डिव्हाइस डेटा आर्किटेक्चर';

  @override
  String get terms_conditions => 'नियम आणि अटी';

  @override
  String get terms_conditions_sub => 'सेवा अटी आणि आरोग्य मार्गदर्शक तत्त्वे';

  @override
  String get delete_account => 'खाते आणि डेटा हटवा';

  @override
  String get delete_account_sub =>
      'स्थानिक SQLite डेटा आणि क्लाउड बॅकअप अपरिवर्तनीयपणे पुसून टाका';

  @override
  String get healthy_habits => 'सौम्य, चिरस्थायी निरोगीपणाच्या सवयी तयार करा';

  @override
  String get all_logs => 'माझा ट्रॅक केलेला डेटा आणि लॉग';

  @override
  String get search_language => 'भाषा किंवा मूळ लिपीनुसार शोधा...';

  @override
  String get languages_available => 'भाषा उपलब्ध';

  @override
  String get no_matching_languages => 'कोणतीही जुळणारी भाषा आढळली नाही';

  @override
  String get try_searching =>
      'मूळ लिपी किंवा इंग्रजी स्पेलिंगद्वारे शोधण्याचा प्रयत्न करा';

  @override
  String get partially_translated => 'अंशतः अनुवादित';

  @override
  String get complete_translation => 'पूर्ण';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'भाषा $name ( $nativeName ) वर सेट केली';
  }

  @override
  String get surroundings_title => 'परिसर आणि पर्यावरण';

  @override
  String get surroundings_aqi => 'हवा गुणवत्ता निर्देशांक';

  @override
  String get surroundings_uv => 'अतिनील निर्देशांक';

  @override
  String get surroundings_temp => 'तापमान';

  @override
  String get surroundings_humidity => 'आर्द्रता';

  @override
  String get surroundings_hydration_advice =>
      'सध्याच्या हवामानात चांगले हायड्रेटेड रहा.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'अन्न शोधा';

  @override
  String get food_quick_barcode => 'बारकोड स्कॅन करा 👑';

  @override
  String get food_quick_water => 'पाणी घाला';

  @override
  String get food_quick_custom => 'सानुकूल अन्न';

  @override
  String get surroundings_good => 'चांगले';

  @override
  String get surroundings_moderate => 'मध्यम';

  @override
  String get surroundings_unhealthy => 'अस्वस्थ';

  @override
  String get notifications_title => 'सूचना आणि सूचना';

  @override
  String get notifications_empty => 'कोणत्याही नवीन सूचना नाहीत';

  @override
  String get notifications_mark_read => 'सर्व वाचलेले म्हणून चिन्हांकित करा';

  @override
  String get notifications_clear => 'सर्व साफ करा';

  @override
  String get reminders => 'रिमाइंडर सेटिंग्ज';

  @override
  String get notifications => 'पुश नोटिफिकेशन्स';

  @override
  String get reminders_breakfast_title => 'नाश्त्याची आठवण 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'सुप्रभात! $time वाजता पौष्टिक नाश्त्याची वेळ.';
  }

  @override
  String get reminders_lunch_title => 'दुपारच्या जेवणाची आठवण 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'विराम द्या आणि $time येथे संतुलित, सजग लंचचा आनंद घ्या.';
  }

  @override
  String get reminders_dinner_title => 'रात्रीच्या जेवणाची आठवण 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time वाजता हलक्या, समाधानकारक रात्रीच्या जेवणाची वेळ.';
  }

  @override
  String get reminders_water_title => 'हायड्रेशन नज 💧';

  @override
  String reminders_water_body(Object time) {
    return 'ताजे ग्लास पाणी पिण्याची वेळ! ( $time )';
  }

  @override
  String get reminders_weight_title => 'साप्ताहिक वजन ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ब्लूमी ( $time ) वर आपल्या साप्ताहिक शरीर मेट्रिक्सचा मागोवा घ्या.';
  }

  @override
  String get reminders_sleep_title => 'झोपण्याची वेळ वाइंड-डाउन 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'आराम करा आणि शांत झोपेची तयारी करा ( $time ).';
  }

  @override
  String get onboard_welcome => 'ब्लूमी मध्ये आपले स्वागत आहे';

  @override
  String get onboard_sub =>
      'तुमचा मैत्रीपूर्ण, ऑफलाइन-प्रथम आरोग्य आणि पोषण सहकारी.';

  @override
  String get onboard_get_started => 'प्रारंभ करा';

  @override
  String get onboard_sign_in => 'साइन इन करा';

  @override
  String get onboard_skip => 'वगळा';

  @override
  String get onboard_choose_goal => 'तुमचे प्राथमिक आरोग्य ध्येय काय आहे?';

  @override
  String get onboard_goal_weight_loss => 'सौम्य वजन कमी होणे';

  @override
  String get onboard_goal_muscle => 'स्नायू वाढणे आणि ताकद';

  @override
  String get onboard_goal_energy => 'दैनिक ऊर्जा आणि चैतन्य';

  @override
  String get onboard_goal_habits => 'हेल्दी माइंडफुल खाणे';

  @override
  String get onboard_about_you => 'आपल्याबद्दल सांगा';

  @override
  String get onboard_lifestyle => 'तुमचा रोजचा दिनक्रम';

  @override
  String get onboard_permissions_title => 'परवानग्या आणि सिस्टम ऍक्सेस';

  @override
  String get onboard_permissions_sub =>
      'सिंक पायऱ्या, वर्कआउट्स आणि रिमाइंडर्समध्ये प्रवेश मंजूर करा.';

  @override
  String get onboard_plan_ready_title => 'तुमची सानुकूल योजना तयार आहे!';

  @override
  String get onboard_plan_ready_sub =>
      'आम्ही फक्त तुमच्यासाठी सौम्य, वैयक्तिकृत पोषण आणि निरोगीपणाचा रोडमॅप तयार केला आहे.';

  @override
  String get onboard_enter_bloomi => 'ब्लूमी प्रविष्ट करा';

  @override
  String get insights_weekly_report => 'साप्ताहिक वेलनेस रीकॅप';

  @override
  String insights_best_day(Object day) {
    return 'सर्वोत्तम सुसंगतता दिवस: $day';
  }

  @override
  String get insights_streaks_badges => 'स्ट्रीक्स आणि माइलस्टोन';

  @override
  String insights_unlocked_on(Object date) {
    return '$date वर अनलॉक केले';
  }

  @override
  String get insights_keep_going => 'विलक्षण प्रगती सुरू ठेवा!';

  @override
  String get widgets_title => 'होम स्क्रीन विजेट्स';

  @override
  String widgets_active_count(Object count) {
    return 'सक्रिय विजेट: $count';
  }

  @override
  String get widgets_hub_title => 'ब्लूमी वेलनेस हब';

  @override
  String get widgets_steps_title => 'पायऱ्या आणि सक्रिय रिंग';

  @override
  String get widgets_water_title => 'हायड्रेशन क्विक लॉग';

  @override
  String get widgets_mascot_title => 'ब्लूमी शुभंकर साथीदार';

  @override
  String get wear_os_title => 'OS स्मार्टवॉच घाला';

  @override
  String get wear_os_connected => 'वॉचशी कनेक्ट केले';

  @override
  String get wear_os_sync => 'वॉच डेटा सिंक करा';

  @override
  String get theme_title => 'स्वरूप आणि थीम';

  @override
  String get theme_mode => 'थीम मोड';

  @override
  String get theme_light => 'लाईट';

  @override
  String get theme_dark => 'डार्क';

  @override
  String get theme_system => 'सिस्टम';

  @override
  String get theme_background_palette => 'पार्श्वभूमी पॅलेट';

  @override
  String get units_title => 'मोजमापाची एकके';

  @override
  String get units_metric => 'मेट्रिक (किलो, सेमी, मिली)';

  @override
  String get units_imperial => 'इम्पीरियल (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'डॅशबोर्ड लोड करण्यात अक्षम';

  @override
  String get home_health_permission_req => 'हेल्थ कनेक्ट परवानगी आवश्यक';

  @override
  String get home_health_permission_desc =>
      'ब्लूमीला रिअल टाईम, हार्ट रेट आणि मोबाइल होम विजेट्स सिंक करण्यासाठी हेल्थ कनेक्ट परवानगी आवश्यक आहे.';

  @override
  String get home_allow_health => 'हेल्थ कनेक्टला अनुमती द्या';

  @override
  String get home_ready_mindful_day => 'सजग दिवसासाठी तयार आहात? ✨';

  @override
  String get home_quick_add => 'द्रुत जोडा';

  @override
  String get home_live_gps => 'थेट जीपीएस';

  @override
  String get home_calories_remaining_label => 'उरलेल्या कॅलरी';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'खाल्ले: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'वॉटर ट्रॅकरसाठी टॅप करा 💧';

  @override
  String get home_water_goal_reached => 'दैनिक ध्येय गाठले 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'दैनिक ध्येयासाठी $remaining मिली';
  }

  @override
  String get home_details => 'तपशील';

  @override
  String get home_upgrade_plan_desc =>
      'वैयक्तिकृत दैनिक लक्ष्य आणि AI योजना अनलॉक करण्यासाठी श्रेणीसुधारित करा';

  @override
  String get home_unlock => 'अनलॉक करा 👑';

  @override
  String get home_quick_log_hint => 'वेलनेस एंट्री पटकन रेकॉर्ड करा';

  @override
  String get food_serving_size => 'सर्व्हिंग आकार';

  @override
  String get food_serving_grams => 'सर्व्हिंग (g)';

  @override
  String get food_number_servings => 'सर्विंग्सची संख्या';

  @override
  String get food_calories_per_serving => 'प्रति सेवा कॅलरीज';

  @override
  String get food_recipe_ingredients => 'साहित्य';

  @override
  String get food_recipe_add_ingredient => 'घटक घाला';

  @override
  String get food_recipe_directions => 'सूचना आणि नोट्स';

  @override
  String get food_recipe_total => 'एकूण रेसिपी पोषण';

  @override
  String get food_recipe_per_serving => 'प्रति सेवा पोषण';

  @override
  String get food_recipe_saved_toast => 'सानुकूल अन्न यशस्वीरित्या जतन केले!';

  @override
  String get food_barcode_found => 'उत्पादन सापडले!';

  @override
  String get food_barcode_not_found_desc =>
      'आम्हाला हा बारकोड खुल्या डेटाबेसमध्ये सापडला नाही. आपण ते सानुकूल अन्न म्हणून जोडू शकता.';

  @override
  String get food_add_custom_btn => 'सानुकूल अन्न जोडा';

  @override
  String get food_scan_again => 'पुन्हा स्कॅन करा';

  @override
  String get food_review_items => 'आढळलेल्या पदार्थांचे पुनरावलोकन करा';

  @override
  String get food_review_hint =>
      'प्रमाण समायोजित करा किंवा कोणतीही अपरिचित वस्तू काढा';

  @override
  String get food_log_selected => 'निवडलेले पदार्थ लॉग करा';

  @override
  String get food_favourites_title => 'आवडते पदार्थ';

  @override
  String get food_recent_title => 'अलीकडील खाद्यपदार्थ';

  @override
  String get food_no_favourites =>
      'अद्याप कोणतेही आवडते पदार्थ नाहीत. येथे जतन करण्यासाठी कोणत्याही अन्नावर हृदयावर टॅप करा.';

  @override
  String get food_no_recents =>
      'अलीकडे लॉग केलेले कोणतेही खाद्यपदार्थ आढळले नाहीत.';

  @override
  String get food_nutrition_details_title => 'दैनिक पोषण तपशील';

  @override
  String get food_macro_protein_label => 'प्रोटीन ब्रेकडाउन';

  @override
  String get food_macro_carbs_label => 'कार्ब्स ब्रेकडाउन';

  @override
  String get food_macro_fat_label => 'फॅट ब्रेकडाउन';

  @override
  String get food_macro_fiber_label => 'फायबर ब्रेकडाउन';

  @override
  String get food_daily_target_comparison => 'लक्ष्य तुलना';

  @override
  String food_target_label(Object target) {
    return 'लक्ष्य: $target';
  }

  @override
  String get food_edit_entry => 'डायरी एंट्री संपादित करा';

  @override
  String get food_delete_entry => 'एंट्री हटवा';

  @override
  String food_grams_short(Object grams) {
    return '$grams ग्रा';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$target मिली पैकी $current';
  }

  @override
  String get water_intake_history => 'आजचे पाणी नोंदी';

  @override
  String get water_no_logs_today =>
      'आजही पाणी साचले नाही. हायड्रेट करा आणि द्रुत जोडा बटण टॅप करा!';

  @override
  String get water_adjust_goal => 'दैनिक ध्येय समायोजित करा';

  @override
  String get health_connect_banner => 'हेल्थ कनेक्टशी जोडले';

  @override
  String get health_vitals_summary => 'दैनिक आरोग्य जीवनावश्यक गोष्टी';

  @override
  String get health_latest_heart_rate => 'नवीनतम हृदय गती';

  @override
  String get health_latest_bp => 'रक्तदाब';

  @override
  String get health_latest_spo2 => 'रक्त ऑक्सिजन';

  @override
  String get health_latest_glucose => 'रक्तातील ग्लुकोज';

  @override
  String get health_latest_weight => 'वजन';

  @override
  String get health_latest_sleep => 'झोपेचा कालावधी';

  @override
  String get health_add_manual => 'मॅन्युअल मापन जोडा';

  @override
  String get health_history_trends => 'ऐतिहासिक ट्रेंड';

  @override
  String get health_sync_success => 'आरोग्य डेटा यशस्वीरित्या समक्रमित झाला!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours तास $mins मिनिटे';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val किलो';
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
  String get health_devices_title => 'कनेक्ट केलेली उपकरणे आणि वेअरेबल';

  @override
  String get health_devices_desc =>
      'पेअर केलेले स्मार्टवॉच, फिटनेस ट्रॅकर्स आणि हेल्थ सेन्सर व्यवस्थापित करा.';

  @override
  String get health_workout_editor_title => 'वर्कआउट संपादित करा';

  @override
  String get health_workout_name_label => 'कसरत नाव';

  @override
  String get health_workout_duration_label => 'कालावधी (मिनिटे)';

  @override
  String get health_workout_calories_label => 'अंदाजे कॅलरीज (kcal)';

  @override
  String get health_workout_date_label => 'तारीख आणि वेळ';

  @override
  String get plan_daily_wellness_roadmap => 'तुमचा वैयक्तिकृत रोडमॅप';

  @override
  String get plan_morning_routine => 'सकाळचा दिनक्रम';

  @override
  String get plan_afternoon_routine => 'मिडडे वेलनेस';

  @override
  String get plan_evening_routine => 'संध्याकाळ वाइंड-डाउन';

  @override
  String get plan_coach_badge => 'ब्लूमी एआय प्रशिक्षक';

  @override
  String get plan_weekly_overview => '7-दिवसीय निरोगीपणा फोकस';

  @override
  String get plan_targets_title => 'निरोगीपणाची लक्ष्ये आणि उद्दिष्टे';

  @override
  String get plan_calorie_budget_label => 'दैनिक कॅलरी बजेट';

  @override
  String get plan_water_budget_label => 'दैनिक पाणी लक्ष्य';

  @override
  String get plan_step_budget_label => 'दैनिक चरण ध्येय';

  @override
  String get plan_macro_split_label => 'मॅक्रोन्यूट्रिएंट रेशो';

  @override
  String get profile_personal_details => 'वैयक्तिक तपशील';

  @override
  String get profile_body_stats => 'शरीराचे मोजमाप';

  @override
  String get profile_app_preferences => 'प्राधान्ये आणि ॲप सेटिंग्ज';

  @override
  String get profile_edit_name_hint => 'तुमचे नाव';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'उंची ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'वजन ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'वय';

  @override
  String get profile_gender_male => 'पुरुष';

  @override
  String get profile_gender_female => 'स्त्री';

  @override
  String get profile_gender_other => 'इतर / न सांगणे पसंत करा';

  @override
  String get profile_activity_sedentary => 'गतिहीन (थोडा व्यायाम नाही)';

  @override
  String get profile_activity_light => 'हलके सक्रिय (1-3 दिवस/आठवडा)';

  @override
  String get profile_activity_moderate =>
      'माफक प्रमाणात सक्रिय (3-5 दिवस/आठवडा)';

  @override
  String get profile_activity_very => 'खूप सक्रिय (6-7 दिवस/आठवडा)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'कॅलरी, पाणी आणि पायऱ्या पाहण्यासाठी तुमच्या Wear OS घड्याळावर ब्लूमी टाइल आणि गुंतागुंत स्थापित करा.';

  @override
  String get settings_widgets_header => 'परस्परसंवादी Android विजेट्स';

  @override
  String get settings_widgets_desc =>
      'झटपट अपडेटसाठी तुमच्या डिव्हाइसच्या होम स्क्रीनवर रिअल-टाइम विजेट्स पिन करा.';

  @override
  String get settings_about_header => 'ब्लूमी बद्दल';

  @override
  String get settings_about_version => 'आवृत्ती';

  @override
  String get settings_about_build => '100 बांधा';

  @override
  String get settings_about_credits =>
      'सजग, निरोगी जीवनासाठी काळजी घेऊन तयार केलेले.';

  @override
  String get settings_terms_header => 'नियम आणि अटी';

  @override
  String get settings_privacy_header => 'गोपनीयता धोरण';

  @override
  String get settings_delete_header => 'खाते आणि डेटा हटवा';

  @override
  String get settings_delete_warning =>
      'ही क्रिया पूर्ववत केली जाऊ शकत नाही. तुमचे सर्व जेवण, वर्कआउट्स, जीवनावश्यक गोष्टी आणि प्रोफाइल कायमचे हटवले जातील.';

  @override
  String get settings_delete_confirm_btn => 'कायमचे हटवा';

  @override
  String get onboard_welcome_headline => 'ब्लूमी ✨ मध्ये आपले स्वागत आहे';

  @override
  String get onboard_welcome_tagline =>
      'तुमच्या आयुष्याभोवती डिझाइन केलेले सौम्य, सजग आरोग्य ट्रॅकिंग.';

  @override
  String get onboard_step_about => 'तुमच्याबद्दल';

  @override
  String get onboard_step_goals => 'आपले ध्येय';

  @override
  String get onboard_step_lifestyle => 'रोजच्या सवयी';

  @override
  String get onboard_step_permissions => 'परवानग्या';

  @override
  String get onboard_step_plan => 'तयार!';

  @override
  String get onboard_health_connect_perm => 'आरोग्य कनेक्ट प्रवेश';

  @override
  String get onboard_step_sensors_perm => 'स्टेप काउंटर सेन्सर';

  @override
  String get onboard_notif_perm => 'लक्षपूर्वक स्मरणपत्रे आणि सूचना';

  @override
  String get onboard_camera_perm => 'कॅमेरा (बारकोड आणि फूड स्कॅनर)';

  @override
  String get onboard_grant_permissions => 'परवानग्या द्या';

  @override
  String get onboard_continue_dashboard => 'डॅशबोर्ड उघडा';

  @override
  String get notif_channel_hydration_name => 'हायड्रेशन नज';

  @override
  String get notif_channel_hydration_desc => 'दिवसभर सौम्य पाण्याचे स्मरणपत्र';

  @override
  String get notif_channel_nutrition_name => 'जेवण आणि पोषण स्मरणपत्रे';

  @override
  String get notif_channel_nutrition_desc =>
      'न्याहारी, दुपारचे जेवण आणि रात्रीचे जेवण रिमाइंडर अलर्ट';

  @override
  String get notif_channel_steps_name => 'पायरीचे टप्पे';

  @override
  String get notif_channel_steps_desc => 'दैनंदिन पाऊल लक्ष्य गाठताना उत्सव';

  @override
  String get notif_channel_vitals_name => 'आरोग्य आणि जीवनावश्यक तपासणी';

  @override
  String get notif_channel_vitals_desc =>
      'वजन आणि निजायची वेळ वाइंड-डाउन स्मरणपत्रे';

  @override
  String get notif_action_log_water => '💧 लॉग +२५० मिली';

  @override
  String get notif_action_snooze => 'स्नूझ 15 मी';

  @override
  String get notif_action_log_meal => '🥗 लॉग जेवण';

  @override
  String get language => 'भाषा';

  @override
  String get share => 'शेअर करा';

  @override
  String common_days(Object count) {
    return '$count दिवसांपूर्वी';
  }
}
