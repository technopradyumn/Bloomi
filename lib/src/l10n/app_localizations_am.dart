// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'ቤት';

  @override
  String get nav_today => 'ዛሬ';

  @override
  String get nav_plan => 'እቅድ';

  @override
  String get nav_food => 'ምግብ';

  @override
  String get nav_food_diary => 'የምግብ ማስታወሻ ደብተር';

  @override
  String get nav_workout => 'የአካል ብቃት እንቅስቃሴ ምዝግብ ማስታወሻ';

  @override
  String get nav_health => 'ጤና';

  @override
  String get nav_profile => 'መገለጫ';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get delete => 'ሰርዝ';

  @override
  String get edit => 'አርትዕ';

  @override
  String get done => 'ተከናውኗል';

  @override
  String get close => 'ዝጋ';

  @override
  String get back => 'ተመለስ';

  @override
  String get next => 'ቀጥሎ';

  @override
  String get continue_btn => 'ቀጥል';

  @override
  String get confirm => 'አረጋግጥ';

  @override
  String get search => 'ፈልግ';

  @override
  String get filter => 'አጣራ';

  @override
  String get all => 'ሁሉም';

  @override
  String get active => 'ንቁ';

  @override
  String get today => 'ዛሬ';

  @override
  String get yesterday => 'ትናንት';

  @override
  String get tomorrow => 'ነገ';

  @override
  String get add => 'አክል';

  @override
  String get remove => 'አስወግድ';

  @override
  String get refresh => 'አድስ';

  @override
  String get retry => 'እንደገና ይሞክሩ';

  @override
  String get error => 'ስህተት';

  @override
  String get success => 'ስኬት';

  @override
  String get loading => 'በመጫን ላይ...';

  @override
  String get no_data => 'ምንም ውሂብ አይገኝም';

  @override
  String get offline => 'ከመስመር ውጭ ሁነታ';

  @override
  String get offline_sub => 'እንደገና ከተገናኘ በኋላ ለውጦች ይሰምራሉ።';

  @override
  String get undo => 'ቀልብስ';

  @override
  String get portion => 'ክፍል';

  @override
  String get quantity => 'ብዛት';

  @override
  String get unit => 'ክፍል';

  @override
  String get clear => 'ግልጽ';

  @override
  String get select => 'ይምረጡ';

  @override
  String get apply => 'ተግብር';

  @override
  String get reset => 'ዳግም አስጀምር';

  @override
  String get ok => 'እሺ';

  @override
  String get yes => 'አዎ';

  @override
  String get no => 'አይ';

  @override
  String get optional => 'አማራጭ';

  @override
  String get calories => 'ካሎሪዎች';

  @override
  String get protein => 'ፕሮቲን';

  @override
  String get carbs => 'ካርቦሃይድሬትስ';

  @override
  String get fat => 'ስብ';

  @override
  String get fiber => 'ፋይበር';

  @override
  String get water => 'ውሃ';

  @override
  String get steps => 'እርምጃዎች';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'ሰ';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'ኪ.ግ';

  @override
  String get pounds => 'ፓውንድ';

  @override
  String get centimeters => 'ሴሜ';

  @override
  String get inches => 'ውስጥ';

  @override
  String get bpm => 'ቢፒኤም';

  @override
  String get hours => 'ሰአታት';

  @override
  String get minutes => 'ደቂቃ';

  @override
  String get serving => 'ማገልገል';

  @override
  String get servings => 'አገልግሎቶች';

  @override
  String get serving_size => 'የማገልገል መጠን';

  @override
  String get per_100g => 'በ 100 ግራም';

  @override
  String get india => 'ህንድ';

  @override
  String get asia => 'እስያ';

  @override
  String get europe => 'አውሮፓ';

  @override
  String get middle_east => 'መካከለኛው ምስራቅ';

  @override
  String get africa => 'አፍሪካ';

  @override
  String get americas => 'አሜሪካ';

  @override
  String get home_title => 'ቤት';

  @override
  String get home_greeting_morning => 'እንደምን አደሩ';

  @override
  String get home_greeting_afternoon => 'ደህና ከሰአት';

  @override
  String get home_greeting_evening => 'መልካም ምሽት';

  @override
  String get home_streak_title => 'የአበቦች ጅረት';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'የ _PH_0__ ተከታታይ ቀናት',
      one: 'የ1 ቀን ቆይታ',
      zero: 'የ0 ቀናት ቆይታ',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'ተቃጠለ';

  @override
  String get home_calories_budget => 'የካሎሪ በጀት';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal ይቀራል';
  }

  @override
  String get home_water_title => 'ዕለታዊ እርጥበት';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / _PH_1__ ml';
  }

  @override
  String get home_steps_title => 'የተራመዱ እርምጃዎች';

  @override
  String get home_quick_actions => 'ፈጣን እርምጃዎች';

  @override
  String get home_log_meal => 'የምዝግብ ማስታወሻ ምግብ';

  @override
  String get home_log_water => 'ሎግ ውሃ';

  @override
  String get home_log_workout => 'የአካል ብቃት እንቅስቃሴን ይመዝገቡ';

  @override
  String get home_log_weight => 'የምዝግብ ማስታወሻ ክብደት';

  @override
  String get home_insights_title => 'የዛሬ ግንዛቤዎች';

  @override
  String get home_quote => 'ትናንሽ ጤናማ ምርጫዎች የሚያብቡ ለውጦችን ይፈጥራሉ.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI አሰልጣኝ';

  @override
  String get home_surroundings => 'አከባቢ እና አየር';

  @override
  String get home_notifications => 'ማሳወቂያዎች';

  @override
  String get home_daily_score => 'ዕለታዊ የጤንነት ውጤት';

  @override
  String get home_view_all => 'ሁሉንም ይመልከቱ';

  @override
  String get food_diary_title => 'የምግብ ማስታወሻ ደብተር';

  @override
  String get food_breakfast => 'ቁርስ';

  @override
  String get food_lunch => 'ምሳ';

  @override
  String get food_dinner => 'እራት';

  @override
  String get food_snacks => 'መክሰስ';

  @override
  String get food_add_food => 'ምግብ ይጨምሩ';

  @override
  String get food_edit_food => 'ምግብን ያርትዑ';

  @override
  String get food_add_breakfast => 'ቁርስ ይጨምሩ';

  @override
  String get food_add_lunch => 'ምሳ ይጨምሩ';

  @override
  String get food_add_dinner => 'እራት ጨምር';

  @override
  String get food_add_snack => 'መክሰስ ጨምር';

  @override
  String get food_total_calories => 'ጠቅላላ ካሎሪዎች';

  @override
  String get food_empty_meal => 'ለዚህ ምግብ እስካሁን ምንም ምግቦች አልገቡም።';

  @override
  String get food_empty_diary => 'ለዚህ ቀን ምንም ምግቦች አልተመዘገቡም።';

  @override
  String get food_log_first_meal => 'የመጀመሪያውን ጣፋጭ ምግብዎን ለመመዝገብ + ይንኩ።';

  @override
  String get food_quick_add => 'ፈጣን አክል';

  @override
  String get food_search_hint => 'ምግቦችን፣ ፍራፍሬ፣ ዳሌ፣ ሮቲ... ይፈልጉ';

  @override
  String get food_custom_recipe => 'ብጁ ምግብ እና የምግብ አሰራር';

  @override
  String get food_scan_barcode => 'ባርኮድ ይቃኙ';

  @override
  String get food_camera_scan => 'AI የምግብ ስካነር';

  @override
  String get food_recent => 'የቅርብ ጊዜ ምግቦች';

  @override
  String get food_favourites => 'ተወዳጆች';

  @override
  String get food_macro_summary => 'የማክሮን ንጥረ ነገር ብልሽት';

  @override
  String get food_delete_meal_confirm => 'እርግጠኛ ነዎት ይህን ንጥል ማስወገድ ይፈልጋሉ?';

  @override
  String get food_item_deleted => 'የምግብ እቃ ተወግዷል';

  @override
  String get food_remaining => 'ቀሪ';

  @override
  String get food_consumed => 'ተበላ';

  @override
  String food_of_target(Object target) {
    return 'የ$target kcal';
  }

  @override
  String get foodSearch_title => 'ምግቦችን ይፈልጉ';

  @override
  String get foodSearch_scan_barcode => 'ባርኮድ ይቃኙ';

  @override
  String get foodSearch_take_photo => 'ስናፕ የምግብ ፎቶ';

  @override
  String get foodSearch_custom_food => 'ብጁ ምግብ ይፍጠሩ';

  @override
  String get foodSearch_recent_searches => 'የቅርብ ጊዜ ፍለጋዎች';

  @override
  String get foodSearch_popular => 'ተወዳጅ ምግቦች';

  @override
  String get foodSearch_no_results => 'ከእርስዎ ፍለጋ ጋር የሚዛመዱ ምንም ምግቦች የሉም';

  @override
  String get barcode_title => 'ባርኮድ ስካነር';

  @override
  String get barcode_align => 'በካሜራ ፍሬም ውስጥ የአሞሌ ኮድ አሰልፍ';

  @override
  String get barcode_not_found => 'ምርት በመረጃ ቋት ውስጥ አልተገኘም።';

  @override
  String get barcode_premium_feature => 'የባርኮድ ቅኝት ከ Bloomi Pro ጋር ይገኛል።';

  @override
  String get camera_title => 'AI የምግብ ስካነር';

  @override
  String get camera_tap_hint => 'የምግብዎን ግልጽ ፎቶ ያንሱ';

  @override
  String get camera_analysing => 'የምግብ ሳህን በመተንተን ላይ...';

  @override
  String get camera_detected => 'የተገኙ ዕቃዎች';

  @override
  String get camera_flash => 'ፍላሽ ቀያይር';

  @override
  String get camera_retake => 'ፎቶን እንደገና አንሳ';

  @override
  String get camera_confirm_food => 'ንጥሎችን ያረጋግጡ';

  @override
  String get customFood_title => 'ብጁ ምግብ እና የምግብ አሰራር';

  @override
  String get customFood_name_hint => 'ዲሽ ወይም ንጥረ ነገር ስም';

  @override
  String get customFood_calories_hint => 'ካሎሪ (kcal)';

  @override
  String get customFood_protein_hint => 'ፕሮቲን (ሰ)';

  @override
  String get customFood_carbs_hint => 'ካርቦሃይድሬት (ጂ)';

  @override
  String get customFood_fat_hint => 'ስብ (ግ)';

  @override
  String get customFood_save => 'የምግብ አዘገጃጀት አስቀምጥ';

  @override
  String get water_tracker_title => 'የውሃ መከታተያ';

  @override
  String get water_daily_target => 'ዕለታዊ የሃይድሬሽን ግብ';

  @override
  String get water_logged_today => 'ዛሬ ገብቷል።';

  @override
  String get water_add_glass => '+ 250 ሚሊ ብርጭቆ';

  @override
  String get water_add_bottle => '+ 500 ሚሊ ሊትር ጠርሙስ';

  @override
  String get water_custom_amount => 'ብጁ መጠን';

  @override
  String get water_reminder_tip => 'ለተረጋጋ ጉልበት ቀኑን ሙሉ ውሃ አዘውትሮ ይጠጡ።';

  @override
  String water_logged_toast(Object amount) {
    return 'ገብቷል $amount ሚሊ ውሃ 💧';
  }

  @override
  String get workout_title => 'የአካል ብቃት እንቅስቃሴ ምዝግብ ማስታወሻ';

  @override
  String get workout_add_exercise => 'የአካል ብቃት እንቅስቃሴን ይጨምሩ';

  @override
  String get workout_cardio => 'ካርዲዮ';

  @override
  String get workout_strength => 'ጥንካሬ';

  @override
  String get workout_yoga => 'ዮጋ እና ተለዋዋጭነት';

  @override
  String get workout_duration => 'ቆይታ';

  @override
  String get workout_intensity => 'ጥንካሬ';

  @override
  String get workout_calories_burned => 'የተቃጠሉ ካሎሪዎች';

  @override
  String get workout_empty => 'ዛሬ ምንም የአካል ብቃት እንቅስቃሴ አልተመዘገበም።';

  @override
  String get workout_save_success => 'የአካል ብቃት እንቅስቃሴ በተሳካ ሁኔታ ተቀምጧል!';

  @override
  String get workout_type => 'የአካል ብቃት እንቅስቃሴ ዓይነት';

  @override
  String get workout_notes => 'ማስታወሻዎች እና ነጸብራቆች';

  @override
  String get health_overview_title => 'ጤና እና ጠቃሚ ነገሮች';

  @override
  String get health_heart_rate => 'የልብ ምት';

  @override
  String get health_blood_oxygen => 'የደም ኦክስጅን (ስፒኦ2)';

  @override
  String get health_blood_pressure => 'የደም ግፊት';

  @override
  String get health_blood_glucose => 'የደም ግሉኮስ';

  @override
  String get health_body_temperature => 'የሰውነት ሙቀት';

  @override
  String get health_sleep_tracking => 'የእንቅልፍ ክትትል';

  @override
  String get health_weight_tracking => 'ክብደት እና የሰውነት ቅንብር';

  @override
  String get health_waist_hip => 'ከወገብ እስከ ዳሌ ሬሾ';

  @override
  String get health_devices_hub => 'መሣሪያዎች እና ስማርት ሰዓት መገናኛ';

  @override
  String get health_sync_now => 'የጤና ውሂብ አመሳስል።';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'ለመጨረሻ ጊዜ የተመሳሰለው _PH_0__';
  }

  @override
  String get health_manual_entry => 'በእጅ የጤና መግቢያ';

  @override
  String get health_metric_detail => 'ሜትሪክ ዝርዝሮች';

  @override
  String get health_connected_sensors => 'የተገናኙ የጤና ዳሳሾች';

  @override
  String get plan_title => 'ዕለታዊ እቅድ';

  @override
  String get plan_weekly_title => 'ሳምንታዊ የጤና እቅድ';

  @override
  String get plan_calorie_target => 'የካሎሪ ዒላማ';

  @override
  String get plan_water_target => 'የሃይድሪሽን ዒላማ';

  @override
  String get plan_step_target => 'የእርምጃ ዒላማ';

  @override
  String get plan_sleep_target => 'የእንቅልፍ ዒላማ';

  @override
  String get plan_meal_suggestions => 'የምግብ ምክሮች';

  @override
  String get plan_healthy_habits => 'ጤናማ ልማዶች እና ምክሮች';

  @override
  String get plan_coach_advice => 'Bloomi AI አሰልጣኝ ምክሮች';

  @override
  String get plan_generated_title => 'ለግል የተበጀ ዕለታዊ መርሐግብር';

  @override
  String get profile_title => 'መገለጫ';

  @override
  String get profile_edit => 'መገለጫ አርትዕ';

  @override
  String get profile_name => 'ስም';

  @override
  String get profile_age => 'ዕድሜ';

  @override
  String get profile_gender => 'ጾታ';

  @override
  String get profile_height => 'ቁመት';

  @override
  String get profile_weight => 'ክብደት';

  @override
  String get profile_goal => 'ዋና ግብ';

  @override
  String get profile_activity_level => 'የእንቅስቃሴ ደረጃ';

  @override
  String get profile_stats => 'የእኔ ደህንነት ስታቲስቲክስ';

  @override
  String get profile_saved => 'መገለጫ በተሳካ ሁኔታ ተዘምኗል';

  @override
  String get profile_bmi => 'የሰውነት ብዛት መረጃ ጠቋሚ (BMI)';

  @override
  String get profile_membership => 'አባልነት';

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get preferences_habits => 'ምርጫዎች እና ልማዶች';

  @override
  String get appearance_theme => 'መልክ እና ገጽታ';

  @override
  String get appearance_theme_sub => 'ጨለማ፣ ብርሃን፣ የስርዓት ሁነታ እና የመተግበሪያ ዳራ አማራጮች';

  @override
  String get permissions => 'ፈቃዶች እና የስርዓት መዳረሻ';

  @override
  String get permissions_sub => 'የጤና ግንኙነት፣ ደረጃ ዳሳሾች፣ ጂፒኤስ፣ ማሳወቂያዎች እና ካሜራ';

  @override
  String get reminders_notifications => 'አስታዋሾች እና ማሳወቂያዎች';

  @override
  String get reminders_sub => 'የምግብ ጊዜ፣ ውሃ፣ የክብደት መግቢያ እና የመኝታ ሰዓት አስታዋሾች';

  @override
  String get units_of_measurement => 'የመለኪያ ክፍሎች';

  @override
  String get units_sub =>
      'ሜትሪክ (ኪግ፣ ሴሜ፣ ml፣ ኪሜ) ወይም ኢምፔሪያል (ፓውንድ፣ ጫማ/ኢን፣ fl oz)';

  @override
  String get app_language => 'የመተግበሪያ ቋንቋ';

  @override
  String get language_sub =>
      'እንግሊዝኛ፣ हिन्दी (ሂንዲ)፣ ሂንግሊሽ እና 195+ ዓለም አቀፍ ቋንቋዎች';

  @override
  String get home_screen_widgets => 'የመነሻ ማያ ገጽ መግብሮች';

  @override
  String get widgets_sub => 'የቀጥታ አንድሮይድ መግብሮች፡ Hub፣ ደረጃዎች፣ ውሃ፣ አመጋገብ እና ማስኮት';

  @override
  String get wear_os_watch_app => 'የWear OS Watch መተግበሪያ';

  @override
  String get wear_os_sub => 'Smartwatch ጓደኛ፣ ሰቆች፣ ውስብስቦች እና የቀጥታ መሠረታዊ ነገሮች';

  @override
  String get goals_wellness => 'ግቦች እና የጤንነት ግንዛቤዎች';

  @override
  String get nutrition_targets => 'የተመጣጠነ ምግብ ኢላማዎች እና ማክሮ ክፍፍል';

  @override
  String get nutrition_targets_sub => 'የካሎሪ ኢላማ፣ ፕሮቲን፣ ካርቦሃይድሬት፣ ስብ እና የውሃ ግብ';

  @override
  String get weekly_recap => 'ሳምንታዊ የጤንነት ማጠቃለያ';

  @override
  String get weekly_recap_sub => 'የ7-ቀን ካሎሪ አማካኝ፣ማክሮ ሬሾ እና ምርጥ ቀን';

  @override
  String get streaks_milestones => 'ርዝራዥዎች እና ደረጃዎች';

  @override
  String get streaks_sub => 'ንቁ የፈኩ ጅራቶች፣ ባጆች እና ስኬቶች';

  @override
  String get connected_devices => 'የተገናኙ መሣሪያዎች እና ምህዳር';

  @override
  String get devices_hub => 'መሣሪያዎች እና ስማርት ሰዓት መገናኛ';

  @override
  String get devices_hub_sub =>
      'Health Connect፣ Galaxy Watch፣ Pixel Watch፣ Garmin';

  @override
  String get surroundings_weather => 'አከባቢ እና የአየር ሁኔታ';

  @override
  String get surroundings_sub =>
      'የአየር ጥራት (AQI) ፣ UV መረጃ ጠቋሚ እና የአየር እርጥበት ምክሮች';

  @override
  String get bloomi_pro => 'Bloomi Pro የደንበኝነት ምዝገባ';

  @override
  String get bloomi_pro_sub =>
      'የ AI እቅድ አሰልጣኝ ፣ 5 የመነሻ ማያ ገጽ መግብሮች እና መሠረታዊ ነገሮች መከታተያ';

  @override
  String get about_security => 'ስለ & ደህንነት';

  @override
  String get about_bloomi => 'ስለ Bloomi';

  @override
  String get about_bloomi_sub => 'ዝርዝሮችን, ስሪትን, ባህሪያትን ይገንቡ';

  @override
  String get privacy_policy => 'የግላዊነት ፖሊሲ';

  @override
  String get privacy_policy_sub => 'ከመስመር ውጭ-የመጀመሪያ፣ በመሣሪያ ላይ ያለ ውሂብ አርክቴክቸር';

  @override
  String get terms_conditions => 'ውሎች እና ሁኔታዎች';

  @override
  String get terms_conditions_sub => 'የአገልግሎት ውሎች እና የደህንነት መመሪያዎች';

  @override
  String get delete_account => 'መለያ እና ውሂብ ሰርዝ';

  @override
  String get delete_account_sub =>
      'የአካባቢያዊ SQLite ውሂብን እና የደመና ምትኬዎችን በማያዳግም ሁኔታ ደምስስ';

  @override
  String get healthy_habits => 'የዋህ ፣ ዘላቂ የጤና ልማዶችን ይገንቡ';

  @override
  String get all_logs => 'የእኔ ክትትል የሚደረግበት ውሂብ እና ምዝግብ ማስታወሻዎች';

  @override
  String get search_language => 'በቋንቋ ወይም ቤተኛ ስክሪፕት ይፈልጉ...';

  @override
  String get languages_available => 'ቋንቋዎች ይገኛሉ';

  @override
  String get no_matching_languages => 'ምንም ተዛማጅ ቋንቋዎች አልተገኙም።';

  @override
  String get try_searching => 'በአፍ መፍቻ ስክሪፕት ወይም በእንግሊዝኛ ፊደል ለመፈለግ ይሞክሩ';

  @override
  String get partially_translated => 'በከፊል ተተርጉሟል';

  @override
  String get complete_translation => 'ሙሉ';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ቋንቋ ተቀናብሯል ወደ _PH_0__ ( $nativeName )';
  }

  @override
  String get surroundings_title => 'አካባቢ እና አካባቢ';

  @override
  String get surroundings_aqi => 'የአየር ጥራት መረጃ ጠቋሚ';

  @override
  String get surroundings_uv => 'UV መረጃ ጠቋሚ';

  @override
  String get surroundings_temp => 'የሙቀት መጠን';

  @override
  String get surroundings_humidity => 'እርጥበት';

  @override
  String get surroundings_hydration_advice =>
      'አሁን ባለው የአየር ሁኔታ ውስጥ በደንብ እርጥበት ይኑርዎት.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'ምግብ ይፈልጉ';

  @override
  String get food_quick_barcode => 'ባርኮድ ይቃኙ 👑';

  @override
  String get food_quick_water => 'ውሃ ይጨምሩ';

  @override
  String get food_quick_custom => 'ብጁ ምግብ';

  @override
  String get surroundings_good => 'ጥሩ';

  @override
  String get surroundings_moderate => 'መጠነኛ';

  @override
  String get surroundings_unhealthy => 'ጤናማ ያልሆነ';

  @override
  String get notifications_title => 'ማሳወቂያዎች እና ማንቂያዎች';

  @override
  String get notifications_empty => 'ምንም አዲስ ማሳወቂያዎች የሉም';

  @override
  String get notifications_mark_read => 'ሁሉም እንደተነበቡ ምልክት ያድርጉበት';

  @override
  String get notifications_clear => 'ሁሉንም አጽዳ';

  @override
  String get reminders => 'የማስታወሻ ቅንብሮች';

  @override
  String get notifications => 'ማሳወቂያዎችን ይግፉ';

  @override
  String get reminders_breakfast_title => 'የቁርስ ማሳሰቢያ 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'እንደምን አደርክ! _PH_0__ ላይ ለተመጣጠነ ቁርስ የሚሆን ጊዜ።';
  }

  @override
  String get reminders_lunch_title => 'የምሳ ማሳሰቢያ 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'ባለበት ቆም ይበሉ እና ሚዛናዊ፣ ጥንቃቄ የተሞላበት ምሳ በ$time ይደሰቱ።';
  }

  @override
  String get reminders_dinner_title => 'የእራት ማስታወሻ 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'ለብርሃን፣ አርኪ እራት ጊዜ በ _PH_0__።';
  }

  @override
  String get reminders_water_title => 'ሃይድሬሽን መንቀጥቀጥ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'አዲስ ብርጭቆ ውሃ ለመጠጣት ጊዜው አሁን ነው! ( $time )';
  }

  @override
  String get reminders_weight_title => 'ሳምንታዊ ሚዛን ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'በብሉሚ ($time) ላይ ሳምንታዊ የሰውነት መለኪያዎችዎን ይከታተሉ።';
  }

  @override
  String get reminders_sleep_title => 'የመኝታ ሰዓት ንፋስ-ታች 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'ዘና ይበሉ እና ለተረጋጋ እንቅልፍ ይዘጋጁ ($time)።';
  }

  @override
  String get onboard_welcome => 'ወደ Bloomi እንኳን በደህና መጡ';

  @override
  String get onboard_sub => 'የእርስዎ ወዳጃዊ፣ ከመስመር ውጭ-የመጀመሪያው የጤና እና የአመጋገብ ጓደኛዎ።';

  @override
  String get onboard_get_started => 'እንጀምር';

  @override
  String get onboard_sign_in => 'ይግቡ';

  @override
  String get onboard_skip => 'ዝለል';

  @override
  String get onboard_choose_goal => 'የእርስዎ ዋና የጤና ግብ ምንድን ነው?';

  @override
  String get onboard_goal_weight_loss => 'ለስላሳ ክብደት መቀነስ';

  @override
  String get onboard_goal_muscle => 'የጡንቻ መጨመር እና ጥንካሬ';

  @override
  String get onboard_goal_energy => 'ዕለታዊ ኢነርጂ እና ጠቃሚነት';

  @override
  String get onboard_goal_habits => 'ጤናማ የአእምሮ አመጋገብ';

  @override
  String get onboard_about_you => 'ስለራስዎ ይንገሩን';

  @override
  String get onboard_lifestyle => 'የእርስዎ ዕለታዊ የዕለት ተዕለት ተግባር';

  @override
  String get onboard_permissions_title => 'ፈቃዶች እና የስርዓት መዳረሻ';

  @override
  String get onboard_permissions_sub => 'የማመሳሰል ደረጃዎችን፣ ልምምዶችን እና አስታዋሾችን ፍቀድ።';

  @override
  String get onboard_plan_ready_title => 'የእርስዎ ብጁ እቅድ ዝግጁ ነው!';

  @override
  String get onboard_plan_ready_sub =>
      'ለእርስዎ ብቻ የዋህ፣ ለግል የተበጀ የአመጋገብ እና የጤንነት ፍኖተ ካርታ አዘጋጅተናል።';

  @override
  String get onboard_enter_bloomi => 'Bloomi አስገባ';

  @override
  String get insights_weekly_report => 'ሳምንታዊ የጤንነት ማጠቃለያ';

  @override
  String insights_best_day(Object day) {
    return 'ምርጥ የወጥነት ቀን፡ _PH_0__';
  }

  @override
  String get insights_streaks_badges => 'ርዝራዥዎች እና ደረጃዎች';

  @override
  String insights_unlocked_on(Object date) {
    return 'በ _PH_0__ ላይ ተከፍቷል';
  }

  @override
  String get insights_keep_going => 'አስደናቂውን እድገት ይቀጥሉ!';

  @override
  String get widgets_title => 'የመነሻ ማያ ገጽ መግብሮች';

  @override
  String widgets_active_count(Object count) {
    return 'ንቁ መግብሮች፡ _PH_0__';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'እርምጃዎች እና ንቁ ቀለበት';

  @override
  String get widgets_water_title => 'የሃይድሪሽን ፈጣን ምዝግብ ማስታወሻ';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot ኮምፓኒየን';

  @override
  String get wear_os_title => 'OS Smartwatch ይልበሱ';

  @override
  String get wear_os_connected => 'ከመመልከት ጋር ተገናኝቷል።';

  @override
  String get wear_os_sync => 'የምልከታ ውሂብ አመሳስል።';

  @override
  String get theme_title => 'መልክ እና ገጽታ';

  @override
  String get theme_mode => 'ገጽታ ሁነታ';

  @override
  String get theme_light => 'ብርሃን';

  @override
  String get theme_dark => 'ጨለማ';

  @override
  String get theme_system => 'ስርዓት';

  @override
  String get theme_background_palette => 'የበስተጀርባ ቤተ-ስዕል';

  @override
  String get units_title => 'የመለኪያ ክፍሎች';

  @override
  String get units_metric => 'መለኪያ (ኪግ፣ ሴሜ፣ ሚሊ)';

  @override
  String get units_imperial => 'ኢምፔሪያል (ፓውንድ፣ ኢን፣ fl oz)';

  @override
  String get home_unable_load => 'ዳሽቦርድን መጫን አልተቻለም';

  @override
  String get home_health_permission_req => 'የጤና ግንኙነት ፈቃድ ያስፈልጋል';

  @override
  String get home_health_permission_desc =>
      'Bloomi ትክክለኛ እርምጃዎችን፣ የልብ ምትን ለመሳብ እና የሞባይል የቤት መግብሮችን በቅጽበት ለማመሳሰል የHealth Connect ፍቃድ ይፈልጋል።';

  @override
  String get home_allow_health => 'የጤና ግንኙነት ፍቀድ';

  @override
  String get home_ready_mindful_day => 'ለአስተሳሰብ ቀን ዝግጁ ነዎት? ✨';

  @override
  String get home_quick_add => 'ፈጣን አክል';

  @override
  String get home_live_gps => 'የቀጥታ ጂፒኤስ';

  @override
  String get home_calories_remaining_label => 'የሚቀሩ ካሎሪዎች';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'የተበላው: _PH_0__ / _PH_1__ kcal';
  }

  @override
  String get home_tap_water_tracker => 'የውሃ መከታተያ 💧 መታ ያድርጉ';

  @override
  String get home_water_goal_reached => '🎉 ዕለታዊ ግብ ደረሰ';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'ለዕለታዊ ግብ _PH_0__ ml';
  }

  @override
  String get home_details => 'ዝርዝሮች';

  @override
  String get home_upgrade_plan_desc =>
      'ግላዊነት የተላበሱ ዕለታዊ ኢላማዎችን እና AI ዕቅድን ለመክፈት ያሻሽሉ።';

  @override
  String get home_unlock => 'ክፈት 👑';

  @override
  String get home_quick_log_hint => 'የጤንነት ግቤት በፍጥነት ይመዝግቡ';

  @override
  String get food_serving_size => 'የማገልገል መጠን';

  @override
  String get food_serving_grams => 'ማገልገል (ሰ)';

  @override
  String get food_number_servings => 'የአገልግሎቶች ብዛት';

  @override
  String get food_calories_per_serving => 'ካሎሪዎች በአንድ አገልግሎት';

  @override
  String get food_recipe_ingredients => 'ንጥረ ነገሮች';

  @override
  String get food_recipe_add_ingredient => 'ንጥረ ነገር ይጨምሩ';

  @override
  String get food_recipe_directions => 'መመሪያዎች እና ማስታወሻዎች';

  @override
  String get food_recipe_total => 'ጠቅላላ የምግብ አዘገጃጀት አመጋገብ';

  @override
  String get food_recipe_per_serving => 'የተመጣጠነ ምግብን በማገልገል';

  @override
  String get food_recipe_saved_toast => 'ብጁ ምግብ በተሳካ ሁኔታ ተቀምጧል!';

  @override
  String get food_barcode_found => 'ምርት ተገኝቷል!';

  @override
  String get food_barcode_not_found_desc =>
      'ይህንን ባርኮድ በክፍት ዳታቤዝ ውስጥ ማግኘት አልቻልንም። እንደ ብጁ ምግብ ማከል ይችላሉ.';

  @override
  String get food_add_custom_btn => 'ብጁ ምግብን ያክሉ';

  @override
  String get food_scan_again => 'እንደገና ይቃኙ';

  @override
  String get food_review_items => 'የተገኙ ምግቦችን ይገምግሙ';

  @override
  String get food_review_hint => 'መጠኖችን ያስተካክሉ ወይም ማንኛውንም ያልታወቀ ንጥል ያስወግዱ';

  @override
  String get food_log_selected => 'ምዝግብ ማስታወሻ የተመረጡ ምግቦች';

  @override
  String get food_favourites_title => 'ተወዳጅ ምግቦች';

  @override
  String get food_recent_title => 'የቅርብ ጊዜ ምግቦች';

  @override
  String get food_no_favourites =>
      'እስካሁን ምንም ተወዳጅ ምግቦች የሉም። እዚህ ለመቆጠብ ማንኛውንም ምግብ ልብ ይበሉ።';

  @override
  String get food_no_recents => 'በቅርብ ጊዜ የተመዘገቡ ምግቦች አልተገኙም።';

  @override
  String get food_nutrition_details_title => 'ዕለታዊ የአመጋገብ ዝርዝሮች';

  @override
  String get food_macro_protein_label => 'የፕሮቲን ብልሽት';

  @override
  String get food_macro_carbs_label => 'የካርቦሃይድሬት መበላሸት።';

  @override
  String get food_macro_fat_label => 'የስብ ስብራት';

  @override
  String get food_macro_fiber_label => 'የፋይበር ብልሽት';

  @override
  String get food_daily_target_comparison => 'የዒላማ ንጽጽር';

  @override
  String food_target_label(Object target) {
    return 'ዒላማ፡ _PH_0__';
  }

  @override
  String get food_edit_entry => 'የማስታወሻ ደብተር ግቤትን ያርትዑ';

  @override
  String get food_delete_entry => 'ግቤትን ሰርዝ';

  @override
  String food_grams_short(Object grams) {
    return '_PH_0__ ግ';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '_PH_0__ kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '_PH_0__ ከ _PH_1__ ml';
  }

  @override
  String get water_intake_history => 'የዛሬው የውሃ መዝገቦች';

  @override
  String get water_no_logs_today =>
      'ዛሬ ምንም ውሃ አልገባም። ውሃ አፍስሱ እና ፈጣን አክል ቁልፍን ነካ ያድርጉ!';

  @override
  String get water_adjust_goal => 'ዕለታዊ ግብ አስተካክል።';

  @override
  String get health_connect_banner => 'ከጤና ግንኙነት ጋር ተገናኝቷል።';

  @override
  String get health_vitals_summary => 'የዕለት ተዕለት ጤና አስፈላጊ ነገሮች';

  @override
  String get health_latest_heart_rate => 'የቅርብ ጊዜ የልብ ምት';

  @override
  String get health_latest_bp => 'የደም ግፊት';

  @override
  String get health_latest_spo2 => 'የደም ኦክስጅን';

  @override
  String get health_latest_glucose => 'የደም ግሉኮስ';

  @override
  String get health_latest_weight => 'ክብደት';

  @override
  String get health_latest_sleep => 'የእንቅልፍ ቆይታ';

  @override
  String get health_add_manual => 'በእጅ መለኪያ አክል';

  @override
  String get health_history_trends => 'ታሪካዊ አዝማሚያዎች';

  @override
  String get health_sync_success => 'የጤና ውሂብ በተሳካ ሁኔታ ተመሳስሏል!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '_PH_0__ ሰዓት _PH_1__ ደቂቃ';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '_PH_0__ ኪ.ግ';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '_PH_0__ ደቂቃ';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '_PH_0__%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '_PH_0__ / _PH_1__ ሚሜ ኤችጂ';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '_PH_0__ mg/dL';
  }

  @override
  String get health_devices_title => 'የተገናኙ መሣሪያዎች እና ተለባሾች';

  @override
  String get health_devices_desc =>
      'የተጣመሩ ስማርት ሰዓቶችን፣ የአካል ብቃት መከታተያዎችን እና የጤና ዳሳሾችን ያቀናብሩ።';

  @override
  String get health_workout_editor_title => 'የአካል ብቃት እንቅስቃሴን ያርትዑ';

  @override
  String get health_workout_name_label => 'የአካል ብቃት እንቅስቃሴ ስም';

  @override
  String get health_workout_duration_label => 'የቆይታ ጊዜ (ደቂቃዎች)';

  @override
  String get health_workout_calories_label => 'የተገመቱ ካሎሪዎች (kcal)';

  @override
  String get health_workout_date_label => 'ቀን እና ሰዓት';

  @override
  String get plan_daily_wellness_roadmap => 'የእርስዎ ግላዊ የመንገድ ካርታ';

  @override
  String get plan_morning_routine => 'የጠዋት የዕለት ተዕለት ተግባር';

  @override
  String get plan_afternoon_routine => 'የቀትር ጤና';

  @override
  String get plan_evening_routine => 'የምሽት ንፋስ-ታች';

  @override
  String get plan_coach_badge => 'Bloomi AI አሰልጣኝ';

  @override
  String get plan_weekly_overview => 'የ7-ቀን ደህንነት ትኩረት';

  @override
  String get plan_targets_title => 'የጤንነት ዒላማዎች እና ግቦች';

  @override
  String get plan_calorie_budget_label => 'ዕለታዊ የካሎሪ በጀት';

  @override
  String get plan_water_budget_label => 'ዕለታዊ የውሃ ዒላማ';

  @override
  String get plan_step_budget_label => 'ዕለታዊ እርምጃ ግብ';

  @override
  String get plan_macro_split_label => 'የማክሮን ንጥረ ነገር ሬሾ';

  @override
  String get profile_personal_details => 'የግል ዝርዝሮች';

  @override
  String get profile_body_stats => 'የሰውነት መለኪያዎች';

  @override
  String get profile_app_preferences => 'ምርጫዎች እና የመተግበሪያ ቅንብሮች';

  @override
  String get profile_edit_name_hint => 'ስምህ';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ቁመት ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'ክብደት ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'ዕድሜ';

  @override
  String get profile_gender_male => 'ወንድ';

  @override
  String get profile_gender_female => 'ሴት';

  @override
  String get profile_gender_other => 'ሌላ/ ላለመናገር እመርጣለሁ።';

  @override
  String get profile_activity_sedentary =>
      'ቁጭ ብሎ (ከትንሽ እስከ ምንም የአካል ብቃት እንቅስቃሴ)';

  @override
  String get profile_activity_light => 'ቀላል ንቁ (1-3 ቀናት/ሳምንት)';

  @override
  String get profile_activity_moderate => 'መጠነኛ ንቁ (በሳምንት ከ3-5 ቀናት)';

  @override
  String get profile_activity_very => 'በጣም ንቁ (በሳምንት ከ6-7 ቀናት)';

  @override
  String get settings_wear_os_header => 'የWear OS ተጓዳኝ መተግበሪያ';

  @override
  String get settings_wear_os_desc =>
      'ካሎሪዎችን፣ ውሃን እና ደረጃዎችን ለማየት የBlomi ንጣፍ እና ውስብስብነት በእርስዎ Wear OS ሰዓት ላይ ይጫኑ።';

  @override
  String get settings_widgets_header => 'በይነተገናኝ አንድሮይድ መግብሮች';

  @override
  String get settings_widgets_desc =>
      'ለፈጣን ዝመናዎች የእውነተኛ ጊዜ መግብሮችን በመሣሪያዎ መነሻ ስክሪን ላይ ይሰኩ።';

  @override
  String get settings_about_header => 'ስለ Bloomi';

  @override
  String get settings_about_version => 'ሥሪት';

  @override
  String get settings_about_build => '100 ይገንቡ';

  @override
  String get settings_about_credits => 'ለጤናማ ኑሮ በጥንቃቄ የተሰራ።';

  @override
  String get settings_terms_header => 'ውሎች እና ሁኔታዎች';

  @override
  String get settings_privacy_header => 'የግላዊነት ፖሊሲ';

  @override
  String get settings_delete_header => 'መለያ እና ውሂብ ሰርዝ';

  @override
  String get settings_delete_warning =>
      'ይህ እርምጃ ሊቀለበስ አይችልም። ሁሉም የእርስዎ ምግቦች፣ ስፖርታዊ እንቅስቃሴዎች፣ መሠረታዊ ነገሮች እና መገለጫዎች እስከመጨረሻው ይሰረዛሉ።';

  @override
  String get settings_delete_confirm_btn => 'እስከመጨረሻው ሰርዝ';

  @override
  String get onboard_welcome_headline => 'ወደ Bloomi እንኳን በደህና መጡ';

  @override
  String get onboard_welcome_tagline =>
      'በህይወትዎ ዙሪያ የተነደፈ ረጋ ያለ፣ ጥንቃቄ የተሞላበት ደህንነትን መከታተል።';

  @override
  String get onboard_step_about => 'ስለ አንተ';

  @override
  String get onboard_step_goals => 'የእርስዎ ግቦች';

  @override
  String get onboard_step_lifestyle => 'የዕለት ተዕለት ልማዶች';

  @override
  String get onboard_step_permissions => 'ፈቃዶች';

  @override
  String get onboard_step_plan => 'ዝግጁ!';

  @override
  String get onboard_health_connect_perm => 'የጤና ግንኙነት መዳረሻ';

  @override
  String get onboard_step_sensors_perm => 'የእርምጃ ቆጣሪ ዳሳሽ';

  @override
  String get onboard_notif_perm => 'ልብ የሚሉ አስታዋሾች እና ማሳወቂያዎች';

  @override
  String get onboard_camera_perm => 'ካሜራ (ባርኮድ እና የምግብ መቃኛ)';

  @override
  String get onboard_grant_permissions => 'ፈቃዶችን ይስጡ';

  @override
  String get onboard_continue_dashboard => 'ዳሽቦርድን ክፈት';

  @override
  String get notif_channel_hydration_name => 'የሃይድሬሽን መንቀጥቀጥ';

  @override
  String get notif_channel_hydration_desc => 'ቀኑን ሙሉ ለስላሳ ውሃ አስታዋሾች';

  @override
  String get notif_channel_nutrition_name => 'የምግብ እና የተመጣጠነ ምግብ አስታዋሾች';

  @override
  String get notif_channel_nutrition_desc => 'ቁርስ፣ ምሳ እና እራት አስታዋሽ ማንቂያዎች';

  @override
  String get notif_channel_steps_name => 'የእርምጃ ደረጃዎች';

  @override
  String get notif_channel_steps_desc => 'እለታዊ የእርምጃ ግቦች ላይ ሲደርሱ ክብረ በዓላት';

  @override
  String get notif_channel_vitals_name => 'የጤና እና ጠቃሚ ቼኮች';

  @override
  String get notif_channel_vitals_desc => 'የክብደት እና የመኝታ ሰዓት ንፋስ-ወደታች አስታዋሾች';

  @override
  String get notif_action_log_water => '💧 ሎግ +250ml';

  @override
  String get notif_action_snooze => 'አሸልብ 15 ሚ';

  @override
  String get notif_action_log_meal => '🥗 የሎግ ምግብ';

  @override
  String get language => 'ቋንቋ';

  @override
  String get share => 'አጋራ';

  @override
  String common_days(Object count) {
    return '$count ቀ በፊት';
  }
}
