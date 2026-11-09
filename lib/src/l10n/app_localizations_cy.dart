// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get app_name => 'Blodau';

  @override
  String get nav_home => 'Cartref';

  @override
  String get nav_today => 'Heddiw';

  @override
  String get nav_plan => 'Cynllun';

  @override
  String get nav_food => 'Bwyd';

  @override
  String get nav_food_diary => 'Dyddiadur Bwyd';

  @override
  String get nav_workout => 'Log Ymarfer Corff';

  @override
  String get nav_health => 'Iechyd';

  @override
  String get nav_profile => 'Proffil';

  @override
  String get save => 'Arbed';

  @override
  String get cancel => 'Canslo';

  @override
  String get delete => 'Dileu';

  @override
  String get edit => 'Golygu';

  @override
  String get done => 'Wedi\'\'i wneud';

  @override
  String get close => 'Cau';

  @override
  String get back => 'Yn ol';

  @override
  String get next => 'Nesaf';

  @override
  String get continue_btn => 'Parhewch';

  @override
  String get confirm => 'Cadarnhau';

  @override
  String get search => 'Chwiliwch';

  @override
  String get filter => 'Hidlo';

  @override
  String get all => 'Pawb';

  @override
  String get active => 'Actif';

  @override
  String get today => 'Heddiw';

  @override
  String get yesterday => 'Ddoe';

  @override
  String get tomorrow => 'Yfory';

  @override
  String get add => 'Ychwanegu';

  @override
  String get remove => 'Dileu';

  @override
  String get refresh => 'Adnewyddu';

  @override
  String get retry => 'Ceisiwch eto';

  @override
  String get error => 'Gwall';

  @override
  String get success => 'Llwyddiant';

  @override
  String get loading => 'Wrthi\'n llwytho...';

  @override
  String get no_data => 'Dim data ar gael';

  @override
  String get offline => 'Modd All-lein';

  @override
  String get offline_sub => 'Bydd newidiadau yn cysoni ar ôl eu hailgysylltu';

  @override
  String get undo => 'Dadwneud';

  @override
  String get portion => 'Dogn';

  @override
  String get quantity => 'Nifer';

  @override
  String get unit => 'Uned';

  @override
  String get clear => 'Clir';

  @override
  String get select => 'Dewiswch';

  @override
  String get apply => 'Ymgeisiwch';

  @override
  String get reset => 'Ailosod';

  @override
  String get ok => 'iawn';

  @override
  String get yes => 'Oes';

  @override
  String get no => 'Nac ydw';

  @override
  String get optional => 'Dewisol';

  @override
  String get calories => 'Calorïau';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Braster';

  @override
  String get fiber => 'Ffibr';

  @override
  String get water => 'Dwfr';

  @override
  String get steps => 'Camau';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'pwys';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'mewn';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'awr';

  @override
  String get minutes => 'munyd';

  @override
  String get serving => 'Gwasanaethu';

  @override
  String get servings => 'Gwasanaethu';

  @override
  String get serving_size => 'Maint Gweini';

  @override
  String get per_100g => 'fesul 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Ewrop';

  @override
  String get middle_east => 'Dwyrain Canol';

  @override
  String get africa => 'Affrica';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Cartref';

  @override
  String get home_greeting_morning => 'Bore Da';

  @override
  String get home_greeting_afternoon => 'Prynhawn Da';

  @override
  String get home_greeting_evening => 'Noswaith Dda';

  @override
  String get home_streak_title => 'Rhediad Blossom';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '_PH_0__ rhediad diwrnod',
      one: 'rhediad 1 diwrnod',
      zero: 'rhediad 0 diwrnod',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Llosgi';

  @override
  String get home_calories_budget => 'Cyllideb Calorïau';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal yn weddill';
  }

  @override
  String get home_water_title => 'Hydradiad Dyddiol';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / $target ml';
  }

  @override
  String get home_steps_title => 'Cerdded Camau';

  @override
  String get home_quick_actions => 'Camau Cyflym';

  @override
  String get home_log_meal => 'Log Pryd';

  @override
  String get home_log_water => 'Log Dŵr';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Pwysau';

  @override
  String get home_insights_title => 'Insights Heddiw';

  @override
  String get home_quote =>
      'Mae dewisiadau iach bach yn creu trawsnewidiadau blodeuol.';

  @override
  String get home_ai_coach_tip => 'Hyfforddwr Bloomi AI';

  @override
  String get home_surroundings => 'Amgylchoedd ac Awyr';

  @override
  String get home_notifications => 'Hysbysiadau';

  @override
  String get home_daily_score => 'Sgôr Lles Dyddiol';

  @override
  String get home_view_all => 'Gweld Pawb';

  @override
  String get food_diary_title => 'Dyddiadur Bwyd';

  @override
  String get food_breakfast => 'Brecwast';

  @override
  String get food_lunch => 'Cinio';

  @override
  String get food_dinner => 'Cinio';

  @override
  String get food_snacks => 'Byrbrydau';

  @override
  String get food_add_food => 'Ychwanegu Bwyd';

  @override
  String get food_edit_food => 'Golygu Bwyd';

  @override
  String get food_add_breakfast => 'Ychwanegu Brecwast';

  @override
  String get food_add_lunch => 'Ychwanegu Cinio';

  @override
  String get food_add_dinner => 'Ychwanegu Cinio';

  @override
  String get food_add_snack => 'Ychwanegu Byrbryd';

  @override
  String get food_total_calories => 'Cyfanswm Calorïau';

  @override
  String get food_empty_meal =>
      'Nid oes unrhyw fwydydd wedi\'u cofnodi ar gyfer y pryd hwn eto';

  @override
  String get food_empty_diary =>
      'Nid oes unrhyw brydau wedi\'u cofnodi ar gyfer y diwrnod hwn';

  @override
  String get food_log_first_meal => 'Tap + i gofnodi\'ch pryd blasus cyntaf';

  @override
  String get food_quick_add => 'Ychwanegu Cyflym';

  @override
  String get food_search_hint => 'Chwilio prydau, ffrwythau, dal, roti...';

  @override
  String get food_custom_recipe => 'Bwyd a Rysáit Custom';

  @override
  String get food_scan_barcode => 'Sganiwch y cod bar';

  @override
  String get food_camera_scan => 'Sganiwr Bwyd AI';

  @override
  String get food_recent => 'Bwydydd Diweddar';

  @override
  String get food_favourites => 'Ffefrynnau';

  @override
  String get food_macro_summary => 'Dadansoddiad Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Ydych chi\'n siŵr eich bod am ddileu\'r eitem hon?';

  @override
  String get food_item_deleted => 'Eitem bwyd wedi\'i thynnu';

  @override
  String get food_remaining => 'weddill';

  @override
  String get food_consumed => 'bwyta';

  @override
  String food_of_target(Object target) {
    return 'o $target kcal';
  }

  @override
  String get foodSearch_title => 'Chwilio am Fwydydd';

  @override
  String get foodSearch_scan_barcode => 'Sganiwch y cod bar';

  @override
  String get foodSearch_take_photo => 'Llun Bwyd Snap';

  @override
  String get foodSearch_custom_food => 'Creu Bwyd Personol';

  @override
  String get foodSearch_recent_searches => 'Chwiliadau Diweddar';

  @override
  String get foodSearch_popular => 'Seigiau Poblogaidd';

  @override
  String get foodSearch_no_results =>
      'Dim bwydydd sy\'n cyfateb i\'ch chwiliad';

  @override
  String get barcode_title => 'Sganiwr Cod Bar';

  @override
  String get barcode_align => 'Alinio cod bar y tu mewn i ffrâm y camera';

  @override
  String get barcode_not_found => 'Ni chanfuwyd y cynnyrch yn y gronfa ddata';

  @override
  String get barcode_premium_feature =>
      'Mae sganio cod bar ar gael gyda Bloomi Pro';

  @override
  String get camera_title => 'Sganiwr Bwyd AI';

  @override
  String get camera_tap_hint => 'Tynnwch lun clir o\'ch pryd';

  @override
  String get camera_analysing => 'Wrthi\'n dadansoddi plât bwyd...';

  @override
  String get camera_detected => 'Eitemau wedi\'u canfod';

  @override
  String get camera_flash => 'Toglo Flash';

  @override
  String get camera_retake => 'Tynnu Llun eto';

  @override
  String get camera_confirm_food => 'Cadarnhau Eitemau';

  @override
  String get customFood_title => 'Bwyd a Rysáit Custom';

  @override
  String get customFood_name_hint => 'Enw dysgl neu gynhwysyn';

  @override
  String get customFood_calories_hint => 'Calorïau (kcal)';

  @override
  String get customFood_protein_hint => 'protein (g)';

  @override
  String get customFood_carbs_hint => 'carbs (g)';

  @override
  String get customFood_fat_hint => 'Braster (g)';

  @override
  String get customFood_save => 'Cadw Rysáit';

  @override
  String get water_tracker_title => 'Traciwr Dŵr';

  @override
  String get water_daily_target => 'Nod Hydradiad Dyddiol';

  @override
  String get water_logged_today => 'Wedi mewngofnodi Heddiw';

  @override
  String get water_add_glass => '+250 ml Gwydr';

  @override
  String get water_add_bottle => '+500 ml Potel';

  @override
  String get water_custom_amount => 'Swm Custom';

  @override
  String get water_reminder_tip =>
      'Yfwch ddŵr yn rheolaidd trwy gydol y dydd i gael egni cyson.';

  @override
  String water_logged_toast(Object amount) {
    return 'Wedi mewngofnodi $amount ml o ddŵr 💧';
  }

  @override
  String get workout_title => 'Log Ymarfer Corff';

  @override
  String get workout_add_exercise => 'Ychwanegu Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Cryfder';

  @override
  String get workout_yoga => 'Ioga a Hyblygrwydd';

  @override
  String get workout_duration => 'Hyd';

  @override
  String get workout_intensity => 'Dwysedd';

  @override
  String get workout_calories_burned => 'Calorïau wedi\'u Llosgi';

  @override
  String get workout_empty => 'Dim sesiynau ymarfer wedi\'u cofnodi heddiw';

  @override
  String get workout_save_success => 'Workout wedi\'i gadw\'n llwyddiannus!';

  @override
  String get workout_type => 'Math o Ymarfer Corff';

  @override
  String get workout_notes => 'Nodiadau a Myfyrdodau';

  @override
  String get health_overview_title => 'Iechyd a Hanfodion';

  @override
  String get health_heart_rate => 'Cyfradd y Galon';

  @override
  String get health_blood_oxygen => 'Ocsigen Gwaed (SpO2)';

  @override
  String get health_blood_pressure => 'Pwysedd Gwaed';

  @override
  String get health_blood_glucose => 'Glwcos Gwaed';

  @override
  String get health_body_temperature => 'Tymheredd y Corff';

  @override
  String get health_sleep_tracking => 'Olrhain Cwsg';

  @override
  String get health_weight_tracking => 'Pwysau a Chyfansoddiad y Corff';

  @override
  String get health_waist_hip => 'Cymhareb Gwasg-i-Clun';

  @override
  String get health_devices_hub => 'Dyfeisiau a Smartwatch Hub';

  @override
  String get health_sync_now => 'Cysoni Data Iechyd';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Wedi\'i gysoni ddiwethaf: _PH_0__';
  }

  @override
  String get health_manual_entry => 'Mynediad Iechyd Llaw';

  @override
  String get health_metric_detail => 'Manylion Metrig';

  @override
  String get health_connected_sensors => 'Synwyryddion Iechyd Cysylltiedig';

  @override
  String get plan_title => 'Cynllun Dyddiol';

  @override
  String get plan_weekly_title => 'Cynllun Lles Wythnosol';

  @override
  String get plan_calorie_target => 'Targed Calorïau';

  @override
  String get plan_water_target => 'Targed Hydradiad';

  @override
  String get plan_step_target => 'Targed Cam';

  @override
  String get plan_sleep_target => 'Targed Cwsg';

  @override
  String get plan_meal_suggestions => 'Awgrymiadau Prydau Bwyd';

  @override
  String get plan_healthy_habits => 'Arferion Iach ac Awgrymiadau';

  @override
  String get plan_coach_advice => 'Argymhellion Hyfforddwr Bloomi AI';

  @override
  String get plan_generated_title => 'Amserlen Dyddiol Personol';

  @override
  String get profile_title => 'Proffil';

  @override
  String get profile_edit => 'Golygu Proffil';

  @override
  String get profile_name => 'Enw';

  @override
  String get profile_age => 'Oed';

  @override
  String get profile_gender => 'Rhyw';

  @override
  String get profile_height => 'Uchder';

  @override
  String get profile_weight => 'Pwysau';

  @override
  String get profile_goal => 'Nod Cynradd';

  @override
  String get profile_activity_level => 'Lefel Gweithgaredd';

  @override
  String get profile_stats => 'Fy Ystadegau Lles';

  @override
  String get profile_saved => 'Diweddarwyd y proffil yn llwyddiannus';

  @override
  String get profile_bmi => 'Mynegai Màs y Corff (BMI)';

  @override
  String get profile_membership => 'Aelodaeth';

  @override
  String get settings => 'Gosodiadau';

  @override
  String get preferences_habits => 'DEWISIADAU A HYNODION';

  @override
  String get appearance_theme => 'Ymddangosiad a Thema';

  @override
  String get appearance_theme_sub =>
      'Tywyll, Golau, Modd System ac Opsiynau Cefndir Ap';

  @override
  String get permissions => 'Caniatâd a Mynediad i\'r System';

  @override
  String get permissions_sub =>
      'Cyswllt Iechyd, Synwyryddion Cam, GPS, Hysbysiadau a Chamerâu';

  @override
  String get reminders_notifications => 'Nodiadau Atgoffa a Hysbysiadau';

  @override
  String get reminders_sub =>
      'Amserau bwyd, dŵr, gwirio pwysau a nodiadau atgoffa amser gwely';

  @override
  String get units_of_measurement => 'Unedau Mesur';

  @override
  String get units_sub =>
      'Metrig (kg, cm, ml, km) neu Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Iaith Ap';

  @override
  String get language_sub =>
      'Saesneg, हिन्दी (Hindi), Hinglish a 195+ o ieithoedd byd-eang';

  @override
  String get home_screen_widgets => 'Widgets Sgrin Cartref';

  @override
  String get widgets_sub =>
      'Teclynnau Android byw: Hyb, Camau, Dŵr, Maeth a Mascot';

  @override
  String get wear_os_watch_app => 'Gwisgwch Ap Gwylio OS';

  @override
  String get wear_os_sub =>
      'Cydymaith Smartwatch, teils, cymhlethdodau a hanfodion byw';

  @override
  String get goals_wellness => 'NODAU & INSIGHTS WELL';

  @override
  String get nutrition_targets => 'Targedau Maeth a Macro Hollt';

  @override
  String get nutrition_targets_sub =>
      'Targed calorïau, protein, carbohydradau, braster a dŵr';

  @override
  String get weekly_recap => 'Crynodeb Lles Wythnosol';

  @override
  String get weekly_recap_sub =>
      'Cyfartaledd calorïau 7 diwrnod, cymhareb macro a diwrnod gorau';

  @override
  String get streaks_milestones => 'Rhediadau a Cherrig Milltir';

  @override
  String get streaks_sub =>
      'Rhediadau blodau gweithredol, bathodynnau a chyflawniadau';

  @override
  String get connected_devices => 'DYFEISIAU CYSYLLTIEDIG & ECOSYSTEM';

  @override
  String get devices_hub => 'Dyfeisiau a Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Cyswllt Iechyd, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Amgylchoedd a Thywydd';

  @override
  String get surroundings_sub =>
      'Ansawdd aer (AQI), mynegai UV ac awgrymiadau hydradu tywydd';

  @override
  String get bloomi_pro => 'Tanysgrifiad Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Hyfforddwr Cynllun AI, 5 teclyn sgrin gartref ac olrhain hanfodion';

  @override
  String get about_security => 'AWDL & DIOGELWCH';

  @override
  String get about_bloomi => 'Am Bloomi';

  @override
  String get about_bloomi_sub => 'Adeiladu manylebau, fersiwn, priodoliadau';

  @override
  String get privacy_policy => 'Polisi Preifatrwydd';

  @override
  String get privacy_policy_sub =>
      'Pensaernïaeth data ar y ddyfais all-lein-gyntaf';

  @override
  String get terms_conditions => 'Telerau ac Amodau';

  @override
  String get terms_conditions_sub => 'Telerau gwasanaeth a chanllawiau lles';

  @override
  String get delete_account => 'Dileu Cyfrif a Data';

  @override
  String get delete_account_sub =>
      'Dileu data SQLite lleol a chopïau wrth gefn cwmwl yn ddiwrthdro';

  @override
  String get healthy_habits => 'Adeiladu arferion lles ysgafn, parhaol';

  @override
  String get all_logs => 'Fy Nata wedi\'i Olrhain a Logiau';

  @override
  String get search_language => 'Chwilio yn ôl iaith neu sgript brodorol...';

  @override
  String get languages_available => 'Ieithoedd sydd ar Gael';

  @override
  String get no_matching_languages => 'Heb ganfod ieithoedd sy\'n cyfateb';

  @override
  String get try_searching =>
      'Ceisiwch chwilio yn ôl sgript brodorol neu sillafu Saesneg';

  @override
  String get partially_translated => 'Wedi\'i gyfieithu\'n rhannol';

  @override
  String get complete_translation => 'Cyflawn';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Iaith wedi\'i gosod i $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Amgylchoedd a\'r Amgylchedd';

  @override
  String get surroundings_aqi => 'Mynegai Ansawdd Aer';

  @override
  String get surroundings_uv => 'Mynegai UV';

  @override
  String get surroundings_temp => 'Tymheredd';

  @override
  String get surroundings_humidity => 'Lleithder';

  @override
  String get surroundings_hydration_advice =>
      'Cadwch hydradiad da yn y tywydd presennol.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Chwilio Bwyd';

  @override
  String get food_quick_barcode => 'Sganiwch y cod bar 👑';

  @override
  String get food_quick_water => 'Ychwanegu Dŵr';

  @override
  String get food_quick_custom => 'Bwyd Personol';

  @override
  String get surroundings_good => 'Da';

  @override
  String get surroundings_moderate => 'Cymedrol';

  @override
  String get surroundings_unhealthy => 'Afiach';

  @override
  String get notifications_title => 'Hysbysiadau a Rhybuddion';

  @override
  String get notifications_empty => 'Dim hysbysiadau newydd';

  @override
  String get notifications_mark_read => 'Marciwch Pawb fel Wedi\'i Ddarllen';

  @override
  String get notifications_clear => 'Clirio Pawb';

  @override
  String get reminders => 'Gosodiadau Atgoffa';

  @override
  String get notifications => 'Hysbysiadau Gwthio';

  @override
  String get reminders_breakfast_title => 'Nodyn Atgoffa am Frecwast 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bore da! Amser ar gyfer brecwast maethlon yn $time .';
  }

  @override
  String get reminders_lunch_title => 'Nodyn Atgoffa Cinio 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Oedwch a mwynhewch ginio cytbwys, ystyriol am $time .';
  }

  @override
  String get reminders_dinner_title => 'Nodyn Atgoffa Cinio 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Amser ar gyfer cinio ysgafn, boddhaol yn $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Amser i yfed gwydraid ffres o ddŵr! ( _PH_0__ )';
  }

  @override
  String get reminders_weight_title => 'Pwyso i mewn Wythnosol ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Traciwch fetrigau eich corff wythnosol ar Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Amser gwely i lawr 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Ymlaciwch a pharatowch am gwsg aflonydd ( $time ).';
  }

  @override
  String get onboard_welcome => 'Croeso i Bloomi';

  @override
  String get onboard_sub =>
      'Eich cydymaith iechyd a maeth cyfeillgar, all-lein-gyntaf.';

  @override
  String get onboard_get_started => 'Cychwyn Arni';

  @override
  String get onboard_sign_in => 'Mewngofnodwch';

  @override
  String get onboard_skip => 'Sgipio';

  @override
  String get onboard_choose_goal => 'Beth yw eich prif nod llesiant?';

  @override
  String get onboard_goal_weight_loss => 'Colli Pwysau Ysgafn';

  @override
  String get onboard_goal_muscle => 'Ennill a Chryfder Cyhyr';

  @override
  String get onboard_goal_energy => 'Egni a Bywiogrwydd Dyddiol';

  @override
  String get onboard_goal_habits => 'Bwyta\'n Iach ac ystyriol';

  @override
  String get onboard_about_you => 'Dywedwch Wrthym Amdanoch Eich Hun';

  @override
  String get onboard_lifestyle => 'Eich Trefn Ddyddiol';

  @override
  String get onboard_permissions_title => 'Caniatâd a Mynediad i\'r System';

  @override
  String get onboard_permissions_sub =>
      'Caniatáu mynediad i gamau cysoni, sesiynau ymarfer, a nodiadau atgoffa.';

  @override
  String get onboard_plan_ready_title => 'Mae Eich Cynllun Personol yn Barod!';

  @override
  String get onboard_plan_ready_sub =>
      'Fe wnaethon ni lunio map ffordd maeth a lles ysgafn, personol ar eich cyfer chi yn unig.';

  @override
  String get onboard_enter_bloomi => 'Ewch i mewn i Bloomi';

  @override
  String get insights_weekly_report => 'Crynodeb Lles Wythnosol';

  @override
  String insights_best_day(Object day) {
    return 'Diwrnod Cysondeb Gorau: $day';
  }

  @override
  String get insights_streaks_badges => 'Rhediadau a Cherrig Milltir';

  @override
  String insights_unlocked_on(Object date) {
    return 'Wedi\'i ddatgloi ar _PH_0__';
  }

  @override
  String get insights_keep_going => 'Daliwch ati gyda\'r cynnydd gwych!';

  @override
  String get widgets_title => 'Widgets Sgrin Cartref';

  @override
  String widgets_active_count(Object count) {
    return 'Teclynnau Gweithredol: _PH_0__';
  }

  @override
  String get widgets_hub_title => 'Canolbwynt Lles Bloomi';

  @override
  String get widgets_steps_title => 'Camau a Modrwy Actif';

  @override
  String get widgets_water_title => 'Log Cyflym Hydradiad';

  @override
  String get widgets_mascot_title => 'Cydymaith Mascot Bloomi';

  @override
  String get wear_os_title => 'Gwisgwch OS Smartwatch';

  @override
  String get wear_os_connected => 'Yn gysylltiedig â Gwylio';

  @override
  String get wear_os_sync => 'Cysoni Data Gwylio';

  @override
  String get theme_title => 'Ymddangosiad a Thema';

  @override
  String get theme_mode => 'Modd Thema';

  @override
  String get theme_light => 'Ysgafn';

  @override
  String get theme_dark => 'Tywyll';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Palet Cefndir';

  @override
  String get units_title => 'Unedau Mesur';

  @override
  String get units_metric => 'metrig (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (pwysau, mewn, fl oz)';

  @override
  String get home_unable_load => 'Methu llwytho dangosfwrdd';

  @override
  String get home_health_permission_req => 'Angen Caniatâd Cyswllt Iechyd';

  @override
  String get home_health_permission_desc =>
      'Mae Bloomi angen caniatâd Cyswllt Iechyd i dynnu camau go iawn, cyfradd curiad y galon, a chysoni teclynnau cartref symudol mewn amser real.';

  @override
  String get home_allow_health => 'Caniatáu Cyswllt Iechyd';

  @override
  String get home_ready_mindful_day => 'Barod am ddiwrnod ystyriol? ✨';

  @override
  String get home_quick_add => 'Ychwanegu Cyflym';

  @override
  String get home_live_gps => 'GPS byw';

  @override
  String get home_calories_remaining_label => 'CALORAU YN GWEDDILL';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Wedi bwyta: _PH_0__ / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap ar gyfer Traciwr Dŵr 💧';

  @override
  String get home_water_goal_reached => 'Cyrhaeddwyd nod dyddiol 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '_PH_0__ ml i nod dyddiol';
  }

  @override
  String get home_details => 'Manylion';

  @override
  String get home_upgrade_plan_desc =>
      'Uwchraddio i ddatgloi targedau dyddiol personol a chynllun AI';

  @override
  String get home_unlock => 'Datgloi 👑';

  @override
  String get home_quick_log_hint => 'Cofnodwch gofnod lles yn gyflym';

  @override
  String get food_serving_size => 'Maint Gweini';

  @override
  String get food_serving_grams => 'Gwasanaethu (g)';

  @override
  String get food_number_servings => 'Nifer y Gwasanaethau';

  @override
  String get food_calories_per_serving => 'Calorïau fesul dogn';

  @override
  String get food_recipe_ingredients => 'Cynhwysion';

  @override
  String get food_recipe_add_ingredient => 'Ychwanegu Cynhwysyn';

  @override
  String get food_recipe_directions => 'Cyfarwyddiadau a Nodiadau';

  @override
  String get food_recipe_total => 'Cyfanswm Maeth Rysáit';

  @override
  String get food_recipe_per_serving => 'Maeth Fesul Gwasanaeth';

  @override
  String get food_recipe_saved_toast =>
      'Bwyd personol wedi\'i arbed yn llwyddiannus!';

  @override
  String get food_barcode_found => 'Cynnyrch Wedi\'i Ddarganfod!';

  @override
  String get food_barcode_not_found_desc =>
      'Ni allem ddod o hyd i\'r cod bar hwn yn y gronfa ddata agored. Gallwch ei ychwanegu fel bwyd wedi\'i deilwra.';

  @override
  String get food_add_custom_btn => 'Ychwanegu Bwyd Personol';

  @override
  String get food_scan_again => 'Sgan eto';

  @override
  String get food_review_items => 'Adolygu Bwydydd Canfod';

  @override
  String get food_review_hint =>
      'Addasu meintiau neu ddileu unrhyw eitem nad yw\'n cael ei chydnabod';

  @override
  String get food_log_selected => 'Logiwch Fwydydd a Ddewiswyd';

  @override
  String get food_favourites_title => 'Hoff Fwydydd';

  @override
  String get food_recent_title => 'Bwydydd Diweddar';

  @override
  String get food_no_favourites =>
      'Dim hoff fwydydd eto. Tapiwch eich calon ar unrhyw fwyd i\'w arbed yma.';

  @override
  String get food_no_recents =>
      'Ni ddaethpwyd o hyd i unrhyw fwydydd a gofnodwyd yn ddiweddar.';

  @override
  String get food_nutrition_details_title => 'Manylion Maeth Dyddiol';

  @override
  String get food_macro_protein_label => 'Dadansoddiad Protein';

  @override
  String get food_macro_carbs_label => 'Toriad Carbs';

  @override
  String get food_macro_fat_label => 'Toriad Braster';

  @override
  String get food_macro_fiber_label => 'Chwaliad Ffibr';

  @override
  String get food_daily_target_comparison => 'Cymhariaeth Targed';

  @override
  String food_target_label(Object target) {
    return 'Targed: _PH_0__';
  }

  @override
  String get food_edit_entry => 'Golygu Cofnod Dyddiadur';

  @override
  String get food_delete_entry => 'Dileu Cofnod';

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
    return '_PH_0__ o $target ml';
  }

  @override
  String get water_intake_history => 'Boncyffion Dŵr Heddiw';

  @override
  String get water_no_logs_today =>
      'Dim dŵr wedi\'i logio eto heddiw. Hydrate a thapio botwm ychwanegu cyflym!';

  @override
  String get water_adjust_goal => 'Addasu Nod Dyddiol';

  @override
  String get health_connect_banner => 'Yn gysylltiedig â Cyswllt Iechyd';

  @override
  String get health_vitals_summary => 'Hanfodion Iechyd Dyddiol';

  @override
  String get health_latest_heart_rate => 'Cyfradd y Galon Diweddaraf';

  @override
  String get health_latest_bp => 'Pwysedd Gwaed';

  @override
  String get health_latest_spo2 => 'Ocsigen Gwaed';

  @override
  String get health_latest_glucose => 'Glwcos Gwaed';

  @override
  String get health_latest_weight => 'Pwysau';

  @override
  String get health_latest_sleep => 'Hyd Cwsg';

  @override
  String get health_add_manual => 'Ychwanegu Mesur â Llaw';

  @override
  String get health_history_trends => 'Tueddiadau Hanesyddol';

  @override
  String get health_sync_success =>
      'Data iechyd wedi\'i gysoni\'n llwyddiannus!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '_PH_0__ awr $mins munud';
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
  String get health_devices_title =>
      'Dyfeisiau a Nwyddau Gwisgadwy Cysylltiedig';

  @override
  String get health_devices_desc =>
      'Rheoli smartwatches pâr, tracwyr ffitrwydd, a synwyryddion iechyd.';

  @override
  String get health_workout_editor_title => 'Golygu Workout';

  @override
  String get health_workout_name_label => 'Enw Workout';

  @override
  String get health_workout_duration_label => 'Hyd (munudau)';

  @override
  String get health_workout_calories_label => 'Amcangyfrif o galorïau (kcal)';

  @override
  String get health_workout_date_label => 'Dyddiad ac Amser';

  @override
  String get plan_daily_wellness_roadmap => 'Eich Map Ffordd Personol';

  @override
  String get plan_morning_routine => 'Trefn y Bore';

  @override
  String get plan_afternoon_routine => 'Lles canol dydd';

  @override
  String get plan_evening_routine => 'Hwyrwynt-Lawr';

  @override
  String get plan_coach_badge => 'Hyfforddwr Bloomi AI';

  @override
  String get plan_weekly_overview => 'Ffocws Lles 7-Diwrnod';

  @override
  String get plan_targets_title => 'Targedau a Nodau Lles';

  @override
  String get plan_calorie_budget_label => 'Cyllideb Calorïau Dyddiol';

  @override
  String get plan_water_budget_label => 'Targed Dwr Dyddiol';

  @override
  String get plan_step_budget_label => 'Nod Cam Dyddiol';

  @override
  String get plan_macro_split_label => 'Cymhareb Macronutrient';

  @override
  String get profile_personal_details => 'Manylion Personol';

  @override
  String get profile_body_stats => 'Mesuriadau Corff';

  @override
  String get profile_app_preferences => 'Dewisiadau a Gosodiadau Ap';

  @override
  String get profile_edit_name_hint => 'Eich enw';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Uchder ( _PH_0__ )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Pwysau ( _PH_0__ )';
  }

  @override
  String get profile_edit_age_hint => 'Oed';

  @override
  String get profile_gender_male => 'Gwryw';

  @override
  String get profile_gender_female => 'Benyw';

  @override
  String get profile_gender_other => 'Arall / Gwell gennyf beidio â dweud';

  @override
  String get profile_activity_sedentary =>
      'Eisteddog (Ychydig i ddim ymarfer corff)';

  @override
  String get profile_activity_light => 'Ysgafn Egnïol (1-3 diwrnod yr wythnos)';

  @override
  String get profile_activity_moderate =>
      'Cymedrol Egnïol (3-5 diwrnod yr wythnos)';

  @override
  String get profile_activity_very => 'Actif iawn (6-7 diwrnod yr wythnos)';

  @override
  String get settings_wear_os_header => 'Gwisgwch Ap Companion OS';

  @override
  String get settings_wear_os_desc =>
      'Gosodwch y deilsen Bloomi a\'r cymhlethdod ar eich oriawr Wear OS i edrych ar galorïau, dŵr a grisiau.';

  @override
  String get settings_widgets_header => 'Widgets Android Rhyngweithiol';

  @override
  String get settings_widgets_desc =>
      'Piniwch widgets amser real ar sgrin gartref eich dyfais i gael diweddariadau ar unwaith.';

  @override
  String get settings_about_header => 'Am Bloomi';

  @override
  String get settings_about_version => 'Fersiwn';

  @override
  String get settings_about_build => 'Adeiladu 100';

  @override
  String get settings_about_credits =>
      'Wedi\'i saernïo â gofal ar gyfer byw\'n ystyriol, iach.';

  @override
  String get settings_terms_header => 'Telerau ac Amodau';

  @override
  String get settings_privacy_header => 'Polisi Preifatrwydd';

  @override
  String get settings_delete_header => 'Dileu Cyfrif a Data';

  @override
  String get settings_delete_warning =>
      'Ni ellir dadwneud y weithred hon. Bydd eich holl brydau, sesiynau ymarfer, hanfodion a phroffil yn cael eu dileu\'n barhaol.';

  @override
  String get settings_delete_confirm_btn => 'Dileu yn Barhaol';

  @override
  String get onboard_welcome_headline => 'Croeso i Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Olrhain lles ysgafn, ystyriol wedi\'i gynllunio o amgylch eich bywyd.';

  @override
  String get onboard_step_about => 'Amdanoch Chi';

  @override
  String get onboard_step_goals => 'Eich Nodau';

  @override
  String get onboard_step_lifestyle => 'Arferion Dyddiol';

  @override
  String get onboard_step_permissions => 'Caniatadau';

  @override
  String get onboard_step_plan => 'Barod!';

  @override
  String get onboard_health_connect_perm => 'Mynediad Cyswllt Iechyd';

  @override
  String get onboard_step_sensors_perm => 'Synhwyrydd Cownter Cam';

  @override
  String get onboard_notif_perm => 'Nodiadau Atgoffa Meddwl a Hysbysiadau';

  @override
  String get onboard_camera_perm => 'Camera (Sganiwr Cod Bar a Bwyd)';

  @override
  String get onboard_grant_permissions => 'Caniatâd';

  @override
  String get onboard_continue_dashboard => 'Agor Dangosfwrdd';

  @override
  String get notif_channel_hydration_name => 'Nudges Hydradiad';

  @override
  String get notif_channel_hydration_desc =>
      'Nodiadau atgoffa dŵr ysgafn trwy gydol y dydd';

  @override
  String get notif_channel_nutrition_name =>
      'Nodiadau Atgoffa Prydau Bwyd a Maeth';

  @override
  String get notif_channel_nutrition_desc =>
      'Rhybuddion atgoffa brecwast, cinio a chinio';

  @override
  String get notif_channel_steps_name => 'Cerrig Milltir Cam';

  @override
  String get notif_channel_steps_desc =>
      'Dathliadau wrth gyrraedd targedau cam dyddiol';

  @override
  String get notif_channel_vitals_name => 'Gwiriadau Iechyd a Bywyd';

  @override
  String get notif_channel_vitals_desc =>
      'Nodiadau atgoffa pwysau ac amser gwely i ddod i ben';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Ailatgoffa 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Pryd';

  @override
  String get language => 'Iaith';

  @override
  String get share => 'Rhannu';

  @override
  String common_days(Object count) {
    return '${count}d yn ôl';
  }
}
