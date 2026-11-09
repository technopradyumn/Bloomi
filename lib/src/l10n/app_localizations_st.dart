// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Southern Sotho (`st`).
class AppLocalizationsSt extends AppLocalizations {
  AppLocalizationsSt([String locale = 'st']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Lehae';

  @override
  String get nav_today => 'Kajeno';

  @override
  String get nav_plan => 'Rera';

  @override
  String get nav_food => 'Lijo';

  @override
  String get nav_food_diary => 'Diary ya Dijo';

  @override
  String get nav_workout => 'Lenane la Boikoetliso';

  @override
  String get nav_health => 'Bophelo bo botle';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Boloka';

  @override
  String get cancel => 'Hlakola';

  @override
  String get delete => 'Hlakola';

  @override
  String get edit => 'Fetola';

  @override
  String get done => 'E felile';

  @override
  String get close => 'Koala';

  @override
  String get back => 'Morao';

  @override
  String get next => 'E latelang';

  @override
  String get continue_btn => 'Tsoela pele';

  @override
  String get confirm => 'Netefatsa';

  @override
  String get search => 'Batla';

  @override
  String get filter => 'Sefe';

  @override
  String get all => 'Tsohle';

  @override
  String get active => 'E sebetsa';

  @override
  String get today => 'Kajeno';

  @override
  String get yesterday => 'Maobane';

  @override
  String get tomorrow => 'Hosane';

  @override
  String get add => 'Eketsa';

  @override
  String get remove => 'Tlosa';

  @override
  String get refresh => 'Hlasimolla';

  @override
  String get retry => 'Leka hape';

  @override
  String get error => 'Phoso';

  @override
  String get success => 'Katleho';

  @override
  String get loading => 'E ea kenya...';

  @override
  String get no_data => 'Ha ho lintlha tse fumanehang';

  @override
  String get offline => 'Offline Mode';

  @override
  String get offline_sub =>
      'Liphetoho li tla lumellana hang ha li hokahantsoe hape';

  @override
  String get undo => 'Etsolla';

  @override
  String get portion => 'Karolo';

  @override
  String get quantity => 'Bongata';

  @override
  String get unit => 'Yuniti';

  @override
  String get clear => 'Hlakileng';

  @override
  String get select => 'Khetha';

  @override
  String get apply => 'Etsa kopo';

  @override
  String get reset => 'Seta bocha';

  @override
  String get ok => 'Ho lokile';

  @override
  String get yes => 'Ee';

  @override
  String get no => 'Che';

  @override
  String get optional => 'Taba ea boikhethelo';

  @override
  String get calories => 'Likhalori';

  @override
  String get protein => 'Protheine';

  @override
  String get carbs => 'Li-carbs';

  @override
  String get fat => 'Mafura';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Metsi';

  @override
  String get steps => 'Mehato';

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
  String get inches => 'ho';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'lihora';

  @override
  String get minutes => 'mets';

  @override
  String get serving => 'Ho sebeletsa';

  @override
  String get servings => 'Litšebeletso';

  @override
  String get serving_size => 'Boholo ba ho sebeletsa';

  @override
  String get per_100g => 'ka 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Bochabela bo Hare';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Lehae';

  @override
  String get home_greeting_morning => 'Good Hoseng';

  @override
  String get home_greeting_afternoon => 'Motšehare o Molemo';

  @override
  String get home_greeting_evening => 'Mantsiboea a Matle';

  @override
  String get home_streak_title => 'Palesa ea Blossom';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lebelo la matsatsi',
      one: 'Lebelo la letsatsi le 1',
      zero: '0 matsatsi a streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Chesoa';

  @override
  String get home_calories_budget => 'Khalori Budget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal e setseng';
  }

  @override
  String get home_water_title => 'Daily Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Mehato e Tsamaeang';

  @override
  String get home_quick_actions => 'Liketso tse Potlakileng';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Metsi a Log';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Maikutlo a Kajeno';

  @override
  String get home_quote =>
      'Likhetho tse nyane tse phetseng hantle li etsa liphetoho tse thunyang.';

  @override
  String get home_ai_coach_tip => 'Mokoetlisi oa Bloomi AI';

  @override
  String get home_surroundings => 'Tikoloho & Moea';

