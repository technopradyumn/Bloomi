// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kinyarwanda (`rw`).
class AppLocalizationsRw extends AppLocalizations {
  AppLocalizationsRw([String locale = 'rw']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Murugo';

  @override
  String get nav_today => 'Uyu munsi';

  @override
  String get nav_plan => 'Tegura';

  @override
  String get nav_food => 'Ibiryo';

  @override
  String get nav_food_diary => 'Ifunguro ryibiryo';

  @override
  String get nav_workout => 'Imyitozo ngororamubiri';

  @override
  String get nav_health => 'Ubuzima';

  @override
  String get nav_profile => 'Umwirondoro';

  @override
  String get save => 'Bika';

  @override
  String get cancel => 'Kureka';

  @override
  String get delete => 'Siba';

  @override
  String get edit => 'Hindura';

  @override
  String get done => 'Byakozwe';

  @override
  String get close => 'Funga';

  @override
  String get back => 'Inyuma';

  @override
  String get next => 'Ibikurikira';

  @override
  String get continue_btn => 'Komeza';

  @override
  String get confirm => 'Emeza';

  @override
  String get search => 'Shakisha';

  @override
  String get filter => 'Muyunguruzi';

  @override
  String get all => 'Byose';

  @override
  String get active => 'Bikora';

  @override
  String get today => 'Uyu munsi';

  @override
  String get yesterday => 'Ejo';

  @override
  String get tomorrow => 'Ejo';

  @override
  String get add => 'Ongeraho';

  @override
  String get remove => 'Kuraho';

  @override
  String get refresh => 'Ongera';

  @override
  String get retry => 'Ongera ugerageze';

  @override
  String get error => 'Ikosa';

  @override
  String get success => 'Intsinzi';

  @override
  String get loading => 'Kuremera ...';

  @override
  String get no_data => 'Nta makuru ahari';

  @override
  String get offline => 'Uburyo bwa Offline';

  @override
  String get offline_sub => 'Impinduka zizahuza igihe zongeye guhuzwa';

  @override
  String get undo => 'Kuraho';

  @override
  String get portion => 'Igice';

  @override
  String get quantity => 'Umubare';

  @override
  String get unit => 'Igice';

  @override
  String get clear => 'Biragaragara';

  @override
  String get select => 'Hitamo';

  @override
  String get apply => 'Koresha';

  @override
  String get reset => 'Gusubiramo';

  @override
  String get ok => 'Nibyo';

  @override
  String get yes => 'Yego';

  @override
  String get no => 'Oya';

  @override
  String get optional => 'Bihitamo';

  @override
  String get calories => 'Calori';

  @override
  String get protein => 'Poroteyine';

  @override
  String get carbs => 'Carb';

  @override
  String get fat => 'Ibinure';

  @override
  String get fiber => 'Fibre';

  @override
  String get water => 'Amazi';

  @override
  String get steps => 'Intambwe';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'lb.';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'amasaha';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Gukorera';

  @override
  String get servings => 'Serivisi';

  @override
  String get serving_size => 'Ingano';

  @override
  String get per_100g => 'kuri 100g';

  @override
  String get india => 'Ubuhinde';

  @override
  String get asia => 'Aziya';

  @override
  String get europe => 'Uburayi';

  @override
  String get middle_east => 'Uburasirazuba bwo hagati';

  @override
  String get africa => 'Afurika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Murugo';

  @override
  String get home_greeting_morning => 'Mwaramutse';

  @override
  String get home_greeting_afternoon => 'Mwaramutse neza';

  @override
  String get home_greeting_evening => 'Umugoroba mwiza';

  @override
  String get home_streak_title => 'Indabyo';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count iminsi ikurikiranye',
      one: 'Umunsi umwe',
      zero: 'Iminsi 0 ikurikiranye',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Yatwitse';

  @override
  String get home_calories_budget => 'Ingengo yimari ya Calorie';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal hasigaye';
  }

  @override
  String get home_water_title => 'Amazi ya buri munsi';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Intambwe Yagenze';

  @override
  String get home_quick_actions => 'Ibikorwa Byihuse';

  @override
  String get home_log_meal => 'Ifunguro Ryinjira';

  @override
  String get home_log_water => 'Injira Amazi';

  @override
  String get home_log_workout => 'Injira Imyitozo';

  @override
  String get home_log_weight => 'Ibiro biremereye';

