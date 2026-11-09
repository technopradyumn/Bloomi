// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Awadhi (`awa`).
class AppLocalizationsAwa extends AppLocalizations {
  AppLocalizationsAwa([String locale = 'awa']) : super(locale);

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
  String get nav_food_diary => 'खाद्य डायरी';

  @override
  String get nav_workout => 'कसरत लॉग';

  @override
  String get nav_health => 'स्वास्थ्य';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get save => 'सहेजौ';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get delete => 'हटावा';

  @override
  String get edit => 'संपादित करा';

  @override
  String get done => 'होइ गवा';

  @override
  String get close => 'बंद करा';

  @override
  String get back => 'वापस';

  @override
  String get next => 'अगला';

  @override
  String get continue_btn => 'जारी रखौ';

  @override
  String get confirm => 'पुष्टि करा';

  @override
  String get search => 'खोज';

  @override
  String get filter => 'फिल्टर';

  @override
  String get all => 'सब';

  @override
  String get active => 'सक्रिय';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get tomorrow => 'कल';

  @override
  String get add => 'जोड़ौ';

  @override
  String get remove => 'हटावा';

  @override
  String get refresh => 'ताज़ा करा';

  @override
  String get retry => 'फिर से कोशिश करा';

  @override
  String get error => 'त्रुटि';

  @override
  String get success => 'सफलता';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get no_data => 'कौनो डेटा उपलब्ध नाहीं है';

  @override
  String get offline => 'ऑफलाइन मोड';

  @override
  String get offline_sub => 'एक बार फिर से जुड़े के बाद बदलाव सिंक होइ जइहैं';

  @override
  String get undo => 'पूर्ववत';

  @override
  String get portion => 'भाग';

  @override
  String get quantity => 'मात्रा';

  @override
  String get unit => 'इकाई';

  @override
  String get clear => 'साफ़ करा';

  @override
  String get select => 'चुनौ';

  @override
  String get apply => 'आवेदन करा';

  @override
  String get reset => 'रीसेट';

  @override
  String get ok => 'ठीक है';

  @override
  String get yes => 'हाँ';

  @override
  String get no => 'नाहीं';

  @override
  String get optional => 'वैकल्पिक';

  @override
  String get calories => 'कैलोरी';

  @override
  String get protein => 'प्रोटीन';

  @override
  String get carbs => 'कार्ब्स';

  @override
  String get fat => 'मोटापा';

  @override
  String get fiber => 'फाइबर';

  @override
  String get water => 'पानी';

  @override
  String get steps => 'कदम';

  @override
  String get kcal => 'किलो कैलोरी';

  @override
  String get grams => 'जी';

  @override
  String get milliliters => 'मिलीलीटर';

  @override
  String get kilograms => 'किलोग्राम';

  @override
  String get pounds => 'पौंड';

  @override
  String get centimeters => 'सेमी';

  @override
  String get inches => 'मा';

  @override
  String get bpm => 'बीपीएम';

  @override
  String get hours => 'घंटा';

  @override
  String get minutes => 'मिनट';

  @override
  String get serving => 'परोसत अहै';

  @override
  String get servings => 'सर्विंग्स';

  @override
  String get serving_size => 'परोसै कय आकार';

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
  String get americas => 'अमेरिका';

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
      other: '$count दिनन के लकीर',
      one: '1 दिन के लकीर',
      zero: '0 दिन के लकीर',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'जला गवा';

