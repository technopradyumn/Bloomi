// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Hjem';

  @override
  String get nav_today => 'I dag';

  @override
  String get nav_plan => 'Planlæg';

  @override
  String get nav_food => 'Mad';

  @override
  String get nav_food_diary => 'Maddagbog';

  @override
  String get nav_workout => 'Træningslog';

  @override
  String get nav_health => 'Sundhed';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Spare';

  @override
  String get cancel => 'Ophæve';

  @override
  String get delete => 'Slet';

  @override
  String get edit => 'Redigere';

  @override
  String get done => 'Færdig';

  @override
  String get close => 'Luk';

  @override
  String get back => 'Tilbage';

  @override
  String get next => 'Næste';

  @override
  String get continue_btn => 'Fortsæt';

  @override
  String get confirm => 'Bekræft';

  @override
  String get search => 'Søge';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Alle';

  @override
  String get active => 'Aktiv';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get tomorrow => 'I morgen';

  @override
  String get add => 'Tilføj';

  @override
  String get remove => 'Fjern';

  @override
  String get refresh => 'Opdater';

  @override
  String get retry => 'Prøv igen';

  @override
  String get error => 'Fejl';

  @override
  String get success => 'Succes';

  @override
  String get loading => 'Indlæser...';

  @override
  String get no_data => 'Ingen tilgængelige data';

  @override
  String get offline => 'Offline tilstand';

  @override
  String get offline_sub =>
      'Ændringer synkroniseres, når de er tilsluttet igen';

  @override
  String get undo => 'Fortryd';

  @override
  String get portion => 'Portion';

  @override
  String get quantity => 'Mængde';

  @override
  String get unit => 'Enhed';

  @override
  String get clear => 'Ryd';

  @override
  String get select => 'Vælg';

  @override
  String get apply => 'Anvende';

  @override
  String get reset => 'Nulstil';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nej';

  @override
  String get optional => 'Valgfrit';

  @override
  String get calories => 'Kalorier';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Kulhydrater';

  @override
  String get fat => 'Fedt';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Vand';

  @override
  String get steps => 'Trin';

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
  String get inches => 'ind';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'timer';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Servering';

  @override
  String get servings => 'Serveringer';

  @override
  String get serving_size => 'Serveringsstørrelse';

  @override
  String get per_100g => 'pr 100g';

  @override
  String get india => 'Indien';

  @override
  String get asia => 'Asien';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Mellemøsten';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Hjem';

  @override
  String get home_greeting_morning => 'Godmorgen';

  @override
  String get home_greeting_afternoon => 'God eftermiddag';

  @override
  String get home_greeting_evening => 'God aften';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dages række',
      one: '1 dags streak',
      zero: '0 dages streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Brændt';

  @override
  String get home_calories_budget => 'Kalorie budget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal tilbage';
  }

  @override
  String get home_water_title => 'Daglig hydrering';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Skridt gik';

  @override
  String get home_quick_actions => 'Hurtige handlinger';

  @override
  String get home_log_meal => 'Log måltid';

  @override
  String get home_log_water => 'Log Vand';

  @override
  String get home_log_workout => 'Log træning';

  @override
  String get home_log_weight => 'Log vægt';

  @override
  String get home_insights_title => 'Dagens indsigt';

  @override
  String get home_quote =>
      'Små sunde valg skaber blomstrende transformationer.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI træner';

  @override
  String get home_surroundings => 'Omgivelser & Luft';

  @override
  String get home_notifications => 'Meddelelser';

  @override
  String get home_daily_score => 'Daglig wellness-score';

  @override
  String get home_view_all => 'Se alle';

  @override
  String get food_diary_title => 'Maddagbog';

  @override
  String get food_breakfast => 'Morgenmad';

  @override
  String get food_lunch => 'Frokost';

  @override
  String get food_dinner => 'Aftensmad';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Tilføj mad';

  @override
  String get food_edit_food => 'Rediger mad';

  @override
  String get food_add_breakfast => 'Tilføj morgenmad';

  @override
  String get food_add_lunch => 'Tilføj frokost';

  @override
  String get food_add_dinner => 'Tilføj aftensmad';

  @override
  String get food_add_snack => 'Tilføj snack';

  @override
  String get food_total_calories => 'Kalorier i alt';

  @override
  String get food_empty_meal => 'Ingen fødevarer logget til dette måltid endnu';

  @override
  String get food_empty_diary => 'Ingen måltider logget for denne dag';

  @override
  String get food_log_first_meal =>
      'Tryk på + for at logge dit første lækre måltid';

  @override
  String get food_quick_add => 'Hurtig tilføjelse';

  @override
  String get food_search_hint => 'Søg efter retter, frugter, dal, roti...';

  @override
  String get food_custom_recipe => 'Brugerdefineret mad og opskrift';

  @override
  String get food_scan_barcode => 'Scan stregkode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Nylige fødevarer';

  @override
  String get food_favourites => 'Favoritter';

  @override
  String get food_macro_summary => 'Makronæringsstofnedbrydning';

  @override
  String get food_delete_meal_confirm =>
      'Er du sikker på, at du vil fjerne dette element?';

  @override
  String get food_item_deleted => 'Fødevare fjernet';

  @override
  String get food_remaining => 'tilbage';

  @override
  String get food_consumed => 'forbruges';

  @override
  String food_of_target(Object target) {
    return 'af $target kcal';
  }

  @override
  String get foodSearch_title => 'Søg efter fødevarer';

  @override
  String get foodSearch_scan_barcode => 'Scan stregkode';

  @override
  String get foodSearch_take_photo => 'Snap Food Foto';

  @override
  String get foodSearch_custom_food => 'Skab tilpasset mad';

  @override
  String get foodSearch_recent_searches => 'Seneste søgninger';

  @override
  String get foodSearch_popular => 'Populære retter';

  @override
  String get foodSearch_no_results => 'Ingen fødevarer matcher din søgning';

  @override
  String get barcode_title => 'Stregkodescanner';

  @override
  String get barcode_align => 'Juster stregkoden inde i kamerarammen';

  @override
  String get barcode_not_found => 'Produkt ikke fundet i databasen';

  @override
  String get barcode_premium_feature =>
      'Stregkodescanning er tilgængelig med Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Tag et klart billede af din ret';

  @override
  String get camera_analysing => 'Analyserer madtallerken...';

  @override
  String get camera_detected => 'Opdagede genstande';

  @override
  String get camera_flash => 'Skift Flash';

  @override
  String get camera_retake => 'Tag billede igen';

  @override
  String get camera_confirm_food => 'Bekræft elementer';

  @override
  String get customFood_title => 'Brugerdefineret mad og opskrift';

  @override
  String get customFood_name_hint => 'Rettens eller ingrediensens navn';

  @override
  String get customFood_calories_hint => 'Kalorier (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Kulhydrater (g)';

  @override
  String get customFood_fat_hint => 'Fedt (g)';

  @override
  String get customFood_save => 'Gem opskrift';

  @override
  String get water_tracker_title => 'Vand Tracker';

  @override
  String get water_daily_target => 'Dagligt hydreringsmål';

  @override
  String get water_logged_today => 'Logget i dag';

  @override
  String get water_add_glass => '+250 ml glas';

  @override
  String get water_add_bottle => '+500 ml flaske';

  @override
  String get water_custom_amount => 'Brugerdefineret beløb';

  @override
  String get water_reminder_tip =>
      'Drik vand regelmæssigt i løbet af dagen for stabil energi.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logget $amount ml vand 💧';
  }

  @override
  String get workout_title => 'Træningslog';

  @override
  String get workout_add_exercise => 'Tilføj træning';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Styrke';

  @override
  String get workout_yoga => 'Yoga og fleksibilitet';

  @override
  String get workout_duration => 'Varighed';

  @override
  String get workout_intensity => 'Intensitet';

  @override
  String get workout_calories_burned => 'Kalorier forbrændt';

  @override
  String get workout_empty => 'Ingen træning logget i dag';

  @override
  String get workout_save_success => 'Træning blev gemt!';

  @override
  String get workout_type => 'Træningstype';

  @override
  String get workout_notes => 'Noter og refleksioner';

  @override
  String get health_overview_title => 'Sundhed & Vitals';

  @override
  String get health_heart_rate => 'Hjertefrekvens';

  @override
  String get health_blood_oxygen => 'Blodilt (SpO2)';

  @override
  String get health_blood_pressure => 'Blodtryk';

  @override
  String get health_blood_glucose => 'Blodglukose';

  @override
  String get health_body_temperature => 'Kropstemperatur';

  @override
  String get health_sleep_tracking => 'Søvnsporing';

  @override
  String get health_weight_tracking => 'Vægt og kropssammensætning';

  @override
  String get health_waist_hip => 'Talje-til-hofte-forhold';

  @override
  String get health_devices_hub => 'Enheder & Smartwatch Hub';

  @override
  String get health_sync_now => 'Synkroniser sundhedsdata';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Sidst synkroniseret: $time';
  }

  @override
  String get health_manual_entry => 'Manuel sundhedsindtastning';

  @override
  String get health_metric_detail => 'Metriske detaljer';

  @override
  String get health_connected_sensors => 'Tilsluttede sundhedssensorer';

  @override
  String get plan_title => 'Dagsplan';

  @override
  String get plan_weekly_title => 'Ugentlig wellness-plan';

  @override
  String get plan_calorie_target => 'Kaloriemål';

  @override
  String get plan_water_target => 'Hydrationsmål';

  @override
  String get plan_step_target => 'Trinmål';

  @override
  String get plan_sleep_target => 'Søvnmål';

  @override
  String get plan_meal_suggestions => 'Forslag til måltider';

  @override
  String get plan_healthy_habits => 'Sunde vaner og tips';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach anbefalinger';

  @override
  String get plan_generated_title => 'Personlig daglig tidsplan';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Rediger profil';

  @override
  String get profile_name => 'Navn';

  @override
  String get profile_age => 'Alder';

  @override
  String get profile_gender => 'Køn';

  @override
  String get profile_height => 'Højde';

  @override
  String get profile_weight => 'Vægt';

  @override
  String get profile_goal => 'Primært mål';

  @override
  String get profile_activity_level => 'Aktivitetsniveau';

  @override
  String get profile_stats => 'Mine velværestatistik';

  @override
  String get profile_saved => 'Profilen blev opdateret';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Medlemskab';

  @override
  String get settings => 'Indstillinger';

  @override
  String get preferences_habits => 'PRÆFERENCER & VANER';

  @override
  String get appearance_theme => 'Udseende og tema';

  @override
  String get appearance_theme_sub =>
      'Indstillinger for mørk, lys, systemtilstand og appbaggrund';

  @override
  String get permissions => 'Tilladelser og systemadgang';

  @override
  String get permissions_sub =>
      'Health Connect, Trinsensorer, GPS, meddelelser og kamera';

  @override
  String get reminders_notifications => 'Påmindelser og meddelelser';

  @override
  String get reminders_sub =>
      'Måltidstider, vand, vægtcheck-in og sengetidspåmindelser';

  @override
  String get units_of_measurement => 'Måleenheder';

  @override
  String get units_sub =>
      'Metrisk (kg, cm, ml, km) eller Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App sprog';

  @override
  String get language_sub =>
      'Engelsk, हिन्दी (Hindi), Hinglish & 195+ globale sprog';

  @override
  String get home_screen_widgets => 'Home Screen Widgets';

  @override
  String get widgets_sub =>
      'Live Android-widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch-ledsager, fliser, komplikationer og live vitals';

  @override
  String get goals_wellness => 'MÅL OG INDSIGT I VELVÆRELSE';

  @override
  String get nutrition_targets => 'Ernæringsmål og makroopdeling';

  @override
  String get nutrition_targets_sub =>
      'Kaloriemål, protein, kulhydrater, fedt og vandmål';

  @override
  String get weekly_recap => 'Ugentlig wellness-recap';

  @override
  String get weekly_recap_sub =>
      '7-dages kaloriegennemsnit, makroforhold og bedste dag';

  @override
  String get streaks_milestones => 'Streaks & Milepæle';

  @override
  String get streaks_sub => 'Aktive blomstringsstriber, badges og præstationer';

  @override
  String get connected_devices => 'TILSLUTTEDE ENHEDER & ØKOSYSTEM';

  @override
  String get devices_hub => 'Enheder & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Omgivelser & vejr';

  @override
  String get surroundings_sub =>
      'Luftkvalitet (AQI), UV-indeks og vejrhydreringstips';

  @override
  String get bloomi_pro => 'Bloomi Pro abonnement';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 startskærm-widgets og vitale sporing';

  @override
  String get about_security => 'OM & SIKKERHED';

  @override
  String get about_bloomi => 'Om Bloomi';

  @override
  String get about_bloomi_sub => 'Byg specifikationer, version, attributioner';

  @override
  String get privacy_policy => 'Privatlivspolitik';

  @override
  String get privacy_policy_sub => 'Offline-først, on-device dataarkitektur';

  @override
  String get terms_conditions => 'Vilkår og betingelser';

  @override
  String get terms_conditions_sub =>
      'Servicevilkår og retningslinjer for wellness';

  @override
  String get delete_account => 'Slet konto og data';

  @override
  String get delete_account_sub =>
      'Slet irreversibelt lokale SQLite-data og cloud-backups';

  @override
  String get healthy_habits => 'Opbyg blide, varige wellness-vaner';

  @override
  String get all_logs => 'Mine sporede data og logfiler';

  @override
  String get search_language => 'Søg efter sprog eller native script...';

  @override
  String get languages_available => 'Tilgængelige sprog';

  @override
  String get no_matching_languages =>
      'Der blev ikke fundet nogen matchende sprog';

  @override
  String get try_searching =>
      'Prøv at søge efter indfødt script eller engelsk stavemåde';

  @override
  String get partially_translated => 'Delvist oversat';

  @override
  String get complete_translation => 'Komplet';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Sprog indstillet til $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Omgivelser & Miljø';

  @override
  String get surroundings_aqi => 'Luftkvalitetsindeks';

  @override
  String get surroundings_uv => 'UV-indeks';

  @override
  String get surroundings_temp => 'Temperatur';

  @override
  String get surroundings_humidity => 'Fugtighed';

  @override
  String get surroundings_hydration_advice =>
      'Hold dig godt hydreret under de nuværende vejrforhold.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Søg mad';

  @override
  String get food_quick_barcode => 'Scan stregkode 👑';

  @override
  String get food_quick_water => 'Tilsæt vand';

  @override
  String get food_quick_custom => 'Brugerdefineret mad';

  @override
  String get surroundings_good => 'Godt';

  @override
  String get surroundings_moderate => 'Moderat';

  @override
  String get surroundings_unhealthy => 'Usundt';

  @override
  String get notifications_title => 'Meddelelser og advarsler';

  @override
  String get notifications_empty => 'Ingen nye meddelelser';

  @override
  String get notifications_mark_read => 'Marker alle som læst';

  @override
  String get notifications_clear => 'Ryd alle';

  @override
  String get reminders => 'Påmindelsesindstillinger';

  @override
  String get notifications => 'Push-meddelelser';

  @override
  String get reminders_breakfast_title => 'Påmindelse om morgenmad 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Godmorgen! Tid til en nærende morgenmad på $time.';
  }

  @override
  String get reminders_lunch_title => 'Påmindelse om frokost 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Hold pause, og nyd en afbalanceret, opmærksom frokost på $time.';
  }

  @override
  String get reminders_dinner_title => 'Påmindelse om middag 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tid til en let, tilfredsstillende middag på $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tid til at drikke et frisk glas vand! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Ugentlig indvejning ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Spor dine ugentlige kropsmålinger på Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Sengetid Nedsænkning 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Slap af og forbered dig på en afslappende søvn ($time).';
  }

  @override
  String get onboard_welcome => 'Velkommen til Bloomi';

  @override
  String get onboard_sub =>
      'Din venlige, offline-første sundheds- og ernæringsledsager.';

  @override
  String get onboard_get_started => 'Kom i gang';

  @override
  String get onboard_sign_in => 'Log ind';

  @override
  String get onboard_skip => 'Spring over';

  @override
  String get onboard_choose_goal => 'Hvad er dit primære wellness-mål?';

  @override
  String get onboard_goal_weight_loss => 'Skånsomt vægttab';

  @override
  String get onboard_goal_muscle => 'Muskelforøgelse og styrke';

  @override
  String get onboard_goal_energy => 'Daglig energi og vitalitet';

  @override
  String get onboard_goal_habits => 'Sund mindful spisning';

  @override
  String get onboard_about_you => 'Fortæl os om dig selv';

  @override
  String get onboard_lifestyle => 'Din daglige rutine';

  @override
  String get onboard_permissions_title => 'Tilladelser og systemadgang';

  @override
  String get onboard_permissions_sub =>
      'Giv adgang til synkronisering af trin, træning og påmindelser.';

  @override
  String get onboard_plan_ready_title => 'Din tilpassede plan er klar!';

  @override
  String get onboard_plan_ready_sub =>
      'Vi har lavet en skånsom, personlig ernærings- og wellness-køreplan til dig.';

  @override
  String get onboard_enter_bloomi => 'Indtast Bloomi';

  @override
  String get insights_weekly_report => 'Ugentlig wellness-recap';

  @override
  String insights_best_day(Object day) {
    return 'Bedste konsistensdag: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milepæle';

  @override
  String insights_unlocked_on(Object date) {
    return 'Låst op på $date';
  }

  @override
  String get insights_keep_going => 'Fortsæt med den fantastiske fremgang!';

  @override
  String get widgets_title => 'Home Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Aktive widgets: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Bær OS Smartwatch';

  @override
  String get wear_os_connected => 'Forbundet til Watch';

  @override
  String get wear_os_sync => 'Synkroniser urdata';

  @override
  String get theme_title => 'Udseende og tema';

  @override
  String get theme_mode => 'Tematilstand';

  @override
  String get theme_light => 'Lys';

  @override
  String get theme_dark => 'Mørk';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Baggrundspalet';

  @override
  String get units_title => 'Måleenheder';

  @override
  String get units_metric => 'Metrisk (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Kan ikke indlæse dashboard';

  @override
  String get home_health_permission_req => 'Health Connect-tilladelse påkrævet';

  @override
  String get home_health_permission_desc =>
      'Bloomi kræver Health Connect-tilladelse for at trække rigtige skridt, puls og synkronisere mobilhome-widgets i realtid.';

  @override
  String get home_allow_health => 'Tillad Health Connect';

  @override
  String get home_ready_mindful_day => 'Klar til en mindful dag? ✨';

  @override
  String get home_quick_add => 'Hurtig tilføjelse';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORIER TILBAGE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Spist: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Dagligt mål nået 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml til det daglige mål';
  }

  @override
  String get home_details => 'Detaljer';

  @override
  String get home_upgrade_plan_desc =>
      'Opgrader for at låse op for personlige daglige mål og AI-plan';

  @override
  String get home_unlock => 'Lås op 👑';

  @override
  String get home_quick_log_hint => 'Optag hurtigt en wellness-indgang';

  @override
  String get food_serving_size => 'Serveringsstørrelse';

  @override
  String get food_serving_grams => 'Servering (g)';

  @override
  String get food_number_servings => 'Antal serveringer';

  @override
  String get food_calories_per_serving => 'Kalorier pr. portion';

  @override
  String get food_recipe_ingredients => 'Ingredienser';

  @override
  String get food_recipe_add_ingredient => 'Tilføj ingrediens';

  @override
  String get food_recipe_directions => 'Instruktioner og noter';

  @override
  String get food_recipe_total => 'Total Opskrift Ernæring';

  @override
  String get food_recipe_per_serving => 'Ernæring pr. portion';

  @override
  String get food_recipe_saved_toast => 'Tilpasset mad blev gemt med succes!';

  @override
  String get food_barcode_found => 'Produkt fundet!';

  @override
  String get food_barcode_not_found_desc =>
      'Vi kunne ikke finde denne stregkode i den åbne database. Du kan tilføje det som specialmad.';

  @override
  String get food_add_custom_btn => 'Tilføj tilpasset mad';

  @override
  String get food_scan_again => 'Scan igen';

  @override
  String get food_review_items => 'Gennemgå opdagede fødevarer';

  @override
  String get food_review_hint =>
      'Juster mængder, eller fjern enhver genkendt genstand';

  @override
  String get food_log_selected => 'Log udvalgte fødevarer';

  @override
  String get food_favourites_title => 'Yndlingsmad';

  @override
  String get food_recent_title => 'Nylige fødevarer';

  @override
  String get food_no_favourites =>
      'Ingen favoritmad endnu. Tryk hjerte på enhver mad for at gemme her.';

  @override
  String get food_no_recents => 'Ingen nyligt loggede fødevarer fundet.';

  @override
  String get food_nutrition_details_title => 'Daglige ernæringsoplysninger';

  @override
  String get food_macro_protein_label => 'Proteinnedbrydning';

  @override
  String get food_macro_carbs_label => 'Nedbrydning af kulhydrater';

  @override
  String get food_macro_fat_label => 'Fedtnedbrydning';

  @override
  String get food_macro_fiber_label => 'Fibernedbrydning';

  @override
  String get food_daily_target_comparison => 'Mål sammenligning';

  @override
  String food_target_label(Object target) {
    return 'Mål: $target';
  }

  @override
  String get food_edit_entry => 'Rediger dagbogsoptegnelse';

  @override
  String get food_delete_entry => 'Slet post';

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
    return '$current af $target ml';
  }

  @override
  String get water_intake_history => 'Dagens vandlogger';

  @override
  String get water_no_logs_today =>
      'Intet vand logget endnu i dag. Hydrat og tryk på en hurtig tilføjelsesknap!';

  @override
  String get water_adjust_goal => 'Juster dagligt mål';

  @override
  String get health_connect_banner => 'Forbundet til Health Connect';

  @override
  String get health_vitals_summary => 'Daglige sundhedsvitaler';

  @override
  String get health_latest_heart_rate => 'Seneste puls';

  @override
  String get health_latest_bp => 'Blodtryk';

  @override
  String get health_latest_spo2 => 'Blod ilt';

  @override
  String get health_latest_glucose => 'Blodglukose';

  @override
  String get health_latest_weight => 'Vægt';

  @override
  String get health_latest_sleep => 'Søvnvarighed';

  @override
  String get health_add_manual => 'Tilføj manuel måling';

  @override
  String get health_history_trends => 'Historiske tendenser';

  @override
  String get health_sync_success => 'Sundhedsdata blev synkroniseret!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours timer $mins min';
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
  String get health_devices_title => 'Tilsluttede enheder og wearables';

  @override
  String get health_devices_desc =>
      'Administrer parrede smartwatches, fitness-trackere og sundhedssensorer.';

  @override
  String get health_workout_editor_title => 'Rediger træning';

  @override
  String get health_workout_name_label => 'Trænings navn';

  @override
  String get health_workout_duration_label => 'Varighed (minutter)';

  @override
  String get health_workout_calories_label => 'Anslåede kalorier (kcal)';

  @override
  String get health_workout_date_label => 'Dato og tid';

  @override
  String get plan_daily_wellness_roadmap => 'Din personlige køreplan';

  @override
  String get plan_morning_routine => 'Morgen rutine';

  @override
  String get plan_afternoon_routine => 'Middags Wellness';

  @override
  String get plan_evening_routine => 'Aften Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI træner';

  @override
  String get plan_weekly_overview => '7-dages wellness-fokus';

  @override
  String get plan_targets_title => 'Wellness-mål og -mål';

  @override
  String get plan_calorie_budget_label => 'Dagligt kaloriebudget';

  @override
  String get plan_water_budget_label => 'Dagligt vandmål';

  @override
  String get plan_step_budget_label => 'Dagligt skridtmål';

  @override
  String get plan_macro_split_label => 'Makronæringsforhold';

  @override
  String get profile_personal_details => 'Personlige detaljer';

  @override
  String get profile_body_stats => 'Kropsmålinger';

  @override
  String get profile_app_preferences => 'Præferencer og appindstillinger';

  @override
  String get profile_edit_name_hint => 'Dit navn';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Højde ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Vægt ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Alder';

  @override
  String get profile_gender_male => 'Mand';

  @override
  String get profile_gender_female => 'Kvinde';

  @override
  String get profile_gender_other => 'Andet / Foretrækker ikke at sige';

  @override
  String get profile_activity_sedentary =>
      'Stillesiddende (lidt til ingen motion)';

  @override
  String get profile_activity_light => 'Let aktiv (1-3 dage/uge)';

  @override
  String get profile_activity_moderate => 'Moderat aktiv (3-5 dage/uge)';

  @override
  String get profile_activity_very => 'Meget aktiv (6-7 dage/uge)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Installer Bloomi-flisen og komplikationen på dit Wear OS-ur for at se på kalorier, vand og trin.';

  @override
  String get settings_widgets_header => 'Interaktive Android-widgets';

  @override
  String get settings_widgets_desc =>
      'Fastgør widgets i realtid på din enheds startskærm for øjeblikkelige opdateringer.';

  @override
  String get settings_about_header => 'Om Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Byg 100';

  @override
  String get settings_about_credits =>
      'Udformet med omhu for en opmærksom, sund livsstil.';

  @override
  String get settings_terms_header => 'Vilkår og betingelser';

  @override
  String get settings_privacy_header => 'Privatlivspolitik';

  @override
  String get settings_delete_header => 'Slet konto og data';

  @override
  String get settings_delete_warning =>
      'Denne handling kan ikke fortrydes. Alle dine måltider, træning, vitale funktioner og profil slettes permanent.';

  @override
  String get settings_delete_confirm_btn => 'Slet permanent';

  @override
  String get onboard_welcome_headline => 'Velkommen til Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Blid, opmærksom wellness-sporing designet omkring dit liv.';

  @override
  String get onboard_step_about => 'Om dig';

  @override
  String get onboard_step_goals => 'Dine mål';

  @override
  String get onboard_step_lifestyle => 'Daglige vaner';

  @override
  String get onboard_step_permissions => 'Tilladelser';

  @override
  String get onboard_step_plan => 'Klar!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Adgang';

  @override
  String get onboard_step_sensors_perm => 'Trintæller sensor';

  @override
  String get onboard_notif_perm => 'Mindful påmindelser og notifikationer';

  @override
  String get onboard_camera_perm => 'Kamera (stregkode- og madscanner)';

  @override
  String get onboard_grant_permissions => 'Giv tilladelser';

  @override
  String get onboard_continue_dashboard => 'Åbn Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc => 'Blide vandpåmindelser hele dagen';

  @override
  String get notif_channel_nutrition_name =>
      'Påmindelser om måltider og ernæring';

  @override
  String get notif_channel_nutrition_desc =>
      'Påmindelser om morgenmad, frokost og middag';

  @override
  String get notif_channel_steps_name => 'Trin Milepæle';

  @override
  String get notif_channel_steps_desc =>
      'Fejring, når man når daglige skridtmål';

  @override
  String get notif_channel_vitals_name => 'Sundheds- og vitale kontrol';

  @override
  String get notif_channel_vitals_desc => 'Påmindelser om vægt og sengetid';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Logmåltid';

  @override
  String get language => 'Sprog';

  @override
  String get share => 'Dele';

  @override
  String common_days(Object count) {
    return 'for ${count}d siden';
  }
}
