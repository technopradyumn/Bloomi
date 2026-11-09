// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get app_name => 'بلومي';

  @override
  String get nav_home => 'الرئيسية';

  @override
  String get nav_today => 'اليوم';

  @override
  String get nav_plan => 'الخطة';

  @override
  String get nav_food => 'الطعام';

  @override
  String get nav_food_diary => 'سجل الوجبات';

  @override
  String get nav_workout => 'سجل التمارين';

  @override
  String get nav_health => 'الصحة';

  @override
  String get nav_profile => 'الملف الشخصي';

  @override
  String get save => 'حفظ';

  @override
  String get cancel => 'إلغاء';

  @override
  String get delete => 'حذف';

  @override
  String get edit => 'تعديل';

  @override
  String get done => 'تم';

  @override
  String get close => 'إغلاق';

  @override
  String get back => 'رجوع';

  @override
  String get next => 'التالي';

  @override
  String get continue_btn => 'متابعة';

  @override
  String get confirm => 'تأكيد';

  @override
  String get search => 'بحث';

  @override
  String get filter => 'تصفية';

  @override
  String get all => 'الكل';

  @override
  String get active => 'نشط';

  @override
  String get today => 'اليوم';

  @override
  String get yesterday => 'أمس';

  @override
  String get tomorrow => 'غداً';

  @override
  String get add => 'إضافة';

  @override
  String get remove => 'إزالة';

  @override
  String get refresh => 'تحديث';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get error => 'خطأ';

  @override
  String get success => 'نجاح';

  @override
  String get loading => 'جار التحميل...';

  @override
  String get no_data => 'لا تتوفر بيانات';

  @override
  String get offline => 'وضع عدم الاتصال';

  @override
  String get offline_sub => 'ستتم مزامنة التغييرات فور الاتصال';

  @override
  String get undo => 'تراجع';

  @override
  String get portion => 'جزء';

  @override
  String get quantity => 'الكمية';

  @override
  String get unit => 'وحدة';

  @override
  String get clear => 'واضح';

  @override
  String get select => 'اختر';

  @override
  String get apply => 'تطبيق';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get ok => 'موافق';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get optional => 'اختياري';

  @override
  String get calories => 'السعرات';

  @override
  String get protein => 'البروتين';

  @override
  String get carbs => 'الكربوهيدرات';

  @override
  String get fat => 'الدهون';

  @override
  String get fiber => 'الألياف';

  @override
  String get water => 'الماء';

  @override
  String get steps => 'الخطوات';

  @override
  String get kcal => 'سعرة حرارية';

  @override
  String get grams => 'ز';

  @override
  String get milliliters => 'مل';

  @override
  String get kilograms => 'كجم';

  @override
  String get pounds => 'رطل';

  @override
  String get centimeters => 'سم';

  @override
  String get inches => 'في';

  @override
  String get bpm => 'نبضة في الدقيقة';

  @override
  String get hours => 'ساعة';

  @override
  String get minutes => 'دقيقة';

  @override
  String get serving => 'التقديم';

  @override
  String get servings => 'حصص';

  @override
  String get serving_size => 'حجم الحصة';

  @override
  String get per_100g => 'لكل 100 جرام';

  @override
  String get india => 'الهند';

  @override
  String get asia => 'آسيا';

  @override
  String get europe => 'أوروبا';

  @override
  String get middle_east => 'الشرق الأوسط';

  @override
  String get africa => 'أفريقيا';

  @override
  String get americas => 'الأمريكتين';

  @override
  String get home_title => 'الرئيسية';

  @override
  String get home_greeting_morning => 'صباح الخير';

  @override
  String get home_greeting_afternoon => 'مساء الخير';

  @override
  String get home_greeting_evening => 'مساء الخير';

  @override
  String get home_streak_title => 'سلسلة بلومي';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      one: 'يوم واحد',
      zero: '0 أيام',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'السعرات المحروقة';

  @override
  String get home_calories_budget => 'ميزانية السعرات';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal سعرة حرارية متبقية';
  }

  @override
  String get home_water_title => 'الترطيب اليومي';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target مل';
  }

  @override
  String get home_steps_title => 'الخطوات المنجزة';

  @override
  String get home_quick_actions => 'إجراءات سريعة';

  @override
  String get home_log_meal => 'تسجيل وجبة';

  @override
  String get home_log_water => 'تسجيل ماء';

  @override
  String get home_log_workout => 'تسجيل تمرين';

  @override
  String get home_log_weight => 'تسجيل وزن';

  @override
  String get home_insights_title => 'رؤى اليوم';

  @override
  String get home_quote => 'القرارات الصحية الصغيرة تصنع تحولات مذهلة.';

  @override
  String get home_ai_coach_tip => 'مدرب بلومي الذكي';

  @override
  String get home_surroundings => 'البيئة والجو';

  @override
  String get home_notifications => 'الإشعارات';

  @override
  String get home_daily_score => 'نقاط العافية اليومية';

  @override
  String get home_view_all => 'عرض الكل';

  @override
  String get food_diary_title => 'سجل الوجبات';

  @override
  String get food_breakfast => 'الإفطار';

  @override
  String get food_lunch => 'الغداء';

  @override
  String get food_dinner => 'العشاء';

  @override
  String get food_snacks => 'وجبات خفيفة';

  @override
  String get food_add_food => 'إضافة طعام';

  @override
  String get food_edit_food => 'تعديل طعام';

  @override
  String get food_add_breakfast => 'أضف وجبة الإفطار';

  @override
  String get food_add_lunch => 'أضف الغداء';

  @override
  String get food_add_dinner => 'أضف العشاء';

  @override
  String get food_add_snack => 'أضف وجبة خفيفة';

  @override
  String get food_total_calories => 'إجمالي السعرات';

  @override
  String get food_empty_meal => 'لم يتم تسجيل أي أطعمة لهذه الوجبة حتى الآن';

  @override
  String get food_empty_diary => 'لم يتم تسجيل أي وجبات لهذا اليوم';

  @override
  String get food_log_first_meal => 'اضغط على + لتسجيل أول وجبة لذيذة لك';

  @override
  String get food_quick_add => 'إضافة سريعة';

  @override
  String get food_search_hint => 'بحث الأطباق والفواكه ودال وروتي ...';

  @override
  String get food_custom_recipe => 'طعام ووصفات مخصصة';

  @override
  String get food_scan_barcode => 'مسح الباركود';

  @override
  String get food_camera_scan => 'AI الغذاء الماسح الضوئي';

  @override
  String get food_recent => 'الأطعمة الحديثة';

  @override
  String get food_favourites => 'المفضلة';

  @override
  String get food_macro_summary => 'انهيار المغذيات الكبيرة';

  @override
  String get food_delete_meal_confirm =>
      'هل أنت متأكد أنك تريد إزالة هذا العنصر؟';

  @override
  String get food_item_deleted => 'تمت إزالة العنصر الغذائي';

  @override
  String get food_remaining => 'المتبقية';

  @override
  String get food_consumed => 'المستهلكة';

  @override
  String food_of_target(Object target) {
    return 'من $target سعر حراري';
  }

  @override
  String get foodSearch_title => 'بحث عن الأطعمة';

  @override
  String get foodSearch_scan_barcode => 'مسح الباركود';

  @override
  String get foodSearch_take_photo => 'سناب فود فوتو';

  @override
  String get foodSearch_custom_food => 'إنشاء طعام مخصص';

  @override
  String get foodSearch_recent_searches => 'عمليات البحث الأخيرة';

  @override
  String get foodSearch_popular => 'الأكلات الشعبية';

  @override
  String get foodSearch_no_results => 'لا توجد أطعمة مطابقة لبحثك';

  @override
  String get barcode_title => 'ماسح الباركود';

  @override
  String get barcode_align => 'محاذاة الباركود داخل إطار الكاميرا';

  @override
  String get barcode_not_found => 'المنتج غير موجود في قاعدة البيانات';

  @override
  String get barcode_premium_feature => 'مسح الباركود متاح مع Bloomi Pro';

  @override
  String get camera_title => 'AI الغذاء الماسح الضوئي';

  @override
  String get camera_tap_hint => 'التقط صورة واضحة لطبقك';

  @override
  String get camera_analysing => 'تحليل طبق الطعام...';

  @override
  String get camera_detected => 'العناصر المكتشفة';

  @override
  String get camera_flash => 'تبديل فلاش';

  @override
  String get camera_retake => 'إعادة التقاط الصورة';

  @override
  String get camera_confirm_food => 'تأكيد العناصر';

  @override
  String get customFood_title => 'طعام ووصفات مخصصة';

  @override
  String get customFood_name_hint => 'اسم الطبق أو المكون';

  @override
  String get customFood_calories_hint => 'السعرات الحرارية (سعر حراري)';

  @override
  String get customFood_protein_hint => 'بروتين (جم)';

  @override
  String get customFood_carbs_hint => 'الكربوهيدرات (جم)';

  @override
  String get customFood_fat_hint => 'الدهون (ز)';

  @override
  String get customFood_save => 'حفظ الوصفة';

  @override
  String get water_tracker_title => 'متتبع شرب الماء';

  @override
  String get water_daily_target => 'هدف الترطيب اليومي';

  @override
  String get water_logged_today => 'تم تسجيل الدخول اليوم';

  @override
  String get water_add_glass => '+250 مل زجاج';

  @override
  String get water_add_bottle => 'زجاجة +500 مل';

  @override
  String get water_custom_amount => 'المبلغ المخصص';

  @override
  String get water_reminder_tip =>
      'شرب الماء بانتظام طوال اليوم للحصول على طاقة ثابتة.';

  @override
  String water_logged_toast(Object amount) {
    return 'سجل $amount مل من الماء 💧';
  }

  @override
  String get workout_title => 'سجل التمارين';

  @override
  String get workout_add_exercise => 'إضافة تجريب';

  @override
  String get workout_cardio => 'القلب';

  @override
  String get workout_strength => 'القوة';

  @override
  String get workout_yoga => 'اليوغا والمرونة';

  @override
  String get workout_duration => 'المدة';

  @override
  String get workout_intensity => 'الشدة';

  @override
  String get workout_calories_burned => 'السعرات الحرارية المحروقة';

  @override
  String get workout_empty => 'لم يتم تسجيل أي تدريبات اليوم';

  @override
  String get workout_save_success => 'تم حفظ التمرين بنجاح!';

  @override
  String get workout_type => 'نوع التمرين';

  @override
  String get workout_notes => 'ملاحظات وتأملات';

  @override
  String get health_overview_title => 'الصحة والحيوية';

  @override
  String get health_heart_rate => 'معدل ضربات القلب';

  @override
  String get health_blood_oxygen => 'أكسجين الدم (SpO2)';

  @override
  String get health_blood_pressure => 'ضغط الدم';

  @override
  String get health_blood_glucose => 'الجلوكوز في الدم';

  @override
  String get health_body_temperature => 'درجة حرارة الجسم';

  @override
  String get health_sleep_tracking => 'تتبع النوم';

  @override
  String get health_weight_tracking => 'الوزن وتكوين الجسم';

  @override
  String get health_waist_hip => 'نسبة الخصر إلى الورك';

  @override
  String get health_devices_hub => 'الأجهزة وSmartwatch Hub';

  @override
  String get health_sync_now => 'مزامنة البيانات الصحية';

  @override
  String health_last_synced(Object time) {
    return 'آخر مزامنة: $time';
  }

  @override
  String get health_manual_entry => 'الإدخال اليدوي للصحة';

  @override
  String get health_metric_detail => 'تفاصيل متري';

  @override
  String get health_connected_sensors => 'أجهزة الاستشعار الصحية المتصلة';

  @override
  String get plan_title => 'الخطة اليومية';

  @override
  String get plan_weekly_title => 'خطة العافية الأسبوعية';

  @override
  String get plan_calorie_target => 'هدف السعرات الحرارية';

  @override
  String get plan_water_target => 'هدف الترطيب';

  @override
  String get plan_step_target => 'هدف الخطوة';

  @override
  String get plan_sleep_target => 'هدف النوم';

  @override
  String get plan_meal_suggestions => 'اقتراحات الوجبات';

  @override
  String get plan_healthy_habits => 'عادات ونصائح صحية';

  @override
  String get plan_coach_advice => 'توصيات مدرب بلومي AI';

  @override
  String get plan_generated_title => 'جدول يومي شخصي';

  @override
  String get profile_title => 'الملف الشخصي';

  @override
  String get profile_edit => 'تحرير الملف الشخصي';

  @override
  String get profile_name => 'الاسم';

  @override
  String get profile_age => 'العمر';

  @override
  String get profile_gender => 'الجنس';

  @override
  String get profile_height => 'الارتفاع';

  @override
  String get profile_weight => 'الوزن';

  @override
  String get profile_goal => 'الهدف الأساسي';

  @override
  String get profile_activity_level => 'مستوى النشاط';

  @override
  String get profile_stats => 'إحصائيات العافية الخاصة بي';

  @override
  String get profile_saved => 'تم تحديث الملف الشخصي بنجاح';

  @override
  String get profile_bmi => 'مؤشر كتلة الجسم (BMI)';

  @override
  String get profile_membership => 'العضوية';

  @override
  String get settings => 'الإعدادات';

  @override
  String get preferences_habits => 'التفضيلات والعادات';

  @override
  String get appearance_theme => 'المظهر والسمة';

  @override
  String get appearance_theme_sub =>
      'داكن، فاتح، وضع النظام وخيارات خلفية التطبيق';

  @override
  String get permissions => 'الأذونات والوصول إلى النظام';

  @override
  String get permissions_sub =>
      'الاتصال الصحي، وأجهزة استشعار الخطوات، ونظام تحديد المواقع العالمي (GPS)، والإشعارات، والكاميرا';

  @override
  String get reminders_notifications => 'التذكيرات والإشعارات';

  @override
  String get reminders_sub =>
      'أوقات الوجبات والماء وتسجيل الوزن والتذكير بوقت النوم';

  @override
  String get units_of_measurement => 'وحدات القياس';

  @override
  String get units_sub =>
      'متري (كجم، سم، مل، كم) أو إمبراطوري (رطل، قدم/بوصة، أونصة سائلة)';

  @override
  String get app_language => 'لغة التطبيق';

  @override
  String get language_sub =>
      'الإنجليزية، الهندية (الهندية)، الهنجليزية وأكثر من 195 لغة عالمية';

  @override
  String get home_screen_widgets => 'أدوات الشاشة الرئيسية';

  @override
  String get widgets_sub =>
      'أدوات Android المباشرة: المحور والخطوات والماء والتغذية والتميمة';

  @override
  String get wear_os_watch_app => 'تطبيق Wear OS Watch';

  @override
  String get wear_os_sub =>
      'رفيق الساعة الذكية والبلاط والمضاعفات والعناصر الحيوية الحية';

  @override
  String get goals_wellness => 'الأهداف والرؤى العافية';

  @override
  String get nutrition_targets => 'أهداف التغذية والتقسيم الكلي';

  @override
  String get nutrition_targets_sub =>
      'هدف السعرات الحرارية والبروتين والكربوهيدرات والدهون والماء';

  @override
  String get weekly_recap => 'خلاصة العافية الأسبوعية';

  @override
  String get weekly_recap_sub =>
      'متوسط السعرات الحرارية لمدة 7 أيام، ونسبة الماكرو وأفضل يوم';

  @override
  String get streaks_milestones => 'المشارب والمعالم';

  @override
  String get streaks_sub => 'خطوط زهر نشطة وشارات وإنجازات';

  @override
  String get connected_devices => 'الأجهزة المتصلة والنظام البيئي';

  @override
  String get devices_hub => 'الأجهزة وSmartwatch Hub';

  @override
  String get devices_hub_sub => 'هيلث كونيكت، جالاكسي ووتش، بيكسل ووتش، جارمين';

  @override
  String get surroundings_weather => 'المناطق المحيطة والطقس';

  @override
  String get surroundings_sub =>
      'جودة الهواء (AQI)، مؤشر الأشعة فوق البنفسجية ونصائح لترطيب الطقس';

  @override
  String get bloomi_pro => 'اشتراك بلومي برو';

  @override
  String get bloomi_pro_sub =>
      'مدرب خطة الذكاء الاصطناعي، 5 أدوات للشاشة الرئيسية وتتبع العناصر الحيوية';

  @override
  String get about_security => 'حول والأمن';

  @override
  String get about_bloomi => 'عن بلومي';

  @override
  String get about_bloomi_sub => 'بناء المواصفات والإصدار والسمات';

  @override
  String get privacy_policy => 'سياسة الخصوصية';

  @override
  String get privacy_policy_sub => 'أولًا، بنية البيانات الموجودة على الجهاز';

  @override
  String get terms_conditions => 'الشروط والأحكام';

  @override
  String get terms_conditions_sub => 'شروط الخدمة والمبادئ التوجيهية العافية';

  @override
  String get delete_account => 'حذف الحساب والبيانات';

  @override
  String get delete_account_sub =>
      'مسح بيانات SQLite المحلية والنسخ الاحتياطية السحابية بشكل لا رجعة فيه';

  @override
  String get healthy_habits => 'بناء عادات صحية لطيفة ودائمة';

  @override
  String get all_logs => 'بياناتي وسجلاتي المتعقبة';

  @override
  String get search_language => 'ابحث عن لغة...';

  @override
  String get languages_available => 'اللغات المتاحة';

  @override
  String get no_matching_languages => 'لم يتم العثور على لغات مطابقة';

  @override
  String get try_searching =>
      'حاول البحث باستخدام النص الأصلي أو التهجئة الإنجليزية';

  @override
  String get partially_translated => 'مترجم جزئياً';

  @override
  String get complete_translation => 'مكتمل';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'تم ضبط اللغة إلى $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'البيئة المحيطة';

  @override
  String get surroundings_aqi => 'مؤشر جودة الهواء';

  @override
  String get surroundings_uv => 'مؤشر الأشعة فوق البنفسجية';

  @override
  String get surroundings_temp => 'درجة الحرارة';

  @override
  String get surroundings_humidity => 'الرطوبة';

  @override
  String get surroundings_hydration_advice =>
      'حافظ على رطوبة جسمك في الظروف الجوية الحالية.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'بحث عن الغذاء';

  @override
  String get food_quick_barcode => 'مسح الباركود 👑';

  @override
  String get food_quick_water => 'أضف الماء';

  @override
  String get food_quick_custom => 'طعام مخصص';

  @override
  String get surroundings_good => 'جيد';

  @override
  String get surroundings_moderate => 'معتدل';

  @override
  String get surroundings_unhealthy => 'غير صحي';

  @override
  String get notifications_title => 'الإخطارات والتنبيهات';

  @override
  String get notifications_empty => 'لا توجد إشعارات جديدة';

  @override
  String get notifications_mark_read => 'وضع علامة على الكل كمقروءة';

  @override
  String get notifications_clear => 'مسح الكل';

  @override
  String get reminders => 'إعدادات التذكير';

  @override
  String get notifications => 'إشعارات الدفع';

  @override
  String get reminders_breakfast_title => 'تذكير بوجبة الإفطار 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'صباح الخير! حان الوقت لتناول وجبة إفطار مغذية في $time .';
  }

  @override
  String get reminders_lunch_title => 'تذكير بالغداء 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'توقف مؤقتًا واستمتع بوجبة غداء متوازنة ومفيدة في $time .';
  }

  @override
  String get reminders_dinner_title => 'تذكير العشاء 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'حان الوقت لتناول عشاء خفيف ومرضي في $time .';
  }

  @override
  String get reminders_water_title => 'دفعة الترطيب 💧';

  @override
  String reminders_water_body(Object time) {
    return 'حان الوقت لشرب كوب من الماء الطازج! ( $time )';
  }

  @override
  String get reminders_weight_title => 'الوزن الأسبوعي ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'تتبع مقاييس جسمك الأسبوعية على بلومي ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'وقت النوم';

  @override
  String reminders_sleep_body(Object time) {
    return 'استرخ واستعد لنوم مريح ( $time ).';
  }

  @override
  String get onboard_welcome => 'مرحبا بكم في بلومي';

  @override
  String get onboard_sub =>
      'رفيقك الودود في مجال الصحة والتغذية دون الاتصال بالإنترنت.';

  @override
  String get onboard_get_started => 'ابدأ';

  @override
  String get onboard_sign_in => 'تسجيل الدخول';

  @override
  String get onboard_skip => 'تخطي';

  @override
  String get onboard_choose_goal => 'ما هو هدفك الصحي الأساسي؟';

  @override
  String get onboard_goal_weight_loss => 'فقدان الوزن لطيف';

  @override
  String get onboard_goal_muscle => 'اكتساب العضلات وقوتها';

  @override
  String get onboard_goal_energy => 'الطاقة والحيوية اليومية';

  @override
  String get onboard_goal_habits => 'الأكل الصحي الواعي';

  @override
  String get onboard_about_you => 'أخبرنا عن نفسك';

  @override
  String get onboard_lifestyle => 'روتينك اليومي';

  @override
  String get onboard_permissions_title => 'الأذونات والوصول إلى النظام';

  @override
  String get onboard_permissions_sub =>
      'منح حق الوصول إلى خطوات المزامنة والتدريبات والتذكيرات.';

  @override
  String get onboard_plan_ready_title => 'خطتك المخصصة جاهزة!';

  @override
  String get onboard_plan_ready_sub =>
      'لقد قمنا بتصميم خريطة طريق لطيفة وشخصية للتغذية والعافية من أجلك فقط.';

  @override
  String get onboard_enter_bloomi => 'أدخل بلومي';

  @override
  String get insights_weekly_report => 'خلاصة العافية الأسبوعية';

  @override
  String insights_best_day(Object day) {
    return 'أفضل يوم للاتساق: $day';
  }

  @override
  String get insights_streaks_badges => 'المشارب والمعالم';

  @override
  String insights_unlocked_on(Object date) {
    return 'مفتوح على $date';
  }

  @override
  String get insights_keep_going => 'استمروا في التقدم الرائع!';

  @override
  String get widgets_title => 'أدوات الشاشة الرئيسية';

  @override
  String widgets_active_count(Object count) {
    return 'الأدوات النشطة: $count';
  }

  @override
  String get widgets_hub_title => 'مركز بلومي للعافية';

  @override
  String get widgets_steps_title => 'الخطوات والخاتم النشط';

  @override
  String get widgets_water_title => 'سجل الترطيب السريع';

  @override
  String get widgets_mascot_title => 'بلومي التميمة رفيق';

  @override
  String get wear_os_title => 'ارتداء ساعة ذكية بنظام التشغيل';

  @override
  String get wear_os_connected => 'متصل بالمشاهدة';

  @override
  String get wear_os_sync => 'مزامنة بيانات المشاهدة';

  @override
  String get theme_title => 'المظهر والموضوع';

  @override
  String get theme_mode => 'وضع المظهر';

  @override
  String get theme_light => 'فاتح';

  @override
  String get theme_dark => 'داكن';

  @override
  String get theme_system => 'النظام';

  @override
  String get theme_background_palette => 'لوحة الخلفية';

  @override
  String get units_title => 'وحدات القياس';

  @override
  String get units_metric => 'متري (كجم، سم، مل)';

  @override
  String get units_imperial => 'الإمبراطوري (رطل، في، أوقية فلوريدا)';

  @override
  String get home_unable_load => 'تعذر تحميل لوحة التحكم';

  @override
  String get home_health_permission_req => 'مطلوب إذن الاتصال الصحي';

  @override
  String get home_health_permission_desc =>
      'يتطلب Bloomi إذنًا من Health Connect لسحب الخطوات الحقيقية ومعدل ضربات القلب ومزامنة أدوات المنزل المحمول في الوقت الفعلي.';

  @override
  String get home_allow_health => 'السماح بالاتصال بالصحة';

  @override
  String get home_ready_mindful_day => 'مستعد ليوم صحي متوازن؟ ✨';

  @override
  String get home_quick_add => 'إضافة سريعة';

  @override
  String get home_live_gps => 'نظام تحديد المواقع المباشر';

  @override
  String get home_calories_remaining_label => 'السعرات المتبقية';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'المستهلك: $consumed / $target سعرة حرارية';
  }

  @override
  String get home_tap_water_tracker => 'اضغط لمتتبع الماء 💧';

  @override
  String get home_water_goal_reached => 'تم تحقيق الهدف اليومي! 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining مل للوصول للهدف';
  }

  @override
  String get home_details => 'التفاصيل';

  @override
  String get home_upgrade_plan_desc =>
      'قم بالترقية لفتح الأهداف اليومية المخصصة وخطة الذكاء الاصطناعي';

  @override
  String get home_unlock => 'فتح 👑';

  @override
  String get home_quick_log_hint => 'تسجيل دخول العافية بسرعة';

  @override
  String get food_serving_size => 'حجم الحصة';

  @override
  String get food_serving_grams => 'التقديم (ز)';

  @override
  String get food_number_servings => 'عدد الحصص';

  @override
  String get food_calories_per_serving => 'السعرات الحرارية لكل وجبة';

  @override
  String get food_recipe_ingredients => 'المكونات';

  @override
  String get food_recipe_add_ingredient => 'أضف المكون';

  @override
  String get food_recipe_directions => 'تعليمات وملاحظات';

  @override
  String get food_recipe_total => 'مجموع وصفة التغذية';

  @override
  String get food_recipe_per_serving => 'لكل وجبة التغذية';

  @override
  String get food_recipe_saved_toast => 'تم حفظ الطعام المخصص بنجاح!';

  @override
  String get food_barcode_found => 'تم العثور على المنتج!';

  @override
  String get food_barcode_not_found_desc =>
      'لم نتمكن من العثور على هذا الرمز الشريطي في قاعدة البيانات المفتوحة. يمكنك إضافته كطعام مخصص.';

  @override
  String get food_add_custom_btn => 'إضافة طعام مخصص';

  @override
  String get food_scan_again => 'المسح مرة أخرى';

  @override
  String get food_review_items => 'مراجعة الأطعمة المكتشفة';

  @override
  String get food_review_hint => 'ضبط الكميات أو إزالة أي صنف غير معروف';

  @override
  String get food_log_selected => 'سجل الأطعمة المختارة';

  @override
  String get food_favourites_title => 'الأطعمة المفضلة';

  @override
  String get food_recent_title => 'الأطعمة الحديثة';

  @override
  String get food_no_favourites =>
      'لا توجد أطعمة مفضلة بعد. اضغط على القلب على أي طعام لحفظه هنا.';

  @override
  String get food_no_recents => 'لم يتم العثور على أي أطعمة تم تسجيلها مؤخرًا.';

  @override
  String get food_nutrition_details_title => 'تفاصيل التغذية اليومية';

  @override
  String get food_macro_protein_label => 'انهيار البروتين';

  @override
  String get food_macro_carbs_label => 'انهيار الكربوهيدرات';

  @override
  String get food_macro_fat_label => 'انهيار الدهون';

  @override
  String get food_macro_fiber_label => 'انهيار الألياف';

  @override
  String get food_daily_target_comparison => 'المقارنة المستهدفة';

  @override
  String food_target_label(Object target) {
    return 'الهدف: $target';
  }

  @override
  String get food_edit_entry => 'تحرير إدخال اليوميات';

  @override
  String get food_delete_entry => 'حذف الإدخال';

  @override
  String food_grams_short(Object grams) {
    return '$grams ز';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal سعر حراري';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current من $target مل';
  }

  @override
  String get water_intake_history => 'سجلات المياه اليوم';

  @override
  String get water_no_logs_today =>
      'لم يتم تسجيل المياه بعد اليوم. هيدرات واضغط على زر إضافة سريعة!';

  @override
  String get water_adjust_goal => 'ضبط الهدف اليومي';

  @override
  String get health_connect_banner => 'متصل بالصحة';

  @override
  String get health_vitals_summary => 'الحيوية الصحية اليومية';

  @override
  String get health_latest_heart_rate => 'أحدث معدل ضربات القلب';

  @override
  String get health_latest_bp => 'ضغط الدم';

  @override
  String get health_latest_spo2 => 'أكسجين الدم';

  @override
  String get health_latest_glucose => 'الجلوكوز في الدم';

  @override
  String get health_latest_weight => 'الوزن';

  @override
  String get health_latest_sleep => 'مدة النوم';

  @override
  String get health_add_manual => 'إضافة القياس اليدوي';

  @override
  String get health_history_trends => 'الاتجاهات التاريخية';

  @override
  String get health_sync_success => 'تمت مزامنة البيانات الصحية بنجاح!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ساعة $mins دقيقة';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val كجم';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm نبضة في الدقيقة';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic ملم زئبق';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val ملغم/ديسيلتر';
  }

  @override
  String get health_devices_title =>
      'الأجهزة المتصلة والأجهزة القابلة للارتداء';

  @override
  String get health_devices_desc =>
      'إدارة الساعات الذكية المقترنة وأجهزة تتبع اللياقة البدنية وأجهزة الاستشعار الصحية.';

  @override
  String get health_workout_editor_title => 'تحرير تجريب';

  @override
  String get health_workout_name_label => 'اسم التمرين';

  @override
  String get health_workout_duration_label => 'المدة (بالدقائق)';

  @override
  String get health_workout_calories_label =>
      'السعرات الحرارية المقدرة (سعر حراري)';

  @override
  String get health_workout_date_label => 'التاريخ والوقت';

  @override
  String get plan_daily_wellness_roadmap => 'خريطة الطريق الشخصية الخاصة بك';

  @override
  String get plan_morning_routine => 'روتين الصباح';

  @override
  String get plan_afternoon_routine => 'منتصف النهار العافية';

  @override
  String get plan_evening_routine => 'مساء الريح إلى أسفل';

  @override
  String get plan_coach_badge => 'بلومي مدرب الذكاء الاصطناعي';

  @override
  String get plan_weekly_overview => 'التركيز على العافية لمدة 7 أيام';

  @override
  String get plan_targets_title => 'أهداف وغايات العافية';

  @override
  String get plan_calorie_budget_label => 'ميزانية السعرات الحرارية اليومية';

  @override
  String get plan_water_budget_label => 'الهدف المائي اليومي';

  @override
  String get plan_step_budget_label => 'هدف الخطوة اليومية';

  @override
  String get plan_macro_split_label => 'نسبة المغذيات الكبيرة';

  @override
  String get profile_personal_details => 'التفاصيل الشخصية';

  @override
  String get profile_body_stats => 'قياسات الجسم';

  @override
  String get profile_app_preferences => 'التفضيلات وإعدادات التطبيق';

  @override
  String get profile_edit_name_hint => 'اسمك';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'الارتفاع ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'الوزن ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'العمر';

  @override
  String get profile_gender_male => 'ذكر';

  @override
  String get profile_gender_female => 'أنثى';

  @override
  String get profile_gender_other => 'أخرى / يفضل ألا أقول';

  @override
  String get profile_activity_sedentary =>
      'مستقر (القليل من التمارين أو عدم ممارسة الرياضة)';

  @override
  String get profile_activity_light => 'نشط قليلاً (1-3 أيام/أسبوع)';

  @override
  String get profile_activity_moderate => 'نشط إلى حد ما (3-5 أيام في الأسبوع)';

  @override
  String get profile_activity_very => 'نشط للغاية (6-7 أيام/أسبوع)';

  @override
  String get settings_wear_os_header => 'تطبيق Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'قم بتثبيت بلاط Bloomi ومضاعفاته على ساعة Wear OS الخاصة بك لإلقاء نظرة سريعة على السعرات الحرارية والماء والخطوات.';

  @override
  String get settings_widgets_header => 'أدوات Android التفاعلية';

  @override
  String get settings_widgets_desc =>
      'قم بتثبيت عناصر واجهة المستخدم في الوقت الفعلي على الشاشة الرئيسية لجهازك للحصول على التحديثات الفورية.';

  @override
  String get settings_about_header => 'عن بلومي';

  @override
  String get settings_about_version => 'الإصدار';

  @override
  String get settings_about_build => 'بناء 100';

  @override
  String get settings_about_credits => 'صُنعت بعناية من أجل حياة صحية واعية.';

  @override
  String get settings_terms_header => 'الشروط والأحكام';

  @override
  String get settings_privacy_header => 'سياسة الخصوصية';

  @override
  String get settings_delete_header => 'حذف الحساب والبيانات';

  @override
  String get settings_delete_warning =>
      'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك وتمارينك وعناصرك الحيوية وملفك الشخصي نهائيًا.';

  @override
  String get settings_delete_confirm_btn => 'حذف نهائيا';

  @override
  String get onboard_welcome_headline => 'مرحبا بكم في بلومي ✨';

  @override
  String get onboard_welcome_tagline =>
      'تتبع صحي لطيف ومدروس مصمم خصيصًا لحياتك.';

  @override
  String get onboard_step_about => 'عنك';

  @override
  String get onboard_step_goals => 'أهدافك';

  @override
  String get onboard_step_lifestyle => 'العادات اليومية';

  @override
  String get onboard_step_permissions => 'الأذونات';

  @override
  String get onboard_step_plan => 'جاهز!';

  @override
  String get onboard_health_connect_perm => 'الوصول إلى الصحة الاتصال';

  @override
  String get onboard_step_sensors_perm => 'مستشعر عداد الخطوات';

  @override
  String get onboard_notif_perm => 'تذكيرات وإشعارات مدروسة';

  @override
  String get onboard_camera_perm => 'الكاميرا (الباركود وماسح الطعام)';

  @override
  String get onboard_grant_permissions => 'أذونات المنح';

  @override
  String get onboard_continue_dashboard => 'افتح لوحة المعلومات';

  @override
  String get notif_channel_hydration_name => 'دفعات الترطيب';

  @override
  String get notif_channel_hydration_desc =>
      'تذكيرات بالمياه اللطيفة طوال اليوم';

  @override
  String get notif_channel_nutrition_name => 'تذكيرات الوجبات والتغذية';

  @override
  String get notif_channel_nutrition_desc =>
      'تنبيهات للتذكير بالإفطار والغداء والعشاء';

  @override
  String get notif_channel_steps_name => 'معالم الخطوة';

  @override
  String get notif_channel_steps_desc =>
      'احتفالات عند الوصول إلى أهداف الخطوة اليومية';

  @override
  String get notif_channel_vitals_name => 'فحوصات الصحة والحيوية';

  @override
  String get notif_channel_vitals_desc => 'تذكير بالوزن ووقت النوم';

  @override
  String get notif_action_log_water => '💧لوج +250 مل';

  @override
  String get notif_action_snooze => 'غفوة 15 م';

  @override
  String get notif_action_log_meal => '🥗 وجبة لوغ';

  @override
  String get language => 'لغة';

  @override
  String get share => 'مشاركة';

  @override
  String common_days(Object count) {
    return 'منذ $count ي';
  }
}
