// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luxembourgish Letzeburgesch (`lb`).
class AppLocalizationsLb extends AppLocalizations {
  AppLocalizationsLb([String locale = 'lb']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Doheem';

  @override
  String get nav_today => 'Haut';

  @override
  String get nav_plan => 'Plang';

  @override
  String get nav_food => 'Iessen';

  @override
  String get nav_food_diary => 'Iessen Tagebuch';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Gesondheet';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Spueren';

  @override
  String get cancel => 'Ofbriechen';

  @override
  String get delete => 'Läschen';

  @override
  String get edit => 'Edit';

  @override
  String get done => 'Gemaach';

  @override
  String get close => 'Zoumaachen';

  @override
  String get back => 'Zréck';

  @override
  String get next => 'Nächst';

  @override
  String get continue_btn => 'Fuert weider';

  @override
  String get confirm => 'Confirméieren';

  @override
  String get search => 'Sichen';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'All';

  @override
  String get active => 'Aktiv';

  @override
  String get today => 'Haut';

  @override
  String get yesterday => 'Gëschter';

  @override
  String get tomorrow => 'Muer';

  @override
  String get add => 'Addéieren';

  @override
  String get remove => 'Ewechzehuelen';

  @override
  String get refresh => 'Erfrëschen';

  @override
  String get retry => 'Nach eng Kéier probéieren';

  @override
  String get error => 'Feeler';

  @override
  String get success => 'Erfolleg';

  @override
  String get loading => 'Lueden...';

  @override
  String get no_data => 'Keng Daten verfügbar';

  @override
  String get offline => 'Offline Modus';

  @override
  String get offline_sub =>
      'Ännerunge ginn synchroniséiert wann se erëm verbonne sinn';

  @override
  String get undo => 'Undoen';

  @override
  String get portion => 'Portioun';

  @override
  String get quantity => 'Quantitéit';

  @override
  String get unit => 'Eenheet';

  @override
  String get clear => 'Kloer';

  @override
  String get select => 'Wielt';

  @override
  String get apply => 'Gëlle';

  @override
  String get reset => 'Zerécksetzen';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Jo';

  @override
  String get no => 'Nee';

  @override
  String get optional => 'Fakultativ';

  @override
  String get calories => 'Kalorien';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Kuelenhydrater';

  @override
  String get fat => 'Fett';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Waasser';

  @override
  String get steps => 'Schrëtt';

  @override
  String get kcal => 'kcal eng';

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
  String get inches => 'an';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Déngen';

  @override
  String get servings => 'Déngschtleeschtungen';

  @override
  String get serving_size => 'Déngscht Gréisst';

  @override
  String get per_100g => 'pro 100 g';

  @override
  String get india => 'Indien';

  @override
  String get asia => 'Asien';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Mëttleren Osten';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Doheem';

  @override
  String get home_greeting_morning => 'Gudde Moien';

  @override
  String get home_greeting_afternoon => 'Gudde Mëtteg';

  @override
  String get home_greeting_evening => 'Gudden Owend';

  @override
  String get home_streak_title => 'Blossom Sträif';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Deeg Streck',
      one: '1 Dag Streck',
      zero: '0 Deeg Streck',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Verbrannt';

  @override
  String get home_calories_budget => 'Kalorie Budget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal bleiwen';
  }

  @override
  String get home_water_title => 'Deeglech Hydratatioun';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Schrëtt gefuer';

  @override
  String get home_quick_actions => 'Quick Aktiounen';

  @override
  String get home_log_meal => 'Log Iessen';

  @override
  String get home_log_water => 'Log Waasser';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Gewiicht';

  @override
  String get home_insights_title => 'Haut d\'Insights';

  @override
  String get home_quote =>
      'Kleng gesond Choixen kreéieren bléien Transformatiounen.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Ëmgéigend & Loft';

  @override
  String get home_notifications => 'Notifikatiounen';

  @override
  String get home_daily_score => 'Deeglech Wellness Score';

  @override
  String get home_view_all => 'View All';

  @override
  String get food_diary_title => 'Iessen Tagebuch';

  @override
  String get food_breakfast => 'Frühstück';

  @override
  String get food_lunch => 'Mëttegiessen';

  @override
  String get food_dinner => 'Owesiessen';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Iessen addéieren';

  @override
  String get food_edit_food => 'Iessen änneren';

