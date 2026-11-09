// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ewe (`ee`).
class AppLocalizationsEe extends AppLocalizations {
  AppLocalizationsEe([String locale = 'ee']) : super(locale);

  @override
  String get app_name => 'Bloomi ƒe ŋkɔ';

  @override
  String get nav_home => 'Aƒeme';

  @override
  String get nav_today => 'Egbea';

  @override
  String get nav_plan => 'Ðoɖowɔwɔ ɖe eŋu';

  @override
  String get nav_food => 'Nuɖuɖu';

  @override
  String get nav_food_diary => 'Nuɖuɖu Ŋuti Nuŋlɔɖigbalẽ';

  @override
  String get nav_workout => 'Kamedede Ŋuti Nuŋlɔɖi';

  @override
  String get nav_health => 'Lãmesẽ';

  @override
  String get nav_profile => 'Ameŋunyatakakawo';

  @override
  String get save => 'Dzra nu ɖo';

  @override
  String get cancel => 'Te fli ɖe eme';

  @override
  String get delete => 'Tsɔe ƒu gbe';

  @override
  String get edit => 'Trɔ asi le eŋu';

  @override
  String get done => 'Wowɔe vɔ';

  @override
  String get close => 'Kloe';

  @override
  String get back => 'Trɔ yi megbe';

  @override
  String get next => 'Eyome';

  @override
  String get continue_btn => 'Yi edzi';

  @override
  String get confirm => 'Ðo kpe edzi';

  @override
  String get search => 'Di nyawo';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Wo katã';

  @override
  String get active => 'Active';

  @override
  String get today => 'Egbea';

  @override
  String get yesterday => 'Etsɔ';

  @override
  String get tomorrow => 'Etsɔ';

  @override
  String get add => 'Tsɔe kpe ɖe eŋu';

  @override
  String get remove => 'Ðee ɖa';

  @override
  String get refresh => 'Gbugbɔgadzɔ';

  @override
  String get retry => 'Gadze agbagba ake';

  @override
  String get error => 'Vodada';

  @override
  String get success => 'Dzidzedzekpɔkpɔ';

  @override
  String get loading => 'Wole agba tsɔm...';

  @override
  String get no_data => 'Nyatakaka aɖeke meli o';

  @override
  String get offline => 'Offline ƒe Nɔnɔme';

  @override
  String get offline_sub => 'Tɔtrɔawo awɔ ɖeka ne wogaɖo kadodo me ake';

  @override
  String get undo => 'Trɔ asi le eŋu';

  @override
  String get portion => 'Akpa aɖe';

  @override
  String get quantity => 'Agbɔsɔsɔme';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Eme kɔ ƒã';

  @override
  String get select => 'Tiae';

  @override
  String get apply => 'Wɔ dɔa';

  @override
  String get reset => 'Gbugbɔ ɖoe';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ẽ';

  @override
  String get no => 'Ao';

  @override
  String get optional => 'Ne èdi be yeawɔe';

  @override
  String get calories => 'Calorie siwo le lãme na ame';

  @override
  String get protein => 'Protein (Protein) ƒe dɔwɔwɔ';

  @override
  String get carbs => 'Carbs siwo woyɔna be carbs';

  @override
  String get fat => 'Ami si le lãme na ame';

  @override
  String get fiber => 'Fiber (fiber) si woyɔna be fibre';

  @override
  String get water => 'Tsi';

  @override
  String get steps => 'Afɔɖeɖewo';

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
  String get inches => 'le';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Subɔsubɔdɔ';

  @override
  String get servings => 'Subɔsubɔhawo';

  @override
  String get serving_size => 'Subɔsubɔdɔ ƒe Agbɔsɔsɔme';

  @override
  String get per_100g => 'le 100g ɖesiaɖe me';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Titina Ɣedzeƒe';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika-dukɔwo';

  @override
  String get home_title => 'Aƒeme';

  @override
  String get home_greeting_morning => 'Ŋdi na wò';

  @override
  String get home_greeting_afternoon => 'Ŋdɔ nyui na wò';

  @override
  String get home_greeting_evening => 'Fiẽ Nyui';

  @override
  String get home_streak_title => 'Seƒoƒo ƒe Ƒuƒoƒo';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ŋkekewo ƒe ƒuƒoƒo',
      one: '1 ŋkeke streak',
      zero: '0 ŋkeke streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Wotɔ dzoe';

