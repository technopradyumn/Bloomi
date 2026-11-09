// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dogri (`doi`).
class AppLocalizationsDoi extends AppLocalizations {
  AppLocalizationsDoi([String locale = 'doi']) : super(locale);

  @override
  String get app_name => 'ब्लूमी';

  @override
  String get nav_home => 'घर';

  @override
  String get nav_today => 'आज';

  @override
  String get nav_plan => 'योजना बनाई';

  @override
  String get nav_food => 'खाना';

  @override
  String get nav_food_diary => 'फूड डायरी';

  @override
  String get nav_workout => 'कसरत लॉग';

  @override
  String get nav_health => 'सेहत दा';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get save => 'बचाओ';

  @override
  String get cancel => 'रद्द करो';

  @override
  String get delete => 'डिलीट करो';

  @override
  String get edit => 'संपादन करो';

  @override
  String get done => 'हो गया';

  @override
  String get close => 'बंद करो';

  @override
  String get back => 'वापस';

  @override
  String get next => 'अगला';

  @override
  String get continue_btn => 'जारी रखो';

  @override
  String get confirm => 'पुष्टि करो';

  @override
  String get search => 'खोज करो';

  @override
  String get filter => 'छानने दा';

  @override
  String get all => 'सारे';

  @override
  String get active => 'सक्रिय';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get tomorrow => 'कल कल';

  @override
  String get add => 'जोड़ दे';

  @override
  String get remove => 'हटाओ';

  @override
  String get refresh => 'ताज़ा करो';

  @override
  String get retry => 'दोबारा कोशिश करो';

  @override
  String get error => 'त्रुटि';

  @override
  String get success => 'सफलता';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get no_data => 'कोई डाटा उपलब्ध नेईं ऐ';

  @override
  String get offline => 'ऑफलाइन मोड';

  @override
  String get offline_sub => 'इक बारी दुबारा कनेक्ट होने पर बदलाव सिंक होई जाङन';

  @override
  String get undo => 'पूर्ववत करो';

  @override
  String get portion => 'हिस्सा';

  @override
  String get quantity => 'मात्रा';

  @override
  String get unit => 'इकाई';

  @override
  String get clear => 'साफ कर दे';

  @override
  String get select => 'चयन करो';

  @override
  String get apply => 'आवेदन करो';

  @override
  String get reset => 'रीसेट करो';

  @override
  String get ok => 'ठीक ऐ';

  @override
  String get yes => 'जी हां';

  @override
  String get no => 'न';

  @override
  String get optional => 'वैकल्पिक ऐ';

  @override
  String get calories => 'कैलोरी दी';

  @override
  String get protein => 'प्रोटीन दा';

  @override
  String get carbs => 'कार्ब्स';

  @override
  String get fat => 'मोटा';

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
  String get milliliters => 'एमएल';

  @override
  String get kilograms => 'किग्रा';

  @override
  String get pounds => 'पौंड';

  @override
  String get centimeters => 'सेमी';

  @override
  String get inches => 'में';

  @override
  String get bpm => 'बी पी एम';

  @override
  String get hours => 'घण्टे';

  @override
  String get minutes => 'मिंट';

  @override
  String get serving => 'सेवा देना';

  @override
  String get servings => 'परोसने दी';

  @override
  String get serving_size => 'परोसने दा साइज';

  @override
  String get per_100g => 'प्रति 100 जी';

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
  String get home_greeting_morning => 'गुड मॉर्निंग';

  @override
  String get home_greeting_afternoon => 'शुभ दोपहर';

  @override
  String get home_greeting_evening => 'शुभ शाम';

  @override
  String get home_streak_title => 'खिलना लकीर';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '__पीएच_0__ दिन दी लकीर',
      one: '१ दिन दी लकीर',
      zero: '0 दिन दी लकीर',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'जला गया';

  @override
  String get home_calories_budget => 'कैलोरी बजट';

  @override
  String home_calories_remaining(Object kcal) {
    return '__पीएच_0__ किलो कैलोरी बाकी ऐ';
  }

  @override
  String get home_water_title => 'रोजाना हाइड्रेशन करना';

  @override
  String home_water_goal(Object current, Object target) {
    return '__पीएच_0__ / __पीएच_1__ एमएल';
  }

  @override
  String get home_steps_title => 'कदम चलदे';

  @override
  String get home_quick_actions => 'त्वरित कार्रवाई';

  @override
  String get home_log_meal => 'लॉग खाना';

  @override
  String get home_log_water => 'लॉग पानी';

  @override
  String get home_log_workout => 'लॉग कसरत';

  @override
  String get home_log_weight => 'लॉग वजन';

  @override
  String get home_insights_title => 'आज की अंतर्दृष्टि';

  @override
  String get home_quote => 'छोटे-छोटे स्वस्थ विकल्प खिलदे बदलाव पैदा करदे न।';

  @override
  String get home_ai_coach_tip => 'ब्लूमी ऐ कोच';

