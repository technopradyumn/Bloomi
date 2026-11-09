// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Breton (`br`).
class AppLocalizationsBr extends AppLocalizations {
  AppLocalizationsBr([String locale = 'br']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ti';

  @override
  String get nav_today => 'Hiziv';

  @override
  String get nav_plan => 'Raktres';

  @override
  String get nav_food => 'Boued';

  @override
  String get nav_food_diary => 'Deiziataer ar boued';

  @override
  String get nav_workout => 'Marilh ar c\'hentelioù';

  @override
  String get nav_health => 'Yec\'hed';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Enrollañ';

  @override
  String get cancel => 'Nullañ';

  @override
  String get delete => 'Dilemel';

  @override
  String get edit => 'Kemmañ';

  @override
  String get done => 'Echu';

  @override
  String get close => 'Serriñ';

  @override
  String get back => 'En-dro';

  @override
  String get next => 'Da heul';

  @override
  String get continue_btn => 'Kenderc\'hel';

  @override
  String get confirm => 'Kadarnaat';

  @override
  String get search => 'Klask';

  @override
  String get filter => 'Sil';

  @override
  String get all => 'An holl';

  @override
  String get active => 'Oberiant';

  @override
  String get today => 'Hiziv';

  @override
  String get yesterday => 'Dec\'h';

  @override
  String get tomorrow => 'Warc\'hoazh';

  @override
  String get add => 'Ouzhpennañ';

  @override
  String get remove => 'Dilemel';

  @override
  String get refresh => 'Freskaat';

  @override
  String get retry => 'Adklask';

  @override
  String get error => 'Fazi';

  @override
  String get success => 'Berzh';

  @override
  String get loading => 'O kargañ...';

  @override
  String get no_data => 'Roadennoù ebet';

  @override
  String get offline => 'Mod ezlinenn';

  @override
  String get offline_sub => 'Sinkronisaet e vo ar c\'hemmoù ur wech adkevreet';

  @override
  String get undo => 'Dizober';

  @override
  String get portion => 'Lodenn';

  @override
  String get quantity => 'Kementad';

  @override
  String get unit => 'Unanenn';

  @override
  String get clear => 'Sklaeraat';

  @override
  String get select => 'Dibabit';

  @override
  String get apply => 'Goulenn';

  @override
  String get reset => 'Adderaouekaat';

  @override
  String get ok => 'Mat eo';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Nann';

  @override
  String get optional => 'Dibar';

  @override
  String get calories => 'Kalorioù';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Karboù';

  @override
  String get fat => 'Lard';

  @override
  String get fiber => 'Neudennoù';

  @override
  String get water => 'Dour';

  @override
  String get steps => 'Pazennoù';

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
  String get inches => 'e';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'eur';

  @override
  String get minutes => 'munudoù';

  @override
  String get serving => 'Servij';

  @override
  String get servings => 'Porzhioù';

  @override
  String get serving_size => 'Ment ar servij';

  @override
  String get per_100g => 'dre 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Azia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Reter-Nesañ';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Ti';

  @override
  String get home_greeting_morning => 'Demat mat';

  @override
  String get home_greeting_afternoon => 'Goude merenn vat';

  @override
  String get home_greeting_evening => 'Nozvezh vat';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count devezh heuliad',
      one: '1 devezh heuliad',
      zero: '0 devezh heuliad',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Devet';

  @override
  String get home_calories_budget => 'Budjed kalorioù';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal a chom';
  }

  @override
  String get home_water_title => 'Hiradur pemdeziek';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pazennoù graet';

  @override
  String get home_quick_actions => 'Oberoù buan';

  @override
  String get home_log_meal => 'Pred koad';

  @override
  String get home_log_water => 'Dour koad';

  @override
  String get home_log_workout => 'Embregerezh marilh';

  @override
  String get home_log_weight => 'Pouez ar c\'hoad';

  @override
  String get home_insights_title => 'Dizoloadennoù hiziv';

  @override
  String get home_quote =>
      'Dibaboù bihan yac\'h a grou treuzfurmadurioù bleunius.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Trowardroioù & Aer';

  @override
  String get home_notifications => 'Kemennadennoù';

  @override
  String get home_daily_score => 'Skor yec\'hed pemdeziek';

