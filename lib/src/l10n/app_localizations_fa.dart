// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get app_name => 'بلومی';

  @override
  String get nav_home => 'صفحه اصلی';

  @override
  String get nav_today => 'امروز';

  @override
  String get nav_plan => 'برنامه ریزی کنید';

  @override
  String get nav_food => 'غذا';

  @override
  String get nav_food_diary => 'خاطرات غذایی';

  @override
  String get nav_workout => 'گزارش تمرین';

  @override
  String get nav_health => 'سلامتی';

  @override
  String get nav_profile => 'نمایه';

  @override
  String get save => 'ذخیره کنید';

  @override
  String get cancel => 'لغو کنید';

  @override
  String get delete => 'حذف کنید';

  @override
  String get edit => 'ویرایش کنید';

  @override
  String get done => 'انجام شد';

  @override
  String get close => 'بستن';

  @override
  String get back => 'برگشت';

  @override
  String get next => 'بعدی';

  @override
  String get continue_btn => 'ادامه دهید';

  @override
  String get confirm => 'تایید کنید';

  @override
  String get search => 'جستجو کنید';

  @override
  String get filter => 'فیلتر کنید';

  @override
  String get all => 'همه';

  @override
  String get active => 'فعال';

  @override
  String get today => 'امروز';

  @override
  String get yesterday => 'دیروز';

  @override
  String get tomorrow => 'فردا';

  @override
  String get add => 'اضافه کنید';

  @override
  String get remove => 'حذف کنید';

  @override
  String get refresh => 'تازه کردن';

  @override
  String get retry => 'دوباره امتحان کنید';

  @override
  String get error => 'خطا';

  @override
  String get success => 'موفقیت';

  @override
  String get loading => 'در حال بارگیری...';

  @override
  String get no_data => 'هیچ داده ای در دسترس نیست';

  @override
  String get offline => 'حالت آفلاین';

  @override
  String get offline_sub => 'پس از اتصال مجدد، تغییرات همگام‌سازی می‌شوند';

  @override
  String get undo => 'واگرد';

  @override
  String get portion => 'بخش';

  @override
  String get quantity => 'مقدار';

  @override
  String get unit => 'واحد';

  @override
  String get clear => 'پاک کردن';

  @override
  String get select => 'انتخاب کنید';

  @override
  String get apply => 'درخواست کنید';

  @override
  String get reset => 'بازنشانی کنید';

  @override
  String get ok => 'باشه';

  @override
  String get yes => 'بله';

  @override
  String get no => 'خیر';

  @override
  String get optional => 'اختیاری';

  @override
  String get calories => 'کالری';

  @override
  String get protein => 'پروتئین';

  @override
  String get carbs => 'کربوهیدرات ها';

  @override
  String get fat => 'چربی';

  @override
  String get fiber => 'فیبر';

  @override
  String get water => 'آب';

  @override
  String get steps => 'مراحل';

  @override
  String get kcal => 'کیلو کالری';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'میلی لیتر';

  @override
  String get kilograms => 'کیلوگرم';

  @override
  String get pounds => 'پوند';

  @override
  String get centimeters => 'سانتی متر';

  @override
  String get inches => 'در';

  @override
  String get bpm => 'ضربان در دقیقه';

  @override
  String get hours => 'ساعت';

  @override
  String get minutes => 'دقیقه';

  @override
  String get serving => 'در حال خدمت کردن';

  @override
  String get servings => 'خدمات';

  @override
  String get serving_size => 'اندازه خدمت';

  @override
  String get per_100g => 'در هر 100 گرم';

  @override
  String get india => 'هند';

  @override
  String get asia => 'آسیا';

  @override
  String get europe => 'اروپا';

  @override
  String get middle_east => 'خاورمیانه';

  @override
  String get africa => 'آفریقا';

  @override
  String get americas => 'قاره آمریکا';

  @override
  String get home_title => 'صفحه اصلی';

  @override
  String get home_greeting_morning => 'صبح بخیر';

  @override
  String get home_greeting_afternoon => 'ظهر بخیر';

  @override
  String get home_greeting_evening => 'عصر بخیر';

  @override
  String get home_streak_title => 'رگه شکوفه';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز رگه',
      one: 'رگه 1 روزه',
      zero: 'رگه 0 روزه',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'سوخته';

  @override
  String get home_calories_budget => 'بودجه کالری';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal کیلو کالری باقی مانده است';
  }

  @override
  String get home_water_title => 'آبرسانی روزانه';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target میلی لیتر';
  }

  @override
  String get home_steps_title => 'قدم ها راه رفت';

  @override
  String get home_quick_actions => 'اقدامات سریع';

  @override
  String get home_log_meal => 'غذای ورود به سیستم';

  @override
  String get home_log_water => 'آب چوب';

  @override
  String get home_log_workout => 'ورود به سیستم تمرین';

  @override
  String get home_log_weight => 'وزن ورود به سیستم';

  @override
  String get home_insights_title => 'بینش امروز';

  @override
  String get home_quote =>
      'انتخاب های کوچک سالم، دگرگونی های شکوفایی ایجاد می کنند.';

  @override
  String get home_ai_coach_tip => 'مربی هوش مصنوعی بلومی';

  @override
  String get home_surroundings => 'اطراف و هوا';

  @override
  String get home_notifications => 'اطلاعیه ها';

  @override
  String get home_daily_score => 'نمره سلامت روزانه';

  @override
  String get home_view_all => 'مشاهده همه';

  @override
  String get food_diary_title => 'خاطرات غذایی';

  @override
  String get food_breakfast => 'صبحانه';

  @override
  String get food_lunch => 'ناهار';

  @override
  String get food_dinner => 'شام';

  @override
  String get food_snacks => 'تنقلات';

  @override
  String get food_add_food => 'غذا اضافه کنید';

  @override
  String get food_edit_food => 'ویرایش غذا';

  @override
  String get food_add_breakfast => 'صبحانه را اضافه کنید';

  @override
  String get food_add_lunch => 'ناهار را اضافه کنید';

  @override
  String get food_add_dinner => 'شام اضافه کنید';

  @override
  String get food_add_snack => 'میان وعده اضافه کنید';

  @override
  String get food_total_calories => 'کل کالری';

  @override
  String get food_empty_meal =>
      'هنوز هیچ غذایی برای این وعده غذایی ثبت نشده است';

  @override
  String get food_empty_diary => 'هیچ وعده غذایی برای این روز ثبت نشده است';

  @override
  String get food_log_first_meal =>
      'برای ثبت اولین غذای خوشمزه خود روی + ضربه بزنید';

  @override
  String get food_quick_add => 'افزودن سریع';

  @override
  String get food_search_hint => 'جستجوی ظروف، میوه ها، دال، روتی...';

  @override
  String get food_custom_recipe => 'غذا و دستور غذای سفارشی';

  @override
  String get food_scan_barcode => 'اسکن بارکد';

  @override
  String get food_camera_scan => 'اسکنر غذا با هوش مصنوعی';

  @override
  String get food_recent => 'غذاهای اخیر';

  @override
  String get food_favourites => 'موارد دلخواه';

  @override
  String get food_macro_summary => 'تجزیه درشت مغذی ها';

  @override
  String get food_delete_meal_confirm =>
      'آیا مطمئن هستید که می خواهید این مورد را حذف کنید؟';

  @override
  String get food_item_deleted => 'ماده غذایی حذف شد';

  @override
  String get food_remaining => 'باقی مانده است';

  @override
  String get food_consumed => 'مصرف شده است';

  @override
  String food_of_target(Object target) {
    return 'از $target کیلو کالری';
  }

  @override
  String get foodSearch_title => 'جستجوی غذاها';

  @override
  String get foodSearch_scan_barcode => 'اسکن بارکد';

  @override
  String get foodSearch_take_photo => 'عکس اسنپ غذا';

  @override
  String get foodSearch_custom_food => 'غذای سفارشی ایجاد کنید';

  @override
  String get foodSearch_recent_searches => 'جستجوهای اخیر';

  @override
  String get foodSearch_popular => 'غذاهای محبوب';

  @override
  String get foodSearch_no_results => 'هیچ غذایی مطابق با جستجوی شما نیست';

  @override
  String get barcode_title => 'اسکنر بارکد';

  @override
  String get barcode_align => 'بارکد را داخل قاب دوربین تراز کنید';

  @override
  String get barcode_not_found => 'محصول در پایگاه داده یافت نشد';

  @override
  String get barcode_premium_feature => 'اسکن بارکد با Bloomi Pro در دسترس است';

  @override
  String get camera_title => 'اسکنر غذا با هوش مصنوعی';

  @override
  String get camera_tap_hint => 'یک عکس واضح از ظرف خود بگیرید';

  @override
  String get camera_analysing => 'آنالیز بشقاب غذا ...';

  @override
  String get camera_detected => 'موارد شناسایی شده';

  @override
  String get camera_flash => 'فلش را تغییر دهید';

  @override
  String get camera_retake => 'دوباره گرفتن عکس';

  @override
  String get camera_confirm_food => 'موارد را تأیید کنید';

  @override
  String get customFood_title => 'غذا و دستور غذای سفارشی';

  @override
  String get customFood_name_hint => 'نام غذا یا مواد تشکیل دهنده';

  @override
  String get customFood_calories_hint => 'کالری (کیلو کالری)';

  @override
  String get customFood_protein_hint => 'پروتئین (گرم)';

  @override
  String get customFood_carbs_hint => 'کربوهیدرات (گرم)';

  @override
  String get customFood_fat_hint => 'چربی (گرم)';

  @override
  String get customFood_save => 'ذخیره دستور غذا';

  @override
  String get water_tracker_title => 'ردیاب آب';

  @override
  String get water_daily_target => 'هدف هیدراتاسیون روزانه';

  @override
  String get water_logged_today => 'امروز وارد شده است';

  @override
  String get water_add_glass => '+250 میلی لیتر شیشه';

  @override
  String get water_add_bottle => 'بطری +500 میلی لیتر';

  @override
  String get water_custom_amount => 'مقدار سفارشی';

  @override
  String get water_reminder_tip =>
      'برای داشتن انرژی پایدار در طول روز به طور منظم آب بنوشید.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount میلی لیتر آب وارد شده 💧';
  }

  @override
  String get workout_title => 'گزارش تمرین';

  @override
  String get workout_add_exercise => 'اضافه کردن تمرین';

  @override
  String get workout_cardio => 'کاردیو';

  @override
  String get workout_strength => 'قدرت';

  @override
  String get workout_yoga => 'یوگا و انعطاف پذیری';

  @override
  String get workout_duration => 'مدت زمان';

  @override
  String get workout_intensity => 'شدت';

  @override
  String get workout_calories_burned => 'کالری سوزانده شده';

  @override
  String get workout_empty => 'امروز هیچ تمرینی ثبت نشده است';

  @override
  String get workout_save_success => 'تمرین با موفقیت ذخیره شد!';

  @override
  String get workout_type => 'نوع تمرین';

  @override
  String get workout_notes => 'یادداشت ها و بازتاب ها';

  @override
  String get health_overview_title => 'سلامتی و حیاتی';

  @override
  String get health_heart_rate => 'ضربان قلب';

  @override
  String get health_blood_oxygen => 'اکسیژن خون (SpO2)';

  @override
  String get health_blood_pressure => 'فشار خون';

  @override
  String get health_blood_glucose => 'گلوکز خون';

  @override
  String get health_body_temperature => 'دمای بدن';

  @override
  String get health_sleep_tracking => 'ردیابی خواب';

  @override
  String get health_weight_tracking => 'وزن و ترکیب بدن';

  @override
  String get health_waist_hip => 'نسبت دور کمر به باسن';

  @override
  String get health_devices_hub => 'دستگاه ها و هاب ساعت هوشمند';

  @override
  String get health_sync_now => 'همگام سازی داده های سلامت';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'آخرین همگام سازی: $time';
  }

  @override
  String get health_manual_entry => 'مدخل بهداشتی دستی';

  @override
  String get health_metric_detail => 'جزئیات متریک';

  @override
  String get health_connected_sensors => 'سنسورهای سلامت متصل';

  @override
  String get plan_title => 'برنامه روزانه';

  @override
  String get plan_weekly_title => 'برنامه هفتگی سلامتی';

  @override
  String get plan_calorie_target => 'هدف کالری';

  @override
  String get plan_water_target => 'هدف هیدراتاسیون';

  @override
  String get plan_step_target => 'مرحله هدف';

  @override
  String get plan_sleep_target => 'هدف خواب';

  @override
  String get plan_meal_suggestions => 'پیشنهادات غذایی';

  @override
  String get plan_healthy_habits => 'عادات و نکات سالم';

  @override
  String get plan_coach_advice => 'توصیه های مربی هوش مصنوعی بلومی';

  @override
  String get plan_generated_title => 'برنامه روزانه شخصی';

  @override
  String get profile_title => 'نمایه';

  @override
  String get profile_edit => 'ویرایش نمایه';

  @override
  String get profile_name => 'نام';

  @override
  String get profile_age => 'سن';

  @override
  String get profile_gender => 'جنسیت';

  @override
  String get profile_height => 'ارتفاع';

  @override
  String get profile_weight => 'وزن';

  @override
  String get profile_goal => 'هدف اولیه';

  @override
  String get profile_activity_level => 'سطح فعالیت';

  @override
  String get profile_stats => 'آمار سلامتی من';

  @override
  String get profile_saved => 'نمایه با موفقیت به روز شد';

  @override
  String get profile_bmi => 'شاخص توده بدنی (BMI)';

  @override
  String get profile_membership => 'عضویت';

  @override
  String get settings => 'تنظیمات';

  @override
  String get preferences_habits => 'ترجیحات و عادات';

  @override
  String get appearance_theme => 'ظاهر و تم';

  @override
  String get appearance_theme_sub =>
      'گزینه های تاریک، روشن، حالت سیستم و پس زمینه برنامه';

  @override
  String get permissions => 'مجوزها و دسترسی به سیستم';

  @override
  String get permissions_sub =>
      'Health Connect، سنسورهای مرحله، GPS، اعلان‌ها و دوربین';

  @override
  String get reminders_notifications => 'یادآوری ها و اعلان ها';

  @override
  String get reminders_sub => 'زمان غذا، آب، بررسی وزن و یادآوری زمان خواب';

  @override
  String get units_of_measurement => 'واحدهای اندازه گیری';

  @override
  String get units_sub =>
      'متریک (کیلوگرم، سانتی‌متر، میلی‌لیتر، کیلومتر) یا امپریال (پوند، فوت/اینچ، اونس فلوریدا)';

  @override
  String get app_language => 'زبان برنامه';

  @override
  String get language_sub =>
      'انگلیسی، हिन्दी (هندی)، هندی، و بیش از 195 زبان جهانی';

  @override
  String get home_screen_widgets => 'ابزارک های صفحه اصلی';

  @override
  String get widgets_sub =>
      'ویجت‌های زنده اندروید: Hub، Steps، Water، Nutrition و Mascot';

  @override
  String get wear_os_watch_app => 'برنامه Watch OS را بپوشید';

  @override
  String get wear_os_sub =>
      'همراه ساعت هوشمند، کاشی‌ها، عوارض و موارد حیاتی زنده';

  @override
  String get goals_wellness => 'اهداف و بینش سلامتی';

  @override
  String get nutrition_targets => 'اهداف تغذیه و تقسیم کلان';

  @override
  String get nutrition_targets_sub =>
      'هدف کالری، پروتئین، کربوهیدرات، چربی و آب';

  @override
  String get weekly_recap => 'خلاصه هفتگی سلامتی';

  @override
  String get weekly_recap_sub => 'میانگین کالری 7 روزه، نسبت کلان و بهترین روز';

  @override
  String get streaks_milestones => 'رگه ها و نقاط عطف';

  @override
  String get streaks_sub => 'رگه‌های شکوفه فعال، نشان‌ها و دستاوردها';

  @override
  String get connected_devices => 'دستگاه های متصل و اکوسیستم';

  @override
  String get devices_hub => 'دستگاه ها و هاب ساعت هوشمند';

  @override
  String get devices_hub_sub =>
      'Health Connect، Galaxy Watch، Pixel Watch، Garmin';

  @override
  String get surroundings_weather => 'محیط و آب و هوا';

  @override
  String get surroundings_sub =>
      'کیفیت هوا (AQI)، شاخص UV و نکات هیدراتاسیون آب و هوا';

  @override
  String get bloomi_pro => 'اشتراک Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'مربی طرح هوش مصنوعی، 5 ویجت صفحه اصلی و ردیابی موارد حیاتی';

  @override
  String get about_security => 'درباره و امنیت';

  @override
  String get about_bloomi => 'درباره بلومی';

  @override
  String get about_bloomi_sub => 'مشخصات ساخت، نسخه، اسناد';

  @override
  String get privacy_policy => 'سیاست حفظ حریم خصوصی';

  @override
  String get privacy_policy_sub => 'معماری داده روی دستگاه اول آفلاین';

  @override
  String get terms_conditions => 'شرایط و ضوابط';

  @override
  String get terms_conditions_sub => 'شرایط خدمات و دستورالعمل های سلامتی';

  @override
  String get delete_account => 'حذف حساب و داده';

  @override
  String get delete_account_sub =>
      'داده‌های محلی SQLite و پشتیبان‌گیری‌های ابری را به‌طور برگشت‌ناپذیر پاک کنید';

  @override
  String get healthy_habits => 'عادات سلامتی ملایم و پایدار ایجاد کنید';

  @override
  String get all_logs => 'داده ها و گزارش های ردیابی شده من';

  @override
  String get search_language => 'جستجو بر اساس زبان یا خط بومی...';

  @override
  String get languages_available => 'زبان های موجود';

  @override
  String get no_matching_languages => 'هیچ زبان منطبقی یافت نشد';

  @override
  String get try_searching =>
      'سعی کنید با اسکریپت بومی یا املای انگلیسی جستجو کنید';

  @override
  String get partially_translated => 'تا حدی ترجمه شده است';

  @override
  String get complete_translation => 'کامل';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'زبان روی $name ( $nativeName ) تنظیم شد';
  }

  @override
  String get surroundings_title => 'محیط و محیط';

  @override
  String get surroundings_aqi => 'شاخص کیفیت هوا';

  @override
  String get surroundings_uv => 'شاخص UV';

  @override
  String get surroundings_temp => 'دما';

  @override
  String get surroundings_humidity => 'رطوبت';

  @override
  String get surroundings_hydration_advice =>
      'در شرایط آب و هوایی فعلی به خوبی هیدراته بمانید.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'جستجوی غذا';

  @override
  String get food_quick_barcode => 'اسکن بارکد 👑';

  @override
  String get food_quick_water => 'آب را اضافه کنید';

  @override
  String get food_quick_custom => 'غذای سفارشی';

  @override
  String get surroundings_good => 'خوب';

  @override
  String get surroundings_moderate => 'متوسط';

  @override
  String get surroundings_unhealthy => 'ناسالم';

  @override
  String get notifications_title => 'اعلان ها و هشدارها';

  @override
  String get notifications_empty => 'اعلان جدیدی وجود ندارد';

  @override
  String get notifications_mark_read => 'علامت گذاری همه به عنوان خوانده شده';

  @override
  String get notifications_clear => 'پاک کردن همه';

  @override
  String get reminders => 'تنظیمات یادآوری';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'یادآوری صبحانه 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'صبح بخیر زمان برای یک صبحانه مقوی ساعت $time است.';
  }

  @override
  String get reminders_lunch_title => 'یادآوری ناهار 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'مکث کنید و از یک ناهار متعادل و آگاهانه در $time لذت ببرید.';
  }

  @override
  String get reminders_dinner_title => 'یادآوری شام 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'زمان برای یک شام سبک و رضایت بخش در $time است.';
  }

  @override
  String get reminders_water_title => 'هیدراتاسیون نوج 💧';

  @override
  String reminders_water_body(Object time) {
    return 'زمان نوشیدن یک لیوان آب تازه است! ( $time )';
  }

  @override
  String get reminders_weight_title => 'وزن کشی هفتگی ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'معیارهای هفتگی بدن خود را در Bloomi ردیابی کنید ($time).';
  }

  @override
  String get reminders_sleep_title => 'زمان خواب باد پایین 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'استراحت کنید و برای یک خواب آرام آماده شوید ($time).';
  }

  @override
  String get onboard_welcome => 'به بلومی خوش آمدید';

  @override
  String get onboard_sub => 'همراه صمیمی و آفلاین شما برای سلامتی و تغذیه.';

  @override
  String get onboard_get_started => 'شروع کنید';

  @override
  String get onboard_sign_in => 'وارد شوید';

  @override
  String get onboard_skip => 'پرش کنید';

  @override
  String get onboard_choose_goal => 'هدف اصلی سلامتی شما چیست؟';

  @override
  String get onboard_goal_weight_loss => 'کاهش وزن ملایم';

  @override
  String get onboard_goal_muscle => 'افزایش و قدرت عضلانی';

  @override
  String get onboard_goal_energy => 'انرژی و سرزندگی روزانه';

  @override
  String get onboard_goal_habits => 'تغذیه سالم و آگاهانه';

  @override
  String get onboard_about_you => 'درباره خودتان به ما بگویید';

  @override
  String get onboard_lifestyle => 'روال روزانه شما';

  @override
  String get onboard_permissions_title => 'مجوزها و دسترسی به سیستم';

  @override
  String get onboard_permissions_sub =>
      'به مراحل همگام‌سازی، تمرین‌ها و یادآوری‌ها دسترسی بدهید.';

  @override
  String get onboard_plan_ready_title => 'طرح سفارشی شما آماده است!';

  @override
  String get onboard_plan_ready_sub =>
      'ما یک نقشه راه ملایم و شخصی سازی شده تغذیه و تندرستی را فقط برای شما تهیه کردیم.';

  @override
  String get onboard_enter_bloomi => 'بلومی را وارد کنید';

  @override
  String get insights_weekly_report => 'خلاصه هفتگی سلامتی';

  @override
  String insights_best_day(Object day) {
    return 'بهترین روز ثبات: $day';
  }

  @override
  String get insights_streaks_badges => 'رگه ها و نقاط عطف';

  @override
  String insights_unlocked_on(Object date) {
    return 'قفل در $date باز شد';
  }

  @override
  String get insights_keep_going => 'به پیشرفت فوق العاده ادامه دهید!';

  @override
  String get widgets_title => 'ابزارک های صفحه اصلی';

  @override
  String widgets_active_count(Object count) {
    return 'ابزارک‌های فعال: $count';
  }

  @override
  String get widgets_hub_title => 'مرکز سلامتی بلومی';

  @override
  String get widgets_steps_title => 'مراحل و حلقه فعال';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'بلومی طلسم همراه';

  @override
  String get wear_os_title => 'ساعت هوشمند سیستم عامل بپوشید';

  @override
  String get wear_os_connected => 'به ساعت وصل شد';

  @override
  String get wear_os_sync => 'همگام سازی داده های ساعت';

  @override
  String get theme_title => 'ظاهر و تم';

  @override
  String get theme_mode => 'حالت تم';

  @override
  String get theme_light => 'نور';

  @override
  String get theme_dark => 'تاریک';

  @override
  String get theme_system => 'سیستم';

  @override
  String get theme_background_palette => 'پالت پس زمینه';

  @override
  String get units_title => 'واحدهای اندازه گیری';

  @override
  String get units_metric => 'متریک (کیلوگرم، سانتی متر، میلی لیتر)';

  @override
  String get units_imperial => 'امپریال (پوند، اینچ، فلور اونس)';

  @override
  String get home_unable_load => 'داشبورد بارگیری نمی شود';

  @override
  String get home_health_permission_req => 'مجوز Health Connect مورد نیاز است';

  @override
  String get home_health_permission_desc =>
      'بلومی برای برداشتن گام‌های واقعی، ضربان قلب و همگام‌سازی ویجت‌های خانه تلفن همراه در زمان واقعی، به مجوز Health Connect نیاز دارد.';

  @override
  String get home_allow_health => 'به Health Connect اجازه دهید';

  @override
  String get home_ready_mindful_day => 'برای یک روز ذهنی آماده اید؟ ✨';

  @override
  String get home_quick_add => 'افزودن سریع';

  @override
  String get home_live_gps => 'جی پی اس زنده';

  @override
  String get home_calories_remaining_label => 'کالری باقی مانده';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'خورده شده: $consumed / $target کیلو کالری';
  }

  @override
  String get home_tap_water_tracker => 'شیر برای ردیاب آب 💧';

  @override
  String get home_water_goal_reached => 'به هدف روزانه رسید 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining میلی لیتر به هدف روزانه';
  }

  @override
  String get home_details => 'جزئیات';

  @override
  String get home_upgrade_plan_desc =>
      'برای باز کردن قفل اهداف روزانه شخصی و برنامه هوش مصنوعی ارتقا دهید';

  @override
  String get home_unlock => 'باز کن 👑';

  @override
  String get home_quick_log_hint => 'به سرعت یک ورودی سلامتی را ثبت کنید';

  @override
  String get food_serving_size => 'اندازه خدمت';

  @override
  String get food_serving_grams => 'سرو (گرم)';

  @override
  String get food_number_servings => 'تعداد سرو';

  @override
  String get food_calories_per_serving => 'کالری در هر وعده';

  @override
  String get food_recipe_ingredients => 'مواد تشکیل دهنده';

  @override
  String get food_recipe_add_ingredient => 'مواد را اضافه کنید';

  @override
  String get food_recipe_directions => 'دستورالعمل ها و یادداشت ها';

  @override
  String get food_recipe_total => 'دستور کامل تغذیه';

  @override
  String get food_recipe_per_serving => 'در هر وعده تغذیه';

  @override
  String get food_recipe_saved_toast => 'غذای سفارشی با موفقیت ذخیره شد!';

  @override
  String get food_barcode_found => 'محصول پیدا شد!';

  @override
  String get food_barcode_not_found_desc =>
      'ما نتوانستیم این بارکد را در پایگاه داده باز پیدا کنیم. می توانید آن را به عنوان یک غذای سفارشی اضافه کنید.';

  @override
  String get food_add_custom_btn => 'غذای سفارشی را اضافه کنید';

  @override
  String get food_scan_again => 'دوباره اسکن کنید';

  @override
  String get food_review_items => 'بررسی غذاهای شناسایی شده';

  @override
  String get food_review_hint =>
      'مقدار را تنظیم کنید یا هر مورد ناشناس را حذف کنید';

  @override
  String get food_log_selected => 'ورود به سیستم غذاهای انتخابی';

  @override
  String get food_favourites_title => 'غذاهای مورد علاقه';

  @override
  String get food_recent_title => 'غذاهای اخیر';

  @override
  String get food_no_favourites =>
      'هنوز غذاهای مورد علاقه وجود ندارد. روی هر غذایی که در اینجا ذخیره کنید ضربه بزنید.';

  @override
  String get food_no_recents => 'هیچ غذایی که اخیراً ثبت شده است یافت نشد.';

  @override
  String get food_nutrition_details_title => 'جزئیات تغذیه روزانه';

  @override
  String get food_macro_protein_label => 'تجزیه پروتئین';

  @override
  String get food_macro_carbs_label => 'تجزیه کربوهیدرات ها';

  @override
  String get food_macro_fat_label => 'تجزیه چربی';

  @override
  String get food_macro_fiber_label => 'تجزیه فیبر';

  @override
  String get food_daily_target_comparison => 'مقایسه هدف';

  @override
  String food_target_label(Object target) {
    return 'هدف: $target';
  }

  @override
  String get food_edit_entry => 'ویرایش دفترچه خاطرات';

  @override
  String get food_delete_entry => 'حذف ورودی';

  @override
  String food_grams_short(Object grams) {
    return '$grams گرم';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal کیلو کالری';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current از $target میلی لیتر';
  }

  @override
  String get water_intake_history => 'سیاهههای آب امروز';

  @override
  String get water_no_logs_today =>
      'امروز هنوز آب قطع نشده است هیدراته کنید و روی دکمه افزودن سریع ضربه بزنید!';

  @override
  String get water_adjust_goal => 'تنظیم هدف روزانه';

  @override
  String get health_connect_banner => 'متصل به Health Connect';

  @override
  String get health_vitals_summary => 'نکات حیاتی سلامت روزانه';

  @override
  String get health_latest_heart_rate => 'آخرین ضربان قلب';

  @override
  String get health_latest_bp => 'فشار خون';

  @override
  String get health_latest_spo2 => 'اکسیژن خون';

  @override
  String get health_latest_glucose => 'گلوکز خون';

  @override
  String get health_latest_weight => 'وزن';

  @override
  String get health_latest_sleep => 'مدت زمان خواب';

  @override
  String get health_add_manual => 'اضافه کردن اندازه گیری دستی';

  @override
  String get health_history_trends => 'روندهای تاریخی';

  @override
  String get health_sync_success => 'داده های سلامت با موفقیت همگام سازی شد!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ساعت $mins دقیقه';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val کیلوگرم';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm ضربان در دقیقه';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic میلی متر جیوه';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val میلی گرم در دسی لیتر';
  }

  @override
  String get health_devices_title => 'دستگاه‌های متصل و پوشیدنی';

  @override
  String get health_devices_desc =>
      'ساعت‌های هوشمند جفت شده، ردیاب‌های تناسب اندام و حسگرهای سلامت را مدیریت کنید.';

  @override
  String get health_workout_editor_title => 'ویرایش تمرین';

  @override
  String get health_workout_name_label => 'نام تمرین';

  @override
  String get health_workout_duration_label => 'مدت زمان (دقیقه)';

  @override
  String get health_workout_calories_label => 'کالری تخمینی (کیلو کالری)';

  @override
  String get health_workout_date_label => 'تاریخ و زمان';

  @override
  String get plan_daily_wellness_roadmap => 'نقشه راه شخصی شما';

  @override
  String get plan_morning_routine => 'روال صبحگاهی';

  @override
  String get plan_afternoon_routine => 'سلامتی ظهر';

  @override
  String get plan_evening_routine => 'عصر باد پایین';

  @override
  String get plan_coach_badge => 'مربی هوش مصنوعی بلومی';

  @override
  String get plan_weekly_overview => 'تمرکز سلامتی 7 روزه';

  @override
  String get plan_targets_title => 'اهداف و اهداف سلامتی';

  @override
  String get plan_calorie_budget_label => 'بودجه کالری روزانه';

  @override
  String get plan_water_budget_label => 'هدف روزانه آب';

  @override
  String get plan_step_budget_label => 'هدف قدم روزانه';

  @override
  String get plan_macro_split_label => 'نسبت درشت مغذی ها';

  @override
  String get profile_personal_details => 'جزئیات شخصی';

  @override
  String get profile_body_stats => 'اندازه گیری بدن';

  @override
  String get profile_app_preferences => 'تنظیمات برگزیده و برنامه';

  @override
  String get profile_edit_name_hint => 'نام شما';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'قد ($unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'وزن ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'سن';

  @override
  String get profile_gender_male => 'مرد';

  @override
  String get profile_gender_female => 'زن';

  @override
  String get profile_gender_other => 'دیگر / ترجیح می دهند نگویند';

  @override
  String get profile_activity_sedentary => 'کم تحرک (کمی یا بدون ورزش)';

  @override
  String get profile_activity_light => 'کم فعال (1-3 روز در هفته)';

  @override
  String get profile_activity_moderate => 'نسبتا فعال (3-5 روز در هفته)';

  @override
  String get profile_activity_very => 'بسیار فعال (6-7 روز در هفته)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'کاشی بلومی و پیچیدگی را روی ساعت Wear OS خود نصب کنید تا به کالری، آب و مراحل نگاه کنید.';

  @override
  String get settings_widgets_header => 'ابزارک های تعاملی اندروید';

  @override
  String get settings_widgets_desc =>
      'برای به‌روزرسانی‌های فوری، ویجت‌ها را در صفحه اصلی دستگاه خود پین کنید.';

  @override
  String get settings_about_header => 'درباره بلومی';

  @override
  String get settings_about_version => 'نسخه';

  @override
  String get settings_about_build => 'ساخت 100';

  @override
  String get settings_about_credits =>
      'با مراقبت برای زندگی آگاهانه و سالم ساخته شده است.';

  @override
  String get settings_terms_header => 'شرایط و ضوابط';

  @override
  String get settings_privacy_header => 'سیاست حفظ حریم خصوصی';

  @override
  String get settings_delete_header => 'حذف حساب و داده';

  @override
  String get settings_delete_warning =>
      'این عمل قابل لغو نیست. تمام وعده های غذایی، تمرینات، موارد حیاتی و نمایه شما برای همیشه حذف می شود.';

  @override
  String get settings_delete_confirm_btn => 'برای همیشه حذف کنید';

  @override
  String get onboard_welcome_headline => 'به بلومی خوش آمدید ✨';

  @override
  String get onboard_welcome_tagline =>
      'ردیابی سلامت ملایم و آگاهانه که در سراسر زندگی شما طراحی شده است.';

  @override
  String get onboard_step_about => 'درباره شما';

  @override
  String get onboard_step_goals => 'اهداف شما';

  @override
  String get onboard_step_lifestyle => 'عادات روزانه';

  @override
  String get onboard_step_permissions => 'مجوزها';

  @override
  String get onboard_step_plan => 'آماده!';

  @override
  String get onboard_health_connect_perm => 'دسترسی به Health Connect';

  @override
  String get onboard_step_sensors_perm => 'سنسور گام شمار';

  @override
  String get onboard_notif_perm => 'یادآوری‌ها و اعلان‌ها';

  @override
  String get onboard_camera_perm => 'دوربین (بارکد و اسکنر غذا)';

  @override
  String get onboard_grant_permissions => 'اعطای مجوزها';

  @override
  String get onboard_continue_dashboard => 'داشبورد را باز کنید';

  @override
  String get notif_channel_hydration_name => 'هیدراتاسیون نوج ها';

  @override
  String get notif_channel_hydration_desc => 'یادآوری آب ملایم در طول روز';

  @override
  String get notif_channel_nutrition_name => 'یادآوری وعده های غذایی و تغذیه';

  @override
  String get notif_channel_nutrition_desc =>
      'هشدارهای یادآوری صبحانه، ناهار و شام';

  @override
  String get notif_channel_steps_name => 'نقاط عطف مرحله';

  @override
  String get notif_channel_steps_desc =>
      'جشن ها هنگام رسیدن به اهداف گام روزانه';

  @override
  String get notif_channel_vitals_name => 'چک های سلامتی و حیاتی';

  @override
  String get notif_channel_vitals_desc => 'یادآوری وزن و زمان خواب';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'چرت زدن 15 متر';

  @override
  String get notif_action_log_meal => '🥗 غذای لاگ';

  @override
  String get language => 'زبان';

  @override
  String get share => 'به اشتراک بگذارید';

  @override
  String common_days(Object count) {
    return '$count روز پیش';
  }
}