  @override
  String get home_notifications => 'Litsebiso';

  @override
  String get home_daily_score =>
      'Lintlha tsa Bophelo bo Botle ba Letsatsi le Letsatsi';

  @override
  String get home_view_all => 'Sheba Tsohle';

  @override
  String get food_diary_title => 'Diary ya Dijo';

  @override
  String get food_breakfast => 'Sejo sa hoseng';

  @override
  String get food_lunch => 'Lijo tsa motšeare';

  @override
  String get food_dinner => 'Lijo tsa mantsiboea';

  @override
  String get food_snacks => 'Lijo tse bobebe';

  @override
  String get food_add_food => 'Eketsa Lijo';

  @override
  String get food_edit_food => 'Fetola Lijo';

  @override
  String get food_add_breakfast => 'Kenya lijo tsa hoseng';

  @override
  String get food_add_lunch => 'Eketsa Lijo tsa Motšehare';

  @override
  String get food_add_dinner => 'Eketsa Lijo tsa Mantsiboea';

  @override
  String get food_add_snack => 'Kenya Snack';

  @override
  String get food_total_calories => 'Kakaretso ea Likhalori';

  @override
  String get food_empty_meal => 'Ha ho lijo tse kentsoeng bakeng sa lijo tsena';

  @override
  String get food_empty_diary => 'Ha ho lijo tse rekiloeng tsa letsatsi lena';

  @override
  String get food_log_first_meal =>
      'Tlanya + ho ngola lijo tsa hau tsa pele tse monate';

  @override
  String get food_quick_add => 'Eketsa kapele';

  @override
  String get food_search_hint => 'Batla lijana, litholoana, dal, roti...';

  @override
  String get food_custom_recipe => 'Lijo tse Tloaelehileng & Recipe';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Lijo tsa morao-rao';

  @override
  String get food_favourites => 'Tse ratwang';

  @override
  String get food_macro_summary => 'Karohano ea Macronutrient';

  @override
  String get food_delete_meal_confirm => 'Na u tiile u batla ho tlosa ntho ee?';

  @override
  String get food_item_deleted => 'Ntho ea lijo e tlositsoe';

  @override
  String get food_remaining => 'setseng';

  @override
  String get food_consumed => 'chesitsoe';

  @override
  String food_of_target(Object target) {
    return 'ea $target kcal';
  }

  @override
  String get foodSearch_title => 'Batla Lijo';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Etsa Lijo tse Tloaelehileng';

  @override
  String get foodSearch_recent_searches => 'Lipatlisiso tsa Haufinyane';

  @override
  String get foodSearch_popular => 'Lijana Tse Ratoang';

  @override
  String get foodSearch_no_results =>
      'Ha ho lijo tse tsamaellanang le seo u se batlang';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Lokisetsa barcode ka har\'a foreimi ea khamera';

  @override
  String get barcode_not_found =>
      'Sehlahisoa ha se fumanehe polokelong ea litaba';

  @override
  String get barcode_premium_feature =>
      'Ho hlahlojoa ha barcode ho fumaneha ka Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Nka senepe se hlakileng sa sejana sa hau';

  @override
  String get camera_analysing => 'E sekaseka sejana sa lijo...';

  @override
  String get camera_detected => 'Lintho tse fumanoeng';

  @override
  String get camera_flash => 'Fetola Flash';

  @override
  String get camera_retake => 'Nka Senepe hape';

  @override
  String get camera_confirm_food => 'Netefatsa Lintho';

  @override
  String get customFood_title => 'Lijo tse Tloaelehileng & Recipe';

  @override
  String get customFood_name_hint => 'Sejo kapa lebitso la motsoako';

  @override
  String get customFood_calories_hint => 'Likhalori (kcal)';

  @override
  String get customFood_protein_hint => 'Protheine (g)';

  @override
  String get customFood_carbs_hint => 'Lik\'habohaedreite (g)';

  @override
  String get customFood_fat_hint => 'Mafura (g)';

  @override
  String get customFood_save => 'Boloka Recipe';

  @override
  String get water_tracker_title => 'Tracker ea Metsi';

  @override
  String get water_daily_target => 'Sepheo sa Daily Hydration';

  @override
  String get water_logged_today => 'E Kentsoe Kajeno';