  @override
  String get home_view_all => 'Gwelet an holl';

  @override
  String get food_diary_title => 'Deiziataer ar boued';

  @override
  String get food_breakfast => 'Dijuniñ';

  @override
  String get food_lunch => 'Merenn';

  @override
  String get food_dinner => 'Dibenn-pred';

  @override
  String get food_snacks => 'Boued-boued';

  @override
  String get food_add_food => 'Ouzhpennañ boued';

  @override
  String get food_edit_food => 'Kemmañ ar boued';

  @override
  String get food_add_breakfast => 'Ouzhpennañ ar breakfast';

  @override
  String get food_add_lunch => 'Ouzhpennañ merenn';

  @override
  String get food_add_dinner => 'Ouzhpennañ an dijuni';

  @override
  String get food_add_snack => 'Ouzhpennañ ur merenn-vihan';

  @override
  String get food_total_calories => 'Kalorioù hollek';

  @override
  String get food_empty_meal => 'Boued ebet enrollet evit ar pred-mañ c\'hoazh';

  @override
  String get food_empty_diary =>
      'N\'eus bet enrollet pred ebet evit an deiz-mañ';

  @override
  String get food_log_first_meal =>
      'Pouezit war + evit enrollañ ho pred plijus kentañ';

  @override
  String get food_quick_add => 'Ouzhpennañ buan';

  @override
  String get food_search_hint => 'Klask pladennoù, frouezh, dal, roti...';

  @override
  String get food_custom_recipe => 'Boued ha rekipeoù personelaet';

  @override
  String get food_scan_barcode => 'Skannañ ar c\'hod barrennoù';

  @override
  String get food_camera_scan => 'Skaner boued AI';

  @override
  String get food_recent => 'Boued nevez';

  @override
  String get food_favourites => 'Ar re wellañ';

  @override
  String get food_macro_summary => 'Disrannadur ar makronutriantoù';

  @override
  String get food_delete_meal_confirm =>
      'Ha sur oc\'h e fell deoc\'h lemel an elfenn-mañ ?';

  @override
  String get food_item_deleted => 'Boued tennet';

  @override
  String get food_remaining => 'chomet';

  @override
  String get food_consumed => 'debret';

  @override
  String food_of_target(Object target) {
    return 'eus $target kcal';
  }

  @override
  String get foodSearch_title => 'Klask boued';

  @override
  String get foodSearch_scan_barcode => 'Skannañ ar c\'hod barrennoù';

  @override
  String get foodSearch_take_photo => 'Skeudenn boued';

  @override
  String get foodSearch_custom_food => 'Krouiñ boued personelaet';

  @override
  String get foodSearch_recent_searches => 'Klaskoù diwezhañ';

  @override
  String get foodSearch_popular => 'Meuzioù brudet';

  @override
  String get foodSearch_no_results => 'Boued ebet a glot gant ho klask';

  @override
  String get barcode_title => 'Skaner kod barrennoù';

  @override
  String get barcode_align =>
      'Aliañ ar c\'hod barrennoù e-barzh framm ar c\'hamera';

  @override
  String get barcode_not_found => 'Produ n\'eo ket bet kavet en diaz roadennoù';

  @override
  String get barcode_premium_feature =>
      'Skaniñ ar c\'hodoù barrennoù a c\'haller kaout gant Bloomi Pro';

  @override
  String get camera_title => 'Skaner boued AI';

  @override
  String get camera_tap_hint => 'Tennit ur foto sklaer eus ho plad';

  @override
  String get camera_analysing => 'O dielfennañ ar plad boued...';

  @override
  String get camera_detected => 'Elfennoù detektet';

  @override
  String get camera_flash => 'Dilec\'hiañ Flash';

  @override
  String get camera_retake => 'Adkemer al luc\'hskeudenn';

  @override
  String get camera_confirm_food => 'Kadarnaat an elfennoù';

  @override
  String get customFood_title => 'Boued ha rekipeoù personelaet';

  @override
  String get customFood_name_hint => 'Anv ar plad pe an elfenn';

  @override
  String get customFood_calories_hint => 'Kalorioù (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Karboù (g)';

  @override
  String get customFood_fat_hint => 'Lard (g)';

  @override
  String get customFood_save => 'Enrollañ ar rekipe';

