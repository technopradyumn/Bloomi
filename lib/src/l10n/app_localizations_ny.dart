// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nyanja Chewa Chichewa (`ny`).
class AppLocalizationsNy extends AppLocalizations {
  AppLocalizationsNy([String locale = 'ny']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Kunyumba';

  @override
  String get nav_today => 'Lero';

  @override
  String get nav_plan => 'Konzani';

  @override
  String get nav_food => 'Chakudya';

  @override
  String get nav_food_diary => 'Diary ya Chakudya';

  @override
  String get nav_workout => 'Logi yolimbitsa thupi';

  @override
  String get nav_health => 'Thanzi';

  @override
  String get nav_profile => 'Mbiri';

  @override
  String get save => 'Sungani';

  @override
  String get cancel => 'Letsani';

  @override
  String get delete => 'Chotsani';

  @override
  String get edit => 'Sinthani';

  @override
  String get done => 'Zatheka';

  @override
  String get close => 'Tsekani';

  @override
  String get back => 'Kubwerera';

  @override
  String get next => 'Kenako';

  @override
  String get continue_btn => 'Pitirizani';

  @override
  String get confirm => 'Tsimikizani';

  @override
  String get search => 'Sakani';

  @override
  String get filter => 'Sefa';

  @override
  String get all => 'Zonse';

  @override
  String get active => 'Yogwira';

  @override
  String get today => 'Lero';

  @override
  String get yesterday => 'Dzulo';

  @override
  String get tomorrow => 'Mawa';

  @override
  String get add => 'Onjezani';

  @override
  String get remove => 'Chotsani';

  @override
  String get refresh => 'Tsitsaninso';

  @override
  String get retry => 'Yesaninso';

  @override
  String get error => 'Cholakwika';

  @override
  String get success => 'Kupambana';

  @override
  String get loading => 'Tikutsegula...';

  @override
  String get no_data => 'Palibe deta yomwe ilipo';

  @override
  String get offline => 'Offline Mode';

  @override
  String get offline_sub => 'Zosintha zidzalunzanitsidwa mukalumikizidwanso';

  @override
  String get undo => 'Bwezerani';

  @override
  String get portion => 'Gawo';

  @override
  String get quantity => 'Kuchuluka';

  @override
  String get unit => 'Chigawo';

  @override
  String get clear => 'Zomveka';

  @override
  String get select => 'Sankhani';

  @override
  String get apply => 'Ikani';

  @override
  String get reset => 'Bwezerani';

  @override
  String get ok => 'Chabwino';

  @override
  String get yes => 'Inde';

  @override
  String get no => 'Ayi';

  @override
  String get optional => 'Zosankha';

  @override
  String get calories => 'Zopatsa mphamvu';

  @override
  String get protein => 'Mapuloteni';

  @override
  String get carbs => 'Ma carbs';

  @override
  String get fat => 'Mafuta';

  @override
  String get fiber => 'CHIKWANGWANI';

  @override
  String get water => 'Madzi';

  @override
  String get steps => 'Masitepe';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'lbs ndi';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'mu';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'maola';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Kutumikira';

  @override
  String get servings => 'Zotumikira';

  @override
  String get serving_size => 'Kutumikira Kukula';

  @override
  String get per_100g => 'pa 100 g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Amereka';

  @override
  String get home_title => 'Kunyumba';

  @override
  String get home_greeting_morning => 'Good Morning';

  @override
  String get home_greeting_afternoon => 'Madzulo Abwino';

  @override
  String get home_greeting_evening => 'Madzulo Abwino';

  @override
  String get home_streak_title => 'Mtsinje wa Blossom';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kupambana kwamasiku',
      one: 'Kupambana kwa tsiku limodzi',
      zero: '0 masiku streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Kuwotchedwa';

  @override
  String get home_calories_budget => 'Kalori Bajeti';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal yotsala';
  }

