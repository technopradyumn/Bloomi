// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kok Borok (`trp`).
class AppLocalizationsTrp extends AppLocalizations {
  AppLocalizationsTrp([String locale = 'trp']) : super(locale);

  @override
  String get app_name => 'Bloom';

  @override
  String get nav_home => 'Nogo';

  @override
  String get nav_today => 'Tini';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Chamung';

  @override
  String get nav_food_diary => 'Chamung diary';

  @override
  String get nav_workout => 'Samung tangmani Log';

  @override
  String get nav_health => 'Khoroksa borokni sak hamya';

  @override
  String get nav_profile => 'Profail';

  @override
  String get save => 'mwthangdi';

  @override
  String get cancel => 'Cancel khaidi';

  @override
  String get delete => 'mwthakdi';

  @override
  String get edit => 'Swnamdi';

  @override
  String get done => 'Kwthar';

  @override
  String get close => 'Kholobwi';

  @override
  String get back => 'Kiphilwi';

  @override
  String get next => 'Ulo';

  @override
  String get continue_btn => 'Twlangdi';

  @override
  String get confirm => 'Sichadi';

  @override
  String get search => 'Naitukdi';

  @override
  String get filter => 'philter';

  @override
  String get all => 'Joto';

  @override
  String get active => 'Kwtal';

  @override
  String get today => 'Tini';

  @override
  String get yesterday => 'Biyalo';

  @override
  String get tomorrow => 'Hwnwi';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Kwthar khaidi';

  @override
  String get refresh => 'Kwtal khlaidi';

  @override
  String get retry => 'Teisa try khaidi';

  @override
  String get error => 'Choba';

  @override
  String get success => 'Kwplaisa';

  @override
  String get loading => 'Load wngwi tongo...';

  @override
  String get no_data => 'Data kwrwi';

  @override
  String get offline => 'Offline ni tongmung';

  @override
  String get offline_sub => 'Swlaijakmarok teisa swlaijak khe sync wngnai';

  @override
  String get undo => 'Undo';

  @override
  String get portion => 'Khorang';

  @override
  String get quantity => 'Kwbangma';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Kwthar';

  @override
  String get select => 'Chongdi';

  @override
  String get apply => 'Apply khaidi';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Hoi';

  @override
  String get no => 'Ya';

  @override
  String get optional => 'Chongmani';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protin';

  @override
  String get carbs => 'Karbs';

  @override
  String get fat => 'Kwthang';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Twi';

  @override
  String get steps => 'Yaphang';

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
  String get inches => 'bisingo';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'minit';

  @override
  String get serving => 'Seba khlaimani';

  @override
  String get servings => 'Seba khlaimani';

  @override
  String get serving_size => 'Seba khlaimani kotorma';

  @override
  String get per_100g => '100g ni bagwi';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Urop';

  @override
  String get middle_east => 'Kwcharo salka';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Nogo';

  @override
  String get home_greeting_morning => 'Kaham horo';

  @override
  String get home_greeting_afternoon => 'Kaham horo';

  @override
  String get home_greeting_evening => 'Hor kaham';

  @override
  String get home_streak_title => 'Bwthai ni Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '_PH_0__ salni swkang',
      one: '1 salni streak',
      zero: '0 salni swkang',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Sógwi páijak';

