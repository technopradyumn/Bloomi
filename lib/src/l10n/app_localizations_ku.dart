// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Home';

  @override
  String get nav_today => 'Îro';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Food';

  @override
  String get nav_food_diary => 'Rojnivîska Xwarinê';

  @override
  String get nav_workout => 'Têketinê Workout';

  @override
  String get nav_health => 'Health';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Betal bike';

  @override
  String get delete => 'Jêbirin';

  @override
  String get edit => 'Biguherîne';

  @override
  String get done => 'Kirin';

  @override
  String get close => 'Girtin';

  @override
  String get back => 'Vegere';

  @override
  String get next => 'Next';

  @override
  String get continue_btn => 'Berdewam bike';

  @override
  String get confirm => 'Piştrast bike';

  @override
  String get search => 'Search';

  @override
  String get filter => 'Parzûn';

  @override
  String get all => 'Hemû';

  @override
  String get active => 'Active';

  @override
  String get today => 'Îro';

  @override
  String get yesterday => 'Duh';

  @override
  String get tomorrow => 'Sibe';

  @override
  String get add => 'Zêde bikin';

  @override
  String get remove => 'Rakirin';

  @override
  String get refresh => 'Refresh';

  @override
  String get retry => 'Ji nû ve biceribîne';

  @override
  String get error => 'Error';

  @override
  String get success => 'Serkeftin';

  @override
  String get loading => 'Barkirin...';

  @override
  String get no_data => 'Daneyên berdest nînin';

  @override
  String get offline => 'Moda Offline';

  @override
  String get offline_sub =>
      'Gava ku ji nû ve were girêdan dê guheztin hevdeng bibin';

  @override
  String get undo => 'Undo';

  @override
  String get portion => 'Beş';

  @override
  String get quantity => 'Quantity';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Clear';

  @override
  String get select => 'Hilbijêre';

  @override
  String get apply => 'Apply';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get optional => 'Bijarî';

  @override
  String get calories => 'Kalorî';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Fat';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Water';

  @override
  String get steps => 'Steps';

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
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Xizmet dikin';

  @override
  String get servings => 'Servings';

  @override
  String get serving_size => 'Mezinahiya xizmetê';

  @override
  String get per_100g => 'per 100 g';

  @override
  String get india => 'Hindistan';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Ewropa';

  @override
  String get middle_east => 'Rojhilata Navîn';

  @override
  String get africa => 'Afrîka';

  @override
  String get americas => 'Amerîka';

  @override
  String get home_title => 'Home';

  @override
  String get home_greeting_morning => 'Good Morning';

  @override
  String get home_greeting_afternoon => 'Rojbaş';

  @override
  String get home_greeting_evening => 'Êvar baş';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rêzika $count rojan',
      one: '1 roj rêz',
      zero: 'Rêza 0 rojan',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Şewitandin';

  @override
  String get home_calories_budget => 'Budçeya kalorî';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal maye';
  }

  @override
  String get home_water_title => 'Hydration Daily';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Steps Walked';

  @override
  String get home_quick_actions => 'Çalakiyên bilez';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Têketin Workout';

  @override
  String get home_log_weight => 'Giraniya têketinê';

  @override
  String get home_insights_title => 'Nêrînên Îro';

  @override
  String get home_quote =>
      'Vebijarkên piçûk ên tendurist veguherînên kulîlk çêdikin.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Derdor & hewa';

  @override
  String get home_notifications => 'Notifications';

  @override
  String get home_daily_score => 'Pûana Xweşiya Rojane';

  @override
  String get home_view_all => 'Binêre Hemî';

  @override
  String get food_diary_title => 'Rojnivîska Xwarinê';

  @override
  String get food_breakfast => 'Firavîn';

  @override
  String get food_lunch => 'Lunch';

  @override
  String get food_dinner => 'Dinner';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Xwarinê zêde bikin';

  @override
  String get food_edit_food => 'Xwarinê biguherîne';

  @override
  String get food_add_breakfast => 'Taştê lê zêde bike';

  @override
  String get food_add_lunch => 'Lunch lê zêde bike';

  @override
  String get food_add_dinner => 'Dinner zêde bike';

  @override
  String get food_add_snack => 'Snack zêde bikin';

  @override
  String get food_total_calories => 'Tevahiya Kalorî';

  @override
  String get food_empty_meal =>
      'Ji bo vê xwarinê hêj tu xwarin nehatiye tomarkirin';

  @override
  String get food_empty_diary => 'Ji bo vê rojê xwarin nehat tomarkirin';

  @override
  String get food_log_first_meal =>
      'Bikirtînin + da ku yekem xwarina xweya xweş têkevin';

  @override
  String get food_quick_add => 'Zû Zêdekirin';

  @override
  String get food_search_hint => 'Li xwarin, fêkî, dal, roti bigerin...';

  @override
  String get food_custom_recipe => 'Xwarin & Recipe Custom';

  @override
  String get food_scan_barcode => 'Barcode Scan';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Xwarinên Dawî';

  @override
  String get food_favourites => 'Favorites';

  @override
  String get food_macro_summary => 'Dabeşkirina Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Ma tu bi rastî dixwazî vê babetê jê bikî?';

  @override
  String get food_item_deleted => 'Xwarinê hate rakirin';

  @override
  String get food_remaining => 'mayîn';

  @override
  String get food_consumed => 'xwar kirin';

  @override
  String food_of_target(Object target) {
    return 'ji $target kcal';
  }

  @override
  String get foodSearch_title => 'Lêgerîna Xwarinan';

  @override
  String get foodSearch_scan_barcode => 'Barcode Scan';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Xwarina Xweser biafirînin';

  @override
  String get foodSearch_recent_searches => 'Lêgerînên Dawî';

  @override
  String get foodSearch_popular => 'Xwarinên populer';

  @override
  String get foodSearch_no_results => 'Xwarinek li gorî lêgerîna we tune';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align =>
      'Barkodê di hundurê çarçoweya kamerayê de berhev bikin';

  @override
  String get barcode_not_found => 'Hilber di databasê de nehat dîtin';

  @override
  String get barcode_premium_feature =>
      'Skanandina barkodê bi Bloomi Pro re heye';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Wêneyek zelal ji xwarina xwe bigirin';

  @override
  String get camera_analysing => 'Analîzkirina plakaya xwarinê...';

  @override
  String get camera_detected => 'Tiştên tespît kirin';

  @override
  String get camera_flash => 'Bişkojka Flash';

  @override
  String get camera_retake => 'Wêne ji nû ve bistînin';

  @override
  String get camera_confirm_food => 'Tiştên piştrast bikin';

  @override
  String get customFood_title => 'Xwarin & Recipe Custom';

  @override
  String get customFood_name_hint => 'Navê xwarinê an malzemeyê';

  @override
  String get customFood_calories_hint => 'Kalorî (kcal)';

  @override
  String get customFood_protein_hint => 'Proteîn (g)';

  @override
  String get customFood_carbs_hint => 'Karbohîdartan (g)';

  @override
  String get customFood_fat_hint => 'Qelew (g)';

  @override
  String get customFood_save => 'Save Recipe';

  @override
  String get water_tracker_title => 'Şopandina avê';

  @override
  String get water_daily_target => 'Armanca Hydration Daily';

  @override
  String get water_logged_today => 'Îro têketin';

  @override
  String get water_add_glass => '+250 ml Glass';

  @override
  String get water_add_bottle => '+500 ml Bottle';

  @override
  String get water_custom_amount => 'Mîqdara Custom';

  @override
  String get water_reminder_tip =>
      'Ji bo enerjiya domdar, di nav rojê de bi rêkûpêk avê vexwin.';

  @override
  String water_logged_toast(Object amount) {
    return 'Têketin $amount ml av 💧';
  }

  @override
  String get workout_title => 'Têketinê Workout';

  @override
  String get workout_add_exercise => 'Workout zêde bikin';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Strength';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Duration';

  @override
  String get workout_intensity => 'Intensity';

  @override
  String get workout_calories_burned => 'Kaloriyên şewitandin';

  @override
  String get workout_empty => 'Îro tu xebat nehatine qeydkirin';

  @override
  String get workout_save_success => 'Workout bi serkeftî xilas bû!';

  @override
  String get workout_type => 'Cureyê Xebatê';

  @override
  String get workout_notes => 'Nîşe & Reflections';

  @override
  String get health_overview_title => 'Tenduristî & Jîngeh';

  @override
  String get health_heart_rate => 'Heart Rate';

  @override
  String get health_blood_oxygen => 'Oksîjena xwînê (SpO2)';

  @override
  String get health_blood_pressure => 'Tansiyona xwînê';

  @override
  String get health_blood_glucose => 'Glîkoza xwînê';

  @override
  String get health_body_temperature => 'Germahiya Bedenê';

  @override
  String get health_sleep_tracking => 'Şopandina Xew';

  @override
  String get health_weight_tracking => 'Weight & Body Composition';

  @override
  String get health_waist_hip => 'Rêjeya Kevir-to-Hip';

  @override
  String get health_devices_hub => 'Amûr & Smartwatch Hub';

  @override
  String get health_sync_now => 'Daneyên tenduristiyê hevdeng bikin';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Herî dawî senkronîzekirin: $time';
  }

  @override
  String get health_manual_entry => 'Destûra Têketina Tenduristiyê';

  @override
  String get health_metric_detail => 'Details Metric';

  @override
  String get health_connected_sensors => 'Sensorên tenduristiyê yên girêdayî';

  @override
  String get plan_title => 'Plana rojane';

  @override
  String get plan_weekly_title => 'Plana Wellness heftane';

  @override
  String get plan_calorie_target => 'Target Calorie';

  @override
  String get plan_water_target => 'Target Hydration';

  @override
  String get plan_step_target => 'Target Step';

  @override
  String get plan_sleep_target => 'Xewa Target';

  @override
  String get plan_meal_suggestions => 'Pêşniyarên xwarinê';

  @override
  String get plan_healthy_habits => 'Adet û Serişteyên Tenduristî';

  @override
  String get plan_coach_advice => 'Pêşniyarên Coach Bloomi AI';

  @override
  String get plan_generated_title => 'Bernameya rojane ya kesane';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Profîl biguherîne';

  @override
  String get profile_name => 'Name';

  @override
  String get profile_age => 'Age';

  @override
  String get profile_gender => 'Zayendî';

  @override
  String get profile_height => 'Bilindahî';

  @override
  String get profile_weight => 'Weight';

  @override
  String get profile_goal => 'Armanca bingehîn';

  @override
  String get profile_activity_level => 'Asta Çalakiyê';

  @override
  String get profile_stats => 'Statîstîkên tenduristiya min';

  @override
  String get profile_saved => 'Profîl bi serkeftî hate nûve kirin';

  @override
  String get profile_bmi => 'Endeksa Komkujiya Bedenê (BMI)';

  @override
  String get profile_membership => 'Endamtî';

  @override
  String get settings => 'Settings';

  @override
  String get preferences_habits => 'PÊŞGERÎN Û AZADÎ';

  @override
  String get appearance_theme => 'Xuyabûn & Mijar';

  @override
  String get appearance_theme_sub =>
      'Tarî, Ronahî, Moda Pergalê & Vebijarkên Paşîna Serlêdanê';

  @override
  String get permissions => 'Destûr û Gihîştina Pergalê';

  @override
  String get permissions_sub =>
      'Têkiliya Tenduristî, Sensorên Gav, GPS, Notification & Kamera';

  @override
  String get reminders_notifications => 'Bîranîn & Agahdarî';

  @override
  String get reminders_sub =>
      'Demên xwarinê, av, kontrolkirina giraniyê û bîranînên dema razanê';

  @override
  String get units_of_measurement => 'Yekîneyên Pîvan';

  @override
  String get units_sub =>
      'Metrîk (kg, cm, ml, km) an Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Ziman App';

  @override
  String get language_sub =>
      'Îngilîzî, हिन्दी (Hindî), Hinglish & 195+ zimanên cîhanî';

  @override
  String get home_screen_widgets => 'Widgets Screen Home';

  @override
  String get widgets_sub =>
      'Widgetên zindî yên Android: Hub, Gav, Av, Xwarin & Mascot';

  @override
  String get wear_os_watch_app => 'Wear App Watch OS';

  @override
  String get wear_os_sub =>
      'Hevala Smartwatch, çîp, tevlihevî û girîngiyên zindî';

  @override
  String get goals_wellness => 'ARMANC Û NÎŞANÊN XWEŞIYÊ';

  @override
  String get nutrition_targets => 'Armancên Xwarinê & Parçebûna Makro';

  @override
  String get nutrition_targets_sub =>
      'Armanca kalorî, proteîn, karbohîdartan, rûn û avê';

  @override
  String get weekly_recap => 'Wexly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      'Naveroka kaloriya 7-roj, rêjeya makro & roja çêtirîn';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Xalên kulîlkên çalak, nîşan û destkeftî';

  @override
  String get connected_devices => 'CAMAZÊN TÊKIRÎ Û EKOSÎSTEM';

  @override
  String get devices_hub => 'Amûr & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Derdor & Weather';

  @override
  String get surroundings_sub =>
      'Qalîteya hewayê (AQI), index UV & serişteyên hîdrokirina hewayê';

  @override
  String get bloomi_pro => 'Abonetiya Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgetên ekrana malê & şopandina girîng';

  @override
  String get about_security => 'DERBARÊ & EWLEHIYÊ';

  @override
  String get about_bloomi => 'Der barê Bloomi de';

  @override
  String get about_bloomi_sub => 'Taybetmendiyên çêkirinê, guherto, navnîşan';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get privacy_policy_sub => 'Pêşîn-offline, mîmariya daneya ser-cîhazê';

  @override
  String get terms_conditions => 'Şert & Şert';

  @override
  String get terms_conditions_sub => 'Mercên karûbar û rêwerzên tenduristiyê';

  @override
  String get delete_account => 'Hesab & Daneyên jêbirin';

  @override
  String get delete_account_sub =>
      'Daneyên herêmî yên SQLite û paşvekêşên ewr bi rengek bêveger jêbirin';

  @override
  String get healthy_habits => 'Adetên saxlemiya nerm û domdar ava bikin';

  @override
  String get all_logs => 'Daneyên min û têketinên şopandin';

  @override
  String get search_language => 'Li gorî ziman an tîpên xwemalî bigerin...';

  @override
  String get languages_available => 'Zimanên Berdest';

  @override
  String get no_matching_languages => 'Zimanên lihevhatî nehatin dîtin';

  @override
  String get try_searching =>
      'Bi tîpa xwemalî an rastnivîsa Englishngilîzî biceribînin';

  @override
  String get partially_translated => 'Qismî hatiye wergerandin';

  @override
  String get complete_translation => 'Temam';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ziman wek $name hate danîn ( $nativeName)';
  }

  @override
  String get surroundings_title => 'Derdor & Jîngeh';

  @override
  String get surroundings_aqi => 'Indeksa Kalîteya Hewayê';

  @override
  String get surroundings_uv => 'Indeksa UV';

  @override
  String get surroundings_temp => 'Germahiya';

  @override
  String get surroundings_humidity => 'Humidity';

  @override
  String get surroundings_hydration_advice =>
      'Di şert û mercên hewaya heyî de baş hîdrote bimînin.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Xwarinê bigerin';

  @override
  String get food_quick_barcode => 'Barkodê 👑 Scan bike';

  @override
  String get food_quick_water => 'Avê zêde bikin';

  @override
  String get food_quick_custom => 'Xwarina Custom';

  @override
  String get surroundings_good => 'Baş';

  @override
  String get surroundings_moderate => 'Moderate';

  @override
  String get surroundings_unhealthy => 'Nexweş';

  @override
  String get notifications_title => 'Agahdarî & Hişyar';

  @override
  String get notifications_empty => 'No notifications nû';

  @override
  String get notifications_mark_read => 'Hemî wekî Xwendin nîşan bikin';

  @override
  String get notifications_clear => 'Hemî Paqij bike';

  @override
  String get reminders => 'Mîhengên Bîrnebûnê';

  @override
  String get notifications => 'Notifications';

  @override
  String get reminders_breakfast_title => 'Bîranîna Taştê 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Roj baş! Dem ji bo taştêyek xweş li $time.';
  }

  @override
  String get reminders_lunch_title => 'Bîranîna firavînê 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Li $time xwarinek hevseng, bihişmendî rawestînin û kêfê bikin.';
  }

  @override
  String get reminders_dinner_title => 'Bîranîna Şîvê 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Li $time dema şîveke sivik û têrker e.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Wextê vexwarina qedehek ava nû ye! ($time)';
  }

  @override
  String get reminders_weight_title => 'Giraniya Heftane ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Metrîkên laşê xwe yên heftane li ser Bloomi bişopînin ($time).';
  }

  @override
  String get reminders_sleep_title => 'Dema razanê Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Rabin û ji bo xeweke rihet amade bibin ( $time).';
  }

  @override
  String get onboard_welcome => 'Hûn bi xêr hatin Bloomi';

  @override
  String get onboard_sub =>
      'Hevalê weya heval, negirêdayî-yekemîn tenduristî û xwarinê.';

  @override
  String get onboard_get_started => 'Dest pê bike';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal => 'Armanca tenduristiya weya bingehîn çi ye?';

  @override
  String get onboard_goal_weight_loss => 'Kêmkirina giraniya nerm';

  @override
  String get onboard_goal_muscle => 'Qezenc û Hêzbûna Masûlkeyê';

  @override
  String get onboard_goal_energy => 'Enerjî & Zindîtiya rojane';

  @override
  String get onboard_goal_habits => 'Xwarina Hişmendiya Tendurist';

  @override
  String get onboard_about_you => 'Ji me re Li ser Xwe Bibêjin';

  @override
  String get onboard_lifestyle => 'Roja we ya rojane';

  @override
  String get onboard_permissions_title => 'Destûr û Gihîştina Pergalê';

  @override
  String get onboard_permissions_sub =>
      'Gihîştina gavên hevdemkirinê, xebat û bîranînan bidin.';

  @override
  String get onboard_plan_ready_title => 'Plana weya xwerû amade ye!';

  @override
  String get onboard_plan_ready_sub =>
      'Me tenê ji bo we nexşeyek nerm, kesane ya xwarin û başbûnê çêkir.';

  @override
  String get onboard_enter_bloomi => 'Têkeve Bloomi';

  @override
  String get insights_weekly_report => 'Wexly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Roja Pêdengiya çêtirîn: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Li $date vekir';
  }

  @override
  String get insights_keep_going => 'Pêşkeftina fantastîk bidomînin!';

  @override
  String get widgets_title => 'Widgets Screen Home';

  @override
  String widgets_active_count(Object count) {
    return 'Widgetên Çalak: $count';
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
  String get wear_os_title => 'OS Smartwatch li xwe bikin';

  @override
  String get wear_os_connected => 'Bi Watch ve girêdayî ye';

  @override
  String get wear_os_sync => 'Daneyên Watchê hevdeng bikin';

  @override
  String get theme_title => 'Xuyabûn & Mijar';

  @override
  String get theme_mode => 'Moda Mijarê';

  @override
  String get theme_light => 'Light';

  @override
  String get theme_dark => 'Dark';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Palette Background';

  @override
  String get units_title => 'Yekîneyên Pîvan';

  @override
  String get units_metric => 'Metrîk (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nikare dashboardê bar bike';

  @override
  String get home_health_permission_req =>
      'Destûra Têkiliya Tenduristiyê Pêdivî ye';

  @override
  String get home_health_permission_desc =>
      'Bloomi destûra Health Connect hewce dike ku gavên rastîn, rêjeya dil, û widgetên xaniyê desta di demek rast de hevdeng bike.';

  @override
  String get home_allow_health => 'Destûrê bide Têkiliya Tenduristiyê';

  @override
  String get home_ready_mindful_day => 'Ji bo rojek hişyar amade ne? ✨';

  @override
  String get home_quick_add => 'Zû Zêdekirin';

  @override
  String get home_live_gps => 'GPS Zindî';

  @override
  String get home_calories_remaining_label => 'CALORIES BIMÎNE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Xwarin: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap ji bo Şopandina Avê 💧';

  @override
  String get home_water_goal_reached => 'Armanca rojane gihîşt 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ji bo armanca rojane';
  }

  @override
  String get home_details => 'Details';

  @override
  String get home_upgrade_plan_desc =>
      'Nûve bikin da ku armancên rojane yên kesane û plansaziya AI-ê vekin';

  @override
  String get home_unlock => '👑 vekin';

  @override
  String get home_quick_log_hint => 'Zû têketinek başbûnê tomar bikin';

  @override
  String get food_serving_size => 'Mezinahiya xizmetê';

  @override
  String get food_serving_grams => 'Xizmetkirin (g)';

  @override
  String get food_number_servings => 'Hejmara Xizmetên';

  @override
  String get food_calories_per_serving => 'Kalorî per servîsê';

  @override
  String get food_recipe_ingredients => 'Ingredients';

  @override
  String get food_recipe_add_ingredient => 'Pêvek Ingredient';

  @override
  String get food_recipe_directions => 'Talîmat & Têbînî';

  @override
  String get food_recipe_total => 'Tevahiya Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast => 'Xwarina xwerû bi serfirazî xilas bû!';

  @override
  String get food_barcode_found => 'Product Found!';

  @override
  String get food_barcode_not_found_desc =>
      'Me nikaribû vê barkodê di databasa vekirî de bibîne. Hûn dikarin wê wekî xwarinek xwerû lê zêde bikin.';

  @override
  String get food_add_custom_btn => 'Xwarina Xweser lê zêde bikin';

  @override
  String get food_scan_again => 'Dîsa Scan';

  @override
  String get food_review_items => 'Xwarinên Tesbîtkirî Binirxînin';

  @override
  String get food_review_hint =>
      'Hêjmaran eyar bikin an tiştên ku nayên naskirin jê bikin';

  @override
  String get food_log_selected => 'Têketin Xwarinên Hilbijartî';

  @override
  String get food_favourites_title => 'Xwarinên Bijarte';

  @override
  String get food_recent_title => 'Xwarinên Dawî';

  @override
  String get food_no_favourites =>
      'Xwarinên bijarte hîn tune. Dilê xwe li ser her xwarinê bixin da ku li vir xilas bikin.';

  @override
  String get food_no_recents => 'Xwarinên nû hatine tomarkirin nehatin dîtin.';

  @override
  String get food_nutrition_details_title => 'Agahiyên Xwarinê yên Rojane';

  @override
  String get food_macro_protein_label => 'Protein Breakdown';

  @override
  String get food_macro_carbs_label => 'Hilweşîna Karbonê';

  @override
  String get food_macro_fat_label => 'Qelew Breakdown';

  @override
  String get food_macro_fiber_label => 'Fiber Breakdown';

  @override
  String get food_daily_target_comparison => 'Berhevdana Armanc';

  @override
  String food_target_label(Object target) {
    return 'Armanc: $target';
  }

  @override
  String get food_edit_entry => 'Edit Diary Entry';

  @override
  String get food_delete_entry => 'Têketinê jêbirin';

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
    return '$current ji $target ml';
  }

  @override
  String get water_intake_history => 'Têketinên Avê yên Îro';

  @override
  String get water_no_logs_today =>
      'Îro jî av neçûye. Hidrate bikin û bişkojkek lêzêdekirina bilez bikirtînin!';

  @override
  String get water_adjust_goal => 'Armanca rojane eyar bikin';

  @override
  String get health_connect_banner => 'Bi Health Connect ve girêdayî ye';

  @override
  String get health_vitals_summary => 'Jiyanên tenduristiyê yên rojane';

  @override
  String get health_latest_heart_rate => 'Rêjeya Dilê Dawî';

  @override
  String get health_latest_bp => 'Tansiyona xwînê';

  @override
  String get health_latest_spo2 => 'Oksîjena xwînê';

  @override
  String get health_latest_glucose => 'Glîkoza xwînê';

  @override
  String get health_latest_weight => 'Weight';

  @override
  String get health_latest_sleep => 'Sleep Duration';

  @override
  String get health_add_manual => 'Pîvana Manual lê zêde bike';

  @override
  String get health_history_trends => 'Trendên Dîrokî';

  @override
  String get health_sync_success =>
      'Daneyên tenduristiyê bi serfirazî hevdem kirin!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours saet $mins min';
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
  String get health_devices_title => 'Amûrên Girêdayî & Wearables';

  @override
  String get health_devices_desc =>
      'Zencîreyên smartwatches, şopînerên fitnessê, û senzorên tenduristiyê yên hevgirtî birêve bibin.';

  @override
  String get health_workout_editor_title => 'Biguherîne Workout';

  @override
  String get health_workout_name_label => 'Navê Xebatê';

  @override
  String get health_workout_duration_label => 'Demjimêr (deqe)';

  @override
  String get health_workout_calories_label => 'Kaloriyên texmînkirî (kcal)';

  @override
  String get health_workout_date_label => 'Dîrok û Demjimêr';

  @override
  String get plan_daily_wellness_roadmap => 'Nexşeya Rêya weya Kesane';

  @override
  String get plan_morning_routine => 'Rûtîniya sibê';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Êvarê Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Day Wellness Focus';

  @override
  String get plan_targets_title => 'Hedef û Armancên Tenduristiyê';

  @override
  String get plan_calorie_budget_label => 'Budçeya Kaloriya Rojane';

  @override
  String get plan_water_budget_label => 'Armanca Avê ya Rojane';

  @override
  String get plan_step_budget_label => 'Armanca Pêngava Rojane';

  @override
  String get plan_macro_split_label => 'Rêjeya Macronutrient';

  @override
  String get profile_personal_details => 'Details şexsî';

  @override
  String get profile_body_stats => 'Pîvana Bedenê';

  @override
  String get profile_app_preferences => 'Vebijêrk & Mîhengên App';

  @override
  String get profile_edit_name_hint => 'Navê te';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Bilindahî ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Giranî ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Age';

  @override
  String get profile_gender_male => 'Male';

  @override
  String get profile_gender_female => 'Female';

  @override
  String get profile_gender_other => 'Yên din / Nebêjin tercîh dikin';

  @override
  String get profile_activity_sedentary => 'Sedentary (Piçûk û bê temrîn)';

  @override
  String get profile_activity_light => 'Bi sivikî çalak (1-3 roj / hefte)';

  @override
  String get profile_activity_moderate => 'Bi nermî çalak (3-5 roj / hefte)';

  @override
  String get profile_activity_very => 'Pir çalak (6-7 roj / hefte)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Pîrek û tevliheviya Bloomi li ser demjimêra Wear OS-ê saz bikin da ku li kalorî, av û gavan binihêrin.';

  @override
  String get settings_widgets_header => 'Widgetên Android-ê yên înteraktîf';

  @override
  String get settings_widgets_desc =>
      'Ji bo nûvekirinên tavilê widgetên di dema rast de li ser ekrana malê ya cîhaza xwe pîne bikin.';

  @override
  String get settings_about_header => 'Der barê Bloomi de';

  @override
  String get settings_about_version => 'Guhertoya 1.0.0';

  @override
  String get settings_about_build => '100 ava bikin';

  @override
  String get settings_about_credits =>
      'Bi lênêrînek ji bo jiyanek bihiş, tendurist hatî çêkirin.';

  @override
  String get settings_terms_header => 'Şert û mercên';

  @override
  String get settings_privacy_header => 'Privacy Policy';

  @override
  String get settings_delete_header => 'Hesab & Daneyên jêbirin';

  @override
  String get settings_delete_warning =>
      'Ev kiryar nayê betal kirin. Hemî xwarin, xebat, girîng û profîla we dê bi domdarî werin jêbirin.';

  @override
  String get settings_delete_confirm_btn => 'Bi daîmî jêbirin';

  @override
  String get onboard_welcome_headline => 'Hûn bi xêr hatin Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Şopandina xweşbîniya nerm, hişyar li dora jiyana we hatî sêwirandin.';

  @override
  String get onboard_step_about => 'About You';

  @override
  String get onboard_step_goals => 'Armancên te';

  @override
  String get onboard_step_lifestyle => 'Adetên rojane';

  @override
  String get onboard_step_permissions => 'Destûrên';

  @override
  String get onboard_step_plan => 'Ready!';

  @override
  String get onboard_health_connect_perm => 'Têkiliya Tenduristiyê';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Bîranîn û Agahiyên Hişmendî';

  @override
  String get onboard_camera_perm => 'Kamera (Barkod & Skanera Xwarinê)';

  @override
  String get onboard_grant_permissions => 'Destûran bidin';

  @override
  String get onboard_continue_dashboard => 'Dashboard vekin';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Di tevahiya rojê de bîrên avê yên nerm';

  @override
  String get notif_channel_nutrition_name => 'Bîranînên Xwarin û Xwarinê';

  @override
  String get notif_channel_nutrition_desc =>
      'Hişyariyên bîranîna taştê, firavîn û şîvê';

  @override
  String get notif_channel_steps_name => 'Pêngava Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Pîrozbahî dema ku bigihîjin armancên gavên rojane';

  @override
  String get notif_channel_vitals_name => 'Kontrolên Tenduristî û Jiyan';

  @override
  String get notif_channel_vitals_desc => 'Bîranînên giranî û dema razanê';

  @override
  String get notif_action_log_water => '💧 Têketin +250ml';

  @override
  String get notif_action_snooze => '15 m';

  @override
  String get notif_action_log_meal => '🥗 Xwarina Têketinê';

  @override
  String get language => 'Ziman';

  @override
  String get share => 'Parvekirin';

  @override
  String common_days(Object count) {
    return '$count roj berê';
  }
}
