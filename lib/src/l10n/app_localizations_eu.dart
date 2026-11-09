// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Hasiera';

  @override
  String get nav_today => 'Gaur';

  @override
  String get nav_plan => 'Plana';

  @override
  String get nav_food => 'Janaria';

  @override
  String get nav_food_diary => 'Elikagaien Egunkaria';

  @override
  String get nav_workout => 'Entrenamenduen erregistroa';

  @override
  String get nav_health => 'Osasuna';

  @override
  String get nav_profile => 'Profila';

  @override
  String get save => 'Gorde';

  @override
  String get cancel => 'Utzi';

  @override
  String get delete => 'Ezabatu';

  @override
  String get edit => 'Editatu';

  @override
  String get done => 'Eginda';

  @override
  String get close => 'Itxi';

  @override
  String get back => 'Itzuli';

  @override
  String get next => 'Hurrengoa';

  @override
  String get continue_btn => 'Jarraitu';

  @override
  String get confirm => 'Berretsi';

  @override
  String get search => 'Bilatu';

  @override
  String get filter => 'Iragazkia';

  @override
  String get all => 'Denak';

  @override
  String get active => 'Aktiboa';

  @override
  String get today => 'Gaur';

  @override
  String get yesterday => 'Atzo';

  @override
  String get tomorrow => 'Bihar';

  @override
  String get add => 'Gehitu';

  @override
  String get remove => 'Kendu';

  @override
  String get refresh => 'Freskatu';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get error => 'Errorea';

  @override
  String get success => 'Arrakasta';

  @override
  String get loading => 'Kargatzen...';

  @override
  String get no_data => 'Ez dago daturik eskuragarri';

  @override
  String get offline => 'Lineaz kanpoko modua';

  @override
  String get offline_sub =>
      'Aldaketak berriro konektatzen direnean sinkronizatuko dira';

  @override
  String get undo => 'Desegin';

  @override
  String get portion => 'Zatia';

  @override
  String get quantity => 'Kantitatea';

  @override
  String get unit => 'Unitatea';

  @override
  String get clear => 'Garbi';

  @override
  String get select => 'Hautatu';

  @override
  String get apply => 'Aplikatu';

  @override
  String get reset => 'Berrezarri';

  @override
  String get ok => 'Ados';

  @override
  String get yes => 'Bai';

  @override
  String get no => 'Ez';

  @override
  String get optional => 'Aukerakoa';

  @override
  String get calories => 'Kaloriak';

  @override
  String get protein => 'Proteina';

  @override
  String get carbs => 'Karbohidratoak';

  @override
  String get fat => 'Gantza';

  @override
  String get fiber => 'Zuntz';

  @override
  String get water => 'Ura';

  @override
  String get steps => 'Urratsak';

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
  String get inches => 'urtean';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ordu';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Zerbitzatu';

  @override
  String get servings => 'Anoak';

  @override
  String get serving_size => 'Zerbitzatu Tamaina';

  @override
  String get per_100g => '100 g bakoitzeko';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Ekialde Hurbila';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerikak';

  @override
  String get home_title => 'Hasiera';

  @override
  String get home_greeting_morning => 'Egun on';

  @override
  String get home_greeting_afternoon => 'Arratsalde on';

  @override
  String get home_greeting_evening => 'Arratsalde on';

  @override
  String get home_streak_title => 'Lore-marra';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count egun marra',
      one: '1 egun segida',
      zero: '0 eguneko marra',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Erreta';

  @override
  String get home_calories_budget => 'Kaloria Aurrekontua';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal geratzen dira';
  }

  @override
  String get home_water_title => 'Eguneroko hidratazioa';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Urratsak Oinez';

  @override
  String get home_quick_actions => 'Ekintza azkarrak';

  @override
  String get home_log_meal => 'Erregistro bazkaria';

  @override
  String get home_log_water => 'Log Ura';

  @override
  String get home_log_workout => 'Entrenamendu saioa';

  @override
  String get home_log_weight => 'Erregistroaren pisua';

  @override
  String get home_insights_title => 'Gaurko ikuspegiak';

  @override
  String get home_quote =>
      'Aukera osasuntsu txikiek eraldaketa loratuak sortzen dituzte.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI entrenatzailea';

  @override
  String get home_surroundings => 'Ingurua eta airea';

  @override
  String get home_notifications => 'Jakinarazpenak';

  @override
  String get home_daily_score => 'Eguneko ongizatearen puntuazioa';

  @override
  String get home_view_all => 'Ikusi guztiak';

  @override
  String get food_diary_title => 'Elikagaien Egunkaria';

  @override
  String get food_breakfast => 'Gosaria';

  @override
  String get food_lunch => 'Bazkaria';

  @override
  String get food_dinner => 'Afaria';

  @override
  String get food_snacks => 'Pintxoak';

  @override
  String get food_add_food => 'Gehitu janaria';

  @override
  String get food_edit_food => 'Editatu janaria';

  @override
  String get food_add_breakfast => 'Gehitu Gosaria';

  @override
  String get food_add_lunch => 'Gehitu Bazkaria';

  @override
  String get food_add_dinner => 'Gehitu Afaria';

  @override
  String get food_add_snack => 'Gehitu pintxoa';

  @override
  String get food_total_calories => 'Guztira kaloria';

  @override
  String get food_empty_meal =>
      'Oraindik ez dago janaririk otordu honetarako erregistratu';

  @override
  String get food_empty_diary =>
      'Ez dago otordurik erregistratu egun honetarako';

  @override
  String get food_log_first_meal =>
      'Sakatu + zure lehen otordu goxoa erregistratzeko';

  @override
  String get food_quick_add => 'Gehitu azkarra';

  @override
  String get food_search_hint => 'Bilatu platerak, frutak, dal, erroti...';

  @override
  String get food_custom_recipe => 'Janari eta errezeta pertsonalizatuak';

  @override
  String get food_scan_barcode => 'Eskaneatu barra-kodea';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Azken Elikagaiak';

  @override
  String get food_favourites => 'Gogokoak';

  @override
  String get food_macro_summary => 'Makronutrienteen matxura';

  @override
  String get food_delete_meal_confirm => 'Ziur elementu hau kendu nahi duzula?';

  @override
  String get food_item_deleted => 'Janaria kendu da';

  @override
  String get food_remaining => 'geratzen';

  @override
  String get food_consumed => 'kontsumitu';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'Bilatu Elikagaiak';

  @override
  String get foodSearch_scan_barcode => 'Eskaneatu barra-kodea';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Sortu janari pertsonalizatua';

  @override
  String get foodSearch_recent_searches => 'Azken bilaketak';

  @override
  String get foodSearch_popular => 'Jaki Herrikoiak';

  @override
  String get foodSearch_no_results =>
      'Ez dago zure bilaketarekin bat datorren elikagairik';

  @override
  String get barcode_title => 'Barra-kodeen eskanerra';

  @override
  String get barcode_align =>
      'Lerrokatu barra-kodea kameraren markoaren barruan';

  @override
  String get barcode_not_found => 'Produktua ez da datu basean aurkitu';

  @override
  String get barcode_premium_feature =>
      'Barra-kodeen eskaneatzea Bloomi Pro-rekin eskuragarri dago';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Atera zure plateraren argazki argia';

  @override
  String get camera_analysing => 'Janari platera aztertzen...';

  @override
  String get camera_detected => 'Detektatu diren elementuak';

  @override
  String get camera_flash => 'Aktibatu/desaktibatu Flash';

  @override
  String get camera_retake => 'Berriro atera argazkia';

  @override
  String get camera_confirm_food => 'Berretsi elementuak';

  @override
  String get customFood_title => 'Janari eta errezeta pertsonalizatuak';

  @override
  String get customFood_name_hint => 'Plateraren edo osagaiaren izena';

  @override
  String get customFood_calories_hint => 'Kaloriak (kcal)';

  @override
  String get customFood_protein_hint => 'Proteina (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidratoak (g)';

  @override
  String get customFood_fat_hint => 'Gantz (g)';

  @override
  String get customFood_save => 'Gorde Errezeta';

  @override
  String get water_tracker_title => 'Uraren jarraipena';

  @override
  String get water_daily_target => 'Eguneko hidratazio helburua';

  @override
  String get water_logged_today => 'Gaur saioa hasita';

  @override
  String get water_add_glass => '+250 ml beira';

  @override
  String get water_add_bottle => '+500 ml botila';

  @override
  String get water_custom_amount => 'Zenbateko pertsonalizatua';

  @override
  String get water_reminder_tip =>
      'Edan ura aldizka egunean zehar, energia egonkorra lortzeko.';

  @override
  String water_logged_toast(Object amount) {
    return 'Erregistratutako $amount ml ur 💧';
  }

  @override
  String get workout_title => 'Entrenamenduen erregistroa';

  @override
  String get workout_add_exercise => 'Gehitu entrenamendua';

  @override
  String get workout_cardio => 'Kardioa';

  @override
  String get workout_strength => 'Indarra';

  @override
  String get workout_yoga => 'Yoga eta malgutasuna';

  @override
  String get workout_duration => 'Iraupena';

  @override
  String get workout_intensity => 'Intentsitatea';

  @override
  String get workout_calories_burned => 'Erretako kaloriak';

  @override
  String get workout_empty => 'Ez da entrenamendurik erregistratu gaur';

  @override
  String get workout_save_success => 'Entrenamendua behar bezala gorde da!';

  @override
  String get workout_type => 'Entrenamendu mota';

  @override
  String get workout_notes => 'Oharrak eta gogoetak';

  @override
  String get health_overview_title => 'Osasuna eta Vitals';

  @override
  String get health_heart_rate => 'Bihotz-taupadak';

  @override
  String get health_blood_oxygen => 'Odol-oxigenoa (SpO2)';

  @override
  String get health_blood_pressure => 'Odol-presioa';

  @override
  String get health_blood_glucose => 'Odol Glukosa';

  @override
  String get health_body_temperature => 'Gorputzaren Tenperatura';

  @override
  String get health_sleep_tracking => 'Loaren jarraipena';

  @override
  String get health_weight_tracking => 'Pisua eta gorputz-konposizioa';

  @override
  String get health_waist_hip => 'Gerri-aldakaren erlazioa';

  @override
  String get health_devices_hub => 'Gailuak eta Smartwatch Hub';

  @override
  String get health_sync_now => 'Sinkronizatu osasun-datuak';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Azken sinkronizazioa: $time';
  }

  @override
  String get health_manual_entry => 'Eskuzko Osasun Sarrera';

  @override
  String get health_metric_detail => 'Metrikaren xehetasunak';

  @override
  String get health_connected_sensors => 'Konektatutako osasun-sentsoreak';

  @override
  String get plan_title => 'Eguneko Plana';

  @override
  String get plan_weekly_title => 'Asteroko Ongizate Plana';

  @override
  String get plan_calorie_target => 'Kaloria Helburua';

  @override
  String get plan_water_target => 'Hidratazioaren helburua';

  @override
  String get plan_step_target => 'Urratsaren Helburua';

  @override
  String get plan_sleep_target => 'Loaren Helburua';

  @override
  String get plan_meal_suggestions => 'Otorduen proposamenak';

  @override
  String get plan_healthy_habits => 'Ohitura osasungarriak eta aholkuak';

  @override
  String get plan_coach_advice => 'Bloomi AI entrenatzaileen gomendioak';

  @override
  String get plan_generated_title => 'Eguneko ordutegi pertsonalizatua';

  @override
  String get profile_title => 'Profila';

  @override
  String get profile_edit => 'Editatu profila';

  @override
  String get profile_name => 'Izena';

  @override
  String get profile_age => 'Adina';

  @override
  String get profile_gender => 'Generoa';

  @override
  String get profile_height => 'Altuera';

  @override
  String get profile_weight => 'Pisua';

  @override
  String get profile_goal => 'Helburu nagusia';

  @override
  String get profile_activity_level => 'Jarduera Maila';

  @override
  String get profile_stats => 'Nire Ongizate Estatistikak';

  @override
  String get profile_saved => 'Profila behar bezala eguneratu da';

  @override
  String get profile_bmi => 'Gorputz Masaren Indizea (GMI)';

  @override
  String get profile_membership => 'Kidetza';

  @override
  String get settings => 'Ezarpenak';

  @override
  String get preferences_habits => 'PREFERENTZIAK ETA OHITURAK';

  @override
  String get appearance_theme => 'Itxura eta gaia';

  @override
  String get appearance_theme_sub =>
      'Iluna, Argia, Sistema modua eta Aplikazioaren atzeko planoko aukerak';

  @override
  String get permissions => 'Baimenak eta Sistemarako sarbidea';

  @override
  String get permissions_sub =>
      'Health Connect, Step sentsoreak, GPSa, jakinarazpenak eta kamera';

  @override
  String get reminders_notifications => 'Abisuak eta jakinarazpenak';

  @override
  String get reminders_sub =>
      'Otorduen orduak, ura, pisua egiaztatzeko eta oheratzeko abisuak';

  @override
  String get units_of_measurement => 'Neurketa-unitateak';

  @override
  String get units_sub =>
      'Metrikoa (kg, cm, ml, km) edo inperiala (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Aplikazioaren hizkuntza';

  @override
  String get language_sub =>
      'Ingelesa, हिन्दी (Hindi), Hinglish eta 195+ hizkuntza global';

  @override
  String get home_screen_widgets => 'Hasierako pantailako widgetak';

  @override
  String get widgets_sub =>
      'Zuzeneko Android widget-ak: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch aplikazioa';

  @override
  String get wear_os_sub =>
      'Smartwatch laguna, fitxak, konplikazioak eta bizi-biziak';

  @override
  String get goals_wellness => 'HELBURUAK ETA ONGIZATEAREN IKUSPEGIA';

  @override
  String get nutrition_targets => 'Elikadura helburuak eta makro zatiketa';

  @override
  String get nutrition_targets_sub =>
      'Kaloria helburua, proteina, karbohidratoak, gantz eta ura helburua';

  @override
  String get weekly_recap => 'Asteroko ongizatearen laburpena';

  @override
  String get weekly_recap_sub =>
      '7 eguneko kaloria batez bestekoa, makro ratioa eta egun onena';

  @override
  String get streaks_milestones => 'Marra eta mugarriak';

  @override
  String get streaks_sub => 'Lore-marra aktiboak, txapak eta lorpenak';

  @override
  String get connected_devices => 'KONEKTATUAK ETA EKOSISTEMA';

  @override
  String get devices_hub => 'Gailuak eta Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ingurua eta eguraldia';

  @override
  String get surroundings_sub =>
      'Airearen kalitatea (AQI), UV indizea eta eguraldia hidratatzeko aholkuak';

  @override
  String get bloomi_pro => 'Bloomi Pro harpidetza';

  @override
  String get bloomi_pro_sub =>
      'AI Planaren entrenatzailea, hasierako pantailako 5 widget eta bitalen jarraipena';

  @override
  String get about_security => 'ETA SEGURTASUNARI BURUZ';

  @override
  String get about_bloomi => 'Bloomi buruz';

  @override
  String get about_bloomi_sub => 'Eraiki zehaztapenak, bertsioa, atribuzioak';

  @override
  String get privacy_policy => 'Pribatutasun politika';

  @override
  String get privacy_policy_sub =>
      'Lineaz kanpoko lehenik, gailuko datu-arkitektura';

  @override
  String get terms_conditions => 'Baldintzak eta baldintzak';

  @override
  String get terms_conditions_sub =>
      'Zerbitzu-baldintzak eta ongizate-jarraibideak';

  @override
  String get delete_account => 'Ezabatu kontua eta datuak';

  @override
  String get delete_account_sub =>
      'Ezabatu itzulezinean tokiko SQLite datuak eta hodeiko babeskopiak';

  @override
  String get healthy_habits => 'Eraiki ongizate-ohitura leunak eta iraunkorrak';

  @override
  String get all_logs => 'Nire jarraipenaren datuak eta erregistroak';

  @override
  String get search_language =>
      'Bilatu hizkuntzaren edo jatorrizko idazkeraren arabera...';

  @override
  String get languages_available => 'Eskuragarri dauden hizkuntzak';

  @override
  String get no_matching_languages => 'Ez da bat datorren hizkuntzarik aurkitu';

  @override
  String get try_searching =>
      'Saiatu jatorrizko idazkeraren edo ingelesaren ortografiaren arabera bilatzen';

  @override
  String get partially_translated => 'Partzialki itzulita';

  @override
  String get complete_translation => 'Osatu';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Hizkuntza ezarri da $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Ingurua eta Ingurunea';

  @override
  String get surroundings_aqi => 'Airearen Kalitatearen Indizea';

  @override
  String get surroundings_uv => 'UV indizea';

  @override
  String get surroundings_temp => 'Tenperatura';

  @override
  String get surroundings_humidity => 'Hezetasuna';

  @override
  String get surroundings_hydration_advice =>
      'Ondo hidratatuta egon egungo eguraldi baldintzetan.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Bilatu janaria';

  @override
  String get food_quick_barcode => 'Eskaneatu barra-kodea 👑';

  @override
  String get food_quick_water => 'Gehitu ura';

  @override
  String get food_quick_custom => 'Janari pertsonalizatuak';

  @override
  String get surroundings_good => 'Ona';

  @override
  String get surroundings_moderate => 'Moderatua';

  @override
  String get surroundings_unhealthy => 'Osasungaitza';

  @override
  String get notifications_title => 'Jakinarazpenak eta alertak';

  @override
  String get notifications_empty => 'Ez dago jakinarazpen berririk';

  @override
  String get notifications_mark_read => 'Markatu guztiak Irakurri gisa';

  @override
  String get notifications_clear => 'Garbitu guztiak';

  @override
  String get reminders => 'Abisuaren ezarpenak';

  @override
  String get notifications => 'Push jakinarazpenak';

  @override
  String get reminders_breakfast_title => 'Gosariaren abisua 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Egun on! Gosari elikagarri bat hartzeko ordua $time-n.';
  }

  @override
  String get reminders_lunch_title => 'Bazkariaren oroigarria 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pausatu eta gozatu $time-n bazkari orekatu eta arduratsu batez.';
  }

  @override
  String get reminders_dinner_title => 'Afariaren oroigarria 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time-n afari arin eta atsegina hartzeko ordua.';
  }

  @override
  String get reminders_water_title => 'Hidratazioa bultzada 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ur edalontzi fresko bat edateko garaia! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Asteko pisaketa ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Jarraitu zure asteko gorputzaren neurketak Bloomi-n ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Oheratu orduko Haizea 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Deskantsu eta prestatu lo lasai baterako ( $time ).';
  }

  @override
  String get onboard_welcome => 'Ongi etorri Bloomi-ra';

  @override
  String get onboard_sub =>
      'Zure lagunarteko, lineaz kanpoko lehen osasun eta elikadura lagun.';

  @override
  String get onboard_get_started => 'Hasi';

  @override
  String get onboard_sign_in => 'Hasi saioa';

  @override
  String get onboard_skip => 'Saltatu';

  @override
  String get onboard_choose_goal => 'Zein da zure ongizate helburu nagusia?';

  @override
  String get onboard_goal_weight_loss => 'Pisu galera leuna';

  @override
  String get onboard_goal_muscle => 'Muskulu-irabazia eta indarra';

  @override
  String get onboard_goal_energy => 'Eguneko energia eta bizitasuna';

  @override
  String get onboard_goal_habits => 'Kontzienteki Elikadura Osasungarria';

  @override
  String get onboard_about_you => 'Kontaiguzu zeure buruari buruz';

  @override
  String get onboard_lifestyle => 'Zure eguneroko errutina';

  @override
  String get onboard_permissions_title => 'Baimenak eta Sistemarako sarbidea';

  @override
  String get onboard_permissions_sub =>
      'Eman urratsak, entrenamenduak eta abisuak sinkronizatzeko sarbidea.';

  @override
  String get onboard_plan_ready_title =>
      'Zure Plan pertsonalizatua prest dago!';

  @override
  String get onboard_plan_ready_sub =>
      'Elikadura eta ongizaterako ibilbide leuna eta pertsonalizatua egin dugu zuretzat.';

  @override
  String get onboard_enter_bloomi => 'Sartu Bloomi';

  @override
  String get insights_weekly_report => 'Asteroko ongizatearen laburpena';

  @override
  String insights_best_day(Object day) {
    return 'Koherentzia onenaren eguna: $day';
  }

  @override
  String get insights_streaks_badges => 'Marra eta mugarriak';

  @override
  String insights_unlocked_on(Object date) {
    return 'Desblokeatua: $date';
  }

  @override
  String get insights_keep_going => 'Jarrai ezazu aurrerapen zoragarria!';

  @override
  String get widgets_title => 'Hasierako pantailako widgetak';

  @override
  String widgets_active_count(Object count) {
    return 'Widget aktiboak: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Urratsak eta eraztun aktiboa';

  @override
  String get widgets_water_title => 'Hidratazioaren erregistro azkarra';

  @override
  String get widgets_mascot_title => 'Bloomi maskota laguna';

  @override
  String get wear_os_title => 'Erabili OS Smartwatch';

  @override
  String get wear_os_connected => 'Watch-era konektatuta';

  @override
  String get wear_os_sync => 'Sinkronizatu erlojuaren datuak';

  @override
  String get theme_title => 'Itxura eta gaia';

  @override
  String get theme_mode => 'Gaiaren modua';

  @override
  String get theme_light => 'Argia';

  @override
  String get theme_dark => 'Iluna';

  @override
  String get theme_system => 'Sistema';

  @override
  String get theme_background_palette => 'Atzeko planoko paleta';

  @override
  String get units_title => 'Neurketa-unitateak';

  @override
  String get units_metric => 'Metrikoa (kg, cm, ml)';

  @override
  String get units_imperial => 'Inperiala (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ezin da kargatu aginte-panela';

  @override
  String get home_health_permission_req => 'Health Connect baimena behar da';

  @override
  String get home_health_permission_desc =>
      'Bloomik Health Connect baimena behar du urrats errealak, bihotz-maiztasuna eta etxeko mugikorreko widget-ak denbora errealean sinkronizatzeko.';

  @override
  String get home_allow_health => 'Baimendu Health Connect';

  @override
  String get home_ready_mindful_day => 'Prest egun gogotsu baterako? ✨';

  @override
  String get home_quick_add => 'Gehitu azkarra';

  @override
  String get home_live_gps => 'Zuzeneko GPSa';

  @override
  String get home_calories_remaining_label => 'GAINERAKO KALORIAK';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Jana: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Sakatu Uraren jarraipena egiteko 💧';

  @override
  String get home_water_goal_reached => 'Eguneko helburua lortuta 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml eguneroko helburura';
  }

  @override
  String get home_details => 'Xehetasunak';

  @override
  String get home_upgrade_plan_desc =>
      'Eguneratu eguneroko helburuak eta AI plan pertsonalizatuak desblokeatzeko';

  @override
  String get home_unlock => 'Desblokeatu 👑';

  @override
  String get home_quick_log_hint => 'Grabatu azkar ongizate sarrera bat';

  @override
  String get food_serving_size => 'Zerbitzatu Tamaina';

  @override
  String get food_serving_grams => 'Zerbitzatu (g)';

  @override
  String get food_number_servings => 'Ano-kopurua';

  @override
  String get food_calories_per_serving => 'Kaloriak anoa bakoitzeko';

  @override
  String get food_recipe_ingredients => 'Osagaiak';

  @override
  String get food_recipe_add_ingredient => 'Gehitu osagaia';

  @override
  String get food_recipe_directions => 'Argibideak eta oharrak';

  @override
  String get food_recipe_total => 'Errezeta Elikadura osoa';

  @override
  String get food_recipe_per_serving => 'Zerbitzari bakoitzeko Elikadura';

  @override
  String get food_recipe_saved_toast =>
      'Janari pertsonalizatuak ongi gorde dira!';

  @override
  String get food_barcode_found => 'Aurkitutako produktua!';

  @override
  String get food_barcode_not_found_desc =>
      'Ezin izan dugu barra-kode hau aurkitu datu-base irekian. Janari pertsonalizatu gisa gehi dezakezu.';

  @override
  String get food_add_custom_btn => 'Gehitu janari pertsonalizatua';

  @override
  String get food_scan_again => 'Eskaneatu berriro';

  @override
  String get food_review_items => 'Berrikusi hautemandako elikagaiak';

  @override
  String get food_review_hint =>
      'Egokitu kantitateak edo kendu ezagutzen ez den elementua';

  @override
  String get food_log_selected => 'Erregistratu hautatutako elikagaiak';

  @override
  String get food_favourites_title => 'Elikagai gogokoenak';

  @override
  String get food_recent_title => 'Azken Elikagaiak';

  @override
  String get food_no_favourites =>
      'Oraindik ez dago janari gogokorik. Sakatu bihotza edozein janari hemen gordetzeko.';

  @override
  String get food_no_recents =>
      'Ez da aurkitu berriki erregistratutako elikagairik.';

  @override
  String get food_nutrition_details_title => 'Eguneko Elikadura Xehetasunak';

  @override
  String get food_macro_protein_label => 'Proteinen matxura';

  @override
  String get food_macro_carbs_label => 'Karbohidratoen matxura';

  @override
  String get food_macro_fat_label => 'Gantz Matxura';

  @override
  String get food_macro_fiber_label => 'Zuntzaren matxura';

  @override
  String get food_daily_target_comparison => 'Helburuen Konparaketa';

  @override
  String food_target_label(Object target) {
    return 'Helburua: $target';
  }

  @override
  String get food_edit_entry => 'Editatu egunkariko sarrera';

  @override
  String get food_delete_entry => 'Ezabatu sarrera';

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
    return '$current $target ml';
  }

  @override
  String get water_intake_history => 'Gaurko Ur Erregistroak';

  @override
  String get water_no_logs_today =>
      'Gaur oraindik ez da urik sartu. Hidratatu eta sakatu gehitzeko botoi azkar bat!';

  @override
  String get water_adjust_goal => 'Egokitu Eguneko Helburua';

  @override
  String get health_connect_banner => 'Health Connect-era konektatuta';

  @override
  String get health_vitals_summary => 'Eguneko osasun-bizitarriak';

  @override
  String get health_latest_heart_rate => 'Azken bihotz-maiztasuna';

  @override
  String get health_latest_bp => 'Odol-presioa';

  @override
  String get health_latest_spo2 => 'Odol Oxigenoa';

  @override
  String get health_latest_glucose => 'Odol Glukosa';

  @override
  String get health_latest_weight => 'Pisua';

  @override
  String get health_latest_sleep => 'Loaren Iraupena';

  @override
  String get health_add_manual => 'Gehitu eskuzko neurketa';

  @override
  String get health_history_trends => 'Joera historikoak';

  @override
  String get health_sync_success => 'Ondo sinkronizatu dira osasun datuak!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ordu $mins min';
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
  String get health_devices_title => 'Konektatutako gailuak eta eramangarriak';

  @override
  String get health_devices_desc =>
      'Kudeatu parekatuta dauden erloju adimentsuak, fitness jarraitzaileak eta osasun sentsoreak.';

  @override
  String get health_workout_editor_title => 'Editatu entrenamendua';

  @override
  String get health_workout_name_label => 'Entrenamenduaren izena';

  @override
  String get health_workout_duration_label => 'Iraupena (minutuak)';

  @override
  String get health_workout_calories_label => 'Kaloria estimatua (kcal)';

  @override
  String get health_workout_date_label => 'Data eta Ordua';

  @override
  String get plan_daily_wellness_roadmap =>
      'Zure ibilbide-orri pertsonalizatua';

  @override
  String get plan_morning_routine => 'Goizeko Errutina';

  @override
  String get plan_afternoon_routine => 'Eguerdian Ongizatea';

  @override
  String get plan_evening_routine => 'Arratsaldeko Haizea';

  @override
  String get plan_coach_badge => 'Bloomi AI entrenatzailea';

  @override
  String get plan_weekly_overview => '7 eguneko Wellness Focus';

  @override
  String get plan_targets_title => 'Ongizatearen helburuak eta helburuak';

  @override
  String get plan_calorie_budget_label => 'Eguneko kaloria aurrekontua';

  @override
  String get plan_water_budget_label => 'Eguneko Uraren Helburua';

  @override
  String get plan_step_budget_label => 'Eguneko Urratsaren Helburua';

  @override
  String get plan_macro_split_label => 'Makronutrienteen ratioa';

  @override
  String get profile_personal_details => 'Datu pertsonalak';

  @override
  String get profile_body_stats => 'Gorputzaren neurriak';

  @override
  String get profile_app_preferences => 'Hobespenak eta aplikazioen ezarpenak';

  @override
  String get profile_edit_name_hint => 'Zure izena';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Altuera ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Pisua ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Adina';

  @override
  String get profile_gender_male => 'Gizonezkoa';

  @override
  String get profile_gender_female => 'Emakumezkoa';

  @override
  String get profile_gender_other => 'Bestela / Nahiago ez esatea';

  @override
  String get profile_activity_sedentary => 'Sedentarioa (ariketa gutxi edo ez)';

  @override
  String get profile_activity_light => 'Arina aktiboa (1-3 egun/astean)';

  @override
  String get profile_activity_moderate => 'Ertain aktiboa (3-5 egun/astean)';

  @override
  String get profile_activity_very => 'Oso aktiboa (6-7 egun/astean)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion aplikazioa';

  @override
  String get settings_wear_os_desc =>
      'Instalatu Bloomi fitxa eta konplikazioa zure Wear OS erlojuan kaloria, ura eta urratsak ikusteko.';

  @override
  String get settings_widgets_header => 'Android widget interaktiboak';

  @override
  String get settings_widgets_desc =>
      'Ainguratu denbora errealeko widget-ak gailuaren hasierako pantailan berehala eguneratzeko.';

  @override
  String get settings_about_header => 'Bloomi buruz';

  @override
  String get settings_about_version => 'Bertsioa';

  @override
  String get settings_about_build => 'Eraiki 100';

  @override
  String get settings_about_credits =>
      'Kontu handiz egina, bizimodu osasuntsua izateko.';

  @override
  String get settings_terms_header => 'Baldintzak';

  @override
  String get settings_privacy_header => 'Pribatutasun-politika';

  @override
  String get settings_delete_header => 'Ezabatu kontua eta datuak';

  @override
  String get settings_delete_warning =>
      'Ekintza hau ezin da desegin. Zure otordu, entrenamendu, vital eta profil guztiak betiko ezabatuko dira.';

  @override
  String get settings_delete_confirm_btn => 'Ezabatu betiko';

  @override
  String get onboard_welcome_headline => 'Ongi etorri Bloomi-ra ✨';

  @override
  String get onboard_welcome_tagline =>
      'Zure bizitzaren inguruan diseinatutako ongizatearen jarraipena leuna eta arduratsua.';

  @override
  String get onboard_step_about => 'Zuri buruz';

  @override
  String get onboard_step_goals => 'Zure helburuak';

  @override
  String get onboard_step_lifestyle => 'Eguneroko Ohiturak';

  @override
  String get onboard_step_permissions => 'Baimenak';

  @override
  String get onboard_step_plan => 'Prest!';

  @override
  String get onboard_health_connect_perm => 'Health Connect sarbidea';

  @override
  String get onboard_step_sensors_perm => 'Urrats-kontagailua sentsorea';

  @override
  String get onboard_notif_perm => 'Kontuan izan abisuak eta jakinarazpenak';

  @override
  String get onboard_camera_perm =>
      'Kamera (barra-kodeak eta elikagaien eskanerra)';

  @override
  String get onboard_grant_permissions => 'Eman Baimenak';

  @override
  String get onboard_continue_dashboard => 'Ireki Arbela';

  @override
  String get notif_channel_hydration_name => 'Hidratazioaren bultzadak';

  @override
  String get notif_channel_hydration_desc =>
      'Uraren abisu leunak egunean zehar';

  @override
  String get notif_channel_nutrition_name => 'Otorduak eta elikadura abisuak';

  @override
  String get notif_channel_nutrition_desc =>
      'Gosari, bazkari eta afarien abisuaren abisuak';

  @override
  String get notif_channel_steps_name => 'Urratsaren Mugarriak';

  @override
  String get notif_channel_steps_desc =>
      'Ospakizunak eguneroko urratseko helburuak lortzeko garaian';

  @override
  String get notif_channel_vitals_name => 'Osasun eta Vital Kontrolak';

  @override
  String get notif_channel_vitals_desc =>
      'Pisua eta oheratu orduko haizearen abisuak';

  @override
  String get notif_action_log_water => '💧 Erregistratu +250ml';

  @override
  String get notif_action_snooze => 'Errepikatu 15 m';

  @override
  String get notif_action_log_meal => '🥗 Bazkaria';

  @override
  String get language => 'Hizkuntza';

  @override
  String get share => 'Partekatu';

  @override
  String common_days(Object count) {
    return 'Duela ${count}d';
  }
}
