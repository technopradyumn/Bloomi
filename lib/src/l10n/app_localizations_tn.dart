// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tswana (`tn`).
class AppLocalizationsTn extends AppLocalizations {
  AppLocalizationsTn([String locale = 'tn']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Gae';

  @override
  String get nav_today => 'Gompieno';

  @override
  String get nav_plan => 'Rulaganya';

  @override
  String get nav_food => 'Dijo';

  @override
  String get nav_food_diary => 'Tayari ya Dijo';

  @override
  String get nav_workout => 'Pego ya go Itshidila mmele';

  @override
  String get nav_health => 'Pholo';

  @override
  String get nav_profile => 'Porofaele';

  @override
  String get save => 'Boloka';

  @override
  String get cancel => 'Khansela';

  @override
  String get delete => 'Phimola';

  @override
  String get edit => 'Tseleganya';

  @override
  String get done => 'Ke feditse';

  @override
  String get close => 'Tswala';

  @override
  String get back => 'Morago';

  @override
  String get next => 'Se se latelang';

  @override
  String get continue_btn => 'Tswelela';

  @override
  String get confirm => 'Tlhomamisa';

  @override
  String get search => 'Batla';

  @override
  String get filter => 'Setlhotlhi';

  @override
  String get all => 'Tsotlhe';

  @override
  String get active => 'E matlhagatlhaga';

  @override
  String get today => 'Gompieno';

  @override
  String get yesterday => 'Maabane';

  @override
  String get tomorrow => 'Ka moso';

  @override
  String get add => 'Tsenya';

  @override
  String get remove => 'Tlosa';

  @override
  String get refresh => 'Lapolosa';

  @override
  String get retry => 'Leka gape';

  @override
  String get error => 'Phoso';

  @override
  String get success => 'Katlego';

  @override
  String get loading => 'Go laisa...';

  @override
  String get no_data => 'Ga go na tshedimosetso e e leng teng';

  @override
  String get offline => 'Mokgwa wa go se nne mo inthaneteng';

  @override
  String get offline_sub =>
      'Diphetogo di tla tsamaisana fa di sena go golaganngwa gape';

  @override
  String get undo => 'Dirolola';

  @override
  String get portion => 'Karolo';

  @override
  String get quantity => 'Bontsi';

  @override
  String get unit => 'Yuniti';

  @override
  String get clear => 'Phimola';

  @override
  String get select => 'Tlhopha';

  @override
  String get apply => 'Dira kopo';

  @override
  String get reset => 'Seta gape';

  @override
  String get ok => 'Go siame';

  @override
  String get yes => 'Ee';

  @override
  String get no => 'Nnyaa';

  @override
  String get optional => 'Ga go tlhokege';

  @override
  String get calories => 'Dikhalori';

  @override
  String get protein => 'Poroteine';

  @override
  String get carbs => 'Dikhabohaetereite';

  @override
  String get fat => 'Mafura';

  @override
  String get fiber => 'Tlhale';

  @override
  String get water => 'Metsi';

  @override
  String get steps => 'Dikgato';

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
  String get inches => 'mo';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'diura';

  @override
  String get minutes => 'metsotso';

  @override
  String get serving => 'Go direla';

  @override
  String get servings => 'Dijo';

  @override
  String get serving_size => 'Bogolo jwa go direla';

  @override
  String get per_100g => 'ka 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Yuropa';

  @override
  String get middle_east => 'Botlhabagare';

  @override
  String get africa => 'Aforika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Gae';

  @override
  String get home_greeting_morning => 'Moso o montle';

  @override
  String get home_greeting_afternoon => 'Dumela Thapama';

  @override
  String get home_greeting_evening => 'Maitsiboa a mantle';

  @override
  String get home_streak_title => 'Mothalo wa Sethunya';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count motseletsele wa malatsi',
      one: 'motseletsele wa letsatsi le le 1',
      zero: 'motseletsele wa malatsi a le 0',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'E fisitswe';

  @override
  String get home_calories_budget => 'Tekanyetsokabo ya Dikhalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal e e setseng';
  }

  @override
  String get home_water_title => 'Metsi Letsatsi le Letsatsi';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Dikgato tse di tsamailweng';

  @override
  String get home_quick_actions => 'Dikgato tsa ka bonako';

  @override
  String get home_log_meal => 'Dijo tsa Dikota';

  @override
  String get home_log_water => 'Metsi a Log';

  @override
  String get home_log_workout => 'Go Itshidila mmele';

  @override
  String get home_log_weight => 'Bokete jwa Kutu';

  @override
  String get home_insights_title => 'Ditemogo tsa Gompieno';

  @override
  String get home_quote =>
      'Ditlhopho tse dinnye tse di itekanetseng di dira diphetogo tse di thunyang.';

  @override
  String get home_ai_coach_tip => 'Mokatisi wa AI wa Bloomi';

  @override
  String get home_surroundings => 'Tikologo le Mowa';

  @override
  String get home_notifications => 'Dikitsiso';