  @override
  String get home_surroundings => 'आसपास & हवा';

  @override
  String get home_notifications => 'सूचनाएं दी';

  @override
  String get home_daily_score => 'दैनिक कल्याण स्कोर';

  @override
  String get home_view_all => 'सारे देखें';

  @override
  String get food_diary_title => 'फूड डायरी';

  @override
  String get food_breakfast => 'नाश्ता';

  @override
  String get food_lunch => 'दोपहर दा खाना';

  @override
  String get food_dinner => 'रात दा खाना';

  @override
  String get food_snacks => 'स्नैक्स';

  @override
  String get food_add_food => 'फूड डालें';

  @override
  String get food_edit_food => 'खाना संपादित करो';

  @override
  String get food_add_breakfast => 'नाश्ता जोड़ो';

  @override
  String get food_add_lunch => 'लंच जोड़ो';

  @override
  String get food_add_dinner => 'डिनर जोड़ो';

  @override
  String get food_add_snack => 'स्नैक डाल दे';

  @override
  String get food_total_calories => 'कुल कैलोरी';

  @override
  String get food_empty_meal =>
      'इस खाने लेई अजें तगर कोई खाद्य पदार्थ लॉग नेईं कीता गेआ';

  @override
  String get food_empty_diary => 'इस दिन लेई कोई खाना लॉग नेईं कीता गेआ';

  @override
  String get food_log_first_meal =>
      'अपना पैह्ला स्वादिष्ट खाना लॉग करने लेई + टैप करो';

  @override
  String get food_quick_add => 'क्विक ऐड';

  @override
  String get food_search_hint => 'पकवान, फल, दाल, रोटी खोजें...';

  @override
  String get food_custom_recipe => 'कस्टम फूड एंड रेसिपी';

  @override
  String get food_scan_barcode => 'बारकोड स्कैन करो';

  @override
  String get food_camera_scan => 'ए आई फूड स्कैनर';

  @override
  String get food_recent => 'हाल ही च खाद्य पदार्थ';

  @override
  String get food_favourites => 'पसंदीदा';

  @override
  String get food_macro_summary => 'मैक्रोन्यूट्रिएंट दा विभाजन';

  @override
  String get food_delete_meal_confirm =>
      'क्या तुसें गी पक्का ऐ जे तुस इस आइटम गी हटाना चांह् दे ओ?';

  @override
  String get food_item_deleted => 'खाद्य आइटम हटा दी';

  @override
  String get food_remaining => 'बचे हुए';

  @override
  String get food_consumed => 'खपत कर दित्ता';

  @override
  String food_of_target(Object target) {
    return '__पीएच_0__ किलो कैलोरी दा';
  }

  @override
  String get foodSearch_title => 'खाद्य पदार्थ खोजें';

  @override
  String get foodSearch_scan_barcode => 'बारकोड स्कैन करो';

  @override
  String get foodSearch_take_photo => 'स्नैप फूड फोटो';

  @override
  String get foodSearch_custom_food => 'कस्टम फूड बनाओ';

  @override
  String get foodSearch_recent_searches => 'हाल ही में खोजें';

  @override
  String get foodSearch_popular => 'लोकप्रिय व्यंजन';

  @override
  String get foodSearch_no_results =>
      'तुंदी खोज कन्नै मेल खांदे कोई खाद्य पदार्थ नेईं';

  @override
  String get barcode_title => 'बारकोड स्कैनर ऐ';

  @override
  String get barcode_align => 'कैमरे दे फ्रेम दे अंदर बारकोड गी संरेखित करो';

  @override
  String get barcode_not_found => 'डेटाबेस च उत्पाद नेईं लब्भा';

  @override
  String get barcode_premium_feature =>
      'बारकोड स्कैनिंग ब्लूमी प्रो कन्नै उपलब्ध ऐ';

  @override
  String get camera_title => 'ए आई फूड स्कैनर';

  @override
  String get camera_tap_hint => 'अपनी पकवान की साफ फोटो खिंचवा';

  @override
  String get camera_analysing => 'फूड प्लेट दा विश्लेषण करदे होई...';

  @override
  String get camera_detected => 'पता लगाया आइटम';

  @override
  String get camera_flash => 'फ्लैश टॉगल करो';

  @override
  String get camera_retake => 'फोटो फिर से लेओ';

  @override
  String get camera_confirm_food => 'आइटम दी पुष्टि करो';

  @override
  String get customFood_title => 'कस्टम फूड एंड रेसिपी';

  @override
  String get customFood_name_hint => 'पकवान या घटक दा नाम';

  @override
  String get customFood_calories_hint => 'कैलोरी (केलोरी) ऐ।';

  @override
  String get customFood_protein_hint => 'प्रोटीन (जी) ऐ।';

  @override
  String get customFood_carbs_hint => 'कार्ब्स (जी) ऐ।';

  @override
  String get customFood_fat_hint => 'चर्बी (जी) ऐ।';

