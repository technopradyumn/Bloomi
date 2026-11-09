// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get app_name => 'ப்ளூமி';

  @override
  String get nav_home => 'வீடு';

  @override
  String get nav_today => 'இன்று';

  @override
  String get nav_plan => 'திட்டம்';

  @override
  String get nav_food => 'உணவு';

  @override
  String get nav_food_diary => 'உணவு நாட்குறிப்பு';

  @override
  String get nav_workout => 'உடற்பயிற்சி பதிவு';

  @override
  String get nav_health => 'ஆரோக்கியம்';

  @override
  String get nav_profile => 'சுயவிவரம்';

  @override
  String get save => 'சேமி';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get delete => 'அழி';

  @override
  String get edit => 'திருத்து';

  @override
  String get done => 'முடிந்தது';

  @override
  String get close => 'மூடு';

  @override
  String get back => 'மீண்டும்';

  @override
  String get next => 'அடுத்து';

  @override
  String get continue_btn => 'தொடரவும்';

  @override
  String get confirm => 'உறுதிப்படுத்தவும்';

  @override
  String get search => 'தேடு';

  @override
  String get filter => 'வடிகட்டி';

  @override
  String get all => 'அனைத்தும்';

  @override
  String get active => 'செயலில்';

  @override
  String get today => 'இன்று';

  @override
  String get yesterday => 'நேற்று';

  @override
  String get tomorrow => 'நாளை';

  @override
  String get add => 'சேர்';

  @override
  String get remove => 'அகற்று';

  @override
  String get refresh => 'புதுப்பிக்கவும்';

  @override
  String get retry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get error => 'பிழை';

  @override
  String get success => 'வெற்றி';

  @override
  String get loading => 'ஏற்றுகிறது...';

  @override
  String get no_data => 'தரவு எதுவும் கிடைக்கவில்லை';

  @override
  String get offline => 'ஆஃப்லைன் பயன்முறை';

  @override
  String get offline_sub =>
      'மீண்டும் இணைக்கப்பட்டவுடன் மாற்றங்கள் ஒத்திசைக்கப்படும்';

  @override
  String get undo => 'பின்செல்லு';

  @override
  String get portion => 'பகுதி';

  @override
  String get quantity => 'அளவு';

  @override
  String get unit => 'அலகு';

  @override
  String get clear => 'தெளிவு';

  @override
  String get select => 'தேர்ந்தெடு';

  @override
  String get apply => 'செலுத்து';

  @override
  String get reset => 'மீட்டமை';

  @override
  String get ok => 'சரி';

  @override
  String get yes => 'ஆம்';

  @override
  String get no => 'இல்லை';

  @override
  String get optional => 'விருப்பமானது';

  @override
  String get calories => 'கலோரிகள்';

  @override
  String get protein => 'புரதம்';

  @override
  String get carbs => 'கார்ப்ஸ்';

  @override
  String get fat => 'கொழுப்பு';

  @override
  String get fiber => 'நார்ச்சத்து';

  @override
  String get water => 'தண்ணீர்';

  @override
  String get steps => 'படிகள்';

  @override
  String get kcal => 'கிலோகலோரி';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'மி.லி';

  @override
  String get kilograms => 'கிலோ';

  @override
  String get pounds => 'பவுண்ட்';

  @override
  String get centimeters => 'செ.மீ';

  @override
  String get inches => 'உள்ளே';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'மணி';

  @override
  String get minutes => 'நிமிடங்கள்';

  @override
  String get serving => 'பரிமாறுகிறது';

  @override
  String get servings => 'பரிமாறல்கள்';

  @override
  String get serving_size => 'பரிமாறும் அளவு';

  @override
  String get per_100g => '100 கிராம் ஒன்றுக்கு';

  @override
  String get india => 'இந்தியா';

  @override
  String get asia => 'ஆசியா';

  @override
  String get europe => 'ஐரோப்பா';

  @override
  String get middle_east => 'மத்திய கிழக்கு';

  @override
  String get africa => 'ஆப்பிரிக்கா';

  @override
  String get americas => 'அமெரிக்கா';

  @override
  String get home_title => 'வீடு';

  @override
  String get home_greeting_morning => 'காலை வணக்கம்';

  @override
  String get home_greeting_afternoon => 'நல்ல மதியம்';

  @override
  String get home_greeting_evening => 'நல்ல மாலை';

  @override
  String get home_streak_title => 'ப்ளாசம் ஸ்ட்ரீக்';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count நாட்கள் தொடர்',
      one: '1 நாள் தொடர்',
      zero: '0 நாட்கள் தொடர்',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'எரிந்தது';

  @override
  String get home_calories_budget => 'கலோரி பட்ஜெட்';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal கிலோகலோரி மீதமுள்ளது';
  }

  @override
  String get home_water_title => 'தினசரி நீரேற்றம்';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target மிலி';
  }

  @override
  String get home_steps_title => 'படிகள் நடந்தன';

  @override
  String get home_quick_actions => 'விரைவான செயல்கள்';

  @override
  String get home_log_meal => 'பதிவு உணவு';

  @override
  String get home_log_water => 'பதிவு நீர்';

  @override
  String get home_log_workout => 'பதிவு உடற்பயிற்சி';

  @override
  String get home_log_weight => 'பதிவு எடை';

  @override
  String get home_insights_title => 'இன்றைய நுண்ணறிவு';

  @override
  String get home_quote =>
      'சிறிய ஆரோக்கியமான தேர்வுகள் பூக்கும் மாற்றங்களை உருவாக்குகின்றன.';

  @override
  String get home_ai_coach_tip => 'ப்ளூமி AI பயிற்சியாளர்';

  @override
  String get home_surroundings => 'சுற்றுப்புறங்கள் & காற்று';

  @override
  String get home_notifications => 'அறிவிப்புகள்';

  @override
  String get home_daily_score => 'தினசரி ஆரோக்கிய மதிப்பெண்';

  @override
  String get home_view_all => 'அனைத்தையும் பார்க்கவும்';

  @override
  String get food_diary_title => 'உணவு நாட்குறிப்பு';

  @override
  String get food_breakfast => 'காலை உணவு';

  @override
  String get food_lunch => 'மதிய உணவு';

  @override
  String get food_dinner => 'இரவு உணவு';

  @override
  String get food_snacks => 'சிற்றுண்டி';

  @override
  String get food_add_food => 'உணவைச் சேர்க்கவும்';

  @override
  String get food_edit_food => 'உணவைத் திருத்தவும்';

  @override
  String get food_add_breakfast => 'காலை உணவைச் சேர்க்கவும்';

  @override
  String get food_add_lunch => 'மதிய உணவைச் சேர்க்கவும்';

  @override
  String get food_add_dinner => 'இரவு உணவைச் சேர்க்கவும்';

  @override
  String get food_add_snack => 'சிற்றுண்டி சேர்க்கவும்';

  @override
  String get food_total_calories => 'மொத்த கலோரிகள்';

  @override
  String get food_empty_meal =>
      'இந்த உணவிற்கு இதுவரை எந்த உணவுகளும் பதிவு செய்யப்படவில்லை';

  @override
  String get food_empty_diary => 'இந்த நாளுக்கான உணவுகள் பதிவு செய்யப்படவில்லை';

  @override
  String get food_log_first_meal =>
      'உங்கள் முதல் சுவையான உணவை பதிவு செய்ய + என்பதைத் தட்டவும்';

  @override
  String get food_quick_add => 'விரைவான சேர்';

  @override
  String get food_search_hint => 'உணவுகள், பழங்கள், பருப்பு, ரொட்டி...';

  @override
  String get food_custom_recipe => 'விருப்ப உணவு & செய்முறை';

  @override
  String get food_scan_barcode => 'பார்கோடு ஸ்கேன் செய்யவும்';

  @override
  String get food_camera_scan => 'AI உணவு ஸ்கேனர்';

  @override
  String get food_recent => 'சமீபத்திய உணவுகள்';

  @override
  String get food_favourites => 'பிடித்தவை';

  @override
  String get food_macro_summary => 'மக்ரோநியூட்ரியண்ட் முறிவு';

  @override
  String get food_delete_meal_confirm =>
      'இந்த உருப்படியை நிச்சயமாக அகற்ற விரும்புகிறீர்களா?';

  @override
  String get food_item_deleted => 'உணவுப் பொருள் அகற்றப்பட்டது';

  @override
  String get food_remaining => 'மீதமுள்ள';

  @override
  String get food_consumed => 'நுகரப்படும்';

  @override
  String food_of_target(Object target) {
    return '$target கிலோகலோரி';
  }

  @override
  String get foodSearch_title => 'உணவுகளைத் தேடுங்கள்';

  @override
  String get foodSearch_scan_barcode => 'பார்கோடு ஸ்கேன் செய்யவும்';

  @override
  String get foodSearch_take_photo => 'ஸ்னாப் உணவு புகைப்படம்';

  @override
  String get foodSearch_custom_food => 'தனிப்பயன் உணவை உருவாக்கவும்';

  @override
  String get foodSearch_recent_searches => 'சமீபத்திய தேடல்கள்';

  @override
  String get foodSearch_popular => 'பிரபலமான உணவுகள்';

  @override
  String get foodSearch_no_results =>
      'உங்கள் தேடலுக்குப் பொருந்தக்கூடிய உணவுகள் எதுவுமில்லை';

  @override
  String get barcode_title => 'பார்கோடு ஸ்கேனர்';

  @override
  String get barcode_align => 'கேமரா சட்டகத்தின் உள்ளே பார்கோடு சீரமைக்கவும்';

  @override
  String get barcode_not_found => 'தரவுத்தளத்தில் தயாரிப்பு காணப்படவில்லை';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro உடன் பார்கோடு ஸ்கேனிங் கிடைக்கிறது';

  @override
  String get camera_title => 'AI உணவு ஸ்கேனர்';

  @override
  String get camera_tap_hint => 'உங்கள் உணவின் தெளிவான புகைப்படத்தை எடுங்கள்';

  @override
  String get camera_analysing => 'உணவு தட்டுகளை பகுப்பாய்வு செய்கிறது...';

  @override
  String get camera_detected => 'கண்டறியப்பட்ட பொருட்கள்';

  @override
  String get camera_flash => 'ஃப்ளாஷ் நிலைமாற்று';

  @override
  String get camera_retake => 'புகைப்படத்தை மீண்டும் எடுக்கவும்';

  @override
  String get camera_confirm_food => 'பொருட்களை உறுதிப்படுத்தவும்';

  @override
  String get customFood_title => 'விருப்ப உணவு & செய்முறை';

  @override
  String get customFood_name_hint => 'டிஷ் அல்லது மூலப்பொருளின் பெயர்';

  @override
  String get customFood_calories_hint => 'கலோரிகள் (கிலோ கலோரி)';

  @override
  String get customFood_protein_hint => 'புரதம் (கிராம்)';

  @override
  String get customFood_carbs_hint => 'கார்ப்ஸ் (கிராம்)';

  @override
  String get customFood_fat_hint => 'கொழுப்பு (கிராம்)';

  @override
  String get customFood_save => 'செய்முறையைச் சேமிக்கவும்';

  @override
  String get water_tracker_title => 'நீர் கண்காணிப்பு';

  @override
  String get water_daily_target => 'தினசரி நீரேற்றம் இலக்கு';

  @override
  String get water_logged_today => 'இன்று உள்நுழைந்துள்ளது';

  @override
  String get water_add_glass => '+250 மில்லி கண்ணாடி';

  @override
  String get water_add_bottle => '+500 மில்லி பாட்டில்';

  @override
  String get water_custom_amount => 'விருப்பத் தொகை';

  @override
  String get water_reminder_tip =>
      'நிலையான ஆற்றலுக்கு நாள் முழுவதும் தொடர்ந்து தண்ணீர் குடிக்கவும்.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount மில்லி தண்ணீர் 💧 உள்நுழைந்தது';
  }

  @override
  String get workout_title => 'உடற்பயிற்சி பதிவு';

  @override
  String get workout_add_exercise => 'வொர்க்அவுட்டைச் சேர்க்கவும்';

  @override
  String get workout_cardio => 'கார்டியோ';

  @override
  String get workout_strength => 'வலிமை';

  @override
  String get workout_yoga => 'யோகா & நெகிழ்வுத்தன்மை';

  @override
  String get workout_duration => 'கால அளவு';

  @override
  String get workout_intensity => 'தீவிரம்';

  @override
  String get workout_calories_burned => 'கலோரிகள் எரிக்கப்பட்டது';

  @override
  String get workout_empty =>
      'இன்று உடற்பயிற்சிகள் எதுவும் பதிவு செய்யப்படவில்லை';

  @override
  String get workout_save_success => 'உடற்பயிற்சி வெற்றிகரமாக சேமிக்கப்பட்டது!';

  @override
  String get workout_type => 'உடற்பயிற்சி வகை';

  @override
  String get workout_notes => 'குறிப்புகள் & பிரதிபலிப்புகள்';

  @override
  String get health_overview_title => 'உடல்நலம் & உயிர்ச்சத்து';

  @override
  String get health_heart_rate => 'இதய துடிப்பு';

  @override
  String get health_blood_oxygen => 'இரத்த ஆக்ஸிஜன் (SpO2)';

  @override
  String get health_blood_pressure => 'இரத்த அழுத்தம்';

  @override
  String get health_blood_glucose => 'இரத்த குளுக்கோஸ்';

  @override
  String get health_body_temperature => 'உடல் வெப்பநிலை';

  @override
  String get health_sleep_tracking => 'தூக்க கண்காணிப்பு';

  @override
  String get health_weight_tracking => 'எடை மற்றும் உடல் அமைப்பு';

  @override
  String get health_waist_hip => 'இடுப்பு-இடுப்பு விகிதம்';

  @override
  String get health_devices_hub => 'சாதனங்கள் & ஸ்மார்ட்வாட்ச் ஹப்';

  @override
  String get health_sync_now => 'சுகாதாரத் தரவை ஒத்திசைக்கவும்';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'கடைசியாக ஒத்திசைத்தது: $time';
  }

  @override
  String get health_manual_entry => 'கைமுறை சுகாதார நுழைவு';

  @override
  String get health_metric_detail => 'மெட்ரிக் விவரங்கள்';

  @override
  String get health_connected_sensors => 'இணைக்கப்பட்ட ஹெல்த் சென்சார்கள்';

  @override
  String get plan_title => 'தினசரி திட்டம்';

  @override
  String get plan_weekly_title => 'வாராந்திர ஆரோக்கிய திட்டம்';

  @override
  String get plan_calorie_target => 'கலோரி இலக்கு';

  @override
  String get plan_water_target => 'நீரேற்றம் இலக்கு';

  @override
  String get plan_step_target => 'படி இலக்கு';

  @override
  String get plan_sleep_target => 'தூக்க இலக்கு';

  @override
  String get plan_meal_suggestions => 'உணவு பரிந்துரைகள்';

  @override
  String get plan_healthy_habits => 'ஆரோக்கியமான பழக்கங்கள் & குறிப்புகள்';

  @override
  String get plan_coach_advice => 'Bloomi AI பயிற்சியாளர் பரிந்துரைகள்';

  @override
  String get plan_generated_title => 'தனிப்பயனாக்கப்பட்ட தினசரி அட்டவணை';

  @override
  String get profile_title => 'சுயவிவரம்';

  @override
  String get profile_edit => 'சுயவிவரத்தைத் திருத்து';

  @override
  String get profile_name => 'பெயர்';

  @override
  String get profile_age => 'வயது';

  @override
  String get profile_gender => 'பாலினம்';

  @override
  String get profile_height => 'உயரம்';

  @override
  String get profile_weight => 'எடை';

  @override
  String get profile_goal => 'முதன்மை இலக்கு';

  @override
  String get profile_activity_level => 'செயல்பாட்டு நிலை';

  @override
  String get profile_stats => 'எனது ஆரோக்கிய புள்ளிவிவரங்கள்';

  @override
  String get profile_saved => 'சுயவிவரம் வெற்றிகரமாக புதுப்பிக்கப்பட்டது';

  @override
  String get profile_bmi => 'உடல் நிறை குறியீட்டெண் (பிஎம்ஐ)';

  @override
  String get profile_membership => 'உறுப்பினர்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get preferences_habits => 'விருப்பங்களும் பழக்கங்களும்';

  @override
  String get appearance_theme => 'தோற்றம் & தீம்';

  @override
  String get appearance_theme_sub =>
      'டார்க், லைட், சிஸ்டம் மோட் & ஆப் பின்னணி விருப்பங்கள்';

  @override
  String get permissions => 'அனுமதிகள் & கணினி அணுகல்';

  @override
  String get permissions_sub =>
      'ஹெல்த் கனெக்ட், ஸ்டெப் சென்சார்கள், ஜிபிஎஸ், அறிவிப்புகள் & கேமரா';

  @override
  String get reminders_notifications => 'நினைவூட்டல்கள் & அறிவிப்புகள்';

  @override
  String get reminders_sub =>
      'உணவு நேரம், தண்ணீர், எடை சரிபார்ப்பு & படுக்கை நேர நினைவூட்டல்கள்';

  @override
  String get units_of_measurement => 'அளவீட்டு அலகுகள்';

  @override
  String get units_sub =>
      'மெட்ரிக் (கிலோ, செமீ, மில்லி, கிமீ) அல்லது இம்பீரியல் (பவுண்ட், அடி/இன், fl oz)';

  @override
  String get app_language => 'பயன்பாட்டு மொழி';

  @override
  String get language_sub =>
      'ஆங்கிலம், ஹிந்தி (ஹிந்தி), ஹிங்கிலிஷ் & 195+ உலகளாவிய மொழிகள்';

  @override
  String get home_screen_widgets => 'முகப்புத் திரை விட்ஜெட்கள்';

  @override
  String get widgets_sub =>
      'நேரடி ஆண்ட்ராய்டு விட்ஜெட்டுகள்: ஹப், ஸ்டெப்ஸ், வாட்டர், நியூட்ரிஷன் & மாஸ்கட்';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'ஸ்மார்ட்வாட்ச் துணை, டைல்ஸ், சிக்கல்கள் & நேரடி உயிர்கள்';

  @override
  String get goals_wellness => 'இலக்குகள் மற்றும் ஆரோக்கிய நுண்ணறிவு';

  @override
  String get nutrition_targets => 'ஊட்டச்சத்து இலக்குகள் & மேக்ரோ பிளவு';

  @override
  String get nutrition_targets_sub =>
      'கலோரி இலக்கு, புரதம், கார்ப்ஸ், கொழுப்பு & நீர் இலக்கு';

  @override
  String get weekly_recap => 'வாராந்திர ஆரோக்கிய மறுபரிசீலனை';

  @override
  String get weekly_recap_sub =>
      '7-நாள் கலோரி சராசரி, மேக்ரோ விகிதம் & சிறந்த நாள்';

  @override
  String get streaks_milestones => 'கோடுகள் & மைல்கற்கள்';

  @override
  String get streaks_sub => 'செயலில் மலரும் கோடுகள், பேட்ஜ்கள் & சாதனைகள்';

  @override
  String get connected_devices =>
      'இணைக்கப்பட்ட சாதனங்கள் & சுற்றுச்சூழல் அமைப்பு';

  @override
  String get devices_hub => 'சாதனங்கள் & ஸ்மார்ட்வாட்ச் ஹப்';

  @override
  String get devices_hub_sub =>
      'ஹெல்த் கனெக்ட், கேலக்ஸி வாட்ச், பிக்சல் வாட்ச், கார்மின்';

  @override
  String get surroundings_weather => 'சுற்றுப்புறங்கள் & வானிலை';

  @override
  String get surroundings_sub =>
      'காற்றின் தரம் (AQI), UV இன்டெக்ஸ் & வானிலை நீரேற்றம் குறிப்புகள்';

  @override
  String get bloomi_pro => 'ப்ளூமி ப்ரோ சந்தா';

  @override
  String get bloomi_pro_sub =>
      'AI திட்ட பயிற்சியாளர், 5 முகப்புத் திரை விட்ஜெட்டுகள் & முக்கிய கண்காணிப்பு';

  @override
  String get about_security => 'பற்றி & பாதுகாப்பு';

  @override
  String get about_bloomi => 'ப்ளூமி பற்றி';

  @override
  String get about_bloomi_sub =>
      'விவரக்குறிப்புகள், பதிப்பு, பண்புக்கூறுகளை உருவாக்கவும்';

  @override
  String get privacy_policy => 'தனியுரிமைக் கொள்கை';

  @override
  String get privacy_policy_sub =>
      'ஆஃப்லைனில் முதலில், சாதனத்தில் தரவு கட்டமைப்பு';

  @override
  String get terms_conditions => 'விதிமுறைகள் & நிபந்தனைகள்';

  @override
  String get terms_conditions_sub =>
      'சேவை விதிமுறைகள் மற்றும் ஆரோக்கிய வழிகாட்டுதல்கள்';

  @override
  String get delete_account => 'கணக்கு மற்றும் தரவை நீக்கு';

  @override
  String get delete_account_sub =>
      'உள்ளூர் SQLite தரவு மற்றும் கிளவுட் காப்புப்பிரதிகளை மீளமுடியாமல் அழிக்கவும்';

  @override
  String get healthy_habits =>
      'மென்மையான, நீடித்த ஆரோக்கிய பழக்கங்களை உருவாக்குங்கள்';

  @override
  String get all_logs => 'எனது கண்காணிக்கப்பட்ட தரவு & பதிவுகள்';

  @override
  String get search_language => 'மொழி அல்லது சொந்த எழுத்து மூலம் தேடவும்...';

  @override
  String get languages_available => 'கிடைக்கும் மொழிகள்';

  @override
  String get no_matching_languages => 'பொருந்தக்கூடிய மொழிகள் எதுவும் இல்லை';

  @override
  String get try_searching =>
      'சொந்த ஸ்கிரிப்ட் அல்லது ஆங்கில எழுத்துப்பிழை மூலம் தேட முயற்சிக்கவும்';

  @override
  String get partially_translated => 'பகுதி மொழிபெயர்க்கப்பட்டது';

  @override
  String get complete_translation => 'நிறைவு';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'மொழி $name ( $nativeName ) க்கு அமைக்கப்பட்டது';
  }

  @override
  String get surroundings_title => 'சுற்றுப்புறங்கள் & சுற்றுச்சூழல்';

  @override
  String get surroundings_aqi => 'காற்றின் தரக் குறியீடு';

  @override
  String get surroundings_uv => 'UV குறியீடு';

  @override
  String get surroundings_temp => 'வெப்பநிலை';

  @override
  String get surroundings_humidity => 'ஈரப்பதம்';

  @override
  String get surroundings_hydration_advice =>
      'தற்போதைய வானிலையில் நன்கு நீரேற்றமாக இருங்கள்.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'உணவைத் தேடுங்கள்';

  @override
  String get food_quick_barcode => 'பார்கோடை ஸ்கேன் 👑';

  @override
  String get food_quick_water => 'தண்ணீர் சேர்க்கவும்';

  @override
  String get food_quick_custom => 'விருப்ப உணவு';

  @override
  String get surroundings_good => 'நல்லது';

  @override
  String get surroundings_moderate => 'மிதமான';

  @override
  String get surroundings_unhealthy => 'ஆரோக்கியமற்றது';

  @override
  String get notifications_title => 'அறிவிப்புகள் & எச்சரிக்கைகள்';

  @override
  String get notifications_empty => 'புதிய அறிவிப்புகள் இல்லை';

  @override
  String get notifications_mark_read => 'அனைத்தையும் படித்ததாகக் குறிக்கவும்';

  @override
  String get notifications_clear => 'அனைத்தையும் அழி';

  @override
  String get reminders => 'நினைவூட்டல் அமைப்புகள்';

  @override
  String get notifications => 'அறிவிப்புகள்';

  @override
  String get reminders_breakfast_title => 'காலை உணவு நினைவூட்டல் 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'காலை வணக்கம்! $time இல் ஊட்டமளிக்கும் காலை உணவுக்கான நேரம்.';
  }

  @override
  String get reminders_lunch_title => 'மதிய உணவு நினைவூட்டல் 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'இடைநிறுத்தி, $time இல் சமச்சீரான, கவனத்துடன் மதிய உணவை அனுபவிக்கவும்.';
  }

  @override
  String get reminders_dinner_title => 'இரவு உணவு நினைவூட்டல் 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time இல் லேசான, திருப்திகரமான இரவு உணவுக்கான நேரம்.';
  }

  @override
  String get reminders_water_title => 'ஹைட்ரேஷன் நட்ஜ் 💧';

  @override
  String reminders_water_body(Object time) {
    return 'ஒரு கிளாஸ் தண்ணீர் குடிக்க வேண்டிய நேரம்! ($time)';
  }

  @override
  String get reminders_weight_title => 'வாராந்திர எடை ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ($time) இல் உங்கள் வாராந்திர உடல் அளவீடுகளைக் கண்காணிக்கவும்.';
  }

  @override
  String get reminders_sleep_title => 'உறக்க நேர காற்று-கீழ் 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'ஓய்வெடுத்து, நிம்மதியான உறக்கத்திற்குத் தயாராகுங்கள் ($time ).';
  }

  @override
  String get onboard_welcome => 'ப்ளூமிக்கு வரவேற்கிறோம்';

  @override
  String get onboard_sub =>
      'உங்கள் நட்பு, ஆஃப்லைனில் முதல் உடல்நலம் மற்றும் ஊட்டச்சத்து துணை.';

  @override
  String get onboard_get_started => 'தொடங்குங்கள்';

  @override
  String get onboard_sign_in => 'உள்நுழையவும்';

  @override
  String get onboard_skip => 'தவிர்க்கவும்';

  @override
  String get onboard_choose_goal => 'உங்கள் முதன்மை ஆரோக்கிய இலக்கு என்ன?';

  @override
  String get onboard_goal_weight_loss => 'மென்மையான எடை இழப்பு';

  @override
  String get onboard_goal_muscle => 'தசை ஆதாயம் மற்றும் வலிமை';

  @override
  String get onboard_goal_energy => 'தினசரி ஆற்றல் & உயிர்ச்சக்தி';

  @override
  String get onboard_goal_habits => 'ஆரோக்கியமான மைண்ட்ஃபுல் உணவு';

  @override
  String get onboard_about_you => 'உங்களைப் பற்றி எங்களிடம் கூறுங்கள்';

  @override
  String get onboard_lifestyle => 'உங்கள் தினசரி வழக்கம்';

  @override
  String get onboard_permissions_title => 'அனுமதிகள் & கணினி அணுகல்';

  @override
  String get onboard_permissions_sub =>
      'ஒத்திசைவு படிகள், உடற்பயிற்சிகள் மற்றும் நினைவூட்டல்களுக்கான அணுகலை வழங்கவும்.';

  @override
  String get onboard_plan_ready_title =>
      'உங்கள் தனிப்பயன் திட்டம் தயாராக உள்ளது!';

  @override
  String get onboard_plan_ready_sub =>
      'உங்களுக்காக மென்மையான, தனிப்பயனாக்கப்பட்ட ஊட்டச்சத்து மற்றும் ஆரோக்கிய சாலை வரைபடத்தை நாங்கள் வடிவமைத்துள்ளோம்.';

  @override
  String get onboard_enter_bloomi => 'ப்ளூமியை உள்ளிடவும்';

  @override
  String get insights_weekly_report => 'வாராந்திர ஆரோக்கிய மறுபரிசீலனை';

  @override
  String insights_best_day(Object day) {
    return 'சிறந்த நிலைத்தன்மை நாள்: $day';
  }

  @override
  String get insights_streaks_badges => 'கோடுகள் & மைல்கற்கள்';

  @override
  String insights_unlocked_on(Object date) {
    return '$date அன்று திறக்கப்பட்டது';
  }

  @override
  String get insights_keep_going => 'அருமையான முன்னேற்றத்தைத் தொடருங்கள்!';

  @override
  String get widgets_title => 'முகப்புத் திரை விட்ஜெட்டுகள்';

  @override
  String widgets_active_count(Object count) {
    return 'செயலில் உள்ள விட்ஜெட்டுகள்: $count';
  }

  @override
  String get widgets_hub_title => 'ப்ளூமி ஆரோக்கிய மையம்';

  @override
  String get widgets_steps_title => 'படிகள் & செயலில் வளையம்';

  @override
  String get widgets_water_title => 'நீரேற்றம் விரைவு பதிவு';

  @override
  String get widgets_mascot_title => 'ப்ளூமி மஸ்காட் துணை';

  @override
  String get wear_os_title => 'OS ஸ்மார்ட்வாட்ச் அணியுங்கள்';

  @override
  String get wear_os_connected => 'வாட்சுடன் இணைக்கப்பட்டது';

  @override
  String get wear_os_sync => 'கண்காணிப்பு தரவை ஒத்திசைக்கவும்';

  @override
  String get theme_title => 'தோற்றம் & தீம்';

  @override
  String get theme_mode => 'தீம் முறை';

  @override
  String get theme_light => 'லைட்';

  @override
  String get theme_dark => 'டார்க்';

  @override
  String get theme_system => 'சிஸ்டம்';

  @override
  String get theme_background_palette => 'பின்னணி தட்டு';

  @override
  String get units_title => 'அளவீட்டு அலகுகள்';

  @override
  String get units_metric => 'மெட்ரிக் (கிலோ, செமீ, மிலி)';

  @override
  String get units_imperial => 'இம்பீரியல் (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'டாஷ்போர்டை ஏற்ற முடியவில்லை';

  @override
  String get home_health_permission_req => 'ஹெல்த் கனெக்ட் அனுமதி தேவை';

  @override
  String get home_health_permission_desc =>
      'உண்மையான படிகள், இதயத் துடிப்பு மற்றும் மொபைல் ஹோம் விட்ஜெட்களை நிகழ்நேரத்தில் ஒத்திசைக்க, புளூமிக்கு Health Connect அனுமதி தேவை.';

  @override
  String get home_allow_health => 'ஹெல்த் இணைப்பை அனுமதிக்கவும்';

  @override
  String get home_ready_mindful_day => 'கவனமுள்ள ஒரு நாளுக்கு தயாரா? ✨';

  @override
  String get home_quick_add => 'விரைவான சேர்';

  @override
  String get home_live_gps => 'நேரடி ஜி.பி.எஸ்';

  @override
  String get home_calories_remaining_label => 'கலோரிகள் மீதமுள்ளன';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'சாப்பிட்டது: $consumed / $target கிலோகலோரி';
  }

  @override
  String get home_tap_water_tracker => 'வாட்டர் டிராக்கருக்குத் தட்டவும் 💧';

  @override
  String get home_water_goal_reached => 'தினசரி இலக்கை எட்டியது 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'தினசரி இலக்கை அடைய $remaining மில்லி';
  }

  @override
  String get home_details => 'விவரங்கள்';

  @override
  String get home_upgrade_plan_desc =>
      'தனிப்பயனாக்கப்பட்ட தினசரி இலக்குகள் மற்றும் AI திட்டத்தைத் திறக்க மேம்படுத்தவும்';

  @override
  String get home_unlock => 'திறக்கவும் 👑';

  @override
  String get home_quick_log_hint =>
      'ஆரோக்கிய உள்ளீட்டை விரைவாக பதிவு செய்யவும்';

  @override
  String get food_serving_size => 'பரிமாறும் அளவு';

  @override
  String get food_serving_grams => 'சேவை (கிராம்)';

  @override
  String get food_number_servings => 'சேவைகளின் எண்ணிக்கை';

  @override
  String get food_calories_per_serving => 'ஒரு சேவைக்கு கலோரிகள்';

  @override
  String get food_recipe_ingredients => 'தேவையான பொருட்கள்';

  @override
  String get food_recipe_add_ingredient => 'மூலப்பொருள் சேர்க்கவும்';

  @override
  String get food_recipe_directions => 'வழிமுறைகள் & குறிப்புகள்';

  @override
  String get food_recipe_total => 'மொத்த செய்முறை ஊட்டச்சத்து';

  @override
  String get food_recipe_per_serving => 'ஒரு சேவை ஊட்டச்சத்து';

  @override
  String get food_recipe_saved_toast =>
      'பிரத்தியேக உணவு வெற்றிகரமாக சேமிக்கப்பட்டது!';

  @override
  String get food_barcode_found => 'தயாரிப்பு கிடைத்தது!';

  @override
  String get food_barcode_not_found_desc =>
      'திறந்த தரவுத்தளத்தில் இந்த பார்கோடு எங்களால் கண்டுபிடிக்க முடியவில்லை. நீங்கள் அதை ஒரு விருப்ப உணவாக சேர்க்கலாம்.';

  @override
  String get food_add_custom_btn => 'விருப்ப உணவைச் சேர்க்கவும்';

  @override
  String get food_scan_again => 'மீண்டும் ஸ்கேன் செய்யவும்';

  @override
  String get food_review_items => 'கண்டறியப்பட்ட உணவுகளை மதிப்பாய்வு செய்யவும்';

  @override
  String get food_review_hint =>
      'அளவுகளை சரிசெய்யவும் அல்லது அங்கீகரிக்கப்படாத உருப்படியை அகற்றவும்';

  @override
  String get food_log_selected => 'தேர்ந்தெடுக்கப்பட்ட உணவுகளை பதிவு செய்யவும்';

  @override
  String get food_favourites_title => 'பிடித்த உணவுகள்';

  @override
  String get food_recent_title => 'சமீபத்திய உணவுகள்';

  @override
  String get food_no_favourites =>
      'பிடித்த உணவுகள் எதுவும் இல்லை. இங்கே சேமிக்க எந்த உணவையும் இதயத்தைத் தட்டவும்.';

  @override
  String get food_no_recents =>
      'சமீபத்தில் பதிவு செய்யப்பட்ட உணவுகள் எதுவும் கிடைக்கவில்லை.';

  @override
  String get food_nutrition_details_title => 'தினசரி ஊட்டச்சத்து விவரங்கள்';

  @override
  String get food_macro_protein_label => 'புரதச் சிதைவு';

  @override
  String get food_macro_carbs_label => 'கார்ப்ஸ் முறிவு';

  @override
  String get food_macro_fat_label => 'கொழுப்பு முறிவு';

  @override
  String get food_macro_fiber_label => 'ஃபைபர் முறிவு';

  @override
  String get food_daily_target_comparison => 'இலக்கு ஒப்பீடு';

  @override
  String food_target_label(Object target) {
    return 'இலக்கு: $target';
  }

  @override
  String get food_edit_entry => 'டைரி பதிவைத் திருத்தவும்';

  @override
  String get food_delete_entry => 'உள்ளீட்டை நீக்கு';

  @override
  String food_grams_short(Object grams) {
    return '$grams கிராம்';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal கிலோகலோரி';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current $target மிலி';
  }

  @override
  String get water_intake_history => 'இன்றைய நீர் பதிவுகள்';

  @override
  String get water_no_logs_today =>
      'இன்றும் தண்ணீர் வரவில்லை. நீரேற்றம் செய்து, விரைவான சேர் பொத்தானைத் தட்டவும்!';

  @override
  String get water_adjust_goal => 'தினசரி இலக்கை சரிசெய்யவும்';

  @override
  String get health_connect_banner => 'ஹெல்த் கனெக்டுடன் இணைக்கப்பட்டுள்ளது';

  @override
  String get health_vitals_summary => 'தினசரி ஆரோக்கியம்';

  @override
  String get health_latest_heart_rate => 'சமீபத்திய இதய துடிப்பு';

  @override
  String get health_latest_bp => 'இரத்த அழுத்தம்';

  @override
  String get health_latest_spo2 => 'இரத்த ஆக்ஸிஜன்';

  @override
  String get health_latest_glucose => 'இரத்த குளுக்கோஸ்';

  @override
  String get health_latest_weight => 'எடை';

  @override
  String get health_latest_sleep => 'தூக்க காலம்';

  @override
  String get health_add_manual => 'கைமுறை அளவீட்டைச் சேர்க்கவும்';

  @override
  String get health_history_trends => 'வரலாற்றுப் போக்குகள்';

  @override
  String get health_sync_success =>
      'ஆரோக்கிய தரவு வெற்றிகரமாக ஒத்திசைக்கப்பட்டது!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours மணி $mins நிமிடங்கள்';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val கிலோ';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm பிபிஎம்';
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
  String get health_devices_title => 'இணைக்கப்பட்ட சாதனங்கள் & அணியக்கூடியவை';

  @override
  String get health_devices_desc =>
      'இணைக்கப்பட்ட ஸ்மார்ட்வாட்ச்கள், ஃபிட்னஸ் டிராக்கர்கள் மற்றும் ஹெல்த் சென்சார்களை நிர்வகிக்கவும்.';

  @override
  String get health_workout_editor_title => 'வொர்க்அவுட்டைத் திருத்து';

  @override
  String get health_workout_name_label => 'உடற்பயிற்சி பெயர்';

  @override
  String get health_workout_duration_label => 'கால அளவு (நிமிடங்கள்)';

  @override
  String get health_workout_calories_label =>
      'மதிப்பிடப்பட்ட கலோரிகள் (கிலோ கலோரி)';

  @override
  String get health_workout_date_label => 'தேதி மற்றும் நேரம்';

  @override
  String get plan_daily_wellness_roadmap =>
      'உங்கள் தனிப்பயனாக்கப்பட்ட சாலை வரைபடம்';

  @override
  String get plan_morning_routine => 'காலை வழக்கம்';

  @override
  String get plan_afternoon_routine => 'மதிய ஆரோக்கியம்';

  @override
  String get plan_evening_routine => 'மாலைக் காற்று';

  @override
  String get plan_coach_badge => 'ப்ளூமி AI பயிற்சியாளர்';

  @override
  String get plan_weekly_overview => '7-நாள் ஆரோக்கிய கவனம்';

  @override
  String get plan_targets_title => 'ஆரோக்கிய இலக்குகள் & இலக்குகள்';

  @override
  String get plan_calorie_budget_label => 'தினசரி கலோரி பட்ஜெட்';

  @override
  String get plan_water_budget_label => 'தினசரி நீர் இலக்கு';

  @override
  String get plan_step_budget_label => 'தினசரி படி இலக்கு';

  @override
  String get plan_macro_split_label => 'மக்ரோநியூட்ரியண்ட் விகிதம்';

  @override
  String get profile_personal_details => 'தனிப்பட்ட விவரங்கள்';

  @override
  String get profile_body_stats => 'உடல் அளவீடுகள்';

  @override
  String get profile_app_preferences => 'விருப்பத்தேர்வுகள் & ஆப்ஸ் அமைப்புகள்';

  @override
  String get profile_edit_name_hint => 'உங்கள் பெயர்';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'உயரம் ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'எடை ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'வயது';

  @override
  String get profile_gender_male => 'ஆண்';

  @override
  String get profile_gender_female => 'பெண்';

  @override
  String get profile_gender_other => 'மற்றவை / சொல்ல வேண்டாம்';

  @override
  String get profile_activity_sedentary =>
      'உட்காராமல் இருப்பது (சிறிது உடற்பயிற்சி இல்லை)';

  @override
  String get profile_activity_light => 'லேசான செயலில் (1-3 நாட்கள்/வாரம்)';

  @override
  String get profile_activity_moderate => 'மிதமான செயலில் (3-5 நாட்கள்/வாரம்)';

  @override
  String get profile_activity_very => 'மிகவும் செயலில் (6-7 நாட்கள்/வாரம்)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'கலோரிகள், தண்ணீர் மற்றும் படிகளைப் பார்க்க உங்கள் Wear OS கடிகாரத்தில் Bloomi டைல் மற்றும் சிக்கலை நிறுவவும்.';

  @override
  String get settings_widgets_header => 'ஊடாடும் Android விட்ஜெட்டுகள்';

  @override
  String get settings_widgets_desc =>
      'உடனடி புதுப்பிப்புகளுக்கு உங்கள் சாதனத்தின் முகப்புத் திரையில் நிகழ்நேர விட்ஜெட்களைப் பின் செய்யவும்.';

  @override
  String get settings_about_header => 'ப்ளூமி பற்றி';

  @override
  String get settings_about_version => 'பதிப்பு';

  @override
  String get settings_about_build => '100 கட்டவும்';

  @override
  String get settings_about_credits =>
      'கவனத்துடன், ஆரோக்கியமான வாழ்க்கைக்காக வடிவமைக்கப்பட்டது.';

  @override
  String get settings_terms_header => 'விதிமுறைகள் மற்றும் நிபந்தனைகள்';

  @override
  String get settings_privacy_header => 'தனியுரிமைக் கொள்கை';

  @override
  String get settings_delete_header => 'கணக்கு மற்றும் தரவை நீக்கு';

  @override
  String get settings_delete_warning =>
      'இந்தச் செயலைச் செயல்தவிர்க்க முடியாது. உங்கள் உணவுகள், உடற்பயிற்சிகள், உயிர்கள் மற்றும் சுயவிவரம் அனைத்தும் நிரந்தரமாக நீக்கப்படும்.';

  @override
  String get settings_delete_confirm_btn => 'நிரந்தரமாக நீக்கு';

  @override
  String get onboard_welcome_headline => 'ப்ளூமிக்கு வரவேற்கிறோம் ✨';

  @override
  String get onboard_welcome_tagline =>
      'உங்கள் வாழ்க்கையைச் சுற்றி வடிவமைக்கப்பட்ட மென்மையான, கவனமுள்ள ஆரோக்கிய கண்காணிப்பு.';

  @override
  String get onboard_step_about => 'உங்களைப் பற்றி';

  @override
  String get onboard_step_goals => 'உங்கள் இலக்குகள்';

  @override
  String get onboard_step_lifestyle => 'தினசரி பழக்கம்';

  @override
  String get onboard_step_permissions => 'அனுமதிகள்';

  @override
  String get onboard_step_plan => 'தயார்!';

  @override
  String get onboard_health_connect_perm => 'ஹெல்த் கனெக்ட் அணுகல்';

  @override
  String get onboard_step_sensors_perm => 'படி எதிர் சென்சார்';

  @override
  String get onboard_notif_perm => 'நினைவூட்டும் நினைவூட்டல்கள் & அறிவிப்புகள்';

  @override
  String get onboard_camera_perm => 'கேமரா (பார்கோடு & உணவு ஸ்கேனர்)';

  @override
  String get onboard_grant_permissions => 'அனுமதிகளை வழங்கவும்';

  @override
  String get onboard_continue_dashboard => 'டாஷ்போர்டைத் திற';

  @override
  String get notif_channel_hydration_name => 'நீரேற்றம் நட்ஜ்கள்';

  @override
  String get notif_channel_hydration_desc =>
      'நாள் முழுவதும் மென்மையான நீர் நினைவூட்டல்கள்';

  @override
  String get notif_channel_nutrition_name =>
      'உணவு & ஊட்டச்சத்து நினைவூட்டல்கள்';

  @override
  String get notif_channel_nutrition_desc =>
      'காலை உணவு, மதிய உணவு மற்றும் இரவு உணவு நினைவூட்டல் எச்சரிக்கைகள்';

  @override
  String get notif_channel_steps_name => 'படி மைல்கற்கள்';

  @override
  String get notif_channel_steps_desc =>
      'தினசரி படி இலக்குகளை அடையும் போது கொண்டாட்டங்கள்';

  @override
  String get notif_channel_vitals_name => 'உடல்நலம் & உயிர்ச் சோதனைகள்';

  @override
  String get notif_channel_vitals_desc =>
      'எடை மற்றும் உறக்க நேர காற்றழுத்த நினைவூட்டல்கள்';

  @override
  String get notif_action_log_water => '💧 பதிவு +250மிலி';

  @override
  String get notif_action_snooze => 'உறக்கநிலை 15மீ';

  @override
  String get notif_action_log_meal => '🥗 பதிவு உணவு';

  @override
  String get language => 'மொழி';

  @override
  String get share => 'பகிர்';

  @override
  String common_days(Object count) {
    return '$count நாட்களுக்கு முன்';
  }
}
