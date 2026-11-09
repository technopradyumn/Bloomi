// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get app_name => 'Bloom';

  @override
  String get nav_home => 'Pradžia';

  @override
  String get nav_today => 'Šiandien';

  @override
  String get nav_plan => 'Planuoti';

  @override
  String get nav_food => 'Maistas';

  @override
  String get nav_food_diary => 'Maisto dienoraštis';

  @override
  String get nav_workout => 'Treniruočių žurnalas';

  @override
  String get nav_health => 'Sveikata';

  @override
  String get nav_profile => 'Profilis';

  @override
  String get save => 'Išsaugoti';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get delete => 'Ištrinti';

  @override
  String get edit => 'Redaguoti';

  @override
  String get done => 'Atlikta';

  @override
  String get close => 'Uždaryti';

  @override
  String get back => 'Atgal';

  @override
  String get next => 'Kitas';

  @override
  String get continue_btn => 'Tęsti';

  @override
  String get confirm => 'Patvirtinti';

  @override
  String get search => 'Ieškoti';

  @override
  String get filter => 'Filtruoti';

  @override
  String get all => 'Visi';

  @override
  String get active => 'Aktyvus';

  @override
  String get today => 'Šiandien';

  @override
  String get yesterday => 'vakar';

  @override
  String get tomorrow => 'Rytoj';

  @override
  String get add => 'Pridėti';

  @override
  String get remove => 'Pašalinti';

  @override
  String get refresh => 'Atnaujinti';

  @override
  String get retry => 'Bandykite dar kartą';

  @override
  String get error => 'Klaida';

  @override
  String get success => 'Sėkmės';

  @override
  String get loading => 'Įkeliama...';

  @override
  String get no_data => 'Nėra duomenų';

  @override
  String get offline => 'Režimas neprisijungus';

  @override
  String get offline_sub =>
      'Pakeitimai bus sinchronizuojami, kai vėl prisijungsite';

  @override
  String get undo => 'Anuliuoti';

  @override
  String get portion => 'Porcija';

  @override
  String get quantity => 'Kiekis';

  @override
  String get unit => 'Vienetas';

  @override
  String get clear => 'Aišku';

  @override
  String get select => 'Pasirinkite';

  @override
  String get apply => 'Taikyti';

  @override
  String get reset => 'Nustatyti iš naujo';

  @override
  String get ok => 'Gerai';

  @override
  String get yes => 'Taip';

  @override
  String get no => 'Nr';

  @override
  String get optional => 'Neprivaloma';

  @override
  String get calories => 'Kalorijos';

  @override
  String get protein => 'Baltymai';

  @override
  String get carbs => 'Angliavandeniai';

  @override
  String get fat => 'Riebalai';

  @override
  String get fiber => 'Pluoštas';

  @override
  String get water => 'Vanduo';

  @override
  String get steps => 'Žingsniai';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'svarų';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'val';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Serviravimas';

  @override
  String get servings => 'Porcijos';

  @override
  String get serving_size => 'Porcijos dydis';

  @override
  String get per_100g => 'už 100 g';

  @override
  String get india => 'Indija';

  @override
  String get asia => 'Azija';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Artimieji Rytai';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Pradžia';

  @override
  String get home_greeting_morning => 'Labas rytas';

  @override
  String get home_greeting_afternoon => 'Laba diena';

  @override
  String get home_greeting_evening => 'Labas vakaras';

  @override
  String get home_streak_title => 'Žiedų ruožas';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienų serija',
      one: '1 dienos serija',
      zero: '0 dienų serija',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Sudegė';

  @override
  String get home_calories_budget => 'Kalorijų biudžetas';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Liko $kcal kcal';
  }

  @override
  String get home_water_title => 'Kasdienis drėkinimas';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Žingsniai ėjo';

  @override
  String get home_quick_actions => 'Greiti veiksmai';

  @override
  String get home_log_meal => 'Rąsto valgis';

  @override
  String get home_log_water => 'Log Vanduo';

  @override
  String get home_log_workout => 'Log treniruotė';

  @override
  String get home_log_weight => 'Rąsto svoris';

  @override
  String get home_insights_title => 'Šiandienos įžvalgos';

  @override
  String get home_quote =>
      'Maži sveiki pasirinkimai sukuria žydinčias transformacijas.';

  @override
  String get home_ai_coach_tip => 'Bloom AI treneris';

  @override
  String get home_surroundings => 'Aplinka ir oras';

  @override
  String get home_notifications => 'Pranešimai';

  @override
  String get home_daily_score => 'Dienos sveikatingumo balas';

  @override
  String get home_view_all => 'Žiūrėti viską';

  @override
  String get food_diary_title => 'Maisto dienoraštis';

  @override
  String get food_breakfast => 'Pusryčiai';

  @override
  String get food_lunch => 'Pietūs';

  @override
  String get food_dinner => 'Vakarienė';

  @override
  String get food_snacks => 'Užkandžiai';

  @override
  String get food_add_food => 'Pridėti Maisto';

  @override
  String get food_edit_food => 'Redaguoti maistą';

  @override
  String get food_add_breakfast => 'Pridėti pusryčius';

  @override
  String get food_add_lunch => 'Pridėti pietus';

  @override
  String get food_add_dinner => 'Pridėti vakarienę';

  @override
  String get food_add_snack => 'Pridėti užkandį';

  @override
  String get food_total_calories => 'Bendras kalorijų kiekis';

  @override
  String get food_empty_meal =>
      'Šiam patiekalui dar nėra užregistruotų maisto produktų';

  @override
  String get food_empty_diary => 'Šiai dienai valgymų neužregistruota';

  @override
  String get food_log_first_meal =>
      'Bakstelėkite +, kad užregistruotumėte pirmąjį skanų patiekalą';

  @override
  String get food_quick_add => 'Greitas pridėjimas';

  @override
  String get food_search_hint => 'Ieškokite patiekalų, vaisių, dal, roti...';

  @override
  String get food_custom_recipe => 'Individualus maistas ir receptas';

  @override
  String get food_scan_barcode => 'Nuskaityti brūkšninį kodą';

  @override
  String get food_camera_scan => 'AI maisto skaitytuvas';

  @override
  String get food_recent => 'Naujausi maisto produktai';

  @override
  String get food_favourites => 'Mėgstamiausi';

  @override
  String get food_macro_summary => 'Makroelementų suskirstymas';

  @override
  String get food_delete_meal_confirm =>
      'Ar tikrai norite pašalinti šį elementą?';

  @override
  String get food_item_deleted => 'Pašalintas maisto produktas';

  @override
  String get food_remaining => 'likę';

  @override
  String get food_consumed => 'suvartojama';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'Ieškoti maisto produktų';

  @override
  String get foodSearch_scan_barcode => 'Nuskaityti brūkšninį kodą';

  @override
  String get foodSearch_take_photo => '„Snap Food“ nuotr';

  @override
  String get foodSearch_custom_food => 'Sukurkite individualų maistą';

  @override
  String get foodSearch_recent_searches => 'Naujausios paieškos';

  @override
  String get foodSearch_popular => 'Populiarūs patiekalai';

  @override
  String get foodSearch_no_results =>
      'Nėra jūsų paiešką atitinkančių maisto produktų';

  @override
  String get barcode_title => 'Brūkšninių kodų skaitytuvas';

  @override
  String get barcode_align => 'Sulygiuokite brūkšninį kodą kameros rėmelyje';

  @override
  String get barcode_not_found => 'Prekė nerasta duomenų bazėje';

  @override
  String get barcode_premium_feature =>
      'Brūkšninių kodų nuskaitymas galimas naudojant „Bloomi Pro“.';

  @override
  String get camera_title => 'AI maisto skaitytuvas';

  @override
  String get camera_tap_hint => 'Aiškiai nufotografuokite savo patiekalą';

  @override
  String get camera_analysing => 'Analizuojama maisto lėkštė...';

  @override
  String get camera_detected => 'Aptikti daiktai';

  @override
  String get camera_flash => 'Perjungti blykstę';

  @override
  String get camera_retake => 'Pakartoti nuotrauką';

  @override
  String get camera_confirm_food => 'Patvirtinti elementus';

  @override
  String get customFood_title => 'Individualus maistas ir receptas';

  @override
  String get customFood_name_hint => 'Patiekalo arba ingrediento pavadinimas';

  @override
  String get customFood_calories_hint => 'Kalorijos (kcal)';

  @override
  String get customFood_protein_hint => 'Baltymai (g)';

  @override
  String get customFood_carbs_hint => 'angliavandeniai (g)';

  @override
  String get customFood_fat_hint => 'riebalai (g)';

  @override
  String get customFood_save => 'Išsaugoti receptą';

  @override
  String get water_tracker_title => 'Vandens stebėjimo priemonė';

  @override
  String get water_daily_target => 'Kasdienis hidratacijos tikslas';

  @override
  String get water_logged_today => 'Prisiregistravo šiandien';

  @override
  String get water_add_glass => '+250 ml Stiklas';

  @override
  String get water_add_bottle => '+500 ml buteliukas';

  @override
  String get water_custom_amount => 'Tinkinta suma';

  @override
  String get water_reminder_tip =>
      'Reguliariai gerkite vandenį visą dieną, kad gautumėte nuolatinę energiją.';

  @override
  String water_logged_toast(Object amount) {
    return 'Užregistruota $amount ml vandens 💧';
  }

  @override
  String get workout_title => 'Treniruočių žurnalas';

  @override
  String get workout_add_exercise => 'Pridėti treniruotę';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Jėga';

  @override
  String get workout_yoga => 'Joga ir lankstumas';

  @override
  String get workout_duration => 'Trukmė';

  @override
  String get workout_intensity => 'Intensyvumas';

  @override
  String get workout_calories_burned => 'Sudegintos kalorijos';

  @override
  String get workout_empty => 'Šiandien neužregistruota jokių treniruočių';

  @override
  String get workout_save_success => 'Treniruotė sėkmingai išsaugota!';

  @override
  String get workout_type => 'Treniruotės tipas';

  @override
  String get workout_notes => 'Pastabos ir atspindžiai';

  @override
  String get health_overview_title => 'Sveikata ir gyvybiškai svarbūs dalykai';

  @override
  String get health_heart_rate => 'Širdies ritmas';

  @override
  String get health_blood_oxygen => 'Kraujo deguonis (SpO2)';

  @override
  String get health_blood_pressure => 'Kraujo spaudimas';

  @override
  String get health_blood_glucose => 'Gliukozės kiekis kraujyje';

  @override
  String get health_body_temperature => 'Kūno temperatūra';

  @override
  String get health_sleep_tracking => 'Miego sekimas';

  @override
  String get health_weight_tracking => 'Svoris ir kūno sudėtis';

  @override
  String get health_waist_hip => 'Liemens ir klubų santykis';

  @override
  String get health_devices_hub => 'Įrenginiai ir išmaniųjų laikrodžių centras';

  @override
  String get health_sync_now => 'Sinchronizuoti sveikatos duomenis';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Paskutinį kartą sinchronizuota: $time';
  }

  @override
  String get health_manual_entry => 'Rankinis sveikatos įvedimas';

  @override
  String get health_metric_detail => 'Metrikos detalės';

  @override
  String get health_connected_sensors => 'Prijungti sveikatos jutikliai';

  @override
  String get plan_title => 'Dienos planas';

  @override
  String get plan_weekly_title => 'Savaitės sveikatingumo planas';

  @override
  String get plan_calorie_target => 'Kalorijų tikslas';

  @override
  String get plan_water_target => 'Hidratacijos tikslas';

  @override
  String get plan_step_target => 'Žingsnis Tikslas';

  @override
  String get plan_sleep_target => 'Miego tikslas';

  @override
  String get plan_meal_suggestions => 'Maitinimo pasiūlymai';

  @override
  String get plan_healthy_habits => 'Sveiki įpročiai ir patarimai';

  @override
  String get plan_coach_advice => '„Bloomi AI Coach“ rekomendacijos';

  @override
  String get plan_generated_title => 'Asmeninis dienos grafikas';

  @override
  String get profile_title => 'Profilis';

  @override
  String get profile_edit => 'Redaguoti profilį';

  @override
  String get profile_name => 'Vardas';

  @override
  String get profile_age => 'Amžius';

  @override
  String get profile_gender => 'Lytis';

  @override
  String get profile_height => 'Aukštis';

  @override
  String get profile_weight => 'Svoris';

  @override
  String get profile_goal => 'Pagrindinis tikslas';

  @override
  String get profile_activity_level => 'Veiklos lygis';

  @override
  String get profile_stats => 'Mano sveikatingumo statistika';

  @override
  String get profile_saved => 'Profilis sėkmingai atnaujintas';

  @override
  String get profile_bmi => 'Kūno masės indeksas (KMI)';

  @override
  String get profile_membership => 'Narystė';

  @override
  String get settings => 'Nustatymai';

  @override
  String get preferences_habits => 'NUORODOS IR ĮPROČIAI';

  @override
  String get appearance_theme => 'Išvaizda ir tema';

  @override
  String get appearance_theme_sub =>
      'Tamsios, šviesios, sistemos režimo ir programos fono parinktys';

  @override
  String get permissions => 'Leidimai ir prieiga prie sistemos';

  @override
  String get permissions_sub =>
      '„Health Connect“, žingsnių jutikliai, GPS, pranešimai ir fotoaparatas';

  @override
  String get reminders_notifications => 'Priminimai ir pranešimai';

  @override
  String get reminders_sub =>
      'Valgymo laikas, vanduo, svorio registracija ir priminimai apie miegą';

  @override
  String get units_of_measurement => 'Matavimo vienetai';

  @override
  String get units_sub =>
      'Metrinė (kg, cm, ml, km) arba imperinė (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Programos kalba';

  @override
  String get language_sub =>
      'Anglų, हिन्दी (hindi), hingų ir 195 ir daugiau pasaulinių kalbų';

  @override
  String get home_screen_widgets => 'Pagrindinio ekrano valdikliai';

  @override
  String get widgets_sub =>
      'Tiesioginiai „Android“ valdikliai: centras, žingsniai, vanduo, mityba ir talismanas';

  @override
  String get wear_os_watch_app => '„Wear OS Watch“ programa';

  @override
  String get wear_os_sub =>
      'Išmaniojo laikrodžio kompanionas, plytelės, komplikacijos ir gyvybiškai svarbūs dalykai';

  @override
  String get goals_wellness => 'TIKSLAI IR SVEIKATOS ĮŽVALGOS';

  @override
  String get nutrition_targets => 'Mitybos tikslai ir makro padalijimas';

  @override
  String get nutrition_targets_sub =>
      'Tikslas kalorijų kiekis, baltymų, angliavandenių, riebalų ir vandens tikslas';

  @override
  String get weekly_recap => 'Savaitės sveikatingumo apžvalga';

  @override
  String get weekly_recap_sub =>
      '7 dienų kalorijų vidurkis, makro santykis ir geriausia diena';

  @override
  String get streaks_milestones => 'Juostos ir etapai';

  @override
  String get streaks_sub => 'Aktyvūs žiedų ruožai, ženkleliai ir pasiekimai';

  @override
  String get connected_devices => 'PRIJUNGTI PRIETAISAI IR EKOSISTEMA';

  @override
  String get devices_hub => 'Įrenginiai ir išmaniųjų laikrodžių centras';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Apylinkės ir orai';

  @override
  String get surroundings_sub =>
      'Oro kokybės (AQI), UV indekso ir oro drėkinimo patarimai';

  @override
  String get bloomi_pro => '„Bloomi Pro“ prenumerata';

  @override
  String get bloomi_pro_sub =>
      'AI plano treneris, 5 pagrindinio ekrano valdikliai ir gyvybinių funkcijų stebėjimas';

  @override
  String get about_security => 'APIE IR SAUGUMAS';

  @override
  String get about_bloomi => 'Apie Bloomą';

  @override
  String get about_bloomi_sub =>
      'Sukūrimo specifikacijos, versija, priskyrimai';

  @override
  String get privacy_policy => 'Privatumo politika';

  @override
  String get privacy_policy_sub =>
      'Pirmiausia neprisijungus, įrenginio duomenų architektūra';

  @override
  String get terms_conditions => 'Taisyklės ir sąlygos';

  @override
  String get terms_conditions_sub =>
      'Paslaugų teikimo sąlygos ir sveikatingumo gairės';

  @override
  String get delete_account => 'Ištrinkite paskyrą ir duomenis';

  @override
  String get delete_account_sub =>
      'Negrįžtamai ištrinkite vietinius SQLite duomenis ir debesies atsargines kopijas';

  @override
  String get healthy_habits =>
      'Sukurkite švelnius, ilgalaikius sveikatingumo įpročius';

  @override
  String get all_logs => 'Mano sekami duomenys ir žurnalai';

  @override
  String get search_language => 'Ieškoti pagal kalbą arba gimtąjį raštą...';

  @override
  String get languages_available => 'Galimos kalbos';

  @override
  String get no_matching_languages => 'Atitinkančių kalbų nerasta';

  @override
  String get try_searching =>
      'Pabandykite ieškoti pagal gimtąją arba anglų kalbos rašybą';

  @override
  String get partially_translated => 'Iš dalies išversta';

  @override
  String get complete_translation => 'Užbaigti';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Kalba nustatyta į $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Aplinka ir aplinka';

  @override
  String get surroundings_aqi => 'Oro kokybės indeksas';

  @override
  String get surroundings_uv => 'UV indeksas';

  @override
  String get surroundings_temp => 'Temperatūra';

  @override
  String get surroundings_humidity => 'Drėgmė';

  @override
  String get surroundings_hydration_advice =>
      'Išlikite gerai hidratuoti esamomis oro sąlygomis.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Ieškoti maisto';

  @override
  String get food_quick_barcode => 'Nuskaityti brūkšninį kodą 👑';

  @override
  String get food_quick_water => 'Įpilkite vandens';

  @override
  String get food_quick_custom => 'Individualus maistas';

  @override
  String get surroundings_good => 'Gerai';

  @override
  String get surroundings_moderate => 'Vidutinis';

  @override
  String get surroundings_unhealthy => 'Nesveika';

  @override
  String get notifications_title => 'Pranešimai ir įspėjimai';

  @override
  String get notifications_empty => 'Nėra naujų pranešimų';

  @override
  String get notifications_mark_read => 'Pažymėti viską kaip perskaitytą';

  @override
  String get notifications_clear => 'Išvalyti viską';

  @override
  String get reminders => 'Priminimo nustatymai';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Pusryčių priminimas 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Labas rytas! Laikas sočių pusryčių $time.';
  }

  @override
  String get reminders_lunch_title => 'Pietų priminimas 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Sustabdykite ir mėgaukitės subalansuotais, apgalvotais pietumis $time.';
  }

  @override
  String get reminders_dinner_title => 'Vakarienės priminimas 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Laikas lengvai ir sočiai vakarienei $time.';
  }

  @override
  String get reminders_water_title => 'Drėkinamoji priemonė 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Laikas išgerti stiklinę šviežio vandens! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Savaitinis svėrimas ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Stebėkite savo savaitės kūno metriką „Bloom“ ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Poilsis prieš miegą 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Atsipalaiduokite ir pasiruoškite ramiam miegui ( $time ).';
  }

  @override
  String get onboard_welcome => 'Sveiki atvykę į Bloomą';

  @override
  String get onboard_sub =>
      'Jūsų draugiškas, neprisijungęs sveikatos ir mitybos draugas.';

  @override
  String get onboard_get_started => 'Pradėkite';

  @override
  String get onboard_sign_in => 'Prisijunkite';

  @override
  String get onboard_skip => 'Praleisti';

  @override
  String get onboard_choose_goal =>
      'Koks jūsų pagrindinis sveikatingumo tikslas?';

  @override
  String get onboard_goal_weight_loss => 'Švelnus svorio metimas';

  @override
  String get onboard_goal_muscle => 'Raumenų padidėjimas ir stiprumas';

  @override
  String get onboard_goal_energy => 'Kasdieninė energija ir gyvybingumas';

  @override
  String get onboard_goal_habits => 'Sveika sąmoninga mityba';

  @override
  String get onboard_about_you => 'Papasakokite apie save';

  @override
  String get onboard_lifestyle => 'Jūsų kasdienė rutina';

  @override
  String get onboard_permissions_title => 'Leidimai ir prieiga prie sistemos';

  @override
  String get onboard_permissions_sub =>
      'Suteikite prieigą prie sinchronizavimo veiksmų, treniruočių ir priminimų.';

  @override
  String get onboard_plan_ready_title => 'Jūsų tinkintas planas paruoštas!';

  @override
  String get onboard_plan_ready_sub =>
      'Sukūrėme švelnų, individualizuotą mitybos ir sveikatingumo planą kaip tik jums.';

  @override
  String get onboard_enter_bloomi => 'Įeikite Bloom';

  @override
  String get insights_weekly_report => 'Savaitės sveikatingumo apžvalga';

  @override
  String insights_best_day(Object day) {
    return 'Geriausios nuoseklumo diena: $day';
  }

  @override
  String get insights_streaks_badges => 'Juostos ir etapai';

  @override
  String insights_unlocked_on(Object date) {
    return 'Atrakinta $date';
  }

  @override
  String get insights_keep_going => 'Tęskite fantastišką pažangą!';

  @override
  String get widgets_title => 'Pagrindinio ekrano valdikliai';

  @override
  String widgets_active_count(Object count) {
    return 'Aktyvūs valdikliai: $count';
  }

  @override
  String get widgets_hub_title => '„Bloomi“ sveikatingumo centras';

  @override
  String get widgets_steps_title => 'Žingsniai ir aktyvus žiedas';

  @override
  String get widgets_water_title => 'Hidratacijos greitas žurnalas';

  @override
  String get widgets_mascot_title => 'Bloomo talismano kompanionas';

  @override
  String get wear_os_title => '„Wear OS“ išmanusis laikrodis';

  @override
  String get wear_os_connected => 'Prijungtas prie laikrodžio';

  @override
  String get wear_os_sync => 'Sinchronizuoti laikrodžio duomenis';

  @override
  String get theme_title => 'Išvaizda ir tema';

  @override
  String get theme_mode => 'Temos režimas';

  @override
  String get theme_light => 'Šviesa';

  @override
  String get theme_dark => 'Tamsus';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Fono paletė';

  @override
  String get units_title => 'Matavimo vienetai';

  @override
  String get units_metric => 'Metrika (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperatoriškasis (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nepavyko įkelti prietaisų skydelio';

  @override
  String get home_health_permission_req =>
      'Reikalingas „Health Connect“ leidimas';

  @override
  String get home_health_permission_desc =>
      '„Bloom“ reikalingas „Health Connect“ leidimas, kad būtų galima nustatyti tikrus žingsnius, širdies ritmą ir sinchronizuoti mobiliojo namo valdiklius realiuoju laiku.';

  @override
  String get home_allow_health => 'Leisti „Health Connect“.';

  @override
  String get home_ready_mindful_day => 'Pasiruošę dėmesingai dienai? ✨';

  @override
  String get home_quick_add => 'Greitas pridėjimas';

  @override
  String get home_live_gps => 'Tiesioginis GPS';

  @override
  String get home_calories_remaining_label => 'LIKO KALORIJOS';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Suvalgyta: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Vandens stebėjimo čiaupas 💧';

  @override
  String get home_water_goal_reached => 'Dienos tikslas pasiektas 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml iki dienos tikslo';
  }

  @override
  String get home_details => 'Detalės';

  @override
  String get home_upgrade_plan_desc =>
      'Atnaujinkite, kad atrakintumėte suasmenintus kasdienius tikslus ir AI planą';

  @override
  String get home_unlock => 'Atrakinti 👑';

  @override
  String get home_quick_log_hint => 'Greitai įrašykite sveikatingumo įrašą';

  @override
  String get food_serving_size => 'Porcijos dydis';

  @override
  String get food_serving_grams => 'Patiekimas (g)';

  @override
  String get food_number_servings => 'Porcijų skaičius';

  @override
  String get food_calories_per_serving => 'Kalorijų vienai porcijai';

  @override
  String get food_recipe_ingredients => 'Ingredientai';

  @override
  String get food_recipe_add_ingredient => 'Pridėti ingredientą';

  @override
  String get food_recipe_directions => 'Instrukcijos ir pastabos';

  @override
  String get food_recipe_total => 'Viso recepto mityba';

  @override
  String get food_recipe_per_serving => 'Mityba porcijai';

  @override
  String get food_recipe_saved_toast =>
      'Pagal užsakymą maistas sėkmingai išsaugotas!';

  @override
  String get food_barcode_found => 'Produktas rastas!';

  @override
  String get food_barcode_not_found_desc =>
      'Negalėjome rasti šio brūkšninio kodo atviroje duomenų bazėje. Galite pridėti jį kaip individualų maistą.';

  @override
  String get food_add_custom_btn => 'Pridėti individualų maistą';

  @override
  String get food_scan_again => 'Nuskaityti dar kartą';

  @override
  String get food_review_items => 'Peržiūrėkite aptiktus maisto produktus';

  @override
  String get food_review_hint =>
      'Koreguokite kiekius arba pašalinkite neatpažintą prekę';

  @override
  String get food_log_selected =>
      'Prisijunkite prie pasirinktų maisto produktų';

  @override
  String get food_favourites_title => 'Mėgstamiausias maistas';

  @override
  String get food_recent_title => 'Naujausi maisto produktai';

  @override
  String get food_no_favourites =>
      'Mėgstamiausių maisto produktų dar nėra. Bakstelėkite bet kokį maistą, kad sutaupytumėte čia.';

  @override
  String get food_no_recents => 'Nerasta neseniai įrašytų maisto produktų.';

  @override
  String get food_nutrition_details_title =>
      'Išsami informacija apie kasdienę mitybą';

  @override
  String get food_macro_protein_label => 'Baltymų skaidymas';

  @override
  String get food_macro_carbs_label => 'Angliavandenių suskirstymas';

  @override
  String get food_macro_fat_label => 'Riebalų skaidymas';

  @override
  String get food_macro_fiber_label => 'Pluošto skaidymas';

  @override
  String get food_daily_target_comparison => 'Tikslų palyginimas';

  @override
  String food_target_label(Object target) {
    return 'Tikslas: $target';
  }

  @override
  String get food_edit_entry => 'Redaguoti dienoraščio įrašą';

  @override
  String get food_delete_entry => 'Ištrinti įrašą';

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
    return '$current iš $target ml';
  }

  @override
  String get water_intake_history => 'Šiandienos vandens žurnalai';

  @override
  String get water_no_logs_today =>
      'Šiandien dar nėra vandens. Drėkinkite ir bakstelėkite greito pridėjimo mygtuką!';

  @override
  String get water_adjust_goal => 'Koreguokite dienos tikslą';

  @override
  String get health_connect_banner => 'Prisijungta prie „Health Connect“.';

  @override
  String get health_vitals_summary => 'Kasdieniai sveikatos rodikliai';

  @override
  String get health_latest_heart_rate => 'Naujausias širdies ritmas';

  @override
  String get health_latest_bp => 'Kraujo spaudimas';

  @override
  String get health_latest_spo2 => 'Kraujo deguonis';

  @override
  String get health_latest_glucose => 'Gliukozės kiekis kraujyje';

  @override
  String get health_latest_weight => 'Svoris';

  @override
  String get health_latest_sleep => 'Miego trukmė';

  @override
  String get health_add_manual => 'Pridėti rankinį matavimą';

  @override
  String get health_history_trends => 'Istorinės tendencijos';

  @override
  String get health_sync_success =>
      'Sveikatos duomenys sėkmingai sinchronizuoti!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours val. $mins min';
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
  String get health_devices_title =>
      'Prijungti įrenginiai ir nešiojami įrenginiai';

  @override
  String get health_devices_desc =>
      'Tvarkykite suporuotus išmaniuosius laikrodžius, kūno rengybos stebėjimo priemones ir sveikatos jutiklius.';

  @override
  String get health_workout_editor_title => 'Redaguoti treniruotę';

  @override
  String get health_workout_name_label => 'Treniruotės pavadinimas';

  @override
  String get health_workout_duration_label => 'Trukmė (min.)';

  @override
  String get health_workout_calories_label => 'Apskaičiuotos kalorijos (kcal)';

  @override
  String get health_workout_date_label => 'Data ir laikas';

  @override
  String get plan_daily_wellness_roadmap => 'Jūsų asmeninis planas';

  @override
  String get plan_morning_routine => 'Ryto rutina';

  @override
  String get plan_afternoon_routine => 'Vidurdienio sveikatingumas';

  @override
  String get plan_evening_routine => 'Vakaro ramybė';

  @override
  String get plan_coach_badge => 'Bloom AI treneris';

  @override
  String get plan_weekly_overview => '7 dienų sveikatingumo dėmesys';

  @override
  String get plan_targets_title => 'Sveikatos tikslai ir tikslai';

  @override
  String get plan_calorie_budget_label => 'Dienos kalorijų biudžetas';

  @override
  String get plan_water_budget_label => 'Dienos vandens tikslas';

  @override
  String get plan_step_budget_label => 'Dienos žingsnio tikslas';

  @override
  String get plan_macro_split_label => 'Makroelementų santykis';

  @override
  String get profile_personal_details => 'Asmeniniai duomenys';

  @override
  String get profile_body_stats => 'Kūno išmatavimai';

  @override
  String get profile_app_preferences => 'Parinktys ir programos nustatymai';

  @override
  String get profile_edit_name_hint => 'Tavo vardas';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Aukštis ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Svoris ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Amžius';

  @override
  String get profile_gender_male => 'Vyriška';

  @override
  String get profile_gender_female => 'Moteris';

  @override
  String get profile_gender_other => 'Kita / Nenorėčiau pasakyti';

  @override
  String get profile_activity_sedentary =>
      'Sėdimas (mažai arba visai nesportuoja)';

  @override
  String get profile_activity_light =>
      'Lengvai aktyvus (1-3 dienas per savaitę)';

  @override
  String get profile_activity_moderate =>
      'Vidutiniškai aktyvus (3-5 dienas per savaitę)';

  @override
  String get profile_activity_very => 'Labai aktyvus (6-7 dienas per savaitę)';

  @override
  String get settings_wear_os_header => '„Wear OS Companion“ programa';

  @override
  String get settings_wear_os_desc =>
      'Įdiekite „Bloomi“ plytelę ir komplikaciją „Wear OS“ laikrodyje, kad pažvelgtumėte į kalorijas, vandenį ir žingsnius.';

  @override
  String get settings_widgets_header => 'Interaktyvūs Android valdikliai';

  @override
  String get settings_widgets_desc =>
      'Prisekite realaus laiko valdiklius pagrindiniame įrenginio ekrane, kad gautumėte tiesioginius naujinius.';

  @override
  String get settings_about_header => 'Apie Bloomą';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Pastatyti 100';

  @override
  String get settings_about_credits =>
      'Sukurtas rūpestingai sąmoningam, sveikam gyvenimui.';

  @override
  String get settings_terms_header => 'Taisyklės ir sąlygos';

  @override
  String get settings_privacy_header => 'Privatumo politika';

  @override
  String get settings_delete_header => 'Ištrinkite paskyrą ir duomenis';

  @override
  String get settings_delete_warning =>
      'Šio veiksmo anuliuoti negalima. Visi jūsų valgiai, treniruotės, gyvybiškai svarbūs elementai ir profilis bus visam laikui ištrinti.';

  @override
  String get settings_delete_confirm_btn => 'Ištrinti visam laikui';

  @override
  String get onboard_welcome_headline => 'Sveiki atvykę į Bloom ✨';

  @override
  String get onboard_welcome_tagline =>
      'Švelnus, dėmesingas sveikatos stebėjimas, sukurtas atsižvelgiant į jūsų gyvenimą.';

  @override
  String get onboard_step_about => 'Apie Tave';

  @override
  String get onboard_step_goals => 'Jūsų tikslai';

  @override
  String get onboard_step_lifestyle => 'Kasdieniai įpročiai';

  @override
  String get onboard_step_permissions => 'Leidimai';

  @override
  String get onboard_step_plan => 'Pasiruošę!';

  @override
  String get onboard_health_connect_perm => '„Health Connect“ prieiga';

  @override
  String get onboard_step_sensors_perm => 'Žingsnių skaitiklio jutiklis';

  @override
  String get onboard_notif_perm => 'Sąmoningi priminimai ir pranešimai';

  @override
  String get onboard_camera_perm =>
      'Kamera (brūkšninių kodų ir maisto skaitytuvas)';

  @override
  String get onboard_grant_permissions => 'Suteikite leidimus';

  @override
  String get onboard_continue_dashboard => 'Atidarykite prietaisų skydelį';

  @override
  String get notif_channel_hydration_name => 'Drėkinimo stimuliatoriai';

  @override
  String get notif_channel_hydration_desc =>
      'Švelnūs vandens priminimai visą dieną';

  @override
  String get notif_channel_nutrition_name => 'Maitinimo ir mitybos priminimai';

  @override
  String get notif_channel_nutrition_desc =>
      'Pusryčių, pietų ir vakarienės priminimo įspėjimai';

  @override
  String get notif_channel_steps_name => 'Žingsnio etapai';

  @override
  String get notif_channel_steps_desc =>
      'Šventės, kai pasiekiami dienos žingsnių tikslai';

  @override
  String get notif_channel_vitals_name =>
      'Sveikatos ir gyvybinių funkcijų patikrinimai';

  @override
  String get notif_channel_vitals_desc => 'Priminimai apie svorį ir miegą';

  @override
  String get notif_action_log_water => '💧 Rąstas +250ml';

  @override
  String get notif_action_snooze => 'Snausti 15m';

  @override
  String get notif_action_log_meal => '🥗 Rąstinis valgis';

  @override
  String get language => 'Kalba';

  @override
  String get share => 'Dalintis';

  @override
  String common_days(Object count) {
    return 'Prieš $count d';
  }
}