  @override
  String get customFood_save => 'नुस्खा बचाओ';

  @override
  String get water_tracker_title => 'पानी ट्रैकर';

  @override
  String get water_daily_target => 'दैनिक हाइड्रेशन दा लक्ष्य';

  @override
  String get water_logged_today => 'आज लॉग कीता';

  @override
  String get water_add_glass => '+250 मिलीलीटर ग्लास';

  @override
  String get water_add_bottle => '+500 मिलीलीटर बोतल';

  @override
  String get water_custom_amount => 'कस्टम रकम';

  @override
  String get water_reminder_tip =>
      'स्थिर ऊर्जा आस्तै दिन भर नियमित रूप कन्नै पानी पीओ ।';

  @override
  String water_logged_toast(Object amount) {
    return 'लॉग $amount मिलीलीटर पानी 💧';
  }

  @override
  String get workout_title => 'कसरत लॉग';

  @override
  String get workout_add_exercise => 'वर्कआउट जोड़ो';

  @override
  String get workout_cardio => 'कार्डियो';

  @override
  String get workout_strength => 'ताकत';

  @override
  String get workout_yoga => 'योग ते लचीलापन';

  @override
  String get workout_duration => 'अवधि';

  @override
  String get workout_intensity => 'तीव्रता';

  @override
  String get workout_calories_burned => 'कैलोरी जली गई';

  @override
  String get workout_empty => 'आज कोई वर्कआउट लॉग नहीं हुआ';

  @override
  String get workout_save_success => 'कसरत सफलतापूर्वक बचाया!';

  @override
  String get workout_type => 'कसरत दा प्रकार';

  @override
  String get workout_notes => 'नोट ते चिंतन';

  @override
  String get health_overview_title => 'सेहत ते महत्वपूर्ण';

  @override
  String get health_heart_rate => 'दिल दी धड़कन';

  @override
  String get health_blood_oxygen => 'खून च आक्सीजन (SpO2)';

  @override
  String get health_blood_pressure => 'ब्लड प्रेशर दा';

  @override
  String get health_blood_glucose => 'ब्लड ग्लूकोज दा';

  @override
  String get health_body_temperature => 'शरीर दा तापमान';

  @override
  String get health_sleep_tracking => 'नींद ट्रैकिंग';

  @override
  String get health_weight_tracking => 'वजन ते शरीर दी रचना';

  @override
  String get health_waist_hip => 'कमर ते कूल्हे दा अनुपात';

  @override
  String get health_devices_hub => 'डिवाइस ते स्मार्टवॉच हब';

  @override
  String get health_sync_now => 'सेहत डेटा सिंक करो';

  @override
  String health_last_synced(Object time) {
    return 'पिछले सिंक: __पीएच_0__';
  }

  @override
  String get health_manual_entry => 'मैनुअल हेल्थ एंट्री';

  @override
  String get health_metric_detail => 'मीट्रिक विवरण';

  @override
  String get health_connected_sensors => 'कनेक्टेड हेल्थ सेंसर';

  @override
  String get plan_title => 'दैनिक योजना';

  @override
  String get plan_weekly_title => 'साप्ताहिक कल्याण योजना';

  @override
  String get plan_calorie_target => 'कैलोरी लक्ष्य';

  @override
  String get plan_water_target => 'हाइड्रेशन दा लक्ष्य';

  @override
  String get plan_step_target => 'कदम निशाना';

  @override
  String get plan_sleep_target => 'नींद निशाना';

  @override
  String get plan_meal_suggestions => 'खाने दे सुझाव';

  @override
  String get plan_healthy_habits => 'स्वस्थ आदतें ते टिप्स';

  @override
  String get plan_coach_advice => 'ब्लूमी ऐ कोच सिफारिशें';

  @override
  String get plan_generated_title => 'निजीकृत दैनिक शेड्यूल';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'प्रोफाइल संपादत करो';

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
  String get profile_activity_level => 'गतिविधि दा स्तर';

  @override
  String get profile_stats => 'मेरे वेलनेस आँकड़े';

  @override
  String get profile_saved => 'प्रोफाइल सफलतापूर्वक अपडेट कीता गेआ';

  @override
  String get profile_bmi => 'शरीर द्रव्यमान सूचकांक (बीएमआई)';

  @override
  String get profile_membership => 'सदस्यता';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get preferences_habits => 'पसंद ते आदतें';

  @override
  String get appearance_theme => 'रूप-रंग & थीम';

  @override
  String get appearance_theme_sub =>
      'डार्क, लाइट, सिस्टम मोड ते ऐप बैकग्राउंड विकल्प';

  @override
  String get permissions => 'अनुमतियां ते सिस्टम एक्सेस';

  @override
  String get permissions_sub =>
      'हेल्थ कनेक्ट, स्टेप सेंसर, जीपीएस, सूचनाएं ते कैमरा';

  @override
  String get reminders_notifications => 'याद दिलांदे न ते सूचनाएं';

