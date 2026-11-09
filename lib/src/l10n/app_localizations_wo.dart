// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Wolof (`wo`).
class AppLocalizationsWo extends AppLocalizations {
  AppLocalizationsWo([String locale = 'wo']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Daara';

  @override
  String get nav_today => 'Tay';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Ñam';

  @override
  String get nav_food_diary => 'Suuralu ñam';

  @override
  String get nav_workout => 'Log de entraînement';

  @override
  String get nav_health => 'Wérgi-yaram';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Sanc';

  @override
  String get cancel => 'Fomm';

  @override
  String get delete => 'efaase';

  @override
  String get edit => 'Soppi';

  @override
  String get done => 'Jeexna';

  @override
  String get close => 'Tëj';

  @override
  String get back => 'Dellu';

  @override
  String get next => 'Next';

  @override
  String get continue_btn => 'Wéyal';

  @override
  String get confirm => 'Firndelal';

  @override
  String get search => 'Seetal';

  @override
  String get filter => 'Seggal';

  @override
  String get all => 'Lépp';

  @override
  String get active => 'Aktif';

  @override
  String get today => 'Tay';

  @override
  String get yesterday => 'Démb';

  @override
  String get tomorrow => 'Suba';

  @override
  String get add => 'Yokk';

  @override
  String get remove => 'Dindi';

  @override
  String get refresh => 'Yeesal';

  @override
  String get retry => 'Jéemaat';

  @override
  String get error => 'Jumtukaay';

  @override
  String get success => 'Tekki';

  @override
  String get loading => 'Yobbu...';

  @override
  String get no_data => 'Amul ay done';

  @override
  String get offline => 'Mode Offline';

  @override
  String get offline_sub => 'Coppite yi dina ñu sync buñu delloosi';

  @override
  String get undo => 'Delloosi';

  @override
  String get portion => 'Wàll';

  @override
  String get quantity => 'Bariwaay';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Leer';

  @override
  String get select => 'Tannal';

  @override
  String get apply => 'Defal';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Waaw';

  @override
  String get no => 'Déedet';

  @override
  String get optional => 'Facultatif';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Glusid';

  @override
  String get fat => 'Grees';

  @override
  String get fiber => 'Fibre';

  @override
  String get water => 'Ndox';

  @override
  String get steps => 'Jéego yi';

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
  String get inches => 'ci';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'waxtu';

  @override
  String get minutes => 'simili';

  @override
  String get serving => 'Serwiis';

  @override
  String get servings => 'Portion';

  @override
  String get serving_size => 'Dayo porsioŋ';

  @override
  String get per_100g => '100g';

  @override
  String get india => 'Inde';

  @override
  String get asia => 'Asie';

  @override
  String get europe => 'Orop';

  @override
  String get middle_east => 'Moyen Orient';

  @override
  String get africa => 'Afrik';

  @override
  String get americas => 'Amerique';

  @override
  String get home_title => 'Daara';

  @override
  String get home_greeting_morning => 'suba bu baax';

  @override
  String get home_greeting_afternoon => 'Bokk ci guddi';

  @override
  String get home_greeting_evening => 'Guddi gu neex';

  @override
  String get home_streak_title => 'Rayu flër';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fan yu toppalante',
      one: '1 bis ci yoon',
      zero: '0 fan yu toppalante',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Lakk';

  @override
  String get home_calories_budget => 'Budget kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal yi des';
  }

  @override
  String get home_water_title => 'Hidrataasioŋ bis bu nekk';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Jéego yiñ dox';

  @override
  String get home_quick_actions => 'Jëf yu gaaw';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Ndoxu Log';

  @override
  String get home_log_workout => 'Log tàggat yaram';

  @override
  String get home_log_weight => 'Poids log';

  @override
  String get home_insights_title => 'Tay gis-gis';

  @override
  String get home_quote =>
      'Tanneef yu ndaw yu sell dañuy indi coppite yu am solo.';

  @override
  String get home_ai_coach_tip => 'Anterneer IA Bloomi';

  @override
  String get home_surroundings => 'Mbir yi ko wër & Air';

  @override
  String get home_notifications => 'yëgle yi';