  @override
  String get water_tracker_title => 'Heulier dour';

  @override
  String get water_daily_target => 'Pal dourañ pemdeziek';

  @override
  String get water_logged_today => 'Enrollet hiziv';

  @override
  String get water_add_glass => '+250 ml Glas';

  @override
  String get water_add_bottle => '+500 ml Boutailh';

  @override
  String get water_custom_amount => 'Sammad personelaet';

  @override
  String get water_reminder_tip =>
      'Evañ dour ingal a-hed an devezh evit kaout nerzh ingal.';

  @override
  String water_logged_toast(Object amount) {
    return 'Enrollet $amount ml dour 💧';
  }

  @override
  String get workout_title => 'Marilh ar c\'hentelioù';

  @override
  String get workout_add_exercise => 'Ouzhpennañ un embregerezh';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Nerzh';

  @override
  String get workout_yoga => 'Yoga & Soubidigezh';

  @override
  String get workout_duration => 'Padelezh';

  @override
  String get workout_intensity => 'Kreñvder';

  @override
  String get workout_calories_burned => 'Kalorioù devet';

  @override
  String get workout_empty => 'N\'eus bet enrollet pleustradeg ebet hiziv';

  @override
  String get workout_save_success =>
      'Enrollet eo bet an embregerezh gant berzh !';

  @override
  String get workout_type => 'Seurt pleustradeg';

  @override
  String get workout_notes => 'Notennoù ha prederiadennoù';

  @override
  String get health_overview_title => 'Yec\'hed ha buhezek';

  @override
  String get health_heart_rate => 'Frekañs ar galon';

  @override
  String get health_blood_oxygen => 'Oksigen er gwad (SpO2)';

  @override
  String get health_blood_pressure => 'Gwask ar gwad';

  @override
  String get health_blood_glucose => 'Glukoz er gwad';

  @override
  String get health_body_temperature => 'Temperadur ar c\'horf';

  @override
  String get health_sleep_tracking => 'Heuliañ ar c\'housk';

  @override
  String get health_weight_tracking => 'Pouez ha kempenn ar c\'horf';

  @override
  String get health_waist_hip => 'Keñver ar c\'hein hag ar c\'hreiz';

  @override
  String get health_devices_hub => 'Kreizenn ardivinkoù ha montroù smart';