  @override
  String get home_water_title => 'Daily Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / $target ml';
  }

  @override
  String get home_steps_title => 'Masitepe Anayenda';

  @override
  String get home_quick_actions => 'Zochita Mwachangu';

  @override
  String get home_log_meal => 'Log Chakudya';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Kulemera kwa Logi';

  @override
  String get home_insights_title => 'Zowona Zamasiku Ano';

  @override
  String get home_quote =>
      'Zosankha zing\'onozing\'ono zathanzi zimapanga masinthidwe ophuka.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Zozungulira & Mpweya';

  @override
  String get home_notifications => 'Zidziwitso';

  @override
  String get home_daily_score => 'Daily Wellness Score';

  @override
  String get home_view_all => 'Onani Zonse';

  @override
  String get food_diary_title => 'Diary ya Chakudya';

  @override
  String get food_breakfast => 'Chakudya cham\'mawa';

  @override
  String get food_lunch => 'Chakudya chamasana';

  @override
  String get food_dinner => 'Chakudya chamadzulo';

  @override
  String get food_snacks => 'Zokhwasula-khwasula';

  @override
  String get food_add_food => 'Onjezani Chakudya';

  @override
  String get food_edit_food => 'Sinthani Chakudya';

  @override
  String get food_add_breakfast => 'Onjezani Chakudya cham\'mawa';

  @override
  String get food_add_lunch => 'Onjezani Chakudya Chamadzulo';

  @override
  String get food_add_dinner => 'Onjezani Chakudya Chamadzulo';

  @override
  String get food_add_snack => 'Onjezani Snack';

  @override
  String get food_total_calories => 'Ma calories Onse';

  @override
  String get food_empty_meal =>
      'Palibe zakudya zomwe zasungidwa pa chakudyachi';

  @override
  String get food_empty_diary => 'Palibe zakudya zatsiku lino';

  @override
  String get food_log_first_meal =>
      'Dinani + kuti mulembe chakudya chanu choyamba chokoma';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint => 'Sakani mbale, zipatso, dal, roti...';

  @override
  String get food_custom_recipe => 'Chakudya Chokhazikika & Chinsinsi';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Zakudya Zaposachedwa';

  @override
  String get food_favourites => 'Zokondedwa';

  @override
  String get food_macro_summary => 'Kuwonongeka kwa Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Kodi mukutsimikiza kuti mukufuna kuchotsa chinthuchi?';

  @override
  String get food_item_deleted => 'Chakudya chachotsedwa';

  @override
  String get food_remaining => 'otsala';

  @override
  String get food_consumed => 'kudyedwa';

  @override
  String food_of_target(Object target) {
    return 'mwa $target kcal';
  }

  @override
  String get foodSearch_title => 'Sakani Zakudya';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Chithunzi cha Snap Chakudya';

  @override
  String get foodSearch_custom_food => 'Pangani Chakudya Chokhazikika';

  @override
  String get foodSearch_recent_searches => 'Zosaka Zaposachedwa';

  @override
  String get foodSearch_popular => 'Zakudya Zotchuka';

  @override
  String get foodSearch_no_results =>
      'Palibe zakudya zofanana ndi zomwe mwasaka';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align =>
      'Gwirizanitsani barcode mkati mwa chimango cha kamera';

  @override
  String get barcode_not_found => 'Zogulitsa sizinapezeke mu database';

  @override
  String get barcode_premium_feature =>
      'Kusanthula kwa barcode kumapezeka ndi Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Tengani chithunzi chomveka cha mbale yanu';

  @override
  String get camera_analysing => 'Kusanthula mbale ya chakudya...';

  @override
  String get camera_detected => 'Zinthu zopezeka';

  @override
  String get camera_flash => 'Sinthani Flash';

  @override
  String get camera_retake => 'Jambulaninso Chithunzi';

  @override
  String get camera_confirm_food => 'Tsimikizirani Zinthu';

  @override
  String get customFood_title => 'Chakudya Chokhazikika & Chinsinsi';

  @override
  String get customFood_name_hint => 'Dzina la mbale kapena cholowa';

  @override
  String get customFood_calories_hint => 'Zopatsa mphamvu (kcal)';

  @override
  String get customFood_protein_hint => 'Mapuloteni (g)';

  @override
  String get customFood_carbs_hint => 'Zakudya (g)';

  @override
  String get customFood_fat_hint => 'Mafuta (g)';

  @override
  String get customFood_save => 'Sungani Chinsinsi';

  @override
  String get water_tracker_title => 'Water Tracker';

  @override
  String get water_daily_target => 'Daily Hydration Goal';

  @override
  String get water_logged_today => 'Logged Lero';

  @override
  String get water_add_glass => '+ 250 ml Galasi';

  @override
  String get water_add_bottle => '+ 500 ml ya botolo';

  @override
  String get water_custom_amount => 'Mtengo Wamakonda';

  @override
  String get water_reminder_tip =>
      'Imwani madzi pafupipafupi tsiku lonse kuti mukhale ndi mphamvu zokhazikika.';

  @override
  String water_logged_toast(Object amount) {
    return 'Adalowa $amount ml madzi 💧';
  }

  @override
  String get workout_title => 'Logi yolimbitsa thupi';

  @override
  String get workout_add_exercise => 'Onjezani kulimbitsa thupi';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Mphamvu';

  @override
  String get workout_yoga => 'Yoga & Kusinthasintha';

  @override
  String get workout_duration => 'Kutalika';

  @override
  String get workout_intensity => 'Kulimba';

  @override
  String get workout_calories_burned => 'Ma calories Owotchedwa';

  @override
  String get workout_empty => 'Palibe zolimbitsa thupi zomwe zalembedwa lero';

  @override
  String get workout_save_success => 'Kulimbitsa thupi kwasungidwa bwino!';

  @override
  String get workout_type => 'Mtundu Wolimbitsa Thupi';

  @override
  String get workout_notes => 'Zolemba & Kulingalira';

  @override
  String get health_overview_title => 'Health & Vitals';

  @override
  String get health_heart_rate => 'Kugunda kwa Mtima';

  @override
  String get health_blood_oxygen => 'Oxygen wamagazi (SpO2)';

  @override
  String get health_blood_pressure => 'Kuthamanga kwa Magazi';

  @override
  String get health_blood_glucose => 'Glucose wamagazi';

  @override
  String get health_body_temperature => 'Kutentha kwa Thupi';

  @override
  String get health_sleep_tracking => 'Kutsata Kugona';

  @override
  String get health_weight_tracking => 'Kulemera ndi Kupanga Thupi';

  @override
  String get health_waist_hip => 'Chiwuno-ku-Hip Ration';

  @override
  String get health_devices_hub => 'Zipangizo & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Kuphatikizika komaliza: $time';
  }

  @override
  String get health_manual_entry => 'Kulowa pamanja pazaumoyo';

  @override
  String get health_metric_detail => 'Tsatanetsatane wa Metric';

  @override
  String get health_connected_sensors => 'Zowona Zaumoyo Zolumikizidwa';

  @override
  String get plan_title => 'Ndondomeko Yatsiku ndi tsiku';

  @override
  String get plan_weekly_title => 'Mapulani a Ubwino Wamlungu ndi mlungu';

  @override
  String get plan_calorie_target => 'Zopatsa Kalori';

  @override
  String get plan_water_target => 'Hydration Target';

  @override
  String get plan_step_target => 'Step Target';

  @override
  String get plan_sleep_target => 'Cholinga cha Tulo';

  @override
  String get plan_meal_suggestions => 'Malingaliro a Chakudya';

  @override
  String get plan_healthy_habits => 'Makhalidwe Athanzi & Malangizo';

  @override
  String get plan_coach_advice => 'Malangizo a Bloomi AI Coach';

  @override
  String get plan_generated_title => 'Ndandanda Yaumwini Watsiku ndi Tsiku';

  @override
  String get profile_title => 'Mbiri';

  @override
  String get profile_edit => 'Sinthani Mbiri';

  @override
  String get profile_name => 'Dzina';

  @override
  String get profile_age => 'Zaka';

  @override
  String get profile_gender => 'Jenda';

  @override
  String get profile_height => 'Kutalika';

  @override
  String get profile_weight => 'Kulemera';

  @override
  String get profile_goal => 'Cholinga Choyambirira';

  @override
  String get profile_activity_level => 'Mulingo wa Ntchito';

  @override
  String get profile_stats => 'Ziwerengero Zanga Zaumoyo';

  @override
  String get profile_saved => 'Mbiri yasinthidwa bwino';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Umembala';

  @override
  String get settings => 'Zokonda';

  @override
  String get preferences_habits => 'ZOkonda & ZOCHITIKA';

  @override
  String get appearance_theme => 'Maonekedwe & Mutu';

  @override
  String get appearance_theme_sub =>
      'Mwakuda, Kuwala, Kachitidwe Kachitidwe & Zosankha Zakumapeto kwa App';

  @override
  String get permissions => 'Zilolezo & Kufikira Kwadongosolo';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensor, GPS, Zidziwitso & Kamera';

  @override
  String get reminders_notifications => 'Zikumbutso & Zidziwitso';

  @override
  String get reminders_sub =>
      'Nthawi yachakudya, madzi, kuwunika kulemera ndi zikumbutso zogona';

  @override
  String get units_of_measurement => 'Mayunitsi Oyezera';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) kapena Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Chiyankhulo cha App';

  @override
  String get language_sub =>
      'Chingerezi, हिन्दी (Hindi), Hinglish & 195+ zilankhulo zapadziko lonse lapansi';

  @override
  String get home_screen_widgets => 'Home Screen Widgets';

  @override
  String get widgets_sub =>
      'Makatani amoyo a Android: Hub, Masitepe, Madzi, Zakudya & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch nzake, matailosi, zovuta & zofunika zamoyo';

  @override
  String get goals_wellness => 'ZOLINGA NDI ZABWINO ZABWINO';

  @override
  String get nutrition_targets => 'Zolinga Zazakudya & Kugawikana kwa Macro';

  @override
  String get nutrition_targets_sub =>
      'Zopatsa mphamvu zama calorie, mapuloteni, ma carbs, mafuta & cholinga chamadzi';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-day calorie average, macro ratio & tsiku labwino kwambiri';

  @override
  String get streaks_milestones => 'Mitsinje & Milestones';

  @override
  String get streaks_sub => 'Mipata yamaluwa, mabaji & zopambana';

  @override
  String get connected_devices => 'ZINA ZOLUMIKIRIKA NDI DZIKO LAPANSI';

  @override
  String get devices_hub => 'Zipangizo & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Zozungulira & Nyengo';

  @override
  String get surroundings_sub =>
      'Ubwino wa mpweya (AQI), index ya UV & maupangiri anyengo';

  @override
  String get bloomi_pro => 'Kulembetsa kwa Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, ma widget 5 a skrini yakunyumba & kutsatira zofunikira';

  @override
  String get about_security => 'ZA & CHITENDERO';

  @override
  String get about_bloomi => 'Za Bloomi';

  @override
  String get about_bloomi_sub => 'Pangani mafotokozedwe, mtundu, mawonekedwe';

  @override
  String get privacy_policy => 'Mfundo Zazinsinsi';

  @override
  String get privacy_policy_sub =>
      'Offline-choyamba, kapangidwe ka data pazida';

  @override
  String get terms_conditions => 'Terms & Conditions';

  @override
  String get terms_conditions_sub =>
      'Migwirizano yazantchito ndi malangizo azaumoyo';

  @override
  String get delete_account => 'Chotsani Akaunti ndi Data';

  @override
  String get delete_account_sub =>
      'Chotsani mosasinthika deta yanu ya SQLite ndi zosunga zobwezeretsera zamtambo';

  @override
  String get healthy_habits => 'Pangani zizolowezi zofatsa komanso zokhalitsa';

  @override
  String get all_logs => 'Deta Yanga Yotsatiridwa & Zolemba';

  @override
  String get search_language =>
      'Sakani ndi chilankhulo kapena zilembo zakubadwa...';

  @override
  String get languages_available => 'Zinenero Zilipo';

  @override
  String get no_matching_languages =>
      'Palibe zilankhulo zofanana zomwe zapezeka';

  @override
  String get try_searching =>
      'Yesani kusaka ndi zilembo zachibadwidwe kapena kalembedwe kachingerezi';

  @override
  String get partially_translated => 'Omasuliridwa pang\'ono';

  @override
  String get complete_translation => 'Malizitsani';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Chiyankhulo chakhazikitsidwa ku $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Zozungulira & Chilengedwe';

  @override
  String get surroundings_aqi => 'Air Quality Index';

  @override
  String get surroundings_uv => 'UV index';

  @override
  String get surroundings_temp => 'Kutentha';

  @override
  String get surroundings_humidity => 'Chinyezi';

  @override
  String get surroundings_hydration_advice =>
      'Khalani ndi madzi okwanira munyengo yamakono.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Sakani Chakudya';

  @override
  String get food_quick_barcode => 'Jambulani Barcode 👑';

  @override
  String get food_quick_water => 'Onjezani Madzi';

  @override
  String get food_quick_custom => 'Chakudya Chokhazikika';

  @override
  String get surroundings_good => 'Zabwino';

  @override
  String get surroundings_moderate => 'Wapakati';

  @override
  String get surroundings_unhealthy => 'Zopanda thanzi';

  @override
  String get notifications_title => 'Zidziwitso & Zidziwitso';

  @override
  String get notifications_empty => 'Palibe zidziwitso zatsopano';

  @override
  String get notifications_mark_read => 'Chongani Zonse Monga Zawerengedwa';

  @override
  String get notifications_clear => 'Chotsani Zonse';

  @override
  String get reminders => 'Makonda a Zikumbutso';

  @override
  String get notifications => 'Zidziwitso';

  @override
  String get reminders_breakfast_title => 'Chikumbutso Cham\'mawa 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Mmawa wabwino! Nthawi yachakudya cham\'mawa chopatsa thanzi ku $time .';
  }

  @override
  String get reminders_lunch_title => 'Chikumbutso cha Chakudya Chamadzulo 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Imani kaye ndikusangalala ndi nkhomaliro yanthawi zonse pa $time .';
  }

  @override
  String get reminders_dinner_title => 'Chikumbutso cha Chakudya Chamadzulo 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Nthawi ya chakudya chopepuka, chokhutiritsa pa $time .';
  }

  @override
  String get reminders_water_title => 'Kuthamanga kwa Hydration 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Nthawi yomwa madzi atsopano! ( _PH_0__ )';
  }

  @override
  String get reminders_weight_title => 'Kuyeza kwa Sabata ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Tsatani zoyezera thupi lanu pa Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Nthawi Yogona Mphepo 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Pumulani ndikukonzekera kugona mwabata ( $time ).';
  }

  @override
  String get onboard_welcome => 'Takulandilani ku Bloomi';

  @override
  String get onboard_sub =>
      'Mnzanu wochezeka, wopanda intaneti komanso wathanzi komanso wathanzi.';

  @override
  String get onboard_get_started => 'Yambanipo';

  @override
  String get onboard_sign_in => 'Lowani';

  @override
  String get onboard_skip => 'Dumphani';

  @override
  String get onboard_choose_goal =>
      'Kodi cholinga chanu chachikulu cha thanzi labwino ndi chiyani?';

  @override
  String get onboard_goal_weight_loss => 'Kuwonda Modekha';

  @override
  String get onboard_goal_muscle => 'Kupeza Minofu & Mphamvu';

  @override
  String get onboard_goal_energy => 'Daily Energy & Vitality';

  @override
  String get onboard_goal_habits => 'Kudya Moganizira Bwino';

  @override
  String get onboard_about_you => 'Tiuzeni Za Inu Nokha';

  @override
  String get onboard_lifestyle => 'Ndondomeko Yanu Yatsiku ndi Tsiku';

  @override
  String get onboard_permissions_title => 'Zilolezo & Kufikira Kwadongosolo';

  @override
  String get onboard_permissions_sub =>
      'Perekani mwayi wolumikizira masitepe, masewera olimbitsa thupi, ndi zikumbutso.';

  @override
  String get onboard_plan_ready_title => 'Mapulani Anu Akonzeka!';

  @override
  String get onboard_plan_ready_sub =>
      'Takupangirani njira yochepetsera, yopatsa thanzi komanso thanzi lanu kwa inu.';

  @override
  String get onboard_enter_bloomi => 'Lowani Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Tsiku Lopambana Kwambiri: $day';
  }

  @override
  String get insights_streaks_badges => 'Mitsinje & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Yotsegulidwa pa $date';
  }

  @override
  String get insights_keep_going => 'Pitirizani kupita patsogolo kosangalatsa!';

  @override
  String get widgets_title => 'Home Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Ma Widget Ogwira Ntchito: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Masitepe & Imagwira Ntchito';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Valani OS Smartwatch';

  @override
  String get wear_os_connected => 'Zolumikizidwa ku Watch';

  @override
  String get wear_os_sync => 'Gwirizanitsani Data Yowonera';

  @override
  String get theme_title => 'Maonekedwe & Mutu';

  @override
  String get theme_mode => 'Theme Mode';

  @override
  String get theme_light => 'Kuwala';

  @override
  String get theme_dark => 'Chakuda';

  @override
  String get theme_system => 'Zosasintha Zadongosolo';

  @override
  String get theme_background_palette => 'Palette yakumbuyo';

  @override
  String get units_title => 'Mayunitsi Oyezera';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Takanika kutsegula dashboard';

  @override
  String get home_health_permission_req =>
      'Chilolezo cha Health Connect Chofunikira';

  @override
  String get home_health_permission_desc =>
      'Bloomi imafuna chilolezo cha Health Connect kuti ikoke masitepe enieni, kugunda kwamtima, ndi kulunzanitsa ma widget akunyumba yam\'manja munthawi yeniyeni.';

  @override
  String get home_allow_health => 'Lolani Health Connect';

  @override
  String get home_ready_mindful_day => 'Mwakonzeka tsiku lokumbukira? ✨';

  @override
  String get home_quick_add => 'Quick Add';

  @override
  String get home_live_gps => 'GPS yamoyo';

  @override
  String get home_calories_remaining_label => 'ZOKHALA ZOKHALA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Zadyedwa: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Dinani pa Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Zolinga zatsiku ndi tsiku zafikira 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml mpaka chigoli chatsiku ndi tsiku';
  }

  @override
  String get home_details => 'Tsatanetsatane';

  @override
  String get home_upgrade_plan_desc =>
      'Sinthani kuti mutsegule zolinga zanu zatsiku ndi tsiku & dongosolo la AI';

  @override
  String get home_unlock => 'Tsegulani 👑';

  @override
  String get home_quick_log_hint => 'Lembani mwachangu cholowa chaumoyo';

  @override
  String get food_serving_size => 'Kutumikira Kukula';

  @override
  String get food_serving_grams => 'Kutumikira (g)';

  @override
  String get food_number_servings => 'Nambala ya Matumiki';

  @override
  String get food_calories_per_serving => 'Zopatsa mphamvu pa kutumikira';

  @override
  String get food_recipe_ingredients => 'Zosakaniza';

  @override
  String get food_recipe_add_ingredient => 'Onjezerani Zosakaniza';

  @override
  String get food_recipe_directions => 'Malangizo & Zolemba';

  @override
  String get food_recipe_total => 'Total Chinsinsi Chakudya Chakudya';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast =>
      'Chakudya chanthawi zonse chasungidwa bwino!';

  @override
  String get food_barcode_found => 'Zapezeka!';

  @override
  String get food_barcode_not_found_desc =>
      'Sitinapeze barcode iyi pankhokwe yotseguka. Mukhoza kuwonjezera ngati chakudya chachizolowezi.';

  @override
  String get food_add_custom_btn => 'Onjezani Chakudya Chokhazikika';

  @override
  String get food_scan_again => 'Jambulaninso';

  @override
  String get food_review_items => 'Onaninso Zakudya Zomwe Zapezeka';

  @override
  String get food_review_hint =>
      'Sinthani kuchuluka kapena chotsani chilichonse chosadziwika';

  @override
  String get food_log_selected => 'Log Zakudya Zosankhidwa';

  @override
  String get food_favourites_title => 'Favorite Foods';

  @override
  String get food_recent_title => 'Zakudya Zaposachedwa';

  @override
  String get food_no_favourites =>
      'Palibe zakudya zomwe mumakonda. Dinani pamtima pa chakudya chilichonse kuti musunge apa.';

  @override
  String get food_no_recents => 'Palibe zakudya zomwe zasungidwa posachedwa.';

  @override
  String get food_nutrition_details_title =>
      'Tsatanetsatane wa Zakudya Zatsiku ndi Tsiku';

  @override
  String get food_macro_protein_label => 'Kuwonongeka kwa Mapuloteni';

  @override
  String get food_macro_carbs_label => 'Kuwonongeka kwa Carbs';

  @override
  String get food_macro_fat_label => 'Kuphwanya mafuta';

  @override
  String get food_macro_fiber_label => 'Kuwonongeka kwa Fiber';

  @override
  String get food_daily_target_comparison => 'Kufananiza Chandamale';

  @override
  String food_target_label(Object target) {
    return 'Zolinga: $target';
  }

  @override
  String get food_edit_entry => 'Sinthani Diary Entry';

  @override
  String get food_delete_entry => 'Chotsani Cholowa';

  @override
  String food_grams_short(Object grams) {
    return '_PH_0__ g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ya $target ml';
  }

  @override
  String get water_intake_history => 'Masiku Ano Zipika Zamadzi';

  @override
  String get water_no_logs_today =>
      'Palibe madzi omwe adathiridwabe lero. Tsitsani ndikudina batani lowonjezera mwachangu!';

  @override
  String get water_adjust_goal => 'Sinthani Cholinga cha Tsiku ndi Tsiku';

  @override
  String get health_connect_banner => 'Zolumikizidwa ndi Health Connect';

  @override
  String get health_vitals_summary => 'Daily Health Vitals';

  @override
  String get health_latest_heart_rate => 'Kusintha kwa Mtima Waposachedwa';

  @override
  String get health_latest_bp => 'Kuthamanga kwa Magazi';

  @override
  String get health_latest_spo2 => 'Magazi Oxygen';

  @override
  String get health_latest_glucose => 'Glucose wamagazi';

  @override
  String get health_latest_weight => 'Kulemera';

  @override
  String get health_latest_sleep => 'Nthawi Yatulo';

  @override
  String get health_add_manual => 'Onjezani Kuyeza Pamanja';

  @override
  String get health_history_trends => 'Mbiri Yakale';

  @override
  String get health_sync_success => 'Zambiri zathanzi zalumikizidwa bwino!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours maola $mins mphindi';
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
    return '_PH_0__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '_PH_0__ / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title => 'Zida Zolumikizidwa & Zovala';

  @override
  String get health_devices_desc =>
      'Sinthani mawotchi apawiri, zolondolera zolimbitsa thupi, ndi zowunikira zaumoyo.';

  @override
  String get health_workout_editor_title => 'Sinthani kulimbitsa thupi';

  @override
  String get health_workout_name_label => 'Dzina Lolimbitsa Thupi';

  @override
  String get health_workout_duration_label => 'Kutalika (mphindi)';

  @override
  String get health_workout_calories_label => 'Zopatsa mphamvu (kcal)';

  @override
  String get health_workout_date_label => 'Tsiku ndi Nthawi';

  @override
  String get plan_daily_wellness_roadmap => 'Mayendedwe Anu Okhazikika';

  @override
  String get plan_morning_routine => 'Njira Yam\'mawa';

  @override
  String get plan_afternoon_routine => 'Ubwino Wamadzulo';

  @override
  String get plan_evening_routine => 'Mphepo Yamadzulo-Pansi';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Day Wellness Focus';

  @override
  String get plan_targets_title => 'Zolinga Zaumoyo & Zolinga';

  @override
  String get plan_calorie_budget_label => 'Bajeti ya Kalori Yamasiku Onse';

  @override
  String get plan_water_budget_label => 'Daily Water Target';

  @override
  String get plan_step_budget_label => 'Cholinga chatsiku ndi tsiku';

  @override
  String get plan_macro_split_label => 'Macronutrient Ration';

  @override
  String get profile_personal_details => 'Zambiri Zaumwini';

  @override
  String get profile_body_stats => 'Miyeso ya Thupi';

  @override
  String get profile_app_preferences => 'Zokonda & Zokonda pa App';

  @override
  String get profile_edit_name_hint => 'Dzina lanu';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Kutalika ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Kulemera kwake ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Zaka';

  @override
  String get profile_gender_male => 'Mwamuna';

  @override
  String get profile_gender_female => 'Mkazi';

  @override
  String get profile_gender_other => 'Zina / Ndimakonda kusanena';

  @override
  String get profile_activity_sedentary =>
      'Ongokhala (Pang\'ono mpaka osachita masewera olimbitsa thupi)';

  @override
  String get profile_activity_light => 'Kuchita Mopepuka (1-3 masiku / sabata)';

  @override
  String get profile_activity_moderate => 'Kuchita Mode (masiku 3-5 / sabata)';

  @override
  String get profile_activity_very => 'Kuchita Kwambiri (masiku 6-7 / sabata)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Ikani matailosi a Bloomi ndi zovuta pa wotchi yanu ya Wear OS kuti muwone ma calories, madzi, ndi masitepe.';

  @override
  String get settings_widgets_header => 'Interactive Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Lembani ma widget a nthawi yeniyeni pakompyuta yanu yakunyumba kuti musinthe pompopompo.';

  @override
  String get settings_about_header => 'Za Bloomi';

  @override
  String get settings_about_version => 'Mtundu wa 1.0.0';

  @override
  String get settings_about_build => 'Kupanga 100';

  @override
  String get settings_about_credits =>
      'Kupangidwa mosamala kuti mukhale ndi moyo wathanzi.';

  @override
  String get settings_terms_header => 'Migwirizano ndi Zokwaniritsa';

  @override
  String get settings_privacy_header => 'Mfundo Zazinsinsi';

  @override
  String get settings_delete_header => 'Chotsani Akaunti ndi Data';

  @override
  String get settings_delete_warning =>
      'Izi sizingasinthidwe. Zakudya zanu zonse, zolimbitsa thupi, zofunika, ndi mbiri yanu zichotsedwa kwamuyaya.';

  @override
  String get settings_delete_confirm_btn => 'Chotsani Kwamuyaya';

  @override
  String get onboard_welcome_headline => 'Takulandilani ku Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Kutsata kofatsa, koganizira za thanzi lopangidwa mozungulira moyo wanu.';

  @override
  String get onboard_step_about => 'Za Inu';

  @override
  String get onboard_step_goals => 'Zolinga Zanu';

  @override
  String get onboard_step_lifestyle => 'Zizolowezi Zatsiku ndi Tsiku';

  @override
  String get onboard_step_permissions => 'Zilolezo';

  @override
  String get onboard_step_plan => 'Okonzeka!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Zikumbutso Zabwino & Zidziwitso';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Perekani Zilolezo';

  @override
  String get onboard_continue_dashboard => 'Tsegulani Dashboard';

  @override
  String get notif_channel_hydration_name => 'Mitundu ya Hydration';

  @override
  String get notif_channel_hydration_desc =>
      'Zikumbutso za madzi odekha tsiku lonse';

  @override
  String get notif_channel_nutrition_name =>
      'Zikumbutso za Chakudya & Chakudya Chakudya';

  @override
  String get notif_channel_nutrition_desc =>
      'Zikumbutso zachakudya cham\'mawa, chamasana, ndi chakudya chamadzulo';

  @override
  String get notif_channel_steps_name => 'Step Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Zikondwerero mukakwaniritsa zomwe mukufuna kuchita tsiku ndi tsiku';

  @override
  String get notif_channel_vitals_name => 'Macheke a Zaumoyo & Vitals';

  @override
  String get notif_channel_vitals_desc => 'Zikumbutso za kulemera ndi kugona';

  @override
  String get notif_action_log_water => '💧 chipika +250ml';

  @override
  String get notif_action_snooze => 'Kufikira 15m';

  @override
  String get notif_action_log_meal => '🥗 Chakudya cha Log';

  @override
  String get language => 'Chiyankhulo';

  @override
  String get share => 'Gawani';

  @override
  String common_days(Object count) {
    return '$count masiku apitawo';
  }
}
