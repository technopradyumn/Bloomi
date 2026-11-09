// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Newari Nepal Bhasa (`new`).
class AppLocalizationsNew extends AppLocalizations {
  AppLocalizationsNew([String locale = 'new']) : super(locale);

  @override
  String get app_name => 'ब्लुमी';

  @override
  String get nav_home => 'छेँ';

  @override
  String get nav_today => 'थौं ३.';

  @override
  String get nav_plan => 'योजना';

  @override
  String get nav_food => 'नसा';

  @override
  String get nav_food_diary => 'नसा डायरी';

  @override
  String get nav_workout => 'कसरत लग';

  @override
  String get nav_health => 'स्वास्थ्य ३.';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get save => 'बचे या';

  @override
  String get cancel => 'रद्द या';

  @override
  String get delete => 'हुयाछ्व ।';

  @override
  String get edit => 'सम्पादन या';

  @override
  String get done => 'सिधल';

  @override
  String get close => 'तिनाब्यु';

  @override
  String get back => 'लिहां हुँ';

  @override
  String get next => 'मेगु';

  @override
  String get continue_btn => 'न्ह्याकाच्वँ';

  @override
  String get confirm => 'पक्का या';

  @override
  String get search => 'मालेगु';

  @override
  String get filter => 'फिल्टर';

  @override
  String get all => 'सकलें';

  @override
  String get active => 'सक्रिय';

  @override
  String get today => 'थौं ३.';

  @override
  String get yesterday => 'म्हिगः ४.';

  @override
  String get tomorrow => 'कन्हे ५.';

  @override
  String get add => 'तनादिसँ';

  @override
  String get remove => 'लिका';

  @override
  String get refresh => 'रिफ्रेस';

  @override
  String get retry => 'हानं कुतः या';

  @override
  String get error => 'इरर';

  @override
  String get success => 'सफलता ४.';

  @override
  String get loading => 'लोड जुयाच्वन ...';

  @override
  String get no_data => 'छुं नं डाटा मदु';

  @override
  String get offline => 'अफलाइन मोड';

  @override
  String get offline_sub => 'हानं स्वायेधुंकाः हिलासू सिंक जुइ ।';

  @override
  String get undo => 'लित का';

  @override
  String get portion => 'भाग';

  @override
  String get quantity => 'परिमाण';

  @override
  String get unit => 'एकाइ';

  @override
  String get clear => 'खाली';

  @override
  String get select => 'ल्य';

  @override
  String get apply => 'आवेदन बियादिसँ';

  @override
  String get reset => 'रिसेट';

  @override
  String get ok => 'ज्यू';

  @override
  String get yes => 'ख:';

  @override
  String get no => 'मखु';

  @override
  String get optional => 'बैकल्पिक';

  @override
  String get calories => 'क्यालोरि';

  @override
  String get protein => 'प्रोटिन';

  @override
  String get carbs => 'कार्ब्स';

  @override
  String get fat => 'ल्ह्वं';

  @override
  String get fiber => 'फाइबर';

  @override
  String get water => 'लः';

  @override
  String get steps => 'पलाः';

  @override
  String get kcal => 'केसिएएल';

  @override
  String get grams => 'जि';

  @override
  String get milliliters => 'एमएल';

  @override
  String get kilograms => 'केजी ३.';

  @override
  String get pounds => 'पाउण्ड';

  @override
  String get centimeters => 'सेमि';

  @override
  String get inches => 'दुने';

  @override
  String get bpm => 'बिपिएम';

  @override
  String get hours => 'घौ';

  @override
  String get minutes => 'मिनेट';

  @override
  String get serving => 'सेवा यानाच्वन';

  @override
  String get servings => 'सेवा';

  @override
  String get serving_size => 'सेवाया आकार';

  @override
  String get per_100g => 'प्रति १०० ग्राम';

  @override
  String get india => 'भारत ३.';

  @override
  String get asia => 'एसिया ३.';

  @override
  String get europe => 'युरोप ३.';

  @override
  String get middle_east => 'मध्यपूर्व ४.';

  @override
  String get africa => 'अफ्रिका ३.';

  @override
  String get americas => 'अमेरिका';

  @override
  String get home_title => 'छेँ';

  @override
  String get home_greeting_morning => 'भिं सुथ';

  @override
  String get home_greeting_afternoon => 'भिं न्हिन';

  @override
  String get home_greeting_evening => 'भिं सनिल';

  @override
  String get home_streak_title => 'ब्लसम स्ट्रिक';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '__पिएच_०__ न्हि या ध्वः',
      one: '१ न्हुया श्रृंखला',
      zero: '० न्हुया श्रृंखला',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'च्यात';

  @override
  String get home_calories_budget => 'क्यालोरी बजेट';

  @override
  String home_calories_remaining(Object kcal) {
    return '__पिएच_०__ केकेएल ल्यं दनि';
  }

  @override
  String get home_water_title => 'न्हिथंया हाइड्रेशन';

  @override
  String home_water_goal(Object current, Object target) {
    return '__पिएच_०__ / __पिएच_१__ एमएल';
  }

