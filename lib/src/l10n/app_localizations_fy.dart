// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Western Frisian (`fy`).
class AppLocalizationsFy extends AppLocalizations {
  AppLocalizationsFy([String locale = 'fy']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Thús';

  @override
  String get nav_today => 'Hjoed';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Food';

  @override
  String get nav_food_diary => 'Food Diary';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Health';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Bewarje';

  @override
  String get cancel => 'Ofbrekke';

  @override
  String get delete => 'Wiskje';

  @override
  String get edit => 'Bewurkje';

  @override
  String get done => 'Dien';

  @override
  String get close => 'Slút';

  @override
  String get back => 'Werom';

  @override
  String get next => 'Folgjende';

  @override
  String get continue_btn => 'Trochgean';

  @override
  String get confirm => 'Befêstigje';

  @override
  String get search => 'Sykje';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Allegear';

  @override
  String get active => 'Aktyf';

  @override
  String get today => 'Hjoed';

  @override
  String get yesterday => 'Juster';

  @override
  String get tomorrow => 'Moarn';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Fuortsmite';

  @override
  String get refresh => 'Ferfarskje';

  @override
  String get retry => 'Opnij besykje';

  @override
  String get error => 'Flater';

  @override
  String get success => 'Sukses';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Gjin gegevens beskikber';

  @override
  String get offline => 'Offline modus';

  @override
  String get offline_sub =>
      'Feroarings sille syngronisearje ienris opnij ferbûn';

  @override
  String get undo => 'Ungedien meitsje';

  @override
  String get portion => 'Portion';

  @override
  String get quantity => 'Quantity';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Dúdlik';

  @override
  String get select => 'Selektearje';

  @override
  String get apply => 'Oanfreegje';

  @override
  String get reset => 'Weromsette';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get optional => 'Opsjoneel';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Koalhydraten';

  @override
  String get fat => 'Fet';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Wetter';

  @override
  String get steps => 'Stappen';

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
  String get inches => 'yn';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Serving';

  @override
  String get servings => 'Servings';

  @override
  String get serving_size => 'Serving Grutte';

  @override
  String get per_100g => 'per 100 g';

  @override
  String get india => 'Yndia';

  @override
  String get asia => 'Azië';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Midden-Easten';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amearika';

  @override
  String get home_title => 'Thús';

  @override
  String get home_greeting_morning => 'Goeiemoarn';

  @override
  String get home_greeting_afternoon => 'Goeiemiddei';

  @override
  String get home_greeting_evening => 'Goeie jûn';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen streak',
      one: '1 dei streak',
      zero: '0 dagen streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Burned';

  @override
  String get home_calories_budget => 'Kalorie budzjet';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal oer';
  }

  @override
  String get home_water_title => 'Daily Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Stappen rûnen';

  @override
  String get home_quick_actions => 'Quick aksjes';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log wetter';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Gewicht';

  @override
  String get home_insights_title => 'Hjoeddedei ynsjoch';

  @override
  String get home_quote =>
      'Lytse sûne karren meitsje bloeiende transformaasjes.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Omjouwing & Loft';

  @override
  String get home_notifications => 'Notifikaasjes';

  @override
  String get home_daily_score => 'Daily Wellness Score';

  @override
  String get home_view_all => 'Sjoch Alles';

  @override
  String get food_diary_title => 'Food Diary';

  @override
  String get food_breakfast => 'Breakfast';

  @override
  String get food_lunch => 'Lunch';

  @override
  String get food_dinner => 'Dinner';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Foegje iten ta';

  @override
  String get food_edit_food => 'Food bewurkje';

  @override
  String get food_add_breakfast => 'Add Breakfast';

  @override
  String get food_add_lunch => 'Add Lunch';

  @override
  String get food_add_dinner => 'Add Dinner';

  @override
  String get food_add_snack => 'Snack tafoegje';

  @override
  String get food_total_calories => 'Totaal calorieën';

