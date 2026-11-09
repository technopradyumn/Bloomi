// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khasi (`kha`).
class AppLocalizationsKha extends AppLocalizations {
  AppLocalizationsKha([String locale = 'kha']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ïing';

  @override
  String get nav_today => 'Mynta ka sngi';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Jingbam';

  @override
  String get nav_food_diary => 'Ka Diary jong ki jingbam';

  @override
  String get nav_workout => 'Ka jingthoh jingtrei';

  @override
  String get nav_health => 'Ka koit ka khiah';

  @override
  String get nav_profile => 'Profail';

  @override
  String get save => 'Pynsah';

  @override
  String get cancel => 'Pynsangeh';

  @override
  String get delete => 'Pyndam noh';

  @override
  String get edit => 'Pynbeit';

  @override
  String get done => 'La dep';

  @override
  String get close => 'Khang';

  @override
  String get back => 'Badien';

  @override
  String get next => 'Kaba bud';

  @override
  String get continue_btn => 'Bteng';

  @override
  String get confirm => 'Pynthikna';

  @override
  String get search => 'wad';

  @override
  String get filter => 'Pynkhuid';

  @override
  String get all => 'Baroh';

  @override
  String get active => 'Aktib';

  @override
  String get today => 'Mynta ka sngi';

  @override
  String get yesterday => 'Hynnin ka sngi';

  @override
  String get tomorrow => 'Lashai';

  @override
  String get add => 'Pynrung';

  @override
  String get remove => 'Pynduh noh';

  @override
  String get refresh => 'Pynthymmai';

  @override
  String get retry => 'Pyrshang biang';

  @override
  String get error => 'Ka jingbakla';

  @override
  String get success => 'Ka jingjop';

  @override
  String get loading => 'Ka jingpynrung...';

  @override
  String get no_data => 'Ym don data kaba lah ban ioh';

  @override
  String get offline => 'Ka rukom khlem lain';

  @override
  String get offline_sub =>
      'Ki jingkylla kin sync shisien ba la pyniasoh biang';

  @override
  String get undo => 'Pynkylla';

  @override
  String get portion => 'Ka bynta';

  @override
  String get quantity => 'Ka jingbun';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Pynkhuid';

  @override
  String get select => 'Jied';

  @override
  String get apply => 'Pyndonkam';

  @override
  String get reset => 'Pynbeit biang';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Hooid';

  @override
  String get no => 'Em';

  @override
  String get optional => 'Jingjied';

  @override
  String get calories => 'Ki jingbam';

  @override
  String get protein => 'Protin';

  @override
  String get carbs => 'Karb';

  @override
  String get fat => 'Ka jingkhluit';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Ka um';

  @override
  String get steps => 'Ki step';

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
  String get inches => 'ha';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'kynta';

  @override
  String get minutes => 'minit';

  @override
  String get serving => 'Ka jingshakri';

  @override
  String get servings => 'Ki jingshakri';

  @override
  String get serving_size => 'Ka jingheh jong ka jingshakri';

  @override
  String get per_100g => 'na ka bynta 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Mihngi Pdeng';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Ïing';

  @override
  String get home_greeting_morning => 'Khublei shibun';

  @override
  String get home_greeting_afternoon => 'Khublei shibun';

  @override
  String get home_greeting_evening => 'Ka janmiet kaba bha';

  @override
  String get home_streak_title => 'U syntiew syntiew';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sngi ba bud',
      one: '1 sngi ka jingbud',
      zero: '0 sngi ba bud',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'La thang';

  @override
  String get home_calories_budget => 'Ka jingmang pisa';

  @override
  String home_calories_remaining(Object kcal) {
    return 'PH 0 kcal ba dang sah';
  }

  @override
  String get home_water_title => 'Ka jingai um man ka sngi';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ /$target ml';
  }

  @override
  String get home_steps_title => 'Ki step ba la iaid';

  @override
  String get home_quick_actions => 'Ki jingleh kloi';

  @override
  String get home_log_meal => 'Ka jingbam log';

  @override
  String get home_log_water => 'Log um';

  @override
  String get home_log_workout => 'Ka jingtrei log';

  @override
  String get home_log_weight => 'Ka jingkhia jong u log';

  @override
  String get home_insights_title => 'Ki jingshemphang mynta ka sngi';

  @override
  String get home_quote =>
      'Ki jingjied kiba rit kiba koit ba khiah ki pynmih ia ki jingkylla kiba phuh.';

  @override
  String get home_ai_coach_tip => 'U nonghikai AI';

  @override
  String get home_surroundings => 'Ki sawdong sawkun bad ka Iyer';

  @override
  String get home_notifications => 'Ki jingpynbna';

  @override
  String get home_daily_score =>
      'Ka jingkhein ia ka jingkoit jingkhiah man ka sngi';

  @override
  String get home_view_all => 'Peit ia baroh';

  @override
  String get food_diary_title => 'Ka Diary jong ki jingbam';

  @override
  String get food_breakfast => 'Jingbam mynstep';

