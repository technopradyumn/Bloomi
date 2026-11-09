// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for South Ndebele (`nr`).
class AppLocalizationsNr extends AppLocalizations {
  AppLocalizationsNr([String locale = 'nr']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ikhaya';

  @override
  String get nav_today => 'Namhlanjesi';

  @override
  String get nav_plan => 'Hlela';

  @override
  String get nav_food => 'Ukudla';

  @override
  String get nav_food_diary => 'Idayari yokudla';

  @override
  String get nav_workout => 'Ilogo yokuzivocavoca';

  @override
  String get nav_health => 'Ipilo';

  @override
  String get nav_profile => 'Iphrofayili';

  @override
  String get save => 'Gcina';

  @override
  String get cancel => 'Khansela';

  @override
  String get delete => 'Susa';

  @override
  String get edit => 'Hlela';

  @override
  String get done => 'Kwenziwe';

  @override
  String get close => 'Vala';

  @override
  String get back => 'Emuva';

  @override
  String get next => 'Okulandelako';

  @override
  String get continue_btn => 'Ragela phambili';

  @override
  String get confirm => 'Qinisekisa';

  @override
  String get search => 'Setjha';

  @override
  String get filter => 'Hlunga';

  @override
  String get all => 'Boke';

  @override
  String get active => 'Isebenza';

  @override
  String get today => 'Namhlanjesi';

  @override
  String get yesterday => 'Izolo';

  @override
  String get tomorrow => 'Kusasa';

  @override
  String get add => 'Faka';

  @override
  String get remove => 'Susa';

  @override
  String get refresh => 'Vuselela';

  @override
  String get retry => 'Linga godu';

  @override
  String get error => 'Iphutha';

  @override
  String get success => 'Ipumelelo';

  @override
  String get loading => 'Ukulayisha...';

  @override
  String get no_data => 'Ayikho idatha etholakalako';

  @override
  String get offline => 'Imodi engaxhunyiwe ku-inthanethi';

  @override
  String get offline_sub =>
      'Amatjhuguluko azokuvumelanisa nasele ahlanganiswe godu';

  @override
  String get undo => 'Hlehlisa';

  @override
  String get portion => 'Ingcenye';

  @override
  String get quantity => 'Ubunengi';

  @override
  String get unit => 'Iyunithi';

  @override
  String get clear => 'Sula';

  @override
  String get select => 'Khetha';

  @override
  String get apply => 'Faka isibawo';

  @override
  String get reset => 'Setha kabutjha';

  @override
  String get ok => 'Kulungile';

  @override
  String get yes => 'Iye';

  @override
  String get no => 'Awa';

  @override
  String get optional => 'Okungakhethwa kukho';

  @override
  String get calories => 'Amakhalori';

  @override
  String get protein => 'Iphrotheyini';

  @override
  String get carbs => 'Ama-carbs';

  @override
  String get fat => 'Amafutha';

  @override
  String get fiber => 'Ifayibha';

  @override
  String get water => 'Amanzi';

  @override
  String get steps => 'Amagadango';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'ama-lbs';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'ngaphakathi';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ama-awa';

  @override
  String get minutes => 'imizuzu';

  @override
  String get serving => 'Ukukhonza';

  @override
  String get servings => 'Ukuphakela';

  @override
  String get serving_size => 'Ubukhulu bokuphakela';

  @override
  String get per_100g => 'nge-100g';

  @override
  String get india => 'I-India';

  @override
  String get asia => 'I-Asia';

  @override
  String get europe => 'I-Europe';

  @override
  String get middle_east => 'I-Middle East';

  @override
  String get africa => 'I-Afrika';

  @override
  String get americas => 'I-Amerikha';

  @override
  String get home_title => 'Ikhaya';

  @override
  String get home_greeting_morning => 'Sawubona';

  @override
  String get home_greeting_afternoon => 'Ilanga elihle';

  @override
  String get home_greeting_evening => 'Ubusuku obuhle';

  @override
  String get home_streak_title => 'I-Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count amalanga alandelanako',
      one: '1 ukulandelana kwelanga',
      zero: '0 amalanga alandelanako',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Itjhiswe';

  @override
  String get home_calories_budget => 'Isabelomali samakhalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal eseleko';
  }

  @override
  String get home_water_title => 'Ukuthambisa qobe langa';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Amagadango akhanjiweko';

  @override
  String get home_quick_actions => 'Izenzo ezirhabako';

  @override
  String get home_log_meal => 'Isidlo seLogo';

  @override
  String get home_log_water => 'Amanzi we-Log';

  @override
  String get home_log_workout => 'Ukuzivocavoca';

  @override
  String get home_log_weight => 'Isisindo selogi';

