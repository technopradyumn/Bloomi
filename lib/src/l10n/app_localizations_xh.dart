// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Xhosa (`xh`).
class AppLocalizationsXh extends AppLocalizations {
  AppLocalizationsXh([String locale = 'xh']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ekhaya';

  @override
  String get nav_today => 'Namhlanje';

  @override
  String get nav_plan => 'Cwangcisa';

  @override
  String get nav_food => 'Ukutya';

  @override
  String get nav_food_diary => 'Idayari yokutya';

  @override
  String get nav_workout => 'Ilog yokujima';

  @override
  String get nav_health => 'Impilo';

  @override
  String get nav_profile => 'Inkangeleko yesimo';

  @override
  String get save => 'Gcina';

  @override
  String get cancel => 'Rhoxisa';

  @override
  String get delete => 'Cima';

  @override
  String get edit => 'Hlela';

  @override
  String get done => 'Ugqibile';

  @override
  String get close => 'Vala';

  @override
  String get back => 'Emva';

  @override
  String get next => 'Okulandelayo';

  @override
  String get continue_btn => 'Qhubeka';

  @override
  String get confirm => 'Qinisekisa';

  @override
  String get search => 'Khangela';

  @override
  String get filter => 'Hluza';

  @override
  String get all => 'Konke';

  @override
  String get active => 'Iyasebenza';

  @override
  String get today => 'Namhlanje';

  @override
  String get yesterday => 'Izolo';

  @override
  String get tomorrow => 'Ngomso';

  @override
  String get add => 'Yongeza';

  @override
  String get remove => 'Susa';

  @override
  String get refresh => 'Hlaziya';

  @override
  String get retry => 'Zama kwakhona';

  @override
  String get error => 'Impazamo';

  @override
  String get success => 'Impumelelo';

  @override
  String get loading => 'Iyalayisha...';

  @override
  String get no_data => 'Akukho datha ikhoyo';

  @override
  String get offline => 'Imo engasebenziyo';

  @override
  String get offline_sub =>
      'Utshintsho luza ngqamaniso xa ludityanisiwe kwakhona';

  @override
  String get undo => 'qhaqha';

  @override
  String get portion => 'Isahlulo';

  @override
  String get quantity => 'Ubungakanani';

  @override
  String get unit => 'Iyunithi';

  @override
  String get clear => 'Cacileyo';

  @override
  String get select => 'Khetha';

  @override
  String get apply => 'Faka isicelo';

  @override
  String get reset => 'Lungisa kwakhona';

  @override
  String get ok => 'KULUNGILE';

  @override
  String get yes => 'Ewe';

  @override
  String get no => 'Hayi';

  @override
  String get optional => 'Ukhetho';

  @override
  String get calories => 'Iikhalori';

  @override
  String get protein => 'Iprotheni';

  @override
  String get carbs => 'IiCarbs';

  @override
  String get fat => 'Amafutha';

  @override
  String get fiber => 'Ifayibha';

  @override
  String get water => 'Amanzi';

  @override
  String get steps => 'Amanyathelo';

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
  String get centimeters => 'cm';

  @override
  String get inches => 'kwi';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'imiz';

  @override
  String get serving => 'Ukukhonza';

  @override
  String get servings => 'Iinkonzo';

  @override
  String get serving_size => 'Ubungakanani bokukhonza';

  @override
  String get per_100g => 'nge 100g';

  @override
  String get india => 'eIndiya';

  @override
  String get asia => 'EAsia';

  @override
  String get europe => 'IYurophu';

  @override
  String get middle_east => 'UMbindi Mpuma';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'baseMelika';

  @override
  String get home_title => 'Ekhaya';

  @override
  String get home_greeting_morning => 'Molo kusasa';

  @override
  String get home_greeting_afternoon => 'Mholo emva kwemini';

  @override
  String get home_greeting_evening => 'Good Evening';

  @override
  String get home_streak_title => 'IBlossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count umdwe weentsuku',
      one: '1 usuku streak',
      zero: '0 iintsuku streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Utshisiwe';

  @override
  String get home_calories_budget => 'Uhlahlo-lwabiwo mali lweekhalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal eseleyo';
  }

  @override
  String get home_water_title => 'Daily Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Amanyathelo Ahambayo';

  @override
  String get home_quick_actions => 'Izenzo eziKhawulezayo';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Amanzi';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Iimbono zanamhlanje';

  @override
  String get home_quote =>
      'Ukhetho oluncinci olusempilweni ludala iinguqu eziqhakaza.';

  @override
  String get home_ai_coach_tip => 'Umqeqeshi weBloomi AI';

