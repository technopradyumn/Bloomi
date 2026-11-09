// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get app_name => 'بلومي';

  @override
  String get nav_home => 'کور';

  @override
  String get nav_today => 'نن';

  @override
  String get nav_plan => 'پلان';

  @override
  String get nav_food => 'خواړه';

  @override
  String get nav_food_diary => 'د خوراکي توکو کتابچه';

  @override
  String get nav_workout => 'د ورزش لاګ';

  @override
  String get nav_health => 'روغتیا';

  @override
  String get nav_profile => 'پروفایل';

  @override
  String get save => 'خوندي کړئ';

  @override
  String get cancel => 'لغوه کړئ';

  @override
  String get delete => 'ړنګول';

  @override
  String get edit => 'سمون';

  @override
  String get done => 'ترسره شو';

  @override
  String get close => 'تړل';

  @override
  String get back => 'شاته';

  @override
  String get next => 'بل';

  @override
  String get continue_btn => 'ادامه ورکړئ';

  @override
  String get confirm => 'تایید کړه';

  @override
  String get search => 'لټون';

  @override
  String get filter => 'فلټر';

  @override
  String get all => 'ټول';

  @override
  String get active => 'فعاله';

  @override
  String get today => 'نن';

  @override
  String get yesterday => 'پرون';

  @override
  String get tomorrow => 'سبا';

  @override
  String get add => 'اضافه کړئ';

  @override
  String get remove => 'لرې کړئ';

  @override
  String get refresh => 'تازه کړئ';

  @override
  String get retry => 'بیا هڅه وکړئ';

  @override
  String get error => 'تېروتنه';

  @override
  String get success => 'بریالیتوب';

  @override
  String get loading => 'بار کول...';

  @override
  String get no_data => 'هیڅ معلومات شتون نلري';

  @override
  String get offline => 'آف لائن حالت';

  @override
  String get offline_sub => 'بدلونونه به یوځل بیا وصل شي همغږي شي';

  @override
  String get undo => 'بیرته راګرځول';

  @override
  String get portion => 'برخه';

  @override
  String get quantity => 'مقدار';

  @override
  String get unit => 'واحد';

  @override
  String get clear => 'روښانه';

  @override
  String get select => 'وټاکئ';

  @override
  String get apply => 'درخواست وکړئ';

  @override
  String get reset => 'بیا تنظیم کړئ';

  @override
  String get ok => 'سمه ده';

  @override
  String get yes => 'هو';

  @override
  String get no => 'نه';

  @override
  String get optional => 'اختیاري';

  @override
  String get calories => 'کالوري';

  @override
  String get protein => 'پروټین';

  @override
  String get carbs => 'کاربوهایډریټ';

  @override
  String get fat => 'غوړ';

  @override
  String get fiber => 'فایبر';

  @override
  String get water => 'اوبه';

  @override
  String get steps => 'ګامونه';

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
  String get inches => 'په';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ساعتونه';

  @override
  String get minutes => 'دقیقې';

  @override
  String get serving => 'خدمت کول';

  @override
  String get servings => 'خدمتونه';

  @override
  String get serving_size => 'د خدمت کولو اندازه';

  @override
  String get per_100g => 'په هر 100 ګرامه';

  @override
  String get india => 'هند';

  @override
  String get asia => 'آسیا';

  @override
  String get europe => 'اروپا';

  @override
  String get middle_east => 'منځنی ختیځ';

  @override
  String get africa => 'افریقا';

  @override
  String get americas => 'امریکا';

  @override
  String get home_title => 'کور';

  @override
  String get home_greeting_morning => 'سهار مو پخیر';

  @override
  String get home_greeting_afternoon => 'مازدیګر مو پخیر';

  @override
  String get home_greeting_evening => 'ماښام مو پخیر';

  @override
  String get home_streak_title => 'د ګلونو سټریک';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'د $count ورځو لړۍ',
      one: '1 ورځی جریان',
      zero: 'د 0 ورځو لړۍ',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'سوځیدلی';

  @override
  String get home_calories_budget => 'د کالوري بودیجه';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal پاتې';
  }

  @override
  String get home_water_title => 'ورځنی هایدریشن';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'قدمونه روان شول';

  @override
  String get home_quick_actions => 'چټک اقدامات';

  @override
  String get home_log_meal => 'د ډوډۍ ننوتل';

  @override
  String get home_log_water => 'د اوبو ننوتل';

  @override
  String get home_log_workout => 'لاګ ورزش';

  @override
  String get home_log_weight => 'د ننوتلو وزن';

  @override
  String get home_insights_title => 'د نن ورځې بصیرت';

  @override
  String get home_quote =>
      'کوچني صحي انتخابونه د ګل کولو بدلونونه رامینځته کوي.';

  @override
  String get home_ai_coach_tip => 'د بلومي AI کوچ';

  @override
  String get home_surroundings => 'چاپیریال او هوا';

  @override
  String get home_notifications => 'خبرتیاوې';

  @override
  String get home_daily_score => 'د ورځني روغتیا نمرې';

  @override
  String get home_view_all => 'ټول وګورئ';

  @override
  String get food_diary_title => 'د خوراکي توکو کتابچه';

  @override
  String get food_breakfast => 'ناشته';

  @override
  String get food_lunch => 'د غرمې ډوډۍ';

  @override
  String get food_dinner => 'ډوډۍ';

  @override
  String get food_snacks => 'ناشته';

  @override
  String get food_add_food => 'خواړه اضافه کړئ';

  @override
  String get food_edit_food => 'خواړه ترمیم کړئ';

  @override
  String get food_add_breakfast => 'ناشته اضافه کړئ';

  @override
  String get food_add_lunch => 'د غرمې ډوډۍ اضافه کړئ';

  @override
  String get food_add_dinner => 'ډوډۍ اضافه کړئ';

  @override
  String get food_add_snack => 'ډوډۍ اضافه کړئ';

  @override
  String get food_total_calories => 'ټول کالوري';

  @override
  String get food_empty_meal =>
      'تر اوسه د دې خواړو لپاره هیڅ خواړه نه دي ثبت شوي';

  @override
  String get food_empty_diary => 'د دې ورځې لپاره هیڅ خواړه نه دي ثبت شوي';

  @override
  String get food_log_first_meal =>
      'د خپل لومړي خوندور خواړه د ننوتلو لپاره + ټایپ کړئ';

  @override
  String get food_quick_add => 'چټک اضافه کول';

  @override
  String get food_search_hint => 'لوښي، میوه، دال، روټی وپلټئ ...';

  @override
  String get food_custom_recipe => 'دودیز خواړه او ترکیب';

  @override
  String get food_scan_barcode => 'بارکوډ سکین کړئ';

  @override
  String get food_camera_scan => 'د AI خواړه سکینر';

  @override
  String get food_recent => 'وروستي خواړه';

  @override
  String get food_favourites => 'د خوښې وړ';

  @override
  String get food_macro_summary => 'د میکرونیوټرینټ ماتول';

  @override
  String get food_delete_meal_confirm =>
      'ایا تاسو ډاډه یاست چې دا توکي لرې کول غواړئ؟';

  @override
  String get food_item_deleted => 'د خوړو توکي لرې کړل';

  @override
  String get food_remaining => 'پاتې';

  @override
  String get food_consumed => 'مصرف شوی';

  @override
  String food_of_target(Object target) {
    return 'د $target kcal';
  }

  @override
  String get foodSearch_title => 'د خوړو لټون';

  @override
  String get foodSearch_scan_barcode => 'بارکوډ سکین کړئ';

  @override
  String get foodSearch_take_photo => 'د خوړو عکس سنیپ';

  @override
  String get foodSearch_custom_food => 'دودیز خواړه جوړ کړئ';

  @override
  String get foodSearch_recent_searches => 'وروستي لټونونه';

  @override
  String get foodSearch_popular => 'مشهور خواړه';

  @override
  String get foodSearch_no_results => 'هیڅ خواړه ستاسو د لټون سره سمون نه خوري';

  @override
  String get barcode_title => 'د بارکوډ سکینر';

  @override
  String get barcode_align => 'د کیمرې چوکاټ دننه بارکوډ تنظیم کړئ';

  @override
  String get barcode_not_found => 'محصول په ډیټابیس کې ندی موندل شوی';

  @override
  String get barcode_premium_feature =>
      'د بارکوډ سکین کول د بلومي پرو سره شتون لري';

  @override
  String get camera_title => 'د AI خواړه سکینر';

  @override
  String get camera_tap_hint => 'د خپل ډوډۍ روښانه عکس واخلئ';

  @override
  String get camera_analysing => 'د خواړو پلیټ تحلیل ...';

  @override
  String get camera_detected => 'کشف شوي توکي';

  @override
  String get camera_flash => 'فلش بدل کړئ';

  @override
  String get camera_retake => 'عکس بیرته واخلئ';

  @override
  String get camera_confirm_food => 'توکي تایید کړئ';

  @override
  String get customFood_title => 'دودیز خواړه او ترکیب';

  @override
  String get customFood_name_hint => 'د ډوډۍ یا اجزا نوم';

  @override
  String get customFood_calories_hint => 'کالوري (kcal)';

  @override
  String get customFood_protein_hint => 'پروټین (g)';

  @override
  String get customFood_carbs_hint => 'کاربوهایډریټ (g)';

  @override
  String get customFood_fat_hint => 'غوړ (g)';

  @override
  String get customFood_save => 'ترکیب خوندي کړئ';

  @override
  String get water_tracker_title => 'د اوبو تعقیبونکی';

  @override
  String get water_daily_target => 'د ورځني هایدریشن هدف';

  @override
  String get water_logged_today => 'نن ننوتل';

  @override
  String get water_add_glass => '+ 250 ملی لیتر شیشه';

  @override
  String get water_add_bottle => 'د 500 ملی لیتر بوتل';

  @override
  String get water_custom_amount => 'د ګمرک مقدار';

  @override
  String get water_reminder_tip =>
      'د دوامداره انرژي لپاره د ورځې په اوږدو کې په منظم ډول اوبه وڅښئ.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ملی لیتر اوبه 💧 ثبت شوی';
  }

  @override
  String get workout_title => 'د ورزش لاګ';

  @override
  String get workout_add_exercise => 'ورزش اضافه کړئ';

  @override
  String get workout_cardio => 'کارتیو';

  @override
  String get workout_strength => 'ځواک';

  @override
  String get workout_yoga => 'یوګا او انعطاف پذیري';

  @override
  String get workout_duration => 'موده';

  @override
  String get workout_intensity => 'شدت';

  @override
  String get workout_calories_burned => 'کالوري سوځول';

  @override
  String get workout_empty => 'نن ورځ هیڅ ورزش نه دی ثبت شوی';

  @override
  String get workout_save_success => 'تمرین په بریالیتوب سره خوندي شو!';

  @override
  String get workout_type => 'د تمرین ډول';

  @override
  String get workout_notes => 'یادښتونه او انعکاسونه';

  @override
  String get health_overview_title => 'روغتیا او حیاتي';

  @override
  String get health_heart_rate => 'د زړه ضربان';

  @override
  String get health_blood_oxygen => 'د وینې اکسیجن (SpO2)';

  @override
  String get health_blood_pressure => 'د وینې فشار';

  @override
  String get health_blood_glucose => 'د وینې ګلوکوز';

  @override
  String get health_body_temperature => 'د بدن د حرارت درجه';

  @override
  String get health_sleep_tracking => 'د خوب تعقیب';

  @override
  String get health_weight_tracking => 'وزن او د بدن جوړښت';

  @override
  String get health_waist_hip => 'د کمر څخه تر هپ تناسب';

  @override
  String get health_devices_hub => 'وسایل او د سمارټ واچ مرکز';

  @override
  String get health_sync_now => 'د روغتیا ډاټا همغږي کړئ';

  @override
  String health_last_synced(Object time) {
    return 'وروستی همغږي شوی: $time';
  }

  @override
  String get health_manual_entry => 'لاسي روغتیا ننوتل';

  @override
  String get health_metric_detail => 'د میټریک توضیحات';

  @override
  String get health_connected_sensors => 'وصل شوي روغتیا سینسرونه';

  @override
  String get plan_title => 'ورځنی پلان';

  @override
  String get plan_weekly_title => 'د اونۍ د روغتیا پلان';

  @override
  String get plan_calorie_target => 'د کالوري هدف';

  @override
  String get plan_water_target => 'د هایدریشن هدف';

  @override
  String get plan_step_target => 'د ګام هدف';

  @override
  String get plan_sleep_target => 'د خوب هدف';

  @override
  String get plan_meal_suggestions => 'د خواړو وړاندیزونه';

  @override
  String get plan_healthy_habits => 'صحي عادتونه او لارښوونې';

  @override
  String get plan_coach_advice => 'د بلومي AI کوچ وړاندیزونه';

  @override
  String get plan_generated_title => 'شخصي ورځنی مهالویش';

  @override
  String get profile_title => 'پروفایل';

  @override
  String get profile_edit => 'پروفایل سمول';

  @override
  String get profile_name => 'نوم';

  @override
  String get profile_age => 'عمر';

  @override
  String get profile_gender => 'جندر';

  @override
  String get profile_height => 'لوړوالی';

  @override
  String get profile_weight => 'وزن';

  @override
  String get profile_goal => 'لومړنی هدف';

  @override
  String get profile_activity_level => 'د فعالیت کچه';

  @override
  String get profile_stats => 'زما د روغتیا احصایې';

  @override
  String get profile_saved => 'پروفایل په بریالیتوب سره تازه شو';

  @override
  String get profile_bmi => 'د بدن ډله ایز شاخص (BMI)';

  @override
  String get profile_membership => 'غړیتوب';

  @override
  String get settings => 'ترتیبات';

  @override
  String get preferences_habits => 'غوره توبونه او عادتونه';

  @override
  String get appearance_theme => 'بڼه او موضوع';

  @override
  String get appearance_theme_sub =>
      'تیاره، رڼا، د سیسټم حالت او د اپلیکیشن پس منظر اختیارونه';

  @override
  String get permissions => 'اجازه او سیسټم لاسرسی';

  @override
  String get permissions_sub =>
      'روغتیا نښلول، د ګام سینسر، GPS، خبرتیاوې او کیمره';

  @override
  String get reminders_notifications => 'یادونه او خبرتیاوې';

  @override
  String get reminders_sub =>
      'د خواړو وختونه ، اوبه ، د وزن چیک ان او د خوب وخت یادونه';

  @override
  String get units_of_measurement => 'د اندازه کولو واحدونه';

  @override
  String get units_sub =>
      'میټریک (kg، cm، ml، km) یا امپیریل (lbs، ft/in، fl oz)';

  @override
  String get app_language => 'د اپلیکیشن ژبه';

  @override
  String get language_sub =>
      'انګلیسي، هندي (هندي)، هنګري او له ۱۹۵ څخه زیاتې نړیوالې ژبې';

  @override
  String get home_screen_widgets => 'د کور سکرین ویجټونه';

  @override
  String get widgets_sub =>
      'ژوندۍ Android ویجټونه: مرکز، مرحلې، اوبه، تغذیه او ماسکټ';

  @override
  String get wear_os_watch_app => 'د OS واچ ایپ واغوندئ';

  @override
  String get wear_os_sub =>
      'د سمارټ واچ ملګری ، ټایلونه ، پیچلتیاوې او ژوندي حیاتي';

  @override
  String get goals_wellness => 'موخې او د هوساینې لیدونه';

  @override
  String get nutrition_targets => 'د تغذیې هدفونه او میکرو ویش';

  @override
  String get nutrition_targets_sub =>
      'د کالوري هدف، پروټین، کاربوهایډریټ، غوړ او د اوبو هدف';

  @override
  String get weekly_recap => 'د اونیزې روغتیا بیاکتنه';

  @override
  String get weekly_recap_sub => 'د 7 ورځو کالوري اوسط، لوی تناسب او غوره ورځ';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'د ګلانو فعاله لیکې، بیجونه او لاسته راوړنې';

  @override
  String get connected_devices => 'وصل شوي وسایل او ایکوسیستم';

  @override
  String get devices_hub => 'وسایل او د سمارټ واچ مرکز';

  @override
  String get devices_hub_sub => 'روغتیا اړیکه، ګیلیکسي واچ، پکسل واچ، ګرمین';

  @override
  String get surroundings_weather => 'چاپیریال او هوا';

  @override
  String get surroundings_sub =>
      'د هوا کیفیت (AQI)، د UV شاخص او د هوا هایدریشن لارښوونې';

  @override
  String get bloomi_pro => 'د بلومي پرو ګډون';

  @override
  String get bloomi_pro_sub =>
      'د AI پلان کوچ ، د کور سکرین 5 ویجټونه او حیاتي تعقیب';

  @override
  String get about_security => 'په اړه او امنیت';

  @override
  String get about_bloomi => 'د بلومي په اړه';

  @override
  String get about_bloomi_sub => 'ځانګړتیاوې، نسخه، ځانګړتیاوې جوړ کړئ';

  @override
  String get privacy_policy => 'د محرمیت پالیسي';

  @override
  String get privacy_policy_sub =>
      'آف لائن - لومړی، په وسیله کې د معلوماتو جوړښت';

  @override
  String get terms_conditions => 'شرایط او شرایط';

  @override
  String get terms_conditions_sub => 'د خدمت شرایط او د روغتیا لارښوونې';

  @override
  String get delete_account => 'حساب او ډاټا حذف کړئ';

  @override
  String get delete_account_sub =>
      'د ځایی SQLite ډیټا او کلاوډ بیک اپ په نه بدلیدونکي ډول پاک کړئ';

  @override
  String get healthy_habits => 'نرم، تلپاتې روغتیایی عادتونه جوړ کړئ';

  @override
  String get all_logs => 'زما تعقیب شوي ډاټا او لاګز';

  @override
  String get search_language => 'د ژبې یا اصلي سکریپټ لخوا لټون وکړئ ...';

  @override
  String get languages_available => 'ژبې شتون لري';

  @override
  String get no_matching_languages => 'هیڅ ورته ژبه ونه موندل شوه';

  @override
  String get try_searching =>
      'د اصلي سکریپټ یا انګلیسي املا لخوا لټون کولو هڅه وکړئ';

  @override
  String get partially_translated => 'په جزوی توګه ژباړل شوی';

  @override
  String get complete_translation => 'بشپړ';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ژبه $name ( $nativeName ) ته ټاکل شوې';
  }

  @override
  String get surroundings_title => 'چاپیریال او چاپیریال';

  @override
  String get surroundings_aqi => 'د هوا کیفیت شاخص';

  @override
  String get surroundings_uv => 'د UV شاخص';

  @override
  String get surroundings_temp => 'د حرارت درجه';

  @override
  String get surroundings_humidity => 'رطوبت';

  @override
  String get surroundings_hydration_advice =>
      'په اوسني هوا شرایطو کې ښه هایډریټ پاتې شئ.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'د خوړو لټون';

  @override
  String get food_quick_barcode => 'بارکوډ سکین کړئ 👑';

  @override
  String get food_quick_water => 'اوبه اضافه کړئ';

  @override
  String get food_quick_custom => 'دودیز خواړه';

  @override
  String get surroundings_good => 'ښه';

  @override
  String get surroundings_moderate => 'اعتدال';

  @override
  String get surroundings_unhealthy => 'بې خونده';

  @override
  String get notifications_title => 'خبرتیاوې او خبرتیاوې';

  @override
  String get notifications_empty => 'هیڅ نوي خبرتیاوې نشته';

  @override
  String get notifications_mark_read => 'ټول د لوستلو په توګه په نښه کړئ';

  @override
  String get notifications_clear => 'ټول پاک کړئ';

  @override
  String get reminders => 'د یادونې ترتیبات';

  @override
  String get notifications => 'خبرتیاوې';

  @override
  String get reminders_breakfast_title => 'د سهار د ډوډۍ یادونه 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'سهار مو پخیر! په $time کې د خوړونکي ناري لپاره وخت.';
  }

  @override
  String get reminders_lunch_title => 'د غرمې ډوډۍ یادونه 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'وقفه وکړئ او په $time کې د متوازن، ذهني ډوډۍ څخه خوند واخلئ.';
  }

  @override
  String get reminders_dinner_title => 'د ډوډۍ یادونه 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'په $time کې د رڼا، اطمینان لرونکي ډوډۍ لپاره وخت.';
  }

  @override
  String get reminders_water_title => 'د هایدریشن نوج 💧';

  @override
  String reminders_water_body(Object time) {
    return 'د تازه ګلاس اوبو څښلو وخت! ( $time )';
  }

  @override
  String get reminders_weight_title => 'د اونۍ وزن ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'په بلومي ($time) کې خپل د اونۍ د بدن میټریک تعقیب کړئ.';
  }

  @override
  String get reminders_sleep_title => 'د خوب وخت باد 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'آرام کړئ او د آرام خوب لپاره چمتو کړئ ($time).';
  }

  @override
  String get onboard_welcome => 'بلومي ته ښه راغلاست';

  @override
  String get onboard_sub =>
      'ستاسو دوستانه، آفلاین - لومړی روغتیا او تغذیه ملګری.';

  @override
  String get onboard_get_started => 'پیل کړئ';

  @override
  String get onboard_sign_in => 'ننوتل';

  @override
  String get onboard_skip => 'پریږده';

  @override
  String get onboard_choose_goal => 'ستاسو د روغتیا لومړنی هدف څه دی؟';

  @override
  String get onboard_goal_weight_loss => 'نرم وزن کمول';

  @override
  String get onboard_goal_muscle => 'د عضلاتو لاسته راوړنه او ځواک';

  @override
  String get onboard_goal_energy => 'ورځنۍ انرژي او ژوند';

  @override
  String get onboard_goal_habits => 'صحي ذهني خواړه';

  @override
  String get onboard_about_you => 'موږ ته د خپل ځان په اړه ووایه';

  @override
  String get onboard_lifestyle => 'ستاسو ورځنی کار';

  @override
  String get onboard_permissions_title => 'اجازه او سیسټم لاسرسی';

  @override
  String get onboard_permissions_sub =>
      'د همغږي مرحلې، ورزش، او یادونې ته لاسرسی ورکړئ.';

  @override
  String get onboard_plan_ready_title => 'ستاسو دودیز پلان چمتو دی!';

  @override
  String get onboard_plan_ready_sub =>
      'موږ یوازې ستاسو لپاره نرم ، شخصي تغذیه او هوساینې سړک نقشه جوړه کړې.';

  @override
  String get onboard_enter_bloomi => 'بلومي ته ننوځئ';

  @override
  String get insights_weekly_report => 'د اونیزې روغتیا بیاکتنه';

  @override
  String insights_best_day(Object day) {
    return 'د یووالي غوره ورځ: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'په $date کې خلاص شو';
  }

  @override
  String get insights_keep_going => 'په زړه پورې پرمختګ ته دوام ورکړئ!';

  @override
  String get widgets_title => 'د کور سکرین ویجټونه';

  @override
  String widgets_active_count(Object count) {
    return 'فعال ویجټونه: $count';
  }

  @override
  String get widgets_hub_title => 'د بلومي روغتیا مرکز';

  @override
  String get widgets_steps_title => 'ګامونه او فعاله حلقه';

  @override
  String get widgets_water_title => 'د هایدریشن چټک ننوتل';

  @override
  String get widgets_mascot_title => 'بلومي ماسکوټ ملګری';

  @override
  String get wear_os_title => 'د OS سمارټ واچ واغوندئ';

  @override
  String get wear_os_connected => 'د واچ سره وصل شوی';

  @override
  String get wear_os_sync => 'د څار ډاټا همغږي کړئ';

  @override
  String get theme_title => 'بڼه او موضوع';

  @override
  String get theme_mode => 'د موضوع حالت';

  @override
  String get theme_light => 'رڼا';

  @override
  String get theme_dark => 'تیاره';

  @override
  String get theme_system => 'سیسټم ډیفالټ';

  @override
  String get theme_background_palette => 'د شاليد پالټ';

  @override
  String get units_title => 'د اندازه کولو واحدونه';

  @override
  String get units_metric => 'میټریک (کیلوګرام، سانتي، ملی لیتر)';

  @override
  String get units_imperial => 'امپیریل (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'د ډشبورډ پورته کولو توان نلري';

  @override
  String get home_health_permission_req => 'د روغتیا ارتباط اجازې ته اړتیا ده';

  @override
  String get home_health_permission_desc =>
      'بلومي په ریښتیني وخت کې د ریښتیني ګامونو ایستلو ، د زړه ضربان او د ګرځنده کور ویجټونو ترکیب کولو لپاره د روغتیا ارتباط اجازې ته اړتیا لري.';

  @override
  String get home_allow_health => 'د روغتیا اړیکې ته اجازه ورکړئ';

  @override
  String get home_ready_mindful_day => 'د پام وړ ورځې لپاره چمتو یاست؟ ✨';

  @override
  String get home_quick_add => 'چټک اضافه کول';

  @override
  String get home_live_gps => 'ژوندی GPS';

  @override
  String get home_calories_remaining_label => 'پاتې کالوري';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'خوړل شوي: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'د اوبو تعقیبونکی 💧 لپاره ټپ کړئ';

  @override
  String get home_water_goal_reached => 'ورځنی هدف 🎉 ته ورسید';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'ورځنۍ موخې ته $remaining ml';
  }

  @override
  String get home_details => 'جزیات';

  @override
  String get home_upgrade_plan_desc =>
      'د شخصي ورځني اهدافو او AI پلان خلاصولو لپاره لوړ کړئ';

  @override
  String get home_unlock => 'خلاص کړئ 👑';

  @override
  String get home_quick_log_hint => 'ژر تر ژره د روغتیا ننوتل ثبت کړئ';

  @override
  String get food_serving_size => 'د خدمت کولو اندازه';

  @override
  String get food_serving_grams => 'خدمت کول (ج)';

  @override
  String get food_number_servings => 'د سرونگونو شمیر';

  @override
  String get food_calories_per_serving => 'کالوري په هر خدمت کې';

  @override
  String get food_recipe_ingredients => 'اجزا';

  @override
  String get food_recipe_add_ingredient => 'اجزا اضافه کړئ';

  @override
  String get food_recipe_directions => 'لارښوونې او یادښتونه';

  @override
  String get food_recipe_total => 'د بشپړ ترکیب تغذیه';

  @override
  String get food_recipe_per_serving => 'د فی خدمت تغذیه';

  @override
  String get food_recipe_saved_toast =>
      'دودیز خواړه په بریالیتوب سره خوندي شول!';

  @override
  String get food_barcode_found => 'محصول وموندل شو!';

  @override
  String get food_barcode_not_found_desc =>
      'موږ نشو کولی دا بارکوډ په خلاص ډیټابیس کې پیدا کړو. تاسو کولی شئ دا د دودیز خواړو په توګه اضافه کړئ.';

  @override
  String get food_add_custom_btn => 'دودیز خواړه اضافه کړئ';

  @override
  String get food_scan_again => 'بیا سکین کړئ';

  @override
  String get food_review_items => 'کشف شوي خواړه بیاکتنه';

  @override
  String get food_review_hint =>
      'مقدارونه تنظیم کړئ یا کوم ناپیژندل شوي توکي لرې کړئ';

  @override
  String get food_log_selected => 'غوره شوي خواړه ولیکئ';

  @override
  String get food_favourites_title => 'د خوښې خواړه';

  @override
  String get food_recent_title => 'وروستي خواړه';

  @override
  String get food_no_favourites =>
      'تر اوسه د خوښې خواړه نه دي. دلته د خوندي کولو لپاره هر خواړه باندې زړه ټایپ کړئ.';

  @override
  String get food_no_recents =>
      'په دې وروستیو کې ننوتل شوي خواړه ونه موندل شول.';

  @override
  String get food_nutrition_details_title => 'د ورځني تغذیې توضیحات';

  @override
  String get food_macro_protein_label => 'د پروټین ماتول';

  @override
  String get food_macro_carbs_label => 'د کاربوهایډریټ ماتول';

  @override
  String get food_macro_fat_label => 'د غوړ ماتول';

  @override
  String get food_macro_fiber_label => 'د فایبر ماتول';

  @override
  String get food_daily_target_comparison => 'د هدف پرتله کول';

  @override
  String food_target_label(Object target) {
    return 'هدف: $target';
  }

  @override
  String get food_edit_entry => 'د ډایری داخله ایډیټ کړئ';

  @override
  String get food_delete_entry => 'د ننوتلو ړنګول';

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
    return '$current د $target ml';
  }

  @override
  String get water_intake_history => 'د نن ورځې د اوبو لوګو';

  @override
  String get water_no_logs_today =>
      'تر نن ورځې پورې اوبه نه دي راوتلې. هایدریټ او د چټک اضافه کولو تڼۍ ټایپ کړئ!';

  @override
  String get water_adjust_goal => 'ورځنی هدف تنظیم کړئ';

  @override
  String get health_connect_banner => 'د روغتیا سره نښلول';

  @override
  String get health_vitals_summary => 'ورځني روغتیایی حیاتي';

  @override
  String get health_latest_heart_rate => 'د زړه وروستی نرخ';

  @override
  String get health_latest_bp => 'د وینې فشار';

  @override
  String get health_latest_spo2 => 'د وینې اکسیجن';

  @override
  String get health_latest_glucose => 'د وینې ګلوکوز';

  @override
  String get health_latest_weight => 'وزن';

  @override
  String get health_latest_sleep => 'د خوب موده';

  @override
  String get health_add_manual => 'لاسي اندازه اضافه کړئ';

  @override
  String get health_history_trends => 'تاریخي رجحانات';

  @override
  String get health_sync_success => 'د روغتیا ډاټا په بریالیتوب سره همغږي شوه!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ساعتونه $mins دقیقې';
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
    return '$pct٪';
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
  String get health_devices_title => 'وصل شوي وسایل او د اغوستو وړ توکي';

  @override
  String get health_devices_desc =>
      'جوړه شوي سمارټ واچونه ، فټنس ټریکرونه او روغتیا سینسرونه اداره کړئ.';

  @override
  String get health_workout_editor_title => 'د ورزش سمون';

  @override
  String get health_workout_name_label => 'د ورزش نوم';

  @override
  String get health_workout_duration_label => 'موده (دقیقې)';

  @override
  String get health_workout_calories_label => 'اټکل شوي کالوري (kcal)';

  @override
  String get health_workout_date_label => 'نېټه او وخت';

  @override
  String get plan_daily_wellness_roadmap => 'ستاسو شخصي سړک نقشه';

  @override
  String get plan_morning_routine => 'د سهار معمول';

  @override
  String get plan_afternoon_routine => 'د ماسپښین روغتیا';

  @override
  String get plan_evening_routine => 'د ماښام باد - ښکته';

  @override
  String get plan_coach_badge => 'د بلومي AI کوچ';

  @override
  String get plan_weekly_overview => '7-ورځ د روغتیا تمرکز';

  @override
  String get plan_targets_title => 'د هوساینې موخې او اهداف';

  @override
  String get plan_calorie_budget_label => 'د ورځني کالوري بودیجه';

  @override
  String get plan_water_budget_label => 'د ورځني اوبو هدف';

  @override
  String get plan_step_budget_label => 'د ورځني ګام هدف';

  @override
  String get plan_macro_split_label => 'د ماکرونټرینټ تناسب';

  @override
  String get profile_personal_details => 'شخصي توضیحات';

  @override
  String get profile_body_stats => 'د بدن اندازه کول';

  @override
  String get profile_app_preferences => 'غوره توبونه او د اپلیکیشن ترتیبات';

  @override
  String get profile_edit_name_hint => 'ستاسو نوم';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'لوړوالی ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'وزن ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'عمر';

  @override
  String get profile_gender_male => 'نارینه';

  @override
  String get profile_gender_female => 'ښځینه';

  @override
  String get profile_gender_other => 'نور / غوره نه بولم';

  @override
  String get profile_activity_sedentary => 'بې ځایه (لږ تر لږه تمرین نه کول)';

  @override
  String get profile_activity_light => 'لږ فعال (1-3 ورځې / اونۍ)';

  @override
  String get profile_activity_moderate =>
      'په منځنۍ توګه فعال (په اونۍ کې 3-5 ورځې)';

  @override
  String get profile_activity_very => 'ډیر فعال (په اونۍ کې 6-7 ورځې)';

  @override
  String get settings_wear_os_header => 'د OS ملګری ایپ واغوندئ';

  @override
  String get settings_wear_os_desc =>
      'په خپل Wear OS واچ کې د بلومي ټایل او پیچلتیا نصب کړئ ترڅو کالوری، اوبو او ګامونو ته نظر ورکړئ.';

  @override
  String get settings_widgets_header => 'متقابل Android ویجټونه';

  @override
  String get settings_widgets_desc =>
      'د فوري تازه معلوماتو لپاره ستاسو د وسیلې کور سکرین کې ریښتیني وخت ویجټونه پین کړئ.';

  @override
  String get settings_about_header => 'د بلومي په اړه';

  @override
  String get settings_about_version => 'نسخه 1.0.0';

  @override
  String get settings_about_build => '100 جوړ کړئ';

  @override
  String get settings_about_credits =>
      'د هوښیار، سالم ژوند لپاره د پاملرنې سره جوړ شوی.';

  @override
  String get settings_terms_header => 'شرایط او شرایط';

  @override
  String get settings_privacy_header => 'د محرمیت پالیسي';

  @override
  String get settings_delete_header => 'حساب او ډاټا حذف کړئ';

  @override
  String get settings_delete_warning =>
      'دا کړنه نه شي ختمولی. ستاسو ټول خواړه، ورزش، حیاتي او پروفایل به د تل لپاره حذف شي.';

  @override
  String get settings_delete_confirm_btn => 'د تل لپاره ړنګول';

  @override
  String get onboard_welcome_headline => 'بلومي ته ښه راغلاست ✨';

  @override
  String get onboard_welcome_tagline =>
      'ستاسو د ژوند په شاوخوا کې ډیزاین شوی نرم ، هوښیار روغتیا تعقیب.';

  @override
  String get onboard_step_about => 'ستاسو په اړه';

  @override
  String get onboard_step_goals => 'ستاسو اهداف';

  @override
  String get onboard_step_lifestyle => 'ورځني عادتونه';

  @override
  String get onboard_step_permissions => 'اجازه';

  @override
  String get onboard_step_plan => 'چمتو!';

  @override
  String get onboard_health_connect_perm => 'د روغتیا پیوستون لاسرسی';

  @override
  String get onboard_step_sensors_perm => 'د ګام ضد سینسر';

  @override
  String get onboard_notif_perm => 'د پام وړ یادونه او خبرتیاوې';

  @override
  String get onboard_camera_perm => 'کیمره (بارکوډ او د خوړو سکینر)';

  @override
  String get onboard_grant_permissions => 'اجازه ورکړئ';

  @override
  String get onboard_continue_dashboard => 'ډشبورډ خلاص کړئ';

  @override
  String get notif_channel_hydration_name => 'د هایدریشن نوډز';

  @override
  String get notif_channel_hydration_desc =>
      'د ورځې په اوږدو کې د نرمو اوبو یادونه';

  @override
  String get notif_channel_nutrition_name => 'د خوړو او تغذیې یادونه';

  @override
  String get notif_channel_nutrition_desc =>
      'د سهارنۍ، غرمې ډوډۍ، او د شپې ډوډۍ د یادونې خبرتیاوې';

  @override
  String get notif_channel_steps_name => 'د مرحلې مرحلې';

  @override
  String get notif_channel_steps_desc =>
      'جشنونه کله چې د ورځني ګام اهدافو ته ورسیږي';

  @override
  String get notif_channel_vitals_name => 'روغتیا او حیاتي معاینات';

  @override
  String get notif_channel_vitals_desc =>
      'وزن او د خوب وخت د باد - ښکته یادونه';

  @override
  String get notif_action_log_water => '💧 ننوتل + 250ml';

  @override
  String get notif_action_snooze => '15m سنوز کړئ';

  @override
  String get notif_action_log_meal => '🥗 د ننوتلو خواړه';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