  @override
  String get home_insights_title => 'Ubushishozi bw\'uyu munsi';

  @override
  String get home_quote => 'Amahitamo mato meza atera impinduka.';

  @override
  String get home_ai_coach_tip => 'Umutoza wa Bloomi AI';

  @override
  String get home_surroundings => 'Ibidukikije';

  @override
  String get home_notifications => 'Kumenyesha';

  @override
  String get home_daily_score => 'Amanota meza ya buri munsi';

  @override
  String get home_view_all => 'Reba Byose';

  @override
  String get food_diary_title => 'Ifunguro ryibiryo';

  @override
  String get food_breakfast => 'Ifunguro rya mu gitondo';

  @override
  String get food_lunch => 'Ifunguro rya sasita';

  @override
  String get food_dinner => 'Ifunguro rya nimugoroba';

  @override
  String get food_snacks => 'Udukoryo';

  @override
  String get food_add_food => 'Ongeraho ibiryo';

  @override
  String get food_edit_food => 'Hindura ibiryo';

  @override
  String get food_add_breakfast => 'Ongeraho Ifunguro rya mu gitondo';

  @override
  String get food_add_lunch => 'Ongeraho Ifunguro rya sasita';

  @override
  String get food_add_dinner => 'Ongeraho Ifunguro rya nimugoroba';

  @override
  String get food_add_snack => 'Ongeraho ibiryo';

  @override
  String get food_total_calories => 'Kalori Yuzuye';

  @override
  String get food_empty_meal => 'Nta biryo byinjiye muri iri funguro';

  @override
  String get food_empty_diary => 'Nta mafunguro yinjiye kuri uyumunsi';

  @override
  String get food_log_first_meal =>
      'Kanda + kugirango wandike ibiryo byawe byambere biryoshye';

  @override
  String get food_quick_add => 'Ongeraho vuba';

  @override
  String get food_search_hint => 'Shakisha ibyokurya, imbuto, dal, roti ...';

  @override
  String get food_custom_recipe => 'Kurya ibiryo & resept';

  @override
  String get food_scan_barcode => 'Suzuma Barcode';

  @override
  String get food_camera_scan => 'Ikizamini cya AI';

  @override
  String get food_recent => 'Ibiryo bya vuba';

  @override
  String get food_favourites => 'Bikunzwe';

  @override
  String get food_macro_summary => 'Kumeneka kwa Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Uzi neza ko ushaka gukuraho iki kintu?';

  @override
  String get food_item_deleted => 'Ibiribwa byavanyweho';

  @override
  String get food_remaining => 'asigaye';

  @override
  String get food_consumed => 'kumara';

  @override
  String food_of_target(Object target) {
    return 'ya $target kcal';
  }

  @override
  String get foodSearch_title => 'Shakisha ibiryo';

  @override
  String get foodSearch_scan_barcode => 'Suzuma Barcode';

  @override
  String get foodSearch_take_photo => 'Ifoto Yibiryo Ifoto';

  @override
  String get foodSearch_custom_food => 'Kora ibiryo byihariye';

  @override
  String get foodSearch_recent_searches => 'Ubushakashatsi bwa vuba';

  @override
  String get foodSearch_popular => 'Ibyokurya bikunzwe';

  @override
  String get foodSearch_no_results => 'Nta biryo bihuye nubushakashatsi bwawe';

  @override
  String get barcode_title => 'Scaneri ya Barcode';

  @override
  String get barcode_align => 'Huza barcode imbere ya kamera';

  @override
  String get barcode_not_found => 'Ibicuruzwa bitabonetse muri base de base';

  @override
  String get barcode_premium_feature =>
      'Gusikana barcode irahari hamwe na Bloomi Pro';

  @override
  String get camera_title => 'Ikizamini cya AI';

  @override
  String get camera_tap_hint => 'Fata ifoto isobanutse y\'ibiryo byawe';

  @override
  String get camera_analysing => 'Gusesengura isahani y\'ibiryo ...';

  @override
  String get camera_detected => 'Ibintu byagaragaye';

  @override
  String get camera_flash => 'Fungura Flash';

  @override
  String get camera_retake => 'Ongera ufate ifoto';

  @override
  String get camera_confirm_food => 'Emeza Ibintu';

  @override
  String get customFood_title => 'Kurya ibiryo & resept';

  @override
  String get customFood_name_hint => 'Izina ryiza cyangwa ibiyigize';