  @override
  String get home_insights_title => 'Ilwazi lanamhlanjesi';

  @override
  String get home_quote =>
      'Ukukhetha okuncani okunepilo kwenza amatjhuguluko amahle.';

  @override
  String get home_ai_coach_tip => 'Umqeqetshi we-Bloomi AI';

  @override
  String get home_surroundings => 'Indawo ezizungezeko neMoya';

  @override
  String get home_notifications => 'Izaziso';

  @override
  String get home_daily_score => 'Isikolo sezepilo yangelanga';

  @override
  String get home_view_all => 'Qala koke';

  @override
  String get food_diary_title => 'Idayari yokudla';

  @override
  String get food_breakfast => 'Isidlo sasekuseni';

  @override
  String get food_lunch => 'Isidlo semini';

  @override
  String get food_dinner => 'Isidlo sakusihlwa';

  @override
  String get food_snacks => 'Ukudla okulula';

  @override
  String get food_add_food => 'Faka ukudla';

  @override
  String get food_edit_food => 'Hlela ukudla';

  @override
  String get food_add_breakfast => 'Faka isidlo sasekuseni';

  @override
  String get food_add_lunch => 'Faka isidlo sasemini';

  @override
  String get food_add_dinner => 'Faka isidlo sakusihlwa';

  @override
  String get food_add_snack => 'Faka ukudla okulula';

  @override
  String get food_total_calories => 'Amakhalori woke';

  @override
  String get food_empty_meal =>
      'Akukabi nokudla okulotjhiweko kwesidlo lesi okwamanje';

  @override
  String get food_empty_diary => 'Akukho kudla okutloliweko kwalelilanga';

  @override
  String get food_log_first_meal =>
      'Thepha + ukuloga ukudla kwakho kokuthoma okumnandi';

  @override
  String get food_quick_add => 'Faka msinyana';

  @override
  String get food_search_hint => 'Sesha izitsha, izithelo, i-dal, i-roti...';

  @override
  String get food_custom_recipe => 'Ukudla okwenziwe ngokwezifiso neresiphi';

  @override
  String get food_scan_barcode => 'Skena ibhakhodi';

  @override
  String get food_camera_scan => 'Isikena sokudla se-AI';

  @override
  String get food_recent => 'Ukudla kwakamuva';

  @override
  String get food_favourites => 'Okuthandwako';

  @override
  String get food_macro_summary => 'Ukuhlukaniswa kwama-Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Uqinisekile bona ufuna ukususa into le?';

  @override
  String get food_item_deleted => 'Into yokudla isusiwe';

  @override
  String get food_remaining => 'okuseleko';

  @override
  String get food_consumed => 'kudliwe';

  @override
  String food_of_target(Object target) {
    return 'ye-$target kcal';
  }

  @override
  String get foodSearch_title => 'Setjha ukudla';

  @override
  String get foodSearch_scan_barcode => 'Skena ibhakhodi';

  @override
  String get foodSearch_take_photo => 'Isithombe sokudla';

  @override
  String get foodSearch_custom_food => 'Yenza ukudla okwenziwe ngokwezifiso';

  @override
  String get foodSearch_recent_searches => 'Ukusesha kwakamuva';

  @override
  String get foodSearch_popular => 'Izidlo ezithandwako';

  @override
  String get foodSearch_no_results => 'Akukho kudla okufana nokufuna kwakho';

  @override
  String get barcode_title => 'Isikena sebhakhodi';

  @override
  String get barcode_align =>
      'Hlanganisa ibhakhodi ngaphakathi kwefreyimu yekhamera';

  @override
  String get barcode_not_found => 'Umkhiqizo awutholakali kudathabeyisi';

  @override
  String get barcode_premium_feature =>
      'Ukuskena ibhakhodi kuyatholakala nge-Bloomi Pro';

  @override
  String get camera_title => 'Isikena sokudla se-AI';

  @override
  String get camera_tap_hint => 'Thatha isithombe esikhanyako sesidlo sakho';

  @override
  String get camera_analysing => 'Ukuhlaziya ipuleti lokudla...';

  @override
  String get camera_detected => 'Izinto ezitholweko';

  @override
  String get camera_flash => 'Tjhugulula i-Flash';

  @override
  String get camera_retake => 'Thatha isithombe godu';

  @override
  String get camera_confirm_food => 'Qinisekisa izinto';

  @override
  String get customFood_title => 'Ukudla okwenziwe ngokwezifiso neresiphi';

  @override
  String get customFood_name_hint => 'Isidlo nofana ibizo lesithako';

  @override
  String get customFood_calories_hint => 'Amakhalori (kcal)';

