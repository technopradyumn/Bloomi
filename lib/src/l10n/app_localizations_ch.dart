// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chamorro (`ch`).
class AppLocalizationsCh extends AppLocalizations {
  AppLocalizationsCh([String locale = 'ch']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Gima\'';

  @override
  String get nav_today => 'På\'go na ha\'åni';

  @override
  String get nav_plan => 'Planu';

  @override
  String get nav_food => 'Neñkanu\'';

  @override
  String get nav_food_diary => 'Diary put Nengkanno\'';

  @override
  String get nav_workout => 'Log put i ehersisio';

  @override
  String get nav_health => 'Salut';

  @override
  String get nav_profile => 'Prufil';

  @override
  String get save => 'Na\'setbe';

  @override
  String get cancel => 'Kansela';

  @override
  String get delete => 'Na\'suha';

  @override
  String get edit => 'Na\'lå\'la\'';

  @override
  String get done => 'Ma\'pos';

  @override
  String get close => 'Påpa\'';

  @override
  String get back => 'Tåtte';

  @override
  String get next => 'Sigiente';

  @override
  String get continue_btn => 'Sige';

  @override
  String get confirm => 'Konfitma';

  @override
  String get search => 'Fanli\'e\'';

  @override
  String get filter => 'Filtro';

  @override
  String get all => 'Todu';

  @override
  String get active => 'Aktibu';

  @override
  String get today => 'På\'go na ha\'åni';

  @override
  String get yesterday => 'På\'go';

  @override
  String get tomorrow => 'På\'go na ha\'åni';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Na\'suha';

  @override
  String get refresh => 'Na\'lå\'la\' ta\'lo';

  @override
  String get retry => 'Prueba ta\'lo';

  @override
  String get error => 'ti maolek';

  @override
  String get success => 'Minaolek';

  @override
  String get loading => 'Ma\'a\'agang...';

  @override
  String get no_data => 'Ti ma sodda\' i dañu';

  @override
  String get offline => 'Modun Offline';

  @override
  String get offline_sub =>
      'I inadelanta siha u fanma sinkronisa yanggen manma konekta ta\'lo';

  @override
  String get undo => 'Na\'suha';

  @override
  String get portion => 'Påtten';

  @override
  String get quantity => 'Kantidå';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Klaru';

  @override
  String get select => 'Pili';

  @override
  String get apply => 'Aplika';

  @override
  String get reset => 'Na\'lå\'la\' ta\'lo';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Hunggan';

  @override
  String get no => 'Ti';

  @override
  String get optional => 'Opsionåt';

  @override
  String get calories => 'Kaloria siha';

  @override
  String get protein => 'Proteina';

  @override
  String get carbs => 'Karbohidrat siha';

  @override
  String get fat => 'Gå\'ga\'';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Hanom';

  @override
  String get steps => 'Pas siha';

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
  String get inches => 'gi';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ora';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Manma\'ayuda';

  @override
  String get servings => 'Manma\'å\'ñao';

  @override
  String get serving_size => 'I Mineggai na Påtte';

  @override
  String get per_100g => 'kada 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Gima\'';

  @override
  String get home_greeting_morning => 'Buenas Dias';

  @override
  String get home_greeting_afternoon => 'Buenas Tardes';

  @override
  String get home_greeting_evening => 'Buenas Noches';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dihas na lina\'la\'',
      one: '1 diha na lina\'la\'',
      zero: '0 dihas na lina\'la\'',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ma\'utot';

  @override
  String get home_calories_budget => 'Budget para i Kaloria';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ni\' gaige';
  }

  @override
  String get home_water_title => 'Hidratåsion kada diha';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'I pasgua ni\' mamomokkat';

  @override
  String get home_quick_actions => 'Aksion Siha';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Hånom Trongko';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Peson Log';

  @override
  String get home_insights_title => 'I tiningo\'-måmi på\'go na ha\'åni';

  @override
  String get home_quote =>
      'I dikike\' na cho\'cho\' siha ni\' manmaolek para i salut, ma na\'fanhuyong nuebu na inadelanta siha.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'I lina\'la\' yan i atdao';

  @override
  String get home_notifications => 'Notifikasion siha';