  @override
  String get food_lunch => 'Ka jingbam miet';

  @override
  String get food_dinner => 'Ka jingbam janmiet';

  @override
  String get food_snacks => 'Ki jingbam jem';

  @override
  String get food_add_food => 'Pyndap jingbam';

  @override
  String get food_edit_food => 'Edit ia ki jingbam';

  @override
  String get food_add_breakfast => 'Pyndap ia ka jingbam mynstep';

  @override
  String get food_add_lunch => 'Pyndap ia ka jingbam miet';

  @override
  String get food_add_dinner => 'Pyndap ia ka jingbam janmiet';

  @override
  String get food_add_snack => 'Pyndap ia ka jingbam jem';

  @override
  String get food_total_calories => 'Ka jingbam baroh';

  @override
  String get food_empty_meal =>
      'Ym pat log ia ki jingbam na ka bynta kane ka jingbam haduh mynta';

  @override
  String get food_empty_diary =>
      'Ym shym la buh jingthoh ia ki jingbam na ka bynta kane ka sngi';

  @override
  String get food_log_first_meal =>
      'Tap + ban log ia ka jingbam ba bang ba nyngkong jong phi .';

  @override
  String get food_quick_add => 'Pynrung kloi';

  @override
  String get food_search_hint => 'Ki jingbam, ki soh, ki dal, ki roti...';

  @override
  String get food_custom_recipe => 'Jingbam ba la shna kyrpang';

  @override
  String get food_scan_barcode => 'Skan ia ka Barkod';

  @override
  String get food_camera_scan => 'AI u nongpeit jingbam';

  @override
  String get food_recent => 'Ki jingbam ba dang shen';

  @override
  String get food_favourites => 'Kiba sngewtynnad';

  @override
  String get food_macro_summary => 'Ka jingpynkylla ia ki jingbam ba kongsan';

  @override
  String get food_delete_meal_confirm =>
      'Hato phi kwah ban pynduh ia kane ka jingthoh?';

  @override
  String get food_item_deleted => 'La weng noh ia ki jingbam';

  @override
  String get food_remaining => 'kaba sah';

  @override
  String get food_consumed => 'la pyndonkam';

  @override
  String food_of_target(Object target) {
    return 'jong ka $target kcal';
  }

  @override
  String get foodSearch_title => 'Wad ia ki jingbam';

  @override
  String get foodSearch_scan_barcode => 'Skan ia ka Barkod';

  @override
  String get foodSearch_take_photo => 'Snap ia ka dur jingbam';

  @override
  String get foodSearch_custom_food => 'Pynlong ia ki jingbam ba kyrpang';

  @override
  String get foodSearch_recent_searches => 'Ki jingwad ba dang shen';

  @override
  String get foodSearch_popular => 'Ki jingbam ba pawnam';

  @override
  String get foodSearch_no_results =>
      'Ym don jingbam kiba iadei bad ka jingwad jong phi';

  @override
  String get barcode_title => 'U nongpeit ia u barkod';

  @override
  String get barcode_align =>
      'Pynbeit ia u barcode hapoh ka frame jong ka kamera';

  @override
  String get barcode_not_found => 'Ym shym la lap ia ka mar ha ka database';

  @override
  String get barcode_premium_feature =>
      'Ka Barcode scanning ka lah ban ioh da ka Bloomi Pro .';

  @override
  String get camera_title => 'AI u nongpeit jingbam';

  @override
  String get camera_tap_hint =>
      'Shim ia ka dur kaba shai bha jong ka jingbam jong phi .';

  @override
  String get camera_analysing => 'Ka jingpeit bniah ia ka pliang jingbam...';

  @override
  String get camera_detected => 'Ki tiar ba la lap';

  @override
  String get camera_flash => 'Pynkylla ia ka flash';

  @override
  String get camera_retake => 'Shim biang ia ka dur';

  @override
  String get camera_confirm_food => 'Pynthikna ia ki tiar';

  @override
  String get customFood_title => 'Jingbam ba la shna kyrpang';

  @override
  String get customFood_name_hint => 'Ka kyrteng jong ka jingbam ne jingbam';

  @override
  String get customFood_calories_hint => 'Ka jingbam (kcal)';

  @override
  String get customFood_protein_hint => 'Protin (g)';

  @override
  String get customFood_carbs_hint => 'Karb (g)';

  @override
  String get customFood_fat_hint => 'Ka jingsma (g)';

  @override
  String get customFood_save => 'Save ia ka rukom shet';

  @override
  String get water_tracker_title => 'Ka jingbuddien ia ka um';

  @override
  String get water_daily_target => 'Ka thong jong ka jingpyndap um man ka sngi';

  @override
  String get water_logged_today => 'La log mynta ka sngi';

  @override
  String get water_add_glass => '+250 ml ka khriat';

  @override
  String get water_add_bottle => '+500 ml ka bilor';

  @override
  String get water_custom_amount => 'Ka jingthew ba la buh kyrpang';