  @override
  String get reminders_sub =>
      'खाने दा समां, पानी, वजन चेक-इन & सोने दे समें याद दिलांदे न';

  @override
  String get units_of_measurement => 'मापने दी इकाइयां';

  @override
  String get units_sub =>
      'मीट्रिक (किलोग्राम, सेमी, एमएल, किमी) या इंपीरियल (एलबीएस, फुट/इंच, एफएल औंस)';

  @override
  String get app_language => 'ऐप भाषा';

  @override
  String get language_sub =>
      'अंग्रेजी, हिन्दी (हिंदी), हिंगली & 195+ वैश्विक भाषाएं';

  @override
  String get home_screen_widgets => 'होम स्क्रीन विजेट';

  @override
  String get widgets_sub =>
      'लाइव एंड्रॉयड विजेट: हब, कदम, पानी, पोषण ते शुभंकर';

  @override
  String get wear_os_watch_app => 'ओएस घड़ी ऐप पहनना';

  @override
  String get wear_os_sub =>
      'स्मार्टवॉच साथी, टाइल्स, जटिलताएं & लाइव महत्वपूर्ण';

  @override
  String get goals_wellness => 'लक्ष्य ते कल्याण दी जानकारी';

  @override
  String get nutrition_targets => 'पोषण लक्ष्य ते मैक्रो स्प्लिट';

  @override
  String get nutrition_targets_sub =>
      'कैलोरी लक्ष्य, प्रोटीन, कार्ब्स, वसा & पानी दा लक्ष्य';

  @override
  String get weekly_recap => 'साप्ताहिक कल्याण रिकैप';

  @override
  String get weekly_recap_sub =>
      '7-दिन कैलोरी औसत, मैक्रो अनुपात & सर्वश्रेष्ठ दिन';

  @override
  String get streaks_milestones => 'लकीरें ते मील दे पत्थर';

  @override
  String get streaks_sub => 'सक्रिय खिलने दी लकीरें, बिल्ला & उपलब्धियां';

  @override
  String get connected_devices => 'कनेक्टेड डिवाइस ते इकोसिस्टम';

  @override
  String get devices_hub => 'डिवाइस ते स्मार्टवॉच हब';

  @override
  String get devices_hub_sub =>
      'हेल्थ कनेक्ट, गैलेक्सी घड़ी, पिक्सेल घड़ी, गार्मिन';

  @override
  String get surroundings_weather => 'आसपास & मौसम';

  @override
  String get surroundings_sub =>
      'हवा दी गुणवत्ता (एक्यूआई), यूवी इंडेक्स ते मौसम हाइड्रेशन टिप्स';

  @override
  String get bloomi_pro => 'ब्लूमी प्रो सदस्यता';

  @override
  String get bloomi_pro_sub =>
      'ऐ प्लान कोच, 5 होम स्क्रीन विजेट & महत्वपूर्ण ट्रैकिंग';

  @override
  String get about_security => 'ABOUT & SECURITY दे बारे च';

  @override
  String get about_bloomi => 'ब्लूमी दे बारे च';

  @override
  String get about_bloomi_sub => 'विनिर्देश, संस्करण, विशेषताएं दा निर्माण करो';

  @override
  String get privacy_policy => 'गोपनीयता नीति';

  @override
  String get privacy_policy_sub => 'ऑफलाइन-पहले, ऑन-डिवाइस डेटा आर्किटेक्चर';

  @override
  String get terms_conditions => 'नियम ते शर्तें';

  @override
  String get terms_conditions_sub =>
      'सेवा दी शर्तें ते कल्यानकारी दिशा-निर्देश';

  @override
  String get delete_account => 'खाता & डेटा हटाओ';

  @override
  String get delete_account_sub =>
      'लोकल SQLite डेटा ते क्लाउड बैकअप गी अनिवार्य रूप कन्नै मिटाओ';

  @override
  String get healthy_habits => 'कोमल, स्थायी कल्याण आदतें बनाओ';

  @override
  String get all_logs => 'मेरा ट्रैक कीता गेदा डेटा ते लॉग';

  @override
  String get search_language => 'भाषा या देशी लिपि दे अनुसार खोज करो...';

  @override
  String get languages_available => 'भाषाएं उपलब्ध न';

  @override
  String get no_matching_languages => 'कोई मिलान भाषा नहीं मिली';

  @override
  String get try_searching =>
      'देशी लिपि जां अंग्रेजी वर्तनी कन्नै खोज करने दी कोशश करो';

  @override
  String get partially_translated => 'आंशिक रूप कन्नै अनुवाद कीता गेदा ऐ';