  @override
  String get food_empty_meal =>
      'Der binne noch gjin iten oanmeld foar dit miel';

  @override
  String get food_empty_diary => 'Gjin meals oanmeld foar dizze dei';

  @override
  String get food_log_first_meal =>
      'Tik op + om jo earste lekkere miel oan te melden';

  @override
  String get food_quick_add => 'Fluch tafoegje';

  @override
  String get food_search_hint => 'Sykje skûtels, fruit, dal, roti ...';

  @override
  String get food_custom_recipe => 'Oanpast iten en resept';

  @override
  String get food_scan_barcode => 'Barcode scannen';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Resinte Foods';

  @override
  String get food_favourites => 'Favorites';

  @override
  String get food_macro_summary => 'Makronutrient ferdieling';

  @override
  String get food_delete_meal_confirm =>
      'Binne jo wis dat jo dit item fuortsmite wolle?';

  @override
  String get food_item_deleted => 'Food item fuorthelle';

  @override
  String get food_remaining => 'oerbleaun';

  @override
  String get food_consumed => 'konsumearre';

  @override
  String food_of_target(Object target) {
    return 'fan $target kcal';
  }

  @override
  String get foodSearch_title => 'Sykje Foods';

  @override
  String get foodSearch_scan_barcode => 'Barcode scannen';

  @override
  String get foodSearch_take_photo => 'Foto Snap Food';

  @override
  String get foodSearch_custom_food => 'Oanpaste iten meitsje';

  @override
  String get foodSearch_recent_searches => 'Resinte Searches';

  @override
  String get foodSearch_popular => 'Populêre gerjochten';

  @override
  String get foodSearch_no_results =>
      'Gjin iten dy\'t oerienkomme mei jo sykopdracht';

  @override
  String get barcode_title => 'Barcode scanner';

  @override
  String get barcode_align => 'Rjochtsje de barcode yn it kameraframe út';

  @override
  String get barcode_not_found => 'Produkt net fûn yn databank';

  @override
  String get barcode_premium_feature =>
      'Barcode skennen is beskikber mei Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Nim in dúdlike foto fan jo skûtel';

  @override
  String get camera_analysing => 'Analyse fan itenplaat ...';

  @override
  String get camera_detected => 'Opspoard items';

  @override
  String get camera_flash => 'Skeakelje Flash';

  @override
  String get camera_retake => 'Foto opnij';

  @override
  String get camera_confirm_food => 'Befêstigje Items';

  @override
  String get customFood_title => 'Oanpast iten en resept';

  @override
  String get customFood_name_hint => 'Gerjocht of yngrediïnt namme';

  @override
  String get customFood_calories_hint => 'Kalorie (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Koalhydraten (g)';

  @override
  String get customFood_fat_hint => 'Fet (g)';

  @override
  String get customFood_save => 'Resept bewarje';

  @override
  String get water_tracker_title => 'Wetter Tracker';

  @override
  String get water_daily_target => 'Deistich Hydration Goal';

  @override
  String get water_logged_today => 'Hjoed oanmeld';

  @override
  String get water_add_glass => '+250 ml Glês';

  @override
  String get water_add_bottle => '+500 ml flesse';

  @override
  String get water_custom_amount => 'Oanpaste bedrach';

  @override
  String get water_reminder_tip =>
      'Drink de hiele dei geregeld wetter foar fêste enerzjy.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml wetter 💧';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Add Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Sterkte';

  @override
  String get workout_yoga => 'Yoga en fleksibiliteit';

  @override
  String get workout_duration => 'Duration';

  @override
  String get workout_intensity => 'Yntensiteit';

  @override
  String get workout_calories_burned => 'Kalorieën ferbaarnd';

  @override
  String get workout_empty => 'Gjin workouts hjoed oanmeld';

  @override
  String get workout_save_success => 'Oefening mei sukses bewarre!';

  @override
  String get workout_type => 'Soart workout';

  @override
  String get workout_notes => 'Notysjes & refleksjes';

