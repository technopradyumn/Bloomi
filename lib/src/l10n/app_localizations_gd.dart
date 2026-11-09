// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Scottish Gaelic Gaelic (`gd`).
class AppLocalizationsGd extends AppLocalizations {
  AppLocalizationsGd([String locale = 'gd']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Dhachaigh';

  @override
  String get nav_today => 'An-diugh';

  @override
  String get nav_plan => 'Plana';

  @override
  String get nav_food => 'Biadh';

  @override
  String get nav_food_diary => 'Leabhar-latha Biadh';

  @override
  String get nav_workout => 'Log eacarsaich';

  @override
  String get nav_health => 'Slàinte';

  @override
  String get nav_profile => 'Pròifil';

  @override
  String get save => 'Sàbhail';

  @override
  String get cancel => 'Sguir dheth';

  @override
  String get delete => 'Sguab às';

  @override
  String get edit => 'Deasaich';

  @override
  String get done => 'Dèanta';

  @override
  String get close => 'Dùin';

  @override
  String get back => 'Air ais';

  @override
  String get next => 'Air adhart';

  @override
  String get continue_btn => 'Lean air adhart';

  @override
  String get confirm => 'Dearbhaich';

  @override
  String get search => 'Rannsaich';

  @override
  String get filter => 'Criathraich';

  @override
  String get all => 'Uile';

  @override
  String get active => 'Gnìomhach';

  @override
  String get today => 'An-diugh';

  @override
  String get yesterday => 'An-dè';

  @override
  String get tomorrow => 'A-màireach';

  @override
  String get add => 'Cuir ris';

  @override
  String get remove => 'Thoir air falbh';

  @override
  String get refresh => 'Ùraich';

  @override
  String get retry => 'Feuch a-rithist';

  @override
  String get error => 'Mearachd';

  @override
  String get success => 'Soirbheachas';

  @override
  String get loading => 'A\' luchdachadh...';

  @override
  String get no_data => 'Chan eil dàta ri fhaighinn';

  @override
  String get offline => 'Modh far loidhne';

  @override
  String get offline_sub =>
      'Thèid na h-atharraichean a shioncronachadh nuair a thèid an ath-cheangal';

  @override
  String get undo => 'Neo-dhèanamh';

  @override
  String get portion => 'Cuibhreann';

  @override
  String get quantity => 'Meud';

  @override
  String get unit => 'Aonad';

  @override
  String get clear => 'Soilleir';

  @override
  String get select => 'Tagh';

  @override
  String get apply => 'Cuir a-steach';

  @override
  String get reset => 'Ath-shuidhich';

  @override
  String get ok => 'ceart gu leòr';

  @override
  String get yes => 'Seadh';

  @override
  String get no => 'Chan eil';

  @override
  String get optional => 'Roghainneil';

  @override
  String get calories => 'Calraidhean';

  @override
  String get protein => 'Pròtain';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Saill';

  @override
  String get fiber => 'Fibre';

  @override
  String get water => 'Uisge';

  @override
  String get steps => 'Ceumannan';

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
  String get inches => 'anns';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'uair';

  @override
  String get minutes => 'mion';

  @override
  String get serving => 'A \'frithealadh';

  @override
  String get servings => 'Seirbhisean';

  @override
  String get serving_size => 'Meud frithealaidh';

  @override
  String get per_100g => 'gach 100g';

  @override
  String get india => 'Na h-Innseachan';

  @override
  String get asia => 'Àisia';

  @override
  String get europe => 'Roinn-Eòrpa';

  @override
  String get middle_east => 'An Ear Mheadhanach';

  @override
  String get africa => 'Afraga';

  @override
  String get americas => 'Ameireaga';

  @override
  String get home_title => 'Dhachaigh';

  @override
  String get home_greeting_morning => 'Madainn mhath';

  @override
  String get home_greeting_afternoon => 'Feasgar math';

  @override
  String get home_greeting_evening => 'Feasgar math';

  @override
  String get home_streak_title => 'Sreath Blossom';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '_PH_0__ sreath làithean',
      one: 'Sreath 1 latha',
      zero: 'Sreath 0 làithean',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Air a losgadh';

  @override
  String get home_calories_budget => 'Buidseat Calorie';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal air fhàgail';
  }

