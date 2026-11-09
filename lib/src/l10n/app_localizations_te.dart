// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get app_name => 'బ్లూమి';

  @override
  String get nav_home => 'హోమ్';

  @override
  String get nav_today => 'ఈరోజు';

  @override
  String get nav_plan => 'ప్లాన్ చేయండి';

  @override
  String get nav_food => 'ఆహారం';

  @override
  String get nav_food_diary => 'ఆహార డైరీ';

  @override
  String get nav_workout => 'వ్యాయామ లాగ్';

  @override
  String get nav_health => 'ఆరోగ్యం';

  @override
  String get nav_profile => 'ప్రొఫైల్';

  @override
  String get save => 'సేవ్';

  @override
  String get cancel => 'రద్దు';

  @override
  String get delete => 'తొలగించు';

  @override
  String get edit => 'సవరించు';

  @override
  String get done => 'అయింది';

  @override
  String get close => 'మూసివేయి';

  @override
  String get back => 'వెనుకకు';

  @override
  String get next => 'తదుపరి';

  @override
  String get continue_btn => 'కొనసాగించు';

  @override
  String get confirm => 'నిర్ధారించండి';

  @override
  String get search => 'వెతకండి';

  @override
  String get filter => 'ఫిల్టర్ చేయండి';

  @override
  String get all => 'అన్నీ';

  @override
  String get active => 'చురుకుగా';

  @override
  String get today => 'ఈరోజు';

  @override
  String get yesterday => 'నిన్న';

  @override
  String get tomorrow => 'రేపు';

  @override
  String get add => 'జోడించు';

  @override
  String get remove => 'తొలగించు';

  @override
  String get refresh => 'రిఫ్రెష్ చేయండి';

  @override
  String get retry => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get error => 'లోపం';

  @override
  String get success => 'విజయం';

  @override
  String get loading => 'లోడ్ అవుతోంది...';

  @override
  String get no_data => 'డేటా అందుబాటులో లేదు';

  @override
  String get offline => 'ఆఫ్‌లైన్ మోడ్';

  @override
  String get offline_sub =>
      'మళ్లీ కనెక్ట్ అయిన తర్వాత మార్పులు సింక్ చేయబడతాయి';

  @override
  String get undo => 'వెనక్కి';

  @override
  String get portion => 'భాగం';

  @override
  String get quantity => 'పరిమాణం';

  @override
  String get unit => 'యూనిట్';

  @override
  String get clear => 'క్లియర్';

  @override
  String get select => 'ఎంచుకోండి';

  @override
  String get apply => 'వర్తింపజేయి';

  @override
  String get reset => 'రీసెట్';

  @override
  String get ok => 'సరే';

  @override
  String get yes => 'అవును';

  @override
  String get no => 'నం';

  @override
  String get optional => 'ఐచ్ఛికం';

  @override
  String get calories => 'కేలరీలు';

  @override
  String get protein => 'ప్రొటీన్';

  @override
  String get carbs => 'పిండి పదార్థాలు';

  @override
  String get fat => 'లావు';

  @override
  String get fiber => 'ఫైబర్';

  @override
  String get water => 'నీరు';

  @override
  String get steps => 'దశలు';

  @override
  String get kcal => 'కిలో కేలరీలు';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'మి.లీ';

  @override
  String get kilograms => 'కిలో';

  @override
  String get pounds => 'పౌండ్లు';

  @override
  String get centimeters => 'సెం.మీ';

  @override
  String get inches => 'లో';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'గం';

  @override
  String get minutes => 'నిమిషాలు';

  @override
  String get serving => 'అందిస్తోంది';

  @override
  String get servings => 'సర్వింగ్స్';

  @override
  String get serving_size => 'వడ్డించే పరిమాణం';

  @override
  String get per_100g => '100 గ్రా';

  @override
  String get india => 'భారతదేశం';

  @override
  String get asia => 'ఆసియా';

  @override
  String get europe => 'యూరప్';

  @override
  String get middle_east => 'మధ్యప్రాచ్యం';

  @override
  String get africa => 'ఆఫ్రికా';

  @override
  String get americas => 'అమెరికాలు';

  @override
  String get home_title => 'హోమ్';

  @override
  String get home_greeting_morning => 'శుభోదయం';

  @override
  String get home_greeting_afternoon => 'శుభ మధ్యాహ్నం';

  @override
  String get home_greeting_evening => 'శుభ సాయంత్రం';

  @override
  String get home_streak_title => 'బ్లోసమ్ స్ట్రీక్';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రోజుల పరంపర',
      one: '1 రోజు పరంపర',
      zero: '0 రోజుల వరుస',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'కాలిపోయింది';

  @override
  String get home_calories_budget => 'కేలరీల బడ్జెట్';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal కిలో కేలరీలు మిగిలి ఉన్నాయి';
  }

  @override
  String get home_water_title => 'రోజువారీ హైడ్రేషన్';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'అడుగులు నడిచారు';

  @override
  String get home_quick_actions => 'త్వరిత చర్యలు';

  @override
  String get home_log_meal => 'లాగ్ భోజనం';

  @override
  String get home_log_water => 'లాగ్ వాటర్';

  @override
  String get home_log_workout => 'లాగ్ వర్క్అవుట్';

  @override
  String get home_log_weight => 'లాగ్ బరువు';

  @override
  String get home_insights_title => 'నేటి అంతర్దృష్టులు';

  @override
  String get home_quote =>
      'చిన్న ఆరోగ్యకరమైన ఎంపికలు వికసించే పరివర్తనలను సృష్టిస్తాయి.';

  @override
  String get home_ai_coach_tip => 'బ్లూమి AI కోచ్';

  @override
  String get home_surroundings => 'పరిసరాలు & గాలి';

  @override
  String get home_notifications => 'నోటిఫికేషన్లు';

  @override
  String get home_daily_score => 'రోజువారీ వెల్‌నెస్ స్కోర్';

  @override
  String get home_view_all => 'అన్నీ వీక్షించండి';

  @override
  String get food_diary_title => 'ఆహార డైరీ';

  @override
  String get food_breakfast => 'అల్పాహారం';

  @override
  String get food_lunch => 'లంచ్';

  @override
  String get food_dinner => 'డిన్నర్';

  @override
  String get food_snacks => 'స్నాక్స్';

  @override
  String get food_add_food => 'ఆహారాన్ని జోడించండి';

  @override
  String get food_edit_food => 'ఆహారాన్ని సవరించండి';

  @override
  String get food_add_breakfast => 'అల్పాహారం జోడించండి';

  @override
  String get food_add_lunch => 'లంచ్ జోడించండి';

  @override
  String get food_add_dinner => 'డిన్నర్ జోడించండి';

  @override
  String get food_add_snack => 'స్నాక్ జోడించండి';

  @override
  String get food_total_calories => 'మొత్తం కేలరీలు';

  @override
  String get food_empty_meal => 'ఈ భోజనం కోసం ఇంకా ఆహారాలు ఏవీ లాగ్ చేయబడలేదు';

  @override
  String get food_empty_diary => 'ఈ రోజు భోజనం ఏదీ లాగ్ చేయబడలేదు';

  @override
  String get food_log_first_meal =>
      'మీ మొదటి రుచికరమైన భోజనాన్ని లాగిన్ చేయడానికి + నొక్కండి';

  @override
  String get food_quick_add => 'త్వరిత జోడింపు';

  @override
  String get food_search_hint => 'వంటకాలు, పండ్లు, పప్పు, రోటీ...';

  @override
  String get food_custom_recipe => 'కస్టమ్ ఫుడ్ & రెసిపీ';

  @override
  String get food_scan_barcode => 'బార్‌కోడ్‌ని స్కాన్ చేయండి';

  @override
  String get food_camera_scan => 'AI ఫుడ్ స్కానర్';

  @override
  String get food_recent => 'ఇటీవలి ఆహారాలు';

  @override
  String get food_favourites => 'ఇష్టమైనవి';

  @override
  String get food_macro_summary => 'మాక్రోన్యూట్రియెంట్ బ్రేక్‌డౌన్';

  @override
  String get food_delete_meal_confirm =>
      'మీరు ఖచ్చితంగా ఈ అంశాన్ని తీసివేయాలనుకుంటున్నారా?';

  @override
  String get food_item_deleted => 'ఆహార వస్తువు తీసివేయబడింది';

  @override
  String get food_remaining => 'మిగిలి ఉంది';

  @override
  String get food_consumed => 'వినియోగించారు';

  @override
  String food_of_target(Object target) {
    return '$target కిలో కేలరీలు';
  }

  @override
  String get foodSearch_title => 'ఆహారాలను శోధించండి';

  @override
  String get foodSearch_scan_barcode => 'బార్‌కోడ్‌ని స్కాన్ చేయండి';

  @override
  String get foodSearch_take_photo => 'స్నాప్ ఫుడ్ ఫోటో';

  @override
  String get foodSearch_custom_food => 'అనుకూల ఆహారాన్ని సృష్టించండి';

  @override
  String get foodSearch_recent_searches => 'ఇటీవలి శోధనలు';

  @override
  String get foodSearch_popular => 'ప్రసిద్ధ వంటకాలు';

  @override
  String get foodSearch_no_results => 'మీ శోధనకు సరిపోలే ఆహారాలు ఏవీ లేవు';

  @override
  String get barcode_title => 'బార్‌కోడ్ స్కానర్';

  @override
  String get barcode_align => 'కెమెరా ఫ్రేమ్ లోపల బార్‌కోడ్‌ని సమలేఖనం చేయండి';

  @override
  String get barcode_not_found => 'డేటాబేస్లో ఉత్పత్తి కనుగొనబడలేదు';

  @override
  String get barcode_premium_feature =>
      'Bloomi Proతో బార్‌కోడ్ స్కానింగ్ అందుబాటులో ఉంది';

  @override
  String get camera_title => 'AI ఫుడ్ స్కానర్';

  @override
  String get camera_tap_hint => 'మీ వంటకం యొక్క స్పష్టమైన ఫోటో తీయండి';

  @override
  String get camera_analysing => 'ఫుడ్ ప్లేట్‌ని విశ్లేషిస్తోంది...';

  @override
  String get camera_detected => 'గుర్తించబడిన అంశాలు';

  @override
  String get camera_flash => 'ఫ్లాష్‌ని టోగుల్ చేయండి';

  @override
  String get camera_retake => 'ఫోటోను మళ్లీ తీయండి';

  @override
  String get camera_confirm_food => 'అంశాలను నిర్ధారించండి';

  @override
  String get customFood_title => 'కస్టమ్ ఫుడ్ & రెసిపీ';

  @override
  String get customFood_name_hint => 'డిష్ లేదా పదార్ధం పేరు';

  @override
  String get customFood_calories_hint => 'కేలరీలు (కిలో కేలరీలు)';

  @override
  String get customFood_protein_hint => 'ప్రోటీన్ (గ్రా)';

  @override
  String get customFood_carbs_hint => 'పిండి పదార్థాలు (గ్రా)';

  @override
  String get customFood_fat_hint => 'కొవ్వు (గ్రా)';

  @override
  String get customFood_save => 'రెసిపీని సేవ్ చేయండి';

  @override
  String get water_tracker_title => 'వాటర్ ట్రాకర్';

  @override
  String get water_daily_target => 'రోజువారీ హైడ్రేషన్ లక్ష్యం';

  @override
  String get water_logged_today => 'ఈరోజు లాగిన్ చేయబడింది';

  @override
  String get water_add_glass => '+250 ml గ్లాస్';

  @override
  String get water_add_bottle => '+500 ml బాటిల్';

  @override
  String get water_custom_amount => 'కస్టమ్ మొత్తం';

  @override
  String get water_reminder_tip =>
      'స్థిరమైన శక్తి కోసం రోజంతా క్రమం తప్పకుండా నీరు త్రాగాలి.';

  @override
  String water_logged_toast(Object amount) {
    return 'లాగ్ చేయబడింది $amount ml నీరు 💧';
  }

  @override
  String get workout_title => 'వ్యాయామ లాగ్';

  @override
  String get workout_add_exercise => 'వ్యాయామం జోడించండి';

  @override
  String get workout_cardio => 'కార్డియో';

  @override
  String get workout_strength => 'బలం';

  @override
  String get workout_yoga => 'యోగా & ఫ్లెక్సిబిలిటీ';

  @override
  String get workout_duration => 'వ్యవధి';

  @override
  String get workout_intensity => 'తీవ్రత';

  @override
  String get workout_calories_burned => 'కేలరీలు కాలిపోయాయి';

  @override
  String get workout_empty => 'ఈరోజు వర్కవుట్‌లు ఏవీ లాగిన్ కాలేదు';

  @override
  String get workout_save_success => 'వ్యాయామం విజయవంతంగా సేవ్ చేయబడింది!';

  @override
  String get workout_type => 'వ్యాయామం రకం';

  @override
  String get workout_notes => 'గమనికలు & ప్రతిబింబాలు';

  @override
  String get health_overview_title => 'ఆరోగ్యం & ప్రాణాధారాలు';

  @override
  String get health_heart_rate => 'హృదయ స్పందన రేటు';

  @override
  String get health_blood_oxygen => 'రక్త ఆక్సిజన్ (SpO2)';

  @override
  String get health_blood_pressure => 'రక్త పీడనం';

  @override
  String get health_blood_glucose => 'రక్తంలో గ్లూకోజ్';

  @override
  String get health_body_temperature => 'శరీర ఉష్ణోగ్రత';

  @override
  String get health_sleep_tracking => 'స్లీప్ ట్రాకింగ్';

  @override
  String get health_weight_tracking => 'బరువు & శరీర కూర్పు';

  @override
  String get health_waist_hip => 'నడుము నుండి హిప్ నిష్పత్తి';

  @override
  String get health_devices_hub => 'పరికరాలు & స్మార్ట్‌వాచ్ హబ్';

  @override
  String get health_sync_now => 'ఆరోగ్య డేటాను సమకాలీకరించండి';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'చివరిగా సమకాలీకరించబడినది: $time';
  }

  @override
  String get health_manual_entry => 'మాన్యువల్ హెల్త్ ఎంట్రీ';

  @override
  String get health_metric_detail => 'మెట్రిక్ వివరాలు';

  @override
  String get health_connected_sensors => 'కనెక్ట్ చేయబడిన ఆరోగ్య సెన్సార్లు';

  @override
  String get plan_title => 'రోజువారీ ప్రణాళిక';

  @override
  String get plan_weekly_title => 'వీక్లీ వెల్నెస్ ప్లాన్';

  @override
  String get plan_calorie_target => 'కేలరీల లక్ష్యం';

  @override
  String get plan_water_target => 'హైడ్రేషన్ టార్గెట్';

  @override
  String get plan_step_target => 'దశ లక్ష్యం';

  @override
  String get plan_sleep_target => 'నిద్ర లక్ష్యం';

  @override
  String get plan_meal_suggestions => 'భోజన సూచనలు';

  @override
  String get plan_healthy_habits => 'ఆరోగ్యకరమైన అలవాట్లు & చిట్కాలు';

  @override
  String get plan_coach_advice => 'Bloomi AI కోచ్ సిఫార్సులు';

  @override
  String get plan_generated_title => 'వ్యక్తిగతీకరించిన రోజువారీ షెడ్యూల్';

  @override
  String get profile_title => 'ప్రొఫైల్';

  @override
  String get profile_edit => 'ప్రొఫైల్‌ని సవరించండి';

  @override
  String get profile_name => 'పేరు';

  @override
  String get profile_age => 'వయస్సు';

  @override
  String get profile_gender => 'లింగం';

  @override
  String get profile_height => 'ఎత్తు';

  @override
  String get profile_weight => 'బరువు';

  @override
  String get profile_goal => 'ప్రాథమిక లక్ష్యం';

  @override
  String get profile_activity_level => 'కార్యాచరణ స్థాయి';

  @override
  String get profile_stats => 'నా వెల్నెస్ గణాంకాలు';

  @override
  String get profile_saved => 'ప్రొఫైల్ విజయవంతంగా నవీకరించబడింది';

  @override
  String get profile_bmi => 'బాడీ మాస్ ఇండెక్స్ (BMI)';

  @override
  String get profile_membership => 'సభ్యత్వం';

  @override
  String get settings => 'సెట్టింగులు';

  @override
  String get preferences_habits => 'ప్రాధాన్యతలు & అలవాట్లు';

  @override
  String get appearance_theme => 'స్వరూపం & థీమ్';

  @override
  String get appearance_theme_sub =>
      'డార్క్, లైట్, సిస్టమ్ మోడ్ & యాప్ బ్యాక్‌గ్రౌండ్ ఆప్షన్‌లు';

  @override
  String get permissions => 'అనుమతులు & సిస్టమ్ యాక్సెస్';

  @override
  String get permissions_sub =>
      'హెల్త్ కనెక్ట్, స్టెప్ సెన్సార్లు, GPS, నోటిఫికేషన్‌లు & కెమెరా';

  @override
  String get reminders_notifications => 'రిమైండర్‌లు & నోటిఫికేషన్‌లు';

  @override
  String get reminders_sub =>
      'భోజన సమయాలు, నీరు, బరువు చెక్-ఇన్ & నిద్రవేళ రిమైండర్‌లు';

  @override
  String get units_of_measurement => 'కొలత యూనిట్లు';

  @override
  String get units_sub =>
      'మెట్రిక్ (kg, cm, ml, km) లేదా ఇంపీరియల్ (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'యాప్ భాష';

  @override
  String get language_sub =>
      'ఇంగ్లీష్, హిందీ (హిందీ), హింగ్లీష్ & 195+ ప్రపంచ భాషలు';

  @override
  String get home_screen_widgets => 'హోమ్ స్క్రీన్ విజెట్లు';

  @override
  String get widgets_sub =>
      'ప్రత్యక్ష ఆండ్రాయిడ్ విడ్జెట్‌లు: హబ్, స్టెప్స్, వాటర్, న్యూట్రిషన్ & మస్కట్';

  @override
  String get wear_os_watch_app => 'Wear OS వాచ్ యాప్';

  @override
  String get wear_os_sub =>
      'స్మార్ట్ వాచ్ కంపానియన్, టైల్స్, కాంప్లికేషన్స్ & లైవ్ వైటల్స్';

  @override
  String get goals_wellness => 'లక్ష్యాలు & వెల్నెస్ అంతర్దృష్టులు';

  @override
  String get nutrition_targets => 'పోషకాహార లక్ష్యాలు & మాక్రో స్ప్లిట్';

  @override
  String get nutrition_targets_sub =>
      'కేలరీల లక్ష్యం, ప్రోటీన్, పిండి పదార్థాలు, కొవ్వు & నీటి లక్ష్యం';

  @override
  String get weekly_recap => 'వీక్లీ వెల్‌నెస్ రీక్యాప్';

  @override
  String get weekly_recap_sub =>
      '7-రోజుల కేలరీల సగటు, స్థూల నిష్పత్తి & ఉత్తమ రోజు';

  @override
  String get streaks_milestones => 'గీతలు & మైలురాళ్ళు';

  @override
  String get streaks_sub =>
      'యాక్టివ్ బ్లూసమ్ స్ట్రీక్స్, బ్యాడ్జ్‌లు & విజయాలు';

  @override
  String get connected_devices => 'కనెక్ట్ చేయబడిన పరికరాలు & ఎకోసిస్టమ్';

  @override
  String get devices_hub => 'పరికరాలు & స్మార్ట్‌వాచ్ హబ్';

  @override
  String get devices_hub_sub =>
      'హెల్త్ కనెక్ట్, గెలాక్సీ వాచ్, పిక్సెల్ వాచ్, గార్మిన్';

  @override
  String get surroundings_weather => 'పరిసరాలు & వాతావరణం';

  @override
  String get surroundings_sub =>
      'గాలి నాణ్యత (AQI), UV సూచిక & వాతావరణ ఆర్ద్రీకరణ చిట్కాలు';

  @override
  String get bloomi_pro => 'బ్లూమి ప్రో సబ్‌స్క్రిప్షన్';

  @override
  String get bloomi_pro_sub =>
      'AI ప్లాన్ కోచ్, 5 హోమ్ స్క్రీన్ విడ్జెట్‌లు & కీలక ట్రాకింగ్';

  @override
  String get about_security => 'గురించి & భద్రత';

  @override
  String get about_bloomi => 'బ్లూమి గురించి';

  @override
  String get about_bloomi_sub =>
      'స్పెసిఫికేషన్‌లు, వెర్షన్, అట్రిబ్యూషన్‌లను రూపొందించండి';

  @override
  String get privacy_policy => 'గోప్యతా విధానం';

  @override
  String get privacy_policy_sub =>
      'ఆఫ్‌లైన్-మొదట, ఆన్-డివైస్ డేటా ఆర్కిటెక్చర్';

  @override
  String get terms_conditions => 'నిబంధనలు & షరతులు';

  @override
  String get terms_conditions_sub =>
      'సేవా నిబంధనలు మరియు సంరక్షణ మార్గదర్శకాలు';

  @override
  String get delete_account => 'ఖాతా & డేటాను తొలగించండి';

  @override
  String get delete_account_sub =>
      'స్థానిక SQLite డేటా మరియు క్లౌడ్ బ్యాకప్‌లను తిరిగి పొందలేని విధంగా తొలగించండి';

  @override
  String get healthy_habits =>
      'సున్నితమైన, శాశ్వతమైన వెల్నెస్ అలవాట్లను రూపొందించండి';

  @override
  String get all_logs => 'నా ట్రాక్ చేయబడిన డేటా & లాగ్‌లు';

  @override
  String get search_language => 'భాష లేదా స్థానిక లిపి ద్వారా శోధించండి...';

  @override
  String get languages_available => 'అందుబాటులో ఉన్న భాషలు';

  @override
  String get no_matching_languages => 'సరిపోలే భాషలు ఏవీ కనుగొనబడలేదు';

  @override
  String get try_searching =>
      'స్థానిక స్క్రిప్ట్ లేదా ఇంగ్లీష్ స్పెల్లింగ్ ద్వారా శోధించడానికి ప్రయత్నించండి';

  @override
  String get partially_translated => 'పాక్షికంగా అనువదించబడింది';

  @override
  String get complete_translation => 'పూర్తి';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'భాష $name ( $nativeName )కి సెట్ చేయబడింది';
  }

  @override
  String get surroundings_title => 'పరిసరాలు & పర్యావరణం';

  @override
  String get surroundings_aqi => 'గాలి నాణ్యత సూచిక';

  @override
  String get surroundings_uv => 'UV సూచిక';

  @override
  String get surroundings_temp => 'ఉష్ణోగ్రత';

  @override
  String get surroundings_humidity => 'తేమ';

  @override
  String get surroundings_hydration_advice =>
      'ప్రస్తుత వాతావరణ పరిస్థితుల్లో బాగా హైడ్రేటెడ్ గా ఉండండి.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'ఆహారాన్ని శోధించండి';

  @override
  String get food_quick_barcode => 'బార్‌కోడ్‌ని స్కాన్ చేయండి 👑';

  @override
  String get food_quick_water => 'నీరు జోడించండి';

  @override
  String get food_quick_custom => 'కస్టమ్ ఫుడ్';

  @override
  String get surroundings_good => 'బాగుంది';

  @override
  String get surroundings_moderate => 'మితమైన';

  @override
  String get surroundings_unhealthy => 'అనారోగ్యకరమైనది';

  @override
  String get notifications_title => 'నోటిఫికేషన్‌లు & హెచ్చరికలు';

  @override
  String get notifications_empty => 'కొత్త నోటిఫికేషన్‌లు లేవు';

  @override
  String get notifications_mark_read => 'అన్నీ చదివినట్లుగా గుర్తించండి';

  @override
  String get notifications_clear => 'అన్నీ క్లియర్ చేయండి';

  @override
  String get reminders => 'రిమైండర్ సెట్టింగ్‌లు';

  @override
  String get notifications => 'పుష్ నోటిఫికేషన్లు';

  @override
  String get reminders_breakfast_title => 'అల్పాహారం రిమైండర్ 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'శుభోదయం! $time వద్ద పోషకమైన అల్పాహారం కోసం సమయం.';
  }

  @override
  String get reminders_lunch_title => 'లంచ్ రిమైండర్ 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'పాజ్ చేసి, $time వద్ద సమతుల్యమైన, బుద్ధిపూర్వకమైన భోజనాన్ని ఆస్వాదించండి.';
  }

  @override
  String get reminders_dinner_title => 'డిన్నర్ రిమైండర్ 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time వద్ద తేలికపాటి, సంతృప్తికరమైన విందు కోసం సమయం.';
  }

  @override
  String get reminders_water_title => 'హైడ్రేషన్ నడ్జ్ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'తాజా గ్లాసు నీరు త్రాగడానికి సమయం! ($time)';
  }

  @override
  String get reminders_weight_title => 'వీక్లీ వెయిట్-ఇన్ ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ($time)లో మీ వారపు బాడీ మెట్రిక్‌లను ట్రాక్ చేయండి.';
  }

  @override
  String get reminders_sleep_title => 'నిద్రవేళ విండ్ డౌన్ 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'విశ్రాంతి తీసుకోండి మరియు ప్రశాంతమైన నిద్ర కోసం సిద్ధం చేయండి ($time ).';
  }

  @override
  String get onboard_welcome => 'బ్లూమీకి స్వాగతం';

  @override
  String get onboard_sub =>
      'మీ స్నేహపూర్వక, ఆఫ్‌లైన్-మొదటి ఆరోగ్యం మరియు పోషకాహార సహచరుడు.';

  @override
  String get onboard_get_started => 'ప్రారంభించండి';

  @override
  String get onboard_sign_in => 'సైన్ ఇన్ చేయండి';

  @override
  String get onboard_skip => 'దాటవేయి';

  @override
  String get onboard_choose_goal => 'మీ ప్రాథమిక ఆరోగ్య లక్ష్యం ఏమిటి?';

  @override
  String get onboard_goal_weight_loss => 'సున్నితమైన బరువు నష్టం';

  @override
  String get onboard_goal_muscle => 'కండరాల పెరుగుదల & బలం';

  @override
  String get onboard_goal_energy => 'రోజువారీ శక్తి & జీవశక్తి';

  @override
  String get onboard_goal_habits => 'ఆరోగ్యకరమైన మైండ్‌ఫుల్ తినడం';

  @override
  String get onboard_about_you => 'మీ గురించి మాకు చెప్పండి';

  @override
  String get onboard_lifestyle => 'మీ రోజువారీ దినచర్య';

  @override
  String get onboard_permissions_title => 'అనుమతులు & సిస్టమ్ యాక్సెస్';

  @override
  String get onboard_permissions_sub =>
      'సమకాలీకరణ దశలు, వ్యాయామాలు మరియు రిమైండర్‌లకు యాక్సెస్‌ను మంజూరు చేయండి.';

  @override
  String get onboard_plan_ready_title => 'మీ అనుకూల ప్రణాళిక సిద్ధంగా ఉంది!';

  @override
  String get onboard_plan_ready_sub =>
      'మేము మీ కోసం సున్నితమైన, వ్యక్తిగతీకరించిన పోషకాహారం మరియు వెల్నెస్ రోడ్‌మ్యాప్‌ను రూపొందించాము.';

  @override
  String get onboard_enter_bloomi => 'బ్లూమీని నమోదు చేయండి';

  @override
  String get insights_weekly_report => 'వీక్లీ వెల్‌నెస్ రీక్యాప్';

  @override
  String insights_best_day(Object day) {
    return 'ఉత్తమ స్థిరత్వ దినం: $day';
  }

  @override
  String get insights_streaks_badges => 'గీతలు & మైలురాళ్ళు';

  @override
  String insights_unlocked_on(Object date) {
    return '$dateలో అన్‌లాక్ చేయబడింది';
  }

  @override
  String get insights_keep_going => 'అద్భుతమైన పురోగతిని కొనసాగించండి!';

  @override
  String get widgets_title => 'హోమ్ స్క్రీన్ విడ్జెట్‌లు';

  @override
  String widgets_active_count(Object count) {
    return 'సక్రియ విడ్జెట్‌లు: $count';
  }

  @override
  String get widgets_hub_title => 'బ్లూమీ వెల్‌నెస్ హబ్';

  @override
  String get widgets_steps_title => 'స్టెప్స్ & యాక్టివ్ రింగ్';

  @override
  String get widgets_water_title => 'హైడ్రేషన్ త్వరిత లాగ్';

  @override
  String get widgets_mascot_title => 'బ్లూమి మస్కట్ కంపానియన్';

  @override
  String get wear_os_title => 'OS స్మార్ట్‌వాచ్ ధరించండి';

  @override
  String get wear_os_connected => 'వాచ్‌కి కనెక్ట్ చేయబడింది';

  @override
  String get wear_os_sync => 'వాచ్ డేటాను సమకాలీకరించండి';

  @override
  String get theme_title => 'స్వరూపం & థీమ్';

  @override
  String get theme_mode => 'థీమ్ మోడ్';

  @override
  String get theme_light => 'లైట్';

  @override
  String get theme_dark => 'డార్క్';

  @override
  String get theme_system => 'సిస్టమ్';

  @override
  String get theme_background_palette => 'నేపథ్య పాలెట్';

  @override
  String get units_title => 'కొలత యూనిట్లు';

  @override
  String get units_metric => 'మెట్రిక్ (కిలో, సెం.మీ., మి.లీ)';

  @override
  String get units_imperial => 'ఇంపీరియల్ (పౌండ్లు, ఇన్, fl oz)';

  @override
  String get home_unable_load => 'డాష్‌బోర్డ్‌ను లోడ్ చేయడం సాధ్యపడలేదు';

  @override
  String get home_health_permission_req => 'హెల్త్ కనెక్ట్ అనుమతి అవసరం';

  @override
  String get home_health_permission_desc =>
      'Bloomiకి నిజమైన దశలు, హృదయ స్పందన రేటు మరియు మొబైల్ హోమ్ విడ్జెట్‌లను నిజ సమయంలో సమకాలీకరించడానికి Health Connect అనుమతి అవసరం.';

  @override
  String get home_allow_health => 'హెల్త్ కనెక్ట్‌ని అనుమతించండి';

  @override
  String get home_ready_mindful_day =>
      'బుద్ధిపూర్వకమైన రోజు కోసం సిద్ధంగా ఉన్నారా? ✨';

  @override
  String get home_quick_add => 'త్వరిత జోడింపు';

  @override
  String get home_live_gps => 'ప్రత్యక్ష GPS';

  @override
  String get home_calories_remaining_label => 'కేలరీలు మిగిలి ఉన్నాయి';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'తిన్నది: $consumed / $target కిలో కేలరీలు';
  }

  @override
  String get home_tap_water_tracker => 'వాటర్ ట్రాకర్ 💧 కోసం నొక్కండి';

  @override
  String get home_water_goal_reached => 'రోజువారీ లక్ష్యం చేరుకుంది 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'రోజువారీ లక్ష్యానికి $remaining ml';
  }

  @override
  String get home_details => 'వివరాలు';

  @override
  String get home_upgrade_plan_desc =>
      'వ్యక్తిగతీకరించిన రోజువారీ లక్ష్యాలు & AI ప్లాన్‌ను అన్‌లాక్ చేయడానికి అప్‌గ్రేడ్ చేయండి';

  @override
  String get home_unlock => 'అన్‌లాక్ 👑';

  @override
  String get home_quick_log_hint => 'వెల్‌నెస్ ఎంట్రీని త్వరగా రికార్డ్ చేయండి';

  @override
  String get food_serving_size => 'వడ్డించే పరిమాణం';

  @override
  String get food_serving_grams => 'అందిస్తోంది (గ్రా)';

  @override
  String get food_number_servings => 'సర్వింగ్‌ల సంఖ్య';

  @override
  String get food_calories_per_serving => 'ఒక్కో సేవకు కేలరీలు';

  @override
  String get food_recipe_ingredients => 'కావలసినవి';

  @override
  String get food_recipe_add_ingredient => 'పదార్ధాన్ని జోడించండి';

  @override
  String get food_recipe_directions => 'సూచనలు & గమనికలు';

  @override
  String get food_recipe_total => 'మొత్తం రెసిపీ న్యూట్రిషన్';

  @override
  String get food_recipe_per_serving => 'ప్రతి అందిస్తున్న పోషకాహారం';

  @override
  String get food_recipe_saved_toast =>
      'అనుకూల ఆహారం విజయవంతంగా సేవ్ చేయబడింది!';

  @override
  String get food_barcode_found => 'ఉత్పత్తి కనుగొనబడింది!';

  @override
  String get food_barcode_not_found_desc =>
      'మేము ఈ బార్‌కోడ్‌ని ఓపెన్ డేటాబేస్‌లో కనుగొనలేకపోయాము. మీరు దీన్ని అనుకూల ఆహారంగా జోడించవచ్చు.';

  @override
  String get food_add_custom_btn => 'అనుకూల ఆహారాన్ని జోడించండి';

  @override
  String get food_scan_again => 'మళ్లీ స్కాన్ చేయండి';

  @override
  String get food_review_items => 'కనుగొనబడిన ఆహారాలను సమీక్షించండి';

  @override
  String get food_review_hint =>
      'పరిమాణాలను సర్దుబాటు చేయండి లేదా ఏదైనా గుర్తించబడని వస్తువును తీసివేయండి';

  @override
  String get food_log_selected => 'ఎంచుకున్న ఆహారాలను లాగ్ చేయండి';

  @override
  String get food_favourites_title => 'ఇష్టమైన ఆహారాలు';

  @override
  String get food_recent_title => 'ఇటీవలి ఆహారాలు';

  @override
  String get food_no_favourites =>
      'ఇంకా ఇష్టమైన ఆహారాలు లేవు. ఇక్కడ సేవ్ చేయడానికి ఏదైనా ఆహారాన్ని హృదయపూర్వకంగా నొక్కండి.';

  @override
  String get food_no_recents => 'ఇటీవల లాగిన్ చేసిన ఆహారాలు ఏవీ కనుగొనబడలేదు.';

  @override
  String get food_nutrition_details_title => 'రోజువారీ పోషకాహారం వివరాలు';

  @override
  String get food_macro_protein_label => 'ప్రోటీన్ విచ్ఛిన్నం';

  @override
  String get food_macro_carbs_label => 'కార్బోహైడ్రేట్ల విచ్ఛిన్నం';

  @override
  String get food_macro_fat_label => 'కొవ్వు విచ్ఛిన్నం';

  @override
  String get food_macro_fiber_label => 'ఫైబర్ విచ్ఛిన్నం';

  @override
  String get food_daily_target_comparison => 'లక్ష్య పోలిక';

  @override
  String food_target_label(Object target) {
    return 'లక్ష్యం: $target';
  }

  @override
  String get food_edit_entry => 'డైరీ ఎంట్రీని సవరించండి';

  @override
  String get food_delete_entry => 'ఎంట్రీని తొలగించండి';

  @override
  String food_grams_short(Object grams) {
    return '$grams గ్రా';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal కిలో కేలరీలు';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current of $target ml';
  }

  @override
  String get water_intake_history => 'నేటి నీటి లాగ్‌లు';

  @override
  String get water_no_logs_today =>
      'నేటికీ నీరు నిలువలేదు. హైడ్రేట్ చేయండి మరియు త్వరిత యాడ్ బటన్‌ను నొక్కండి!';

  @override
  String get water_adjust_goal => 'రోజువారీ లక్ష్యాన్ని సర్దుబాటు చేయండి';

  @override
  String get health_connect_banner => 'హెల్త్ కనెక్ట్‌కి కనెక్ట్ చేయబడింది';

  @override
  String get health_vitals_summary => 'డైలీ హెల్త్ వైటల్స్';

  @override
  String get health_latest_heart_rate => 'తాజా హృదయ స్పందన రేటు';

  @override
  String get health_latest_bp => 'రక్త పీడనం';

  @override
  String get health_latest_spo2 => 'రక్త ఆక్సిజన్';

  @override
  String get health_latest_glucose => 'రక్తంలో గ్లూకోజ్';

  @override
  String get health_latest_weight => 'బరువు';

  @override
  String get health_latest_sleep => 'నిద్ర వ్యవధి';

  @override
  String get health_add_manual => 'మాన్యువల్ కొలతను జోడించండి';

  @override
  String get health_history_trends => 'చారిత్రక పోకడలు';

  @override
  String get health_sync_success => 'ఆరోగ్య డేటా విజయవంతంగా సమకాలీకరించబడింది!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours గంటలు $mins నిమిషాలు';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val కిలోలు';
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
  String get health_devices_title => 'కనెక్ట్ చేయబడిన పరికరాలు & ధరించగలిగేవి';

  @override
  String get health_devices_desc =>
      'జత చేసిన స్మార్ట్‌వాచ్‌లు, ఫిట్‌నెస్ ట్రాకర్‌లు మరియు ఆరోగ్య సెన్సార్‌లను నిర్వహించండి.';

  @override
  String get health_workout_editor_title => 'వ్యాయామాన్ని సవరించండి';

  @override
  String get health_workout_name_label => 'వ్యాయామం పేరు';

  @override
  String get health_workout_duration_label => 'వ్యవధి (నిమిషాలు)';

  @override
  String get health_workout_calories_label => 'అంచనా వేయబడిన కేలరీలు (kcal)';

  @override
  String get health_workout_date_label => 'తేదీ మరియు సమయం';

  @override
  String get plan_daily_wellness_roadmap => 'మీ వ్యక్తిగతీకరించిన రోడ్‌మ్యాప్';

  @override
  String get plan_morning_routine => 'మార్నింగ్ రొటీన్';

  @override
  String get plan_afternoon_routine => 'మిడ్ డే వెల్నెస్';

  @override
  String get plan_evening_routine => 'సాయంత్రం విండ్-డౌన్';

  @override
  String get plan_coach_badge => 'బ్లూమి AI కోచ్';

  @override
  String get plan_weekly_overview => '7-రోజుల వెల్నెస్ ఫోకస్';

  @override
  String get plan_targets_title => 'వెల్నెస్ లక్ష్యాలు & లక్ష్యాలు';

  @override
  String get plan_calorie_budget_label => 'రోజువారీ కేలరీల బడ్జెట్';

  @override
  String get plan_water_budget_label => 'రోజువారీ నీటి లక్ష్యం';

  @override
  String get plan_step_budget_label => 'రోజువారీ దశ లక్ష్యం';

  @override
  String get plan_macro_split_label => 'మాక్రోన్యూట్రియెంట్ నిష్పత్తి';

  @override
  String get profile_personal_details => 'వ్యక్తిగత వివరాలు';

  @override
  String get profile_body_stats => 'శరీర కొలతలు';

  @override
  String get profile_app_preferences => 'ప్రాధాన్యతలు & యాప్ సెట్టింగ్‌లు';

  @override
  String get profile_edit_name_hint => 'మీ పేరు';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ఎత్తు ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'బరువు ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'వయస్సు';

  @override
  String get profile_gender_male => 'పురుషుడు';

  @override
  String get profile_gender_female => 'స్త్రీ';

  @override
  String get profile_gender_other => 'ఇతర / చెప్పకూడదని ఇష్టపడతారు';

  @override
  String get profile_activity_sedentary => 'నిశ్చలంగా (ఎక్కువగా వ్యాయామం లేదు)';

  @override
  String get profile_activity_light =>
      'తేలికగా చురుకుగా ఉంటుంది (1-3 రోజులు/వారం)';

  @override
  String get profile_activity_moderate =>
      'మధ్యస్తంగా యాక్టివ్ (3-5 రోజులు/వారం)';

  @override
  String get profile_activity_very => 'చాలా చురుకుగా (6-7 రోజులు/వారం)';

  @override
  String get settings_wear_os_header => 'Wear OS కంపానియన్ యాప్';

  @override
  String get settings_wear_os_desc =>
      'కేలరీలు, నీరు మరియు దశలను చూడటానికి మీ Wear OS వాచ్‌లో Bloomi టైల్ మరియు సంక్లిష్టతను ఇన్‌స్టాల్ చేయండి.';

  @override
  String get settings_widgets_header => 'ఇంటరాక్టివ్ ఆండ్రాయిడ్ విడ్జెట్‌లు';

  @override
  String get settings_widgets_desc =>
      'తక్షణ నవీకరణల కోసం మీ పరికరం హోమ్ స్క్రీన్‌పై నిజ-సమయ విడ్జెట్‌లను పిన్ చేయండి.';

  @override
  String get settings_about_header => 'బ్లూమి గురించి';

  @override
  String get settings_about_version => 'వెర్షన్';

  @override
  String get settings_about_build => '100 నిర్మించండి';

  @override
  String get settings_about_credits =>
      'బుద్ధిపూర్వకమైన, ఆరోగ్యకరమైన జీవనం కోసం శ్రద్ధతో రూపొందించబడింది.';

  @override
  String get settings_terms_header => 'నిబంధనలు మరియు షరతులు';

  @override
  String get settings_privacy_header => 'గోప్యతా విధానం';

  @override
  String get settings_delete_header => 'ఖాతా & డేటాను తొలగించండి';

  @override
  String get settings_delete_warning =>
      'ఈ చర్య రద్దు చేయబడదు. మీ భోజనం, వర్కౌట్‌లు, కీలకాంశాలు మరియు ప్రొఫైల్ శాశ్వతంగా తొలగించబడతాయి.';

  @override
  String get settings_delete_confirm_btn => 'శాశ్వతంగా తొలగించండి';

  @override
  String get onboard_welcome_headline => 'Bloomi ✨కి స్వాగతం';

  @override
  String get onboard_welcome_tagline =>
      'మీ జీవితం చుట్టూ రూపొందించబడిన సున్నితమైన, శ్రద్ధగల వెల్నెస్ ట్రాకింగ్.';

  @override
  String get onboard_step_about => 'మీ గురించి';

  @override
  String get onboard_step_goals => 'మీ లక్ష్యాలు';

  @override
  String get onboard_step_lifestyle => 'రోజువారీ అలవాట్లు';

  @override
  String get onboard_step_permissions => 'అనుమతులు';

  @override
  String get onboard_step_plan => 'సిద్ధంగా ఉంది!';

  @override
  String get onboard_health_connect_perm => 'హెల్త్ కనెక్ట్ యాక్సెస్';

  @override
  String get onboard_step_sensors_perm => 'దశ కౌంటర్ సెన్సార్';

  @override
  String get onboard_notif_perm => 'మైండ్‌ఫుల్ రిమైండర్‌లు & నోటిఫికేషన్‌లు';

  @override
  String get onboard_camera_perm => 'కెమెరా (బార్‌కోడ్ & ఫుడ్ స్కానర్)';

  @override
  String get onboard_grant_permissions => 'అనుమతులు మంజూరు చేయండి';

  @override
  String get onboard_continue_dashboard => 'డాష్‌బోర్డ్‌ని తెరవండి';

  @override
  String get notif_channel_hydration_name => 'హైడ్రేషన్ నడ్జెస్';

  @override
  String get notif_channel_hydration_desc =>
      'రోజంతా సున్నితమైన నీటి రిమైండర్‌లు';

  @override
  String get notif_channel_nutrition_name => 'భోజనం & పోషకాహార రిమైండర్‌లు';

  @override
  String get notif_channel_nutrition_desc =>
      'అల్పాహారం, భోజనం మరియు రాత్రి భోజనం రిమైండర్ హెచ్చరికలు';

  @override
  String get notif_channel_steps_name => 'దశల మైలురాళ్ళు';

  @override
  String get notif_channel_steps_desc =>
      'రోజువారీ దశ లక్ష్యాలను చేరుకున్నప్పుడు వేడుకలు';

  @override
  String get notif_channel_vitals_name => 'ఆరోగ్యం & ప్రాణాధార తనిఖీలు';

  @override
  String get notif_channel_vitals_desc =>
      'బరువు మరియు నిద్రవేళ విండ్ డౌన్ రిమైండర్‌లు';

  @override
  String get notif_action_log_water => '💧 లాగ్ +250ml';

  @override
  String get notif_action_snooze => 'స్నూజ్ 15మీ';

  @override
  String get notif_action_log_meal => '🥗 లాగ్ మీల్';

  @override
  String get language => 'భాష';

  @override
  String get share => 'షేర్';

  @override
  String common_days(Object count) {
    return '$count రోజుల క్రితం';
  }
}