  @override
  String get home_surroundings => 'IiNdawo kunye noMoya';

  @override
  String get home_notifications => 'Izaziso';

  @override
  String get home_daily_score => 'Inqaku lempilo yosuku';

  @override
  String get home_view_all => 'Jonga Konke';

  @override
  String get food_diary_title => 'Idayari yokutya';

  @override
  String get food_breakfast => 'Isidlo sakusasa';

  @override
  String get food_lunch => 'Isidlo sasemini';

  @override
  String get food_dinner => 'Isidlo sangokuhlwa';

  @override
  String get food_snacks => 'I-snacks';

  @override
  String get food_add_food => 'Yongeza Ukutya';

  @override
  String get food_edit_food => 'Hlela Ukutya';

  @override
  String get food_add_breakfast => 'Yongeza isidlo sakusasa';

  @override
  String get food_add_lunch => 'Yongeza isidlo sasemini';

  @override
  String get food_add_dinner => 'Yongeza isidlo sangokuhlwa';

  @override
  String get food_add_snack => 'Yongeza iSnack';

  @override
  String get food_total_calories => 'IiCalories zizonke';

  @override
  String get food_empty_meal => 'Akukho kutya kufakiweyo kwesi sidlo okwangoku';

  @override
  String get food_empty_diary => 'Akukho kutya kufakwe ngolu suku';

  @override
  String get food_log_first_meal =>
      'Thepha + ukuze ungene kwisidlo sakho sokuqala esimnandi';

  @override
  String get food_quick_add => 'Yongeza ngokukhawuleza';

  @override
  String get food_search_hint => 'Khangela izitya, iziqhamo, i-dal, i-roti...';

  @override
  String get food_custom_recipe => 'Ukutya okuSiko kunye neRecipe';

  @override
  String get food_scan_barcode => 'Skena ibhakhowudi';

  @override
  String get food_camera_scan => 'Iskena sokutya se-AI';

  @override
  String get food_recent => 'Ukutya okutsha nje';

  @override
  String get food_favourites => 'Ezizithandayo';

  @override
  String get food_macro_summary => 'Ukuqhekeka kweMacronutrient';

  @override
  String get food_delete_meal_confirm => 'Uqinisekile ufuna ukuyisusa le nto?';

  @override
  String get food_item_deleted => 'Into yokutya isusiwe';

  @override
  String get food_remaining => 'eseleyo';

  @override
  String get food_consumed => 'idliwe';

  @override
  String food_of_target(Object target) {
    return 'ye $target kcal';
  }

  @override
  String get foodSearch_title => 'Khangela Ukutya';

  @override
  String get foodSearch_scan_barcode => 'Skena ibhakhowudi';

  @override
  String get foodSearch_take_photo => 'Snap Ukutya Ifoto';

  @override
  String get foodSearch_custom_food => 'Yenza Ukutya KweSiko';

  @override
  String get foodSearch_recent_searches => 'Uphendlo lwakutsha nje';

  @override
  String get foodSearch_popular => 'Izitya ezidumileyo';

  @override
  String get foodSearch_no_results =>
      'Akukho kutya okuhambelana nophendlo lwakho';

  @override
  String get barcode_title => 'Iskena seBhakhowudi';

  @override
  String get barcode_align =>
      'Lungelelanisa ibhakhowudi ngaphakathi kwesakhelo sekhamera';

  @override
  String get barcode_not_found => 'Imveliso ayifumanekanga kwisiseko sedatha';

  @override
  String get barcode_premium_feature =>
      'Ukuskena ibhakhowudi kuyafumaneka ngeBloomi Pro';

  @override
  String get camera_title => 'Iskena sokutya se-AI';

  @override
  String get camera_tap_hint => 'Thatha ifoto ecacileyo yesitya sakho';

  @override
  String get camera_analysing => 'Ihlalutya ipleyiti yokutya...';

  @override
  String get camera_detected => 'Izinto ezichongiwe';

  @override
  String get camera_flash => 'Guqula iFlash';

  @override
  String get camera_retake => 'Thatha kwakhona iFoto';

  @override
  String get camera_confirm_food => 'qinisekisa izinto';

  @override
  String get customFood_title => 'Ukutya okuSiko kunye neRecipe';

  @override
  String get customFood_name_hint => 'Isitya okanye igama lesithako';

  @override
  String get customFood_calories_hint => 'Iikhalori (kcal)';

  @override
  String get customFood_protein_hint => 'Iprotheyini (g)';

  @override
  String get customFood_carbs_hint => 'Iikhabhothi (g)';