  @override
  String get health_sync_now => 'Sinkronizañ roadennoù yec\'hed';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Sinkronisaet diwezhañ : $time';
  }

  @override
  String get health_manual_entry => 'Mont e-barzh yec\'hed dre zorn';

  @override
  String get health_metric_detail => 'munudoù metrek';

  @override
  String get health_connected_sensors => 'Sensoù yec\'hed kevreet';

  @override
  String get plan_title => 'Raktres pemdeziek';

  @override
  String get plan_weekly_title => 'Raktres yec\'hed sizhuniek';

  @override
  String get plan_calorie_target => 'Pal ar c\'halorioù';

  @override
  String get plan_water_target => 'Pal dourañ';

  @override
  String get plan_step_target => 'Tarzh ar pazenn';

  @override
  String get plan_sleep_target => 'Pal kousket';

  @override
  String get plan_meal_suggestions => 'Kinnigoù evit ar predoù';

  @override
  String get plan_healthy_habits => 'Kustumoù ha kuzulioù yac\'h';

  @override
  String get plan_coach_advice => 'Erbedadennoù evit ar c\'hoarier Bloomi AI';

  @override
  String get plan_generated_title => 'Programm pemdeziek personelaet';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Kemmañ ar profil';

  @override
  String get profile_name => 'Anv';

  @override
  String get profile_age => 'Oad';

  @override
  String get profile_gender => 'Rev';

  @override
  String get profile_height => 'Uhelder';

  @override
  String get profile_weight => 'Pouez';

  @override
  String get profile_goal => 'Pal pennañ';

  @override
  String get profile_activity_level => 'Live obererezh';

  @override
  String get profile_stats => 'Ma stadegoù yec\'hed';

  @override
  String get profile_saved => 'Hizivaet eo bet ar profil gant berzh';

  @override
  String get profile_bmi => 'Indez tolz ar c\'horf (BMI)';

  @override
  String get profile_membership => 'Ezelded';

  @override
  String get settings => 'Arventennoù';

  @override
  String get preferences_habits => 'PENNADENNOÙ & KUSTUMOÙ';

  @override
  String get appearance_theme => 'Gwel ha tem';

  @override
  String get appearance_theme_sub =>
      'Teñval, Sklaer, Mod Reizhiad & Dibarzhioù Foñs an Arload';

  @override
  String get permissions => 'Aotreoù ha mont e-barzh ar reizhiad';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Kemennadennoù ha Kamera';

  @override
  String get reminders_notifications => 'Kemennadennoù ha kemennadennoù';

  @override
  String get reminders_sub =>
      'Eurioù ar predoù, an dour, ar gwiriañ pouez hag ar soñjoù a-raok mont da gousket';

  @override
  String get units_of_measurement => 'Unanennoù muzuliañ';

  @override
  String get units_sub =>
      'Metrek (kg, cm, ml, km) pe impalaerel (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Yezh an arload';

  @override
  String get language_sub =>
      'Saozneg, हिन्दी (Hindi), Hingleg & 195+ yezh hollek';

  @override
  String get home_screen_widgets => 'Widgetoù skramm degemer';

  @override
  String get widgets_sub =>
      'Widgetoù Android bev : Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Kompagnunez evit an eurieroù smart, teulioù, kemplezhded ha buhezioù bev';

  @override
  String get goals_wellness => 'PALIOÙ HA KEMENNOU AR YEZHED';

  @override
  String get nutrition_targets => 'Palioù ar boued hag ar rannadur makro';

  @override
  String get nutrition_targets_sub =>
      'Pal ar c\'halorioù, ar protein, ar glukidoù, ar greun hag an dour';

  @override
  String get weekly_recap => 'Diverrañ ar yec\'hed sizhuniek';

  @override
  String get weekly_recap_sub =>
      'Keitat kalorioù 7 devezh, feur makro & devezh gwellañ';

  @override
  String get streaks_milestones => 'Roudoù ha palioù';

  @override
  String get streaks_sub => 'Roudoù bleunioù oberiant, badjoù ha berzh';

  @override
  String get connected_devices => 'ARDIVEZHIOÙ KENNET & EKOSISTEM';

  @override
  String get devices_hub => 'Kreizenn ardivinkoù ha montroù smart';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Trowardroioù & Amzer';

  @override
  String get surroundings_sub =>
      'Kalite an aer (AQI), indez UV ha titouroù war an dour evit an amzer';

  @override
  String get bloomi_pro => 'Enskrivadur Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget skramm pennañ ha heuliañ ar pezh a zo pouezus';

  @override
  String get about_security => 'DIWAR-BENN & AR SURENTEZH';

  @override
  String get about_bloomi => 'Diwar-benn Bloomi';

  @override
  String get about_bloomi_sub =>
      'Spesifikadurioù ar sevel, stumm, deskrivadurioù';

  @override
  String get privacy_policy => 'Politikerezh prevezded';

  @override
  String get privacy_policy_sub =>
      'Savadur roadennoù ezlinenn da gentañ, war an dafariad';

  @override
  String get terms_conditions => 'Termenoù ha gwirioù';

  @override
  String get terms_conditions_sub =>
      'Termenoù servij ha titouroù war ar yec\'hed';

  @override
  String get delete_account => 'Dilemel ar gont hag ar roadennoù';

  @override
  String get delete_account_sub =>
      'Diverkañ roadennoù SQLite lec\'hel ha gwareziñ ar c\'hoad en un doare dic\'hortoz';

  @override
  String get healthy_habits => 'Sevel kustumoù yec\'hed dous ha padus';

  @override
  String get all_logs => 'Ma roadennoù heuliet ha marilhoù';

  @override
  String get search_language => 'Klask dre yezh pe dre skritur orin...';

  @override
  String get languages_available => 'Yezhoù hegerz';

  @override
  String get no_matching_languages => 'N\'eus ket bet kavet yezhoù a glot';

  @override
  String get try_searching =>
      'Klaskit klask dre skritur orin pe dre reizhskrivadur saoznek';

  @override
  String get partially_translated => 'Troet evit ul lodenn';

  @override
  String get complete_translation => 'Echu';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lakaet ar yezh da $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Trowardroioù hag endro';

  @override
  String get surroundings_aqi => 'Indez kalite an aer';

  @override
  String get surroundings_uv => 'Indez UV';

  @override
  String get surroundings_temp => 'Temperadur';

  @override
  String get surroundings_humidity => 'Humedelezh';

  @override
  String get surroundings_hydration_advice =>
      'Chomit hidrataet mat e-pad an amzer a-vremañ.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Klask boued';

  @override
  String get food_quick_barcode => 'Skannañ ar c\'hod barrennoù 👑';

  @override
  String get food_quick_water => 'Ouzhpennañ dour';

  @override
  String get food_quick_custom => 'Boued personelaet';

  @override
  String get surroundings_good => 'Mat';

  @override
  String get surroundings_moderate => 'Etre';

  @override
  String get surroundings_unhealthy => 'Dic\'hlan';

  @override
  String get notifications_title => 'Kemennadennoù ha kemennadennoù';

  @override
  String get notifications_empty => 'Kemennadenn nevez ebet';

  @override
  String get notifications_mark_read => 'Merkañ an holl evel lennet';

  @override
  String get notifications_clear => 'Diverkañ an holl';

  @override
  String get reminders => 'Arventennoù an eñvorennoù';

  @override
  String get notifications => 'Kemennadennoù';

  @override
  String get reminders_breakfast_title => 'Soñj d\'ar breakfast 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Demat dit ! Poent eo debriñ ur breakfast bouedus da $time .';
  }

  @override
  String get reminders_lunch_title => 'Soñj evit merenn 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Paouez ha debriñ ur merenn reizh ha prederiet e $time .';
  }

  @override
  String get reminders_dinner_title => 'Soñj evit an dibenn-pred 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Poent eo evit un dibenn-pred skañv ha plijus e $time .';
  }

  @override
  String get reminders_water_title => 'Pouezañ dour 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Poent eo deoc\'h evañ ur werennad dour fresk ! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Pouezañ sizhuniek ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Heuliañ ho meizadoù korf sizhuniek war Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'A-raok kousket Distro-skol 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Distreiñ ha prientiñ ur c\'housk sioul ( $time ).';
  }

  @override
  String get onboard_welcome => 'Degemer mat war Bloomi';

  @override
  String get onboard_sub =>
      'Ho mignon yec\'hed ha boued a-feson, ezlinenn da gentañ.';

  @override
  String get onboard_get_started => 'Kregiñ';

  @override
  String get onboard_sign_in => 'Kevreañ';

  @override
  String get onboard_skip => 'Lamm';

  @override
  String get onboard_choose_goal => 'Petra eo ho pal yec\'hed pennañ ?';

  @override
  String get onboard_goal_weight_loss => 'Koll pouez dous';

  @override
  String get onboard_goal_muscle => 'Kreskiñ ha nerzh ar c\'higennoù';

  @override
  String get onboard_goal_energy => 'Energiezh ha buhezegezh pemdeziek';

  @override
  String get onboard_goal_habits => 'Debriñ yac\'h ha speredek';

  @override
  String get onboard_about_you => 'Kontit deomp diwar ho penn';

  @override
  String get onboard_lifestyle => 'Ho routine pemdeziek';

  @override
  String get onboard_permissions_title => 'Aotreoù ha mont e-barzh ar reizhiad';

  @override
  String get onboard_permissions_sub =>
      'Reiñ an tu da vont e-barzh pazennoù sinkronizañ, pleustradegoù ha soñjoù.';

  @override
  String get onboard_plan_ready_title => 'Prest eo ho raktres personelaet !';

  @override
  String get onboard_plan_ready_sub =>
      'Savet hon eus ur gartenn-hent dous ha personelaet war ar boued hag ar yec\'hed evitoc\'h hepken.';

  @override
  String get onboard_enter_bloomi => 'Mont e-barzh Bloomi';

  @override
  String get insights_weekly_report => 'Diverrañ ar yec\'hed sizhuniek';

  @override
  String insights_best_day(Object day) {
    return 'Devezh gwellañ evit ar c\'henderc\'hañ : $day';
  }

  @override
  String get insights_streaks_badges => 'Roudoù ha palioù';

  @override
  String insights_unlocked_on(Object date) {
    return 'Dibrennañ war $date';
  }

  @override
  String get insights_keep_going =>
      'Kenderc\'hel a rit gant an araokadennoù fentus !';

  @override
  String get widgets_title => 'Widgetoù skramm degemer';

  @override
  String widgets_active_count(Object count) {
    return 'Widgetoù oberiant : $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Pazennoù & Gwallenn oberiant';

  @override
  String get widgets_water_title => 'Marilh buan dourañ';

  @override
  String get widgets_mascot_title => 'Maskotenn Bloomi';

  @override
  String get wear_os_title => 'Gwiskit un eurier smart OS';

  @override
  String get wear_os_connected => 'Kevreet ouzh Watch';

  @override
  String get wear_os_sync => 'Sinkronelaat roadennoù ar sell';

  @override
  String get theme_title => 'Gwel ha tem';

  @override
  String get theme_mode => 'Mod tem';

  @override
  String get theme_light => 'Gouloù';

  @override
  String get theme_dark => 'Teñval';

  @override
  String get theme_system => 'Dre ziouer ar reizhiad';

  @override
  String get theme_background_palette => 'Palet foñs';

  @override
  String get units_title => 'Unanennoù muzuliañ';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'N\'haller ket kargañ an daveenn';

  @override
  String get home_health_permission_req => 'Ret eo kaout aotre Health Connect';

  @override
  String get home_health_permission_desc =>
      'Ret eo da Bloomi kaout aotre Health Connect evit tennañ pazennoù gwirion, frekañs ar galon ha sinkronizañ widgetoù an tiez hezoug en amzer gwirion.';

  @override
  String get home_allow_health => 'Aotren Kevreañ ar yec\'hed';

  @override
  String get home_ready_mindful_day => 'Prest evit un devezh evezhiek ? ✨';

  @override
  String get home_quick_add => 'Ouzhpennañ buan';

  @override
  String get home_live_gps => 'GPS bev';

  @override
  String get home_calories_remaining_label => 'KALORIOÙ A CHOM';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Debret : $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Tizhet eo bet ar pal pemdeziek 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml d\'ar pal pemdeziek';
  }

  @override
  String get home_details => 'munudoù';

  @override
  String get home_upgrade_plan_desc =>
      'Hizivaat evit dibrennañ palioù pemdeziek personelaet ha raktres IA';

  @override
  String get home_unlock => 'Dibrennañ 👑';

  @override
  String get home_quick_log_hint => 'Enrollañ buan un enskrivadur yec\'hed';

  @override
  String get food_serving_size => 'Ment ar servij';

  @override
  String get food_serving_grams => 'Servij (g)';

  @override
  String get food_number_servings => 'Niver a servijoù';

  @override
  String get food_calories_per_serving => 'Kalorioù dre lod';

  @override
  String get food_recipe_ingredients => 'Elfennoù';

  @override
  String get food_recipe_add_ingredient => 'Ouzhpennañ elfenn';

  @override
  String get food_recipe_directions => 'Titouroù ha notennoù';

  @override
  String get food_recipe_total => 'Boued hollek ar rekipeoù';

  @override
  String get food_recipe_per_serving => 'Boued dre servij';

  @override
  String get food_recipe_saved_toast =>
      'Boued personelaet enrollet gant berzh !';

  @override
  String get food_barcode_found => 'Kavet eo bet ar produ !';

  @override
  String get food_barcode_not_found_desc =>
      'N\'hon eus ket gallet kavout ar c\'hod barrennoù-mañ en diaz roadennoù digor. Gallout a rit ouzhpennañ anezhañ evel boued personelaet.';

  @override
  String get food_add_custom_btn => 'Ouzhpennañ boued personelaet';

  @override
  String get food_scan_again => 'Skannañ en-dro';

  @override
  String get food_review_items => 'Adwelet ar bouedoù detektet';

  @override
  String get food_review_hint =>
      'Kemmañ ar c\'hementadoù pe lemel kuit kement elfenn dianavezet';

  @override
  String get food_log_selected => 'Enrollañ ar bouedoù dibabet';

  @override
  String get food_favourites_title => 'Boued karetañ';

  @override
  String get food_recent_title => 'Boued nevez';

  @override
  String get food_no_favourites =>
      'Boued karetañ ebet c\'hoazh. Tap kalon war ne vern peseurt boued da espern amañ.';

  @override
  String get food_no_recents => 'N\'eus bet kavet boued enrollet nevez zo.';

  @override
  String get food_nutrition_details_title =>
      'Titouroù diwar-benn ar boued pemdeziek';

  @override
  String get food_macro_protein_label => 'Disrannadur ar proteinoù';

  @override
  String get food_macro_carbs_label => 'Disrannañ ar c\'harboù';

  @override
  String get food_macro_fat_label => 'Disrannadur ar greun';

  @override
  String get food_macro_fiber_label => 'Disrann ar gwiennoù';

  @override
  String get food_daily_target_comparison => 'Keñveriañ ar palioù';

  @override
  String food_target_label(Object target) {
    return 'Pal : $target';
  }

  @override
  String get food_edit_entry => 'Kemmañ an deiziataer';

  @override
  String get food_delete_entry => 'Dilemel an enankad';

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
    return '$current eus $target ml';
  }

  @override
  String get water_intake_history => 'Rolloù dour hiziv';

  @override
  String get water_no_logs_today =>
      'N\'eus bet tapet dour ebet c\'hoazh hiziv. Hidrat ha pouezit war ur bouton ouzhpennañ buan !';

  @override
  String get water_adjust_goal => 'Adreizhañ ar pal pemdeziek';

  @override
  String get health_connect_banner => 'Kevreet ouzh Health Connect';

  @override
  String get health_vitals_summary => 'Perzhioù yec\'hed pemdeziek';

  @override
  String get health_latest_heart_rate => 'Frekañs kalon diwezhañ';

  @override
  String get health_latest_bp => 'Gwask ar gwad';

  @override
  String get health_latest_spo2 => 'Oksigen ar gwad';

  @override
  String get health_latest_glucose => 'Glukoz er gwad';

  @override
  String get health_latest_weight => 'Pouez';

  @override
  String get health_latest_sleep => 'Padelezh ar c\'housk';

  @override
  String get health_add_manual => 'Ouzhpennañ muzuliañ dre zorn';

  @override
  String get health_history_trends => 'Emdroadurioù istorel';

  @override
  String get health_sync_success =>
      'Roadennoù yec\'hed sinkronisaet gant berzh !';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours eurvezhioù $mins munutenn';
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
  String get health_devices_title => 'Urzhiataerioù kevreet ha dafar da wiskañ';

  @override
  String get health_devices_desc =>
      'Merañ an eurieroù speredek, an heulierien yec\'hed hag ar sensoroù yec\'hed.';

  @override
  String get health_workout_editor_title => 'Kemmañ an embregerezh';

  @override
  String get health_workout_name_label => 'Anv an embregerezh';

  @override
  String get health_workout_duration_label => 'Padelezh (munutennoù)';

  @override
  String get health_workout_calories_label => 'Kalorioù priziet (kcal)';

  @override
  String get health_workout_date_label => 'Deiziad hag eur';

  @override
  String get plan_daily_wellness_roadmap => 'Ho kartenn-hent personelaet';

  @override
  String get plan_morning_routine => 'Routinenn ar mintin';

  @override
  String get plan_afternoon_routine => 'Yec\'hed kreisteiz';

  @override
  String get plan_evening_routine => 'Avel-diskenn an noz';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => 'Pouez war ar yec\'hed 7 devezh';

  @override
  String get plan_targets_title => 'Palioù ha palioù yec\'hed';

  @override
  String get plan_calorie_budget_label => 'Budjed kalorioù pemdeziek';

  @override
  String get plan_water_budget_label => 'Pal dour pemdeziek';

  @override
  String get plan_step_budget_label => 'Pal ar pazenn bemdeziek';

  @override
  String get plan_macro_split_label => 'Keñver ar makronutriantoù';

  @override
  String get profile_personal_details => 'Titouroù personel';

  @override
  String get profile_body_stats => 'Muzulioù ar c\'horf';

  @override
  String get profile_app_preferences => 'Dibarzhioù ha arventennoù an arload';

  @override
  String get profile_edit_name_hint => 'Hoc\'h anv';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Uhelder ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Pouez ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Oad';

  @override
  String get profile_gender_male => 'Gour';

  @override
  String get profile_gender_female => 'Gwreg';

  @override
  String get profile_gender_other => 'Arall / Gwelloc\'h eo chom hep lâret';

  @override
  String get profile_activity_sedentary => 'Azezet (Nebeut a sport pe netra)';

  @override
  String get profile_activity_light => 'Un tamm oberiant (1-3 devezh/sizhun)';

  @override
  String get profile_activity_moderate =>
      'Oberiant a-walc\'h (3-5 devezh/sizhun)';

  @override
  String get profile_activity_very => 'Oberiant-tre (6-7 devezh/sizhun)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Staliañ ar c\'heflusker Bloomi hag ar c\'hemm war ho montr Wear OS evit sellet ouzh ar c\'halorioù, an dour hag ar pazennoù.';

  @override
  String get settings_widgets_header => 'Widgetoù Android etregwezhiat';

  @override
  String get settings_widgets_desc =>
      'Lakaat widgetoù e-pad an amzer gwirion war skramm pennañ ho trevnad evit kaout hizivadurioù diouzhtu.';

  @override
  String get settings_about_header => 'Diwar-benn Bloomi';

  @override
  String get settings_about_version => 'Stumm 1.0.0';

  @override
  String get settings_about_build => 'Sevel 100';

  @override
  String get settings_about_credits =>
      'Graet gant preder evit ur vuhez yac\'h ha speredek.';

  @override
  String get settings_terms_header => 'Termenoù ha gwirioù';

  @override
  String get settings_privacy_header => 'Politikerezh prevezded';

  @override
  String get settings_delete_header => 'Dilemel ar gont hag ar roadennoù';

  @override
  String get settings_delete_warning =>
      'N\'haller ket nullañ an ober-mañ. Dilamet e vo da viken ho predoù, ho pleustradegoù, ho titouroù bev hag ho profil.';

  @override
  String get settings_delete_confirm_btn => 'Dilemel da viken';

  @override
  String get onboard_welcome_headline => 'Degemer mat war Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Heuliañ yec\'hed dous ha evezhus savet evit ho buhez.';

  @override
  String get onboard_step_about => 'Diwar-benn ac\'hanoc\'h';

  @override
  String get onboard_step_goals => 'Ho palioù';

  @override
  String get onboard_step_lifestyle => 'Kustumoù pemdeziek';

  @override
  String get onboard_step_permissions => 'Aotreoù';

  @override
  String get onboard_step_plan => 'Prest !';

  @override
  String get onboard_health_connect_perm => 'Mont e darempred gant ar yec\'hed';

  @override
  String get onboard_step_sensors_perm => 'Sensor kontañ pazennoù';

  @override
  String get onboard_notif_perm => 'Kemennadennoù ha kemennadennoù evezhiek';

  @override
  String get onboard_camera_perm => 'Kamera (kod barrennoù ha skanner boued)';

  @override
  String get onboard_grant_permissions => 'Reiñ aotreoù';

  @override
  String get onboard_continue_dashboard => 'Digeriñ ar panell-stur';

  @override
  String get notif_channel_hydration_name => 'Pouezoù dourañ';

  @override
  String get notif_channel_hydration_desc => 'Soñjoù dour dous a-hed an devezh';

  @override
  String get notif_channel_nutrition_name =>
      'Soñjoù diwar-benn ar predoù hag ar magadurezh';

  @override
  String get notif_channel_nutrition_desc =>
      'Kemennadennoù da soñjal evit ar breakfast, ar merenn hag an dibenn-pred';

  @override
  String get notif_channel_steps_name => 'Pazennoù palioù';

  @override
  String get notif_channel_steps_desc =>
      'Lidoù pa vez tizhet palioù ar pazennoù pemdeziek';

  @override
  String get notif_channel_vitals_name => 'Gwiriañ ar yec\'hed hag ar vuhez';

  @override
  String get notif_channel_vitals_desc =>
      'Soñjoù diwar-benn ar pouez hag an distro-skol a-raok kousket';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Kousket 15m';

  @override
  String get notif_action_log_meal => '🥗 Pred koad';

  @override
  String get language => 'Yezh';

  @override
  String get share => 'Rannañ';

  @override
  String common_days(Object count) {
    return '$count deiz zo';
  }
}
