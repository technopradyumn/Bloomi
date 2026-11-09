// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get app_name => 'Bloom';

  @override
  String get nav_home => 'Kodu';

  @override
  String get nav_today => 'Täna';

  @override
  String get nav_plan => 'Plaan';

  @override
  String get nav_food => 'Toit';

  @override
  String get nav_food_diary => 'Toidupäevik';

  @override
  String get nav_workout => 'Treeningu logi';

  @override
  String get nav_health => 'Tervis';

  @override
  String get nav_profile => 'Profiil';

  @override
  String get save => 'Salvesta';

  @override
  String get cancel => 'Tühista';

  @override
  String get delete => 'Kustuta';

  @override
  String get edit => 'Muuda';

  @override
  String get done => 'Valmis';

  @override
  String get close => 'Sule';

  @override
  String get back => 'Tagasi';

  @override
  String get next => 'Edasi';

  @override
  String get continue_btn => 'Jätka';

  @override
  String get confirm => 'Kinnita';

  @override
  String get search => 'Otsi';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Kõik';

  @override
  String get active => 'Aktiivne';

  @override
  String get today => 'Täna';

  @override
  String get yesterday => 'eile';

  @override
  String get tomorrow => 'Homme';

  @override
  String get add => 'Lisa';

  @override
  String get remove => 'Eemalda';

  @override
  String get refresh => 'Värskenda';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get error => 'Viga';

  @override
  String get success => 'Edu';

  @override
  String get loading => 'Laadimine...';

  @override
  String get no_data => 'Andmed puuduvad';

  @override
  String get offline => 'Võrguühenduseta režiim';

  @override
  String get offline_sub =>
      'Muudatused sünkroonitakse pärast uuesti ühendamist';

  @override
  String get undo => 'Võta tagasi';

  @override
  String get portion => 'Portsjon';

  @override
  String get quantity => 'Kogus';

  @override
  String get unit => 'Üksus';

  @override
  String get clear => 'Selge';

  @override
  String get select => 'Valige';

  @override
  String get apply => 'Rakenda';

  @override
  String get reset => 'Lähtesta';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Jah';

  @override
  String get no => 'Ei';

  @override
  String get optional => 'Valikuline';

  @override
  String get calories => 'Kalorid';

  @override
  String get protein => 'Valk';

  @override
  String get carbs => 'Süsivesikud';

  @override
  String get fat => 'Paks';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Vesi';

  @override
  String get steps => 'Sammud';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'naela';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'sisse';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'tundi';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Serveerimine';

  @override
  String get servings => 'Portsjonid';

  @override
  String get serving_size => 'Portsjoni suurus';

  @override
  String get per_100g => '100g kohta';

  @override
  String get india => 'India';

  @override
  String get asia => 'Aasia';

  @override
  String get europe => 'Euroopas';

  @override
  String get middle_east => 'Lähis-Ida';

  @override
  String get africa => 'Aafrika';

  @override
  String get americas => 'Ameerikas';

  @override
  String get home_title => 'Kodu';

  @override
  String get home_greeting_morning => 'Tere hommikust';

  @override
  String get home_greeting_afternoon => 'Tere pärastlõunast';

  @override
  String get home_greeting_evening => 'Tere õhtust';

  @override
  String get home_streak_title => 'Õietriip';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päevane seeria',
      one: '1 päevane seeria',
      zero: '0 päevane seeria',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Põlenud';

  @override
  String get home_calories_budget => 'Kalorite eelarve';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal järelejäänud';
  }

  @override
  String get home_water_title => 'Igapäevane niisutus';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Sammud Kõndinud';

  @override
  String get home_quick_actions => 'Kiired toimingud';

  @override
  String get home_log_meal => 'Palgitoit';

  @override
  String get home_log_water => 'Log Vesi';

  @override
  String get home_log_workout => 'Logi treening';

  @override
  String get home_log_weight => 'Palgi kaal';

  @override
  String get home_insights_title => 'Tänased ülevaated';

  @override
  String get home_quote =>
      'Väikesed tervislikud valikud loovad õitsevaid muutusi.';

  @override
  String get home_ai_coach_tip => 'Boomi AI treener';

  @override
  String get home_surroundings => 'Ümbrus ja õhk';

  @override
  String get home_notifications => 'Märguanded';

  @override
  String get home_daily_score => 'Päevane heaoluskoor';

  @override
  String get home_view_all => 'Kuva kõik';

  @override
  String get food_diary_title => 'Toidupäevik';

  @override
  String get food_breakfast => 'Hommikusöök';

  @override
  String get food_lunch => 'Lõunasöök';

  @override
  String get food_dinner => 'Õhtusöök';

  @override
  String get food_snacks => 'Suupisted';

  @override
  String get food_add_food => 'Lisa toit';

  @override
  String get food_edit_food => 'Redigeeri toitu';

  @override
  String get food_add_breakfast => 'Lisa hommikusöök';

  @override
  String get food_add_lunch => 'Lisa lõunasöök';

  @override
  String get food_add_dinner => 'Lisa õhtusöök';

  @override
  String get food_add_snack => 'Lisa suupiste';

  @override
  String get food_total_calories => 'Kalorid kokku';

  @override
  String get food_empty_meal =>
      'Selle toidukorra jaoks pole veel ühtegi toitu logitud';

  @override
  String get food_empty_diary =>
      'Sellel päeval pole ühtegi sööki registreeritud';

  @override
  String get food_log_first_meal =>
      'Puudutage +, et registreerida oma esimene maitsev eine';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint => 'Otsige roogasid, puuvilju, dali, roti...';

  @override
  String get food_custom_recipe => 'Custom Food & Recipe';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Recent Foods';

  @override
  String get food_favourites => 'Favourites';

  @override
  String get food_macro_summary => 'Macronutrient Breakdown';

  @override
  String get food_delete_meal_confirm =>
      'Kas olete kindel, et soovite selle üksuse eemaldada?';

  @override
  String get food_item_deleted => 'Food item removed';

  @override
  String get food_remaining => 'remaining';

  @override
  String get food_consumed => 'consumed';

  @override
  String food_of_target(Object target) {
    return 'of  $target  kcal';
  }

  @override
  String get foodSearch_title => 'Search Foods';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Create Custom Food';

  @override
  String get foodSearch_recent_searches => 'Recent Searches';

  @override
  String get foodSearch_popular => 'Popular Dishes';

  @override
  String get foodSearch_no_results => 'Ükski toit ei vasta teie otsingule';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Joondage vöötkood kaamera raami sees';

  @override
  String get barcode_not_found => 'Toodet andmebaasist ei leitud';

  @override
  String get barcode_premium_feature =>
      'Vöötkoodi skannimine on saadaval Boomi Pro abil';

  @override
  String get camera_title => 'AI toiduskanner';

  @override
  String get camera_tap_hint => 'Tehke oma roast selge foto';

  @override
  String get camera_analysing => 'Toidutaldriku analüüsimine...';

  @override
  String get camera_detected => 'Tuvastatud üksused';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Retake Photo';

  @override
  String get camera_confirm_food => 'Kinnitage üksused';

  @override
  String get customFood_title => 'Kohandatud toit ja retsept';

  @override
  String get customFood_name_hint => 'Roa või koostisosa nimi';

  @override
  String get customFood_calories_hint => 'Kalorid (kcal)';

  @override
  String get customFood_protein_hint => 'Valk (g)';

  @override
  String get customFood_carbs_hint => 'Süsivesikud (g)';

  @override
  String get customFood_fat_hint => 'rasv (g)';

  @override
  String get customFood_save => 'Salvesta retsept';

  @override
  String get water_tracker_title => 'Water Tracker';

  @override
  String get water_daily_target => 'Igapäevane niisutuseesmärk';

  @override
  String get water_logged_today => 'Täna logitud';

  @override
  String get water_add_glass => '+250 ml Klaas';

  @override
  String get water_add_bottle => '+500 ml Bottle';

  @override
  String get water_custom_amount => 'Custom Amount';

  @override
  String get water_reminder_tip =>
      'Jooge kogu päeva jooksul regulaarselt vett, et saada energiat.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logitud $amount ml vett 💧';
  }

  @override
  String get workout_title => 'Treeningu logi';

  @override
  String get workout_add_exercise => 'Lisa treening';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Tugevus';

  @override
  String get workout_yoga => 'Jooga ja paindlikkus';

  @override
  String get workout_duration => 'Kestus';

  @override
  String get workout_intensity => 'Intensiivsus';

  @override
  String get workout_calories_burned => 'Põletatud kalorid';

  @override
  String get workout_empty => 'Täna pole ühtegi treeningut registreeritud';

  @override
  String get workout_save_success => 'Treening õnnestus salvestada!';

  @override
  String get workout_type => 'Treeningu tüüp';

  @override
  String get workout_notes => 'Märkmed ja peegeldused';

  @override
  String get health_overview_title => 'Tervis ja elutähtsad asjad';

  @override
  String get health_heart_rate => 'Südame löögisagedus';

  @override
  String get health_blood_oxygen => 'Vere hapnik (SpO2)';

  @override
  String get health_blood_pressure => 'Vererõhk';

  @override
  String get health_blood_glucose => 'Vere glükoos';

  @override
  String get health_body_temperature => 'Keha temperatuur';

  @override
  String get health_sleep_tracking => 'Une jälgimine';

  @override
  String get health_weight_tracking => 'Kaal ja keha koostis';

  @override
  String get health_waist_hip => 'Vöö-puusade suhe';

  @override
  String get health_devices_hub => 'Seadmed ja nutikellade keskus';

  @override
  String get health_sync_now => 'Terviseandmete sünkroonimine';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Viimati sünkroonitud: $time';
  }

  @override
  String get health_manual_entry => 'Tervise käsitsi sisestamine';

  @override
  String get health_metric_detail => 'Mõõdikute üksikasjad';

  @override
  String get health_connected_sensors => 'Ühendatud terviseandurid';

  @override
  String get plan_title => 'Päevaplaan';

  @override
  String get plan_weekly_title => 'Nädala terviseplaan';

  @override
  String get plan_calorie_target => 'Kalorite sihtmärk';

  @override
  String get plan_water_target => 'Niisutamise sihtmärk';

  @override
  String get plan_step_target => 'Sammu sihtmärk';

  @override
  String get plan_sleep_target => 'Une sihtmärk';

  @override
  String get plan_meal_suggestions => 'Söögisoovitused';

  @override
  String get plan_healthy_habits => 'Tervislikud harjumused ja nõuanded';

  @override
  String get plan_coach_advice => 'Bloomi AI treeneri soovitused';

  @override
  String get plan_generated_title => 'Isikupärastatud päevakava';

  @override
  String get profile_title => 'Profiil';

  @override
  String get profile_edit => 'Redigeeri profiili';

  @override
  String get profile_name => 'Nimi';

  @override
  String get profile_age => 'Vanus';

  @override
  String get profile_gender => 'Sugu';

  @override
  String get profile_height => 'Kõrgus';

  @override
  String get profile_weight => 'Kaal';

  @override
  String get profile_goal => 'Esmane eesmärk';

  @override
  String get profile_activity_level => 'Aktiivsuse tase';

  @override
  String get profile_stats => 'Minu tervisestatistika';

  @override
  String get profile_saved => 'Profiili värskendamine õnnestus';

  @override
  String get profile_bmi => 'Kehamassiindeks (KMI)';

  @override
  String get profile_membership => 'Liikmelisus';

  @override
  String get settings => 'Seaded';

  @override
  String get preferences_habits => 'EELISED JA HARJUMUSED';

  @override
  String get appearance_theme => 'Välimus ja teema';

  @override
  String get appearance_theme_sub =>
      'Tume, hele, süsteemirežiimi ja rakenduse taustavalikud';

  @override
  String get permissions => 'Load ja juurdepääs süsteemile';

  @override
  String get permissions_sub =>
      'Health Connect, sammuandurid, GPS, märguanded ja kaamera';

  @override
  String get reminders_notifications => 'Meeldetuletused ja teated';

  @override
  String get reminders_sub =>
      'Söögiajad, vesi, kaalu registreerimine ja uneaja meeldetuletused';

  @override
  String get units_of_measurement => 'Mõõtühikud';

  @override
  String get units_sub =>
      'Meetriline (kg, cm, ml, km) või keiserlik (naelad, jalga tolli kohta, fl oz)';

  @override
  String get app_language => 'Rakenduse keel';

  @override
  String get language_sub =>
      'inglise, हिन्दी (hindi), hingli ja 195+ globaalset keelt';

  @override
  String get home_screen_widgets => 'Avakuva vidinad';

  @override
  String get widgets_sub =>
      'Reaalajas Androidi vidinad: jaotur, sammud, vesi, toitumine ja maskott';

  @override
  String get wear_os_watch_app => 'Wear OS-i kellarakendus';

  @override
  String get wear_os_sub =>
      'Nutikellakaaslane, plaadid, komplikatsioonid ja reaalajas elutähtsad andmed';

  @override
  String get goals_wellness => 'EESMÄRGID JA TERVIST TEADUSED';

  @override
  String get nutrition_targets => 'Toitumise eesmärgid ja makrojaotus';

  @override
  String get nutrition_targets_sub =>
      'Kalorieesmärk, valkude, süsivesikute, rasvade ja vee eesmärk';

  @override
  String get weekly_recap => 'Iganädalane tervisekokkuvõte';

  @override
  String get weekly_recap_sub =>
      '7 päeva kalorite keskmine, makrosuhe ja parim päev';

  @override
  String get streaks_milestones => 'Triibud ja verstapostid';

  @override
  String get streaks_sub => 'Aktiivsed õitejooned, märgid ja saavutused';

  @override
  String get connected_devices => 'ÜHENDATUD SEADMED JA ÖKOSÜSTEEM';

  @override
  String get devices_hub => 'Seadmed ja nutikellade keskus';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ümbruskond ja ilm';

  @override
  String get surroundings_sub =>
      'Õhukvaliteedi (AQI), UV-indeksi ja ilmastiku niisutamise näpunäited';

  @override
  String get bloomi_pro => 'Boomi Pro tellimus';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 avaekraani vidinat ja elutähtsate andmete jälgimine';

  @override
  String get about_security => 'TEAVE JA TURVALISUS';

  @override
  String get about_bloomi => 'Bloomi kohta';

  @override
  String get about_bloomi_sub =>
      'Järgu spetsifikatsioonid, versioon, omistamised';

  @override
  String get privacy_policy => 'Privaatsuspoliitika';

  @override
  String get privacy_policy_sub =>
      'Võrguühenduseta esmalt seadmesisene andmearhitektuur';

  @override
  String get terms_conditions => 'Tingimused';

  @override
  String get terms_conditions_sub => 'Kasutustingimused ja heaolujuhised';

  @override
  String get delete_account => 'Kustuta konto ja andmed';

  @override
  String get delete_account_sub =>
      'Kustutage pöördumatult kohalikud SQLite\'i andmed ja pilvevarukoopiad';

  @override
  String get healthy_habits => 'Looge õrnad ja püsivad heaoluharjumused';

  @override
  String get all_logs => 'Minu jälgitavad andmed ja logid';

  @override
  String get search_language => 'Otsige keele või omakeelse skripti järgi...';

  @override
  String get languages_available => 'Saadaolevad keeled';

  @override
  String get no_matching_languages => 'Ühtegi sobivat keelt ei leitud';

  @override
  String get try_searching =>
      'Proovige otsida emakeele või inglise keele õigekirja järgi';

  @override
  String get partially_translated => 'Osaliselt tõlgitud';

  @override
  String get complete_translation => 'Täielik';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Keeleks on määratud $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Ümbrus ja keskkond';

  @override
  String get surroundings_aqi => 'Õhukvaliteedi indeks';

  @override
  String get surroundings_uv => 'UV-indeks';

  @override
  String get surroundings_temp => 'Temperatuur';

  @override
  String get surroundings_humidity => 'Niiskus';

  @override
  String get surroundings_hydration_advice =>
      'Olge praegustes ilmastikutingimustes hästi hüdreeritud.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Otsige toitu';

  @override
  String get food_quick_barcode => 'Skaneeri vöötkood 👑';

  @override
  String get food_quick_water => 'Lisa vesi';

  @override
  String get food_quick_custom => 'Kohandatud toit';

  @override
  String get surroundings_good => 'Hea';

  @override
  String get surroundings_moderate => 'Mõõdukas';

  @override
  String get surroundings_unhealthy => 'Ebatervislik';

  @override
  String get notifications_title => 'Märguanded ja hoiatused';

  @override
  String get notifications_empty => 'Uusi teateid pole';

  @override
  String get notifications_mark_read => 'Märgi kõik loetuks';

  @override
  String get notifications_clear => 'Kustuta kõik';

  @override
  String get reminders => 'Meeldetuletuse seaded';

  @override
  String get notifications => 'Tõukemärguanded';

  @override
  String get reminders_breakfast_title => 'Hommikusöögi meeldetuletus 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Tere hommikust! Aeg toitvaks hommikusöögiks kell $time.';
  }

  @override
  String get reminders_lunch_title => 'Lõunasöögi meeldetuletus 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Peatage ja nautige tasakaalustatud ja tähelepanelikku lõunasööki kell $time.';
  }

  @override
  String get reminders_dinner_title => 'Õhtusöögi meeldetuletus 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Aeg kergeks ja rahuldavaks õhtusöögiks kell $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Aeg juua klaas värsket vett! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Iganädalane kaalumine ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Jälgige oma iganädalasi kehamõõdikuid teenuses Bloom ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Magamamineku aeg 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Lõdvestuge ja valmistuge kosutavaks uneks ( $time ).';
  }

  @override
  String get onboard_welcome => 'Tere tulemast Bloomi';

  @override
  String get onboard_sub =>
      'Teie sõbralik, võrguühenduseta esimene tervise- ja toitumiskaaslane.';

  @override
  String get onboard_get_started => 'Alustage';

  @override
  String get onboard_sign_in => 'Logi sisse';

  @override
  String get onboard_skip => 'Jäta vahele';

  @override
  String get onboard_choose_goal => 'Mis on teie esmane heaolueesmärk?';

  @override
  String get onboard_goal_weight_loss => 'Õrn kaalulangus';

  @override
  String get onboard_goal_muscle => 'Lihaste juurdekasv ja tugevus';

  @override
  String get onboard_goal_energy => 'Igapäevane energia ja elujõud';

  @override
  String get onboard_goal_habits => 'Tervislik teadlik toitumine';

  @override
  String get onboard_about_you => 'Rääkige meile endast';

  @override
  String get onboard_lifestyle => 'Teie igapäevane rutiin';

  @override
  String get onboard_permissions_title => 'Load ja juurdepääs süsteemile';

  @override
  String get onboard_permissions_sub =>
      'Andke juurdepääs sammude, treeningute ja meeldetuletuste sünkroonimisele.';

  @override
  String get onboard_plan_ready_title => 'Teie kohandatud plaan on valmis!';

  @override
  String get onboard_plan_ready_sub =>
      'Koostasime just teie jaoks õrna, isikupärastatud toitumise ja heaolu tegevuskava.';

  @override
  String get onboard_enter_bloomi => 'Sisene Bloom';

  @override
  String get insights_weekly_report => 'Iganädalane tervisekokkuvõte';

  @override
  String insights_best_day(Object day) {
    return 'Parima järjepidevuse päev: $day';
  }

  @override
  String get insights_streaks_badges => 'Triibud ja verstapostid';

  @override
  String insights_unlocked_on(Object date) {
    return 'Avatud $date';
  }

  @override
  String get insights_keep_going => 'Jätkake fantastilist edu!';

  @override
  String get widgets_title => 'Avakuva vidinad';

  @override
  String widgets_active_count(Object count) {
    return 'Aktiivsed vidinad: $count';
  }

  @override
  String get widgets_hub_title => 'Boomi tervisekeskus';

  @override
  String get widgets_steps_title => 'Sammud ja aktiivne ring';

  @override
  String get widgets_water_title => 'Hüdratsiooni kiirlogi';

  @override
  String get widgets_mascot_title => 'Boomi maskoti kaaslane';

  @override
  String get wear_os_title => 'Wear OS-i nutikell';

  @override
  String get wear_os_connected => 'Ühendatud kellaga';

  @override
  String get wear_os_sync => 'Kellaandmete sünkroonimine';

  @override
  String get theme_title => 'Välimus ja teema';

  @override
  String get theme_mode => 'Teemarežiim';

  @override
  String get theme_light => 'Valgus';

  @override
  String get theme_dark => 'Tume';

  @override
  String get theme_system => 'Süsteem';

  @override
  String get theme_background_palette => 'Tausta palett';

  @override
  String get units_title => 'Mõõtühikud';

  @override
  String get units_metric => 'Mõõdik (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (naela, tolli, fl unts)';

  @override
  String get home_unable_load => 'Juhtpaneeli ei saa laadida';

  @override
  String get home_health_permission_req => 'Nõutav on Health Connecti luba';

  @override
  String get home_health_permission_desc =>
      'Boomil on reaalsete sammude, pulsisageduse ja mobiilse kodu vidinate reaalajas sünkroonimiseks vaja Health Connecti luba.';

  @override
  String get home_allow_health => 'Luba Health Connect';

  @override
  String get home_ready_mindful_day => 'Kas olete teadlikuks päevaks valmis? ✨';

  @override
  String get home_quick_add => 'Kiire lisamine';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'JÄÄNUD KALORID';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Söödud: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Veejälgija kraan 💧';

  @override
  String get home_water_goal_reached => 'Päevane eesmärk saavutatud 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml päevase eesmärgini';
  }

  @override
  String get home_details => 'Üksikasjad';

  @override
  String get home_upgrade_plan_desc =>
      'Täiendage, et avada isikupärastatud igapäevased eesmärgid ja AI plaan';

  @override
  String get home_unlock => 'Avage 👑';

  @override
  String get home_quick_log_hint => 'Salvestage kiiresti heaolukirje';

  @override
  String get food_serving_size => 'Portsjoni suurus';

  @override
  String get food_serving_grams => 'Serveerimine (g)';

  @override
  String get food_number_servings => 'Portsjonite arv';

  @override
  String get food_calories_per_serving => 'Kalorid portsjoni kohta';

  @override
  String get food_recipe_ingredients => 'Koostisained';

  @override
  String get food_recipe_add_ingredient => 'Lisage koostisosa';

  @override
  String get food_recipe_directions => 'Juhised ja märkused';

  @override
  String get food_recipe_total => 'Total Retsept Toitumine';

  @override
  String get food_recipe_per_serving => 'Toitumine portsjoni kohta';

  @override
  String get food_recipe_saved_toast => 'Kohandatud toit edukalt salvestatud!';

  @override
  String get food_barcode_found => 'Toode leitud!';

  @override
  String get food_barcode_not_found_desc =>
      'Me ei leidnud seda vöötkoodi avatud andmebaasist. Saate seda lisada kohandatud toiduna.';

  @override
  String get food_add_custom_btn => 'Lisa kohandatud toit';

  @override
  String get food_scan_again => 'Skaneeri uuesti';

  @override
  String get food_review_items => 'Vaadake üle tuvastatud toidud';

  @override
  String get food_review_hint =>
      'Reguleerige koguseid või eemaldage tundmatud üksused';

  @override
  String get food_log_selected => 'Logi sisse valitud toidud';

  @override
  String get food_favourites_title => 'Lemmiktoidud';

  @override
  String get food_recent_title => 'Viimased toidud';

  @override
  String get food_no_favourites =>
      'Lemmiktoite pole veel. Siin salvestamiseks puudutage mis tahes toidu südant.';

  @override
  String get food_no_recents => 'Hiljuti logitud toiduaineid ei leitud.';

  @override
  String get food_nutrition_details_title => 'Igapäevase toitumise üksikasjad';

  @override
  String get food_macro_protein_label => 'Valkude lagunemine';

  @override
  String get food_macro_carbs_label => 'Süsivesikute jaotus';

  @override
  String get food_macro_fat_label => 'Rasva lagunemine';

  @override
  String get food_macro_fiber_label => 'Kiudude lagunemine';

  @override
  String get food_daily_target_comparison => 'Eesmärgi võrdlus';

  @override
  String food_target_label(Object target) {
    return 'Sihtmärk: $target';
  }

  @override
  String get food_edit_entry => 'Muuda päevikukirjet';

  @override
  String get food_delete_entry => 'Kustuta kirje';

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
    return '$current $target ml-st';
  }

  @override
  String get water_intake_history => 'Tänased veepalgid';

  @override
  String get water_no_logs_today =>
      'Täna pole vett veel laetud. Niisutage ja puudutage kiire lisamise nuppu!';

  @override
  String get water_adjust_goal => 'Reguleerige igapäevast eesmärki';

  @override
  String get health_connect_banner => 'Ühendatud teenusega Health Connect';

  @override
  String get health_vitals_summary => 'Igapäevased tervisenäitajad';

  @override
  String get health_latest_heart_rate => 'Viimane pulss';

  @override
  String get health_latest_bp => 'Vererõhk';

  @override
  String get health_latest_spo2 => 'Vere hapnik';

  @override
  String get health_latest_glucose => 'Vere glükoos';

  @override
  String get health_latest_weight => 'Kaal';

  @override
  String get health_latest_sleep => 'Une kestus';

  @override
  String get health_add_manual => 'Lisage käsitsi mõõtmine';

  @override
  String get health_history_trends => 'Ajaloolised suundumused';

  @override
  String get health_sync_success => 'Terviseandmete sünkroonimine õnnestus!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours tundi $mins min';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm lööki minutis';
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
  String get health_devices_title => 'Ühendatud seadmed ja kantavad seadmed';

  @override
  String get health_devices_desc =>
      'Hallake seotud nutikellasid, treeningujälgijaid ja terviseandureid.';

  @override
  String get health_workout_editor_title => 'Redigeeri treeningut';

  @override
  String get health_workout_name_label => 'Treeningu nimi';

  @override
  String get health_workout_duration_label => 'Kestus (minutites)';

  @override
  String get health_workout_calories_label => 'Hinnangulised kalorid (kcal)';

  @override
  String get health_workout_date_label => 'Kuupäev ja kellaaeg';

  @override
  String get plan_daily_wellness_roadmap => 'Teie isikupärastatud tegevuskava';

  @override
  String get plan_morning_routine => 'Hommikune rutiin';

  @override
  String get plan_afternoon_routine => 'Keskpäevane heaolu';

  @override
  String get plan_evening_routine => 'Õhtune rahutus';

  @override
  String get plan_coach_badge => 'Boomi AI treener';

  @override
  String get plan_weekly_overview => '7-päevane tervisefookus';

  @override
  String get plan_targets_title => 'Tervise eesmärgid ja eesmärgid';

  @override
  String get plan_calorie_budget_label => 'Päevane kalorite eelarve';

  @override
  String get plan_water_budget_label => 'Päevane vee sihtmärk';

  @override
  String get plan_step_budget_label => 'Igapäevane sammueesmärk';

  @override
  String get plan_macro_split_label => 'Makrotoitainete suhe';

  @override
  String get profile_personal_details => 'Isiklikud andmed';

  @override
  String get profile_body_stats => 'Keha mõõdud';

  @override
  String get profile_app_preferences => 'Eelistused ja rakenduse seaded';

  @override
  String get profile_edit_name_hint => 'Sinu nimi';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Kõrgus ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Kaal ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Vanus';

  @override
  String get profile_gender_male => 'Mees';

  @override
  String get profile_gender_female => 'Naine';

  @override
  String get profile_gender_other => 'Muu / eelistan mitte öelda';

  @override
  String get profile_activity_sedentary => 'Istuv (vähe või üldse mitte)';

  @override
  String get profile_activity_light => 'Kergelt aktiivne (1-3 päeva nädalas)';

  @override
  String get profile_activity_moderate =>
      'Mõõdukalt aktiivne (3-5 päeva nädalas)';

  @override
  String get profile_activity_very => 'Väga aktiivne (6-7 päeva nädalas)';

  @override
  String get settings_wear_os_header => 'Wear OS-i kaasrakendus';

  @override
  String get settings_wear_os_desc =>
      'Installige oma Wear OS-i kella Boomi plaat ja komplikatsioon, et heita pilk kaloritele, veele ja sammudele.';

  @override
  String get settings_widgets_header => 'Interaktiivsed Androidi vidinad';

  @override
  String get settings_widgets_desc =>
      'Kinnitage oma seadme avaekraanile reaalajas vidinad, et neid kohe värskendada.';

  @override
  String get settings_about_header => 'Bloomi kohta';

  @override
  String get settings_about_version => 'Versioon';

  @override
  String get settings_about_build => 'Ehitage 100';

  @override
  String get settings_about_credits =>
      'Loodud hoolivalt teadliku ja tervisliku eluviisi jaoks.';

  @override
  String get settings_terms_header => 'Tingimused';

  @override
  String get settings_privacy_header => 'Privaatsuspoliitika';

  @override
  String get settings_delete_header => 'Kustuta konto ja andmed';

  @override
  String get settings_delete_warning =>
      'Seda toimingut ei saa tagasi võtta. Kõik teie toidukorrad, treeningud, elutähtsad andmed ja profiil kustutatakse jäädavalt.';

  @override
  String get settings_delete_confirm_btn => 'Kustuta jäädavalt';

  @override
  String get onboard_welcome_headline => 'Tere tulemast Bloomisse ✨';

  @override
  String get onboard_welcome_tagline =>
      'Õrn ja tähelepanelik heaolu jälgimine, mis on loodud teie elu järgi.';

  @override
  String get onboard_step_about => 'Sinu kohta';

  @override
  String get onboard_step_goals => 'Teie eesmärgid';

  @override
  String get onboard_step_lifestyle => 'Igapäevased harjumused';

  @override
  String get onboard_step_permissions => 'load';

  @override
  String get onboard_step_plan => 'Valmis!';

  @override
  String get onboard_health_connect_perm => 'Health Connecti juurdepääs';

  @override
  String get onboard_step_sensors_perm => 'Sammulugeja andur';

  @override
  String get onboard_notif_perm =>
      'Tähelepanelikud meeldetuletused ja märguanded';

  @override
  String get onboard_camera_perm => 'Kaamera (vöötkoodi- ja toiduskanner)';

  @override
  String get onboard_grant_permissions => 'Lubade andmine';

  @override
  String get onboard_continue_dashboard => 'Avage armatuurlaud';

  @override
  String get notif_channel_hydration_name => 'Niisutamise tõukejõud';

  @override
  String get notif_channel_hydration_desc =>
      'Õrnad vee meeldetuletused kogu päeva jooksul';

  @override
  String get notif_channel_nutrition_name =>
      'Toidu ja toitumise meeldetuletused';

  @override
  String get notif_channel_nutrition_desc =>
      'Hommiku-, lõuna- ja õhtusöögi meeldetuletusmärguanded';

  @override
  String get notif_channel_steps_name => 'Samm verstapostid';

  @override
  String get notif_channel_steps_desc =>
      'Tähistused igapäevaste sammude eesmärkide saavutamisel';

  @override
  String get notif_channel_vitals_name =>
      'Tervise ja elutähtsate näitajate kontroll';

  @override
  String get notif_channel_vitals_desc =>
      'Kaalu ja magamamineku meeldetuletused';

  @override
  String get notif_action_log_water => '💧 Palk +250ml';

  @override
  String get notif_action_snooze => 'Lükka 15m';

  @override
  String get notif_action_log_meal => '🥗 Palgitoit';

  @override
  String get language => 'Keel';

  @override
  String get share => 'Jaga';

  @override
  String common_days(Object count) {
    return '$count p tagasi';
  }
}
