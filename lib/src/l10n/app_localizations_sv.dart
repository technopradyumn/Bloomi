// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Hem';

  @override
  String get nav_today => 'Idag';

  @override
  String get nav_plan => 'Planera';

  @override
  String get nav_food => 'Mat';

  @override
  String get nav_food_diary => 'Matdagbok';

  @override
  String get nav_workout => 'Träningslogg';

  @override
  String get nav_health => 'Hälsa';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Spara';

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Ta bort';

  @override
  String get edit => 'Redigera';

  @override
  String get done => 'Klart';

  @override
  String get close => 'Stäng';

  @override
  String get back => 'Tillbaka';

  @override
  String get next => 'Nästa';

  @override
  String get continue_btn => 'Fortsätt';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get search => 'Sök';

  @override
  String get filter => 'Filtrera';

  @override
  String get all => 'Alla';

  @override
  String get active => 'Aktiv';

  @override
  String get today => 'Idag';

  @override
  String get yesterday => 'Igår';

  @override
  String get tomorrow => 'Imorgon';

  @override
  String get add => 'Lägg till';

  @override
  String get remove => 'Ta bort';

  @override
  String get refresh => 'Uppdatera';

  @override
  String get retry => 'Försök igen';

  @override
  String get error => 'Fel';

  @override
  String get success => 'Framgång';

  @override
  String get loading => 'Laddar...';

  @override
  String get no_data => 'Inga data tillgängliga';

  @override
  String get offline => 'Offlineläge';

  @override
  String get offline_sub => 'Ändringar synkroniseras när de återansluts';

  @override
  String get undo => 'Ångra';

  @override
  String get portion => 'Portion';

  @override
  String get quantity => 'Kvantitet';

  @override
  String get unit => 'Enhet';

  @override
  String get clear => 'Rensa';

  @override
  String get select => 'Välj';

  @override
  String get apply => 'Ansök';

  @override
  String get reset => 'Återställ';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nej';

  @override
  String get optional => 'Valfritt';

  @override
  String get calories => 'Kalorier';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Kolhydrater';

  @override
  String get fat => 'Fett';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Vatten';

  @override
  String get steps => 'Steg';

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
  String get bpm => 'slag per minut';

  @override
  String get hours => 'timmar';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Servering';

  @override
  String get servings => 'Serveringar';

  @override
  String get serving_size => 'Serveringsstorlek';

  @override
  String get per_100g => 'per 100 g';

  @override
  String get india => 'Indien';

  @override
  String get asia => 'Asien';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Mellanöstern';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Hem';

  @override
  String get home_greeting_morning => 'God morgon';

  @override
  String get home_greeting_afternoon => 'God eftermiddag';

  @override
  String get home_greeting_evening => 'God kväll';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagars rad',
      one: '1 dags rad',
      zero: '0 dagars rad',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Brände';

  @override
  String get home_calories_budget => 'Kaloribudget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal kvar';
  }

  @override
  String get home_water_title => 'Daglig hydrering';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Steg gick';

  @override
  String get home_quick_actions => 'Snabba åtgärder';

  @override
  String get home_log_meal => 'Loggmåltid';

  @override
  String get home_log_water => 'Loggvatten';

  @override
  String get home_log_workout => 'Logga träning';

  @override
  String get home_log_weight => 'Loggvikt';

  @override
  String get home_insights_title => 'Dagens insikter';

  @override
  String get home_quote => 'Små hälsosamma val skapar blommande förvandlingar.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI-tränare';

  @override
  String get home_surroundings => 'Omgivning & Luft';

  @override
  String get home_notifications => 'Aviseringar';

  @override
  String get home_daily_score => 'Dagligt hälsoresultat';

  @override
  String get home_view_all => 'Visa alla';

  @override
  String get food_diary_title => 'Matdagbok';

  @override
  String get food_breakfast => 'Frukost';

  @override
  String get food_lunch => 'Lunch';

  @override
  String get food_dinner => 'Middag';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Lägg till mat';

  @override
  String get food_edit_food => 'Redigera mat';

  @override
  String get food_add_breakfast => 'Lägg till frukost';

  @override
  String get food_add_lunch => 'Lägg till lunch';

  @override
  String get food_add_dinner => 'Lägg till middag';

  @override
  String get food_add_snack => 'Lägg till mellanmål';

  @override
  String get food_total_calories => 'Totala kalorier';

  @override
  String get food_empty_meal => 'Inga livsmedel loggade för denna måltid än';

  @override
  String get food_empty_diary => 'Inga måltider loggade för denna dag';

  @override
  String get food_log_first_meal =>
      'Tryck på + för att logga din första utsökta måltid';

  @override
  String get food_quick_add => 'Snabb tillägg';

  @override
  String get food_search_hint => 'Sök efter rätter, frukt, dal, roti...';

  @override
  String get food_custom_recipe => 'Anpassad mat & recept';

  @override
  String get food_scan_barcode => 'Skanna streckkod';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Senaste livsmedel';

  @override
  String get food_favourites => 'Favoriter';

  @override
  String get food_macro_summary => 'Fördelning av makronäringsämnen';

  @override
  String get food_delete_meal_confirm =>
      'Är du säker på att du vill ta bort det här objektet?';

  @override
  String get food_item_deleted => 'Livsmedel borttaget';

  @override
  String get food_remaining => 'återstående';

  @override
  String get food_consumed => 'konsumeras';

  @override
  String food_of_target(Object target) {
    return 'av $target kcal';
  }

  @override
  String get foodSearch_title => 'Sök mat';

  @override
  String get foodSearch_scan_barcode => 'Skanna streckkod';

  @override
  String get foodSearch_take_photo => 'Snap Food Foto';

  @override
  String get foodSearch_custom_food => 'Skapa anpassad mat';

  @override
  String get foodSearch_recent_searches => 'Senaste sökningar';

  @override
  String get foodSearch_popular => 'Populära rätter';

  @override
  String get foodSearch_no_results => 'Ingen mat som matchar din sökning';

  @override
  String get barcode_title => 'Streckkodsläsare';

  @override
  String get barcode_align => 'Rikta in streckkoden inuti kameraramen';

  @override
  String get barcode_not_found => 'Produkten hittades inte i databasen';

  @override
  String get barcode_premium_feature =>
      'Streckkodsskanning är tillgänglig med Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Ta ett tydligt foto av din maträtt';

  @override
  String get camera_analysing => 'Analyserar mattallrik...';

  @override
  String get camera_detected => 'Upptäckta föremål';

  @override
  String get camera_flash => 'Växla Flash';

  @override
  String get camera_retake => 'Ta om foto';

  @override
  String get camera_confirm_food => 'Bekräfta objekt';

  @override
  String get customFood_title => 'Anpassad mat & recept';

  @override
  String get customFood_name_hint => 'Rättens eller ingrediensens namn';

  @override
  String get customFood_calories_hint => 'Kalorier (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Kolhydrater (g)';

  @override
  String get customFood_fat_hint => 'Fett (g)';

  @override
  String get customFood_save => 'Spara recept';

  @override
  String get water_tracker_title => 'Vattenspårare';

  @override
  String get water_daily_target => 'Dagligt hydreringsmål';

  @override
  String get water_logged_today => 'Loggade idag';

  @override
  String get water_add_glass => '+250 ml glas';

  @override
  String get water_add_bottle => '+500 ml flaska';

  @override
  String get water_custom_amount => 'Anpassat belopp';

  @override
  String get water_reminder_tip =>
      'Drick vatten regelbundet under dagen för stadig energi.';

  @override
  String water_logged_toast(Object amount) {
    return 'Loggade $amount ml vatten 💧';
  }

  @override
  String get workout_title => 'Träningslogg';

  @override
  String get workout_add_exercise => 'Lägg till träning';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Styrka';

  @override
  String get workout_yoga => 'Yoga & flexibilitet';

  @override
  String get workout_duration => 'Varaktighet';

  @override
  String get workout_intensity => 'Intensitet';

  @override
  String get workout_calories_burned => 'Förbrända kalorier';

  @override
  String get workout_empty => 'Inga träningspass loggade idag';

  @override
  String get workout_save_success => 'Träningspasset har sparats!';

  @override
  String get workout_type => 'Typ av träning';

  @override
  String get workout_notes => 'Anteckningar & reflektioner';

  @override
  String get health_overview_title => 'Hälsa & Vitals';

  @override
  String get health_heart_rate => 'Puls';

  @override
  String get health_blood_oxygen => 'Blodsyre (SpO2)';

  @override
  String get health_blood_pressure => 'Blodtryck';

  @override
  String get health_blood_glucose => 'Blodglukos';

  @override
  String get health_body_temperature => 'Kroppstemperatur';

  @override
  String get health_sleep_tracking => 'Sömnspårning';

  @override
  String get health_weight_tracking => 'Vikt & Kroppssammansättning';

  @override
  String get health_waist_hip => 'Midja-till-höft-förhållande';

  @override
  String get health_devices_hub => 'Enheter & Smartwatch Hub';

  @override
  String get health_sync_now => 'Synkronisera hälsodata';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Senast synkroniserad: $time';
  }

  @override
  String get health_manual_entry => 'Manuell hälsoinmatning';

  @override
  String get health_metric_detail => 'Metriska detaljer';

  @override
  String get health_connected_sensors => 'Anslutna hälsosensorer';

  @override
  String get plan_title => 'Dagsplan';

  @override
  String get plan_weekly_title => 'Veckovis hälsoplan';

  @override
  String get plan_calorie_target => 'Kalorimål';

  @override
  String get plan_water_target => 'Hydrationsmål';

  @override
  String get plan_step_target => 'Stegmål';

  @override
  String get plan_sleep_target => 'Sömnmål';

  @override
  String get plan_meal_suggestions => 'Måltidsförslag';

  @override
  String get plan_healthy_habits => 'Hälsosamma vanor och tips';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach rekommendationer';

  @override
  String get plan_generated_title => 'Personligt dagligt schema';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Redigera profil';

  @override
  String get profile_name => 'Namn';

  @override
  String get profile_age => 'Ålder';

  @override
  String get profile_gender => 'Kön';

  @override
  String get profile_height => 'Höjd';

  @override
  String get profile_weight => 'Vikt';

  @override
  String get profile_goal => 'Primärt mål';

  @override
  String get profile_activity_level => 'Aktivitetsnivå';

  @override
  String get profile_stats => 'Min hälsostatistik';

  @override
  String get profile_saved => 'Profilen har uppdaterats';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Medlemskap';

  @override
  String get settings => 'Inställningar';

  @override
  String get preferences_habits => 'PREFERENSER OCH VANOR';

  @override
  String get appearance_theme => 'Utseende & Tema';

  @override
  String get appearance_theme_sub =>
      'Mörk, ljus, systemläge och appbakgrundsalternativ';

  @override
  String get permissions => 'Behörigheter och systemåtkomst';

  @override
  String get permissions_sub =>
      'Health Connect, stegsensorer, GPS, aviseringar och kamera';

  @override
  String get reminders_notifications => 'Påminnelser och meddelanden';

  @override
  String get reminders_sub =>
      'Måltider, vatten, viktincheckning och läggdagspåminnelser';

  @override
  String get units_of_measurement => 'Måttenheter';

  @override
  String get units_sub =>
      'Metriskt (kg, cm, ml, km) eller Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Appens språk';

  @override
  String get language_sub =>
      'engelska, हिन्दी (Hindi), Hinglish & 195+ globala språk';

  @override
  String get home_screen_widgets => 'Hemskärmswidgetar';

  @override
  String get widgets_sub =>
      'Live Android-widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch-följeslagare, brickor, komplikationer och levande vitala';

  @override
  String get goals_wellness => 'MÅL OCH VÄLKOMANSINSIKT';

  @override
  String get nutrition_targets => 'Nutrition Targets & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Mål för kalorier, protein, kolhydrater, fett och vatten';

  @override
  String get weekly_recap => 'Veckans välbefinnande sammanfattning';

  @override
  String get weekly_recap_sub =>
      '7-dagars kalorimedelvärde, makroförhållande och bästa dag';

  @override
  String get streaks_milestones => 'Sträckor och milstolpar';

  @override
  String get streaks_sub => 'Aktiva blomstränder, märken och prestationer';

  @override
  String get connected_devices => 'ANSLUTNA ENHETER OCH EKOSYSTEM';

  @override
  String get devices_hub => 'Enheter & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Omgivning & väder';

  @override
  String get surroundings_sub =>
      'Luftkvalitet (AQI), UV-index & väderhydreringstips';

  @override
  String get bloomi_pro => 'Bloomi Pro-prenumeration';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets på startskärmen och spårning av vitals';

  @override
  String get about_security => 'OM & SÄKERHET';

  @override
  String get about_bloomi => 'Om Bloomi';

  @override
  String get about_bloomi_sub => 'Byggspecifikationer, version, attributioner';

  @override
  String get privacy_policy => 'Sekretesspolicy';

  @override
  String get privacy_policy_sub => 'Offline-först, på enhetens dataarkitektur';

  @override
  String get terms_conditions => 'Allmänna villkor';

  @override
  String get terms_conditions_sub =>
      'Användarvillkor och riktlinjer för friskvård';

  @override
  String get delete_account => 'Ta bort konto och data';

  @override
  String get delete_account_sub =>
      'Oåterkalleligt radera lokala SQLite-data och molnsäkerhetskopior';

  @override
  String get healthy_habits => 'Bygg försiktiga, varaktiga hälsovanor';

  @override
  String get all_logs => 'Mina spårade data och loggar';

  @override
  String get search_language => 'Sök efter språk eller inbyggt manus...';

  @override
  String get languages_available => 'Tillgängliga språk';

  @override
  String get no_matching_languages => 'Inga matchande språk hittades';

  @override
  String get try_searching =>
      'Försök att söka med inbyggt skript eller engelsk stavning';

  @override
  String get partially_translated => 'Delvis översatt';

  @override
  String get complete_translation => 'Komplett';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Språk inställt på $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Omgivning & Miljö';

  @override
  String get surroundings_aqi => 'Luftkvalitetsindex';

  @override
  String get surroundings_uv => 'UV-index';

  @override
  String get surroundings_temp => 'Temperatur';

  @override
  String get surroundings_humidity => 'Fuktighet';

  @override
  String get surroundings_hydration_advice =>
      'Håll dig väl hydrerad i nuvarande väderförhållanden.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Sök mat';

  @override
  String get food_quick_barcode => 'Skanna streckkoden 👑';

  @override
  String get food_quick_water => 'Tillsätt vatten';

  @override
  String get food_quick_custom => 'Anpassad mat';

  @override
  String get surroundings_good => 'Bra';

  @override
  String get surroundings_moderate => 'Måttlig';

  @override
  String get surroundings_unhealthy => 'Ohälsosamt';

  @override
  String get notifications_title => 'Aviseringar och varningar';

  @override
  String get notifications_empty => 'Inga nya aviseringar';

  @override
  String get notifications_mark_read => 'Markera alla som lästa';

  @override
  String get notifications_clear => 'Rensa alla';

  @override
  String get reminders => 'Påminnelseinställningar';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Frukostpåminnelse 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'God morgon! Dags för en närande frukost på $time .';
  }

  @override
  String get reminders_lunch_title => 'Lunchpåminnelse 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pausa och njut av en balanserad, medveten lunch på $time .';
  }

  @override
  String get reminders_dinner_title => 'Påminnelse om middag 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Dags för en lätt, tillfredsställande middag på $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Dags att dricka ett glas färskt vatten! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Veckovis invägning ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Spåra din veckovisa kroppsstatistik på Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Sovdags varva ner 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Varva ner och förbered dig för en god sömn ($time).';
  }

  @override
  String get onboard_welcome => 'Välkommen till Bloomi';

  @override
  String get onboard_sub =>
      'Din vänliga, offline-första hälso- och kostkompis.';

  @override
  String get onboard_get_started => 'Kom igång';

  @override
  String get onboard_sign_in => 'Logga in';

  @override
  String get onboard_skip => 'Hoppa över';

  @override
  String get onboard_choose_goal => 'Vilket är ditt primära hälsomål?';

  @override
  String get onboard_goal_weight_loss => 'Mild viktminskning';

  @override
  String get onboard_goal_muscle => 'Muskelökning och styrka';

  @override
  String get onboard_goal_energy => 'Daglig energi och vitalitet';

  @override
  String get onboard_goal_habits => 'Hälsosam medveten kost';

  @override
  String get onboard_about_you => 'Berätta om dig själv';

  @override
  String get onboard_lifestyle => 'Din dagliga rutin';

  @override
  String get onboard_permissions_title => 'Behörigheter och systemåtkomst';

  @override
  String get onboard_permissions_sub =>
      'Ge åtkomst till synkroniseringssteg, träningspass och påminnelser.';

  @override
  String get onboard_plan_ready_title => 'Din anpassade plan är klar!';

  @override
  String get onboard_plan_ready_sub =>
      'Vi skapade en skonsam, personlig färdplan för näring och välbefinnande just för dig.';

  @override
  String get onboard_enter_bloomi => 'Gå in i Bloomi';

  @override
  String get insights_weekly_report => 'Veckans välbefinnande sammanfattning';

  @override
  String insights_best_day(Object day) {
    return 'Bästa konsistensdagen: $day';
  }

  @override
  String get insights_streaks_badges => 'Sträckor och milstolpar';

  @override
  String insights_unlocked_on(Object date) {
    return 'Upplåst på $date';
  }

  @override
  String get insights_keep_going => 'Fortsätt med de fantastiska framstegen!';

  @override
  String get widgets_title => 'Hemskärmswidgetar';

  @override
  String widgets_active_count(Object count) {
    return 'Aktiva widgetar: $count';
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
  String get wear_os_title => 'Bär OS Smartwatch';

  @override
  String get wear_os_connected => 'Ansluten till Watch';

  @override
  String get wear_os_sync => 'Synkronisera klockdata';

  @override
  String get theme_title => 'Utseende & Tema';

  @override
  String get theme_mode => 'Temaläge';

  @override
  String get theme_light => 'Ljus';

  @override
  String get theme_dark => 'Mörkt';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Bakgrundspalett';

  @override
  String get units_title => 'Måttenheter';

  @override
  String get units_metric => 'Metrisk (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Det gick inte att ladda instrumentpanelen';

  @override
  String get home_health_permission_req => 'Health Connect-tillstånd krävs';

  @override
  String get home_health_permission_desc =>
      'Bloomi kräver Health Connect-tillstånd för att dra riktiga steg, puls och synkronisera husbilswidgets i realtid.';

  @override
  String get home_allow_health => 'Tillåt Health Connect';

  @override
  String get home_ready_mindful_day => 'Redo för en medveten dag? ✨';

  @override
  String get home_quick_add => 'Snabb tillägg';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORIER KVAR';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ätit: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Dagsmål nått 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml till det dagliga målet';
  }

  @override
  String get home_details => 'Detaljer';

  @override
  String get home_upgrade_plan_desc =>
      'Uppgradera för att låsa upp personliga dagliga mål och AI-plan';

  @override
  String get home_unlock => 'Lås upp 👑';

  @override
  String get home_quick_log_hint => 'Spela in ett friskvårdsinlägg snabbt';

  @override
  String get food_serving_size => 'Serveringsstorlek';

  @override
  String get food_serving_grams => 'Servering (g)';

  @override
  String get food_number_servings => 'Antal portioner';

  @override
  String get food_calories_per_serving => 'Kalorier per portion';

  @override
  String get food_recipe_ingredients => 'Ingredienser';

  @override
  String get food_recipe_add_ingredient => 'Tillsätt ingrediens';

  @override
  String get food_recipe_directions => 'Instruktioner och anteckningar';

  @override
  String get food_recipe_total => 'Total Recept Nutrition';

  @override
  String get food_recipe_per_serving => 'Näring per portion';

  @override
  String get food_recipe_saved_toast => 'Anpassad mat sparad framgångsrikt!';

  @override
  String get food_barcode_found => 'Produkt hittad!';

  @override
  String get food_barcode_not_found_desc =>
      'Vi kunde inte hitta den här streckkoden i den öppna databasen. Du kan lägga till det som specialmat.';

  @override
  String get food_add_custom_btn => 'Lägg till anpassad mat';

  @override
  String get food_scan_again => 'Skanna igen';

  @override
  String get food_review_items => 'Granska upptäckta livsmedel';

  @override
  String get food_review_hint =>
      'Justera kvantiteter eller ta bort alla okända föremål';

  @override
  String get food_log_selected => 'Logga valda livsmedel';

  @override
  String get food_favourites_title => 'Favoritmat';

  @override
  String get food_recent_title => 'Senaste livsmedel';

  @override
  String get food_no_favourites =>
      'Ingen favoritmat än. Tryck hjärtat på valfri mat för att spara här.';

  @override
  String get food_no_recents => 'Inga nyligen loggade livsmedel hittades.';

  @override
  String get food_nutrition_details_title => 'Daglig näringsinformation';

  @override
  String get food_macro_protein_label => 'Proteinnedbrytning';

  @override
  String get food_macro_carbs_label => 'Kolhydratnedbrytning';

  @override
  String get food_macro_fat_label => 'Fettnedbrytning';

  @override
  String get food_macro_fiber_label => 'Fibernedbrytning';

  @override
  String get food_daily_target_comparison => 'Måljämförelse';

  @override
  String food_target_label(Object target) {
    return 'Mål: $target';
  }

  @override
  String get food_edit_entry => 'Redigera dagboksinlägg';

  @override
  String get food_delete_entry => 'Ta bort post';

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
  String get water_intake_history => 'Dagens vattenloggar';

  @override
  String get water_no_logs_today =>
      'Inget vatten loggat ännu idag. Fukta och tryck på en snabbläggsknapp!';

  @override
  String get water_adjust_goal => 'Justera dagligt mål';

  @override
  String get health_connect_banner => 'Ansluten till Health Connect';

  @override
  String get health_vitals_summary => 'Dagliga hälsoviktigheter';

  @override
  String get health_latest_heart_rate => 'Senaste hjärtfrekvensen';

  @override
  String get health_latest_bp => 'Blodtryck';

  @override
  String get health_latest_spo2 => 'Blodsyre';

  @override
  String get health_latest_glucose => 'Blodglukos';

  @override
  String get health_latest_weight => 'Vikt';

  @override
  String get health_latest_sleep => 'Sömnlängd';

  @override
  String get health_add_manual => 'Lägg till manuell mätning';

  @override
  String get health_history_trends => 'Historiska trender';

  @override
  String get health_sync_success => 'Hälsodata har synkroniserats!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours timmar $mins min';
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
  String get health_devices_title => 'Anslutna enheter och wearables';

  @override
  String get health_devices_desc =>
      'Hantera parade smartklockor, träningsspårare och hälsosensorer.';

  @override
  String get health_workout_editor_title => 'Redigera träningspass';

  @override
  String get health_workout_name_label => 'Träningspassets namn';

  @override
  String get health_workout_duration_label => 'Varaktighet (minuter)';

  @override
  String get health_workout_calories_label => 'Uppskattade kalorier (kcal)';

  @override
  String get health_workout_date_label => 'Datum och tid';

  @override
  String get plan_daily_wellness_roadmap => 'Din personliga färdplan';

  @override
  String get plan_morning_routine => 'Morgonrutin';

  @override
  String get plan_afternoon_routine => 'Middag Wellness';

  @override
  String get plan_evening_routine => 'Kvällsvind';

  @override
  String get plan_coach_badge => 'Bloomi AI-tränare';

  @override
  String get plan_weekly_overview => '7-dagars hälsofokus';

  @override
  String get plan_targets_title => 'Friskvårdsmål och mål';

  @override
  String get plan_calorie_budget_label => 'Daglig kaloribudget';

  @override
  String get plan_water_budget_label => 'Dagligt vattenmål';

  @override
  String get plan_step_budget_label => 'Dagligt stegmål';

  @override
  String get plan_macro_split_label => 'Makronäringsförhållande';

  @override
  String get profile_personal_details => 'Personliga detaljer';

  @override
  String get profile_body_stats => 'Kroppsmått';

  @override
  String get profile_app_preferences => 'Inställningar och appinställningar';

  @override
  String get profile_edit_name_hint => 'Ditt namn';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Höjd ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Vikt ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Ålder';

  @override
  String get profile_gender_male => 'Hane';

  @override
  String get profile_gender_female => 'Kvinna';

  @override
  String get profile_gender_other => 'Annat / Föredrar att inte säga';

  @override
  String get profile_activity_sedentary =>
      'Stillasittande (lite eller ingen träning)';

  @override
  String get profile_activity_light => 'Lätt aktiv (1-3 dagar/vecka)';

  @override
  String get profile_activity_moderate => 'Måttligt aktiv (3-5 dagar/vecka)';

  @override
  String get profile_activity_very => 'Mycket aktiv (6-7 dagar/vecka)';

  @override
  String get settings_wear_os_header => 'Bär OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Installera Bloomi-plattan och komplikationen på din Wear OS-klocka för att titta på kalorier, vatten och steg.';

  @override
  String get settings_widgets_header => 'Interaktiva Android-widgets';

  @override
  String get settings_widgets_desc =>
      'Fäst widgets i realtid på enhetens startskärm för omedelbara uppdateringar.';

  @override
  String get settings_about_header => 'Om Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Bygg 100';

  @override
  String get settings_about_credits =>
      'Tillverkad med omsorg för ett medvetet, hälsosamt liv.';

  @override
  String get settings_terms_header => 'Regler och villkor';

  @override
  String get settings_privacy_header => 'Sekretesspolicy';

  @override
  String get settings_delete_header => 'Ta bort konto och data';

  @override
  String get settings_delete_warning =>
      'Denna åtgärd kan inte ångras. Alla dina måltider, träningspass, vitals och profil kommer att raderas permanent.';

  @override
  String get settings_delete_confirm_btn => 'Ta bort permanent';

  @override
  String get onboard_welcome_headline => 'Välkommen till Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Mild, medveten hälsospårning designad kring ditt liv.';

  @override
  String get onboard_step_about => 'Om dig';

  @override
  String get onboard_step_goals => 'Dina mål';

  @override
  String get onboard_step_lifestyle => 'Dagliga vanor';

  @override
  String get onboard_step_permissions => 'Behörigheter';

  @override
  String get onboard_step_plan => 'Klart!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Stegräknarsensor';

  @override
  String get onboard_notif_perm => 'Medvetna påminnelser och aviseringar';

  @override
  String get onboard_camera_perm => 'Kamera (streckkods- och matskanner)';

  @override
  String get onboard_grant_permissions => 'Bevilja behörigheter';

  @override
  String get onboard_continue_dashboard => 'Öppna Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Milda vattenpåminnelser hela dagen';

  @override
  String get notif_channel_nutrition_name => 'Måltids- och näringspåminnelser';

  @override
  String get notif_channel_nutrition_desc =>
      'Påminnelser om frukost, lunch och middag';

  @override
  String get notif_channel_steps_name => 'Steg Milstolpar';

  @override
  String get notif_channel_steps_desc => 'Firande när man når dagliga stegmål';

  @override
  String get notif_channel_vitals_name => 'Hälso- och vitalkontroller';

  @override
  String get notif_channel_vitals_desc => 'Påminnelser om vikt och läggdags';

  @override
  String get notif_action_log_water => '💧 Logg +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Loggmåltid';

  @override
  String get language => 'Språk';

  @override
  String get share => 'Dela';

  @override
  String common_days(Object count) {
    return 'för $count d sedan';
  }
}