  @override
  String get customFood_protein_hint => 'Iphrotheyini (g)';

  @override
  String get customFood_carbs_hint => 'Ama-carbs (g)';

  @override
  String get customFood_fat_hint => 'Amafutha (g)';

  @override
  String get customFood_save => 'Gcina iresiphi';

  @override
  String get water_tracker_title => 'Umlandeleli wamanzi';

  @override
  String get water_daily_target => 'Umnqopho wokuthambisa amanzi qobe langa';

  @override
  String get water_logged_today => 'Ngena Namhlanjesi';

  @override
  String get water_add_glass => '+250 ml yengilazi';

  @override
  String get water_add_bottle => '+500 ml Ibhodlela';

  @override
  String get water_custom_amount => 'Inani elikhethekileko';

  @override
  String get water_reminder_tip =>
      'Sela amanzi qobe ilanga loke ukuze ube namandla angaguqukiko.';

  @override
  String water_logged_toast(Object amount) {
    return 'I-$amount ml yamanzi 💧';
  }

  @override
  String get workout_title => 'Ilogo yokuzivocavoca';

  @override
  String get workout_add_exercise => 'Faka ukuzivocavoca';

  @override
  String get workout_cardio => 'I-Cardio';

  @override
  String get workout_strength => 'Amandla';

  @override
  String get workout_yoga => 'I-Yoga nokuTjhuguluka';

  @override
  String get workout_duration => 'Isikhathi';

  @override
  String get workout_intensity => 'Ukuqina';

  @override
  String get workout_calories_burned => 'Amakhalori atjhisiweko';

  @override
  String get workout_empty => 'Akukho ukuzivocavoca okulotjhiweko namhlanjesi';

  @override
  String get workout_save_success => 'Ukuzivocavoca kugcinwe kuhle!';

  @override
  String get workout_type => 'Umhlobo wokuzivocavoca';

  @override
  String get workout_notes => 'Amanothi nokucabanga';

  @override
  String get health_overview_title => 'Ipilo nezinto eziqakathekileko';

  @override
  String get health_heart_rate => 'Ukubetha kwehliziyo';

  @override
  String get health_blood_oxygen => 'I-oksijini yeengazi (SpO2)';

  @override
  String get health_blood_pressure => 'Umfutho weengazi';

  @override
  String get health_blood_glucose => 'Iglukhozi yeengazi';

  @override
  String get health_body_temperature => 'Izinga lokutjhisa lomzimba';

  @override
  String get health_sleep_tracking => 'Ukulandelela ukulala';

  @override
  String get health_weight_tracking => 'Ubunzima nokubunjwa komzimba';

  @override
  String get health_waist_hip => 'Isilinganiso sokhalo ukuya e-hip';

  @override
  String get health_devices_hub => 'Amadivayisi ne-Smartwatch Hub';

