// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get app_name => 'Blūmi';

  @override
  String get nav_home => 'Sākums';

  @override
  String get nav_today => 'Šodien';

  @override
  String get nav_plan => 'Plānot';

  @override
  String get nav_food => 'Pārtika';

  @override
  String get nav_food_diary => 'Pārtikas dienasgrāmata';

  @override
  String get nav_workout => 'Treniņu žurnāls';

  @override
  String get nav_health => 'Veselība';

  @override
  String get nav_profile => 'Profils';

  @override
  String get save => 'Saglabāt';

  @override
  String get cancel => 'Atcelt';

  @override
  String get delete => 'Dzēst';

  @override
  String get edit => 'Rediģēt';

  @override
  String get done => 'Gatavs';

  @override
  String get close => 'Aizvērt';

  @override
  String get back => 'Atpakaļ';

  @override
  String get next => 'Tālāk';

  @override
  String get continue_btn => 'Turpināt';

  @override
  String get confirm => 'Apstiprināt';

  @override
  String get search => 'Meklēt';

  @override
  String get filter => 'Filtrs';

  @override
  String get all => 'Visi';

  @override
  String get active => 'Aktīvs';

  @override
  String get today => 'Šodien';

  @override
  String get yesterday => 'vakar';

  @override
  String get tomorrow => 'rīt';

  @override
  String get add => 'Pievienot';

  @override
  String get remove => 'Noņemt';

  @override
  String get refresh => 'Atsvaidzināt';

  @override
  String get retry => 'Mēģiniet vēlreiz';

  @override
  String get error => 'Kļūda';

  @override
  String get success => 'Panākumi';

  @override
  String get loading => 'Notiek ielāde...';

  @override
  String get no_data => 'Nav pieejami dati';

  @override
  String get offline => 'Bezsaistes režīms';

  @override
  String get offline_sub =>
      'Izmaiņas tiks sinhronizētas pēc atkārtota savienojuma izveides';

  @override
  String get undo => 'Atsaukt';

  @override
  String get portion => 'Porcija';

  @override
  String get quantity => 'Daudzums';

  @override
  String get unit => 'Vienība';

  @override
  String get clear => 'Skaidrs';

  @override
  String get select => 'Izvēlieties';

  @override
  String get apply => 'Pieteikties';

  @override
  String get reset => 'Atiestatīt';

  @override
  String get ok => 'Labi';

  @override
  String get yes => 'Jā';

  @override
  String get no => 'Nē';

  @override
  String get optional => 'Pēc izvēles';

  @override
  String get calories => 'Kalorijas';

  @override
  String get protein => 'Olbaltumvielas';

  @override
  String get carbs => 'Ogļhidrāti';

  @override
  String get fat => 'Tauki';

  @override
  String get fiber => 'Šķiedra';

  @override
  String get water => 'Ūdens';

  @override
  String get steps => 'Soļi';

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
  String get inches => 'iekšā';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'st';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Pasniegšana';

  @override
  String get servings => 'Porcijas';

  @override
  String get serving_size => 'Porcijas lielums';

  @override
  String get per_100g => 'uz 100g';

  @override
  String get india => 'Indija';

  @override
  String get asia => 'Āzija';

  @override
  String get europe => 'Eiropā';

  @override
  String get middle_east => 'Tuvie Austrumi';

  @override
  String get africa => 'Āfrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Sākums';

  @override
  String get home_greeting_morning => 'Labrīt';

  @override
  String get home_greeting_afternoon => 'Laba pēcpusdiena';

  @override
  String get home_greeting_evening => 'Labvakar';

  @override
  String get home_streak_title => 'Ziedu svītra';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienu sērija',
      one: '1 dienas sērija',
      zero: '0 dienu sērija',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Dedzis';

  @override
  String get home_calories_budget => 'Kaloriju budžets';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Atlikušais $kcal kcal';
  }

  @override
  String get home_water_title => 'Ikdienas mitrināšana';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pagājuši soļi';

  @override
  String get home_quick_actions => 'Ātrās darbības';

  @override
  String get home_log_meal => 'Baļķu maltīte';

  @override
  String get home_log_water => 'Baļķu Ūdens';

  @override
  String get home_log_workout => 'Log treniņš';

  @override
  String get home_log_weight => 'Baļķa svars';

  @override
  String get home_insights_title => 'Šodienas ieskati';

  @override
  String get home_quote => 'Mazas veselīgas izvēles rada ziedošas pārvērtības.';

  @override
  String get home_ai_coach_tip => 'Blūmi AI treneris';

  @override
  String get home_surroundings => 'Apkārtne un gaiss';

  @override
  String get home_notifications => 'Paziņojumi';

  @override
  String get home_daily_score => 'Ikdienas labsajūtas rādītājs';

  @override
  String get home_view_all => 'Skatīt visu';

  @override
  String get food_diary_title => 'Pārtikas dienasgrāmata';

  @override
  String get food_breakfast => 'Brokastis';

  @override
  String get food_lunch => 'Pusdienas';

  @override
  String get food_dinner => 'Vakariņas';

  @override
  String get food_snacks => 'Uzkodas';

  @override
  String get food_add_food => 'Pievienojiet ēdienu';

  @override
  String get food_edit_food => 'Rediģēt ēdienu';

  @override
  String get food_add_breakfast => 'Pievienojiet brokastis';

  @override
  String get food_add_lunch => 'Pievienojiet pusdienas';

  @override
  String get food_add_dinner => 'Pievienojiet vakariņas';

  @override
  String get food_add_snack => 'Pievienojiet uzkodu';

  @override
  String get food_total_calories => 'Kopējās kalorijas';

  @override
  String get food_empty_meal =>
      'Šai maltītei vēl nav reģistrēts neviens ēdiens';

  @override
  String get food_empty_diary => 'Šai dienai nav reģistrēta neviena ēdienreize';

  @override
  String get food_log_first_meal =>
      'Pieskarieties +, lai reģistrētu savu pirmo gardo maltīti';

  @override
  String get food_quick_add => 'Ātrā pievienošana';

  @override
  String get food_search_hint => 'Meklēt ēdienus, augļus, dal, roti...';

  @override
  String get food_custom_recipe => 'Pielāgots ēdiens un recepte';

  @override
  String get food_scan_barcode => 'Skenējiet svītrkodu';

  @override
  String get food_camera_scan => 'AI pārtikas skeneris';

  @override
  String get food_recent => 'Jaunākie ēdieni';

  @override
  String get food_favourites => 'Izlase';

  @override
  String get food_macro_summary => 'Makroelementu sadalījums';

  @override
  String get food_delete_meal_confirm =>
      'Vai tiešām vēlaties noņemt šo vienumu?';

  @override
  String get food_item_deleted => 'Pārtikas prece izņemta';

  @override
  String get food_remaining => 'atlikušais';

  @override
  String get food_consumed => 'patērēts';

  @override
  String food_of_target(Object target) {
    return 'no $target kcal';
  }

  @override
  String get foodSearch_title => 'Meklēt pārtikas produktus';

  @override
  String get foodSearch_scan_barcode => 'Skenējiet svītrkodu';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Izveidojiet pielāgotu ēdienu';

  @override
  String get foodSearch_recent_searches => 'Jaunākie meklējumi';

  @override
  String get foodSearch_popular => 'Populāri ēdieni';

  @override
  String get foodSearch_no_results =>
      'Jūsu meklējumam neatbilst neviens ēdiens';

  @override
  String get barcode_title => 'Svītrkoda skeneris';

  @override
  String get barcode_align => 'Izlīdziniet svītrkodu kameras rāmī';

  @override
  String get barcode_not_found => 'Produkts datubāzē nav atrasts';

  @override
  String get barcode_premium_feature =>
      'Svītrkoda skenēšana ir pieejama ar Boomi Pro';

  @override
  String get camera_title => 'AI pārtikas skeneris';

  @override
  String get camera_tap_hint => 'Uzņemiet skaidru sava ēdiena fotoattēlu';

  @override
  String get camera_analysing => 'Notiek pārtikas šķīvja analīze...';

  @override
  String get camera_detected => 'Atklāti vienumi';

  @override
  String get camera_flash => 'Pārslēgt zibspuldzi';

  @override
  String get camera_retake => 'Atkārtoti uzņemt fotoattēlu';

  @override
  String get camera_confirm_food => 'Apstipriniet preces';

  @override
  String get customFood_title => 'Pielāgots ēdiens un recepte';

  @override
  String get customFood_name_hint => 'Trauka vai sastāvdaļas nosaukums';

  @override
  String get customFood_calories_hint => 'Kalorijas (kcal)';

  @override
  String get customFood_protein_hint => 'olbaltumvielas (g)';

  @override
  String get customFood_carbs_hint => 'ogļhidrāti (g)';

  @override
  String get customFood_fat_hint => 'tauki (g)';

  @override
  String get customFood_save => 'Saglabāt recepti';

  @override
  String get water_tracker_title => 'Ūdens izsekotājs';

  @override
  String get water_daily_target => 'Ikdienas hidratācijas mērķis';

  @override
  String get water_logged_today => 'Šodien reģistrēts';

  @override
  String get water_add_glass => '+250 ml Stikls';

  @override
  String get water_add_bottle => '+500 ml pudele';

  @override
  String get water_custom_amount => 'Pielāgota summa';

  @override
  String get water_reminder_tip =>
      'Regulāri dzeriet ūdeni visas dienas garumā, lai iegūtu vienmērīgu enerģiju.';

  @override
  String water_logged_toast(Object amount) {
    return 'Reģistrēts $amount ml ūdens 💧';
  }

  @override
  String get workout_title => 'Treniņu žurnāls';

  @override
  String get workout_add_exercise => 'Pievienot treniņu';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Spēks';

  @override
  String get workout_yoga => 'Joga un elastība';

  @override
  String get workout_duration => 'Ilgums';

  @override
  String get workout_intensity => 'Intensitāte';

  @override
  String get workout_calories_burned => 'Sadedzinātās kalorijas';

  @override
  String get workout_empty => 'Šodien nav reģistrēts neviens treniņš';

  @override
  String get workout_save_success => 'Treniņš veiksmīgi saglabāts!';

  @override
  String get workout_type => 'Treniņa veids';

  @override
  String get workout_notes => 'Piezīmes un pārdomas';

  @override
  String get health_overview_title => 'Veselība & Vitals';

  @override
  String get health_heart_rate => 'Sirdsdarbības ātrums';

  @override
  String get health_blood_oxygen => 'Asins skābeklis (SpO2)';

  @override
  String get health_blood_pressure => 'Asinsspiediens';

  @override
  String get health_blood_glucose => 'Glikoze asinīs';

  @override
  String get health_body_temperature => 'Ķermeņa temperatūra';

  @override
  String get health_sleep_tracking => 'Miega izsekošana';

  @override
  String get health_weight_tracking => 'Svars un ķermeņa sastāvs';

  @override
  String get health_waist_hip => 'Vidukļa un gurnu attiecība';

  @override
  String get health_devices_hub => 'Ierīces un viedpulksteņu centrs';

  @override
  String get health_sync_now => 'Sinhronizēt veselības datus';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Pēdējo reizi sinhronizēts: $time';
  }

  @override
  String get health_manual_entry => 'Manuāla veselības ievade';

  @override
  String get health_metric_detail => 'Metrikas informācija';

  @override
  String get health_connected_sensors => 'Savienoti veselības sensori';

  @override
  String get plan_title => 'Dienas plāns';

  @override
  String get plan_weekly_title => 'Iknedēļas labsajūtas plāns';

  @override
  String get plan_calorie_target => 'Kaloriju mērķis';

  @override
  String get plan_water_target => 'Hidratācijas mērķis';

  @override
  String get plan_step_target => 'Step Mērķis';

  @override
  String get plan_sleep_target => 'Miega mērķis';

  @override
  String get plan_meal_suggestions => 'Ēdienu ieteikumi';

  @override
  String get plan_healthy_habits => 'Veselīgi ieradumi un padomi';

  @override
  String get plan_coach_advice => 'Blūmi AI trenera ieteikumi';

  @override
  String get plan_generated_title => 'Personalizēts dienas grafiks';

  @override
  String get profile_title => 'Profils';

  @override
  String get profile_edit => 'Rediģēt profilu';

  @override
  String get profile_name => 'Vārds';

  @override
  String get profile_age => 'Vecums';

  @override
  String get profile_gender => 'Dzimums';

  @override
  String get profile_height => 'Augstums';

  @override
  String get profile_weight => 'Svars';

  @override
  String get profile_goal => 'Primārais mērķis';

  @override
  String get profile_activity_level => 'Aktivitātes līmenis';

  @override
  String get profile_stats => 'Mana labsajūtas statistika';

  @override
  String get profile_saved => 'Profils ir veiksmīgi atjaunināts';

  @override
  String get profile_bmi => 'Ķermeņa masas indekss (ĶMI)';

  @override
  String get profile_membership => 'Dalība';

  @override
  String get settings => 'Iestatījumi';

  @override
  String get preferences_habits => 'PREFERENCE UN IERADUMI';

  @override
  String get appearance_theme => 'Izskats un tēma';

  @override
  String get appearance_theme_sub =>
      'Tumšā, gaišā, sistēmas režīma un lietotņu fona opcijas';

  @override
  String get permissions => 'Atļaujas un piekļuve sistēmai';

  @override
  String get permissions_sub =>
      'Health Connect, soļu sensori, GPS, paziņojumi un kamera';

  @override
  String get reminders_notifications => 'Atgādinājumi un paziņojumi';

  @override
  String get reminders_sub =>
      'Ēdināšanas laiki, ūdens, svara reģistrēšanās un atgādinājumi par gulētiešanu';

  @override
  String get units_of_measurement => 'Mērvienības';

  @override
  String get units_sub =>
      'Metriskā (kg, cm, ml, km) vai imperatora (mārciņas, pēda/in, fl unce)';

  @override
  String get app_language => 'Lietotnes valoda';

  @override
  String get language_sub =>
      'Angļu, हिन्दी (hindi), hingu un 195+ globālās valodas';

  @override
  String get home_screen_widgets => 'Sākuma ekrāna logrīki';

  @override
  String get widgets_sub =>
      'Tiešraides Android logrīki: centrmezgls, soļi, ūdens, uzturs un talismans';

  @override
  String get wear_os_watch_app => 'Wear OS pulksteņu lietotne';

  @override
  String get wear_os_sub =>
      'Viedpulksteņa pavadonis, flīzes, sarežģījumi un dzīvā dzīvā informācija';

  @override
  String get goals_wellness => 'MĒRĶI UN LABS IZSKATS';

  @override
  String get nutrition_targets => 'Uztura mērķi un makro sadalījums';

  @override
  String get nutrition_targets_sub =>
      'Kaloriju mērķis, olbaltumvielu, ogļhidrātu, tauku un ūdens mērķis';

  @override
  String get weekly_recap => 'Iknedēļas labsajūtas kopsavilkums';

  @override
  String get weekly_recap_sub =>
      '7 dienu vidējais kaloriju daudzums, makro attiecība un labākā diena';

  @override
  String get streaks_milestones => 'Svītras un pagrieziena punkti';

  @override
  String get streaks_sub => 'Aktīvas ziedu svītras, nozīmītes un sasniegumi';

  @override
  String get connected_devices => 'SAVIENOTĀS IERĪCES UN EKOSISTĒMA';

  @override
  String get devices_hub => 'Ierīces un viedpulksteņu centrs';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Apkārtne un laikapstākļi';

  @override
  String get surroundings_sub =>
      'Gaisa kvalitātes (AQI), UV indeksa un laikapstākļu hidratācijas padomi';

  @override
  String get bloomi_pro => 'Bloom Pro abonements';

  @override
  String get bloomi_pro_sub =>
      'AI plāna treneris, 5 sākuma ekrāna logrīki un dzīvībai svarīgo datu izsekošana';

  @override
  String get about_security => 'PAR UN DROŠĪBU';

  @override
  String get about_bloomi => 'Par Blūmi';

  @override
  String get about_bloomi_sub =>
      'Būvējuma specifikācijas, versija, attiecinājumi';

  @override
  String get privacy_policy => 'Privātuma politika';

  @override
  String get privacy_policy_sub =>
      'Vispirms bezsaistes datu arhitektūra ierīcē';

  @override
  String get terms_conditions => 'Noteikumi un nosacījumi';

  @override
  String get terms_conditions_sub =>
      'Pakalpojumu sniegšanas noteikumi un labsajūtas vadlīnijas';

  @override
  String get delete_account => 'Dzēst kontu un datus';

  @override
  String get delete_account_sub =>
      'Neatgriezeniski dzēsiet vietējos SQLite datus un mākoņa dublējumus';

  @override
  String get healthy_habits =>
      'Veidojiet maigus, noturīgus labsajūtas ieradumus';

  @override
  String get all_logs => 'Mani izsekotie dati un žurnāli';

  @override
  String get search_language => 'Meklēt pēc valodas vai vietējā skripta...';

  @override
  String get languages_available => 'Pieejamās valodas';

  @override
  String get no_matching_languages => 'Nav atrasta neviena atbilstoša valoda';

  @override
  String get try_searching =>
      'Mēģiniet meklēt pēc dzimtās rakstības vai angļu valodas pareizrakstības';

  @override
  String get partially_translated => 'Daļēji tulkots';

  @override
  String get complete_translation => 'Pabeigts';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Valoda iestatīta uz $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Apkārtne un vide';

  @override
  String get surroundings_aqi => 'Gaisa kvalitātes indekss';

  @override
  String get surroundings_uv => 'UV indekss';

  @override
  String get surroundings_temp => 'Temperatūra';

  @override
  String get surroundings_humidity => 'Mitrums';

  @override
  String get surroundings_hydration_advice =>
      'Palieciet labi hidratēti pašreizējos laika apstākļos.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Meklēt pārtiku';

  @override
  String get food_quick_barcode => 'Skenējiet svītrkodu 👑';

  @override
  String get food_quick_water => 'Pievieno ūdeni';

  @override
  String get food_quick_custom => 'Pielāgots ēdiens';

  @override
  String get surroundings_good => 'Labi';

  @override
  String get surroundings_moderate => 'Mērens';

  @override
  String get surroundings_unhealthy => 'Neveselīgs';

  @override
  String get notifications_title => 'Paziņojumi un brīdinājumi';

  @override
  String get notifications_empty => 'Nav jaunu paziņojumu';

  @override
  String get notifications_mark_read => 'Atzīmēt visu kā izlasītu';

  @override
  String get notifications_clear => 'Notīrīt visu';

  @override
  String get reminders => 'Atgādinājuma iestatījumi';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Brokastu atgādinājums 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Labrīt! Laiks barojošām brokastīm plkst. $time.';
  }

  @override
  String get reminders_lunch_title => 'Atgādinājums par pusdienām 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Apturiet un izbaudiet sabalansētas, pārdomātas pusdienas plkst. $time.';
  }

  @override
  String get reminders_dinner_title => 'Atgādinājums par vakariņām 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Laiks vieglām, sātīgām vakariņām plkst. $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Mudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Laiks izdzert glāzi svaiga ūdens! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Iknedēļas svēršanās ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Sekojiet saviem iknedēļas ķermeņa rādītājiem vietnē Bloom ($time).';
  }

  @override
  String get reminders_sleep_title => 'Pirms gulētiešanas 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Atpūtieties un sagatavojieties mierīgam miegam ( $time ).';
  }

  @override
  String get onboard_welcome => 'Laipni lūdzam Blūmā';

  @override
  String get onboard_sub =>
      'Jūsu draudzīgais, bezsaistē pirmais veselības un uztura pavadonis.';

  @override
  String get onboard_get_started => 'Sāciet darbu';

  @override
  String get onboard_sign_in => 'Pierakstīties';

  @override
  String get onboard_skip => 'Izlaist';

  @override
  String get onboard_choose_goal => 'Kāds ir jūsu galvenais labsajūtas mērķis?';

  @override
  String get onboard_goal_weight_loss => 'Maigs svara zudums';

  @override
  String get onboard_goal_muscle => 'Muskuļu pieaugums un spēks';

  @override
  String get onboard_goal_energy => 'Ikdienas enerģija un vitalitāte';

  @override
  String get onboard_goal_habits => 'Veselīga apzināta ēšana';

  @override
  String get onboard_about_you => 'Pastāstiet mums par sevi';

  @override
  String get onboard_lifestyle => 'Jūsu ikdienas rutīna';

  @override
  String get onboard_permissions_title => 'Atļaujas un piekļuve sistēmai';

  @override
  String get onboard_permissions_sub =>
      'Piešķiriet piekļuvi sinhronizācijas darbībām, treniņiem un atgādinājumiem.';

  @override
  String get onboard_plan_ready_title => 'Jūsu pielāgotais plāns ir gatavs!';

  @override
  String get onboard_plan_ready_sub =>
      'Mēs izstrādājām maigu, personalizētu uztura un labsajūtas plānu tieši jums.';

  @override
  String get onboard_enter_bloomi => 'Ienāc Blūmi';

  @override
  String get insights_weekly_report => 'Iknedēļas labsajūtas kopsavilkums';

  @override
  String insights_best_day(Object day) {
    return 'Labākās konsekvences diena: $day';
  }

  @override
  String get insights_streaks_badges => 'Svītras un pagrieziena punkti';

  @override
  String insights_unlocked_on(Object date) {
    return 'Atbloķēts $date';
  }

  @override
  String get insights_keep_going => 'Turpiniet fantastisko progresu!';

  @override
  String get widgets_title => 'Sākuma ekrāna logrīki';

  @override
  String widgets_active_count(Object count) {
    return 'Aktīvie logrīki: $count';
  }

  @override
  String get widgets_hub_title => 'Blūmi labsajūtas centrs';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Hidratācijas ātrais žurnāls';

  @override
  String get widgets_mascot_title => 'Blūmi talismana pavadonis';

  @override
  String get wear_os_title => 'Wear OS viedpulkstenis';

  @override
  String get wear_os_connected => 'Savienots ar pulksteni';

  @override
  String get wear_os_sync => 'Sinhronizēt pulksteņa datus';

  @override
  String get theme_title => 'Izskats un tēma';

  @override
  String get theme_mode => 'Motīvu režīms';

  @override
  String get theme_light => 'Gaisma';

  @override
  String get theme_dark => 'Tumšs';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Fona palete';

  @override
  String get units_title => 'Mērvienības';

  @override
  String get units_metric => 'Metrikas (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (mārciņas, collas, fl oz)';

  @override
  String get home_unable_load => 'Nevar ielādēt informācijas paneli';

  @override
  String get home_health_permission_req =>
      'Nepieciešama Health Connect atļauja';

  @override
  String get home_health_permission_desc =>
      'Bloom ir nepieciešama Health Connect atļauja, lai veiktu reālus soļus, pulsu un sinhronizētu mobilās mājas logrīkus reāllaikā.';

  @override
  String get home_allow_health => 'Atļaut Health Connect';

  @override
  String get home_ready_mindful_day => 'Vai esat gatavs prātīgai dienai? ✨';

  @override
  String get home_quick_add => 'Ātrā pievienošana';

  @override
  String get home_live_gps => 'Tiešraides GPS';

  @override
  String get home_calories_remaining_label => 'ATLIKUŠĀS KALORIJAS';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ēsts: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Pieskarieties ūdens izsekotājam 💧';

  @override
  String get home_water_goal_reached => 'Dienas mērķis sasniegts 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml līdz dienas mērķim';
  }

  @override
  String get home_details => 'Sīkāka informācija';

  @override
  String get home_upgrade_plan_desc =>
      'Jauniniet, lai atbloķētu personalizētus ikdienas mērķus un AI plānu';

  @override
  String get home_unlock => 'Atbloķēt 👑';

  @override
  String get home_quick_log_hint => 'Ātri ierakstiet labsajūtas ierakstu';

  @override
  String get food_serving_size => 'Porcijas lielums';

  @override
  String get food_serving_grams => 'Pasniegšana (g)';

  @override
  String get food_number_servings => 'Porciju skaits';

  @override
  String get food_calories_per_serving => 'Kalorijas uz porciju';

  @override
  String get food_recipe_ingredients => 'Sastāvdaļas';

  @override
  String get food_recipe_add_ingredient => 'Pievienojiet sastāvdaļu';

  @override
  String get food_recipe_directions => 'Instrukcijas un piezīmes';

  @override
  String get food_recipe_total => 'Kopējais receptes uzturs';

  @override
  String get food_recipe_per_serving => 'Uzturs uz porciju';

  @override
  String get food_recipe_saved_toast => 'Pielāgots ēdiens veiksmīgi saglabāts!';

  @override
  String get food_barcode_found => 'Produkts atrasts!';

  @override
  String get food_barcode_not_found_desc =>
      'Mēs nevarējām atrast šo svītrkodu atvērtajā datu bāzē. Varat to pievienot kā pielāgotu ēdienu.';

  @override
  String get food_add_custom_btn => 'Pievienojiet pielāgotu ēdienu';

  @override
  String get food_scan_again => 'Skenēt vēlreiz';

  @override
  String get food_review_items => 'Pārskatiet atklātos pārtikas produktus';

  @override
  String get food_review_hint =>
      'Pielāgojiet daudzumus vai noņemiet neatpazītu vienumu';

  @override
  String get food_log_selected => 'Log Selected Foods';

  @override
  String get food_favourites_title => 'Mīļākie ēdieni';

  @override
  String get food_recent_title => 'Jaunākie ēdieni';

  @override
  String get food_no_favourites =>
      'Vēl nav iecienītāko ēdienu. Pieskarieties jebkuram ēdienam, lai saglabātu šeit.';

  @override
  String get food_no_recents =>
      'Netika atrasts neviens nesen reģistrēts ēdiens.';

  @override
  String get food_nutrition_details_title =>
      'Sīkāka informācija par ikdienas uzturu';

  @override
  String get food_macro_protein_label => 'Olbaltumvielu sadalīšanās';

  @override
  String get food_macro_carbs_label => 'Ogļhidrātu sadalījums';

  @override
  String get food_macro_fat_label => 'Tauku sadalīšana';

  @override
  String get food_macro_fiber_label => 'Šķiedru sadalījums';

  @override
  String get food_daily_target_comparison => 'Mērķa salīdzinājums';

  @override
  String food_target_label(Object target) {
    return 'Mērķis: $target';
  }

  @override
  String get food_edit_entry => 'Rediģēt dienasgrāmatas ierakstu';

  @override
  String get food_delete_entry => 'Dzēst ierakstu';

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
    return '$current no $target ml';
  }

  @override
  String get water_intake_history => 'Šodienas ūdens žurnāli';

  @override
  String get water_no_logs_today =>
      'Šodien vēl nav reģistrēts ūdens. Mitriniet un pieskarieties ātrās pievienošanas pogai!';

  @override
  String get water_adjust_goal => 'Pielāgojiet ikdienas mērķi';

  @override
  String get health_connect_banner => 'Savienots ar Health Connect';

  @override
  String get health_vitals_summary => 'Ikdienas veselības svari';

  @override
  String get health_latest_heart_rate => 'Jaunākais sirdsdarbības ātrums';

  @override
  String get health_latest_bp => 'Asinsspiediens';

  @override
  String get health_latest_spo2 => 'Asins skābeklis';

  @override
  String get health_latest_glucose => 'Glikoze asinīs';

  @override
  String get health_latest_weight => 'Svars';

  @override
  String get health_latest_sleep => 'Miega ilgums';

  @override
  String get health_add_manual => 'Pievienojiet manuālo mērījumu';

  @override
  String get health_history_trends => 'Vēsturiskās tendences';

  @override
  String get health_sync_success => 'Veselības dati ir veiksmīgi sinhronizēti!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours stundas $mins min';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm sitieni minūtē';
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
  String get health_devices_title => 'Savienotās ierīces un valkājamas ierīces';

  @override
  String get health_devices_desc =>
      'Pārvaldiet pārī savienotus viedpulksteņus, fitnesa izsekotājus un veselības sensorus.';

  @override
  String get health_workout_editor_title => 'Rediģēt treniņu';

  @override
  String get health_workout_name_label => 'Treniņa nosaukums';

  @override
  String get health_workout_duration_label => 'Ilgums (minūtes)';

  @override
  String get health_workout_calories_label => 'Aprēķinātās kalorijas (kcal)';

  @override
  String get health_workout_date_label => 'Datums un laiks';

  @override
  String get plan_daily_wellness_roadmap => 'Jūsu personalizētais ceļvedis';

  @override
  String get plan_morning_routine => 'Rīta rutīna';

  @override
  String get plan_afternoon_routine => 'Pusdienas labsajūta';

  @override
  String get plan_evening_routine => 'Vakara izslēgšana';

  @override
  String get plan_coach_badge => 'Blūmi AI treneris';

  @override
  String get plan_weekly_overview => '7 dienu labsajūtas fokuss';

  @override
  String get plan_targets_title => 'Labsajūtas mērķi un mērķi';

  @override
  String get plan_calorie_budget_label => 'Dienas kaloriju budžets';

  @override
  String get plan_water_budget_label => 'Ikdienas ūdens mērķis';

  @override
  String get plan_step_budget_label => 'Ikdienas soļa mērķis';

  @override
  String get plan_macro_split_label => 'Makroelementu attiecība';

  @override
  String get profile_personal_details => 'Personiskā informācija';

  @override
  String get profile_body_stats => 'Ķermeņa mērījumi';

  @override
  String get profile_app_preferences => 'Preferences un lietotņu iestatījumi';

  @override
  String get profile_edit_name_hint => 'Jūsu vārds';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Augstums ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Svars ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Vecums';

  @override
  String get profile_gender_male => 'Vīrietis';

  @override
  String get profile_gender_female => 'Sieviete';

  @override
  String get profile_gender_other => 'Cits / Nevēlos teikt';

  @override
  String get profile_activity_sedentary =>
      'Mazkustīgs (maz vai bez fiziskas slodzes)';

  @override
  String get profile_activity_light => 'Viegli aktīvs (1-3 dienas nedēļā)';

  @override
  String get profile_activity_moderate => 'Vidēji aktīvs (3-5 dienas nedēļā)';

  @override
  String get profile_activity_very => 'Ļoti aktīvs (6-7 dienas nedēļā)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion lietotne';

  @override
  String get settings_wear_os_desc =>
      'Uzstādiet Boomi elementu un sarežģījumus savā Wear OS pulkstenī, lai apskatītu kalorijas, ūdeni un soļus.';

  @override
  String get settings_widgets_header => 'Interaktīvie Android logrīki';

  @override
  String get settings_widgets_desc =>
      'Piespraudiet reāllaika logrīkus ierīces sākuma ekrānā, lai saņemtu tūlītējus atjauninājumus.';

  @override
  String get settings_about_header => 'Par Blūmi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Būvēt 100';

  @override
  String get settings_about_credits =>
      'Izstrādāts, rūpējoties par apdomīgu un veselīgu dzīvesveidu.';

  @override
  String get settings_terms_header => 'Noteikumi un nosacījumi';

  @override
  String get settings_privacy_header => 'Privātuma politika';

  @override
  String get settings_delete_header => 'Dzēst kontu un datus';

  @override
  String get settings_delete_warning =>
      'Šo darbību nevar atsaukt. Visas jūsu ēdienreizes, treniņi, svarīgākie dati un profils tiks neatgriezeniski dzēsti.';

  @override
  String get settings_delete_confirm_btn => 'Neatgriezeniski dzēst';

  @override
  String get onboard_welcome_headline => 'Laipni lūdzam Blūmā ✨';

  @override
  String get onboard_welcome_tagline =>
      'Maiga, uzmanīga labsajūtas izsekošana, kas izstrādāta jūsu dzīvei.';

  @override
  String get onboard_step_about => 'Par Tevi';

  @override
  String get onboard_step_goals => 'Jūsu mērķi';

  @override
  String get onboard_step_lifestyle => 'Ikdienas ieradumi';

  @override
  String get onboard_step_permissions => 'Atļaujas';

  @override
  String get onboard_step_plan => 'Gatavs!';

  @override
  String get onboard_health_connect_perm => 'Health Connect piekļuve';

  @override
  String get onboard_step_sensors_perm => 'Soļu skaitītāja sensors';

  @override
  String get onboard_notif_perm => 'Uzmanīgi atgādinājumi un paziņojumi';

  @override
  String get onboard_camera_perm => 'Kamera (svītrkoda un pārtikas skeneris)';

  @override
  String get onboard_grant_permissions => 'Piešķirt atļaujas';

  @override
  String get onboard_continue_dashboard => 'Atveriet informācijas paneli';

  @override
  String get notif_channel_hydration_name => 'Hidratācijas stimuli';

  @override
  String get notif_channel_hydration_desc =>
      'Maigi ūdens atgādinājumi visas dienas garumā';

  @override
  String get notif_channel_nutrition_name => 'Ēdienu un uztura atgādinājumi';

  @override
  String get notif_channel_nutrition_desc =>
      'Brokastu, pusdienu un vakariņu atgādinājuma brīdinājumi';

  @override
  String get notif_channel_steps_name => 'Soli Pagrieziena punkti';

  @override
  String get notif_channel_steps_desc =>
      'Svinības, sasniedzot ikdienas soļu mērķus';

  @override
  String get notif_channel_vitals_name => 'Veselības un Vitals pārbaudes';

  @override
  String get notif_channel_vitals_desc => 'Svara un gulētiešanas atgādinājumi';

  @override
  String get notif_action_log_water => '💧 Baļķis +250ml';

  @override
  String get notif_action_snooze => 'Atlikt 15m';

  @override
  String get notif_action_log_meal => '🥗 Bluķa maltīte';

  @override
  String get language => 'Valoda';

  @override
  String get share => 'Dalīties';

  @override
  String common_days(Object count) {
    return 'Pirms $count d';
  }
}
