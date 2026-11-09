// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Tuis';

  @override
  String get nav_today => 'Vandag';

  @override
  String get nav_plan => 'Beplan';

  @override
  String get nav_food => 'Kos';

  @override
  String get nav_food_diary => 'Kos Dagboek';

  @override
  String get nav_workout => 'Oefensessie log';

  @override
  String get nav_health => 'Gesondheid';

  @override
  String get nav_profile => 'Profiel';

  @override
  String get save => 'Stoor';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get delete => 'Vee uit';

  @override
  String get edit => 'Wysig';

  @override
  String get done => 'Klaar';

  @override
  String get close => 'Maak toe';

  @override
  String get back => 'Terug';

  @override
  String get next => 'Volgende';

  @override
  String get continue_btn => 'Gaan voort';

  @override
  String get confirm => 'Bevestig';

  @override
  String get search => 'Soek';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Almal';

  @override
  String get active => 'Aktief';

  @override
  String get today => 'Vandag';

  @override
  String get yesterday => 'Gister';

  @override
  String get tomorrow => 'Môre';

  @override
  String get add => 'Voeg by';

  @override
  String get remove => 'Verwyder';

  @override
  String get refresh => 'Verfris';

  @override
  String get retry => 'Probeer weer';

  @override
  String get error => 'Fout';

  @override
  String get success => 'Sukses';

  @override
  String get loading => 'Laai tans...';

  @override
  String get no_data => 'Geen data beskikbaar nie';

  @override
  String get offline => 'Vanlyn modus';

  @override
  String get offline_sub =>
      'Veranderinge sal sinkroniseer sodra dit weer gekoppel is';

  @override
  String get undo => 'Ontdoen';

  @override
  String get portion => 'Gedeelte';

  @override
  String get quantity => 'Hoeveelheid';

  @override
  String get unit => 'Eenheid';

  @override
  String get clear => 'Duidelik';

  @override
  String get select => 'Kies';

  @override
  String get apply => 'Pas toe';

  @override
  String get reset => 'Stel terug';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get optional => 'Opsioneel';

  @override
  String get calories => 'Kalorieë';

  @override
  String get protein => 'Proteïen';

  @override
  String get carbs => 'Koolhidrate';

  @override
  String get fat => 'Vet';

  @override
  String get fiber => 'Vesel';

  @override
  String get water => 'Water';

  @override
  String get steps => 'Trappe';

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
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'uur';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Dien';

  @override
  String get servings => 'Porsies';

  @override
  String get serving_size => 'Bediening Grootte';

  @override
  String get per_100g => 'per 100g';

  @override
  String get india => 'Indië';

  @override
  String get asia => 'Asië';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Midde-Ooste';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerikas';

  @override
  String get home_title => 'Tuis';

  @override
  String get home_greeting_morning => 'Goeie More';

  @override
  String get home_greeting_afternoon => 'Goeie middag';

  @override
  String get home_greeting_evening => 'Goeienaand';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dae streep',
      one: '1 dag streep',
      zero: '0 dae streep',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Verbrand';

  @override
  String get home_calories_budget => 'Kalorie begroting';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal oor';
  }

  @override
  String get home_water_title => 'Daaglikse hidrasie';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Treë Gestap';

  @override
  String get home_quick_actions => 'Vinnige aksies';

  @override
  String get home_log_meal => 'Log Ete';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Log oefensessie';

  @override
  String get home_log_weight => 'Log gewig';

  @override
  String get home_insights_title => 'Vandag se insigte';

  @override
  String get home_quote =>
      'Klein gesonde keuses skep bloeiende transformasies.';

  @override
  String get home_ai_coach_tip => 'Bloomi KI-afrigter';

  @override
  String get home_surroundings => 'Omgewing & Lug';

  @override
  String get home_notifications => 'Kennisgewings';

  @override
  String get home_daily_score => 'Daaglikse welstandtelling';

  @override
  String get home_view_all => 'Bekyk alles';

  @override
  String get food_diary_title => 'Kos Dagboek';

  @override
  String get food_breakfast => 'Ontbyt';

  @override
  String get food_lunch => 'Middagete';

  @override
  String get food_dinner => 'Aandete';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Voeg kos by';

  @override
  String get food_edit_food => 'Wysig Kos';

  @override
  String get food_add_breakfast => 'Voeg Ontbyt by';

  @override
  String get food_add_lunch => 'Voeg middagete by';

  @override
  String get food_add_dinner => 'Voeg aandete by';

  @override
  String get food_add_snack => 'Voeg Snack by';

  @override
  String get food_total_calories => 'Totale kalorieë';

  @override
  String get food_empty_meal =>
      'Daar is nog geen kos vir hierdie ete aangeteken nie';

  @override
  String get food_empty_diary => 'Geen etes aangeteken vir hierdie dag nie';

  @override
  String get food_log_first_meal =>
      'Tik op + om jou eerste heerlike ete aan te teken';

  @override
  String get food_quick_add => 'Vinnige byvoeging';

  @override
  String get food_search_hint => 'Soek geregte, vrugte, dal, roti...';

  @override
  String get food_custom_recipe => 'Pasgemaakte kos en resep';

  @override
  String get food_scan_barcode => 'Skandeer strepieskode';

  @override
  String get food_camera_scan => 'AI Voedselskandeerder';

  @override
  String get food_recent => 'Onlangse kosse';

  @override
  String get food_favourites => 'Gunstelinge';

  @override
  String get food_macro_summary => 'Makronutriënt-ontleding';

  @override
  String get food_delete_meal_confirm =>
      'Is jy seker jy wil hierdie item verwyder?';

  @override
  String get food_item_deleted => 'Kos item verwyder';

  @override
  String get food_remaining => 'oorblywende';

  @override
  String get food_consumed => 'verteer';

  @override
  String food_of_target(Object target) {
    return 'van $target kcal';
  }

  @override
  String get foodSearch_title => 'Soek kos';

  @override
  String get foodSearch_scan_barcode => 'Skandeer strepieskode';

  @override
  String get foodSearch_take_photo => 'Snap Food Foto';

  @override
  String get foodSearch_custom_food => 'Skep pasgemaakte kos';

  @override
  String get foodSearch_recent_searches => 'Onlangse soektogte';

  @override
  String get foodSearch_popular => 'Gewilde Geregte';

  @override
  String get foodSearch_no_results => 'Geen kosse pas by jou soektog nie';

  @override
  String get barcode_title => 'Streepkodeskandeerder';

  @override
  String get barcode_align => 'Belyn strepieskode binne die kameraraam';

  @override
  String get barcode_not_found => 'Produk nie in databasis gevind nie';

  @override
  String get barcode_premium_feature =>
      'Streepkodeskandering is beskikbaar met Bloomi Pro';

  @override
  String get camera_title => 'AI Voedselskandeerder';

  @override
  String get camera_tap_hint => 'Neem \'n duidelike foto van jou gereg';

  @override
  String get camera_analysing => 'Ontleed tans kosbord...';

  @override
  String get camera_detected => 'Bespeur items';

  @override
  String get camera_flash => 'Wissel Flash';

  @override
  String get camera_retake => 'Herneem Foto';

  @override
  String get camera_confirm_food => 'Bevestig items';

  @override
  String get customFood_title => 'Pasgemaakte kos en resep';

  @override
  String get customFood_name_hint => 'Geregte of bestanddeel naam';

  @override
  String get customFood_calories_hint => 'Kalorieë (kcal)';

  @override
  String get customFood_protein_hint => 'Proteïen (g)';

  @override
  String get customFood_carbs_hint => 'Koolhidrate (g)';

  @override
  String get customFood_fat_hint => 'Vet (g)';

  @override
  String get customFood_save => 'Stoor resep';

  @override
  String get water_tracker_title => 'Water Tracker';

  @override
  String get water_daily_target => 'Daaglikse hidrasiedoelwit';

  @override
  String get water_logged_today => 'Vandag aangeteken';

  @override
  String get water_add_glass => '+250 ml Glas';

  @override
  String get water_add_bottle => '+500 ml bottel';

  @override
  String get water_custom_amount => 'Pasgemaakte bedrag';

  @override
  String get water_reminder_tip =>
      'Drink gereeld water deur die dag vir bestendige energie.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml water aangeteken 💧';
  }

  @override
  String get workout_title => 'Oefensessie log';

  @override
  String get workout_add_exercise => 'Voeg oefensessie by';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Sterkte';

  @override
  String get workout_yoga => 'Joga en buigsaamheid';

  @override
  String get workout_duration => 'Duur';

  @override
  String get workout_intensity => 'Intensiteit';

  @override
  String get workout_calories_burned => 'Kalorieë verbrand';

  @override
  String get workout_empty => 'Geen oefensessies vandag aangeteken nie';

  @override
  String get workout_save_success => 'Oefensessie suksesvol gestoor!';

  @override
  String get workout_type => 'Soort oefensessie';

  @override
  String get workout_notes => 'Notas en refleksies';

  @override
  String get health_overview_title => 'Gesondheid en noodsaaklikhede';

  @override
  String get health_heart_rate => 'Hartklop';

  @override
  String get health_blood_oxygen => 'Bloedsuurstof (SpO2)';

  @override
  String get health_blood_pressure => 'Bloeddruk';

  @override
  String get health_blood_glucose => 'Bloedglukose';

  @override
  String get health_body_temperature => 'Liggaamstemperatuur';

  @override
  String get health_sleep_tracking => 'Slaap dop';

  @override
  String get health_weight_tracking => 'Gewig & Liggaamsamestelling';

  @override
  String get health_waist_hip => 'Middel-tot-heup-verhouding';

  @override
  String get health_devices_hub => 'Toestelle & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sinkroniseer gesondheidsdata';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Laas gesinkroniseer: $time';
  }

  @override
  String get health_manual_entry => 'Handmatige gesondheidsinskrywing';

  @override
  String get health_metric_detail => 'Metrieke besonderhede';

  @override
  String get health_connected_sensors => 'Gekoppelde gesondheidsensors';

  @override
  String get plan_title => 'Daaglikse Plan';

  @override
  String get plan_weekly_title => 'Weeklikse welstandsplan';

  @override
  String get plan_calorie_target => 'Kalorie teiken';

  @override
  String get plan_water_target => 'Hidrasie teiken';

  @override
  String get plan_step_target => 'Stap teiken';

  @override
  String get plan_sleep_target => 'Slaap teiken';

  @override
  String get plan_meal_suggestions => 'Ete Voorstelle';

  @override
  String get plan_healthy_habits => 'Gesonde gewoontes en wenke';

  @override
  String get plan_coach_advice => 'Bloomi AI Afrigter Aanbevelings';

  @override
  String get plan_generated_title => 'Persoonlike daaglikse skedule';

  @override
  String get profile_title => 'Profiel';

  @override
  String get profile_edit => 'Wysig profiel';

  @override
  String get profile_name => 'Naam';

  @override
  String get profile_age => 'Ouderdom';

  @override
  String get profile_gender => 'Geslag';

  @override
  String get profile_height => 'Hoogte';

  @override
  String get profile_weight => 'Gewig';

  @override
  String get profile_goal => 'Primêre doelwit';

  @override
  String get profile_activity_level => 'Aktiwiteitsvlak';

  @override
  String get profile_stats => 'My welstandstatistieke';

  @override
  String get profile_saved => 'Profiel suksesvol opgedateer';

  @override
  String get profile_bmi => 'Liggaamsmassa-indeks (LMI)';

  @override
  String get profile_membership => 'Lidmaatskap';

  @override
  String get settings => 'Instellings';

  @override
  String get preferences_habits => 'VOORKEURE & GEWOONTES';

  @override
  String get appearance_theme => 'Voorkoms & Tema';

  @override
  String get appearance_theme_sub =>
      'Donker, lig, stelselmodus en toepassingsagtergrondopsies';

  @override
  String get permissions => 'Toestemmings en stelseltoegang';

  @override
  String get permissions_sub =>
      'Health Connect, stapsensors, GPS, kennisgewings en kamera';

  @override
  String get reminders_notifications => 'Herinneringe en kennisgewings';

  @override
  String get reminders_sub =>
      'Etenstye, water, gewig-aanmelding en slaaptyd-herinneringe';

  @override
  String get units_of_measurement => 'Meeteenhede';

  @override
  String get units_sub =>
      'Metries (kg, cm, ml, km) of Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Taal';

  @override
  String get language_sub =>
      'Engels, हिन्दी (Hindi), Hinglish en 195+ globale tale';

  @override
  String get home_screen_widgets => 'Tuisskerm Widgets';

  @override
  String get widgets_sub =>
      'Regstreekse Android-legstukke: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Dra OS Watch App';

  @override
  String get wear_os_sub =>
      'Slimhorlosie-metgesel, teëls, komplikasies en lewendige noodsaaklikhede';

  @override
  String get goals_wellness => 'DOELWITTE EN WELSTAND-INSIGTE';

  @override
  String get nutrition_targets => 'Voedingdoelwitte en makroverdeling';

  @override
  String get nutrition_targets_sub =>
      'Kalorie teiken, proteïen, koolhidrate, vet en water doelwit';

  @override
  String get weekly_recap => 'Weeklikse welstand-opsomming';

  @override
  String get weekly_recap_sub =>
      '7-dag kalorie gemiddelde, makro verhouding en beste dag';

  @override
  String get streaks_milestones => 'Strepe & Mylpale';

  @override
  String get streaks_sub => 'Aktiewe blomstrepe, kentekens en prestasies';

  @override
  String get connected_devices => 'GEKOPPELDE TOESTELLE & EKOSISTEEM';

  @override
  String get devices_hub => 'Toestelle & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Omgewing & Weer';

  @override
  String get surroundings_sub =>
      'Luggehalte (AQI), UV-indeks en weerhidrasiewenke';

  @override
  String get bloomi_pro => 'Bloomi Pro-intekening';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets vir die tuisskerm en nasporing van noodsaaklikhede';

  @override
  String get about_security => 'OOR & SEKURITEIT';

  @override
  String get about_bloomi => 'Oor Bloomi';

  @override
  String get about_bloomi_sub => 'Bou spesifikasies, weergawe, erkennings';

  @override
  String get privacy_policy => 'Privaatheidsbeleid';

  @override
  String get privacy_policy_sub => 'Vanlyn-eerste, op-toestel data-argitektuur';

  @override
  String get terms_conditions => 'Bepalings en voorwaardes';

  @override
  String get terms_conditions_sub => 'Diensbepalings en welstandriglyne';

  @override
  String get delete_account => 'Vee rekening en data uit';

  @override
  String get delete_account_sub =>
      'Vee onomkeerbaar plaaslike SQLite-data en wolkrugsteun uit';

  @override
  String get healthy_habits => 'Bou sagte, blywende welstandsgewoontes';

  @override
  String get all_logs => 'My nagespoorde data en logs';

  @override
  String get search_language => 'Soek volgens taal of inheemse skrif...';

  @override
  String get languages_available => 'Tale beskikbaar';

  @override
  String get no_matching_languages => 'Geen passende tale gevind nie';

  @override
  String get try_searching =>
      'Probeer soek volgens inheemse skrif of Engelse spelling';

  @override
  String get partially_translated => 'Gedeeltelik vertaal';

  @override
  String get complete_translation => 'Voltooi';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Taal gestel op $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Omgewing & Omgewing';

  @override
  String get surroundings_aqi => 'Luggehalte-indeks';

  @override
  String get surroundings_uv => 'UV-indeks';

  @override
  String get surroundings_temp => 'Temperatuur';

  @override
  String get surroundings_humidity => 'Humiditeit';

  @override
  String get surroundings_hydration_advice =>
      'Bly goed gehidreer in huidige weerstoestande.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Soek kos';

  @override
  String get food_quick_barcode => 'Skandeer strepieskode 👑';

  @override
  String get food_quick_water => 'Voeg Water by';

  @override
  String get food_quick_custom => 'Pasgemaakte kos';

  @override
  String get surroundings_good => 'Goed';

  @override
  String get surroundings_moderate => 'Matig';

  @override
  String get surroundings_unhealthy => 'Ongesond';

  @override
  String get notifications_title => 'Kennisgewings en waarskuwings';

  @override
  String get notifications_empty => 'Geen nuwe kennisgewings nie';

  @override
  String get notifications_mark_read => 'Merk alles as gelees';

  @override
  String get notifications_clear => 'Vee alles uit';

  @override
  String get reminders => 'Herinnering-instellings';

  @override
  String get notifications => 'Drukkennisgewings';

  @override
  String get reminders_breakfast_title => 'Ontbytherinnering 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Goeie more! Tyd vir \'n voedsame ontbyt by $time.';
  }

  @override
  String get reminders_lunch_title => 'Herinnering vir middagete 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pouse en geniet \'n gebalanseerde, bedagsame middagete by $time.';
  }

  @override
  String get reminders_dinner_title => 'Aandete-herinnering 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tyd vir \'n ligte, bevredigende aandete by $time .';
  }

  @override
  String get reminders_water_title => 'Hidrasie Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tyd om \'n vars glas water te drink! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Weeklikse inweeg ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Volg jou weeklikse liggaamsstatistieke op Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Slaaptyd Ontspan 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Ontspan en berei voor vir \'n rustige slaap ( $time ).';
  }

  @override
  String get onboard_welcome => 'Welkom by Bloomi';

  @override
  String get onboard_sub =>
      'Jou vriendelike, vanlyn-eerste gesondheids- en voedingsmetgesel.';

  @override
  String get onboard_get_started => 'Begin';

  @override
  String get onboard_sign_in => 'Meld aan';

  @override
  String get onboard_skip => 'Slaan oor';

  @override
  String get onboard_choose_goal => 'Wat is jou primêre welstandsdoelwit?';

  @override
  String get onboard_goal_weight_loss => 'Sagte gewigsverlies';

  @override
  String get onboard_goal_muscle => 'Spiertoename en -krag';

  @override
  String get onboard_goal_energy => 'Daaglikse energie en vitaliteit';

  @override
  String get onboard_goal_habits => 'Gesonde Bedagsaam Eet';

  @override
  String get onboard_about_you => 'Vertel ons van jouself';

  @override
  String get onboard_lifestyle => 'Jou daaglikse roetine';

  @override
  String get onboard_permissions_title => 'Toestemmings en stelseltoegang';

  @override
  String get onboard_permissions_sub =>
      'Gee toegang tot sinchroniseer stappe, oefensessies en onthounotas.';

  @override
  String get onboard_plan_ready_title => 'Jou pasgemaakte plan is gereed!';

  @override
  String get onboard_plan_ready_sub =>
      'Ons het \'n sagte, persoonlike voeding- en welstandpadkaart net vir jou gemaak.';

  @override
  String get onboard_enter_bloomi => 'Voer Bloomi in';

  @override
  String get insights_weekly_report => 'Weeklikse welstand-opsomming';

  @override
  String insights_best_day(Object day) {
    return 'Beste konsekwentheidsdag: $day';
  }

  @override
  String get insights_streaks_badges => 'Strepe & Mylpale';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ontsluit op $date';
  }

  @override
  String get insights_keep_going => 'Hou aan met die fantastiese vordering!';

  @override
  String get widgets_title => 'Tuisskerm Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Aktiewe legstukke: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Stappe en aktiewe ring';

  @override
  String get widgets_water_title => 'Hidrasie vinnige log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Dra OS Smartwatch';

  @override
  String get wear_os_connected => 'Gekoppel aan Watch';

  @override
  String get wear_os_sync => 'Sinkroniseer horlosiedata';

  @override
  String get theme_title => 'Voorkoms & Tema';

  @override
  String get theme_mode => 'Tema-modus';

  @override
  String get theme_light => 'Lig';

  @override
  String get theme_dark => 'Donker';

  @override
  String get theme_system => 'Stelsel';

  @override
  String get theme_background_palette => 'Agtergrondpalet';

  @override
  String get units_title => 'Meeteenhede';

  @override
  String get units_metric => 'Metrieke (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Kan nie kontroleskerm laai nie';

  @override
  String get home_health_permission_req =>
      'Toestemming vir Health Connect word vereis';

  @override
  String get home_health_permission_desc =>
      'Bloomi benodig Health Connect-toestemming om werklike stappe, hartklop te trek en mobiele huislegstukke intyds te sinkroniseer.';

  @override
  String get home_allow_health => 'Laat Health Connect toe';

  @override
  String get home_ready_mindful_day => 'Gereed vir \'n bedagsame dag? ✨';

  @override
  String get home_quick_add => 'Vinnige byvoeging';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORIEë OOR';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Geëet: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tik vir Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Daaglikse doelwit bereik 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml tot daaglikse doelwit';
  }

  @override
  String get home_details => 'Besonderhede';

  @override
  String get home_upgrade_plan_desc =>
      'Gradeer op om persoonlike daaglikse teikens en KI-plan te ontsluit';

  @override
  String get home_unlock => 'Ontsluit 👑';

  @override
  String get home_quick_log_hint => 'Teken vinnig \'n welstandinskrywing op';

  @override
  String get food_serving_size => 'Bediening Grootte';

  @override
  String get food_serving_grams => 'Bediening (g)';

  @override
  String get food_number_servings => 'Aantal porsies';

  @override
  String get food_calories_per_serving => 'Kalorieë per porsie';

  @override
  String get food_recipe_ingredients => 'Bestanddele';

  @override
  String get food_recipe_add_ingredient => 'Voeg bestanddeel by';

  @override
  String get food_recipe_directions => 'Instruksies & Notas';

  @override
  String get food_recipe_total => 'Totale resep Voeding';

  @override
  String get food_recipe_per_serving => 'Voeding per porsie';

  @override
  String get food_recipe_saved_toast => 'Gepasmaakte kos suksesvol gestoor!';

  @override
  String get food_barcode_found => 'Produk gevind!';

  @override
  String get food_barcode_not_found_desc =>
      'Ons kon nie hierdie strepieskode in die oop databasis vind nie. Jy kan dit as \'n pasgemaakte kos byvoeg.';

  @override
  String get food_add_custom_btn => 'Voeg pasgemaakte kos by';

  @override
  String get food_scan_again => 'Skandeer weer';

  @override
  String get food_review_items => 'Hersien opgespoorde voedsel';

  @override
  String get food_review_hint =>
      'Pas hoeveelhede aan of verwyder enige onherkende item';

  @override
  String get food_log_selected => 'Teken geselekteerde kosse aan';

  @override
  String get food_favourites_title => 'Gunsteling kosse';

  @override
  String get food_recent_title => 'Onlangse kosse';

  @override
  String get food_no_favourites =>
      'Nog geen gunsteling kos nie. Tik hart op enige kos om hier te spaar.';

  @override
  String get food_no_recents => 'Geen onlangs aangetekende kosse gevind nie.';

  @override
  String get food_nutrition_details_title => 'Daaglikse Voeding Besonderhede';

  @override
  String get food_macro_protein_label => 'Proteïen-afbreking';

  @override
  String get food_macro_carbs_label => 'Koolhidrate afbreek';

  @override
  String get food_macro_fat_label => 'Vetafbreking';

  @override
  String get food_macro_fiber_label => 'Veselafbreking';

  @override
  String get food_daily_target_comparison => 'Teikenvergelyking';

  @override
  String food_target_label(Object target) {
    return 'Teiken: $target';
  }

  @override
  String get food_edit_entry => 'Wysig dagboekinskrywing';

  @override
  String get food_delete_entry => 'Vee inskrywing uit';

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
    return '$current van $target ml';
  }

  @override
  String get water_intake_history => 'Vandag se Waterlogs';

  @override
  String get water_no_logs_today =>
      'Geen water is vandag nog aangemeld nie. Hidreer en tik \'n vinnige byvoeg-knoppie!';

  @override
  String get water_adjust_goal => 'Pas daaglikse doelwit aan';

  @override
  String get health_connect_banner => 'Gekoppel aan Health Connect';

  @override
  String get health_vitals_summary => 'Daaglikse Gesondheid Vitals';

  @override
  String get health_latest_heart_rate => 'Nuutste hartklop';

  @override
  String get health_latest_bp => 'Bloeddruk';

  @override
  String get health_latest_spo2 => 'Bloed Suurstof';

  @override
  String get health_latest_glucose => 'Bloedglukose';

  @override
  String get health_latest_weight => 'Gewig';

  @override
  String get health_latest_sleep => 'Slaap Duur';

  @override
  String get health_add_manual => 'Voeg handmatige meting by';

  @override
  String get health_history_trends => 'Historiese tendense';

  @override
  String get health_sync_success =>
      'Gesondheidsdata is suksesvol gesinkroniseer!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ure $mins min';
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
  String get health_devices_title => 'Gekoppelde toestelle en draagbare items';

  @override
  String get health_devices_desc =>
      'Bestuur gepaarde slimhorlosies, fiksheidspoorsnyers en gesondheidsensors.';

  @override
  String get health_workout_editor_title => 'Wysig oefensessie';

  @override
  String get health_workout_name_label => 'Oefensessie Naam';

  @override
  String get health_workout_duration_label => 'Tydsduur (minute)';

  @override
  String get health_workout_calories_label => 'Geskatte kalorieë (kcal)';

  @override
  String get health_workout_date_label => 'Datum en Tyd';

  @override
  String get plan_daily_wellness_roadmap => 'Jou persoonlike padkaart';

  @override
  String get plan_morning_routine => 'Oggendroetine';

  @override
  String get plan_afternoon_routine => 'Middag Wellness';

  @override
  String get plan_evening_routine => 'Aand Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi KI-afrigter';

  @override
  String get plan_weekly_overview => '7-Dae Welstandsfokus';

  @override
  String get plan_targets_title => 'Welstandteikens en -doelwitte';

  @override
  String get plan_calorie_budget_label => 'Daaglikse kalorie begroting';

  @override
  String get plan_water_budget_label => 'Daaglikse waterteiken';

  @override
  String get plan_step_budget_label => 'Daaglikse stapdoel';

  @override
  String get plan_macro_split_label => 'Makronutriëntverhouding';

  @override
  String get profile_personal_details => 'Persoonlike Besonderhede';

  @override
  String get profile_body_stats => 'Liggaamsmetings';

  @override
  String get profile_app_preferences => 'Voorkeure en toepassingsinstellings';

  @override
  String get profile_edit_name_hint => 'Jou naam';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Hoogte ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Gewig ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Ouderdom';

  @override
  String get profile_gender_male => 'Manlik';

  @override
  String get profile_gender_female => 'Vroulik';

  @override
  String get profile_gender_other => 'Ander / Verkies om nie te sê nie';

  @override
  String get profile_activity_sedentary => 'Sittend (min tot geen oefening)';

  @override
  String get profile_activity_light => 'Liggies aktief (1-3 dae/week)';

  @override
  String get profile_activity_moderate => 'Matig aktief (3-5 dae/week)';

  @override
  String get profile_activity_very => 'Baie aktief (6-7 dae/week)';

  @override
  String get settings_wear_os_header => 'Dra OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Installeer die Bloomi-teël en komplikasie op jou Wear OS-horlosie om na kalorieë, water en stappe te kyk.';

  @override
  String get settings_widgets_header => 'Interaktiewe Android-widgets';

  @override
  String get settings_widgets_desc =>
      'Speld intydse legstukke op jou toestel se tuisskerm vas vir onmiddellike opdaterings.';

  @override
  String get settings_about_header => 'Oor Bloomi';

  @override
  String get settings_about_version => 'Weergawe';

  @override
  String get settings_about_build => 'Bou 100';

  @override
  String get settings_about_credits =>
      'Gemaak met sorg vir bedagsame, gesonde lewe.';

  @override
  String get settings_terms_header => 'Bepalings en Voorwaardes';

  @override
  String get settings_privacy_header => 'Privaatheidsbeleid';

  @override
  String get settings_delete_header => 'Vee rekening en data uit';

  @override
  String get settings_delete_warning =>
      'Hierdie handeling kan nie ontdoen word nie. Al jou maaltye, oefensessies, noodsaaklikhede en profiel sal permanent uitgevee word.';

  @override
  String get settings_delete_confirm_btn => 'Vee permanent uit';

  @override
  String get onboard_welcome_headline => 'Welkom by Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Sagte, bedagsame welstandsopsporing wat rondom jou lewe ontwerp is.';

  @override
  String get onboard_step_about => 'Oor jou';

  @override
  String get onboard_step_goals => 'Jou doelwitte';

  @override
  String get onboard_step_lifestyle => 'Daaglikse gewoontes';

  @override
  String get onboard_step_permissions => 'Toestemmings';

  @override
  String get onboard_step_plan => 'Klaar!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Toegang';

  @override
  String get onboard_step_sensors_perm => 'Stap Counter Sensor';

  @override
  String get onboard_notif_perm => 'Bedagsame herinneringe en kennisgewings';

  @override
  String get onboard_camera_perm => 'Kamera (strepieskode en kosskandeerder)';

  @override
  String get onboard_grant_permissions => 'Gee toestemmings';

  @override
  String get onboard_continue_dashboard => 'Maak Dashboard oop';

  @override
  String get notif_channel_hydration_name => 'Hidrasie Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Sagte waterherinneringe deur die dag';

  @override
  String get notif_channel_nutrition_name => 'Maaltyd- en Voedingsherinneringe';

  @override
  String get notif_channel_nutrition_desc =>
      'Ontbyt-, middagete- en aandete-herinneringwaarskuwings';

  @override
  String get notif_channel_steps_name => 'Stap Mylpale';

  @override
  String get notif_channel_steps_desc =>
      'Vieringe wanneer daaglikse stapteikens bereik word';

  @override
  String get notif_channel_vitals_name =>
      'Gesondheids- en noodsaaklikheidskontroles';

  @override
  String get notif_channel_vitals_desc =>
      'Gewig- en slaaptyd-aflaai-herinneringe';

  @override
  String get notif_action_log_water => '💧 Teken +250ml';

  @override
  String get notif_action_snooze => 'Sluimer 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Ete';

  @override
  String get language => 'Taal';

  @override
  String get share => 'Deel';

  @override
  String common_days(Object count) {
    return '$count d gelede';
  }
}
