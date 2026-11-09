// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marwari (`mwr`).
class AppLocalizationsMwr extends AppLocalizations {
  AppLocalizationsMwr([String locale = 'mwr']) : super(locale);

  @override
  String get app_name => 'ब्लूमी';

  @override
  String get nav_home => 'घर';

  @override
  String get nav_today => 'आज';

  @override
  String get nav_plan => 'योजना';

  @override
  String get nav_food => 'भोजन';

  @override
  String get nav_food_diary => 'खाणै री डायरी';

  @override
  String get nav_workout => 'कसरत रो लॉग';

  @override
  String get nav_health => 'स्वास्थ्य';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get save => 'बचाओ';

  @override
  String get cancel => 'रद्द करो';

  @override
  String get delete => 'हटाओ';

  @override
  String get edit => 'संपादित करो';

  @override
  String get done => 'होग्यो';

  @override
  String get close => 'बंद करो';

  @override
  String get back => 'पाछो';

  @override
  String get next => 'आगलो';

  @override
  String get continue_btn => 'जारी राखो';

  @override
  String get confirm => 'पुष्टि करो';

  @override
  String get search => 'खोजो';

  @override
  String get filter => 'छाणणो';

  @override
  String get all => 'सगळा';

  @override
  String get active => 'सक्रिय';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'काल';

  @override
  String get tomorrow => 'काल';

  @override
  String get add => 'जोड़ो';

  @override
  String get remove => 'हटाओ';

  @override
  String get refresh => 'ताजा करो';

  @override
  String get retry => 'फेरूं कोशिश करो';

  @override
  String get error => 'त्रुटि';

  @override
  String get success => 'सफलता';

  @override
  String get loading => 'लोड हो रियो है...';

  @override
  String get no_data => 'कोई आंकड़ा उपलब्ध कोनी';

  @override
  String get offline => 'ऑफलाइन मोड';

  @override
  String get offline_sub => 'फेर सूं जुड़बा रै बाद बदलाव सिंक हो जावैला';

  @override
  String get undo => 'पूर्ववत करो';

  @override
  String get portion => 'भाग';

  @override
  String get quantity => 'मात्रा';

  @override
  String get unit => 'इकाई';

  @override
  String get clear => 'साफ करो';

  @override
  String get select => 'चुणो';

  @override
  String get apply => 'आवेदन करो';

  @override
  String get reset => 'रीसेट करो';

  @override
  String get ok => 'ठीक छै';

  @override
  String get yes => 'हां';

  @override
  String get no => 'नीं';

  @override
  String get optional => 'वैकल्पिक';

  @override
  String get calories => 'कैलोरी';

  @override
  String get protein => 'प्रोटीन';

  @override
  String get carbs => 'कार्ब्स';

  @override
  String get fat => 'मोटो';

  @override
  String get fiber => 'रेशा';

  @override
  String get water => 'पाणी';

  @override
  String get steps => 'चरण';

  @override
  String get kcal => 'किलो कैलोरी';

  @override
  String get grams => 'जी';

  @override
  String get milliliters => 'एमएल';

  @override
  String get kilograms => 'किलो';

  @override
  String get pounds => 'पौंड';

  @override
  String get centimeters => 'सेमी';

  @override
  String get inches => 'मांय';

  @override
  String get bpm => 'बीपीएम';

  @override
  String get hours => 'घण्टा';

  @override
  String get minutes => 'मिनट';

  @override
  String get serving => 'परोसणो';

  @override
  String get servings => 'परोसण';

  @override
  String get serving_size => 'परोसबा रो आकार';

  @override
  String get per_100g => 'प्रति 100 ग्राम';

  @override
  String get india => 'भारत';

  @override
  String get asia => 'एशिया';

  @override
  String get europe => 'यूरोप';

  @override
  String get middle_east => 'मध्य पूर्व';

  @override
  String get africa => 'अफ्रीका';

  @override
  String get americas => 'अमरीका';

  @override
  String get home_title => 'घर';

  @override
  String get home_greeting_morning => 'सुप्रभात';

  @override
  String get home_greeting_afternoon => 'शुभ दोपहर';

  @override
  String get home_greeting_evening => 'शुभ संध्या';

  @override
  String get home_streak_title => 'ब्लॉसम स्ट्रीक';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिनां री लकीर',
      one: '1 दिन री लकीर',
      zero: '0 दिन री लकीर',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'जळग्यो';