  @override
  String get health_overview_title => 'Health & Vitals';

  @override
  String get health_heart_rate => 'Heart Rate';

  @override
  String get health_blood_oxygen => 'Bloedsoerstof (SpO2)';

  @override
  String get health_blood_pressure => 'Bloeddruk';

  @override
  String get health_blood_glucose => 'Bloed glukoaze';

  @override
  String get health_body_temperature => 'Body Temperatuer';

  @override
  String get health_sleep_tracking => 'Sleep Tracking';

  @override
  String get health_weight_tracking => 'Gewicht & Body Gearstalling';

  @override
  String get health_waist_hip => 'Taille-to-hip-ferhâlding';

  @override
  String get health_devices_hub => 'Apparaten en Smartwatch Hub';

  @override
  String get health_sync_now => 'Syngronisearje sûnensgegevens';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Lêst syngronisearre: $time';
  }

  @override
  String get health_manual_entry => 'Hânlieding Health Entry';

  @override
  String get health_metric_detail => 'Metryske details';

  @override
  String get health_connected_sensors => 'Ferbûn Health Sensors';

  @override
  String get plan_title => 'Deistich Plan';

  @override
  String get plan_weekly_title => 'Wyklikse Wellness Plan';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Hydration Target';

  @override
  String get plan_step_target => 'Stap Doel';

  @override
  String get plan_sleep_target => 'Sleep Target';

  @override
  String get plan_meal_suggestions => 'Meal Suggestjes';

  @override
  String get plan_healthy_habits => 'Sûne gewoanten en tips';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Oanbefellings';

  @override
  String get plan_generated_title => 'Persoanlik deistich skema';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Profile bewurkje';

  @override
  String get profile_name => 'Namme';

  @override
  String get profile_age => 'Age';

  @override
  String get profile_gender => 'Geslacht';

  @override
  String get profile_height => 'Hichte';

  @override
  String get profile_weight => 'Gewicht';

  @override
  String get profile_goal => 'Primêr doel';

  @override
  String get profile_activity_level => 'Aktiviteitsnivo';

  @override
  String get profile_stats => 'Myn Wellness Statistyk';

  @override
  String get profile_saved => 'Profyl is mei súkses bywurke';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Lidmaatskip';

  @override
  String get settings => 'Ynstellings';

  @override
  String get preferences_habits => 'Foarkarren & gewoanten';

  @override
  String get appearance_theme => 'Uterlik & Tema';

  @override
  String get appearance_theme_sub =>
      'Opsjes foar tsjuster, ljocht, systeemmodus en app-eftergrûn';

  @override
  String get permissions => 'Tagongsrjochten en systeemtagong';

  @override
  String get permissions_sub =>
      'Health Connect, stapsensors, GPS, notifikaasjes en kamera';

  @override
  String get reminders_notifications => 'Herinneringen en notifikaasjes';

  @override
  String get reminders_sub =>
      'Mealtiden, wetter, ynchecken foar gewicht en herinnerings foar bêdtiid';

  @override
  String get units_of_measurement => 'Maat ienheden';

  @override
  String get units_sub =>
      'Metrysk (kg, cm, ml, km) of Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Taal';

  @override
  String get language_sub =>
      'Ingelsk, हिन्दी (Hindi), Hinglish en 195+ wrâldwide talen';

  @override
  String get home_screen_widgets => 'Home Screen Widgets';

  @override
  String get widgets_sub =>
      'Live Android-widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch-begelieder, tegels, komplikaasjes en libbensgegevens';

  @override
  String get goals_wellness => 'DOELSTELLINGEN EN WELLNESS INSIGHTS';

  @override
  String get nutrition_targets => 'Nutrition Targets & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Kaloriedoel, proteïne, kohrhydraten, fet en wetterdoel';

  @override
  String get weekly_recap => 'Wyklikse Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-dagen calorie gemiddelde, makro ratio & bêste dei';

  @override
  String get streaks_milestones => 'Streken en mylpalen';

  @override
  String get streaks_sub => 'Aktive bloesemstrepen, badges en prestaasjes';

  @override
  String get connected_devices => 'Ferbûne apparaten & ECOSYSTEM';

  @override
  String get devices_hub => 'Apparaten en Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Omjouwing & Wetter';

  @override
  String get surroundings_sub =>
      'Luchtkwaliteit (AQI), UV-yndeks en tips foar wetterhydratisaasje';

  @override
  String get bloomi_pro => 'Bloomi Pro-abonnemint';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets op it thússkerm en it folgjen fan vitalen';

  @override
  String get about_security => 'OER & FEILIGHEID';

  @override
  String get about_bloomi => 'Oer Bloom';

  @override
  String get about_bloomi_sub => 'Build spesifikaasjes, ferzje, attributions';

  @override
  String get privacy_policy => 'Privacybelied';

  @override
  String get privacy_policy_sub =>
      'Offline-earste, op-apparaat gegevensarsjitektuer';

  @override
  String get terms_conditions => 'Betingsten & Kondysjes';

  @override
  String get terms_conditions_sub =>
      'Betingsten fan tsjinst en wellness rjochtlinen';

  @override
  String get delete_account => 'Account en gegevens wiskje';

  @override
  String get delete_account_sub =>
      'Wiskje lokale SQLite-gegevens en wolk-backups irreversibel';

  @override
  String get healthy_habits => 'Bou sêfte, bliuwende wellness-gewoanten';

  @override
  String get all_logs => 'Myn folge gegevens en logs';

  @override
  String get search_language => 'Sykje op taal of memmetaal skript...';

  @override
  String get languages_available => 'Talen beskikber';

  @override
  String get no_matching_languages => 'Gjin oerienkommende talen fûn';

  @override
  String get try_searching =>
      'Besykje te sykjen op eigen skript of Ingelske stavering';

  @override
  String get partially_translated => 'Foar in part oerset';

  @override
  String get complete_translation => 'Folslein';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Taal ynsteld op $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Omjouwing & Miljeu';

  @override
  String get surroundings_aqi => 'Air Quality Index';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatuer';

  @override
  String get surroundings_humidity => 'Feuchte';

  @override
  String get surroundings_hydration_advice =>
      'Bliuw goed hydratisearre yn hjoeddeistige waarsomstannichheden.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Sykje Food';

  @override
  String get food_quick_barcode => 'Barcode scannen 👑';

  @override
  String get food_quick_water => 'Foegje wetter ta';

  @override
  String get food_quick_custom => 'Oanpaste Food';

  @override
  String get surroundings_good => 'Goed';

  @override
  String get surroundings_moderate => 'Matich';

  @override
  String get surroundings_unhealthy => 'Net sûn';

  @override
  String get notifications_title => 'Notifikaasjes en warskôgings';

  @override
  String get notifications_empty => 'Gjin nije notifikaasjes';

  @override
  String get notifications_mark_read => 'Markearje alles as lêzen';

  @override
  String get notifications_clear => 'Alles wiskje';

  @override
  String get reminders => 'Herinneringsynstellingen';

  @override
  String get notifications => 'Notifikaasjes';

  @override
  String get reminders_breakfast_title => 'Moarnsiten herinnering 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Goeiemoarn! Tiid foar in voedend moarnsiten by $time.';
  }

  @override
  String get reminders_lunch_title => 'Lunch herinnering 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pause en genietsje fan in lykwichtige, mindful lunch by $time.';
  }

  @override
  String get reminders_dinner_title => 'Dinner herinnering 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tiid foar in ljocht, befredigjend diner by $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tiid om in frisse gleske wetter te drinken! ($time)';
  }

  @override
  String get reminders_weight_title => 'Wyklikse ynweging ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Folgje jo wyklikse lichemsmetriken op Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Bedtime Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Untspanne en tariede op in rêstige sliep ($time).';
  }

  @override
  String get onboard_welcome => 'Wolkom by Bloomi';

  @override
  String get onboard_sub =>
      'Jo freonlike, offline-earste sûnens- en fiedingsgenoat.';

  @override
  String get onboard_get_started => 'Begjinne';

  @override
  String get onboard_sign_in => 'Oanmelde';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal => 'Wat is jo primêre wolwêzensdoel?';

  @override
  String get onboard_goal_weight_loss => 'Gentle Weight Loss';

  @override
  String get onboard_goal_muscle => 'Muscle Gain & Strength';

  @override
  String get onboard_goal_energy => 'Deistige enerzjy en vitaliteit';

  @override
  String get onboard_goal_habits => 'Healthy Mindful Eating';

  @override
  String get onboard_about_you => 'Fertel ús oer dysels';

  @override
  String get onboard_lifestyle => 'Jo deistige routine';

  @override
  String get onboard_permissions_title => 'Tagongsrjochten en systeemtagong';

  @override
  String get onboard_permissions_sub =>
      'Jou tagong ta syngronisaasjestappen, workouts en herinneringen.';

  @override
  String get onboard_plan_ready_title => 'Jo oanpast plan is klear!';

  @override
  String get onboard_plan_ready_sub =>
      'Wy makken in sêfte, personaliseare roadmap foar fieding en wellness krekt foar jo.';

  @override
  String get onboard_enter_bloomi => 'Fier Bloomi yn';

  @override
  String get insights_weekly_report => 'Wyklikse Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Bêste konsistinsjedei: $day';
  }

  @override
  String get insights_streaks_badges => 'Streken en mylpalen';

  @override
  String insights_unlocked_on(Object date) {
    return 'Untskoattele op $date';
  }

  @override
  String get insights_keep_going => 'Trochgean mei de fantastyske foarútgong!';

  @override
  String get widgets_title => 'Home Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Aktive widgets: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Stappen & Aktive Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'Ferbûn mei Watch';

  @override
  String get wear_os_sync => 'Syngronisearje Watch Data';

  @override
  String get theme_title => 'Uterlik & Tema';

  @override
  String get theme_mode => 'Tema Mode';

  @override
  String get theme_light => 'Ljocht';

  @override
  String get theme_dark => 'Dûnker';

  @override
  String get theme_system => 'Systeem Standert';

  @override
  String get theme_background_palette => 'Eftergrûnpalet';

  @override
  String get units_title => 'Maat ienheden';

  @override
  String get units_metric => 'Metrysk (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, yn, fl oz)';

  @override
  String get home_unable_load => 'It dashboard kin net laden wurde';

  @override
  String get home_health_permission_req =>
      'Tastimming foar sûnensferbining fereaske';

  @override
  String get home_health_permission_desc =>
      'Bloomi fereasket tastimming foar Health Connect om echte stappen, hertslach te lûken en widgets foar mobile thús yn realtime te syngronisearjen.';

  @override
  String get home_allow_health => 'Tastean Health Connect';

  @override
  String get home_ready_mindful_day => 'Klear foar in mindful dei? ✨';

  @override
  String get home_quick_add => 'Fluch tafoegje';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'CALORIES REMAINING';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Eaten: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap foar Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Deistich doel berikt 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml nei deistich doel';
  }

  @override
  String get home_details => 'Details';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade om personaliseare deistige doelen en AI-plan te ûntsluten';

  @override
  String get home_unlock => 'Untskoattelje 👑';

  @override
  String get home_quick_log_hint => 'Meitsje fluch in wellness-yngong op';

  @override
  String get food_serving_size => 'Serving Grutte';

  @override
  String get food_serving_grams => 'tsjinje (g)';

  @override
  String get food_number_servings => 'Oantal Servings';

  @override
  String get food_calories_per_serving => 'Kalorie per tsjinje';

  @override
  String get food_recipe_ingredients => 'Yngrediïnten';

  @override
  String get food_recipe_add_ingredient => 'Add yngrediïnt';

  @override
  String get food_recipe_directions => 'Ynstruksjes & Notysjes';

  @override
  String get food_recipe_total => 'Totaal Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast => 'Oanpaste iten mei súkses bewarre!';

  @override
  String get food_barcode_found => 'Produkt fûn!';

  @override
  String get food_barcode_not_found_desc =>
      'Wy koene dizze barcode net fine yn de iepen database. Jo kinne it tafoegje as in oanpast iten.';

  @override
  String get food_add_custom_btn => 'Add Custom Food';

  @override
  String get food_scan_again => 'Scan nochris';

  @override
  String get food_review_items => 'Review ûntdutsen Foods';

  @override
  String get food_review_hint =>
      'Oanpasse hoemannichten of ferwiderje elk net werkend item';

  @override
  String get food_log_selected => 'Log selektearre Foods';

  @override
  String get food_favourites_title => 'Favorite Foods';

  @override
  String get food_recent_title => 'Resinte Foods';

  @override
  String get food_no_favourites =>
      'Noch gjin favorite iten. Tap hert op elk iten om hjir te bewarjen.';

  @override
  String get food_no_recents => 'Gjin resint oanmeld iten fûn.';

  @override
  String get food_nutrition_details_title => 'Daily Nutrition Details';

  @override
  String get food_macro_protein_label => 'Protein ôfbraak';

  @override
  String get food_macro_carbs_label => 'Koalhydraten ôfbraak';

  @override
  String get food_macro_fat_label => 'Fet ôfbraak';

  @override
  String get food_macro_fiber_label => 'Fiber ôfbraak';

  @override
  String get food_daily_target_comparison => 'Doelfergeliking';

  @override
  String food_target_label(Object target) {
    return 'Doel: $target';
  }

  @override
  String get food_edit_entry => 'Diary Entry bewurkje';

  @override
  String get food_delete_entry => 'Yngong wiskje';

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
    return '$current fan $target ml';
  }

  @override
  String get water_intake_history => 'Hjoed wetter logs';

  @override
  String get water_no_logs_today =>
      'Hjoed noch gjin wetter oanmeld. Hydrateer en tik op in rappe tafoegingknop!';

  @override
  String get water_adjust_goal => 'Deistich doel oanpasse';

  @override
  String get health_connect_banner => 'Ferbûn mei Health Connect';

  @override
  String get health_vitals_summary => 'Daily Health Vitals';

  @override
  String get health_latest_heart_rate => 'Lêste Heart Rate';

  @override
  String get health_latest_bp => 'Bloeddruk';

  @override
  String get health_latest_spo2 => 'Bloed Oxygen';

  @override
  String get health_latest_glucose => 'Bloed glukoaze';

  @override
  String get health_latest_weight => 'Gewicht';

  @override
  String get health_latest_sleep => 'Sleep Duration';

  @override
  String get health_add_manual => 'Foegje hânmjittige mjitting ta';

  @override
  String get health_history_trends => 'Histoaryske Trends';

  @override
  String get health_sync_success => 'Sûnensgegevens mei súkses syngronisearre!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours oeren $mins min';
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
  String get health_devices_title => 'Ferbûne apparaten en wearables';

  @override
  String get health_devices_desc =>
      'Beheare keppele smartwatches, fitnesstrackers en sûnenssensors.';

  @override
  String get health_workout_editor_title => 'Workout bewurkje';

  @override
  String get health_workout_name_label => 'Namme fan workout';

  @override
  String get health_workout_duration_label => 'Duration (minuten)';

  @override
  String get health_workout_calories_label => 'Estimearre kaloryen (kcal)';

  @override
  String get health_workout_date_label => 'Datum en Tiid';

  @override
  String get plan_daily_wellness_roadmap => 'Jo Persoanlike Roadmap';

  @override
  String get plan_morning_routine => 'Moarn Routine';

  @override
  String get plan_afternoon_routine => 'Middeis Wellness';

  @override
  String get plan_evening_routine => 'Jûn Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-dagen Wellness Fokus';

  @override
  String get plan_targets_title => 'Wellness Doelen en Doelen';

  @override
  String get plan_calorie_budget_label => 'Deistich kaloriebudzjet';

  @override
  String get plan_water_budget_label => 'Daily Water Target';

  @override
  String get plan_step_budget_label => 'Deistich Stap Doel';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Persoanlike details';

  @override
  String get profile_body_stats => 'Body Ofmjittings';

  @override
  String get profile_app_preferences => 'Foarkarren en app-ynstellingen';

  @override
  String get profile_edit_name_hint => 'Jo namme';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Hichte ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Gewicht ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Age';

  @override
  String get profile_gender_male => 'Male';

  @override
  String get profile_gender_female => 'Female';

  @override
  String get profile_gender_other => 'Oare / leaver net te sizzen';

  @override
  String get profile_activity_sedentary => 'Sedintêr (lyts oant gjin oefening)';

  @override
  String get profile_activity_light => 'Licht aktyf (1-3 dagen / wike)';

  @override
  String get profile_activity_moderate => 'Matich aktyf (3-5 dagen / wike)';

  @override
  String get profile_activity_very => 'Hiel aktyf (6-7 dagen / wike)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Ynstallearje de Bloomi-tegel en komplikaasje op jo Wear OS-horloazje om calorieën, wetter en stappen te sjen.';

  @override
  String get settings_widgets_header => 'Ynteraktive Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Pin realtime widgets op jo apparaat thússkerm foar direkte updates.';

  @override
  String get settings_about_header => 'Oer Bloom';

  @override
  String get settings_about_version => 'Ferzje 1.0.0';

  @override
  String get settings_about_build => 'Bouwe 100';

  @override
  String get settings_about_credits =>
      'Makke mei soarch foar bewust, sûn libben.';

  @override
  String get settings_terms_header => 'Betingsten en Kondysjes';

  @override
  String get settings_privacy_header => 'Privacybelied';

  @override
  String get settings_delete_header => 'Account en gegevens wiskje';

  @override
  String get settings_delete_warning =>
      'Dizze aksje kin net ûngedien makke wurde. Al jo mielen, workouts, vitals en profyl wurde permanint wiske.';

  @override
  String get settings_delete_confirm_btn => 'Permanint wiskje';

  @override
  String get onboard_welcome_headline => 'Wolkom by Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Gentle, bewuste wellness tracking ûntworpen om jo libben.';

  @override
  String get onboard_step_about => 'Oer dy';

  @override
  String get onboard_step_goals => 'Jo doelen';

  @override
  String get onboard_step_lifestyle => 'Daily Habits';

  @override
  String get onboard_step_permissions => 'Permissions';

  @override
  String get onboard_step_plan => 'Klear!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Tagong';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Mindful herinneringen en notifikaasjes';

  @override
  String get onboard_camera_perm => 'Kamera (barcode- en itenscanner)';

  @override
  String get onboard_grant_permissions => 'Tastimming jaan';

  @override
  String get onboard_continue_dashboard => 'Iepenje Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Sêfte wetterherinneringen de hiele dei';

  @override
  String get notif_channel_nutrition_name => 'Meal- en fiedingsherinneringen';

  @override
  String get notif_channel_nutrition_desc =>
      'Alerts foar herinnerings foar moarnsiten, lunch en diner';

  @override
  String get notif_channel_steps_name => 'Stap Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Feesten by it berikken fan deistige stapdoelen';

  @override
  String get notif_channel_vitals_name => 'Sûnens- en fitale kontrôles';

  @override
  String get notif_channel_vitals_desc =>
      'Herinneringen foar gewicht en bedtime wind-down';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15 m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Taal';

  @override
  String get share => 'Diele';

  @override
  String common_days(Object count) {
    return '$count d lyn';
  }
}