  @override
  String get food_add_breakfast => 'Frühstück derbäi';

  @override
  String get food_add_lunch => 'Mëttegiessen dobäisetzen';

  @override
  String get food_add_dinner => 'Add Dinner';

  @override
  String get food_add_snack => 'Snack addéieren';

  @override
  String get food_total_calories => 'Total Kalorien';

  @override
  String get food_empty_meal =>
      'Kee Liewensmëttel fir dëst Iessen aloggen nach';

  @override
  String get food_empty_diary => 'Keng Iessen protokolléiert fir dësen Dag';

  @override
  String get food_log_first_meal =>
      'Tippen op + fir Äert éischt lecker Iessen ze protokolléieren';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint => 'Sich Platen, Uebst, Dal, Roti ...';

  @override
  String get food_custom_recipe => 'Benotzerdefinéiert Iessen & Rezept';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Rezent Liewensmëttel';

  @override
  String get food_favourites => 'Favoritten';

  @override
  String get food_macro_summary => 'Macronutrient Ënnerdeelung';

  @override
  String get food_delete_meal_confirm =>
      'Sidd Dir sécher datt Dir dëst Element ewechhuele wëllt?';

  @override
  String get food_item_deleted => 'Iessen Element geläscht';

  @override
  String get food_remaining => 'verbleiwen';

  @override
  String get food_consumed => 'verbraucht';

  @override
  String food_of_target(Object target) {
    return 'vun $target kcal';
  }

  @override
  String get foodSearch_title => 'Sich Liewensmëttel';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Foto';

  @override
  String get foodSearch_custom_food => 'Erstellt Custom Food';

  @override
  String get foodSearch_recent_searches => 'Rezent Recherchen';

  @override
  String get foodSearch_popular => 'Populär Platen';

  @override
  String get foodSearch_no_results => 'Keng Liewensmëttel déi Är Sich passen';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Alignéiert de Barcode am Kamerarahmen';

  @override
  String get barcode_not_found => 'Produkt net an der Datebank fonnt';

  @override
  String get barcode_premium_feature =>
      'Barcode Scannen ass verfügbar mat Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Huelt eng kloer Foto vun Ärem Plat';

  @override
  String get camera_analysing => 'Analyse vun Iessen Teller ...';

  @override
  String get camera_detected => 'Elementer entdeckt';

  @override
  String get camera_flash => 'Änneren Flash';

  @override
  String get camera_retake => 'Foto erëm';

  @override
  String get camera_confirm_food => 'Confirméieren Artikelen';

  @override
  String get customFood_title => 'Benotzerdefinéiert Iessen & Rezept';

  @override
  String get customFood_name_hint => 'Plat oder Zutate Numm';

  @override
  String get customFood_calories_hint => 'Kalorien (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Kuelenhydrater (g)';

  @override
  String get customFood_fat_hint => 'Fett (g)';

  @override
  String get customFood_save => 'Späichert Rezept';

  @override
  String get water_tracker_title => 'Waasser Tracker';

  @override
  String get water_daily_target => 'Deeglech Hydratatiounsziel';

  @override
  String get water_logged_today => 'Haut ugemellt';

  @override
  String get water_add_glass => '+250 ml Glas';

  @override
  String get water_add_bottle => '+500 ml Fläsch';

  @override
  String get water_custom_amount => 'Benotzerdefinéiert Betrag';

  @override
  String get water_reminder_tip =>
      'Drénkt Waasser regelméisseg de ganzen Dag fir konstant Energie.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml Waasser 💧';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Add Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Kraaft';

  @override
  String get workout_yoga => 'Yoga & Flexibilitéit';

  @override
  String get workout_duration => 'Dauer';

  @override
  String get workout_intensity => 'Intensitéit';

  @override
  String get workout_calories_burned => 'Kalorien verbrannt';

  @override
  String get workout_empty => 'Keng Workouts haut ugemellt';

  @override
  String get workout_save_success => 'Workout erfollegräich gespäichert!';

  @override
  String get workout_type => 'Workout Typ';

  @override
  String get workout_notes => 'Notizen & Reflexiounen';

  @override
  String get health_overview_title => 'Gesondheet & Vital';

  @override
  String get health_heart_rate => 'Häerz Taux';

  @override
  String get health_blood_oxygen => 'Blutt Sauerstoff (SpO2)';

