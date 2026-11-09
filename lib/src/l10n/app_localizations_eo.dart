// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Esperanto (`eo`).
class AppLocalizationsEo extends AppLocalizations {
  AppLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Hejmo';

  @override
  String get nav_today => 'Hodiaŭ';

  @override
  String get nav_plan => 'Plano';

  @override
  String get nav_food => 'Manĝaĵo';

  @override
  String get nav_food_diary => 'Manĝtaglibro';

  @override
  String get nav_workout => 'Protokolo de Entrenado';

  @override
  String get nav_health => 'Sano';

  @override
  String get nav_profile => 'Profilo';

  @override
  String get save => 'Konservu';

  @override
  String get cancel => 'Nuligi';

  @override
  String get delete => 'Forigi';

  @override
  String get edit => 'Redakti';

  @override
  String get done => 'Farita';

  @override
  String get close => 'Fermu';

  @override
  String get back => 'Reen';

  @override
  String get next => 'Poste';

  @override
  String get continue_btn => 'Daŭrigu';

  @override
  String get confirm => 'Konfirmu';

  @override
  String get search => 'Serĉu';

  @override
  String get filter => 'Filtrilo';

  @override
  String get all => 'Ĉiuj';

  @override
  String get active => 'Aktiva';

  @override
  String get today => 'Hodiaŭ';

  @override
  String get yesterday => 'Hieraŭ';

  @override
  String get tomorrow => 'Morgaŭ';

  @override
  String get add => 'Aldoni';

  @override
  String get remove => 'Forigi';

  @override
  String get refresh => 'Refreŝigi';

  @override
  String get retry => 'Reprovi';

  @override
  String get error => 'Eraro';

  @override
  String get success => 'Sukceso';

  @override
  String get loading => 'Ŝargante...';

  @override
  String get no_data => 'Neniuj datumoj haveblaj';

  @override
  String get offline => 'Senkonekta Reĝimo';

  @override
  String get offline_sub => 'Ŝanĝoj sinkroniĝos post rekonektiĝo';

  @override
  String get undo => 'Malfari';

  @override
  String get portion => 'Porcio';

  @override
  String get quantity => 'Kvanto';

  @override
  String get unit => 'Unuo';

  @override
  String get clear => 'Klara';

  @override
  String get select => 'Elektu';

  @override
  String get apply => 'Apliki';

  @override
  String get reset => 'Restarigi';

  @override
  String get ok => 'Bone';

  @override
  String get yes => 'Jes';

  @override
  String get no => 'Ne';

  @override
  String get optional => 'Laŭvola';

  @override
  String get calories => 'Kalorioj';

  @override
  String get protein => 'Proteino';

  @override
  String get carbs => 'Karbohidratoj';

  @override
  String get fat => 'Graso';

  @override
  String get fiber => 'Fibro';

  @override
  String get water => 'Akvo';

  @override
  String get steps => 'Paŝoj';

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
  String get inches => 'en';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Servado';

  @override
  String get servings => 'Porcioj';

  @override
  String get serving_size => 'Serva Grandeco';

  @override
  String get per_100g => 'po 100 g';

  @override
  String get india => 'Barato';

  @override
  String get asia => 'Azio';

  @override
  String get europe => 'Eŭropo';

  @override
  String get middle_east => 'Mezoriento';

  @override
  String get africa => 'Afriko';

  @override
  String get americas => 'Amerikoj';

  @override
  String get home_title => 'Hejmo';

  @override
  String get home_greeting_morning => 'Bonan matenon';

  @override
  String get home_greeting_afternoon => 'Bonan Posttagmezon';

  @override
  String get home_greeting_evening => 'Bonan Vesperon';

  @override
  String get home_streak_title => 'Flora Strio';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tagoj sinsekvo',
      one: '1 tago sinsekvo',
      zero: '0 tagoj sinsekvo',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Bruligita';

