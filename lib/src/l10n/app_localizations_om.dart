// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oromo (`om`).
class AppLocalizationsOm extends AppLocalizations {
  AppLocalizationsOm([String locale = 'om']) : super(locale);

  @override
  String get app_name => 'Bloomi jedhamuun beekama';

  @override
  String get nav_home => 'Mana';

  @override
  String get nav_today => 'Har\'a';

  @override
  String get nav_plan => 'Karoora';

  @override
  String get nav_food => 'Nyaata';

  @override
  String get nav_food_diary => 'Diary Nyaataa';

  @override
  String get nav_workout => 'Galmee Sochii Qaamaa';

  @override
  String get nav_health => 'Fayyaa';

  @override
  String get nav_profile => 'Profaayilii';

  @override
  String get save => 'Qusadhu';

  @override
  String get cancel => 'Haquu';

  @override
  String get delete => 'Haquu';

  @override
  String get edit => 'Gulaali';

  @override
  String get done => 'Raawwatame';

  @override
  String get close => 'Cufi';

  @override
  String get back => 'Duuba';

  @override
  String get next => 'Itti aansee';

  @override
  String get continue_btn => 'Itti fufaa';

  @override
  String get confirm => 'Mirkaneessi';

  @override
  String get search => 'Barbaadi';

  @override
  String get filter => 'Filter gochuu';

  @override
  String get all => 'Hundi';

  @override
  String get active => 'Sochii kan qabu';

  @override
  String get today => 'Har\'a';

  @override
  String get yesterday => 'Kaleessa';

  @override
  String get tomorrow => 'Boru';

  @override
  String get add => 'Dabalata';

  @override
  String get remove => 'Buqqisuu';

  @override
  String get refresh => 'Haaromsi';

  @override
  String get retry => 'Irra deebi\'ii yaali';

  @override
  String get error => 'Dogoggora';

  @override
  String get success => 'Milkaa\'ina';

  @override
  String get loading => 'Fe\'amaa jira...';

  @override
  String get no_data => 'Daataan hin jiru';

  @override
  String get offline => 'Haala Toora Alaa';

  @override
  String get offline_sub =>
      'Jijjiiramni erga irra deebi\'amee walqabsiifamee booda ni walsimsiifama';

  @override
  String get undo => 'Deebisuu';

  @override
  String get portion => 'Kutaa';

  @override
  String get quantity => 'Baay’ina';

  @override
  String get unit => 'Yuunitii';

  @override
  String get clear => 'Ifa';

  @override
  String get select => 'Filadhu';

  @override
  String get apply => 'Iyyadhu';

  @override
  String get reset => 'Reset gochuu';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Eeyyee';

  @override
  String get no => 'Lakki';

  @override
  String get optional => 'Filannoodha';

  @override
  String get calories => 'Kaalorii';

  @override
  String get protein => 'Pirootiinii';

  @override
  String get carbs => 'Kaarboohayidireetii';

  @override
  String get fat => 'Fat';

  @override
  String get fiber => 'Faayibara';

  @override
  String get water => 'Bishaan';

  @override
  String get steps => 'Tarkaanfiiwwan';

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
  String get hours => 'sa’aatii';

  @override
  String get minutes => 'daqiiqaa';

  @override
  String get serving => 'Tajaajiluu';

  @override
  String get servings => 'Tajaajila';

  @override
  String get serving_size => 'Guddina Tajaajilaa';

  @override
  String get per_100g => '100g tokkoof';

  @override
  String get india => 'Hindii';

  @override
  String get asia => 'Eeshiyaa';

  @override
  String get europe => 'Awurooppaa';

  @override
  String get middle_east => 'Baha Giddu Galeessaa';

  @override
  String get africa => 'Afrikaa';

  @override
  String get americas => 'Ameerikaa';

  @override
  String get home_title => 'Mana';

  @override
  String get home_greeting_morning => 'Ganama gaarii';

  @override
  String get home_greeting_afternoon => 'Nagaa Waaree booda';

  @override
  String get home_greeting_evening => 'Galgala gaarii';

  @override
  String get home_streak_title => 'Daraaraa Dhangala\'aa';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count guyyoota walitti aansuun',
      one: 'Guyyaa 1 walitti aansuun',
      zero: 'Guyyaa 0 walitti aansuun',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Gubate';