  @override
  String get home_daily_score => 'Njortu wérgi-yaram bu bis bu nekk';

  @override
  String get home_view_all => 'Xool lépp';

  @override
  String get food_diary_title => 'Suuralu ñam';

  @override
  String get food_breakfast => 'Déjeuner';

  @override
  String get food_lunch => 'Lunch';

  @override
  String get food_dinner => 'Guddi';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Yokk lekk';

  @override
  String get food_edit_food => 'Soppi ñam';

  @override
  String get food_add_breakfast => 'Yokk ndékki';

  @override
  String get food_add_lunch => 'Yokk ci añ';

  @override
  String get food_add_dinner => 'Yokk reer';

  @override
  String get food_add_snack => 'Yokk Snack';

  @override
  String get food_total_calories => 'Kalori yépp';

  @override
  String get food_empty_meal => 'Ba leegi amul benn ñam buñ bind ci reer bii';

  @override
  String get food_empty_diary => 'Amul benn ñam buñ bind ci bis bii';

  @override
  String get food_log_first_meal =>
      'Bësal + ngir dugal sa lekk bu neex bu njëkk';

  @override
  String get food_quick_add => 'Yokk lu gaaw';

  @override
  String get food_search_hint => 'Seetal ay togg, ay fruit, dal, roti...';

  @override
  String get food_custom_recipe => 'Lekk ak rëset buñ personaalisée';

  @override
  String get food_scan_barcode => 'Scanne kodu bar';

  @override
  String get food_camera_scan => 'Scanner AI';

  @override
  String get food_recent => 'Ñam yu bees';

  @override
  String get food_favourites => 'Taamu';

  @override
  String get food_macro_summary => 'Xeetu ferñeent yu mag yi';

  @override
  String get food_delete_meal_confirm =>
      'Ndax wóor nga ni bëgg nga dindi mbir mii?';

  @override
  String get food_item_deleted => 'dindi nañu lekk';

  @override
  String get food_remaining => 'des';

  @override
  String get food_consumed => 'lekk';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Seetal ñam yi';

  @override
  String get foodSearch_scan_barcode => 'Scanne kodu bar';

  @override
  String get foodSearch_take_photo => 'Nataalu lekk';

  @override
  String get foodSearch_custom_food => 'Defar ñam wu méngoo ak sa bëgg-bëgg';

  @override
  String get foodSearch_recent_searches => 'Seetug yu mujj';

  @override
  String get foodSearch_popular => 'Togg yu siiw';

  @override
  String get foodSearch_no_results => 'Amul ñam wu méngoo ak sa seet';

  @override
  String get barcode_title => 'Scanner code bar';

  @override
  String get barcode_align => 'Jubalal kodu bar bi ci biir kaadaru kameraa bi';

  @override
  String get barcode_not_found => 'Gisu ñu produit bi ci base de done';

  @override
  String get barcode_premium_feature => 'Scanner code bar amna ci Bloomi Pro';

  @override
  String get camera_title => 'Scanner AI';

  @override
  String get camera_tap_hint => 'Defal sa togg nataal bu leer';

  @override
  String get camera_analysing => 'Jàngat palaatu lekk...';

  @override
  String get camera_detected => 'Mbir yiñ gis';

  @override
  String get camera_flash => 'Bayi Flash';

  @override
  String get camera_retake => 'Delloosi nataal bi';

  @override
  String get camera_confirm_food => 'Firndelal mbir yi';

  @override
  String get customFood_title => 'Lekk ak rëset buñ personaalisée';

  @override
  String get customFood_name_hint => 'Tur togg wala saf-safal';

  @override
  String get customFood_calories_hint => 'Kalori (kal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Glusid (g)';

  @override
  String get customFood_fat_hint => 'Grees (g)';

  @override
  String get customFood_save => 'Sanc rëset bi';

  @override
  String get water_tracker_title => 'Toppu ndox';

  @override
  String get water_daily_target => 'Mébet hydratation bis bu nekk';

  @override
  String get water_logged_today => 'Tay lañu dugg';

  @override
  String get water_add_glass => '+250 ml Weer';

  @override
  String get water_add_bottle => '+500 ml buteelu';

  @override
  String get water_custom_amount => 'Dañuy xayma';

