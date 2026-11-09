// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bambara (`bm`).
class AppLocalizationsBm extends AppLocalizations {
  AppLocalizationsBm([String locale = 'bm']) : super(locale);

  @override
  String get app_name => 'Bloomi ye';

  @override
  String get nav_home => 'So kɔnɔ';

  @override
  String get nav_today => 'Bi';

  @override
  String get nav_plan => 'Labɛn kɛ';

  @override
  String get nav_food => 'Dumunifɛnw';

  @override
  String get nav_food_diary => 'Dumunifɛnw ka donkibaru';

  @override
  String get nav_workout => 'Workout Log (Fɛɛrɛbɔsɛbɛn).';

  @override
  String get nav_health => 'Kɛnɛya';

  @override
  String get nav_profile => 'Profil (profil) ye';

  @override
  String get save => 'Save (Kɔlɔsili).';

  @override
  String get cancel => 'Cancel (Kalan) kɛ';

  @override
  String get delete => 'Delete (Bɔ) kɛ';

  @override
  String get edit => 'Labɛnni kɛ';

  @override
  String get done => 'A kɛra';

  @override
  String get close => 'A da tugu';

  @override
  String get back => 'Kɔfɛ';

  @override
  String get next => 'O kɔfɛ';

  @override
  String get continue_btn => 'Aw bɛ taa a fɛ';

  @override
  String get confirm => 'Aw ye a dafa';

  @override
  String get search => 'Ɲini';

  @override
  String get filter => 'Filɛri';

  @override
  String get all => 'Bɛɛ';

  @override
  String get active => 'Active (walekɛla).';

  @override
  String get today => 'Bi';

  @override
  String get yesterday => 'Kunu';

  @override
  String get tomorrow => 'Sini';

  @override
  String get add => 'Aw bɛ fara a kan';

  @override
  String get remove => 'Aw bɛ a bɔ';

  @override
  String get refresh => 'Lakurayali';

  @override
  String get retry => 'Aw ye a lajɛ kokura';

  @override
  String get error => 'Misali';

  @override
  String get success => 'Ɲɛtaa';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Donan si tɛ yen';

  @override
  String get offline => 'Mode (Mode) min tɛ Intɛrinɛti kan';

  @override
  String get offline_sub => 'Yɛlɛma bɛna kɛ ɲɔgɔn fɛ ni u ye ɲɔgɔn sɔrɔ kokura';

  @override
  String get undo => 'Undo (Undo) la';

  @override
  String get portion => 'Yɔrɔ dɔ';

  @override
  String get quantity => 'Hakɛ hakɛ';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'A jɛlen don';

  @override
  String get select => 'A sugandi';

  @override
  String get apply => 'A’ ye baara kɛ';

  @override
  String get reset => 'Segin-ka-bɔnye kɛ';

  @override
  String get ok => 'OK ye';

  @override
  String get yes => 'Ɔwɔ';

  @override
  String get no => 'Ayi';

  @override
  String get optional => 'A bɛ se ka kɛ i yɛrɛ sago la';

  @override
  String get calories => 'Kalori minnu bɛ sɔrɔ';

  @override
  String get protein => 'Protéine (banakisɛfagalanw).';

  @override
  String get carbs => 'Karɔtiw (Carbs).';

  @override
  String get fat => 'Fasa';

  @override
  String get fiber => 'Fibre (fibre) ye';

  @override
  String get water => 'Ji';

  @override
  String get steps => 'Taabolo minnu bɛ kɛ';

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
  String get inches => 'in. kɔnɔ';

  @override
  String get bpm => 'bpm (bpm) ye';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Baara kɛli';

  @override
  String get servings => 'Baara minnu bɛ kɛ';

  @override
  String get serving_size => 'Baarakɛcogo hakɛ';

  @override
  String get per_100g => 'garamu 100 kelen na';

  @override
  String get india => 'Ɛndujamana na';

  @override
  String get asia => 'Azi jamana na';

  @override
  String get europe => 'Erɔpu jamanaw na';

  @override
  String get middle_east => 'Moyen-Orient, Moyen-Orient';

  @override
  String get africa => 'Afiriki';

  @override
  String get americas => 'Ameriki jamanaw';

  @override
  String get home_title => 'So kɔnɔ';

  @override
  String get home_greeting_morning => 'Sɔgɔma ɲuman';

  @override
  String get home_greeting_afternoon => 'Aw ka tilegan fɛ';

  @override
  String get home_greeting_evening => 'Sufɛla ɲuman';

  @override
  String get home_streak_title => 'Fulaw ka Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tile sεbεn',
      one: 'Tile 1 ka tugu ɲɔgɔn na',
      zero: '0 tile streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'A ye jeni';

