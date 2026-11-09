// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Bahay';

  @override
  String get nav_today => 'Ngayong araw';

  @override
  String get nav_plan => 'Plano';

  @override
  String get nav_food => 'Pagkain';

  @override
  String get nav_food_diary => 'Diary ng Pagkain';

  @override
  String get nav_workout => 'Log ng Pagsasanay';

  @override
  String get nav_health => 'Kalusugan';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'I-save';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get delete => 'Tanggalin';

  @override
  String get edit => 'I-edit';

  @override
  String get done => 'Tapos na';

  @override
  String get close => 'Isara';

  @override
  String get back => 'Bumalik';

  @override
  String get next => 'Susunod';

  @override
  String get continue_btn => 'Magpatuloy';

  @override
  String get confirm => 'Kumpirmahin';

  @override
  String get search => 'Maghanap';

  @override
  String get filter => 'Salain';

  @override
  String get all => 'Lahat';

  @override
  String get active => 'Aktibo';

  @override
  String get today => 'Ngayong araw';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get tomorrow => 'Bukas';

  @override
  String get add => 'Idagdag';

  @override
  String get remove => 'Alisin';

  @override
  String get refresh => 'I-refresh';

  @override
  String get retry => 'Subukan muli';

  @override
  String get error => 'Error';

  @override
  String get success => 'Tagumpay';

  @override
  String get loading => 'Naglo-load...';

  @override
  String get no_data => 'Walang available na data';

  @override
  String get offline => 'Offline na Mode';

  @override
  String get offline_sub =>
      'Magsi-sync ang mga pagbabago kapag muling nakakonekta';

  @override
  String get undo => 'I-undo';

  @override
  String get portion => 'Bahagi';

  @override
  String get quantity => 'Dami';

  @override
  String get unit => 'Yunit';

  @override
  String get clear => 'Maaliwalas';

  @override
  String get select => 'Pumili';

  @override
  String get apply => 'Mag-apply';

  @override
  String get reset => 'I-reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Oo';

  @override
  String get no => 'Hindi';

  @override
  String get optional => 'Opsyonal';

  @override
  String get calories => 'Mga calorie';

  @override
  String get protein => 'protina';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'mataba';

  @override
  String get fiber => 'Hibla';

  @override
  String get water => 'Tubig';

  @override
  String get steps => 'Mga hakbang';

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
  String get inches => 'sa';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'oras';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Nagsisilbi';

  @override
  String get servings => 'Mga serving';

  @override
  String get serving_size => 'Laki ng Paghahatid';

  @override
  String get per_100g => 'bawat 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Gitnang Silangan';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Bahay';

  @override
  String get home_greeting_morning => 'Magandang Umaga';

  @override
  String get home_greeting_afternoon => 'Magandang Tanghali';

  @override
  String get home_greeting_evening => 'Magandang Gabi';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw na sunod-sunod',
      one: '1 araw na streak',
      zero: '0 araw na sunod-sunod',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Nasunog';

  @override
  String get home_calories_budget => 'Calorie Badyet';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ang natitira';
  }

  @override
  String get home_water_title => 'Pang-araw-araw na Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Naglakad ang mga Hakbang';

  @override
  String get home_quick_actions => 'Mabilis na Aksyon';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Mag-log Workout';

  @override
  String get home_log_weight => 'Timbang ng Log';

  @override
  String get home_insights_title => 'Mga Insight Ngayon';

  @override
  String get home_quote =>
      'Ang maliliit na malusog na pagpipilian ay lumilikha ng mga namumulaklak na pagbabago.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Kapaligiran at Hangin';

  @override
  String get home_notifications => 'Mga abiso';

  @override
  String get home_daily_score => 'Pang-araw-araw na Wellness Score';

  @override
  String get home_view_all => 'Tingnan Lahat';

  @override
  String get food_diary_title => 'Diary ng Pagkain';

  @override
  String get food_breakfast => 'Almusal';

  @override
  String get food_lunch => 'Tanghalian';

  @override
  String get food_dinner => 'Hapunan';

  @override
  String get food_snacks => 'Mga meryenda';

  @override
  String get food_add_food => 'Magdagdag ng Pagkain';

  @override
  String get food_edit_food => 'I-edit ang Pagkain';

  @override
  String get food_add_breakfast => 'Magdagdag ng Almusal';

  @override
  String get food_add_lunch => 'Magdagdag ng Tanghalian';

  @override
  String get food_add_dinner => 'Magdagdag ng Hapunan';

  @override
  String get food_add_snack => 'Magdagdag ng meryenda';

  @override
  String get food_total_calories => 'Kabuuang Mga Calorie';

  @override
  String get food_empty_meal =>
      'Wala pang naka-log na pagkain para sa pagkain na ito';

  @override
  String get food_empty_diary =>
      'Walang naka-log na pagkain para sa araw na ito';

  @override
  String get food_log_first_meal =>
      'I-tap ang + para i-log ang iyong unang masarap na pagkain';

  @override
  String get food_quick_add => 'Mabilis na Magdagdag';

  @override
  String get food_search_hint => 'Maghanap ng mga ulam, prutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom na Pagkain at Recipe';

  @override
  String get food_scan_barcode => 'I-scan ang Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Mga Kamakailang Pagkain';

  @override
  String get food_favourites => 'Mga paborito';

  @override
  String get food_macro_summary => 'Pagkasira ng Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Sigurado ka bang gusto mong alisin ang item na ito?';

  @override
  String get food_item_deleted => 'Inalis ang pagkain';

  @override
  String get food_remaining => 'natitira';

  @override
  String get food_consumed => 'natupok';

  @override
  String food_of_target(Object target) {
    return 'ng $target kcal';
  }

  @override
  String get foodSearch_title => 'Maghanap ng mga Pagkain';

  @override
  String get foodSearch_scan_barcode => 'I-scan ang Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Gumawa ng Custom na Pagkain';

  @override
  String get foodSearch_recent_searches => 'Mga Kamakailang Paghahanap';

  @override
  String get foodSearch_popular => 'Mga Sikat na Lutuin';

  @override
  String get foodSearch_no_results =>
      'Walang mga pagkain na tumutugma sa iyong paghahanap';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'I-align ang barcode sa loob ng frame ng camera';

  @override
  String get barcode_not_found => 'Hindi nakita ang produkto sa database';

  @override
  String get barcode_premium_feature =>
      'Available ang pag-scan ng barcode sa Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Kumuha ng malinaw na larawan ng iyong ulam';

  @override
  String get camera_analysing => 'Pagsusuri ng plato ng pagkain...';

  @override
  String get camera_detected => 'Mga natukoy na item';

  @override
  String get camera_flash => 'I-toggle ang Flash';

  @override
  String get camera_retake => 'Kunin muli ang Larawan';

  @override
  String get camera_confirm_food => 'Kumpirmahin ang Mga Item';

  @override
  String get customFood_title => 'Custom na Pagkain at Recipe';

  @override
  String get customFood_name_hint => 'Pangalan ng ulam o sangkap';

  @override
  String get customFood_calories_hint => 'Mga calorie (kcal)';

  @override
  String get customFood_protein_hint => 'Protina (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'taba (g)';

  @override
  String get customFood_save => 'I-save ang Recipe';

  @override
  String get water_tracker_title => 'Tagasubaybay ng Tubig';

  @override
  String get water_daily_target => 'Pang-araw-araw na Layunin sa Hydration';

  @override
  String get water_logged_today => 'Naka-log Ngayon';

  @override
  String get water_add_glass => '+250 ml na Salamin';

  @override
  String get water_add_bottle => '+500 ML Bote';

  @override
  String get water_custom_amount => 'Custom na Halaga';

  @override
  String get water_reminder_tip =>
      'Regular na uminom ng tubig sa buong araw para sa steady energy.';

  @override
  String water_logged_toast(Object amount) {
    return 'Naka-log $amount ml ng tubig 💧';
  }

  @override
  String get workout_title => 'Log ng Pagsasanay';

  @override
  String get workout_add_exercise => 'Magdagdag ng Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Lakas';

  @override
  String get workout_yoga => 'Yoga at Flexibility';

  @override
  String get workout_duration => 'Tagal';

  @override
  String get workout_intensity => 'Intensity';

  @override
  String get workout_calories_burned => 'Nasunog ang mga calorie';

  @override
  String get workout_empty => 'Walang naka-log na workout ngayon';

  @override
  String get workout_save_success =>
      'Matagumpay na na-save ang pag-eehersisyo!';

  @override
  String get workout_type => 'Uri ng Pagsasanay';

  @override
  String get workout_notes => 'Mga Tala at Pagninilay';

  @override
  String get health_overview_title => 'Kalusugan at Vitals';

  @override
  String get health_heart_rate => 'Bilis ng Puso';

  @override
  String get health_blood_oxygen => 'Oxygen ng Dugo (SpO2)';

  @override
  String get health_blood_pressure => 'Presyon ng Dugo';

  @override
  String get health_blood_glucose => 'Blood Glucose';

  @override
  String get health_body_temperature => 'Temperatura ng Katawan';

  @override
  String get health_sleep_tracking => 'Pagsubaybay sa pagtulog';

  @override
  String get health_weight_tracking => 'Timbang at Komposisyon ng Katawan';

  @override
  String get health_waist_hip => 'waist-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Mga Device at Smartwatch Hub';

  @override
  String get health_sync_now => 'I-sync ang Data ng Kalusugan';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Huling na-sync: $time';
  }

  @override
  String get health_manual_entry => 'Manual Health Entry';

  @override
  String get health_metric_detail => 'Mga Detalye ng Sukatan';

  @override
  String get health_connected_sensors => 'Mga Konektadong Health Sensor';

  @override
  String get plan_title => 'Pang-araw-araw na Plano';

  @override
  String get plan_weekly_title => 'Lingguhang Wellness Plan';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Target ng Hydration';

  @override
  String get plan_step_target => 'Step Target';

  @override
  String get plan_sleep_target => 'Target sa pagtulog';

  @override
  String get plan_meal_suggestions => 'Mga Mungkahi sa Pagkain';

  @override
  String get plan_healthy_habits => 'Malusog na Gawi at Mga Tip';

  @override
  String get plan_coach_advice => 'Mga Rekomendasyon ng Bloomi AI Coach';

  @override
  String get plan_generated_title =>
      'Personalized na Pang-araw-araw na Iskedyul';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'I-edit ang Profile';

  @override
  String get profile_name => 'Pangalan';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Kasarian';

  @override
  String get profile_height => 'taas';

  @override
  String get profile_weight => 'Timbang';

  @override
  String get profile_goal => 'Pangunahing Layunin';

  @override
  String get profile_activity_level => 'Antas ng Aktibidad';

  @override
  String get profile_stats => 'Aking Wellness Stats';

  @override
  String get profile_saved => 'Matagumpay na na-update ang profile';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Membership';

  @override
  String get settings => 'Mga setting';

  @override
  String get preferences_habits => 'PREFERENS & HABITS';

  @override
  String get appearance_theme => 'Hitsura at Tema';

  @override
  String get appearance_theme_sub =>
      'Madilim, Maliwanag, System Mode at Mga Opsyon sa Background ng App';

  @override
  String get permissions => 'Mga Pahintulot at System Access';

  @override
  String get permissions_sub =>
      'Health Connect, Mga Step Sensor, GPS, Mga Notification at Camera';

  @override
  String get reminders_notifications => 'Mga Paalala at Notification';

  @override
  String get reminders_sub =>
      'Mga oras ng pagkain, tubig, check-in sa timbang at mga paalala sa oras ng pagtulog';

  @override
  String get units_of_measurement => 'Mga Yunit ng Pagsukat';

  @override
  String get units_sub =>
      'Sukatan (kg, cm, ml, km) o Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Wika ng App';

  @override
  String get language_sub =>
      'English, हिन्दी (Hindi), Hinglish at 195+ pandaigdigang wika';

  @override
  String get home_screen_widgets => 'Mga Widget ng Home Screen';

  @override
  String get widgets_sub =>
      'Live na Android widgets: Hub, Steps, Water, Nutrition at Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Kasama sa Smartwatch, mga tile, komplikasyon, at live na vitals';

  @override
  String get goals_wellness => 'MGA LAYUNIN AT KAWALAN NG MGA INSIGHT';

  @override
  String get nutrition_targets => 'Mga Target sa Nutrisyon at Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie target, protina, carbs, taba at layunin ng tubig';

  @override
  String get weekly_recap => 'Lingguhang Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-araw na calorie average, macro ratio at pinakamagandang araw';

  @override
  String get streaks_milestones => 'Mga Streak at Milestone';

  @override
  String get streaks_sub =>
      'Mga aktibong blossom streak, badge, at achievement';

  @override
  String get connected_devices => 'MGA KONEKTADO NA DEVICE at ECOSYSTEM';

  @override
  String get devices_hub => 'Mga Device at Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Kapaligiran at Panahon';

  @override
  String get surroundings_sub =>
      'Kalidad ng hangin (AQI), UV index at mga tip sa hydration ng panahon';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget sa home screen at pagsubaybay sa vitals';

  @override
  String get about_security => 'TUNGKOL & SEGURIDAD';

  @override
  String get about_bloomi => 'Tungkol kay Bloomi';

  @override
  String get about_bloomi_sub => 'Bumuo ng mga detalye, bersyon, attribution';

  @override
  String get privacy_policy => 'Patakaran sa Privacy';

  @override
  String get privacy_policy_sub =>
      'Offline-una, on-device na arkitektura ng data';

  @override
  String get terms_conditions => 'Mga Tuntunin at Kundisyon';

  @override
  String get terms_conditions_sub =>
      'Mga tuntunin ng serbisyo at mga alituntunin sa kalusugan';

  @override
  String get delete_account => 'Tanggalin ang Account at Data';

  @override
  String get delete_account_sub =>
      'Hindi maibabalik na burahin ang lokal na data ng SQLite at mga backup ng ulap';

  @override
  String get healthy_habits =>
      'Bumuo ng banayad, pangmatagalang mga gawi sa kalusugan';

  @override
  String get all_logs => 'Aking Mga Sinusubaybayang Data at Log';

  @override
  String get search_language => 'Maghanap ayon sa wika o katutubong script...';

  @override
  String get languages_available => 'Mga Wikang Magagamit';

  @override
  String get no_matching_languages => 'Walang nakitang katugmang mga wika';

  @override
  String get try_searching =>
      'Subukang maghanap sa pamamagitan ng katutubong script o English spelling';

  @override
  String get partially_translated => 'Bahagyang isinalin';

  @override
  String get complete_translation => 'Kumpleto';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Itinakda ang wika sa $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Kapaligiran at Kapaligiran';

  @override
  String get surroundings_aqi => 'Index ng Kalidad ng Hangin';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Halumigmig';

  @override
  String get surroundings_hydration_advice =>
      'Manatiling mahusay na hydrated sa kasalukuyang kondisyon ng panahon.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Maghanap ng Pagkain';

  @override
  String get food_quick_barcode => 'I-scan ang Barcode 👑';

  @override
  String get food_quick_water => 'Magdagdag ng Tubig';

  @override
  String get food_quick_custom => 'Custom na Pagkain';

  @override
  String get surroundings_good => 'Mabuti';

  @override
  String get surroundings_moderate => 'Katamtaman';

  @override
  String get surroundings_unhealthy => 'Hindi malusog';

  @override
  String get notifications_title => 'Mga Notification at Alerto';

  @override
  String get notifications_empty => 'Walang bagong notification';

  @override
  String get notifications_mark_read => 'Markahan ang Lahat bilang Nabasa';

  @override
  String get notifications_clear => 'I-clear ang Lahat';

  @override
  String get reminders => 'Mga Setting ng Paalala';

  @override
  String get notifications => 'Mga Push Notification';

  @override
  String get reminders_breakfast_title => 'Paalala sa almusal 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Magandang umaga po! Oras na para sa masustansyang almusal sa $time .';
  }

  @override
  String get reminders_lunch_title => 'Paalala sa Tanghalian 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'I-pause at tangkilikin ang isang balanse, maingat na tanghalian sa $time .';
  }

  @override
  String get reminders_dinner_title => 'Paalala ng hapunan 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Oras na para sa isang magaan, kasiya-siyang hapunan sa $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Oras na para uminom ng sariwang baso ng tubig! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Lingguhang Pagtimbang ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Subaybayan ang iyong lingguhang sukatan ng katawan sa Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Wind-down sa oras ng pagtulog 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Magpahinga at maghanda para sa mahimbing na pagtulog ( $time ).';
  }

  @override
  String get onboard_welcome => 'Maligayang pagdating sa Bloomi';

  @override
  String get onboard_sub =>
      'Ang iyong magiliw, offline-unang kasama sa kalusugan at nutrisyon.';

  @override
  String get onboard_get_started => 'Magsimula';

  @override
  String get onboard_sign_in => 'Mag-sign In';

  @override
  String get onboard_skip => 'Laktawan';

  @override
  String get onboard_choose_goal =>
      'Ano ang iyong pangunahing layunin sa kalusugan?';

  @override
  String get onboard_goal_weight_loss => 'Banayad na Pagbaba ng Timbang';

  @override
  String get onboard_goal_muscle => 'Pagkuha at Lakas ng kalamnan';

  @override
  String get onboard_goal_energy => 'Araw-araw na Enerhiya at Kasiglahan';

  @override
  String get onboard_goal_habits => 'Healthy Mindful Eating';

  @override
  String get onboard_about_you => 'Sabihin sa Amin ang Tungkol sa Iyong Sarili';

  @override
  String get onboard_lifestyle => 'Ang Iyong Pang-araw-araw na Gawain';

  @override
  String get onboard_permissions_title => 'Mga Pahintulot at System Access';

  @override
  String get onboard_permissions_sub =>
      'Magbigay ng access sa mga hakbang sa pag-sync, pag-eehersisyo, at paalala.';

  @override
  String get onboard_plan_ready_title => 'Handa na ang Iyong Custom na Plano!';

  @override
  String get onboard_plan_ready_sub =>
      'Gumawa kami ng magiliw, personalized na nutrisyon at wellness roadmap para lang sa iyo.';

  @override
  String get onboard_enter_bloomi => 'Ipasok ang Bloomi';

  @override
  String get insights_weekly_report => 'Lingguhang Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Pinakamahusay na Araw ng Pagkakatugma: $day';
  }

  @override
  String get insights_streaks_badges => 'Mga Streak at Milestone';

  @override
  String insights_unlocked_on(Object date) {
    return 'Na-unlock noong $date';
  }

  @override
  String get insights_keep_going =>
      'Ipagpatuloy ang kamangha-manghang pag-unlad!';

  @override
  String get widgets_title => 'Mga Widget ng Home Screen';

  @override
  String widgets_active_count(Object count) {
    return 'Mga Aktibong Widget: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Mga Hakbang at Aktibong Ring';

  @override
  String get widgets_water_title => 'Mabilis na Log ng Hydration';

  @override
  String get widgets_mascot_title => 'Kasamang Mascot ng Bloomi';

  @override
  String get wear_os_title => 'Magsuot ng OS Smartwatch';

  @override
  String get wear_os_connected => 'Nakakonekta sa Panoorin';

  @override
  String get wear_os_sync => 'I-sync ang Data ng Panonood';

  @override
  String get theme_title => 'Hitsura at Tema';

  @override
  String get theme_mode => 'Mode ng Tema';

  @override
  String get theme_light => 'Liwanag';

  @override
  String get theme_dark => 'Madilim';

  @override
  String get theme_system => 'Sistema';

  @override
  String get theme_background_palette => 'Palette ng Background';

  @override
  String get units_title => 'Mga Yunit ng Pagsukat';

  @override
  String get units_metric => 'Sukatan (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Hindi ma-load ang dashboard';

  @override
  String get home_health_permission_req =>
      'Kinakailangan ang Pahintulot sa Health Connect';

  @override
  String get home_health_permission_desc =>
      'Nangangailangan ang Bloomi ng pahintulot ng Health Connect para mag-drag ng mga totoong hakbang, tibok ng puso, at mag-sync ng mga widget sa mobile home nang real time.';

  @override
  String get home_allow_health => 'Payagan ang Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Handa na para sa isang maalalahanin na araw? ✨';

  @override
  String get home_quick_add => 'Mabilis na Magdagdag';

  @override
  String get home_live_gps => 'Live na GPS';

  @override
  String get home_calories_remaining_label => 'CALORIES NA NATITILI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kinain: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'I-tap para sa Water Tracker 💧';

  @override
  String get home_water_goal_reached =>
      'Naabot na ang pang-araw-araw na layunin 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml sa pang-araw-araw na layunin';
  }

  @override
  String get home_details => 'Mga Detalye';

  @override
  String get home_upgrade_plan_desc =>
      'Mag-upgrade para i-unlock ang mga personalized na pang-araw-araw na target at AI plan';

  @override
  String get home_unlock => 'I-unlock ang 👑';

  @override
  String get home_quick_log_hint => 'Mabilis na mag-record ng wellness entry';

  @override
  String get food_serving_size => 'Laki ng Paghahatid';

  @override
  String get food_serving_grams => 'Naghahatid (g)';

  @override
  String get food_number_servings => 'Bilang ng mga Servings';

  @override
  String get food_calories_per_serving => 'Mga calorie bawat paghahatid';

  @override
  String get food_recipe_ingredients => 'Mga sangkap';

  @override
  String get food_recipe_add_ingredient => 'Magdagdag ng Sangkap';

  @override
  String get food_recipe_directions => 'Mga Tagubilin at Tala';

  @override
  String get food_recipe_total => 'Kabuuang Nutrisyon ng Recipe';

  @override
  String get food_recipe_per_serving => 'Bawat Paghahatid ng Nutrisyon';

  @override
  String get food_recipe_saved_toast =>
      'Matagumpay na na-save ang custom na pagkain!';

  @override
  String get food_barcode_found => 'Natagpuan ang Produkto!';

  @override
  String get food_barcode_not_found_desc =>
      'Hindi namin mahanap ang barcode na ito sa bukas na database. Maaari mo itong idagdag bilang custom na pagkain.';

  @override
  String get food_add_custom_btn => 'Magdagdag ng Custom na Pagkain';

  @override
  String get food_scan_again => 'I-scan muli';

  @override
  String get food_review_items => 'Suriin ang Mga Natukoy na Pagkain';

  @override
  String get food_review_hint =>
      'Ayusin ang dami o alisin ang anumang hindi nakikilalang item';

  @override
  String get food_log_selected => 'Mag-log Mga Piniling Pagkain';

  @override
  String get food_favourites_title => 'Mga Paboritong Pagkain';

  @override
  String get food_recent_title => 'Mga Kamakailang Pagkain';

  @override
  String get food_no_favourites =>
      'Wala pang paboritong pagkain. I-tap ang puso sa anumang pagkain upang i-save dito.';

  @override
  String get food_no_recents =>
      'Walang nakitang kamakailang naka-log na pagkain.';

  @override
  String get food_nutrition_details_title =>
      'Mga Detalye ng Pang-araw-araw na Nutrisyon';

  @override
  String get food_macro_protein_label => 'Pagkasira ng Protina';

  @override
  String get food_macro_carbs_label => 'Pagkasira ng Carbs';

  @override
  String get food_macro_fat_label => 'Pagkasira ng taba';

  @override
  String get food_macro_fiber_label => 'Pagkasira ng Hibla';

  @override
  String get food_daily_target_comparison => 'Target na Paghahambing';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'I-edit ang Diary Entry';

  @override
  String get food_delete_entry => 'Tanggalin ang Entry';

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
    return '$current ng $target ml';
  }

  @override
  String get water_intake_history => 'Mga Tala ng Tubig Ngayon';

  @override
  String get water_no_logs_today =>
      'Wala pang tubig ngayon. Mag-hydrate at mag-tap ng mabilisang add button!';

  @override
  String get water_adjust_goal => 'Ayusin ang Pang-araw-araw na Layunin';

  @override
  String get health_connect_banner => 'Nakakonekta sa Health Connect';

  @override
  String get health_vitals_summary => 'Pang-araw-araw na Health Vitals';

  @override
  String get health_latest_heart_rate => 'Pinakabagong Rate ng Puso';

  @override
  String get health_latest_bp => 'Presyon ng Dugo';

  @override
  String get health_latest_spo2 => 'Oxygen ng Dugo';

  @override
  String get health_latest_glucose => 'Blood Glucose';

  @override
  String get health_latest_weight => 'Timbang';

  @override
  String get health_latest_sleep => 'Tagal ng Tulog';

  @override
  String get health_add_manual => 'Magdagdag ng Manu-manong Pagsukat';

  @override
  String get health_history_trends => 'Mga Makasaysayang Trend';

  @override
  String get health_sync_success =>
      'Matagumpay na na-sync ang data ng kalusugan!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours oras $mins min';
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
  String get health_devices_title => 'Mga Nakakonektang Device at Nasusuot';

  @override
  String get health_devices_desc =>
      'Pamahalaan ang mga nakapares na smartwatch, fitness tracker, at health sensor.';

  @override
  String get health_workout_editor_title => 'I-edit ang Workout';

  @override
  String get health_workout_name_label => 'Pangalan ng Pagsasanay';

  @override
  String get health_workout_duration_label => 'Tagal (minuto)';

  @override
  String get health_workout_calories_label => 'Tinantyang Mga Calorie (kcal)';

  @override
  String get health_workout_date_label => 'Petsa at Oras';

  @override
  String get plan_daily_wellness_roadmap => 'Iyong Personalized na Roadmap';

  @override
  String get plan_morning_routine => 'Routine sa Umaga';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Panggabing Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Araw na Wellness Focus';

  @override
  String get plan_targets_title => 'Mga Target at Layunin sa Kaayusan';

  @override
  String get plan_calorie_budget_label => 'Pang-araw-araw na Calorie Badyet';

  @override
  String get plan_water_budget_label => 'Araw-araw na Target ng Tubig';

  @override
  String get plan_step_budget_label => 'Pang-araw-araw na Layunin ng Hakbang';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Mga Personal na Detalye';

  @override
  String get profile_body_stats => 'Mga Pagsukat ng Katawan';

  @override
  String get profile_app_preferences => 'Mga Kagustuhan at Mga Setting ng App';

  @override
  String get profile_edit_name_hint => 'pangalan mo';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Taas ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Timbang ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Edad';

  @override
  String get profile_gender_male => 'Lalaki';

  @override
  String get profile_gender_female => 'Babae';

  @override
  String get profile_gender_other => 'Iba / Mas gusto na huwag sabihin';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Kaunti hanggang walang ehersisyo)';

  @override
  String get profile_activity_light => 'Bahagyang Aktibo (1-3 araw/linggo)';

  @override
  String get profile_activity_moderate =>
      'Katamtamang Aktibo (3-5 araw/linggo)';

  @override
  String get profile_activity_very => 'Napaka-aktibo (6-7 araw/linggo)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'I-install ang Bloomi tile at komplikasyon sa iyong Wear OS na relo para masilip ang mga calorie, tubig, at mga hakbang.';

  @override
  String get settings_widgets_header => 'Mga Interactive na Android Widget';

  @override
  String get settings_widgets_desc =>
      'I-pin ang mga real-time na widget sa home screen ng iyong device para sa mga agarang update.';

  @override
  String get settings_about_header => 'Tungkol kay Bloomi';

  @override
  String get settings_about_version => 'Bersyon';

  @override
  String get settings_about_build => 'Bumuo ng 100';

  @override
  String get settings_about_credits =>
      'Ginawa nang may pag-iingat para sa maingat at malusog na pamumuhay.';

  @override
  String get settings_terms_header => 'Mga Tuntunin at Kundisyon';

  @override
  String get settings_privacy_header => 'Patakaran sa Privacy';

  @override
  String get settings_delete_header => 'Tanggalin ang Account at Data';

  @override
  String get settings_delete_warning =>
      'Ang pagkilos na ito ay hindi maaaring i-undo. Permanenteng ide-delete ang lahat ng iyong pagkain, workout, vitals, at profile.';

  @override
  String get settings_delete_confirm_btn => 'Permanenteng Tanggalin';

  @override
  String get onboard_welcome_headline => 'Maligayang pagdating sa Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Magiliw, maingat na pagsubaybay sa kalusugan na idinisenyo sa iyong buhay.';

  @override
  String get onboard_step_about => 'Tungkol sa Iyo';

  @override
  String get onboard_step_goals => 'Iyong Mga Layunin';

  @override
  String get onboard_step_lifestyle => 'Pang-araw-araw na gawi';

  @override
  String get onboard_step_permissions => 'Mga Pahintulot';

  @override
  String get onboard_step_plan => 'handa na!';

  @override
  String get onboard_health_connect_perm => 'Access sa Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm =>
      'Mga Maalalahanin na Paalala at Notification';

  @override
  String get onboard_camera_perm => 'Camera (Barcode at Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Magbigay ng Mga Pahintulot';

  @override
  String get onboard_continue_dashboard => 'Buksan ang Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Mga paalala ng banayad na tubig sa buong araw';

  @override
  String get notif_channel_nutrition_name =>
      'Mga Paalala sa Pagkain at Nutrisyon';

  @override
  String get notif_channel_nutrition_desc =>
      'Mga alerto sa paalala ng almusal, tanghalian, at hapunan';

  @override
  String get notif_channel_steps_name => 'Hakbang Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Mga pagdiriwang kapag naabot ang mga pang-araw-araw na target na hakbang';

  @override
  String get notif_channel_vitals_name =>
      'Mga Pagsusuri sa Kalusugan at Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Mga paalala sa pagbabawas ng timbang at oras ng pagtulog';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'I-snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Wika';

  @override
  String get share => 'Ibahagi';

  @override
  String common_days(Object count) {
    return '${count}d ang nakalipas';
  }
}