  @override
  String get home_water_title => 'Hydration làitheil';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / $target ml';
  }

  @override
  String get home_steps_title => 'Ceumannan Coisich';

  @override
  String get home_quick_actions => 'Gnìomhan luath';

  @override
  String get home_log_meal => 'Clàr-bìdh';

  @override
  String get home_log_water => 'Log uisge';

  @override
  String get home_log_workout => 'Log workout';

  @override
  String get home_log_weight => 'Log cuideam';

  @override
  String get home_insights_title => 'Lèirsinnean an-diugh';

  @override
  String get home_quote =>
      'Bidh roghainnean beaga fallain a \'cruthachadh atharrachaidhean blàth.';

  @override
  String get home_ai_coach_tip => 'Coidse Bloomi AI';

  @override
  String get home_surroundings => 'Cuairtean & Adhair';

  @override
  String get home_notifications => 'Brathan';

  @override
  String get home_daily_score => 'Sgòr Slàinte làitheil';

  @override
  String get home_view_all => 'Seall na h-uile';

  @override
  String get food_diary_title => 'Leabhar-latha Biadh';

  @override
  String get food_breakfast => 'Bracaist';

  @override
  String get food_lunch => 'Lòn';

  @override
  String get food_dinner => 'Dinnear';

  @override
  String get food_snacks => 'Snàthadan-bìdh';

  @override
  String get food_add_food => 'Cuir Biadh ris';

  @override
  String get food_edit_food => 'Deasaich Biadh';

  @override
  String get food_add_breakfast => 'Cuir Bracaist ris';

  @override
  String get food_add_lunch => 'Cuir Lòn ris';

  @override
  String get food_add_dinner => 'Cuir Dinnear ris';

  @override
  String get food_add_snack => 'Cuir Snack ris';

  @override
  String get food_total_calories => 'Calories iomlan';

  @override
  String get food_empty_meal =>
      'Chan eil biadh sam bith air a chlàradh airson a’ bhiadh seo fhathast';

  @override
  String get food_empty_diary =>
      'Chan eil biadh air a chlàradh airson an latha seo';

  @override
  String get food_log_first_meal =>
      'Tap + gus a’ chiad bhiadh blasta agad a chlàradh';

  @override
  String get food_quick_add => 'Cuir ris gu sgiobalta';

  @override
  String get food_search_hint => 'Rannsaich soithichean, measan, dal, roti ...';

  @override
  String get food_custom_recipe => 'Biadh & Reasabaidh Custom';

  @override
  String get food_scan_barcode => 'Sgan barcode';

  @override
  String get food_camera_scan => 'Sganadair bìdh AI';

  @override
  String get food_recent => 'Biadh o chionn ghoirid';

  @override
  String get food_favourites => 'Favourites';

  @override
  String get food_macro_summary => 'Briseadh sìos Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'A bheil thu cinnteach gu bheil thu airson an rud seo a thoirt air falbh?';

  @override
  String get food_item_deleted => 'Rud bìdh air a thoirt air falbh';

  @override
  String get food_remaining => 'air fhàgail';

  @override
  String get food_consumed => 'ga chaitheamh';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Lorg Biadh';

  @override
  String get foodSearch_scan_barcode => 'Sgan barcode';

  @override
  String get foodSearch_take_photo => 'Dealbh Biadh Snap';

  @override
  String get foodSearch_custom_food => 'Cruthaich Biadh Custom';

  @override
  String get foodSearch_recent_searches => 'Rannsachadh o chionn ghoirid';

  @override
  String get foodSearch_popular => 'Miasan mòr-chòrdte';

  @override
  String get foodSearch_no_results =>
      'Gun bhiadh sam bith a fhreagras air an rannsachadh agad';

  @override
  String get barcode_title => 'Barcode scanner';

  @override
  String get barcode_align =>
      'Co-thaobhadh còd-barra taobh a-staigh frèam a’ chamara';

  @override
  String get barcode_not_found => 'Bathar nach deach a lorg san stòr-dàta';

  @override
  String get barcode_premium_feature =>
      'Tha sganadh còd-bàr ri fhaighinn le Bloomi Pro';

  @override
  String get camera_title => 'Sganadair bìdh AI';

  @override
  String get camera_tap_hint => 'Gabh dealbh soilleir den mhias agad';

  @override
  String get camera_analysing => 'A’ mion-sgrùdadh clàr bìdh...';

  @override
  String get camera_detected => 'Nithean a chaidh a lorg';

  @override
  String get camera_flash => 'Tog Flash';

  @override
  String get camera_retake => 'Gabh an dealbh air ais';

  @override
  String get camera_confirm_food => 'Dearbhaich Nithean';

  @override
  String get customFood_title => 'Biadh & Reasabaidh Custom';

  @override
  String get customFood_name_hint => 'Ainm a’ mhias no an stuth';

  @override
  String get customFood_calories_hint => 'Calraidhean (kcal)';

  @override
  String get customFood_protein_hint => 'Pròtain (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Saill (g)';

  @override
  String get customFood_save => 'Sàbhail reasabaidh';

  @override
  String get water_tracker_title => 'Lorgaire uisge';

  @override
  String get water_daily_target => 'Amas Hydration Làitheil';

  @override
  String get water_logged_today => 'Logaichte an-diugh';

  @override
  String get water_add_glass => '+250 ml Glainne';

  @override
  String get water_add_bottle => '+500 ml botal';

  @override
  String get water_custom_amount => 'Suim Custom';

  @override
  String get water_reminder_tip =>
      'Deoch uisge gu cunbhalach tron ​​latha airson lùth seasmhach.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logaichte $amount ml uisge 💧';
  }

  @override
  String get workout_title => 'Log eacarsaich';

  @override
  String get workout_add_exercise => 'Cuir a-steach Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Neart';

  @override
  String get workout_yoga => 'Yoga & sùbailteachd';

  @override
  String get workout_duration => 'Fad';

  @override
  String get workout_intensity => 'dianachd';

  @override
  String get workout_calories_burned => 'Calraidhean air an losgadh';

  @override
  String get workout_empty => 'Cha deach trèanadh sam bith a chlàradh an-diugh';

  @override
  String get workout_save_success => 'Sàbhaladh eacarsaich gu soirbheachail!';

  @override
  String get workout_type => 'Seòrsa eacarsaich';

  @override
  String get workout_notes => 'Notaichean & Faileasan';

  @override
  String get health_overview_title => 'Slàinte & Beathaichean';

  @override
  String get health_heart_rate => 'Ìre cridhe';

  @override
  String get health_blood_oxygen => 'Ocsaidean fuil (SpO2)';

  @override
  String get health_blood_pressure => 'Bruthadh-fala';

  @override
  String get health_blood_glucose => 'Glùcas fuil';

  @override
  String get health_body_temperature => 'Teòthachd Corporra';

  @override
  String get health_sleep_tracking => 'Sgrùdadh cadail';

  @override
  String get health_weight_tracking => 'Cuideam & cumadh bodhaig';

  @override
  String get health_waist_hip => 'Co-mheas Waist-to-Hip';

  @override
  String get health_devices_hub => 'Innealan & Hub Smartwatch';

  @override
  String get health_sync_now => 'Sioncronaich Dàta Slàinte';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'An sioncronadh mu dheireadh: _PH_0__';
  }

  @override
  String get health_manual_entry => 'Inntrigeadh Slàinte làimhe';

  @override
  String get health_metric_detail => 'Mion-fhiosrachadh Metric';

  @override
  String get health_connected_sensors => 'Sensors Slàinte Co-cheangailte';

  @override
  String get plan_title => 'Plana Làitheil';

  @override
  String get plan_weekly_title => 'Plana Slàinte na seachdain';

  @override
  String get plan_calorie_target => 'Targaid Calorie';

  @override
  String get plan_water_target => 'Targaid Hydration';

  @override
  String get plan_step_target => 'Targaid Ceum';

  @override
  String get plan_sleep_target => 'Targaid cadail';

  @override
  String get plan_meal_suggestions => 'Molaidhean bìdh';

  @override
  String get plan_healthy_habits => 'Cleachdaidhean Slàinte & Molaidhean';

  @override
  String get plan_coach_advice => 'Molaidhean Coidse Bloomi AI';

  @override
  String get plan_generated_title => 'Clàr làitheil pearsanaichte';

  @override
  String get profile_title => 'Pròifil';

  @override
  String get profile_edit => 'Deasaich Pròifil';

  @override
  String get profile_name => 'Ainm';

  @override
  String get profile_age => 'Aois';

  @override
  String get profile_gender => 'Gnè';

  @override
  String get profile_height => 'Àirde';

  @override
  String get profile_weight => 'Cuideam';

  @override
  String get profile_goal => 'Prìomh Amas';

  @override
  String get profile_activity_level => 'Ìre gnìomhachd';

  @override
  String get profile_stats => 'Na Staitistigean Slàinte agam';

  @override
  String get profile_saved => 'Chaidh am pròifil ùrachadh gu soirbheachail';

  @override
  String get profile_bmi => 'Clàr-amais cuirp (BMI)';

  @override
  String get profile_membership => 'Ballrachd';

  @override
  String get settings => 'Suidhichidhean';

  @override
  String get preferences_habits => 'ROIMH-RADH & GNATH-FHOCAIL';

  @override
  String get appearance_theme => 'Coltas & Cuspair';

  @override
  String get appearance_theme_sub =>
      'Dorcha, Solas, Modh Siostam & Cùl-roghainnean App';

  @override
  String get permissions => 'Ceadan & ruigsinneachd siostam';

  @override
  String get permissions_sub =>
      'Ceangal Slàinte, Sensors Ceum, GPS, Brathan & Camara';

  @override
  String get reminders_notifications => 'Cuimhneachain & Brathan';

  @override
  String get reminders_sub =>
      'Amannan bìdh, uisge, clàradh cuideam & cuimhneachain àm leabaidh';

  @override
  String get units_of_measurement => 'Aonadan Tomhais';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) no Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Cànan App';

  @override
  String get language_sub =>
      'Beurla, हिन्दी (Hindi), Hinglish & 195+ cànan cruinne';

  @override
  String get home_screen_widgets => 'Widgets sgrion dachaigh';

  @override
  String get widgets_sub =>
      'Widgets Android beò: Hub, Ceumannan, Uisge, Beathachadh & Mascot';

  @override
  String get wear_os_watch_app => 'Caith OS Watch App';

  @override
  String get wear_os_sub =>
      'Companach smartwatch, leacan, duilgheadasan & beòthachaidhean beò';

  @override
  String get goals_wellness => 'CUSPAIREAN & MOLAIDHEAN SEACHD';

  @override
  String get nutrition_targets => 'Targaidean Beathachaidh & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Targaid calorie, pròtain, carbs, amas geir is uisge';

  @override
  String get weekly_recap => 'Geàrr-chunntas sunnd seachdaineach';

  @override
  String get weekly_recap_sub =>
      'Cuibheasachd calorie 7-latha, co-mheas macro & an latha as fheàrr';

  @override
  String get streaks_milestones => 'Streaks & clachan-mìle';

  @override
  String get streaks_sub =>
      'Sruthan blàthan gnìomhach, bràistean & coileanaidhean';

  @override
  String get connected_devices => 'Innealan ceangailte & ECOSYSTEM';

  @override
  String get devices_hub => 'Innealan & Hub Smartwatch';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Aimsir mun cuairt';

  @override
  String get surroundings_sub =>
      'Càileachd adhair (AQI), clàr-amais UV & molaidhean uisgeachaidh sìde';

  @override
  String get bloomi_pro => 'Fo-sgrìobhadh Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Coidse Plana AI, 5 widgets sgrion dachaigh & lorg deatamach';

  @override
  String get about_security => 'ABHAINN & SEARMOINEAN';

  @override
  String get about_bloomi => 'Mu Bloomi';

  @override
  String get about_bloomi_sub => 'Tog mion-chomharrachadh, dreach, buadhan';

  @override
  String get privacy_policy => 'Poileasaidh Dìomhaireachd';

  @override
  String get privacy_policy_sub =>
      'Ailtireachd dàta far-loidhne an-toiseach, air-inneal';

  @override
  String get terms_conditions => 'Teirmean & Cùmhnantan';

  @override
  String get terms_conditions_sub =>
      'Cumhachan seirbheis agus stiùireadh sunnd';

  @override
  String get delete_account => 'Sguab às Cunntas & Dàta';

  @override
  String get delete_account_sub =>
      'Cuir às do dhàta ionadail SQLite agus cùl-taic sgòthan gu do-sheachanta';

  @override
  String get healthy_habits => 'Tog cleachdaidhean sunnd socair, maireannach';

  @override
  String get all_logs => 'An dàta is na logaichean a chaidh a thracadh agam';

  @override
  String get search_language =>
      'Rannsaich a rèir cànan no sgriobt dùthchasach ...';

  @override
  String get languages_available => 'Cànanan rim faighinn';

  @override
  String get no_matching_languages => 'Cha deach cànanan co-ionnan a lorg';

  @override
  String get try_searching =>
      'Feuch ri rannsachadh le sgriobt dùthchasach no litreachadh Beurla';

  @override
  String get partially_translated => 'Eadar-theangachadh gu ìre';

  @override
  String get complete_translation => 'Crìochnaich';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Cànain air a shuidheachadh gu $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Àrainneachd agus mun cuairt';

  @override
  String get surroundings_aqi => 'Clàr-innse Càileachd an Adhair';

  @override
  String get surroundings_uv => 'Clàr-innse UV';

  @override
  String get surroundings_temp => 'Teòthachd';

  @override
  String get surroundings_humidity => 'Taiseachd';

  @override
  String get surroundings_hydration_advice =>
      'Cùm uisgeachadh gu math anns an t-sìde gnàthach.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Lorg Biadh';

  @override
  String get food_quick_barcode => 'Sgan barcode 👑';

  @override
  String get food_quick_water => 'Cuir uisge ris';

  @override
  String get food_quick_custom => 'Biadh Gnàthach';

  @override
  String get surroundings_good => 'Glè mhath';

  @override
  String get surroundings_moderate => 'Meadhanach';

  @override
  String get surroundings_unhealthy => 'Neo-fhallain';

  @override
  String get notifications_title => 'Brathan & rabhaidhean';

  @override
  String get notifications_empty => 'Gun sanasan ùra';

  @override
  String get notifications_mark_read => 'Mark All mar Leugh';

  @override
  String get notifications_clear => 'Glan na h-uile';

  @override
  String get reminders => 'Roghainnean cuimhneachaidh';

  @override
  String get notifications => 'Brathan';

  @override
  String get reminders_breakfast_title => 'Cuimhneachan bracaist 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Madainn mhath! Ùine airson bracaist beathachaidh aig $time .';
  }

  @override
  String get reminders_lunch_title => 'Cuimhneachan lòn 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Stad agus faigh tlachd bho lòn cothromach, mothachail aig $time .';
  }

  @override
  String get reminders_dinner_title => 'Cuimhneachan dinneir 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Ùine airson dìnnear aotrom, sàsachail aig $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tha an t-àm ann glainne ùr uisge òl! ( _PH_0__ )';
  }

  @override
  String get reminders_weight_title => 'Cuideam seachdaineach ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Cum sùil air na tomhasan bodhaig seachdaineil agad air Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Deireadh na leabaidh 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Leig às agus ullaich airson cadal sàmhach ( $time ).';
  }

  @override
  String get onboard_welcome => 'Fàilte gu Bloomi';

  @override
  String get onboard_sub =>
      'Do chompanach slàinte is beathachaidh càirdeil, far-loidhne.';

  @override
  String get onboard_get_started => 'Tòisich';

  @override
  String get onboard_sign_in => 'Log a-steach';

  @override
  String get onboard_skip => 'Leum';

  @override
  String get onboard_choose_goal => 'Dè am prìomh amas slàinte agad?';

  @override
  String get onboard_goal_weight_loss => 'Caill cuideam gu math';

  @override
  String get onboard_goal_muscle => 'Meudachadh fèithean agus neart';

  @override
  String get onboard_goal_energy => 'Lùth is spionnadh làitheil';

  @override
  String get onboard_goal_habits => 'Ag ithe fallain le inntinn';

  @override
  String get onboard_about_you => 'Innis dhuinn mu do dheidhinn fhèin';

  @override
  String get onboard_lifestyle => 'Do ghnàthas làitheil';

  @override
  String get onboard_permissions_title => 'Ceadan & ruigsinneachd siostam';

  @override
  String get onboard_permissions_sub =>
      'Thoir seachad cothrom air ceumannan sioncranachaidh, workouts, agus cuimhneachain.';

  @override
  String get onboard_plan_ready_title => 'Tha am Plana Custom agad deiseil!';

  @override
  String get onboard_plan_ready_sub =>
      'Chruthaich sinn mapa-rathaid beathachaidh is sunnd socair, pearsanaichte dìreach dhutsa.';

  @override
  String get onboard_enter_bloomi => 'Cuir a-steach Bloomi';

  @override
  String get insights_weekly_report => 'Geàrr-chunntas sunnd seachdaineach';

  @override
  String insights_best_day(Object day) {
    return 'An latha cunbhalachd as fheàrr: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & clachan-mìle';

  @override
  String insights_unlocked_on(Object date) {
    return 'Gun fhosgladh air $date';
  }

  @override
  String get insights_keep_going => 'Cùm suas an adhartas iongantach!';

  @override
  String get widgets_title => 'Widgets sgrion dachaigh';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets gnìomhach: $count';
  }

  @override
  String get widgets_hub_title => 'Ionad Slàinte Bloomi';

  @override
  String get widgets_steps_title => 'Ceumannan & Cearcall Gnìomhach';

  @override
  String get widgets_water_title => 'Clàr luath Hydration';

  @override
  String get widgets_mascot_title => 'Companach Bloomi Mascot';

  @override
  String get wear_os_title => 'Caith OS Smartwatch';

  @override
  String get wear_os_connected => 'Ceangailte ri Watch';

  @override
  String get wear_os_sync => 'Sioncronaich dàta faire';

  @override
  String get theme_title => 'Coltas & Cuspair';

  @override
  String get theme_mode => 'Modh cuspair';

  @override
  String get theme_light => 'Solas';

  @override
  String get theme_dark => 'Dorch';

  @override
  String get theme_system => 'Default siostam';

  @override
  String get theme_background_palette => 'Cùl-fhiosrachadh Palette';

  @override
  String get units_title => 'Aonadan Tomhais';

  @override
  String get units_metric => 'Meud (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, a-steach, fl oz)';

  @override
  String get home_unable_load => 'Cha ghabh an deas-bhòrd a luchdachadh';

  @override
  String get home_health_permission_req => 'Cead Ceangal Slàinte a dhìth';

  @override
  String get home_health_permission_desc =>
      'Feumaidh Bloomi cead Health Connect gus fìor cheumannan a tharraing, ìre cridhe, agus sioncranachadh widgets dachaigh gluasadach ann an àm fìor.';

  @override
  String get home_allow_health => 'Leig le Health Connect';

  @override
  String get home_ready_mindful_day => 'Deiseil airson latha cuimhneachail? ✨';

  @override
  String get home_quick_add => 'Cuir ris gu sgiobalta';

  @override
  String get home_live_gps => 'GPS beò';

  @override
  String get home_calories_remaining_label => 'CALORIES A\' MACHAIDH';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Air ithe: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap airson Lorgaire Uisge 💧';

  @override
  String get home_water_goal_reached => 'Amas làitheil air a ruighinn 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '_PH_0__ ml gu amas làitheil';
  }

  @override
  String get home_details => 'Mion-fhiosrachadh';

  @override
  String get home_upgrade_plan_desc =>
      'Ùrachadh gus targaidean làitheil pearsanta & plana AI fhuasgladh';

  @override
  String get home_unlock => 'Fuasgail 👑';

  @override
  String get home_quick_log_hint => 'Clàraich gu sgiobalta inntrigeadh slàinte';

  @override
  String get food_serving_size => 'Meud frithealaidh';

  @override
  String get food_serving_grams => 'A\' frithealadh (g)';

  @override
  String get food_number_servings => 'Àireamh de Sheirbheisean';

  @override
  String get food_calories_per_serving => 'Calorie gach seirbheis';

  @override
  String get food_recipe_ingredients => 'Tàthchuid';

  @override
  String get food_recipe_add_ingredient => 'Cuir ris an stuth';

  @override
  String get food_recipe_directions => 'Stiùireadh & Notaichean';

  @override
  String get food_recipe_total => 'Beathachadh Recipe Iomlan';

  @override
  String get food_recipe_per_serving => 'Le bhith a \'frithealadh beathachadh';

  @override
  String get food_recipe_saved_toast =>
      'Biadh gnàthaichte air a shàbhaladh gu soirbheachail!';

  @override
  String get food_barcode_found => 'Bathar air a lorg!';

  @override
  String get food_barcode_not_found_desc =>
      'Cha b\' urrainn dhuinn an còd-barra seo a lorg san stòr-dàta fosgailte. Faodaidh tu a chur ris mar bhiadh àbhaisteach.';

  @override
  String get food_add_custom_btn => 'Cuir ris Biadh Custom';

  @override
  String get food_scan_again => 'Dèan scan a-rithist';

  @override
  String get food_review_items => 'Dèan lèirmheas air Biadhan Lorgte';

  @override
  String get food_review_hint =>
      'Atharraich meudan no thoir air falbh rud neo-aithnichte';

  @override
  String get food_log_selected => 'Log a-steach Biadhan Taghte';

  @override
  String get food_favourites_title => 'Biadh as fheàrr leotha';

  @override
  String get food_recent_title => 'Biadh o chionn ghoirid';

  @override
  String get food_no_favourites =>
      'Chan eil biadhan as fheàrr leotha fhathast. Tap cridhe air biadh sam bith airson a shàbhaladh an seo.';

  @override
  String get food_no_recents =>
      'Cha deach biadhan a chaidh a chlàradh o chionn ghoirid a lorg.';

  @override
  String get food_nutrition_details_title =>
      'Fiosrachadh beathachaidh làitheil';

  @override
  String get food_macro_protein_label => 'Briseadh sìos pròtain';

  @override
  String get food_macro_carbs_label => 'Briseadh sìos carbs';

  @override
  String get food_macro_fat_label => 'Briseadh Saill';

  @override
  String get food_macro_fiber_label => 'Briseadh Fibre';

  @override
  String get food_daily_target_comparison => 'Coimeas targaid';

  @override
  String food_target_label(Object target) {
    return 'Targaid: _PH_0__';
  }

  @override
  String get food_edit_entry => 'Deasaich Inntrigeadh Leabhar-latha';

  @override
  String get food_delete_entry => 'Sguab às Inntrigeadh';

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
    return '_PH_0__ à $target ml';
  }

  @override
  String get water_intake_history => 'Clàran uisge an latha an-diugh';

  @override
  String get water_no_logs_today =>
      'Chan eil uisge air a chlàradh fhathast an-diugh. Hydrate agus tap air putan cuir-ris sgiobalta!';

  @override
  String get water_adjust_goal => 'Atharraich Amas Làitheil';

  @override
  String get health_connect_banner => 'Co-cheangailte ri Health Connect';

  @override
  String get health_vitals_summary => 'Beatha làitheil slàinte';

  @override
  String get health_latest_heart_rate => 'Ìre cridhe as ùire';

  @override
  String get health_latest_bp => 'Bruthadh-fala';

  @override
  String get health_latest_spo2 => 'Ocsaidean fuil';

  @override
  String get health_latest_glucose => 'Glùcas fuil';

  @override
  String get health_latest_weight => 'Cuideam';

  @override
  String get health_latest_sleep => 'Ùine cadail';

  @override
  String get health_add_manual => 'Cuir a-steach tomhas làimhe';

  @override
  String get health_history_trends => 'Claonaidhean Eachdraidheil';

  @override
  String get health_sync_success =>
      'Chaidh dàta slàinte a shioncronachadh gu soirbheachail!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '_PH_0__ uair $mins mion';
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
      'Innealan co-cheangailte & so-ruigsinneach';

  @override
  String get health_devices_desc =>
      'Stiùirich smartwatches càraideach, lorgairean fallaineachd, agus mothachairean slàinte.';

  @override
  String get health_workout_editor_title => 'Deasaich Workout';

  @override
  String get health_workout_name_label => 'Ainm eacarsaich';

  @override
  String get health_workout_duration_label => 'Ùine (mionaidean)';

  @override
  String get health_workout_calories_label => 'Calraidhean tuairmseach (kcal)';

  @override
  String get health_workout_date_label => 'Ceann-latha agus Àm';

  @override
  String get plan_daily_wellness_roadmap =>
      'An clàr-rathaid pearsanaichte agad';

  @override
  String get plan_morning_routine => 'Gnàth-shìde na maidne';

  @override
  String get plan_afternoon_routine => 'Slàinte Mheadhain';

  @override
  String get plan_evening_routine => 'Gaoth-Sios Feasgar';

  @override
  String get plan_coach_badge => 'Coidse Bloomi AI';

  @override
  String get plan_weekly_overview => 'Fòcas air sunnd 7-latha';

  @override
  String get plan_targets_title => 'Amasan & Amasan Slàinte';

  @override
  String get plan_calorie_budget_label => 'Buidseat Calorie Làitheil';

  @override
  String get plan_water_budget_label => 'Targaid uisge làitheil';

  @override
  String get plan_step_budget_label => 'Amas Ceum Làitheil';

  @override
  String get plan_macro_split_label => 'Co-mheas Macronutrient';

  @override
  String get profile_personal_details => 'Mion-fhiosrachadh Pearsanta';

  @override
  String get profile_body_stats => 'Tomhais Corp';

  @override
  String get profile_app_preferences => 'Roghainnean & roghainnean app';

  @override
  String get profile_edit_name_hint => 'D’ ainm';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Àirde ( _PH_0__ )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Cuideam ( _PH_0__ )';
  }

  @override
  String get profile_edit_age_hint => 'Aois';

  @override
  String get profile_gender_male => 'Fireann';

  @override
  String get profile_gender_female => 'Boireann';

  @override
  String get profile_gender_other => 'Eile / B’ fheàrr leam gun a ràdh';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Glè bheag gun eacarsaich)';

  @override
  String get profile_activity_light =>
      'Gnìomhach aotrom (1-3 latha / seachdain)';

  @override
  String get profile_activity_moderate =>
      'Meadhanach gnìomhach (3-5 latha / seachdain)';

  @override
  String get profile_activity_very =>
      'Gu math gnìomhach (6-7 latha / seachdain)';

  @override
  String get settings_wear_os_header => 'Cleachd OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Stàlaich an leac Bloomi agus iom-fhillteachd air an uaireadair Wear OS agad gus sùil a thoirt air calaraidhean, uisge, agus ceumannan.';

  @override
  String get settings_widgets_header => 'Widgets Android eadar-ghnìomhach';

  @override
  String get settings_widgets_desc =>
      'Pin widgets fìor-ùine air scrion dachaigh an inneal agad airson ùrachaidhean sa bhad.';

  @override
  String get settings_about_header => 'Mu Bloomi';

  @override
  String get settings_about_version => 'Tionndadh 1.0.0';

  @override
  String get settings_about_build => 'Tog 100';

  @override
  String get settings_about_credits =>
      'Air a chiùradh le cùram airson beatha mhothachail, fhallain.';

  @override
  String get settings_terms_header => 'Cumhachan is Cùmhnantan';

  @override
  String get settings_privacy_header => 'Poileasaidh Dìomhaireachd';

  @override
  String get settings_delete_header => 'Sguab às Cunntas & Dàta';

  @override
  String get settings_delete_warning =>
      'Chan urrainnear an gnìomh seo a chuir dheth. Thèid na biadhan, na h-àiteachan-obrach, na h-innealan deatamach agus na pròifil agad a dhubhadh às gu buan.';

  @override
  String get settings_delete_confirm_btn => 'Sguab às gu buan';

  @override
  String get onboard_welcome_headline => 'Fàilte gu Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Rianachd sunnd socair, mothachail air a dhealbhadh timcheall air do bheatha.';

  @override
  String get onboard_step_about => 'Mu do dheidhinn';

  @override
  String get onboard_step_goals => 'Na h-Amasan agad';

  @override
  String get onboard_step_lifestyle => 'Cleachdaidhean Làitheil';

  @override
  String get onboard_step_permissions => 'Ceadan';

  @override
  String get onboard_step_plan => 'Deiseil!';

  @override
  String get onboard_health_connect_perm => 'Cothrom Ceangal Slàinte';

  @override
  String get onboard_step_sensors_perm => 'Sensor Counter Step';

  @override
  String get onboard_notif_perm => 'Cuimhneachain & Fiosan mothachail';

  @override
  String get onboard_camera_perm => 'Camara (Barcode & Scanner Bidhe)';

  @override
  String get onboard_grant_permissions => 'Ceadan Tabhartais';

  @override
  String get onboard_continue_dashboard => 'Deas-bhòrd fosgailte';

  @override
  String get notif_channel_hydration_name => 'Nudges Hydration';

  @override
  String get notif_channel_hydration_desc =>
      'Cuimhneachain uisge socair fad an latha';

  @override
  String get notif_channel_nutrition_name =>
      'Cuimhneachain Biadh is Beathachaidh';

  @override
  String get notif_channel_nutrition_desc =>
      'Rabhaidhean cuimhneachaidh bracaist, lòn is dìnnear';

  @override
  String get notif_channel_steps_name => 'Ceum Clach-mhìle';

  @override
  String get notif_channel_steps_desc =>
      'Comharraidhean nuair a ruigeas tu targaidean ceum làitheil';

  @override
  String get notif_channel_vitals_name =>
      'Sgrùdaidhean Slàinte is Beathaichean';

  @override
  String get notif_channel_vitals_desc =>
      'Cuimhneachain lùbach cuideam is àm leabaidh';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Log biadh';

  @override
  String get language => 'Cànain';

  @override
  String get share => 'Roinn';

  @override
  String common_days(Object count) {
    return '_PH_0__ d air ais';
  }
}