  @override
  String get home_daily_score => 'I Puntos gi i Mina\'å\'ñao kada diha';

  @override
  String get home_view_all => 'Li\'e\' Todu';

  @override
  String get food_diary_title => 'Diary put Nengkanno\'';

  @override
  String get food_breakfast => 'Desayuno';

  @override
  String get food_lunch => 'Almuerzo';

  @override
  String get food_dinner => 'Sena';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Na\'i Nengkanno\'';

  @override
  String get food_edit_food => 'Na\'lå\'la\' i Nengkanno\'';

  @override
  String get food_add_breakfast => 'Addåhi i Desayuno';

  @override
  String get food_add_lunch => 'Addåhi i Almuerzo';

  @override
  String get food_add_dinner => 'Adda\' i Sena';

  @override
  String get food_add_snack => 'Add Snack';

  @override
  String get food_total_calories => 'Todu i Kaloria siha';

  @override
  String get food_empty_meal =>
      'taya\' nengkanno\' ma\'a\'atan para este na nengkanno\' på\'go';

  @override
  String get food_empty_diary =>
      'Ti ma rikonisa i nengkanno\' para este na ha\'åni';

  @override
  String get food_log_first_meal =>
      'Påtta i + para un rikohi i fine\'nina na gof na\'magof na nengkanno\'-mu';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint =>
      'Li\'e\' i nengkanno\', i fruta, i dal, i roti...';

  @override
  String get food_custom_recipe => 'Nengkanno\' yan Riseta ni\' Ma\'ayek';

  @override
  String get food_scan_barcode => 'Eskan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'På\'go na Nengkanno\'';

  @override
  String get food_favourites => 'I mas ya-hu';

  @override
  String get food_macro_summary => 'Ma\'utot i Makronutriente';

  @override
  String get food_delete_meal_confirm =>
      'Siguru hao na malago\' hao muna\'suha este na kosas?';

  @override
  String get food_item_deleted => 'Ma na\'suha i nengkanno\'';

  @override
  String get food_remaining => 'sumasaga\'';

  @override
  String get food_consumed => 'ma\'usa';

  @override
  String food_of_target(Object target) {
    return 'gi $target kcal';
  }

  @override
  String get foodSearch_title => 'Manli\'e\' i nengkanno\' siha';

  @override
  String get foodSearch_scan_barcode => 'Eskan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Fa\'tinas Nengkanno\'';

  @override
  String get foodSearch_recent_searches => 'I På\'go na Inaligao';

  @override
  String get foodSearch_popular => 'Plåtu siha ni\' Manma\'å\'ñao';

  @override
  String get foodSearch_no_results =>
      'taya\' nengkanno\' ni\' parehu yan i inaligao-mu';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Na\'daña\' i barcode gi halom i kamera';

  @override
  String get barcode_not_found => 'Ti ma sodda\' i prudukto gi i basen datos';

  @override
  String get barcode_premium_feature =>
      'I barcode scanning siña ma\'usa gi Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Na\'huyong un klaru na litråtu put i platu-mu';

  @override
  String get camera_analysing => 'Ma\'analisa i plåton nengkanno\'...';

  @override
  String get camera_detected => 'Ma sodda\' na kosas siha';

  @override
  String get camera_flash => 'Na\'lå\'la\' i Flash';

  @override
  String get camera_retake => 'Na\'lå\'la\' ta\'lo i litråtu';

  @override
  String get camera_confirm_food => 'Konfitma i kosas siha';

  @override
  String get customFood_title => 'Nengkanno\' yan Riseta ni\' Ma\'ayek';

  @override
  String get customFood_name_hint => 'Na\'an i nengkanno\' pat i ingrediente';

  @override
  String get customFood_calories_hint => 'Kaloria (kcal)';

  @override
  String get customFood_protein_hint => 'Proteina (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidrat (g)';

  @override
  String get customFood_fat_hint => 'Grasa (g)';

  @override
  String get customFood_save => 'Na\'setbe i Resåta';

  @override
  String get water_tracker_title => 'Manma\'a\'atan i Hanom';

  @override
  String get water_daily_target => 'I intension i hånom kada diha';

  @override
  String get water_logged_today => 'Ma log på\'go na ha\'åni';