  @override
  String get home_calories_budget => 'Baajata Kaalorii';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal hafe';
  }

  @override
  String get home_water_title => 'Guyyaa Guyyaan Haayidireeshinii';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Tarkaanfiiwwan Deemte';

  @override
  String get home_quick_actions => 'Tarkaanfiiwwan Saffisaa';

  @override
  String get home_log_meal => 'Nyaata Log';

  @override
  String get home_log_water => 'Bishaan Loogii';

  @override
  String get home_log_workout => 'Sochii Galmee';

  @override
  String get home_log_weight => 'Ulfaatina Loogii';

  @override
  String get home_insights_title => 'Hubannoo Har\'aa';

  @override
  String get home_quote =>
      'Filannoon fayyaa xixiqqoo jijjiirama daraaraa uumu.';

  @override
  String get home_ai_coach_tip => 'Leenjisaa AI Bloomi';

  @override
  String get home_surroundings => 'Naannoo & Qilleensaa';

  @override
  String get home_notifications => 'Beeksisa';

  @override
  String get home_daily_score => 'Qabxii Fayyaa Guyyaa Guyyaa';

  @override
  String get home_view_all => 'Hundaa Ilaali';

  @override
  String get food_diary_title => 'Diary Nyaataa';

  @override
  String get food_breakfast => 'Ciree';

  @override
  String get food_lunch => 'Laaqana';

  @override
  String get food_dinner => 'Irbaata';

  @override
  String get food_snacks => 'Nyaata salphaa';

  @override
  String get food_add_food => 'Nyaata Dabalaa';

  @override
  String get food_edit_food => 'Nyaata Gulaali';

  @override
  String get food_add_breakfast => 'Ciree Dabalaa';

  @override
  String get food_add_lunch => 'Laaqana itti dabali';

  @override
  String get food_add_dinner => 'Irbaata itti dabalaa';

  @override
  String get food_add_snack => 'Snack itti dabaluudhaan';

  @override
  String get food_total_calories => 'Kaalorii Waliigalaa';

  @override
  String get food_empty_meal =>
      'Nyaata nyaata kanaaf hanga ammaatti galmaa\'e hin jiru';

  @override
  String get food_empty_diary => 'Nyaanni guyyaa kanaaf galmaa\'e hin jiru';

  @override
  String get food_log_first_meal =>
      'Nyaata mi\'aawaa jalqabaa galmeessuuf + tuqi';

  @override
  String get food_quick_add => 'Dabalaa Saffisaa';

  @override
  String get food_search_hint => 'Nyaata, fuduraalee, dal, roti...';

  @override
  String get food_custom_recipe => 'Nyaata Adda Ta\'e & Recipe';

  @override
  String get food_scan_barcode => 'Barcode Scan gochuu';

  @override
  String get food_camera_scan => 'AI Nyaata Iskaanara';

  @override
  String get food_recent => 'Nyaata Dhiheenyaa';

  @override
  String get food_favourites => 'Kan jaallataman';

  @override
  String get food_macro_summary => 'Caccabsa Maakroonuutiriyeetii';

  @override
  String get food_delete_meal_confirm =>
      'Meeshaa kana haquu akka barbaaddu mirkaneeffatteettaa?';

  @override
  String get food_item_deleted => 'Meeshaan nyaataa baafame';

  @override
  String get food_remaining => 'hafe';

  @override
  String get food_consumed => 'nyaatame';

  @override
  String food_of_target(Object target) {
    return 'kan $target kcal';
  }

  @override
  String get foodSearch_title => 'Nyaata Barbaadi';

  @override
  String get foodSearch_scan_barcode => 'Barcode Scan gochuu';

  @override
  String get foodSearch_take_photo => 'Suuraa Nyaata Snap';

  @override
  String get foodSearch_custom_food => 'Nyaata Adda ta\'e Uumuu';

  @override
  String get foodSearch_recent_searches => 'Barbaacha Dhiheenyaa';

  @override
  String get foodSearch_popular => 'Nyaata Beekamaa';

  @override
  String get foodSearch_no_results =>
      'Nyaata barbaacha kee wajjin walsimu hin jiru';

  @override
  String get barcode_title => 'Barkoodii Iskaanara';

  @override
  String get barcode_align => 'Barkoodii furmaata kaameraa keessaa qindeessuu';

  @override
  String get barcode_not_found => 'Omishni kuusdeetaa keessatti hin argamne';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning Bloomi Pro tiin ni danda\'ama';

  @override
  String get camera_title => 'AI Nyaata Iskaanara';

  @override
  String get camera_tap_hint => 'Suuraa dishii keessan ifa ta\'e kaasaa';

  @override
  String get camera_analysing => 'Saanii nyaataa xiinxaluu...';

  @override
  String get camera_detected => 'Meeshaalee adda baafaman';

  @override
  String get camera_flash => 'Flash jijjiiri';

  @override
  String get camera_retake => 'Suuraa Irra Deebi\'anii Fudhadhaa';

  @override
  String get camera_confirm_food => 'Wantoota Mirkaneessi';

  @override
  String get customFood_title => 'Nyaata Adda Ta\'e & Recipe';

  @override
  String get customFood_name_hint =>
      'Maqaa nyaataa ykn wantoota itti fayyadaman';

  @override
  String get customFood_calories_hint => 'Kaalorii (kcal) .';

  @override
  String get customFood_protein_hint => 'Pirootiinii (g) .';

  @override
  String get customFood_carbs_hint => 'Kaarboohayidireetii (g) .';

  @override
  String get customFood_fat_hint => 'Copha (g) .';

  @override
  String get customFood_save => 'Save Recipe';

  @override
  String get water_tracker_title => 'Hordoffii Bishaanii';

  @override
  String get water_daily_target => 'Galma Haayidireeshinii Guyyaa Guyyaa';

  @override
  String get water_logged_today => 'Har\'a Galmee';

  @override
  String get water_add_glass => '+250 ml Fiixee';

  @override
  String get water_add_bottle => '+500 ml Qaruuraa';

  @override
  String get water_custom_amount => 'Hanga Aadaa';

  @override
  String get water_reminder_tip =>
      'Humna tasgabbaa’aa argachuuf guyyaa guutuu bishaan yeroo hunda dhuguu.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml bishaan 💧';
  }

  @override
  String get workout_title => 'Galmee Sochii Qaamaa';

  @override
  String get workout_add_exercise => 'Sochii qaamaa itti dabali';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Cimina';

  @override
  String get workout_yoga => 'Yoogaa fi Daddabbii';

  @override
  String get workout_duration => 'Turtii';

  @override
  String get workout_intensity => 'Cimina qabaachuu';

  @override
  String get workout_calories_burned => 'Kaalorii Gubate';

  @override
  String get workout_empty => 'Sochii qaamaa har\'a galmaa\'e hin jiru';

  @override
  String get workout_save_success => 'Sochii qaamaa milkaa\'inaan qusatameera!';

  @override
  String get workout_type => 'Gosa Sochii qaamaa';

  @override
  String get workout_notes => 'Yaadannoo fi Yaadannoowwan';

  @override
  String get health_overview_title => 'Fayyaa & Vitals';

  @override
  String get health_heart_rate => 'Dha\'annaa Onnee';

  @override
  String get health_blood_oxygen => 'Oksijiinii Dhiigaa (SpO2) .';

  @override
  String get health_blood_pressure => 'Dhiibbaa Dhiigaa';

  @override
  String get health_blood_glucose => 'Blood Glucose';

  @override
  String get health_body_temperature => 'Body Temperature';

  @override
  String get health_sleep_tracking => 'Hordoffii Hirriba';

  @override
  String get health_weight_tracking => 'Ulfaatina & Qabiyyee Qaamaa';

  @override
  String get health_waist_hip => 'Reeshiyoo Mudhii fi Hidhii';

  @override
  String get health_devices_hub => 'Meeshaalee fi Smartwatch Hub';

  @override
  String get health_sync_now => 'Daataa Fayyaa Walsimsiisuu';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Yeroo dhumaaf walsimsiifame: $yeroo';
  }

  @override
  String get health_manual_entry => 'Galmee Fayyaa Harkaan';

  @override
  String get health_metric_detail => 'Bal\'ina Meetirikii';

  @override
  String get health_connected_sensors => 'Sensaroota Fayyaa Walitti Hidhaman';

  @override
  String get plan_title => 'Karoora Guyyaa Guyyaa';

  @override
  String get plan_weekly_title => 'Karoora Fayyaa Torbanii';

  @override
  String get plan_calorie_target => 'Target Kaalorii';

  @override
  String get plan_water_target => 'Target Haayidireeshinii';

  @override
  String get plan_step_target => 'Tarkaanfii Target';

  @override
  String get plan_sleep_target => 'Target Hirriba';

  @override
  String get plan_meal_suggestions => 'Yaada Nyaataa';

  @override
  String get plan_healthy_habits => 'Amaloota Fayyaa & Gorsa';

  @override
  String get plan_coach_advice => 'Yaada Leenjisaa Bloomi AI';

  @override
  String get plan_generated_title => 'Sagantaa Guyyaa Dhuunfaa';

  @override
  String get profile_title => 'Ibsama';

  @override
  String get profile_edit => 'Profaayilii Gulaali';

  @override
  String get profile_name => 'Maqaa';

  @override
  String get profile_age => 'Umurii';

  @override
  String get profile_gender => 'Saala';

  @override
  String get profile_height => 'Olka’iinsa';

  @override
  String get profile_weight => 'Ulfaatina qaamaa';

  @override
  String get profile_goal => 'Galma Duraa';

  @override
  String get profile_activity_level => 'Sadarkaa Gocha';

  @override
  String get profile_stats => 'Istaatistiksii Fayyaa Koo';

  @override
  String get profile_saved => 'Profile milkaa\'inaan haaromfame';

  @override
  String get profile_bmi => 'Indeeksii Heddummina Qaamaa (BMI) .';

  @override
  String get profile_membership => 'Miseensummaa';

  @override
  String get settings => 'Sajoo';

  @override
  String get preferences_habits => 'FILANNOO FI AMALOOTA';

  @override
  String get appearance_theme => 'Mul\'ata & Mata duree';

  @override
  String get appearance_theme_sub =>
      'Dukkana, Ifa, Haala Sirnaa & Filannoo Duubbee Appii';

  @override
  String get permissions => 'Hayyama & Sirna Argachuu';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Beeksisa fi Kaameeraa';

  @override
  String get reminders_notifications => 'Yaadachiisa & Beeksisa';

  @override
  String get reminders_sub =>
      'Yeroo nyaataa, bishaan, ulfaatina qaamaa ilaaluu & yaadachiisa yeroo ciisichaa';

  @override
  String get units_of_measurement => 'Yuunitii Safartuu';

  @override
  String get units_sub =>
      'Meetirikii (kg, cm, ml, km) ykn Impeeriyaal (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'App Afaan';

  @override
  String get language_sub =>
      'Afaan Ingilizii, हिन्दी (Hindi), Hinglish & 195+ afaanota addunyaa';

  @override
  String get home_screen_widgets => 'Widgets Iskiriinii Manaa';

  @override
  String get widgets_sub =>
      'Wiijetoota Andirooyidii kallattiin: Hub, Tarkaanfiiwwan, Bishaan, Nyaata & Mascot';

  @override
  String get wear_os_watch_app => 'App Sa\'aatii OS Uffadhu';

  @override
  String get wear_os_sub =>
      'Smartwatch hiriyyaa, tiles, walxaxiinsa & live vitals';

  @override
  String get goals_wellness => 'GALOOTA FI HUBANNOO FAYYAA';

  @override
  String get nutrition_targets => 'Target Nyaataa & Qoqqoodinsa Maakroo';

  @override
  String get nutrition_targets_sub =>
      'Galma kaalorii, pirootiinii, kaarboohayidireetii, cooma & galma bishaanii';

  @override
  String get weekly_recap => 'Torban Torban Irra Deebiin Fayyaa';

  @override
  String get weekly_recap_sub =>
      'Giddugaleessa kaalorii guyyaa 7, reeshiyoo maakroo & guyyaa hunda caalu';

  @override
  String get streaks_milestones => 'Streaks & Milkaa\'ina';

  @override
  String get streaks_sub => 'Daraaraa sochii qabu, baajii & bu\'aa ba\'ii';

  @override
  String get connected_devices => 'MEESHALEE WALQABATAN FI ECOSYSTEM';

  @override
  String get devices_hub => 'Meeshaalee fi Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Fayyaa Walqunnamtii, Sa\'aatii Gaalaaksii, Sa\'aatii Piikselii, Garmin';

  @override
  String get surroundings_weather => 'Naannoo & Haala Qilleensaa';

  @override
  String get surroundings_sub =>
      'Qulqullina qilleensaa (AQI), UV index & gorsa haala qilleensaa bishaan itti naquu';

  @override
  String get bloomi_pro => 'Maallaqa Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Leenjisaa Karoora AI, wiijetoota iskiriinii manaa 5 & hordoffii vitals';

  @override
  String get about_security => 'WAA\'EE & NAGEENYA';

  @override
  String get about_bloomi => 'Waa\'ee Bloomi';

  @override
  String get about_bloomi_sub => 'Ijaarsa ibsa, gosa, amaloota';

  @override
  String get privacy_policy => 'Imaammata Dhuunfaa';

  @override
  String get privacy_policy_sub =>
      'Toora ala-jalqaba, ijaarsa deetaa meeshaa irratti';

  @override
  String get terms_conditions => 'Haalawwanii fi Dambiiwwan';

  @override
  String get terms_conditions_sub =>
      'Haala tajaajilaa fi qajeelfama fayyaa gaarii';

  @override
  String get delete_account => 'Herrega & Daataa Haquu';

  @override
  String get delete_account_sub =>
      'Deetaa SQLite naannoo fi duwwaa duumessaa haala hin deebineen haquu';

  @override
  String get healthy_habits => 'Amala fayyaa lallaafaa fi waaraa ijaari';

  @override
  String get all_logs => 'Daataa & Galmeewwan Koo Hordofaman';

  @override
  String get search_language => 'Afaan ykn qubee dhalootaatiin barbaadi...';

  @override
  String get languages_available => 'Afaanota Argaman';

  @override
  String get no_matching_languages => 'Afaanota walsimsiisan hin argamne';

  @override
  String get try_searching =>
      'Qubee dhalootaatiin ykn qubee Ingiliffaatiin barbaaduu yaali';

  @override
  String get partially_translated => 'Gara tokkoon kan hiikame';

  @override
  String get complete_translation => 'Guutuu';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Afaan gara $name ( $nativeName ) tti saagame.';
  }

  @override
  String get surroundings_title => 'Naannoo & Naannoo';

  @override
  String get surroundings_aqi => 'Indeeksii Qulqullina Qilleensaa';

  @override
  String get surroundings_uv => 'Indeeksii UV';

  @override
  String get surroundings_temp => 'Teempireechara';

  @override
  String get surroundings_humidity => 'Jiidhina';

  @override
  String get surroundings_hydration_advice =>
      'Haala qilleensaa amma jiru keessatti bishaan akka gaariitti qabaadhaa.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Nyaata Barbaadi';

  @override
  String get food_quick_barcode => 'Barkoodii Scan 👑';

  @override
  String get food_quick_water => 'Bishaan Dabalaa';

  @override
  String get food_quick_custom => 'Nyaata Aadaa';

  @override
  String get surroundings_good => 'Gaariidha';

  @override
  String get surroundings_moderate => 'Giddu galeessa';

  @override
  String get surroundings_unhealthy => 'Fayyaa kan hin qabne';

  @override
  String get notifications_title => 'Beeksisa fi Akeekkachiisa';

  @override
  String get notifications_empty => 'Beeksisni haaraan hin jiru';

  @override
  String get notifications_mark_read =>
      'Hundaa akka Dubbifameetti Mallatteessi';

  @override
  String get notifications_clear => 'Hundaa Qulqulleessi';

  @override
  String get reminders => 'Sajoo Yaadachiisaa';

  @override
  String get notifications => 'Beeksisa';

  @override
  String get reminders_breakfast_title => 'Yaadachiisa Ciree 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Nagaan nagaa! Yeroo ciree soorataa $time .';
  }

  @override
  String get reminders_lunch_title => 'Yaadachiisa Laaqana 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Yeroo muraasaaf dhaabadhaatii $time irratti laaqana madaalawaa, sammuu qabu nyaadhaa.';
  }

  @override
  String get reminders_dinner_title => 'Yaadachiisa Irbaata 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Yeroon irbaata salphaa, quubsaa $time .';
  }

  @override
  String get reminders_water_title => 'Nudge Haayidireeshinii 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Yeroon bishaan haaraa koochoo tokko dhugnu! ( $time ) .';
  }

  @override
  String get reminders_weight_title => 'Torban torbaniin Madaallii ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Safartuu qaama torban torbaniin Bloomi ( $time ) irratti hordofaa.';
  }

  @override
  String get reminders_sleep_title => 'Yeroo Ciisichaa Bubbee-gadi 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Boqodhaatii hirriba boqonnaaf qophaa\'aa ( $time ).';
  }

  @override
  String get onboard_welcome => 'Baga gara Bloomi dhuftan';

  @override
  String get onboard_sub =>
      'Hiriyaa kee michuu, sarara ala-jalqaba fayyaa fi soorataa.';

  @override
  String get onboard_get_started => 'Jalqabaa';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'Darbaa';

  @override
  String get onboard_choose_goal =>
      'Galmi fayyaa fayyaa keessanii inni guddaan maali?';

  @override
  String get onboard_goal_weight_loss =>
      'Ulfaatina Ulfaatina Salphaa Hir\'isuu';

  @override
  String get onboard_goal_muscle => 'Faayidaa & Cimina Maashaa';

  @override
  String get onboard_goal_energy => 'Humna & Jireenya Guyyaa Guyyaa';

  @override
  String get onboard_goal_habits => 'Nyaata Sammuu Fayyaa Nyaachuu';

  @override
  String get onboard_about_you => 'Waa\'ee Kee Nutti Himi';

  @override
  String get onboard_lifestyle => 'Hojii Guyyaa Guyyaa Keessan';

  @override
  String get onboard_permissions_title => 'Hayyama & Sirna Argachuu';

  @override
  String get onboard_permissions_sub =>
      'Tarkaanfiiwwan walsimsiisaa, sochii qaamaa fi yaadachiisa argachuuf qaqqabummaa kenni.';

  @override
  String get onboard_plan_ready_title => 'Karoorri Aadaa Keessan Qophaa\'eera!';

  @override
  String get onboard_plan_ready_sub =>
      'Kaartaa soorataa fi fayyaa gaarii lallaafaa, dhuunfaa ta\'e isiniif qofa hojjenne.';

  @override
  String get onboard_enter_bloomi => 'Bloomi seeni';

  @override
  String get insights_weekly_report => 'Torban Torban Irra Deebiin Fayyaa';

  @override
  String insights_best_day(Object day) {
    return 'Guyyaa Walsimannaa Irra Caalu: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milkaa\'ina';

  @override
  String insights_unlocked_on(Object date) {
    return '$date irratti cufame.';
  }

  @override
  String get insights_keep_going => 'Guddina ajaa\'ibaa itti fufaa!';

  @override
  String get widgets_title => 'Widgets Iskiriinii Manaa';

  @override
  String widgets_active_count(Object count) {
    return 'Wiijetoota Socho\'an: $count .';
  }

  @override
  String get widgets_hub_title => 'Giddugala Fayyaa Bloomi';

  @override
  String get widgets_steps_title => 'Tarkaanfiiwwan & Active Ring';

  @override
  String get widgets_water_title => 'Galmee Saffisaa Haayidireeshinii';

  @override
  String get widgets_mascot_title => 'Hiriyaa Maskootii Bloomi';

  @override
  String get wear_os_title => 'Sa\'aatii Ismaartii OS uffadhaa';

  @override
  String get wear_os_connected => 'Watch waliin walqabatee';

  @override
  String get wear_os_sync => 'Deetaa Sa\'aatii Walsimsiisuu';

  @override
  String get theme_title => 'Mul\'ata & Mata duree';

  @override
  String get theme_mode => 'Haala Mata Duree';

  @override
  String get theme_light => 'Ifa';

  @override
  String get theme_dark => 'Dukkana';

  @override
  String get theme_system => 'Sirna Durtii';

  @override
  String get theme_background_palette => 'Paaletii Duubbee';

  @override
  String get units_title => 'Yuunitii Safartuu';

  @override
  String get units_metric => 'Meetirikii (kg, cm, ml) 1.1.';

  @override
  String get units_imperial => 'Impaayera (lbs, in, fl oz) .';

  @override
  String get home_unable_load => 'Daashboordii fe\'uu hin dandeenye';

  @override
  String get home_health_permission_req => 'Hayyama Health Connect Barbaachisa';

  @override
  String get home_health_permission_desc =>
      'Bloomi tarkaanfiiwwan dhugaa, dha\'annaa onnee, fi wiijetoota mana sochootuu yeroo qabatamaa keessatti walsimsiisuuf hayyama Health Connect barbaada.';

  @override
  String get home_allow_health => 'Fayyaa Walqunnamsiisuu Hayyamaa';

  @override
  String get home_ready_mindful_day => 'Guyyaa sammuu qabuuf qophiidhaa? ✨';

  @override
  String get home_quick_add => 'Dabalaa Saffisaa';

  @override
  String get home_live_gps => 'GPS kallattiin';

  @override
  String get home_calories_remaining_label => 'KALOORII KAN HAFE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Nyaatame: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Bishaan Hordoffii 💧';

  @override
  String get home_water_goal_reached => 'Galma guyyaan gahame 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml gara galma guyyaa guyyaa';
  }

  @override
  String get home_details => 'Bal\'ina isaa';

  @override
  String get home_upgrade_plan_desc =>
      'Targets guyyaa guyyaa dhuunfaa & karoora AI banuuf fooyya\'iinsa';

  @override
  String get home_unlock => 'Qulfii 👑 hiikaa';

  @override
  String get home_quick_log_hint => 'Galmee fayyaa gaarii dafii galmeessi';

  @override
  String get food_serving_size => 'Guddina Tajaajilaa';

  @override
  String get food_serving_grams => 'Tajaajiluu (g) .';

  @override
  String get food_number_servings => 'Baay’ina Tajaajila';

  @override
  String get food_calories_per_serving => 'Kaalorii tajaajila tokkoof';

  @override
  String get food_recipe_ingredients => 'Wantoota barbaachisan';

  @override
  String get food_recipe_add_ingredient => 'Ingredient Dabalaa';

  @override
  String get food_recipe_directions => 'Qajeelfama fi Yaadannoo';

  @override
  String get food_recipe_total => 'Waliigala Recipe Nyaata';

  @override
  String get food_recipe_per_serving => 'Per Serving Nyaata';

  @override
  String get food_recipe_saved_toast => 'Nyaata aadaa milkaa\'inaan qusatame!';

  @override
  String get food_barcode_found => 'Omisha Argame!';

  @override
  String get food_barcode_not_found_desc =>
      'Barkoodii kana kuusdeetaa banaa keessatti argachuu hin dandeenye. Akka nyaata aadaa ta\'etti itti dabaluun ni danda\'ama.';

  @override
  String get food_add_custom_btn => 'Nyaata Aadaa Dabaluu';

  @override
  String get food_scan_again => 'Ammas Scan godhaa';

  @override
  String get food_review_items => 'Nyaata Argaman Irra Deebi’uu';

  @override
  String get food_review_hint =>
      'Baay’ina sirreessuu ykn wanta hin beekamne kamiyyuu balleessi';

  @override
  String get food_log_selected => 'Nyaata Filatamaa Galmee';

  @override
  String get food_favourites_title => 'Nyaata Jaallatamu';

  @override
  String get food_recent_title => 'Nyaata Dhiheenyaa';

  @override
  String get food_no_favourites =>
      'Nyaata jaallatamu hanga ammaatti hin jiru. Nyaata kamiyyuu irratti garaa tuquun asitti qusachuu dandeessu.';

  @override
  String get food_no_recents => 'Nyaata dhiheenya kana galmaa\'e hin argamne.';

  @override
  String get food_nutrition_details_title => 'Bal\'ina Nyaata Guyyaa Guyyaa';

  @override
  String get food_macro_protein_label => 'Caccabsa Pirootiinii';

  @override
  String get food_macro_carbs_label => 'Caccabsa Kaarboohayidireetii';

  @override
  String get food_macro_fat_label => 'Caccabsa Cophaa';

  @override
  String get food_macro_fiber_label => 'Fiber Caccabuu';

  @override
  String get food_daily_target_comparison => 'Walbira Qabsiisuu Target';

  @override
  String food_target_label(Object target) {
    return 'Galma: $target .';
  }

  @override
  String get food_edit_entry => 'Galmee Guyyaa Gulaaluu';

  @override
  String get food_delete_entry => 'Galtee Haquu';

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
    return '$current kan $target ml';
  }

  @override
  String get water_intake_history => 'Loogii Bishaan Har\'aa';

  @override
  String get water_no_logs_today =>
      'Har\'as bishaan hin galmeessine. Hydrate gochuun button saffisaan dabaluu tokko tuqi!';

  @override
  String get water_adjust_goal => 'Galma Guyyaa Guyyaa Sirreessuu';

  @override
  String get health_connect_banner => 'Health Connect waliin walqabatee jira';

  @override
  String get health_vitals_summary => 'Vitals Fayyaa Guyyaa Guyyaa';

  @override
  String get health_latest_heart_rate => 'Dha\'annaa Onnee Yeroo Ammaa';

  @override
  String get health_latest_bp => 'Dhiibbaa Dhiigaa';

  @override
  String get health_latest_spo2 => 'Oksijiinii Dhiigaa';

  @override
  String get health_latest_glucose => 'Gilukoosii Dhiigaa';

  @override
  String get health_latest_weight => 'Ulfaatina qaamaa';

  @override
  String get health_latest_sleep => 'Turtii Hirriba';

  @override
  String get health_add_manual => 'Safartuu Harkaan Dabaluu';

  @override
  String get health_history_trends => 'Adeemsa Seenaa';

  @override
  String get health_sync_success =>
      'Daataan fayyaa milkaa\'inaan walsimsiifame!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours sa\'aatii $mins daqiiqaa';
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
    return '$pct % 10. .';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL ta’a';
  }

  @override
  String get health_devices_title => 'Meeshaalee Walitti Hidhaman & Wearables';

  @override
  String get health_devices_desc =>
      'Sa\'aatii ismaartii lama lama ta\'an, hordoftoota fiitness, fi sensaroota fayyaa bulchuu.';

  @override
  String get health_workout_editor_title => 'Sochii Gulaali';

  @override
  String get health_workout_name_label => 'Maqaa Sochii Qaamaa';

  @override
  String get health_workout_duration_label => 'Turtii (daqiiqaa) .';

  @override
  String get health_workout_calories_label => 'Tilmaama Kaalorii (kcal) .';

  @override
  String get health_workout_date_label => 'Guyyaa fi Sa\'aatii';

  @override
  String get plan_daily_wellness_roadmap => 'Roadmap Dhuunfaa Keessan';

  @override
  String get plan_morning_routine => 'Hojii Ganama';

  @override
  String get plan_afternoon_routine => 'Fayyaa Walakkaa';

  @override
  String get plan_evening_routine => 'Bubbee Galgalaa-Gadii';

  @override
  String get plan_coach_badge => 'Leenjisaa AI Bloomi';

  @override
  String get plan_weekly_overview => 'Xiyyeeffannoo Fayyaa Guyyaa 7';

  @override
  String get plan_targets_title => 'Targets & Galmoota Fayyaa';

  @override
  String get plan_calorie_budget_label => 'Baajata Kaalorii Guyyaa Guyyaa';

  @override
  String get plan_water_budget_label => 'Target Bishaan Guyyaa Guyyaa';

  @override
  String get plan_step_budget_label => 'Galma Tarkaanfii Guyyaa Guyyaa';

  @override
  String get plan_macro_split_label => 'Reeshiyoo Maakroonuutiriyeetii';

  @override
  String get profile_personal_details => 'Odeeffannoo Dhuunfaa';

  @override
  String get profile_body_stats => 'Safartuu Qaamaa';

  @override
  String get profile_app_preferences => 'Filannoo fi Sajoo Appii';

  @override
  String get profile_edit_name_hint => 'Maqaa kee';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Olka\'iinsa ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ulfaatina ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Umurii';

  @override
  String get profile_gender_male => 'Dhiira';

  @override
  String get profile_gender_female => 'Dubartii';

  @override
  String get profile_gender_other => 'Kan biroo / Jechuu dhiisuu filadhu';

  @override
  String get profile_activity_sedentary =>
      'Taa’ee (Sochii qaamaa xiqqoo hanga hin qabne) .';

  @override
  String get profile_activity_light => 'Sochii Salphaa (guyyaa 1-3/torban) .';

  @override
  String get profile_activity_moderate =>
      'Sochii giddu galeessaa (guyyaa 3-5/torban) .';

  @override
  String get profile_activity_very => 'Baayyee Sochii (guyyaa 6-7/torban) .';

  @override
  String get settings_wear_os_header => 'Uffata OS Hiriyyaa App';

  @override
  String get settings_wear_os_desc =>
      'Kaalorii, bishaanii fi tarkaanfiiwwan ilaaluuf sa\'aatii Wear OS keessan irratti tile fi walxaxiinsa Bloomi kaa\'aa.';

  @override
  String get settings_widgets_header => 'Wiijetoota Andirooyidii Wal-qunnamtii';

  @override
  String get settings_widgets_desc =>
      'Fooyya\'iinsa battalaa argachuuf wiijetoota yeroo dhugaa iskiriinii jalqabaa meeshaa keessanii irratti maxxansi.';

  @override
  String get settings_about_header => 'Waa\'ee Bloomi';

  @override
  String get settings_about_version => 'Vershinii 1.0.0';

  @override
  String get settings_about_build => 'Ijaarsa 100';

  @override
  String get settings_about_credits =>
      'Jireenya sammuu, fayyaa qabuuf kunuunsaan kan hojjetame.';

  @override
  String get settings_terms_header => 'Haalawwanii fi Dambiiwwan';

  @override
  String get settings_privacy_header => 'Imaammata Dhuunfaa';

  @override
  String get settings_delete_header => 'Herrega & Daataa Haquu';

  @override
  String get settings_delete_warning =>
      'Gochi kun duubatti deebi’uu hin danda’u. Nyaanni, sochii qaamaa, vitals, fi profile keessan hundi dhaabbataadhaan ni haqama.';

  @override
  String get settings_delete_confirm_btn => 'Dhaabbataan Haquu';

  @override
  String get onboard_welcome_headline => 'Baga gara Bloomi ✨ dhuftan';

  @override
  String get onboard_welcome_tagline =>
      'Hordoffii fayyaa lallaafaa, sammuudhaan kan naannoo jireenya keetii qophaa\'e.';

  @override
  String get onboard_step_about => 'Waa\'ee Kee';

  @override
  String get onboard_step_goals => 'Kaayyoo Keessan';

  @override
  String get onboard_step_lifestyle => 'Amala Guyyaa Guyyaa';

  @override
  String get onboard_step_permissions => 'Hayyama';

  @override
  String get onboard_step_plan => 'Qophaa\'aa!';

  @override
  String get onboard_health_connect_perm => 'Fayyaa Walitti Hidhamiinsa';

  @override
  String get onboard_step_sensors_perm => 'Sensara Lakkaawwii Tarkaanfii';

  @override
  String get onboard_notif_perm => 'Yaadachiisa Sammuu fi Beeksisa';

  @override
  String get onboard_camera_perm =>
      'Kaameeraa (Baarkoodii fi Iskaanara Nyaataa) .';

  @override
  String get onboard_grant_permissions => 'Hayyama Kennuu';

  @override
  String get onboard_continue_dashboard => 'Daashboordii banaa';

  @override
  String get notif_channel_hydration_name => 'Nudges Haayidireeshinii';

  @override
  String get notif_channel_hydration_desc =>
      'Guyyaa guutuu yaadachiisa bishaan lallaafaa';

  @override
  String get notif_channel_nutrition_name => 'Yaadachiisa Nyaataa fi Nyaata';

  @override
  String get notif_channel_nutrition_desc =>
      'Akeekkachiisa yaadachiisa ciree, laaqanaa fi irbaata';

  @override
  String get notif_channel_steps_name => 'Tarkaanfii Milkaa\'ina';

  @override
  String get notif_channel_steps_desc =>
      'Ayyaana yeroo galma tarkaanfii guyyaa guyyaa irra gahu';

  @override
  String get notif_channel_vitals_name => 'Sakatta\'iinsa Fayyaa & Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Ulfaatina qaamaa fi yeroo ciisan yaadachiisa qilleensa gadi bu\'uu';

  @override
  String get notif_action_log_water => '💧 Loogii +250ml';

  @override
  String get notif_action_snooze => 'Hirriba 15m';

  @override
  String get notif_action_log_meal => '🥗 Nyaata Loogii';

  @override
  String get language => 'Afaan';

  @override
  String get share => 'Share godhaa';

  @override
  String common_days(Object count) {
    return '$count d dura';
  }
}