  @override
  String get home_steps_title => 'पलाः न्यासि वन';

  @override
  String get home_quick_actions => 'याकनं ज्याखँ';

  @override
  String get home_log_meal => 'लग मील';

  @override
  String get home_log_water => 'लः लः';

  @override
  String get home_log_workout => 'लग कसरत';

  @override
  String get home_log_weight => 'लग तौल';

  @override
  String get home_insights_title => 'थौंया अन्तर्दृष्टि';

  @override
  String get home_quote =>
      'चिचीधंगु स्वस्थकर विकल्पं खिउँसे च्वंगु रुपान्तरण दयेकी ।';

  @override
  String get home_ai_coach_tip => 'ब्लुमी एआई कोच';

  @override
  String get home_surroundings => 'जःखः व फय्';

  @override
  String get home_notifications => 'सुचं';

  @override
  String get home_daily_score => 'न्हिथंया स्वास्थ्य स्कोर';

  @override
  String get home_view_all => 'दक्वं स्व';

  @override
  String get food_diary_title => 'नसा डायरी';

  @override
  String get food_breakfast => 'कौला';

  @override
  String get food_lunch => 'लन्च';

  @override
  String get food_dinner => 'बेलि';

  @override
  String get food_snacks => 'स्नाक्स';

  @override
  String get food_add_food => 'नसा तनादिसँ';

  @override
  String get food_edit_food => 'नसा सम्पादन या';

  @override
  String get food_add_breakfast => 'कौला तनादिसँ';

  @override
  String get food_add_lunch => 'लन्च तनादिसँ';

  @override
  String get food_add_dinner => 'बेलि तनादिसँ';

  @override
  String get food_add_snack => 'स्नाक तनादिसँ';

  @override
  String get food_total_calories => 'मुक्कं क्यालोरि';

  @override
  String get food_empty_meal => 'थुगु नसाया निंतिं आःतकं छुं नं नसा लग मजूनि ।';

  @override
  String get food_empty_diary => 'थुगु न्हिइ छुं नं नसा लग मजू ।';

  @override
  String get food_log_first_meal =>
      'छिगु न्हापांगु साःगु नसा लग यायेत + तियादिसँ ।';

  @override
  String get food_quick_add => 'याकनं तनादिसँ';

  @override
  String get food_search_hint => 'परिकार, सिसाबुसा, दाल, रोटि मालादिसँ ...';

  @override
  String get food_custom_recipe => 'कस्टम नसा व रेसिपि';

  @override
  String get food_scan_barcode => 'बारकोड स्क्यान';

  @override
  String get food_camera_scan => 'एआई फूड स्क्यानर';

  @override
  String get food_recent => 'नकतिनिया नसा';

  @override
  String get food_favourites => 'यःगु';

  @override
  String get food_macro_summary => 'म्याक्रोन्युट्रिएन्ट ब्रेकडाउन';

  @override
  String get food_delete_meal_confirm =>
      'छिं थुगु बस्तु लिकाये मास्ति वः धकाः पक्का खः ला ?';

  @override
  String get food_item_deleted => 'नसाज्वलं लिकयाबिल';

  @override
  String get food_remaining => 'ल्यं दुगु';

  @override
  String get food_consumed => 'खपत जुल';

  @override
  String food_of_target(Object target) {
    return '__पिएच_०__ केसिएएलया';
  }

  @override
  String get foodSearch_title => 'नसा मालास्व ।';

  @override
  String get foodSearch_scan_barcode => 'बारकोड स्क्यान';

  @override
  String get foodSearch_take_photo => 'नसाया किपा स्न्याप';

  @override
  String get foodSearch_custom_food => 'थःत यःगु नसा दयेकि ।';

  @override
  String get foodSearch_recent_searches => 'आःया मालेज्या';

  @override
  String get foodSearch_popular => 'नांजाःगु परिकार';

  @override
  String get foodSearch_no_results =>
      'छिं मालादीगु नसालिसे ज्वःलाःगु छुं नं नसा मदु ।';

  @override
  String get barcode_title => 'बारकोड स्क्यानर';

  @override
  String get barcode_align => 'क्यामरा फ्रेम दुने बारकोडयात संरेखित या ।';

  @override
  String get barcode_not_found => 'डाटाबेसय् सामान लुइके मफुत ।';

  @override
  String get barcode_premium_feature =>
      'ब्लुमि प्रोलिसे बारकोड स्क्यानिङ्ग यायेफै ।';

  @override
  String get camera_title => 'एआई फूड स्क्यानर';

  @override
  String get camera_tap_hint => 'छिगु परिकारया बांलाःगु किपा कयादिसँ ।';

  @override
  String get camera_analysing => 'नसा प्लेटया विश्लेषण ...';

  @override
  String get camera_detected => 'लुइकूगु सामानत';

  @override
  String get camera_flash => 'फ्लास हिलेगु';

  @override
  String get camera_retake => 'किपा हानं कयादिसँ';

  @override
  String get camera_confirm_food => 'सामान पक्का या';

  @override
  String get customFood_title => 'कस्टम नसा व रेसिपि';

  @override
  String get customFood_name_hint => 'परिकार बाय् हलंज्वलंया नां';