  @override
  String get water_add_glass => '+250 ml na Glass';

  @override
  String get water_add_bottle => '+500 ml na Botkan';

  @override
  String get water_custom_amount => 'Kustumbren Kantidå';

  @override
  String get water_reminder_tip =>
      'Gimen hanom todu i tiempo gi todu i ha\'åni para un gof fitme i minetgot-mu.';

  @override
  String water_logged_toast(Object amount) {
    return 'Ma rikohi $amount ml na hånom 💧';
  }

  @override
  String get workout_title => 'Log put i ehersisio';

  @override
  String get workout_add_exercise => 'Add Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'minetgot';

  @override
  String get workout_yoga => 'Yoga yan Fleksibilidåt';

  @override
  String get workout_duration => 'Duråsion';

  @override
  String get workout_intensity => 'Intension';

  @override
  String get workout_calories_burned => 'Ma\'utot i Kaloria siha';

  @override
  String get workout_empty => 'Ti ma rikohi i ehersisiu på\'go na ha\'åni';

  @override
  String get workout_save_success => 'Ma na\'setbe i ehersisiu!';

  @override
  String get workout_type => 'Klasin Ehersisiu';

  @override
  String get workout_notes => 'Nota siha yan Hinasso siha';

  @override
  String get health_overview_title => 'Salut yan Binala\'la\'';

  @override
  String get health_heart_rate => 'Laknos i korason';

  @override
  String get health_blood_oxygen => 'Oksigen gi haga\' (SpO2)';

  @override
  String get health_blood_pressure => 'Presion Haga\'';

  @override
  String get health_blood_glucose => 'Asukat gi Haga\'';

  @override
  String get health_body_temperature => 'I temperaturan i tataotao';

  @override
  String get health_sleep_tracking => 'Inatan i Puengi';

  @override
  String get health_weight_tracking => 'Peso yan Komposision i Tataotao';

  @override
  String get health_waist_hip => 'Ratio gi entre i sintura yan i sintura';

  @override
  String get health_devices_hub =>
      'Hub para i dipattamenton-ñiha yan i relo-ñiha';

  @override
  String get health_sync_now => 'Sinkronisa i Dåtan Salud';

  @override
  String health_last_synced(Object time) {
    return 'Uttimo na sinkronisasion: $time';
  }

  @override
  String get health_manual_entry => 'Entrin Salut Manå\'paka\'';

  @override
  String get health_metric_detail => 'Detåt siha gi i Metka';

  @override
  String get health_connected_sensors => 'Sensor Siha ni\' Manmakonekta';

  @override
  String get plan_title => 'Planu kada diha';

  @override
  String get plan_weekly_title => 'Planun Hinasso kada Simana';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Puntan Hidrasion';

  @override
  String get plan_step_target => 'Pas na Puntan';

  @override
  String get plan_sleep_target => 'Puntan Puegu';

  @override
  String get plan_meal_suggestions => 'Suhestion siha put i nengkanno\'';

  @override
  String get plan_healthy_habits => 'Manmaolek na Kustumbre yan Tip siha';

  @override
  String get plan_coach_advice => 'Rekomendasion Siha put i Bloomi AI Coach';

  @override
  String get plan_generated_title =>
      'Eskedyul kada diha ni\' ma\'ayek para i taotao';

  @override
  String get profile_title => 'Prufil';

  @override
  String get profile_edit => 'Na\'lå\'la\' i Prufil-mu';

  @override
  String get profile_name => 'Na\'an';

  @override
  String get profile_age => 'Idat';

  @override
  String get profile_gender => 'Gender';

  @override
  String get profile_height => 'Tinachong';

  @override
  String get profile_weight => 'Peso';

  @override
  String get profile_goal => 'Primet na Intension';

  @override
  String get profile_activity_level => 'Nivel na Aktibidåt';

  @override
  String get profile_stats => 'Estadistika-ku put i Saina-hu';

  @override
  String get profile_saved => 'Ma na\'lå\'la\' i prugråma';

  @override
  String get profile_bmi => 'Indeks Masan Tataotao (BMI)';

  @override
  String get profile_membership => 'Membro';

  @override
  String get settings => 'Setbisio siha';

