// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tigrinya (`ti`).
class AppLocalizationsTi extends AppLocalizations {
  AppLocalizationsTi([String locale = 'ti']) : super(locale);

  @override
  String get app_name => 'ብሉሚ';

  @override
  String get nav_home => 'ገዛ';

  @override
  String get nav_today => 'ሎሚ';

  @override
  String get nav_plan => 'ውጥን ውጥን';

  @override
  String get nav_food => 'መግቢ';

  @override
  String get nav_food_diary => 'ዳያሪ መግቢ';

  @override
  String get nav_workout => 'ስፖርታዊ ምንቅስቓስ ሎግ';

  @override
  String get nav_health => 'ጥዕና';

  @override
  String get nav_profile => 'ፕሮፋይል';

  @override
  String get save => 'ዕቅብ';

  @override
  String get cancel => 'ስርዝ ድልዝ';

  @override
  String get delete => 'ምድምሳስ';

  @override
  String get edit => 'ኣርትዖት።';

  @override
  String get done => 'ተፈጺሙ';

  @override
  String get close => 'ዕጸዎ።';

  @override
  String get back => 'ንድሕሪት ተመሊስና።';

  @override
  String get next => 'ቀጺሉ።';

  @override
  String get continue_btn => 'ቀጽል';

  @override
  String get confirm => 'ኣረጋግጽ';

  @override
  String get search => 'ድለዩ።';

  @override
  String get filter => 'ፍልተር';

  @override
  String get all => 'ኩሉ...';

  @override
  String get active => 'ንጡፍ';

  @override
  String get today => 'ሎሚ';

  @override
  String get yesterday => 'ትማሊ';

  @override
  String get tomorrow => 'ጽባሕ';

  @override
  String get add => 'ወስኽ';

  @override
  String get remove => 'ኣውጽእዎ።';

  @override
  String get refresh => 'ምሕዳስ';

  @override
  String get retry => 'ዳግማይ ፈትን።';

  @override
  String get error => 'ጌጋ';

  @override
  String get success => 'ዓወት';

  @override
  String get loading => 'ኣብ ምጽዓን...';

  @override
  String get no_data => 'ዳታ የለን';

  @override
  String get offline => 'ካብ መስመር ወጻኢ ሞድ';

  @override
  String get offline_sub => 'ለውጥታት ዳግማይ ምስ ተተሓሓዙ ክሰማምዑ እዮም።';

  @override
  String get undo => 'ንድሕሪት ምምላስ';

  @override
  String get portion => 'ክፋል';

  @override
  String get quantity => 'ብዝሒ';

  @override
  String get unit => 'ኣሃዱ';

  @override
  String get clear => 'ንጹር እዩ።';

  @override
  String get select => 'ምረጽ';

  @override
  String get apply => 'ኣመልክቱ';

  @override
  String get reset => 'ዳግማይ ምትካል';

  @override
  String get ok => 'እሺ';

  @override
  String get yes => 'እወ';

  @override
  String get no => 'ኣይፋልን።';

  @override
  String get optional => 'ኣማራጺ እዩ።';

  @override
  String get calories => 'ካሎሪ';

  @override
  String get protein => 'ፕሮቲን';

  @override
  String get carbs => 'ካርቦሃይድሬት';

  @override
  String get fat => 'ስብሒ';

  @override
  String get fiber => 'ፋይበር';

  @override
  String get water => 'ማይ';

  @override
  String get steps => 'ስጉምትታት';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'ሰ';

  @override
  String get milliliters => 'ሚ.ሊ';

  @override
  String get kilograms => 'ኪ.ግ';

  @override
  String get pounds => 'ፓውንድ';

  @override
  String get centimeters => 'ሴ.ሜ';

  @override
  String get inches => 'ኣብ...';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ሰዓት';

  @override
  String get minutes => 'ደቒቕ';

  @override
  String get serving => 'ምግልጋል';

  @override
  String get servings => 'ኣገልግሎት ምሃብ';

  @override
  String get serving_size => 'መጠን ኣገልግሎት';

  @override
  String get per_100g => 'ኣብ 100ግ';

  @override
  String get india => 'ህንዲ';

  @override
  String get asia => 'ኤስያ';

  @override
  String get europe => 'ኤውሮጳ';

  @override
  String get middle_east => 'ማእከላይ ምብራቕ';

  @override
  String get africa => 'ኣፍሪቃ';

  @override
  String get americas => 'ኣሜሪካ';

  @override
  String get home_title => 'ገዛ';

  @override
  String get home_greeting_morning => 'ሰናይ ንጉሆ';

  @override
  String get home_greeting_afternoon => 'ሰናይ ድሕሪ ቀትሪ';

  @override
  String get home_greeting_evening => 'ሰናይ ምሸት';

  @override
  String get home_streak_title => 'ዕምባባ ስትሪክ';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count መዓልታት ተኸታታሊ',
      one: '1 መዓልቲ ተኸታታሊ',
      zero: '0 መዓልቲ ተኸታታሊ',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'ተቓጺሉ።';