  @override
  String get health_blood_pressure => 'Blutdrock';

  @override
  String get health_blood_glucose => 'Bluttzocker';

  @override
  String get health_body_temperature => 'Kierper Temperatur';

  @override
  String get health_sleep_tracking => 'Schlof Tracking';

  @override
  String get health_weight_tracking => 'Gewiicht & Kierper Zesummesetzung';

  @override
  String get health_waist_hip => 'Taille-zu-Hip Verhältnis';

  @override
  String get health_devices_hub => 'Apparater & Smartwatch Hub';

  @override
  String get health_sync_now => 'Synchroniséiert Gesondheet Daten';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Lescht synchroniséiert: $time';
  }

  @override
  String get health_manual_entry => 'Manuell Gesondheet Entrée';

  @override
  String get health_metric_detail => 'Metresch Detailer';

  @override
  String get health_connected_sensors => 'Verbonnen Gesondheet Sensoren';

  @override
  String get plan_title => 'Deeglech Plang';

  @override
  String get plan_weekly_title => 'Wochemaart Wellness Plang';

  @override
  String get plan_calorie_target => 'Kalorie Zil';

  @override
  String get plan_water_target => 'Hydratioun Zil';

  @override
  String get plan_step_target => 'Schrëtt Zil';

  @override
  String get plan_sleep_target => 'Schlof Zil';

  @override
  String get plan_meal_suggestions => 'Iessen Suggestioune';

  @override
  String get plan_healthy_habits => 'Gesond Gewunnechten & Tipps';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Empfehlungen';

  @override
  String get plan_generated_title => 'Personaliséiert deeglech Zäitplang';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profil änneren';

  @override
  String get profile_name => 'Numm';

  @override
  String get profile_age => 'Alter';

  @override
  String get profile_gender => 'Geschlecht';

  @override
  String get profile_height => 'Héicht';

  @override
  String get profile_weight => 'Gewiicht';

  @override
  String get profile_goal => 'Primär Zil';

  @override
  String get profile_activity_level => 'Aktivitéit Niveau';

  @override
  String get profile_stats => 'Meng Wellness Statistiken';

  @override
  String get profile_saved => 'Profil erfollegräich aktualiséiert';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Memberschaft';

  @override
  String get settings => 'Astellungen';

  @override
  String get preferences_habits => 'Präferenzen & Gewunnechten';

  @override
  String get appearance_theme => 'Ausgesinn & Thema';

  @override
  String get appearance_theme_sub =>
      'Däischter, Liicht, Systemmodus & App Hannergrondoptiounen';

  @override
  String get permissions => 'Permissiounen & System Zougang';

  @override
  String get permissions_sub =>
      'Gesondheet Connect, Schrëtt Sensoren, GPS, Notifikatiounen & Kamera';

  @override
  String get reminders_notifications => 'Erënnerungen & Notifikatiounen';

  @override
  String get reminders_sub =>
      'Iessen Zäiten, Waasser, Gewiicht Check-in & Schlofzäit Erënnerungen';

  @override
  String get units_of_measurement => 'Moosseenheeten';

  @override
  String get units_sub =>
      'Metresch (kg, cm, ml, km) oder Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Sprooch';

  @override
  String get language_sub =>
      'Englesch, हिन्दी (Hindi), Hinglish & 195+ global Sproochen';

  @override
  String get home_screen_widgets => 'Home Screen Widgets';

  @override
  String get widgets_sub =>
      'Live Android Widgets: Hub, Schrëtt, Waasser, Ernährung & Maskottchen';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch Begleeder, Fliesen, Komplikatiounen & Live Vitals';

  @override
  String get goals_wellness => 'Ziler & WELLNESS INSIGHTS';

  @override
  String get nutrition_targets => 'Ernährungsziler & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Kalorie Zil, Protein, Kuelenhydrater, Fett a Waasser Zil';

  @override
  String get weekly_recap => 'Wochemaart Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-Dag Kalorie Moyenne, Makro Verhältnis & beschten Dag';

  @override
  String get streaks_milestones => 'Sträifen & Meilesteen';

  @override
  String get streaks_sub => 'Aktiv Bléi Sträifen, Schëlder & Leeschtungen';

  @override
  String get connected_devices => 'CONNECTED DEVICES & ECOSYSTEM';

  @override
  String get devices_hub => 'Apparater & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ëmgéigend & Wieder';

  @override
  String get surroundings_sub =>
      'Loftqualitéit (AQI), UV Index & Wieder Hydratatioun Tipps';

  @override
  String get bloomi_pro => 'Bloomi Pro Abonnement';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 Heembildschierm Widgets & Vital Tracking';

  @override
  String get about_security => 'IWWERT & SECURITY';

  @override
  String get about_bloomi => 'Iwwer Bloomi';

  @override
  String get about_bloomi_sub =>
      'Build Spezifikatioune, Versioun, Attributiounen';

  @override
  String get privacy_policy => 'Privatsphär Politik';

  @override
  String get privacy_policy_sub => 'Offline-éischt, on-Device Datenarchitektur';

  @override
  String get terms_conditions => 'Konditioune';

  @override
  String get terms_conditions_sub =>
      'Konditioune vum Service a Wellness Richtlinnen';

  @override
  String get delete_account => 'Läschen Kont & Daten';

  @override
  String get delete_account_sub =>
      'Irreversibel läschen lokal SQLite Daten a Cloud Backups';

  @override
  String get healthy_habits => 'Baut sanft, dauerhaft Wellnessgewunnechten';

  @override
  String get all_logs => 'Meng verfollegt Donnéeën & Logbicher';

  @override
  String get search_language => 'Sich no Sprooch oder gebierteg Skript ...';

  @override
  String get languages_available => 'Sprooche verfügbar';

  @override
  String get no_matching_languages => 'Keng passende Sprooche fonnt';

  @override
  String get try_searching =>
      'Probéiert no engem gebiertege Skript oder Englesch Schreifweis ze sichen';

  @override
  String get partially_translated => 'Deelweis iwwersat';

  @override
  String get complete_translation => 'Komplett';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Sprooch op $name gesat ($nativeName)';
  }

  @override
  String get surroundings_title => 'Ëmfeld & Ëmwelt';

  @override
  String get surroundings_aqi => 'Loftqualitéit Index';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatur';

  @override
  String get surroundings_humidity => 'Fiichtegkeet';

  @override
  String get surroundings_hydration_advice =>
      'Bleift gutt hydratiséiert an aktuellen Wiederkonditiounen.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Sich Liewensmëttel';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Waasser addéieren';

  @override
  String get food_quick_custom => 'Benotzerdefinéiert Iessen';

  @override
  String get surroundings_good => 'Gutt';

  @override
  String get surroundings_moderate => 'Mëttelméisseg';

  @override
  String get surroundings_unhealthy => 'Ongesond';

  @override
  String get notifications_title => 'Notifikatiounen & Alarmer';

  @override
  String get notifications_empty => 'Keng nei Notifikatiounen';

  @override
  String get notifications_mark_read => 'Mark All als gelies';

  @override
  String get notifications_clear => 'Alles läschen';

  @override
  String get reminders => 'Erënnerung Astellunge';

  @override
  String get notifications => 'Notifikatiounen';

  @override
  String get reminders_breakfast_title => 'Frühstück Erënnerung 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Gudde Moien! Zäit fir en ernähren Frühstück um $time.';
  }

  @override
  String get reminders_lunch_title => 'Mëttegiessen Erënnerung 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Paus a genéisst e equilibréierten, opgepasst Mëttegiessen um $time.';
  }

  @override
  String get reminders_dinner_title => 'Dinner Erënnerung 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Zäit fir e Liicht, zefriddestellend Iessen um $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Zäit fir e frëscht Glas Waasser ze drénken! ($time)';
  }

  @override
  String get reminders_weight_title => 'Wochemaart ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Verfollegt Är wëchentlech Kierpermetriken op Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Bedtime Ofschloss 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Entspaant a preparéiert Iech op e rouege Schlof ($time).';
  }

  @override
  String get onboard_welcome => 'Wëllkomm zu Bloomi';

  @override
  String get onboard_sub =>
      'Äre frëndlechen, offline-éischte Gesondheets- an Ernärungsbegleeder.';

  @override
  String get onboard_get_started => 'Fänkt un';

  @override
  String get onboard_sign_in => 'Umellen';

  @override
  String get onboard_skip => 'Sprangen';

  @override
  String get onboard_choose_goal => 'Wat ass Äert primär Wellnessziel?';

  @override
  String get onboard_goal_weight_loss => 'Gentle Gewiichtsverloscht';

  @override
  String get onboard_goal_muscle => 'Muskelgewënn a Kraaft';

  @override
  String get onboard_goal_energy => 'Deeglech Energie & Vitalitéit';

  @override
  String get onboard_goal_habits => 'Gesond bewosst Iessen';

  @override
  String get onboard_about_you => 'Sot eis iwwer Iech selwer';

  @override
  String get onboard_lifestyle => 'Är Deeglech Routine';

  @override
  String get onboard_permissions_title => 'Permissiounen & System Zougang';

  @override
  String get onboard_permissions_sub =>
      'Gitt Zougang zu synchroniséiert Schrëtt, Workouts an Erënnerungen.';

  @override
  String get onboard_plan_ready_title =>
      'Äre personaliséierte Plang ass prett!';

  @override
  String get onboard_plan_ready_sub =>
      'Mir hunn eng sanft, personaliséiert Ernährung a Wellness Fahrplang just fir Iech gemaach.';

  @override
  String get onboard_enter_bloomi => 'Gitt Bloomi';

  @override
  String get insights_weekly_report => 'Wochemaart Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Beschte Konsistenzdag: $day';
  }

  @override
  String get insights_streaks_badges => 'Sträifen & Meilesteen';

  @override
  String insights_unlocked_on(Object date) {
    return 'Opgespaart op $date';
  }

  @override
  String get insights_keep_going => 'Weiderhin de fantastesche Fortschrëtt!';

  @override
  String get widgets_title => 'Home Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Aktive Widgets: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Schrëtt & Aktiv Ring';

  @override
  String get widgets_water_title => 'Hydratatioun Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Maskottchen Begleeder';

  @override
  String get wear_os_title => 'Droen OS Smartwatch';

  @override
  String get wear_os_connected => 'Verbonne mat Watch';

  @override
  String get wear_os_sync => 'Synchroniséiert Iwwerwaachungsdaten';

  @override
  String get theme_title => 'Ausgesinn & Thema';

  @override
  String get theme_mode => 'Thema Modus';

  @override
  String get theme_light => 'Liicht';

  @override
  String get theme_dark => 'Däischter';

  @override
  String get theme_system => 'System Standard';

  @override
  String get theme_background_palette => 'Hannergrond Palette';

  @override
  String get units_title => 'Moosseenheeten';

  @override
  String get units_metric => 'Metresch (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, an, fl oz)';

  @override
  String get home_unable_load => 'Kann den Dashboard net lueden';

  @override
  String get home_health_permission_req =>
      'Gesondheet Connect Erlaabnis erfuerderlech';

  @override
  String get home_health_permission_desc =>
      'Bloomi erfuerdert d\'Gesondheet Connect Erlaabnis fir richteg Schrëtt, Häerzfrequenz ze zéien an Handy Widgets an Echtzäit ze synchroniséieren.';

  @override
  String get home_allow_health => 'Erlaabt Gesondheet Connect';

  @override
  String get home_ready_mindful_day => 'Prett fir e mindful Dag? ✨';

  @override
  String get home_quick_add => 'Quick Add';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORIE BLESCHT';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Gegessen: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap fir Waasser Tracker 💧';

  @override
  String get home_water_goal_reached => 'Deeglech Zil erreecht 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml fir deeglech Zil';
  }

  @override
  String get home_details => 'Detailer';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade fir personaliséiert alldeeglech Ziler & AI Plang ze spären';

  @override
  String get home_unlock => 'Spär 👑';

  @override
  String get home_quick_log_hint => 'Schnell Rekord e Wellness Entrée';

  @override
  String get food_serving_size => 'Déngscht Gréisst';

  @override
  String get food_serving_grams => 'Déngscht (g)';

  @override
  String get food_number_servings => 'Zuel vun Portiounen';

  @override
  String get food_calories_per_serving => 'Kalorien pro Portioun';

  @override
  String get food_recipe_ingredients => 'Zutaten';

  @override
  String get food_recipe_add_ingredient => 'Zutaten addéieren';

  @override
  String get food_recipe_directions => 'Uweisungen & Notizen';

  @override
  String get food_recipe_total => 'Total Rezept Ernährung';

  @override
  String get food_recipe_per_serving => 'Per Portioun Ernährung';

  @override
  String get food_recipe_saved_toast =>
      'Benotzerdefinéiert Liewensmëttel erfollegräich gerett!';

  @override
  String get food_barcode_found => 'Produit fonnt!';

  @override
  String get food_barcode_not_found_desc =>
      'Mir konnten dëse Barcode net an der oppener Datebank fannen. Dir kënnt et als personaliséiert Iessen derbäi.';

  @override
  String get food_add_custom_btn => 'Füügt Custom Food';

  @override
  String get food_scan_again => 'Scan nach eng Kéier';

  @override
  String get food_review_items => 'Iwwerpréift entdeckt Liewensmëttel';

  @override
  String get food_review_hint =>
      'Ajustéieren Quantitéiten oder ewechzehuelen all unerkannt Element';

  @override
  String get food_log_selected => 'Log ausgewielte Liewensmëttel';

  @override
  String get food_favourites_title => 'Léifsten Liewensmëttel';

  @override
  String get food_recent_title => 'Rezent Liewensmëttel';

  @override
  String get food_no_favourites =>
      'Kee Liiblings Iessen nach. Tippen Häerz op all Iessen fir hei ze spueren.';

  @override
  String get food_no_recents =>
      'Keng kierzlech protokolléiert Liewensmëttel fonnt.';

  @override
  String get food_nutrition_details_title => 'Deeglech Ernährung Detailer';

  @override
  String get food_macro_protein_label => 'Protein Zerfall';

  @override
  String get food_macro_carbs_label => 'Kuelenhydrater Ënnerdeelung';

  @override
  String get food_macro_fat_label => 'Fett Ofbau';

  @override
  String get food_macro_fiber_label => 'Fiber Decompte';

  @override
  String get food_daily_target_comparison => 'Zilverglach';

  @override
  String food_target_label(Object target) {
    return 'Zil: $target';
  }

  @override
  String get food_edit_entry => 'Änneren Tagebuch Entrée';

  @override
  String get food_delete_entry => 'Läschen Entrée';

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
    return '$current vun $target ml';
  }

  @override
  String get water_intake_history => 'Waasser Logbicher vun haut';

  @override
  String get water_no_logs_today =>
      'Haut nach kee Waasser protokolléiert. Hydratéiert a tippt op e schnelle Add Button!';

  @override
  String get water_adjust_goal => 'Ajustéieren Daily Goal';

  @override
  String get health_connect_banner => 'Connected to Health Connect';

  @override
  String get health_vitals_summary => 'Daily Health Vitals';

  @override
  String get health_latest_heart_rate => 'Läscht Häerz Taux';

  @override
  String get health_latest_bp => 'Blutdrock';

  @override
  String get health_latest_spo2 => 'Blutt Sauerstoff';

  @override
  String get health_latest_glucose => 'Bluttzocker';

  @override
  String get health_latest_weight => 'Gewiicht';

  @override
  String get health_latest_sleep => 'Schlof Dauer';

  @override
  String get health_add_manual => 'Manuell Messung addéieren';

  @override
  String get health_history_trends => 'Historesch Trends';

  @override
  String get health_sync_success =>
      'Gesondheetsdaten erfollegräich synchroniséiert!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours Stonnen $mins min';
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
  String get health_devices_title => 'Verbonne Geräter & Wearables';

  @override
  String get health_devices_desc =>
      'Verwalte gepaart Smartwatches, Fitness Tracker a Gesondheetssensoren.';

  @override
  String get health_workout_editor_title => 'Workout änneren';

  @override
  String get health_workout_name_label => 'Workout Numm';

  @override
  String get health_workout_duration_label => 'Dauer (Minuten)';

  @override
  String get health_workout_calories_label => 'Geschätzte Kalorien (kcal)';

  @override
  String get health_workout_date_label => 'Datum an Zäit';

  @override
  String get plan_daily_wellness_roadmap => 'Äre personaliséierte Fahrplang';

  @override
  String get plan_morning_routine => 'Moien Routine';

  @override
  String get plan_afternoon_routine => 'Mëttes Wellness';

  @override
  String get plan_evening_routine => 'Owend Wand-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Dag Wellness Focus';

  @override
  String get plan_targets_title => 'Wellness Ziler & Ziler';

  @override
  String get plan_calorie_budget_label => 'Deeglech Kalorie Budget';

  @override
  String get plan_water_budget_label => 'Deeglech Waasser Zil';

  @override
  String get plan_step_budget_label => 'Deeglech Schrëtt Zil';

  @override
  String get plan_macro_split_label => 'Macronutrient Verhältnis';

  @override
  String get profile_personal_details => 'Perséinlech Detailer';

  @override
  String get profile_body_stats => 'Kierper Miessunge';

  @override
  String get profile_app_preferences => 'Preferenzen & App Astellungen';

  @override
  String get profile_edit_name_hint => 'Ären Numm';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Héicht ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Gewiicht ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Alter';

  @override
  String get profile_gender_male => 'Männlech';

  @override
  String get profile_gender_female => 'weiblech';

  @override
  String get profile_gender_other => 'Aner / léiwer net soen';

  @override
  String get profile_activity_sedentary => 'Sedentär (kleng bis keng Übung)';

  @override
  String get profile_activity_light => 'Liicht aktiv (1-3 Deeg / Woch)';

  @override
  String get profile_activity_moderate =>
      'Mëttelméisseg aktiv (3-5 Deeg / Woch)';

  @override
  String get profile_activity_very => 'Ganz aktiv (6-7 Deeg / Woch)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Installéiert de Bloomi Fliesen a Komplikatioun op Ärem Wear OS Auer fir Kalorien, Waasser a Schrëtt ze kucken.';

  @override
  String get settings_widgets_header => 'Interaktiven Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Pin Echtzäit Widgets op Ärem Apparat Heembildschierm fir direkt Updates.';

  @override
  String get settings_about_header => 'Iwwer Bloomi';

  @override
  String get settings_about_version => 'Versioun 1.0.0';

  @override
  String get settings_about_build => 'Bauen 100';

  @override
  String get settings_about_credits =>
      'Geschafft mat Suergfalt fir opgepasst, gesond Liewen.';

  @override
  String get settings_terms_header => 'Konditioune';

  @override
  String get settings_privacy_header => 'Privatsphär Politik';

  @override
  String get settings_delete_header => 'Läschen Kont & Daten';

  @override
  String get settings_delete_warning =>
      'Dës Aktioun kann net réckgängeg gemaach ginn. All Är Iessen, Workouts, Vitalen a Profil ginn permanent geläscht.';

  @override
  String get settings_delete_confirm_btn => 'Permanent Läschen';

  @override
  String get onboard_welcome_headline => 'Wëllkomm op Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Gentle, opgepasst Wellness Tracking entworf ronderëm Äert Liewen.';

  @override
  String get onboard_step_about => 'Iwwer Iech';

  @override
  String get onboard_step_goals => 'Är Ziler';

  @override
  String get onboard_step_lifestyle => 'Deeglech Gewunnechten';

  @override
  String get onboard_step_permissions => 'Permissiounen';

  @override
  String get onboard_step_plan => 'Fäerdeg!';

  @override
  String get onboard_health_connect_perm => 'Gesondheet Connect Zougang';

  @override
  String get onboard_step_sensors_perm => 'Schrëtt Konter Sensor';

  @override
  String get onboard_notif_perm => 'Opgepasst Erënnerungen & Notifikatiounen';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Gitt Permissiounen';

  @override
  String get onboard_continue_dashboard => 'Dashboard opmaachen';

  @override
  String get notif_channel_hydration_name => 'Hydratatioun Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Doft Waasser Erënnerungen de ganzen Dag';

  @override
  String get notif_channel_nutrition_name => 'Iessen & Ernährung Erënnerungen';

  @override
  String get notif_channel_nutrition_desc =>
      'Frühstück, Mëttegiessen an Owesiessen Erënnerung Alarm';

  @override
  String get notif_channel_steps_name => 'Schrëtt Meilesteen';

  @override
  String get notif_channel_steps_desc =>
      'Feiere beim Erreechen vun deegleche Schrëttziler';

  @override
  String get notif_channel_vitals_name => 'Gesondheet & Vital Kontrollen';

  @override
  String get notif_channel_vitals_desc =>
      'Gewiicht a Schlofzäit Winddown Erënnerungen';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15 m';

  @override
  String get notif_action_log_meal => '🥗 Log Iessen';

  @override
  String get language => 'Sprooch';

  @override
  String get share => 'Deelen';

  @override
  String common_days(Object count) {
    return '$count d ago';
  }
}