  @override
  String get customFood_calories_hint => 'Calori (kcal)';

  @override
  String get customFood_protein_hint => 'Poroteyine (g)';

  @override
  String get customFood_carbs_hint => 'Carb (g)';

  @override
  String get customFood_fat_hint => 'Ibinure (g)';

  @override
  String get customFood_save => 'Bika resept';

  @override
  String get water_tracker_title => 'Inzira y\'amazi';

  @override
  String get water_daily_target => 'Intego ya Hydration ya buri munsi';

  @override
  String get water_logged_today => 'Yinjiye Uyu munsi';

  @override
  String get water_add_glass => '+250 ml Ikirahure';

  @override
  String get water_add_bottle => 'Icupa rya ml 500';

  @override
  String get water_custom_amount => 'Amafaranga yihariye';

  @override
  String get water_reminder_tip =>
      'Kunywa amazi buri munsi umunsi wose kugirango imbaraga zihamye.';

  @override
  String water_logged_toast(Object amount) {
    return 'Injira $amount ml y\'amazi 💧';
  }

  @override
  String get workout_title => 'Imyitozo ngororamubiri';

  @override
  String get workout_add_exercise => 'Ongeraho imyitozo';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Imbaraga';

  @override
  String get workout_yoga => 'Yoga & Guhinduka';

  @override
  String get workout_duration => 'Ikiringo';

  @override
  String get workout_intensity => 'Ubukomezi';

  @override
  String get workout_calories_burned => 'Calori Yatwitse';

  @override
  String get workout_empty => 'Nta myitozo yinjiye uyu munsi';

  @override
  String get workout_save_success => 'Imyitozo yakijijwe neza!';

  @override
  String get workout_type => 'Ubwoko bw\'imyitozo';

  @override
  String get workout_notes => 'Inyandiko & Ibitekerezo';

  @override
  String get health_overview_title => 'Ubuzima & Ibyingenzi';

  @override
  String get health_heart_rate => 'Igipimo cy\'umutima';

  @override
  String get health_blood_oxygen => 'Oxygene Yamaraso (SpO2)';

  @override
  String get health_blood_pressure => 'Umuvuduko w\'amaraso';

  @override
  String get health_blood_glucose => 'Glucose';

  @override
  String get health_body_temperature => 'Ubushyuhe bw\'umubiri';

  @override
  String get health_sleep_tracking => 'Gukurikirana ibitotsi';

  @override
  String get health_weight_tracking => 'Ibiro & Umubiri';

  @override
  String get health_waist_hip => 'Ikigereranyo-Kuri-Ikibuno';

  @override
  String get health_devices_hub => 'Ibikoresho & Smartwatch Hub';