  @override
  String get preferences_habits => 'PREFERENSIA YAN KUSTÅBUT-MU';

  @override
  String get appearance_theme => 'I fina\'tinas yan i tema';

  @override
  String get appearance_theme_sub =>
      'Pineddong, Lina\'la\', Modun Sistema yan Opsion siha gi i Fondon App';

  @override
  String get permissions => 'På\'go yan Inafekta gi Sistema';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifikasion siha yan Kamera';

  @override
  String get reminders_notifications => 'Manma\'å\'ñao yan Notifikasion siha';

  @override
  String get reminders_sub =>
      'Oras nengkanno\', hånom, che\'cho\' peso yan manma\'å\'ñao na manma\'å\'ñao';

  @override
  String get units_of_measurement => 'Unit siha ni\' Midida';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) pat Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Fino\' CHamoru';

  @override
  String get language_sub =>
      'Ingles, हिन्दी (Hindi), Hinglish yan 195+ na lengguåhi siha gi enteru mundo';

  @override
  String get home_screen_widgets => 'Widgets gi i Home Screen';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Kompañero gi i relo, tiles, komplikao yan lina\'la\'';

  @override
  String get goals_wellness => 'I METAN YAN I INA\'LA\' I INA\'LA\'';

  @override
  String get nutrition_targets =>
      'I Manma\'ayek na Nutrision yan i Makro na Dibidi';

  @override
  String get nutrition_targets_sub =>
      'I mina\'dos na kaloria, proteina, karbohidrat, laña yan hånom';

  @override
  String get weekly_recap => 'Rekap gi i Saina kada Simana';

  @override
  String get weekly_recap_sub =>
      '7-dihas na prodokto, macro ratio yan i mas maolek na diha';

  @override
  String get streaks_milestones => 'I lina\'la\' yan i lina\'la\' siha';

  @override
  String get streaks_sub =>
      'Manå\'paka\' na lina\'la\', insignia yan inayek siha';

  @override
  String get connected_devices => 'MANMA\'Å\'ÅÑAO NA DISPÅSITO YAN EKOSISTEMA';

  @override
  String get devices_hub => 'Hub para i dipattamenton-ñiha yan i relo-ñiha';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'I lina\'la\' yan i tiempo';

  @override
  String get surroundings_sub =>
      'Kålidåt aire (AQI), UV index yan tiningo\' put i hånom gi i tiempo';

  @override
  String get bloomi_pro => 'Suskrision Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 na pantalan gi i gima\' yan i inatan i lina\'la\'';

  @override
  String get about_security => 'PUT YAN SEGURIDAD';

  @override
  String get about_bloomi => 'Put Bloomi';

  @override
  String get about_bloomi_sub =>
      'I espesifikåsion i fina\'tinas, i båndan-ña, i atribusion-ña';

  @override
  String get privacy_policy => 'Pålitika put Pribåsi';

  @override
  String get privacy_policy_sub =>
      'Offline-first, on-device na arkitekturan dañu';

  @override
  String get terms_conditions => 'Areklamento yan Kondision siha';

  @override
  String get terms_conditions_sub =>
      'I kondision i setbisio yan i guinaiyan hinemlo\'';

  @override
  String get delete_account => 'Na\'suha i Kuenta yan i Dåta';

  @override
  String get delete_account_sub =>
      'Na\'suha i SQLite na datos yan i backup siha gi i cloud';

  @override
  String get healthy_habits =>
      'Na\'guaha manmaolek yan manlå\'la\' na kustumbren hinemlo\'';

  @override
  String get all_logs => 'I Ma\'a\'atan na Datos-hu yan i Log-hu siha';

  @override
  String get search_language =>
      'Fanli\'e\' gi i fino\' CHamoru pat gi i tinige\' natibu...';

  @override
  String get languages_available => 'I Lengguåhi siha ni\' Guaha';

  @override
  String get no_matching_languages =>
      'Ti ma sodda\' i parehu na lengguåhi siha';

  @override
  String get try_searching =>
      'Påtte gi i tinige\'-mu pat gi i tinige\'-mu gi fino\' Engles';

  @override
  String get partially_translated => 'Ma translada dididi\' ha\'';

  @override
  String get complete_translation => 'Kumple';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'I fino\' CHamoru ma setbe para $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'I lina\'la\' yan i lina\'la\'';

  @override
  String get surroundings_aqi => 'Indeks i Kalidad i Atdao';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Humididåt';

  @override
  String get surroundings_hydration_advice =>
      'Manma\'å\'ñao hao gi i tiempon på\'go.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Manli\'e\' Nengkanno\'';

  @override
  String get food_quick_barcode => 'Eskan Barcode 👑';

  @override
  String get food_quick_water => 'Na\'i Hanom';

  @override
  String get food_quick_custom => 'Nengkanno\' Kustumbre';

  @override
  String get surroundings_good => 'Maolek';

  @override
  String get surroundings_moderate => 'Moderadu';

  @override
  String get surroundings_unhealthy => 'Ti manmaolek';

  @override
  String get notifications_title => 'Notifikasion yan Abisa siha';

  @override
  String get notifications_empty => 'taya\' nuebu na notisia siha';

  @override
  String get notifications_mark_read => 'Marka Todu komo Manli\'e\'';

  @override
  String get notifications_clear => 'Na\'suha Todu';

  @override
  String get reminders => 'Setbisio para i Manma\'å\'ñao';

  @override
  String get notifications => 'Notifikasion siha';

  @override
  String get reminders_breakfast_title => 'Na\'hasso put i Desayuno 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Buenas dias! Tiempo para un na\'magof na amotsa gi $time .';
  }

  @override
  String get reminders_lunch_title => 'Na\'hasso put i Almuerzo 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Påra yan gosa un balansia yan maolek na åmko\' gi $time .';
  }

  @override
  String get reminders_dinner_title => 'Na\'hasso put i Sena 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tiempo para un låmlam yan na\'magof na sena gi $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'tiempo para un ginge\' un bason hånom! ( $time )';
  }

  @override
  String get reminders_weight_title => 'I Peson Simana ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Na\'siguru na un li\'e\' i tataotao-mu kada simana gi Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Oras para u fanmamaigo\' Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Fanmagof yan pripara para un deskansu na puengi ( $time ).';
  }

  @override
  String get onboard_welcome => 'Magof na matto gi Bloomi';

  @override
  String get onboard_sub =>
      'I amko\', offline-first na kompañero-mu put salut yan nutrision.';

  @override
  String get onboard_get_started => 'Tutuhon';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'Fanhånao';

  @override
  String get onboard_choose_goal =>
      'Hafa i primet na intension-mu put hinemlo\'?';

  @override
  String get onboard_goal_weight_loss => 'Sumen na Pineddong Peso';

  @override
  String get onboard_goal_muscle => 'Mina\'lak yan Mina\'metgot i Muskulo';

  @override
  String get onboard_goal_energy => 'Enerhian yan Lina\'la kada diha';

  @override
  String get onboard_goal_habits => 'Manma\'å\'ñao na Manma\'å\'ñao';

  @override
  String get onboard_about_you => 'Sangåni Ham Put Hågu';

  @override
  String get onboard_lifestyle => 'I che\'cho\'-mu kada diha';

  @override
  String get onboard_permissions_title => 'På\'go yan Inafekta gi Sistema';

  @override
  String get onboard_permissions_sub =>
      'Na\'i akseso para i sinkronisasion na pas, ehersisiu, yan manma\'å\'ñao.';

  @override
  String get onboard_plan_ready_title => 'Listo i Planun-mu!';

  @override
  String get onboard_plan_ready_sub =>
      'In fa\'tinas un planu put nutrision yan hinemlo\' ni\' maolek yan para hagu.';

  @override
  String get onboard_enter_bloomi => 'hålom gi Bloomi';

  @override
  String get insights_weekly_report => 'Rekap gi i Saina kada Simana';

  @override
  String insights_best_day(Object day) {
    return 'I Mas Maolek na Ha\'åni para i Konsistensia: $day';
  }

  @override
  String get insights_streaks_badges => 'I lina\'la\' yan i lina\'la\' siha';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ma na\'lå\'la\' gi $date';
  }

  @override
  String get insights_keep_going => 'sigi ha\' i maolek na inadelanta!';

  @override
  String get widgets_title => 'Widgets gi i Home Screen';

  @override
  String widgets_active_count(Object count) {
    return 'Widget siha ni\' manma\'a\'agang: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Pas yan Ring ni\' Aktibu';

  @override
  String get widgets_water_title => 'Quick Log put i Hidrasion';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'U\'usa i OS Smartwatch';

  @override
  String get wear_os_connected => 'Makonekta gi i Watch';

  @override
  String get wear_os_sync => 'Sinkronisa i Dåtan Relo';

  @override
  String get theme_title => 'I fina\'tinas yan i tema';

  @override
  String get theme_mode => 'Modun Tema';

  @override
  String get theme_light => 'Lina\'la\'';

  @override
  String get theme_dark => 'åpaka\'';

  @override
  String get theme_system => 'Sisteman Default';

  @override
  String get theme_background_palette => 'Paletan Fondo';

  @override
  String get units_title => 'Unit siha ni\' Midida';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ti siña ma\'a\'atan i dashboard';

  @override
  String get home_health_permission_req =>
      'Manma nisisita i Påtten Health Connect';

  @override
  String get home_health_permission_desc =>
      'I Bloomi ha nisisita i Health Connect na permiso para u na\'guaha pas, i lina\'la\' i korason, yan u na\'sinkronisa i widget siha gi i gima\' gi i tiempon-ña.';

  @override
  String get home_allow_health => 'Na\'i siñat i Health Connect';

  @override
  String get home_ready_mindful_day => 'Listo para un diha ni\' gof maolek? ✨';

  @override
  String get home_quick_add => 'Quick Add';

  @override
  String get home_live_gps => 'GPS ni\' låla\'la\'';

  @override
  String get home_calories_remaining_label => 'KALORIA SIHA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ma\'gåsi: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap para i Tracker Hanom 💧';

  @override
  String get home_water_goal_reached =>
      'Ma na\'setbe i minalago\'-mu kada diha 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml para i minalago\' kada diha';
  }

  @override
  String get home_details => 'Detåt siha';

  @override
  String get home_upgrade_plan_desc =>
      'Na\'lå\'la\' para un na\'lå\'la\' i lina\'la\'-mu kada diha yan i planun AI';

  @override
  String get home_unlock => 'Na\'lå\'la\' 👑';

  @override
  String get home_quick_log_hint => 'Na\'magof i entri-mu put hinemlo\'';

  @override
  String get food_serving_size => 'I Mineggai na Påtte';

  @override
  String get food_serving_grams => 'Manma\'ayek (g)';

  @override
  String get food_number_servings => 'Numeron i Manma\'gåsi';

  @override
  String get food_calories_per_serving => 'Kaloria gi kada na nengkanno\'';

  @override
  String get food_recipe_ingredients => 'Ingrediente siha';

  @override
  String get food_recipe_add_ingredient => 'Na\'i i Ingrediente';

  @override
  String get food_recipe_directions => 'Instruksion yan Nota siha';

  @override
  String get food_recipe_total => 'Todu i Nutrision gi i Resåta';

  @override
  String get food_recipe_per_serving => 'Kada na Påtten Nutrision';

  @override
  String get food_recipe_saved_toast =>
      'Ma na\'setbe i nengkanno\' ni\' ma fa\'tinas ginen i kustumbre!';

  @override
  String get food_barcode_found => 'Ma sodda\' i prudukto!';

  @override
  String get food_barcode_not_found_desc =>
      'Ti siña in sodda\' este na barcode gi i mababa na basen datos. Siña un addåpta este komo nengkanno\'.';

  @override
  String get food_add_custom_btn => 'Na\'i Kustumbren Nengkanno\'';

  @override
  String get food_scan_again => 'Eskan Ta\'lo';

  @override
  String get food_review_items => 'Ribisa i Ma\'ayek na Nengkanno\' siha';

  @override
  String get food_review_hint =>
      'Na\'lå\'la\' i kantidå-ña pat na\'suha maseha hafa na kosas ni\' ti ma tungo\'';

  @override
  String get food_log_selected => 'Log I Ma\'ayek na Nengkanno\' siha';

  @override
  String get food_favourites_title => 'I mas ya-hu na nengkanno\'';

  @override
  String get food_recent_title => 'På\'go na Nengkanno\'';

  @override
  String get food_no_favourites =>
      'Ti guaha nengkanno\' ni\' malago\'-hu på\'go. Gof ya-mu i nengkanno\' para un na\'setbe guini.';

  @override
  String get food_no_recents =>
      'Ti ma sodda\' i nuebu na nengkanno\' ni\' ma rikohi.';

  @override
  String get food_nutrition_details_title =>
      'Detalles put i Nutrision kada diha';

  @override
  String get food_macro_protein_label => 'Pineddong i Proteina';

  @override
  String get food_macro_carbs_label => 'I Dinidide\' i Karbohidrat siha';

  @override
  String get food_macro_fat_label => 'Dinidide\' i Grasa';

  @override
  String get food_macro_fiber_label => 'Pineddong i Fibra';

  @override
  String get food_daily_target_comparison => 'Kumparasion i Punta';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'Na\'lå\'la\' i Diåriu';

  @override
  String get food_delete_entry => 'Na\'suha i Entri';

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
    return '$current gi $target ml';
  }

  @override
  String get water_intake_history => 'I Hanom gi På\'go na Ha\'åni';

  @override
  String get water_no_logs_today =>
      'Ti ma\'a\'atan i hanom på\'go na ha\'åni. Na\'fanhånom ya un laknos i boton ni\' para un addåpta!';

  @override
  String get water_adjust_goal => 'Na\'lå\'la\' i Me\'nan-måmi kada diha';

  @override
  String get health_connect_banner => 'Konekta gi Health Connect';

  @override
  String get health_vitals_summary => 'I Manmetgot na Salud kada diha';

  @override
  String get health_latest_heart_rate => 'I mas nuebu na lina\'la\' i korason';

  @override
  String get health_latest_bp => 'Presion Haga\'';

  @override
  String get health_latest_spo2 => 'Oksihenu gi Haga\'';

  @override
  String get health_latest_glucose => 'Asukat gi Haga\'';

  @override
  String get health_latest_weight => 'Peso';

  @override
  String get health_latest_sleep => 'Tina\'lå\'la\' i Dumångkulu';

  @override
  String get health_add_manual => 'Addåhi i Mididan Manå\'i';

  @override
  String get health_history_trends => 'I Manma\'pos na Manåmko\'';

  @override
  String get health_sync_success =>
      'Ma sinkronisa i dañuyan na infotmasion put salut!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ora $mins minutos';
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
    return '$val mg/dL';
  }

  @override
  String get health_devices_title =>
      'Dipattamenton Manma\'a\'atan yan Manma\'a\'atan';

  @override
  String get health_devices_desc =>
      'Mana\'guaha parehu na relo siha, fitness trackers, yan sensor siha put salut.';

  @override
  String get health_workout_editor_title => 'Na\'lå\'la\' i Ehersisio';

  @override
  String get health_workout_name_label => 'Na\'an i Ehersisiu';

  @override
  String get health_workout_duration_label => 'Durasion (minutos)';

  @override
  String get health_workout_calories_label => 'Ma estima na Kaloria (kcal)';

  @override
  String get health_workout_date_label => 'Fecha yan Oras';

  @override
  String get plan_daily_wellness_roadmap => 'I Mapa-mu ni\' Ma\'ayek';

  @override
  String get plan_morning_routine => 'Rutina gi pupuengi';

  @override
  String get plan_afternoon_routine => 'Minalago\' gi i talo\'åni';

  @override
  String get plan_evening_routine => 'Manma\'å\'ñao i Puengi';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Dihas na Intension put i Hinasso';

  @override
  String get plan_targets_title => 'I Intension yan i Me\'nan i Hinelo\'';

  @override
  String get plan_calorie_budget_label => 'Budget para i Kaloria kada diha';

  @override
  String get plan_water_budget_label => 'I hanom ni\' ma\'ayek kada diha';

  @override
  String get plan_step_budget_label => 'I Intension-ña kada diha';

  @override
  String get plan_macro_split_label => 'Ratio gi i Makronutriente';

  @override
  String get profile_personal_details => 'Detåt siha put i Taotao-hu';

  @override
  String get profile_body_stats => 'Mididan Tataotao';

  @override
  String get profile_app_preferences =>
      'I minalago\' yan i setbisio siha gi i app';

  @override
  String get profile_edit_name_hint => 'I na\'an-mu';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Tinachong ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Peso ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Idat';

  @override
  String get profile_gender_male => 'Lalåhi';

  @override
  String get profile_gender_female => 'Palao\'an';

  @override
  String get profile_gender_other => 'Otro / Ti malago\' yu\' hu sangani hao';

  @override
  String get profile_activity_sedentary =>
      'Ti ma\'a\'atan (Ti meggai na ehersisiu)';

  @override
  String get profile_activity_light => 'Ti gof aktibu (1-3 dihas/simana)';

  @override
  String get profile_activity_moderate =>
      'Moderåt na Aktibu (3-5 dihas/simana)';

  @override
  String get profile_activity_very => 'Gof Aktibu (6-7 dihas/simana)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Inestotba i Bloomi tile yan i komplikasion gi i Wear OS na relo-mu para un li\'e\' i calories, hånom, yan i pas.';

  @override
  String get settings_widgets_header => 'Android Widgets ni\' Manma\'usa';

  @override
  String get settings_widgets_desc =>
      'Pin i widgets gi i tutuhon i dipattamenton-mu para i insigidas na inadelanta siha.';

  @override
  String get settings_about_header => 'Put Bloomi';

  @override
  String get settings_about_version => 'I båndan 1.0.0';

  @override
  String get settings_about_build => 'Fa\'tinas 100';

  @override
  String get settings_about_credits =>
      'Ma fa\'tinas yan inatan para i lina\'la\' ni\' manmaolek yan manmaolek.';

  @override
  String get settings_terms_header => 'Areklamento yan Kondision siha';

  @override
  String get settings_privacy_header => 'Pålitika put Pribåsi';

  @override
  String get settings_delete_header => 'Na\'suha i Kuenta yan i Dåta';

  @override
  String get settings_delete_warning =>
      'Ti siña ma na\'suha este na aksion. Todu i nengkanno\'-mu, i ehersisiu-mu, i vitals-mu, yan i prugråma-mu para u ma na\'suha.';

  @override
  String get settings_delete_confirm_btn => 'Na\'suha para todu i tiempo';

  @override
  String get onboard_welcome_headline => 'Magof na matto gi Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Manma\'å\'ñao, manma\'å\'ñao na inatan i hinemlo\'-mu ni\' ma disidi gi todu i lina\'la-mu.';

  @override
  String get onboard_step_about => 'Put Hågu';

  @override
  String get onboard_step_goals => 'I minalago\'-mu';

  @override
  String get onboard_step_lifestyle => 'Kustumbren-måmi kada diha';

  @override
  String get onboard_step_permissions => 'Påtten siha';

  @override
  String get onboard_step_plan => 'Listo!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Sensor i Kontador Pas';

  @override
  String get onboard_notif_perm =>
      'Manma\'å\'ñao na Manma\'å\'ñao yan Notifikasion siha';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode yan Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Na\'i Permisu siha';

  @override
  String get onboard_continue_dashboard => 'Abri i Dashboard';

  @override
  String get notif_channel_hydration_name => 'I Manma\'a\'ñao nu i Hidrasion';

  @override
  String get notif_channel_hydration_desc =>
      'Manma\'å\'ñao na manma\'å\'ñao nu i hanom gi todu i ha\'åni';

  @override
  String get notif_channel_nutrition_name =>
      'Manma\'å\'ñao put i Nengkanno\' yan i Nutrision';

  @override
  String get notif_channel_nutrition_desc =>
      'Abisa put i amotsa, talo\'åni, yan sena';

  @override
  String get notif_channel_steps_name => 'I mas impottånte na pas';

  @override
  String get notif_channel_steps_desc =>
      'Silebrasion yanggen ma na\'setbe i inayek-ñiha kada diha';

  @override
  String get notif_channel_vitals_name => 'Che\'cho\' Salut yan Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Manma\'å\'ñao put i peso yan i tiempon puengi';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Fanmanå\'i 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