  @override
  String get water_reminder_tip =>
      'Deel faral di naan ndox bis bi yépp ngir am doole.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml ndox 💧';
  }

  @override
  String get workout_title => 'Log de entraînement';

  @override
  String get workout_add_exercise => 'Yokk tàggat yaram';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Doole';

  @override
  String get workout_yoga => 'Yoga ak neexaay';

  @override
  String get workout_duration => 'Duraasioŋ';

  @override
  String get workout_intensity => 'Dëgër';

  @override
  String get workout_calories_burned => 'Kalori yiñ lakk';

  @override
  String get workout_empty => 'Amul benn tàggat yaram buñu bind tay';

  @override
  String get workout_save_success => 'Workout denc nañu ko bu baax!';

  @override
  String get workout_type => 'Xeetu tàggat yaram';

  @override
  String get workout_notes => 'Tegtal ak xalaat';

  @override
  String get health_overview_title => 'Wérgi-yaram ak dundu';

  @override
  String get health_heart_rate => 'Fréquence cardiaque';

  @override
  String get health_blood_oxygen => 'Oxygen deret (SpO2)';

  @override
  String get health_blood_pressure => 'Tension';

  @override
  String get health_blood_glucose => 'Glucose ci deret ji';

  @override
  String get health_body_temperature => 'Tàngooru yaram';

  @override
  String get health_sleep_tracking => 'Topp nelaw';

  @override
  String get health_weight_tracking => 'Diisaay ak Yaram';

  @override
  String get health_waist_hip => 'Rasio ndigg ak ankle';

  @override
  String get health_devices_hub => 'Aparey yi ak Hub Montre Smart';

  @override
  String get health_sync_now => 'Senkronise ay done yu wérgi-yaram';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Mujjee senkronise: $time';
  }

  @override
  String get health_manual_entry => 'Duggal Wérgi-yaram ci loxo';

  @override
  String get health_metric_detail => 'Ay leeral ci metrik';

  @override
  String get health_connected_sensors => 'Sensor yu Wérgi-yaram yuñ boole';

  @override
  String get plan_title => 'Plan bis bu nekk';

  @override
  String get plan_weekly_title => 'Planu wérgi-yaram ayu-bis bu nekk';

  @override
  String get plan_calorie_target => 'Kalori yiñ bëgga';

  @override
  String get plan_water_target => 'Hidratasioŋ';

  @override
  String get plan_step_target => 'Jéego biñ bëgga';

  @override
  String get plan_sleep_target => 'Target nelaw';

  @override
  String get plan_meal_suggestions => 'Digle ci lekk';

  @override
  String get plan_healthy_habits => 'Xeetu jëf yu wér ak xelal';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach digle';

  @override
  String get plan_generated_title => 'Jamonoy bis bu nekk';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Soppi sa profil';

  @override
  String get profile_name => 'Tur';

  @override
  String get profile_age => 'Jamono';

  @override
  String get profile_gender => 'Goor wala jigeen';

  @override
  String get profile_height => 'Hauteur';

  @override
  String get profile_weight => 'Diisaay';

  @override
  String get profile_goal => 'Mébet bu njëkk';

  @override
  String get profile_activity_level => 'Niveau de activité';

  @override
  String get profile_stats => 'Samay lim ci wàllu wérgi-yaram';

  @override
  String get profile_saved => 'yeesal nañu profil bi';

  @override
  String get profile_bmi => 'Index de masse corporelle (IMC)';

  @override
  String get profile_membership => 'Membre';

  @override
  String get settings => 'Jekkal';

  @override
  String get preferences_habits => 'LI NGA TËM & JËF';

  @override
  String get appearance_theme => 'Melokaan & Tema';

  @override
  String get appearance_theme_sub =>
      'Lëndëm, Leer, Modu Sistem & Tànneefi ginaaw App';

  @override
  String get permissions => 'Ndigal & Dugg ci Sistem';

  @override
  String get permissions_sub =>
      'Koneksioŋ wérgi-yaram, kaptër jéego, GPS, yëgle ak kamera';

  @override
  String get reminders_notifications => 'Fattali ak yëgle';

  @override
  String get reminders_sub =>
      'Waxtu lekk, ndox, saytu diisaay ak fàttaliku waxtu nelaw';

  @override
  String get units_of_measurement => 'Unité de mesure';

  @override
  String get units_sub =>
      'Metrik (kg, cm, ml, km) wala Impérial (livre, pied/in, fl oz)';

  @override
  String get app_language => 'Làkku app';

  @override
  String get language_sub => 'Àngle, हिन्दी (Hindi), Àngle & 195+ làkki àdduna';

  @override
  String get home_screen_widgets => 'Widget yi ci ekraŋu dalal';

  @override
  String get widgets_sub =>
      'Widget Android yiy dundu: Hub, Jéego, Ndox, Dundin & Maskot';

  @override
  String get wear_os_watch_app => 'Solal aplikaasioŋu seetaan OS';

  @override
  String get wear_os_sub =>
      'Smartwatch àndadoo, carreaux, jafe-jafe ak dundu gu am solo';

  @override
  String get goals_wellness => 'GOALS & LEERAL';

  @override
  String get nutrition_targets =>
      'Mébet yiñ tëral ci wàllu dundu ak xaaj bu mag';

  @override
  String get nutrition_targets_sub =>
      'Kalori yiñ bëgga am, protein yi, glusid yi, grees yi ak ndox mi';

  @override
  String get weekly_recap => 'Recap ayu-bis bu nekk ci wérgi-yaram';

  @override
  String get weekly_recap_sub =>
      'kalori yu 7 fan, ratio macro & bis bi gëna baax';

  @override
  String get streaks_milestones => 'Streaks & Jaar-jaar';

  @override
  String get streaks_sub => 'Rayu flër yu am doole, insigne ak def';

  @override
  String get connected_devices => 'APAREEL YU JOKKAL & EKOSISTEM';

  @override
  String get devices_hub => 'Aparey yi ak Hub Montre Smart';

  @override
  String get devices_hub_sub =>
      'Koneksioŋ ci wàllu wérgi-yaram, Montre Galaxy, Montre Pixel, Garmin';

  @override
  String get surroundings_weather => 'Mbir yi ko wër ak klimaa bi';

  @override
  String get surroundings_sub =>
      'Kalite ngelaw li (AQI), indice UV ak tegtali hidrataasioŋ ci klimaa bi';

  @override
  String get bloomi_pro => 'Abonemaa ci Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Anterneer Planu IA, 5 widget ekraŋu dalal ak toppu mbir yu am solo';

  @override
  String get about_security => 'CI & KAARAANGE';

  @override
  String get about_bloomi => 'Lu jëm ci Bloomi';

  @override
  String get about_bloomi_sub => 'Defar ay leeral, weer, màndarga';

  @override
  String get privacy_policy => 'Politigu sutura';

  @override
  String get privacy_policy_sub =>
      'Architecture done yi njëkka nekk ci biir aparey bi';

  @override
  String get terms_conditions => 'Anam yi ak sart yi';

  @override
  String get terms_conditions_sub => 'Anamu liggéey bi ak tegtali wérgi-yaram';

  @override
  String get delete_account => 'efaase kontu bi ak ay done';

  @override
  String get delete_account_sub => 'efaase done SQLite ak sauvegarde cloud';

  @override
  String get healthy_habits => 'Tabax jikko yu baax te yàgg';

  @override
  String get all_logs => 'Samay done ak samay këyit';

  @override
  String get search_language => 'Seetal ci làkk wala ci mbindu cosaan...';

  @override
  String get languages_available => 'Làkk yi jàppandi';

  @override
  String get no_matching_languages => 'Amul benn làkk bu méngoo';

  @override
  String get try_searching =>
      'Jéemal seetee ci mbindu làkk wi wala ci ortograafi Àngle';

  @override
  String get partially_translated => 'Tekki nañu ko';

  @override
  String get complete_translation => 'Tamal';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Làkk wiñ tëral ci $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'Environmaa bi ak environmaa bi';

  @override
  String get surroundings_aqi => 'Index de kalite air';

  @override
  String get surroundings_uv => 'Index UV';

  @override
  String get surroundings_temp => 'Tàngoor';

  @override
  String get surroundings_humidity => 'Humidité';

  @override
  String get surroundings_hydration_advice =>
      'Deel am ndox mu bari ci jamono jii.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Seetal lekk';

  @override
  String get food_quick_barcode => 'Scan Kodu Barre 👑';

  @override
  String get food_quick_water => 'Def ci ndox';

  @override
  String get food_quick_custom => 'Lekk buñ jagleel';

  @override
  String get surroundings_good => 'baaxna';

  @override
  String get surroundings_moderate => 'Moderate';

  @override
  String get surroundings_unhealthy => 'Du wér';

  @override
  String get notifications_title => 'yëgle ak àrtu';

  @override
  String get notifications_empty => 'Amul yëgle yu bees';

  @override
  String get notifications_mark_read => 'Marke lépp ni lire';

  @override
  String get notifications_clear => 'fomp lépp';

  @override
  String get reminders => 'Jekkal fàttaliku';

  @override
  String get notifications => 'yëgle yi';

  @override
  String get reminders_breakfast_title => 'Fattaliku ndékki 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Mbaa yaa ngi ci jàmm! Waxtu ndékki bu am doole ci $time .';
  }

  @override
  String get reminders_lunch_title => 'Lunch Rappel 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Nooyal nga lekk bu baax te ànd ak xel mu dal ci $time .';
  }

  @override
  String get reminders_dinner_title => 'Rappel de cenner 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Waxtu reer bu woyof te neex ci $time .';
  }

  @override
  String get reminders_water_title => 'Hidrataasioŋ Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Dafa jot nga naan benn kaasu ndox mu fere! ($time)';
  }

  @override
  String get reminders_weight_title => 'Pesé ayu-bis bu nekk ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Toppal sa yaram ayu-bis bu nekk ci Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Waxtu nelaw Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Fexeel ba noppi waajal nelaw bu baax ( $time ).';
  }

  @override
  String get onboard_welcome => 'Dalal jàmm ci Bloomi';

  @override
  String get onboard_sub =>
      'Sa xarit bu baax, bi njëkk ci wàllu wérgi-yaram ak dundu gu baax.';

  @override
  String get onboard_get_started => 'Tambalil';

  @override
  String get onboard_sign_in => 'Duggal';

  @override
  String get onboard_skip => 'Teg';

  @override
  String get onboard_choose_goal =>
      'Lan mooy sa mébet bu njëkk ci wàllu wérgi-yaram?';

  @override
  String get onboard_goal_weight_loss => 'Wàññi poid bu woyof';

  @override
  String get onboard_goal_muscle => 'Sidit Gain & Force';

  @override
  String get onboard_goal_energy => 'Energie ak dundu bis bu nekk';

  @override
  String get onboard_goal_habits => 'Lekk bu sell ak xel';

  @override
  String get onboard_about_you => 'Waxñu ci sa bopp';

  @override
  String get onboard_lifestyle => 'Sa jëffu bës bu nekk';

  @override
  String get onboard_permissions_title => 'Ndigal & Dugg ci Sistem';

  @override
  String get onboard_permissions_sub =>
      'May leen ñu mëna senkronise jéego yi, tàggat yaram yi ak fàttalikaay yi.';

  @override
  String get onboard_plan_ready_title => 'Sa palaŋu jagleel waajal na!';

  @override
  String get onboard_plan_ready_sub =>
      'Defar nanu kàrtu yoon bu yomb, buñ personaalise bu baax ci wàllu dundu ak wérgi-yaram, ngir yaw kese.';

  @override
  String get onboard_enter_bloomi => 'Duggal ci Bloomi';

  @override
  String get insights_weekly_report => 'Recap ayu-bis bu nekk ci wérgi-yaram';

  @override
  String insights_best_day(Object day) {
    return 'Bis bi gëna dëppoo: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Jaar-jaar';

  @override
  String insights_unlocked_on(Object date) {
    return '$date';
  }

  @override
  String get insights_keep_going => 'Weyal seen jëm kanam bu rafet!';

  @override
  String get widgets_title => 'Widget yi ci ekraŋu dalal';

  @override
  String widgets_active_count(Object count) {
    return 'Widget yiy dox: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Centre de bien-être';

  @override
  String get widgets_steps_title => 'Jéego yi ak Ring buy dox';

  @override
  String get widgets_water_title => 'Hidratasioŋ';

  @override
  String get widgets_mascot_title => 'Maskot bu Bloomi';

  @override
  String get wear_os_title => 'Solal montor OS';

  @override
  String get wear_os_connected => 'Konekte ci Watch';

  @override
  String get wear_os_sync => 'Senkronise ay done';

  @override
  String get theme_title => 'Melokaan & Tema';

  @override
  String get theme_mode => 'Modu tema';

  @override
  String get theme_light => 'Leer';

  @override
  String get theme_dark => 'Lëndëm';

  @override
  String get theme_system => 'Sistem biñ jagleel';

  @override
  String get theme_background_palette => 'Palet de fond';

  @override
  String get units_title => 'Unité de mesure';

  @override
  String get units_metric => 'métrique (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (livre, ci, oz)';

  @override
  String get home_unable_load => 'Mënuñu sarse tablo bi';

  @override
  String get home_health_permission_req =>
      'Dañuy laaj ndigalu lëkkaloo ak wérgi-yaram';

  @override
  String get home_health_permission_desc =>
      'Bloomi dafay laaj ndigalu Health Connect ngir mëna jël jéego yu dëggu yi, xët wi ak senkronise widget kër mobile ci saa si.';

  @override
  String get home_allow_health => 'Nangu Wérgi-yaram lëkkaloo';

  @override
  String get home_ready_mindful_day => 'Waajal nga bis bu neex? ✨';

  @override
  String get home_quick_add => 'Yokk lu gaaw';

  @override
  String get home_live_gps => 'GPS en direct';

  @override
  String get home_calories_remaining_label => 'KALORI YI DESS';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Lekk: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Robinet ngir topp ndox 💧';

  @override
  String get home_water_goal_reached => 'Mébet bis bu nekk yegsi na 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ci mébetu bis bu nekk';
  }

  @override
  String get home_details => 'Ay detay';

  @override
  String get home_upgrade_plan_desc =>
      'Yeesal ngir dindi ay mébet yuñ personaalise bu bës bu nekk ak palaŋu IA';

  @override
  String get home_unlock => 'Tibbi 👑';

  @override
  String get home_quick_log_hint =>
      'Enregistrer ci saasi ab duggal ci wérgi-yaram';

  @override
  String get food_serving_size => 'Dayo porsioŋ';

  @override
  String get food_serving_grams => 'Serve (g)';

  @override
  String get food_number_servings => 'Limu porsioŋ yi';

  @override
  String get food_calories_per_serving => 'Kalori ci porsioŋ bu nekk';

  @override
  String get food_recipe_ingredients => 'Ingredient yi';

  @override
  String get food_recipe_add_ingredient => 'Def ci saf-safal';

  @override
  String get food_recipe_directions => 'Tegtal ak leeral';

  @override
  String get food_recipe_total => 'Total Reset Nutrition';

  @override
  String get food_recipe_per_serving => 'Nutrition bu nekk';

  @override
  String get food_recipe_saved_toast =>
      'Ñam yiñ defar ñu denc nañu ko bu baax!';

  @override
  String get food_barcode_found => 'Gis nañu produit bi!';

  @override
  String get food_barcode_not_found_desc =>
      'Mënu nu gis kodu bar bi ci base de done bu ubbeeku bi. Mën nga ko boole ci ñam wi nga bëgg.';

  @override
  String get food_add_custom_btn => 'Yokk ñam wuñ jagleel';

  @override
  String get food_scan_again => 'Scannewaat';

  @override
  String get food_review_items => 'Xoolaat ñam yiñ gis';

  @override
  String get food_review_hint => 'Defar limu wala dindi bépp mbir buñu xamul';

  @override
  String get food_log_selected => 'Log ñam yiñ tànn';

  @override
  String get food_favourites_title => 'Ñam yi ma taamu';

  @override
  String get food_recent_title => 'Ñam yu bees';

  @override
  String get food_no_favourites =>
      'Ba leegi amul ñam wuma taamu. Bësal xol ci bépp ñam ngir denc fii.';

  @override
  String get food_no_recents => 'Amul benn ñam buñu jota dugal ci këyit.';

  @override
  String get food_nutrition_details_title => 'Ay leeral ci dundu bis bu nekk';

  @override
  String get food_macro_protein_label => 'Protéine yi';

  @override
  String get food_macro_carbs_label => 'Carbs';

  @override
  String get food_macro_fat_label => 'Degradation des grees';

  @override
  String get food_macro_fiber_label => 'Fibre destruction';

  @override
  String get food_daily_target_comparison => 'Tegtale ci mébet';

  @override
  String food_target_label(Object target) {
    return 'Biñu bëgga: $target';
  }

  @override
  String get food_edit_entry => 'Soppi duggu ci surnaal bi';

  @override
  String get food_delete_entry => 'efaase dugg';

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
    return '$current de $target ml';
  }

  @override
  String get water_intake_history => 'Logs ndox tay';

  @override
  String get water_no_logs_today =>
      'Tay amagul ndox mu dugg. Hidrate te bës butoŋu yokk bu gaaw bi!';

  @override
  String get water_adjust_goal => 'Defar mébetu bis bu nekk';

  @override
  String get health_connect_banner => 'Konekte ci Konekte Wérgi-yaram';

  @override
  String get health_vitals_summary => 'Vital yu am solo ci wàllu wérgi-yaram';

  @override
  String get health_latest_heart_rate => 'Fréquence cardiaque bi mujjee';

  @override
  String get health_latest_bp => 'Tension';

  @override
  String get health_latest_spo2 => 'Oxygen ci deret ji';

  @override
  String get health_latest_glucose => 'Glucose ci deret ji';

  @override
  String get health_latest_weight => 'Diisaay';

  @override
  String get health_latest_sleep => 'Duru nelaw';

  @override
  String get health_add_manual => 'Yokk natt ak loxo';

  @override
  String get health_history_trends => 'Tendensi taarix';

  @override
  String get health_sync_success =>
      'Done yu wérgi-yaram dañu leen boole bu baax!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours waxtu $mins simili';
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
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return 'mg/dl';
  }

  @override
  String get health_devices_title => 'Aparey yuñ boole ak yiñ mëna sol';

  @override
  String get health_devices_desc =>
      'Fexe am montor yu xarañ yuñ boole, toppukaayu fitness ak kaptëru wérgi-yaram.';

  @override
  String get health_workout_editor_title => 'Soppi tàggat yaram';

  @override
  String get health_workout_name_label => 'Tur tàggat yaram';

  @override
  String get health_workout_duration_label => 'Duraasioŋ (simili)';

  @override
  String get health_workout_calories_label => 'Kalori yiñ xayma (kcal)';

  @override
  String get health_workout_date_label => 'Bis ak waxtu';

  @override
  String get plan_daily_wellness_roadmap => 'Sa kàrtu yoon buñ personaaliseer';

  @override
  String get plan_morning_routine => 'Li ngay def ci suba';

  @override
  String get plan_afternoon_routine => 'Wérgi-yaram ci diggu bëccëg';

  @override
  String get plan_evening_routine => 'Guddi Wind-Down';

  @override
  String get plan_coach_badge => 'Anterneer IA Bloomi';

  @override
  String get plan_weekly_overview => '7 fan Focus ci wérgi-yaram';

  @override
  String get plan_targets_title => 'Mébet ak mébetu wérgi-yaram';

  @override
  String get plan_calorie_budget_label => 'Budget kalori bis bu nekk';

  @override
  String get plan_water_budget_label => 'ndox miñu bëgga bis bu nekk';

  @override
  String get plan_step_budget_label => 'Jéego bu bës bu nekk';

  @override
  String get plan_macro_split_label => 'Rasio makronutriment';

  @override
  String get profile_personal_details => 'Ay leeral ci sa bopp';

  @override
  String get profile_body_stats => 'Natt yaram';

  @override
  String get profile_app_preferences => 'Taamu & Jekkal aplikaasioŋ';

  @override
  String get profile_edit_name_hint => 'Sa tur';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Hauteur ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Poids ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Jamono';

  @override
  String get profile_gender_male => 'Goor';

  @override
  String get profile_gender_female => 'Jigéen';

  @override
  String get profile_gender_other => 'Leneen / Taamuwul wax';

  @override
  String get profile_activity_sedentary =>
      'Toog (Tàggat yaram bu néew wala amul)';

  @override
  String get profile_activity_light => 'Dafay yëngu bu baax (1-3 fan/ayu-bis)';

  @override
  String get profile_activity_moderate => 'Aktif bu yam (3-5 fan/ayu-bis)';

  @override
  String get profile_activity_very => 'Dafay yëngu lool (6-7 fan/ayu-bis)';

  @override
  String get settings_wear_os_header => 'Solal App Companion OS';

  @override
  String get settings_wear_os_desc =>
      'Sampaaleel carreaux Bloomi ak jafe-jafe ci sa montor Wear OS ngir xoolaat kalori yi, ndox mi ak jéego yi.';

  @override
  String get settings_widgets_header => 'Widget Android yuy weccoo xalaat';

  @override
  String get settings_widgets_desc =>
      'Pineel widget yi ci saasi ci ekraŋu dalal sa aparey ngir am yeesali ci saasi.';

  @override
  String get settings_about_header => 'Lu jëm ci Bloomi';

  @override
  String get settings_about_version => 'Weersu 1.0.0';

  @override
  String get settings_about_build => 'Tabax 100';

  @override
  String get settings_about_credits =>
      'Ñu ngi ko defaree ci xel mu dal, dundu gu sell.';

  @override
  String get settings_terms_header => 'Anam yi ak sart yi';

  @override
  String get settings_privacy_header => 'Politigu sutura';

  @override
  String get settings_delete_header => 'efaase kontu bi ak ay done';

  @override
  String get settings_delete_warning =>
      'Mënu ñu delloo jëf jii. Dina ñu efaase sa lekk yépp, say tàggat yaram, say mbir yu am solo ak sa profil.';

  @override
  String get settings_delete_confirm_btn => 'efaase ba fàww';

  @override
  String get onboard_welcome_headline => 'Dalal jàmm ci Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Topp wérgi-yaram bu woyof, xel mu dal, ñu defaree ko ci sa dundu.';

  @override
  String get onboard_step_about => 'ci yaw';

  @override
  String get onboard_step_goals => 'Say mébet';

  @override
  String get onboard_step_lifestyle => 'Li ngay def bis bu nekk';

  @override
  String get onboard_step_permissions => 'Ndigal';

  @override
  String get onboard_step_plan => 'Waajal!';

  @override
  String get onboard_health_connect_perm => 'Jokkoo ci Wérgi-yaram';

  @override
  String get onboard_step_sensors_perm => 'Sensor Kontëru Jéego';

  @override
  String get onboard_notif_perm => 'Fattali ak yëgle yu am solo';

  @override
  String get onboard_camera_perm => 'Kamera (kodu bar ak scanner ñam)';

  @override
  String get onboard_grant_permissions => 'Jox ndigal';

  @override
  String get onboard_continue_dashboard => 'Ubbi tablo dashboard';

  @override
  String get notif_channel_hydration_name => 'Nudges ngir hidratasioŋ';

  @override
  String get notif_channel_hydration_desc =>
      'ndox mu woyof ñuy fàttali nit ñi ci bis bi yépp';

  @override
  String get notif_channel_nutrition_name => 'Lekk ak fàttaliku dundu gu baax';

  @override
  String get notif_channel_nutrition_desc => 'Àrtu ci ndékki, añ ak reer';

  @override
  String get notif_channel_steps_name => 'Jéego yu am solo';

  @override
  String get notif_channel_steps_desc =>
      'Màggal sudee yegg nañu ci jéego yiñ tëral bis bu nekk';

  @override
  String get notif_channel_vitals_name => 'Saytu wérgi-yaram ak dundu';

  @override
  String get notif_channel_vitals_desc =>
      'Diisaay ak fàttaliku ngelaw lu wàcci balaa ngay nelaw';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Retroduction 15m';

  @override
  String get notif_action_log_meal => '🥗 Lekk';

  @override
  String get language => 'Làkk';

  @override
  String get share => 'Séddoo';

  @override
  String common_days(Object count) {
    return '$count fan';
  }
}