  @override
  String get home_calories_budget => 'Calorie ƒe Gazazã ƒe Gazazã';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal si susɔ';
  }

  @override
  String get home_water_title => 'Gbesiagbe Tsidede';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Afɔɖeɖewo zɔ';

  @override
  String get home_quick_actions => 'Nuwɔna Kabakaba';

  @override
  String get home_log_meal => 'Log Nuɖuɖu';

  @override
  String get home_log_water => 'Log Tsi';

  @override
  String get home_log_workout => 'Log Kamedede';

  @override
  String get home_log_weight => 'Log ƒe Kpekpeme';

  @override
  String get home_insights_title => 'Egbe ƒe Nugɔmesesewo';

  @override
  String get home_quote =>
      'Tiatia sue siwo le lãmesẽ me hea tɔtrɔ siwo le seƒoƒo me vɛ.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI ƒe hehenala';

  @override
  String get home_surroundings => 'Nusiwo ƒo xlãe & Yame';

  @override
  String get home_notifications => 'Nyatakakawo';

  @override
  String get home_daily_score => 'Gbesiagbe Dzedzeme';

  @override
  String get home_view_all => 'Kpɔ Wo Katã';

  @override
  String get food_diary_title => 'Nuɖuɖu Ŋuti Nuŋlɔɖigbalẽ';

  @override
  String get food_breakfast => 'Ɣetrɔ me nuɖuɖu';

  @override
  String get food_lunch => 'Ŋdɔnuɖuɖu';

  @override
  String get food_dinner => 'Fiẽnuɖuɖu';

  @override
  String get food_snacks => 'Nuɖuɖu viviwo';

  @override
  String get food_add_food => 'Tsɔ Nuɖuɖu De eme';

  @override
  String get food_edit_food => 'Trɔ Asi Le Nuɖuɖu Ŋu';

  @override
  String get food_add_breakfast => 'Tsɔ ŋdi nuɖuɖu kpee';

  @override
  String get food_add_lunch => 'Tsɔ Ŋdɔnuɖuɖu kpee';

  @override
  String get food_add_dinner => 'Tsɔ Fiẽnuɖuɖu kpee';

  @override
  String get food_add_snack => 'Tsɔ Snack kpe ɖe eŋu';

  @override
  String get food_total_calories => 'Caloriewo Katã';

  @override
  String get food_empty_meal => 'Nuɖuɖu aɖeke meŋlɔ ŋkɔ na nuɖuɖu sia haɖe o';

  @override
  String get food_empty_diary => 'Womeŋlɔ nuɖuɖu aɖeke ɖi na ŋkeke sia o';

  @override
  String get food_log_first_meal => 'Zi + dzi be nàŋlɔ wò nuɖuɖu vivi gbãtɔ ɖi';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint => 'Di nuɖuɖuwo, atikutsetsewo, dal, roti...';

  @override
  String get food_custom_recipe => 'Nuɖuɖu & Nuɖaɖa si wowɔ ɖe ɖoɖo nu';

  @override
  String get food_scan_barcode => 'Scan Barcode ƒe Dɔwɔnu';

  @override
  String get food_camera_scan => 'AI Nuɖuɖu Ŋuti Nukpɔmɔ̃';

  @override
  String get food_recent => 'Nuɖuɖu Siwo Wozã Nyitsɔ Laa';

  @override
  String get food_favourites => 'Nusiwo melɔ̃na wu';

  @override
  String get food_macro_summary => 'Nunyiame Gãwo ƒe Gbegblẽ';

  @override
  String get food_delete_meal_confirm =>
      'Èka ɖe edzi be yedi be yeaɖe nu sia ɖaa?';

  @override
  String get food_item_deleted => 'Nuɖuɖu ƒe nu si woɖe ɖa';

  @override
  String get food_remaining => 'susɔea';

  @override
  String get food_consumed => 'woɖui';

  @override
  String food_of_target(Object target) {
    return 'ƒe $target kcal';
  }

  @override
  String get foodSearch_title => 'Di Nuɖuɖuwo';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode ƒe Dɔwɔnu';

  @override
  String get foodSearch_take_photo => 'Snap Nuɖuɖu ƒe Foto';

  @override
  String get foodSearch_custom_food => 'Wɔ Nuɖuɖu Siwo Wotrɔ Asi Le';

  @override
  String get foodSearch_recent_searches => 'Nusiwo Wodi Nyitsɔ Laa';

  @override
  String get foodSearch_popular => 'Nuɖuɖu Siwo Ame Xɔŋkɔwo';

  @override
  String get foodSearch_no_results => 'Nuɖuɖu aɖeke meli si sɔ kple wò didi o';

  @override
  String get barcode_title => 'Barcode Scanner ƒe mɔ̃';

  @override
  String get barcode_align =>
      'Tsɔ barcode ɖo fotoɖemɔ̃a ƒe akpa si le eme la ɖe ɖoɖo nu';

  @override
  String get barcode_not_found => 'Womekpɔ nusi wowɔ le nyatakakadzraɖoƒe o';

  @override
  String get barcode_premium_feature => 'Barcode scanning le Bloomi Pro dzi';

  @override
  String get camera_title => 'AI Nuɖuɖu Ŋuti Nukpɔmɔ̃';

  @override
  String get camera_tap_hint => 'Ðe foto wò nuɖuɖua si me kɔ nyuie';

  @override
  String get camera_analysing => 'Nuɖuɖu ƒe agba me dzodzro...';

  @override
  String get camera_detected => 'Nusiwo wokpɔ';

  @override
  String get camera_flash => 'Trɔ asi le Flash ŋu';

  @override
  String get camera_retake => 'Gbugbɔ Ðe Fotoa';

  @override
  String get camera_confirm_food => 'Kpe Ðe Nuwo Ŋu';

  @override
  String get customFood_title => 'Nuɖuɖu & Nuɖaɖa si wowɔ ɖe ɖoɖo nu';

  @override
  String get customFood_name_hint => 'Nuɖuɖu alo nusi wotsɔ wɔe ƒe ŋkɔ';

  @override
  String get customFood_calories_hint => 'Nuɖuɖumeŋusẽ (kcal) .';

  @override
  String get customFood_protein_hint => 'Protein (g) .';

  @override
  String get customFood_carbs_hint => 'Carbs (g) 1.1.';

  @override
  String get customFood_fat_hint => 'Ami (g) .';

  @override
  String get customFood_save => 'Dzra Nuɖaɖa ƒe Mɔnu';

  @override
  String get water_tracker_title => 'Tsi Ŋuti Mɔfianu';

  @override
  String get water_daily_target => 'Gbesiagbe Tsidede Taɖodzinu';

  @override
  String get water_logged_today => 'Logged Egbea';

  @override
  String get water_add_glass => '+250 ml Glass';

  @override
  String get water_add_bottle => '+500 ml Aŋetu';

  @override
  String get water_custom_amount => 'Ga home si wowɔ ɖe ɖoɖo nu';

  @override
  String get water_reminder_tip =>
      'No tsi edziedzi le ŋkekea me katã be ŋusẽ nanɔ ŋuwò.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml tsi 💧';
  }

  @override
  String get workout_title => 'Kamedede Ŋuti Nuŋlɔɖi';

  @override
  String get workout_add_exercise => 'Tsɔ Kamedede kpee';

  @override
  String get workout_cardio => 'Cardio ƒe dɔwɔwɔ';

  @override
  String get workout_strength => 'Ŋusẽdodo';

  @override
  String get workout_yoga => 'Yoga & Trɔtrɔ ɖe nɔnɔmewo ŋu';

  @override
  String get workout_duration => 'Ɣeyiɣi Didime';

  @override
  String get workout_intensity => 'Sesẽme';

  @override
  String get workout_calories_burned => 'Calorie Siwo Wotɔ dzoe';

  @override
  String get workout_empty => 'Womeŋlɔ kamedede aɖeke ɖi egbea o';

  @override
  String get workout_save_success => 'Woɖe kamedede dzi kpɔtɔ dzidzedzetɔe!';

  @override
  String get workout_type => 'Kamedede Ƒomevi';

  @override
  String get workout_notes => 'De dzesiiwo & Ŋugblededewo';

  @override
  String get health_overview_title => 'Lãmesẽ & Nu Veviwo';

  @override
  String get health_heart_rate => 'Dzi ƒe tsotso';

  @override
  String get health_blood_oxygen => 'Ʋu me Oxygen (SpO2) .';

  @override
  String get health_blood_pressure => 'Ʋu ƒe Ʋuʋudedi';

  @override
  String get health_blood_glucose => 'Ʋumesukli si le ʋu me';

  @override
  String get health_body_temperature => 'Ŋutilã ƒe Dzoxɔxɔ';

  @override
  String get health_sleep_tracking => 'Alɔ̃dɔdɔ ƒe Mɔfiame';

  @override
  String get health_weight_tracking => 'Kpekpeme & Ŋutilã ƒe Nɔnɔme';

  @override
  String get health_waist_hip => 'Akɔta kple akɔta ƒe sɔsɔme';

  @override
  String get health_devices_hub => 'Mɔ̃wo & Smartwatch Hub';

  @override
  String get health_sync_now => 'Na Lãmesẽ Ŋuti Nyatakakawo Wɔ Ðeka';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Wowɔ ɖeka mamlɛtɔ: $time';
  }

  @override
  String get health_manual_entry => 'Lãmesẽnyawo Gbɔgblɔ Kple Asi';

  @override
  String get health_metric_detail => 'Metric Ŋuti Nyatakakawo';

  @override
  String get health_connected_sensors =>
      'Lãmesẽnyawo Gbɔkpɔnu Siwo Do Ƒome Kplii';

  @override
  String get plan_title => 'Gbesiagbe Ðoɖowɔɖi';

  @override
  String get plan_weekly_title => 'Kwasiɖa sia Kwasiɖa ƒe Dzedzeme Ŋuti Ðoɖo';

  @override
  String get plan_calorie_target => 'Calorie ƒe Taɖodzinu';

  @override
  String get plan_water_target => 'Tsidede Taɖodzinu';

  @override
  String get plan_step_target => 'Afɔɖeɖe ƒe Taɖodzinu';

  @override
  String get plan_sleep_target => 'Alɔ̃dɔdɔ ƒe Taɖodzinu';

  @override
  String get plan_meal_suggestions => 'Nuɖuɖu Ŋuti Aɖaŋuɖoɖowo';

  @override
  String get plan_healthy_habits => 'Lãmesẽ Numamewo & Aɖaŋuɖoɖowo';

  @override
  String get plan_coach_advice => 'Bloomi AI ƒe Hehenala ƒe Kafukafunyawo';

  @override
  String get plan_generated_title => 'Gbesiagbe Ðoɖowɔɖi si Wowɔ Ðe Ame Ŋu';

  @override
  String get profile_title => 'Ameŋunyatakakawo';

  @override
  String get profile_edit => 'Trɔ asi le Nyatakakawo Ŋu';

  @override
  String get profile_name => 'Ŋkɔ';

  @override
  String get profile_age => 'Ƒe si ame xɔ';

  @override
  String get profile_gender => 'Ŋutsu alo nyɔnu nyenye';

  @override
  String get profile_height => 'Kɔkɔme';

  @override
  String get profile_weight => 'Kpekpeme';

  @override
  String get profile_goal => 'Taɖodzinu Gbãtɔ';

  @override
  String get profile_activity_level => 'Dɔwɔna ƒe Dzidzenu';

  @override
  String get profile_stats => 'Nye Dzedzeme Ŋuti Akɔntabubuwo';

  @override
  String get profile_saved => 'Wowɔ profile yeyee dzidzedzetɔe';

  @override
  String get profile_bmi => 'Ŋutilã ƒe Agbɔsɔsɔme Ŋuti Nuŋlɔɖi (BMI) .';

  @override
  String get profile_membership => 'Hamea me nɔnɔ';

  @override
  String get settings => 'Ðoɖowo';

  @override
  String get preferences_habits => 'NUSIWO WOKPƆNA KPLE NUSIWO WOKPƆNA';

  @override
  String get appearance_theme => 'Dzedzeme & Tanya';

  @override
  String get appearance_theme_sub =>
      'Viviti, Kekeli, System Mode & App Background Tiatiawɔblɔɖewo';

  @override
  String get permissions => 'Mɔɖeɖewo & System Access';

  @override
  String get permissions_sub =>
      'Lãmesẽ Kadodo, Afɔɖeɖe Sensors, GPS, Nyatakakawo & Fotoɖemɔ̃';

  @override
  String get reminders_notifications => 'Ŋkuɖodzinyawo & Nyatakakawo';

  @override
  String get reminders_sub =>
      'Nuɖuɣiwo, tsi, kpekpeme kpɔkpɔ & ŋkuɖodzinyawo do ŋgɔ na alɔ̃dɔdɔ';

  @override
  String get units_of_measurement => 'Dzidzenu ƒe Akpawo';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) alo Fiaɖuƒe (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'App Gbegbɔgblɔ';

  @override
  String get language_sub =>
      'Eŋlisigbe, हिन्दी (Hindi), Hinglish & 195+ xexeame katã ƒe gbegbɔgblɔwo';

  @override
  String get home_screen_widgets => 'Aƒeme Nukpɔkpɔ ƒe Widgets';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Afɔɖeɖewo, Tsi, Nuɖuɖu & Mascot';

  @override
  String get wear_os_watch_app => 'Do OS Watch App';

  @override
  String get wear_os_sub => 'Smartwatch zɔhɛ, tiles, kuxiwo & agbe vitals';

  @override
  String get goals_wellness => 'TAÐOÐOWO & DZEDZEDZE GƆMESESEWO';

  @override
  String get nutrition_targets => 'Nuɖuɖu Ŋuti Taɖodzinuwo & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie taɖodzinu, protein, carbs, ami & tsi taɖodzinu';

  @override
  String get weekly_recap => 'Kwasiɖa sia Kwasiɖa ƒe Dzedzeme Gbugbɔgagblɔ';

  @override
  String get weekly_recap_sub =>
      '7-ŋkeke calorie mamã dedie, macro ratio & ŋkeke nyuitɔ kekeake';

  @override
  String get streaks_milestones => 'Streaks & Nu vevi siwo wowɔ';

  @override
  String get streaks_sub =>
      'Active seƒoƒo streaks, akɔtagbalẽviwo & dzidzedzekpɔkpɔwo';

  @override
  String get connected_devices => 'MƆ̃WO ƑE ƑOMEDODO & ECOSYSTEM';

  @override
  String get devices_hub => 'Mɔ̃wo & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Lãmesẽ Kadodo, Galaxy Gaƒoɖokui, Pixel Gaƒoɖokui, Garmin';

  @override
  String get surroundings_weather => 'Nusiwo ƒo xlãe & Yame ƒe Nɔnɔme';

  @override
  String get surroundings_sub =>
      'Ya ƒe nyonyome (AQI), UV index & yame ƒe nɔnɔme ƒe tsidede ŋuti aɖaŋuɖoɖowo';

  @override
  String get bloomi_pro => 'Bloomi Pro ƒe Nudɔdɔ';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 aƒeme screen widgets & nu veviwo yometiti';

  @override
  String get about_security => 'NU SIWO KU ÐE & DEDIENƆNƆ ŊU';

  @override
  String get about_bloomi => 'Le Bloomi ŋu';

  @override
  String get about_bloomi_sub => 'Tu nɔnɔmewo, tɔtrɔ, nɔnɔmewo';

  @override
  String get privacy_policy => 'Ameŋunyatakakawo Ŋuti Ðoɖo';

  @override
  String get privacy_policy_sub =>
      'Offline-gbãtɔ, on-device nyatakakawo ƒe xɔtuɖaŋu';

  @override
  String get terms_conditions => 'Ðoɖowo Kple Nɔnɔmewo';

  @override
  String get terms_conditions_sub =>
      'Subɔsubɔdɔ ƒe ɖoɖowo kple lãmesẽmenɔnɔ ŋuti mɔfiamewo';

  @override
  String get delete_account => 'Tsɔ Akɔntabubu & Nyatakakawo Tutu';

  @override
  String get delete_account_sub =>
      'Tutu nutoa me SQLite nyatakakawo kple alilikpo me kɔpiwo ɖa le mɔ si womate ŋu atrɔ o nu';

  @override
  String get healthy_habits =>
      'Tu lãmesẽmenɔnɔ ƒe numame fafɛ siwo nɔa anyi ɖaa ɖo';

  @override
  String get all_logs => 'Nye Nyatakaka Siwo Wolé Kpɔ & Nuŋlɔɖiwo';

  @override
  String get search_language => 'Di to gbegbɔgblɔ alo gbegbɔgblɔ gbãtɔ me...';

  @override
  String get languages_available => 'Gbegbɔgblɔ Siwo Li';

  @override
  String get no_matching_languages => 'Womekpɔ gbegbɔgblɔ siwo sɔ kplii o';

  @override
  String get try_searching =>
      'Tee kpɔ nàdi nu le afimatɔwo ƒe nuŋɔŋlɔ alo Eŋlisigbe me ŋɔŋlɔdzesiwo nu';

  @override
  String get partially_translated => 'Woɖe eƒe akpa aɖe gɔme';

  @override
  String get complete_translation => 'De blibo';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Gbegbɔgblɔ si woɖo ɖe $name ( $nativeName ) .';
  }

  @override
  String get surroundings_title => 'Nusiwo ƒo xlãe & Nutome';

  @override
  String get surroundings_aqi => 'Ya ƒe Nyonyome Ŋuti Nuŋlɔɖi';

  @override
  String get surroundings_uv => 'UV Index ƒe dzesi';

  @override
  String get surroundings_temp => 'Dzoxɔxɔ ƒe dzoxɔxɔ';

  @override
  String get surroundings_humidity => 'Fafa ƒe nɔnɔme';

  @override
  String get surroundings_hydration_advice =>
      'Tsi nɔ eme nyuie le yame ƒe nɔnɔme siwo li fifia me.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Di Nuɖuɖu';

  @override
  String get food_quick_barcode => 'Scan Barcode ƒe 👑';

  @override
  String get food_quick_water => 'Tsɔ Tsi De eme';

  @override
  String get food_quick_custom => 'Nuɖuɖu si Wowɔ Ðe Ðoɖo Nu';

  @override
  String get surroundings_good => 'Enyo';

  @override
  String get surroundings_moderate => 'Nusi sɔ gbɔ wu';

  @override
  String get surroundings_unhealthy => 'Lãmesẽ mele eme o';

  @override
  String get notifications_title => 'Nyatakakawo & Nuxlɔ̃amewo';

  @override
  String get notifications_empty => 'Nyatakaka yeye aɖeke meli o';

  @override
  String get notifications_mark_read => 'De dzesi Wo Katã be Woxlẽe';

  @override
  String get notifications_clear => 'Klɔ Wo Katã Me';

  @override
  String get reminders => 'Ŋkuɖodzinyawo ƒe Ðoɖowo';

  @override
  String get notifications => 'Nyatakakawo';

  @override
  String get reminders_breakfast_title => 'Ɣetrɔ me Ŋkuɖodzinya 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ŋdi nyui na wò! Ɣeyiɣi si woatsɔ aɖu ŋdinu si me nunyiame le le $time .';
  }

  @override
  String get reminders_lunch_title => 'Ŋdɔnuɖuɖu ƒe Ŋkuɖodzinya 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Tsɔ vie nàse vivi na ŋdɔnuɖuɖu si da sɔ, si me susu le le $time .';
  }

  @override
  String get reminders_dinner_title => 'Fiẽnuɖuɖu ƒe Ŋkuɖodzinya 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Ɣeyiɣi na fiẽnuɖuɖu fafɛ si me dzidzeme le le $time .';
  }

  @override
  String get reminders_water_title => 'Tsidede Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ɣeyiɣi si woano tsi yeye kplu ɖeka! ($time) Ƒe 1999 me.';
  }

  @override
  String get reminders_weight_title => 'Kwasiɖa sia kwasiɖa ƒe kpekpeme ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Kpɔ wò kwasiɖa sia kwasiɖa ƒe ŋutilã ƒe xexlẽdzesiwo le Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Mlɔƒe Yaƒoƒo-ɖiɖi 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Ði ɖe eme eye nàdzra ɖo ɖe alɔ̃dɔdɔ si me gbɔɖeme le ŋu ( $time ).';
  }

  @override
  String get onboard_welcome => 'Míexɔ mi nyuie ɖe Bloomi';

  @override
  String get onboard_sub =>
      'Wò zɔhɛ xɔlɔ̃wɔwɔtɔe, si mele Internet dzi o gbã le lãmesẽ kple nunyiame ŋuti zɔhɛ.';

  @override
  String get onboard_get_started => 'Dze Egɔme';

  @override
  String get onboard_sign_in => 'De asi ete';

  @override
  String get onboard_skip => 'Tsɔe ƒu gbe';

  @override
  String get onboard_choose_goal =>
      'Nukae nye wò lãmesẽmenɔnɔ ƒe taɖodzinu vevitɔ?';

  @override
  String get onboard_goal_weight_loss => 'Kpekpeme Dzi Ðeɖe Akpɔtɔ Fafɛ';

  @override
  String get onboard_goal_muscle => 'Lãmetsiwo ƒe Viɖe & Ŋusẽ';

  @override
  String get onboard_goal_energy => 'Gbesiagbe Ŋusẽ & Ŋusẽ';

  @override
  String get onboard_goal_habits => 'Susu ƒe Nuɖuɖu si Le Lãmesẽ Me';

  @override
  String get onboard_about_you => 'Gblɔ Wò Ðokui Ŋuti Nya Na Mí';

  @override
  String get onboard_lifestyle => 'Wò Gbesiagbe Ðoɖowɔɖi';

  @override
  String get onboard_permissions_title => 'Mɔɖeɖewo & System Access';

  @override
  String get onboard_permissions_sub =>
      'Na mɔnukpɔkpɔ be nàwɔ ɖekawɔwɔ ƒe afɔɖeɖewo, kamededewo, kple ŋkuɖodzinyawo.';

  @override
  String get onboard_plan_ready_title =>
      'Wò Ðoɖowɔɖi si Nàwɔ Ðe Ðoɖo Nu la Dzra Ðo!';

  @override
  String get onboard_plan_ready_sub =>
      'Míewɔ nunyiame kple lãmesẽmenɔnɔ ŋuti mɔfiame fafɛ aɖe si sɔ na wò ŋutɔ na wò ko.';

  @override
  String get onboard_enter_bloomi => 'Ge ɖe Bloomi me';

  @override
  String get insights_weekly_report =>
      'Kwasiɖa sia Kwasiɖa ƒe Dzedzeme Gbugbɔgagblɔ';

  @override
  String insights_best_day(Object day) {
    return 'Ŋkeke Nyuitɔ Kekeake: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Nu vevi siwo wowɔ';

  @override
  String insights_unlocked_on(Object date) {
    return 'Woʋu le $date dzi.';
  }

  @override
  String get insights_keep_going => 'Yi ŋgɔyiyi wɔnuku la dzi!';

  @override
  String get widgets_title => 'Aƒeme Nukpɔkpɔ ƒe Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Widget siwo le dɔ wɔm: $count .';
  }

  @override
  String get widgets_hub_title => 'Bloomi Dzedzeme Ŋuti Dɔwɔƒe';

  @override
  String get widgets_steps_title => 'Afɔɖeɖewo & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot ƒe zɔhɛ';

  @override
  String get wear_os_title => 'Do OS Smartwatch si wotsɔ wɔa dɔe';

  @override
  String get wear_os_connected => 'Wodo ka kple Watch';

  @override
  String get wear_os_sync => 'Na Watch Data la nawɔ ɖeka';

  @override
  String get theme_title => 'Dzedzeme & Tanya';

  @override
  String get theme_mode => 'Tanya ƒe Nɔnɔme';

  @override
  String get theme_light => 'Kekeli';

  @override
  String get theme_dark => 'Viviti do viviti';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Megbenyawo Ŋuti Nuŋlɔɖi';

  @override
  String get units_title => 'Dzidzenu ƒe Akpawo';

  @override
  String get units_metric => 'Metrix (kg, cm, ml) 1.1.';

  @override
  String get units_imperial => 'Fiaɖuƒe (lbs, le, fl oz) .';

  @override
  String get home_unable_load => 'Mete ŋu tsɔ dashboard la de agba me o';

  @override
  String get home_health_permission_req => 'Lãmesẽ Kadodo ƒe Mɔɖeɖe Hiã';

  @override
  String get home_health_permission_desc =>
      'Bloomi bia mɔɖeɖe tso Health Connect gbɔ be wòahe afɔɖeɖe ŋutɔŋutɔwo, dzi ƒe tsotso, eye wòawɔ asitelefon dzi widgetwo le ɣeyiɣi ŋutɔŋutɔ me.';

  @override
  String get home_allow_health => 'Ðe mɔ na Lãmesẽnyawo Do Kadodo';

  @override
  String get home_ready_mindful_day =>
      'Èdzra ɖo ɖe ŋkeke si dzi susu le ŋua? ✨';

  @override
  String get home_quick_add => 'Quick Add';

  @override
  String get home_live_gps => 'GPS si le agbe';

  @override
  String get home_calories_remaining_label => 'CALORIES SIWO SUSU';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Woɖunɛ: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap na Tsi Tracker 💧';

  @override
  String get home_water_goal_reached => 'Gbesiagbe taɖodzinu ɖo 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml na gbesiagbe taɖodzinu';
  }

  @override
  String get home_details => 'Nyatakakawo tsitotsito';

  @override
  String get home_upgrade_plan_desc =>
      'Do ŋgɔ be nàʋu gbesiagbe taɖodzinu siwo wowɔ na ame ŋutɔ & AI ɖoɖo';

  @override
  String get home_unlock => 'Ʋuʋu 👑';

  @override
  String get home_quick_log_hint =>
      'Ŋlɔ lãmesẽnyawo ŋuti nyatakaka aɖe ɖi kaba';

  @override
  String get food_serving_size => 'Subɔsubɔdɔ ƒe Agbɔsɔsɔme';

  @override
  String get food_serving_grams => 'Subɔsubɔdɔ (g) .';

  @override
  String get food_number_servings => 'Subɔsubɔdɔ ƒe Agbɔsɔsɔme';

  @override
  String get food_calories_per_serving => 'Calorie siwo le nuɖuɖu ɖeka me';

  @override
  String get food_recipe_ingredients => 'Nusiwo wotsɔ wɔa nuɖuɖua';

  @override
  String get food_recipe_add_ingredient => 'Tsɔ Nusiwo Wotsɔ Wɔe De eme';

  @override
  String get food_recipe_directions => 'Mɔfiamewo & Nuŋlɔɖiwo';

  @override
  String get food_recipe_total => 'Total Recipe Nunyiame';

  @override
  String get food_recipe_per_serving => 'Per Serving Nuɖuɖu Ŋuti Nusɔsrɔ̃';

  @override
  String get food_recipe_saved_toast =>
      'Wodzra nuɖuɖu siwo wowɔ ɖe ɖoɖo nu ɖo dzidzedzetɔe!';

  @override
  String get food_barcode_found => 'Wokpɔ Adzɔnu!';

  @override
  String get food_barcode_not_found_desc =>
      'Míete ŋu ke ɖe barcode sia ŋu le nyatakakadzraɖoƒe si le ʋuʋu ɖi la me o. Àte ŋu atsɔe akpe ɖe eŋu abe nuɖuɖu si wowɔ ɖe ɖoɖo nu ene.';

  @override
  String get food_add_custom_btn => 'Tsɔ Nuɖuɖu Siwo Wowɔ Ðe Ðoɖo Nu Tsɔ kpee';

  @override
  String get food_scan_again => 'Scan Agate ŋu awɔe';

  @override
  String get food_review_items => 'Dzro Nuɖuɖu Siwo Wokpɔ Me Me';

  @override
  String get food_review_hint =>
      'Trɔ asi le agbɔsɔsɔme ŋu alo nàɖe nu ɖesiaɖe si mède dzesii o ɖa';

  @override
  String get food_log_selected => 'Log Nuɖuɖu Tiatiawo';

  @override
  String get food_favourites_title => 'Nuɖuɖu Siwo Melɔ̃na Wu';

  @override
  String get food_recent_title => 'Nuɖuɖu Siwo Wozã Nyitsɔ Laa';

  @override
  String get food_no_favourites =>
      'Nuɖuɖu siwo melɔ̃na wu aɖeke meli haɖe o. Tap dzi ɖe nuɖuɖu ɖesiaɖe ŋu be nàdzra ɖo ɖe afisia.';

  @override
  String get food_no_recents =>
      'Womekpɔ nuɖuɖu siwo woŋlɔ ɖe ati me nyitsɔ laa o.';

  @override
  String get food_nutrition_details_title =>
      'Gbesiagbe Nuɖuɖu Ŋuti Nyatakakawo';

  @override
  String get food_macro_protein_label => 'Protein ƒe Gbegblẽ';

  @override
  String get food_macro_carbs_label => 'Carbs ƒe Gbegblẽ';

  @override
  String get food_macro_fat_label => 'Ami ƒe Gbegblẽ';

  @override
  String get food_macro_fiber_label => 'Fiber ƒe Gbegblẽ';

  @override
  String get food_daily_target_comparison =>
      'Taɖodzinuwo tsɔtsɔ Sɔ Kple Wo Nɔewo';

  @override
  String food_target_label(Object target) {
    return 'Taɖodzinu: $target';
  }

  @override
  String get food_edit_entry => 'Trɔ asi le Ŋkekegbalẽ ƒe Nyawo Ŋu';

  @override
  String get food_delete_entry => 'Tsɔ Nya Siwo Woŋlɔ Ðe Eme la Tutu';

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
    return '$current ƒe $target ml';
  }

  @override
  String get water_intake_history => 'Egbe ƒe Tsi Ŋuti Nuŋlɔɖiwo';

  @override
  String get water_no_logs_today =>
      'Tsi aɖeke metso haɖe egbea o. Tsɔ tsi de eme eye nàzi kpeɖeŋutɔ ƒe dzesi si wotsɔ kpe ɖe eŋu kabakaba dzi!';

  @override
  String get water_adjust_goal => 'Trɔ Asi Le Gbesiagbe Taɖodzinua Ŋu';

  @override
  String get health_connect_banner => 'Do ƒome kple Lãmesẽ Kadodo';

  @override
  String get health_vitals_summary => 'Gbesiagbe Lãmesẽnyawo';

  @override
  String get health_latest_heart_rate => 'Dzi ƒe Ʋuʋu Yeyetɔ';

  @override
  String get health_latest_bp => 'Ʋu ƒe Ʋuʋudedi';

  @override
  String get health_latest_spo2 => 'Ʋu me Oxygen';

  @override
  String get health_latest_glucose => 'Ʋumesukli si le ʋu me';

  @override
  String get health_latest_weight => 'Kpekpeme';

  @override
  String get health_latest_sleep => 'Ɣeyiɣi Didi si Wòadɔ Alɔ̃';

  @override
  String get health_add_manual => 'Tsɔ Asidzidzenu kpee';

  @override
  String get health_history_trends => 'Ŋutinya me Nɔnɔmewo';

  @override
  String get health_sync_success =>
      'Lãmesẽ ŋuti nyatakakawo wɔ ɖeka dzidzedzetɔe!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours gaƒoƒo $mins miniti';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilogram';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % ƒe xexlẽme.';
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
      'Mɔ̃ Siwo Do Ƒome Kple Wo Nɔewo & Wearables';

  @override
  String get health_devices_desc =>
      'Dzra smartwatch eve eve, kamedede ƒe mɔ̃ siwo léa ŋku ɖe ame ŋu, kple lãmesẽnyawo ŋuti nukpɔnu siwo wotsɔna dea dzesi nu ŋu dzi.';

  @override
  String get health_workout_editor_title => 'Trɔ asi le Kamedede ŋu';

  @override
  String get health_workout_name_label => 'Kamedede ƒe Ŋkɔ';

  @override
  String get health_workout_duration_label => 'Ɣeyiɣi Didime (aɖabaƒoƒo) .';

  @override
  String get health_workout_calories_label => 'Nuɖuɖumeŋusẽ si Wobu (kcal) .';

  @override
  String get health_workout_date_label => 'Ɣletiŋkeke Kple Ɣeyiɣi';

  @override
  String get plan_daily_wellness_roadmap => 'Wò Mɔfiame Si Nàwɔ Na Ame Ðokui';

  @override
  String get plan_morning_routine => 'Ŋdi ƒe Ðoɖowɔɖi';

  @override
  String get plan_afternoon_routine => 'Ŋdɔ me Dzedzeme';

  @override
  String get plan_evening_routine => 'Fiẽsi Yaƒoƒo-Ðeɖi';

  @override
  String get plan_coach_badge => 'Bloomi AI ƒe hehenala';

  @override
  String get plan_weekly_overview => 'Ŋkeke 7 ƒe Dzedzeme Ŋuti Nukpɔsusu';

  @override
  String get plan_targets_title => 'Dzedzeme Taɖodzinuwo & Taɖodzinuwo';

  @override
  String get plan_calorie_budget_label =>
      'Gbesiagbe Calorie ƒe Gazazã ƒe Gazazã';

  @override
  String get plan_water_budget_label => 'Gbesiagbe Tsi ƒe Taɖodzinu';

  @override
  String get plan_step_budget_label => 'Gbesiagbe Afɔɖeɖe ƒe Taɖodzinu';

  @override
  String get plan_macro_split_label => 'Nunyiame Gãwo ƒe Agbɔsɔsɔme';

  @override
  String get profile_personal_details => 'Ame ŋutɔ Ŋuti Nyatakakawo';

  @override
  String get profile_body_stats => 'Ŋutilã ƒe Dzidzenuwo';

  @override
  String get profile_app_preferences => 'Nusiwo Wòlɔ̃ & App ƒe Ðoɖowo';

  @override
  String get profile_edit_name_hint => 'Wò ŋkɔ';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Kɔkɔme ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Kpekpeme ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Ƒe si ame xɔ';

  @override
  String get profile_gender_male => 'Ŋutsu';

  @override
  String get profile_gender_female => 'Nyɔnu';

  @override
  String get profile_gender_other => 'Bubuwo / Elɔ̃ be yemagblɔe o';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Kamedede sue aɖe ko alo kamedede aɖeke manɔmee) .';

  @override
  String get profile_activity_light => 'Dɔwɔwɔ Fafɛ (ŋkeke 1-3/kwasiɖa) .';

  @override
  String get profile_activity_moderate =>
      'Dɔwɔwɔ le mɔ si sɔ nu (ŋkeke 3-5/kwasiɖa) .';

  @override
  String get profile_activity_very => 'Ewɔa dɔ ŋutɔ (ŋkeke 6-7/kwasiɖa)';

  @override
  String get settings_wear_os_header => 'Do OS Habɔbɔ ƒe App';

  @override
  String get settings_wear_os_desc =>
      'De Bloomi tile kple complication wò Wear OS gaƒoɖokui dzi be nàlé ŋku ɖe calorie, tsi, kple afɔɖeɖewo ŋu.';

  @override
  String get settings_widgets_header => 'Android Widgets siwo wɔa dɔ aduadu';

  @override
  String get settings_widgets_desc =>
      'Pin ɣeyiɣi ŋutɔŋutɔ me widgets ɖe wò mɔ̃a ƒe home screen dzi be nàkpɔ yeye enumake.';

  @override
  String get settings_about_header => 'Le Bloomi ŋu';

  @override
  String get settings_about_version => 'Eƒe tɔtrɔ 1.0.0';

  @override
  String get settings_about_build => 'Tu ame 100';

  @override
  String get settings_about_credits =>
      'Wowɔe kple beléle be woanɔ agbe si me susu le, si me lãmesẽ le.';

  @override
  String get settings_terms_header => 'Ðoɖowo Kple Nɔnɔmewo';

  @override
  String get settings_privacy_header => 'Ameŋunyatakakawo Ŋuti Ðoɖo';

  @override
  String get settings_delete_header => 'Tsɔ Akɔntabubu & Nyatakakawo Tutu';

  @override
  String get settings_delete_warning =>
      'Womate ŋu atrɔ nuwɔna sia o. Woatutu wò nuɖuɖu, kamedede, vitals, kple profile katã ɖa tegbee.';

  @override
  String get settings_delete_confirm_btn => 'Tsɔe Tutu Tegbee';

  @override
  String get onboard_welcome_headline => 'Míexɔ mi nyuie ɖe Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Fafɛ, susu ƒe lãmesẽ kplɔkplɔ si ŋu wotrɔ asi le ƒo xlã wò agbe.';

  @override
  String get onboard_step_about => 'Tso Wò Ŋu';

  @override
  String get onboard_step_goals => 'Wò Taɖodzinuwo';

  @override
  String get onboard_step_lifestyle => 'Gbesiagbe Numamewo';

  @override
  String get onboard_step_permissions => 'Mɔɖeɖewo';

  @override
  String get onboard_step_plan => 'Dzra ɖo!';

  @override
  String get onboard_health_connect_perm => 'Lãmesẽ Kadodo ƒe Mɔɖeɖe';

  @override
  String get onboard_step_sensors_perm => 'Afɔɖeɖe Xexlẽdzesi Sensor';

  @override
  String get onboard_notif_perm => 'Ŋkuɖodzinyawo & Nyatakakawo le Susu me';

  @override
  String get onboard_camera_perm =>
      'Fotoɖemɔ̃ (Barcode & Nuɖuɖu Ŋuti Nukpɔmɔ̃) .';

  @override
  String get onboard_grant_permissions => 'Na Mɔɖeɖewo';

  @override
  String get onboard_continue_dashboard => 'Ʋu Dashboard la';

  @override
  String get notif_channel_hydration_name => 'Tsidede Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Tsi ƒe ŋkuɖodzinya fafɛwo le ŋkekea me katã';

  @override
  String get notif_channel_nutrition_name =>
      'Nuɖuɖu & Nuɖuɖu Ŋuti Ŋkuɖodzinyawo';

  @override
  String get notif_channel_nutrition_desc =>
      'Ŋdi, ŋdɔ, kple fiẽnuɖuɖu ƒe ŋkuɖodzinyawo ŋuti nuxlɔ̃amewo';

  @override
  String get notif_channel_steps_name => 'Afɔɖeɖe veviwo';

  @override
  String get notif_channel_steps_desc =>
      'Azãɖuɖuwo ne woɖo gbesiagbe afɔɖeɖe ƒe taɖodzinuwo gbɔ';

  @override
  String get notif_channel_vitals_name => 'Lãmesẽ & Vitals Dodokpɔwo';

  @override
  String get notif_channel_vitals_desc =>
      'Kpekpeme kple yaƒoƒo ƒe ŋkuɖodzinyawo';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Alɔ̃dɔdɔ 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Nuɖuɖu';

  @override
  String get language => 'Gbegbɔgblɔ';

  @override
  String get share => 'Mamã';

  @override
  String common_days(Object count) {
    return '$count d va yi';
  }
}