  @override
  String get home_calories_budget => 'कैलोरी बजट';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal किलो कैलोरी शेष है';
  }

  @override
  String get home_water_title => 'दैनिक जलयोजन';

  @override
  String home_water_goal(Object current, Object target) {
    return '__पीएच_0__ / __पीएच_1__ एमएल';
  }

  @override
  String get home_steps_title => 'कदम चले गए';

  @override
  String get home_quick_actions => 'त्वरित कार्रवाई';

  @override
  String get home_log_meal => 'लॉग मील';

  @override
  String get home_log_water => 'लॉग वाटर';

  @override
  String get home_log_workout => 'लॉग वर्कआउट';

  @override
  String get home_log_weight => 'लॉग वजन';

  @override
  String get home_insights_title => 'आज के अंतर्दृष्टि';

  @override
  String get home_quote => 'छोट स्वस्थ विकल्प खिलत परिवर्तन पैदा करत हैं।';

  @override
  String get home_ai_coach_tip => 'ब्लूमी एआई कोच';

  @override
  String get home_surroundings => 'आसपास अऊर हवा';

  @override
  String get home_notifications => 'सूचना';

  @override
  String get home_daily_score => 'दैनिक कल्याण स्कोर';

  @override
  String get home_view_all => 'सबका देखौ';

  @override
  String get food_diary_title => 'खाद्य डायरी';

  @override
  String get food_breakfast => 'नाश्ता';

  @override
  String get food_lunch => 'लंच';

  @override
  String get food_dinner => 'रात के खाना';

  @override
  String get food_snacks => 'नाश्ता';

  @override
  String get food_add_food => 'खाना मिलावा';

  @override
  String get food_edit_food => 'खाना संपादित करा';

  @override
  String get food_add_breakfast => 'नाश्ता जोड़ौ';

  @override
  String get food_add_lunch => 'लंच जोड़ौ';

  @override
  String get food_add_dinner => 'रात के खाना जोड़ौ';

  @override
  String get food_add_snack => 'नाश्ता जोड़ौ';

  @override
  String get food_total_calories => 'कुल कैलोरी';

  @override
  String get food_empty_meal =>
      'अबहीं तक ई भोजन के लिए कौनो खाद्य पदार्थ लॉग नाहीं कीन गा है';

  @override
  String get food_empty_diary =>
      'यहि दिन के लिए कौनो भोजन दर्ज नाहीं कीन गा है';

  @override
  String get food_log_first_meal =>
      'आपन पहिला स्वादिष्ट भोजन लॉग इन करै के लिए + पर टैप करा';

  @override
  String get food_quick_add => 'त्वरित जोड़ौ';

  @override
  String get food_search_hint => 'सर्च व्यंजन, फल, दाल, रोटी...';

  @override
  String get food_custom_recipe => 'कस्टम खाना अऊर नुस्खा';

  @override
  String get food_scan_barcode => 'बारकोड स्कैन करा';

  @override
  String get food_camera_scan => 'एआई फूड स्कैनर';

  @override
  String get food_recent => 'हाल के खाद्य पदार्थ';

  @override
  String get food_favourites => 'पसंदीदा';

  @override
  String get food_macro_summary => 'मैक्रोन्यूट्रिएंट ब्रेकडाउन';

  @override
  String get food_delete_meal_confirm =>
      'का आप निश्चित हई कि आप ई आइटम का हटावै चाहत हई?';

  @override
  String get food_item_deleted => 'खाद्य पदार्थ हटावा गा';

  @override
  String get food_remaining => 'शेष';

  @override
  String get food_consumed => 'खपत होइ गवा';

  @override
  String food_of_target(Object target) {
    return '$target किलो कैलोरी का';
  }

  @override
  String get foodSearch_title => 'खाना खोजौ';

  @override
  String get foodSearch_scan_barcode => 'बारकोड स्कैन करा';

  @override
  String get foodSearch_take_photo => 'स्नैप फूड फोटो';

  @override
  String get foodSearch_custom_food => 'कस्टम खाना बनावा';

  @override
  String get foodSearch_recent_searches => 'हाल के खोज';

  @override
  String get foodSearch_popular => 'लोकप्रिय व्यंजन';

  @override
  String get foodSearch_no_results =>
      'आपके खोज से मेल खात कौनो खाद्य पदार्थ नाहीं';

  @override
  String get barcode_title => 'बारकोड स्कैनर';

  @override
  String get barcode_align => 'कैमरा फ्रेम के अंदर बारकोड संरेखित करा';

  @override
  String get barcode_not_found => 'डेटाबेस मा उत्पाद नाहीं मिला';

  @override
  String get barcode_premium_feature =>
      'बारकोड स्कैनिंग ब्लूमी प्रो के साथ उपलब्ध है';

  @override
  String get camera_title => 'एआई फूड स्कैनर';

  @override
  String get camera_tap_hint => 'अपने पकवान का एक साफ फोटो खींचौ';

  @override
  String get camera_analysing => 'खाद्य थाली का विश्लेषण करत...';

  @override
  String get camera_detected => 'पता लगावा गा आइटम';

  @override
  String get camera_flash => 'फ्लैश टॉगल करा';

  @override
  String get camera_retake => 'फोटो फिर से लीन जाय';

  @override
  String get camera_confirm_food => 'आइटम के पुष्टि करा';

  @override
  String get customFood_title => 'कस्टम खाना अऊर नुस्खा';

  @override
  String get customFood_name_hint => 'पकवान या सामग्री का नाम';

  @override
  String get customFood_calories_hint => 'कैलोरी (किलो कैलोरी)';

  @override
  String get customFood_protein_hint => 'प्रोटीन (जी)';

  @override
  String get customFood_carbs_hint => 'कार्ब्स (जी)';

  @override
  String get customFood_fat_hint => 'वसा (जी)';

  @override
  String get customFood_save => 'नुस्खा सहेजौ';

  @override
  String get water_tracker_title => 'पानी का ट्रैकर';

  @override
  String get water_daily_target => 'दैनिक जलयोजन लक्ष्य';

  @override
  String get water_logged_today => 'आज लॉग इन कीन गा है';

  @override
  String get water_add_glass => '+250 मिलीलीटर कांच';

  @override
  String get water_add_bottle => '+500 मिलीलीटर बोतल';

  @override
  String get water_custom_amount => 'कस्टम राशि';

  @override
  String get water_reminder_tip =>
      'स्थिर ऊर्जा के लिए दिन भर नियमित रूप से पानी पियैं।';

  @override
  String water_logged_toast(Object amount) {
    return 'लॉग इन $amount मिलीलीटर पानी 💧';
  }

  @override
  String get workout_title => 'कसरत लॉग';

  @override
  String get workout_add_exercise => 'कसरत जोड़ौ';

  @override
  String get workout_cardio => 'कार्डियो';

  @override
  String get workout_strength => 'ताकत';

  @override
  String get workout_yoga => 'योग अऊर लचीलापन';

  @override
  String get workout_duration => 'अवधि';

  @override
  String get workout_intensity => 'तीव्रता';

  @override
  String get workout_calories_burned => 'कैलोरी जली';

  @override
  String get workout_empty => 'आज कौनो कसरत नाहीं लॉग इन कीन गा है';

  @override
  String get workout_save_success => 'कसरत सफलतापूर्वक बचावा गा!';

  @override
  String get workout_type => 'कसरत प्रकार';

  @override
  String get workout_notes => 'नोट्स अऊर प्रतिबिंब';

  @override
  String get health_overview_title => 'स्वास्थ्य अऊर महत्वपूर्ण';

  @override
  String get health_heart_rate => 'हृदय गति';

  @override
  String get health_blood_oxygen => 'रक्त ऑक्सीजन (SpO2)';

  @override
  String get health_blood_pressure => 'रक्तचाप';

  @override
  String get health_blood_glucose => 'रक्त ग्लूकोज';

  @override
  String get health_body_temperature => 'शरीर का तापमान';

  @override
  String get health_sleep_tracking => 'नींद ट्रैकिंग';

  @override
  String get health_weight_tracking => 'वजन अऊर शरीर के संरचना';

  @override
  String get health_waist_hip => 'कमर से कूल्हे का अनुपात';

  @override
  String get health_devices_hub => 'उपकरण अऊर स्मार्टवॉच हब';

  @override
  String get health_sync_now => 'स्वास्थ्य डेटा का सिंक करा';

  @override
  String health_last_synced(Object time) {
    return 'अंतिम सिंक: $time';
  }

  @override
  String get health_manual_entry => 'मैनुअल स्वास्थ्य प्रविष्टि';

  @override
  String get health_metric_detail => 'मीट्रिक विवरण';

  @override
  String get health_connected_sensors => 'जुड़े स्वास्थ्य संवेदक';

  @override
  String get plan_title => 'दैनिक योजना';

  @override
  String get plan_weekly_title => 'साप्ताहिक कल्याण योजना';

  @override
  String get plan_calorie_target => 'कैलोरी लक्ष्य';

  @override
  String get plan_water_target => 'जलयोजन लक्ष्य';

  @override
  String get plan_step_target => 'चरण लक्ष्य';

  @override
  String get plan_sleep_target => 'नींद का लक्ष्य';

  @override
  String get plan_meal_suggestions => 'भोजन सुझाव';

  @override
  String get plan_healthy_habits => 'स्वस्थ आदत अऊर टिप्स';

  @override
  String get plan_coach_advice => 'ब्लूमी एआई कोच सिफारिशें';

  @override
  String get plan_generated_title => 'व्यक्तिगत दैनिक कार्यक्रम';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'प्रोफाइल संपादित करा';

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
  String get profile_activity_level => 'गतिविधि स्तर';

  @override
  String get profile_stats => 'मोर कल्याण के आंकड़ा';

  @override
  String get profile_saved => 'प्रोफाइल सफलतापूर्वक अपडेट कीन गा';

  @override
  String get profile_bmi => 'शरीर द्रव्यमान सूचकांक (बीएमआई)';

  @override
  String get profile_membership => 'सदस्यता';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get preferences_habits => 'वरीयता अऊर आदत';

  @override
  String get appearance_theme => 'उपस्थिति अऊर विषय';

  @override
  String get appearance_theme_sub =>
      'अंधेरा, हल्का, सिस्टम मोड अऊर ऐप पृष्ठभूमि विकल्प';

  @override
  String get permissions => 'अनुमति अऊर सिस्टम एक्सेस';

  @override
  String get permissions_sub =>
      'हेल्थ कनेक्ट, स्टेप सेंसर, जीपीएस, नोटिफिकेशन अऊर कैमरा';

  @override
  String get reminders_notifications => 'अनुस्मारक अऊर सूचना';

  @override
  String get reminders_sub =>
      'भोजन के समय, पानी, वजन जांच अऊर सोवै के समय के अनुस्मारक';

  @override
  String get units_of_measurement => 'माप के इकाइयन';

  @override
  String get units_sub =>
      'मीट्रिक (किलोग्राम, सेमी, मिलीलीटर, किमी) या इंपीरियल (पाउंड, फीट/इंच, फ्लो ऑउंस)';

  @override
  String get app_language => 'ऐप भाषा';

  @override
  String get language_sub =>
      'अंग्रेजी, हिन्दी (हिन्दी), हिंगलिश अऊर 195+ वैश्विक भाषा';

  @override
  String get home_screen_widgets => 'होम स्क्रीन विजेट';

  @override
  String get widgets_sub =>
      'लाइव एंड्रॉइड विजेट: हब, कदम, पानी, पोषण अऊर शुभंकर';

  @override
  String get wear_os_watch_app => 'ओएस वॉच ऐप पहिनौ';

  @override
  String get wear_os_sub =>
      'स्मार्टवॉच साथी, टाइल्स, जटिलता अऊर लाइव महत्वपूर्ण';

  @override
  String get goals_wellness => 'लक्ष्य अऊर कल्याण अंतर्दृष्टि';

  @override
  String get nutrition_targets => 'पोषण लक्ष्य अऊर मैक्रो विभाजन';

  @override
  String get nutrition_targets_sub =>
      'कैलोरी लक्ष्य, प्रोटीन, कार्ब्स, वसा अऊर पानी का लक्ष्य';

  @override
  String get weekly_recap => 'साप्ताहिक कल्याण पुनरावृत्ति';

  @override
  String get weekly_recap_sub =>
      '7-दिन कैलोरी औसत, मैक्रो अनुपात अऊर सबसे अच्छा दिन';

  @override
  String get streaks_milestones => 'लकीर अऊर मील के पत्थर';

  @override
  String get streaks_sub => 'सक्रिय फूलन के लकीर, बैज अऊर उपलब्धि';

  @override
  String get connected_devices => 'जुड़े उपकरण अऊर पारिस्थितिकी तंत्र';

  @override
  String get devices_hub => 'उपकरण अऊर स्मार्टवॉच हब';

  @override
  String get devices_hub_sub =>
      'हेल्थ कनेक्ट, गैलेक्सी वॉच, पिक्सेल वॉच, गार्मिन';

  @override
  String get surroundings_weather => 'परिवेश अऊर मौसम';

  @override
  String get surroundings_sub =>
      'वायु गुणवत्ता (एक्यूआई), यूवी सूचकांक अऊर मौसम जलयोजन सुझाव';

  @override
  String get bloomi_pro => 'ब्लूमी प्रो सदस्यता';

  @override
  String get bloomi_pro_sub =>
      'एआई प्लान कोच, 5 होम स्क्रीन विजेट अऊर महत्वपूर्ण ट्रैकिंग';

  @override
  String get about_security => 'अउर सुरक्षा के बारे मा';

  @override
  String get about_bloomi => 'ब्लूमी के बारे मा';

  @override
  String get about_bloomi_sub => 'विनिर्देश, संस्करण, एट्रिब्यूशन बनावा';

  @override
  String get privacy_policy => 'गोपनीयता नीति';

  @override
  String get privacy_policy_sub => 'ऑफलाइन-पहिला, ऑन-डिवाइस डेटा आर्किटेक्चर';

  @override
  String get terms_conditions => 'नियम अऊर शर्त';

  @override
  String get terms_conditions_sub => 'सेवा के शर्त अऊर कल्याण दिशानिर्देश';

  @override
  String get delete_account => 'खाता अऊर डाटा हटावा';

  @override
  String get delete_account_sub =>
      'स्थानीय एसक्यूएलाइट डेटा अऊर क्लाउड बैकअप का अपरिवर्तनीय रूप से मिटावा';

  @override
  String get healthy_habits => 'कोमल, स्थायी कल्याण आदतन का निर्माण करा';

  @override
  String get all_logs => 'मोर ट्रैक कीन गा डेटा अऊर लॉग';

  @override
  String get search_language => 'भाषा अथवा देशी लिपि से खोजें...';

  @override
  String get languages_available => 'उपलब्ध भाषा';

  @override
  String get no_matching_languages => 'कौनो मिलान भाषा नाहीं मिली';

  @override
  String get try_searching =>
      'देशी लिपि या अंग्रेजी वर्तनी से खोज करै के कोशिश करा';

  @override
  String get partially_translated => 'आंशिक रूप से अनुवादित';

  @override
  String get complete_translation => 'पूरा';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'भाषा $name ( $nativeName ) पर सेट कीन गा है';
  }

  @override
  String get surroundings_title => 'आसपास अऊर पर्यावरण';

  @override
  String get surroundings_aqi => 'वायु गुणवत्ता सूचकांक';

  @override
  String get surroundings_uv => 'यूवी इंडेक्स';

  @override
  String get surroundings_temp => 'तापमान';

  @override
  String get surroundings_humidity => 'आर्द्रता';

  @override
  String get surroundings_hydration_advice =>
      'वर्तमान मौसम के स्थिति मा अच्छी तरह से हाइड्रेटेड रहा।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'खाना खोजौ';

  @override
  String get food_quick_barcode => 'बारकोड स्कैन करा 👑';

  @override
  String get food_quick_water => 'पानी मिलावा';

  @override
  String get food_quick_custom => 'कस्टम खाना';

  @override
  String get surroundings_good => 'अच्छा';

  @override
  String get surroundings_moderate => 'मध्यम';

  @override
  String get surroundings_unhealthy => 'अस्वास्थ्यकर';

  @override
  String get notifications_title => 'सूचना अऊर अलर्ट';

  @override
  String get notifications_empty => 'कौनो नया सूचना नाहीं';

  @override
  String get notifications_mark_read => 'सबका पढ़े के रूप मा चिन्हित करा';

  @override
  String get notifications_clear => 'सब साफ़ करा';

  @override
  String get reminders => 'अनुस्मारक सेटिंग्स';

  @override
  String get notifications => 'सूचना';

  @override
  String get reminders_breakfast_title => 'नाश्ता के याद दिलावन 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'सुप्रभात! $time मा पौष्टिक नाश्ता करै का समय।';
  }

  @override
  String get reminders_lunch_title => 'लंच रिमाइंडर 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'रुकौ अऊर $time मा एक संतुलित, माइंडफुल लंच का आनंद लीन जाय।';
  }

  @override
  String get reminders_dinner_title => 'रात के खाना याद दिलावै 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time मा हल्का, संतोषजनक रात के खाना खाए का समय है।';
  }

  @override
  String get reminders_water_title => 'हाइड्रेशन नज 💧';

  @override
  String reminders_water_body(Object time) {
    return 'एक ताजा गिलास पानी पीये का समय! ( $time )';
  }

  @override
  String get reminders_weight_title => 'साप्ताहिक वजन ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ब्लूमी ( $time ) पर अपने साप्ताहिक शरीर के मापदंडन का ट्रैक करा।';
  }

  @override
  String get reminders_sleep_title => 'सोवै के समय विंड-डाउन 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'आराम करा अऊर एक आरामदायक नींद ( $time ) के तैयारी करा।';
  }

  @override
  String get onboard_welcome => 'ब्लूमी मा आपका स्वागत है';

  @override
  String get onboard_sub =>
      'आपका दोस्ताना, ऑफलाइन-प्रथम स्वास्थ्य अऊर पोषण साथी।';

  @override
  String get onboard_get_started => 'शुरू करा';

  @override
  String get onboard_sign_in => 'साइन इन करा';

  @override
  String get onboard_skip => 'छोड़ौ';

  @override
  String get onboard_choose_goal => 'आपक प्राथमिक कल्याण लक्ष्य का अहै?';

  @override
  String get onboard_goal_weight_loss => 'हल्का वजन घटाव';

  @override
  String get onboard_goal_muscle => 'मांसपेशी वृद्धि अऊर ताकत';

  @override
  String get onboard_goal_energy => 'दैनिक ऊर्जा अऊर जीवन शक्ति';

  @override
  String get onboard_goal_habits => 'स्वस्थ माइंडफुल ईटिंग';

  @override
  String get onboard_about_you => 'हमका अपने बारे मा बतावा';

  @override
  String get onboard_lifestyle => 'आपक दैनिक दिनचर्या';

  @override
  String get onboard_permissions_title => 'अनुमति अऊर सिस्टम एक्सेस';

  @override
  String get onboard_permissions_sub =>
      'सिंक स्टेप्स, वर्कआउट अऊर रिमाइंडर तक पहुंच प्रदान करा।';

  @override
  String get onboard_plan_ready_title => 'आपक कस्टम प्लान तैयार है!';

  @override
  String get onboard_plan_ready_sub =>
      'हम आपके लिए एक कोमल, व्यक्तिगत पोषण अऊर कल्याण रोडमैप तैयार किहिन हैं।';

  @override
  String get onboard_enter_bloomi => 'ब्लूमी दर्ज करा';

  @override
  String get insights_weekly_report => 'साप्ताहिक कल्याण पुनरावृत्ति';

  @override
  String insights_best_day(Object day) {
    return 'सबसे अच्छा स्थिरता दिवस: $day';
  }

  @override
  String get insights_streaks_badges => 'लकीर अऊर मील के पत्थर';

  @override
  String insights_unlocked_on(Object date) {
    return '$date पर अनलॉक कीन गा है';
  }

  @override
  String get insights_keep_going => 'शानदार प्रगति जारी रखौ!';

  @override
  String get widgets_title => 'होम स्क्रीन विजेट';

  @override
  String widgets_active_count(Object count) {
    return 'सक्रिय विजेट: $count';
  }

  @override
  String get widgets_hub_title => 'ब्लूमी वेलनेस हब';

  @override
  String get widgets_steps_title => 'कदम अऊर सक्रिय अंगूठी';

  @override
  String get widgets_water_title => 'जलयोजन त्वरित लॉग';

  @override
  String get widgets_mascot_title => 'ब्लूमी शुभंकर साथी';

  @override
  String get wear_os_title => 'ओएस स्मार्टवॉच पहिनौ';

  @override
  String get wear_os_connected => 'घड़ी से जुड़ा अहै';

  @override
  String get wear_os_sync => 'घड़ी डाटा सिंक करा';

  @override
  String get theme_title => 'उपस्थिति अऊर विषय';

  @override
  String get theme_mode => 'थीम मोड';

  @override
  String get theme_light => 'रोशनी';

  @override
  String get theme_dark => 'अंधेरा';

  @override
  String get theme_system => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get theme_background_palette => 'पृष्ठभूमि पैलेट';

  @override
  String get units_title => 'माप के इकाइयन';

  @override
  String get units_metric => 'मीट्रिक (किलो, सेमी, मिलीलीटर)';

  @override
  String get units_imperial => 'इम्पीरियल (पाउंड, इन, फ्लो ऑउंस)';

  @override
  String get home_unable_load => 'डैशबोर्ड लोड करै में असमर्थ';

  @override
  String get home_health_permission_req => 'स्वास्थ्य कनेक्ट अनुमति आवश्यक है';

  @override
  String get home_health_permission_desc =>
      'ब्लूमी का वास्तविक कदम, हृदय गति अऊर मोबाइल होम विजेट का वास्तविक समय मा सिंक करै के लिए हेल्थ कनेक्ट अनुमति के जरूरत है।';

  @override
  String get home_allow_health => 'स्वास्थ्य कनेक्ट के अनुमति दें';

  @override
  String get home_ready_mindful_day => 'एक माइंडफुल दिन के लिए तैयार हौ? ✨';

  @override
  String get home_quick_add => 'त्वरित जोड़ौ';

  @override
  String get home_live_gps => 'लाइव जीपीएस';

  @override
  String get home_calories_remaining_label => 'कैलोरी शेष बा';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'खावा गा: __पीएच_0__ / __पीएच_1__ किलो कैलोरी';
  }

  @override
  String get home_tap_water_tracker => 'पानी के ट्रैकर के लिए नल 💧';

  @override
  String get home_water_goal_reached => 'रोज का लक्ष्य पूरा हो गया 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'दैनिक लक्ष्य के लिए $remaining मिलीलीटर';
  }

  @override
  String get home_details => 'विवरण';

  @override
  String get home_upgrade_plan_desc =>
      'व्यक्तिगत दैनिक लक्ष्यन अऊर एआई योजना का अनलॉक करै के लिए अपग्रेड करा';

  @override
  String get home_unlock => 'अनलॉक करा 👑';

  @override
  String get home_quick_log_hint => 'जल्दी से एक कल्याण प्रविष्टि रिकॉर्ड करा';

  @override
  String get food_serving_size => 'परोसै कय आकार';

  @override
  String get food_serving_grams => 'परोसत (जी)';

  @override
  String get food_number_servings => 'परोसे के संख्या';

  @override
  String get food_calories_per_serving => 'प्रति सेवारत कैलोरी';

  @override
  String get food_recipe_ingredients => 'सामग्री';

  @override
  String get food_recipe_add_ingredient => 'सामग्री जोड़ौ';

  @override
  String get food_recipe_directions => 'निर्देश अऊर नोट्स';

  @override
  String get food_recipe_total => 'कुल नुस्खा पोषण';

  @override
  String get food_recipe_per_serving => 'प्रति सेवारत पोषण';

  @override
  String get food_recipe_saved_toast => 'कस्टम खाना सफलतापूर्वक बचावा गा!';

  @override
  String get food_barcode_found => 'उत्पाद मिला!';

  @override
  String get food_barcode_not_found_desc =>
      'हम खुला डाटाबेस मा ई बारकोड नाहीं पावा। आप एकरा कस्टम फूड के रूप मा जोड़ सकत हैं।';

  @override
  String get food_add_custom_btn => 'कस्टम खाना जोड़ौ';

  @override
  String get food_scan_again => 'फिर से स्कैन करा';

  @override
  String get food_review_items => 'पता लगावा गा खाद्य पदार्थन के समीक्षा करा';

  @override
  String get food_review_hint =>
      'मात्रा समायोजित करा या कौनो अनजान वस्तु का हटावा';

  @override
  String get food_log_selected => 'चयनित खाद्य पदार्थन का लॉग इन करा';

  @override
  String get food_favourites_title => 'मनपसंद खाना';

  @override
  String get food_recent_title => 'हाल के खाद्य पदार्थ';

  @override
  String get food_no_favourites =>
      'अबहीं तक कौनो पसंदीदा खाना नाहीं। हिंया बचावै के ताईं कौनो भी खाना पर दिल से टैप करा।';

  @override
  String get food_no_recents => 'हाल ही मा लॉग कीन गा खाद्य पदार्थ नाहीं मिला।';

  @override
  String get food_nutrition_details_title => 'दैनिक पोषण विवरण';

  @override
  String get food_macro_protein_label => 'प्रोटीन का टूटब';

  @override
  String get food_macro_carbs_label => 'कार्ब्स ब्रेकडाउन';

  @override
  String get food_macro_fat_label => 'वसा का विघटन';

  @override
  String get food_macro_fiber_label => 'फाइबर टूटब';

  @override
  String get food_daily_target_comparison => 'लक्ष्य तुलना';

  @override
  String food_target_label(Object target) {
    return 'लक्ष्य: $target';
  }

  @override
  String get food_edit_entry => 'डायरी प्रविष्टि संपादित करा';

  @override
  String get food_delete_entry => 'प्रविष्टि हटावा';

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
    return '__पीएच_0__ का __पीएच_1__ मिलीलीटर';
  }

  @override
  String get water_intake_history => 'आज के पानी के लॉग';

  @override
  String get water_no_logs_today =>
      'आज तक पानी नहीं भरा है। हाइड्रेट करा अऊर एक त्वरित जोड़ बटन पर टैप करा!';

  @override
  String get water_adjust_goal => 'दैनिक लक्ष्य समायोजित करा';

  @override
  String get health_connect_banner => 'स्वास्थ्य कनेक्ट से जुड़ा अहै';

  @override
  String get health_vitals_summary => 'दैनिक स्वास्थ्य महत्वपूर्ण';

  @override
  String get health_latest_heart_rate => 'नवीनतम हृदय गति';

  @override
  String get health_latest_bp => 'रक्तचाप';

  @override
  String get health_latest_spo2 => 'रक्त आक्सीजन';

  @override
  String get health_latest_glucose => 'रक्त ग्लूकोज';

  @override
  String get health_latest_weight => 'वजन';

  @override
  String get health_latest_sleep => 'नींद के अवधि';

  @override
  String get health_add_manual => 'मैनुअल माप जोड़ौ';

  @override
  String get health_history_trends => 'ऐतिहासिक रुझान';

  @override
  String get health_sync_success => 'स्वास्थ्य डेटा सफलतापूर्वक सिंक होइ गवा!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '__पीएच_0__ घंटा __पीएच_1__ मिनट';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '__पीएच_0__ किलोग्राम';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '__पीएच_0__ बीपीएम';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '__पीएच_0__ %';
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
  String get health_devices_title => 'जुड़े उपकरण अऊर पहनने योग्य';

  @override
  String get health_devices_desc =>
      'युग्मित स्मार्टवॉच, फिटनेस ट्रैकर अऊर स्वास्थ्य सेंसर का प्रबंधित करा।';

  @override
  String get health_workout_editor_title => 'कसरत संपादित करा';

  @override
  String get health_workout_name_label => 'कसरत का नाम';

  @override
  String get health_workout_duration_label => 'अवधि (मिनट)';

  @override
  String get health_workout_calories_label => 'अनुमानित कैलोरी (किलो कैलोरी)';

  @override
  String get health_workout_date_label => 'तारीख अऊर समय';

  @override
  String get plan_daily_wellness_roadmap => 'आपका व्यक्तिगत रोडमैप';

  @override
  String get plan_morning_routine => 'सुबह का दिनचर्या';

  @override
  String get plan_afternoon_routine => 'मिडडे वेलनेस';

  @override
  String get plan_evening_routine => 'शाम के विंड-डाउन';

  @override
  String get plan_coach_badge => 'ब्लूमी एआई कोच';

  @override
  String get plan_weekly_overview => '7-दिवसीय कल्याण फोकस';

  @override
  String get plan_targets_title => 'कल्याण लक्ष्य अऊर लक्ष्य';

  @override
  String get plan_calorie_budget_label => 'दैनिक कैलोरी बजट';

  @override
  String get plan_water_budget_label => 'दैनिक पानी का लक्ष्य';

  @override
  String get plan_step_budget_label => 'दैनिक कदम लक्ष्य';

  @override
  String get plan_macro_split_label => 'मैक्रोन्यूट्रिएंट अनुपात';

  @override
  String get profile_personal_details => 'व्यक्तिगत विवरण';

  @override
  String get profile_body_stats => 'शरीर के माप';

  @override
  String get profile_app_preferences => 'वरीयता अऊर ऐप सेटिंग्स';

  @override
  String get profile_edit_name_hint => 'आपक नाम';

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
  String get profile_gender_other => 'अन्य / न कहना पसंद करत';

  @override
  String get profile_activity_sedentary =>
      'गतिहीन (बहुत कम या कउनो व्यायाम नाहीं)';

  @override
  String get profile_activity_light => 'हल्का सक्रिय (1-3 दिन/सप्ताह)';

  @override
  String get profile_activity_moderate =>
      'मध्यम रूप से सक्रिय (3-5 दिन/सप्ताह)';

  @override
  String get profile_activity_very => 'बहुत सक्रिय (6-7 दिन/सप्ताह)';

  @override
  String get settings_wear_os_header => 'ओएस कम्पेनियन ऐप पहिनौ';

  @override
  String get settings_wear_os_desc =>
      'कैलोरी, पानी अऊर चरणन पर एक नज़र डालै के लिए अपने वियर ओएस घड़ी पर ब्लूमी टाइल अऊर जटिलता स्थापित करा।';

  @override
  String get settings_widgets_header => 'इंटरैक्टिव एंड्रॉइड विजेट';

  @override
  String get settings_widgets_desc =>
      'तुरंत अपडेट के लिए अपने डिवाइस होम स्क्रीन पर वास्तविक समय विजेट पिन करा।';

  @override
  String get settings_about_header => 'ब्लूमी के बारे मा';

  @override
  String get settings_about_version => 'संस्करण 1.0.0';

  @override
  String get settings_about_build => '100 बनावा';

  @override
  String get settings_about_credits =>
      'माइंडफुल, स्वस्थ जीवन जीए के देखभाल के साथ तैयार कीन गा है।';

  @override
  String get settings_terms_header => 'नियम अऊर शर्तें';

  @override
  String get settings_privacy_header => 'गोपनीयता नीति';

  @override
  String get settings_delete_header => 'खाता अऊर डाटा हटावा';

  @override
  String get settings_delete_warning =>
      'ई कार्रवाई का पूर्ववत नाहीं कीन जा सकत है। आपक सब भोजन, कसरत, महत्वपूर्ण अऊर प्रोफाइल स्थायी रूप से हटा दीन जइहैं।';

  @override
  String get settings_delete_confirm_btn => 'स्थायी रूप से हटावा';

  @override
  String get onboard_welcome_headline => 'ब्लूमी मा आपका स्वागत है ✨';

  @override
  String get onboard_welcome_tagline =>
      'आपके जीवन के आसपास डिज़ाइन कीन गा कोमल, माइंडफुल वेलनेस ट्रैकिंग।';

  @override
  String get onboard_step_about => 'आपके बारे मा';

  @override
  String get onboard_step_goals => 'आपक लक्ष्य';

  @override
  String get onboard_step_lifestyle => 'दैनिक आदत';

  @override
  String get onboard_step_permissions => 'अनुमति';

  @override
  String get onboard_step_plan => 'तैयार!';

  @override
  String get onboard_health_connect_perm => 'स्वास्थ्य कनेक्ट एक्सेस';

  @override
  String get onboard_step_sensors_perm => 'स्टेप काउंटर सेंसर';

  @override
  String get onboard_notif_perm => 'माइंडफुल रिमाइंडर अऊर नोटिफिकेशन';

  @override
  String get onboard_camera_perm => 'कैमरा (बारकोड अऊर खाद्य स्कैनर)';

  @override
  String get onboard_grant_permissions => 'अनुमति प्रदान करा';

  @override
  String get onboard_continue_dashboard => 'डैशबोर्ड खोलौ';

  @override
  String get notif_channel_hydration_name => 'हाइड्रेशन नड्स';

  @override
  String get notif_channel_hydration_desc => 'दिन भर मा कोमल पानी के अनुस्मारक';

  @override
  String get notif_channel_nutrition_name => 'भोजन अऊर पोषण अनुस्मारक';

  @override
  String get notif_channel_nutrition_desc =>
      'नाश्ता, लंच अऊर रात के खाना के अनुस्मारक अलर्ट';

  @override
  String get notif_channel_steps_name => 'कदम मील के पत्थर';

  @override
  String get notif_channel_steps_desc =>
      'दैनिक कदम लक्ष्य तक पहुँचते समय उत्सव';

  @override
  String get notif_channel_vitals_name => 'स्वास्थ्य अऊर महत्वपूर्ण जांच';

  @override
  String get notif_channel_vitals_desc =>
      'वजन अऊर सोवै के समय विंड-डाउन अनुस्मारक';

  @override
  String get notif_action_log_water => '💧 लॉग +250 मिलीलीटर';

  @override
  String get notif_action_snooze => 'स्नूज 15 मीटर';

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