  @override
  String get complete_translation => 'पूरा';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'भाषा $name ( $nativeName ) पर सेट कीती गेई।';
  }

  @override
  String get surroundings_title => 'आसपास & पर्यावरण';

  @override
  String get surroundings_aqi => 'हवा दी गुणवत्ता सूचकांक';

  @override
  String get surroundings_uv => 'यूवी इंडेक्स';

  @override
  String get surroundings_temp => 'तापमान दा';

  @override
  String get surroundings_humidity => 'नमी';

  @override
  String get surroundings_hydration_advice =>
      'मौजूदा मौसम दी स्थिति च खरी चाल्ली हाइड्रेटेड रौह्ओ ।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'खाना खोजें';

  @override
  String get food_quick_barcode => 'स्कैन बारकोड 👑';

  @override
  String get food_quick_water => 'पानी डालें';

  @override
  String get food_quick_custom => 'कस्टम खाना';

  @override
  String get surroundings_good => 'अच्छा';

  @override
  String get surroundings_moderate => 'मध्यम';

  @override
  String get surroundings_unhealthy => 'अस्वस्थ';

  @override
  String get notifications_title => 'सूचनाएं ते अलर्ट';

  @override
  String get notifications_empty => 'कोई नई सूचना नहीं';

  @override
  String get notifications_mark_read => 'सारे गी पढ़ने दे रूप च निशान लगाओ';

  @override
  String get notifications_clear => 'सब साफ कर दे';

  @override
  String get reminders => 'याद दिलाओ सेटिंग्स';

  @override
  String get notifications => 'सूचनाएं दी';

  @override
  String get reminders_breakfast_title => 'नाश्ते दी याद दिलाओ 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'गुड मॉर्निंग ! $time पर पौष्टिक नाश्ते दा समां .';
  }

  @override
  String get reminders_lunch_title => 'लंच रिमाइंडर 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'रुकिए $time पर संतुलित, दिमागी लंच दा मजा लैओ।';
  }

  @override
  String get reminders_dinner_title => 'रात दे खाने दी याद दिलाओ 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time पर हल्के, संतोषजनक रात दे खाने दा वक्त।';
  }

  @override
  String get reminders_water_title => 'हाइड्रेशन धक्का 💧';

  @override
  String reminders_water_body(Object time) {
    return 'ताजा गिलास पानी पीने दा वक्त ! ( __पीएच_0__ ) ऐ।';
  }

  @override
  String get reminders_weight_title => 'साप्ताहिक तौलना ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ब्लूमी ( $time ) पर अपने हफ्तेवार शरीर मैट्रिक्स गी ट्रैक करो।';
  }

  @override
  String get reminders_sleep_title => 'सोने दे वक्त हवा-डाउन 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'आराम करो ते आरामदायक नींद दी तैयारी करो ( $time ).';
  }

  @override
  String get onboard_welcome => 'ब्लूमी च तुंदा सुआगत ऐ';

  @override
  String get onboard_sub => 'तुंदा दोस्ताना, ऑफलाइन-पहले सेहत ते पोषण साथी।';

  @override
  String get onboard_get_started => 'शुरू कर दे';

  @override
  String get onboard_sign_in => 'साइन इन करो';

  @override
  String get onboard_skip => 'छोड़ दे';

  @override
  String get onboard_choose_goal => 'तुंदा प्राथमिक कल्याण लक्ष्य केह् ऐ ?';

  @override
  String get onboard_goal_weight_loss => 'कोमल वजन घटाने';

  @override
  String get onboard_goal_muscle => 'मांसपेशियों दा फायदा & ताकत';

  @override
  String get onboard_goal_energy => 'दैनिक ऊर्जा ते जीवन शक्ति';

  @override
  String get onboard_goal_habits => 'स्वस्थ माइंडफुल ईटिंग';

  @override
  String get onboard_about_you => 'अपने बारे च दस्सो';

  @override
  String get onboard_lifestyle => 'तुंदी रोजमर्रा दी दिनचर्या';

  @override
  String get onboard_permissions_title => 'अनुमतियां ते सिस्टम एक्सेस';

  @override
  String get onboard_permissions_sub =>
      'सिंक चरणें, वर्कआउट, ते याददाश्तें दी पहुंच प्रदान करो।';

  @override
  String get onboard_plan_ready_title => 'तुंदा कस्टम प्लान तैयार ऐ !';

  @override
  String get onboard_plan_ready_sub =>
      'अस सिर्फ तुंदे लेई इक कोमल, निजी पोषण ते कल्याण रोडमैप तैयार कीता।';

  @override
  String get onboard_enter_bloomi => 'ब्लूमी दा प्रवेश';

  @override
  String get insights_weekly_report => 'साप्ताहिक कल्याण रिकैप';

  @override
  String insights_best_day(Object day) {
    return 'सर्वश्रेष्ठ स्थिरता दिवस: __पीएच_0__';
  }

  @override
  String get insights_streaks_badges => 'लकीरें ते मील दे पत्थर';

  @override
  String insights_unlocked_on(Object date) {
    return '$date पर अनलॉक कीता गेआ।';
  }

  @override
  String get insights_keep_going => 'शानदार प्रगति जारी रखो !';

  @override
  String get widgets_title => 'होम स्क्रीन विजेट';

  @override
  String widgets_active_count(Object count) {
    return 'सक्रिय विजेट: __पीएच_0__ ऐ।';
  }

  @override
  String get widgets_hub_title => 'ब्लूमी वेलनेस हब';

  @override
  String get widgets_steps_title => 'स्टेप्स एंड एक्टिव रिंग';

  @override
  String get widgets_water_title => 'हाइड्रेशन क्विक लॉग';

  @override
  String get widgets_mascot_title => 'ब्लूमी शुभंकर साथी';

  @override
  String get wear_os_title => 'ओएस स्मार्टवॉच पहनें';

  @override
  String get wear_os_connected => 'देखने से जुड़े हुए';

  @override
  String get wear_os_sync => 'घड़ी डेटा सिंक करो';

  @override
  String get theme_title => 'रूप-रंग & थीम';

  @override
  String get theme_mode => 'थीम मोड';

  @override
  String get theme_light => 'रोशनी';

  @override
  String get theme_dark => 'अंधेरा';

  @override
  String get theme_system => 'सिस्टम डिफ़ॉल्ट ऐ';

  @override
  String get theme_background_palette => 'पृष्ठभूमि पैलेट';

  @override
  String get units_title => 'मापने दी इकाइयां';

  @override
  String get units_metric => 'मीट्रिक (किलो, सेमी, एमएल) ऐ।';

  @override
  String get units_imperial => 'इम्पीरियल (एलबीएस, में, एफएल औंस)';

  @override
  String get home_unable_load => 'डैशबोर्ड लोड करने च असमर्थ';

  @override
  String get home_health_permission_req => 'हेल्थ कनेक्ट दी अनुमति दी लोड़ ऐ';

  @override
  String get home_health_permission_desc =>
      'ब्लूमी गी असली कदम, दिल दी दर, ते मोबाइल होम विजेट गी असली समें च सिंक करने लेई हेल्थ कनेक्ट दी अनुमति दी लोड़ होंदी ऐ।';

  @override
  String get home_allow_health => 'हेल्थ कनेक्ट होने दी अनुमति देओ';

  @override
  String get home_ready_mindful_day => 'दिमागी दिन लेई तैयार ओ? ✨';

  @override
  String get home_quick_add => 'क्विक ऐड';

  @override
  String get home_live_gps => 'लाइव जीपीएस';

  @override
  String get home_calories_remaining_label => 'कैलोरी बचे दी';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'खाया: __पीएच_0__ / __पीएच_1__ किलो कैलोरी';
  }

  @override
  String get home_tap_water_tracker => 'पानी ट्रैकर 💧 के लिए नल';

  @override
  String get home_water_goal_reached => 'दैनिक लक्ष्य पहुचे 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining मिलीलीटर दैनिक लक्ष्य गी';
  }

  @override
  String get home_details => 'विस्तार कन्नै';

  @override
  String get home_upgrade_plan_desc =>
      'निजीकृत दैनिक लक्ष्य & एआई योजना अनलॉक करने लेई अपग्रेड करो';

  @override
  String get home_unlock => 'अनलॉक 👑';

  @override
  String get home_quick_log_hint => 'जल्दी इक वेलनेस एंट्री रिकार्ड करो';

  @override
  String get food_serving_size => 'परोसने दा साइज';

  @override
  String get food_serving_grams => 'सेवा देना (छ)';

  @override
  String get food_number_servings => 'सर्विंग्स दी गिनतरी';

  @override
  String get food_calories_per_serving => 'प्रति सेवा कैलोरी';

  @override
  String get food_recipe_ingredients => 'सामग्री';

  @override
  String get food_recipe_add_ingredient => 'घटक डालें';

  @override
  String get food_recipe_directions => 'निर्देश ते नोट्स';

  @override
  String get food_recipe_total => 'कुल नुस्खा पोषण';

  @override
  String get food_recipe_per_serving => 'प्रति परोसने पोषण';

  @override
  String get food_recipe_saved_toast => 'कस्टम खाना सफलतापूर्वक बचाया!';

  @override
  String get food_barcode_found => 'प्रोडक्ट मिल गया !';

  @override
  String get food_barcode_not_found_desc =>
      'खुल्ले डेटाबेस च असेंगी एह् बारकोड नेईं लब्भा। तुस इसगी कस्टम फूड दे रूप च बी पाई सकदे ओ।';

  @override
  String get food_add_custom_btn => 'कस्टम फूड जोड़ो';

  @override
  String get food_scan_again => 'फिर स्कैन करो';

  @override
  String get food_review_items => 'पता चलेआ खाद्य पदार्थें दी समीक्षा करो';

  @override
  String get food_review_hint =>
      'मात्रा समायोजित करो जां कुसै बी अनपहचान आइटम गी हटाओ';

  @override
  String get food_log_selected => 'लॉग चयनित खाद्य पदार्थ';

  @override
  String get food_favourites_title => 'पसंदीदा खाद्य पदार्थ';

  @override
  String get food_recent_title => 'हाल ही च खाद्य पदार्थ';

  @override
  String get food_no_favourites =>
      'अजे तक कोई पसंदीदा खाद्य पदार्थ नहीं। इत्थें बचाने लेई कुसै बी खाने पर दिल टैप करो।';

  @override
  String get food_no_recents => 'हाल च लॉग कीते गेदे खाद्य पदार्थ नेईं मिले।';

  @override
  String get food_nutrition_details_title => 'दैनिक पोषण दा ब्यौरा';

  @override
  String get food_macro_protein_label => 'प्रोटीन टूटना';

  @override
  String get food_macro_carbs_label => 'कार्ब्स टूटना';

  @override
  String get food_macro_fat_label => 'चर्बी टूटना';

  @override
  String get food_macro_fiber_label => 'फाइबर टूटना';

  @override
  String get food_daily_target_comparison => 'लक्ष्य तुलना करना';

  @override
  String food_target_label(Object target) {
    return 'लक्ष्य: __पीएच_0__ ऐ।';
  }

  @override
  String get food_edit_entry => 'डायरी प्रविष्टि संपादित करो';

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
    return '__पीएच_0__ दा __पीएच_1__ एमएल';
  }

  @override
  String get water_intake_history => 'आज के पानी के लॉग';

  @override
  String get water_no_logs_today =>
      'आज तक कोई पानी लॉग नहीं। हाइड्रेट करो ते इक त्वरित जोड़ो बटन टैप करो!';

  @override
  String get water_adjust_goal => 'रोजाना लक्ष्य समायोजित करो';

  @override
  String get health_connect_banner => 'हेल्थ कनेक्ट कन्नै जुड़े दा ऐ';

  @override
  String get health_vitals_summary => 'दैनिक सेहत महत्वपूर्ण';

  @override
  String get health_latest_heart_rate => 'लेटेस्ट हार्ट रेट';

  @override
  String get health_latest_bp => 'ब्लड प्रेशर दा';

  @override
  String get health_latest_spo2 => 'खून च ऑक्सीजन';

  @override
  String get health_latest_glucose => 'ब्लड ग्लूकोज दा';

  @override
  String get health_latest_weight => 'वजन';

  @override
  String get health_latest_sleep => 'नींद दी अवधि';

  @override
  String get health_add_manual => 'मैनुअल माप जोड़ना';

  @override
  String get health_history_trends => 'ऐतिहासिक रुझान';

  @override
  String get health_sync_success => 'सेहत दा डेटा सफलतापूर्वक सिंक कीता गेआ !';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '__पीएच_0__ घंटे __पीएच_1__ मिंट';
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
    return '__पीएच_0__ % ऐ।';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '__पीएच_0__ / __पीएच_1__ एमएमएचजी';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '__पीएच_0__ मिलीग्राम / डीएल';
  }

  @override
  String get health_devices_title => 'कनेक्टेड डिवाइस ते पहनने योग्य';

  @override
  String get health_devices_desc =>
      'जोड़ीदार स्मार्टवॉच, फिटनेस ट्रैकर, ते हेल्थ सेंसर दा प्रबंधन करो।';

  @override
  String get health_workout_editor_title => 'कसरत संपादित करो';

  @override
  String get health_workout_name_label => 'कसरत दा नाम';

  @override
  String get health_workout_duration_label => 'अवधि (मिनट) ऐ।';

  @override
  String get health_workout_calories_label => 'अनुमानित कैलोरी (केलोरी) ऐ।';

  @override
  String get health_workout_date_label => 'तारीख ते समें';

  @override
  String get plan_daily_wellness_roadmap => 'तुंदा निजीकृत रोडमैप';

  @override
  String get plan_morning_routine => 'सुबह दी दिनचर्या';

  @override
  String get plan_afternoon_routine => 'मिडडे वेलनेस';

  @override
  String get plan_evening_routine => 'शाम दी हवा-नीचे';

  @override
  String get plan_coach_badge => 'ब्लूमी ऐ कोच';

  @override
  String get plan_weekly_overview => '7 दिन दी वेलनेस फोकस';

  @override
  String get plan_targets_title => 'कल्याण लक्ष्य ते लक्ष्य';

  @override
  String get plan_calorie_budget_label => 'रोजाना कैलोरी बजट';

  @override
  String get plan_water_budget_label => 'दैनिक पानी दा लक्ष्य';

  @override
  String get plan_step_budget_label => 'दैनिक कदम लक्ष्य';

  @override
  String get plan_macro_split_label => 'मैक्रोन्यूट्रिएंट अनुपात';

  @override
  String get profile_personal_details => 'निजी विवरण';

  @override
  String get profile_body_stats => 'शरीर दे नाप';

  @override
  String get profile_app_preferences => 'प्राथमिकताएं ते ऐप सेटिंग्स';

  @override
  String get profile_edit_name_hint => 'तेरा नाम';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ऊंचाई ( __पीएच_0__ ) ऐ।';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'वजन ( __पीएच_0__ ) ऐ।';
  }

  @override
  String get profile_edit_age_hint => 'उम्र';

  @override
  String get profile_gender_male => 'नर';

  @override
  String get profile_gender_female => 'स्त्री';

  @override
  String get profile_gender_other => 'अन्य / न कहना पसंद करदे हैं';

  @override
  String get profile_activity_sedentary => 'बैठे दा (थोड़ी-थोड़ी कसरत नेईं)';

  @override
  String get profile_activity_light => 'हल्के सक्रिय (1-3 दिन/हफ्ते)';

  @override
  String get profile_activity_moderate => 'मध्यम सक्रिय (3-5 दिन/हफ्ते)';

  @override
  String get profile_activity_very => 'बहुत सक्रिय (6-7 दिन/हफ्ते)';

  @override
  String get settings_wear_os_header => 'ओएस साथी ऐप पहनना';

  @override
  String get settings_wear_os_desc =>
      'कैलोरी, पानी, ते कदमें पर नज़र पाने लेई अपनी वियर ओएस घड़ी पर ब्लूमी टाइल ते जटिलता स्थापित करो।';

  @override
  String get settings_widgets_header => 'इंटरएक्टिव एंड्रॉयड विजेट';

  @override
  String get settings_widgets_desc =>
      'तुरत अपडेट लेई अपने डिवाइस होम स्क्रीन पर रियल-टाइम विजेट पिन करो।';

  @override
  String get settings_about_header => 'ब्लूमी दे बारे च';

  @override
  String get settings_about_version => 'संस्करण 1.0.0 ऐ';

  @override
  String get settings_about_build => '100 बनाओ';

  @override
  String get settings_about_credits =>
      'दिमागी, स्वस्थ जीवन जीने दी देखभाल कन्नै तैयार कीता गेदा।';

  @override
  String get settings_terms_header => 'नियम ते शर्तें';

  @override
  String get settings_privacy_header => 'गोपनीयता नीति';

  @override
  String get settings_delete_header => 'खाता & डेटा हटाओ';

  @override
  String get settings_delete_warning =>
      'इस कार्रवाई गी वापस नेईं कीता जाई सकदा। तुंदे सारे खाने, वर्कआउट, वाइटल, ते प्रोफाइल स्थाई तौर उप्पर डिलीट होई जाग।';

  @override
  String get settings_delete_confirm_btn => 'स्थायी रूप से डिलीट करो';

  @override
  String get onboard_welcome_headline => 'ब्लूमी ✨ च तुंदा सुआगत ऐ';

  @override
  String get onboard_welcome_tagline =>
      'अपने जीवन दे आसपास डिजाइन कीती गेदी कोमल, माइंडफुल वेलनेस ट्रैकिंग।';

  @override
  String get onboard_step_about => 'तुहाडे बारे च';

  @override
  String get onboard_step_goals => 'तेरे लक्ष्य';

  @override
  String get onboard_step_lifestyle => 'रोजाना आदतें';

  @override
  String get onboard_step_permissions => 'इजाजत दे';

  @override
  String get onboard_step_plan => 'तैयार हो जाओ !';

  @override
  String get onboard_health_connect_perm => 'हेल्थ कनेक्ट एक्सेस';

  @override
  String get onboard_step_sensors_perm => 'स्टेप काउंटर सेंसर';

  @override
  String get onboard_notif_perm => 'माइंडफुल रिमाइंडर ते सूचनाएं';

  @override
  String get onboard_camera_perm => 'कैमरा (बारकोड ते फूड स्कैनर)';

  @override
  String get onboard_grant_permissions => 'अनुमति दे दे';

  @override
  String get onboard_continue_dashboard => 'डैशबोर्ड खोलो';

  @override
  String get notif_channel_hydration_name => 'हाइड्रेशन नडज';

  @override
  String get notif_channel_hydration_desc =>
      'दिन भर कोमल पानी दी याद दिलांदी ऐ';

  @override
  String get notif_channel_nutrition_name => 'भोजन ते पोषण दी याद दिलांदे न';

  @override
  String get notif_channel_nutrition_desc =>
      'नाश्ता, लंच, ते डिनर दी याद दिलांदे अलर्ट';

  @override
  String get notif_channel_steps_name => 'कदम मील के पत्थर';

  @override
  String get notif_channel_steps_desc =>
      'रोजमर्रा दे कदम दे लक्ष्य तगर पुज्जने पर जश्न मनाना';

  @override
  String get notif_channel_vitals_name => 'हेल्थ एंड वाइटल चेक';

  @override
  String get notif_channel_vitals_desc =>
      'वजन ते सोने दे समें हवा-डाउन याद दिलांदे न';

  @override
  String get notif_action_log_water => '💧 लॉग +250ml';

  @override
  String get notif_action_snooze => 'स्नूज़ 15मी';

  @override
  String get notif_action_log_meal => '🥗 लॉग खाना';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