  @override
  String get home_calories_budget => 'Kaloria Buĝeto';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal restantaj';
  }

  @override
  String get home_water_title => 'Ĉiutaga Hidratado';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Paŝoj Marŝis';

  @override
  String get home_quick_actions => 'Rapidaj Agoj';

  @override
  String get home_log_meal => 'Log Manĝo';

  @override
  String get home_log_water => 'Log Akvo';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Pezo';

  @override
  String get home_insights_title => 'Hodiaŭaj Enrigardoj';

  @override
  String get home_quote =>
      'Malgrandaj sanaj elektoj kreas florantajn transformojn.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI-Trejnisto';

  @override
  String get home_surroundings => 'Ĉirkaŭaĵo & Aero';

  @override
  String get home_notifications => 'Sciigoj';

  @override
  String get home_daily_score => 'Ĉiutaga Bonfara Poentaro';

  @override
  String get home_view_all => 'Rigardu Ĉiuj';

  @override
  String get food_diary_title => 'Manĝtaglibro';

  @override
  String get food_breakfast => 'Matenmanĝo';

  @override
  String get food_lunch => 'Tagmanĝo';

  @override
  String get food_dinner => 'Vespermanĝo';

  @override
  String get food_snacks => 'Manĝetoj';

  @override
  String get food_add_food => 'Aldonu Manĝaĵon';

  @override
  String get food_edit_food => 'Redaktu Manĝaĵon';

  @override
  String get food_add_breakfast => 'Aldonu Matenmanĝon';

  @override
  String get food_add_lunch => 'Aldonu Tagmanĝon';

  @override
  String get food_add_dinner => 'Aldonu Vespermanĝon';

  @override
  String get food_add_snack => 'Aldonu Manĝeton';

  @override
  String get food_total_calories => 'Totalaj Kalorioj';

  @override
  String get food_empty_meal =>
      'Ankoraŭ neniuj manĝaĵoj registritaj por ĉi tiu manĝo';

  @override
  String get food_empty_diary => 'Neniuj manĝoj registritaj por ĉi tiu tago';

  @override
  String get food_log_first_meal =>
      'Frapu + por ensaluti vian unuan bongustan manĝon';

  @override
  String get food_quick_add => 'Rapida Aldono';

  @override
  String get food_search_hint => 'Serĉu pladojn, fruktojn, dal, roti...';

  @override
  String get food_custom_recipe => 'Propra Manĝaĵo kaj Recepto';

  @override
  String get food_scan_barcode => 'Skanu Strekkodon';

  @override
  String get food_camera_scan => 'AI Manĝaĵo-Skanilo';

  @override
  String get food_recent => 'Lastatempaj Manĝaĵoj';

  @override
  String get food_favourites => 'Plej ŝatataj';

  @override
  String get food_macro_summary => 'Makronutraj Rompoj';

  @override
  String get food_delete_meal_confirm =>
      'Ĉu vi certas, ke vi volas forigi ĉi tiun objekton?';

  @override
  String get food_item_deleted => 'Manĝaĵo forigita';

  @override
  String get food_remaining => 'restanta';

  @override
  String get food_consumed => 'konsumita';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Serĉu Manĝaĵojn';

  @override
  String get foodSearch_scan_barcode => 'Skanu Strekkodon';

  @override
  String get foodSearch_take_photo => 'Prenu Foton de Manĝaĵo';

  @override
  String get foodSearch_custom_food => 'Krei Propran Manĝaĵon';

  @override
  String get foodSearch_recent_searches => 'Lastatempaj Serĉoj';

  @override
  String get foodSearch_popular => 'Popularaj Pladoj';

  @override
  String get foodSearch_no_results => 'Neniuj manĝaĵoj kongruas kun via serĉo';

  @override
  String get barcode_title => 'Strekokoda Skanilo';

  @override
  String get barcode_align => 'Vicigu strekkodon ene de la fotila kadro';

  @override
  String get barcode_not_found => 'Produkto ne trovita en datumbazo';

  @override
  String get barcode_premium_feature =>
      'Strekkoda skanado haveblas kun Bloomi Pro';

  @override
  String get camera_title => 'AI Manĝaĵo-Skanilo';

  @override
  String get camera_tap_hint => 'Prenu klaran foton de via plado';

  @override
  String get camera_analysing => 'Analizante manĝplaton...';

  @override
  String get camera_detected => 'Detektitaj eroj';

  @override
  String get camera_flash => 'Ŝaltigu Flash';

  @override
  String get camera_retake => 'Repreni Foton';

  @override
  String get camera_confirm_food => 'Konfirmu Erojn';

  @override
  String get customFood_title => 'Propra Manĝaĵo kaj Recepto';

  @override
  String get customFood_name_hint => 'Nomo de plado aŭ ingredienco';

  @override
  String get customFood_calories_hint => 'Kalorioj (kcal)';

  @override
  String get customFood_protein_hint => 'Proteino (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidratoj (g)';

  @override
  String get customFood_fat_hint => 'Graso (g)';

  @override
  String get customFood_save => 'Konservu Recepton';

  @override
  String get water_tracker_title => 'Akvo-Spurilo';

  @override
  String get water_daily_target => 'Ĉiutaga Hidracia Celo';

  @override
  String get water_logged_today => 'Ensalutinta Hodiaŭ';

  @override
  String get water_add_glass => '+250 ml Vitro';

  @override
  String get water_add_bottle => '+500 ml Botelo';

  @override
  String get water_custom_amount => 'Propra Kvanto';

  @override
  String get water_reminder_tip =>
      'Trinku akvon regule dum la tago por konstanta energio.';

  @override
  String water_logged_toast(Object amount) {
    return 'Ensalutis $amount ml da akvo 💧';
  }

  @override
  String get workout_title => 'Protokolo de Entrenado';

  @override
  String get workout_add_exercise => 'Aldonu Trejnadon';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Forto';

  @override
  String get workout_yoga => 'Jogo & Fleksebleco';

  @override
  String get workout_duration => 'Daŭro';

  @override
  String get workout_intensity => 'Intenseco';

  @override
  String get workout_calories_burned => 'Kalorioj Bruligitaj';

  @override
  String get workout_empty => 'Neniuj ekzercoj registritaj hodiaŭ';

  @override
  String get workout_save_success => 'Trejnado konservita sukcese!';

  @override
  String get workout_type => 'Trejna Tipo';

  @override
  String get workout_notes => 'Notoj & Reflektadoj';

  @override
  String get health_overview_title => 'Sano & Vitals';

  @override
  String get health_heart_rate => 'Korfrekvenco';

  @override
  String get health_blood_oxygen => 'Sanga oksigeno (SpO2)';

  @override
  String get health_blood_pressure => 'Sanga Premo';

  @override
  String get health_blood_glucose => 'Sanga Glukozo';

  @override
  String get health_body_temperature => 'Korpa Temperaturo';

  @override
  String get health_sleep_tracking => 'Dorma Spurado';

  @override
  String get health_weight_tracking => 'Pezo kaj Korpa Komponado';

  @override
  String get health_waist_hip => 'Talio-al-Kokso Proporcio';

  @override
  String get health_devices_hub => 'Aparatoj kaj Smartwatch Hub';

  @override
  String get health_sync_now => 'Sinkronigi Sanajn Datumojn';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Laste sinkronigita: $time';
  }

  @override
  String get health_manual_entry => 'Mana Sana Eniro';

  @override
  String get health_metric_detail => 'Metrikaj Detaloj';

  @override
  String get health_connected_sensors => 'Konektitaj Sanaj Sensiloj';

  @override
  String get plan_title => 'Ĉiutaga Plano';

  @override
  String get plan_weekly_title => 'Semajna Bonfarta Plano';

  @override
  String get plan_calorie_target => 'Kaloria Celo';

  @override
  String get plan_water_target => 'Celo de Hidratado';

  @override
  String get plan_step_target => 'Paŝa Celo';

  @override
  String get plan_sleep_target => 'Dorma Celo';

  @override
  String get plan_meal_suggestions => 'Manĝaj Sugestoj';

  @override
  String get plan_healthy_habits => 'Sanaj Kutimoj & Konsiloj';

  @override
  String get plan_coach_advice => 'Bloomi AI Trejnisto-Rekomendoj';

  @override
  String get plan_generated_title => 'Personigita Ĉiutaga Horaro';

  @override
  String get profile_title => 'Profilo';

  @override
  String get profile_edit => 'Redakti Profilon';

  @override
  String get profile_name => 'Nomo';

  @override
  String get profile_age => 'Aĝo';

  @override
  String get profile_gender => 'Sekso';

  @override
  String get profile_height => 'Alteco';

  @override
  String get profile_weight => 'Pezo';

  @override
  String get profile_goal => 'Primara Celo';

  @override
  String get profile_activity_level => 'Aktiveca Nivelo';

  @override
  String get profile_stats => 'Miaj Bonfaraj Statoj';

  @override
  String get profile_saved => 'Profilo sukcese ĝisdatigita';

  @override
  String get profile_bmi => 'Korpa Masa Indekso (BMI)';

  @override
  String get profile_membership => 'Membreco';

  @override
  String get settings => 'Agordoj';

  @override
  String get preferences_habits => 'PREFEROJ & KUTIMOS';

  @override
  String get appearance_theme => 'Apero & Temo';

  @override
  String get appearance_theme_sub =>
      'Mallumaj, Lumaj, Sistemreĝimo kaj Fonaj Opcioj';

  @override
  String get permissions => 'Permesoj kaj Sistema Aliro';

  @override
  String get permissions_sub =>
      'Sano Konekti, Paŝaj Sensiloj, GPS, Sciigoj kaj Fotilo';

  @override
  String get reminders_notifications => 'Memorigiloj kaj Sciigoj';

  @override
  String get reminders_sub =>
      'Manĝhoroj, akvo, pezo-enregistro kaj memorigiloj pri enlitiĝo';

  @override
  String get units_of_measurement => 'Unuoj de Mezuro';

  @override
  String get units_sub =>
      'Metrika (kg, cm, ml, km) aŭ Imperia (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Lingvo';

  @override
  String get language_sub =>
      'La angla, हिन्दी (hinda), la hingla kaj pli ol 195 tutmondaj lingvoj';

  @override
  String get home_screen_widgets => 'Hejkranaj Fenestraĵoj';

  @override
  String get widgets_sub =>
      'Vivaj Android-fenestraĵoj: Nabo, Paŝoj, Akvo, Nutrado kaj Maskoto';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch-kunulo, kaheloj, komplikaĵoj kaj vivaj vitaloj';

  @override
  String get goals_wellness => 'CELOJ & BONFESTOKONOJ';

  @override
  String get nutrition_targets => 'Nutrado-Celoj & Makro-Disigo';

  @override
  String get nutrition_targets_sub =>
      'Kaloria celo, proteino, karbonhidratoj, graso kaj akvocelo';

  @override
  String get weekly_recap => 'Semajna Bonfarta Resumo';

  @override
  String get weekly_recap_sub =>
      '7-taga kaloria mezumo, makroproporcio kaj plej bona tago';

  @override
  String get streaks_milestones => 'Strioj & Mejloŝtonoj';

  @override
  String get streaks_sub => 'Aktivaj florstrioj, insignoj kaj atingoj';

  @override
  String get connected_devices => 'KONEKTITAJ APARATOJ & EKOSISTEMA';

  @override
  String get devices_hub => 'Aparatoj kaj Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ĉirkaŭaĵo & Vetero';

  @override
  String get surroundings_sub =>
      'Aera kvalito (AQI), UV-indekso kaj veterhidrataj konsiletoj';

  @override
  String get bloomi_pro => 'Bloomi Pro Abono';

  @override
  String get bloomi_pro_sub =>
      'Trejnisto de AI Plano, 5 hejkranaj fenestraĵoj kaj spurado de esencaj aferoj';

  @override
  String get about_security => 'PRI & SEKURECO';

  @override
  String get about_bloomi => 'Pri Bloomi';

  @override
  String get about_bloomi_sub => 'Konstruu specifojn, version, atribuojn';

  @override
  String get privacy_policy => 'Privateca Politiko';

  @override
  String get privacy_policy_sub =>
      'Senrete unue, sur-aparata datuma arkitekturo';

  @override
  String get terms_conditions => 'Kondiĉoj kaj Kondiĉoj';

  @override
  String get terms_conditions_sub =>
      'Kondiĉoj de servo kaj gvidlinioj pri bonfarto';

  @override
  String get delete_account => 'Forigi konton kaj datumojn';

  @override
  String get delete_account_sub =>
      'Nereveneble viŝu lokajn SQLite-datumojn kaj nubajn sekurkopiojn';

  @override
  String get healthy_habits => 'Konstruu mildajn, daŭrajn bonfarajn kutimojn';

  @override
  String get all_logs => 'Miaj Spuritaj Datumoj & Registroj';

  @override
  String get search_language => 'Serĉu laŭ lingvo aŭ denaska skribo...';

  @override
  String get languages_available => 'Disponeblaj lingvoj';

  @override
  String get no_matching_languages => 'Neniuj kongruaj lingvoj trovitaj';

  @override
  String get try_searching =>
      'Provu serĉi laŭ denaska skribo aŭ angla literumo';

  @override
  String get partially_translated => 'Parte tradukita';

  @override
  String get complete_translation => 'Kompleta';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lingvo agordita al $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Ĉirkaŭaĵo kaj Medio';

  @override
  String get surroundings_aqi => 'Indekso de Aera Kvalito';

  @override
  String get surroundings_uv => 'UV-Indekso';

  @override
  String get surroundings_temp => 'Temperaturo';

  @override
  String get surroundings_humidity => 'Humideco';

  @override
  String get surroundings_hydration_advice =>
      'Restu bone hidratita en nunaj veterkondiĉoj.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Serĉu Manĝaĵon';

  @override
  String get food_quick_barcode => 'Skanu Strekokodon 👑';

  @override
  String get food_quick_water => 'Aldonu Akvon';

  @override
  String get food_quick_custom => 'Propra Manĝaĵo';

  @override
  String get surroundings_good => 'Bone';

  @override
  String get surroundings_moderate => 'Modera';

  @override
  String get surroundings_unhealthy => 'Nesana';

  @override
  String get notifications_title => 'Sciigoj kaj Atentigoj';

  @override
  String get notifications_empty => 'Neniuj novaj sciigoj';

  @override
  String get notifications_mark_read => 'Marki Ĉion kiel Legita';

  @override
  String get notifications_clear => 'Forigi Ĉion';

  @override
  String get reminders => 'Agordoj de memorigilo';

  @override
  String get notifications => 'Sciigoj';

  @override
  String get reminders_breakfast_title => 'Matenmanĝmemorigilo 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bonan matenon! Tempo por nutra matenmanĝo ĉe $time .';
  }

  @override
  String get reminders_lunch_title => 'Rememorigilo pri Tagmanĝo 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Paŭzu kaj ĝuu ekvilibran, atentan tagmanĝon ĉe $time .';
  }

  @override
  String get reminders_dinner_title => 'Vespermanĝmemorigilo 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tempo por malpeza, kontentiga vespermanĝo ĉe $time .';
  }

  @override
  String get reminders_water_title => 'Hidrata Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tempo trinki freŝan glason da akvo! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Semajna Pezigo ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Spuri viajn semajnajn korpan metrikon sur Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Bedtime Winddown 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Malstreĉiĝi kaj prepariĝu por trankvila dormo ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bonvenon al Bloomi';

  @override
  String get onboard_sub =>
      'Via amika, eksterrete unua kunulo pri sano kaj nutrado.';

  @override
  String get onboard_get_started => 'Komencu';

  @override
  String get onboard_sign_in => 'Ensalutu';

  @override
  String get onboard_skip => 'Saltu';

  @override
  String get onboard_choose_goal => 'Kio estas via ĉefa bonfarta celo?';

  @override
  String get onboard_goal_weight_loss => 'Milda Pezo Perdo';

  @override
  String get onboard_goal_muscle => 'Muskola Gajno & Forto';

  @override
  String get onboard_goal_energy => 'Ĉiutaga Energio & Vigleco';

  @override
  String get onboard_goal_habits => 'Sana Atentema Manĝado';

  @override
  String get onboard_about_you => 'Diru al Ni Pri Vi';

  @override
  String get onboard_lifestyle => 'Via Ĉiutaga Rutino';

  @override
  String get onboard_permissions_title => 'Permesoj kaj Sistema Aliro';

  @override
  String get onboard_permissions_sub =>
      'Donu aliron al sinkronigi paŝojn, trejnadojn kaj memorigilojn.';

  @override
  String get onboard_plan_ready_title => 'Via Propra Plano estas Preta!';

  @override
  String get onboard_plan_ready_sub =>
      'Ni kreis mildan, personigitan nutradon kaj bonfartan vojmapon nur por vi.';

  @override
  String get onboard_enter_bloomi => 'Eniru Bloomi';

  @override
  String get insights_weekly_report => 'Semajna Bonfarta Resumo';

  @override
  String insights_best_day(Object day) {
    return 'Plej bona Konsekvenca Tago: $day';
  }

  @override
  String get insights_streaks_badges => 'Strioj & Mejloŝtonoj';

  @override
  String insights_unlocked_on(Object date) {
    return 'Malŝlosita je $date';
  }

  @override
  String get insights_keep_going => 'Daŭrigu la mirindan progreson!';

  @override
  String get widgets_title => 'Hejkranaj Fenestraĵoj';

  @override
  String widgets_active_count(Object count) {
    return 'Aktivaj Fenestraĵoj: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Paŝoj & Aktiva Ringo';

  @override
  String get widgets_water_title => 'Rapida Registro de Hidratado';

  @override
  String get widgets_mascot_title => 'Bloomi Maskota Kunulo';

  @override
  String get wear_os_title => 'Portu OS Smartwatch';

  @override
  String get wear_os_connected => 'Konektita al Watch';

  @override
  String get wear_os_sync => 'Sinkronigi Rigardajn Datumojn';

  @override
  String get theme_title => 'Apero & Temo';

  @override
  String get theme_mode => 'Temo-Reĝimo';

  @override
  String get theme_light => 'Lumo';

  @override
  String get theme_dark => 'Mallumo';

  @override
  String get theme_system => 'Sistemo Defaŭlto';

  @override
  String get theme_background_palette => 'Fona Paletro';

  @override
  String get units_title => 'Unuoj de Mezuro';

  @override
  String get units_metric => 'Metriko (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperia (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ne eblas ŝargi instrumentpanelon';

  @override
  String get home_health_permission_req => 'Permeso de Health Connect Bezonata';

  @override
  String get home_health_permission_desc =>
      'Bloomi postulas Health Connect-permeson por tiri realajn paŝojn, korfrekvencon kaj sinkronigi poŝtelefonajn fenestaĵojn en reala tempo.';

  @override
  String get home_allow_health => 'Permesu Health Connect';

  @override
  String get home_ready_mindful_day => 'Preta por atenta tago? ✨';

  @override
  String get home_quick_add => 'Rapida Aldono';

  @override
  String get home_live_gps => 'Viva GPS';

  @override
  String get home_calories_remaining_label => 'KALORIOJ RESTAS';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Manĝita: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Frapu por Akvo-Spurilo 💧';

  @override
  String get home_water_goal_reached => 'Ĉiutaga celo atingita 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml al ĉiutaga celo';
  }

  @override
  String get home_details => 'Detaloj';

  @override
  String get home_upgrade_plan_desc =>
      'Ĝisdatigu por malŝlosi personigitajn ĉiutagajn celojn kaj AI-planon';

  @override
  String get home_unlock => 'Malŝlosu 👑';

  @override
  String get home_quick_log_hint => 'Rapide registri bonfaran eniron';

  @override
  String get food_serving_size => 'Serva Grandeco';

  @override
  String get food_serving_grams => 'Porcio (g)';

  @override
  String get food_number_servings => 'Nombro de Servoj';

  @override
  String get food_calories_per_serving => 'Kalorioj por porcio';

  @override
  String get food_recipe_ingredients => 'Ingrediencoj';

  @override
  String get food_recipe_add_ingredient => 'Aldoni Ingrediencon';

  @override
  String get food_recipe_directions => 'Instrukcioj & Notoj';

  @override
  String get food_recipe_total => 'Tuta Recepto-Nutrado';

  @override
  String get food_recipe_per_serving => 'Por Servo Nutrado';

  @override
  String get food_recipe_saved_toast => 'Propra manĝaĵo sukcese konservita!';

  @override
  String get food_barcode_found => 'Produkto Trovita!';

  @override
  String get food_barcode_not_found_desc =>
      'Ni ne povis trovi ĉi tiun strekkodon en la malfermita datumbazo. Vi povas aldoni ĝin kiel kutiman manĝaĵon.';

  @override
  String get food_add_custom_btn => 'Aldoni Propran Manĝaĵon';

  @override
  String get food_scan_again => 'Skanu Denove';

  @override
  String get food_review_items => 'Revizio Detektita Manĝaĵojn';

  @override
  String get food_review_hint =>
      'Alĝustigu kvantojn aŭ forigu ajnan nerekonitan objekton';

  @override
  String get food_log_selected => 'Ensalutu Elektitajn Manĝaĵojn';

  @override
  String get food_favourites_title => 'Ŝatataj Manĝaĵoj';

  @override
  String get food_recent_title => 'Lastatempaj Manĝaĵoj';

  @override
  String get food_no_favourites =>
      'Ankoraŭ neniuj preferataj manĝaĵoj. Frapu koron sur ajna manĝaĵo por ŝpari ĉi tie.';

  @override
  String get food_no_recents =>
      'Neniuj lastatempe registritaj manĝaĵoj trovitaj.';

  @override
  String get food_nutrition_details_title => 'Ĉiutaga Nutrado Detaloj';

  @override
  String get food_macro_protein_label => 'Proteina Rompo';

  @override
  String get food_macro_carbs_label => 'Karbohidratoj Panas';

  @override
  String get food_macro_fat_label => 'Grasa Rompo';

  @override
  String get food_macro_fiber_label => 'Fibro Rompo';

  @override
  String get food_daily_target_comparison => 'Cela Komparo';

  @override
  String food_target_label(Object target) {
    return 'Celo: $target';
  }

  @override
  String get food_edit_entry => 'Redakti Taglibron';

  @override
  String get food_delete_entry => 'Forigi Eniron';

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
  String get water_intake_history => 'Hodiaŭ Akvo-Registroj';

  @override
  String get water_no_logs_today =>
      'Neniu akvo enhakita ankoraŭ hodiaŭ. Hidrumi kaj frapeti rapidan aldona butonon!';

  @override
  String get water_adjust_goal => 'Alĝustigu Ĉiutagan Celon';

  @override
  String get health_connect_banner => 'Konektita al Health Connect';

  @override
  String get health_vitals_summary => 'Ĉiutaga Sano Vitals';

  @override
  String get health_latest_heart_rate => 'Plej nova Korfrekvenco';

  @override
  String get health_latest_bp => 'Sanga Premo';

  @override
  String get health_latest_spo2 => 'Sanga Oksigeno';

  @override
  String get health_latest_glucose => 'Sanga Glukozo';

  @override
  String get health_latest_weight => 'Pezo';

  @override
  String get health_latest_sleep => 'Daŭro de dormo';

  @override
  String get health_add_manual => 'Aldonu Manan Mezuradon';

  @override
  String get health_history_trends => 'Historiaj Tendencoj';

  @override
  String get health_sync_success => 'Sanaj datumoj sukcese sinkronigitaj!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours horoj $mins min';
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
  String get health_devices_title => 'Konektitaj Aparatoj & Porteblaj';

  @override
  String get health_devices_desc =>
      'Administru parigitajn inteligentajn horloĝojn, taŭgecajn spurojn kaj sansensilojn.';

  @override
  String get health_workout_editor_title => 'Redakti Trejnadon';

  @override
  String get health_workout_name_label => 'Nomo de Trejnado';

  @override
  String get health_workout_duration_label => 'Daŭro (minutoj)';

  @override
  String get health_workout_calories_label => 'Taksaj Kalorioj (kcal)';

  @override
  String get health_workout_date_label => 'Dato kaj Tempo';

  @override
  String get plan_daily_wellness_roadmap => 'Via Personigita Vojmapo';

  @override
  String get plan_morning_routine => 'Matena Rutino';

  @override
  String get plan_afternoon_routine => 'Tagmeza Bonfarto';

  @override
  String get plan_evening_routine => 'Vespere Vento-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI-Trejnisto';

  @override
  String get plan_weekly_overview => '7-Taga Bonfarta Fokuso';

  @override
  String get plan_targets_title => 'Bonfaraj Celoj kaj Celoj';

  @override
  String get plan_calorie_budget_label => 'Ĉiutaga Kaloria Buĝeto';

  @override
  String get plan_water_budget_label => 'Ĉiutaga Akva Celo';

  @override
  String get plan_step_budget_label => 'Ĉiutaga Paŝa Celo';

  @override
  String get plan_macro_split_label => 'Makronutra Proporcio';

  @override
  String get profile_personal_details => 'Personaj Detaloj';

  @override
  String get profile_body_stats => 'Korpaj Mezuradoj';

  @override
  String get profile_app_preferences => 'Preferoj kaj Agordoj';

  @override
  String get profile_edit_name_hint => 'Via nomo';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Alteco ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Pezo ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Aĝo';

  @override
  String get profile_gender_male => 'Male';

  @override
  String get profile_gender_female => 'Ino';

  @override
  String get profile_gender_other => 'Alia / Prefere ne diri';

  @override
  String get profile_activity_sedentary =>
      'Sedenta (Malmulte al neniu ekzerco)';

  @override
  String get profile_activity_light => 'Malpeze Aktiva (1-3 tagoj/semajno)';

  @override
  String get profile_activity_moderate => 'Modere Aktiva (3-5 tagoj/semajno)';

  @override
  String get profile_activity_very => 'Tre Aktiva (6-7 tagoj/semajno)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Instalu la kahelon kaj komplikaĵon Bloomi sur via Wear OS-horloĝo por rigardi kaloriojn, akvon kaj paŝojn.';

  @override
  String get settings_widgets_header => 'Interagaj Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Alpinglu realtempajn fenestraĵojn sur via aparato hejmekrano por tujaj ĝisdatigoj.';

  @override
  String get settings_about_header => 'Pri Bloomi';

  @override
  String get settings_about_version => 'Versio 1.0.0';

  @override
  String get settings_about_build => 'Konstruu 100';

  @override
  String get settings_about_credits => 'Kreite zorge por atenta, sana vivado.';

  @override
  String get settings_terms_header => 'Kondiĉoj kaj Kondiĉoj';

  @override
  String get settings_privacy_header => 'Privateca Politiko';

  @override
  String get settings_delete_header => 'Forigi konton kaj datumojn';

  @override
  String get settings_delete_warning =>
      'Ĉi tiu ago ne povas esti malfarita. Ĉiuj viaj manĝoj, trejnadoj, vitalaĵoj kaj profilo estos konstante forigitaj.';

  @override
  String get settings_delete_confirm_btn => 'Konstante Forigi';

  @override
  String get onboard_welcome_headline => 'Bonvenon al Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Milda, atenta bonstato-spurado desegnita ĉirkaŭ via vivo.';

  @override
  String get onboard_step_about => 'Pri Vi';

  @override
  String get onboard_step_goals => 'Viaj Celoj';

  @override
  String get onboard_step_lifestyle => 'Ĉiutagaj Kutimoj';

  @override
  String get onboard_step_permissions => 'Permesoj';

  @override
  String get onboard_step_plan => 'Preta!';

  @override
  String get onboard_health_connect_perm => 'Aliro al Sano Konekti';

  @override
  String get onboard_step_sensors_perm => 'Paŝa Nombrilo Sensilo';

  @override
  String get onboard_notif_perm => 'Atencaj Rememorigiloj kaj Sciigoj';

  @override
  String get onboard_camera_perm => 'Fotilo (Sterkodo kaj Manĝaĵo-Skanilo)';

  @override
  String get onboard_grant_permissions => 'Donu Permesojn';

  @override
  String get onboard_continue_dashboard => 'Malfermu Instrumentpanelon';

  @override
  String get notif_channel_hydration_name => 'Hidraciaj Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Mildaj akvaj memorigiloj dum la tuta tago';

  @override
  String get notif_channel_nutrition_name =>
      'Rememorigiloj pri Manĝo kaj Nutrado';

  @override
  String get notif_channel_nutrition_desc =>
      'Rememorigiloj pri matenmanĝo, tagmanĝo kaj vespermanĝo';

  @override
  String get notif_channel_steps_name => 'Paŝoj Mejloŝtonoj';

  @override
  String get notif_channel_steps_desc =>
      'Festoj atinginte ĉiutagajn paŝocelojn';

  @override
  String get notif_channel_vitals_name => 'Kontroloj pri Sano kaj Vitalaĵoj';

  @override
  String get notif_channel_vitals_desc => 'Memorigiloj pri pezo kaj enlitiĝo';

  @override
  String get notif_action_log_water => '💧 Ensalutu +250ml';

  @override
  String get notif_action_snooze => 'Dormi 15 m';

  @override
  String get notif_action_log_meal => '🥗 Ensalutu Manĝon';

  @override
  String get language => 'Lingvo';

  @override
  String get share => 'Kunhavigi';

  @override
  String common_days(Object count) {
    return 'antaŭ $count d';
  }
}