  @override
  String get water_add_glass => '+250 ml Khalase';

  @override
  String get water_add_bottle => '+500 ml Botlolo';

  @override
  String get water_custom_amount => 'Chelete e Tloaelehileng';

  @override
  String get water_reminder_tip =>
      'Noa metsi khafetsa letsatsi lohle bakeng sa matla a tsitsitseng.';

  @override
  String water_logged_toast(Object amount) {
    return 'E kentsoeng $amount ml ea metsi 💧';
  }

  @override
  String get workout_title => 'Lenane la Boikoetliso';

  @override
  String get workout_add_exercise => 'Kenya Boikoetliso';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Matla';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Nako';

  @override
  String get workout_intensity => 'Matla';

  @override
  String get workout_calories_burned => 'Likhalori li Chesoa';

  @override
  String get workout_empty => 'Ha ho boikoetliso bo kentsoeng kajeno';

  @override
  String get workout_save_success => 'Boikoetliso bo bolokiloe ka katleho!';

  @override
  String get workout_type => 'Mofuta oa Boikoetliso';

  @override
  String get workout_notes => 'Lintlha & Maikutlo';

  @override
  String get health_overview_title => 'Bophelo bo Botle le Bohlokoa';

  @override
  String get health_heart_rate => 'Sekhahla sa Pelo';

  @override
  String get health_blood_oxygen => 'Mali a Oksijene (SpO2)';

  @override
  String get health_blood_pressure => 'Khatello ea Mali';

  @override
  String get health_blood_glucose => 'Glucose ea Mali';

  @override
  String get health_body_temperature => 'Mocheso oa \'Mele';

  @override
  String get health_sleep_tracking => 'Tracking ea Boroko';

  @override
  String get health_weight_tracking => 'Boima le Boima ba \'Mele';

  @override
  String get health_waist_hip => 'Karolelano ea Thekeng ho ea ho Hip';