  @override
  String get health_sync_now => 'Guhuza amakuru yubuzima';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Iheruka guhuza: $time';
  }

  @override
  String get health_manual_entry => 'Intoki Ubuzima';

  @override
  String get health_metric_detail => 'Ibisobanuro birambuye';

  @override
  String get health_connected_sensors => 'Guhuza Ubuzima';

  @override
  String get plan_title => 'Gahunda ya buri munsi';

  @override
  String get plan_weekly_title => 'Gahunda ya Wellness ya buri cyumweru';

  @override
  String get plan_calorie_target => 'Intego ya Calorie';

  @override
  String get plan_water_target => 'Intego ya Hydration';

  @override
  String get plan_step_target => 'Intego Intambwe';

  @override
  String get plan_sleep_target => 'Intego yo gusinzira';

  @override
  String get plan_meal_suggestions => 'Ibyifuzo';

  @override
  String get plan_healthy_habits => 'Ingeso Nziza & Inama';

  @override
  String get plan_coach_advice => 'Ibyifuzo byumutoza wa Bloomi AI';

  @override
  String get plan_generated_title => 'Gahunda ya buri munsi';

  @override
  String get profile_title => 'Umwirondoro';

  @override
  String get profile_edit => 'Hindura Umwirondoro';

  @override
  String get profile_name => 'Izina';

  @override
  String get profile_age => 'Imyaka';

  @override
  String get profile_gender => 'Uburinganire';

  @override
  String get profile_height => 'Uburebure';

  @override
  String get profile_weight => 'Ibiro';

  @override
  String get profile_goal => 'Intego y\'ibanze';

  @override
  String get profile_activity_level => 'Urwego rwibikorwa';

  @override
  String get profile_stats => 'Imibare Yanjye';

  @override
  String get profile_saved => 'Umwirondoro wavuguruwe neza';

  @override
  String get profile_bmi => 'Umubare Wibipimo Byumubiri (BMI)';

  @override
  String get profile_membership => 'Kuba umunyamuryango';

  @override
  String get settings => 'Igenamiterere';

  @override
  String get preferences_habits => 'INGINGO & INYITO';

  @override
  String get appearance_theme => 'Kugaragara & Insanganyamatsiko';

  @override
  String get appearance_theme_sub =>
      'Umwijima, Umucyo, Sisitemu Mode & Porogaramu Amahitamo Amahitamo';

  @override
  String get permissions => 'Uruhushya & Sisitemu';

  @override
  String get permissions_sub =>
      'Guhuza Ubuzima, Intambwe Zumva, GPS, Kumenyesha & Kamera';

  @override
  String get reminders_notifications => 'Kwibutsa & Kumenyesha';

  @override
  String get reminders_sub =>
      'Igihe cyo kurya, amazi, kugenzura ibiro & kwibutsa igihe cyo kuryama';

  @override
  String get units_of_measurement => 'Ibice byo gupima';

  @override
  String get units_sub =>
      'Ibipimo (kg, cm, ml, km) cyangwa Imperial (lb, ft / in, fl oz)';

  @override
  String get app_language => 'Ururimi';

  @override
  String get language_sub =>
      'Icyongereza, हिन्दी (Hindi), Hinglish & 195+ indimi zisi';

  @override
  String get home_screen_widgets => 'Murugo Widgets';

  @override
  String get widgets_sub =>
      'Live widgets ya Android: Hub, Intambwe, Amazi, Imirire & Mascot';

  @override
  String get wear_os_watch_app => 'Kwambara OS Reba';

  @override
  String get wear_os_sub =>
      'Mugenzi wa Smartwatch, amabati, ingorane & ubuzima bwiza';

  @override
  String get goals_wellness => 'INTEGO & UBUSHAKASHATSI';

  @override
  String get nutrition_targets => 'Intego Zimirire & Macro Gutandukanya';

  @override
  String get nutrition_targets_sub =>
      'Intego ya Calorie, proteyine, karbasi, ibinure & intego y\'amazi';

  @override
  String get weekly_recap => 'Icyumweru Cyiza Gusubiramo';

  @override
  String get weekly_recap_sub =>
      'Ikigereranyo cyiminsi 7 ya calorie, igipimo cya macro & umunsi mwiza';

  @override
  String get streaks_milestones => 'Inzira & Intambwe';

  @override
  String get streaks_sub => 'Indabyo zikora neza, badge & ibyagezweho';

  @override
  String get connected_devices => 'DEVICES ZIFATANYIJE & ECOSYSTEM';

  @override
  String get devices_hub => 'Ibikoresho & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Guhuza Ubuzima, Galaxy Watch, Pixel Reba, Garmin';

  @override
  String get surroundings_weather => 'Ibidukikije';

  @override
  String get surroundings_sub =>
      'Ubwiza bwikirere (AQI), UV indangagaciro & inama zo kuyobora ikirere';

  @override
  String get bloomi_pro => 'Kwiyandikisha kwa Bloomi';

  @override
  String get bloomi_pro_sub =>
      'Umutoza wa AI Gahunda, widgets 5 yo murugo & vitals ikurikirana';

  @override
  String get about_security => 'KUBYEREKEYE & UMUTEKANO';

  @override
  String get about_bloomi => 'Ibyerekeye Bloomi';

  @override
  String get about_bloomi_sub => 'Kubaka ibisobanuro, verisiyo, inshingano';

  @override
  String get privacy_policy => 'Politiki Yibanga';

  @override
  String get privacy_policy_sub => 'Offline-yambere, ku bikoresho byububiko';

  @override
  String get terms_conditions => 'Amabwiriza';

  @override
  String get terms_conditions_sub => 'Amabwiriza ya serivisi nubuyobozi bwiza';

  @override
  String get delete_account => 'Siba Konti & Amakuru';

  @override
  String get delete_account_sub =>
      'Kudasubirwaho gusiba amakuru ya SQLite yibanze hamwe no kubika ibicu';

  @override
  String get healthy_habits => 'Wubake ingeso nziza, zirambye';

  @override
  String get all_logs => 'Ikurikiranwa ryamakuru & Logs';

  @override
  String get search_language =>
      'Shakisha ku rurimi cyangwa inyandiko kavukire ...';

  @override
  String get languages_available => 'Indimi Ziraboneka';

  @override
  String get no_matching_languages => 'Nta ndimi zihuye zabonetse';

  @override
  String get try_searching =>
      'Gerageza ushakishe inyandiko kavukire cyangwa imyandikire yicyongereza';

  @override
  String get partially_translated => 'Byahinduwe';

  @override
  String get complete_translation => 'Byuzuye';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ururimi rwashyizwe kuri $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'Ibidukikije & Ibidukikije';

  @override
  String get surroundings_aqi => 'Ironderero ry’ikirere';

  @override
  String get surroundings_uv => 'Indangantego ya UV';

  @override
  String get surroundings_temp => 'Ubushyuhe';

  @override
  String get surroundings_humidity => 'Ubushuhe';

  @override
  String get surroundings_hydration_advice => 'Gumana amazi meza mubihe byubu.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Shakisha ibiryo';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Ongeramo Amazi';

  @override
  String get food_quick_custom => 'Ibiryo byihariye';

  @override
  String get surroundings_good => 'Nibyiza';

  @override
  String get surroundings_moderate => 'Guciriritse';

  @override
  String get surroundings_unhealthy => 'Ntabwo ari byiza';

  @override
  String get notifications_title => 'Kumenyesha & Imenyesha';

  @override
  String get notifications_empty => 'Nta matangazo mashya';

  @override
  String get notifications_mark_read => 'Shyira Byose Gusoma';

  @override
  String get notifications_clear => 'Kuraho Byose';

  @override
  String get reminders => 'Igenamiterere';

  @override
  String get notifications => 'Kumenyesha';

  @override
  String get reminders_breakfast_title => 'Kwibutsa Ifunguro rya mu gitondo 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Mwaramutse! Igihe cyo gufata ifunguro rya mugitondo kuri $time.';
  }

  @override
  String get reminders_lunch_title => 'Kwibutsa saa sita 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Kuruhuka no kwishimira ifunguro rya sasita, utekereza kuri $time.';
  }

  @override
  String get reminders_dinner_title => 'Kwibutsa Ifunguro rya nimugoroba 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Igihe cyo gufungura, guhaza ifunguro kuri $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Igihe cyo kunywa ikirahuri gishya cyamazi! ($time)';
  }

  @override
  String get reminders_weight_title => 'Icyumweru gipima in';

  @override
  String reminders_weight_body(Object time) {
    return 'Kurikirana ibipimo byumubiri byicyumweru kuri Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Igihe cyo kuryama Umuyaga-hasi 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Kuramo kandi witegure gusinzira neza ($time).';
  }

  @override
  String get onboard_welcome => 'Murakaza neza kuri Bloomi';

  @override
  String get onboard_sub =>
      'Mugenzi wawe, kumurongo-wambere ubuzima bwiza nimirire.';

  @override
  String get onboard_get_started => 'Tangira';

  @override
  String get onboard_sign_in => 'Injira';

  @override
  String get onboard_skip => 'Simbuka';

  @override
  String get onboard_choose_goal =>
      'Niyihe ntego yawe yambere yo kumererwa neza?';

  @override
  String get onboard_goal_weight_loss => 'Gutakaza ibiro byoroheje';

  @override
  String get onboard_goal_muscle => 'Kunguka imitsi & Imbaraga';

  @override
  String get onboard_goal_energy => 'Ingufu za buri munsi & Vitality';

  @override
  String get onboard_goal_habits => 'Kurya neza';

  @override
  String get onboard_about_you => 'Tubwire ibyawe';

  @override
  String get onboard_lifestyle => 'Gahunda yawe ya buri munsi';

  @override
  String get onboard_permissions_title => 'Uruhushya & Sisitemu';

  @override
  String get onboard_permissions_sub =>
      'Tanga uburyo bwo guhuza intambwe, imyitozo, nibutsa.';

  @override
  String get onboard_plan_ready_title => 'Gahunda yawe Yiteguye!';

  @override
  String get onboard_plan_ready_sub =>
      'Twateguye imirire yoroheje, yihariye nimirire myiza kubwawe gusa.';

  @override
  String get onboard_enter_bloomi => 'Injira Bloomi';

  @override
  String get insights_weekly_report => 'Icyumweru Cyiza Gusubiramo';

  @override
  String insights_best_day(Object day) {
    return 'Umunsi mwiza wo guhuzagurika: $day';
  }

  @override
  String get insights_streaks_badges => 'Inzira & Intambwe';

  @override
  String insights_unlocked_on(Object date) {
    return 'Gufungura kuri $date';
  }

  @override
  String get insights_keep_going => 'Komeza iterambere ryiza!';

  @override
  String get widgets_title => 'Murugo Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets ikora: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Intambwe & Impeta ifatika';

  @override
  String get widgets_water_title => 'Amazi Yihuta';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Mugenzi';

  @override
  String get wear_os_title => 'Wambare Smartwatch ya OS';

  @override
  String get wear_os_connected => 'Kwihuza Kureba';

  @override
  String get wear_os_sync => 'Guhuza Reba amakuru';

  @override
  String get theme_title => 'Kugaragara & Insanganyamatsiko';

  @override
  String get theme_mode => 'Uburyo bw\'insanganyamatsiko';

  @override
  String get theme_light => 'Umucyo';

  @override
  String get theme_dark => 'Umwijima';

  @override
  String get theme_system => 'Sisitemu Mburabuzi';

  @override
  String get theme_background_palette => 'Amavu n\'amavuko';

  @override
  String get units_title => 'Ibice byo gupima';

  @override
  String get units_metric => 'Ibipimo (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lb, muri, fl oz)';

  @override
  String get home_unable_load => 'Ntushobora kwipakurura';

  @override
  String get home_health_permission_req =>
      'Uruhushya rwo guhuza ubuzima rurasabwa';

  @override
  String get home_health_permission_desc =>
      'Bloomi isaba uruhushya rwo guhuza ubuzima gukuramo intambwe nyayo, umuvuduko wumutima, hamwe no guhuza widgets zo murugo mugihe gikwiye.';

  @override
  String get home_allow_health => 'Emerera ubuzima';

  @override
  String get home_ready_mindful_day => 'Witeguye umunsi utekereza? ✨';

  @override
  String get home_quick_add => 'Ongeraho vuba';

  @override
  String get home_live_gps => 'GPS nzima';

  @override
  String get home_calories_remaining_label => 'CALORIES ZASIGAYE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kurya: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Kanda kumashanyarazi Water';

  @override
  String get home_water_goal_reached => 'Intego ya buri munsi yageze 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml kugeza kumugambi wa buri munsi';
  }

  @override
  String get home_details => 'Ibisobanuro';

  @override
  String get home_upgrade_plan_desc =>
      'Kuzamura kugirango ufungure intego za buri munsi & gahunda ya AI';

  @override
  String get home_unlock => 'Fungura 👑';

  @override
  String get home_quick_log_hint => 'Andika vuba ibyinjira neza';

  @override
  String get food_serving_size => 'Ingano';

  @override
  String get food_serving_grams => 'Gukorera (g)';

  @override
  String get food_number_servings => 'Umubare wa serivisi';

  @override
  String get food_calories_per_serving => 'Kalori kuri buri serivisi';

  @override
  String get food_recipe_ingredients => 'Ibikoresho';

  @override
  String get food_recipe_add_ingredient => 'Ongeramo Ibigize';

  @override
  String get food_recipe_directions => 'Amabwiriza & Inyandiko';

  @override
  String get food_recipe_total => 'Ibiryo byuzuye';

  @override
  String get food_recipe_per_serving => 'Kuri Gutanga Imirire';

  @override
  String get food_recipe_saved_toast => 'Ibiryo byigenga wabitswe neza!';

  @override
  String get food_barcode_found => 'Ibicuruzwa byabonetse!';

  @override
  String get food_barcode_not_found_desc =>
      'Ntabwo twashoboye kubona iyi barcode mububiko bwuzuye. Urashobora kongeramo nkibiryo byabigenewe.';

  @override
  String get food_add_custom_btn => 'Ongeraho ibiryo byihariye';

  @override
  String get food_scan_again => 'Ongera usuzume';

  @override
  String get food_review_items => 'Ongera usuzume ibiryo byagaragaye';

  @override
  String get food_review_hint =>
      'Hindura ingano cyangwa ukureho ikintu cyose kitamenyekanye';

  @override
  String get food_log_selected => 'Andika ibiryo byatoranijwe';

  @override
  String get food_favourites_title => 'Ibiryo ukunda';

  @override
  String get food_recent_title => 'Ibiryo bya vuba';

  @override
  String get food_no_favourites =>
      'Nta biryo ukunda kugeza ubu. Kanda umutima ku biryo byose kugirango ubike hano.';

  @override
  String get food_no_recents => 'Nta biryo byinjira vuba aha byabonetse.';

  @override
  String get food_nutrition_details_title => 'Imirire ya buri munsi';

  @override
  String get food_macro_protein_label => 'Kumeneka kwa poroteyine';

  @override
  String get food_macro_carbs_label => 'Kumeneka';

  @override
  String get food_macro_fat_label => 'Kumeneka kw\'ibinure';

  @override
  String get food_macro_fiber_label => 'Kumeneka kwa fibre';

  @override
  String get food_daily_target_comparison => 'Kugereranya Intego';

  @override
  String food_target_label(Object target) {
    return 'Intego: $target';
  }

  @override
  String get food_edit_entry => 'Hindura ibyanditswemo';

  @override
  String get food_delete_entry => 'Siba ibyinjira';

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
  String get water_intake_history => 'Amazi Yumunsi';

  @override
  String get water_no_logs_today =>
      'Nta mazi yinjiye muri iki gihe. Hydrate hanyuma ukande buto yongeyeho!';

  @override
  String get water_adjust_goal => 'Hindura intego ya buri munsi';

  @override
  String get health_connect_banner => 'Kwihuza Kubuzima';

  @override
  String get health_vitals_summary => 'Ibyingenzi byubuzima bwa buri munsi';

  @override
  String get health_latest_heart_rate => 'Umutima Uheruka';

  @override
  String get health_latest_bp => 'Umuvuduko w\'amaraso';

  @override
  String get health_latest_spo2 => 'Amaraso Oxygene';

  @override
  String get health_latest_glucose => 'Glucose';

  @override
  String get health_latest_weight => 'Ibiro';

  @override
  String get health_latest_sleep => 'Igihe cyo gusinzira';

  @override
  String get health_add_manual => 'Ongeraho Intoki';

  @override
  String get health_history_trends => 'Inzira zamateka';

  @override
  String get health_sync_success => 'Amakuru yubuzima yahujwe neza!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours amasaha $mins iminota';
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
    return '$pct%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg / dL';
  }

  @override
  String get health_devices_title => 'Ibikoresho bihujwe & Imyenda';

  @override
  String get health_devices_desc =>
      'Gucunga amasaha meza yubwenge, abakurikirana imyitozo ngororamubiri, hamwe na sensor yubuzima.';

  @override
  String get health_workout_editor_title => 'Hindura imyitozo';

  @override
  String get health_workout_name_label => 'Izina ry\'imyitozo';

  @override
  String get health_workout_duration_label => 'Igihe (iminota)';

  @override
  String get health_workout_calories_label => 'Ikigereranyo cya Kalori (kcal)';

  @override
  String get health_workout_date_label => 'Itariki nigihe';

  @override
  String get plan_daily_wellness_roadmap => 'Igishushanyo cyawe bwite';

  @override
  String get plan_morning_routine => 'Gahunda ya mugitondo';

  @override
  String get plan_afternoon_routine => 'Amanywa yo ku manywa';

  @override
  String get plan_evening_routine => 'Umugoroba Umuyaga-Hasi';

  @override
  String get plan_coach_badge => 'Umutoza wa Bloomi AI';

  @override
  String get plan_weekly_overview => 'Iminsi 7 Yubuzima bwiza';

  @override
  String get plan_targets_title => 'Intego Nziza & Intego';

  @override
  String get plan_calorie_budget_label => 'Ingengo yimari ya buri munsi';

  @override
  String get plan_water_budget_label => 'Intego y\'amazi ya buri munsi';

  @override
  String get plan_step_budget_label => 'Intego ya buri munsi';

  @override
  String get plan_macro_split_label => 'Ikigereranyo cya Macronutrient';

  @override
  String get profile_personal_details => 'Ibisobanuro byawe bwite';

  @override
  String get profile_body_stats => 'Ibipimo byumubiri';

  @override
  String get profile_app_preferences =>
      'Ibyatoranijwe & Igenamiterere rya porogaramu';

  @override
  String get profile_edit_name_hint => 'Izina ryawe';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Uburebure ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Uburemere ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Imyaka';

  @override
  String get profile_gender_male => 'Umugabo';

  @override
  String get profile_gender_female => 'Umugore';

  @override
  String get profile_gender_other => 'Ibindi / Hitamo kutavuga';

  @override
  String get profile_activity_sedentary => 'Icicaro (Gitoya nta myitozo)';

  @override
  String get profile_activity_light =>
      'Bikora Byoroheje (iminsi 1-3 / icyumweru)';

  @override
  String get profile_activity_moderate =>
      'Mu buryo bushyize mu gaciro (iminsi 3-5 / icyumweru)';

  @override
  String get profile_activity_very => 'Bikora cyane (iminsi 6-7 / icyumweru)';

  @override
  String get settings_wear_os_header => 'Wambare porogaramu ya OS Mugenzi';

  @override
  String get settings_wear_os_desc =>
      'Shyiramo tile ya Bloomi hamwe nibibazo kuri Wear OS yawe kugirango urebe kuri karori, amazi, nintambwe.';

  @override
  String get settings_widgets_header => 'Widgets ya Android';

  @override
  String get settings_widgets_desc =>
      'Shira mugihe nyacyo widgets kubikoresho byawe murugo murugo kugirango bigezweho.';

  @override
  String get settings_about_header => 'Ibyerekeye Bloomi';

  @override
  String get settings_about_version => 'Verisiyo 1.0.0';

  @override
  String get settings_about_build => 'Kubaka 100';

  @override
  String get settings_about_credits =>
      'Yakozwe no kwita kubuzima bwiza, ubuzima bwiza.';

  @override
  String get settings_terms_header => 'Amategeko n\'amabwiriza';

  @override
  String get settings_privacy_header => 'Politiki Yibanga';

  @override
  String get settings_delete_header => 'Siba Konti & Amakuru';

  @override
  String get settings_delete_warning =>
      'Iki gikorwa ntigishobora gusubirwaho. Amafunguro yawe yose, imyitozo, ibyingenzi, hamwe numwirondoro bizahanagurwa burundu.';

  @override
  String get settings_delete_confirm_btn => 'Siba burundu';

  @override
  String get onboard_welcome_headline => 'Murakaza neza kuri Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Umugwaneza, utekereza neza ubuzima bwiza bwateguwe mubuzima bwawe.';

  @override
  String get onboard_step_about => 'Ibyerekeye';

  @override
  String get onboard_step_goals => 'Intego zawe';

  @override
  String get onboard_step_lifestyle => 'Ingeso ya buri munsi';

  @override
  String get onboard_step_permissions => 'Uruhushya';

  @override
  String get onboard_step_plan => 'Witegure!';

  @override
  String get onboard_health_connect_perm => 'Kubona Ubuzima';

  @override
  String get onboard_step_sensors_perm => 'Intambwe yo Kwirinda';

  @override
  String get onboard_notif_perm => 'Gutekereza neza & Kumenyesha';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Scanner y\'ibiryo)';

  @override
  String get onboard_grant_permissions => 'Tanga Uruhushya';

  @override
  String get onboard_continue_dashboard => 'Fungura Dashboard';

  @override
  String get notif_channel_hydration_name => 'Amashanyarazi';

  @override
  String get notif_channel_hydration_desc =>
      'Kwibutsa amazi witonze umunsi wose';

  @override
  String get notif_channel_nutrition_name => 'Ifunguro & Ibyibutsa';

  @override
  String get notif_channel_nutrition_desc =>
      'Ifunguro rya mu gitondo, ifunguro rya sasita, na nimugoroba yo kwibutsa';

  @override
  String get notif_channel_steps_name => 'Intambwe Intambwe';

  @override
  String get notif_channel_steps_desc =>
      'Ibirori iyo bigeze ku ntego za buri munsi';

  @override
  String get notif_channel_vitals_name => 'Ubuzima & Igenzura';

  @override
  String get notif_channel_vitals_desc =>
      'Ibiro hamwe no kuryama umuyaga wibutsa';

  @override
  String get notif_action_log_water => '💧 Injira + 250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => 'Me Ifunguro Ryinjira';

  @override
  String get language => 'Ururimi';

  @override
  String get share => 'Sangira';

  @override
  String common_days(Object count) {
    return '$count d ishize';
  }
}
