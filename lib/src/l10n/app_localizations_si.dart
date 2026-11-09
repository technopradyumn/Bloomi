// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get app_name => 'බ්ලූමි';

  @override
  String get nav_home => 'නිවස';

  @override
  String get nav_today => 'අද';

  @override
  String get nav_plan => 'සැලසුම් කරන්න';

  @override
  String get nav_food => 'ආහාර';

  @override
  String get nav_food_diary => 'ආහාර දිනපොත';

  @override
  String get nav_workout => 'ව්‍යායාම ලොගය';

  @override
  String get nav_health => 'සෞඛ්යය';

  @override
  String get nav_profile => 'පැතිකඩ';

  @override
  String get save => 'සුරකින්න';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get delete => 'මකන්න';

  @override
  String get edit => 'සංස්කරණය කරන්න';

  @override
  String get done => 'කළා';

  @override
  String get close => 'වසන්න';

  @override
  String get back => 'ආපසු';

  @override
  String get next => 'ඊළඟට';

  @override
  String get continue_btn => 'දිගටම කරගෙන යන්න';

  @override
  String get confirm => 'තහවුරු කරන්න';

  @override
  String get search => 'සොයන්න';

  @override
  String get filter => 'පෙරහන';

  @override
  String get all => 'සියල්ල';

  @override
  String get active => 'ක්රියාකාරී';

  @override
  String get today => 'අද';

  @override
  String get yesterday => 'ඊයේ';

  @override
  String get tomorrow => 'හෙට';

  @override
  String get add => 'එකතු කරන්න';

  @override
  String get remove => 'ඉවත් කරන්න';

  @override
  String get refresh => 'නැවුම් කරන්න';

  @override
  String get retry => 'නැවත උත්සාහ කරන්න';

  @override
  String get error => 'දෝෂයකි';

  @override
  String get success => 'සාර්ථකත්වය';

  @override
  String get loading => 'පූරණය වෙමින්...';

  @override
  String get no_data => 'දත්ත නොමැත';

  @override
  String get offline => 'නොබැඳි මාදිලිය';

  @override
  String get offline_sub => 'නැවත සම්බන්ධ වූ පසු වෙනස්කම් සමමුහුර්ත වනු ඇත';

  @override
  String get undo => 'අහෝසි කරන්න';

  @override
  String get portion => 'කොටස';

  @override
  String get quantity => 'ප්රමාණය';

  @override
  String get unit => 'ඒකකය';

  @override
  String get clear => 'පැහැදිලියි';

  @override
  String get select => 'තෝරන්න';

  @override
  String get apply => 'අයදුම් කරන්න';

  @override
  String get reset => 'යළි පිහිටුවන්න';

  @override
  String get ok => 'හරි';

  @override
  String get yes => 'ඔව්';

  @override
  String get no => 'නැත';

  @override
  String get optional => 'විකල්ප';

  @override
  String get calories => 'කැලරි';

  @override
  String get protein => 'ප්රෝටීන්';

  @override
  String get carbs => 'කාබෝහයිඩ්රේට්';

  @override
  String get fat => 'මහත';

  @override
  String get fiber => 'තන්තු';

  @override
  String get water => 'ජලය';

  @override
  String get steps => 'පියවර';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'මිලි';

  @override
  String get kilograms => 'කි.ග්රෑ';

  @override
  String get pounds => 'රාත්තල්';

  @override
  String get centimeters => 'සෙ.මී';

  @override
  String get inches => 'තුළ';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'පැය';

  @override
  String get minutes => 'මිනිත්තු';

  @override
  String get serving => 'සේවය කරනවා';

  @override
  String get servings => 'සේවා';

  @override
  String get serving_size => 'සේවා ප්‍රමාණය';

  @override
  String get per_100g => 'ග්රෑම් 100 කට';

  @override
  String get india => 'ඉන්දියාව';

  @override
  String get asia => 'ආසියාව';

  @override
  String get europe => 'යුරෝපය';

  @override
  String get middle_east => 'මැද පෙරදිග';

  @override
  String get africa => 'අප්රිකාව';

  @override
  String get americas => 'ඇමරිකාව';

  @override
  String get home_title => 'නිවස';

  @override
  String get home_greeting_morning => 'සුභ උදෑසනක්';

  @override
  String get home_greeting_afternoon => 'සුබ සන්ධ්‍යාවක්';

  @override
  String get home_greeting_evening => 'සුභ සන්ධ්‍යාවක්';

  @override
  String get home_streak_title => 'බ්ලොසම් ස්ට්රීක්';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count දින ස්ට්රීක්',
      one: 'දින 1 ක ඉරි',
      zero: 'දින 0 ඉරි',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'පිළිස්සුවා';

  @override
  String get home_calories_budget => 'කැලරි අයවැය';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ඉතිරිව ඇත';
  }

  @override
  String get home_water_title => 'දෛනික සජලනය';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target මිලි';
  }

  @override
  String get home_steps_title => 'ඇවිද ගිය පියවර';

  @override
  String get home_quick_actions => 'ඉක්මන් ක්‍රියා';

  @override
  String get home_log_meal => 'ලොග් කෑම';

  @override
  String get home_log_water => 'ලොග් ජලය';

  @override
  String get home_log_workout => 'ලොග් ව්‍යායාම';

  @override
  String get home_log_weight => 'ලොග් බර';

  @override
  String get home_insights_title => 'අද තීක්ෂ්ණ බුද්ධිය';

  @override
  String get home_quote =>
      'කුඩා සෞඛ්ය සම්පන්න තේරීම් හිරිමල් පරිවර්තනයන් නිර්මාණය කරයි.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI පුහුණුකරු';

  @override
  String get home_surroundings => 'අවට සහ වාතය';

  @override
  String get home_notifications => 'දැනුම්දීම්';

  @override
  String get home_daily_score => 'දෛනික සුවතා ලකුණු';

  @override
  String get home_view_all => 'සියල්ල බලන්න';

  @override
  String get food_diary_title => 'ආහාර දිනපොත';

  @override
  String get food_breakfast => 'උදෑසන ආහාරය';

  @override
  String get food_lunch => 'දිවා ආහාරය';

  @override
  String get food_dinner => 'රාත්රී ආහාරය';

  @override
  String get food_snacks => 'ස්නැක්ස්';

  @override
  String get food_add_food => 'ආහාර එකතු කරන්න';

  @override
  String get food_edit_food => 'ආහාර සංස්කරණය කරන්න';

  @override
  String get food_add_breakfast => 'උදෑසන ආහාරය එකතු කරන්න';

  @override
  String get food_add_lunch => 'දිවා ආහාරය එකතු කරන්න';

  @override
  String get food_add_dinner => 'රාත්රී ආහාරය එකතු කරන්න';

  @override
  String get food_add_snack => 'Snack එකතු කරන්න';

  @override
  String get food_total_calories => 'මුළු කැලරි';

  @override
  String get food_empty_meal =>
      'මෙම ආහාරය සඳහා තවමත් කිසිදු ආහාරයක් ලොග් කර නොමැත';

  @override
  String get food_empty_diary =>
      'මෙම දිනය සඳහා කිසිදු ආහාර වේලක් ලොග් කර නොමැත';

  @override
  String get food_log_first_meal =>
      'ඔබේ පළමු රසවත් ආහාරය ලොග් කිරීමට + තට්ටු කරන්න';

  @override
  String get food_quick_add => 'ඉක්මන් එකතු කිරීම';

  @override
  String get food_search_hint => 'පිඟන්, පලතුරු, පරිප්පු, රොටි සොයන්න...';

  @override
  String get food_custom_recipe => 'අභිරුචි ආහාර සහ වට්ටෝරුව';

  @override
  String get food_scan_barcode => 'තීරු කේතය පරිලෝකනය කරන්න';

  @override
  String get food_camera_scan => 'AI ආහාර ස්කෑනරය';

  @override
  String get food_recent => 'මෑත ආහාර';

  @override
  String get food_favourites => 'ප්රියතම';

  @override
  String get food_macro_summary => 'සාර්ව පෝෂක බිඳවැටීම';

  @override
  String get food_delete_meal_confirm =>
      'ඔබට මෙම අයිතමය ඉවත් කිරීමට අවශ්‍ය බව විශ්වාසද?';

  @override
  String get food_item_deleted => 'ආහාර අයිතම ඉවත් කර ඇත';

  @override
  String get food_remaining => 'ඉතිරි';

  @override
  String get food_consumed => 'පරිභෝජනය කළා';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'ආහාර සොයන්න';

  @override
  String get foodSearch_scan_barcode => 'තීරු කේතය පරිලෝකනය කරන්න';

  @override
  String get foodSearch_take_photo => 'Snap Food ඡායාරූපය';

  @override
  String get foodSearch_custom_food => 'අභිරුචි ආහාර සාදන්න';

  @override
  String get foodSearch_recent_searches => 'මෑත සෙවුම්';

  @override
  String get foodSearch_popular => 'ජනප්රිය කෑම වර්ග';

  @override
  String get foodSearch_no_results => 'ඔබේ සෙවුමට ගැලපෙන ආහාර කිසිවක් නැත';

  @override
  String get barcode_title => 'තීරු කේත ස්කෑනරය';

  @override
  String get barcode_align => 'කැමරා රාමුව තුළ තීරු කේතය පෙළගස්වන්න';

  @override
  String get barcode_not_found => 'නිෂ්පාදිතය දත්ත සමුදායේ සොයාගත නොහැක';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro සමඟ තීරු කේත පරිලෝකනය ලබා ගත හැකිය';

  @override
  String get camera_title => 'AI ආහාර ස්කෑනරය';

  @override
  String get camera_tap_hint => 'ඔබේ ආහාරයේ පැහැදිලි ඡායාරූපයක් ගන්න';

  @override
  String get camera_analysing => 'ආහාර පිඟාන විශ්ලේෂණය කරමින්...';

  @override
  String get camera_detected => 'හඳුනාගත් අයිතම';

  @override
  String get camera_flash => 'ෆ්ලෑෂ් ටොගල් කරන්න';

  @override
  String get camera_retake => 'ඡායාරූපය නැවත ගන්න';

  @override
  String get camera_confirm_food => 'අයිතම තහවුරු කරන්න';

  @override
  String get customFood_title => 'අභිරුචි ආහාර සහ වට්ටෝරුව';

  @override
  String get customFood_name_hint => 'කෑමක් හෝ අමුද්රව්යයේ නම';

  @override
  String get customFood_calories_hint => 'කැලරි (kcal)';

  @override
  String get customFood_protein_hint => 'ප්රෝටීන් (g)';

  @override
  String get customFood_carbs_hint => 'කාබෝහයිඩ්රේට් (g)';

  @override
  String get customFood_fat_hint => 'මේදය (g)';

  @override
  String get customFood_save => 'වට්ටෝරුව සුරකින්න';

  @override
  String get water_tracker_title => 'ජල ට්රැකර්';

  @override
  String get water_daily_target => 'දෛනික සජලනය ඉලක්කය';

  @override
  String get water_logged_today => 'අද ලොග් විය';

  @override
  String get water_add_glass => '+250 ml වීදුරු';

  @override
  String get water_add_bottle => '+500 ml බෝතලයක්';

  @override
  String get water_custom_amount => 'අභිරුචි මුදල';

  @override
  String get water_reminder_tip =>
      'ස්ථාවර ශක්තියක් සඳහා දවස පුරා නිතිපතා ජලය පානය කරන්න.';

  @override
  String water_logged_toast(Object amount) {
    return 'ලොග් කරන ලද $amount ජලය 💧';
  }

  @override
  String get workout_title => 'ව්‍යායාම ලොගය';

  @override
  String get workout_add_exercise => 'ව්‍යායාම එකතු කරන්න';

  @override
  String get workout_cardio => 'කාඩියෝ';

  @override
  String get workout_strength => 'ශක්තිය';

  @override
  String get workout_yoga => 'යෝග සහ නම්‍යශීලී බව';

  @override
  String get workout_duration => 'කාලසීමාව';

  @override
  String get workout_intensity => 'තීව්රතාව';

  @override
  String get workout_calories_burned => 'කැලරි දහනය';

  @override
  String get workout_empty => 'අද ව්‍යායාම කිසිවක් ලොග් වී නොමැත';

  @override
  String get workout_save_success => 'ව්‍යායාමය සාර්ථකව සුරැකිණි!';

  @override
  String get workout_type => 'ව්‍යායාම වර්ගය';

  @override
  String get workout_notes => 'සටහන් සහ පරාවර්තන';

  @override
  String get health_overview_title => 'සෞඛ්‍ය සහ ජීව ද්‍රව්‍ය';

  @override
  String get health_heart_rate => 'හෘද ස්පන්දන වේගය';

  @override
  String get health_blood_oxygen => 'රුධිර ඔක්සිජන් (SpO2)';

  @override
  String get health_blood_pressure => 'රුධිර පීඩනය';

  @override
  String get health_blood_glucose => 'රුධිර ග්ලූකෝස්';

  @override
  String get health_body_temperature => 'ශරීර උෂ්ණත්වය';

  @override
  String get health_sleep_tracking => 'Sleep Tracking';

  @override
  String get health_weight_tracking => 'බර සහ ශරීර සංයුතිය';

  @override
  String get health_waist_hip => 'ඉණ සිට උකුල දක්වා අනුපාතය';

  @override
  String get health_devices_hub => 'උපාංග සහ Smartwatch Hub';

  @override
  String get health_sync_now => 'සෞඛ්‍ය දත්ත සමමුහුර්ත කරන්න';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'අවසන් වරට සමමුහුර්ත කළේ: $time';
  }

  @override
  String get health_manual_entry => 'අතින් සෞඛ්‍ය ප්‍රවේශය';

  @override
  String get health_metric_detail => 'මෙට්රික් විස්තර';

  @override
  String get health_connected_sensors => 'සම්බන්ධිත සෞඛ්‍ය සංවේදක';

  @override
  String get plan_title => 'දෛනික සැලැස්ම';

  @override
  String get plan_weekly_title => 'සතිපතා සුවතා සැලැස්ම';

  @override
  String get plan_calorie_target => 'කැලරි ඉලක්කය';

  @override
  String get plan_water_target => 'සජලනය ඉලක්කය';

  @override
  String get plan_step_target => 'පියවර ඉලක්කය';

  @override
  String get plan_sleep_target => 'නින්ද ඉලක්කය';

  @override
  String get plan_meal_suggestions => 'ආහාර යෝජනා';

  @override
  String get plan_healthy_habits => 'සෞඛ්‍ය සම්පන්න පුරුදු සහ ඉඟි';

  @override
  String get plan_coach_advice => 'Bloomi AI පුහුණුකරු නිර්දේශ';

  @override
  String get plan_generated_title => 'පුද්ගලීකරණය කළ දෛනික කාලසටහන';

  @override
  String get profile_title => 'පැතිකඩ';

  @override
  String get profile_edit => 'පැතිකඩ සංස්කරණය කරන්න';

  @override
  String get profile_name => 'නම';

  @override
  String get profile_age => 'වයස';

  @override
  String get profile_gender => 'ලිංගභේදය';

  @override
  String get profile_height => 'උස';

  @override
  String get profile_weight => 'බර';

  @override
  String get profile_goal => 'මූලික ඉලක්කය';

  @override
  String get profile_activity_level => 'ක්‍රියාකාරකම් මට්ටම';

  @override
  String get profile_stats => 'මගේ සුවතා සංඛ්‍යාලේඛන';

  @override
  String get profile_saved => 'පැතිකඩ සාර්ථකව යාවත්කාලීන කරන ලදී';

  @override
  String get profile_bmi => 'ශරීර ස්කන්ධ දර්ශකය (BMI)';

  @override
  String get profile_membership => 'සාමාජිකත්වය';

  @override
  String get settings => 'සැකසීම්';

  @override
  String get preferences_habits => 'මනාප සහ පුරුදු';

  @override
  String get appearance_theme => 'පෙනුම සහ තේමාව';

  @override
  String get appearance_theme_sub =>
      'අඳුරු, සැහැල්ලු, පද්ධති මාදිලිය සහ යෙදුම් පසුබිම් විකල්ප';

  @override
  String get permissions => 'අවසර සහ පද්ධති ප්‍රවේශය';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'මතක් කිරීම් සහ දැනුම්දීම්';

  @override
  String get reminders_sub =>
      'ආහාර වේලාවන්, ජලය, බර පරීක්ෂා කිරීම සහ නින්දට යාමේ මතක් කිරීම්';

  @override
  String get units_of_measurement => 'මිනුම් ඒකක';

  @override
  String get units_sub =>
      'මෙට්රික් (kg, cm, ml, km) හෝ Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'යෙදුම් භාෂාව';

  @override
  String get language_sub =>
      'ඉංග්‍රීසි, හින්දි (හින්දි), හිංග්ලිෂ් සහ 195+ ගෝලීය භාෂා';

  @override
  String get home_screen_widgets => 'මුල් තිර විජට්';

  @override
  String get widgets_sub =>
      'සජීවී Android widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub => 'Smartwatch සහකාරිය, උළු, සංකූලතා සහ සජීවී වැදගත්';

  @override
  String get goals_wellness => 'ඉලක්ක සහ සුවතා තීක්ෂ්ණ බුද්ධිය';

  @override
  String get nutrition_targets => 'පෝෂණ ඉලක්ක සහ සාර්ව බෙදීම';

  @override
  String get nutrition_targets_sub =>
      'කැලරි ඉලක්කය, ප්‍රෝටීන්, කාබෝහයිඩ්‍රේට්, මේදය සහ ජල ඉලක්කය';

  @override
  String get weekly_recap => 'සතිපතා සුවතා නැවත බැලීම';

  @override
  String get weekly_recap_sub =>
      'දින 7ක කැලරි සාමාන්‍යය, සාර්ව අනුපාතය සහ හොඳම දිනය';

  @override
  String get streaks_milestones => 'ඉරි සහ සන්ධිස්ථාන';

  @override
  String get streaks_sub => 'සක්‍රීය මල් ඉරි, ලාංඡන සහ ජයග්‍රහණ';

  @override
  String get connected_devices => 'සම්බන්ධිත උපාංග සහ පරිසර පද්ධතිය';

  @override
  String get devices_hub => 'උපාංග සහ Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'අවට සහ කාලගුණය';

  @override
  String get surroundings_sub =>
      'වාතයේ ගුණාත්මකභාවය (AQI), UV දර්ශකය සහ කාලගුණ සජලනය ඉඟි';

  @override
  String get bloomi_pro => 'Bloomi Pro දායකත්වය';

  @override
  String get bloomi_pro_sub =>
      'AI සැලසුම් පුහුණුකරු, මුල් තිර විජට් 5ක් සහ අත්‍යවශ්‍ය ලුහුබැඳීම';

  @override
  String get about_security => 'ගැන සහ ආරක්ෂාව';

  @override
  String get about_bloomi => 'බ්ලූමි ගැන';

  @override
  String get about_bloomi_sub => 'පිරිවිතර, අනුවාදය, ගුණාංග ගොඩනැගීම';

  @override
  String get privacy_policy => 'රහස්‍යතා ප්‍රතිපත්තිය';

  @override
  String get privacy_policy_sub =>
      'නොබැඳි-පළමු, උපාංගය මත දත්ත ගෘහ නිර්මාණ ශිල්පය';

  @override
  String get terms_conditions => 'නියම සහ කොන්දේසි';

  @override
  String get terms_conditions_sub => 'සේවා නියම සහ සුවතා මාර්ගෝපදේශ';

  @override
  String get delete_account => 'ගිණුම සහ දත්ත මකන්න';

  @override
  String get delete_account_sub =>
      'දේශීය SQLite දත්ත සහ වලාකුළු උපස්ථ ආපසු හැරවිය නොහැකි ලෙස මකන්න';

  @override
  String get healthy_habits => 'මෘදු, කල් පවත්නා සුවතා පුරුදු ගොඩනඟන්න';

  @override
  String get all_logs => 'මගේ නිරීක්ෂණය කළ දත්ත සහ ලොග';

  @override
  String get search_language => 'භාෂාව හෝ ස්වදේශීය අක්ෂර අනුව සොයන්න...';

  @override
  String get languages_available => 'පවතින භාෂා';

  @override
  String get no_matching_languages => 'ගැළපෙන භාෂා හමු නොවීය';

  @override
  String get try_searching =>
      'ස්වදේශීය අක්ෂර හෝ ඉංග්‍රීසි අක්ෂර වින්‍යාසයෙන් සෙවීමට උත්සාහ කරන්න';

  @override
  String get partially_translated => 'අර්ධ වශයෙන් පරිවර්තනය කර ඇත';

  @override
  String get complete_translation => 'සම්පූර්ණයි';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'භාෂාව $name ($nativeName) ලෙස සකසා ඇත';
  }

  @override
  String get surroundings_title => 'වටපිටාව සහ පරිසරය';

  @override
  String get surroundings_aqi => 'වායු තත්ත්ව දර්ශකය';

  @override
  String get surroundings_uv => 'UV දර්ශකය';

  @override
  String get surroundings_temp => 'උෂ්ණත්වය';

  @override
  String get surroundings_humidity => 'ආර්ද්රතාවය';

  @override
  String get surroundings_hydration_advice =>
      'වත්මන් කාලගුණික තත්ත්වයන් තුළ හොඳින් සජලනය වන්න.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'ආහාර සොයන්න';

  @override
  String get food_quick_barcode => 'තීරු කේතය ස්කෑන් කරන්න 👑';

  @override
  String get food_quick_water => 'වතුර එකතු කරන්න';

  @override
  String get food_quick_custom => 'අභිරුචි ආහාර';

  @override
  String get surroundings_good => 'හොඳයි';

  @override
  String get surroundings_moderate => 'මධ්යස්ථ';

  @override
  String get surroundings_unhealthy => 'සෞඛ්යයට අහිතකරයි';

  @override
  String get notifications_title => 'දැනුම්දීම් සහ ඇඟවීම්';

  @override
  String get notifications_empty => 'නව දැනුම්දීම් නැත';

  @override
  String get notifications_mark_read => 'සියල්ල කියවූ ලෙස ලකුණු කරන්න';

  @override
  String get notifications_clear => 'සියල්ල හිස් කරන්න';

  @override
  String get reminders => 'සිහිකැඳවීම් සැකසීම්';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'උදෑසන ආහාර මතක් කිරීම 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'සුභ උදෑසනක්! පෝෂ්‍යදායී උදෑසන ආහාරය සඳහා වේලාව $time ට.';
  }

  @override
  String get reminders_lunch_title => 'දිවා ආහාර මතක් කිරීම 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'විරාමයක් තබා $time හි සමබර, සිහිකල්පනාවෙන් යුත් දිවා ආහාරය භුක්ති විඳින්න.';
  }

  @override
  String get reminders_dinner_title => 'රාත්‍රී ආහාර මතක් කිරීම 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'සැහැල්ලු, තෘප්තිමත් රාත්‍රී ආහාරය සඳහා වේලාව $time ට.';
  }

  @override
  String get reminders_water_title => 'හයිඩ්‍රේෂන් නජ් 💧';

  @override
  String reminders_water_body(Object time) {
    return 'නැවුම් වතුර වීදුරුවක් පානය කිරීමට කාලයයි! ($time)';
  }

  @override
  String get reminders_weight_title => 'සතිපතා කිරා මැන බැලීම ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ($time) හි ඔබේ සතිපතා ශරීර මිනුම් නිරීක්ෂණය කරන්න.';
  }

  @override
  String get reminders_sleep_title => 'නින්දට යාමේ සුලං 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'විවේකී නින්දක් සඳහා සූදානම් වන්න ($time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi වෙත සාදරයෙන් පිළිගනිමු';

  @override
  String get onboard_sub =>
      'ඔබේ මිත්‍රශීලී, නොබැඳි-පළමු සෞඛ්‍ය සහ පෝෂණ සහකාරිය.';

  @override
  String get onboard_get_started => 'ආරම්භ කරන්න';

  @override
  String get onboard_sign_in => 'පුරනය වන්න';

  @override
  String get onboard_skip => 'මඟ හරින්න';

  @override
  String get onboard_choose_goal => 'ඔබේ මූලික සුවතා ඉලක්කය කුමක්ද?';

  @override
  String get onboard_goal_weight_loss => 'මෘදු බර අඩු වීම';

  @override
  String get onboard_goal_muscle => 'මාංශ පේශි ලබා ගැනීම සහ ශක්තිය';

  @override
  String get onboard_goal_energy => 'දෛනික ශක්තිය සහ ජීව ශක්තිය';

  @override
  String get onboard_goal_habits => 'සෞඛ්ය සම්පන්න සිහිකල්පනාවෙන් ආහාර ගැනීම';

  @override
  String get onboard_about_you => 'ඔබ ගැන අපට කියන්න';

  @override
  String get onboard_lifestyle => 'ඔබේ දෛනික චර්යාව';

  @override
  String get onboard_permissions_title => 'අවසර සහ පද්ධති ප්‍රවේශය';

  @override
  String get onboard_permissions_sub =>
      'සමමුහුර්ත කිරීමේ පියවර, ව්‍යායාම සහ සිහිකැඳවීම් සඳහා ප්‍රවේශය ලබා දෙන්න.';

  @override
  String get onboard_plan_ready_title => 'ඔබේ අභිරුචි සැලැස්ම සූදානම්!';

  @override
  String get onboard_plan_ready_sub =>
      'අපි ඔබ වෙනුවෙන්ම මෘදු, පෞද්ගලීකරණය කළ පෝෂණය සහ සුවතා මාර්ග සිතියමක් සකස් කළෙමු.';

  @override
  String get onboard_enter_bloomi => 'බ්ලූමි ඇතුළු කරන්න';

  @override
  String get insights_weekly_report => 'සතිපතා සුවතා නැවත බැලීම';

  @override
  String insights_best_day(Object day) {
    return 'හොඳම අනුකූලතා දිනය: $day';
  }

  @override
  String get insights_streaks_badges => 'ඉරි සහ සන්ධිස්ථාන';

  @override
  String insights_unlocked_on(Object date) {
    return '$date මත අගුලු හරින ලදී';
  }

  @override
  String get insights_keep_going => 'අපූරු ප්‍රගතිය දිගටම කරගෙන යන්න!';

  @override
  String get widgets_title => 'මුල් තිර විජට්';

  @override
  String widgets_active_count(Object count) {
    return 'සක්‍රිය විජට්: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'පියවර සහ ක්රියාකාරී මුද්ද';

  @override
  String get widgets_water_title => 'සජලනය ඉක්මන් ලොගය';

  @override
  String get widgets_mascot_title => 'බ්ලූමි මැස්කොට් සහකාරිය';

  @override
  String get wear_os_title => 'OS Smartwatch පළඳින්න';

  @override
  String get wear_os_connected => 'නැරඹීමට සම්බන්ධයි';

  @override
  String get wear_os_sync => 'ඔරලෝසු දත්ත සමමුහුර්ත කරන්න';

  @override
  String get theme_title => 'පෙනුම සහ තේමාව';

  @override
  String get theme_mode => 'තේමා මාදිලිය';

  @override
  String get theme_light => 'ආලෝකය';

  @override
  String get theme_dark => 'අඳුරු';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'පසුබිම් තලය';

  @override
  String get units_title => 'මිනුම් ඒකක';

  @override
  String get units_metric => 'මෙට්රික් (kg, cm, ml)';

  @override
  String get units_imperial => 'අධිරාජ්‍ය (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'උපකරණ පුවරුව පූරණය කළ නොහැක';

  @override
  String get home_health_permission_req => 'Health Connect අවසරය අවශ්‍යයි';

  @override
  String get home_health_permission_desc =>
      'Bloomi හට සැබෑ පියවර, හෘද ස්පන්දන වේගය සහ ජංගම නිවාස විජට් තථ්‍ය කාලය තුළ සමමුහුර්ත කිරීමට Health Connect අවසරය අවශ්‍ය වේ.';

  @override
  String get home_allow_health => 'සෞඛ්‍ය සම්බන්ධතාවයට ඉඩ දෙන්න';

  @override
  String get home_ready_mindful_day =>
      'සිහිකල්පනාවෙන් යුතුව දවසක් සඳහා සූදානම්ද? ✨';

  @override
  String get home_quick_add => 'ඉක්මන් එකතු කිරීම';

  @override
  String get home_live_gps => 'සජීවී ජීපීඑස්';

  @override
  String get home_calories_remaining_label => 'කැලරි ඉතිරි';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'ආහාරයට ගත්: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'ජල ට්‍රැකර් 💧 සඳහා තට්ටු කරන්න';

  @override
  String get home_water_goal_reached => '🎉 දෛනික ඉලක්කය කරා ළඟා විය';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'දෛනික ඉලක්කයට $remaining ml';
  }

  @override
  String get home_details => 'විස්තර';

  @override
  String get home_upgrade_plan_desc =>
      'පෞද්ගලීකරණය කළ දෛනික ඉලක්ක සහ AI සැලැස්ම විවෘත කිරීමට උත්ශ්‍රේණි කරන්න';

  @override
  String get home_unlock => 'Unlock 👑';

  @override
  String get home_quick_log_hint => 'සුවතා ප්‍රවේශයක් ඉක්මනින් වාර්තා කරන්න';

  @override
  String get food_serving_size => 'සේවා ප්‍රමාණය';

  @override
  String get food_serving_grams => 'සේවය (උ)';

  @override
  String get food_number_servings => 'සේවා ගණන';

  @override
  String get food_calories_per_serving => 'සේවය සඳහා කැලරි';

  @override
  String get food_recipe_ingredients => 'අමුද්රව්ය';

  @override
  String get food_recipe_add_ingredient => 'අමුද්රව්ය එකතු කරන්න';

  @override
  String get food_recipe_directions => 'උපදෙස් සහ සටහන්';

  @override
  String get food_recipe_total => 'සම්පූර්ණ වට්ටෝරුව පෝෂණය';

  @override
  String get food_recipe_per_serving => 'සේවය කරන පෝෂණය අනුව';

  @override
  String get food_recipe_saved_toast => 'අභිරුචි ආහාර සාර්ථකව සුරැකේ!';

  @override
  String get food_barcode_found => 'නිෂ්පාදනය හමු විය!';

  @override
  String get food_barcode_not_found_desc =>
      'අපට විවෘත දත්ත ගබඩාවේ මෙම තීරු කේතය සොයාගත නොහැකි විය. ඔබට එය අභිරුචි ආහාරයක් ලෙස එකතු කළ හැකිය.';

  @override
  String get food_add_custom_btn => 'අභිරුචි ආහාර එකතු කරන්න';

  @override
  String get food_scan_again => 'නැවත ස්කෑන් කරන්න';

  @override
  String get food_review_items => 'අනාවරණය කරගත් ආහාර සමාලෝචනය කරන්න';

  @override
  String get food_review_hint =>
      'ප්‍රමාණ සකසන්න හෝ හඳුනා නොගත් අයිතමයක් ඉවත් කරන්න';

  @override
  String get food_log_selected => 'ලොග් තෝරාගත් ආහාර';

  @override
  String get food_favourites_title => 'ප්රියතම ආහාර';

  @override
  String get food_recent_title => 'මෑත ආහාර';

  @override
  String get food_no_favourites =>
      'තවමත් ප්‍රියතම ආහාර නොමැත. මෙහි සුරැකීමට ඕනෑම ආහාරයක් මත හදවතට තට්ටු කරන්න.';

  @override
  String get food_no_recents => 'මෑතකදී ලොග් කළ ආහාර කිසිවක් හමු නොවීය.';

  @override
  String get food_nutrition_details_title => 'දෛනික පෝෂණය පිළිබඳ විස්තර';

  @override
  String get food_macro_protein_label => 'ප්රෝටීන් බිඳවැටීම';

  @override
  String get food_macro_carbs_label => 'කාබෝහයිඩ්රේට් බිඳවැටීම';

  @override
  String get food_macro_fat_label => 'මේදය බිඳවැටීම';

  @override
  String get food_macro_fiber_label => 'තන්තු බිඳවැටීම';

  @override
  String get food_daily_target_comparison => 'ඉලක්ක සංසන්දනය';

  @override
  String food_target_label(Object target) {
    return 'ඉලක්කය: $target';
  }

  @override
  String get food_edit_entry => 'දිනපොත සටහන සංස්කරණය කරන්න';

  @override
  String get food_delete_entry => 'ඇතුළත් කිරීම මකන්න';

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
    return '$current න් $target ml';
  }

  @override
  String get water_intake_history => 'අද ජල සටහන';

  @override
  String get water_no_logs_today =>
      'අදටත් වතුර වැටිලා නැහැ. හයිඩ්‍රේට් කර ඉක්මන් එකතු කිරීමේ බොත්තමක් තට්ටු කරන්න!';

  @override
  String get water_adjust_goal => 'දෛනික ඉලක්කය සකස් කරන්න';

  @override
  String get health_connect_banner => 'Health Connect වෙත සම්බන්ධයි';

  @override
  String get health_vitals_summary => 'දෛනික සෞඛ්‍ය වැදගත්කම';

  @override
  String get health_latest_heart_rate => 'නවතම හෘද ස්පන්දන වේගය';

  @override
  String get health_latest_bp => 'රුධිර පීඩනය';

  @override
  String get health_latest_spo2 => 'රුධිර ඔක්සිජන්';

  @override
  String get health_latest_glucose => 'රුධිර ග්ලූකෝස්';

  @override
  String get health_latest_weight => 'බර';

  @override
  String get health_latest_sleep => 'නින්දේ කාලසීමාව';

  @override
  String get health_add_manual => 'අතින් මැනීම එකතු කරන්න';

  @override
  String get health_history_trends => 'ඓතිහාසික ප්රවණතා';

  @override
  String get health_sync_success => 'සෞඛ්‍ය දත්ත සාර්ථකව සමමුහුර්ත විය!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours පැය $mins මිනිත්තු';
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
  String get health_devices_title => 'සම්බන්ධිත උපාංග සහ පැළඳිය හැකි උපකරණ';

  @override
  String get health_devices_desc =>
      'යුගල කළ ස්මාර්ට් ඔරලෝසු, යෝග්‍යතා ට්‍රැකර් සහ සෞඛ්‍ය සංවේදක කළමනාකරණය කරන්න.';

  @override
  String get health_workout_editor_title => 'ව්‍යායාම සංස්කරණය කරන්න';

  @override
  String get health_workout_name_label => 'ව්‍යායාම නාමය';

  @override
  String get health_workout_duration_label => 'කාල සීමාව (විනාඩි)';

  @override
  String get health_workout_calories_label => 'ඇස්තමේන්තුගත කැලරි (kcal)';

  @override
  String get health_workout_date_label => 'දිනය සහ වේලාව';

  @override
  String get plan_daily_wellness_roadmap => 'ඔබේ පුද්ගලීකරණය කළ මාර්ග සිතියම';

  @override
  String get plan_morning_routine => 'උදෑසන චර්යාව';

  @override
  String get plan_afternoon_routine => 'දහවල් සුවය';

  @override
  String get plan_evening_routine => 'සන්ධ්යා සුළං-පහළ';

  @override
  String get plan_coach_badge => 'Bloomi AI පුහුණුකරු';

  @override
  String get plan_weekly_overview => 'දින 7 සුවතා අවධානය';

  @override
  String get plan_targets_title => 'සුවතා ඉලක්ක සහ ඉලක්ක';

  @override
  String get plan_calorie_budget_label => 'දෛනික කැලරි අයවැය';

  @override
  String get plan_water_budget_label => 'දෛනික ජල ඉලක්කය';

  @override
  String get plan_step_budget_label => 'දෛනික පියවර ඉලක්කය';

  @override
  String get plan_macro_split_label => 'සාර්ව පෝෂක අනුපාතය';

  @override
  String get profile_personal_details => 'පුද්ගලික විස්තර';

  @override
  String get profile_body_stats => 'ශරීර මිනුම්';

  @override
  String get profile_app_preferences => 'මනාප සහ යෙදුම් සැකසීම්';

  @override
  String get profile_edit_name_hint => 'ඔබේ නම';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'උස ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'බර ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'වයස';

  @override
  String get profile_gender_male => 'පිරිමි';

  @override
  String get profile_gender_female => 'ගැහැණු';

  @override
  String get profile_gender_other => 'වෙනත් / නොකියන්න කැමති';

  @override
  String get profile_activity_sedentary => 'වාඩි වී සිටීම (ව්‍යායාම නැති තරම්)';

  @override
  String get profile_activity_light => 'සැහැල්ලුවෙන් ක්රියාකාරී (දින 1-3/සතිය)';

  @override
  String get profile_activity_moderate => 'මධ්‍යස්ථ ක්‍රියාකාරී (දින 3-5/සතිය)';

  @override
  String get profile_activity_very => 'ඉතා ක්‍රියාකාරී (දින 6-7/සතිය)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'කැලරි, ජලය සහ පියවර දෙස බැලීමට ඔබේ Wear OS ඔරලෝසුවේ Bloomi ටයිල් සහ සංකූලතාව ස්ථාපනය කරන්න.';

  @override
  String get settings_widgets_header => 'අන්තර් ක්රියාකාරී Android Widgets';

  @override
  String get settings_widgets_desc =>
      'ක්ෂණික යාවත්කාලීන සඳහා ඔබගේ උපාංග මුල් තිරයේ තත්‍ය කාලීන විජට් අමුණන්න.';

  @override
  String get settings_about_header => 'බ්ලූමි ගැන';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '100 හදන්න';

  @override
  String get settings_about_credits =>
      'කල්පනාකාරී, සෞඛ්‍ය සම්පන්න ජීවිතයක් සඳහා සැලකිල්ලෙන් නිර්මාණය කර ඇත.';

  @override
  String get settings_terms_header => 'නියමයන් සහ කොන්දේසි';

  @override
  String get settings_privacy_header => 'රහස්‍යතා ප්‍රතිපත්තිය';

  @override
  String get settings_delete_header => 'ගිණුම සහ දත්ත මකන්න';

  @override
  String get settings_delete_warning =>
      'මෙම ක්‍රියාව පසුගමනය කළ නොහැක. ඔබගේ සියලුම ආහාර, ව්‍යායාම, වැදගත්, සහ පැතිකඩ ස්ථිරවම මකනු ඇත.';

  @override
  String get settings_delete_confirm_btn => 'ස්ථිරවම මකන්න';

  @override
  String get onboard_welcome_headline => 'Bloomi ✨ වෙත සාදරයෙන් පිළිගනිමු';

  @override
  String get onboard_welcome_tagline =>
      'ඔබේ ජීවිතය වටා නිර්මාණය කර ඇති මෘදු, සිහිකල්පනාවෙන් යුත් සුවතා ලුහුබැඳීම.';

  @override
  String get onboard_step_about => 'ඔබ ගැන';

  @override
  String get onboard_step_goals => 'ඔබේ ඉලක්ක';

  @override
  String get onboard_step_lifestyle => 'දෛනික පුරුදු';

  @override
  String get onboard_step_permissions => 'අවසර';

  @override
  String get onboard_step_plan => 'සූදානම්!';

  @override
  String get onboard_health_connect_perm => 'සෞඛ්‍ය සම්බන්ධතා ප්‍රවේශය';

  @override
  String get onboard_step_sensors_perm => 'පියවර කවුන්ටර සංවේදකය';

  @override
  String get onboard_notif_perm => 'සිහිකල්පනාවෙන් මතක් කිරීම් සහ දැනුම්දීම්';

  @override
  String get onboard_camera_perm => 'කැමරාව (බාර්කෝඩ් සහ ආහාර ස්කෑනරය)';

  @override
  String get onboard_grant_permissions => 'අවසර ලබා දෙන්න';

  @override
  String get onboard_continue_dashboard => 'උපකරණ පුවරුව විවෘත කරන්න';

  @override
  String get notif_channel_hydration_name => 'සජලනය නූඩ්ස්';

  @override
  String get notif_channel_hydration_desc => 'දවස පුරා මෘදු ජල මතක් කිරීම්';

  @override
  String get notif_channel_nutrition_name => 'ආහාර සහ පෝෂණ මතක් කිරීම්';

  @override
  String get notif_channel_nutrition_desc =>
      'උදේ ආහාරය, දිවා ආහාරය සහ රාත්‍රී ආහාරය සිහිකැඳවීම් ඇඟවීම්';

  @override
  String get notif_channel_steps_name => 'පියවර සන්ධිස්ථාන';

  @override
  String get notif_channel_steps_desc =>
      'දෛනික පියවර ඉලක්ක කරා ළඟා වන විට සැමරුම්';

  @override
  String get notif_channel_vitals_name => 'සෞඛ්‍ය සහ අත්‍යවශ්‍ය පරීක්ෂණ';

  @override
  String get notif_channel_vitals_desc =>
      'බර සහ නින්දට යන විට සුලබ සිහිකැඳවීම්';

  @override
  String get notif_action_log_water => '💧 ලොගය +250ml';

  @override
  String get notif_action_snooze => 'මීටර් 15 ක් මදක් නිදි කරන්න';

  @override
  String get notif_action_log_meal => '🥗 ලොග් කෑම';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