  @override
  String get customFood_calories_hint => 'क्यालोरि (केसिएएल)';

  @override
  String get customFood_protein_hint => 'प्रोटिन (जि)';

  @override
  String get customFood_carbs_hint => 'कार्ब्स (जि)';

  @override
  String get customFood_fat_hint => 'चिल्लो (ग्राम)';

  @override
  String get customFood_save => 'रेसिपि बचे या';

  @override
  String get water_tracker_title => 'वाटर ट्राकर';

  @override
  String get water_daily_target => 'न्हिथंया हाइड्रेशन आज्जु';

  @override
  String get water_logged_today => 'थौं लग यात';

  @override
  String get water_add_glass => '+२५० एमएल खाः';

  @override
  String get water_add_bottle => '+५०० एमएल सिसि';

  @override
  String get water_custom_amount => 'कस्टम रकम';

  @override
  String get water_reminder_tip =>
      'स्थीर उर्जाया निंतिं न्हिच्छियंकं नियमित रुपं लः त्वँ ।';

  @override
  String water_logged_toast(Object amount) {
    return 'लग __पिएच_०__ एमएल लः 💧';
  }

  @override
  String get workout_title => 'कसरत लग';

  @override
  String get workout_add_exercise => 'कसरत तनादिसँ';

  @override
  String get workout_cardio => 'कार्डियो';

  @override
  String get workout_strength => 'शक्ति';

  @override
  String get workout_yoga => 'योग व लचकता';

  @override
  String get workout_duration => 'ई ३.';

  @override
  String get workout_intensity => 'तीव्रता';

  @override
  String get workout_calories_burned => 'क्यालोरि च्यात';

  @override
  String get workout_empty => 'थौं छुं नं कसरत लग मजू';

  @override
  String get workout_save_success => 'कसरत ताःलाक बचे जुल !';

  @override
  String get workout_type => 'कसरतया ताजि';

  @override
  String get workout_notes => 'नोट व प्रतिबिम्ब';

  @override
  String get health_overview_title => 'स्वास्थ्य व जीवनस्तर';

  @override
  String get health_heart_rate => 'नुगःचुया गति';

  @override
  String get health_blood_oxygen => 'हिइ अक्सिजन (एसपिओ२)';

  @override
  String get health_blood_pressure => 'रक्तचाप';

  @override
  String get health_blood_glucose => 'हिइ चिनि';

  @override
  String get health_body_temperature => 'म्हया तापक्रम';

  @override
  String get health_sleep_tracking => 'द्यनेगु ट्राकिङ्ग';

  @override
  String get health_weight_tracking => 'तौल व म्हया संरचना';

  @override
  String get health_waist_hip => 'जँनिसें प्यंपाया अनुपात';

  @override
  String get health_devices_hub => 'उपकरण व स्मार्टवाच हब';

  @override
  String get health_sync_now => 'स्वास्थ्य डाटा सिंक';

  @override
  String health_last_synced(Object time) {
    return 'लिपांगु सिंक : __पिएच_०__';
  }

  @override
  String get health_manual_entry => 'म्यानुअल स्वास्थ्य प्रविष्टि';

  @override
  String get health_metric_detail => 'मेट्रिक विवरण';

  @override
  String get health_connected_sensors => 'स्वाःगु स्वास्थ्य सेन्सर';

  @override
  String get plan_title => 'न्हिथंया ग्वसाः';

  @override
  String get plan_weekly_title => 'वाःपतिकंया कल्याण योजना';

  @override
  String get plan_calorie_target => 'क्यालोरि लक्ष्य';

  @override
  String get plan_water_target => 'हाइड्रेशन लक्ष्य';

  @override
  String get plan_step_target => 'पलाः लक्ष्य';

  @override
  String get plan_sleep_target => 'द्यनेगु लक्ष्य';

  @override
  String get plan_meal_suggestions => 'नसा सुझाव';

  @override
  String get plan_healthy_habits => 'स्वस्थ बानि व सुझाव';

  @override
  String get plan_coach_advice => 'ब्लुमी एआई कोच सिफारिस';

  @override
  String get plan_generated_title => 'व्यक्तिगत न्हिथंया तालिका';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'प्रोफाइल सम्पादन या';

  @override
  String get profile_name => 'नां ३.';

  @override
  String get profile_age => 'उमेर ३.';

  @override
  String get profile_gender => 'लिङ्ग';

  @override
  String get profile_height => 'तःधिकः';

  @override
  String get profile_weight => 'तौल';

  @override
  String get profile_goal => 'प्राथमिक आज्जु';

  @override
  String get profile_activity_level => 'ज्याखँया तह';

  @override
  String get profile_stats => 'जिगु कल्याणया तथ्यांक';

  @override
  String get profile_saved => 'प्रोफाइल ताःलाक अपडेट जुल ।';

  @override
  String get profile_bmi => 'बडि मास इन्डेक्स (बिएमआइ)';

  @override
  String get profile_membership => 'सदस्यता २.';

  @override
  String get settings => 'सेटिङ्ग';

