// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsSa extends AppLocalizations {
  AppLocalizationsSa([String locale = 'sa']) : super(locale);

  @override
  String get app_name => 'ब्लूमी';

  @override
  String get nav_home => 'गृहम्';

  @override
  String get nav_today => 'अद्य';

  @override
  String get nav_plan => 'योजना';

  @override
  String get nav_food => 'भोजनम्';

  @override
  String get nav_food_diary => 'खाद्य डायरी';

  @override
  String get nav_workout => 'वर्कआउट लॉग';

  @override
  String get nav_health => 'स्वास्थ्य';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get save => 'रक्षतु';

  @override
  String get cancel => 'रद्दं कुर्वन्तु';

  @override
  String get delete => 'विलोपयतु';

  @override
  String get edit => 'सम्पादयतु';

  @override
  String get done => 'कृतम्';

  @override
  String get close => 'निमील्यताम्';

  @override
  String get back => 'पृष्ठतः';

  @override
  String get next => 'तदनन्तरम्';

  @override
  String get continue_btn => 'निरन्तरं कुर्वन्तु';

  @override
  String get confirm => 'पुष्टिं कुर्वन्तु';

  @override
  String get search => 'अन्वेषणम्';

  @override
  String get filter => 'फ़िल्टर';

  @override
  String get all => 'सर्वे';

  @override
  String get active => 'सक्रियः';

  @override
  String get today => 'अद्य';

  @override
  String get yesterday => 'कालः';

  @override
  String get tomorrow => 'श्वः';

  @override
  String get add => 'योजयतु';

  @override
  String get remove => 'निष्कासयतु';

  @override
  String get refresh => 'ताजगी';

  @override
  String get retry => 'पुनः प्रयासं कुर्वन्तु';

  @override
  String get error => 'त्रुटिः';

  @override
  String get success => 'सफलता';

  @override
  String get loading => 'लोडिंग...';

  @override
  String get no_data => 'न कोऽपि दत्तांशः उपलब्धः';

  @override
  String get offline => 'अफलाइन मोड';

  @override
  String get offline_sub =>
      'परिवर्तनं एकवारं पुनः संयोजितं कृत्वा समन्वयनं भविष्यति';

  @override
  String get undo => 'पूर्ववत';

  @override
  String get portion => 'भागः';

  @override
  String get quantity => 'परिमाणम्';

  @override
  String get unit => 'इकाई';

  @override
  String get clear => 'स्पष्टम्';

  @override
  String get select => 'चयनं कुर्वन्तु';

  @override
  String get apply => 'प्रयोजयन्तु';

  @override
  String get reset => 'पुनः सेट् करें';

  @override
  String get ok => 'ठीकम्';

  @override
  String get yes => 'आम्';

  @override
  String get no => 'न';

  @override
  String get optional => 'वैकल्पिकम्';

  @override
  String get calories => 'कैलोरी';

  @override
  String get protein => 'प्रोटीनम्';

  @override
  String get carbs => 'कार्ब्स्';

  @override
  String get fat => 'मेदः';

  @override
  String get fiber => 'तन्तुः';

  @override
  String get water => 'जलम्';

  @override
  String get steps => 'सोपानम्';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'छ';

  @override
  String get milliliters => 'मि.ली';

  @override
  String get kilograms => 'किग्रा';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'सेमी';

  @override
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'घण्टाः';

  @override
  String get minutes => 'मिनिट्';

  @override
  String get serving => 'सेवां कुर्वन्';

  @override
  String get servings => 'सेवाः';

  @override
  String get serving_size => 'सेवा आकार';

  @override
  String get per_100g => 'प्रति १००g';

  @override
  String get india => 'भारत';

  @override
  String get asia => 'एशिया';

  @override
  String get europe => 'यूरोप';

  @override
  String get middle_east => 'मध्यपूर्वः';

  @override
  String get africa => 'आफ्रिका';

  @override
  String get americas => 'अमेरिकादेशः';

  @override
  String get home_title => 'गृहम्';

  @override
  String get home_greeting_morning => 'सुप्रभातम्';

  @override
  String get home_greeting_afternoon => 'शुभ अपराह्ण';

  @override
  String get home_greeting_evening => 'शुभ सन्ध्या';

  @override
  String get home_streak_title => 'पुष्प लकीर';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवसों की लकीर',
      one: '१ दिवसस्य क्रमः',
      zero: '० दिवसीय लकीर',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'दग्धः';

  @override
  String get home_calories_budget => 'कैलोरी बजट';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal अवशिष्टम्';
  }

  @override
  String get home_water_title => 'दैनिक जलीकरण';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'सोपानं चलितम्';

  @override
  String get home_quick_actions => 'द्रुतक्रियाः';

  @override
  String get home_log_meal => 'लॉग भोजन';

  @override
  String get home_log_water => 'लॉग जलम्';

  @override
  String get home_log_workout => 'लॉग वर्कआउट';

  @override
  String get home_log_weight => 'लॉग वेट';

  @override
  String get home_insights_title => 'अद्यतनम् अन्वेषणम्';

  @override
  String get home_quote => 'लघु स्वस्थविकल्पाः पुष्पितानि परिवर्तनानि सृजन्ति।';

  @override
  String get home_ai_coach_tip => 'ब्लूमी ए आई कोच';

  @override
  String get home_surroundings => 'परिवेश एवं वायु';

  @override
  String get home_notifications => 'अधिसूचना';

  @override
  String get home_daily_score => 'दैनिक कल्याण स्कोर';

  @override
  String get home_view_all => 'सर्वाणि पश्यन्तु';

  @override
  String get food_diary_title => 'खाद्य डायरी';

  @override
  String get food_breakfast => 'प्रातःभोजनम्';

  @override
  String get food_lunch => 'मध्याह्नभोजनम्';

  @override
  String get food_dinner => 'रात्रिभोजनम्';

  @override
  String get food_snacks => 'जलपानम्';

  @override
  String get food_add_food => 'अन्नं योजयतु';

  @override
  String get food_edit_food => 'भोजनं सम्पादयतु';

  @override
  String get food_add_breakfast => 'प्रातःभोजनं योजयन्तु';

  @override
  String get food_add_lunch => 'मध्याह्नभोजनं योजयन्तु';

  @override
  String get food_add_dinner => 'रात्रिभोजनं योजयन्तु';

  @override
  String get food_add_snack => 'स्नैकं योजयन्तु';

  @override
  String get food_total_calories => 'कुल कैलोरी';

  @override
  String get food_empty_meal =>
      'अस्य भोजनस्य कृते अद्यापि कोऽपि आहारः लॉग् न कृतः';

  @override
  String get food_empty_diary => 'अस्य दिवसस्य कृते भोजनं न लॉग् कृतम्';

  @override
  String get food_log_first_meal =>
      'प्रथमं स्वादिष्टं भोजनं लॉग् कर्तुं + ट्याप् कुर्वन्तु';

  @override
  String get food_quick_add => 'त्वरित योजयतु';

  @override
  String get food_search_hint => 'व्यञ्जन, फल, दाल, रोटी...';

  @override
  String get food_custom_recipe => 'कस्टम खाद्य एवं नुस्खा';

  @override
  String get food_scan_barcode => 'स्कैन बारकोड';

  @override
  String get food_camera_scan => 'ए आई खाद्य स्कैनर';

  @override
  String get food_recent => 'अद्यतन खाद्य पदार्थ';

  @override
  String get food_favourites => 'प्रियाः';

  @override
  String get food_macro_summary => 'स्थूलपोषकविच्छेदः';

  @override
  String get food_delete_meal_confirm =>
      'किं भवन्तः निश्चयेन एतत् द्रव्यं हर्तुं इच्छन्ति?';

  @override
  String get food_item_deleted => 'खाद्यपदार्थः निष्कासितः';

  @override
  String get food_remaining => 'अवशिष्टः';

  @override
  String get food_consumed => 'उपभोक्तः';

  @override
  String food_of_target(Object target) {
    return 'के __पीएच_0__ किलो';
  }

  @override
  String get foodSearch_title => 'खाद्यपदार्थान् अन्वेष्टुम्';

  @override
  String get foodSearch_scan_barcode => 'स्कैन बारकोड';

  @override
  String get foodSearch_take_photo => 'स्नैप फूड फोटो';

  @override
  String get foodSearch_custom_food => 'कस्टम फूड रचयन्तु';

  @override
  String get foodSearch_recent_searches => 'अद्यतन अन्वेषणम्';

  @override
  String get foodSearch_popular => 'लोकप्रिय व्यञ्जन';

  @override
  String get foodSearch_no_results => 'भवतः अन्वेषणस्य अनुरूपाः आहाराः न सन्ति';

  @override
  String get barcode_title => 'बारकोड स्कैनर';

  @override
  String get barcode_align =>
      'कॅमेरा-चतुष्कोणस्य अन्तः बारकोड्-संरेखणं कुर्वन्तु';

  @override
  String get barcode_not_found => 'उत्पादः दत्तांशकोशे न प्राप्तः';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro इत्यनेन बारकोड् स्कैनिङ्ग् उपलभ्यते';

  @override
  String get camera_title => 'ए आई खाद्य स्कैनर';

  @override
  String get camera_tap_hint => 'भवतः पक्वान्नस्य स्पष्टं फोटो गृह्यताम्';

  @override
  String get camera_analysing => 'खाद्य थाली विश्लेषण करते हुए...';

  @override
  String get camera_detected => 'ज्ञातानि वस्तूनि';

  @override
  String get camera_flash => 'Flash toggle कुर्वन्तु';

  @override
  String get camera_retake => 'पुनः फोटो ग्रहण करें';

  @override
  String get camera_confirm_food => 'वस्तूनि पुष्टयन्तु';

  @override
  String get customFood_title => 'कस्टम खाद्य एवं नुस्खा';

  @override
  String get customFood_name_hint => 'पक्वान्नं वा अवयवनाम';

  @override
  String get customFood_calories_hint => 'कैलोरी (kcal) ९.';

  @override
  String get customFood_protein_hint => 'प्रोटीन (छ) ९.';

  @override
  String get customFood_carbs_hint => 'कार्ब्स् (छ) ९.';

  @override
  String get customFood_fat_hint => 'मेदः (छ) २.';

  @override
  String get customFood_save => 'नुस्खा रक्षतु';

  @override
  String get water_tracker_title => 'जलनिरीक्षकः';

  @override
  String get water_daily_target => 'दैनिक जलीकरण लक्ष्य';

  @override
  String get water_logged_today => 'अद्य लॉग् कृतम्';

  @override
  String get water_add_glass => '+250 ml काच';

  @override
  String get water_add_bottle => '+500 ml बोतल';

  @override
  String get water_custom_amount => 'कस्टम राशि';

  @override
  String get water_reminder_tip =>
      'स्थिरशक्तिं प्राप्तुं दिनभरि नियमितरूपेण जलं पिबन्तु।';

  @override
  String water_logged_toast(Object amount) {
    return 'लॉग् $amount ml जल 💧';
  }

  @override
  String get workout_title => 'वर्कआउट लॉग';

  @override
  String get workout_add_exercise => 'Workout इति योजयतु';

  @override
  String get workout_cardio => 'हृदय';

  @override
  String get workout_strength => 'बलम्';

  @override
  String get workout_yoga => 'योग एवं लचीलापन';

  @override
  String get workout_duration => 'अवधिः';

  @override
  String get workout_intensity => 'तीव्रता';

  @override
  String get workout_calories_burned => 'कैलोरी दग्ध';

  @override
  String get workout_empty => 'अद्य कोऽपि वर्कआउट् लॉग् न कृतः';

  @override
  String get workout_save_success => 'वर्कआउट् सफलतया रक्षितम्!';

  @override
  String get workout_type => 'वर्कआउट प्रकार';

  @override
  String get workout_notes => 'टिप्पणियाँ एवं चिंतन';

  @override
  String get health_overview_title => 'स्वास्थ्य एवं महत्वपूर्ण';

  @override
  String get health_heart_rate => 'हृदयस्पन्दनम्';

  @override
  String get health_blood_oxygen => 'रक्त आक्सीजन (SpO2) २.';

  @override
  String get health_blood_pressure => 'रक्तचापः';

  @override
  String get health_blood_glucose => 'रक्तस्य ग्लूकोजः';

  @override
  String get health_body_temperature => 'शरीर का तापमान';

  @override
  String get health_sleep_tracking => 'निद्रा निरीक्षणम्';

  @override
  String get health_weight_tracking => 'वजन एवं शरीर रचना';

  @override
  String get health_waist_hip => 'कटि-नितम्ब अनुपात';

  @override
  String get health_devices_hub => 'उपकरण एवं स्मार्टवॉच हब';

  @override
  String get health_sync_now => 'स्वास्थ्य डेटा समन्वयन';

  @override
  String health_last_synced(Object time) {
    return 'अन्तिमसमन्वयितम्: $time';
  }

  @override
  String get health_manual_entry => 'मैनुअल स्वास्थ्य प्रविष्टि';

  @override
  String get health_metric_detail => 'मीट्रिक विवरण';

  @override
  String get health_connected_sensors => 'संबद्ध स्वास्थ्य संवेदक';

  @override
  String get plan_title => 'दैनिक योजना';

  @override
  String get plan_weekly_title => 'साप्ताहिक कल्याण योजना';

  @override
  String get plan_calorie_target => 'कैलोरी लक्ष्य';

  @override
  String get plan_water_target => 'जलीकरण लक्ष्य';

  @override
  String get plan_step_target => 'Step Target इति';

  @override
  String get plan_sleep_target => 'निद्रा लक्ष्यम्';

  @override
  String get plan_meal_suggestions => 'भोजनस्य सुझावः';

  @override
  String get plan_healthy_habits => 'स्वस्थ आदतें एवं युक्तियाँ';

  @override
  String get plan_coach_advice => 'Bloomi AI प्रशिक्षक अनुशंसाः';

  @override
  String get plan_generated_title => 'व्यक्तिगत दैनिक समयसूची';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'प्रोफाइल सम्पादयतु';

  @override
  String get profile_name => 'नाम';

  @override
  String get profile_age => 'वयः';

  @override
  String get profile_gender => 'लिङ्गम्';

  @override
  String get profile_height => 'ऊर्ध्वता';

  @override
  String get profile_weight => 'भारः';

  @override
  String get profile_goal => 'प्राथमिक लक्ष्य';

  @override
  String get profile_activity_level => 'गतिविधिस्तर';

  @override
  String get profile_stats => 'मम कल्याणस्य आँकडा';

  @override
  String get profile_saved => 'प्रोफाइल सफलतया अद्यतनं कृतम्';

  @override
  String get profile_bmi => 'शरीरस्य द्रव्यमानसूचकाङ्कः (BMI) २.';

  @override
  String get profile_membership => 'सदस्यता';

  @override
  String get settings => 'सेटिंग्स्';

  @override
  String get preferences_habits => 'PREFERENCES & HABITS';

  @override
  String get appearance_theme => 'रूप एवं विषय';

  @override
  String get appearance_theme_sub =>
      'डार्क, लाइट, सिस्टम मोड & एप् बैकग्राउंड विकल्प';

  @override
  String get permissions => 'अनुमतिः & प्रणाली अभिगमः';

  @override
  String get permissions_sub =>
      'हेल्थ कनेक्ट, स्टेप सेंसर, जीपीएस, सूचना एवं कैमरा';

  @override
  String get reminders_notifications => 'स्मरण एवं सूचनाएँ';

  @override
  String get reminders_sub =>
      'भोजनस्य समयः, जलं, वजनस्य चेक-इनं & शयनावसरे स्मरणं च';

  @override
  String get units_of_measurement => 'मापनस्य एककाः';

  @override
  String get units_sub =>
      'मीट्रिक (किलो, सेमी, एमएल, कि.मी.) अथवा इम्पेरियल (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'एप् भाषा';

  @override
  String get language_sub =>
      'English, हिन्दी (हिन्दी), Hinglish & 195+ global languages';

  @override
  String get home_screen_widgets => 'गृहपर्दे विजेट्';

  @override
  String get widgets_sub =>
      'लाइव एण्ड्रॉयड् विजेट्: हब, स्टेप्स, जल, पोषण & शुभंकर';

  @override
  String get wear_os_watch_app => 'ओएस वॉच एप्लिकेशन पहनें';

  @override
  String get wear_os_sub => 'Smartwatch सहचर, टाइल्स, जटिलताएँ & लाइव vitals';

  @override
  String get goals_wellness => 'GOALS & WELLNESS INSIGHTS इति';

  @override
  String get nutrition_targets => 'पोषण लक्ष्य एवं मैक्रो विभाजन';

  @override
  String get nutrition_targets_sub =>
      'कैलोरी लक्ष्यं, प्रोटीनम्, कार्ब्स्, वसा & जलं लक्ष्यम्';

  @override
  String get weekly_recap => 'साप्ताहिक कल्याण पुनः संक्षेप';

  @override
  String get weekly_recap_sub =>
      '7-दिवसीय कैलोरी औसत, मैक्रो अनुपात & सर्वोत्तम दिवस';

  @override
  String get streaks_milestones => 'लकीर एवं माइलस्टोन';

  @override
  String get streaks_sub => 'सक्रिय पुष्प लकीरा, बिल्ला & उपलब्धयः';

  @override
  String get connected_devices => 'CONNECTED DEVICES & ECOSYSTEM';

  @override
  String get devices_hub => 'उपकरण एवं स्मार्टवॉच हब';

  @override
  String get devices_hub_sub =>
      'हेल्थ कनेक्ट, गैलेक्सी वॉच, पिक्सेल वॉच, गार्मिन';

  @override
  String get surroundings_weather => 'परिवेश एवं मौसम';

  @override
  String get surroundings_sub =>
      'वायु गुणवत्ता (AQI), UV index & मौसम जलीकरण युक्तयः';

  @override
  String get bloomi_pro => 'ब्लूमी प्रो सदस्यता';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 होम स्क्रीन विजेट् & vitals tracking';

  @override
  String get about_security => 'ABOUT & SECURITY इति विषये';

  @override
  String get about_bloomi => 'ब्लूमी विषये';

  @override
  String get about_bloomi_sub =>
      'विनिर्देशाः, संस्करणं, विशेषताः च निर्मायताम्';

  @override
  String get privacy_policy => 'गोपनीयता नीति';

  @override
  String get privacy_policy_sub => 'अफलाइन-प्रथम, ऑन-डिवाइस् डाटा आर्किटेक्चर';

  @override
  String get terms_conditions => 'नियम एवं शर्तें';

  @override
  String get terms_conditions_sub => 'सेवायाः शर्ताः कल्याणस्य च मार्गदर्शिकाः';

  @override
  String get delete_account => 'खाता & डाटा विलोपयन्तु';

  @override
  String get delete_account_sub =>
      'स्थानीय SQLite आँकडा तथा क्लाउड् बैकअप अपरिवर्तनीयरूपेण मेटयन्तु';

  @override
  String get healthy_habits => 'सौम्य, स्थायि कल्याण-अभ्यासाः निर्मायताम्';

  @override
  String get all_logs => 'मम Tracked Data & Logs इति';

  @override
  String get search_language => 'भाषा वा देशी लिपिद्वारा अन्वेषणं कुर्वन्तु...';

  @override
  String get languages_available => 'उपलभ्यमानाः भाषाः';

  @override
  String get no_matching_languages => 'न मेलमिलाः भाषाः प्राप्ताः';

  @override
  String get try_searching =>
      'देशीलिपिना अथवा आङ्ग्लवर्तनीद्वारा अन्वेषणं कुर्वन्तु';

  @override
  String get partially_translated => 'आंशिकरूपेण अनुवादितम्';

  @override
  String get complete_translation => 'सम्पूर्ण';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return '$name ( $nativeName ) इति सेट् भाषा ।';
  }

  @override
  String get surroundings_title => 'परिवेश एवं पर्यावरण';

  @override
  String get surroundings_aqi => 'वायुगुणवत्ता सूचकाङ्क';

  @override
  String get surroundings_uv => 'पराबैंगनी सूचकाङ्क';

  @override
  String get surroundings_temp => 'तापमानम्';

  @override
  String get surroundings_humidity => 'आर्द्रता';

  @override
  String get surroundings_hydration_advice =>
      'वर्तमानमौसमस्य परिस्थितौ सुजलयुक्ताः भवन्तु।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'अन्नं अन्वेष्टुम्';

  @override
  String get food_quick_barcode => 'स्कैन बारकोड 👑';

  @override
  String get food_quick_water => 'जलं योजयन्तु';

  @override
  String get food_quick_custom => 'कस्टम फूड';

  @override
  String get surroundings_good => 'साधु';

  @override
  String get surroundings_moderate => 'मध्यमः';

  @override
  String get surroundings_unhealthy => 'अस्वस्थः';

  @override
  String get notifications_title => 'सूचना एवं अलर्ट';

  @override
  String get notifications_empty => 'न नूतनानि सूचनानि';

  @override
  String get notifications_mark_read => 'सर्वं पठितम् इति चिह्नं कुर्वन्तु';

  @override
  String get notifications_clear => 'सर्वं स्वच्छं कुर्वन्तु';

  @override
  String get reminders => 'स्मरणसेटिंग्स्';

  @override
  String get notifications => 'अधिसूचना';

  @override
  String get reminders_breakfast_title => 'प्रातः स्मरण 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'सुप्रभातम् ! $time इत्यत्र पौष्टिकप्रातःभोजनस्य समयः ।';
  }

  @override
  String get reminders_lunch_title => 'मध्याह्नभोजन स्मरण 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'विरामं कृत्वा $time इत्यत्र सन्तुलितं, मनःसन्तं मध्याह्नभोजनं आनन्दयन्तु।';
  }

  @override
  String get reminders_dinner_title => 'रात्रिभोज स्मरण 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time इत्यत्र लघु, सन्तोषजनकस्य रात्रिभोजनस्य समयः।';
  }

  @override
  String get reminders_water_title => 'जलीकरण धक्का 💧';

  @override
  String reminders_water_body(Object time) {
    return 'एकं नवीनं गिलासं जलं पिबितुं समयः! ( $time ) .';
  }

  @override
  String get reminders_weight_title => 'साप्ताहिक तौलन ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) इत्यत्र स्वस्य साप्ताहिकशरीरस्य मेट्रिकं पश्यन्तु ।';
  }

  @override
  String get reminders_sleep_title => 'शयनसमये पवन-अवरोहण 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'विश्रामं कृत्वा विश्रामयुक्तनिद्रायाः सज्जतां कुर्वन्तु ( $time ) ।';
  }

  @override
  String get onboard_welcome => 'ब्लूमी इत्यत्र स्वागतम्';

  @override
  String get onboard_sub =>
      'भवतः मित्रवतः, अफलाइन-प्रथम स्वास्थ्यं पोषणं च सहचरः।';

  @override
  String get onboard_get_started => 'आरभत';

  @override
  String get onboard_sign_in => 'साइन इन करें';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal => 'भवतः प्राथमिकं कल्याणस्य लक्ष्यं किम् ?';

  @override
  String get onboard_goal_weight_loss => 'सौम्य वजन घटना';

  @override
  String get onboard_goal_muscle => 'मांसपेशी लाभ एवं शक्ति';

  @override
  String get onboard_goal_energy => 'दैनिक ऊर्जा एवं जीवन शक्ति';

  @override
  String get onboard_goal_habits => 'स्वस्थ मनसा भोजन';

  @override
  String get onboard_about_you => 'अस्मान् स्वस्य विषये कथयतु';

  @override
  String get onboard_lifestyle => 'भवतः दैनिकं दिनचर्या';

  @override
  String get onboard_permissions_title => 'अनुमतिः & प्रणाली अभिगमः';

  @override
  String get onboard_permissions_sub =>
      'समन्वयनपदार्थाः, वर्कआउट्, स्मरणं च प्राप्तुं प्रदातुम्।';

  @override
  String get onboard_plan_ready_title => 'भवतः कस्टम् योजना सज्जा अस्ति!';

  @override
  String get onboard_plan_ready_sub =>
      'वयं केवलं भवतः कृते सौम्यम्, व्यक्तिगतं पोषणं, कल्याणं च मार्गचित्रं निर्मितवन्तः।';

  @override
  String get onboard_enter_bloomi => 'ब्लूमी इति प्रविशतु';

  @override
  String get insights_weekly_report => 'साप्ताहिक कल्याण पुनः संक्षेप';

  @override
  String insights_best_day(Object day) {
    return 'सर्वोत्तम स्थिरता दिवसः $day .';
  }

  @override
  String get insights_streaks_badges => 'लकीर एवं माइलस्टोन';

  @override
  String insights_unlocked_on(Object date) {
    return '$date इत्यत्र अनलॉक् कृतम् ।';
  }

  @override
  String get insights_keep_going => 'विलक्षणं प्रगतिम् अकुर्वन् !';

  @override
  String get widgets_title => 'गृहपर्दे विजेट्';

  @override
  String widgets_active_count(Object count) {
    return 'सक्रिय विजेट्: $count .';
  }

  @override
  String get widgets_hub_title => 'ब्लूमी कल्याण केन्द्र';

  @override
  String get widgets_steps_title => 'Steps & सक्रिय रिंग';

  @override
  String get widgets_water_title => 'जलीकरण त्वरित लॉग';

  @override
  String get widgets_mascot_title => 'ब्लूमी शुभंकर सहचर';

  @override
  String get wear_os_title => 'ओएस स्मार्टवॉच धारयन्तु';

  @override
  String get wear_os_connected => 'Watch इत्यनेन सह सम्बद्धम्';

  @override
  String get wear_os_sync => 'Watch Data समन्वयित करें';

  @override
  String get theme_title => 'रूप एवं विषय';

  @override
  String get theme_mode => 'विषय मोड';

  @override
  String get theme_light => 'प्रकाशः';

  @override
  String get theme_dark => 'अन्धकारम्';

  @override
  String get theme_system => 'प्रणाली पूर्वनिर्धारित';

  @override
  String get theme_background_palette => 'पृष्ठभूमि पैलेट';

  @override
  String get units_title => 'मापनस्य एककाः';

  @override
  String get units_metric => 'मीट्रिक (किलो, सेमी, मि.ली.) २.';

  @override
  String get units_imperial => 'शाही (lbs, in, fl oz) २.';

  @override
  String get home_unable_load => 'डैशबोर्डं लोड् कर्तुं असमर्थः';

  @override
  String get home_health_permission_req => 'स्वास्थ्य कनेक्ट अनुमति आवश्यकी';

  @override
  String get home_health_permission_desc =>
      'Bloomi इत्यस्य वास्तविकपदं, हृदयस्पन्दनं, वास्तविकसमये च मोबाईलगृहविजेट्-समन्वयनार्थं Health Connect-अनुमतिः आवश्यकी भवति ।';

  @override
  String get home_allow_health => 'स्वास्थ्यं कनेक्ट् कर्तुं अनुमतिं ददातु';

  @override
  String get home_ready_mindful_day => 'मनःसन्तोषदिनस्य कृते सज्जाः? ✨';

  @override
  String get home_quick_add => 'त्वरित योजयतु';

  @override
  String get home_live_gps => 'लाइव जीपीएस';

  @override
  String get home_calories_remaining_label => 'कैलोरी अवशिष्टा';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'खादित: $consumed / $target किलो';
  }

  @override
  String get home_tap_water_tracker => 'जलनिरीक्षकस्य कृते नलः 💧';

  @override
  String get home_water_goal_reached => 'दैनिक लक्ष्य प्राप्त 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml प्रति दैनिक लक्ष्य';
  }

  @override
  String get home_details => 'विवरणम्';

  @override
  String get home_upgrade_plan_desc =>
      'व्यक्तिगत दैनिक लक्ष्यं & AI योजना अनलॉक कर्तुं उन्नयनं कुर्वन्तु';

  @override
  String get home_unlock => 'अनलॉक 👑';

  @override
  String get home_quick_log_hint => 'शीघ्रं कल्याणप्रविष्टिं अभिलेखयन्तु';

  @override
  String get food_serving_size => 'सेवा आकार';

  @override
  String get food_serving_grams => 'सेवा (छ) ९.';

  @override
  String get food_number_servings => 'सेवानां संख्या';

  @override
  String get food_calories_per_serving => 'प्रति सेवा कैलोरी';

  @override
  String get food_recipe_ingredients => 'अवयवः';

  @override
  String get food_recipe_add_ingredient => 'घटकं योजयन्तु';

  @override
  String get food_recipe_directions => 'निर्देश एवं टिप्पणियाँ';

  @override
  String get food_recipe_total => 'कुल नुस्खा पोषण';

  @override
  String get food_recipe_per_serving => 'प्रति सेवा पोषण';

  @override
  String get food_recipe_saved_toast => 'कस्टम् भोजनं सफलतया रक्षितम्!';

  @override
  String get food_barcode_found => 'उत्पादः प्राप्तः!';

  @override
  String get food_barcode_not_found_desc =>
      'वयं मुक्तदत्तांशकोशे एतत् बारकोड् न प्राप्नुमः । भवन्तः तत् रूढिगतभोजनरूपेण योजयितुं शक्नुवन्ति।';

  @override
  String get food_add_custom_btn => 'Custom Food योजयन्तु';

  @override
  String get food_scan_again => 'पुनः स्कैन् कुर्वन्तु';

  @override
  String get food_review_items => 'ज्ञात खाद्य पदार्थों की समीक्षा करें';

  @override
  String get food_review_hint =>
      'परिमाणं समायोजयन्तु अथवा किमपि अज्ञातं वस्तु निष्कासयन्तु';

  @override
  String get food_log_selected => 'चयनित खाद्य पदार्थों का लॉग करें';

  @override
  String get food_favourites_title => 'प्रिय खाद्य पदार्थ';

  @override
  String get food_recent_title => 'अद्यतन खाद्य पदार्थ';

  @override
  String get food_no_favourites =>
      'अद्यापि प्रियभोजनं नास्ति। अत्र रक्षितुं कस्यापि भोजनस्य उपरि हृदयं टङ्कयन्तु।';

  @override
  String get food_no_recents =>
      'अद्यतनं लॉग्स् कृतानि आहारपदार्थानि न प्राप्तानि।';

  @override
  String get food_nutrition_details_title => 'दैनिक पोषण विवरण';

  @override
  String get food_macro_protein_label => 'प्रोटीन विघटन';

  @override
  String get food_macro_carbs_label => 'कार्ब्स विच्छेदन';

  @override
  String get food_macro_fat_label => 'मेदः भङ्गः';

  @override
  String get food_macro_fiber_label => 'तन्तुविच्छेदः';

  @override
  String get food_daily_target_comparison => 'लक्ष्यतुलना';

  @override
  String food_target_label(Object target) {
    return 'लक्ष्यम् : $target .';
  }

  @override
  String get food_edit_entry => 'डायरी प्रविष्टि सम्पादयतु';

  @override
  String get food_delete_entry => 'प्रविष्टि विलोपयतु';

  @override
  String food_grams_short(Object grams) {
    return '$grams छ';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal किलो';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current के $target ml';
  }

  @override
  String get water_intake_history => 'अद्यतनं जलस्य लॉग्स्';

  @override
  String get water_no_logs_today =>
      'अद्य अद्यापि जलं न लॉगितम्। हाइड्रेट् कृत्वा द्रुतं योजयितुं बटनं ट्याप् कुर्वन्तु!';

  @override
  String get water_adjust_goal => 'दैनिक लक्ष्यं समायोजयन्तु';

  @override
  String get health_connect_banner => 'Health Connect इत्यनेन सह सम्बद्धम्';

  @override
  String get health_vitals_summary => 'दैनिक स्वास्थ्य महत्वपूर्ण';

  @override
  String get health_latest_heart_rate => 'नवीनतम हृदय गति';

  @override
  String get health_latest_bp => 'रक्तचापः';

  @override
  String get health_latest_spo2 => 'रक्त आक्सीजन';

  @override
  String get health_latest_glucose => 'रक्तस्य ग्लूकोजः';

  @override
  String get health_latest_weight => 'भारः';

  @override
  String get health_latest_sleep => 'निद्रा अवधि';

  @override
  String get health_add_manual => 'मैनुअल मापनं योजयतु';

  @override
  String get health_history_trends => 'ऐतिहासिक प्रवृत्तियाँ';

  @override
  String get health_sync_success => 'स्वास्थ्यदत्तांशः सफलतया समन्वयितः!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours घण्टा $mins मि';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val किग्रा';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '__पीएच_0__ बीपीएम';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % .';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val मिग्रा/डीएल';
  }

  @override
  String get health_devices_title => 'संबद्ध उपकरण एवं धारणीय';

  @override
  String get health_devices_desc =>
      'युग्मितस्मार्टघटिकानां, फिटनेस ट्रैकरस्य, स्वास्थ्यसंवेदकानां च प्रबन्धनं कुर्वन्तु ।';

  @override
  String get health_workout_editor_title => 'सम्पादन कसरत';

  @override
  String get health_workout_name_label => 'वर्कआउट नाम';

  @override
  String get health_workout_duration_label => 'अवधिः (निमेषाः) २.';

  @override
  String get health_workout_calories_label => 'अनुमानित कैलोरी (kcal) 1 .';

  @override
  String get health_workout_date_label => 'दिनाङ्कः समयः च';

  @override
  String get plan_daily_wellness_roadmap => 'भवतः व्यक्तिगतमार्गचित्रम्';

  @override
  String get plan_morning_routine => 'प्रातःकाले दिनचर्या';

  @override
  String get plan_afternoon_routine => 'मध्याह्न कल्याण';

  @override
  String get plan_evening_routine => 'सायं वायु-अधः';

  @override
  String get plan_coach_badge => 'ब्लूमी ए आई कोच';

  @override
  String get plan_weekly_overview => '७-दिवसीय कल्याण फोकस';

  @override
  String get plan_targets_title => 'कल्याण लक्ष्य एवं लक्ष्य';

  @override
  String get plan_calorie_budget_label => 'दैनिक कैलोरी बजट';

  @override
  String get plan_water_budget_label => 'दैनिक जल लक्ष्य';

  @override
  String get plan_step_budget_label => 'दैनिक चरण लक्ष्य';

  @override
  String get plan_macro_split_label => 'स्थूलपोषक अनुपात';

  @override
  String get profile_personal_details => 'व्यक्तिगत विवरण';

  @override
  String get profile_body_stats => 'शरीरमापनम्';

  @override
  String get profile_app_preferences => 'वरीयताएँ एवं एप्लिकेशन सेटिंग्स';

  @override
  String get profile_edit_name_hint => 'तव नाम';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ऊर्ध्वता ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'भारः ( $unit ) २.';
  }

  @override
  String get profile_edit_age_hint => 'वयः';

  @override
  String get profile_gender_male => 'पुरुषः';

  @override
  String get profile_gender_female => 'स्त्री';

  @override
  String get profile_gender_other => 'अन्ये / न वक्तुं रोचन्ते';

  @override
  String get profile_activity_sedentary => 'निषण्णः (अल्पं व्यायामं न वा) २.';

  @override
  String get profile_activity_light => 'हल्के सक्रियः (१-३ दिवसाः/सप्ताहः) २.';

  @override
  String get profile_activity_moderate => 'मध्यम सक्रिय (३-५ दिवस/सप्ताह) २.';

  @override
  String get profile_activity_very => 'अतीव सक्रियः (६-७ दिवसाः/सप्ताहः) २.';

  @override
  String get settings_wear_os_header => 'ओएस कम्पैनियन एप्लिकेशन पहनें';

  @override
  String get settings_wear_os_desc =>
      'कैलोरी, जलं, चरणं च दृष्ट्वा स्वस्य Wear OS घडिके Bloomi टाइल् तथा जटिलता संस्थापयन्तु।';

  @override
  String get settings_widgets_header => 'अन्तरक्रियाशील एण्ड्रॉयड् विजेट्';

  @override
  String get settings_widgets_desc =>
      'तत्क्षणं अद्यतनीकरणार्थं स्वस्य उपकरणस्य मुखपृष्ठे वास्तविकसमयविजेट्-पिन् कुर्वन्तु ।';

  @override
  String get settings_about_header => 'ब्लूमी विषये';

  @override
  String get settings_about_version => 'संस्करणम् १.०.०';

  @override
  String get settings_about_build => 'निर्माणं १००';

  @override
  String get settings_about_credits =>
      'मनसा, स्वस्थजीवनस्य सावधानीपूर्वकं निर्मितम्।';

  @override
  String get settings_terms_header => 'नियमाः शर्ताः च';

  @override
  String get settings_privacy_header => 'गोपनीयता नीति';

  @override
  String get settings_delete_header => 'खाता & डाटा विलोपयन्तु';

  @override
  String get settings_delete_warning =>
      'एतत् कर्म न निवर्तयितुं शक्यते। भवतः सर्वाणि भोजनानि, वर्कआउट्, vitals, प्रोफाइल च स्थायिरूपेण विलोपिताः भविष्यन्ति।';

  @override
  String get settings_delete_confirm_btn => 'स्थायी रूप से विलोपन करें';

  @override
  String get onboard_welcome_headline => 'ब्लूमी ✨ इत्यत्र स्वागतम्';

  @override
  String get onboard_welcome_tagline =>
      'भवतः जीवनस्य परितः डिजाइनं कृतं सौम्यम्, मनःसन्तोषं कल्याणनिरीक्षणम्।';

  @override
  String get onboard_step_about => 'भवतः विषये';

  @override
  String get onboard_step_goals => 'भवतः लक्ष्याणि';

  @override
  String get onboard_step_lifestyle => 'दैनिक आदतयः';

  @override
  String get onboard_step_permissions => 'अनुमतिः';

  @override
  String get onboard_step_plan => 'सज्जाः !';

  @override
  String get onboard_health_connect_perm => 'स्वास्थ्य कनेक्ट एक्सेस';

  @override
  String get onboard_step_sensors_perm => 'स्टेप काउंटर सेंसर';

  @override
  String get onboard_notif_perm => 'मननशील स्मरण एवं सूचनाएँ';

  @override
  String get onboard_camera_perm => 'कॅमेरा (बारकोड् तथा खाद्य स्कैनर) २.';

  @override
  String get onboard_grant_permissions => 'अनुमतिः प्रदातु';

  @override
  String get onboard_continue_dashboard => 'Dashboard उद्घाटयन्तु';

  @override
  String get notif_channel_hydration_name => 'जलीकरण Nudges';

  @override
  String get notif_channel_hydration_desc => 'दिनभरि मृदुजलस्मरणानि';

  @override
  String get notif_channel_nutrition_name => 'भोजन एवं पोषण स्मरण';

  @override
  String get notif_channel_nutrition_desc =>
      'प्रातःभोजनं, मध्याह्नभोजनं, रात्रिभोजनं च स्मरणसचेतनानि';

  @override
  String get notif_channel_steps_name => 'सोपान माइलस्टोन';

  @override
  String get notif_channel_steps_desc => 'दैनिकपदलक्ष्यं प्राप्य उत्सवाः';

  @override
  String get notif_channel_vitals_name => 'स्वास्थ्य एवं जीवनी जाँच';

  @override
  String get notif_channel_vitals_desc =>
      'भारः शयनावसरे च वायु-अवक्षेपण-स्मारकाः';

  @override
  String get notif_action_log_water => '💧 लॉग +250ml';

  @override
  String get notif_action_snooze => 'स्नूज १५मी';

  @override
  String get notif_action_log_meal => '🥗 लॉग भोजन';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
