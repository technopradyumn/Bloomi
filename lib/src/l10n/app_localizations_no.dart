// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Hjem';

  @override
  String get nav_today => 'I dag';

  @override
  String get nav_plan => 'Planlegg';

  @override
  String get nav_food => 'Mat';

  @override
  String get nav_food_diary => 'Matdagbok';

  @override
  String get nav_workout => 'Treningslogg';

  @override
  String get nav_health => 'Helse';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Lagre';

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Slett';

  @override
  String get edit => 'Rediger';

  @override
  String get done => 'Ferdig';

  @override
  String get close => 'Lukk';

  @override
  String get back => 'Tilbake';

  @override
  String get next => 'Neste';

  @override
  String get continue_btn => 'Fortsett';

  @override
  String get confirm => 'Bekreft';

  @override
  String get search => 'Søk';

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
  String get add => 'Legg til';

  @override
  String get remove => 'Fjern';

  @override
  String get refresh => 'Oppdater';

  @override
  String get retry => 'Prøv på nytt';

  @override
  String get error => 'Feil';

  @override
  String get success => 'Suksess';

  @override
  String get loading => 'Laster inn...';

  @override
  String get no_data => 'Ingen data tilgjengelig';

  @override
  String get offline => 'Frakoblet modus';

  @override
  String get offline_sub =>
      'Endringer vil synkroniseres når de er koblet til igjen';

  @override
  String get undo => 'Angre';

  @override
  String get portion => 'Del';

  @override
  String get quantity => 'Mengde';

  @override
  String get unit => 'Enhet';

  @override
  String get clear => 'Tøm';

  @override
  String get select => 'Velg';

  @override
  String get apply => 'Søk';

  @override
  String get reset => 'Tilbakestill';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nei';

  @override
  String get optional => 'Valgfritt';

  @override
  String get calories => 'Kalorier';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Karbohydrater';

  @override
  String get fat => 'Fett';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Vann';

  @override
  String get steps => 'Trinn';

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
  String get inches => 'inn';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'timer';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Servering';

  @override
  String get servings => 'Porsjoner';

  @override
  String get serving_size => 'Serveringsstørrelse';

  @override
  String get per_100g => 'per 100 g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Midtøsten';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Hjem';

  @override
  String get home_greeting_morning => 'God morgen';

  @override
  String get home_greeting_afternoon => 'God ettermiddag';

  @override
  String get home_greeting_evening => 'God kveld';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagers rekke',
      one: '1 dags rekke',
      zero: '0 dagers rekke',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Brent';

  @override
  String get home_calories_budget => 'Kaloribudsjett';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal gjenstår';
  }

  @override
  String get home_water_title => 'Daglig hydrering';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Skritt gikk';

  @override
  String get home_quick_actions => 'Raske handlinger';

  @override
  String get home_log_meal => 'Loggmåltid';

  @override
  String get home_log_water => 'Tømmervann';

  @override
  String get home_log_workout => 'Loggtrening';

  @override
  String get home_log_weight => 'Logg vekt';

  @override
  String get home_insights_title => 'Dagens innsikt';

  @override
  String get home_quote =>
      'Små sunne valg skaper blomstrende transformasjoner.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI-trener';

  @override
  String get home_surroundings => 'Omgivelser og luft';

  @override
  String get home_notifications => 'Varsler';

  @override
  String get home_daily_score => 'Daglig helsepoeng';

  @override
  String get home_view_all => 'Vis alle';

  @override
  String get food_diary_title => 'Matdagbok';

  @override
  String get food_breakfast => 'Frokost';

  @override
  String get food_lunch => 'Lunsj';

  @override
  String get food_dinner => 'Middag';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Legg til mat';

  @override
  String get food_edit_food => 'Rediger mat';

  @override
  String get food_add_breakfast => 'Legg til frokost';

  @override
  String get food_add_lunch => 'Legg til lunsj';

  @override
  String get food_add_dinner => 'Legg til middag';

  @override
  String get food_add_snack => 'Legg til Snack';

  @override
  String get food_total_calories => 'Totale kalorier';

  @override
  String get food_empty_meal => 'Ingen matvarer logget for dette måltidet ennå';

  @override
  String get food_empty_diary => 'Ingen måltider logget for denne dagen';

  @override
  String get food_log_first_meal =>
      'Trykk på + for å logge ditt første deilige måltid';

  @override
  String get food_quick_add => 'Rask Legg til';

  @override
  String get food_search_hint => 'Søk etter retter, frukt, dal, roti...';

  @override
  String get food_custom_recipe => 'Tilpasset mat og oppskrift';

  @override
  String get food_scan_barcode => 'Skann strekkode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Nylig mat';

  @override
  String get food_favourites => 'Favoritter';

  @override
  String get food_macro_summary => 'Nedbryting av makronæringsstoffer';

  @override
  String get food_delete_meal_confirm =>
      'Er du sikker på at du vil fjerne dette elementet?';

  @override
  String get food_item_deleted => 'Matvare fjernet';

  @override
  String get food_remaining => 'gjenværende';

  @override
  String get food_consumed => 'konsumert';

  @override
  String food_of_target(Object target) {
    return 'av $target kcal';
  }

  @override
  String get foodSearch_title => 'Søk mat';

  @override
  String get foodSearch_scan_barcode => 'Skann strekkode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Lag tilpasset mat';

  @override
  String get foodSearch_recent_searches => 'Nylige søk';

  @override
  String get foodSearch_popular => 'Populære retter';

  @override
  String get foodSearch_no_results => 'Ingen matvarer samsvarer med søket ditt';

  @override
  String get barcode_title => 'Strekkodeskanner';

  @override
  String get barcode_align => 'Juster strekkoden inne i kamerarammen';

  @override
  String get barcode_not_found => 'Produktet ikke funnet i databasen';

  @override
  String get barcode_premium_feature =>
      'Strekkodeskanning er tilgjengelig med Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Ta et tydelig bilde av retten din';

  @override
  String get camera_analysing => 'Analyserer mattallerken...';

  @override
  String get camera_detected => 'Oppdagede gjenstander';

  @override
  String get camera_flash => 'Slå på Flash';

  @override
  String get camera_retake => 'Ta bilde på nytt';

  @override
  String get camera_confirm_food => 'Bekreft elementer';

  @override
  String get customFood_title => 'Tilpasset mat og oppskrift';

  @override
  String get customFood_name_hint => 'Rettens eller ingrediensens navn';

  @override
  String get customFood_calories_hint => 'Kalorier (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Karbohydrater (g)';

  @override
  String get customFood_fat_hint => 'Fett (g)';

  @override
  String get customFood_save => 'Lagre oppskrift';

  @override
  String get water_tracker_title => 'Vannsporer';

  @override
  String get water_daily_target => 'Daglig hydreringsmål';

  @override
  String get water_logged_today => 'Logget i dag';

  @override
  String get water_add_glass => '+250 ml Glass';

  @override
  String get water_add_bottle => '+500 ml flaske';

  @override
  String get water_custom_amount => 'Egendefinert beløp';

  @override
  String get water_reminder_tip =>
      'Drikk vann regelmessig gjennom dagen for jevn energi.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logget $amount ml vann 💧';
  }

  @override
  String get workout_title => 'Treningslogg';

  @override
  String get workout_add_exercise => 'Legg til trening';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Styrke';

  @override
  String get workout_yoga => 'Yoga og fleksibilitet';

  @override
  String get workout_duration => 'Varighet';

  @override
  String get workout_intensity => 'Intensitet';

  @override
  String get workout_calories_burned => 'Kalorier forbrent';

  @override
  String get workout_empty => 'Ingen treningsøkter logget i dag';

  @override
  String get workout_save_success => 'Treningen er lagret!';

  @override
  String get workout_type => 'Treningstype';

  @override
  String get workout_notes => 'Notater og refleksjoner';

  @override
  String get health_overview_title => 'Helse og viktige ting';

  @override
  String get health_heart_rate => 'Hjertefrekvens';

  @override
  String get health_blood_oxygen => 'Blodoksygen (SpO2)';

  @override
  String get health_blood_pressure => 'Blodtrykk';

  @override
  String get health_blood_glucose => 'Blodglukose';

  @override
  String get health_body_temperature => 'Kroppstemperatur';

  @override
  String get health_sleep_tracking => 'Søvnsporing';

  @override
  String get health_weight_tracking => 'Vekt og kroppssammensetning';

  @override
  String get health_waist_hip => 'Midje-til-hofte-forhold';

  @override
  String get health_devices_hub => 'Enheter og Smartwatch Hub';

  @override
  String get health_sync_now => 'Synkroniser helsedata';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Sist synkronisert: $time';
  }

  @override
  String get health_manual_entry => 'Manuell helseoppføring';

  @override
  String get health_metric_detail => 'Metriske detaljer';

  @override
  String get health_connected_sensors => 'Tilkoblede helsesensorer';

  @override
  String get plan_title => 'Dagsplan';

  @override
  String get plan_weekly_title => 'Ukentlig velværeplan';

  @override
  String get plan_calorie_target => 'Kalorimål';

  @override
  String get plan_water_target => 'Hydreringsmål';

  @override
  String get plan_step_target => 'Trinnmål';

  @override
  String get plan_sleep_target => 'Søvnmål';

  @override
  String get plan_meal_suggestions => 'Måltidsforslag';

  @override
  String get plan_healthy_habits => 'Sunne vaner og tips';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach anbefalinger';

  @override
  String get plan_generated_title => 'Personlig dagsplan';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Rediger profil';

  @override
  String get profile_name => 'Navn';

  @override
  String get profile_age => 'Alder';

  @override
  String get profile_gender => 'Kjønn';

  @override
  String get profile_height => 'Høyde';

  @override
  String get profile_weight => 'Vekt';

  @override
  String get profile_goal => 'Primært mål';

  @override
  String get profile_activity_level => 'Aktivitetsnivå';

  @override
  String get profile_stats => 'Min velværestatistikk';

  @override
  String get profile_saved => 'Profilen ble oppdatert';

  @override
  String get profile_bmi => 'Kroppsmasseindeks (BMI)';

  @override
  String get profile_membership => 'Medlemskap';

  @override
  String get settings => 'Innstillinger';

  @override
  String get preferences_habits => 'PREFERANSER OG VANER';

  @override
  String get appearance_theme => 'Utseende og tema';

  @override
  String get appearance_theme_sub =>
      'Alternativer for mørk, lys, systemmodus og appbakgrunn';

  @override
  String get permissions => 'Tillatelser og systemtilgang';

  @override
  String get permissions_sub =>
      'Health Connect, trinnsensorer, GPS, varsler og kamera';

  @override
  String get reminders_notifications => 'Påminnelser og varsler';

  @override
  String get reminders_sub =>
      'Måltidstider, vann, vektinnsjekking og sengetidspåminnelser';

  @override
  String get units_of_measurement => 'Måleenheter';

  @override
  String get units_sub =>
      'Metrisk (kg, cm, ml, km) eller Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App-språk';

  @override
  String get language_sub =>
      'Engelsk, हिन्दी (Hindi), Hinglish og 195+ globale språk';

  @override
  String get home_screen_widgets => 'Hjemmeskjermwidgeter';

  @override
  String get widgets_sub =>
      'Live Android-widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch-ledsager, fliser, komplikasjoner og live vitals';

  @override
  String get goals_wellness => 'MÅL OG VELVÆREINNSIKT';

  @override
  String get nutrition_targets => 'Ernæringsmål og makrosplitt';

  @override
  String get nutrition_targets_sub =>
      'Mål for kalorier, protein, karbohydrater, fett og vann';

  @override
  String get weekly_recap => 'Ukentlig velværeoppsummering';

  @override
  String get weekly_recap_sub =>
      '7-dagers kalorigjennomsnitt, makroforhold og beste dag';

  @override
  String get streaks_milestones => 'Streker og milepæler';

  @override
  String get streaks_sub => 'Aktive blomsterstreker, merker og prestasjoner';

  @override
  String get connected_devices => 'TILKOBLEDE ENHETER OG ØKOSYSTEM';

  @override
  String get devices_hub => 'Enheter og Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Omgivelser og vær';

  @override
  String get surroundings_sub =>
      'Luftkvalitet (AQI), UV-indeks og værhydreringstips';

  @override
  String get bloomi_pro => 'Bloomi Pro-abonnement';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 startskjermwidgeter og vitale sporing';

  @override
  String get about_security => 'OM OG SIKKERHET';

  @override
  String get about_bloomi => 'Om Bloomi';

  @override
  String get about_bloomi_sub => 'Byggespesifikasjoner, versjon, attribusjoner';

  @override
  String get privacy_policy => 'Personvernerklæring';

  @override
  String get privacy_policy_sub =>
      'Dataarkitektur på enheten er den første frakoblet';

  @override
  String get terms_conditions => 'Vilkår og betingelser';

  @override
  String get terms_conditions_sub =>
      'Tjenestevilkår og retningslinjer for velvære';

  @override
  String get delete_account => 'Slett konto og data';

  @override
  String get delete_account_sub =>
      'Slett irreversibelt lokale SQLite-data og sky-sikkerhetskopier';

  @override
  String get healthy_habits => 'Bygg milde, varige velværevaner';

  @override
  String get all_logs => 'Mine sporede data og logger';

  @override
  String get search_language => 'Søk etter språk eller opprinnelig skrift ...';

  @override
  String get languages_available => 'Språk tilgjengelig';

  @override
  String get no_matching_languages => 'Finner ingen samsvarende språk';

  @override
  String get try_searching =>
      'Prøv å søke etter opprinnelig skript eller engelsk stavemåte';

  @override
  String get partially_translated => 'Delvis oversatt';

  @override
  String get complete_translation => 'Komplett';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Språk satt til $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Omgivelser og miljø';

  @override
  String get surroundings_aqi => 'Luftkvalitetsindeks';

  @override
  String get surroundings_uv => 'UV-indeks';

  @override
  String get surroundings_temp => 'Temperatur';

  @override
  String get surroundings_humidity => 'Fuktighet';

  @override
  String get surroundings_hydration_advice =>
      'Hold deg godt hydrert under gjeldende værforhold.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Søk mat';

  @override
  String get food_quick_barcode => 'Skann strekkode 👑';

  @override
  String get food_quick_water => 'Tilsett vann';

  @override
  String get food_quick_custom => 'Tilpasset mat';

  @override
  String get surroundings_good => 'Bra';

  @override
  String get surroundings_moderate => 'Moderat';

  @override
  String get surroundings_unhealthy => 'Usunn';

  @override
  String get notifications_title => 'Varsler og varsler';

  @override
  String get notifications_empty => 'Ingen nye varsler';

  @override
  String get notifications_mark_read => 'Merk alle som lest';

  @override
  String get notifications_clear => 'Fjern alle';

  @override
  String get reminders => 'Påminnelsesinnstillinger';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Frokostpåminnelse 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'God morgen! Tid for en nærende frokost på $time .';
  }

  @override
  String get reminders_lunch_title => 'Lunsjpåminnelse 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Ta en pause og nyt en balansert, oppmerksom lunsj på $time.';
  }

  @override
  String get reminders_dinner_title => 'Påminnelse om middag 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tid for en lett, tilfredsstillende middag på $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'På tide å drikke et friskt glass vann! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Ukentlig innveiing ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Spor dine ukentlige kroppsberegninger på Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Sengetid Ro ned 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Slapp av og forbered deg på en avslappende søvn ( $time ).';
  }

  @override
  String get onboard_welcome => 'Velkommen til Bloomi';

  @override
  String get onboard_sub =>
      'Din vennlige, offline-første helse- og ernæringskamerat.';

  @override
  String get onboard_get_started => 'Kom i gang';

  @override
  String get onboard_sign_in => 'Logg på';

  @override
  String get onboard_skip => 'Hopp over';

  @override
  String get onboard_choose_goal => 'Hva er ditt primære velværemål?';

  @override
  String get onboard_goal_weight_loss => 'Skånsomt vekttap';

  @override
  String get onboard_goal_muscle => 'Muskeløkning og styrke';

  @override
  String get onboard_goal_energy => 'Daglig energi og vitalitet';

  @override
  String get onboard_goal_habits => 'Sunn oppmerksom spising';

  @override
  String get onboard_about_you => 'Fortell oss om deg selv';

  @override
  String get onboard_lifestyle => 'Din daglige rutine';

  @override
  String get onboard_permissions_title => 'Tillatelser og systemtilgang';

  @override
  String get onboard_permissions_sub =>
      'Gi tilgang til synkroniseringstrinn, treningsøkter og påminnelser.';

  @override
  String get onboard_plan_ready_title => 'Din tilpassede plan er klar!';

  @override
  String get onboard_plan_ready_sub =>
      'Vi laget et skånsomt, personlig veikart for ernæring og velvære for deg.';

  @override
  String get onboard_enter_bloomi => 'Gå inn i Bloomi';

  @override
  String get insights_weekly_report => 'Ukentlig velværeoppsummering';

  @override
  String insights_best_day(Object day) {
    return 'Beste konsistens-dag: $day';
  }

  @override
  String get insights_streaks_badges => 'Streker og milepæler';

  @override
  String insights_unlocked_on(Object date) {
    return 'Låst opp på $date';
  }

  @override
  String get insights_keep_going => 'Fortsett med den fantastiske fremgangen!';

  @override
  String get widgets_title => 'Hjemmeskjermwidgeter';

  @override
  String widgets_active_count(Object count) {
    return 'Aktive widgets: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi velværesenter';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Bruk OS Smartwatch';

  @override
  String get wear_os_connected => 'Koblet til Watch';

  @override
  String get wear_os_sync => 'Synkroniser klokkedata';

  @override
  String get theme_title => 'Utseende og tema';

  @override
  String get theme_mode => 'Temamodus';

  @override
  String get theme_light => 'Lys';

  @override
  String get theme_dark => 'Mørkt';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Bakgrunnspalett';

  @override
  String get units_title => 'Måleenheter';

  @override
  String get units_metric => 'Metrisk (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Kan ikke laste dashbordet';

  @override
  String get home_health_permission_req => 'Health Connect-tillatelse kreves';

  @override
  String get home_health_permission_desc =>
      'Bloomi krever Health Connect-tillatelse for å trekke reelle skritt, hjertefrekvens og synkronisere mobilhome-widgets i sanntid.';

  @override
  String get home_allow_health => 'Tillat Health Connect';

  @override
  String get home_ready_mindful_day => 'Klar for en oppmerksom dag? ✨';

  @override
  String get home_quick_add => 'Rask Legg til';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORIER GJERENDE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Spist: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Dagsmål nådd 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml til daglig mål';
  }

  @override
  String get home_details => 'Detaljer';

  @override
  String get home_upgrade_plan_desc =>
      'Oppgrader for å låse opp personlige daglige mål og AI-plan';

  @override
  String get home_unlock => 'Lås opp 👑';

  @override
  String get home_quick_log_hint => 'Registrer raskt en velværeoppføring';

  @override
  String get food_serving_size => 'Serveringsstørrelse';

  @override
  String get food_serving_grams => 'Servering (g)';

  @override
  String get food_number_servings => 'Antall porsjoner';

  @override
  String get food_calories_per_serving => 'Kalorier per porsjon';

  @override
  String get food_recipe_ingredients => 'Ingredienser';

  @override
  String get food_recipe_add_ingredient => 'Tilsett ingrediens';

  @override
  String get food_recipe_directions => 'Instruksjoner og notater';

  @override
  String get food_recipe_total => 'Total oppskrift ernæring';

  @override
  String get food_recipe_per_serving => 'Ernæring per porsjon';

  @override
  String get food_recipe_saved_toast => 'Egendefinert mat lagret!';

  @override
  String get food_barcode_found => 'Produkt funnet!';

  @override
  String get food_barcode_not_found_desc =>
      'Vi kunne ikke finne denne strekkoden i den åpne databasen. Du kan legge den til som spesialmat.';

  @override
  String get food_add_custom_btn => 'Legg til tilpasset mat';

  @override
  String get food_scan_again => 'Skann på nytt';

  @override
  String get food_review_items => 'Gjennomgå oppdagede matvarer';

  @override
  String get food_review_hint =>
      'Juster mengder eller fjern eventuelle ukjente elementer';

  @override
  String get food_log_selected => 'Logg valgte matvarer';

  @override
  String get food_favourites_title => 'Favorittmat';

  @override
  String get food_recent_title => 'Nylig mat';

  @override
  String get food_no_favourites =>
      'Ingen favorittmat ennå. Trykk hjertet på maten for å spare her.';

  @override
  String get food_no_recents => 'Fant ingen nylig logget mat.';

  @override
  String get food_nutrition_details_title => 'Daglige ernæringsdetaljer';

  @override
  String get food_macro_protein_label => 'Proteinnedbrytning';

  @override
  String get food_macro_carbs_label => 'Nedbryting av karbohydrater';

  @override
  String get food_macro_fat_label => 'Fettnedbrytning';

  @override
  String get food_macro_fiber_label => 'Fibernedbrytning';

  @override
  String get food_daily_target_comparison => 'Sammenligning av mål';

  @override
  String food_target_label(Object target) {
    return 'Mål: $target';
  }

  @override
  String get food_edit_entry => 'Rediger dagbokoppføring';

  @override
  String get food_delete_entry => 'Slett oppføring';

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
    return '$current av $target ml';
  }

  @override
  String get water_intake_history => 'Dagens vannlogger';

  @override
  String get water_no_logs_today =>
      'Ikke registrert vann ennå i dag. Hydrater og trykk på en rask legg til-knapp!';

  @override
  String get water_adjust_goal => 'Juster daglig mål';

  @override
  String get health_connect_banner => 'Koblet til Health Connect';

  @override
  String get health_vitals_summary => 'Daglige helsevitale';

  @override
  String get health_latest_heart_rate => 'Siste hjertefrekvens';

  @override
  String get health_latest_bp => 'Blodtrykk';

  @override
  String get health_latest_spo2 => 'Blod oksygen';

  @override
  String get health_latest_glucose => 'Blodglukose';

  @override
  String get health_latest_weight => 'Vekt';

  @override
  String get health_latest_sleep => 'Søvnvarighet';

  @override
  String get health_add_manual => 'Legg til manuell måling';

  @override
  String get health_history_trends => 'Historiske trender';

  @override
  String get health_sync_success => 'Helsedata ble synkronisert!';

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
  String get health_devices_title => 'Tilkoblede enheter og wearables';

  @override
  String get health_devices_desc =>
      'Administrer sammenkoblede smartklokker, treningssporere og helsesensorer.';

  @override
  String get health_workout_editor_title => 'Rediger treningsøkten';

  @override
  String get health_workout_name_label => 'Treningsnavn';

  @override
  String get health_workout_duration_label => 'Varighet (minutter)';

  @override
  String get health_workout_calories_label => 'Anslåtte kalorier (kcal)';

  @override
  String get health_workout_date_label => 'Dato og tid';

  @override
  String get plan_daily_wellness_roadmap => 'Ditt personlige veikart';

  @override
  String get plan_morning_routine => 'Morgen rutine';

  @override
  String get plan_afternoon_routine => 'Middagsvelvære';

  @override
  String get plan_evening_routine => 'Kveldsvind';

  @override
  String get plan_coach_badge => 'Bloomi AI-trener';

  @override
  String get plan_weekly_overview => '7-dagers velværefokus';

  @override
  String get plan_targets_title => 'Velværemål og -mål';

  @override
  String get plan_calorie_budget_label => 'Daglig kaloribudsjett';

  @override
  String get plan_water_budget_label => 'Daglig vannmål';

  @override
  String get plan_step_budget_label => 'Daglig trinnmål';

  @override
  String get plan_macro_split_label => 'Makronæringsforhold';

  @override
  String get profile_personal_details => 'Personlige detaljer';

  @override
  String get profile_body_stats => 'Kroppsmål';

  @override
  String get profile_app_preferences => 'Preferanser og appinnstillinger';

  @override
  String get profile_edit_name_hint => 'Navnet ditt';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Høyde ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Vekt ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Alder';

  @override
  String get profile_gender_male => 'Mann';

  @override
  String get profile_gender_female => 'Kvinne';

  @override
  String get profile_gender_other => 'Annet / Foretrekker å ikke si';

  @override
  String get profile_activity_sedentary =>
      'Stillesittende (liten eller ingen trening)';

  @override
  String get profile_activity_light => 'Lett aktiv (1-3 dager/uke)';

  @override
  String get profile_activity_moderate => 'Middels aktiv (3-5 dager/uke)';

  @override
  String get profile_activity_very => 'Veldig aktiv (6-7 dager/uke)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Installer Bloomi-flisen og komplikasjonen på Wear OS-klokken for å se på kalorier, vann og trinn.';

  @override
  String get settings_widgets_header => 'Interaktive Android-widgets';

  @override
  String get settings_widgets_desc =>
      'Fest sanntidswidgeter på enhetens startskjerm for umiddelbare oppdateringer.';

  @override
  String get settings_about_header => 'Om Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Bygg 100';

  @override
  String get settings_about_credits =>
      'Laget med omhu for en bevisst, sunn livsstil.';

  @override
  String get settings_terms_header => 'Vilkår og betingelser';

  @override
  String get settings_privacy_header => 'Personvernerklæring';

  @override
  String get settings_delete_header => 'Slett konto og data';

  @override
  String get settings_delete_warning =>
      'Denne handlingen kan ikke angres. Alle måltider, treningsøkter, vitale funksjoner og profiler vil bli slettet permanent.';

  @override
  String get settings_delete_confirm_btn => 'Slett permanent';

  @override
  String get onboard_welcome_headline => 'Velkommen til Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Skånsom, oppmerksom velværesporing designet rundt livet ditt.';

  @override
  String get onboard_step_about => 'Om deg';

  @override
  String get onboard_step_goals => 'Dine mål';

  @override
  String get onboard_step_lifestyle => 'Daglige vaner';

  @override
  String get onboard_step_permissions => 'Tillatelser';

  @override
  String get onboard_step_plan => 'Klar!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Trinntellersensor';

  @override
  String get onboard_notif_perm => 'Oppmerksomme påminnelser og varsler';

  @override
  String get onboard_camera_perm => 'Kamera (strekkode- og matskanner)';

  @override
  String get onboard_grant_permissions => 'Gi tillatelser';

  @override
  String get onboard_continue_dashboard => 'Åpne Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydrering Nudges';

  @override
  String get notif_channel_hydration_desc => 'Milde vannpåminnelser hele dagen';

  @override
  String get notif_channel_nutrition_name =>
      'Påminnelser om måltid og ernæring';

  @override
  String get notif_channel_nutrition_desc =>
      'Påminnelsesvarsler for frokost, lunsj og middag';

  @override
  String get notif_channel_steps_name => 'Step Milepæler';

  @override
  String get notif_channel_steps_desc =>
      'Feiringer når du når daglige skrittmål';

  @override
  String get notif_channel_vitals_name => 'Helse- og vitalesjekker';

  @override
  String get notif_channel_vitals_desc => 'Påminnelser om vekt og leggetid';

  @override
  String get notif_action_log_water => '💧 Logg +250ml';

  @override
  String get notif_action_snooze => 'Slumre 15m';

  @override
  String get notif_action_log_meal => '🥗 Loggmåltid';

  @override
  String get language => 'Språk';

  @override
  String get share => 'Del';

  @override
  String common_days(Object count) {
    return '$count d siden';
  }
}
