// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get app_name => 'بلومی۔';

  @override
  String get nav_home => 'گھر';

  @override
  String get nav_today => 'آج';

  @override
  String get nav_plan => 'منصوبہ';

  @override
  String get nav_food => 'کھانا';

  @override
  String get nav_food_diary => 'فوڈ ڈائری';

  @override
  String get nav_workout => 'ورزش لاگ';

  @override
  String get nav_health => 'صحت';

  @override
  String get nav_profile => 'پروفائل';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get delete => 'حذف کریں';

  @override
  String get edit => 'ترمیم کریں';

  @override
  String get done => 'ہو گیا';

  @override
  String get close => 'بند';

  @override
  String get back => 'پیچھے';

  @override
  String get next => 'اگلا';

  @override
  String get continue_btn => 'جاری رکھیں';

  @override
  String get confirm => 'تصدیق کریں۔';

  @override
  String get search => 'تلاش کریں';

  @override
  String get filter => 'فلٹر';

  @override
  String get all => 'تمام';

  @override
  String get active => 'فعال';

  @override
  String get today => 'آج';

  @override
  String get yesterday => 'کل';

  @override
  String get tomorrow => 'کل';

  @override
  String get add => 'شامل کریں۔';

  @override
  String get remove => 'ہٹا دیں۔';

  @override
  String get refresh => 'ریفریش کریں۔';

  @override
  String get retry => 'دوبارہ کوشش کریں۔';

  @override
  String get error => 'خرابی';

  @override
  String get success => 'کامیابی';

  @override
  String get loading => 'لوڈ ہو رہا ہے...';

  @override
  String get no_data => 'کوئی ڈیٹا دستیاب نہیں ہے۔';

  @override
  String get offline => 'آف لائن موڈ';

  @override
  String get offline_sub =>
      'دوبارہ منسلک ہونے کے بعد تبدیلیاں مطابقت پذیر ہو جائیں گی۔';

  @override
  String get undo => 'واپس';

  @override
  String get portion => 'حصہ';

  @override
  String get quantity => 'مقدار';

  @override
  String get unit => 'یونٹ';

  @override
  String get clear => 'صاف';

  @override
  String get select => 'منتخب کریں۔';

  @override
  String get apply => 'لاگو کریں';

  @override
  String get reset => 'ری سیٹ کریں';

  @override
  String get ok => 'ٹھیک ہے';

  @override
  String get yes => 'جی ہاں';

  @override
  String get no => 'نہیں';

  @override
  String get optional => 'اختیاری';

  @override
  String get calories => 'کیلوریز';

  @override
  String get protein => 'پروٹین';

  @override
  String get carbs => 'کاربوہائیڈریٹ';

  @override
  String get fat => 'موٹا';

  @override
  String get fiber => 'فائبر';

  @override
  String get water => 'پانی';

  @override
  String get steps => 'قدم';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'جی';

  @override
  String get milliliters => 'ملی لیٹر';

  @override
  String get kilograms => 'کلو';

  @override
  String get pounds => 'پونڈ';

  @override
  String get centimeters => 'سینٹی میٹر';

  @override
  String get inches => 'میں';

  @override
  String get bpm => 'بی پی ایم';

  @override
  String get hours => 'گھنٹے';

  @override
  String get minutes => 'منٹ';

  @override
  String get serving => 'سرونگ';

  @override
  String get servings => 'سرونگز';

  @override
  String get serving_size => 'سرونگ سائز';

  @override
  String get per_100g => 'فی 100 گرام';

  @override
  String get india => 'انڈیا';

  @override
  String get asia => 'ایشیا';

  @override
  String get europe => 'یورپ';

  @override
  String get middle_east => 'مشرق وسطیٰ';

  @override
  String get africa => 'افریقہ';

  @override
  String get americas => 'امریکہ';

  @override
  String get home_title => 'گھر';

  @override
  String get home_greeting_morning => 'صبح بخیر';

  @override
  String get home_greeting_afternoon => 'گڈ دوپہر';

  @override
  String get home_greeting_evening => 'شب بخیر';

  @override
  String get home_streak_title => 'کھلنا اسٹریک';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دنوں کا سلسلہ',
      one: '1 دن کا سلسلہ',
      zero: '0 دن کا سلسلہ',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'جل گیا۔';

  @override
  String get home_calories_budget => 'کیلوری کا بجٹ';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal باقی ہے۔';
  }

  @override
  String get home_water_title => 'روزانہ ہائیڈریشن';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ملی لیٹر';
  }

  @override
  String get home_steps_title => 'قدم چل پڑے';

  @override
  String get home_quick_actions => 'فوری اقدامات';

  @override
  String get home_log_meal => 'لاگ کھانا';

  @override
  String get home_log_water => 'لاگ پانی';

  @override
  String get home_log_workout => 'لاگ ورزش';

  @override
  String get home_log_weight => 'لاگ وزن';

  @override
  String get home_insights_title => 'آج کی بصیرتیں۔';

  @override
  String get home_quote =>
      'چھوٹے صحت مند انتخاب کھلتے ہوئے تبدیلیاں پیدا کرتے ہیں۔';

  @override
  String get home_ai_coach_tip => 'بلومی اے آئی کوچ';

  @override
  String get home_surroundings => 'ماحول اور ہوا';

  @override
  String get home_notifications => 'اطلاعات';

  @override
  String get home_daily_score => 'روزانہ فلاح و بہبود کا اسکور';

  @override
  String get home_view_all => 'سبھی دیکھیں';

  @override
  String get food_diary_title => 'فوڈ ڈائری';

  @override
  String get food_breakfast => 'ناشتہ';

  @override
  String get food_lunch => 'دوپہر کا کھانا';

  @override
  String get food_dinner => 'رات کا کھانا';

  @override
  String get food_snacks => 'نمکین';

  @override
  String get food_add_food => 'کھانا شامل کریں۔';

  @override
  String get food_edit_food => 'خوراک میں ترمیم کریں۔';

  @override
  String get food_add_breakfast => 'ناشتہ شامل کریں۔';

  @override
  String get food_add_lunch => 'دوپہر کا کھانا شامل کریں۔';

  @override
  String get food_add_dinner => 'رات کا کھانا شامل کریں۔';

  @override
  String get food_add_snack => 'سنیک شامل کریں۔';

  @override
  String get food_total_calories => 'کل کیلوریز';

  @override
  String get food_empty_meal =>
      'اس کھانے کے لیے ابھی تک کوئی خوراک لاگ ان نہیں ہوئی ہے۔';

  @override
  String get food_empty_diary => 'اس دن کے لیے کوئی کھانا لاگ ان نہیں ہے۔';

  @override
  String get food_log_first_meal =>
      'اپنے پہلے مزیدار کھانے کو لاگ کرنے کے لیے + کو تھپتھپائیں۔';

  @override
  String get food_quick_add => 'فوری شامل کریں۔';

  @override
  String get food_search_hint => 'پکوان، پھل، دال، روٹی تلاش کریں...';

  @override
  String get food_custom_recipe => 'حسب ضرورت کھانا اور ترکیب';

  @override
  String get food_scan_barcode => 'بارکوڈ اسکین کریں۔';

  @override
  String get food_camera_scan => 'AI فوڈ سکینر';

  @override
  String get food_recent => 'حالیہ فوڈز';

  @override
  String get food_favourites => 'پسندیدہ';

  @override
  String get food_macro_summary => 'میکرونٹرینٹ کی خرابی';

  @override
  String get food_delete_meal_confirm =>
      'کیا آپ واقعی اس آئٹم کو ہٹانا چاہتے ہیں؟';

  @override
  String get food_item_deleted => 'کھانے کی چیز ہٹا دی گئی۔';

  @override
  String get food_remaining => 'باقی';

  @override
  String get food_consumed => 'استعمال';

  @override
  String food_of_target(Object target) {
    return 'کا $target kcal';
  }

  @override
  String get foodSearch_title => 'کھانے کی اشیاء تلاش کریں۔';

  @override
  String get foodSearch_scan_barcode => 'بارکوڈ اسکین کریں۔';

  @override
  String get foodSearch_take_photo => 'اسنیپ فوڈ فوٹو';

  @override
  String get foodSearch_custom_food => 'اپنی مرضی کے مطابق کھانا بنائیں';

  @override
  String get foodSearch_recent_searches => 'حالیہ تلاشیں۔';

  @override
  String get foodSearch_popular => 'مشہور پکوان';

  @override
  String get foodSearch_no_results => 'کوئی خوراک آپ کی تلاش سے مماثل نہیں ہے۔';

  @override
  String get barcode_title => 'بارکوڈ سکینر';

  @override
  String get barcode_align => 'کیمرہ فریم کے اندر بارکوڈ کو سیدھ کریں۔';

  @override
  String get barcode_not_found => 'ڈیٹا بیس میں پروڈکٹ نہیں ملا';

  @override
  String get barcode_premium_feature =>
      'بار کوڈ اسکیننگ بلومی پرو کے ساتھ دستیاب ہے۔';

  @override
  String get camera_title => 'AI فوڈ سکینر';

  @override
  String get camera_tap_hint => 'اپنی ڈش کی واضح تصویر لیں۔';

  @override
  String get camera_analysing => 'کھانے کی پلیٹ کا تجزیہ کیا جا رہا ہے...';

  @override
  String get camera_detected => 'دریافت شدہ اشیاء';

  @override
  String get camera_flash => 'فلیش کو ٹوگل کریں۔';

  @override
  String get camera_retake => 'تصویر دوبارہ لیں۔';

  @override
  String get camera_confirm_food => 'آئٹمز کی تصدیق کریں۔';

  @override
  String get customFood_title => 'حسب ضرورت کھانا اور ترکیب';

  @override
  String get customFood_name_hint => 'ڈش یا اجزاء کا نام';

  @override
  String get customFood_calories_hint => 'کیلوریز (kcal)';

  @override
  String get customFood_protein_hint => 'پروٹین (جی)';

  @override
  String get customFood_carbs_hint => 'کاربوہائیڈریٹ (جی)';

  @override
  String get customFood_fat_hint => 'چربی (جی)';

  @override
  String get customFood_save => 'نسخہ محفوظ کریں۔';

  @override
  String get water_tracker_title => 'واٹر ٹریکر';

  @override
  String get water_daily_target => 'روزانہ ہائیڈریشن کا ہدف';

  @override
  String get water_logged_today => 'آج لاگ ان ہوا۔';

  @override
  String get water_add_glass => '+250 ملی لیٹر گلاس';

  @override
  String get water_add_bottle => '+500 ملی لیٹر کی بوتل';

  @override
  String get water_custom_amount => 'حسب ضرورت رقم';

  @override
  String get water_reminder_tip =>
      'مستقل توانائی کے لیے دن بھر باقاعدگی سے پانی پییں۔';

  @override
  String water_logged_toast(Object amount) {
    return 'لاگ ان $amount ملی لیٹر پانی 💧';
  }

  @override
  String get workout_title => 'ورزش لاگ';

  @override
  String get workout_add_exercise => 'ورزش شامل کریں۔';

  @override
  String get workout_cardio => 'کارڈیو';

  @override
  String get workout_strength => 'طاقت';

  @override
  String get workout_yoga => 'یوگا اور لچک';

  @override
  String get workout_duration => 'دورانیہ';

  @override
  String get workout_intensity => 'شدت';

  @override
  String get workout_calories_burned => 'کیلوریز جل گئیں۔';

  @override
  String get workout_empty => 'آج کوئی ورزش لاگ ان نہیں ہے۔';

  @override
  String get workout_save_success => 'ورزش کامیابی سے محفوظ ہو گئی!';

  @override
  String get workout_type => 'ورزش کی قسم';

  @override
  String get workout_notes => 'نوٹس اور عکاسی۔';

  @override
  String get health_overview_title => 'صحت اور حیاتیات';

  @override
  String get health_heart_rate => 'دل کی دھڑکن';

  @override
  String get health_blood_oxygen => 'خون کی آکسیجن (SpO2)';

  @override
  String get health_blood_pressure => 'بلڈ پریشر';

  @override
  String get health_blood_glucose => 'خون میں گلوکوز';

  @override
  String get health_body_temperature => 'جسمانی درجہ حرارت';

  @override
  String get health_sleep_tracking => 'نیند سے باخبر رہنا';

  @override
  String get health_weight_tracking => 'وزن اور جسمانی ساخت';

  @override
  String get health_waist_hip => 'کمر سے کولہے کا تناسب';

  @override
  String get health_devices_hub => 'ڈیوائسز اور اسمارٹ واچ حب';

  @override
  String get health_sync_now => 'صحت کے ڈیٹا کو ہم آہنگ کریں۔';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'آخری بار مطابقت پذیری: $time';
  }

  @override
  String get health_manual_entry => 'دستی ہیلتھ انٹری';

  @override
  String get health_metric_detail => 'میٹرک تفصیلات';

  @override
  String get health_connected_sensors => 'منسلک ہیلتھ سینسر';

  @override
  String get plan_title => 'روزانہ کی منصوبہ بندی';

  @override
  String get plan_weekly_title => 'ہفتہ وار فلاح و بہبود کا منصوبہ';

  @override
  String get plan_calorie_target => 'کیلوری کا ہدف';

  @override
  String get plan_water_target => 'ہائیڈریشن کا ہدف';

  @override
  String get plan_step_target => 'مرحلہ وار ہدف';

  @override
  String get plan_sleep_target => 'نیند کا ہدف';

  @override
  String get plan_meal_suggestions => 'کھانے کی تجاویز';

  @override
  String get plan_healthy_habits => 'صحت مند عادات اور نکات';

  @override
  String get plan_coach_advice => 'بلومی اے آئی کوچ کی سفارشات';

  @override
  String get plan_generated_title => 'ذاتی نوعیت کا روزانہ کا شیڈول';

  @override
  String get profile_title => 'پروفائل';

  @override
  String get profile_edit => 'پروفائل میں ترمیم کریں۔';

  @override
  String get profile_name => 'نام';

  @override
  String get profile_age => 'عمر';

  @override
  String get profile_gender => 'جنس';

  @override
  String get profile_height => 'اونچائی';

  @override
  String get profile_weight => 'وزن';

  @override
  String get profile_goal => 'بنیادی مقصد';

  @override
  String get profile_activity_level => 'سرگرمی کی سطح';

  @override
  String get profile_stats => 'میری فلاح و بہبود کے اعدادوشمار';

  @override
  String get profile_saved => 'پروفائل کامیابی کے ساتھ اپ ڈیٹ ہو گیا۔';

  @override
  String get profile_bmi => 'باڈی ماس انڈیکس (BMI)';

  @override
  String get profile_membership => 'رکنیت';

  @override
  String get settings => 'ترتیبات';

  @override
  String get preferences_habits => 'ترجیحات اور عادات';

  @override
  String get appearance_theme => 'ظاہری شکل اور تھیم';

  @override
  String get appearance_theme_sub =>
      'گہرا، ہلکا، سسٹم موڈ اور ایپ کے پس منظر کے اختیارات';

  @override
  String get permissions => 'اجازتیں اور سسٹم تک رسائی';

  @override
  String get permissions_sub =>
      'ہیلتھ کنیکٹ، سٹیپ سینسرز، GPS، اطلاعات اور کیمرہ';

  @override
  String get reminders_notifications => 'یاد دہانیاں اور اطلاعات';

  @override
  String get reminders_sub =>
      'کھانے کے اوقات، پانی، وزن کی جانچ پڑتال اور سونے کے وقت کی یاددہانی';

  @override
  String get units_of_measurement => 'پیمائش کی اکائیاں';

  @override
  String get units_sub =>
      'میٹرک (kg, cm, ml, km) یا امپیریل (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'ایپ کی زبان';

  @override
  String get language_sub =>
      'انگریزی، ہندی (ہندی)، ہنگلش اور 195+ عالمی زبانیں۔';

  @override
  String get home_screen_widgets => 'ہوم اسکرین ویجٹس';

  @override
  String get widgets_sub =>
      'لائیو اینڈرائیڈ وجیٹس: حب، اسٹیپس، واٹر، نیوٹریشن اور میسکوٹ';

  @override
  String get wear_os_watch_app => 'OS واچ ایپ پہنیں۔';

  @override
  String get wear_os_sub =>
      'اسمارٹ واچ کا ساتھی، ٹائلیں، پیچیدگیاں اور لائیو وائٹلز';

  @override
  String get goals_wellness => 'اہداف اور فلاح و بہبود کی بصیرتیں۔';

  @override
  String get nutrition_targets => 'غذائیت کے اہداف اور میکرو تقسیم';

  @override
  String get nutrition_targets_sub =>
      'کیلوری کا ہدف، پروٹین، کاربوہائیڈریٹ، چربی اور پانی کا ہدف';

  @override
  String get weekly_recap => 'ہفتہ وار فلاح و بہبود کا خلاصہ';

  @override
  String get weekly_recap_sub =>
      '7 دن کی کیلوری اوسط، میکرو ریشو اور بہترین دن';

  @override
  String get streaks_milestones => 'لکیریں اور سنگ میل';

  @override
  String get streaks_sub => 'فعال کھلنے کی لکیریں، بیجز اور کامیابیاں';

  @override
  String get connected_devices => 'منسلک آلات اور ماحولیاتی نظام';

  @override
  String get devices_hub => 'ڈیوائسز اور اسمارٹ واچ حب';

  @override
  String get devices_hub_sub => 'ہیلتھ کنیکٹ، گلیکسی واچ، پکسل واچ، گارمن';

  @override
  String get surroundings_weather => 'ماحول اور موسم';

  @override
  String get surroundings_sub =>
      'ہوا کا معیار (AQI)، UV انڈیکس اور موسم کی ہائیڈریشن ٹپس';

  @override
  String get bloomi_pro => 'بلومی پرو سبسکرپشن';

  @override
  String get bloomi_pro_sub =>
      'اے آئی پلان کوچ، 5 ہوم اسکرین ویجٹ اور وائٹلز ٹریکنگ';

  @override
  String get about_security => 'کے بارے میں اور سیکورٹی';

  @override
  String get about_bloomi => 'بلومی کے بارے میں';

  @override
  String get about_bloomi_sub => 'وضاحتیں، ورژن، انتسابات بنائیں';

  @override
  String get privacy_policy => 'رازداری کی پالیسی';

  @override
  String get privacy_policy_sub =>
      'آف لائن سب سے پہلے، آن ڈیوائس ڈیٹا فن تعمیر';

  @override
  String get terms_conditions => 'شرائط و ضوابط';

  @override
  String get terms_conditions_sub =>
      'سروس کی شرائط اور فلاح و بہبود کے رہنما خطوط';

  @override
  String get delete_account => 'اکاؤنٹ اور ڈیٹا کو حذف کریں۔';

  @override
  String get delete_account_sub =>
      'مقامی SQLite ڈیٹا اور کلاؤڈ بیک اپ کو ناقابل واپسی طور پر مٹا دیں۔';

  @override
  String get healthy_habits => 'نرم، دیرپا تندرستی کی عادات بنائیں';

  @override
  String get all_logs => 'میرا ٹریک کردہ ڈیٹا اور لاگز';

  @override
  String get search_language =>
      'زبان یا مقامی رسم الخط کے لحاظ سے تلاش کریں...';

  @override
  String get languages_available => 'زبانیں دستیاب ہیں۔';

  @override
  String get no_matching_languages => 'کوئی مماثل زبانیں نہیں ملی';

  @override
  String get try_searching =>
      'مقامی رسم الخط یا انگریزی ہجے کے ذریعہ تلاش کرنے کی کوشش کریں۔';

  @override
  String get partially_translated => 'جزوی طور پر ترجمہ کیا گیا۔';

  @override
  String get complete_translation => 'مکمل';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'زبان کو $name پر سیٹ کیا گیا ( $nativeName )';
  }

  @override
  String get surroundings_title => 'ماحول اور ماحول';

  @override
  String get surroundings_aqi => 'ایئر کوالٹی انڈیکس';

  @override
  String get surroundings_uv => 'یووی انڈیکس';

  @override
  String get surroundings_temp => 'درجہ حرارت';

  @override
  String get surroundings_humidity => 'نمی';

  @override
  String get surroundings_hydration_advice =>
      'موجودہ موسمی حالات میں اچھی طرح ہائیڈریٹ رہیں۔';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'کھانا تلاش کریں۔';

  @override
  String get food_quick_barcode => 'بارکوڈ اسکین کریں 👑';

  @override
  String get food_quick_water => 'پانی شامل کریں۔';

  @override
  String get food_quick_custom => 'حسب ضرورت کھانا';

  @override
  String get surroundings_good => 'اچھا';

  @override
  String get surroundings_moderate => 'اعتدال پسند';

  @override
  String get surroundings_unhealthy => 'غیر صحت مند';

  @override
  String get notifications_title => 'اطلاعات اور انتباہات';

  @override
  String get notifications_empty => 'کوئی نئی اطلاعات نہیں ہیں۔';

  @override
  String get notifications_mark_read => 'سبھی کو پڑھا ہوا نشان زد کریں۔';

  @override
  String get notifications_clear => 'تمام صاف کریں۔';

  @override
  String get reminders => 'یاد دہانی کی ترتیبات';

  @override
  String get notifications => 'اطلاعات';

  @override
  String get reminders_breakfast_title => 'ناشتے کی یاد دہانی 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'صبح بخیر! $time پر غذائیت سے بھرپور ناشتے کا وقت۔';
  }

  @override
  String get reminders_lunch_title => 'دوپہر کے کھانے کی یاد دہانی 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'توقف کریں اور $time پر متوازن، ذہین لنچ سے لطف اندوز ہوں۔';
  }

  @override
  String get reminders_dinner_title => 'رات کے کھانے کی یاد دہانی 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time پر ہلکے، اطمینان بخش رات کے کھانے کا وقت۔';
  }

  @override
  String get reminders_water_title => 'ہائیڈریشن نج 💧';

  @override
  String reminders_water_body(Object time) {
    return 'تازہ گلاس پانی پینے کا وقت! ( $time )';
  }

  @override
  String get reminders_weight_title => 'ہفتہ وار وزن ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'بلومی ( $time ) پر اپنے ہفتہ وار باڈی میٹرکس کو ٹریک کریں۔';
  }

  @override
  String get reminders_sleep_title => 'سونے کا وقت ونڈ ڈاون 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'کھولیں اور پر سکون نیند کے لیے تیاری کریں ( $time )۔';
  }

  @override
  String get onboard_welcome => 'بلومی میں خوش آمدید';

  @override
  String get onboard_sub => 'آپ کا دوستانہ، آف لائن-پہلا صحت اور غذائی ساتھی۔';

  @override
  String get onboard_get_started => 'شروع کریں';

  @override
  String get onboard_sign_in => 'سائن ان کریں۔';

  @override
  String get onboard_skip => 'چھوڑیں۔';

  @override
  String get onboard_choose_goal => 'آپ کا بنیادی فلاح و بہبود کا مقصد کیا ہے؟';

  @override
  String get onboard_goal_weight_loss => 'نرم وزن میں کمی';

  @override
  String get onboard_goal_muscle => 'پٹھوں کا فائدہ اور طاقت';

  @override
  String get onboard_goal_energy => 'روزانہ کی توانائی اور جیورنبل';

  @override
  String get onboard_goal_habits => 'صحت مند دماغی کھانا';

  @override
  String get onboard_about_you => 'ہمیں اپنے بارے میں بتائیں';

  @override
  String get onboard_lifestyle => 'آپ کا روزانہ کا معمول';

  @override
  String get onboard_permissions_title => 'اجازتیں اور سسٹم تک رسائی';

  @override
  String get onboard_permissions_sub =>
      'مطابقت پذیری کے مراحل، ورزش اور یاد دہانیوں تک رسائی فراہم کریں۔';

  @override
  String get onboard_plan_ready_title => 'آپ کا حسب ضرورت منصوبہ تیار ہے!';

  @override
  String get onboard_plan_ready_sub =>
      'ہم نے صرف آپ کے لیے ایک نرم، ذاتی غذائیت اور تندرستی کا روڈ میپ تیار کیا ہے۔';

  @override
  String get onboard_enter_bloomi => 'بلومی داخل کریں۔';

  @override
  String get insights_weekly_report => 'ہفتہ وار فلاح و بہبود کا خلاصہ';

  @override
  String insights_best_day(Object day) {
    return 'بہترین مستقل مزاجی کا دن: $day';
  }

  @override
  String get insights_streaks_badges => 'لکیریں اور سنگ میل';

  @override
  String insights_unlocked_on(Object date) {
    return '$date پر غیر مقفل';
  }

  @override
  String get insights_keep_going => 'شاندار پیش رفت جاری رکھیں!';

  @override
  String get widgets_title => 'ہوم اسکرین وجیٹس';

  @override
  String widgets_active_count(Object count) {
    return 'فعال وجیٹس: $count';
  }

  @override
  String get widgets_hub_title => 'بلومی ویلنس ہب';

  @override
  String get widgets_steps_title => 'اقدامات اور ایکٹو رنگ';

  @override
  String get widgets_water_title => 'ہائیڈریشن کوئیک لاگ';

  @override
  String get widgets_mascot_title => 'بلومی میسکوٹ ساتھی';

  @override
  String get wear_os_title => 'OS اسمارٹ واچ پہنیں۔';

  @override
  String get wear_os_connected => 'واچ سے منسلک ہے۔';

  @override
  String get wear_os_sync => 'واچ ڈیٹا کو سنک کریں۔';

  @override
  String get theme_title => 'ظاہری شکل اور تھیم';

  @override
  String get theme_mode => 'تیم موڈ';

  @override
  String get theme_light => 'لائٹ';

  @override
  String get theme_dark => 'ڈارک';

  @override
  String get theme_system => 'سسٹم';

  @override
  String get theme_background_palette => 'پس منظر پیلیٹ';

  @override
  String get units_title => 'پیمائش کی اکائیاں';

  @override
  String get units_metric => 'میٹرک (کلوگرام، سینٹی میٹر، ملی لیٹر)';

  @override
  String get units_imperial => 'امپیریل (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'ڈیش بورڈ لوڈ کرنے سے قاصر';

  @override
  String get home_health_permission_req => 'ہیلتھ کنیکٹ کی اجازت درکار ہے۔';

  @override
  String get home_health_permission_desc =>
      'بلومی کو حقیقی قدم، دل کی دھڑکن، اور موبائل ہوم وجیٹس کو حقیقی وقت میں مطابقت پذیر بنانے کے لیے ہیلتھ کنیکٹ کی اجازت درکار ہے۔';

  @override
  String get home_allow_health => 'ہیلتھ کنیکٹ کی اجازت دیں۔';

  @override
  String get home_ready_mindful_day => 'ایک ذہن ساز دن کے لیے تیار ہیں؟ ✨';

  @override
  String get home_quick_add => 'فوری شامل کریں۔';

  @override
  String get home_live_gps => 'لائیو GPS';

  @override
  String get home_calories_remaining_label => 'باقی کیلوریز';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'کھایا گیا: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'واٹر ٹریکر 💧 کے لیے تھپتھپائیں۔';

  @override
  String get home_water_goal_reached => 'روزانہ کا مقصد 🎉 تک پہنچ گیا۔';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ملی لیٹر تا یومیہ مقصد';
  }

  @override
  String get home_details => 'تفصیلات';

  @override
  String get home_upgrade_plan_desc =>
      'ذاتی نوعیت کے روزانہ اہداف اور AI پلان کو غیر مقفل کرنے کے لیے اپ گریڈ کریں۔';

  @override
  String get home_unlock => 'غیر مقفل کریں 👑';

  @override
  String get home_quick_log_hint =>
      'صحت مندی کے اندراج کو جلدی سے ریکارڈ کریں۔';

  @override
  String get food_serving_size => 'سرونگ سائز';

  @override
  String get food_serving_grams => 'سرونگ (جی)';

  @override
  String get food_number_servings => 'سرونگز کی تعداد';

  @override
  String get food_calories_per_serving => 'فی سرونگ کیلوری';

  @override
  String get food_recipe_ingredients => 'اجزاء';

  @override
  String get food_recipe_add_ingredient => 'اجزاء شامل کریں۔';

  @override
  String get food_recipe_directions => 'ہدایات اور نوٹس';

  @override
  String get food_recipe_total => 'ٹوٹل ریسیپی نیوٹریشن';

  @override
  String get food_recipe_per_serving => 'فی سرونگ نیوٹریشن';

  @override
  String get food_recipe_saved_toast =>
      'اپنی مرضی کے کھانے کو کامیابی کے ساتھ محفوظ کیا گیا!';

  @override
  String get food_barcode_found => 'پروڈکٹ مل گیا!';

  @override
  String get food_barcode_not_found_desc =>
      'ہم یہ بارکوڈ اوپن ڈیٹا بیس میں نہیں ڈھونڈ سکے۔ آپ اسے حسب ضرورت کھانے کے طور پر شامل کر سکتے ہیں۔';

  @override
  String get food_add_custom_btn => 'حسب ضرورت کھانا شامل کریں۔';

  @override
  String get food_scan_again => 'دوبارہ اسکین کریں۔';

  @override
  String get food_review_items => 'دریافت شدہ کھانوں کا جائزہ لیں۔';

  @override
  String get food_review_hint =>
      'مقدار کو ایڈجسٹ کریں یا کسی بھی غیر تسلیم شدہ شے کو ہٹا دیں۔';

  @override
  String get food_log_selected => 'منتخب کھانے کی اشیاء کو لاگ ان کریں۔';

  @override
  String get food_favourites_title => 'پسندیدہ کھانے';

  @override
  String get food_recent_title => 'حالیہ فوڈز';

  @override
  String get food_no_favourites =>
      'ابھی تک کوئی پسندیدہ کھانا نہیں ہے۔ یہاں بچانے کے لیے کسی بھی کھانے پر دل کو تھپتھپائیں۔';

  @override
  String get food_no_recents => 'کوئی حال ہی میں لاگ ان فوڈز نہیں ملے۔';

  @override
  String get food_nutrition_details_title => 'روزانہ غذائیت کی تفصیلات';

  @override
  String get food_macro_protein_label => 'پروٹین کی خرابی۔';

  @override
  String get food_macro_carbs_label => 'کاربوہائیڈریٹ کی خرابی۔';

  @override
  String get food_macro_fat_label => 'چربی کی خرابی';

  @override
  String get food_macro_fiber_label => 'فائبر کی خرابی۔';

  @override
  String get food_daily_target_comparison => 'ہدف کا موازنہ';

  @override
  String food_target_label(Object target) {
    return 'ہدف: $target';
  }

  @override
  String get food_edit_entry => 'ڈائری کے اندراج میں ترمیم کریں۔';

  @override
  String get food_delete_entry => 'اندراج کو حذف کریں۔';

  @override
  String food_grams_short(Object grams) {
    return '$grams جی';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current از $target ملی لیٹر';
  }

  @override
  String get water_intake_history => 'آج کے واٹر لاگز';

  @override
  String get water_no_logs_today =>
      'آج تک پانی نہیں بھرا۔ ہائیڈریٹ کریں اور فوری ایڈ بٹن کو تھپتھپائیں!';

  @override
  String get water_adjust_goal => 'ڈیلی گول کو ایڈجسٹ کریں۔';

  @override
  String get health_connect_banner => 'ہیلتھ کنیکٹ سے منسلک ہے۔';

  @override
  String get health_vitals_summary => 'روزانہ ہیلتھ وائٹلز';

  @override
  String get health_latest_heart_rate => 'تازہ ترین دل کی شرح';

  @override
  String get health_latest_bp => 'بلڈ پریشر';

  @override
  String get health_latest_spo2 => 'بلڈ آکسیجن';

  @override
  String get health_latest_glucose => 'خون میں گلوکوز';

  @override
  String get health_latest_weight => 'وزن';

  @override
  String get health_latest_sleep => 'نیند کا دورانیہ';

  @override
  String get health_add_manual => 'دستی پیمائش شامل کریں۔';

  @override
  String get health_history_trends => 'تاریخی رجحانات';

  @override
  String get health_sync_success =>
      'صحت کا ڈیٹا کامیابی کے ساتھ مطابقت پذیر ہو گیا!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours گھنٹے $mins منٹ';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val کلوگرام';
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
  String get health_devices_title => 'منسلک آلات اور پہننے کے قابل';

  @override
  String get health_devices_desc =>
      'جوڑا بنائے گئے سمارٹ واچز، فٹنس ٹریکرز اور ہیلتھ سینسرز کا نظم کریں۔';

  @override
  String get health_workout_editor_title => 'ورزش میں ترمیم کریں۔';

  @override
  String get health_workout_name_label => 'ورزش کا نام';

  @override
  String get health_workout_duration_label => 'دورانیہ (منٹ)';

  @override
  String get health_workout_calories_label => 'تخمینی کیلوریز (kcal)';

  @override
  String get health_workout_date_label => 'تاریخ اور وقت';

  @override
  String get plan_daily_wellness_roadmap => 'آپ کا پرسنلائزڈ روڈ میپ';

  @override
  String get plan_morning_routine => 'صبح کا معمول';

  @override
  String get plan_afternoon_routine => 'دوپہر کی فلاح و بہبود';

  @override
  String get plan_evening_routine => 'شام ونڈ ڈاؤن';

  @override
  String get plan_coach_badge => 'بلومی اے آئی کوچ';

  @override
  String get plan_weekly_overview => '7 دن کی فلاح و بہبود کا فوکس';

  @override
  String get plan_targets_title => 'فلاح و بہبود کے اہداف اور اہداف';

  @override
  String get plan_calorie_budget_label => 'روزانہ کیلوری کا بجٹ';

  @override
  String get plan_water_budget_label => 'روزانہ پانی کا ہدف';

  @override
  String get plan_step_budget_label => 'ڈیلی سٹیپ گول';

  @override
  String get plan_macro_split_label => 'میکرونٹرینٹ تناسب';

  @override
  String get profile_personal_details => 'ذاتی تفصیلات';

  @override
  String get profile_body_stats => 'جسمانی پیمائش';

  @override
  String get profile_app_preferences => 'ترجیحات اور ایپ کی ترتیبات';

  @override
  String get profile_edit_name_hint => 'آپ کا نام';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'اونچائی ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'وزن ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'عمر';

  @override
  String get profile_gender_male => 'مرد';

  @override
  String get profile_gender_female => 'خاتون';

  @override
  String get profile_gender_other => 'دیگر / نہ کہنے کو ترجیح دیں۔';

  @override
  String get profile_activity_sedentary => 'بیہودہ (تھوڑی سی ورزش نہ کرنا)';

  @override
  String get profile_activity_light => 'ہلکے سے فعال (1-3 دن / ہفتہ)';

  @override
  String get profile_activity_moderate => 'اعتدال سے فعال (3-5 دن / ہفتہ)';

  @override
  String get profile_activity_very => 'بہت فعال (6-7 دن/ہفتہ)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'کیلوریز، پانی اور قدموں کو دیکھنے کے لیے اپنی Wear OS گھڑی پر بلومی ٹائل اور پیچیدگی انسٹال کریں۔';

  @override
  String get settings_widgets_header => 'انٹرایکٹو اینڈرائیڈ وجیٹس';

  @override
  String get settings_widgets_desc =>
      'فوری اپ ڈیٹس کے لیے اپنے آلے کی ہوم اسکرین پر ریئل ٹائم ویجٹس کو پن کریں۔';

  @override
  String get settings_about_header => 'بلومی کے بارے میں';

  @override
  String get settings_about_version => 'ورژن';

  @override
  String get settings_about_build => '100 بنائیں';

  @override
  String get settings_about_credits =>
      'ہوشیار، صحت مند زندگی گزارنے کے لیے دیکھ بھال کے ساتھ تیار کیا گیا ہے۔';

  @override
  String get settings_terms_header => 'شرائط و ضوابط';

  @override
  String get settings_privacy_header => 'رازداری کی پالیسی';

  @override
  String get settings_delete_header => 'اکاؤنٹ اور ڈیٹا کو حذف کریں۔';

  @override
  String get settings_delete_warning =>
      'اس کارروائی کو کالعدم نہیں کیا جا سکتا۔ آپ کے تمام کھانے، ورزش، وائٹلز اور پروفائل مستقل طور پر حذف کر دیے جائیں گے۔';

  @override
  String get settings_delete_confirm_btn => 'مستقل طور پر حذف کریں۔';

  @override
  String get onboard_welcome_headline => 'بلومی میں خوش آمدید ✨';

  @override
  String get onboard_welcome_tagline =>
      'آپ کی زندگی کے ارد گرد ڈیزائن کیا گیا نرم، ذہن مند فلاح و بہبود سے باخبر رہنا۔';

  @override
  String get onboard_step_about => 'آپ کے بارے میں';

  @override
  String get onboard_step_goals => 'آپ کے مقاصد';

  @override
  String get onboard_step_lifestyle => 'روزانہ کی عادات';

  @override
  String get onboard_step_permissions => 'اجازتیں';

  @override
  String get onboard_step_plan => 'تیار!';

  @override
  String get onboard_health_connect_perm => 'ہیلتھ کنیکٹ رسائی';

  @override
  String get onboard_step_sensors_perm => 'سٹیپ کاؤنٹر سینسر';

  @override
  String get onboard_notif_perm => 'ذہن نشین یاد دہانیاں اور اطلاعات';

  @override
  String get onboard_camera_perm => 'کیمرہ (بار کوڈ اور فوڈ سکینر)';

  @override
  String get onboard_grant_permissions => 'اجازتیں دیں۔';

  @override
  String get onboard_continue_dashboard => 'ڈیش بورڈ کھولیں۔';

  @override
  String get notif_channel_hydration_name => 'ہائیڈریشن نجز';

  @override
  String get notif_channel_hydration_desc => 'دن بھر نرم پانی کی یاد دہانی';

  @override
  String get notif_channel_nutrition_name => 'کھانا اور غذائیت کی یاد دہانیاں';

  @override
  String get notif_channel_nutrition_desc =>
      'ناشتہ، دوپہر کا کھانا، اور رات کے کھانے کی یاد دہانی کے انتباہات';

  @override
  String get notif_channel_steps_name => 'سنگ میل کے قدم';

  @override
  String get notif_channel_steps_desc => 'یومیہ قدم کے اہداف تک پہنچنے پر جشن';

  @override
  String get notif_channel_vitals_name => 'صحت اور وائٹلز کی جانچ';

  @override
  String get notif_channel_vitals_desc =>
      'وزن اور سونے کے وقت ونڈ ڈاون یاد دہانیاں';

  @override
  String get notif_action_log_water => '💧 لاگ +250ml';

  @override
  String get notif_action_snooze => '15m اسنوز کریں۔';

  @override
  String get notif_action_log_meal => '🥗 لاگ کھانا';

  @override
  String get language => 'زبان';

  @override
  String get share => 'شیئر کریں';

  @override
  String common_days(Object count) {
    return '$count دن پہلے';
  }
}
