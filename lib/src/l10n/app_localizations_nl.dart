// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Thuis';

  @override
  String get nav_today => 'Vandaag';

  @override
  String get nav_plan => 'Plannen';

  @override
  String get nav_food => 'Voedsel';

  @override
  String get nav_food_diary => 'Voedsel dagboek';

  @override
  String get nav_workout => 'Trainingslogboek';

  @override
  String get nav_health => 'Gezondheid';

  @override
  String get nav_profile => 'Profiel';

  @override
  String get save => 'Opslaan';

  @override
  String get cancel => 'Annuleer';

  @override
  String get delete => 'Verwijderen';

  @override
  String get edit => 'Bewerken';

  @override
  String get done => 'Klaar';

  @override
  String get close => 'Sluiten';

  @override
  String get back => 'Terug';

  @override
  String get next => 'Volgende';

  @override
  String get continue_btn => 'Ga door';

  @override
  String get confirm => 'Bevestig';

  @override
  String get search => 'Zoeken';

  @override
  String get filter => 'Filteren';

  @override
  String get all => 'Allemaal';

  @override
  String get active => 'Actief';

  @override
  String get today => 'Vandaag';

  @override
  String get yesterday => 'Gisteren';

  @override
  String get tomorrow => 'Morgen';

  @override
  String get add => 'Toevoegen';

  @override
  String get remove => 'Verwijderen';

  @override
  String get refresh => 'Vernieuwen';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get error => 'Fout';

  @override
  String get success => 'Succes';

  @override
  String get loading => 'Laden...';

  @override
  String get no_data => 'Geen gegevens beschikbaar';

  @override
  String get offline => 'Offline-modus';

  @override
  String get offline_sub =>
      'Wijzigingen worden gesynchroniseerd zodra er opnieuw verbinding is gemaakt';

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get portion => 'Portie';

  @override
  String get quantity => 'Hoeveelheid';

  @override
  String get unit => 'Eenheid';

  @override
  String get clear => 'Duidelijk';

  @override
  String get select => 'Selecteer';

  @override
  String get apply => 'Toepassen';

  @override
  String get reset => 'Opnieuw instellen';

  @override
  String get ok => 'Oké';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get optional => 'Optioneel';

  @override
  String get calories => 'Calorieën';

  @override
  String get protein => 'Eiwit';

  @override
  String get carbs => 'Koolhydraten';

  @override
  String get fat => 'Vet';

  @override
  String get fiber => 'Vezel';

  @override
  String get water => 'Water';

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
  String get pounds => 'pond';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'binnen';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'uur';

  @override
  String get minutes => 'minuten';

  @override
  String get serving => 'Serveren';

  @override
  String get servings => 'Porties';

  @override
  String get serving_size => 'Portiegrootte';

  @override
  String get per_100g => 'per 100g';

  @override
  String get india => 'Indië';

  @override
  String get asia => 'Azië';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Midden-Oosten';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Thuis';

  @override
  String get home_greeting_morning => 'Goedemorgen';

  @override
  String get home_greeting_afternoon => 'Goedemiddag';

  @override
  String get home_greeting_evening => 'Goede avond';

  @override
  String get home_streak_title => 'Bloesemstrook';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagenreeks',
      one: '1 dagreeks',
      zero: '0 dagenreeks',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Verbrand';

  @override
  String get home_calories_budget => 'Caloriebudget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal resterend';
  }

  @override
  String get home_water_title => 'Dagelijkse hydratatie';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Stappen gelopen';

  @override
  String get home_quick_actions => 'Snelle acties';

  @override
  String get home_log_meal => 'Log maaltijd';

  @override
  String get home_log_water => 'Logwater';

  @override
  String get home_log_workout => 'Log training';

  @override
  String get home_log_weight => 'Logboekgewicht';

  @override
  String get home_insights_title => 'De inzichten van vandaag';

  @override
  String get home_quote =>
      'Kleine gezonde keuzes zorgen voor bloeiende transformaties.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI-coach';

  @override
  String get home_surroundings => 'Omgeving & Lucht';

  @override
  String get home_notifications => 'Meldingen';

  @override
  String get home_daily_score => 'Dagelijkse welzijnsscore';

  @override
  String get home_view_all => 'Bekijk alles';

  @override
  String get food_diary_title => 'Voedsel dagboek';

  @override
  String get food_breakfast => 'Ontbijt';

  @override
  String get food_lunch => 'Lunchen';

  @override
  String get food_dinner => 'Diner';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Voeg voedsel toe';

  @override
  String get food_edit_food => 'Bewerk voedsel';

  @override
  String get food_add_breakfast => 'Ontbijt toevoegen';

  @override
  String get food_add_lunch => 'Lunch toevoegen';

  @override
  String get food_add_dinner => 'Diner toevoegen';

  @override
  String get food_add_snack => 'Tussendoortje toevoegen';

  @override
  String get food_total_calories => 'Totaal aantal calorieën';

  @override
  String get food_empty_meal =>
      'Er zijn nog geen voedingsmiddelen geregistreerd voor deze maaltijd';

  @override
  String get food_empty_diary =>
      'Er zijn geen maaltijden geregistreerd voor deze dag';

  @override
  String get food_log_first_meal =>
      'Tik op + om uw eerste heerlijke maaltijd vast te leggen';

  @override
  String get food_quick_add => 'Snel toevoegen';

  @override
  String get food_search_hint => 'Zoek gerechten, fruit, dal, roti...';

  @override
  String get food_custom_recipe => 'Aangepast eten en recept';

  @override
  String get food_scan_barcode => 'Streepjescode scannen';

  @override
  String get food_camera_scan => 'AI Voedselscanner';

  @override
  String get food_recent => 'Recente voedingsmiddelen';

  @override
  String get food_favourites => 'Favorieten';

  @override
  String get food_macro_summary => 'Afbraak van macronutriënten';

  @override
  String get food_delete_meal_confirm =>
      'Weet u zeker dat u dit item wilt verwijderen?';

  @override
  String get food_item_deleted => 'Voedselartikel verwijderd';

  @override
  String get food_remaining => 'overgebleven';

  @override
  String get food_consumed => 'geconsumeerd';

  @override
  String food_of_target(Object target) {
    return 'van $target kcal';
  }

  @override
  String get foodSearch_title => 'Zoek voedsel';

  @override
  String get foodSearch_scan_barcode => 'Streepjescode scannen';

  @override
  String get foodSearch_take_photo => 'Maak een voedselfoto';

  @override
  String get foodSearch_custom_food => 'Maak aangepast eten';

  @override
  String get foodSearch_recent_searches => 'Recente zoekopdrachten';

  @override
  String get foodSearch_popular => 'Populaire gerechten';

  @override
  String get foodSearch_no_results =>
      'Er zijn geen voedingsmiddelen die overeenkomen met uw zoekopdracht';

  @override
  String get barcode_title => 'Barcodescanner';

  @override
  String get barcode_align =>
      'Lijn de streepjescode uit binnen het cameraframe';

  @override
  String get barcode_not_found => 'Product niet gevonden in database';

  @override
  String get barcode_premium_feature =>
      'Het scannen van streepjescodes is beschikbaar met Bloomi Pro';

  @override
  String get camera_title => 'AI Voedselscanner';

  @override
  String get camera_tap_hint => 'Maak een duidelijke foto van je gerecht';

  @override
  String get camera_analysing => 'Voedselbord analyseren...';

  @override
  String get camera_detected => 'Gedetecteerde artikelen';

  @override
  String get camera_flash => 'Schakel flits in';

  @override
  String get camera_retake => 'Foto opnieuw maken';

  @override
  String get camera_confirm_food => 'Bevestig artikelen';

  @override
  String get customFood_title => 'Aangepast eten en recept';

  @override
  String get customFood_name_hint => 'Naam gerecht of ingrediënt';

  @override
  String get customFood_calories_hint => 'Calorieën (kcal)';

  @override
  String get customFood_protein_hint => 'Eiwit (g)';

  @override
  String get customFood_carbs_hint => 'Koolhydraten (g)';

  @override
  String get customFood_fat_hint => 'Vet (g)';

  @override
  String get customFood_save => 'Recept opslaan';

  @override
  String get water_tracker_title => 'Watertracker';

  @override
  String get water_daily_target => 'Dagelijks hydratatiedoel';

  @override
  String get water_logged_today => 'Vandaag aangemeld';

  @override
  String get water_add_glass => '+250 ml glas';

  @override
  String get water_add_bottle => '+500 ml fles';

  @override
  String get water_custom_amount => 'Aangepast bedrag';

  @override
  String get water_reminder_tip =>
      'Drink regelmatig water gedurende de dag voor constante energie.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml water geregistreerd 💧';
  }

  @override
  String get workout_title => 'Trainingslogboek';

  @override
  String get workout_add_exercise => 'Training toevoegen';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Sterkte';

  @override
  String get workout_yoga => 'Yoga & Flexibiliteit';

  @override
  String get workout_duration => 'Duur';

  @override
  String get workout_intensity => 'Intensiteit';

  @override
  String get workout_calories_burned => 'Verbrande calorieën';

  @override
  String get workout_empty => 'Er zijn vandaag geen trainingen geregistreerd';

  @override
  String get workout_save_success => 'Training succesvol opgeslagen!';

  @override
  String get workout_type => 'Trainingstype';

  @override
  String get workout_notes => 'Opmerkingen en reflecties';

  @override
  String get health_overview_title => 'Gezondheid en vitaliteit';

  @override
  String get health_heart_rate => 'Hartslag';

  @override
  String get health_blood_oxygen => 'Bloedzuurstof (SpO2)';

  @override
  String get health_blood_pressure => 'Bloeddruk';

  @override
  String get health_blood_glucose => 'Bloedglucose';

  @override
  String get health_body_temperature => 'Lichaamstemperatuur';

  @override
  String get health_sleep_tracking => 'Slaap volgen';

  @override
  String get health_weight_tracking => 'Gewicht en lichaamssamenstelling';

  @override
  String get health_waist_hip => 'Taille-heupverhouding';

  @override
  String get health_devices_hub => 'Apparaten en smartwatch-hub';

  @override
  String get health_sync_now => 'Synchroniseer gezondheidsgegevens';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Laatst gesynchroniseerd: $time';
  }

  @override
  String get health_manual_entry => 'Handmatige gezondheidsinvoer';

  @override
  String get health_metric_detail => 'Metrische details';

  @override
  String get health_connected_sensors => 'Verbonden gezondheidssensoren';

  @override
  String get plan_title => 'Dagelijks plan';

  @override
  String get plan_weekly_title => 'Wekelijks welzijnsplan';

  @override
  String get plan_calorie_target => 'Caloriedoel';

  @override
  String get plan_water_target => 'Hydratatiedoel';

  @override
  String get plan_step_target => 'Stap Doel';

  @override
  String get plan_sleep_target => 'Slaapdoel';

  @override
  String get plan_meal_suggestions => 'Maaltijdsuggesties';

  @override
  String get plan_healthy_habits => 'Gezonde gewoonten en tips';

  @override
  String get plan_coach_advice => 'Aanbevelingen voor Bloomi AI-coaches';

  @override
  String get plan_generated_title => 'Gepersonaliseerde dagelijkse planning';

  @override
  String get profile_title => 'Profiel';

  @override
  String get profile_edit => 'Profiel bewerken';

  @override
  String get profile_name => 'Naam';

  @override
  String get profile_age => 'Leeftijd';

  @override
  String get profile_gender => 'Geslacht';

  @override
  String get profile_height => 'Hoogte';

  @override
  String get profile_weight => 'Gewicht';

  @override
  String get profile_goal => 'Primair doel';

  @override
  String get profile_activity_level => 'Activiteitsniveau';

  @override
  String get profile_stats => 'Mijn welzijnsstatistieken';

  @override
  String get profile_saved => 'Profiel is succesvol bijgewerkt';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Lidmaatschap';

  @override
  String get settings => 'Instellingen';

  @override
  String get preferences_habits => 'VOORKEUREN & GEWOONTEN';

  @override
  String get appearance_theme => 'Uiterlijk en thema';

  @override
  String get appearance_theme_sub =>
      'Opties voor donker, licht, systeemmodus en app-achtergrond';

  @override
  String get permissions => 'Machtigingen en systeemtoegang';

  @override
  String get permissions_sub =>
      'Health Connect, stapsensoren, GPS, meldingen en camera';

  @override
  String get reminders_notifications => 'Herinneringen en meldingen';

  @override
  String get reminders_sub =>
      'Maaltijdtijden, water, gewichtscontrole en bedtijdherinneringen';

  @override
  String get units_of_measurement => 'Meeteenheden';

  @override
  String get units_sub =>
      'Metrisch (kg, cm, ml, km) of imperiaal (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App-taal';

  @override
  String get language_sub =>
      'Engels, हिन्दी (Hindi), Hinglish en 195+ wereldwijde talen';

  @override
  String get home_screen_widgets => 'Widgets op het startscherm';

  @override
  String get widgets_sub =>
      'Live Android-widgets: Hub, Stappen, Water, Voeding en Mascotte';

  @override
  String get wear_os_watch_app => 'Wear OS Watch-app';

  @override
  String get wear_os_sub =>
      'Smartwatch-metgezel, tegels, complicaties en live vitale functies';

  @override
  String get goals_wellness => 'DOELEN & WELLNESS INZICHTEN';

  @override
  String get nutrition_targets => 'Voedingsdoelen en macrosplitsing';

  @override
  String get nutrition_targets_sub =>
      'Caloriedoel, eiwit, koolhydraten, vet en waterdoel';

  @override
  String get weekly_recap => 'Wekelijkse welzijnssamenvatting';

  @override
  String get weekly_recap_sub =>
      'Caloriegemiddelde over 7 dagen, macroverhouding en beste dag';

  @override
  String get streaks_milestones => 'Strepen en mijlpalen';

  @override
  String get streaks_sub => 'Actieve bloesemstrepen, badges en prestaties';

  @override
  String get connected_devices => 'VERBONDEN APPARATEN & ECOSYSTEEM';

  @override
  String get devices_hub => 'Apparaten en smartwatch-hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Omgeving & Weer';

  @override
  String get surroundings_sub =>
      'Tips voor luchtkwaliteit (AQI), UV-index en weerhydratatie';

  @override
  String get bloomi_pro => 'Bloomi Pro-abonnement';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets op het startscherm en bijhouden van vitale gegevens';

  @override
  String get about_security => 'OVER & VEILIGHEID';

  @override
  String get about_bloomi => 'Over Bloomi';

  @override
  String get about_bloomi_sub => 'Bouwspecificaties, versie, attributies';

  @override
  String get privacy_policy => 'Privacybeleid';

  @override
  String get privacy_policy_sub =>
      'Offline-first, data-architectuur op het apparaat';

  @override
  String get terms_conditions => 'Algemene voorwaarden';

  @override
  String get terms_conditions_sub =>
      'Servicevoorwaarden en welzijnsrichtlijnen';

  @override
  String get delete_account => 'Account en gegevens verwijderen';

  @override
  String get delete_account_sub =>
      'Wis onomkeerbaar lokale SQLite-gegevens en cloudback-ups';

  @override
  String get healthy_habits => 'Ontwikkel zachte, duurzame welzijnsgewoonten';

  @override
  String get all_logs => 'Mijn gevolgde gegevens en logboeken';

  @override
  String get search_language => 'Zoeken op taal of native script...';

  @override
  String get languages_available => 'Talen beschikbaar';

  @override
  String get no_matching_languages => 'Geen overeenkomende talen gevonden';

  @override
  String get try_searching =>
      'Probeer te zoeken op native script of Engelse spelling';

  @override
  String get partially_translated => 'Gedeeltelijk vertaald';

  @override
  String get complete_translation => 'Compleet';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Taal ingesteld op $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Omgeving & Milieu';

  @override
  String get surroundings_aqi => 'Luchtkwaliteitsindex';

  @override
  String get surroundings_uv => 'UV-index';

  @override
  String get surroundings_temp => 'Temperatuur';

  @override
  String get surroundings_humidity => 'Vochtigheid';

  @override
  String get surroundings_hydration_advice =>
      'Blijf goed gehydrateerd in de huidige weersomstandigheden.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Zoek voedsel';

  @override
  String get food_quick_barcode => 'Streepjescode scannen 👑';

  @override
  String get food_quick_water => 'Voeg water toe';

  @override
  String get food_quick_custom => 'Aangepaste voeding';

  @override
  String get surroundings_good => 'Goed';

  @override
  String get surroundings_moderate => 'Matig';

  @override
  String get surroundings_unhealthy => 'Ongezond';

  @override
  String get notifications_title => 'Meldingen en waarschuwingen';

  @override
  String get notifications_empty => 'Geen nieuwe meldingen';

  @override
  String get notifications_mark_read => 'Markeer alles als gelezen';

  @override
  String get notifications_clear => 'Alles wissen';

  @override
  String get reminders => 'Herinneringsinstellingen';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Ontbijtherinnering 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Goedemorgen! Tijd voor een voedzaam ontbijt om $time.';
  }

  @override
  String get reminders_lunch_title => 'Lunchherinnering 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pauzeer en geniet van een uitgebalanceerde, bewuste lunch bij $time.';
  }

  @override
  String get reminders_dinner_title => 'Dinerherinnering 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tijd voor een licht, bevredigend diner bij $time.';
  }

  @override
  String get reminders_water_title => 'Hydratatie Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tijd om een vers glas water te drinken! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Wekelijkse weging ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Houd uw wekelijkse lichaamsstatistieken bij op Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Ontspanning voor het slapengaan 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Kom tot rust en bereid u voor op een goede nachtrust ( $time ).';
  }

  @override
  String get onboard_welcome => 'Welkom bij Bloomi';

  @override
  String get onboard_sub =>
      'Uw vriendelijke, offline gezondheids- en voedingspartner.';

  @override
  String get onboard_get_started => 'Aan de slag';

  @override
  String get onboard_sign_in => 'Inloggen';

  @override
  String get onboard_skip => 'Overslaan';

  @override
  String get onboard_choose_goal => 'Wat is uw voornaamste welzijnsdoel?';

  @override
  String get onboard_goal_weight_loss => 'Zacht gewichtsverlies';

  @override
  String get onboard_goal_muscle => 'Spieraanwinst en kracht';

  @override
  String get onboard_goal_energy => 'Dagelijkse energie en vitaliteit';

  @override
  String get onboard_goal_habits => 'Gezond bewust eten';

  @override
  String get onboard_about_you => 'Vertel ons over jezelf';

  @override
  String get onboard_lifestyle => 'Je dagelijkse routine';

  @override
  String get onboard_permissions_title => 'Machtigingen en systeemtoegang';

  @override
  String get onboard_permissions_sub =>
      'Verleen toegang tot het synchroniseren van stappen, trainingen en herinneringen.';

  @override
  String get onboard_plan_ready_title => 'Uw aangepaste plan is klaar!';

  @override
  String get onboard_plan_ready_sub =>
      'We hebben speciaal voor u een zachte, gepersonaliseerde routekaart voor voeding en welzijn opgesteld.';

  @override
  String get onboard_enter_bloomi => 'Bloomi binnenkomen';

  @override
  String get insights_weekly_report => 'Wekelijkse welzijnssamenvatting';

  @override
  String insights_best_day(Object day) {
    return 'Dag met beste consistentie: $day';
  }

  @override
  String get insights_streaks_badges => 'Strepen en mijlpalen';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ontgrendeld op $date';
  }

  @override
  String get insights_keep_going =>
      'Ga zo door met de fantastische vooruitgang!';

  @override
  String get widgets_title => 'Widgets op het startscherm';

  @override
  String widgets_active_count(Object count) {
    return 'Actieve widgets: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi WellnessHub';

  @override
  String get widgets_steps_title => 'Stappen en actieve ring';

  @override
  String get widgets_water_title => 'Hydratatie snellogboek';

  @override
  String get widgets_mascot_title => 'Bloomi-mascotte metgezel';

  @override
  String get wear_os_title => 'Draag een OS-smartwatch';

  @override
  String get wear_os_connected => 'Verbonden met horloge';

  @override
  String get wear_os_sync => 'Synchroniseer kijkgegevens';

  @override
  String get theme_title => 'Uiterlijk en thema';

  @override
  String get theme_mode => 'Themamodus';

  @override
  String get theme_light => 'Licht';

  @override
  String get theme_dark => 'Donker';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Achtergrondpalet';

  @override
  String get units_title => 'Meeteenheden';

  @override
  String get units_metric => 'Metrisch (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperiaal (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Kan dashboard niet laden';

  @override
  String get home_health_permission_req => 'Health Connect-toestemming vereist';

  @override
  String get home_health_permission_desc =>
      'Bloomi heeft toestemming van Health Connect nodig om echte stappen en hartslag te kunnen weergeven en widgets voor stacaravans in realtime te kunnen synchroniseren.';

  @override
  String get home_allow_health => 'Sta Health Connect toe';

  @override
  String get home_ready_mindful_day => 'Klaar voor een mindful dagje? ✨';

  @override
  String get home_quick_add => 'Snel toevoegen';

  @override
  String get home_live_gps => 'Live-GPS';

  @override
  String get home_calories_remaining_label => 'RESTERENDE CALORIEËN';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Gegeten: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Kraan voor Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Dagelijks doel bereikt 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml tot dagelijkse doel';
  }

  @override
  String get home_details => 'Details';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade om gepersonaliseerde dagelijkse doelen en AI-plan te ontgrendelen';

  @override
  String get home_unlock => 'Ontgrendel 👑';

  @override
  String get home_quick_log_hint => 'Registreer snel een wellness-invoer';

  @override
  String get food_serving_size => 'Portiegrootte';

  @override
  String get food_serving_grams => 'Portie (g)';

  @override
  String get food_number_servings => 'Aantal porties';

  @override
  String get food_calories_per_serving => 'Calorieën per portie';

  @override
  String get food_recipe_ingredients => 'Ingrediënten';

  @override
  String get food_recipe_add_ingredient => 'Ingrediënt toevoegen';

  @override
  String get food_recipe_directions => 'Instructies en opmerkingen';

  @override
  String get food_recipe_total => 'Totale receptvoeding';

  @override
  String get food_recipe_per_serving => 'Per portie voeding';

  @override
  String get food_recipe_saved_toast =>
      'Aangepaste voeding succesvol opgeslagen!';

  @override
  String get food_barcode_found => 'Product gevonden!';

  @override
  String get food_barcode_not_found_desc =>
      'We konden deze barcode niet vinden in de open database. Je kunt het als aangepast voer toevoegen.';

  @override
  String get food_add_custom_btn => 'Voeg aangepast voedsel toe';

  @override
  String get food_scan_again => 'Opnieuw scannen';

  @override
  String get food_review_items => 'Controleer gedetecteerde voedingsmiddelen';

  @override
  String get food_review_hint =>
      'Pas de hoeveelheden aan of verwijder een niet-herkend artikel';

  @override
  String get food_log_selected => 'Registreer geselecteerde voedingsmiddelen';

  @override
  String get food_favourites_title => 'Favoriete gerechten';

  @override
  String get food_recent_title => 'Recente voedingsmiddelen';

  @override
  String get food_no_favourites =>
      'Nog geen favoriete gerechten. Tik met het hart op voedsel dat je hier wilt opslaan.';

  @override
  String get food_no_recents =>
      'Geen recent gelogde voedingsmiddelen gevonden.';

  @override
  String get food_nutrition_details_title => 'Dagelijkse voedingsdetails';

  @override
  String get food_macro_protein_label => 'Eiwitafbraak';

  @override
  String get food_macro_carbs_label => 'Afbraak van koolhydraten';

  @override
  String get food_macro_fat_label => 'Vetafbraak';

  @override
  String get food_macro_fiber_label => 'Vezelafbraak';

  @override
  String get food_daily_target_comparison => 'Doelvergelijking';

  @override
  String food_target_label(Object target) {
    return 'Doel: $target';
  }

  @override
  String get food_edit_entry => 'Bewerk dagboekinvoer';

  @override
  String get food_delete_entry => 'Invoer verwijderen';

  @override
  String food_grams_short(Object grams) {
    return '$grams gr';
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
  String get water_intake_history => 'De waterlogboeken van vandaag';

  @override
  String get water_no_logs_today =>
      'Vandaag nog geen water geregistreerd. Hydrateer en tik op een knop voor snel toevoegen!';

  @override
  String get water_adjust_goal => 'Dagelijks doel aanpassen';

  @override
  String get health_connect_banner => 'Verbonden met Health Connect';

  @override
  String get health_vitals_summary => 'Dagelijkse gezondheidskenmerken';

  @override
  String get health_latest_heart_rate => 'Laatste hartslag';

  @override
  String get health_latest_bp => 'Bloeddruk';

  @override
  String get health_latest_spo2 => 'Bloed zuurstof';

  @override
  String get health_latest_glucose => 'Bloedglucose';

  @override
  String get health_latest_weight => 'Gewicht';

  @override
  String get health_latest_sleep => 'Slaapduur';

  @override
  String get health_add_manual => 'Handmatige meting toevoegen';

  @override
  String get health_history_trends => 'Historische trends';

  @override
  String get health_sync_success =>
      'Gezondheidsgegevens zijn succesvol gesynchroniseerd!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours uur $mins minuten';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '${val}kg';
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
    return '$val mg/dl';
  }

  @override
  String get health_devices_title => 'Verbonden apparaten en wearables';

  @override
  String get health_devices_desc =>
      'Beheer gekoppelde smartwatches, fitnesstrackers en gezondheidssensoren.';

  @override
  String get health_workout_editor_title => 'Training bewerken';

  @override
  String get health_workout_name_label => 'Naam training';

  @override
  String get health_workout_duration_label => 'Duur (minuten)';

  @override
  String get health_workout_calories_label => 'Geschatte calorieën (kcal)';

  @override
  String get health_workout_date_label => 'Datum en tijd';

  @override
  String get plan_daily_wellness_roadmap => 'Uw persoonlijke routekaart';

  @override
  String get plan_morning_routine => 'Ochtendroutine';

  @override
  String get plan_afternoon_routine => 'Middag Welzijn';

  @override
  String get plan_evening_routine => 'Avondafkoeling';

  @override
  String get plan_coach_badge => 'Bloomi AI-coach';

  @override
  String get plan_weekly_overview => '7-daagse welzijnsfocus';

  @override
  String get plan_targets_title => 'Wellnessdoelen en -doelen';

  @override
  String get plan_calorie_budget_label => 'Dagelijks caloriebudget';

  @override
  String get plan_water_budget_label => 'Dagelijks waterdoel';

  @override
  String get plan_step_budget_label => 'Dagelijks stappendoel';

  @override
  String get plan_macro_split_label => 'Macronutriëntenverhouding';

  @override
  String get profile_personal_details => 'Persoonlijke gegevens';

  @override
  String get profile_body_stats => 'Lichaamsafmetingen';

  @override
  String get profile_app_preferences => 'Voorkeuren en app-instellingen';

  @override
  String get profile_edit_name_hint => 'Jouw naam';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Hoogte ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Gewicht ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Leeftijd';

  @override
  String get profile_gender_male => 'Mannetje';

  @override
  String get profile_gender_female => 'Vrouw';

  @override
  String get profile_gender_other => 'Anders / Zeg ik liever niet';

  @override
  String get profile_activity_sedentary =>
      'Sedentair (weinig tot geen beweging)';

  @override
  String get profile_activity_light => 'Licht actief (1-3 dagen/week)';

  @override
  String get profile_activity_moderate => 'Matig actief (3-5 dagen/week)';

  @override
  String get profile_activity_very => 'Zeer actief (6-7 dagen/week)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion-app';

  @override
  String get settings_wear_os_desc =>
      'Installeer de Bloomi-tegel en complicatie op uw Wear OS-horloge om een blik te werpen op calorieën, water en stappen.';

  @override
  String get settings_widgets_header => 'Interactieve Android-widgets';

  @override
  String get settings_widgets_desc =>
      'Zet realtime widgets vast op het startscherm van uw apparaat voor directe updates.';

  @override
  String get settings_about_header => 'Over Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Bouw 100';

  @override
  String get settings_about_credits =>
      'Met zorg gemaakt voor een bewust, gezond leven.';

  @override
  String get settings_terms_header => 'Algemene voorwaarden';

  @override
  String get settings_privacy_header => 'Privacybeleid';

  @override
  String get settings_delete_header => 'Account en gegevens verwijderen';

  @override
  String get settings_delete_warning =>
      'Deze actie kan niet ongedaan worden gemaakt. Al uw maaltijden, trainingen, vitale functies en profiel worden permanent verwijderd.';

  @override
  String get settings_delete_confirm_btn => 'Permanent verwijderen';

  @override
  String get onboard_welcome_headline => 'Welkom bij Bloomi✨';

  @override
  String get onboard_welcome_tagline =>
      'Zachte, bewuste wellness-tracking, ontworpen rond uw leven.';

  @override
  String get onboard_step_about => 'Over jou';

  @override
  String get onboard_step_goals => 'Jouw doelen';

  @override
  String get onboard_step_lifestyle => 'Dagelijkse gewoonten';

  @override
  String get onboard_step_permissions => 'Machtigingen';

  @override
  String get onboard_step_plan => 'Klaar!';

  @override
  String get onboard_health_connect_perm => 'Health Connect-toegang';

  @override
  String get onboard_step_sensors_perm => 'Stappentellersensor';

  @override
  String get onboard_notif_perm => 'Mindful herinneringen en meldingen';

  @override
  String get onboard_camera_perm => 'Camera (streepjescode- en voedselscanner)';

  @override
  String get onboard_grant_permissions => 'Verleen machtigingen';

  @override
  String get onboard_continue_dashboard => 'Dashboard openen';

  @override
  String get notif_channel_hydration_name => 'Hydratatie Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Zachte waterherinneringen gedurende de dag';

  @override
  String get notif_channel_nutrition_name =>
      'Maaltijd- en voedingsherinneringen';

  @override
  String get notif_channel_nutrition_desc =>
      'Herinneringswaarschuwingen voor ontbijt, lunch en diner';

  @override
  String get notif_channel_steps_name => 'Stap mijlpalen';

  @override
  String get notif_channel_steps_desc =>
      'Vieringen bij het bereiken van de dagelijkse stapdoelen';

  @override
  String get notif_channel_vitals_name => 'Gezondheids- en vitale controles';

  @override
  String get notif_channel_vitals_desc =>
      'Herinneringen voor gewicht en bedtijd';

  @override
  String get notif_action_log_water => '💧Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Maaltijd';

  @override
  String get language => 'Taal';

  @override
  String get share => 'Deel';

  @override
  String common_days(Object count) {
    return '$count d geleden';
  }
}