  @override
  String get preferences_habits => 'प्राथमिकता व बानि';

  @override
  String get appearance_theme => 'ख्वाःपाः व विषयवस्तु';

  @override
  String get appearance_theme_sub =>
      'ख्युंगु, जः, सिस्टम मोड व एप पृष्ठभूमिया विकल्प';

  @override
  String get permissions => 'अनुमति व सिस्टम पहुँच';

  @override
  String get permissions_sub =>
      'स्वास्थ्य स्वापू, स्टेप सेन्सर, जिपिएस, सुचं व क्यामरा';

  @override
  String get reminders_notifications => 'लुमन्ति व सुचं';

  @override
  String get reminders_sub =>
      'नयेगु ई, लः, तौल जाँच यायेगु व द्यनेगु ईया लुमन्ति';

  @override
  String get units_of_measurement => 'दाना स्वयेगु एकाइ';

  @override
  String get units_sub =>
      'मेट्रिक (केजी, सेमी, एमएल, किमि) बाय् इम्पेरियल (पाउण्ड, फिट/इन्च, फ्लो ओज)';

  @override
  String get app_language => 'एप भाय्';

  @override
  String get language_sub =>
      'अंग्रेजी, हिन्दी (हिन्दी), हिंग्लिश & 195+ वैश्विक भाषाएँ';

  @override
  String get home_screen_widgets => 'होम स्क्रीन विजेट्स';

  @override
  String get widgets_sub =>
      'लाइभ एन्ड्रोइड विजेट : हब, पलाः, लः, पोषण व म्यास्कट';

  @override
  String get wear_os_watch_app => 'ओएस वाच एप पुँ ।';

  @override
  String get wear_os_sub => 'स्मार्टघडीया पासा, टाइल, जटिलता व लाइभ भिटाल्स';

  @override
  String get goals_wellness => 'आज्जु व कल्याण अन्तर्दृष्टि';

  @override
  String get nutrition_targets => 'पोषण लक्ष्य व तःधंगु विभाजन';

  @override
  String get nutrition_targets_sub =>
      'क्यालोरि लक्ष्य, प्रोटिन, कार्बोहाइड्रेट, चिल्लो व लःया लक्ष्य';

  @override
  String get weekly_recap => 'वाःपतिकंया कल्याणया पुनरावलोकन';

  @override
  String get weekly_recap_sub =>
      '७-न्हुया क्यालोरि औसत, म्याक्रो रेसियो व दकलय् बांलाःगु न्हि';

  @override
  String get streaks_milestones => 'स्ट्रिक व माइलस्टोन';

  @override
  String get streaks_sub => 'सक्रिय स्वांया ध्वः, बाय् ज व उपलब्धि';

  @override
  String get connected_devices => 'स्वाःगु उपकरण व इकोसिस्टम';

  @override
  String get devices_hub => 'उपकरण व स्मार्टवाच हब';

  @override
  String get devices_hub_sub =>
      'हेल्थ कनेक्ट, ग्यालेक्सी घडी, पिक्सेल घडी, गार्मिन';

  @override
  String get surroundings_weather => 'जःखः व मौसम';

  @override
  String get surroundings_sub =>
      'फय् गुणस्तर (एक्यूआइ), यूभि इन्डेक्स व मौसम हाइड्रेशन टिप्स';

  @override
  String get bloomi_pro => 'ब्लूमी प्रो सदस्यता';

  @override
  String get bloomi_pro_sub =>
      'एआई प्लान कोच, न्यागू होम स्क्रीन विजेट व महत्वपूर्ण ट्राकिङ्ग';

  @override
  String get about_security => 'व सुरक्षाया खँय्';

  @override
  String get about_bloomi => 'ब्लुमिया खँय्';

  @override
  String get about_bloomi_sub => 'बिल्ड स्पेसिफिकेशन, भर्सन, एट्रिब्यूशन';

  @override
  String get privacy_policy => 'गोपनीयता नीति';

  @override
  String get privacy_policy_sub => 'अफलाइन-न्हापां, अन-डिभाइस डाटा आर्किटेक्चर';

  @override
  String get terms_conditions => 'नियम व शर्तत';

  @override
  String get terms_conditions_sub => 'सेवाया शर्त व कल्याण निर्देशिका';

  @override
  String get delete_account => 'खाता व डाटा हुयाछ्व ।';

  @override
  String get delete_account_sub =>
      'स्थानीय एसक्यूलाइट डाटा व क्लाउड बाय् कअपयात लिहां मवयेक हुयाछ्व ।';

  @override
  String get healthy_habits => 'भद्र, थातं च्वनीगु भिं जुइगु बानि दयेकि ।';

  @override
  String get all_logs => 'जिगु ट्राक यानागु डाटा व लग';

  @override
  String get search_language => 'भाय् बाय् देशी लिपिकथं मालादिसँ ...';

  @override
  String get languages_available => 'भाय् दु ।';

  @override
  String get no_matching_languages => 'ज्वःलाःगु भाय् मलू ।';

  @override
  String get try_searching =>
      'नेटिभ लिपि बाय् अंग्रेजि हिज्जेकथं मालेगु कुतः या ।';