  @override
  String get home_daily_score => 'Maduo a Boitekanelo a Letsatsi le Letsatsi';

  @override
  String get home_view_all => 'Leba Tsotlhe';

  @override
  String get food_diary_title => 'Tayari ya Dijo';

  @override
  String get food_breakfast => 'Sefitlholo';

  @override
  String get food_lunch => 'Dijo tsa motshegare';

  @override
  String get food_dinner => 'Dijo tsa maitseboa';

  @override
  String get food_snacks => 'Dijo tse di botlhoswana';

  @override
  String get food_add_food => 'Tsenya Dijo';

  @override
  String get food_edit_food => 'Tseleganya Dijo';

  @override
  String get food_add_breakfast => 'Tsenya Sefitlholo';

  @override
  String get food_add_lunch => 'Tsenya Dijo tsa Motshegare';

  @override
  String get food_add_dinner => 'Tsenya Dijo tsa Maitseboa';

  @override
  String get food_add_snack => 'Tsenya Seneke';

  @override
  String get food_total_calories => 'Palogotlhe ya Dikhalori';

  @override
  String get food_empty_meal => 'Ga go ise go kwadisiwe dijo tsa dijo tseno';

  @override
  String get food_empty_diary =>
      'Ga go na dijo tse di kwadilweng mo letsatsing leno';

  @override
  String get food_log_first_meal =>
      'Konya + go kwala dijo tsa gago tsa ntlha tse di monate';

  @override
  String get food_quick_add => 'Tsenya ka bonako';

  @override
  String get food_search_hint => 'Batla dijo, maungo, dal, roti...';

  @override
  String get food_custom_recipe => 'Dijo le Diresipi tse di Itiretsweng';

  @override
  String get food_scan_barcode => 'Sekena Khoutu ya Bara';

  @override
  String get food_camera_scan => 'Sekenara sa Dijo sa AI';

  @override
  String get food_recent => 'Dijo tsa Bosheng';

  @override
  String get food_favourites => 'Ditlhopho';

  @override
  String get food_macro_summary => 'Thulaganyo ya dikotla tse dikgolo';

  @override
  String get food_delete_meal_confirm =>
      'A o tlhomamisa gore o batla go tlosa ntlha eno?';

  @override
  String get food_item_deleted => 'Sejo se tlositswe';

  @override
  String get food_remaining => 'tse di setseng';

  @override
  String get food_consumed => 'jewa';

  @override
  String food_of_target(Object target) {
    return 'ya $target dikkhale';
  }

  @override
  String get foodSearch_title => 'Batla Dijo';

  @override
  String get foodSearch_scan_barcode => 'Sekena Khoutu ya Bara';

  @override
  String get foodSearch_take_photo => 'Senepe sa Dijo';

  @override
  String get foodSearch_custom_food => 'Tlhama Dijo tse di Itemetsweng';

  @override
  String get foodSearch_recent_searches => 'Dipatlo tsa Bosheng';

  @override
  String get foodSearch_popular => 'Dijo tse di Ratwang';

  @override
  String get foodSearch_no_results =>
      'Ga go na dijo tse di tsamaelanang le patlo ya gago';

  @override
  String get barcode_title => 'Sekenara sa Khoutu ya Bara';

  @override
  String get barcode_align =>
      'Lepalepanya khoutu ya dibara mo teng ga foreimi ya khamera';

  @override
  String get barcode_not_found =>
      'Sedirwa ga se bonwe mo polokelotshedimosetsong';

  @override
  String get barcode_premium_feature =>
      'Go sekaseka khoutu ya dibara go teng ka Bloomi Pro';

  @override
  String get camera_title => 'Sekenara sa Dijo sa AI';

  @override
  String get camera_tap_hint =>
      'Tsaya senepe se se bonalang sentle sa dijo tsa gago';

  @override
  String get camera_analysing => 'Go sekaseka poleiti ya dijo...';

  @override
  String get camera_detected => 'Dilwana tse di lemogilweng';

  @override
  String get camera_flash => 'Fetola Folashe';

  @override
  String get camera_retake => 'Tsaya Senepe Gape';

  @override
  String get camera_confirm_food => 'Tlhomamisa Dilwana';

  @override
  String get customFood_title => 'Dijo le Diresipi tse di Itiretsweng';

  @override
  String get customFood_name_hint => 'Leina la sejo kgotsa motswako';

  @override
  String get customFood_calories_hint => 'Dikhalori (kcal)';

  @override
  String get customFood_protein_hint => 'Poroteine (g)';

  @override
  String get customFood_carbs_hint => 'Dikhabohaetereite (g)';

  @override
  String get customFood_fat_hint => 'Mafura (g)';

  @override
  String get customFood_save => 'Boloka Resipi';

  @override
  String get water_tracker_title => 'Selatedi sa Metsi';

  @override
  String get water_daily_target => 'Maikaelelo a Letsatsi le Letsatsi';

  @override
  String get water_logged_today => 'E tsentswe Gompieno';