  @override
  String get customFood_fat_hint => 'Amafutha (g)';

  @override
  String get customFood_save => 'Gcina Iresiphi';

  @override
  String get water_tracker_title => 'I-Tracker yamanzi';

  @override
  String get water_daily_target => 'Injongo yeMihla yeHydration';

  @override
  String get water_logged_today => 'Ngena Namhlanje';

  @override
  String get water_add_glass => '+250 ml yeglasi';

  @override
  String get water_add_bottle => '+500 ml ibhotile';

  @override
  String get water_custom_amount => 'Isixa seSiko';

  @override
  String get water_reminder_tip =>
      'Sela amanzi rhoqo imini yonke ukuze ufumane amandla.';

  @override
  String water_logged_toast(Object amount) {
    return 'Kufakwe $amount ml yamanzi 💧';
  }

  @override
  String get workout_title => 'Ilog yokujima';

  @override
  String get workout_add_exercise => 'Yongeza ukujima';

  @override
  String get workout_cardio => 'ICardio';

  @override
  String get workout_strength => 'Amandla';

  @override
  String get workout_yoga => 'I-Yoga kunye nokuguquguquka';

  @override
  String get workout_duration => 'Ubude bexesha';

  @override
  String get workout_intensity => 'Ukuqina';

  @override
  String get workout_calories_burned => 'Iikhalori ezitshisiweyo';

  @override
  String get workout_empty => 'Akukho kuzilolonga namhlanje';

  @override
  String get workout_save_success => 'Umthambo ugcinwe ngempumelelo!';

  @override
  String get workout_type => 'Uhlobo lokuzilolonga';

  @override
  String get workout_notes => 'Amanqaku & IiReflection';

  @override
  String get health_overview_title => 'Impilo kunye nezinto ezibalulekileyo';

  @override
  String get health_heart_rate => 'Izinga lentliziyo';

  @override
  String get health_blood_oxygen => 'Ioksijeni yegazi (SpO2)';

  @override
  String get health_blood_pressure => 'Uxinzelelo lwegazi';

  @override
  String get health_blood_glucose => 'IGlucose yegazi';

  @override
  String get health_body_temperature => 'Ubushushu bomzimba';

  @override
  String get health_sleep_tracking => 'Ukulandelwa kokulala';

  @override
  String get health_weight_tracking => 'Ubunzima kunye noBume boMzimba';

  @override
  String get health_waist_hip => 'Isinqe ukuya kwiHip Ratio';

