// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get app_name => 'בלום';

  @override
  String get nav_home => 'בית';

  @override
  String get nav_today => 'היום';

  @override
  String get nav_plan => 'תכנן';

  @override
  String get nav_food => 'אוכל';

  @override
  String get nav_food_diary => 'יומן אוכל';

  @override
  String get nav_workout => 'יומן אימון';

  @override
  String get nav_health => 'בריאות';

  @override
  String get nav_profile => 'פרופיל';

  @override
  String get save => 'שמור';

  @override
  String get cancel => 'בטל';

  @override
  String get delete => 'מחק';

  @override
  String get edit => 'ערוך';

  @override
  String get done => 'בוצע';

  @override
  String get close => 'סגור';

  @override
  String get back => 'חזרה';

  @override
  String get next => 'הבא';

  @override
  String get continue_btn => 'המשך';

  @override
  String get confirm => 'אשר';

  @override
  String get search => 'חפש';

  @override
  String get filter => 'מסנן';

  @override
  String get all => 'הכל';

  @override
  String get active => 'פעיל';

  @override
  String get today => 'היום';

  @override
  String get yesterday => 'אתמול';

  @override
  String get tomorrow => 'מחר';

  @override
  String get add => 'הוסף';

  @override
  String get remove => 'הסר';

  @override
  String get refresh => 'רענן';

  @override
  String get retry => 'נסה שוב';

  @override
  String get error => 'שגיאה';

  @override
  String get success => 'הצלחה';

  @override
  String get loading => 'טוען...';

  @override
  String get no_data => 'אין נתונים זמינים';

  @override
  String get offline => 'מצב לא מקוון';

  @override
  String get offline_sub => 'השינויים יסונכרנו לאחר חיבור מחדש';

  @override
  String get undo => 'בטל';

  @override
  String get portion => 'מנה';

  @override
  String get quantity => 'כמות';

  @override
  String get unit => 'יחידה';

  @override
  String get clear => 'ברור';

  @override
  String get select => 'בחר';

  @override
  String get apply => 'החל';

  @override
  String get reset => 'אפס';

  @override
  String get ok => 'בסדר';

  @override
  String get yes => 'כן';

  @override
  String get no => 'לא';

  @override
  String get optional => 'אופציונלי';

  @override
  String get calories => 'קלוריות';

  @override
  String get protein => 'חלבון';

  @override
  String get carbs => 'פחמימות';

  @override
  String get fat => 'שמן';

  @override
  String get fiber => 'סיבים';

  @override
  String get water => 'מים';

  @override
  String get steps => 'שלבים';

  @override
  String get kcal => 'קק\"ל';

  @override
  String get grams => 'ז';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'ק\"ג';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'ס\"מ';

  @override
  String get inches => 'ב';

  @override
  String get bpm => 'פעימות לדקה';

  @override
  String get hours => 'שעות';

  @override
  String get minutes => 'דקות';

  @override
  String get serving => 'הגשה';

  @override
  String get servings => 'מנות';

  @override
  String get serving_size => 'גודל הגשה';

  @override
  String get per_100g => 'לכל 100 גרם';

  @override
  String get india => 'הודו';

  @override
  String get asia => 'אסיה';

  @override
  String get europe => 'אירופה';

  @override
  String get middle_east => 'מזרח תיכון';

  @override
  String get africa => 'אפריקה';

  @override
  String get americas => 'אמריקה';

  @override
  String get home_title => 'בית';

  @override
  String get home_greeting_morning => 'בוקר טוב';

  @override
  String get home_greeting_afternoon => 'צהריים טובים';

  @override
  String get home_greeting_evening => 'ערב טוב';

  @override
  String get home_streak_title => 'רצף פריחה';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'רצף של $count ימים',
      one: 'רצף של יום אחד',
      zero: 'רצף של 0 ימים',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'נשרף';

  @override
  String get home_calories_budget => 'תקציב קלורי';

  @override
  String home_calories_remaining(Object kcal) {
    return 'נותרו $kcal קק\"ל';
  }

  @override
  String get home_water_title => 'הידרציה יומית';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target מ\"ל';
  }

  @override
  String get home_steps_title => 'צעדים הלכו';

  @override
  String get home_quick_actions => 'פעולות מהירות';

  @override
  String get home_log_meal => 'ארוחת יומן';

  @override
  String get home_log_water => 'יומן מים';

  @override
  String get home_log_workout => 'אימון יומן';

  @override
  String get home_log_weight => 'משקל יומן';

  @override
  String get home_insights_title => 'התובנות של היום';

  @override
  String get home_quote => 'בחירות קטנות ובריאות יוצרות טרנספורמציות פורחות.';

  @override
  String get home_ai_coach_tip => 'מאמן בינה מלאכותית של Bloomi';

  @override
  String get home_surroundings => 'סביבה ואוויר';

  @override
  String get home_notifications => 'התראות';

  @override
  String get home_daily_score => 'ציון בריאות יומי';

  @override
  String get home_view_all => 'הצג הכל';

  @override
  String get food_diary_title => 'יומן אוכל';

  @override
  String get food_breakfast => 'ארוחת בוקר';

  @override
  String get food_lunch => 'ארוחת צהריים';

  @override
  String get food_dinner => 'ארוחת ערב';

  @override
  String get food_snacks => 'חטיפים';

  @override
  String get food_add_food => 'הוסף אוכל';

  @override
  String get food_edit_food => 'ערוך אוכל';

  @override
  String get food_add_breakfast => 'הוסף ארוחת בוקר';

  @override
  String get food_add_lunch => 'הוסף ארוחת צהריים';

  @override
  String get food_add_dinner => 'הוסף ארוחת ערב';

  @override
  String get food_add_snack => 'הוסף חטיף';

  @override
  String get food_total_calories => 'סך הכל קלוריות';

  @override
  String get food_empty_meal => 'עדיין לא נרשמו מזונות לארוחה זו';

  @override
  String get food_empty_diary => 'לא נרשמו ארוחות ליום זה';

  @override
  String get food_log_first_meal =>
      'הקש על + כדי לרשום את הארוחה הטעימה הראשונה שלך';

  @override
  String get food_quick_add => 'הוסף מהיר';

  @override
  String get food_search_hint => 'חפש מנות, פירות, דאל, רוטי...';

  @override
  String get food_custom_recipe => 'אוכל ומתכון בהתאמה אישית';

  @override
  String get food_scan_barcode => 'סרוק ברקוד';

  @override
  String get food_camera_scan => 'סורק מזון בינה מלאכותית';

  @override
  String get food_recent => 'מזונות אחרונים';

  @override
  String get food_favourites => 'מועדפים';

  @override
  String get food_macro_summary => 'התמוטטות מאקרונוטריינטים';

  @override
  String get food_delete_meal_confirm => 'האם אתה בטוח שברצונך להסיר פריט זה?';

  @override
  String get food_item_deleted => 'פריט מזון הוסר';

  @override
  String get food_remaining => 'שנותרו';

  @override
  String get food_consumed => 'נצרך';

  @override
  String food_of_target(Object target) {
    return 'של $target קק\"ל';
  }

  @override
  String get foodSearch_title => 'חפש מזון';

  @override
  String get foodSearch_scan_barcode => 'סרוק ברקוד';

  @override
  String get foodSearch_take_photo => 'תמונת Snap Food';

  @override
  String get foodSearch_custom_food => 'צור אוכל מותאם אישית';

  @override
  String get foodSearch_recent_searches => 'חיפושים אחרונים';

  @override
  String get foodSearch_popular => 'מנות פופולריות';

  @override
  String get foodSearch_no_results => 'אין מאכלים התואמים לחיפוש שלך';

  @override
  String get barcode_title => 'סורק ברקוד';

  @override
  String get barcode_align => 'יישר את הברקוד בתוך מסגרת המצלמה';

  @override
  String get barcode_not_found => 'המוצר לא נמצא במסד הנתונים';

  @override
  String get barcode_premium_feature => 'סריקת ברקוד זמינה עם Bloomi Pro';

  @override
  String get camera_title => 'סורק מזון בינה מלאכותית';

  @override
  String get camera_tap_hint => 'צלם תמונה ברורה של המנה שלך';

  @override
  String get camera_analysing => 'מנתח צלחת אוכל...';

  @override
  String get camera_detected => 'פריטים זוהו';

  @override
  String get camera_flash => 'החלף פלאש';

  @override
  String get camera_retake => 'צלם מחדש תמונה';

  @override
  String get camera_confirm_food => 'אשר פריטים';

  @override
  String get customFood_title => 'אוכל ומתכון בהתאמה אישית';

  @override
  String get customFood_name_hint => 'שם המנה או המרכיב';

  @override
  String get customFood_calories_hint => 'קלוריות (קק\"ל)';

  @override
  String get customFood_protein_hint => 'חלבון (ג)';

  @override
  String get customFood_carbs_hint => 'פחמימות (ג)';

  @override
  String get customFood_fat_hint => 'שומן (ג)';

  @override
  String get customFood_save => 'שמור מתכון';

  @override
  String get water_tracker_title => 'גשש מים';

  @override
  String get water_daily_target => 'מטרת הידרציה יומית';

  @override
  String get water_logged_today => 'נרשם היום';

  @override
  String get water_add_glass => '+250 מ\"ל זכוכית';

  @override
  String get water_add_bottle => '+500 מ\"ל בקבוק';

  @override
  String get water_custom_amount => 'כמות מותאמת אישית';

  @override
  String get water_reminder_tip =>
      'שתו מים באופן קבוע לאורך היום לאנרגיה יציבה.';

  @override
  String water_logged_toast(Object amount) {
    return 'נרשם $amount מ\"ל מים 💧';
  }

  @override
  String get workout_title => 'יומן אימון';

  @override
  String get workout_add_exercise => 'הוסף אימון';

  @override
  String get workout_cardio => 'קרדיו';

  @override
  String get workout_strength => 'חוזק';

  @override
  String get workout_yoga => 'יוגה וגמישות';

  @override
  String get workout_duration => 'משך זמן';

  @override
  String get workout_intensity => 'אינטנסיביות';

  @override
  String get workout_calories_burned => 'שריפת קלוריות';

  @override
  String get workout_empty => 'לא נרשמו היום אימונים';

  @override
  String get workout_save_success => 'האימון נשמר בהצלחה!';

  @override
  String get workout_type => 'סוג אימון';

  @override
  String get workout_notes => 'הערות והשתקפויות';

  @override
  String get health_overview_title => 'בריאות וחיוניים';

  @override
  String get health_heart_rate => 'קצב לב';

  @override
  String get health_blood_oxygen => 'חמצן בדם (SpO2)';

  @override
  String get health_blood_pressure => 'לחץ דם';

  @override
  String get health_blood_glucose => 'גלוקוז בדם';

  @override
  String get health_body_temperature => 'טמפרטורת גוף';

  @override
  String get health_sleep_tracking => 'מעקב שינה';

  @override
  String get health_weight_tracking => 'משקל והרכב גוף';

  @override
  String get health_waist_hip => 'יחס מותן לירך';

  @override
  String get health_devices_hub => 'רכזת מכשירים ושעון חכם';

  @override
  String get health_sync_now => 'סנכרון נתוני בריאות';

  @override
  String health_last_synced(Object time) {
    return 'סנכרון אחרון: $time';
  }

  @override
  String get health_manual_entry => 'הזנת בריאות ידנית';

  @override
  String get health_metric_detail => 'פרטים מדדים';

  @override
  String get health_connected_sensors => 'חיישני בריאות מחוברים';

  @override
  String get plan_title => 'תוכנית יומית';

  @override
  String get plan_weekly_title => 'תוכנית בריאות שבועית';

  @override
  String get plan_calorie_target => 'יעד קלוריות';

  @override
  String get plan_water_target => 'יעד הידרציה';

  @override
  String get plan_step_target => 'יעד שלב';

  @override
  String get plan_sleep_target => 'יעד שינה';

  @override
  String get plan_meal_suggestions => 'הצעות לארוחות';

  @override
  String get plan_healthy_habits => 'הרגלים וטיפים בריאים';

  @override
  String get plan_coach_advice => 'המלצות על מאמן בינה מלאכותית של Bloomi';

  @override
  String get plan_generated_title => 'לוח זמנים יומי מותאם אישית';

  @override
  String get profile_title => 'פרופיל';

  @override
  String get profile_edit => 'ערוך פרופיל';

  @override
  String get profile_name => 'שם';

  @override
  String get profile_age => 'גיל';

  @override
  String get profile_gender => 'מגדר';

  @override
  String get profile_height => 'גובה';

  @override
  String get profile_weight => 'משקל';

  @override
  String get profile_goal => 'מטרה ראשית';

  @override
  String get profile_activity_level => 'רמת פעילות';

  @override
  String get profile_stats => 'סטטיסטיקת הבריאות שלי';

  @override
  String get profile_saved => 'הפרופיל עודכן בהצלחה';

  @override
  String get profile_bmi => 'מדד מסת הגוף (BMI)';

  @override
  String get profile_membership => 'חברות';

  @override
  String get settings => 'הגדרות';

  @override
  String get preferences_habits => 'העדפות והרגלים';

  @override
  String get appearance_theme => 'מראה ועיצוב';

  @override
  String get appearance_theme_sub => 'כהה, בהיר, מצב מערכת ורקע אפליקציה';

  @override
  String get permissions => 'הרשאות וגישה למערכת';

  @override
  String get permissions_sub =>
      'Health Connect, חיישני צעדים, GPS, התראות ומצלמה';

  @override
  String get reminders_notifications => 'תזכורות והתראות';

  @override
  String get reminders_sub =>
      'זמני ארוחות, מים, צ\'ק-אין במשקל ותזכורות לפני השינה';

  @override
  String get units_of_measurement => 'יחידות מדידה';

  @override
  String get units_sub =>
      'מטרי (ק\"ג, ס\"מ, מ\"ל, ק\"מ) או אימפריאלי (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'שפת האפליקציה';

  @override
  String get language_sub =>
      'אנגלית, हिन्दी (הינדי), הינגלית ו-195+ שפות גלובליות';

  @override
  String get home_screen_widgets => 'ווידג\'טים של מסך הבית';

  @override
  String get widgets_sub =>
      'ווידג\'טים של אנדרואיד חיים: רכזת, צעדים, מים, תזונה וקמע';

  @override
  String get wear_os_watch_app => 'אפליקציית Wear OS Watch';

  @override
  String get wear_os_sub => 'שותף לשעונים חכמים, אריחים, סיבוכים וחיוניים חיים';

  @override
  String get goals_wellness => 'מטרות ותובנות רווחה';

  @override
  String get nutrition_targets => 'יעדי תזונה ופיצול מאקרו';

  @override
  String get nutrition_targets_sub => 'יעד קלוריות, חלבון, פחמימות, שומן ומים';

  @override
  String get weekly_recap => 'סיכום בריאות שבועי';

  @override
  String get weekly_recap_sub =>
      'ממוצע קלוריות ל-7 ימים, יחס מאקרו והיום הטוב ביותר';

  @override
  String get streaks_milestones => 'פסים ואבני דרך';

  @override
  String get streaks_sub => 'פסי פריחה פעילים, תגים והישגים';

  @override
  String get connected_devices => 'התקנים מחוברים ומערכת אקולוגית';

  @override
  String get devices_hub => 'רכזת מכשירים ושעון חכם';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'סביבה ומזג אוויר';

  @override
  String get surroundings_sub =>
      'איכות אוויר (AQI), אינדקס UV וטיפים לחות במזג האוויר';

  @override
  String get bloomi_pro => 'מנוי Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'מאמן תוכנית בינה מלאכותית, 5 ווידג\'טים של מסך הבית ומעקב אחר חיוניות';

  @override
  String get about_security => 'אודות ואבטחה';

  @override
  String get about_bloomi => 'על בלומי';

  @override
  String get about_bloomi_sub => 'מפרט בנייה, גרסה, ייחוסים';

  @override
  String get privacy_policy => 'מדיניות פרטיות';

  @override
  String get privacy_policy_sub => 'ארכיטקטורת נתונים במכשיר, תחילה לא מקוון';

  @override
  String get terms_conditions => 'תנאים והגבלות';

  @override
  String get terms_conditions_sub => 'תנאי שירות והנחיות בריאות';

  @override
  String get delete_account => 'מחק חשבון ונתונים';

  @override
  String get delete_account_sub =>
      'מחק באופן בלתי הפיך נתוני SQLite מקומיים וגיבויים בענן';

  @override
  String get healthy_habits => 'בנה הרגלי בריאות עדינים ומתמשכים';

  @override
  String get all_logs => 'הנתונים והיומנים המעקבים שלי';

  @override
  String get search_language => 'חפש לפי שפה או סקריפט מקומי...';

  @override
  String get languages_available => 'שפות זמינות';

  @override
  String get no_matching_languages => 'לא נמצאו שפות מתאימות';

  @override
  String get try_searching => 'נסה לחפש לפי סקריפט מקורי או איות באנגלית';

  @override
  String get partially_translated => 'תורגם חלקית';

  @override
  String get complete_translation => 'שלם';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'השפה מוגדרת ל-$name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'סביבה וסביבה';

  @override
  String get surroundings_aqi => 'מדד איכות האוויר';

  @override
  String get surroundings_uv => 'אינדקס UV';

  @override
  String get surroundings_temp => 'טמפרטורה';

  @override
  String get surroundings_humidity => 'לחות';

  @override
  String get surroundings_hydration_advice =>
      'הישארו לחות טובה בתנאי מזג האוויר הנוכחיים.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'חפש אוכל';

  @override
  String get food_quick_barcode => 'סרוק ברקוד 👑';

  @override
  String get food_quick_water => 'הוסף מים';

  @override
  String get food_quick_custom => 'אוכל בהתאמה אישית';

  @override
  String get surroundings_good => 'טוב';

  @override
  String get surroundings_moderate => 'מתון';

  @override
  String get surroundings_unhealthy => 'לא בריא';

  @override
  String get notifications_title => 'הודעות והתראות';

  @override
  String get notifications_empty => 'אין הודעות חדשות';

  @override
  String get notifications_mark_read => 'סמן הכל כנקראו';

  @override
  String get notifications_clear => 'נקה הכל';

  @override
  String get reminders => 'הגדרות תזכורת';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'תזכורת לארוחת בוקר 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'בוקר טוב! הגיע הזמן לארוחת בוקר מזינה ב-$time .';
  }

  @override
  String get reminders_lunch_title => 'תזכורת לארוחת צהריים 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'השהה ותיהנה מארוחת צהריים מאוזנת ומודעת ב-$time.';
  }

  @override
  String get reminders_dinner_title => 'תזכורת לארוחת ערב 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'הגיע הזמן לארוחת ערב קלה ומשביעה ב-$time.';
  }

  @override
  String get reminders_water_title => 'תנופת הידרציה 💧';

  @override
  String reminders_water_body(Object time) {
    return 'הגיע הזמן לשתות כוס מים טריים! ( $time )';
  }

  @override
  String get reminders_weight_title => 'שקילה שבועית ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'עקוב אחר מדדי הגוף השבועיים שלך ב-Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'מנוחה לפני השינה 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'להירגע ולהתכונן לשינה נינוחה ($time).';
  }

  @override
  String get onboard_welcome => 'ברוכים הבאים לבלומי';

  @override
  String get onboard_sub =>
      'בן לוויה הידידותי והלא מקוון הראשון שלך לבריאות ותזונה.';

  @override
  String get onboard_get_started => 'התחל';

  @override
  String get onboard_sign_in => 'היכנס';

  @override
  String get onboard_skip => 'דלג';

  @override
  String get onboard_choose_goal => 'מהי מטרת הבריאות העיקרית שלך?';

  @override
  String get onboard_goal_weight_loss => 'ירידה עדינה במשקל';

  @override
  String get onboard_goal_muscle => 'עלייה וכוח שרירים';

  @override
  String get onboard_goal_energy => 'אנרגיה וחיוניות יומית';

  @override
  String get onboard_goal_habits => 'אכילה מודעת בריאה';

  @override
  String get onboard_about_you => 'ספר לנו על עצמך';

  @override
  String get onboard_lifestyle => 'השגרה היומית שלך';

  @override
  String get onboard_permissions_title => 'הרשאות וגישה למערכת';

  @override
  String get onboard_permissions_sub =>
      'הענק גישה לסנכרון שלבים, אימונים ותזכורות.';

  @override
  String get onboard_plan_ready_title => 'התוכנית המותאמת אישית שלך מוכנה!';

  @override
  String get onboard_plan_ready_sub =>
      'יצרנו מפת דרכים לתזונה ובריאות עדינה ואישית במיוחד בשבילך.';

  @override
  String get onboard_enter_bloomi => 'כנסו לבלומי';

  @override
  String get insights_weekly_report => 'סיכום בריאות שבועי';

  @override
  String insights_best_day(Object day) {
    return 'יום העקביות הטוב ביותר: $day';
  }

  @override
  String get insights_streaks_badges => 'פסים ואבני דרך';

  @override
  String insights_unlocked_on(Object date) {
    return 'בוטלה ב-$date';
  }

  @override
  String get insights_keep_going => 'המשך בהתקדמות הפנטסטית!';

  @override
  String get widgets_title => 'ווידג\'טים של מסך הבית';

  @override
  String widgets_active_count(Object count) {
    return 'ווידג\'טים פעילים: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'צעדים וטבעת אקטיבית';

  @override
  String get widgets_water_title => 'יומן הידרציה מהיר';

  @override
  String get widgets_mascot_title => 'בלומי קמע לוויה';

  @override
  String get wear_os_title => 'לבש שעון חכם של מערכת ההפעלה';

  @override
  String get wear_os_connected => 'מחובר ל-Watch';

  @override
  String get wear_os_sync => 'סנכרון נתוני שעון';

  @override
  String get theme_title => 'מראה ועיצוב';

  @override
  String get theme_mode => 'מצב ערכת נושא';

  @override
  String get theme_light => 'אור';

  @override
  String get theme_dark => 'כהה';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'פלטת רקע';

  @override
  String get units_title => 'יחידות מדידה';

  @override
  String get units_metric => 'מטרי (ק\"ג, ס\"מ, מ\"ל)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'לא ניתן לטעון את לוח המחוונים';

  @override
  String get home_health_permission_req => 'נדרשת אישור Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi דורשת הרשאת Health Connect כדי למשוך צעדים אמיתיים, דופק ולסנכרן ווידג\'טים של בית נייד בזמן אמת.';

  @override
  String get home_allow_health => 'אפשר Health Connect';

  @override
  String get home_ready_mindful_day => 'מוכנים ליום מודע? ✨';

  @override
  String get home_quick_add => 'הוסף מהיר';

  @override
  String get home_live_gps => 'GPS חי';

  @override
  String get home_calories_remaining_label => 'קלוריות שנותרו';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'נאכל: $consumed / $target קק\"ל';
  }

  @override
  String get home_tap_water_tracker => 'ברז עבור גשש מים 💧';

  @override
  String get home_water_goal_reached => 'היעד היומי הושג 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining מ\"ל ליעד היומי';
  }

  @override
  String get home_details => 'פרטים';

  @override
  String get home_upgrade_plan_desc =>
      'שדרג כדי לפתוח יעדים יומיומיים מותאמים אישית ותוכנית AI';

  @override
  String get home_unlock => 'פתח את הנעילה 👑';

  @override
  String get home_quick_log_hint => 'רשום במהירות ערך בריאות';

  @override
  String get food_serving_size => 'גודל הגשה';

  @override
  String get food_serving_grams => 'הגשה (ג)';

  @override
  String get food_number_servings => 'מספר מנות';

  @override
  String get food_calories_per_serving => 'קלוריות למנה';

  @override
  String get food_recipe_ingredients => 'מרכיבים';

  @override
  String get food_recipe_add_ingredient => 'הוסף מרכיב';

  @override
  String get food_recipe_directions => 'הוראות והערות';

  @override
  String get food_recipe_total => 'סך הכל תזונה מתכון';

  @override
  String get food_recipe_per_serving => 'תזונה למנה';

  @override
  String get food_recipe_saved_toast => 'אוכל מותאם אישית נשמר בהצלחה!';

  @override
  String get food_barcode_found => 'מוצר נמצא!';

  @override
  String get food_barcode_not_found_desc =>
      'לא הצלחנו למצוא ברקוד זה במסד הנתונים הפתוח. אתה יכול להוסיף אותו כאוכל מותאם אישית.';

  @override
  String get food_add_custom_btn => 'הוסף אוכל מותאם אישית';

  @override
  String get food_scan_again => 'סרוק שוב';

  @override
  String get food_review_items => 'סקור מזונות שזוהו';

  @override
  String get food_review_hint => 'התאם כמויות או הסר כל פריט לא מזוהה';

  @override
  String get food_log_selected => 'רישום מזונות נבחרים';

  @override
  String get food_favourites_title => 'מאכלים אהובים';

  @override
  String get food_recent_title => 'מזונות אחרונים';

  @override
  String get food_no_favourites =>
      'עדיין אין מאכלים מועדפים. הקש בלב על כל מזון כדי לשמור כאן.';

  @override
  String get food_no_recents => 'לא נמצאו מזונות שנרשמו לאחרונה.';

  @override
  String get food_nutrition_details_title => 'פרטי תזונה יומית';

  @override
  String get food_macro_protein_label => 'פירוק חלבון';

  @override
  String get food_macro_carbs_label => 'פירוק פחמימות';

  @override
  String get food_macro_fat_label => 'פירוק שומן';

  @override
  String get food_macro_fiber_label => 'פירוק סיבים';

  @override
  String get food_daily_target_comparison => 'השוואת יעדים';

  @override
  String food_target_label(Object target) {
    return 'יעד: $target';
  }

  @override
  String get food_edit_entry => 'ערוך את רשומת היומן';

  @override
  String get food_delete_entry => 'מחק ערך';

  @override
  String food_grams_short(Object grams) {
    return '$grams גרם';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal קק\"ל';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current מתוך $target מ\"ל';
  }

  @override
  String get water_intake_history => 'יומני המים של היום';

  @override
  String get water_no_logs_today =>
      'עדיין לא נרשמו מים היום. לחות והקש על כפתור הוספה מהירה!';

  @override
  String get water_adjust_goal => 'התאם את היעד היומי';

  @override
  String get health_connect_banner => 'מחובר ל- Health Connect';

  @override
  String get health_vitals_summary => 'חיוני בריאות יומיומיים';

  @override
  String get health_latest_heart_rate => 'קצב הלב האחרון';

  @override
  String get health_latest_bp => 'לחץ דם';

  @override
  String get health_latest_spo2 => 'חמצן בדם';

  @override
  String get health_latest_glucose => 'גלוקוז בדם';

  @override
  String get health_latest_weight => 'משקל';

  @override
  String get health_latest_sleep => 'משך השינה';

  @override
  String get health_add_manual => 'הוסף מדידה ידנית';

  @override
  String get health_history_trends => 'מגמות היסטוריות';

  @override
  String get health_sync_success => 'נתוני בריאות סונכרנו בהצלחה!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours שעות $mins דקות';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val ק\"ג';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm פעימות לדקה';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic מ\"מ כספית';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val מ\"ג/ד\"ל';
  }

  @override
  String get health_devices_title => 'מכשירים מחוברים וחפצים לבישים';

  @override
  String get health_devices_desc =>
      'נהל שעונים חכמים מותאמים, מעקבי כושר וחיישני בריאות.';

  @override
  String get health_workout_editor_title => 'ערוך אימון';

  @override
  String get health_workout_name_label => 'שם האימון';

  @override
  String get health_workout_duration_label => 'משך (דקות)';

  @override
  String get health_workout_calories_label => 'קלוריות משוערות (קק\"ל)';

  @override
  String get health_workout_date_label => 'תאריך ושעה';

  @override
  String get plan_daily_wellness_roadmap => 'מפת הדרכים המותאמת אישית שלך';

  @override
  String get plan_morning_routine => 'שגרת בוקר';

  @override
  String get plan_afternoon_routine => 'בריאות בצהריים';

  @override
  String get plan_evening_routine => 'ערב רוח';

  @override
  String get plan_coach_badge => 'מאמן בינה מלאכותית של Bloomi';

  @override
  String get plan_weekly_overview => 'מוקד בריאות ל-7 ימים';

  @override
  String get plan_targets_title => 'יעדים ומטרות בריאות';

  @override
  String get plan_calorie_budget_label => 'תקציב קלוריות יומי';

  @override
  String get plan_water_budget_label => 'יעד מים יומי';

  @override
  String get plan_step_budget_label => 'יעד צעד יומי';

  @override
  String get plan_macro_split_label => 'יחס Macronutrient';

  @override
  String get profile_personal_details => 'פרטים אישיים';

  @override
  String get profile_body_stats => 'מידות גוף';

  @override
  String get profile_app_preferences => 'העדפות והגדרות אפליקציה';

  @override
  String get profile_edit_name_hint => 'השם שלך';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'גובה ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'משקל ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'גיל';

  @override
  String get profile_gender_male => 'זכר';

  @override
  String get profile_gender_female => 'נקבה';

  @override
  String get profile_gender_other => 'אחר / מעדיף לא לומר';

  @override
  String get profile_activity_sedentary => 'בישיבה (מעט עד ללא פעילות גופנית)';

  @override
  String get profile_activity_light => 'פעיל קלות (1-3 ימים בשבוע)';

  @override
  String get profile_activity_moderate => 'פעיל בינוני (3-5 ימים בשבוע)';

  @override
  String get profile_activity_very => 'פעיל מאוד (6-7 ימים בשבוע)';

  @override
  String get settings_wear_os_header => 'אפליקציית Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'התקן את האריח והסיבוך של Bloomi בשעון Wear OS שלך כדי להציץ בקלוריות, מים ומדרגות.';

  @override
  String get settings_widgets_header => 'ווידג\'טים אינטראקטיביים לאנדרואיד';

  @override
  String get settings_widgets_desc =>
      'הצמד ווידג\'טים בזמן אמת במסך הבית של המכשיר שלך לקבלת עדכונים מיידיים.';

  @override
  String get settings_about_header => 'על בלומי';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'בנה 100';

  @override
  String get settings_about_credits => 'נוצר תוך הקפדה על חיים מודעים ובריאים.';

  @override
  String get settings_terms_header => 'תנאים והגבלות';

  @override
  String get settings_privacy_header => 'מדיניות פרטיות';

  @override
  String get settings_delete_header => 'מחק חשבון ונתונים';

  @override
  String get settings_delete_warning =>
      'לא ניתן לבטל פעולה זו. כל הארוחות, האימונים, החיוניות והפרופיל שלך יימחקו לצמיתות.';

  @override
  String get settings_delete_confirm_btn => 'מחק לצמיתות';

  @override
  String get onboard_welcome_headline => 'ברוכים הבאים לבלומי ✨';

  @override
  String get onboard_welcome_tagline =>
      'מעקב בריאות עדין ומודע שעוצב סביב חייך.';

  @override
  String get onboard_step_about => 'אודותיך';

  @override
  String get onboard_step_goals => 'המטרות שלך';

  @override
  String get onboard_step_lifestyle => 'הרגלים יומיומיים';

  @override
  String get onboard_step_permissions => 'הרשאות';

  @override
  String get onboard_step_plan => 'מוכן!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'חיישן מונה צעדים';

  @override
  String get onboard_notif_perm => 'תזכורות והתראות מודעים';

  @override
  String get onboard_camera_perm => 'מצלמה (סורק ברקוד ואוכל)';

  @override
  String get onboard_grant_permissions => 'הענק הרשאות';

  @override
  String get onboard_continue_dashboard => 'פתח את לוח המחוונים';

  @override
  String get notif_channel_hydration_name => 'תנודות הידרציה';

  @override
  String get notif_channel_hydration_desc =>
      'תזכורות עדינות למים לאורך כל היום';

  @override
  String get notif_channel_nutrition_name => 'תזכורות לארוחות ותזונה';

  @override
  String get notif_channel_nutrition_desc =>
      'התראות תזכורת לארוחות בוקר, צהריים וערב';

  @override
  String get notif_channel_steps_name => 'אבני דרך שלב';

  @override
  String get notif_channel_steps_desc =>
      'חגיגות בעת הגעה ליעדי צעדים יומיומיים';

  @override
  String get notif_channel_vitals_name => 'בדיקות בריאות וחיוניות';

  @override
  String get notif_channel_vitals_desc => 'תזכורות להרגעת משקל ולפני השינה';

  @override
  String get notif_action_log_water => '💧 יומן +250 מ\"ל';

  @override
  String get notif_action_snooze => 'נודניק 15 מ\'';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