  @override
  String get water_add_glass => '+250 ml ya galase';

  @override
  String get water_add_bottle => 'Lebotlolo la +500 ml';

  @override
  String get water_custom_amount => 'Madi a a Tlwaelegileng';

  @override
  String get water_reminder_tip =>
      'Nwa metsi ka metlha letsatsi lotlhe gore o nne le maatla a a tlhomameng.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml ya metsi e e kwadilweng 💧';
  }

  @override
  String get workout_title => 'Pego ya go Itshidila mmele';

  @override
  String get workout_add_exercise => 'Tsenya go Itshidila mmele';

  @override
  String get workout_cardio => 'Pelo';

  @override
  String get workout_strength => 'Matla';

  @override
  String get workout_yoga => 'Yoga le go fetofetoga le maemo';

  @override
  String get workout_duration => 'Nako';

  @override
  String get workout_intensity => 'Bogale';

  @override
  String get workout_calories_burned => 'Dikhalori tse di Fisitsweng';

  @override
  String get workout_empty => 'Ga go na dithuto tse di kwadilweng gompieno';

  @override
  String get workout_save_success => 'Workout e bolokilwe ka katlego!';

  @override
  String get workout_type => 'Mofuta wa go Itshidila mmele';

  @override
  String get workout_notes => 'Dintlha le Dikakanyo';

  @override
  String get health_overview_title => 'Boitekanelo le Dilo tsa Botlhokwa';

  @override
  String get health_heart_rate => 'Go itaya ga Pelo';

  @override
  String get health_blood_oxygen => 'Okosejene ya Madi (SpO2)';

  @override
  String get health_blood_pressure => 'Kgatelelo ya Madi';

  @override
  String get health_blood_glucose => 'Sukiri ya Madi';

  @override
  String get health_body_temperature => 'Mogote wa Mmele';

  @override
  String get health_sleep_tracking => 'Go Latedisa Boroko';

  @override
  String get health_weight_tracking => 'Bokete le Popego ya Mmele';

  @override
  String get health_waist_hip => 'Tekanyo ya Letheka-go-Letheka';

  @override
  String get health_devices_hub =>
      'Didiriswa le Lefelo la Tshupanako e e Botlhale';

  @override
  String get health_sync_now => 'Kamakanya Tshedimosetso ya Boitekanelo';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'E tsamaisitswe labofelo: $time';
  }

  @override
  String get health_manual_entry => 'Tsenyo ya Boitekanelo ka Seatla';

  @override
  String get health_metric_detail => 'Dintlha tsa Meteriki';

  @override
  String get health_connected_sensors =>
      'Disensara tsa Boitekanelo tse di Golagantsweng';

  @override
  String get plan_title => 'Thulaganyo ya Letsatsi';

  @override
  String get plan_weekly_title => 'Leano la Beke le Beke la Boitekanelo';

  @override
  String get plan_calorie_target => 'Dikhalori tse di ikaeletsweng';

  @override
  String get plan_water_target => 'Seikaelelo sa Haeterese';

  @override
  String get plan_step_target => 'Seikaelelo sa Kgato';

  @override
  String get plan_sleep_target => 'Seikaelelo sa Boroko';

  @override
  String get plan_meal_suggestions => 'Dikakantsho tsa Dijo';

  @override
  String get plan_healthy_habits => 'Mekgwa e e itekanetseng le Dikeletso';

  @override
  String get plan_coach_advice => 'Dikatlanegiso tsa Mokatisi wa Bloomi AI';

  @override
  String get plan_generated_title =>
      'Thulaganyo ya Letsatsi le letsatsi e e itebagantseng le wena';

  @override
  String get profile_title => 'Porofaele';

  @override
  String get profile_edit => 'Tseleganya Porofaele';

  @override
  String get profile_name => 'Leina';

  @override
  String get profile_age => 'Dingwaga';

  @override
  String get profile_gender => 'Bong';

  @override
  String get profile_height => 'Bogodimo';

  @override
  String get profile_weight => 'Bokete';

  @override
  String get profile_goal => 'Maikaelelo a Motheo';

  @override
  String get profile_activity_level => 'Maemo a Tiro';

  @override
  String get profile_stats => 'Dipalopalo tsa Boitekanelo';

  @override
  String get profile_saved => 'Porofaele e tlhabolotswe ka katlego';

  @override
  String get profile_bmi => 'Tshupane ya Bokete jwa Mmele (BMI)';

  @override
  String get profile_membership => 'Botokololo';

  @override
  String get settings => 'Diseting';

  @override
  String get preferences_habits => 'DITLHAPO LE MEKWALO';

  @override
  String get appearance_theme => 'Ponagalo le Setlhogo';

  @override
  String get appearance_theme_sub =>
      'Lefifi, Lesedi, Mokgwa wa Tsamaiso le Ditlhopho tsa Lemorago la Tiriswa';

  @override
  String get permissions => 'Ditetlelelo le Phitlhelelo ya Tsamaiso';

  @override
  String get permissions_sub =>
      'Kgolagano ya Boitekanelo, Disensara tsa Dikgato, GPS, Dikitsiso le Khamera';

  @override
  String get reminders_notifications => 'Dikgopotso le Dikitsiso';

  @override
  String get reminders_sub =>
      'Dinako tsa dijo, metsi, go tlhola boima jwa mmele le dikgopotso tsa nako ya go robala';

  @override
  String get units_of_measurement => 'Diyuniti tsa go Lekanya';

  @override
  String get units_sub =>
      'Meteriki (kg, cm, ml, km) kgotsa Imperial (diponto, ft/in, fl oz)';

  @override
  String get app_language => 'Puo ya Tiriswa';

  @override
  String get language_sub =>
      'Setswana, हिन्दी (Sehindi), Seesemane le dipuo di le 195+ tsa lefatshe lotlhe';

  @override
  String get home_screen_widgets => 'Diwijete tsa Sekerini sa Gae';

  @override
  String get widgets_sub =>
      'Diwijete tsa Android tse di tshelang: Hub, Dikgato, Metsi, Phepo le Mascot';

  @override
  String get wear_os_watch_app => 'Apara App ya OS Watch';

  @override
  String get wear_os_sub =>
      'Molekane wa tshupanako e e botlhale, dithaele, mathata le dilo tsa botlhokwa tse di tshelang';

  @override
  String get goals_wellness => 'MAIKHELELO LE DITEMOGO TSA BOITEKANELO';

  @override
  String get nutrition_targets => 'Ditekanyetso tsa Phepo le Kgaogano e Kgolo';

  @override
  String get nutrition_targets_sub =>
      'Seikaelelo sa khalori, poroteine, dikhabohaetereite, mafura le maikaelelo a metsi';

  @override
  String get weekly_recap => 'Poeletso ya Beke le Beke ya Boitekanelo';

  @override
  String get weekly_recap_sub =>
      'Palogare ya dikhalori tsa malatsi a le 7, rašio ya makro le letsatsi le le gaisang';

  @override
  String get streaks_milestones => 'Methalo le Diphitlhelelo';

  @override
  String get streaks_sub =>
      'Methalo e e matlhagatlhaga ya malomo, dibetšhe le diphitlhelelo';

  @override
  String get connected_devices =>
      'DIDIRISWA TSE DI GOKAGANGANG LE TSAMAISO YA TIKOLOGO';

  @override
  String get devices_hub => 'Didiriswa le Lefelo la Tshupanako e e Botlhale';

  @override
  String get devices_hub_sub =>
      'Kgolagano ya Boitekanelo, Tshupanako ya Galaxy, Tshupanako ya Pixel, Garmin';

  @override
  String get surroundings_weather => 'Tikologo le Maemo a bosa';

  @override
  String get surroundings_sub =>
      'Boleng jwa mowa (AQI), tshupane ya UV le dintlha tsa go tsenya metsi mo maemong a bosa';

  @override
  String get bloomi_pro => 'Peeletso ya Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Mokatisi wa Leano la AI, diwijete di le 5 tsa sekerini sa gae le go latedisa dilo tsa botlhokwa';

  @override
  String get about_security => 'KA GA & TSHIRELETSO';

  @override
  String get about_bloomi => 'Ka ga Bloomi';

  @override
  String get about_bloomi_sub => 'Ditlhaloso tsa kago, mofuta, ditshwaelo';

  @override
  String get privacy_policy => 'Pholisi ya Bosephiri';

  @override
  String get privacy_policy_sub =>
      'Thulaganyo ya tshedimosetso ya ntlha, ya mo sedirisweng';

  @override
  String get terms_conditions => 'Melawana le Maemo';

  @override
  String get terms_conditions_sub =>
      'Melawana ya tirelo le dikaelo tsa boitekanelo';

  @override
  String get delete_account => 'Phimola Akhaonto le Tshedimosetso';

  @override
  String get delete_account_sub =>
      'Phimola tshedimosetso ya selegae ya SQLite le dibekapo tsa kwa marung ka tsela e e ka se busediweng morago';

  @override
  String get healthy_habits =>
      'Aga mekgwa e e bonolo, e e nnelang ruri ya boitekanelo';

  @override
  String get all_logs => 'Tshedimosetso ya me e e Latediwang le Dipegelo';

  @override
  String get search_language => 'Batla ka puo kgotsa mokwalo wa mono...';

  @override
  String get languages_available => 'Dipuo tse di leng teng';

  @override
  String get no_matching_languages => 'Ga go a bonwa dipuo tse di tshwanang';

  @override
  String get try_searching =>
      'Leka go batla ka mokwalo wa mono gae kgotsa ka mopeleto wa Seesemane';

  @override
  String get partially_translated => 'E ranotswe bontlhabongwe';

  @override
  String get complete_translation => 'Fetsa';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Puo e setilwe go $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Tikologo le Tikologo';

  @override
  String get surroundings_aqi => 'Tshupane ya Boleng jwa Mowa';

  @override
  String get surroundings_uv => 'Tshupane ya UV';

  @override
  String get surroundings_temp => 'Mogote';

  @override
  String get surroundings_humidity => 'Bongola';

  @override
  String get surroundings_hydration_advice =>
      'Nna o na le metsi a mantsi mo maemong a bosa a ga jaana.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Batla Dijo';

  @override
  String get food_quick_barcode => 'Sekena Khoutu ya Bara 👑';

  @override
  String get food_quick_water => 'Tsenya Metsi';

  @override
  String get food_quick_custom => 'Dijo tse di itiretsweng';

  @override
  String get surroundings_good => 'Go siame';

  @override
  String get surroundings_moderate => 'Magareng';

  @override
  String get surroundings_unhealthy => 'Ga e a itekanela';

  @override
  String get notifications_title => 'Dikitsiso le Ditsiboso';

  @override
  String get notifications_empty => 'Ga go na dikitsiso tse dintšhwa';

  @override
  String get notifications_mark_read =>
      'Tshwaya Tsotlhe jaaka tse di Buisitsweng';

  @override
  String get notifications_clear => 'Phimola Tsotlhe';

  @override
  String get reminders => 'Diseting tsa Kgopotso';

  @override
  String get notifications => 'Dikitsiso';

  @override
  String get reminders_breakfast_title => 'Kgopotso ya Sefitlholo 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Moso o montle! Nako ya sefitlholo se se nang le dikotla kwa $time .';
  }

  @override
  String get reminders_lunch_title => 'Kgopotso ya Dijo tsa Motshegare 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Ema go sekae mme o itumelele dijo tsa motshegare tse di nang le tekatekano, tse di nang le mogopolo kwa $time .';
  }

  @override
  String get reminders_dinner_title => 'Kgopotso ya Dijo tsa Maitseboa 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Nako ya dijo tsa maitseboa tse di botlhofo, tse di kgotsofatsang kwa $time .';
  }

  @override
  String get reminders_water_title => 'Go Tlhotlheletsa Metsi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Nako ya go nwa galase ya metsi a a foreshe! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Tekanyo ya beke le beke ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Latedisa dimeteriki tsa mmele wa gago wa beke le beke mo Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Phefo ya nako ya go robala 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Repa mme o ipaakanyetse go robala boroko jo bo iketlileng ( $time ) .';
  }

  @override
  String get onboard_welcome => 'O amogetswe mo Bloomi';

  @override
  String get onboard_sub =>
      'Molekane wa gago yo o botsalano, wa boitekanelo le dikotla wa ntlha kwa ntle ga inthanete.';

  @override
  String get onboard_get_started => 'Simolola';

  @override
  String get onboard_sign_in => 'Saenela Tsena';

  @override
  String get onboard_skip => 'Tlola';

  @override
  String get onboard_choose_goal =>
      'Mokgele wa gago o mogolo wa boitekanelo ke ofe?';

  @override
  String get onboard_goal_weight_loss => 'Go Fokotsa Boima jwa Mmele ka Bonolo';

  @override
  String get onboard_goal_muscle => 'Go Nna le Maatla a Mesifa';

  @override
  String get onboard_goal_energy =>
      'Maatla le Botshelo jwa Letsatsi le Letsatsi';

  @override
  String get onboard_goal_habits => 'Go Ja ka Tlhaloganyo e e itekanetseng';

  @override
  String get onboard_about_you => 'Re Bolelele ka Gago';

  @override
  String get onboard_lifestyle => 'Thulaganyo ya Gago ya Letsatsi le Letsatsi';

  @override
  String get onboard_permissions_title =>
      'Ditetlelelo le Phitlhelelo ya Tsamaiso';

  @override
  String get onboard_permissions_sub =>
      'Naya phitlhelelo ya dikgato tsa go tsamaisanya, go itshidila mmele, le dikgopotso.';

  @override
  String get onboard_plan_ready_title => 'Leano la Gago la Tlwaelo le Siame!';

  @override
  String get onboard_plan_ready_sub =>
      'Re go diretse mmapa wa tsela o o bonolo, o o itebagantseng le wena wa phepo le boitekanelo fela.';

  @override
  String get onboard_enter_bloomi => 'Tsenya Bloomi';

  @override
  String get insights_weekly_report =>
      'Poeletso ya Beke le Beke ya Boitekanelo';

  @override
  String insights_best_day(Object day) {
    return 'Letsatsi le le gaisang la go tlhomama: $day';
  }

  @override
  String get insights_streaks_badges => 'Methalo le Diphitlhelelo';

  @override
  String insights_unlocked_on(Object date) {
    return 'E lotlolotswe mo $date';
  }

  @override
  String get insights_keep_going => 'Tswelela ka kgatelopele e e gakgamatsang!';

  @override
  String get widgets_title => 'Diwijete tsa Sekerini sa Gae';

  @override
  String widgets_active_count(Object count) {
    return 'Didiriswa tse di dirang: $count';
  }

  @override
  String get widgets_hub_title => 'Lefelo la Boitekanelo la Bloomi';

  @override
  String get widgets_steps_title => 'Dikgato le Palamonwana e e Dirang';

  @override
  String get widgets_water_title => 'Pegelo ya ka bonako ya go tsenya metsi';

  @override
  String get widgets_mascot_title => 'Molekane wa Mascote wa Bloomi';

  @override
  String get wear_os_title => 'Apara Tshupanako e e Botlhale ya OS';

  @override
  String get wear_os_connected => 'E golagantswe le Tshupanako';

  @override
  String get wear_os_sync => 'Tshwaraganya Tshedimosetso ya Tshupanako';

  @override
  String get theme_title => 'Ponagalo le Setlhogo';

  @override
  String get theme_mode => 'Mokgwa wa Setlhogo';

  @override
  String get theme_light => 'Lesedi';

  @override
  String get theme_dark => 'Lefifi';

  @override
  String get theme_system => 'Thulaganyetsoruri ya Tsamaiso';

  @override
  String get theme_background_palette => 'Phalete ya Lemorago';

  @override
  String get units_title => 'Diyuniti tsa go Lekanya';

  @override
  String get units_metric => 'Metriki (kg, cm, ml)';

  @override
  String get units_imperial => 'Bogosi (diponto, mo, fl oz)';

  @override
  String get home_unable_load => 'Ga e kgone go laisa dasheboto';

  @override
  String get home_health_permission_req =>
      'Tetla ya Kgolagano ya Boitekanelo e a Tlhokega';

  @override
  String get home_health_permission_desc =>
      'Bloomi e tlhoka tetla ya Health Connect go goga dikgato tsa mmatota, go itaya ga pelo, le go tsamaisanya diwijete tsa legae la selulafouno ka nako ya mmatota.';

  @override
  String get home_allow_health => 'Letla Kgolaganyo ya Boitekanelo';

  @override
  String get home_ready_mindful_day =>
      'A o siametse letsatsi le le nang le mogopolo? ✨';

  @override
  String get home_quick_add => 'Tsenya ka bonako';

  @override
  String get home_live_gps => 'GPS e e tshelang';

  @override
  String get home_calories_remaining_label => 'DIKHALORI TSE DI SALETSENG';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'E jewa: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Pompo ya Selatedi sa Metsi 💧';

  @override
  String get home_water_goal_reached =>
      'Maikaelelo a letsatsi le letsatsi a fitlheletswe 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml go ya go mokgele wa letsatsi';
  }

  @override
  String get home_details => 'Dintlha';

  @override
  String get home_upgrade_plan_desc =>
      'Ntšhwafatsa go lotlolola dintlha tsa letsatsi le letsatsi tse di itebagantseng le thulaganyo ya AI';

  @override
  String get home_unlock => 'Lotlolola 👑';

  @override
  String get home_quick_log_hint => 'Rekota ka bonako tsenyo ya boitekanelo';

  @override
  String get food_serving_size => 'Bogolo jwa go direla';

  @override
  String get food_serving_grams => 'Go direla (g)';

  @override
  String get food_number_servings => 'Palo ya Dijo';

  @override
  String get food_calories_per_serving => 'Dikhalori ka sejana';

  @override
  String get food_recipe_ingredients => 'Metswako';

  @override
  String get food_recipe_add_ingredient => 'Tsenya Motswako';

  @override
  String get food_recipe_directions => 'Ditaelo le Dintlha';

  @override
  String get food_recipe_total => 'Palogotlhe ya Dikotla tsa Diresipi';

  @override
  String get food_recipe_per_serving => 'Phepo ka Sejana';

  @override
  String get food_recipe_saved_toast =>
      'Dijo tse di rulagantsweng di bolokilwe ka katlego!';

  @override
  String get food_barcode_found => 'Setlhagiswa se Bonwe!';

  @override
  String get food_barcode_not_found_desc =>
      'Ga re a kgona go bona khoutu eno ya dibara mo polokelotshedimosetsong e e bulegileng. O ka e tsenya jaaka dijo tsa setso.';

  @override
  String get food_add_custom_btn => 'Tsenya Dijo tse di Itemetsweng';

  @override
  String get food_scan_again => 'Sekena Gape';

  @override
  String get food_review_items => 'Sekaseka Dijo tse di Lemogileng';

  @override
  String get food_review_hint =>
      'Fetola bontsi kgotsa tlosa sengwe le sengwe se se sa lemogiweng';

  @override
  String get food_log_selected => 'Kwala Dijo tse di Tlhophilweng';

  @override
  String get food_favourites_title => 'Dijo tse ke di ratang';

  @override
  String get food_recent_title => 'Dijo tsa Bosheng';

  @override
  String get food_no_favourites =>
      'Ga go ise go nne le dijo tse ke di ratang. Konya pelo mo dijong dipe go boloka fano.';

  @override
  String get food_no_recents =>
      'Ga go na dijo tse di sa tswang go kwalwa tse di bonweng.';

  @override
  String get food_nutrition_details_title =>
      'Dintlha tsa Phepo ya Letsatsi le Letsatsi';

  @override
  String get food_macro_protein_label => 'Go Thubega ga Poroteine';

  @override
  String get food_macro_carbs_label => 'Thulaganyo ya Dikhabohaetereite';

  @override
  String get food_macro_fat_label => 'Go Kgaoganngwa ga Mafura';

  @override
  String get food_macro_fiber_label => 'Go Thubega ga Faeba';

  @override
  String get food_daily_target_comparison => 'Papiso ya Seikaelelo';

  @override
  String food_target_label(Object target) {
    return 'Seikaelelo: $target';
  }

  @override
  String get food_edit_entry => 'Tseleganya Tsenyo ya Tayari';

  @override
  String get food_delete_entry => 'Phimola Tsenngwa';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal dikkhale';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ya $target ml';
  }

  @override
  String get water_intake_history => 'Dikutu tsa Metsi tsa Gompieno';

  @override
  String get water_no_logs_today =>
      'Ga go ise go tsenngwe metsi gompieno. Hydrate o bo o tobetsa konopo ya go tsenya ka bonako!';

  @override
  String get water_adjust_goal => 'Fetola Mokgele wa Letsatsi le Letsatsi';

  @override
  String get health_connect_banner =>
      'E golagantswe le Kgolagano ya Boitekanelo';

  @override
  String get health_vitals_summary =>
      'Dibotlhokwa tsa Boitekanelo tsa Letsatsi le Letsatsi';

  @override
  String get health_latest_heart_rate => 'Go itaya ga pelo ga bosheng';

  @override
  String get health_latest_bp => 'Kgatelelo ya Madi';

  @override
  String get health_latest_spo2 => 'Okosejene ya Madi';

  @override
  String get health_latest_glucose => 'Sukiri ya Madi';

  @override
  String get health_latest_weight => 'Bokete';

  @override
  String get health_latest_sleep => 'Nako ya Boroko';

  @override
  String get health_add_manual => 'Tsenya Go Lekanya ka Seatla';

  @override
  String get health_history_trends => 'Diphetogo tsa Hisitori';

  @override
  String get health_sync_success =>
      'Tshedimosetso ya boitekanelo e tsamaisana ka katlego!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours diura $mins metsotso';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val dikilogerama';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bepm';
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
  String get health_devices_title =>
      'Didiriswa tse di Golagantsweng le Dilo tse di Aparang';

  @override
  String get health_devices_desc =>
      'Laola ditshupanako tse di botlhale tse di kopantsweng, dilatedi tsa go ikatisa mmele, le disensara tsa boitekanelo.';

  @override
  String get health_workout_editor_title => 'Tseleganya go Itshidila mmele';

  @override
  String get health_workout_name_label => 'Leina la go Itshidila mmele';

  @override
  String get health_workout_duration_label => 'Nako (metsotso)';

  @override
  String get health_workout_calories_label =>
      'Dikhalori tse di fopholediwang (kcal)';

  @override
  String get health_workout_date_label => 'Letlha le Nako';

  @override
  String get plan_daily_wellness_roadmap =>
      'Mmapa wa Tsela o o itebagantseng le wena';

  @override
  String get plan_morning_routine => 'Tlwaelo ya Moso';

  @override
  String get plan_afternoon_routine => 'Boitekanelo jwa Motshegare';

  @override
  String get plan_evening_routine => 'Phefo ya Maitsiboa';

  @override
  String get plan_coach_badge => 'Mokatisi wa AI wa Bloomi';

  @override
  String get plan_weekly_overview =>
      'Tsepamo ya Boitekanelo jwa Malatsi a le 7';

  @override
  String get plan_targets_title => 'Diphitlhelelo le Mekgele ya Boitekanelo';

  @override
  String get plan_calorie_budget_label =>
      'Tekanyetsokabo ya Dikhalori tsa Letsatsi';

  @override
  String get plan_water_budget_label =>
      'Seikaelelo sa Letsatsi le Letsatsi sa Metsi';

  @override
  String get plan_step_budget_label =>
      'Maikaelelo a Kgato ya Letsatsi le Letsatsi';

  @override
  String get plan_macro_split_label => 'Tekanyo ya dikotla tse dikgolo';

  @override
  String get profile_personal_details => 'Dintlha tsa Botho';

  @override
  String get profile_body_stats => 'Ditekanyo tsa Mmele';

  @override
  String get profile_app_preferences => 'Ditlhopho le Diseting tsa Tiriswa';

  @override
  String get profile_edit_name_hint => 'Leina la gago';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Boleele ( _PH_0__ )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Bokete ( _PH_0__ )';
  }

  @override
  String get profile_edit_age_hint => 'Dingwaga';

  @override
  String get profile_gender_male => 'Monna';

  @override
  String get profile_gender_female => 'E namagadi';

  @override
  String get profile_gender_other => 'Tse dingwe / Ke rata go se bue';

  @override
  String get profile_activity_sedentary =>
      'Go nna fela (Go ikatisa go le gonnye kgotsa go sa ikatise)';

  @override
  String get profile_activity_light =>
      'E Matlhagatlhaga go se kae (malatsi a le 1-3/beke)';

  @override
  String get profile_activity_moderate =>
      'E Matlhagatlhaga ka Magareng (malatsi a le 3-5/beke)';

  @override
  String get profile_activity_very =>
      'E Matlhagatlhaga thata (malatsi a le 6-7/beke)';

  @override
  String get settings_wear_os_header => 'Apara Tiriso ya Molekane wa OS';

  @override
  String get settings_wear_os_desc =>
      'Tsenya thaele ya Bloomi le go raraana mo tshupanakong ya gago ya Wear OS go gadima dikhalori, metsi, le dikgato.';

  @override
  String get settings_widgets_header =>
      'Diwijete tsa Android tse di dirisanang';

  @override
  String get settings_widgets_desc =>
      'Pina diwijete tsa nako ya mmatota mo sekirining sa gae sa sediriswa sa gago go bona dintšhwafatso tsa ka bonako.';

  @override
  String get settings_about_header => 'Ka ga Bloomi';

  @override
  String get settings_about_version => 'Mofuta wa 1.0.0';

  @override
  String get settings_about_build => 'Aga 100';

  @override
  String get settings_about_credits =>
      'E dirilwe ka tlhokomelo ya go tshela ka tlhaloganyo, ka boitekanelo.';

  @override
  String get settings_terms_header => 'Melawana le Maemo';

  @override
  String get settings_privacy_header => 'Pholisi ya Bosephiri';

  @override
  String get settings_delete_header => 'Phimola Akhaonto le Tshedimosetso';

  @override
  String get settings_delete_warning =>
      'Tiro eno ga e ka ke ya dirololwa. Dijo tsotlhe tsa gago, go itshidila mmele, dilo tsa botlhokwa le porofaele di tla phimolelwa ruri.';

  @override
  String get settings_delete_confirm_btn => 'Phimola ruri';

  @override
  String get onboard_welcome_headline => 'O amogetswe mo Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Go latedisa boitekanelo ka bonolo, ka tlhaloganyo go go diretsweng go dikologa botshelo jwa gago.';

  @override
  String get onboard_step_about => 'Ka ga Gago';

  @override
  String get onboard_step_goals => 'Mekgele ya Gago';

  @override
  String get onboard_step_lifestyle => 'Mekgwa ya Letsatsi le Letsatsi';

  @override
  String get onboard_step_permissions => 'Ditetlelelo';

  @override
  String get onboard_step_plan => 'Ke siametse!';

  @override
  String get onboard_health_connect_perm =>
      'Phitlhelelo ya Kgolagano ya Boitekanelo';

  @override
  String get onboard_step_sensors_perm => 'Sensara ya Sebadi sa Dikgato';

  @override
  String get onboard_notif_perm => 'Dikgopotso le Dikitsiso tsa Tlhaloganyo';

  @override
  String get onboard_camera_perm =>
      'Khamera (Khoutu ya Dibara le Sekenara sa Dijo)';

  @override
  String get onboard_grant_permissions => 'Neela Ditetlelelo';

  @override
  String get onboard_continue_dashboard => 'Bula Dasheboto';

  @override
  String get notif_channel_hydration_name => 'Dikgogediso tsa go tsenya metsi';

  @override
  String get notif_channel_hydration_desc =>
      'Dikgopotso tsa metsi a a bonolo letsatsi lotlhe';

  @override
  String get notif_channel_nutrition_name => 'Dikgopotso tsa Dijo le Phepo';

  @override
  String get notif_channel_nutrition_desc =>
      'Ditsiboso tsa dikgopotso tsa sefitlholo, tsa motshegare, le tsa maitseboa';

  @override
  String get notif_channel_steps_name => 'Diphitlhelelo tsa Kgato';

  @override
  String get notif_channel_steps_desc =>
      'Meletlo fa go fitlhelelwa dintlha tsa dikgato tsa letsatsi le letsatsi';

  @override
  String get notif_channel_vitals_name =>
      'Ditshekatsheko tsa Boitekanelo le Dilo tsa Botlhokwa';

  @override
  String get notif_channel_vitals_desc =>
      'Dikgopotso tsa boima jwa mmele le tsa nako ya go robala';

  @override
  String get notif_action_log_water => '💧 Kutu +250ml';

  @override
  String get notif_action_snooze => 'Go tlhobaela 15m';

  @override
  String get notif_action_log_meal => '🥗 Dijo tsa Dikota';

  @override
  String get language => 'Puo';

  @override
  String get share => 'Abelana';

  @override
  String common_days(Object count) {
    return 'letsatsi le le fetileng';
  }
}