  @override
  String get home_calories_budget => 'Budget kalori hakɛ';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal tora';
  }

  @override
  String get home_water_title => 'Don o don ji la';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Senna-tɛgɛrɛw Taama';

  @override
  String get home_quick_actions => 'Waleya teliyalenw';

  @override
  String get home_log_meal => 'Log Dumuni';

  @override
  String get home_log_water => 'Log Ji';

  @override
  String get home_log_workout => 'Log Workout (Sɛgɛsɛgɛli min bɛ kɛ ni log) ye';

  @override
  String get home_log_weight => 'Log Weight (jiri girinya).';

  @override
  String get home_insights_title => 'Bi hakilinaw';

  @override
  String get home_quote =>
      'Sugandili kɛnɛman misɛnninw bɛ fɛn caman wuli fɛn caman tigɛli la.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI ka lakɔliden';

  @override
  String get home_surroundings => 'Lamini & Fiɲɛ';

  @override
  String get home_notifications => 'Ladɔnniyaliw';

  @override
  String get home_daily_score => 'Don o don kɛnɛya sabatili Score';

  @override
  String get home_view_all => 'Aw ye Bɛɛ lajɛ';

  @override
  String get food_diary_title => 'Dumunifɛnw ka donkibaru';

  @override
  String get food_breakfast => 'Dumunikɛyɔrɔ sɔgɔmada fɛ';

  @override
  String get food_lunch => 'Tilenbaliya dumuni';

  @override
  String get food_dinner => 'Sufɛdumuni';

  @override
  String get food_snacks => 'Snacks (dumuni misɛnninw).';

  @override
  String get food_add_food => 'Aw bɛ Dumuni fara a kan';

  @override
  String get food_edit_food => 'Dumuni sɛgɛsɛgɛli';

  @override
  String get food_add_breakfast => 'Aw bɛ Dumunikɛyɔrɔ fara a kan';

  @override
  String get food_add_lunch => 'Aw bɛ Tilenbaliya fara a kan';

  @override
  String get food_add_dinner => 'Aw bɛ Sufɛdumuni fara a kan';

  @override
  String get food_add_snack => 'Aw bɛ Snack fara a kan';

  @override
  String get food_total_calories => 'Kaloriw bɛɛ lajɛlen';

  @override
  String get food_empty_meal => 'Dumuni si ma sɛbɛn nin dumuni in kama fɔlɔ';

  @override
  String get food_empty_diary => 'Dumuni si ma sɛbɛn nin don in na';

  @override
  String get food_log_first_meal =>
      '+ I bolo digi walasa k’i ka dumuni duman fɔlɔ sɛbɛn';

  @override
  String get food_quick_add => 'Teliya ka fara a kan';

  @override
  String get food_search_hint => 'Ɲini dumuniw, jiridenw, dal, roti...';

  @override
  String get food_custom_recipe => 'Dumuni & Recipe ka kɛɲɛ ni mɔgɔw sago ye';

  @override
  String get food_scan_barcode => 'Scan Barcode (Scan Barcode) ye';

  @override
  String get food_camera_scan => 'AI Dumuni Sɛgɛsɛgɛlikɛlan';

  @override
  String get food_recent => 'Dumuni minnu bɛ sɔrɔ kɔsa in na';

  @override
  String get food_favourites => 'Fɛn minnu ka di kosɛbɛ';

  @override
  String get food_macro_summary =>
      'Barofɛnw (Macronutrients) (Macronutrients) (Barofɛnw) tiɲɛni';

  @override
  String get food_delete_meal_confirm =>
      'Yala aw dalen b’a la ko aw b’a fɛ ka nin fɛn in bɔ yen wa?';

  @override
  String get food_item_deleted => 'Dumunifɛn dɔ bɔra';

  @override
  String get food_remaining => 'tolenw';

  @override
  String get food_consumed => 'a bɛ dun';

  @override
  String food_of_target(Object target) {
    return 'ka $target kcal';
  }

  @override
  String get foodSearch_title => 'Dumunifɛnw ɲinini';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode (Scan Barcode) ye';

  @override
  String get foodSearch_take_photo => 'Snap Dumuni Foto';

  @override
  String get foodSearch_custom_food => 'Dumuni Ladamulenw Dabɔ';

  @override
  String get foodSearch_recent_searches => 'Ɲiniw kɛra kɔsa in na';

  @override
  String get foodSearch_popular => 'Dumuni minnu bɛ fɔ kosɛbɛ';

  @override
  String get foodSearch_no_results =>
      'Dumuni si tɛ yen min bɛ bɛn i ka ɲinini ma';

  @override
  String get barcode_title => 'Scanner min bɛ kɛ ni barcode ye';

  @override
  String get barcode_align => 'Aw bɛ barɔdiw labɛn kamera karamɔgɔ kɔnɔ';

  @override
  String get barcode_not_found => 'Fɛn min ma sɔrɔ database kɔnɔ';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning bɛ se ka kɛ ni Bloomi Pro ye';

  @override
  String get camera_title => 'AI Dumuni Sɛgɛsɛgɛlikɛlan';

  @override
  String get camera_tap_hint => 'Aw ye foto jɛlen ta aw ka dumunikɛminɛn na';

  @override
  String get camera_analysing => 'Analyzing dumuni plati...';

  @override
  String get camera_detected => 'Fɛn minnu kɔlɔsira';

  @override
  String get camera_flash => 'Flash (Flash) bεε bε bεn';

  @override
  String get camera_retake => 'Foto ta kokura';

  @override
  String get camera_confirm_food => 'Fɛnw Sɛmɛntiya';

  @override
  String get customFood_title => 'Dumuni & Recipe ka kɛɲɛ ni mɔgɔw sago ye';

  @override
  String get customFood_name_hint => 'Dish walima ingredient tɔgɔ';

  @override
  String get customFood_calories_hint => 'Kalori (kcal) .';

  @override
  String get customFood_protein_hint => 'Protéine (g) .';

  @override
  String get customFood_carbs_hint => 'Karɔti (g) .';

  @override
  String get customFood_fat_hint => 'Fasa (g) .';

  @override
  String get customFood_save => 'Save Recipe (Baarakɛcogo).';

  @override
  String get water_tracker_title => 'Ji Ladegebaga';

  @override
  String get water_daily_target => 'Don o don jiko laɲini';

  @override
  String get water_logged_today => 'Logged Bi';

  @override
  String get water_add_glass => '+250 ml Glass ye';

  @override
  String get water_add_bottle => '+500 ml Butɛri';

  @override
  String get water_custom_amount => 'Ladamuni Hakɛ';

  @override
  String get water_reminder_tip =>
      'Aw bɛ ji min tuma bɛɛ tile bɛɛ kɔnɔ walasa ka fanga sabati.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml ji 💧';
  }

  @override
  String get workout_title => 'Workout Log (Fɛɛrɛbɔsɛbɛn).';

  @override
  String get workout_add_exercise => 'Aw bɛ Workout fara a kan';

  @override
  String get workout_cardio => 'Cardio (Cardio) ye';

  @override
  String get workout_strength => 'Fanga';

  @override
  String get workout_yoga => 'Yoga & Flexibilité (Fɛɛrɛbɔcogo).';

  @override
  String get workout_duration => 'A kuntaala janya';

  @override
  String get workout_intensity => 'Intensité (A fanga bonya).';

  @override
  String get workout_calories_burned => 'Kalori minnu bɛ Jeni';

  @override
  String get workout_empty => 'Workouts si ma logged bi';

  @override
  String get workout_save_success => 'Workout kisilen don ka ɲɛ!';

  @override
  String get workout_type => 'Farikoloɲɛnajɛ suguya';

  @override
  String get workout_notes => 'Kɔlɔsiliw & Hakilijagabɔw';

  @override
  String get health_overview_title => 'Kɛnɛya & Vitals';

  @override
  String get health_heart_rate => 'Dusukun tantanni';

  @override
  String get health_blood_oxygen => 'Joli Oksizɛni (SpO2) .';

  @override
  String get health_blood_pressure => 'Tansiyɔn jiginni';

  @override
  String get health_blood_glucose => 'Joli Glucose (Glucose min bɛ joli la';

  @override
  String get health_body_temperature => 'Farikolo funteni hakɛ';

  @override
  String get health_sleep_tracking => 'Sunɔgɔ ka tugu-tugu ɲɔgɔn kɔ';

  @override
  String get health_weight_tracking => 'Kisɛya & Farikolo cogoya';

  @override
  String get health_waist_hip => 'Cɛsiri ni kɔkolo hakɛ';

  @override
  String get health_devices_hub => 'Minɛnw & Smartwatch Hub';

  @override
  String get health_sync_now => 'Kɛnɛya kunnafoniw sinsin ɲɔgɔn kan';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Sinsin laban kɛra: $time .';
  }

  @override
  String get health_manual_entry => 'Bololabaara Kɛnɛya Sɛbɛnni';

  @override
  String get health_metric_detail => 'Metric Details (Mɛtiri Details).';

  @override
  String get health_connected_sensors =>
      'Kɛnɛya Senfagabana minnu bɛ ɲɔgɔn kan';

  @override
  String get plan_title => 'Don o don bolodacogo';

  @override
  String get plan_weekly_title => 'Dɔgɔkun o dɔgɔkun kɛnɛyako bolodalen';

  @override
  String get plan_calorie_target => 'Kalori Laɲini';

  @override
  String get plan_water_target => 'Jiko Laɲini';

  @override
  String get plan_step_target => 'Taabolo Laɲini';

  @override
  String get plan_sleep_target => 'Sunɔgɔ Laɲini';

  @override
  String get plan_meal_suggestions => 'Dumunikɛcogo ladilikanw';

  @override
  String get plan_healthy_habits => 'Kɛnɛya Degunw & Ladilikanw';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach ka ladilikanw';

  @override
  String get plan_generated_title =>
      'Don o don bolodacogo min bɛ kɛ mɔgɔ yɛrɛ ye';

  @override
  String get profile_title => 'Profil (profil) ye';

  @override
  String get profile_edit => 'Profil (Profil) ladilan';

  @override
  String get profile_name => 'Tɔgɔ';

  @override
  String get profile_age => 'Si hakɛ';

  @override
  String get profile_gender => 'Cɛya ni musoya';

  @override
  String get profile_height => 'Kɔrɔya';

  @override
  String get profile_weight => 'Kisɛya';

  @override
  String get profile_goal => 'Laɲini fɔlɔ';

  @override
  String get profile_activity_level => 'Baarakɛcogo Nivo';

  @override
  String get profile_stats => 'N ka Wellness Stats';

  @override
  String get profile_saved => 'Profil kura kɛra ka ɲɛ';

  @override
  String get profile_bmi => 'Farikolo girinya hakɛ (IMC) .';

  @override
  String get profile_membership => 'Mɔgɔ minnu ye tɔndenw ye';

  @override
  String get settings => 'Segin-ka-bɔnyew';

  @override
  String get preferences_habits => 'FƐƐRƐW & DELINW';

  @override
  String get appearance_theme => 'Yecogo & Barokun';

  @override
  String get appearance_theme_sub =>
      'Dibi, Yeelen, Sistɛmu cogoya & App kɔkanna sugandiliw';

  @override
  String get permissions => 'Iziniw & Sistɛmu sɔrɔli';

  @override
  String get permissions_sub =>
      'Kɛnɛya Jɛɲɔgɔnya, Sensɔrɔlanw, GPS, Laseliw & Kamera';

  @override
  String get reminders_notifications => 'Hakilijiginw & Ladɔnniyaliw';

  @override
  String get reminders_sub =>
      'Dumuni waati, ji, girinya sɛgɛsɛgɛli & hakilijiginw sunɔgɔ waati';

  @override
  String get units_of_measurement => 'Sumanikɛlanw (Unit de Sumanikɛlan).';

  @override
  String get units_sub =>
      'Metiriki (kg, santimɛtɛrɛ, mililitiri, kilomɛtɛrɛ) walima Imperial (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'App Language (Aplikasi) Kan';

  @override
  String get language_sub =>
      'Angilɛkan, हिन्दी (Hindikan), Hingilɛkan & diɲɛ kan 195+';

  @override
  String get home_screen_widgets =>
      'Widgets (Widgets) minnu bɛ kɛ ɛkran so kɔnɔ';

  @override
  String get widgets_sub =>
      'Android widgets ɲɛnamaw: Hub, Steps, Ji, Balocogo & Mascot';

  @override
  String get wear_os_watch_app => 'Aw ye OS Watch App don';

  @override
  String get wear_os_sub =>
      'Smartwatch taamaɲɔgɔn, tiles, gɛlɛyaw & vitals ɲɛnamaw';

  @override
  String get goals_wellness => 'LAƝINIW & ƝƐNABƆLI ƝƐNABƆLI';

  @override
  String get nutrition_targets => 'Balocogo Laɲiniw & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Kalori laɲini, farikolojɔli dumuni, witaminiw, tulu & ji laɲini';

  @override
  String get weekly_recap => 'Dɔgɔkun o dɔgɔkun kɛnɛyako seginnkanni';

  @override
  String get weekly_recap_sub =>
      'Tile 7 kalori hakɛ cayalenba, macro ratio & don ɲuman';

  @override
  String get streaks_milestones => 'Streaks & Milestones (Baarakɛlaw) ye';

  @override
  String get streaks_sub => 'Active fleurs streaks, badges & achievements';

  @override
  String get connected_devices => 'MINƐNW ƝƐNABƆLI & ÉCOSYSTÈME';

  @override
  String get devices_hub => 'Minɛnw & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Kɛnɛya Jɛɲɔgɔnya, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Lamini & Weelecogo';

  @override
  String get surroundings_sub =>
      'Fiɲɛ hakɛ (AQI), UV index & waati jiko ladilikanw';

  @override
  String get bloomi_pro => 'Bloomi Pro Abonnés (Abonné) ye';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 so ekran widgets & vitals nɔfɛtaama';

  @override
  String get about_security => 'ƝƐNABƆLI & LAKANANIYA';

  @override
  String get about_bloomi => 'Bloomi ko la';

  @override
  String get about_bloomi_sub =>
      'Build specifications, version, attributions (daɲɛw sigicogo), a jiracogo';

  @override
  String get privacy_policy => 'Kunnafoni dogolenw maracogo';

  @override
  String get privacy_policy_sub => 'Offline-fɔlɔ, on-device data architecture';

  @override
  String get terms_conditions => 'Sariyaw ni sariyakolow';

  @override
  String get terms_conditions_sub =>
      'Baarakɛcogo sariyaw ani kɛnɛya sabatili laadilikanw';

  @override
  String get delete_account => 'Konte & Donanw bɔli';

  @override
  String get delete_account_sub =>
      'Sigida SQLite kunnafoniw ni sankaba kɔkannakow foni cogo min tɛ se ka segin kɔ';

  @override
  String get healthy_habits =>
      'Aw bɛ kɛnɛya delinankow jɔ minnu ka nɔgɔn, minnu bɛ mɛn';

  @override
  String get all_logs => 'N ka Data & Logs minnu bɛ tugu ɲɔgɔn kɔ';

  @override
  String get search_language =>
      'Ɲini ka kɛɲɛ ni kan walima fasokan sɛbɛnni ye...';

  @override
  String get languages_available => 'Kan minnu bɛ sɔrɔ';

  @override
  String get no_matching_languages =>
      'Kan minnu bɛ Bɛn ɲɔgɔn ma, olu si ma Sɔrɔ';

  @override
  String get try_searching =>
      'A ɲini ka ɲinini kɛ ni i yɛrɛ ka sɛbɛnni ye walima ni tubabukan sɛbɛnni ye';

  @override
  String get partially_translated => 'A yɔrɔ dɔ bamanankanna';

  @override
  String get complete_translation => 'A dafalen don';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Kan sigilen bɛ $name ( $nativeName ) kan .';
  }

  @override
  String get surroundings_title => 'Lamini & Lamini';

  @override
  String get surroundings_aqi => 'Fiɲɛ hakɛ jateminɛ';

  @override
  String get surroundings_uv => 'Index UV (UV Index) ye';

  @override
  String get surroundings_temp => 'Funteni hakɛ';

  @override
  String get surroundings_humidity => 'Nɛnɛ hakɛ';

  @override
  String get surroundings_hydration_advice =>
      'Aw bɛ to ji la ka ɲɛ sisan waati cogoyaw la.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Dumuni ɲinini';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑 ye';

  @override
  String get food_quick_water => 'Aw bɛ Ji fara a kan';

  @override
  String get food_quick_custom => 'Dumuni min bɛ kɛ ka kɛɲɛ ni mɔgɔw sago ye';

  @override
  String get surroundings_good => 'Koɲuman don';

  @override
  String get surroundings_moderate => 'Damatɛmɛnen';

  @override
  String get surroundings_unhealthy => 'Kɛnɛyako tɛ';

  @override
  String get notifications_title => 'Ladɔnniyaliw & Kɔlɔsiliw';

  @override
  String get notifications_empty => 'Ladɔnniyali kura si tɛ yen';

  @override
  String get notifications_mark_read => 'Marka Bɛɛ la i n’a fɔ Kalan';

  @override
  String get notifications_clear => 'Clear Bɛɛ';

  @override
  String get reminders => 'Hakililajigin kɛcogo';

  @override
  String get notifications => 'Ladɔnniyaliw';

  @override
  String get reminders_breakfast_title => 'Dumuni Hakililajigin 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Sɔgɔma ɲuman! sɔgɔmada dumuni nafama waati $time la .';
  }

  @override
  String get reminders_lunch_title => 'Lunch Hakilijigin 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Aw ye aw jɔ dɔɔnin ka tilelafana dafalen diyabɔ, min bɛ hakili la $time .';
  }

  @override
  String get reminders_dinner_title => 'Suman Hakilijigin 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Waati min bɛ kɛ sufɛdumuni nɔgɔman na, min bɛ mɔgɔ wasa $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧 ye';

  @override
  String reminders_water_body(Object time) {
    return 'Waati min na ka jifilen kura min! ( $time ) .';
  }

  @override
  String get reminders_weight_title => 'Dɔgɔkun o dɔgɔkun girinya ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Aw ye aw ka dɔgɔkun farikolo jateminɛw lajɛ Bloomi ( $time ) kan.';
  }

  @override
  String get reminders_sleep_title => 'Sunɔgɔ Fiɲɛ-bɔn 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Aw ye aw lafiya ani ka aw labɛn sunɔgɔ lafiyalen kama ( $time ).';
  }

  @override
  String get onboard_welcome => 'Aw ni ce Bloomi la';

  @override
  String get onboard_sub =>
      'Aw ka kɛnɛya ni balodɛsɛ taamaɲɔgɔn teriyalen, min tɛ ɛntɛrinɛti kan fɔlɔ.';

  @override
  String get onboard_get_started => 'Aw ye a daminɛ';

  @override
  String get onboard_sign_in => 'I ka don a kɔnɔ';

  @override
  String get onboard_skip => 'Tɛmɛn';

  @override
  String get onboard_choose_goal =>
      'Aw ka kɛnɛya sabatili kuntilenna fɔlɔ ye mun ye?';

  @override
  String get onboard_goal_weight_loss => 'Kisɛya dɔgɔyali nɔgɔya la';

  @override
  String get onboard_goal_muscle => 'Muscle Gain & Fanga sɔrɔli';

  @override
  String get onboard_goal_energy => 'Don o don fanga & Vitality';

  @override
  String get onboard_goal_habits => 'Hakilila dumuni kɛnɛman';

  @override
  String get onboard_about_you => 'Aw ye aw yɛrɛ ko fɔ an ye';

  @override
  String get onboard_lifestyle => 'Aw ka don o don kow';

  @override
  String get onboard_permissions_title => 'Iziniw & Sistɛmu sɔrɔli';

  @override
  String get onboard_permissions_sub =>
      'Aw bɛ se ka sinsinnanw, farikoloɲɛnajɛw ani hakilijiginw di.';

  @override
  String get onboard_plan_ready_title => 'Aw ka Laadalata Labɛn Labɛnna!';

  @override
  String get onboard_plan_ready_sub =>
      'An ye balodɛsɛ ni kɛnɛya sabatili siraba dɔ labɛn min ka nɔgɔn, min bɛ kɛ mɔgɔ kelen-kelen bɛɛ ye, aw dɔrɔn de kama.';

  @override
  String get onboard_enter_bloomi => 'Don Bloomi kɔnɔ';

  @override
  String get insights_weekly_report => 'Dɔgɔkun o dɔgɔkun kɛnɛyako seginnkanni';

  @override
  String insights_best_day(Object day) {
    return 'Don min ka fisa ni ɲɔgɔndan ye: $day .';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones (Baarakɛlaw) ye';

  @override
  String insights_unlocked_on(Object date) {
    return 'A dabɔra $date kan .';
  }

  @override
  String get insights_keep_going => 'Aw ka to ka ɲɛtaa kabakoma kɛ!';

  @override
  String get widgets_title => 'Widgets (Widgets) minnu bɛ kɛ ɛkran so kɔnɔ';

  @override
  String widgets_active_count(Object count) {
    return 'Widɛti baarakɛtaw: $count .';
  }

  @override
  String get widgets_hub_title => 'Bloomi ka kɛnɛyaso';

  @override
  String get widgets_steps_title => 'Taabolow & Active Ring';

  @override
  String get widgets_water_title =>
      'Hydration Quick Log (Jɛkulu min bɛ wele ko Quick Log).';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Baarakɛɲɔgɔn';

  @override
  String get wear_os_title => 'Aw bɛ OS Smartwatch don';

  @override
  String get wear_os_connected => 'A bɛ tali kɛ Watch la';

  @override
  String get wear_os_sync => 'Sync Watch Data (Kɔlɔsili Donanw).';

  @override
  String get theme_title => 'Yecogo & Barokun';

  @override
  String get theme_mode => 'Barokun cogoya';

  @override
  String get theme_light => 'Yeelen';

  @override
  String get theme_dark => 'Dibi donna';

  @override
  String get theme_system => 'Sisεmεti Dafalen';

  @override
  String get theme_background_palette => 'Palette de fond d\'écran';

  @override
  String get units_title => 'Sumanikɛlanw (Unit de Sumanikɛlan).';

  @override
  String get units_metric => 'Metiriki (kg, santimɛtɛrɛ, mililitiri) .';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz) Bamako, Mali.';

  @override
  String get home_unable_load => 'Se tɛ ka dashboard doni';

  @override
  String get home_health_permission_req =>
      'Kɛnɛyako Jɛɲɔgɔnya yamaruya wajibiyalen don';

  @override
  String get home_health_permission_desc =>
      'Bloomi bɛ Health Connect ka yamaruya ɲini walasa ka senna-tɛgɛrɛ lakikaw sama, dusukun tantanni, ani ka mobili so widgetw sinsin waati yɛrɛ la.';

  @override
  String get home_allow_health => 'A to Kɛnɛya ka Jɛɲɔgɔnya kɛ';

  @override
  String get home_ready_mindful_day =>
      'Yala i labɛnnen don hakilitigi don kama wa? ✨';

  @override
  String get home_quick_add => 'Teliya ka fara a kan';

  @override
  String get home_live_gps => 'GPS ɲɛnama';

  @override
  String get home_calories_remaining_label => 'KALORIW MIN BƐ TO';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Dumuni : $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Pompier pour Ji Tracker 💧';

  @override
  String get home_water_goal_reached => 'Don o don laɲini sera 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ka don o don kuntilenna';
  }

  @override
  String get home_details => 'Fɛn minnu bɛ ɲɛfɔli kɛ';

  @override
  String get home_upgrade_plan_desc =>
      'Yɛlɛma ka don o don laɲiniw & AI labɛn da wuli';

  @override
  String get home_unlock => 'Unlock 👑';

  @override
  String get home_quick_log_hint => 'Aw bɛ kɛnɛyako sɛbɛn dɔ sɛbɛn joona';

  @override
  String get food_serving_size => 'Baarakɛcogo hakɛ';

  @override
  String get food_serving_grams => 'Baara kɛli (g) .';

  @override
  String get food_number_servings => 'Baarakɛlaw hakɛ';

  @override
  String get food_calories_per_serving =>
      'Kalori minnu bɛ sɔrɔ dumuni kelen na';

  @override
  String get food_recipe_ingredients => 'Fɛn minnu bɛ kɛ ka a kɛ';

  @override
  String get food_recipe_add_ingredient => 'Aw bɛ Ingredient fara a kan';

  @override
  String get food_recipe_directions => 'Ladilikanw & Kɔlɔsiliw';

  @override
  String get food_recipe_total => 'Total Recipe Balocogo ɲuman';

  @override
  String get food_recipe_per_serving => 'Per Serving Balocogo ɲuman';

  @override
  String get food_recipe_saved_toast => 'Dumuni ladamulenw kisilen don ka ɲɛ!';

  @override
  String get food_barcode_found => 'Produit Sɔrɔla!';

  @override
  String get food_barcode_not_found_desc =>
      'An ma se ka nin barɔdi in sɔrɔ kunnafonidilan dafalen kɔnɔ. Aw bɛ se k’a fara a kan i n’a fɔ dumuni min bɛ kɛ ka kɛɲɛ ni mɔgɔw sago ye.';

  @override
  String get food_add_custom_btn => 'Aw bɛ Dumuni Ladamulenw fara a kan';

  @override
  String get food_scan_again => 'Scan Segin ka Kɛ';

  @override
  String get food_review_items => 'Dumuni minnu kɔlɔsira, olu lajɛ';

  @override
  String get food_review_hint =>
      'Aw bɛ hakɛw ladilan walima ka fɛn o fɛn dɔn, aw bɛ o bɔ yen';

  @override
  String get food_log_selected => 'Log Dumuni sugandilenw';

  @override
  String get food_favourites_title => 'Dumuni minnu ka di kosɛbɛ';

  @override
  String get food_recent_title => 'Dumuni minnu bɛ sɔrɔ kɔsa in na';

  @override
  String get food_no_favourites =>
      'Dumuni duman si tɛ yen fɔlɔ. Dumuni fɛn o fɛn bɛ i dusukun digi walasa ka a mara yan.';

  @override
  String get food_no_recents =>
      'Dumuni minnu tigɛra kɔsa in na, olu si ma sɔrɔ.';

  @override
  String get food_nutrition_details_title => 'Don o don balocogo ɲɛfɔli';

  @override
  String get food_macro_protein_label => 'Protéines (banakisɛfagalanw) tiɲɛni';

  @override
  String get food_macro_carbs_label => 'Carbs (Carbs) ka tiɲɛni';

  @override
  String get food_macro_fat_label => 'Fasa Kari';

  @override
  String get food_macro_fiber_label => 'Fibrew ka tiɲɛni';

  @override
  String get food_daily_target_comparison => 'Laɲiniw sangali';

  @override
  String food_target_label(Object target) {
    return 'Laɲini: $target ye.';
  }

  @override
  String get food_edit_entry => 'Edit Diary Entry (Dari sɛbɛnni) ladilan';

  @override
  String get food_delete_entry => 'Delete Entry (Dɔnkilidacogo) Bɔ';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal ye';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ka $target ml';
  }

  @override
  String get water_intake_history => 'Bi Jiko Logs';

  @override
  String get water_no_logs_today =>
      'Ji si ma tigɛ fɔlɔ bi. Hydrate ani ka butɔni teliya dɔ digi min bɛ fara a kan!';

  @override
  String get water_adjust_goal => 'Don o don kuntilenna ladilan';

  @override
  String get health_connect_banner =>
      'A bɛ tali kɛ Health Connect (Kɛnɛya Jɛɲɔgɔnya) la';

  @override
  String get health_vitals_summary => 'Don o don kɛnɛyako nafamafɛnw';

  @override
  String get health_latest_heart_rate => 'Dusukun tantanni laban';

  @override
  String get health_latest_bp => 'Tansiyɔn jiginni';

  @override
  String get health_latest_spo2 => 'Joli Oksizɛni';

  @override
  String get health_latest_glucose => 'Joli Glucose (Glucose min bɛ joli la';

  @override
  String get health_latest_weight => 'Kisɛya';

  @override
  String get health_latest_sleep => 'Sunɔgɔ waati janya';

  @override
  String get health_add_manual => 'Aw bɛ Manuel Measurement fara a kan';

  @override
  String get health_history_trends => 'Tariku taabolo';

  @override
  String get health_sync_success => 'Kɛnɛya kunnafoniw sinsinna ka ɲɛ!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours sanga $mins miniti';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilo';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm ye';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % ye .';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val miligaramu/dL';
  }

  @override
  String get health_devices_title => 'Minɛnw & Wearables minnu bɛ ɲɔgɔn kan';

  @override
  String get health_devices_desc =>
      'Aw bɛ smartwatch fila-fila, farikoloɲɛnajɛ taamasiyɛnw ani kɛnɛyako senfɛfɛnw ɲɛnabɔ.';

  @override
  String get health_workout_editor_title => 'Edit Workout (Labɛnni kɛcogo).';

  @override
  String get health_workout_name_label => 'Workout Tɔgɔ';

  @override
  String get health_workout_duration_label => 'A kuntaala (minitiw) .';

  @override
  String get health_workout_calories_label =>
      'Kalori hakɛ jateminɛlenw (kcal) .';

  @override
  String get health_workout_date_label => 'Don ni Waati';

  @override
  String get plan_daily_wellness_roadmap =>
      'Aw ka sirabakan-sɛbɛn min bɛ kɛ ka kɛɲɛ ni aw yɛrɛ ta ye';

  @override
  String get plan_morning_routine => 'Sɔgɔmadafɛla kɛcogo';

  @override
  String get plan_afternoon_routine => 'Tilenbaliya Kɛnɛya';

  @override
  String get plan_evening_routine => 'Sufɛ Fiɲɛ-Dɔgɔya';

  @override
  String get plan_coach_badge => 'Bloomi AI ka lakɔliden';

  @override
  String get plan_weekly_overview => 'Tile 7 Kɛnɛyako Sinsin';

  @override
  String get plan_targets_title => 'Wellness Laɲiniw & Laɲiniw';

  @override
  String get plan_calorie_budget_label => 'Don o don kalori hakɛ Budget';

  @override
  String get plan_water_budget_label => 'Don o don Jiko Laɲini';

  @override
  String get plan_step_budget_label => 'Don o don taamaʃyɛn Laɲini';

  @override
  String get plan_macro_split_label =>
      'Balo nafama hakɛ (Macronutrient Ratio).';

  @override
  String get profile_personal_details => 'Mɔgɔ yɛrɛ ka kunnafoniw';

  @override
  String get profile_body_stats => 'Farikolo Sumanikɛlanw';

  @override
  String get profile_app_preferences =>
      'Preferences & App Settings (Aplikasiw labɛncogo).';

  @override
  String get profile_edit_name_hint => 'I tɔgɔ';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Janya ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Kisɛ ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Si hakɛ';

  @override
  String get profile_gender_male => 'Cɛ';

  @override
  String get profile_gender_female => 'Muso ye';

  @override
  String get profile_gender_other => 'Wɛrɛw / A ka fisa i kana fɔ';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Fɛɛrɛbɔ dɔɔnin walima farikoloɲɛnajɛ tɛ kɛ) .';

  @override
  String get profile_activity_light =>
      'A bɛ kɛ dɔɔni dɔɔni (tile 1-3/dɔgɔkun) .';

  @override
  String get profile_activity_moderate =>
      'A bɛ kɛ ka caya (tile 3-5/dɔgɔkun) .';

  @override
  String get profile_activity_very =>
      'A bɛ baara kɛ kosɛbɛ (tile 6-7/dɔgɔkun) .';

  @override
  String get settings_wear_os_header => 'Aw ye OS Companion App don';

  @override
  String get settings_wear_os_desc =>
      'Bloomi tile ni gɛlɛya don aw ka Wear OS watɛsi kan walasa ka kalori, ji ani senna-tɛgɛrɛw lajɛ.';

  @override
  String get settings_widgets_header => 'Widgets Android minnu bɛ ɲɔgɔn sɔrɔ';

  @override
  String get settings_widgets_desc =>
      'I ka waati yɛrɛyɛrɛ widgets pin i ka minɛnw ka so ekran kan walasa ka kunnafoni kuraw sɔrɔ o yɔrɔnin bɛɛ.';

  @override
  String get settings_about_header => 'Bloomi ko la';

  @override
  String get settings_about_version => 'A bɔcogo 1.0.0';

  @override
  String get settings_about_build => 'Aw ye 100 jɔ';

  @override
  String get settings_about_credits =>
      'A dilannen don ni ladonni ye hakili la, ɲɛnamaya kɛnɛman kama.';

  @override
  String get settings_terms_header => 'Sariyaw ni sariyakolow';

  @override
  String get settings_privacy_header => 'Kunnafoni dogolenw maracogo';

  @override
  String get settings_delete_header => 'Konte & Donanw bɔli';

  @override
  String get settings_delete_warning =>
      'O wale in tɛ se ka kɔsegin. I ka dumuniw, farikoloɲɛnajɛw, vitals ani profile bɛɛ bɛna bɔ yen kudayi.';

  @override
  String get settings_delete_confirm_btn => 'Kudayi Delete';

  @override
  String get onboard_welcome_headline => 'Aw ni ce Bloomi ✨ la';

  @override
  String get onboard_welcome_tagline =>
      'Kɛnɛya nɔfɛtaama nɔgɔman, hakili la min dabɔra i ka ɲɛnamaya lamini na.';

  @override
  String get onboard_step_about => 'Aw ko la';

  @override
  String get onboard_step_goals => 'Aw ka Laɲiniw';

  @override
  String get onboard_step_lifestyle => 'Don o don delinakow';

  @override
  String get onboard_step_permissions => 'Iziniw bɛ sɔrɔ';

  @override
  String get onboard_step_plan => 'Labɛnnen don!';

  @override
  String get onboard_health_connect_perm => 'Kɛnɛya Jɛɲɔgɔnya Sɔrɔ';

  @override
  String get onboard_step_sensors_perm => 'Sensɔrɔlan jatebɔlan';

  @override
  String get onboard_notif_perm =>
      'Hakililajiginw & Ladɔnniyali minnu bɛ kɛ ni hakili ye';

  @override
  String get onboard_camera_perm =>
      'Kamera (Barcode & Dumuni sɛgɛsɛgɛlikɛlan) .';

  @override
  String get onboard_grant_permissions => 'Iziniw Di';

  @override
  String get onboard_continue_dashboard => 'Dashboard da wuli';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges (jibɔlanw).';

  @override
  String get notif_channel_hydration_desc =>
      'Ji hakilijigin nɔgɔmanw tile bɛɛ kɔnɔ';

  @override
  String get notif_channel_nutrition_name => 'Dumuni & Balocogo Hakilijiginw';

  @override
  String get notif_channel_nutrition_desc =>
      'Dumunikɛyɔrɔ, tilelafana ani sufɛdumuni hakilijigin lasɔminiw';

  @override
  String get notif_channel_steps_name => 'Senna-tɛgɛrɛ-yɔrɔ-ko';

  @override
  String get notif_channel_steps_desc =>
      'Seliw ni u sera don o don senna-tɛgɛrɛ laɲiniw ma';

  @override
  String get notif_channel_vitals_name => 'Kɛnɛya & Vitals Sɛgɛsɛgɛliw';

  @override
  String get notif_channel_vitals_desc =>
      'Kisɛya ni sunɔgɔ waati fiɲɛbɔ-hakilijiginw';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m ka kɛ';

  @override
  String get notif_action_log_meal => '🥗 Log Dumuni';

  @override
  String get language => 'Kanko';

  @override
  String get share => 'Aw ka tila';

  @override
  String common_days(Object count) {
    return '$count d tɛmɛnen kɔ';
  }
}