  @override
  String get water_reminder_tip =>
      'Dih um man ka por baroh shisngi na ka bynta ka bor kaba skhem.';

  @override
  String water_logged_toast(Object amount) {
    return 'La logged $amount ml ka um 💧 .';
  }

  @override
  String get workout_title => 'Ka jingthoh jingtrei';

  @override
  String get workout_add_exercise => 'Pynrung ia ka jingtreikam';

  @override
  String get workout_cardio => 'Ka dohnud';

  @override
  String get workout_strength => 'Ka jingkhlain';

  @override
  String get workout_yoga => 'Ka Yoga bad ka jinglong jem';

  @override
  String get workout_duration => 'Ka por';

  @override
  String get workout_intensity => 'Ka jingkhlain';

  @override
  String get workout_calories_burned => 'Ki calorie ba la thang';

  @override
  String get workout_empty => 'Ym don jingtrei ba la log mynta ka sngi';

  @override
  String get workout_save_success => 'Ka jingtreikam ka la jop!';

  @override
  String get workout_type => 'Ka jait jingtrei';

  @override
  String get workout_notes => 'Ki jingthoh bad jingpyrkhat';

  @override
  String get health_overview_title => 'Ka koit ka khiah bad ki jingdonkam';

  @override
  String get health_heart_rate => 'Ka jingkhih jong ka dohnud';

  @override
  String get health_blood_oxygen => 'Ka lyer oksijen ha ka snam (SpO2)';

  @override
  String get health_blood_pressure => 'Ka jingkhluit snam';

  @override
  String get health_blood_glucose => 'Ka shini ha ka snam';

  @override
  String get health_body_temperature => 'Ka jingshit jingkhriat jong ka met';

  @override
  String get health_sleep_tracking => 'Ka jingbuddien ia ka jingthiah';

  @override
  String get health_weight_tracking =>
      'Ka jingkhia bad ka jinglong jong ka met';

  @override
  String get health_waist_hip => 'Ka jingkhein ia ka tyrpeng sha ka tyrpeng';

  @override
  String get health_devices_hub => 'Ki tiar bad ka Hub jong ki por ba stad';

  @override
  String get health_sync_now => 'Sync ia ki jingtip jong ka koit ka khiah';

  @override
  String health_last_synced(Object time) {
    return 'Ka jingpynkylla kaba khatduh: $time';
  }

  @override
  String get health_manual_entry =>
      'Ka jingpynrung ia ka koit ka khiah da ka kti';

  @override
  String get health_metric_detail => 'Ki jingtip ba bniah';

  @override
  String get health_connected_sensors =>
      'Ki Sensor jong ka koit ka khiah ba la pyniasoh';

  @override
  String get plan_title => 'Ka Plan ba man ka sngi';

  @override
  String get plan_weekly_title =>
      'Ka Plan jong ka jingkoit jingkhiah man ka taiew';

  @override
  String get plan_calorie_target => 'Ka thong jong ka kalori';

  @override
  String get plan_water_target => 'Ka thong jong ka jingpynkhluit um';

  @override
  String get plan_step_target => 'Ka thong';

  @override
  String get plan_sleep_target => 'Ka thong thiah';

  @override
  String get plan_meal_suggestions => 'Ki jingai jingmut shaphang ka jingbam';

  @override
  String get plan_healthy_habits =>
      'Ki jinglong ba koit ba khiah bad ki jingai jingmut';

  @override
  String get plan_coach_advice =>
      'Ki jingai jingmut jong u nonghikai jong ka Bloomi AI';

  @override
  String get plan_generated_title => 'Ka por ba la buh kyrpang man ka sngi';

  @override
  String get profile_title => 'Profail';

  @override
  String get profile_edit => 'Pynbeit ia ka dur';

  @override
  String get profile_name => 'Kyrteng';

  @override
  String get profile_age => 'Ka rta';

  @override
  String get profile_gender => 'Jinglong kynthei';

  @override
  String get profile_height => 'Ka jingjrong';

  @override
  String get profile_weight => 'Ka jingkhia';

  @override
  String get profile_goal => 'Ka thong ba kongsan';

  @override
  String get profile_activity_level => 'Kyrdan treikam';

  @override
  String get profile_stats => 'Ka jingkoit jingkhiah jong nga';

  @override
  String get profile_saved => 'La pynthymmai ia ka profile da kaba jop';

  @override
  String get profile_bmi => 'Ka jingkhein ia ka jingkhia jong ka met (BMI)';

  @override
  String get profile_membership => 'Ka jinglong dkhot';

  @override
  String get settings => 'Ki jingpynbeit';

  @override
  String get preferences_habits => 'KI JINGkwah bad ki jingmlien';

  @override
  String get appearance_theme => 'Ka dur bad ka phang';

  @override
  String get appearance_theme_sub =>
      'Ka jingdum, ka jingshai, ka rukom system bad ki jingjied ba shadien jong ka app';

  @override
  String get permissions => 'Ki jingbit bad ka jingrung sha ka system';