  @override
  String get health_sync_now => 'Vumelanisa idatha yezamaphilo';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Ukuvumelanisa kokugcina: $time';
  }

  @override
  String get health_manual_entry => 'Ukufaka ngesandla kwezamaphilo';

  @override
  String get health_metric_detail => 'Imininingwana yemethrikhi';

  @override
  String get health_connected_sensors => 'Iinzwa zezamaphilo ezihlangeneko';

  @override
  String get plan_title => 'Ihlelo langamalanga';

  @override
  String get plan_weekly_title => 'Ihlelo lezamaPhilo yangeveke';

  @override
  String get plan_calorie_target => 'Ithagethi yekhalori';

  @override
  String get plan_water_target => 'Umnqopho wokuthambisa amanzi';

  @override
  String get plan_step_target => 'Ithagethi yegadango';

  @override
  String get plan_sleep_target => 'Umnqopho wokulala';

  @override
  String get plan_meal_suggestions => 'Iimphakamiso zokudla';

  @override
  String get plan_healthy_habits => 'Imikhuba ephilileko namathiphu';

  @override
  String get plan_coach_advice => 'Iincomo zomqeqetshi we-Bloomi AI';

  @override
  String get plan_generated_title =>
      'Ihlelo langamalanga elenziwe ngomuntu mathupha';

  @override
  String get profile_title => 'Iphrofayili';

  @override
  String get profile_edit => 'Hlela iphrofayili';

  @override
  String get profile_name => 'Ibizo';

  @override
  String get profile_age => 'Iminyaka';

  @override
  String get profile_gender => 'Ubulili';

  @override
  String get profile_height => 'Ubude';

  @override
  String get profile_weight => 'Ubunzima';

  @override
  String get profile_goal => 'Umnqopho omkhulu';

  @override
  String get profile_activity_level => 'Izinga lomsebenzi';

  @override
  String get profile_stats => 'Iimbalo zami zempilo';

  @override
  String get profile_saved => 'Iphrofayili ivuselelwe ngempumelelo';

  @override
  String get profile_bmi => 'I-Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Ubulungu';

  @override
  String get settings => 'Amasethingi';

  @override
  String get preferences_habits => 'IZINTO EZITHANDWAKO NEMIKHUBA';

  @override
  String get appearance_theme => 'Ukubukeka nesihloko';

  @override
  String get appearance_theme_sub =>
      'Ubumnyama, ukukhanya, iModi yeSistimu kanye neenkhetho zesendlalelo se-app';

  @override
  String get permissions => 'Iimvume nokufikelela kwesistimu';

  @override
  String get permissions_sub =>
      'Ukuxhuma kwezamaphilo, iinzwa zesinyathelo, i-GPS, izaziso nekhamera';

  @override
  String get reminders_notifications => 'Iinkhumbuzo nezaziso';

  @override
  String get reminders_sub =>
      'Isikhathi sokudla, amanzi, ukuhlolwa kwesisindo kanye nezikhumbuzo zokulala';

  @override
  String get units_of_measurement => 'Amayunithi wokulinganisa';

  @override
  String get units_sub =>
      'Imethrikhi (kg, cm, ml, km) nofana i-Imperial (ama-lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Ilimi le-app';

  @override
  String get language_sub =>
      'IsiNgisi, हिन्दी (Hindi), i-Hinglish & amalimi wephasi loke ali-195+';

  @override
  String get home_screen_widgets => 'Amawijethi wesikrini sasekhaya';

  @override
  String get widgets_sub =>
      'Amawijethi we-Android aphilako: I-Hub, Amagadango, Amanzi, Umsoco & I-Mascot';

  @override
  String get wear_os_watch_app => 'Yembatha i-OS Watch App';

  @override
  String get wear_os_sub =>
      'Umngani wewatjhi ehlakaniphileko, amathayili, ubudisi kanye nama-vitals aphilako';

  @override
  String get goals_wellness => 'IMIGOMO NOKUQONDA NGOKUPHILA';

  @override
  String get nutrition_targets => 'Iinqophiso zokudla nokuhlukaniswa okukhulu';

  @override
  String get nutrition_targets_sub =>
      'Umnqopho wekhalori, amaphrotheyini, ama-carbs, amafutha namanzi';

  @override
  String get weekly_recap => 'Ukubuyekezwa kwepilo yangeveke';

  @override
  String get weekly_recap_sub =>
      'isilinganiso samakhalori samalanga ali-7, isilinganiso esikhulu & ilanga elihle khulu';

  @override
  String get streaks_milestones => 'Iinqophiso neenqophiso';

  @override
  String get streaks_sub =>
      'Imigqa yamathuthumbo asebenzako, amabheji nepumelelo';

  @override
  String get connected_devices => 'AMADIVAYISI AHLUNYISWEKO NE-ECOSYSTEM';

  @override
  String get devices_hub => 'Amadivayisi ne-Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'I-Health Connect, i-Galaxy Watch, i-Pixel Watch, i-Garmin';

  @override
  String get surroundings_weather => 'Indawo ezizungezeko nobujamo bezulu';

  @override
  String get surroundings_sub =>
      'Ikhwalithi yomoya (AQI), inkomba ye-UV kanye namathiphu wokuthambisa ubujamo bezulu';

  @override
  String get bloomi_pro => 'Ukubhalisela i-Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'I-AI Plan Coach, amawijethi wesikrini sasekhaya esi-5 & ukulandelela izinto eziqakathekileko';

  @override
  String get about_security => 'NGOKUPHEPHA';

  @override
  String get about_bloomi => 'Mayelana no-Bloomi';

  @override
  String get about_bloomi_sub => 'Iinqophiso zokwakha, inguqulo, ukunikela';

  @override
  String get privacy_policy => 'UmThethomgomo wemfihlo';

  @override
  String get privacy_policy_sub =>
      'Ukwakhiwa kwedatha okungekho ku-inthanethi kokuthoma, okusedivayisini';

  @override
  String get terms_conditions => 'Imibandela nemibandela';

  @override
  String get terms_conditions_sub =>
      'Imibandela yesevisi nemihlahlandlela yezamaphilo';

  @override
  String get delete_account => 'Susa i-akhawunti nedatha';

  @override
  String get delete_account_sub =>
      'Sula ngokungabuyiseleki emuva idatha ye-SQLite yendawo kanye nama-backups we-cloud';

  @override
  String get healthy_habits =>
      'Yakha imikghwa yokuphila kuhle emnene, ehlala isikhathi eside';

  @override
  String get all_logs => 'Idatha yami elandelelweko namalogi';

  @override
  String get search_language => 'Setjha ngelimi nofana ngomtlolo womdabu...';

  @override
  String get languages_available => 'Iilwimi ezitholakalako';

  @override
  String get no_matching_languages => 'Akukho lilimi elifanako elitholakeleko';

  @override
  String get try_searching =>
      'Linga ukusesha ngomtlolo womdabu nofana ngesipeledi sesiNgisi';

  @override
  String get partially_translated => 'Ihunyutshwe kancani';

  @override
  String get complete_translation => 'Qedela';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ilimi libekwe ku-$name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Indawo ezizungezeko nebhoduluko';

  @override
  String get surroundings_aqi => 'Inkomba yekhwalithi yomoya';

  @override
  String get surroundings_uv => 'I-UV Index';

  @override
  String get surroundings_temp => 'Izinga lokutjhisa';

  @override
  String get surroundings_humidity => 'Umswakama';

  @override
  String get surroundings_hydration_advice =>
      'Hlala unamanzi amanengi ebujameni bezulu bamanje.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Setjha ukudla';

  @override
  String get food_quick_barcode => 'Skena ibhakhodi 👑';

  @override
  String get food_quick_water => 'Faka amanzi';

  @override
  String get food_quick_custom => 'Ukudla okwenziwe ngokwezifiso';

  @override
  String get surroundings_good => 'Kuhle';

  @override
  String get surroundings_moderate => 'Okulinganiselweko';

  @override
  String get surroundings_unhealthy => 'Okungakalungi';

  @override
  String get notifications_title => 'Izaziso nezexwayiso';

  @override
  String get notifications_empty => 'Azikho izaziso ezitjha';

  @override
  String get notifications_mark_read => 'Maka koke njengokufundwa';

  @override
  String get notifications_clear => 'Sula koke';

  @override
  String get reminders => 'Amasethingi wesikhumbuzo';

  @override
  String get notifications => 'Izaziso';

  @override
  String get reminders_breakfast_title => 'Isikhumbuzo sesidlo sasekuseni 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Sawubona! Isikhathi sesidlo sasekuseni esinomsoco ngo-$time .';
  }

  @override
  String get reminders_lunch_title => 'Isikhumbuzo sesidlo sasemini 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Yima begodu uthokozele isidlo sasemini esilinganiselweko, esinengqondo ku-$time .';
  }

  @override
  String get reminders_dinner_title => 'Isikhumbuzo sesidlo sakusihlwa 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Isikhathi sesidlo sakusihlwa esilula, esisuthisako ku-$time .';
  }

  @override
  String get reminders_water_title => 'Ukuthambisa amanzi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Isikhathi sokunatha ingilazi yamanzi afretjhi! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Ukulinganisa qobe veke ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Landelela amazinga womzimba wakho weveke ku-Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Isikhathi sokulala 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Khululeka begodu ulungiselele ukulala kuhle ( $time ).';
  }

  @override
  String get onboard_welcome => 'Siyakwamukela ku-Bloomi';

  @override
  String get onboard_sub =>
      'Umngani wakho onobungani, ongasebenziko wezamaphilo nokondleka.';

  @override
  String get onboard_get_started => 'Thoma';

  @override
  String get onboard_sign_in => 'Ngena Ngena';

  @override
  String get onboard_skip => 'Yeqa';

  @override
  String get onboard_choose_goal =>
      'Yini umnqopho wakho omkhulu wokuphila kuhle?';

  @override
  String get onboard_goal_weight_loss => 'Ukunciphisa umzimba';

  @override
  String get onboard_goal_muscle => 'Ukuzuza kwemisipha namandla';

  @override
  String get onboard_goal_energy => 'Amandla wangamalanga nokuphila';

  @override
  String get onboard_goal_habits => 'Ukudla okunepilo';

  @override
  String get onboard_about_you => 'Sitjele Ngawe';

  @override
  String get onboard_lifestyle => 'Indlela oyenza ngayo qobe langa';

  @override
  String get onboard_permissions_title => 'Iimvume nokufikelela kwesistimu';

  @override
  String get onboard_permissions_sub =>
      'Nikela ukufikelela emagadango wokuvumelanisa, ukuzivocavoca, kanye nezikhumbuzo.';

  @override
  String get onboard_plan_ready_title =>
      'Ihlelo lakho elikhethekileko lilungile!';

  @override
  String get onboard_plan_ready_sub =>
      'Senze imephu yendlela yokondleka nokuphila kuhle elula, eyenziwe ngomuntu mathupha kuwe.';

  @override
  String get onboard_enter_bloomi => 'Faka i-Bloomi';

  @override
  String get insights_weekly_report => 'Ukubuyekezwa kwepilo yangeveke';

  @override
  String insights_best_day(Object day) {
    return 'Ilanga elihle lokuzinza: $day';
  }

  @override
  String get insights_streaks_badges => 'Iinqophiso neenqophiso';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ivuliwe ku-$date';
  }

  @override
  String get insights_keep_going => 'Ragela phambili nentuthuko ehle khulu!';

  @override
  String get widgets_title => 'Amawijethi wesikrini sasekhaya';

  @override
  String widgets_active_count(Object count) {
    return 'Amawijethi asebenzako: $count';
  }

  @override
  String get widgets_hub_title => 'I-Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Amagadango nendandatho esebenzako';

  @override
  String get widgets_water_title => 'Ilogo esheshayo yokuthambisa amanzi';

  @override
  String get widgets_mascot_title => 'Umngani we-Bloomi Mascot';

  @override
  String get wear_os_title => 'Yembatha i-OS Smartwatch';

  @override
  String get wear_os_connected => 'Ixhunywe ku-Watch';

  @override
  String get wear_os_sync => 'Vumelanisa idatha yokubukela';

  @override
  String get theme_title => 'Ukubukeka nesihloko';

  @override
  String get theme_mode => 'Imodi yommongo';

  @override
  String get theme_light => 'Ukukhanya';

  @override
  String get theme_dark => 'Mnyama';

  @override
  String get theme_system => 'Okuzenzakalelayo kweSistimu';

  @override
  String get theme_background_palette => 'Iphalethi yangemuva';

  @override
  String get units_title => 'Amayunithi wokulinganisa';

  @override
  String get units_metric => 'Imethrikhi (kg, cm, ml)';

  @override
  String get units_imperial => 'I-Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Akukghoni ukulayisha ideshibhodi';

  @override
  String get home_health_permission_req => 'Imvumo ye-Health Connect iyafuneka';

  @override
  String get home_health_permission_desc =>
      'I-Bloomi idinga imvumo ye-Health Connect ukudosa amagadango wamambala, ukubetha kwehliziyo, nokuvumelanisa amawijethi wekhaya leselula ngesikhathi sangempela.';

  @override
  String get home_allow_health => 'Vumela ukuxhuma kwezamaphilo';

  @override
  String get home_ready_mindful_day => 'Ukulungele ilanga elihle? ✨';

  @override
  String get home_quick_add => 'Faka msinyana';

  @override
  String get home_live_gps => 'I-GPS ebukhoma';

  @override
  String get home_calories_remaining_label => 'AMAKHALORI ASELELEKO';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kudliwe: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Thepha ukulandelela amanzi 💧';

  @override
  String get home_water_goal_reached => 'Umnqopho wangelanga ufinyelelwe 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ukuya emnqophweni wangamalanga';
  }

  @override
  String get home_details => 'Imininingwana';

  @override
  String get home_upgrade_plan_desc =>
      'Thuthukisa ukuvula amathagethi wangamalanga akhethekileko kanye nehlelo le-AI';

  @override
  String get home_unlock => 'Vula 👑';

  @override
  String get home_quick_log_hint => 'Rekhoda msinyana umtlolo wezamaphilo';

  @override
  String get food_serving_size => 'Ubukhulu bokuphakela';

  @override
  String get food_serving_grams => 'Ukukhonza (g)';

  @override
  String get food_number_servings => 'Inani lokuphakela';

  @override
  String get food_calories_per_serving => 'Amakhalori ngesivinini ngasinye';

  @override
  String get food_recipe_ingredients => 'Iinthako';

  @override
  String get food_recipe_add_ingredient => 'Faka isithako';

  @override
  String get food_recipe_directions => 'Imilayo namanothi';

  @override
  String get food_recipe_total => 'Umsoco opheleleko weresiphi';

  @override
  String get food_recipe_per_serving => 'Ukudla okunomsoco ngamunye';

  @override
  String get food_recipe_saved_toast =>
      'Ukudla okwenziwe ngokwezifiso kugcinwe ngempumelelo!';

  @override
  String get food_barcode_found => 'Umkhiqizo Utholakele!';

  @override
  String get food_barcode_not_found_desc =>
      'Asikwazanga ukuthola ibhakhodi le kudathabeyisi evulekileko. Ungayifaka njengokudla okukhethekileko.';

  @override
  String get food_add_custom_btn => 'Faka ukudla okwenziwe ngokwezifiso';

  @override
  String get food_scan_again => 'Skena godu';

  @override
  String get food_review_items => 'Buyekeza ukudla okutholiweko';

  @override
  String get food_review_hint =>
      'Lungisa amanani nofana ususe nanyana ngiyiphi into engabonakaliko';

  @override
  String get food_log_selected => 'Loga ukudla okukhethiweko';

  @override
  String get food_favourites_title => 'Ukudla okuthandwako';

  @override
  String get food_recent_title => 'Ukudla kwakamuva';

  @override
  String get food_no_favourites =>
      'Akukho ukudla okuthandako okwanje. Thepha ngehliziyo kiyo nanyana ngikuphi ukudla ukubulunga lapha.';

  @override
  String get food_no_recents => 'Akukho kudla okusanda kutholakale.';

  @override
  String get food_nutrition_details_title =>
      'Imininingwana yokudla kwamalanga woke';

  @override
  String get food_macro_protein_label => 'Ukuhlukana kwamaphrotheyini';

  @override
  String get food_macro_carbs_label => 'Ukuhlukaniswa kwama-carbs';

  @override
  String get food_macro_fat_label => 'Ukuhlukaniswa kwamafutha';

  @override
  String get food_macro_fiber_label => 'Ukuhlukana kwefayibha';

  @override
  String get food_daily_target_comparison => 'Ukumadanisa ithagethi';

  @override
  String food_target_label(Object target) {
    return 'Umnqopho: $target';
  }

  @override
  String get food_edit_entry => 'Hlela okufakiweko kwedayari';

  @override
  String get food_delete_entry => 'Susa okufakiweko';

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
    return '$current ye-$target ml';
  }

  @override
  String get water_intake_history => 'Amalogi wamanzi wanamhlanjesi';

  @override
  String get water_no_logs_today =>
      'Akukabi namanzi namhlanjesi. Hlikihla bese uthepha ibhathini lokungezelela msinyana!';

  @override
  String get water_adjust_goal => 'Lungisa umnqopho welanga';

  @override
  String get health_connect_banner => 'Ixhunywe kuHlanganiswa kwezamaPhilo';

  @override
  String get health_vitals_summary =>
      'Iindaba eziqakathekileko zezamaphilo zangamalanga';

  @override
  String get health_latest_heart_rate => 'Ukubetha kwehliziyo kwakamuva';

  @override
  String get health_latest_bp => 'Umfutho weengazi';

  @override
  String get health_latest_spo2 => 'I-oksijini yeengazi';

  @override
  String get health_latest_glucose => 'Iglukhozi yeengazi';

  @override
  String get health_latest_weight => 'Ubunzima';

  @override
  String get health_latest_sleep => 'Isikhathi sokulala';

  @override
  String get health_add_manual => 'Faka ukulinganisa ngezandla';

  @override
  String get health_history_trends => 'Iindlela zomlando';

  @override
  String get health_sync_success => 'Idatha yezamaphilo ivumelaniswe kuhle!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ama-awa $mins imizuzu';
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
      'Amadivayisi ahlanganisiweko nezinto ezigqokwako';

  @override
  String get health_devices_desc =>
      'Phatha amawatjhi ahlakaniphileko, amathrekha wokuphila kuhle, kanye neenzwa zezamaphilo.';

  @override
  String get health_workout_editor_title => 'Hlela ukuzivocavoca';

  @override
  String get health_workout_name_label => 'Ibizo lokuzivocavoca';

  @override
  String get health_workout_duration_label => 'Isikhathi (imizuzu)';

  @override
  String get health_workout_calories_label =>
      'Amakhalori alinganiselweko (kcal)';

  @override
  String get health_workout_date_label => 'Ilanga nesikhathi';

  @override
  String get plan_daily_wellness_roadmap =>
      'Imephu yakho eyenziwe ngomuntu mathupha';

  @override
  String get plan_morning_routine => 'Ihlelo lasekuseni';

  @override
  String get plan_afternoon_routine => 'Ukuphila kuhle kwasemini';

  @override
  String get plan_evening_routine => 'Umoya weNtambama';

  @override
  String get plan_coach_badge => 'Umqeqetshi we-Bloomi AI';

  @override
  String get plan_weekly_overview => 'Ukutjheja ipilo yamalanga ama-7';

  @override
  String get plan_targets_title => 'Iinqophiso neenhloso zepilo ehle';

  @override
  String get plan_calorie_budget_label =>
      'Isabelomali samakhalori wangamalanga';

  @override
  String get plan_water_budget_label => 'Umnqopho wamanzi wangamalanga';

  @override
  String get plan_step_budget_label => 'Umnqopho wegadango langamalanga';

  @override
  String get plan_macro_split_label => 'I-Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Imininingwana yomuntu mathupha';

  @override
  String get profile_body_stats => 'Imilinganiso yomzimba';

  @override
  String get profile_app_preferences => 'Okukhethwa kukho namasethingi we-app';

  @override
  String get profile_edit_name_hint => 'Ibizo lakho';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ubude ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ubunzima ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Iminyaka';

  @override
  String get profile_gender_male => 'Owesilisa';

  @override
  String get profile_gender_female => 'Owesifazana';

  @override
  String get profile_gender_other => 'Okunye / Ngikhetha ukungatjho';

  @override
  String get profile_activity_sedentary =>
      'Ukuhlala phasi (Ukuzithabulula kancani)';

  @override
  String get profile_activity_light => 'Isebenza kancani (1-3 amalanga/iveke)';

  @override
  String get profile_activity_moderate =>
      'Ukusebenza ngokulinganiselweko (amalanga ama-3-5/iveke)';

  @override
  String get profile_activity_very => 'Isebenza khulu (amalanga ama-6-7/iveke)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Faka ithayela le-Bloomi ne-complication ewatjhini lakho le-Wear OS ukuqala amakhalori, amanzi, namagadango.';

  @override
  String get settings_widgets_header => 'Amawijethi we-Android asebenzisanako';

  @override
  String get settings_widgets_desc =>
      'Phina amawijethi wesikhathi sangempela esikrinini sekhaya sedivayisi yakho ukuze uthole izibuyekezo ezisheshayo.';

  @override
  String get settings_about_header => 'Mayelana no-Bloomi';

  @override
  String get settings_about_version => 'Inguqulo 1.0.0';

  @override
  String get settings_about_build => 'Yakha i-100';

  @override
  String get settings_about_credits =>
      'Yenziwe ngokutjheja ukuphila kuhle, okunepilo.';

  @override
  String get settings_terms_header => 'Imibandela nemibandela';

  @override
  String get settings_privacy_header => 'UmThethomgomo wemfihlo';

  @override
  String get settings_delete_header => 'Susa i-akhawunti nedatha';

  @override
  String get settings_delete_warning =>
      'Isenzo lesi angeze sabuyiselwa emuva. Konke ukudla kwakho, ukuzivocavoca, izinto eziqakathekileko, kanye nephrofayili kuzokususwa unomphela.';

  @override
  String get settings_delete_confirm_btn => 'Susa unomphela';

  @override
  String get onboard_welcome_headline => 'Siyakwamukela ku-Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Ukulandelela ipilo ehle, ehlelekileko eyenzelwe ipilo yakho.';

  @override
  String get onboard_step_about => 'Ngawe';

  @override
  String get onboard_step_goals => 'Imigomo yakho';

  @override
  String get onboard_step_lifestyle => 'Imikhuba yangelanga';

  @override
  String get onboard_step_permissions => 'Iimvume';

  @override
  String get onboard_step_plan => 'Ukulungele!';

  @override
  String get onboard_health_connect_perm =>
      'Ukufinyelela kokuxhumanisa kwezamaphilo';

  @override
  String get onboard_step_sensors_perm => 'Inzwa yokubala amagadango';

  @override
  String get onboard_notif_perm => 'Iinkhumbuzo eziqakathekileko nezaziso';

  @override
  String get onboard_camera_perm => 'Ikhamera (ibhakhodi neskena sokudla)';

  @override
  String get onboard_grant_permissions => 'Nikela ngeemvumo';

  @override
  String get onboard_continue_dashboard => 'Vula ideshibhodi';

  @override
  String get notif_channel_hydration_name => 'Ukuthambisa amanzi';

  @override
  String get notif_channel_hydration_desc =>
      'Iinkhumbuzo zamanzi athambileko ilanga loke';

  @override
  String get notif_channel_nutrition_name => 'Iinkhumbuzo zokudla nezokudla';

  @override
  String get notif_channel_nutrition_desc =>
      'Isikhumbuzo sesidlo sasekuseni, semini, nesidlo sakusihlwa';

  @override
  String get notif_channel_steps_name => 'Igadango eliqakathekileko';

  @override
  String get notif_channel_steps_desc =>
      'Iminyanya lokha nakufikelelwa amathagethi wegadango langamalanga';

  @override
  String get notif_channel_vitals_name =>
      'Ukuhlolwa kwezamaphilo nezinto eziqakathekileko';

  @override
  String get notif_channel_vitals_desc =>
      'Isikhumbuzo sokuphumula ngesikhathi sokulala';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Lala 15m';

  @override
  String get notif_action_log_meal => '🥗 Isidlo seLogi';

  @override
  String get language => 'Ilimi';

  @override
  String get share => 'Yabelana';

  @override
  String common_days(Object count) {
    return '$count d ago';
  }
}