  @override
  String get home_calories_budget => 'कैलोरी रो बजट';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal किलो कैलोरी बाकी है';
  }

  @override
  String get home_water_title => 'रोजाना जलयोजन';

  @override
  String home_water_goal(Object current, Object target) {
    return '__पीएच_0__ / __पीएच_1__ एमएल';
  }

  @override
  String get home_steps_title => 'कदम उठाया';

  @override
  String get home_quick_actions => 'त्वरित कार्रवाई';

  @override
  String get home_log_meal => 'लॉग मील';

  @override
  String get home_log_water => 'लकड़ी रो पाणी';

  @override
  String get home_log_workout => 'लॉग वर्कआउट';

  @override
  String get home_log_weight => 'लॉग रो वजन';

  @override
  String get home_insights_title => 'आज री बातां';

  @override
  String get home_quote => 'छोटा-छोटा स्वस्थ विकल्प खिलता बदलाव पैदा करै है।';

  @override
  String get home_ai_coach_tip => 'ब्लूमी एआई कोच';

  @override
  String get home_surroundings => 'आसै-पासै री वातावरण अर हवा';

  @override
  String get home_notifications => 'सूचनावां';

  @override
  String get home_daily_score => 'दैनिक कल्याण अंक';

  @override
  String get home_view_all => 'सगळा देखो';

  @override
  String get food_diary_title => 'खाणै री डायरी';

  @override
  String get food_breakfast => 'नाश्तो';

  @override
  String get food_lunch => 'दोपहर रो भोजन';

  @override
  String get food_dinner => 'रात रो खाणो';

  @override
  String get food_snacks => 'नाश्ता';

  @override
  String get food_add_food => 'खाणो जोड़ो';

  @override
  String get food_edit_food => 'भोजन नै संपादित करो';

  @override
  String get food_add_breakfast => 'नाश्तो जोड़ो';

  @override
  String get food_add_lunch => 'दोपहर रो भोजन जोड़ो';

  @override
  String get food_add_dinner => 'रात रो खाणो जोड़ो';

  @override
  String get food_add_snack => 'नाश्तो जोड़ो';

  @override
  String get food_total_calories => 'कुल कैलोरी';

  @override
  String get food_empty_meal =>
      'इण भोजन रै वास्तै अजै तांई कोई खाद्य पदार्थ दर्ज कोनी करियो गयो है';

  @override
  String get food_empty_diary =>
      'इण दिन रै वास्तै कोई भोजन दर्ज कोनी करियो गयो';

  @override
  String get food_log_first_meal =>
      'आपरो पैलो स्वादिष्ट भोजन दर्ज करण सारू + माथै टैप करो';

  @override
  String get food_quick_add => 'त्वरित जोड़ो';

  @override
  String get food_search_hint => 'व्यंजन, फल, दाल, रोटी री खोज...';

  @override
  String get food_custom_recipe => 'अनुकूलित भोजन अर नुस्खा';

  @override
  String get food_scan_barcode => 'बारकोड स्कैन करो';

  @override
  String get food_camera_scan => 'एआई फूड स्कैनर';

  @override
  String get food_recent => 'हाल रा खाणा';

  @override
  String get food_favourites => 'मनपसंद';

  @override
  String get food_macro_summary => 'मैक्रोन्यूट्रिएंट रो टूटणो';

  @override
  String get food_delete_meal_confirm =>
      'कांई थनै पक्को है कै थूं इण वस्तु नै हटावणो चावै है?';

  @override
  String get food_item_deleted => 'खाद्य पदार्थ हटा दियो गयो';

  @override
  String get food_remaining => 'बाकी';

  @override
  String get food_consumed => 'खायो गयो';

  @override
  String food_of_target(Object target) {
    return '$target किलो कैलोरी रो';
  }

  @override
  String get foodSearch_title => 'खाणा री तलाश करो';

  @override
  String get foodSearch_scan_barcode => 'बारकोड स्कैन करो';

  @override
  String get foodSearch_take_photo => 'खाणै री फोटू खींचो';

  @override
  String get foodSearch_custom_food => 'अनुकूलित भोजन बणाओ';

  @override
  String get foodSearch_recent_searches => 'हाल री खोजां';

  @override
  String get foodSearch_popular => 'लोकप्रिय व्यंजन';

  @override
  String get foodSearch_no_results => 'थारी खोज सूं मेल खाबा आळो कोई खाणो कोनी';

  @override
  String get barcode_title => 'बारकोड स्कैनर';

  @override
  String get barcode_align => 'कैमरा रै फ्रेम रै मांय बारकोड नै संरेखित करो';

  @override
  String get barcode_not_found => 'डेटाबेस रै मांय उत्पाद कोनी मिल्यो';

  @override
  String get barcode_premium_feature =>
      'बारकोड स्कैनिंग ब्लूमी प्रो रै साथै उपलब्ध है';

  @override
  String get camera_title => 'एआई फूड स्कैनर';

  @override
  String get camera_tap_hint => 'आपरै पकवान री साफ-साफ फोटू लेवो';

  @override
  String get camera_analysing => 'खाणै री थाळी रो विश्लेषण कर रिया हां...';

  @override
  String get camera_detected => 'वस्तुवां रो पता लगायो गयो';

  @override
  String get camera_flash => 'फ्लैश नै टॉगल करो';

  @override
  String get camera_retake => 'फोटू नै पाछो लेवो';

  @override
  String get camera_confirm_food => 'वस्तुवां री पुष्टि करो';

  @override
  String get customFood_title => 'अनुकूलित भोजन अर नुस्खा';

  @override
  String get customFood_name_hint => 'पकवान या सामग्री रो नाम';

  @override
  String get customFood_calories_hint => 'कैलोरी (किलो कैलोरी)';

  @override
  String get customFood_protein_hint => 'प्रोटीन (जी)';

  @override
  String get customFood_carbs_hint => 'कार्ब्स (जी)';

  @override
  String get customFood_fat_hint => 'मोटापा (जी)';

  @override
  String get customFood_save => 'नुस्खा बचाओ';

  @override
  String get water_tracker_title => 'पाणी रो ट्रैकर';

  @override
  String get water_daily_target => 'दैनिक जलयोजन रो लक्ष्य';

  @override
  String get water_logged_today => 'आज लॉग इन करियो';

  @override
  String get water_add_glass => '+250 मिलीलीटर कांच';

  @override
  String get water_add_bottle => '+500 मिलीलीटर बोतल';

  @override
  String get water_custom_amount => 'अनुकूलित रकम';

  @override
  String get water_reminder_tip =>
      'लगातार ऊर्जा रै वास्तै दिन भर नियमित रूप सूं पाणी पीवो।';

  @override
  String water_logged_toast(Object amount) {
    return 'पाणी रो $amount मिलीलीटर 💧';
  }

  @override
  String get workout_title => 'कसरत रो लॉग';

  @override
  String get workout_add_exercise => 'कसरत जोड़ो';

  @override
  String get workout_cardio => 'कार्डियो';

  @override
  String get workout_strength => 'ताकत';

  @override
  String get workout_yoga => 'योग अर लचीलापन';

  @override
  String get workout_duration => 'अवधि';

  @override
  String get workout_intensity => 'तीव्रता';

  @override
  String get workout_calories_burned => 'जली हुई कैलरी';

  @override
  String get workout_empty => 'आज कोई कसरत कोनी दर्ज';

  @override
  String get workout_save_success => 'कसरत सफलतापूर्वक बचाई गई!';

  @override
  String get workout_type => 'कसरत रो प्रकार';

  @override
  String get workout_notes => 'नोट्स अर चिंतन';

  @override
  String get health_overview_title => 'स्वास्थ्य अर जरूरी';

  @override
  String get health_heart_rate => 'हृदय गति';

  @override
  String get health_blood_oxygen => 'रक्त री आक्सीजन (एसपीओ2)';

  @override
  String get health_blood_pressure => 'रक्तचाप';

  @override
  String get health_blood_glucose => 'रक्त ग्लूकोज';

  @override
  String get health_body_temperature => 'शरीर रो तापमान';

  @override
  String get health_sleep_tracking => 'नींद री ट्रैकिंग';

  @override
  String get health_weight_tracking => 'वजन अर शरीर री संरचना';

  @override
  String get health_waist_hip => 'कमर सूं कूल्हे रो अनुपात';

  @override
  String get health_devices_hub => 'उपकरण अर स्मार्टवॉच हब';

  @override
  String get health_sync_now => 'स्वास्थ्य डेटा नै सिंक करो';

  @override
  String health_last_synced(Object time) {
    return 'लास्ट सिंक: $time';
  }

  @override
  String get health_manual_entry => 'मैन्युअल स्वास्थ्य प्रविष्टि';

  @override
  String get health_metric_detail => 'मीट्रिक विवरण';

  @override
  String get health_connected_sensors => 'जुड़ेड़ा स्वास्थ्य संवेदक';

  @override
  String get plan_title => 'दैनिक योजना';

  @override
  String get plan_weekly_title => 'साप्ताहिक कल्याण योजना';

  @override
  String get plan_calorie_target => 'कैलोरी रो लक्ष्य';

  @override
  String get plan_water_target => 'जलयोजन रो लक्ष्य';

  @override
  String get plan_step_target => 'चरण लक्ष्य';

  @override
  String get plan_sleep_target => 'नींद रो लक्ष्य';

  @override
  String get plan_meal_suggestions => 'भोजन रा सुझाव';

  @override
  String get plan_healthy_habits => 'सेहतमंद आदतां अर टिप्स';

  @override
  String get plan_coach_advice => 'ब्लूमी एआई कोच री सिफारिशां';

  @override
  String get plan_generated_title => 'व्यक्तिगत दैनिक कार्यक्रम';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'प्रोफाइल संपादित करो';

  @override
  String get profile_name => 'नाम';

  @override
  String get profile_age => 'उम्र';

  @override
  String get profile_gender => 'लिंग';

  @override
  String get profile_height => 'ऊंचाई';

  @override
  String get profile_weight => 'वजन';

  @override
  String get profile_goal => 'प्राथमिक लक्ष्य';

  @override
  String get profile_activity_level => 'गतिविधि रो स्तर';

  @override
  String get profile_stats => 'म्हारो स्वास्थ्य आंकड़ा';

  @override
  String get profile_saved => 'प्रोफाइल नै सफलतापूर्वक अपडेट कर दियो गयो';

  @override
  String get profile_bmi => 'शरीर द्रव्यमान सूचकांक (बीएमआई)';

  @override
  String get profile_membership => 'सदस्यता';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get preferences_habits => 'वरीयतावां अर आदतां';

  @override
  String get appearance_theme => 'रूप अर विषय';

  @override
  String get appearance_theme_sub =>
      'अंधेरो, उजाळो, सिस्टम मोड अर ऐप री पृष्ठभूमि रा विकल्प';

  @override
  String get permissions => 'अनुमति अर सिस्टम री पहुंच';

  @override
  String get permissions_sub =>
      'स्वास्थ्य कनेक्ट, स्टेप सेंसर, जीपीएस, सूचनावां अर कैमरा';

  @override
  String get reminders_notifications => 'याद दिलावण अर सूचनावां';

  @override
  String get reminders_sub =>
      'भोजन रो बगत, पाणी, वजन री जांच अर सोबा री याद दिरावण आळा';

  @override
  String get units_of_measurement => 'माप री इकाइयां';

  @override
  String get units_sub =>
      'मीट्रिक (किलो, सेमी, मिलीलीटर, किमी) या इंपीरियल (पाउंड, फीट/इंच, फ्लो ऑउंस)';

  @override
  String get app_language => 'ऐप भाषा';

  @override
  String get language_sub =>
      'अंग्रेजी, हिन्दी (हिन्दी), हिंगलिश अर 195+ वैश्विक भाषावां';

  @override
  String get home_screen_widgets => 'होम स्क्रीन विजेट';

  @override
  String get widgets_sub =>
      'लाइव एंड्रॉइड विजेट: हब, स्टेप्स, वाटर, न्यूट्रिशन अर शुभंकर';

  @override
  String get wear_os_watch_app => 'ओएस घड़ी ऐप पैरो';

  @override
  String get wear_os_sub =>
      'स्मार्टवॉच साथी, टाइल्स, जटिलतावां अर लाइव वाइटल्स';

  @override
  String get goals_wellness => 'लक्ष्य अर कल्याण री जाणकारी';

  @override
  String get nutrition_targets => 'पोषण लक्ष्य अर मैक्रो स्प्लिट';

  @override
  String get nutrition_targets_sub =>
      'कैलोरी लक्ष्य, प्रोटीन, कार्ब्स, वसा अर पाणी रो लक्ष्य';

  @override
  String get weekly_recap => 'साप्ताहिक कल्याण पुनरावृत्ति';

  @override
  String get weekly_recap_sub =>
      '7-दिन री कैलोरी औसत, मैक्रो रेशियो अर सबसूं चोखो दिन';

  @override
  String get streaks_milestones => 'लकीर अर मील रा पत्थर';

  @override
  String get streaks_sub => 'सक्रिय फूल री लकीर, बैज अर उपलब्धियां';

  @override
  String get connected_devices => 'जुड़ेड़ा उपकरण अर पारिस्थितिकी तंत्र';

  @override
  String get devices_hub => 'उपकरण अर स्मार्टवॉच हब';

  @override
  String get devices_hub_sub =>
      'हेल्थ कनेक्ट, गैलेक्सी वॉच, पिक्सेल वॉच, गार्मिन';

  @override
  String get surroundings_weather => 'आस-पास रो वातावरण अर मौसम';

  @override
  String get surroundings_sub =>
      'हवा री गुणवत्ता (AQI), यूवी सूचकांक अर मौसम जलयोजन रा सुझाव';

  @override
  String get bloomi_pro => 'ब्लूमी प्रो री सदस्यता';

  @override
  String get bloomi_pro_sub =>
      'एआई प्लान कोच, 5 होम स्क्रीन विजेट अर महत्वपूर्ण ट्रैकिंग';

  @override
  String get about_security => 'सुरक्षा रै बारै में';

  @override
  String get about_bloomi => 'ब्लूमी रै बारै मांय';

  @override
  String get about_bloomi_sub => 'बिल्ड स्पेसिफिकेशन, वर्जन, एट्रिब्यूशन';

  @override
  String get privacy_policy => 'गोपनीयता नीति';

  @override
  String get privacy_policy_sub => 'ऑफ़लाइन-पहला, ऑन-डिवाइस डेटा आर्किटेक्चर';

  @override
  String get terms_conditions => 'नियम अर शर्तां';

  @override
  String get terms_conditions_sub => 'सेवा री शर्तां अर कल्याण दिशा-निर्देश';

  @override
  String get delete_account => 'खाता अर डेटा नै हटाओ';

  @override
  String get delete_account_sub =>
      'स्थानीय एसक्यूएलाइट डेटा अर क्लाउड बैकअप नै अपरिवर्तनीय रूप सूं मिटाओ';

  @override
  String get healthy_habits => 'कोमल, स्थायी कल्याण आदतां बणाओ';

  @override
  String get all_logs => 'म्हारो ट्रैक करियोड़ो डेटा अर लॉग';

  @override
  String get search_language => 'भाषा या देशी लिपि रै आधार माथै खोज करो...';

  @override
  String get languages_available => 'उपलब्ध भाषावां';

  @override
  String get no_matching_languages => 'कोई मेल खाबा आळी भाषा कोनी मिली';

  @override
  String get try_searching =>
      'देशी लिपि या अंग्रेजी वर्तनी रै आधार माथै खोज री कोशिश करो';

  @override
  String get partially_translated => 'आंशिक रूप सूं अनुवादित';

  @override
  String get complete_translation => 'पूरा करो';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'भाषा नै $name ( $nativeName ) माथै सेट करियो गयो है';
  }

  @override
  String get surroundings_title => 'आसै-पासै रो वातावरण अर वातावरण';

  @override
  String get surroundings_aqi => 'वायु गुणवत्ता सूचकांक';

  @override
  String get surroundings_uv => 'यूवी सूचकांक';

  @override
  String get surroundings_temp => 'तापमान';

  @override
  String get surroundings_humidity => 'आर्द्रता';

  @override
  String get surroundings_hydration_advice =>
      'मौजूदा मौसम री स्थिति रै मांय पाणी रो भरोसो राखो।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'खाणो ढूंढो';

  @override
  String get food_quick_barcode => 'बारकोड स्कैन करो 👑';

  @override
  String get food_quick_water => 'पाणी मिलाओ';

  @override
  String get food_quick_custom => 'कस्टम फूड';

  @override
  String get surroundings_good => 'आछो';

  @override
  String get surroundings_moderate => 'मध्यम';

  @override
  String get surroundings_unhealthy => 'अस्वास्थ्यकर';

  @override
  String get notifications_title => 'सूचनावां अर चेतावनी';

  @override
  String get notifications_empty => 'कोई नयो सूचना कोनी';

  @override
  String get notifications_mark_read =>
      'सगळा नै पढ़ियोड़ा रै रूप मांय चिन्हित करो';

  @override
  String get notifications_clear => 'सगळा साफ करो';

  @override
  String get reminders => 'याद दिलावण री सेटिंग्स';

  @override
  String get notifications => 'सूचनावां';

  @override
  String get reminders_breakfast_title => 'नाश्ता री याद दिरावण सारू 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'सुप्रभात! $time माथै पौष्टिक नाश्ता रो बखत।';
  }

  @override
  String get reminders_lunch_title => 'दोपहर रा भोजन री याद दिरावण सारू 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time माथै रुको अर संतुलित अर ध्यान सूं दोपहर रो भोजन रो आनंद लो।';
  }

  @override
  String get reminders_dinner_title => 'रात रा खाणा री याद दिरावै 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time माथै हळका अर संतोषजनक रात रा भोजन रो बगत है।';
  }

  @override
  String get reminders_water_title => 'हाइड्रेशन नज 💧';

  @override
  String reminders_water_body(Object time) {
    return 'एक ताजा गिलास पाणी पीबा रो बखत है! ( $time )';
  }

  @override
  String get reminders_weight_title => 'साप्ताहिक वजन ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ब्लूमी ( $time ) माथै आपरा साप्ताहिक शरीर रा मापदंड नै ट्रैक करो।';
  }

  @override
  String get reminders_sleep_title => 'सोबा रो बगत विंड-डाउन 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'आराम करो अर आरामदायक नींद री तैयारी करो ( $time )।';
  }

  @override
  String get onboard_welcome => 'ब्लूमी माथै थारो स्वागत है';

  @override
  String get onboard_sub =>
      'थारो दोस्ताना, ऑफलाइन-पहलो स्वास्थ्य अर पोषण साथी।';

  @override
  String get onboard_get_started => 'सरू करो';

  @override
  String get onboard_sign_in => 'साइन इन करो';

  @override
  String get onboard_skip => 'छोड़ो';

  @override
  String get onboard_choose_goal => 'थारो प्राथमिक स्वास्थ्य लक्ष्य कांई है?';

  @override
  String get onboard_goal_weight_loss => 'थोड़ो वजन घटाणो';

  @override
  String get onboard_goal_muscle => 'मांसपेशियां री बढ़ोतरी अर ताकत';

  @override
  String get onboard_goal_energy => 'दैनिक ऊर्जा अर जीवन शक्ति';

  @override
  String get onboard_goal_habits => 'स्वस्थ मन सूं खाणो';

  @override
  String get onboard_about_you => 'आपरै बारै मांय बताओ';

  @override
  String get onboard_lifestyle => 'थारी दिनचर्या';

  @override
  String get onboard_permissions_title => 'अनुमति अर सिस्टम री पहुंच';

  @override
  String get onboard_permissions_sub =>
      'सिंक स्टेप्स, वर्कआउट अर रिमाइंडर तक पहुंच प्रदान करो।';

  @override
  String get onboard_plan_ready_title => 'थारो कस्टम प्लान तैयार है!';

  @override
  String get onboard_plan_ready_sub =>
      'म्हे थारै वास्तै एक कोमल, व्यक्तिगत पोषण अर कल्याण रो रोडमैप तैयार करियो है।';

  @override
  String get onboard_enter_bloomi => 'ब्लूमी नै दर्ज करो';

  @override
  String get insights_weekly_report => 'साप्ताहिक कल्याण पुनरावृत्ति';

  @override
  String insights_best_day(Object day) {
    return 'सर्वश्रेष्ठ स्थिरता दिवस: $day';
  }

  @override
  String get insights_streaks_badges => 'लकीर अर मील रा पत्थर';

  @override
  String insights_unlocked_on(Object date) {
    return '$date माथै अनलॉक कर दियो गयो';
  }

  @override
  String get insights_keep_going => 'शानदार प्रगति जारी राखो!';

  @override
  String get widgets_title => 'होम स्क्रीन विजेट';

  @override
  String widgets_active_count(Object count) {
    return 'सक्रिय विजेट: $count';
  }

  @override
  String get widgets_hub_title => 'ब्लूमी वेलनेस हब';

  @override
  String get widgets_steps_title => 'चरण अर सक्रिय अंगूठी';

  @override
  String get widgets_water_title => 'हाइड्रेशन क्विक लॉग';

  @override
  String get widgets_mascot_title => 'ब्लूमी शुभंकर साथी';

  @override
  String get wear_os_title => 'ओएस स्मार्टवॉच पैरो';

  @override
  String get wear_os_connected => 'घड़ी सूं जुड़्योड़ो';

  @override
  String get wear_os_sync => 'घड़ी रो डेटा सिंक करो';

  @override
  String get theme_title => 'रूप अर विषय';

  @override
  String get theme_mode => 'थीम मोड';

  @override
  String get theme_light => 'उजास';

  @override
  String get theme_dark => 'अंधेरो';

  @override
  String get theme_system => 'सिस्टम री डिफॉल्ट';

  @override
  String get theme_background_palette => 'पृष्ठभूमि पैलेट';

  @override
  String get units_title => 'माप री इकाइयां';

  @override
  String get units_metric => 'मीट्रिक (किलो, सेमी, मिलीलीटर)';

  @override
  String get units_imperial => 'इम्पीरियल (पाउंड, इंच, फ्लो ऑउंस)';

  @override
  String get home_unable_load => 'डैशबोर्ड लोड नीं कर सक्यो';

  @override
  String get home_health_permission_req =>
      'स्वास्थ्य कनेक्ट री अनुमति जरूरी है';

  @override
  String get home_health_permission_desc =>
      'ब्लूमी नै असली कदम, हृदय गति अर मोबाइल होम विजेट नै वास्तविक समय रै मांय सिंक करण रै वास्तै हेल्थ कनेक्ट री अनुमति री जरूरत है।';

  @override
  String get home_allow_health => 'स्वास्थ्य कनेक्ट री अनुमति देवो';

  @override
  String get home_ready_mindful_day =>
      'एक ध्यान राखण आळा दिन रै वास्तै त्यार हो? ✨';

  @override
  String get home_quick_add => 'त्वरित जोड़ो';

  @override
  String get home_live_gps => 'लाइव जीपीएस';

  @override
  String get home_calories_remaining_label => 'कैलरी बाकी रैयगी';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'खायो गयो: __पीएच_0__ / __पीएच_1__ किलो कैलोरी';
  }

  @override
  String get home_tap_water_tracker => 'पाणी रै ट्रैकर रै वास्तै टैप करो 💧';

  @override
  String get home_water_goal_reached => 'रोज रो लक्ष्य पूगग्यो 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining मिलीलीटर दैनिक लक्ष्य तांई';
  }

  @override
  String get home_details => 'विवरण';

  @override
  String get home_upgrade_plan_desc =>
      'व्यक्तिगत दैनिक लक्ष्य अर एआई योजना नै अनलॉक करण रै वास्तै अपग्रेड करो';

  @override
  String get home_unlock => 'खोलो 👑';

  @override
  String get home_quick_log_hint =>
      'एक कल्याण प्रविष्टि नै जल्दी सूं रिकॉर्ड करो';

  @override
  String get food_serving_size => 'परोसबा रो आकार';

  @override
  String get food_serving_grams => 'परोसणो (जी)';

  @override
  String get food_number_servings => 'परोसबा री संख्या';

  @override
  String get food_calories_per_serving => 'प्रति सेवारत कैलोरी';

  @override
  String get food_recipe_ingredients => 'सामग्री';

  @override
  String get food_recipe_add_ingredient => 'सामग्री जोड़ो';

  @override
  String get food_recipe_directions => 'निर्देश अर नोट्स';

  @override
  String get food_recipe_total => 'कुल नुस्खा पोषण';

  @override
  String get food_recipe_per_serving => 'प्रति सेवा पोषण';

  @override
  String get food_recipe_saved_toast => 'कस्टम खाणो सफलतापूर्वक बचायो गयो!';

  @override
  String get food_barcode_found => 'उत्पाद मिलग्यो!';

  @override
  String get food_barcode_not_found_desc =>
      'खुला डाटाबेस रै मांय ओ बारकोड कोनी मिल्यो। थै इणनै एक कस्टम फूड रै रूप मांय जोड़ सको हो।';

  @override
  String get food_add_custom_btn => 'कस्टम फूड जोड़ो';

  @override
  String get food_scan_again => 'फेरूं स्कैन करो';

  @override
  String get food_review_items => 'पायोड़ा खाद्य पदार्थां री समीक्षा करो';

  @override
  String get food_review_hint =>
      'मात्रा नै समायोजित करो या कोई भी अणजाणी चीज नै हटाओ';

  @override
  String get food_log_selected => 'चुण्या गया खाद्य पदार्थां नै लॉग करो';

  @override
  String get food_favourites_title => 'मनपसंद खाणा';

  @override
  String get food_recent_title => 'हाल रा खाणा';

  @override
  String get food_no_favourites =>
      'अबार तांई कोई मनपसंद खाणो कोनी। अठै बचाबा रै वास्तै किणी भी खाणै माथै दिल सूं टैप करो।';

  @override
  String get food_no_recents =>
      'हाल ही रै मांय लॉग करियोड़ा खाद्य पदार्थ कोनी मिलिया।';

  @override
  String get food_nutrition_details_title => 'दैनिक पोषण विवरण';

  @override
  String get food_macro_protein_label => 'प्रोटीन रो टूटणो';

  @override
  String get food_macro_carbs_label => 'कार्ब्स रो टूटणो';

  @override
  String get food_macro_fat_label => 'मोटापा रो टूटणो';

  @override
  String get food_macro_fiber_label => 'रेशा रो टूटणो';

  @override
  String get food_daily_target_comparison => 'लक्ष्य री तुलना';

  @override
  String food_target_label(Object target) {
    return 'लक्ष्य: __पीएच_0__';
  }

  @override
  String get food_edit_entry => 'डायरी री प्रविष्टि नै संपादित करो';

  @override
  String get food_delete_entry => 'प्रविष्टि हटाओ';

  @override
  String food_grams_short(Object grams) {
    return '__पीएच_0__ जी';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '__पीएच_0__ किलो कैलोरी';
  }

  @override
  String water_progress(Object current, Object target) {
    return '__पीएच_0__ री __पीएच_1__ मिलीलीटर';
  }

  @override
  String get water_intake_history => 'आज रा पाणी रा लॉग';

  @override
  String get water_no_logs_today =>
      'आज भी कोई पाणी कोनी भर्यो। हाइड्रेट करो अर एक त्वरित जोड़ बटण माथै टैप करो!';

  @override
  String get water_adjust_goal => 'दैनिक लक्ष्य नै समायोजित करो';

  @override
  String get health_connect_banner => 'स्वास्थ्य कनेक्ट सूं जुड़्योड़ो';

  @override
  String get health_vitals_summary => 'दैनिक स्वास्थ्य जरूरी';

  @override
  String get health_latest_heart_rate => 'ताजा हृदय गति';

  @override
  String get health_latest_bp => 'रक्तचाप';

  @override
  String get health_latest_spo2 => 'रक्त री आक्सीजन';

  @override
  String get health_latest_glucose => 'रक्त ग्लूकोज';

  @override
  String get health_latest_weight => 'वजन';

  @override
  String get health_latest_sleep => 'नींद री अवधि';

  @override
  String get health_add_manual => 'हाथ सूं माप जोड़ो';

  @override
  String get health_history_trends => 'ऐतिहासिक रुझान';

  @override
  String get health_sync_success =>
      'स्वास्थ्य डेटा सफलतापूर्वक सिंक कर दियो गयो!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '__पीएच_0__ घंटे __पीएच_1__ मिनट';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '__पीएच_0__ किलो';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '__पीएच_0__ बीपीएम';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '__पीएच_0__ / __पीएच_1__ मिमी एचजी';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '__पीएच_0__ मिलीग्राम/डीएल';
  }

  @override
  String get health_devices_title => 'जुड़ेड़ा उपकरण अर पहनबा जोग';

  @override
  String get health_devices_desc =>
      'जोड़ीदार स्मार्टवॉच, फिटनेस ट्रैकर अर स्वास्थ्य सेंसर रो प्रबंधन करो।';

  @override
  String get health_workout_editor_title => 'कसरत नै संपादित करो';

  @override
  String get health_workout_name_label => 'कसरत रो नांव';

  @override
  String get health_workout_duration_label => 'अवधि (मिनट)';

  @override
  String get health_workout_calories_label => 'अनुमानित कैलोरी (किलो कैलोरी)';

  @override
  String get health_workout_date_label => 'तारीख अर बगत';

  @override
  String get plan_daily_wellness_roadmap => 'थारो व्यक्तिगत रोडमैप';

  @override
  String get plan_morning_routine => 'सुबह री दिनचर्या';

  @override
  String get plan_afternoon_routine => 'मिडडे वेलनेस';

  @override
  String get plan_evening_routine => 'शाम री हवा';

  @override
  String get plan_coach_badge => 'ब्लूमी एआई कोच';

  @override
  String get plan_weekly_overview => '7-दिन रो वेलनेस फोकस';

  @override
  String get plan_targets_title => 'कल्याण रा लक्ष्य अर लक्ष्य';

  @override
  String get plan_calorie_budget_label => 'दैनिक कैलोरी रो बजट';

  @override
  String get plan_water_budget_label => 'रोजाना पाणी रो लक्ष्य';

  @override
  String get plan_step_budget_label => 'दैनिक कदम रो लक्ष्य';

  @override
  String get plan_macro_split_label => 'मैक्रोन्यूट्रिएंट अनुपात';

  @override
  String get profile_personal_details => 'व्यक्तिगत विवरण';

  @override
  String get profile_body_stats => 'शरीर रा माप';

  @override
  String get profile_app_preferences => 'वरीयतावां अर ऐप सेटिंग्स';

  @override
  String get profile_edit_name_hint => 'थारो नांव';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ऊंचाई ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'वजन ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'उम्र';

  @override
  String get profile_gender_male => 'नर';

  @override
  String get profile_gender_female => 'मादा';

  @override
  String get profile_gender_other => 'दूजा / नीं कैवणो चावूं';

  @override
  String get profile_activity_sedentary => 'गतिहीन (थोड़ो या कोई व्यायाम कोनी)';

  @override
  String get profile_activity_light => 'थोड़ो सक्रिय (1-3 दिन/हफ्ता)';

  @override
  String get profile_activity_moderate => 'मध्यम सक्रिय (3-5 दिन/हफ्ता)';

  @override
  String get profile_activity_very => 'घणो सक्रिय (6-7 दिन/हफ्तो)';

  @override
  String get settings_wear_os_header => 'ओएस साथी ऐप पैरो';

  @override
  String get settings_wear_os_desc =>
      'कैलोरी, पाणी अर स्टेप्स नै देखबा रै वास्तै आपरी वेयर ओएस घड़ी माथै ब्लूमी टाइल अर जटिलता लगाओ।';

  @override
  String get settings_widgets_header => 'इंटरैक्टिव एंड्रॉइड विजेट';

  @override
  String get settings_widgets_desc =>
      'तुरंत अपडेट रै वास्तै आपरै डिवाइस री होम स्क्रीन माथै रियल-टाइम विजेट पिन करो।';

  @override
  String get settings_about_header => 'ब्लूमी रै बारै मांय';

  @override
  String get settings_about_version => 'संस्करण 1.0.0';

  @override
  String get settings_about_build => '100 बणाओ';

  @override
  String get settings_about_credits =>
      'ध्यान सूं, स्वस्थ जीवन जीबा रै वास्तै देखभाल रै साथै बणायो गयो है।';

  @override
  String get settings_terms_header => 'नियम अर शर्तां';

  @override
  String get settings_privacy_header => 'गोपनीयता नीति';

  @override
  String get settings_delete_header => 'खाता अर डेटा नै हटाओ';

  @override
  String get settings_delete_warning =>
      'आ कार्रवाई पाछी कोनी करी जा सकै। थारा सगळा भोजन, कसरत, महत्वपूर्ण अर प्रोफाइल नै स्थाई रूप सूं हटा दियो जावेला।';

  @override
  String get settings_delete_confirm_btn => 'स्थाई रूप सूं हटाओ';

  @override
  String get onboard_welcome_headline => 'ब्लूमी माथै थारो स्वागत है ✨';

  @override
  String get onboard_welcome_tagline =>
      'थारै जीवन रै आसै-पासै डिजाइन करियो गयो कोमल, माइंडफुल वेलनेस ट्रैकिंग।';

  @override
  String get onboard_step_about => 'थारै बारै मांय';

  @override
  String get onboard_step_goals => 'थारा लक्ष्य';

  @override
  String get onboard_step_lifestyle => 'रोजमर्रा री आदतां';

  @override
  String get onboard_step_permissions => 'अनुमति';

  @override
  String get onboard_step_plan => 'तैयार!';

  @override
  String get onboard_health_connect_perm => 'स्वास्थ्य कनेक्ट पहुंच';

  @override
  String get onboard_step_sensors_perm => 'स्टेप काउंटर सेंसर';

  @override
  String get onboard_notif_perm => 'ध्यान सूं याद दिरावण अर सूचनावां';

  @override
  String get onboard_camera_perm => 'कैमरो (बारकोड अर फूड स्कैनर)';

  @override
  String get onboard_grant_permissions => 'अनुमति देवो';

  @override
  String get onboard_continue_dashboard => 'डैशबोर्ड खोलो';

  @override
  String get notif_channel_hydration_name => 'हाइड्रेशन नड्स';

  @override
  String get notif_channel_hydration_desc =>
      'दिन भर रै मांय हल्का पाणी री याद दिरावै है';

  @override
  String get notif_channel_nutrition_name => 'भोजन अर पोषण री याद दिरावै है';

  @override
  String get notif_channel_nutrition_desc =>
      'नाश्ता, दोपहर रो भोजन अर रात रा भोजन री चेतावनी';

  @override
  String get notif_channel_steps_name => 'कदम मील रा पत्थर';

  @override
  String get notif_channel_steps_desc =>
      'दैनिक कदम लक्ष्यां तांई पूगबा माथै जश्न मनाया जावै है';

  @override
  String get notif_channel_vitals_name => 'स्वास्थ्य अर जीवन री जांच';

  @override
  String get notif_channel_vitals_desc => 'वजन अर सोबा रै बगत री याद दिरावै है';

  @override
  String get notif_action_log_water => '💧 लॉग +250 मिलीलीटर';

  @override
  String get notif_action_snooze => '15 मीटर री दूरी माथै नींद लेवो';

  @override
  String get notif_action_log_meal => '🥗 लॉग मील';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