  @override
  String get partially_translated => 'आंशिक रुपं भाय् हिलातःगु';

  @override
  String get complete_translation => 'पूवंक';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'भाय् __पिएच_०__ (__पिएच_१__) सेट यात';
  }

  @override
  String get surroundings_title => 'जःखः व लकस';

  @override
  String get surroundings_aqi => 'वायु गुणस्तर सूचकांक';

  @override
  String get surroundings_uv => 'यूभि इन्डेक्स';

  @override
  String get surroundings_temp => 'तापक्रम';

  @override
  String get surroundings_humidity => 'आर्द्रता';

  @override
  String get surroundings_hydration_advice =>
      'आःया मौसमय् बांलाक हाइड्रेट जुयाच्वँ ।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'नसा मालास्व ।';

  @override
  String get food_quick_barcode => 'बारकोड स्क्यान या';

  @override
  String get food_quick_water => 'लः ति ।';

  @override
  String get food_quick_custom => 'कस्टम नसा';

  @override
  String get surroundings_good => 'बांलाः';

  @override
  String get surroundings_moderate => 'मध्यम';

  @override
  String get surroundings_unhealthy => 'अस्वस्थ';

  @override
  String get notifications_title => 'सुचं व सतर्कता';

  @override
  String get notifications_empty => 'न्हूगु सुचं मदु ।';

  @override
  String get notifications_mark_read => 'सकतां ब्वनेधुन धकाः चिं तल ।';

  @override
  String get notifications_clear => 'दक्वं हु ।';

  @override
  String get reminders => 'रिमाइन्डर सेटिङ्ग';

  @override
  String get notifications => 'सुचं';

  @override
  String get reminders_breakfast_title => 'कौलाया लुमन्ति 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'भिं सुथ ! __पिएच_०__ स पौष्टिक कौलाया ई ।';
  }

  @override
  String get reminders_lunch_title => 'लन्चया लुमन्ति 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time स सन्तुलित, माइन्डल लन्चया आनन्द कयादिसँ ।';
  }

  @override
  String get reminders_dinner_title => 'बेलि लुमन्ति 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time स हल्का, सन्तोषजनक डिनरया ई ।';
  }

  @override
  String get reminders_water_title => 'हाइड्रेशन नज 💧';

  @override
  String reminders_water_body(Object time) {
    return 'छगू गिलास ताजा लः त्वनेगु ई ! (__पिएच_०__)';
  }

  @override
  String get reminders_weight_title => 'वाःपतिकंया तौल ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ब्लुमिइ छिगु वाःपतिकंया म्हया मेट्रिक्स ट्राक यानादिसँ (__पिएच_०__) ।';
  }

  @override
  String get reminders_sleep_title => 'द्यनेगु ई फय् क्वलात 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'आराम या अले आरामदायी न्ह्यःया निंतिं तयारि या ( __पिएच_०__ ) ।';
  }

  @override
  String get onboard_welcome => 'ब्लुमिइ लसकुस दु ।';

  @override
  String get onboard_sub =>
      'छिगु मिलनसार, अफलाइन-न्हापां स्वास्थ्य व पोषणया पासा ।';

  @override
  String get onboard_get_started => 'सुरु या';

  @override
  String get onboard_sign_in => 'साइन इन या';

  @override
  String get onboard_skip => 'त्वःफिकि';

  @override
  String get onboard_choose_goal => 'छिगु प्राथमिक कल्याणया आज्जु छु खः ?';

  @override
  String get onboard_goal_weight_loss => 'भद्र तौल म्हो यायेगु';

  @override
  String get onboard_goal_muscle => 'मांशपेशि अप्वइगु व बल्लाइगु';

  @override
  String get onboard_goal_energy => 'न्हिथंया उर्जा व जीवन शक्ति';

  @override
  String get onboard_goal_habits => 'स्वस्थ माइन्डफुल इटिङ्ग';

  @override
  String get onboard_about_you => 'छिगु बारे जिमित कनादिसँ ।';

  @override
  String get onboard_lifestyle => 'छिगु न्हिथंया ज्याखँ';

  @override
  String get onboard_permissions_title => 'अनुमति व सिस्टम पहुँच';

  @override
  String get onboard_permissions_sub =>
      'सिंक स्टेप, कसरत व रिमाइन्डरया निंतिं पहुँच ब्यु ।';

  @override
  String get onboard_plan_ready_title => 'छिगु कस्टम प्लान तयार जुल !';

  @override
  String get onboard_plan_ready_sub =>
      'जिमिसं छिगु निंतिं जक भद्र, व्यक्तिगत पोषण व कल्याणया रोडम्याप दयेकागु खः ।';

  @override
  String get onboard_enter_bloomi => 'ब्लुमि दुथ्याकि';

  @override
  String get insights_weekly_report => 'वाःपतिकंया कल्याणया पुनरावलोकन';

  @override
  String insights_best_day(Object day) {
    return 'दकलय् बांलाःगु स्थीरता न्हि : __पिएच_०__';
  }

  @override
  String get insights_streaks_badges => 'स्ट्रिक व माइलस्टोन';

  @override
  String insights_unlocked_on(Object date) {
    return '__पिएच_०__ स अनलक यात';
  }

  @override
  String get insights_keep_going => 'गजबगु प्रगति यानावं च्वँ !';

  @override
  String get widgets_title => 'होम स्क्रीन विजेट्स';

  @override
  String widgets_active_count(Object count) {
    return 'सक्रिय विजेट : __पिएच_०__';
  }

  @override
  String get widgets_hub_title => 'ब्लुमी वेलनेस हब';

  @override
  String get widgets_steps_title => 'पलाः व सक्रिय रिंग';

  @override
  String get widgets_water_title => 'हाइड्रेशन क्विक लग';

  @override
  String get widgets_mascot_title => 'ब्लुमी मास्कोट कम्पेनियन';

  @override
  String get wear_os_title => 'ओएस स्मार्टघडी पुँ ।';

  @override
  String get wear_os_connected => 'घडीलिसे स्वाःगु दु ।';

  @override
  String get wear_os_sync => 'सिंक वाच डाटा';

  @override
  String get theme_title => 'ख्वाःपाः व विषयवस्तु';

  @override
  String get theme_mode => 'थीम मोड';

  @override
  String get theme_light => 'जः';

  @override
  String get theme_dark => 'ख्युं';

  @override
  String get theme_system => 'सिस्टम डिफल्ट';

  @override
  String get theme_background_palette => 'पृष्ठभूमि पालेट';

  @override
  String get units_title => 'दाना स्वयेगु एकाइ';

  @override
  String get units_metric => 'मेट्रिक (केजी, सेमी, एमएल)';

  @override
  String get units_imperial => 'इम्पेरियल (पाउण्ड, इन, फ्लो औंस)';

  @override
  String get home_unable_load => 'ड्यासबोर्ड लोड याये मफुत ।';

  @override
  String get home_health_permission_req => 'स्वास्थ्य स्वापूया उजं माः';

  @override
  String get home_health_permission_desc =>
      'ब्लुमीयात रियल स्टेप, हर्ट रेट व मोबाइल होम विजेटयात रियल टाइमय् सिंक यायेत हेल्थ कनेक्टया अनुमति माः ।';

  @override
  String get home_allow_health => 'स्वास्थ्य स्वायेत अनुमति ब्यु';

  @override
  String get home_ready_mindful_day => 'माइन्डफुल डेया निंतिं तयार दु ला ? ✨';

  @override
  String get home_quick_add => 'याकनं तनादिसँ';

  @override
  String get home_live_gps => 'लाइभ जिपिएस';

  @override
  String get home_calories_remaining_label => 'ल्यं दनिगु क्यालोरि';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'नःगु : __पिएच_०__ / __पिएच_१__ केकेएल';
  }

  @override
  String get home_tap_water_tracker => 'लः ट्राकरया निंतिं ट्याप 💧';

  @override
  String get home_water_goal_reached => 'न्हिथंया आज्जु पूवन 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'न्हिथंया आज्जुइ __पिएच_०__ एमएल';
  }

  @override
  String get home_details => 'विवरण';

  @override
  String get home_upgrade_plan_desc =>
      'व्यक्तिगत न्हिथंया लक्ष्य व एआई योजना अनलक यायेत अपग्रेड या';

  @override
  String get home_unlock => 'अनलक या';

  @override
  String get home_quick_log_hint => 'याकनं भिं जुइगु प्रविष्टि रिकर्ड या ।';

  @override
  String get food_serving_size => 'सेवाया आकार';

  @override
  String get food_serving_grams => 'सेवा यायेगु (जि)';

  @override
  String get food_number_servings => 'सेवाया ल्याः';

  @override
  String get food_calories_per_serving => 'प्रति सेवा क्यालोरि';

  @override
  String get food_recipe_ingredients => 'हलंज्वलं';

  @override
  String get food_recipe_add_ingredient => 'हलंज्वलं तनादिसँ';

  @override
  String get food_recipe_directions => 'निर्देशन व नोट';

  @override
  String get food_recipe_total => 'मुक्कं रेसिपि पोषण';

  @override
  String get food_recipe_per_serving => 'प्रति सेवा पोषण';

  @override
  String get food_recipe_saved_toast => 'अनुकूलित नसा ताःलाक बचे जुल !';

  @override
  String get food_barcode_found => 'उत्पादन लुइकल !';

  @override
  String get food_barcode_not_found_desc =>
      'जिमिसं चाःगु डाटाबेसय् थुगु बारकोड लुइके मफुत । छिं थुकियात कस्टम नसाकथं तनादी फै ।';

  @override
  String get food_add_custom_btn => 'कस्टम नसा तनादिसँ';

  @override
  String get food_scan_again => 'हाकनं स्क्यान या';

  @override
  String get food_review_items => 'लुयावःगु नसाया समीक्षा या';

  @override
  String get food_review_hint =>
      'म्हसीके मफुगु छुं नं बस्तुया मात्रा मिले या बाय् लिका ।';

  @override
  String get food_log_selected => 'ल्ययातःगु नसा लग';

  @override
  String get food_favourites_title => 'यःगु नसा';

  @override
  String get food_recent_title => 'नकतिनिया नसा';

  @override
  String get food_no_favourites =>
      'आःतकं यःगु नसा मदुनि । थन बचत यायेत छुं नं नसाय् नुगलय् तियादिसँ ।';

  @override
  String get food_no_recents => 'नकतिनि लग यानातःगु नसा लुइके मफुत ।';

  @override
  String get food_nutrition_details_title => 'न्हिथंया पोषण विवरण';

  @override
  String get food_macro_protein_label => 'प्रोटिन स्यनेगु';

  @override
  String get food_macro_carbs_label => 'कार्ब्स ब्रेकडाउन';

  @override
  String get food_macro_fat_label => 'चिकं त्वाःदलेगु';

  @override
  String get food_macro_fiber_label => 'फाइबर ब्रेकडाउन';

  @override
  String get food_daily_target_comparison => 'लक्ष्य तुलना';

  @override
  String food_target_label(Object target) {
    return 'लक्ष्य : __पिएच_०__';
  }

  @override
  String get food_edit_entry => 'डायरी इन्ट्री सम्पादन या';

  @override
  String get food_delete_entry => 'दुथ्याःगु हुयाछ्व ।';

  @override
  String food_grams_short(Object grams) {
    return '__पिएच_०__ जि';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '__पिएच_०__ केकेएल';
  }

  @override
  String water_progress(Object current, Object target) {
    return '__पिएच_०__या __पिएच_१__ एमएल';
  }

  @override
  String get water_intake_history => 'थौंया लःया लग';

  @override
  String get water_no_logs_today =>
      'थौंतकं लः मवःनि । हाइड्रेट यानाः याकनं तनेगु बटनय् तियादिसँ !';

  @override
  String get water_adjust_goal => 'न्हिथंया आज्जुयात समायोजन या ।';

  @override
  String get health_connect_banner => 'स्वास्थ्य कनेक्टय् स्वानातःगु दु ।';

  @override
  String get health_vitals_summary => 'न्हिथंया स्वास्थ्य महत्वपूर्ण';

  @override
  String get health_latest_heart_rate => 'लिपांगु नुगःचु गति';

  @override
  String get health_latest_bp => 'रक्तचाप';

  @override
  String get health_latest_spo2 => 'हिइ अक्सिजन';

  @override
  String get health_latest_glucose => 'हिइ चिनि';

  @override
  String get health_latest_weight => 'तौल';

  @override
  String get health_latest_sleep => 'द्यनेगु ई';

  @override
  String get health_add_manual => 'म्यानुअल दाना स्व ।';

  @override
  String get health_history_trends => 'ऐतिहासिक प्रवृत्ति';

  @override
  String get health_sync_success => 'स्वास्थ्य डाटा ताःलाक सिंक जुल !';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '__पिएच_०__ घौ __पिएच_१__ मिनेट';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '__पिएच_०__ केजी';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '__पिएच_०__ बिपिएम';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '__पिएच_०__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '__पिएच_०__ / __पिएच_१__ एमएमएचजि';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '__पिएच_०__ एमजि/डिएल';
  }

  @override
  String get health_devices_title => 'स्वाःगु उपकरण व पुनेज्यूगु सामान';

  @override
  String get health_devices_desc =>
      'ज्वःलाःगु स्मार्टघडी, फिटनेस ट्राकर व स्वास्थ्य सेन्सरयात ब्यवस्थापन या ।';

  @override
  String get health_workout_editor_title => 'कसरत सम्पादन या';

  @override
  String get health_workout_name_label => 'कसरतया नां';

  @override
  String get health_workout_duration_label => 'ई (मिनेट)';

  @override
  String get health_workout_calories_label => 'अनुमानित क्यालोरि (केसिएएल)';

  @override
  String get health_workout_date_label => 'तिथि व ई';

  @override
  String get plan_daily_wellness_roadmap => 'छिगु व्यक्तिगत रोडम्याप';

  @override
  String get plan_morning_routine => 'सुथसिया न्हिथंया ज्या';

  @override
  String get plan_afternoon_routine => 'न्हिनय् कल्याण';

  @override
  String get plan_evening_routine => 'सनिइलया फय् - क्वय्';

  @override
  String get plan_coach_badge => 'ब्लुमी एआई कोच';

  @override
  String get plan_weekly_overview => '७-न्हुया कल्याण केन्द्रित';

  @override
  String get plan_targets_title => 'कल्याण लक्ष्य व आज्जु';

  @override
  String get plan_calorie_budget_label => 'न्हिथंया क्यालोरि बजेट';

  @override
  String get plan_water_budget_label => 'न्हिथंया लःया लक्ष्य';

  @override
  String get plan_step_budget_label => 'न्हिथंया पलाःया आज्जु';

  @override
  String get plan_macro_split_label => 'म्याक्रोन्युट्रिएन्ट अनुपात';

  @override
  String get profile_personal_details => 'व्यक्तिगत विवरण';

  @override
  String get profile_body_stats => 'म्हया नाप';

  @override
  String get profile_app_preferences => 'प्राथमिकता व एप सेटिङ्ग';

  @override
  String get profile_edit_name_hint => 'छिगु नां';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'जाः (__पिएच_०__)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'तौल (__पिएच_०__)';
  }

  @override
  String get profile_edit_age_hint => 'उमेर ३.';

  @override
  String get profile_gender_male => 'मिजं';

  @override
  String get profile_gender_female => 'मिसा';

  @override
  String get profile_gender_other => 'मेगु / मधाये यः';

  @override
  String get profile_activity_sedentary =>
      'फ्यतुना च्वनेगु (भ्वय् बाय् छुं हे ब्यायाम मयायेगु)';

  @override
  String get profile_activity_light => 'भचा सक्रिय (१-३ न्हु/वाः)';

  @override
  String get profile_activity_moderate => 'मध्यम सक्रिय (३-५ न्हु/वाः)';

  @override
  String get profile_activity_very => 'तसकं सक्रिय (६-७ न्हु/वाः)';

  @override
  String get settings_wear_os_header => 'ओएस कम्पेनियन एप पुँ ।';

  @override
  String get settings_wear_os_desc =>
      'क्यालोरी, लः व स्टेपयात छकः स्वयेत थःगु वेयर ओएस घडीइ ब्लुमी टाइल व कम्प्लिक्सन इन्स्टल यानादिसँ ।';

  @override
  String get settings_widgets_header => 'अन्तरक्रियाशील एन्ड्रोइड विजेट';

  @override
  String get settings_widgets_desc =>
      'उघ्रिमय् अपडेटया निंतिं छिगु डिभाइसया होम स्क्रीनय् रियल टाइम विजेटयात पिन यानादिसँ ।';

  @override
  String get settings_about_header => 'ब्लुमिया खँय्';

  @override
  String get settings_about_version => 'संस्करण १.०.०';

  @override
  String get settings_about_build => '१०० दयेकि';

  @override
  String get settings_about_credits =>
      'मन दुम्ह, स्वस्थ जीवनया निंतिं बिचाः यानाः दयेकूगु खः ।';

  @override
  String get settings_terms_header => 'नियम व शर्तत';

  @override
  String get settings_privacy_header => 'गोपनीयता नीति';

  @override
  String get settings_delete_header => 'खाता व डाटा हुयाछ्व ।';

  @override
  String get settings_delete_warning =>
      'थ्व ज्याखँ लित काये फै मखु । छिगु दक्वं नसा, कसरत, महत्वपूर्ण व प्रोफाइल स्थायी रुपं डिलिट जुइ ।';

  @override
  String get settings_delete_confirm_btn => 'स्थायी रुपं हुयाछ्व ।';

  @override
  String get onboard_welcome_headline => 'ब्लुमिइ लसकुस दु ✨';

  @override
  String get onboard_welcome_tagline =>
      'छिगु जीवनया जःखः डिजाइन यानातःगु भद्र, माइन्डफुल वेलनेस ट्राकिङ्ग ।';

  @override
  String get onboard_step_about => 'छिगु बारे';

  @override
  String get onboard_step_goals => 'छिगु आज्जु';

  @override
  String get onboard_step_lifestyle => 'न्हिथंया बानि';

  @override
  String get onboard_step_permissions => 'अनुमति';

  @override
  String get onboard_step_plan => 'तयार दु !';

  @override
  String get onboard_health_connect_perm => 'स्वास्थ्य स्वापू पहुँच';

  @override
  String get onboard_step_sensors_perm => 'स्टेप काउन्टर सेन्सर';

  @override
  String get onboard_notif_perm => 'माइन्डफुल रिमाइन्डर व सुचं';

  @override
  String get onboard_camera_perm => 'क्यामरा (बारकोड व फूड स्क्यानर)';

  @override
  String get onboard_grant_permissions => 'अनुमति ब्यु';

  @override
  String get onboard_continue_dashboard => 'ड्यासबोर्ड चायेकि ।';

  @override
  String get notif_channel_hydration_name => 'हाइड्रेशन नड्ज';

  @override
  String get notif_channel_hydration_desc => 'न्हिच्छियंकं भद्र लःया लुमन्ति';

  @override
  String get notif_channel_nutrition_name => 'नसा व पोषणया लुमन्ति';

  @override
  String get notif_channel_nutrition_desc =>
      'कौला, ज्यःनाः, व बेलिया लुमन्तिया सतर्कता';

  @override
  String get notif_channel_steps_name => 'पलाः माइलस्टोन';

  @override
  String get notif_channel_steps_desc =>
      'न्हिथंया पलाःया लक्ष्य थ्यनीबलय् हनेगु';

  @override
  String get notif_channel_vitals_name => 'स्वास्थ्य व महत्वपूर्ण जाँच';

  @override
  String get notif_channel_vitals_desc =>
      'तौल व द्यनेगु ईया विन्ड-डाउन लुमन्ति';

  @override
  String get notif_action_log_water => '💧 लग +२५० एमएल';

  @override
  String get notif_action_snooze => 'स्नूज १५ मिटर';

  @override
  String get notif_action_log_meal => '🥗 लग मील';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
