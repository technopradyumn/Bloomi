// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Baile';

  @override
  String get nav_today => 'Inniu';

  @override
  String get nav_plan => 'Plean';

  @override
  String get nav_food => 'Bia';

  @override
  String get nav_food_diary => 'Dialann Bia';

  @override
  String get nav_workout => 'Logáil workout';

  @override
  String get nav_health => 'Sláinte';

  @override
  String get nav_profile => 'Próifíl';

  @override
  String get save => 'Sábháil';

  @override
  String get cancel => 'Cealaigh';

  @override
  String get delete => 'Scrios';

  @override
  String get edit => 'Cuir in eagar';

  @override
  String get done => 'Déanta';

  @override
  String get close => 'Dún';

  @override
  String get back => 'Ar ais';

  @override
  String get next => 'Ar aghaidh';

  @override
  String get continue_btn => 'Lean ort';

  @override
  String get confirm => 'Deimhnigh';

  @override
  String get search => 'Cuardach';

  @override
  String get filter => 'Scagaire';

  @override
  String get all => 'Gach';

  @override
  String get active => 'Gníomhach';

  @override
  String get today => 'Inniu';

  @override
  String get yesterday => 'Inné';

  @override
  String get tomorrow => 'amárach';

  @override
  String get add => 'Cuir';

  @override
  String get remove => 'Bain';

  @override
  String get refresh => 'Athnuaigh';

  @override
  String get retry => 'Bain triail eile as';

  @override
  String get error => 'Earráid';

  @override
  String get success => 'Rath';

  @override
  String get loading => 'Á lódáil...';

  @override
  String get no_data => 'Níl aon sonraí ar fáil';

  @override
  String get offline => 'Mód As Líne';

  @override
  String get offline_sub =>
      'Déanfar na hathruithe a shioncronú nuair a bheidh siad athcheangailte';

  @override
  String get undo => 'Cealaigh';

  @override
  String get portion => 'Cuid';

  @override
  String get quantity => 'Cainníocht';

  @override
  String get unit => 'Aonad';

  @override
  String get clear => 'Glan';

  @override
  String get select => 'Roghnaigh';

  @override
  String get apply => 'Cuir iarratas isteach';

  @override
  String get reset => 'Athshocraigh';

  @override
  String get ok => 'ceart go leor';

  @override
  String get yes => 'Tá';

  @override
  String get no => 'Níl';

  @override
  String get optional => 'Roghnach';

  @override
  String get calories => 'Calraí';

  @override
  String get protein => 'Próitéin';

  @override
  String get carbs => 'Carbaí';

  @override
  String get fat => 'Saill';

  @override
  String get fiber => 'Snáithín';

  @override
  String get water => 'Uisce';

  @override
  String get steps => 'Céimeanna';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'lb';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'isteach';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'uair';

  @override
  String get minutes => 'nóim';

  @override
  String get serving => 'Ag freastal';

  @override
  String get servings => 'Freastaluithe';

  @override
  String get serving_size => 'Méid Freastal';

  @override
  String get per_100g => 'in aghaidh an 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Áise';

  @override
  String get europe => 'Eoraip';

  @override
  String get middle_east => 'Meán-Oirthear';

  @override
  String get africa => 'Afraic';

  @override
  String get americas => 'Mheiriceá';

  @override
  String get home_title => 'Baile';

  @override
  String get home_greeting_morning => 'Maidin mhaith';

  @override
  String get home_greeting_afternoon => 'Tráthnóna maith';

  @override
  String get home_greeting_evening => 'Oíche mhaith';

  @override
  String get home_streak_title => 'Streak Blossom';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stríoc laethanta',
      one: '1 stríoc lá',
      zero: '0 lá stríoc',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Dóite';

  @override
  String get home_calories_budget => 'Buiséad Calorie';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal fágtha';
  }

  @override
  String get home_water_title => 'Hydration Laethúil';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / $target ml';
  }

  @override
  String get home_steps_title => 'Céimeanna Shiúil';

  @override
  String get home_quick_actions => 'Gníomhartha Tapa';

  @override
  String get home_log_meal => 'Béile Log';

  @override
  String get home_log_water => 'Log Uisce';

  @override
  String get home_log_workout => 'Log workout';

  @override
  String get home_log_weight => 'Meáchan Log';

  @override
  String get home_insights_title => 'Léargas an Lae Inniu';

  @override
  String get home_quote =>
      'Cruthaíonn roghanna sláintiúla beaga claochluithe faoi bhláth.';

  @override
  String get home_ai_coach_tip => 'Oiliúnóir do Bloomi AI';

  @override
  String get home_surroundings => 'Timpeallacht & Aer';

  @override
  String get home_notifications => 'Fógraí';

  @override
  String get home_daily_score => 'Scór Folláine Laethúil';

  @override
  String get home_view_all => 'Féach ar Uile';

  @override
  String get food_diary_title => 'Dialann Bia';

  @override
  String get food_breakfast => 'Bricfeasta';

  @override
  String get food_lunch => 'Lón';

  @override
  String get food_dinner => 'Dinnéar';

  @override
  String get food_snacks => 'Sneaiceanna';

  @override
  String get food_add_food => 'Cuir Bia leis';

  @override
  String get food_edit_food => 'Cuir Bia in Eagar';

  @override
  String get food_add_breakfast => 'Cuir Bricfeasta';

  @override
  String get food_add_lunch => 'Cuir Lón leis';

  @override
  String get food_add_dinner => 'Cuir Dinnéar leis';

  @override
  String get food_add_snack => 'Cuir Snack leis';

  @override
  String get food_total_calories => 'Iomlán calories';

  @override
  String get food_empty_meal => 'Níl aon bhianna logáilte don bhéile seo fós';

  @override
  String get food_empty_diary => 'Níl aon bhéilí logáilte don lá seo';

  @override
  String get food_log_first_meal =>
      'Tap + chun do chéad bhéile blasta a logáil';

  @override
  String get food_quick_add => 'Cuir Thapa leis';

  @override
  String get food_search_hint => 'Cuardaigh miasa, torthaí, dal, roti...';

  @override
  String get food_custom_recipe => 'Bia & Oideas Saincheaptha';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'Scanóir Bia AI';

  @override
  String get food_recent => 'Bianna Déanaí';

  @override
  String get food_favourites => 'Ceanáin';

  @override
  String get food_macro_summary => 'Miondealú Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'An bhfuil tú cinnte gur mhaith leat an mhír seo a bhaint?';

  @override
  String get food_item_deleted => 'Mír bia bainte';

  @override
  String get food_remaining => 'fágtha';

  @override
  String get food_consumed => 'itear';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Cuardach Bianna';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Grianghraf Snap Food';

  @override
  String get foodSearch_custom_food => 'Cruthaigh Bia Saincheaptha';

  @override
  String get foodSearch_recent_searches => 'Cuardach le Déanaí';

  @override
  String get foodSearch_popular => 'Miasa Coitianta';

  @override
  String get foodSearch_no_results => 'Níl aon bhia ag teacht le do chuardach';

  @override
  String get barcode_title => 'Scanóir barcode';

  @override
  String get barcode_align =>
      'Ailínigh barrachóid taobh istigh den fhráma ceamara';

  @override
  String get barcode_not_found => 'Ní bhfuarthas an táirge sa bhunachar sonraí';

  @override
  String get barcode_premium_feature =>
      'Tá scanadh barrachóid ar fáil le Bloomi Pro';

  @override
  String get camera_title => 'Scanóir Bia AI';

  @override
  String get camera_tap_hint => 'Glac grianghraf soiléir de do mhias';

  @override
  String get camera_analysing => 'Ag anailísiú pláta bia...';

  @override
  String get camera_detected => 'Míreanna braite';

  @override
  String get camera_flash => 'Scoránaigh Flash';

  @override
  String get camera_retake => 'Glac Grianghraf';

  @override
  String get camera_confirm_food => 'Deimhnigh Míreanna';

  @override
  String get customFood_title => 'Bia & Oideas Saincheaptha';

  @override
  String get customFood_name_hint => 'Ainm an mhias nó an chomhábhair';

  @override
  String get customFood_calories_hint => 'calories (kcal)';

  @override
  String get customFood_protein_hint => 'Próitéin (g)';

  @override
  String get customFood_carbs_hint => 'Carbaí (g)';

  @override
  String get customFood_fat_hint => 'Saill (g)';

  @override
  String get customFood_save => 'Sábháil oideas';

  @override
  String get water_tracker_title => 'Rianaire Uisce';

  @override
  String get water_daily_target => 'Sprioc Hydration Laethúil';

  @override
  String get water_logged_today => 'Logáilte Inniu';

  @override
  String get water_add_glass => '+250 ml Gloine';

  @override
  String get water_add_bottle => '+500 ml Buidéal';

  @override
  String get water_custom_amount => 'Méid an Chustaim';

  @override
  String get water_reminder_tip =>
      'Ól uisce go rialta i rith an lae le haghaidh fuinneamh seasta.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logáilte $amount ml uisce 💧';
  }

  @override
  String get workout_title => 'Logáil workout';

  @override
  String get workout_add_exercise => 'Cuir Workout leis';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Neart';

  @override
  String get workout_yoga => 'Yoga & Solúbthacht';

  @override
  String get workout_duration => 'Fad';

  @override
  String get workout_intensity => 'Déine';

  @override
  String get workout_calories_burned => 'calories Dóite';

  @override
  String get workout_empty => 'Níl aon workouts logáilte inniu';

  @override
  String get workout_save_success => 'Sábháladh an workout!';

  @override
  String get workout_type => 'Cineál workout';

  @override
  String get workout_notes => 'Nótaí & Machnaimh';

  @override
  String get health_overview_title => 'Sláinte & Beatha';

  @override
  String get health_heart_rate => 'Ráta Croí';

  @override
  String get health_blood_oxygen => 'Ocsaigin Fola (SpO2)';

  @override
  String get health_blood_pressure => 'Brú Fola';

  @override
  String get health_blood_glucose => 'Glúcóis Fola';

  @override
  String get health_body_temperature => 'Teocht Coirp';

  @override
  String get health_sleep_tracking => 'Rianú Codlata';

  @override
  String get health_weight_tracking => 'Meáchan & Comhdhéanamh Coirp';

  @override
  String get health_waist_hip => 'Cóimheas Waist-go-Hip';

  @override
  String get health_devices_hub => 'Gléasanna & Mol Smartwatch';

  @override
  String get health_sync_now => 'Sioncronaigh Sonraí Sláinte';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Sioncronaithe go deireanach: _PH_0__';
  }

  @override
  String get health_manual_entry => 'Iontráil Sláinte Láimhe';

  @override
  String get health_metric_detail => 'Sonraí Méadracha';

  @override
  String get health_connected_sensors => 'Braiteoirí Sláinte Nasctha';

  @override
  String get plan_title => 'Plean Laethúil';

  @override
  String get plan_weekly_title => 'Plean Folláine Seachtainiúil';

  @override
  String get plan_calorie_target => 'Sprioc Calorie';

  @override
  String get plan_water_target => 'Sprioc Hydration';

  @override
  String get plan_step_target => 'Sprioc Chéim';

  @override
  String get plan_sleep_target => 'Sprioc Codladh';

  @override
  String get plan_meal_suggestions => 'Moltaí Béile';

  @override
  String get plan_healthy_habits => 'Nósanna Sláintiúla & Leideanna';

  @override
  String get plan_coach_advice => 'Moltaí Chóiste Bloomi AI';

  @override
  String get plan_generated_title => 'Sceideal Laethúil Pearsanta';

  @override
  String get profile_title => 'Próifíl';

  @override
  String get profile_edit => 'Cuir Próifíl in Eagar';

  @override
  String get profile_name => 'Ainm';

  @override
  String get profile_age => 'Aois';

  @override
  String get profile_gender => 'Inscne';

  @override
  String get profile_height => 'Airde';

  @override
  String get profile_weight => 'Meáchan';

  @override
  String get profile_goal => 'Bunsprioc';

  @override
  String get profile_activity_level => 'Leibhéal Gníomhaíochta';

  @override
  String get profile_stats => 'Mo Staitisticí Folláine';

  @override
  String get profile_saved => 'D\'éirigh leis an bpróifíl a nuashonrú';

  @override
  String get profile_bmi => 'Innéacs Corpmhaise (BMI)';

  @override
  String get profile_membership => 'Ballraíocht';

  @override
  String get settings => 'Socruithe';

  @override
  String get preferences_habits => 'ROGHANNA & nósanna';

  @override
  String get appearance_theme => 'Cuma & Téama';

  @override
  String get appearance_theme_sub =>
      'Dorcha, Solas, Mód Córais & Roghanna Cúlra Aipe';

  @override
  String get permissions => 'Ceadanna & Rochtain Chórais';

  @override
  String get permissions_sub =>
      'Health Connect, Braiteoirí Céime, GPS, Fógraí & Ceamara';

  @override
  String get reminders_notifications => 'Meabhrúcháin & Fógraí';

  @override
  String get reminders_sub =>
      'Amanna bia, uisce, seiceáil isteach meáchain & meabhrúcháin am codlata';

  @override
  String get units_of_measurement => 'Aonaid Tomhais';

  @override
  String get units_sub =>
      'Méadrach (kg, cm, ml, km) nó Impiriúil (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Teanga App';

  @override
  String get language_sub =>
      'Béarla, हिन्दी (Hiondúis), Hinglish & 195+ teanga dhomhanda';

  @override
  String get home_screen_widgets => 'Giuirléidí Scáileáin Baile';

  @override
  String get widgets_sub =>
      'Giuirléidí beo Android: Mol, Céimeanna, Uisce, Cothú & Mascot';

  @override
  String get wear_os_watch_app => 'Caith OS Watch App';

  @override
  String get wear_os_sub =>
      'Compánach Smartwatch, tíleanna, aimhréidh agus ríthábhachtach beo';

  @override
  String get goals_wellness => 'SPRIOCANNA & LÉIRMHEAS FAISNÉISE';

  @override
  String get nutrition_targets => 'Spriocanna Cothaithe & Macra Scoilte';

  @override
  String get nutrition_targets_sub =>
      'Sprioc calorie, próitéin, carbs, saill & uisce';

  @override
  String get weekly_recap => 'Achoimre Folláine Seachtainiúil';

  @override
  String get weekly_recap_sub =>
      'Meán calorie 7 lá, cóimheas macra & lá is fearr';

  @override
  String get streaks_milestones => 'Stráicí & Clocha Míle';

  @override
  String get streaks_sub =>
      'stríoca gníomhacha bláthanna, suaitheantais & éachtaí';

  @override
  String get connected_devices => 'GLÉASANNA NAISCE & ÉICEACHÓRAS';

  @override
  String get devices_hub => 'Gléasanna & Mol Smartwatch';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Timpeallacht & Aimsir';

  @override
  String get surroundings_sub =>
      'Caighdeán an aeir (AQI), innéacs UV & leideanna hiodráitithe aimsire';

  @override
  String get bloomi_pro => 'Síntiús Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Cóiste Plean AI, 5 ghiuirléid scáileáin baile & rianaithe ríthábhachtacha';

  @override
  String get about_security => 'FAOI & SLÁNDÁLA';

  @override
  String get about_bloomi => 'Maidir Bloomi';

  @override
  String get about_bloomi_sub => 'Tógáil sonraíochtaí, leagan, sannacháin';

  @override
  String get privacy_policy => 'Beartas Príobháideachta';

  @override
  String get privacy_policy_sub =>
      'Ailtireacht sonraí ar an ngléas as líne den chéad uair';

  @override
  String get terms_conditions => 'Téarmaí & Coinníollacha';

  @override
  String get terms_conditions_sub =>
      'Téarmaí seirbhíse agus treoirlínte folláine';

  @override
  String get delete_account => 'Scrios Cuntas & Sonraí';

  @override
  String get delete_account_sub =>
      'Scrios sonraí SQLite áitiúla agus cúltacaí scamall go do-athraithe';

  @override
  String get healthy_habits => 'Tóg nósanna folláine milis, buan';

  @override
  String get all_logs => 'Mo Shonraí Rianaithe & Logchomhaid';

  @override
  String get search_language =>
      'Cuardaigh de réir teanga nó script dhúchais...';

  @override
  String get languages_available => 'Teangacha ar Fáil';

  @override
  String get no_matching_languages => 'Níor aimsíodh teangacha meaitseála';

  @override
  String get try_searching =>
      'Bain triail as cuardach de réir script dhúchais nó litriú Béarla';

  @override
  String get partially_translated => 'Aistríodh go páirteach';

  @override
  String get complete_translation => 'Críochnaigh';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Teanga socraithe go _PH_0__ ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Timpeallacht & Timpeallacht';

  @override
  String get surroundings_aqi => 'Innéacs Cáilíochta Aeir';

  @override
  String get surroundings_uv => 'Innéacs UV';

  @override
  String get surroundings_temp => 'Teocht';

  @override
  String get surroundings_humidity => 'Taiseachas';

  @override
  String get surroundings_hydration_advice =>
      'Fan go hiodráitithe go maith sna coinníollacha aimsire reatha.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Cuardach Bia';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Cuir Uisce';

  @override
  String get food_quick_custom => 'Bia an Chustaim';

  @override
  String get surroundings_good => 'Maith';

  @override
  String get surroundings_moderate => 'Measartha';

  @override
  String get surroundings_unhealthy => 'míshláintiúil';

  @override
  String get notifications_title => 'Fógraí & Foláirimh';

  @override
  String get notifications_empty => 'Gan fógraí nua';

  @override
  String get notifications_mark_read => 'Marcáil Uile mar Léamh';

  @override
  String get notifications_clear => 'Glan Uile';

  @override
  String get reminders => 'Socruithe Meabhrúcháin';

  @override
  String get notifications => 'Fógraí';

  @override
  String get reminders_breakfast_title => 'Meabhrúchán Bricfeasta 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Maidin mhaith! Am le haghaidh bricfeasta cothaitheach ag $time .';
  }

  @override
  String get reminders_lunch_title => 'Meabhrúchán lóin 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Stop agus bain taitneamh as lón cothrom, aireach ag $time .';
  }

  @override
  String get reminders_dinner_title => 'Meabhrúchán Dinnéar 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Am le haghaidh dinnéar éadrom, sásúil ag $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Am chun gloine úr uisce a ól! ( _PH_0__ )';
  }

  @override
  String get reminders_weight_title => 'Meáchan isteach seachtainiúil ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Rianaigh do mheadracht coirp seachtainiúla ar Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Luas na Gaoithe 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Scaoil agus ullmhaigh do chodladh suaimhneach ( _PH_0__ ).';
  }

  @override
  String get onboard_welcome => 'Fáilte go Bloomi';

  @override
  String get onboard_sub =>
      'Do chompánach cairdiúil sláinte agus cothaithe as líne.';

  @override
  String get onboard_get_started => 'Faigh Tosaigh';

  @override
  String get onboard_sign_in => 'Sínigh Isteach';

  @override
  String get onboard_skip => 'Scipeáil';

  @override
  String get onboard_choose_goal => 'Cad é do phríomhsprioc folláine?';

  @override
  String get onboard_goal_weight_loss => 'meáchain caillteanas milis';

  @override
  String get onboard_goal_muscle => 'Gnóthachan & Neart Muscle';

  @override
  String get onboard_goal_energy => 'Fuinneamh Laethúil & Beogacht';

  @override
  String get onboard_goal_habits => 'Itheachán Sláintiúil Aireach';

  @override
  String get onboard_about_you => 'Inis Fút Féin';

  @override
  String get onboard_lifestyle => 'Do Ghnáthamh Laethúil';

  @override
  String get onboard_permissions_title => 'Ceadanna & Rochtain Chórais';

  @override
  String get onboard_permissions_sub =>
      'Tabhair rochtain ar chéimeanna sioncronaithe, cleachtaí agus meabhrúcháin.';

  @override
  String get onboard_plan_ready_title => 'Tá do Phlean Saincheaptha Réidh!';

  @override
  String get onboard_plan_ready_sub =>
      'Rinneamar treochlár milis pearsantaithe cothaithe agus folláine a dhearadh duitse.';

  @override
  String get onboard_enter_bloomi => 'Cuir isteach Bloomi';

  @override
  String get insights_weekly_report => 'Achoimre Folláine Seachtainiúil';

  @override
  String insights_best_day(Object day) {
    return 'An Lá Comhsheasmhachta is Fearr: $day';
  }

  @override
  String get insights_streaks_badges => 'Stráicí & Clocha Míle';

  @override
  String insights_unlocked_on(Object date) {
    return 'Díghlasáilte ar _PH_0__';
  }

  @override
  String get insights_keep_going =>
      'Leanaigí ar aghaidh leis an dul chun cinn iontach!';

  @override
  String get widgets_title => 'Giuirléidí Scáileáin Baile';

  @override
  String widgets_active_count(Object count) {
    return 'Giuirléidí Gníomhacha: _PH_0__';
  }

  @override
  String get widgets_hub_title => 'Mol Folláine Bloomi';

  @override
  String get widgets_steps_title => 'Céimeanna & Fáinne Gníomhach';

  @override
  String get widgets_water_title => 'Logchomhad Thapa Hydration';

  @override
  String get widgets_mascot_title => 'Compánach Mascot Bloomi';

  @override
  String get wear_os_title => 'Caith OS Smartwatch';

  @override
  String get wear_os_connected => 'Ceangailte le Faire';

  @override
  String get wear_os_sync => 'Sioncronaigh Sonraí Faire';

  @override
  String get theme_title => 'Cuma & Téama';

  @override
  String get theme_mode => 'Mód Téama';

  @override
  String get theme_light => 'Solas';

  @override
  String get theme_dark => 'Dorcha';

  @override
  String get theme_system => 'Réamhshocrú Córais';

  @override
  String get theme_background_palette => 'Pailéad Cúlra';

  @override
  String get units_title => 'Aonaid Tomhais';

  @override
  String get units_metric => 'méadrach (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ní féidir an painéal a lódáil';

  @override
  String get home_health_permission_req => 'Tá cead Health Connect ag teastáil';

  @override
  String get home_health_permission_desc =>
      'Teastaíonn cead Health Connect ó Bloomi chun fíorchéimeanna, ráta croí a tharraingt, agus giuirléidí baile soghluaiste a shioncronú i bhfíor-am.';

  @override
  String get home_allow_health => 'Ceadaigh Health Connect';

  @override
  String get home_ready_mindful_day => 'Réidh le haghaidh lá aireach? ✨';

  @override
  String get home_quick_add => 'Cuir Thapa leis';

  @override
  String get home_live_gps => 'Gps beo';

  @override
  String get home_calories_remaining_label => 'CALORIES ATÁ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ithe: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker =>
      'Beartaíonn le haghaidh Lorgaire Uisce 💧';

  @override
  String get home_water_goal_reached => 'Sprioc laethúil bainte amach 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml go dtí an sprioc laethúil';
  }

  @override
  String get home_details => 'Sonraí';

  @override
  String get home_upgrade_plan_desc =>
      'Uasghrádú chun spriocanna laethúla pearsantaithe agus plean AI a dhíghlasáil';

  @override
  String get home_unlock => 'Díghlasáil 👑';

  @override
  String get home_quick_log_hint => 'Taifead go tapa ar iontráil folláine';

  @override
  String get food_serving_size => 'Méid Freastal';

  @override
  String get food_serving_grams => 'ag freastal (g)';

  @override
  String get food_number_servings => 'Líon na bhFreastal';

  @override
  String get food_calories_per_serving => 'Calories in aghaidh an riar';

  @override
  String get food_recipe_ingredients => 'Comhábhair';

  @override
  String get food_recipe_add_ingredient => 'Cuir Comhábhar leis';

  @override
  String get food_recipe_directions => 'Treoracha & Nótaí';

  @override
  String get food_recipe_total => 'Cothú Oideas Iomlán';

  @override
  String get food_recipe_per_serving => 'In aghaidh an Freastal Cothú';

  @override
  String get food_recipe_saved_toast =>
      'Bia saincheaptha a shábháil go rathúil!';

  @override
  String get food_barcode_found => 'Táirge Aimsithe!';

  @override
  String get food_barcode_not_found_desc =>
      'Níorbh fhéidir linn an barrachóid seo a aimsiú sa bhunachar sonraí oscailte. Is féidir leat é a chur leis mar bhia saincheaptha.';

  @override
  String get food_add_custom_btn => 'Cuir Bia Saincheaptha leis';

  @override
  String get food_scan_again => 'Scan Arís';

  @override
  String get food_review_items => 'Athbhreithniú a dhéanamh ar Bianna Braite';

  @override
  String get food_review_hint =>
      'Coigeartaigh cainníochtaí nó bain aon mhír neamhaitheanta';

  @override
  String get food_log_selected => 'Logáil Bianna Roghnaithe';

  @override
  String get food_favourites_title => 'Bianna is Fearr';

  @override
  String get food_recent_title => 'Bianna Déanaí';

  @override
  String get food_no_favourites =>
      'Níl aon bianna is fearr leat fós. Tapáil croí ar aon bhia le spáráil anseo.';

  @override
  String get food_no_recents =>
      'Níor aimsíodh aon bhianna a logáladh le déanaí.';

  @override
  String get food_nutrition_details_title => 'Sonraí Cothaithe Laethúla';

  @override
  String get food_macro_protein_label => 'Miondealú Próitéin';

  @override
  String get food_macro_carbs_label => 'Miondealú Carbs';

  @override
  String get food_macro_fat_label => 'Miondealú Saill';

  @override
  String get food_macro_fiber_label => 'Miondealú Snáithín';

  @override
  String get food_daily_target_comparison => 'Comparáid Sprioc';

  @override
  String food_target_label(Object target) {
    return 'Sprioc: _PH_0__';
  }

  @override
  String get food_edit_entry => 'Cuir Iontráil Dialainne in Eagar';

  @override
  String get food_delete_entry => 'Scrios Iontráil';

  @override
  String food_grams_short(Object grams) {
    return '_PH_0__ g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '_PH_0__ kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '_PH_0__ as $target ml';
  }

  @override
  String get water_intake_history => 'Logaí Uisce an lae inniu';

  @override
  String get water_no_logs_today =>
      'Níl aon uisce logáilte fós inniu. Hydrate agus tapáil cnaipe cuir tapa leis!';

  @override
  String get water_adjust_goal => 'Coigeartaigh Sprioc Laethúil';

  @override
  String get health_connect_banner => 'Ceangailte le Health Connect';

  @override
  String get health_vitals_summary => 'Buntáistí Sláinte Laethúla';

  @override
  String get health_latest_heart_rate => 'Ráta Croí is Déanaí';

  @override
  String get health_latest_bp => 'Brú Fola';

  @override
  String get health_latest_spo2 => 'Ocsaigin Fola';

  @override
  String get health_latest_glucose => 'Glúcóis Fola';

  @override
  String get health_latest_weight => 'Meáchan';

  @override
  String get health_latest_sleep => 'Fad Codladh';

  @override
  String get health_add_manual => 'Cuir Tomhas Lámhleabhar leis';

  @override
  String get health_history_trends => 'Treochtaí Stairiúla';

  @override
  String get health_sync_success => 'D\'éirigh le sioncronú sonraí sláinte!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '_PH_0__ uair $mins nóim';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '_PH_0__ kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '_PH_0__ bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '_PH_0__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '_PH_0__ / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '_PH_0__ mg/dL';
  }

  @override
  String get health_devices_title => 'Gléasanna & Feistí Inchaite Nasctha';

  @override
  String get health_devices_desc =>
      'Bainistigh uaireadóirí cliste péireáilte, rianaithe folláine, agus braiteoirí sláinte.';

  @override
  String get health_workout_editor_title => 'Cuir Workout in eagar';

  @override
  String get health_workout_name_label => 'Ainm workout';

  @override
  String get health_workout_duration_label => 'Fad (nóiméid)';

  @override
  String get health_workout_calories_label => 'Calraí Measta (kcal)';

  @override
  String get health_workout_date_label => 'Dáta agus Am';

  @override
  String get plan_daily_wellness_roadmap => 'Do Treochlár Pearsanta';

  @override
  String get plan_morning_routine => 'Gnáthamh Maidin';

  @override
  String get plan_afternoon_routine => 'Folláine Mheán lae';

  @override
  String get plan_evening_routine => 'Gaoth Aduaidh';

  @override
  String get plan_coach_badge => 'Oiliúnóir do Bloomi AI';

  @override
  String get plan_weekly_overview => 'Fócas Folláine 7-Lá';

  @override
  String get plan_targets_title => 'Spriocanna & Spriocanna Folláine';

  @override
  String get plan_calorie_budget_label => 'Buiséad Calorie Laethúil';

  @override
  String get plan_water_budget_label => 'Sprioc Uisce Laethúil';

  @override
  String get plan_step_budget_label => 'Sprioc Chéim Laethúil';

  @override
  String get plan_macro_split_label => 'Cóimheas Macro-Chothaitheach';

  @override
  String get profile_personal_details => 'Sonraí Pearsanta';

  @override
  String get profile_body_stats => 'Tomhais Coirp';

  @override
  String get profile_app_preferences => 'Sainroghanna & Socruithe Aipe';

  @override
  String get profile_edit_name_hint => 'D\'ainm';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Airde ( _PH_0__ )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Meáchan ( _PH_0__ )';
  }

  @override
  String get profile_edit_age_hint => 'Aois';

  @override
  String get profile_gender_male => 'Fireann';

  @override
  String get profile_gender_female => 'Mná';

  @override
  String get profile_gender_other => 'Eile / Is fearr gan a rá';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (beagán gan aon aclaíocht)';

  @override
  String get profile_activity_light =>
      'Gníomhach go héadrom (1-3 lá / seachtain)';

  @override
  String get profile_activity_moderate =>
      'Measartha Gníomhach (3-5 lá / seachtain)';

  @override
  String get profile_activity_very => 'An-Ghníomhach (6-7 lá/seachtaine)';

  @override
  String get settings_wear_os_header => 'Caith OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Suiteáil an tíl Bloomi agus casta ar d\'uaireadóir Wear OS chun sracfhéachaint ar chalaraí, uisce agus céimeanna.';

  @override
  String get settings_widgets_header => 'Giuirléidí Android idirghníomhacha';

  @override
  String get settings_widgets_desc =>
      'Pin giuirléidí fíor-ama ar scáileán baile do ghléis le haghaidh nuashonruithe láithreach.';

  @override
  String get settings_about_header => 'Maidir Bloomi';

  @override
  String get settings_about_version => 'Leagan 1.0.0';

  @override
  String get settings_about_build => 'Tóg 100';

  @override
  String get settings_about_credits =>
      'Crafted le cúram do mhaireachtáil aireach, sláintiúil.';

  @override
  String get settings_terms_header => 'Téarmaí agus Coinníollacha';

  @override
  String get settings_privacy_header => 'Beartas Príobháideachta';

  @override
  String get settings_delete_header => 'Scrios Cuntas & Sonraí';

  @override
  String get settings_delete_warning =>
      'Ní féidir an gníomh seo a chealú. Scriosfar go buan do bhéilí, do chuid oibre, do bheoga agus do phróifíl.';

  @override
  String get settings_delete_confirm_btn => 'Scrios Buan';

  @override
  String get onboard_welcome_headline => 'Fáilte go Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Rianú folláine meabhrach, meabhrach deartha thart ar do shaol.';

  @override
  String get onboard_step_about => 'Fútsa';

  @override
  String get onboard_step_goals => 'Do Spriocanna';

  @override
  String get onboard_step_lifestyle => 'Nósanna Laethúla';

  @override
  String get onboard_step_permissions => 'Ceadanna';

  @override
  String get onboard_step_plan => 'Réidh!';

  @override
  String get onboard_health_connect_perm => 'Rochtain Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Braiteoir Áiritheoir Céime';

  @override
  String get onboard_notif_perm => 'Meabhrúcháin & Fógraí Aireacha';

  @override
  String get onboard_camera_perm => 'Ceamara (Barcode & Scanóir Bia)';

  @override
  String get onboard_grant_permissions => 'Ceadanna Deonaithe';

  @override
  String get onboard_continue_dashboard => 'Oscail Painéal na nIonstraimí';

  @override
  String get notif_channel_hydration_name => 'Nodanna Hydration';

  @override
  String get notif_channel_hydration_desc =>
      'Meabhrúcháin uisce milis i rith an lae';

  @override
  String get notif_channel_nutrition_name => 'Meabhrúcháin Béilí & Cothú';

  @override
  String get notif_channel_nutrition_desc =>
      'Foláirimh meabhrúcháin bricfeasta, lón agus dinnéar';

  @override
  String get notif_channel_steps_name => 'Clocha Míle Céim';

  @override
  String get notif_channel_steps_desc =>
      'Ceiliúradh agus spriocanna céime laethúla á mbaint amach';

  @override
  String get notif_channel_vitals_name => 'Seiceálacha Sláinte & Beatha';

  @override
  String get notif_channel_vitals_desc =>
      'Meabhrúcháin maidir le meáchan agus am codlata gan stad';

  @override
  String get notif_action_log_water => '💧 Logáil +250ml';

  @override
  String get notif_action_snooze => 'Cur ar suan 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Béile';

  @override
  String get language => 'Teanga';

  @override
  String get share => 'Comhroinn';

  @override
  String common_days(Object count) {
    return '_PH_0__ d ó shin';
  }
}