  @override
  String get health_devices_hub => 'Izixhobo kunye ne-Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Igqibele ukuvumelanisa: $time';
  }

  @override
  String get health_manual_entry => 'Ukungeniswa kweMpilo okwenziwa ngesandla';

  @override
  String get health_metric_detail => 'Iinkcukacha zeMetric';

  @override
  String get health_connected_sensors =>
      'IiSensors zezeMpilo eziQhagamshelweyo';

  @override
  String get plan_title => 'Isicwangciso semihla ngemihla';

  @override
  String get plan_weekly_title => 'Isicwangciso seVeki seMpilo Qete';

  @override
  String get plan_calorie_target => 'Ikhalori ekujoliswe kuyo';

  @override
  String get plan_water_target => 'Ithagethi yeHydration';

  @override
  String get plan_step_target => 'Inyathelo ekujoliswe kulo';

  @override
  String get plan_sleep_target => 'Lala Ekujoliswe kuko';

  @override
  String get plan_meal_suggestions => 'Iingcebiso ngeSidlo';

  @override
  String get plan_healthy_habits => 'Imikhwa esempilweni kunye neengcebiso';

  @override
  String get plan_coach_advice => 'Iingcebiso zomqeqeshi weBloomi AI';

  @override
  String get plan_generated_title =>
      'IShedyuli Yemihla ngemihla eyenzelwe wena';

  @override
  String get profile_title => 'Inkangeleko yesimo';

  @override
  String get profile_edit => 'Hlela iProfayile';

  @override
  String get profile_name => 'Igama';

  @override
  String get profile_age => 'Ubudala';

  @override
  String get profile_gender => 'Isini';

  @override
  String get profile_height => 'Ubude';

  @override
  String get profile_weight => 'Ubunzima';

  @override
  String get profile_goal => 'Injongo Ephambili';

  @override
  String get profile_activity_level => 'Inqanaba lomsebenzi';

  @override
  String get profile_stats => 'Ubalo lwam lokuPhila';

  @override
  String get profile_saved => 'Iprofayile ihlaziywe ngempumelelo';

  @override
  String get profile_bmi => 'Isalathiso sobunzima bomzimba (BMI)';

  @override
  String get profile_membership => 'Ubulungu';

  @override
  String get settings => 'Iisetingi';

  @override
  String get preferences_habits => 'EZINTSHA KUNYE NEZIQHELEKILEYO';

  @override
  String get appearance_theme => 'Imbonakalo kunye noMxholo';

  @override
  String get appearance_theme_sub =>
      'Kumnyama, kuKhanya, kwiMowudi yeNkqubo kunye noKhetho lwangasemva lwe-App';

  @override
  String get permissions => 'Iimvume kunye noFikelelo lweNkqubo';

  @override
  String get permissions_sub =>
      'UkuQhagamshela kweMpilo, iiSensori zeNyathelo, iGPS, iZaziso kunye neKhamera';

  @override
  String get reminders_notifications => 'Izikhumbuzo & Izaziso';

  @override
  String get reminders_sub =>
      'Amaxesha okutya, amanzi, ukujonga ubunzima kunye nezikhumbuzi zexesha lokulala';

  @override
  String get units_of_measurement => 'IiYunithi zoMlinganiselo';

  @override
  String get units_sub =>
      'I-Metric (kg, cm, ml, km) okanye i-Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Ulwimi Losetyenziso';

  @override
  String get language_sub =>
      'IsiNgesi, हिन्दी (isiHindi), isiHinglish & 195+ iilwimi zehlabathi';

  @override
  String get home_screen_widgets => 'IiWidgets zeSkrini sasekhaya';

  @override
  String get widgets_sub =>
      'Iwijethi ebukhoma ye-Android: Ihabhu, Amanyathelo, Amanzi, Isondlo kunye neMascot';

  @override
  String get wear_os_watch_app => 'Nxiba i-OS Watch App';

  @override
  String get wear_os_sub =>
      'Iqabane leSmartwatch, iithayile, iingxaki kunye nezinto ezibalulekileyo eziphilayo';

  @override
  String get goals_wellness => 'IINJONGO & INGQIQO YOKUPHILA';

  @override
  String get nutrition_targets =>
      'Ujoliso lweSondlo kunye noKwahlulwa ngokuKhulu';

  @override
  String get nutrition_targets_sub =>
      'Ikhalori ekujoliswe kuyo, iiprotheyini, iicarbohydrates, amafutha & injongo yamanzi';

  @override
  String get weekly_recap => 'Inkcazo yempilo yeVeki';

  @override
  String get weekly_recap_sub =>
      'Iikhalori zeentsuku ezi-7, umlinganiselo omkhulu kunye nosuku oluhle';

  @override
  String get streaks_milestones => 'Imikrozo kunye neMilestones';

  @override
  String get streaks_sub => 'Iintyatyambo ezisebenzayo, iibheji & impumelelo';

  @override
  String get connected_devices => 'IZIXHOBO EZIQHAKANYELWEYO & NEECOSYSTEM';

  @override
  String get devices_hub => 'Izixhobo kunye ne-Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'UkuQhagamshela kweMpilo, iGalaxy Watch, iPixel Watch, iGarmin';

  @override
  String get surroundings_weather => 'IiNdawo kunye neMozulu';

  @override
  String get surroundings_sub =>
      'Umgangatho womoya (AQI), isalathiso se-UV kunye neengcebiso zokushukunyiswa kwemozulu';

  @override
  String get bloomi_pro => 'Ubhaliso lweBloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Umqeqeshi woCwangciso lwe-AI, iiwijethi zesikrini sasekhaya ezi-5 kunye nokulandelwa okubalulekileyo';

  @override
  String get about_security => 'MALUNGA & NOKHUSELEKO';

  @override
  String get about_bloomi => 'Malunga neBloomi';

  @override
  String get about_bloomi_sub => 'Yakha iinkcukacha, inguqulelo, iimpawu';

  @override
  String get privacy_policy => 'Umgaqo-nkqubo wabucala';

  @override
  String get privacy_policy_sub =>
      'Ngaphandle kwe-intanethi-kuqala, kwi-device data architecture';

  @override
  String get terms_conditions => 'Imigaqo neMiqathango';

  @override
  String get terms_conditions_sub =>
      'Imigaqo yenkonzo kunye nezikhokelo zempilo';

  @override
  String get delete_account => 'Cima iakhawunti kunye neDatha';

  @override
  String get delete_account_sub =>
      'Cima ngokungenakujikwa idatha yeSQLite yendawo kunye ne-backups zamafu';

  @override
  String get healthy_habits => 'Yakha isimilo esithambileyo, esihlala sihleli';

  @override
  String get all_logs => 'IDatha yam eKhandwayo kunye neeLog';

  @override
  String get search_language =>
      'Phendla ngolwimi okanye iscript somthonyama...';

  @override
  String get languages_available => 'Iilwimi Ezikhoyo';

  @override
  String get no_matching_languages => 'Akukho zilwimi zidibanayo zifunyenweyo';

  @override
  String get try_searching =>
      'Zama ukukhangela ngeskripthi somthonyama okanye upelo lwesiNgesi';

  @override
  String get partially_translated => 'Iguqulelwe ngokuyinxenye';

  @override
  String get complete_translation => 'Gqibezela';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ulwimi lusetelwe ku- $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'IiNdawo kunye nokusiNgqongileyo';

  @override
  String get surroundings_aqi => 'Isalathiso soMgangatho woMoya';

  @override
  String get surroundings_uv => 'Isalathiso seUV';

  @override
  String get surroundings_temp => 'Ubushushu';

  @override
  String get surroundings_humidity => 'Ukufuma';

  @override
  String get surroundings_hydration_advice =>
      'Hlala unamanzi ngokwaneleyo kwiimeko zemozulu zangoku.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Khangela Ukutya';

  @override
  String get food_quick_barcode => 'Skena ibhakhowudi 👑';

  @override
  String get food_quick_water => 'Yongeza Amanzi';

  @override
  String get food_quick_custom => 'Ukutya okuSiko';

  @override
  String get surroundings_good => 'Kulungile';

  @override
  String get surroundings_moderate => 'Phakathi';

  @override
  String get surroundings_unhealthy => 'Ayinampilo';

  @override
  String get notifications_title => 'Izaziso kunye nezilumkiso';

  @override
  String get notifications_empty => 'Akukho zaziso zitsha';

  @override
  String get notifications_mark_read => 'Phawula Konke njengokufundiweyo';

  @override
  String get notifications_clear => 'Sula Konke';

  @override
  String get reminders => 'Iisetingi zesikhumbuzi';

  @override
  String get notifications => 'Izaziso';

  @override
  String get reminders_breakfast_title => 'Isikhumbuzo sesidlo sakusasa 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Molo kusasa! Ixesha lesidlo sakusasa esinesondlo e- $time .';
  }

  @override
  String get reminders_lunch_title => 'Isikhumbuzo sesidlo sasemini 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Misa kwaye wonwabele isidlo sasemini esilungeleleneyo, esinengqondo e- $time .';
  }

  @override
  String get reminders_dinner_title => 'Isikhumbuzo sesidlo sangokuhlwa 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Ixesha lokukhanya, isidlo sangokuhlwa esanelisayo e- $time .';
  }

  @override
  String get reminders_water_title => 'I-Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ixesha lokusela iglasi entsha yamanzi! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Ubungakanani beveki ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Landa umlinganiselo womzimba wakho weveki kwi-Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Ixesha lokulala Umoya-phantsi 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Yolisa kwaye ulungiselele ubuthongo obupholileyo ( $time ).';
  }

  @override
  String get onboard_welcome => 'Wamkelekile eBloomi';

  @override
  String get onboard_sub =>
      'Unobuhlobo, ngaphandle kwe-intanethi-yokuqala impilo kunye neqabane lakho lesondlo.';

  @override
  String get onboard_get_started => 'Qalisa';

  @override
  String get onboard_sign_in => 'Sayina';

  @override
  String get onboard_skip => 'Tsiba';

  @override
  String get onboard_choose_goal => 'Yintoni eyona njongo yakho yempilontle?';

  @override
  String get onboard_goal_weight_loss => 'Ukunciphisa Ubunzima obumnene';

  @override
  String get onboard_goal_muscle => 'Ukuzuza kweZihlunu kunye nokomelela';

  @override
  String get onboard_goal_energy => 'Amandla emihla ngemihla kunye nokuPhila';

  @override
  String get onboard_goal_habits => 'Ukutya okunempilo ngeNgcinga';

  @override
  String get onboard_about_you => 'Sixelele Ngawe';

  @override
  String get onboard_lifestyle => 'Indlela Yakho Yemihla Ngemihla';

  @override
  String get onboard_permissions_title => 'Iimvume kunye noFikelelo lweNkqubo';

  @override
  String get onboard_permissions_sub =>
      'Nika ufikelelo kumanyathelo ongqamaniso, ukuzilolonga, kunye nezikhumbuzi.';

  @override
  String get onboard_plan_ready_title => 'Isicwangciso sakho seSiko silungile!';

  @override
  String get onboard_plan_ready_sub =>
      'Siyilele isondlo esithambileyo, esenzelwe wena siqu kunye nemephu yendlela yokuphila kakuhle ukwenzela wena.';

  @override
  String get onboard_enter_bloomi => 'Ngena eBloomi';

  @override
  String get insights_weekly_report => 'Inkcazo yempilo yeVeki';

  @override
  String insights_best_day(Object day) {
    return 'Usuku olugqibeleleyo lokuhambelana: $day';
  }

  @override
  String get insights_streaks_badges => 'Imikrozo kunye neMilestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ivulwe kwi- $date';
  }

  @override
  String get insights_keep_going => 'Gcina up inkqubela fantastic!';

  @override
  String get widgets_title => 'IiWidgets zeSkrini sasekhaya';

  @override
  String widgets_active_count(Object count) {
    return 'IWidgets esebenzayo: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Amanyathelo kunye neRingi esebenzayo';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Iqabane leBloomi Mascot';

  @override
  String get wear_os_title => 'Nxiba OS Smartwotshi';

  @override
  String get wear_os_connected => 'NONE';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Imbonakalo kunye noMxholo';

  @override
  String get theme_mode => 'IMowudi yomxholo';

  @override
  String get theme_light => 'Ukukhanya';

  @override
  String get theme_dark => 'Mnyama';

  @override
  String get theme_system => 'Inkqubo eMiselweyo';

  @override
  String get theme_background_palette => 'IPalethi yangasemva';

  @override
  String get units_title => 'IiYunithi zoMlinganiselo';

  @override
  String get units_metric => 'Umlinganiso (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ayikwazanga ukulayisha ideshibhodi';

  @override
  String get home_health_permission_req =>
      'Imvume yoQhagamshelwano lweMpilo iyafuneka';

  @override
  String get home_health_permission_desc =>
      'I-Bloomi ifuna imvume yoQhagamshelwano lwezeMpilo ukuze itsale amanyathelo okwenyani, izinga lokubetha kwentliziyo, kunye nokuvumelanisa iiwijethi zasekhaya eziphathwayo ngexesha lokwenyani.';

  @override
  String get home_allow_health => 'Vumela uQhagamshelwano lwezeMpilo';

  @override
  String get home_ready_mindful_day => 'Ulungele usuku olukhumbulayo? ✨';

  @override
  String get home_quick_add => 'Yongeza ngokukhawuleza';

  @override
  String get home_live_gps => 'I-GPS ephilayo';

  @override
  String get home_calories_remaining_label => 'IIKALORI EZISILEYO';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Idliwe: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker =>
      'Thepha ukuze ufumane i-Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Usukelo losuku lufikelelwe 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ukuya kumgomo wosuku';
  }

  @override
  String get home_details => 'Iinkcukacha';

  @override
  String get home_upgrade_plan_desc =>
      'Phucula ukuze uvule iithagethi zemihla ngemihla kunye nesicwangciso se-AI';

  @override
  String get home_unlock => 'Vula 👑';

  @override
  String get home_quick_log_hint => 'Rekhoda ngokukhawuleza ukungena kwimpilo';

  @override
  String get food_serving_size => 'Ubungakanani bokukhonza';

  @override
  String get food_serving_grams => 'Ukukhonza (g)';

  @override
  String get food_number_servings => 'Inani leeNkonzo';

  @override
  String get food_calories_per_serving => 'Iikhalori ngokuphakwa';

  @override
  String get food_recipe_ingredients => 'Izithako';

  @override
  String get food_recipe_add_ingredient => 'Yongeza Isithako';

  @override
  String get food_recipe_directions => 'Imiyalelo & Amanqaku';

  @override
  String get food_recipe_total => 'Iyonke iRecipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Ngokukhonza ngeSondlo';

  @override
  String get food_recipe_saved_toast =>
      'Ukutya kwesiqhelo kugcinwe ngempumelelo!';

  @override
  String get food_barcode_found => 'Imveliso ifunyenwe!';

  @override
  String get food_barcode_not_found_desc =>
      'Asiyifumananga le khowudi yebhakhowudi kwindawo evulekileyo yedatha. Ungayongeza njengokutya okuqhelekileyo.';

  @override
  String get food_add_custom_btn => 'Yongeza Ukutya KweSiko';

  @override
  String get food_scan_again => 'Skena kwakhona';

  @override
  String get food_review_items => 'Hlaziya ukutya okufunyenweyo';

  @override
  String get food_review_hint =>
      'Lungisa ubungakanani okanye ususe nayiphi na into engaziwayo';

  @override
  String get food_log_selected => 'Loga Ukutya okukhethiweyo';

  @override
  String get food_favourites_title => 'Ukutya okuthandayo';

  @override
  String get food_recent_title => 'Ukutya okutsha nje';

  @override
  String get food_no_favourites =>
      'Akukho kutya kuthandwayo okwangoku. Cofa intliziyo kuko nakuphi na ukutya ukuze ugcine apha.';

  @override
  String get food_no_recents => 'Akukho kutya kufakwe mva nje kufunyenweyo.';

  @override
  String get food_nutrition_details_title => 'Daily Nutrition Iinkcukacha';

  @override
  String get food_macro_protein_label => 'Ukuqhekeka kweeprotheyini';

  @override
  String get food_macro_carbs_label => 'Ukuqhekeka kweeCarbs';

  @override
  String get food_macro_fat_label => 'Ukuqhekeka kwamafutha';

  @override
  String get food_macro_fiber_label => 'Ukuqhekeka kweFayibha';

  @override
  String get food_daily_target_comparison => 'Uthelekiso ekujoliswe kulo';

  @override
  String food_target_label(Object target) {
    return 'Ekujoliswe kuko: $target';
  }

  @override
  String get food_edit_entry => 'Hlela ukungena kwiDayari';

  @override
  String get food_delete_entry => 'Cima Ngenisa';

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
    return '$current ye $target ml';
  }

  @override
  String get water_intake_history => 'IiLogi zaManzi zanamhlanje';

  @override
  String get water_no_logs_today =>
      'Akukho manzi afakiweyo okwangoku. Hydrate kwaye ucofe iqhosha lokongeza ngokukhawuleza!';

  @override
  String get water_adjust_goal => 'Lungisa Usukelo Lwemihla Ngemihla';

  @override
  String get health_connect_banner =>
      'Iqhagamshelwe kuQhagamshelwano lwezeMpilo';

  @override
  String get health_vitals_summary => 'Izinto ezibalulekileyo zeMpilo yeMihla';

  @override
  String get health_latest_heart_rate => 'Izinga leNtliziyo lamva nje';

  @override
  String get health_latest_bp => 'Uxinzelelo lwegazi';

  @override
  String get health_latest_spo2 => 'I-Oxygen yegazi';

  @override
  String get health_latest_glucose => 'IGlucose yegazi';

  @override
  String get health_latest_weight => 'Ubunzima';

  @override
  String get health_latest_sleep => 'Ukulala Ixesha';

  @override
  String get health_add_manual => 'Yongeza uMlinganiselo weManuwali';

  @override
  String get health_history_trends => 'Iindlela zeMbali';

  @override
  String get health_sync_success =>
      'Idatha yezempilo ilungelelaniswe ngempumelelo!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours iiyure $mins imiz';
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
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title =>
      'Izixhobo eziQhagamshelweyo kunye nezinto eziNxitywayo';

  @override
  String get health_devices_desc =>
      'Lawula iiwotshi ezidityanisiweyo, iitracker zokuqina komzimba, kunye nezinzwa zempilo.';

  @override
  String get health_workout_editor_title => 'Hlela uMthambo';

  @override
  String get health_workout_name_label => 'Igama lokuzilolonga';

  @override
  String get health_workout_duration_label => 'Ubude bexesha (imizuzu)';

  @override
  String get health_workout_calories_label =>
      'IiCalories eziqikelelweyo (kcal)';

  @override
  String get health_workout_date_label => 'Umhla kunye nexesha';

  @override
  String get plan_daily_wellness_roadmap =>
      'Imephu yendlela yakho eyenzelwe wena';

  @override
  String get plan_morning_routine => 'Morning Route';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Ngorhatya Umoya-Phantsi';

  @override
  String get plan_coach_badge => 'Umqeqeshi weBloomi AI';

  @override
  String get plan_weekly_overview => 'Iintsuku ezisi-7 zokuJonga impilo entle';

  @override
  String get plan_targets_title => 'Impilo ekujoliswe kuyo kunye neenjongo';

  @override
  String get plan_calorie_budget_label => 'Ibhajethi yeCalorie yosuku';

  @override
  String get plan_water_budget_label => 'Ujoliso lwaManzi ngeMihla';

  @override
  String get plan_step_budget_label => 'Inyathelo leMihla leNjongo';

  @override
  String get plan_macro_split_label => 'Umlinganiselo weMacronutrient';

  @override
  String get profile_personal_details => 'Iinkcukacha zobuqu';

  @override
  String get profile_body_stats => 'Imilinganiselo Yomzimba';

  @override
  String get profile_app_preferences =>
      'Ezikhethwayo kunye nezicwangciso ze-App';

  @override
  String get profile_edit_name_hint => 'Igama lakho';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ubude ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ubunzima ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Ubudala';

  @override
  String get profile_gender_male => 'Indoda';

  @override
  String get profile_gender_female => 'Ibhinqa';

  @override
  String get profile_gender_other => 'Okunye / Khetha ukungatsho';

  @override
  String get profile_activity_sedentary =>
      'Ukuhlala (Kancinci ukuya kungazilolongi)';

  @override
  String get profile_activity_light =>
      'Isebenza kancinci (1-3 iintsuku / iveki)';

  @override
  String get profile_activity_moderate =>
      'Isebenza ngokuphakathi (iintsuku ezi-3-5 / iveki)';

  @override
  String get profile_activity_very =>
      'Isebenza kakhulu (iintsuku ezi-6-7 / iveki)';

  @override
  String get settings_wear_os_header => 'Nxiba i-OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Faka itayile yeBloomi kunye nobunzima kwiwotshi yakho ye-Wear OS ukujonga iikhalori, amanzi kunye namanyathelo.';

  @override
  String get settings_widgets_header => 'Interactive Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Faka iiwijethi zexesha lokwenyani kwisixhobo sakho sasekhaya ukuze uhlaziywe ngoko nangoko.';

  @override
  String get settings_about_header => 'Malunga neBloomi';

  @override
  String get settings_about_version => 'Inguqulelo 1.0.0';

  @override
  String get settings_about_build => 'Yakha i-100';

  @override
  String get settings_about_credits =>
      'Yenziwe ngononophelo ukuze iphile ngengqondo, isempilweni.';

  @override
  String get settings_terms_header => 'Imigaqo neMiqathango';

  @override
  String get settings_privacy_header => 'Umgaqo-nkqubo wabucala';

  @override
  String get settings_delete_header => 'Cima iakhawunti kunye neDatha';

  @override
  String get settings_delete_warning =>
      'Esi senzo asinakuphinda singenziwa. Konke ukutya kwakho, ukuzilolonga, izinto ezibalulekileyo, kunye neprofayile ziya kususwa umphelo.';

  @override
  String get settings_delete_confirm_btn => 'Cima ngokusisigxina';

  @override
  String get onboard_welcome_headline => 'Wamkelekile kwiBloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Ubumnene, ukulandelela impilo-ntle eyilwe kubomi bakho bonke.';

  @override
  String get onboard_step_about => 'Malunga Nawe';

  @override
  String get onboard_step_goals => 'Usukelo Lwakho';

  @override
  String get onboard_step_lifestyle => 'Imikhwa Yemihla Ngemihla';

  @override
  String get onboard_step_permissions => 'Iimvume';

  @override
  String get onboard_step_plan => 'Ulungile!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Inyathelo Counter Sensor';

  @override
  String get onboard_notif_perm => 'Izikhumbuzi eziNgcono kunye neZaziso';

  @override
  String get onboard_camera_perm =>
      'Ikhamera (ibhakhowudi kunye nesikena sokutya)';

  @override
  String get onboard_grant_permissions => 'IiMvume zeSibonelelo';

  @override
  String get onboard_continue_dashboard => 'Vula iDashboard';

  @override
  String get notif_channel_hydration_name => 'I-Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Izikhumbuzo zamanzi athambileyo imini yonke';

  @override
  String get notif_channel_nutrition_name => 'Izikhumbuzo zeSidlo & Nezondlo';

  @override
  String get notif_channel_nutrition_desc =>
      'Isidlo sakusasa, isidlo sasemini, kunye nesidlo sangokuhlwa sesikhumbuzi';

  @override
  String get notif_channel_steps_name => 'Inyathelo leMilestones';

  @override
  String get notif_channel_steps_desc =>
      'Imibhiyozo xa kufikelelwa kwithagethi yenyathelo lemihla ngemihla';

  @override
  String get notif_channel_vitals_name =>
      'Ukujongwa kweMpilo kunye nokuBalulekileyo';

  @override
  String get notif_channel_vitals_desc =>
      'Izikhumbuzi zobunzima kunye nexesha lokulala zomoya-phantsi';

  @override
  String get notif_action_log_water => '💧 Ilog +250ml';

  @override
  String get notif_action_snooze => 'Snuza 15m';

  @override
  String get notif_action_log_meal => '🥗 Isidlo sokuLoga';

  @override
  String get language => 'Ulwimi';

  @override
  String get share => 'Yabelana';

  @override
  String common_days(Object count) {
    return '$count usuku oludlule';
  }
}