  @override
  String get home_calories_budget => 'Kalori rang';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal tongmani';
  }

  @override
  String get home_water_title => 'Salo twi rwmani';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__/$target ml';
  }

  @override
  String get home_steps_title => 'Yaphang himkha';

  @override
  String get home_quick_actions => 'Dakti samung';

  @override
  String get home_log_meal => 'Log chamung';

  @override
  String get home_log_water => 'Log Twi';

  @override
  String get home_log_workout => 'Log samung tangmani';

  @override
  String get home_log_weight => 'Log ni rang';

  @override
  String get home_insights_title => 'Tini ni saimanma';

  @override
  String get home_quote =>
      'Kwchak kuphur khe chongjakmarok swlaijakma snamnai.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI phwrwngnai';

  @override
  String get home_surroundings => 'Gari & Nokha';

  @override
  String get home_notifications => 'Koktwmarok';

  @override
  String get home_daily_score => 'Salbrum kaham khe tongmani score';

  @override
  String get home_view_all => 'Jotono naidi';

  @override
  String get food_diary_title => 'Chamung diary';

  @override
  String get food_breakfast => 'Tungchamung';

  @override
  String get food_lunch => 'Sarikni chamung';

  @override
  String get food_dinner => 'Horni chámung';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Chamung rwdi';

  @override
  String get food_edit_food => 'Chamung swlaidi';

  @override
  String get food_add_breakfast => 'Tungchakni chamung chapdi';

  @override
  String get food_add_lunch => 'Lunch add';

  @override
  String get food_add_dinner => 'Horni chamung tubudi';

  @override
  String get food_add_snack => 'Snack tubudi';

  @override
  String get food_total_calories => 'Joto kalori';

  @override
  String get food_empty_meal =>
      'O chamungni bagwi tabuk jora mungsa chamung logged wngya';

  @override
  String get food_empty_diary => 'O salni bagwi chamung kwrwi';

  @override
  String get food_log_first_meal =>
      'Tap + no nini puila chajakma chamung no log khaina bagwi';

  @override
  String get food_quick_add => 'Dakti Add';

  @override
  String get food_search_hint => 'Chamung, bwthai, dal, roti nai di...';

  @override
  String get food_custom_recipe => 'Chamung & Recipe';

  @override
  String get food_scan_barcode => 'Barkod scan khai di';

  @override
  String get food_camera_scan => 'AI chamung swngnai';

  @override
  String get food_recent => 'Khakchangma chamung';

  @override
  String get food_favourites => 'Hamjakma';

  @override
  String get food_macro_summary => 'Kwplaisa chamungni manwirokni swbaimung';

  @override
  String get food_delete_meal_confirm =>
      'Nwng sure de nwng o manwi no swkakna muchung?';

  @override
  String get food_item_deleted => 'Chamung manwi swkakjak kha';

  @override
  String get food_remaining => 'tongmani';

  @override
  String get food_consumed => 'cháui pái kha';

  @override
  String food_of_target(Object target) {
    return '$target kal ni';
  }

  @override
  String get foodSearch_title => 'Chamungrok naidi';

  @override
  String get foodSearch_scan_barcode => 'Barkod scan khai di';

  @override
  String get foodSearch_take_photo => 'Snap khaimani photo';

  @override
  String get foodSearch_custom_food => 'Custom Chamung Snamdi';

  @override
  String get foodSearch_recent_searches => 'Tabukni naitukma';

  @override
  String get foodSearch_popular => 'Sinijak chamung';

  @override
  String get foodSearch_no_results => 'Nini naitukma bai chamung kwrwi';

  @override
  String get barcode_title => 'Barkod Skaner';

  @override
  String get barcode_align => 'Camera ni phrem ni bisingo barkod no swlai di';

  @override
  String get barcode_not_found => 'Database o manwi manliya';

  @override
  String get barcode_premium_feature =>
      'Barcode scan khai nai nai kha bloomi pro bai .';

  @override
  String get camera_title => 'AI chamung swngnai';

  @override
  String get camera_tap_hint => 'Nini dish ni kaham photo naidi';

  @override
  String get camera_analysing => 'Chamungni plate no naiwi naikha...';

  @override
  String get camera_detected => 'Manjak manwirok';

  @override
  String get camera_flash => 'Flash no swlai di';

  @override
  String get camera_retake => 'Photo no teisa nai di';

  @override
  String get camera_confirm_food => 'Manwirokno swmai tangdi';

  @override
  String get customFood_title => 'Chamung & Recipe';

  @override
  String get customFood_name_hint => 'Dish eba manwi ni mung';

  @override
  String get customFood_calories_hint => 'Kalori (kal)';

  @override
  String get customFood_protein_hint => 'Protin (g)';

  @override
  String get customFood_carbs_hint => 'Karbo (g)';

  @override
  String get customFood_fat_hint => 'Kwtal (g)';

  @override
  String get customFood_save => 'Recipe mwthangdi';

  @override
  String get water_tracker_title => 'Twi nainai';

  @override
  String get water_daily_target => 'Salo twi rwnani muchungma';

  @override
  String get water_logged_today => 'Tini logi khaijak';

  @override
  String get water_add_glass => '+250 ml glass';

  @override
  String get water_add_bottle => '+500 ml botol';

  @override
  String get water_custom_amount => 'Khatungmani rang';

  @override
  String get water_reminder_tip =>
      'Salo twi kwbang khe nungdi, aboni bagwi steady energy tongo.';

  @override
  String water_logged_toast(Object amount) {
    return 'Log khaijak $amount ml twi 💧 .';
  }

  @override
  String get workout_title => 'Samung tangmani Log';

  @override
  String get workout_add_exercise => 'Samung swnamdi';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Kwrakma';

  @override
  String get workout_yoga => 'Yoga & Kwchangma';

  @override
  String get workout_duration => 'Jora';

  @override
  String get workout_intensity => 'Kwrakma';

  @override
  String get workout_calories_burned => 'Kalori chájak';

  @override
  String get workout_empty => 'Tini samung tangjakya';

  @override
  String get workout_save_success => 'Workout khlaiwi mwthangjak kha!';

  @override
  String get workout_type => 'Samung khwlaimani Jati';

  @override
  String get workout_notes => 'Notes tei uansukma';

  @override
  String get health_overview_title => 'Khoroksa borokni sak hamya';

  @override
  String get health_heart_rate => 'Khani Rang';

  @override
  String get health_blood_oxygen => 'Thwi ni Oksijen (SpO2)';

  @override
  String get health_blood_pressure => 'Thwi ni chapmung';

  @override
  String get health_blood_glucose => 'thwi ni glucose';

  @override
  String get health_body_temperature => 'Chwrai ni khorang';

  @override
  String get health_sleep_tracking => 'Khumulwngno naitukmani';

  @override
  String get health_weight_tracking => 'Khorang & Bwsakni Swnammung';

  @override
  String get health_waist_hip => 'Waist-ni-Hip Ratio';

  @override
  String get health_devices_hub => 'Samanrok tei Smartwknai Hub';

  @override
  String get health_sync_now => 'Khorokma ni Data no sync khai di';

  @override
  String health_last_synced(Object time) {
    return 'Poito khwlaijak: $time';
  }

  @override
  String get health_manual_entry => 'Manual ni sak hamya wngma';

  @override
  String get health_metric_detail => 'Metric ni koktwma';

  @override
  String get health_connected_sensors =>
      'Kwthalaijak Khoroksa Khoroksani Sensor';

  @override
  String get plan_title => 'Salo plan';

  @override
  String get plan_weekly_title => 'Hapta ni kaham tongmung';

  @override
  String get plan_calorie_target => 'Kalori Muchungma';

  @override
  String get plan_water_target => 'Haidrason Muchungma';

  @override
  String get plan_step_target => 'Yaphangni Muchungma';

  @override
  String get plan_sleep_target => 'Khumulwngni Target';

  @override
  String get plan_meal_suggestions => 'Chamungni kok';

  @override
  String get plan_healthy_habits => 'Hosni Tongmung & Tips';

  @override
  String get plan_coach_advice => 'Bloomi AI coach ni kok';

  @override
  String get plan_generated_title => 'Borokni bagwi swnamjak salbrumni jora';

  @override
  String get profile_title => 'Profail';

  @override
  String get profile_edit => 'Profail swlaidi';

  @override
  String get profile_name => 'Mung';

  @override
  String get profile_age => 'Umor';

  @override
  String get profile_gender => 'Chwla bwrwi';

  @override
  String get profile_height => 'Uchukma';

  @override
  String get profile_weight => 'Khorang';

  @override
  String get profile_goal => 'Puilani Muchungma';

  @override
  String get profile_activity_level => 'Samung Level';

  @override
  String get profile_stats => 'Ani kaham tongmung';

  @override
  String get profile_saved => 'Profile kwtal wngkha';

  @override
  String get profile_bmi => 'Chwrai bwsak ni mangpili (BMI)';

  @override
  String get profile_membership => 'Member wngmani';

  @override
  String get settings => 'Setting';

  @override
  String get preferences_habits => 'KHUMUNGMANI & KHLAIMUNG';

  @override
  String get appearance_theme => 'Nugwima & kokthai';

  @override
  String get appearance_theme_sub =>
      'Mwnakma, Pohor, Sistim Mode tei App ni bwskangni chongmungrok';

  @override
  String get permissions => 'Rangchakmung tei System thangmani';

  @override
  String get permissions_sub =>
      'Khoroksa Khoroksani Khorang Kwthar, Yaphangni Sensor, GPS, Samung tei Camera';

  @override
  String get reminders_notifications => 'Muitu rwmani tei koktwma rwmani';

  @override
  String get reminders_sub =>
      'Chamung chamani jora, twi, rangchakni check-in tei thunai jora muitu narwkmani';

  @override
  String get units_of_measurement => 'Sumani units';

  @override
  String get units_sub =>
      'Metrik (kg, cm, ml, km) eba imperial (lbs, phut/in, fl oz)';

  @override
  String get app_language => 'App ni kok';

  @override
  String get language_sub =>
      'English, हिन्दी (Hindi), Hinglish tei 195+ swngcharni kokthairok';

  @override
  String get home_screen_widgets => 'Nogo skrini Widget';

  @override
  String get widgets_sub =>
      'Kwthang Android manwirok: Hub, Yaphang, Twi, Chamung & Mascot';

  @override
  String get wear_os_watch_app => 'OS nainani bagwi App pholokdi';

  @override
  String get wear_os_sub =>
      'Smartwatch bai baksa, tiles, jwngjalrok tei kwthang tongmungrok';

  @override
  String get goals_wellness => 'GOALS & KAHAM KHLAIMANI';

  @override
  String get nutrition_targets => 'Chamungni Muchungma & Makro Kaham';

  @override
  String get nutrition_targets_sub =>
      'Kalori muchungma, protein, karbo, thwng tei twini muchungma';

  @override
  String get weekly_recap => 'Hapta ni kaham tongmung Recap';

  @override
  String get weekly_recap_sub =>
      '7-salni kalori bisingo, makro ratio & kahamkuk sal';

  @override
  String get streaks_milestones => 'Streaks tei Hayungni Lwngo';

  @override
  String get streaks_sub => 'Kwtal holongni striks, badge tei manmarok';

  @override
  String get connected_devices => 'JWLAIJAK SAMANI TEI EKOSISTEM';

  @override
  String get devices_hub => 'Samanrok tei Smartwknai Hub';

  @override
  String get devices_hub_sub =>
      'Khoroksa Khoroksani Khorang, Galaxy Naina, Pixel Naina, Garmin';

  @override
  String get surroundings_weather => 'Gari & Sal';

  @override
  String get surroundings_sub =>
      'Nokhani kaham (AQI), UV phunukma tei salni twi rwmani koktwma';

  @override
  String get bloomi_pro => 'Bloomi pro ni rang rikha';

  @override
  String get bloomi_pro_sub =>
      'AI plan phwrwngnai, 5 nogo skrin ni manwi & nangkukma manwi rok';

  @override
  String get about_security => 'KOK & KHLAIMUNG';

  @override
  String get about_bloomi => 'Bloomi ni kok';

  @override
  String get about_bloomi_sub => 'Samungrok swnamdi, version, rwngthomarok';

  @override
  String get privacy_policy => 'Sinimungni kerong';

  @override
  String get privacy_policy_sub => 'Offline-puila, manwi-o data swnammani';

  @override
  String get terms_conditions => 'Kerong tei tongmung';

  @override
  String get terms_conditions_sub =>
      'Seba khlaimani kerong tei hamya wngmani kerong';

  @override
  String get delete_account => 'khata tei data swkakdi';

  @override
  String get delete_account_sub =>
      'Kiphilwi manliya khe SQLite ni data tei chumui ni backup no swkak di';

  @override
  String get healthy_habits =>
      'Kwchangma, kwthang tongnani tongmungrok swnamdi';

  @override
  String get all_logs => 'Ani naitukjak data tei Logs';

  @override
  String get search_language => 'Khoroksa borokni kok eba script bai nai di...';

  @override
  String get languages_available => 'Kokthairok tongo';

  @override
  String get no_matching_languages => 'Kwtal kokthai kwrwi';

  @override
  String get try_searching =>
      'Dophani swimung eba English swimung bai naitukna chaitokdi';

  @override
  String get partially_translated => 'Kwchak khe swbaijak';

  @override
  String get complete_translation => 'Puila';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Kokthai wngkha $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'Kamiyung tei Patimung';

  @override
  String get surroundings_aqi => 'Hayungni Kaham Index';

  @override
  String get surroundings_uv => 'UV phunukma';

  @override
  String get surroundings_temp => 'Kwchangma';

  @override
  String get surroundings_humidity => 'Kwchangma';

  @override
  String get surroundings_hydration_advice =>
      'Tabukni jorao hydrated wngwi tongdi.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Chamung nai di';

  @override
  String get food_quick_barcode => 'Barkod scan khaidi 👑';

  @override
  String get food_quick_water => 'Twi rwdi';

  @override
  String get food_quick_custom => 'Rangchakni chamung';

  @override
  String get surroundings_good => 'Kaham';

  @override
  String get surroundings_moderate => 'Kwtal';

  @override
  String get surroundings_unhealthy => 'Khoroksa hamya';

  @override
  String get notifications_title => 'Samung & Samung';

  @override
  String get notifications_empty => 'Kwtal koktwma kwrwi';

  @override
  String get notifications_mark_read => 'Jotono porijak hwnwi mark';

  @override
  String get notifications_clear => 'Jotono swkakdi';

  @override
  String get reminders => 'Muitu rwmani settings';

  @override
  String get notifications => 'Koktwmarok';

  @override
  String get reminders_breakfast_title => 'Tungchakni Muitu 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Kaham horo! $time o thwngmungni jora.';
  }

  @override
  String get reminders_lunch_title => 'Lunch ni kok muitu 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pause khaiwi $time o rangchakni, bwkha bai khe wngwi tongdi.';
  }

  @override
  String get reminders_dinner_title => 'Rangchakni Muitu 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time o rangchakni, rangchakni chámungni jora.';
  }

  @override
  String get reminders_water_title => 'Haidrason Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Twi kwtharni glass nungnani jora! ($time)';
  }

  @override
  String get reminders_weight_title => 'Hapta ni rangchak ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( __PH_0_ ) o nini hapta ni bwsak ni rangchak no naiwi naidi.';
  }

  @override
  String get reminders_sleep_title => 'Khumulwngo nokbar-kwchang 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Kwplaisa wngwi thwngna bagwi tiyar wngdi ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi o hambai';

  @override
  String get onboard_sub =>
      'Nini hamjaknai, offline-puila sak hamya tei chamung chamani pal.';

  @override
  String get onboard_get_started => 'Chengdi';

  @override
  String get onboard_sign_in => 'Sign khaidi';

  @override
  String get onboard_skip => 'Skip khaidi';

  @override
  String get onboard_choose_goal => 'Nini puila hamya wngmani muchungma tamo?';

  @override
  String get onboard_goal_weight_loss => 'Kwchangma khe rang kwmajak';

  @override
  String get onboard_goal_muscle => 'Muscle manma tei phan';

  @override
  String get onboard_goal_energy => 'Salo salni phan tei kwthang tongmung';

  @override
  String get onboard_goal_habits => 'Hoslaiya Bujthummung bai Chamung';

  @override
  String get onboard_about_you => 'Chwngno nini kok sadi';

  @override
  String get onboard_lifestyle => 'Nini Salbrumni Samung';

  @override
  String get onboard_permissions_title => 'Rangchakmung tei System thangmani';

  @override
  String get onboard_permissions_sub =>
      'Sync ni yakchu, samung tangma, tei muitu narwkma ni bagwi wngwi mano.';

  @override
  String get onboard_plan_ready_title => 'Nini Custom Plan Tiyar wngkha!';

  @override
  String get onboard_plan_ready_sub =>
      'Chwng norokni bagwi simi se kaisa kwchangma, sakni muchungtwi chamung tei hamya wngmani lama snamkha.';

  @override
  String get onboard_enter_bloomi => 'Bloomi no rwdi';

  @override
  String get insights_weekly_report => 'Hapta ni kaham tongmung Recap';

  @override
  String insights_best_day(Object day) {
    return 'Kaham kwrwngma sal: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks tei Hayungni Lwngo';

  @override
  String insights_unlocked_on(Object date) {
    return '$date o phiyokjak kha';
  }

  @override
  String get insights_keep_going => 'Kaham khe swkang thangwi tongdi!';

  @override
  String get widgets_title => 'Nogo skrini Widget';

  @override
  String widgets_active_count(Object count) {
    return 'Kwtal manwirok: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi kaham tongmung';

  @override
  String get widgets_steps_title => 'Yaphang tei Kwtal Ring';

  @override
  String get widgets_water_title => 'Hydration dakti Log';

  @override
  String get widgets_mascot_title => 'Bloomi maskot bai baksa';

  @override
  String get wear_os_title => 'OS Swkangni Nahar kandi';

  @override
  String get wear_os_connected => 'Watch bai kwrwngjak';

  @override
  String get wear_os_sync => 'Data no sync khai di';

  @override
  String get theme_title => 'Nugwima & kokthai';

  @override
  String get theme_mode => 'Kokthai Mode';

  @override
  String get theme_light => 'Pohor';

  @override
  String get theme_dark => 'Mwnakma';

  @override
  String get theme_system => 'Sistim swkangni simi';

  @override
  String get theme_background_palette => 'bwskangni palet';

  @override
  String get units_title => 'Sumani units';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Habugra (lbs, bisingo, twisa oz)';

  @override
  String get home_unable_load => 'Dashboard load khaiwi manliya';

  @override
  String get home_health_permission_req =>
      'Khoroksa Khoroksano Kwthalainani Permission Nangnai';

  @override
  String get home_health_permission_desc =>
      'Bloomi no kubui jora o mobile nogo tongnai manwi rok no sync khai nani bagwi sak hamya ni bagwi rwngthoma nangnai.';

  @override
  String get home_allow_health => 'Khoroksa Khoroksano Kwthalainani Rwdi';

  @override
  String get home_ready_mindful_day => 'Buj thumnai salni bagwi ready da? ✨';

  @override
  String get home_quick_add => 'Dakti Add';

  @override
  String get home_live_gps => 'Kwthang GPS';

  @override
  String get home_calories_remaining_label => 'TONGWI TONGWI KHALORI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Chajak: $consumed/$target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Twi nainani bagwi tap 💧';

  @override
  String get home_water_goal_reached => 'Salo salni goal wngkha 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '${remaining}ml ni salbrum ni muchungtwi';
  }

  @override
  String get home_details => 'Kwthar kok';

  @override
  String get home_upgrade_plan_desc =>
      'Sarikni muchungtwi tei AI uansukma phiyokna bagwi upgrade khlai di';

  @override
  String get home_unlock => 'Kholokdi 👑';

  @override
  String get home_quick_log_hint =>
      'Kaham khe tongmani kokno dakti khe record khlai di';

  @override
  String get food_serving_size => 'Seba khlaimani kotorma';

  @override
  String get food_serving_grams => 'Seba khlaimani (g)';

  @override
  String get food_number_servings => 'Chamung rwmani mung';

  @override
  String get food_calories_per_serving => 'Kalori kaisa chamung';

  @override
  String get food_recipe_ingredients => 'Manwi manwirok';

  @override
  String get food_recipe_add_ingredient => 'Kwtal manwirok tubudi';

  @override
  String get food_recipe_directions => 'Kokmung tei koktwma';

  @override
  String get food_recipe_total => 'Joto recipe chamung';

  @override
  String get food_recipe_per_serving => 'Chamung chamungni bagwi';

  @override
  String get food_recipe_saved_toast =>
      'Custom chamung kaham khe mwthangjak kha!';

  @override
  String get food_barcode_found => 'Manjak Mankha!';

  @override
  String get food_barcode_not_found_desc =>
      'Chwng o barcode no kholokjak database o manwi manliya. Nwng abono custom wngwi add khlaiwi mano.';

  @override
  String get food_add_custom_btn => 'Khatungma chamung tubudi';

  @override
  String get food_scan_again => 'Scan khaidi teisa';

  @override
  String get food_review_items => 'Naiwi mankha chamungrok';

  @override
  String get food_review_hint =>
      'Kwbangma swlai di eba jesa phano sinijakya manwi no swkak di';

  @override
  String get food_log_selected => 'Log khaijak chamungrok';

  @override
  String get food_favourites_title => 'Hamjakma chamung';

  @override
  String get food_recent_title => 'Khakchangma chamung';

  @override
  String get food_no_favourites =>
      'Tabuk jorao hamjakma chamungrok kwrwi. Tap khaidi jesa phano chamung no save khwlaina bagwi.';

  @override
  String get food_no_recents => 'Recently log khaijak chamungrok nukjakya.';

  @override
  String get food_nutrition_details_title => 'Salo chamungni koktwma';

  @override
  String get food_macro_protein_label => 'Protin swkakjakma';

  @override
  String get food_macro_carbs_label => 'Carbs swkakjakmani';

  @override
  String get food_macro_fat_label => 'Kwchakma swkakmani';

  @override
  String get food_macro_fiber_label => 'Fiber swkakjakmani';

  @override
  String get food_daily_target_comparison => 'Target swngmani';

  @override
  String food_target_label(Object target) {
    return 'Muchungma: $target';
  }

  @override
  String get food_edit_entry => 'Diary ni swimung no swlai di';

  @override
  String get food_delete_entry => 'Entry no swkak di';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '__PH_0_ ni $target ml';
  }

  @override
  String get water_intake_history => 'Tini ni Twi Logs';

  @override
  String get water_no_logs_today =>
      'Tini jora twi logging wngya kho. Hydrate khaidi tei rangchakni button no tap khai di!';

  @override
  String get water_adjust_goal => 'Salo salo goal no swlai di';

  @override
  String get health_connect_banner => 'Khoroksa khoroksa bai kwrwngjak';

  @override
  String get health_vitals_summary => 'Salo salni hamkwrai';

  @override
  String get health_latest_heart_rate => 'Kwtal bwkhani rangchak';

  @override
  String get health_latest_bp => 'Thwi ni chapmung';

  @override
  String get health_latest_spo2 => 'Thwi Oksijen';

  @override
  String get health_latest_glucose => 'thwi ni glucose';

  @override
  String get health_latest_weight => 'Khorang';

  @override
  String get health_latest_sleep => 'Khumulwngni Jora';

  @override
  String get health_add_manual => 'Manual swngmani chapdi';

  @override
  String get health_history_trends => 'Tarikni tongmungrok';

  @override
  String get health_sync_success =>
      'Khoroksa khoroksani data kaham khe sync wngkha!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours jora $mins minit';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilo';
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
    return '_PH_0__/${diastolic}mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return 'PH 0 mg/dl';
  }

  @override
  String get health_devices_title =>
      'Kwthalaijak manwirok tei kanjaknai manwirok';

  @override
  String get health_devices_desc =>
      'Joto khe swnamjak smartwatch, sak hamya naituknai rok, tei sak hamya nuknai rok no naikol di.';

  @override
  String get health_workout_editor_title => 'Samung swnamdi';

  @override
  String get health_workout_name_label => 'Samung tangmani mung';

  @override
  String get health_workout_duration_label => 'Jora (minit)';

  @override
  String get health_workout_calories_label => 'Kalori hwnwi uansukjak (kcal)';

  @override
  String get health_workout_date_label => 'Sal tei Jora';

  @override
  String get plan_daily_wellness_roadmap => 'Nini sakni muchungtwi lama';

  @override
  String get plan_morning_routine => 'Subaini samung';

  @override
  String get plan_afternoon_routine => 'Sal kwcharo kaham tongmung';

  @override
  String get plan_evening_routine => 'Horni Nokbar-Twima';

  @override
  String get plan_coach_badge => 'Bloomi AI phwrwngnai';

  @override
  String get plan_weekly_overview => '7-salni kaham tongmung';

  @override
  String get plan_targets_title => 'Kaham tongmungni Muchungma tei Muchungma';

  @override
  String get plan_calorie_budget_label => 'Salbrumni kalori rang';

  @override
  String get plan_water_budget_label => 'Salo Twi Target';

  @override
  String get plan_step_budget_label => 'Salo salni yakchu';

  @override
  String get plan_macro_split_label => 'Kwplaisa chamungni ratio';

  @override
  String get profile_personal_details => 'Borokni kok';

  @override
  String get profile_body_stats => 'Chwrairok swngmani';

  @override
  String get profile_app_preferences => 'Muchungma tei App swnammani';

  @override
  String get profile_edit_name_hint => 'Nini mung';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Uchukma ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Borokma (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Umor';

  @override
  String get profile_gender_male => 'Chwla';

  @override
  String get profile_gender_female => 'Bwrwi';

  @override
  String get profile_gender_other => 'Buini / Sana muchungya';

  @override
  String get profile_activity_sedentary => 'Achukthai (Kwbangma ya eba kwrwi)';

  @override
  String get profile_activity_light =>
      'Kwchak khe samung tangnai (1-3 sal/sapta)';

  @override
  String get profile_activity_moderate =>
      'Kwchangma khe samung tangnai (3-5 sal/sapta)';

  @override
  String get profile_activity_very => 'belai kheno khatungma (6-7 sal/sapta)';

  @override
  String get settings_wear_os_header => 'OS bai baksa App kandi';

  @override
  String get settings_wear_os_desc =>
      'Kalori, twi, tei yaklaprokno nainani bagwi nini wear OS jora-o Bloomi tile tei jwngjalno swnamdi.';

  @override
  String get settings_widgets_header => 'Kwthar android ni manwirok';

  @override
  String get settings_widgets_desc =>
      'Kwtal kwtal wngna bagwi nini manwi ni nok screen o jora-kwrwng ni widget no pin khai di.';

  @override
  String get settings_about_header => 'Bloomi ni kok';

  @override
  String get settings_about_version => 'Kwtal 1.0.0';

  @override
  String get settings_about_build => '100 swnamdi';

  @override
  String get settings_about_credits =>
      'Buj thumnai, hamya tongmungni bagwi care bai swnamjak.';

  @override
  String get settings_terms_header => 'Kerong tei tongmung';

  @override
  String get settings_privacy_header => 'Sinimungni kerong';

  @override
  String get settings_delete_header => 'khata tei data swkakdi';

  @override
  String get settings_delete_warning =>
      'O samung no khlaiwi manliya. Nini bebak chamung, samung tangma, kwthang tongmung, tei profile mwthangwi thangnai.';

  @override
  String get settings_delete_confirm_btn => 'Kwplaisa khe swkakdi';

  @override
  String get onboard_welcome_headline =>
      'Bloomi ni thani belai kheno hambai ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'Khakchangma bai, bwkha bai khe kaham khe nainani bagwi nini langmao design khlaijak.';

  @override
  String get onboard_step_about => 'Nini kok';

  @override
  String get onboard_step_goals => 'Nini muchungma';

  @override
  String get onboard_step_lifestyle => 'Salbrumni tongmung';

  @override
  String get onboard_step_permissions => 'Raidarok';

  @override
  String get onboard_step_plan => 'Tiyar wngkha!';

  @override
  String get onboard_health_connect_perm => 'Khoroksa Khoroksani Khorang';

  @override
  String get onboard_step_sensors_perm => 'Yaphang Lekhanai Sensor';

  @override
  String get onboard_notif_perm => 'Buj thumnai & Samung';

  @override
  String get onboard_camera_perm => 'Kamera (Barkod tei Chamung Skaner)';

  @override
  String get onboard_grant_permissions => 'Rwdi rwngthoma';

  @override
  String get onboard_continue_dashboard => 'Dasboard khulokdi';

  @override
  String get notif_channel_hydration_name => 'Haidration ni nudges';

  @override
  String get notif_channel_hydration_desc => 'Salbrum twino muitu narwkmani';

  @override
  String get notif_channel_nutrition_name => 'Chamung tei Chamungni Muitu';

  @override
  String get notif_channel_nutrition_desc =>
      'Tungchamung, salthangni chámung, tei horni chámung muitu narwkmani';

  @override
  String get notif_channel_steps_name => 'Yaphangni lama';

  @override
  String get notif_channel_steps_desc =>
      'Salo salni step target sokphuru khulummung';

  @override
  String get notif_channel_vitals_name =>
      'Khoroksa borokni sak hamya tei kwthang tongmani naikolmung';

  @override
  String get notif_channel_vitals_desc =>
      'Weight tei thunai jorao nokbar-kwma muitu narwkmani';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Kwchak 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Chamung';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