  @override
  String get home_calories_budget => 'ባጀት ካሎሪ';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ኪሎ ካሎሪ ተሪፉ ኣሎ።';
  }

  @override
  String get home_water_title => 'መዓልታዊ ማይ ምውሳድ';

  @override
  String home_water_goal(Object current, Object target) {
    return '__ፒኤች_0__ / __ፒኤች_1__ ሚሊ ሊትር';
  }

  @override
  String get home_steps_title => 'ስጉምትታት ተጓዒዞም';

  @override
  String get home_quick_actions => 'ቅልጡፍ ተግባራት';

  @override
  String get home_log_meal => 'ሎግ መግቢ';

  @override
  String get home_log_water => 'ማይ ዕንጨይቲ';

  @override
  String get home_log_workout => 'ሎግ ስፖርታዊ ምንቅስቓስ';

  @override
  String get home_log_weight => 'ክብደት ዕንጨይቲ';

  @override
  String get home_insights_title => 'ናይ ሎሚ ርድኢት';

  @override
  String get home_quote => 'ንኣሽቱ ጥዑያት ምርጫታት ዝዕምብብ ለውጢ ይፈጥሩ።';

  @override
  String get home_ai_coach_tip => 'ኣሰልጣኒ ብሉሚ ኤ.ኣይ';

  @override
  String get home_surroundings => 'ከባቢ & ኣየር';

  @override
  String get home_notifications => 'መፍለጢታት';

  @override
  String get home_daily_score => 'መዓልታዊ ውጽኢት ጥዕና';

  @override
  String get home_view_all => 'ንኹሉ ርአ';

  @override
  String get food_diary_title => 'ዳያሪ መግቢ';

  @override
  String get food_breakfast => 'ቁርሲ';

  @override
  String get food_lunch => 'ምሳሕ';

  @override
  String get food_dinner => 'ድራር';

  @override
  String get food_snacks => 'ምቁር መግቢ';

  @override
  String get food_add_food => 'መግቢ ምውሳኽ';

  @override
  String get food_edit_food => 'መግቢ ኣርትዕ';

  @override
  String get food_add_breakfast => 'ቁርሲ ወስኹሉ።';

  @override
  String get food_add_lunch => 'ምሳሕ ወስኹሉ።';

  @override
  String get food_add_dinner => 'ድራር ወስኹሉ።';

  @override
  String get food_add_snack => 'ስናክ ወስኹሉ።';

  @override
  String get food_total_calories => 'ጠቕላላ ካሎሪ';

  @override
  String get food_empty_meal => 'ነዚ መግቢ ክሳብ ሕጂ ዝተመዝገበ መግቢ የለን';

  @override
  String get food_empty_diary => 'ነዛ መዓልቲ እዚኣ ዝኾነ መግቢ ኣይተመዝገበን።';

  @override
  String get food_log_first_meal => '+ ጠውቕ ናይ መጀመርታ ጥዑም መግቢኻ ንምምዝጋብ';

  @override
  String get food_quick_add => 'ቅልጡፍ ምውሳኽ';

  @override
  String get food_search_hint => 'ድሌታት ድስቲ፡ ፍረታት፡ ዳል፡ ሮቲ...';

  @override
  String get food_custom_recipe => 'ብሕታዊ መግቢ & ኣሰራርሓ መግቢ';

  @override
  String get food_scan_barcode => 'ስካን ባርኮድ';

  @override
  String get food_camera_scan => 'AI መግቢ ስካነር';

  @override
  String get food_recent => 'ናይ ቀረባ እዋን መግብታት';

  @override
  String get food_favourites => 'ዝፈትዎም';

  @override
  String get food_macro_summary => 'ምብትታን ማክሮነተርየንት (Macronutrient Breakdown)';

  @override
  String get food_delete_meal_confirm => 'ነዚ ኣቕሓ ከተውጽእዎ ከም እትደልዩ ርግጸኛታት ዲኹም?';

  @override
  String get food_item_deleted => 'ናይ መግቢ ኣቕሓ ተኣልዩ።';

  @override
  String get food_remaining => 'ተሪፉ ኣሎ።';

  @override
  String get food_consumed => 'ተሃሊኹ';

  @override
  String food_of_target(Object target) {
    return 'ናይ $target ኪሎ ካሎሪ';
  }

  @override
  String get foodSearch_title => 'መግቢ ድለዩ።';

  @override
  String get foodSearch_scan_barcode => 'ስካን ባርኮድ';

  @override
  String get foodSearch_take_photo => 'ስናፕ ፉድ ፎቶ';

  @override
  String get foodSearch_custom_food => 'ብሕታዊ መግቢ ምፍጣር';

  @override
  String get foodSearch_recent_searches => 'ኣብ ቀረባ እዋን ዝተገብረ ምድላይ';

  @override
  String get foodSearch_popular => 'ህቡባት ምግቢ';

  @override
  String get foodSearch_no_results => 'ምስ ምድላይካ ዝሰማማዕ መግቢ የለን';

  @override
  String get barcode_title => 'ባርኮድ ስካነር';

  @override
  String get barcode_align => 'ኣብ ውሽጢ ፍሬም ካሜራ ባርኮድ ኣሰላልፍ';

  @override
  String get barcode_not_found => 'ፍርያት ኣብ ዳታቤዝ ኣይተረኽበን።';

  @override
  String get barcode_premium_feature => 'ባርኮድ ስካን ብብሉሚ ፕሮ ይርከብ።';

  @override
  String get camera_title => 'AI መግቢ ስካነር';

  @override
  String get camera_tap_hint => 'ንጹር ስእሊ ናይ ድስቲኻ ውሰድ';

  @override
  String get camera_analysing => 'ምትንታን ጻሕሊ መግቢ...';

  @override
  String get camera_detected => 'ዝተረኸቡ ነገራት';

  @override
  String get camera_flash => 'ፍላሽ ምቕያር';

  @override
  String get camera_retake => 'ዳግማይ ስእሊ ምውሳድ';

  @override
  String get camera_confirm_food => 'ነገራት ኣረጋግጽ';

  @override
  String get customFood_title => 'ብሕታዊ መግቢ & ኣሰራርሓ መግቢ';

  @override
  String get customFood_name_hint => 'ስም ድስቲ ወይ ቀመም';

  @override
  String get customFood_calories_hint => 'ካሎሪ (ኪሎ ካሎሪ) .';

  @override
  String get customFood_protein_hint => 'ፕሮቲን (ሰ) .';

  @override
  String get customFood_carbs_hint => 'ካርቦሃይድሬት (ሰ) .';

  @override
  String get customFood_fat_hint => 'ስብሒ (ሰ) .';

  @override
  String get customFood_save => 'ኣሰራርሓ መግቢ ምዕቃብ';

  @override
  String get water_tracker_title => 'ማይ መከታተሊ';

  @override
  String get water_daily_target => 'ዕላማ መዓልታዊ ማይ ምውሳድ';

  @override
  String get water_logged_today => 'ሎሚ ምዝገባ ተገይሩ';

  @override
  String get water_add_glass => '+250 ሚሊ ሊትር ብርጭቆ';

  @override
  String get water_add_bottle => '+500 ሚሊ ሊትር ጥርሙዝ';

  @override
  String get water_custom_amount => 'ብሕታዊ መጠን ገንዘብ';

  @override
  String get water_reminder_tip => 'ንርጉእ ጸዓት ምሉእ መዓልቲ ብስሩዕ ማይ ምስታይ።';

  @override
  String water_logged_toast(Object amount) {
    return 'ሎግ $amount ሚሊ ሊትር ማይ 💧';
  }

  @override
  String get workout_title => 'ስፖርታዊ ምንቅስቓስ ሎግ';

  @override
  String get workout_add_exercise => 'ስፖርታዊ ምንቅስቓስ ወስኹሉ።';

  @override
  String get workout_cardio => 'ካርድዮ';

  @override
  String get workout_strength => 'ሓይሊ';

  @override
  String get workout_yoga => 'ዮጋ & ተዓጻጻፍነት';

  @override
  String get workout_duration => 'ንውሓት ግዜ';

  @override
  String get workout_intensity => 'ጽዓት';

  @override
  String get workout_calories_burned => 'ካሎሪ ዝተቓጸለ';

  @override
  String get workout_empty => 'ሎሚ ዝኾነ ስፖርታዊ ምንቅስቓስ ምዝገባ የለን';

  @override
  String get workout_save_success => 'ስፖርታዊ ምንቅስቓስ ብዓወት ተዓቂቡ!';

  @override
  String get workout_type => 'ዓይነት ስፖርታዊ ምንቅስቓስ';

  @override
  String get workout_notes => 'መዘኻኸሪታትን ኣስተንትኖታትን';

  @override
  String get health_overview_title => 'Health & Vitals';

  @override
  String get health_heart_rate => 'ህርመት ልቢ';

  @override
  String get health_blood_oxygen => 'ናይ ደም ኦክስጅን (SpO2)';

  @override
  String get health_blood_pressure => 'ጸቕጢ ደም';

  @override
  String get health_blood_glucose => 'ግሉኮስ ደም';

  @override
  String get health_body_temperature => 'ሙቐት ኣካላት';

  @override
  String get health_sleep_tracking => 'ምክትታል ድቃስ';

  @override
  String get health_weight_tracking => 'ክብደት & ኣቃውማ ኣካላት';

  @override
  String get health_waist_hip => 'ምትእስሳር ሕቝፊ ምስ ጭሕሚ';

  @override
  String get health_devices_hub => 'መሳርሒታትን ስማርትዋች ሃብን።';

  @override
  String get health_sync_now => 'መረዳእታ ጥዕና ምትእስሳር';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'ናይ መወዳእታ ዝተመዓራረየሉ: $time';
  }

  @override
  String get health_manual_entry => 'ማንዋል ጥዕና ምእታው';

  @override
  String get health_metric_detail => 'ዝርዝር ሜትሪክ';

  @override
  String get health_connected_sensors => 'ዝተኣሳሰሩ ናይ ጥዕና ሴንሰራት';

  @override
  String get plan_title => 'መዓልታዊ ትልሚ';

  @override
  String get plan_weekly_title => 'ሰሙናዊ ውጥን ጥዕና';

  @override
  String get plan_calorie_target => 'ካሎሪ ዕላማ';

  @override
  String get plan_water_target => 'ዕላማ ሃይድሬሽን';

  @override
  String get plan_step_target => 'ስጉምቲ ዕላማ';

  @override
  String get plan_sleep_target => 'ድቃስ ዕላማ';

  @override
  String get plan_meal_suggestions => 'ናይ መግቢ ሓሳባት';

  @override
  String get plan_healthy_habits => 'ጥዕናዊ ልምድታትን ምኽርታትን';

  @override
  String get plan_coach_advice => 'ለበዋታት ኣሰልጣኒ ብሉሚ ኤ.ኣይ';

  @override
  String get plan_generated_title => 'ብሕታዊ ዝኾነ መዓልታዊ መደብ';

  @override
  String get profile_title => 'ፕሮፋይል';

  @override
  String get profile_edit => 'ፕሮፋይል ኣርትዕ';

  @override
  String get profile_name => 'ስም';

  @override
  String get profile_age => 'ዕድመ';

  @override
  String get profile_gender => 'ጾታ';

  @override
  String get profile_height => 'ቁመት';

  @override
  String get profile_weight => 'ክብደት ሰብነት';

  @override
  String get profile_goal => 'ቀዳማይ ዕላማ';

  @override
  String get profile_activity_level => 'ደረጃ ንጥፈት';

  @override
  String get profile_stats => 'ስታቲስቲክስ ጥዕናይ';

  @override
  String get profile_saved => 'ፕሮፋይል ብዓወት ተሓዲሱ';

  @override
  String get profile_bmi => 'መዐቀኒ ጽፍሒ ኣካላት (BMI) .';

  @override
  String get profile_membership => 'ኣባልነት';

  @override
  String get settings => 'ቅጥዕታት';

  @override
  String get preferences_habits => 'ምርጫታትን ልምድታትን';

  @override
  String get appearance_theme => 'መልክዕ & ቴማ';

  @override
  String get appearance_theme_sub => 'ጸሊም፣ ብርሃን፣ ስርዓት ሞድ & ኣፕ ድሕረ ባይታ ኣማራጺታት';

  @override
  String get permissions => 'ፍቓድ & ስርዓት ምብጻሕ';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, መፍለጢታትን ካሜራን';

  @override
  String get reminders_notifications => 'መዘኻኸሪታትን መፍለጢታትን';

  @override
  String get reminders_sub => 'ናይ መግቢ ግዜ፣ ማይ፣ ክብደት ምእታው & ቅድሚ ድቃስ መዘኻኸሪ';

  @override
  String get units_of_measurement => 'ኣሃዱታት መለክዒ';

  @override
  String get units_sub =>
      'ሜትሪክ (ኪግ፡ ሴንቲ ሜተር፡ ሚሊ ሊትር፡ ኪ.ሜ) ወይ ኢምፔርያል (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'ኣፕ ቋንቋ';

  @override
  String get language_sub => 'እንግሊዝኛ፣ हिन्दी (ሂንዲ)፣ ሂንግሊሽ & 195+ ዓለማዊ ቋንቋታት';

  @override
  String get home_screen_widgets => 'ናይ ገዛ ስክሪን ዊጀትስ';

  @override
  String get widgets_sub => 'ቀጥታዊ ኣንድሮይድ ዊጀትስ: ሃብ, ስጉምትታት, ማይ, ኣመጋግባ & ማስኮት።';

  @override
  String get wear_os_watch_app => 'ናይ ኦኤስ ዋች ኣፕ ተኸዲንካ';

  @override
  String get wear_os_sub => 'Smartwatch companion, ታይልስ, ሕልኽላኻት & live vitals';

  @override
  String get goals_wellness => 'ዕላማታትን ጽቡቕ ርድኢትን';

  @override
  String get nutrition_targets => 'ዕላማታት ኣመጋግባ & ማክሮ ምፍንጫል';

  @override
  String get nutrition_targets_sub => 'ዕላማ ካሎሪ፡ ፕሮቲን፡ ካርቦሃይድሬት፡ ስብሕን ማይን ዕላማ';

  @override
  String get weekly_recap => 'ሰሙናዊ ዳግመ ርእይቶ ጥዕና';

  @override
  String get weekly_recap_sub => 'ናይ 7 መዓልታት ካሎሪ ማእከላይ፣ ማክሮ ሬሽዮ & ዝበለጸ መዓልቲ';

  @override
  String get streaks_milestones => 'ስትሪክስን ምዕራፋትን';

  @override
  String get streaks_sub => 'ንጡፋት ዕምባባታት መስመራት፣ ባጅን ዓወታትን';

  @override
  String get connected_devices => 'ዝተኣሳሰሩ መሳርሒታት & ኢኮሲስተም';

  @override
  String get devices_hub => 'መሳርሒታትን ስማርትዋች ሃብን።';

  @override
  String get devices_hub_sub => 'ሄልዝ ኮኔክት፡ ጋላክሲ ዋች፡ ፒክሰል ዋች፡ ጋርሚን።';

  @override
  String get surroundings_weather => 'ከባቢ & ኩነታት ኣየር';

  @override
  String get surroundings_sub =>
      'ጽሬት ኣየር (AQI)፡ UV index & ምኽርታት ሃይድሬሽን ኩነታት ኣየር';

  @override
  String get bloomi_pro => 'ብሉሚ ፕሮ ምዝገባ';

  @override
  String get bloomi_pro_sub => 'AI Plan Coach, 5 ናይ ገዛ ስክሪን ዊጀት & vitals ምክትታል';

  @override
  String get about_security => 'ብዛዕባ & ድሕነት';

  @override
  String get about_bloomi => 'ብዛዕባ ብሉሚ';

  @override
  String get about_bloomi_sub => 'ስፔሲፊኬሽን ህንጸት፣ ስሪት፣ ኣትሪብዩሽን';

  @override
  String get privacy_policy => 'ፖሊሲ ውልቃዊ ሓበሬታ';

  @override
  String get privacy_policy_sub => 'ካብ መስመር ወጻኢ-መጀመርታ፡ ኣብ መሳርሒ ዳታ ስነ ህንጻ';

  @override
  String get terms_conditions => 'ውዕላትን ቅጥዕታትን';

  @override
  String get terms_conditions_sub => 'ውዕል ኣገልግሎትን መምርሒታት ጥዕናን';

  @override
  String get delete_account => 'Account & Data ምድምሳስ';

  @override
  String get delete_account_sub => 'ብዘይምምላስ ሎካል SQLite ዳታን ክላውድ ባክኣፕን ምድምሳስ';

  @override
  String get healthy_habits => 'ልኡምን ነባሪን ናይ ጥዕና ልምድታት ምህናጽ';

  @override
  String get all_logs => 'ናተይ ዝተኸታተለ ዳታ & ሎግስ';

  @override
  String get search_language => 'ብቋንቋ ወይ ብመበቆላዊ ስክሪፕት ድለዩ...';

  @override
  String get languages_available => 'ዝርከባ ቋንቋታት';

  @override
  String get no_matching_languages => 'ዝሰማማዕ ቋንቋታት ኣይተረኽበን።';

  @override
  String get try_searching => 'ብመበቆላዊ ስክሪፕት ወይ ብእንግሊዝኛ ኣጸሓሕፋ ክትደሊ ፈትን።';

  @override
  String get partially_translated => 'ብኸፊል ዝተተርጎመ';

  @override
  String get complete_translation => 'ምሉእ';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ቋንቋ ናብ $name ( $nativeName ) ተቐሚጡ።';
  }

  @override
  String get surroundings_title => 'ከባቢ & ከባቢ';

  @override
  String get surroundings_aqi => 'መዐቀኒ ፅሬት ኣየር';

  @override
  String get surroundings_uv => 'ዩቪ ኢንዴክስ';

  @override
  String get surroundings_temp => 'ሙቐት';

  @override
  String get surroundings_humidity => 'ርስሓት';

  @override
  String get surroundings_hydration_advice => 'ኣብ ህሉው ኩነታት ኣየር ጽቡቕ ማይ ምውሳድ።';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'መግቢ ድለዩ።';

  @override
  String get food_quick_barcode => 'ስካን ባርኮድ 👑';

  @override
  String get food_quick_water => 'ማይ ወስኹሉ።';

  @override
  String get food_quick_custom => 'ብሕታዊ መግቢ';

  @override
  String get surroundings_good => 'ጽቡቕ';

  @override
  String get surroundings_moderate => 'ማእከላይ ደረጃ';

  @override
  String get surroundings_unhealthy => 'ጥዕና ዘይብሉ';

  @override
  String get notifications_title => 'መፍለጢታትን መጠንቀቕታታትን';

  @override
  String get notifications_empty => 'ሓድሽ መፍለጢ የለን';

  @override
  String get notifications_mark_read => 'ንኹሉ ከም ንባብ ምልክት ግበር';

  @override
  String get notifications_clear => 'ኩሉ ኣጽርዮ';

  @override
  String get reminders => 'ቅጥዕታት መዘኻኸሪ';

  @override
  String get notifications => 'መፍለጢታት';

  @override
  String get reminders_breakfast_title => 'ናይ ቁርሲ መዘኻኸሪ 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'ሰናይ ንጉሆ! ግዜ ንመኣዛዊ ቁርሲ ኣብ $time .';
  }

  @override
  String get reminders_lunch_title => 'ናይ ምሳሕ መዘኻኸሪ 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'ደው ኢልኩም ኣብ $time ሚዛናዊን ኣእምሮኣዊን ምሳሕ ኣስተማቕሩ።';
  }

  @override
  String get reminders_dinner_title => 'ናይ ድራር መዘኻኸሪ 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'ግዜ ንቐሊልን ዘዕግብን ድራር ኣብ $time ።';
  }

  @override
  String get reminders_water_title => 'ሃይድሬሽን ናጅ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'ፍሩይ ብርጭቆ ማይ ንሰቲ ግዜ! ( $time ) ።';
  }

  @override
  String get reminders_weight_title => 'ሰሙናዊ ምምዛን ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ሰሙናዊ ናይ ኣካላትካ መለክዒታት ኣብ ብሉሚ ( $time ) ተኸታተል።';
  }

  @override
  String get reminders_sleep_title => 'ቅድሚ ድቃስ ንፋስ-ታሕቲ 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'ዕረፍቲ ውሰድ እሞ ንዕረፍቲ ድቃስ ተዳሎ ( $time ).';
  }

  @override
  String get onboard_welcome => 'እንቋዕ ናብ ብሉሚ ብሰላም መጻእኩም';

  @override
  String get onboard_sub => 'ምሕዝነታዊ፡ ካብ መስመር ወጻኢ-መጀመርታ ናይ ጥዕናን ኣመጋግባን መሓዛኻ።';

  @override
  String get onboard_get_started => 'ጀምር';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'ዘልል';

  @override
  String get onboard_choose_goal => 'ቀንዲ ዕላማ ጥዕናኻ እንታይ እዩ?';

  @override
  String get onboard_goal_weight_loss => 'ልኡም ክብደት ሰብነት ምጉዳል';

  @override
  String get onboard_goal_muscle => 'ጭዋዳታት መኽሰብ & ሓይሊ';

  @override
  String get onboard_goal_energy => 'መዓልታዊ ጸዓትን ህይወትን';

  @override
  String get onboard_goal_habits => 'ጥዕና ዘለዎ ኣእምሮኣዊ ኣመጋግባ';

  @override
  String get onboard_about_you => 'ብዛዕባ ገዛእ ርእስኻ ንገረና።';

  @override
  String get onboard_lifestyle => 'መዓልታዊ መደብካ';

  @override
  String get onboard_permissions_title => 'ፍቓድ & ስርዓት ምብጻሕ';

  @override
  String get onboard_permissions_sub =>
      'ናይ ምትእስሳር ስጉምትታት፡ ስፖርታዊ ምንቅስቓሳትን መዘኻኸሪታትን ምብጻሕ ምሃብ።';

  @override
  String get onboard_plan_ready_title => 'ናትኩም ብሕታዊ ውጥን ድሉው እዩ!';

  @override
  String get onboard_plan_ready_sub =>
      'ንዓኻትኩም ጥራይ ልኡምን ብሕታዊን ናይ ኣመጋግባን ጥዕናን ፍኖተ-ካርታ ሰሪሕና።';

  @override
  String get onboard_enter_bloomi => 'ብሉሚ ኣቲኻ';

  @override
  String get insights_weekly_report => 'ሰሙናዊ ዳግመ ርእይቶ ጥዕና';

  @override
  String insights_best_day(Object day) {
    return 'ዝበለጸ መዓልቲ ቅኑዕነት፡ $day';
  }

  @override
  String get insights_streaks_badges => 'ስትሪክስን ምዕራፋትን';

  @override
  String insights_unlocked_on(Object date) {
    return 'ኣብ $date ተኸፊቱ';
  }

  @override
  String get insights_keep_going => 'ቀጽልዎ እቲ ፍሉይ ምዕባለ!';

  @override
  String get widgets_title => 'ናይ ገዛ ስክሪን ዊጀትስ';

  @override
  String widgets_active_count(Object count) {
    return 'ንጡፋት ዊጀት፡ $count';
  }

  @override
  String get widgets_hub_title => 'ብሉሚ ዌልነስ ሃብ';

  @override
  String get widgets_steps_title => 'ስጉምትታትን ንጡፍ ቀለቤትን።';

  @override
  String get widgets_water_title => 'ሃይድሬሽን ቅልጡፍ ምዝገባ';

  @override
  String get widgets_mascot_title => 'ብሉሚ ማስኮት ብጻይ';

  @override
  String get wear_os_title => 'ኦኤስ ስማርት ሰዓት ተኸደን';

  @override
  String get wear_os_connected => 'ምስ Watch ዝተኣሳሰር';

  @override
  String get wear_os_sync => 'ዳታ ዋች ምትእስሳር';

  @override
  String get theme_title => 'መልክዕ & ቴማ';

  @override
  String get theme_mode => 'ቴማ ሞድ';

  @override
  String get theme_light => 'ብርሃን';

  @override
  String get theme_dark => 'ጸልማት';

  @override
  String get theme_system => 'ስርዓት ነባሪ';

  @override
  String get theme_background_palette => 'ድሕረ ባይታ ፓለቲ';

  @override
  String get units_title => 'ኣሃዱታት መለክዒ';

  @override
  String get units_metric => 'ሜትሪክ (ኪግ፣ ሴንቲ ሜተር፣ ሚሊ ሊትር)';

  @override
  String get units_imperial => 'ኢምፔርያል (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'ዳሽቦርድ ክጽዕን ኣይከኣለን';

  @override
  String get home_health_permission_req => 'ናይ ጥዕና ምትእስሳር ፍቓድ የድሊ';

  @override
  String get home_health_permission_desc =>
      'ብሉሚ ሓቀኛ ስጉምትታት ንምስሓብ፡ ህርመት ልቢ፡ ከምኡ’ውን ንናይ ሞባይል ገዛ ዊጀት ኣብ ሓቀኛ ግዜ ንምስምማዕ ፍቓድ ሄልዝ ኮኔክት የድልዮ።';

  @override
  String get home_allow_health => 'ንጥዕና ምትእስሳር ፍቐድ';

  @override
  String get home_ready_mindful_day => 'ንሓንቲ ኣእምሮኣዊት መዓልቲ ድሉው ዲኻ? ✨';

  @override
  String get home_quick_add => 'ቅልጡፍ ምውሳኽ';

  @override
  String get home_live_gps => 'ቀጥታዊ ጂፒኤስ';

  @override
  String get home_calories_remaining_label => 'ዝተረፈ ካሎሪ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'ዝተበልዐ: $consumed / $target ኪሎ ካሎሪ';
  }

  @override
  String get home_tap_water_tracker => 'ንማይ ትራከር 💧 ዝኸውን ቧንቧ';

  @override
  String get home_water_goal_reached => 'መዓልታዊ ሸቶ ተበጺሑ 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ሚሊ ሊትር ናብ መዓልታዊ ዕላማ';
  }

  @override
  String get home_details => 'ዝርዝር ሓበሬታ';

  @override
  String get home_upgrade_plan_desc => 'ብሕታዊ መዓልታዊ ዕላማታት & AI ትልሚ ንምኽፋት ምዕባይ';

  @override
  String get home_unlock => 'ምኽፋት 👑';

  @override
  String get home_quick_log_hint => 'ቅልጡፍ ናይ ጥዕና ምእታው ምዝገባ';

  @override
  String get food_serving_size => 'መጠን ኣገልግሎት';

  @override
  String get food_serving_grams => 'ምግልጋል (ሰ) .';

  @override
  String get food_number_servings => 'ብዝሒ ኣገልግሎት ምሃብ';

  @override
  String get food_calories_per_serving => 'ካሎሪ ኣብ ሓደ ምግቢ';

  @override
  String get food_recipe_ingredients => 'ቀመማት';

  @override
  String get food_recipe_add_ingredient => 'ቀመም ምውሳኽ';

  @override
  String get food_recipe_directions => 'መምርሒታትን መዘኻኸሪታትን';

  @override
  String get food_recipe_total => 'ጠቕላላ ኣሰራርሓ መግቢ ኣመጋግባ';

  @override
  String get food_recipe_per_serving => 'ፐር ሰርቪንግ ኣመጋግባ';

  @override
  String get food_recipe_saved_toast => 'ብሕታዊ መግቢ ብዓወት ተዓቂቡ!';

  @override
  String get food_barcode_found => 'ፍርያት ተረኺቡ!';

  @override
  String get food_barcode_not_found_desc =>
      'ነዚ ባርኮድ ኣብቲ ክፉት ዳታቤዝ ክንረኽቦ ኣይከኣልናን። ከም ባህላዊ መግቢ ክትውስኾ ትኽእል ኢኻ።';

  @override
  String get food_add_custom_btn => 'ብሕታዊ መግቢ ወስኹ';

  @override
  String get food_scan_again => 'ደጊምካ ስካን ግበር';

  @override
  String get food_review_items => 'ዝተረኸቡ መግብታት ምግምጋም';

  @override
  String get food_review_hint => 'ብዝሒ ኣስተኻኽል ወይ ዝኾነ ዘይተፈልጠ ነገር ኣወግድ';

  @override
  String get food_log_selected => 'ዝተመርጹ መግብታት ምዝገባ';

  @override
  String get food_favourites_title => 'ዝፈትዎም መግብታት';

  @override
  String get food_recent_title => 'ናይ ቀረባ እዋን መግብታት';

  @override
  String get food_no_favourites =>
      'ክሳብ ሕጂ ዝፈትዎ መግቢ የለን። ኣብዚ ንምዕቃብ ኣብ ዝኾነ መግቢ ልቢ ጠውቕ።';

  @override
  String get food_no_recents => 'ኣብ ቀረባ እዋን ዝተመዝገበ መግቢ ኣይተረኽበን።';

  @override
  String get food_nutrition_details_title => 'መዓልታዊ ዝርዝር ኣመጋግባ';

  @override
  String get food_macro_protein_label => 'ምብትታን ፕሮቲን';

  @override
  String get food_macro_carbs_label => 'ምብትታን ካርቦሃይድሬት';

  @override
  String get food_macro_fat_label => 'ስብሒ ምብትታን';

  @override
  String get food_macro_fiber_label => 'ምብትታን ፋይበር';

  @override
  String get food_daily_target_comparison => 'ዕላማ ምውድዳር';

  @override
  String food_target_label(Object target) {
    return 'ዕላማ፡ $target';
  }

  @override
  String get food_edit_entry => 'ምእታው ዳያሪ ኣርትዕ';

  @override
  String get food_delete_entry => 'ምእታው ምድምሳስ';

  @override
  String food_grams_short(Object grams) {
    return '$grams ሰ';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal ኪሎ ካሎሪ';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ናይ $target ሚሊ ሊትር';
  }

  @override
  String get water_intake_history => 'ናይ ሎሚ ማይ ሎግ';

  @override
  String get water_no_logs_today =>
      'ሎሚ ክሳብ ሕጂ ማይ ኣይተመዝገበን። ሃይድሬት ጌርካ ቅልጡፍ ምውሳኽ መጠወቒ ምጥዋቕ!';

  @override
  String get water_adjust_goal => 'መዓልታዊ ዕላማ ኣስተኻኽል';

  @override
  String get health_connect_banner => 'ምስ Health Connect ዝተኣሳሰር';

  @override
  String get health_vitals_summary => 'መዓልታዊ ጥዕናዊ ኣገደስቲ ነገራት';

  @override
  String get health_latest_heart_rate => 'ዳሕረዋይ ህርመት ልቢ';

  @override
  String get health_latest_bp => 'ጸቕጢ ደም';

  @override
  String get health_latest_spo2 => 'ኦክስጅን ደም';

  @override
  String get health_latest_glucose => 'ግሉኮስ ደም';

  @override
  String get health_latest_weight => 'ክብደት ሰብነት';

  @override
  String get health_latest_sleep => 'ንውሓት ግዜ ድቃስ';

  @override
  String get health_add_manual => 'ማንዋል መለክዒ ምውሳኽ';

  @override
  String get health_history_trends => 'ታሪኻዊ ዝንባለታት';

  @override
  String get health_sync_success => 'መረዳእታ ጥዕና ብዓወት ተሰማሚዑ!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ሰዓት $mins ደቒቕ';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val ኪ.ግ';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm ዝብል እዩ።';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '__ፒኤች_0__ % .';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic ሚ.ሜ';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val ሚግ/ዲኤል';
  }

  @override
  String get health_devices_title => 'ዝተኣሳሰሩ መሳርሒታት & ዝኽደኑ';

  @override
  String get health_devices_desc =>
      'ጽምዲ ስማርት ሰዓታት፡ መከታተሊ ብቕዓትን ዳህሳስ ጥዕናን ምምሕዳር።';

  @override
  String get health_workout_editor_title => 'ስፖርታዊ ምንቅስቓስ ኣርትዖት።';

  @override
  String get health_workout_name_label => 'ስም ስፖርታዊ ምንቅስቓስ';

  @override
  String get health_workout_duration_label => 'ንውሓት ግዜ (ደቓይቕ)';

  @override
  String get health_workout_calories_label => 'ግምታዊ ካሎሪ (ኪሎ ካሎሪ)';

  @override
  String get health_workout_date_label => 'ዕለትን ሰዓትን';

  @override
  String get plan_daily_wellness_roadmap => 'ብሕታዊ ፍኖተ-ካርታኻ';

  @override
  String get plan_morning_routine => 'ናይ ንግሆ መደብ';

  @override
  String get plan_afternoon_routine => 'ፍርቂ መዓልቲ ጽቡቕ ምህላው';

  @override
  String get plan_evening_routine => 'ምሸት ንፋስ-ታሕቲ';

  @override
  String get plan_coach_badge => 'ኣሰልጣኒ ብሉሚ ኤ.ኣይ';

  @override
  String get plan_weekly_overview => 'ናይ 7 መዓልታት ጥዕና ትኹረት';

  @override
  String get plan_targets_title => 'ዕላማታትን ዕላማታትን ጥዕና';

  @override
  String get plan_calorie_budget_label => 'መዓልታዊ ባጀት ካሎሪ';

  @override
  String get plan_water_budget_label => 'መዓልታዊ ዕላማ ማይ';

  @override
  String get plan_step_budget_label => 'መዓልታዊ ስጉምቲ ዕላማ';

  @override
  String get plan_macro_split_label => 'ማክሮኑትሪየንት ሬሽዮ';

  @override
  String get profile_personal_details => 'ውልቃዊ ዝርዝር ሓበሬታ';

  @override
  String get profile_body_stats => 'መለክዒታት ኣካላት';

  @override
  String get profile_app_preferences => 'ምርጫታትን ኣፕ ቅጥዕታትን';

  @override
  String get profile_edit_name_hint => 'ስምካ';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ቁመት ( $unit ) ።';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'ክብደት ( $unit ) ።';
  }

  @override
  String get profile_edit_age_hint => 'ዕድመ';

  @override
  String get profile_gender_male => 'ተባዕታይ';

  @override
  String get profile_gender_female => 'ጓል ኣንስተይቲ';

  @override
  String get profile_gender_other => 'ካልእ / ዘይምባል ይመርጽ';

  @override
  String get profile_activity_sedentary =>
      'ስቕ ኢልካ ምጽናሕ (ውሑድ ክሳብ ምንቅስቓስ ኣካላት ዘይብሉ)';

  @override
  String get profile_activity_light => 'ቀሊል ንጡፍ (1-3 መዓልታት/ሰሙን)';

  @override
  String get profile_activity_moderate => 'ማእከላይ ንጡፍ (3-5 መዓልታት/ሰሙን)';

  @override
  String get profile_activity_very => 'ኣዝዩ ንጡፍ (6-7 መዓልታት/ሰሙን)';

  @override
  String get settings_wear_os_header => 'ናይ ኦኤስ ብጻይ ኣፕ ተኸዲንካ';

  @override
  String get settings_wear_os_desc =>
      'ኣብታ Wear OS ሰዓትካ Bloomi tile and complication ብምግጣም ካሎሪ፡ ማይን ስጉምትታትን ምጥማት።';

  @override
  String get settings_widgets_header => 'መስተጋብራዊ ኣንድሮይድ ዊጀትስ';

  @override
  String get settings_widgets_desc =>
      'ንቕጽበታዊ ምዕባለታት ኣብ ናይ መሳርሒኻ ናይ መጀመርታ ስክሪን ናይ ሓቂ ግዜ ዊጀት ፒን ግበር።';

  @override
  String get settings_about_header => 'ብዛዕባ ብሉሚ';

  @override
  String get settings_about_version => 'ስሪት 1.0.0';

  @override
  String get settings_about_build => '100 ምህናጽ';

  @override
  String get settings_about_credits => 'ንኣእምሮኣዊ፡ ጥዑይ ናብራ ብጥንቃቐ ዝተሰርሐ።';

  @override
  String get settings_terms_header => 'ውዕላትን ቅጥዕታትን';

  @override
  String get settings_privacy_header => 'ፖሊሲ ውልቃዊ ሓበሬታ';

  @override
  String get settings_delete_header => 'Account & Data ምድምሳስ';

  @override
  String get settings_delete_warning =>
      'እዚ ተግባር እዚ ክምለስ ኣይክእልን እዩ። ኩሉ መግቢኻ፡ ስፖርታዊ ምንቅስቓስካ፡ ቫይታላትካን ፕሮፋይልካን ንሓዋሩ ክስረዝ እዩ።';

  @override
  String get settings_delete_confirm_btn => 'ንሓዋሩ ምድምሳስ';

  @override
  String get onboard_welcome_headline => 'እንቋዕ ናብ ብሉሚ ✨ ብደሓን መጻእኩም';

  @override
  String get onboard_welcome_tagline =>
      'ኣብ ዙርያ ህይወትካ ዝተነድፈ ልኡምን ኣእምሮኣዊን ምክትታል ጥዕና።';

  @override
  String get onboard_step_about => 'ብዛዕባኻ';

  @override
  String get onboard_step_goals => 'ዕላማታትካ';

  @override
  String get onboard_step_lifestyle => 'መዓልታዊ ልምድታት';

  @override
  String get onboard_step_permissions => 'ፍቓድ';

  @override
  String get onboard_step_plan => 'ድሉው!';

  @override
  String get onboard_health_connect_perm => 'ናይ ጥዕና ምትእስሳር መእተዊ';

  @override
  String get onboard_step_sensors_perm => 'ስጉምቲ ቆጻሪ ዳህሳሲ';

  @override
  String get onboard_notif_perm => 'ኣእምሮኣዊ መዘኻኸሪታትን መፍለጢታትን';

  @override
  String get onboard_camera_perm => 'ካሜራ (ባርኮድን መግብን ስካነር)';

  @override
  String get onboard_grant_permissions => 'ፍቓድ ምሃብ';

  @override
  String get onboard_continue_dashboard => 'ዳሽቦርድ ክፈት';

  @override
  String get notif_channel_hydration_name => 'ሃይድሬሽን ናጅስ';

  @override
  String get notif_channel_hydration_desc => 'ምሉእ መዓልቲ ልኡም መዘኻኸሪታት ማይ';

  @override
  String get notif_channel_nutrition_name => 'መዘኻኸሪታት መግቢን ኣመጋግባን።';

  @override
  String get notif_channel_nutrition_desc => 'ቁርሲ፣ ምሳሕን ድራርን መዘኻኸሪ መጠንቀቕታታት';

  @override
  String get notif_channel_steps_name => 'ስጉምቲ ምዕራፋት።';

  @override
  String get notif_channel_steps_desc =>
      'መዓልታዊ ስጉምቲ ሸቶታት ኣብ ዝበጽሓሉ እዋን ዝግበር ጽምብል';

  @override
  String get notif_channel_vitals_name => 'ናይ ጥዕናን ህይወትን ምፍታሽ';

  @override
  String get notif_channel_vitals_desc => 'ክብደትን ቅድሚ ድቃስን ንፋስ ምውራድ መዘኻኸሪታት';

  @override
  String get notif_action_log_water => '💧 ሎግ +250ሚሊ ሊትር';

  @override
  String get notif_action_snooze => 'ስኑዝ 15ሜ';

  @override
  String get notif_action_log_meal => '🥗 ሎግ መግቢ';

  @override
  String get language => 'ቋንቋ';

  @override
  String get share => 'ሼር ምግባር';

  @override
  String common_days(Object count) {
    return '$count ቅድሚ መ';
  }
}