  @override
  String get permissions_sub =>
      'Ka jingpyniasoh ia ka koit ka khiah, ki jingpyntip ia ki step, ka GPS, ki jingpynbna bad ka kamera';

  @override
  String get reminders_notifications => 'Ki jingpynkynmaw bad jingpynbna';

  @override
  String get reminders_sub =>
      'Ki por bam, ka um, ka jingpeit ia ka jingkhia bad ki jingpynkynmaw por thiah';

  @override
  String get units_of_measurement => 'Ki unit jong ka jingthew';

  @override
  String get units_sub =>
      'Metrik (kg, cm, ml, km) lane ka jingthew (lbs, phut/inshi, fl oz)';

  @override
  String get app_language => 'Ka ktien app';

  @override
  String get language_sub =>
      'Phareng, हिन्दी (Hindi), Hinglish & 195+ ki ktien pyrthei';

  @override
  String get home_screen_widgets => 'Ki Widget ha ka skrin ba ïing';

  @override
  String get widgets_sub =>
      'Ki jingdonkam ba im jong ka Android: Ka pdeng, ki sienjam, ka um, ka jingbam bad ka mascot';

  @override
  String get wear_os_watch_app => 'Pyndonkam ia ka OS peit App';

  @override
  String get wear_os_sub =>
      'U paralok jong ka watch ba stad, ki tile, ki jingeh bad ki jingdonkam ba im';

  @override
  String get goals_wellness => 'KI JINGTHMU & KI JINGPYNBNA SHAPHANG';

  @override
  String get nutrition_targets =>
      'Ki thong jong ka jingbam bad ka jingphiah ia ka macro';

  @override
  String get nutrition_targets_sub =>
      'Ka thong jong ka jingbam, ka jingbam, ka jingbam, ka shini bad ka um';

  @override
  String get weekly_recap =>
      'Ka jingpynkylla ia ka jingkoit jingkhiah man ka taiew';

  @override
  String get weekly_recap_sub =>
      'Ka jingbam pdeng kaba 7 sngi, ka jingkhein kaba heh bad ka sngi kaba bha tam';

  @override
  String get streaks_milestones => 'Ki lynti bad ki mawjam';

  @override
  String get streaks_sub =>
      'Ki jingphuh syntiew ba treikam, ki dak bad ki jingjop';

  @override
  String get connected_devices => 'KI TIAR BA LA PYNÏASOH & KA JINGPYNBNA';

  @override
  String get devices_hub => 'Ki tiar bad ka Hub jong ki por ba stad';

  @override
  String get devices_hub_sub =>
      'Ka Jingpyniasoh ia ka Koit ka Khiah, Peit Galaxy, Peit Pixel, Garmin';

  @override
  String get surroundings_weather => 'Ki sawdong sawkun bad ka suinbneng';

  @override
  String get surroundings_sub =>
      'Ka jingbha jong ka lyer (AQI), ka UV bad ki jingai jingmut halor ka jingpynkhluit ia ka suinbneng';

  @override
  String get bloomi_pro => 'Ka jingpynrung kyrteng Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'U nonghikai plan jong ka AI, 5 tylli ki tiar ha ka skrin ba ïing bad ka jingbuddien ïa ki jingdonkam ba kongsan';

  @override
  String get about_security => 'SHAPHANG & KA JINGSHNGAIÑ';

  @override
  String get about_bloomi => 'Shaphang ka Bloomi';

  @override
  String get about_bloomi_sub =>
      'Buil ia ki jingbatai bniah, ka dur, ki jingpynpaw';

  @override
  String get privacy_policy => 'Ka Policy jong ka jinglong kyrpang';

  @override
  String get privacy_policy_sub =>
      'Offline-nyngkong, ka jingshna data ha ka tiar';

  @override
  String get terms_conditions => 'Ki kyndon bad jingpynbeit';

  @override
  String get terms_conditions_sub =>
      'Ki kyndon jong ka jingshakri bad ki jingbthah jong ka jingkoit jingkhiah';

  @override
  String get delete_account => 'Pyndam ia ka account bad ki jingtip';

  @override
  String get delete_account_sub =>
      'Ka jingpyndam noh ia ki jingtip ba kyrpang jong ka SQLite bad ki jingpynkylla ha ka lyer';

  @override
  String get healthy_habits => 'Tei ia ki jinglong ba jem bad ba neh';

  @override
  String get all_logs => 'Ki jingtip ba la buddien bad ki jingthoh';

  @override
  String get search_language => 'Wad da ka ktien lane ki jingthoh tynrai...';

  @override
  String get languages_available => 'Ki ktien ba lah ban ioh';

  @override
  String get no_matching_languages => 'Ym shym la lap ia ki ktien kiba iadei';

  @override
  String get try_searching =>
      'Pyrshang ban wad da ki dak tynrai lane da ka jingspel phareng .';

  @override
  String get partially_translated => 'La pynkylla shibynta';