  @override
  String get health_devices_hub => 'Lisebelisoa le Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'E kopantswe la ho qetela: $time';
  }

  @override
  String get health_manual_entry => 'Ho Kena ka Manual Health';

  @override
  String get health_metric_detail => 'Lintlha tsa Metric';

  @override
  String get health_connected_sensors =>
      'Li-Sensors tsa Bophelo tse hokahantsoeng';

  @override
  String get plan_title => 'Moralo oa Letsatsi le Letsatsi';

  @override
  String get plan_weekly_title => 'Moralo oa Boiketlo ba Beke';

  @override
  String get plan_calorie_target => 'Khalori Target';

  @override
  String get plan_water_target => 'Sepheo sa Hydration';

  @override
  String get plan_step_target => 'Mohato Target';

  @override
  String get plan_sleep_target => 'Sepheo sa ho Robala';

  @override
  String get plan_meal_suggestions => 'Litlhahiso tsa Lijo';

  @override
  String get plan_healthy_habits => 'Litloaelo le Malebela a Bophelo bo Botle';

  @override
  String get plan_coach_advice => 'Litlhahiso tsa Mokoetlisi oa Bloomi AI';

  @override
  String get plan_generated_title =>
      'Kemiso ea Letsatsi le Letsatsi e Ikhethileng';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Fetola Profile';

  @override
  String get profile_name => 'Lebitso';

  @override
  String get profile_age => 'Lilemo';

  @override
  String get profile_gender => 'Bong';

  @override
  String get profile_height => 'Bophahamo';

  @override
  String get profile_weight => 'Boima ba \'mele';

  @override
  String get profile_goal => 'Sepheo sa Mathomo';

  @override
  String get profile_activity_level => 'Boemo ba Ts\'ebetso';

  @override
  String get profile_stats => 'Lipalopalo Tsa Bophelo Baka';

  @override
  String get profile_saved => 'Boemo bo ntlafalitsoe ka katleho';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Botho';

  @override
  String get settings => 'Litlhophiso';

  @override
  String get preferences_habits => 'LIKHETHO LE MEKHOA';

  @override
  String get appearance_theme => 'Ponahalo le Sehlooho';

  @override
  String get appearance_theme_sub =>
      'Lefifi, Leseli, Mokhoa oa Sistimi le Likhetho tsa Background ea App';

  @override
  String get permissions => 'Litumello le phihlello ea sistimi';

  @override
  String get permissions_sub =>
      'Health Connect, Mehato ea Sensor, GPS, Litsebiso & Khamera';

  @override
  String get reminders_notifications => 'Likhopotso le Litsebiso';

  @override
  String get reminders_sub =>
      'Linako tsa lijo, metsi, ho hlahloba boima ba \'mele le likhopotso tsa nako ea ho robala';

  @override
  String get units_of_measurement => 'Diyuniti tsa Tekanyo';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) kapa Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Puo ea App';

  @override
  String get language_sub =>
      'Senyesemane, हिन्दी (Hindi), Hinglish & 195+ lipuo tsa lefats\'e';

  @override
  String get home_screen_widgets => 'Li-Widgets tsa skrine sa lapeng';

  @override
  String get widgets_sub =>
      'Li-widget tsa Android tsa Live: Hub, Mehato, Metsi, Phepo le Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch mphato, lithaele, mathata le lintho tse phelang';

  @override
  String get goals_wellness => 'LIPEO LE BOPHELO LINTLHA TSEO';

  @override
  String get nutrition_targets => 'Lipheo tsa Phepo le Karohano ea Macro';

  @override
  String get nutrition_targets_sub =>
      'Sepheo sa khalori, liprotheine, li-carbs, mafura le metsi';

  @override
  String get weekly_recap => 'Recap ea beke le beke ea Wellness';

  @override
  String get weekly_recap_sub =>
      'Karolelano ea khalori ea matsatsi a 7, karolelano ea macro le letsatsi le letle';

  @override
  String get streaks_milestones => 'Methalo le Melemo';

  @override
  String get streaks_sub =>
      'Li-blossom streaks tse sebetsang, libeche le likatleho';

  @override
  String get connected_devices => 'LISEBETSI LE KHOPANG LE ECOSYSTEM';

  @override
  String get devices_hub => 'Lisebelisoa le Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Tikoloho le Boemo ba Leholimo';

  @override
  String get surroundings_sub =>
      'Boleng ba moea (AQI), index ea UV le malebela a ho futhumatsa boemo ba leholimo';

  @override
  String get bloomi_pro => 'Ngoliso ea Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Mokoetlisi oa AI Plan, li-widget tse 5 tsa skrineng sa lapeng le ho latela lintlha tsa bohlokoa';

  @override
  String get about_security => 'MABAPI LE TS\'IRELETSO';

  @override
  String get about_bloomi => 'Mabapi le Bloomi';

  @override
  String get about_bloomi_sub => 'Haha litlhaloso, mofuta, litlatsetso';

  @override
  String get privacy_policy => 'Leano la Lekunutu';

  @override
  String get privacy_policy_sub =>
      'Offline-pele, meralo ea data ea sesebelisoa';

  @override
  String get terms_conditions => 'Melao le Lipehelo';

  @override
  String get terms_conditions_sub =>
      'Melao ea ts\'ebeletso le tataiso ea bophelo bo botle';

  @override
  String get delete_account => 'Hlakola Account & Data';

  @override
  String get delete_account_sub =>
      'Hlakola data ea SQLite ea lehae ka mokhoa o sa fetoheng le li-backups tsa maru';

  @override
  String get healthy_habits =>
      'Theha mekhoa e bonolo, e tšoarellang ea bophelo bo botle';

  @override
  String get all_logs => 'Lintlha tsa ka tse Shebiloeng le Li-Logs';

  @override
  String get search_language => 'Batla ka puo kapa mongolo oa tlhaho...';

  @override
  String get languages_available => 'Lipuo Tse Fumanehang';

  @override
  String get no_matching_languages =>
      'Ha ho lipuo tse nyallanang tse fumanoeng';

  @override
  String get try_searching =>
      'Leka ho batlisisa ka mongolo oa tlhaho kapa mopeleto oa Senyesemane';

  @override
  String get partially_translated => 'E fetoletsoe ka mokhoa o fokolang';

  @override
  String get complete_translation => 'Feletseng';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Puo e hlophiselitsoe $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Tikoloho & Tikoloho';

  @override
  String get surroundings_aqi => 'Index ea Boleng ba Moea';

  @override
  String get surroundings_uv => 'Index ea UV';

  @override
  String get surroundings_temp => 'Mocheso';

  @override
  String get surroundings_humidity => 'Mongobo';

  @override
  String get surroundings_hydration_advice =>
      'Lula u le metsi hantle maemong a leholimo a hajoale.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Batla Lijo';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Eketsa Metsi';

  @override
  String get food_quick_custom => 'Lijo tse Tloaelehileng';

  @override
  String get surroundings_good => 'E ntle';

  @override
  String get surroundings_moderate => 'E itekanetseng';

  @override
  String get surroundings_unhealthy => 'E sa pheleng hantle';

  @override
  String get notifications_title => 'Litsebiso & Litlhokomeliso';

  @override
  String get notifications_empty => 'Ha ho litsebiso tse ncha';

  @override
  String get notifications_mark_read => 'Tšoaea Tsohle ha li Baliloe';

  @override
  String get notifications_clear => 'Hlakola Tsohle';

  @override
  String get reminders => 'Litlhophiso tsa Khopotso';

  @override
  String get notifications => 'Litsebiso';

  @override
  String get reminders_breakfast_title => 'Khopotso ea lijo tsa hoseng 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Lumela hoseng! Ke nako ea lijo tsa hoseng tse matlafatsang $time .';
  }

  @override
  String get reminders_lunch_title => 'Khopotso ea Lijo tsa Motšeare 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Emisa hanyane, \'me u natefeloe ke lijo tsa mots\'eare tse leka-lekaneng, tse nang le kelello ka $time .';
  }

  @override
  String get reminders_dinner_title => 'Khopotso ea Lijo tsa Mantsiboea 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Ke nako ea lijo tsa mantsiboea tse bobebe, tse khotsofatsang ka $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Nako ea ho noa khalase ea metsi a hloekileng! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Boima ba beke le beke ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Latela lintlha tsa \'mele oa hau oa beke le beke ho Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title =>
      'Moea oa ho robala ka nako ea ho robala 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Phomola \'me u itokisetse ho robala hamonate ( $time ).';
  }

  @override
  String get onboard_welcome => 'Rea u amohela ho Bloomi';

  @override
  String get onboard_sub =>
      'Motsoalle oa hau ea botsoalle, oa pele oa bophelo bo botle le phepo e nepahetseng.';

  @override
  String get onboard_get_started => 'Qala';

  @override
  String get onboard_sign_in => 'Kena';

  @override
  String get onboard_skip => 'Tlola';

  @override
  String get onboard_choose_goal =>
      'Sepheo sa hau sa mantlha sa bophelo bo botle ke sefe?';

  @override
  String get onboard_goal_weight_loss => 'Phokotso ea Boima bo Bonolo';

  @override
  String get onboard_goal_muscle => 'Matla a mesifa';

  @override
  String get onboard_goal_energy => 'Matla le Matla a Letsatsi le Letsatsi';

  @override
  String get onboard_goal_habits => 'Ho Ja ka Kelello e Molemo';

  @override
  String get onboard_about_you => 'Re Bolelle ka Uena';

  @override
  String get onboard_lifestyle => 'Kemiso ea Hao ea Letsatsi le Letsatsi';

  @override
  String get onboard_permissions_title => 'Litumello le phihlello ea sistimi';

  @override
  String get onboard_permissions_sub =>
      'Fana ka monyetla oa ho fihlella mehato ea khokahanyo, boikoetliso, le likhopotso.';

  @override
  String get onboard_plan_ready_title =>
      'Leano la Hao le Tloaelehileng le Loketse!';

  @override
  String get onboard_plan_ready_sub =>
      'Re u etselitse mokhoa o bonolo, oa phepo e nepahetseng le \'mapa oa bophelo bo botle molemong oa hau.';

  @override
  String get onboard_enter_bloomi => 'Kena Bloomi';

  @override
  String get insights_weekly_report => 'Recap ea beke le beke ea Wellness';

  @override
  String insights_best_day(Object day) {
    return 'Letsatsi le Molemo ka ho Fetisisa la Tšebeliso: $day';
  }

  @override
  String get insights_streaks_badges => 'Methalo le Melemo';

  @override
  String insights_unlocked_on(Object date) {
    return 'E butse ka $date';
  }

  @override
  String get insights_keep_going => 'Tsoela pele ka tsoelo-pele e tsotehang!';

  @override
  String get widgets_title => 'Li-Widgets tsa skrine sa lapeng';

  @override
  String widgets_active_count(Object count) {
    return 'Lisebelisoa tse sebetsang: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Mehato & A Ring e sebetsang';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Motsoalle oa Bloomi Mascot';

  @override
  String get wear_os_title => 'Apara OS Smartwatch';

  @override
  String get wear_os_connected => 'E hokahane le ho Shebella';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Ponahalo le Sehlooho';

  @override
  String get theme_mode => 'Theme Mode';

  @override
  String get theme_light => 'Leseli';

  @override
  String get theme_dark => 'Lefifi';

  @override
  String get theme_system => 'Sistimi ea kamehla';

  @override
  String get theme_background_palette => 'Palette e ka morao';

  @override
  String get units_title => 'Diyuniti tsa Tekanyo';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ha e khone ho kenya dashboard';

  @override
  String get home_health_permission_req =>
      'Ho Hlokahala Tumello ea Khokahano ea Bophelo bo Botle';

  @override
  String get home_health_permission_desc =>
      'Bloomi e hloka tumello ea Health Connect ho hula mehato ea \'nete, ho otla ha pelo, le ho hokahanya li-widget tsa lapeng ka nako ea nnete.';

  @override
  String get home_allow_health => 'Lumella Health Connect';

  @override
  String get home_ready_mindful_day =>
      'U itokiselitse letsatsi le hlokolosi? ✨';

  @override
  String get home_quick_add => 'Eketsa kapele';

  @override
  String get home_live_gps => 'GPS e phelang';

  @override
  String get home_calories_remaining_label => 'LIKALORI TSATSI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'E jelelitsoeng: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tlanya bakeng sa Tracker ea Metsi 💧';

  @override
  String get home_water_goal_reached => 'Sepheo sa letsatsi se fihletsoe 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ho fihlela sepheo sa letsatsi le letsatsi';
  }

  @override
  String get home_details => 'Lintlha';

  @override
  String get home_upgrade_plan_desc =>
      'Ntlafatsa ho notlolla sepheo sa hau sa letsatsi le letsatsi le moralo oa AI';

  @override
  String get home_unlock => 'Notlolla 👑';

  @override
  String get home_quick_log_hint =>
      'Ka potlako ngola tlaleho ea bophelo bo botle';

  @override
  String get food_serving_size => 'Boholo ba ho sebeletsa';

  @override
  String get food_serving_grams => 'Ho sebeletsa (g)';

  @override
  String get food_number_servings => 'Palo ea Litšebeletso';

  @override
  String get food_calories_per_serving => 'Li-calories ka ho sebeletsa';

  @override
  String get food_recipe_ingredients => 'Lisebelisoa';

  @override
  String get food_recipe_add_ingredient => 'Kenya motsoako';

  @override
  String get food_recipe_directions => 'Litaelo & Lintlha';

  @override
  String get food_recipe_total => 'Kakaretso ea Phepo ea Recipe';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast =>
      'Lijo tsa tloaelo li bolokiloe ka katleho!';

  @override
  String get food_barcode_found => 'Sehlahisoa se Fumaneha!';

  @override
  String get food_barcode_not_found_desc =>
      'Ha rea ​​fumana barcode ena sebakeng sa polokelo ea litaba se bulehileng. U ka e eketsa e le lijo tse tloaelehileng.';

  @override
  String get food_add_custom_btn => 'Kenya Lijo tse Tloaelehileng';

  @override
  String get food_scan_again => 'Scan Hape';

  @override
  String get food_review_items => 'Hlahloba Lijo Tse Fumanehang';

  @override
  String get food_review_hint =>
      'Fetola bongata kapa tlosa ntho efe kapa efe e sa lemoheng';

  @override
  String get food_log_selected => 'Loka Lijo tse Khethiloeng';

  @override
  String get food_favourites_title => 'Lijo tse Ratoang';

  @override
  String get food_recent_title => 'Lijo tsa morao-rao';

  @override
  String get food_no_favourites =>
      'Ha ho na lijo tseo u li ratang. Tobetsa ho ja lijo life kapa life ho boloka mona.';

  @override
  String get food_no_recents => 'Ha ho lijo tse rekiloeng haufinyane.';

  @override
  String get food_nutrition_details_title =>
      'Lintlha tsa Phepo ea Letsatsi le Letsatsi';

  @override
  String get food_macro_protein_label => 'Karohano ea Liprotheine';

  @override
  String get food_macro_carbs_label => 'Karohano ea Li-Carbs';

  @override
  String get food_macro_fat_label => 'Ho Aroha Mafura';

  @override
  String get food_macro_fiber_label => 'Ho senyeha ha Fiber';

  @override
  String get food_daily_target_comparison => 'Sepheo Papiso';

  @override
  String food_target_label(Object target) {
    return 'Sepheo: $target';
  }

  @override
  String get food_edit_entry => 'Fetola Keno ea Diary';

  @override
  String get food_delete_entry => 'Hlakola Keno';

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
    return '$current ya $target ml';
  }

  @override
  String get water_intake_history => 'Metsi a Kajeno';

  @override
  String get water_no_logs_today =>
      'Ha ho na metsi a kentsoeng kajeno. Hlahisa metsi \'me u tobetse konopo ea ho eketsa kapele!';

  @override
  String get water_adjust_goal => 'Fetola Pakane ea Letsatsi le Letsatsi';

  @override
  String get health_connect_banner => 'E hokahane le Health Connect';

  @override
  String get health_vitals_summary =>
      'Lintlha tsa Bophelo bo Botle ba Letsatsi le Letsatsi';

  @override
  String get health_latest_heart_rate => 'Sekhahla sa Pelo sa morao-rao';

  @override
  String get health_latest_bp => 'Khatello ea Mali';

  @override
  String get health_latest_spo2 => 'Oksijene ea Mali';

  @override
  String get health_latest_glucose => 'Glucose ea Mali';

  @override
  String get health_latest_weight => 'Boima ba \'mele';

  @override
  String get health_latest_sleep => 'Nako ea ho Robala';

  @override
  String get health_add_manual => 'Eketsa Tekanyo ea Matsoho';

  @override
  String get health_history_trends => 'Mekhoa ea Histori';

  @override
  String get health_sync_success =>
      'Lintlha tsa bophelo bo botle li hokahantsoe ka katleho!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours lihora $mins mets';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val lik\'hilograma';
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
      'Lisebelisoa tse hoketsoeng le Lintho Tse ka Roang';

  @override
  String get health_devices_desc =>
      'Laola li-smartwatches tse tsamaisanang, li-trackers tsa boikoetliso, le lisensara tsa bophelo.';

  @override
  String get health_workout_editor_title => 'Fetola Boikoetliso';

  @override
  String get health_workout_name_label => 'Lebitso la Boikoetliso';

  @override
  String get health_workout_duration_label => 'Nako (metsotso)';

  @override
  String get health_workout_calories_label => 'Khakanyo ea Likhalori (kcal)';

  @override
  String get health_workout_date_label => 'Letsatsi le Nako';

  @override
  String get plan_daily_wellness_roadmap => '\'Mapa oa hau o ikhethileng';

  @override
  String get plan_morning_routine => 'Mokhoa oa hoseng';

  @override
  String get plan_afternoon_routine => 'Motšehare oa Bophelo Botle';

  @override
  String get plan_evening_routine => 'Moea oa mantsiboea-Fatše';

  @override
  String get plan_coach_badge => 'Mokoetlisi oa Bloomi AI';

  @override
  String get plan_weekly_overview =>
      'Tsepamiso ea Bophelo bo Botle ba Matsatsi a 7';

  @override
  String get plan_targets_title => 'Lipheo le Lipheo tsa Bophelo bo Botle';

  @override
  String get plan_calorie_budget_label =>
      'Tekanyetso ea Khalori ea Letsatsi le Letsatsi';

  @override
  String get plan_water_budget_label =>
      'Sepheo sa Metsi a Letsatsi le Letsatsi';

  @override
  String get plan_step_budget_label =>
      'Sepheo sa Mohato oa Letsatsi le Letsatsi';

  @override
  String get plan_macro_split_label => 'Karolelano ea Macronutrient';

  @override
  String get profile_personal_details => 'Lintlha tsa Botho';

  @override
  String get profile_body_stats => 'Litekanyo tsa \'mele';

  @override
  String get profile_app_preferences => 'Likhetho le Litlhophiso tsa App';

  @override
  String get profile_edit_name_hint => 'Lebitso la hao';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Bolelele ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Boima ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Lilemo';

  @override
  String get profile_gender_male => 'Monna';

  @override
  String get profile_gender_female => 'E tšehali';

  @override
  String get profile_gender_other => 'Tse ling / Khetha ho se bue';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Hanyenyane ho isa ho ho se ikoetlise)';

  @override
  String get profile_activity_light =>
      'E sebetsa hanyenyane (matsatsi a 1-3/beke)';

  @override
  String get profile_activity_moderate =>
      'E sebetsa Hantle (matsatsi a 3-5/beke)';

  @override
  String get profile_activity_very => 'E sebetsa Haholo (matsatsi a 6-7/beke)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Kenya thaele ea Bloomi le mathata ho oache ea hau ea Wear OS ho sheba likhalori, metsi le mehato.';

  @override
  String get settings_widgets_header => 'Interactive Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Kenya li-widget tsa nako ea \'nete skrineng sa lapeng sa sesebelisoa sa hau bakeng sa lintlafatso tsa hanghang.';

  @override
  String get settings_about_header => 'Mabapi le Bloomi';

  @override
  String get settings_about_version => 'Phetolelo ea 1.0.0';

  @override
  String get settings_about_build => 'Haha 100';

  @override
  String get settings_about_credits =>
      'E entsoe ka tlhokomelo ea bophelo bo botle le bo botle.';

  @override
  String get settings_terms_header => 'Melao le Maemo';

  @override
  String get settings_privacy_header => 'Leano la Lekunutu';

  @override
  String get settings_delete_header => 'Hlakola Account & Data';

  @override
  String get settings_delete_warning =>
      'Ketso ena e ke ke ea etsolloa. Lijo tsohle tsa hau, boikoetliso, lintlha tsa bohlokoa le boemo ba hau li tla hlakoloa ka ho sa feleng.';

  @override
  String get settings_delete_confirm_btn => 'Hlakola ka ho sa Feleng';

  @override
  String get onboard_welcome_headline => 'Rea u amohela ho Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Teko e bonolo, e hlokolosi ea bophelo bo botle e etselitsoe bophelo ba hau.';

  @override
  String get onboard_step_about => 'Mabapi le Wena';

  @override
  String get onboard_step_goals => 'Lipakane Tsa Hao';

  @override
  String get onboard_step_lifestyle => 'Mekhoa ea Letsatsi le Letsatsi';

  @override
  String get onboard_step_permissions => 'Litumello';

  @override
  String get onboard_step_plan => 'E lokile!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Sensor ea mohato oa Counter';

  @override
  String get onboard_notif_perm => 'Likhopotso le Litsebiso';

  @override
  String get onboard_camera_perm => 'Khamera (Barcode & Sekena sa Lijo)';

  @override
  String get onboard_grant_permissions => 'Litumello tsa ho fana';

  @override
  String get onboard_continue_dashboard => 'Bula Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Likhopotso tsa metsi a bonolo letsatsi lohle';

  @override
  String get notif_channel_nutrition_name => 'Likhopotso tsa Lijo le Phepo';

  @override
  String get notif_channel_nutrition_desc =>
      'Litemoso tsa khopotso ka lijo tsa hoseng, tsa motšeare le tsa lijo tsa mantsiboea';

  @override
  String get notif_channel_steps_name => 'Mehato ea Mohato';

  @override
  String get notif_channel_steps_desc =>
      'Mekete ha u finyella lipakane tsa letsatsi le letsatsi';

  @override
  String get notif_channel_vitals_name =>
      'Litlhahlobo tsa Bophelo bo Botle le Bohlokoa';

  @override
  String get notif_channel_vitals_desc =>
      'Likhopotso tsa ho fokotsa boima ba \'mele le ho robala';

  @override
  String get notif_action_log_water => '💧 Loko +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Lijo tsa Log';

  @override
  String get language => 'Puo';

  @override
  String get share => 'Arolelana';

  @override
  String common_days(Object count) {
    return '$count matsatsi a fetileng';
  }
}