  @override
  String get complete_translation => 'Pyndep';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ka ktien la buh ha $name ( $nativeName ) .';
  }

  @override
  String get surroundings_title => 'Ki sawdong sawkun bad ka mariang';

  @override
  String get surroundings_aqi => 'Ka jingbha jong ka Iyer';

  @override
  String get surroundings_uv => 'Ka jingpynpaw UV';

  @override
  String get surroundings_temp => 'Ka jingshit jingkhriat';

  @override
  String get surroundings_humidity => 'Ka jingkhluit';

  @override
  String get surroundings_hydration_advice =>
      'Pynlong ia ka um kaba bha ha ki jinglong ka suinbneng kiba mynta.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Ka jingwad ia ki jingbam';

  @override
  String get food_quick_barcode => 'Skan ia ka Barkod 👑';

  @override
  String get food_quick_water => 'Pyndap um';

  @override
  String get food_quick_custom => 'Jingbam ba la shna kyrpang';

  @override
  String get surroundings_good => 'Ka bha';

  @override
  String get surroundings_moderate => 'Pdeng';

  @override
  String get surroundings_unhealthy => 'Ka jingbym koit bym khiah';

  @override
  String get notifications_title => 'Ki jingpynbna bad jingpynbna';

  @override
  String get notifications_empty => 'Ym don jingpynbna thymmai';

  @override
  String get notifications_mark_read => 'Mark Baroh kum ki Pule';

  @override
  String get notifications_clear => 'Pynkhuid lut';

  @override
  String get reminders => 'Ki jingpynbeit jingpynkynmaw';

  @override
  String get notifications => 'Ki jingpynbna';

  @override
  String get reminders_breakfast_title =>
      'Jingpynkynmaw ia ka jingbam mynstep 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Khublei shibun! Ka por na ka bynta ka jingbam mynstep kaba tei met ha ka por $time .';
  }

  @override
  String get reminders_lunch_title => 'Jingpynkynmaw ia ka jingbam miet 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pynsangeh bad sngewbha ia ka jingbam miet kaba iadei bad kaba don jingmut ha $time .';
  }

  @override
  String get reminders_dinner_title => 'Jingpynkynmaw ia ka jingbam janmiet 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Ka por na ka bynta ka jingbam janmiet kaba jem bad kaba pynhun ha $time .';
  }

  @override
  String get reminders_water_title => 'Ka jingpynhiar um 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ka por ban dih ia ka um kaba thymmai! (_ph_0__)';
  }

  @override
  String get reminders_weight_title => 'Ka jingthew jingkhein man ka taiew ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Buddien ia ki jingthew jong ka met jong phi man ka taiew ha ka Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Ka por thiah ka lyer-hiar 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Pynjahthait bad pynkhreh ia ka jingthiah kaba suk ( $time ).';
  }

  @override
  String get onboard_welcome => 'Pdiang sngewbha ia phi sha ka Bloomi .';

  @override
  String get onboard_sub =>
      'Ka paralok jong phi kaba iajan, kaba offline-nyngkong eh ha ka koit ka khiah bad ka jingbam.';

  @override
  String get onboard_get_started => 'Sdang';

  @override
  String get onboard_sign_in => 'Sign hapoh';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal =>
      'Kaei ka thong ba kongsan jong ka jingkoit jingkhiah jong phi?';

  @override
  String get onboard_goal_weight_loss =>
      'Ka jingpynhiar ia ka jingkhia kaba jem';

  @override
  String get onboard_goal_muscle =>
      'Ka jingkiew bad jingkhlain jong ki shyieng';

  @override
  String get onboard_goal_energy => 'Ka bor bad jingim ba man ka sngi';

  @override
  String get onboard_goal_habits => 'Ka jingbam kaba koit ba khiah';

  @override
  String get onboard_about_you => 'Iathuh ia ngi shaphang jong phi .';

  @override
  String get onboard_lifestyle => 'Ka rukom leh man ka sngi';

  @override
  String get onboard_permissions_title =>
      'Ki jingbit bad ka jingrung sha ka system';

  @override
  String get onboard_permissions_sub =>
      'Ai lad ban sync ia ki step, ki jingtrei, bad ki jingpynkynmaw.';

  @override
  String get onboard_plan_ready_title =>
      'Ka Plan ba kyrpang jong phi ka la long kaba la pynkhreh!';

  @override
  String get onboard_plan_ready_sub =>
      'Ngi la shna ia ka lynti iaid jong ka jingbam bad ka jingkoit jingkhiah kaba jem, kaba la pynbeit kyrpang tang na ka bynta jong phi.';

  @override
  String get onboard_enter_bloomi => 'Pynrung ia ka Bloomi';

  @override
  String get insights_weekly_report =>
      'Ka jingpynkylla ia ka jingkoit jingkhiah man ka taiew';

  @override
  String insights_best_day(Object day) {
    return 'Ka sngi jong ka jinglong kaba bha tam: $day';
  }

  @override
  String get insights_streaks_badges => 'Ki lynti bad ki mawjam';

  @override
  String insights_unlocked_on(Object date) {
    return 'La plie ia ka ha ka $date';
  }

  @override
  String get insights_keep_going =>
      'To nang iai bteng ia ka jingkiew kaba phylla!';

  @override
  String get widgets_title => 'Ki Widget ha ka skrin ba ïing';

  @override
  String widgets_active_count(Object count) {
    return 'Ki jingdonkam ba treikam: $count';
  }

  @override
  String get widgets_hub_title => 'Ka jaka sumar jingkoit jingkhiah';

  @override
  String get widgets_steps_title => 'Ki step bad ki ring ba treikam';

  @override
  String get widgets_water_title => 'Ka jingpynkhreh um kloi';

  @override
  String get widgets_mascot_title => 'U paralok ba itynnad';

  @override
  String get wear_os_title => 'Pyndonkam ia ka jingpeit khmat OS';

  @override
  String get wear_os_connected => 'La pyniasoh bad ka Watch';

  @override
  String get wear_os_sync => 'Pynbeit ia ki jingtip';

  @override
  String get theme_title => 'Ka dur bad ka phang';

  @override
  String get theme_mode => 'Ka rukom phang';

  @override
  String get theme_light => 'Ka jingshai';

  @override
  String get theme_dark => 'Ka jingdum';

  @override
  String get theme_system => 'Ka rukom treikam';

  @override
  String get theme_background_palette => 'Ka palet ba shadien';

  @override
  String get units_title => 'Ki unit jong ka jingthew';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Ka jinghiar (lbs, ha, tuid)';

  @override
  String get home_unable_load => 'Ym lah ban load ia ka dashboard';

  @override
  String get home_health_permission_req =>
      'Donkam ia ka jingbit ban pyniasoh ia ka koit ka khiah';

  @override
  String get home_health_permission_desc =>
      'Ka Bloomi ka donkam ia ka jingbit jong ka Health Connect ban tan ia ki step ba shisha, ka jingkhih jong ka dohnud, bad ban pyniadei ia ki tiar jong ka iing ha ka por ba shisha.';

  @override
  String get home_allow_health => 'Ailad ia ka koit ka khiah';

  @override
  String get home_ready_mindful_day =>
      'La pynkhreh na ka bynta ka sngi kaba pyrkhat? ✨';

  @override
  String get home_quick_add => 'Pynrung kloi';

  @override
  String get home_live_gps => 'GPS ba im';

  @override
  String get home_calories_remaining_label => 'KI KHALORI KIBA SAH';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'La bam: _PH_0__ / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap na ka bynta ka jingbuddien um 💧';

  @override
  String get home_water_goal_reached =>
      'Ka thong ba man ka sngi ka la poi 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ka thong man ka sngi';
  }

  @override
  String get home_details => 'Ki jingtip ba bniah';

  @override
  String get home_upgrade_plan_desc =>
      'Pynbha ban plie ia ki thong ba kyrpang man ka sngi & ka plan AI';

  @override
  String get home_unlock => 'Plie 👑';

  @override
  String get home_quick_log_hint =>
      'Pynrung kyrteng kloi ia ka jingkoit jingkhiah .';

  @override
  String get food_serving_size => 'Ka jingheh jong ka jingshakri';

  @override
  String get food_serving_grams => 'Ka jingshakri (g)';

  @override
  String get food_number_servings => 'Ka jingdon jong ki jingshakri';

  @override
  String get food_calories_per_serving => 'Ki calories ha kawei ka jingbam';

  @override
  String get food_recipe_ingredients => 'Ki jingbam';

  @override
  String get food_recipe_add_ingredient => 'Pyndap ia ki jingbam';

  @override
  String get food_recipe_directions => 'Ki jingbthah bad jingthoh';

  @override
  String get food_recipe_total => 'Ka jingbam baroh';

  @override
  String get food_recipe_per_serving =>
      'Ka jingbam na ka bynta kawei ka jingbam';

  @override
  String get food_recipe_saved_toast =>
      'Ka jingbam custom la pynim da kaba jop!';

  @override
  String get food_barcode_found => 'La lap ia ka mar!';

  @override
  String get food_barcode_not_found_desc =>
      'Ngim lah ban shem ia kane ka barcode ha ka jaka buh jingtip ba plie. Phi lah ban pyndap ia ka kum ka jingbam tynrai.';

  @override
  String get food_add_custom_btn => 'Pyndap ia ki jingbam ba la shna kyrpang';

  @override
  String get food_scan_again => 'Scan biang';

  @override
  String get food_review_items => 'Peit bniah ia ki jingbam ba la lap';

  @override
  String get food_review_hint =>
      'Pynbeit ia ki jingbun lane weng ia kino kino ki tiar ki bym ithuh .';

  @override
  String get food_log_selected => 'Log ki jingbam ba la jied';

  @override
  String get food_favourites_title => 'Ki jingbam ba sngewtynnad';

  @override
  String get food_recent_title => 'Ki jingbam ba dang shen';

  @override
  String get food_no_favourites =>
      'Ki jingbam ba sngewtynnad haduh mynta. Tap dohnud ia kano kano ka jingbam ban pynim hangne.';

  @override
  String get food_no_recents =>
      'Ym shym la lap ia ki jingbam ba la log dang shen.';

  @override
  String get food_nutrition_details_title =>
      'Ki jingtip ba bniah shaphang ka jingbam man ka sngi';

  @override
  String get food_macro_protein_label => 'Ka jingpynkylla ia ki protein';

  @override
  String get food_macro_carbs_label => 'Ka jingpynkylla ia ki carbs';

  @override
  String get food_macro_fat_label => 'Ka jingpynkylla ia ka shini';

  @override
  String get food_macro_fiber_label => 'Ka jingpynpra ia ki fiber';

  @override
  String get food_daily_target_comparison => 'Ka jingïanujor ïa ka thong';

  @override
  String food_target_label(Object target) {
    return 'Ka thong: $target';
  }

  @override
  String get food_edit_entry => 'Pynbeit ia ka jingthoh ha ka diary';

  @override
  String get food_delete_entry => 'Pyndam ia ka jingpynrung';

  @override
  String food_grams_short(Object grams) {
    return 'PH 0 g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return 'PH 0 kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current jong ka $target ml';
  }

  @override
  String get water_intake_history => 'Ki Logs jong ka um mynta ka sngi';

  @override
  String get water_no_logs_today =>
      'Ym pat don um haduh mynta ka sngi. Pynkhreh bad tap ia u button ba pyndap kloi!';

  @override
  String get water_adjust_goal => 'Pynbeit ia ka thong ba man ka sngi';

  @override
  String get health_connect_banner => 'Ka jingpyniasoh bad ka Koit ka Khiah';

  @override
  String get health_vitals_summary =>
      'Ki jingdonkam ha ka koit ka khiah man ka sngi';

  @override
  String get health_latest_heart_rate =>
      'Ka jingkhih jong ka dohnud kaba thymmai';

  @override
  String get health_latest_bp => 'Ka jingkhluit snam';

  @override
  String get health_latest_spo2 => 'Ka Oksijen ha ka snam';

  @override
  String get health_latest_glucose => 'Ka shini ha ka snam';

  @override
  String get health_latest_weight => 'Ka jingkhia';

  @override
  String get health_latest_sleep => 'Ka por thiah';

  @override
  String get health_add_manual => 'Pynrung ia ka jingthew da ka kti';

  @override
  String get health_history_trends => 'Ki jinglong ha ka histori';

  @override
  String get health_sync_success =>
      'Ki data jong ka koit ka khiah la sync da kaba jop!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours kynta $mins minit';
  }

  @override
  String health_metric_weight_val(Object val) {
    return 'PH 0 kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return 'PH_0__ bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return 'PH 0 / PH 1 mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return 'PH 0 mg/dl';
  }

  @override
  String get health_devices_title =>
      'Ki tiar ba la pyniasoh bad ki tiar ba lah ban phong';

  @override
  String get health_devices_desc =>
      'Pyniaid ia ki watch ba smat ba la pyniasoh lang, ki nongbuddien ia ka jingkoit jingkhiah, bad ki nongtip ia ka koit ka khiah.';

  @override
  String get health_workout_editor_title => 'Pynbeit ia ka jingtrei';

  @override
  String get health_workout_name_label => 'Kyrteng jong ka jingtrei';

  @override
  String get health_workout_duration_label => 'Ka por (minit)';

  @override
  String get health_workout_calories_label =>
      'Ka jingkhein jingdiah ia ka jingbam (kcal)';

  @override
  String get health_workout_date_label => 'Ka tarik bad ka por';

  @override
  String get plan_daily_wellness_roadmap =>
      'Ka lynti iaid ba la pynbeit kyrpang';

  @override
  String get plan_morning_routine => 'Ka rukom leh mynstep';

  @override
  String get plan_afternoon_routine => 'Ka jingkoit jingkhiah';

  @override
  String get plan_evening_routine => 'Ka Iyer Janmiet';

  @override
  String get plan_coach_badge => 'U nonghikai AI';

  @override
  String get plan_weekly_overview =>
      'Ka jingpyrkhat ia ka jingkoit jingkhiah kaba 7-sngi';

  @override
  String get plan_targets_title =>
      'Ki thong bad thong jong ka jingkoit jingkhiah';

  @override
  String get plan_calorie_budget_label => 'Ka jingmang pisa man ka sngi';

  @override
  String get plan_water_budget_label => 'Ka thong jong ka um man ka sngi';

  @override
  String get plan_step_budget_label => 'Ka thong ba man ka sngi';

  @override
  String get plan_macro_split_label => 'Ka jingkhein ia ki jingbam ba kongsan';

  @override
  String get profile_personal_details => 'Ki jingtip ba bniah';

  @override
  String get profile_body_stats => 'Ki jingthew jong ka met';

  @override
  String get profile_app_preferences => 'Ki jingkwah & jingpynbeit ia ka App';

  @override
  String get profile_edit_name_hint => 'Ka kyrteng jong u .';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ka jingjrong (_PH_0__)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ka jingkhia (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Ka rta';

  @override
  String get profile_gender_male => 'Shynrang';

  @override
  String get profile_gender_female => 'Kynthei';

  @override
  String get profile_gender_other => 'Kiwei pat / Kham kwah ban ong .';

  @override
  String get profile_activity_sedentary =>
      'Ka jingshongthait (Khyndiat ne ym don jinglehkai)';

  @override
  String get profile_activity_light =>
      'Ka jingtreikam kaba jem (1-3 sngi/taiew)';

  @override
  String get profile_activity_moderate =>
      'Ka jingtreikam kaba pdeng (3-5 sngi/taiew)';

  @override
  String get profile_activity_very =>
      'Ka long kaba treikam bha (6-7 sngi/taiew)';

  @override
  String get settings_wear_os_header =>
      'Pyndonkam ia ka App paralok jong ka OS';

  @override
  String get settings_wear_os_desc =>
      'Pyndait ia ka tile Bloomi bad ka jingeh ha ka watch Wear OS jong phi ban peit bniah ia ki jingbam, ka um, bad ki step.';

  @override
  String get settings_widgets_header => 'Ki tiar Android ba iatreilang';

  @override
  String get settings_widgets_desc =>
      'Pynbeit ia ki widget ha ka por ba shisha ha ka skrin ba sdang jong ka tiar jong phi na ka bynta ki jingpynkylla mardor.';

  @override
  String get settings_about_header => 'Shaphang ka Bloomi';

  @override
  String get settings_about_version => 'Ka dur 1.0.0';

  @override
  String get settings_about_build => 'Ka jingtei 100';

  @override
  String get settings_about_credits =>
      'La shna da kaba sumar bha na ka bynta ka jingim kaba don jingmut, kaba koit ba khiah.';

  @override
  String get settings_terms_header => 'Ki kyndon bad jingpynbeit';

  @override
  String get settings_privacy_header => 'Ka Policy jong ka jinglong kyrpang';

  @override
  String get settings_delete_header => 'Pyndam ia ka account bad ki jingtip';

  @override
  String get settings_delete_warning =>
      'Ia kane ka jingleh ym lah ban pynkylla. Baroh ki jingbam, ki jingtrei, ki jingdonkam ba kongsan, bad ka profile jong phi yn sa pynduh noh shi syndon.';

  @override
  String get settings_delete_confirm_btn => 'Pynduh noh junom';

  @override
  String get onboard_welcome_headline =>
      'Pdiang sngewbha ia phi sha Bloomi ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'Ka jingbuddien ia ka jingkoit jingkhiah kaba jem bad kaba don jingmut kaba la shna sawdong ka jingim jong phi.';

  @override
  String get onboard_step_about => 'Shaphang jong phi';

  @override
  String get onboard_step_goals => 'Ki thong jong ngi';

  @override
  String get onboard_step_lifestyle => 'Ki Jingmlien ba man ka sngi';

  @override
  String get onboard_step_permissions => 'Ki jingbit';

  @override
  String get onboard_step_plan => 'La pynkhreh!';

  @override
  String get onboard_health_connect_perm =>
      'Ka jingpyniasoh ia ka koit ka khiah';

  @override
  String get onboard_step_sensors_perm => 'U nongkhein step';

  @override
  String get onboard_notif_perm =>
      'Ki jingpynkynmaw bad jingpynbna kiba don jingmut';

  @override
  String get onboard_camera_perm =>
      'Ka kamera (ka nongpeit ia u barkod bad ka jingbam)';

  @override
  String get onboard_grant_permissions => 'Ai jingbit';

  @override
  String get onboard_continue_dashboard => 'Plie ia ka dashboard';

  @override
  String get notif_channel_hydration_name => 'Ki jingpynhiar um';

  @override
  String get notif_channel_hydration_desc =>
      'Ki jingpynkynmaw um ba jem ha baroh kawei ka sngi';

  @override
  String get notif_channel_nutrition_name =>
      'Ki jingpynkynmaw shaphang ka jingbam bad ka jingbam';

  @override
  String get notif_channel_nutrition_desc =>
      'Jingpynkynmaw ia ka jingbam mynstep, mynmiet, bad mynmiet';

  @override
  String get notif_channel_steps_name => 'Ki mawjam';

  @override
  String get notif_channel_steps_desc =>
      'Ki jingrakhe haba poi sha ki thong ba man ka sngi';

  @override
  String get notif_channel_vitals_name =>
      'Ki jingpeit bniah ia ka koit ka khiah bad ki jingdonkam';

  @override
  String get notif_channel_vitals_desc =>
      'Ki jingpynkynmaw ia ka jingkhia bad ka por thiah';

  @override
  String get notif_action_log_water => '💧 U dieng +250ml';

  @override
  String get notif_action_snooze => 'Ka jingkynjah 15m';

  @override
  String get notif_action_log_meal => '🥗 Jingbam log';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
