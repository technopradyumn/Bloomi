// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sindhi (`sd`).
class AppLocalizationsSd extends AppLocalizations {
  AppLocalizationsSd([String locale = 'sd']) : super(locale);

  @override
  String get app_name => 'بلومي';

  @override
  String get nav_home => 'گهر';

  @override
  String get nav_today => 'اڄ';

  @override
  String get nav_plan => 'رٿ';

  @override
  String get nav_food => 'کاڌو';

  @override
  String get nav_food_diary => 'کاڌي جي ڊائري';

  @override
  String get nav_workout => 'ورزش لاگ';

  @override
  String get nav_health => 'صحت';

  @override
  String get nav_profile => 'پروفائل';

  @override
  String get save => 'بچايو';

  @override
  String get cancel => 'منسوخ ڪريو';

  @override
  String get delete => 'حذف ڪريو';

  @override
  String get edit => 'ترميم ڪريو';

  @override
  String get done => 'ٿي ويو';

  @override
  String get close => 'بند';

  @override
  String get back => 'پوئتي';

  @override
  String get next => 'اڳيان';

  @override
  String get continue_btn => 'جاري رکو';

  @override
  String get confirm => 'تصديق ڪريو';

  @override
  String get search => 'ڳولا';

  @override
  String get filter => 'فلٽر';

  @override
  String get all => 'سڀ';

  @override
  String get active => 'چالو';

  @override
  String get today => 'اڄ';

  @override
  String get yesterday => 'ڪالهه';

  @override
  String get tomorrow => 'سڀاڻي';

  @override
  String get add => 'شامل ڪريو';

  @override
  String get remove => 'هٽايو';

  @override
  String get refresh => 'تازو ڪريو';

  @override
  String get retry => 'ٻيهر ڪوشش ڪريو';

  @override
  String get error => 'نقص';

  @override
  String get success => 'ڪاميابي';

  @override
  String get loading => 'لوڊ ٿي رهيو آهي...';

  @override
  String get no_data => 'ڪابه ڊيٽا موجود ناهي';

  @override
  String get offline => 'آف لائن موڊ';

  @override
  String get offline_sub => 'تبديليون هڪ ڀيرو ٻيهر ڳنڍڻ سان هم وقت ٿينديون';

  @override
  String get undo => 'اڻڄاتل';

  @override
  String get portion => 'حصو';

  @override
  String get quantity => 'مقدار';

  @override
  String get unit => 'يونٽ';

  @override
  String get clear => 'پڌرو';

  @override
  String get select => 'چونڊيو';

  @override
  String get apply => 'لاڳو ڪريو';

  @override
  String get reset => 'ري سيٽ ڪريو';

  @override
  String get ok => 'ٺيڪ';

  @override
  String get yes => 'ها';

  @override
  String get no => 'نه';

  @override
  String get optional => 'اختياري';

  @override
  String get calories => 'ڪلوريون';

  @override
  String get protein => 'پروٽين';

  @override
  String get carbs => 'ڪاربوهائيڊريٽ';

  @override
  String get fat => 'ٿلهو';

  @override
  String get fiber => 'فائبر';

  @override
  String get water => 'پاڻي';

  @override
  String get steps => 'قدم';

  @override
  String get kcal => 'ڪيڪال';

  @override
  String get grams => 'جي';

  @override
  String get milliliters => 'مليل';

  @override
  String get kilograms => 'ڪلو';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'سي ايم';

  @override
  String get inches => '۾';

  @override
  String get bpm => 'بي پي ايم';

  @override
  String get hours => 'ڪلاڪ';

  @override
  String get minutes => 'منٽ';

  @override
  String get serving => 'خدمت ڪرڻ';

  @override
  String get servings => 'سرونگ';

  @override
  String get serving_size => 'سرونگ سائز';

  @override
  String get per_100g => 'في 100 گرام';

  @override
  String get india => 'انڊيا';

  @override
  String get asia => 'ايشيا';

  @override
  String get europe => 'يورپ';

  @override
  String get middle_east => 'وچ اوڀر';

  @override
  String get africa => 'آفريڪا';

  @override
  String get americas => 'آمريڪا';

  @override
  String get home_title => 'گهر';

  @override
  String get home_greeting_morning => 'صبح جو سلام';

  @override
  String get home_greeting_afternoon => 'منجھند جو سلام';

  @override
  String get home_greeting_evening => 'شام جو سلام';

  @override
  String get home_streak_title => 'گلن جو سلسلو';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ڏينهن جو سلسلو',
      one: '1 ڏينهن جو سلسلو',
      zero: '0 ڏينهن جو سلسلو',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'سڙيل';

  @override
  String get home_calories_budget => 'ڪيلوري بجيٽ';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal باقي';
  }

  @override
  String get home_water_title => 'روزانه هائيڊريشن';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'قدم کنيا';

  @override
  String get home_quick_actions => 'تڪڙا ڪارناما';

  @override
  String get home_log_meal => 'لاگ ان ماني';

  @override
  String get home_log_water => 'لوڻ جو پاڻي';

  @override
  String get home_log_workout => 'لاگ ورزش';

  @override
  String get home_log_weight => 'لاگ وزن';

  @override
  String get home_insights_title => 'اڄ جي بصيرت';

  @override
  String get home_quote => 'ننڍڙا صحتمند چونڊون ڦلندڙ تبديليون پيدا ڪن ٿيون.';

  @override
  String get home_ai_coach_tip => 'بلومي AI ڪوچ';

  @override
  String get home_surroundings => 'ماحول ۽ هوا';

  @override
  String get home_notifications => 'نوٽيفڪيشن';

  @override
  String get home_daily_score => 'روزاني صحت جو اسڪور';

  @override
  String get home_view_all => 'سڀ ڏسو';

  @override
  String get food_diary_title => 'کاڌي جي ڊائري';

  @override
  String get food_breakfast => 'ناشتو';

  @override
  String get food_lunch => 'لنچ';

  @override
  String get food_dinner => 'رات جي ماني';

  @override
  String get food_snacks => 'ناشتو';

  @override
  String get food_add_food => 'کاڌو شامل ڪريو';

  @override
  String get food_edit_food => 'کاڌو تبديل ڪريو';

  @override
  String get food_add_breakfast => 'ناشتو شامل ڪريو';

  @override
  String get food_add_lunch => 'لنچ شامل ڪريو';

  @override
  String get food_add_dinner => 'رات جي ماني شامل ڪريو';

  @override
  String get food_add_snack => 'ناشتو شامل ڪريو';

  @override
  String get food_total_calories => 'ڪل ڪلوريون';

  @override
  String get food_empty_meal => 'هن ماني لاءِ اڃان تائين ڪا به کاڌ خوراڪ ناهي';

  @override
  String get food_empty_diary => 'هن ڏينهن لاءِ ڪا به کاڌ خوراڪ ناهي';

  @override
  String get food_log_first_meal =>
      'پنهنجي پهرين لذيذ طعام کي لاگ ان ڪرڻ لاءِ + تي ٽيپ ڪريو';

  @override
  String get food_quick_add => 'جلدي شامل ڪريو';

  @override
  String get food_search_hint => 'ڀاڄيون، ميوا، دال، روٽي ڳوليو...';

  @override
  String get food_custom_recipe => 'حسب ضرورت کاڌو ۽ ترڪيب';

  @override
  String get food_scan_barcode => 'بارڪوڊ اسڪين ڪريو';

  @override
  String get food_camera_scan => 'AI فوڊ اسڪينر';

  @override
  String get food_recent => 'تازو کاڌو';

  @override
  String get food_favourites => 'پسنديده';

  @override
  String get food_macro_summary => 'Macronutrient جي ڀڃڪڙي';

  @override
  String get food_delete_meal_confirm =>
      'ڇا توھان واقعي ھن شيءِ کي ختم ڪرڻ چاھيو ٿا؟';

  @override
  String get food_item_deleted => 'کاڌي جي شين کي هٽايو ويو';

  @override
  String get food_remaining => 'باقي';

  @override
  String get food_consumed => 'استعمال ٿيل';

  @override
  String food_of_target(Object target) {
    return 'جو $target ڪيڪال';
  }

  @override
  String get foodSearch_title => 'کاڌو ڳوليو';

  @override
  String get foodSearch_scan_barcode => 'بارڪوڊ اسڪين ڪريو';

  @override
  String get foodSearch_take_photo => 'اسنيپ فوڊ فوٽو';

  @override
  String get foodSearch_custom_food => 'ڪسٽم کاڌو ٺاهيو';

  @override
  String get foodSearch_recent_searches => 'تازو ڳولها';

  @override
  String get foodSearch_popular => 'مشهور طعام';

  @override
  String get foodSearch_no_results => 'توهان جي ڳولا سان ملندڙ کاڌو نه آهي';

  @override
  String get barcode_title => 'بارڪوڊ اسڪينر';

  @override
  String get barcode_align => 'ڪئميرا فريم اندر بارڪوڊ کي ترتيب ڏيو';

  @override
  String get barcode_not_found => 'پراڊڪٽ ڊيٽابيس ۾ نه ملي';

  @override
  String get barcode_premium_feature =>
      'بارڪوڊ اسڪيننگ موجود آهي بلومي پرو سان';

  @override
  String get camera_title => 'AI فوڊ اسڪينر';

  @override
  String get camera_tap_hint => 'پنهنجي کاڌ خوراڪ جو هڪ صاف فوٽو وٺو';

  @override
  String get camera_analysing => 'کاڌي جي پليٽ جو تجزيو...';

  @override
  String get camera_detected => 'دريافت ڪيل شيون';

  @override
  String get camera_flash => 'ٽگل فليش';

  @override
  String get camera_retake => 'فوٽو ٻيهر ڪڍو';

  @override
  String get camera_confirm_food => 'شين جي تصديق ڪريو';

  @override
  String get customFood_title => 'حسب ضرورت کاڌو ۽ ترڪيب';

  @override
  String get customFood_name_hint => 'ڀاڄيءَ يا جزو جو نالو';

  @override
  String get customFood_calories_hint => 'ڪيليريا (kcal)';

  @override
  String get customFood_protein_hint => 'پروٽين (جي)';

  @override
  String get customFood_carbs_hint => 'ڪاربوهائيڊريٽ (جي)';

  @override
  String get customFood_fat_hint => 'ٿلهو (جي)';

  @override
  String get customFood_save => 'محفوظ ڪريو نسخو';

  @override
  String get water_tracker_title => 'واٽر ٽريڪٽر';

  @override
  String get water_daily_target => 'روزاني هائيڊريشن گول';

  @override
  String get water_logged_today => 'اڄ لاگ ان ٿيو';

  @override
  String get water_add_glass => '+ 250 ml گلاس';

  @override
  String get water_add_bottle => '+ 500 ml بوتل';

  @override
  String get water_custom_amount => 'حسب ضرورت رقم';

  @override
  String get water_reminder_tip =>
      'مسلسل توانائي حاصل ڪرڻ لاء سڄو ڏينهن باقاعده پاڻي پيئو.';

  @override
  String water_logged_toast(Object amount) {
    return 'لاگ ان ٿيل $amount ml پاڻي 💧';
  }

  @override
  String get workout_title => 'ورزش لاگ';

  @override
  String get workout_add_exercise => 'ورزش شامل ڪريو';

  @override
  String get workout_cardio => 'ڪارڊيو';

  @override
  String get workout_strength => 'طاقت';

  @override
  String get workout_yoga => 'يوگا ۽ لچڪدار';

  @override
  String get workout_duration => 'عرصو';

  @override
  String get workout_intensity => 'شدت';

  @override
  String get workout_calories_burned => 'ڪيلوريون سڙي';

  @override
  String get workout_empty => 'اڄ ڪو به ڪم آئوٽ لاگ نه ٿيو';

  @override
  String get workout_save_success => 'ورزش ڪاميابيءَ سان محفوظ ٿي وئي!';

  @override
  String get workout_type => 'ورزش جو قسم';

  @override
  String get workout_notes => 'نوٽس ۽ انڪشاف';

  @override
  String get health_overview_title => 'صحت ۽ حياتيات';

  @override
  String get health_heart_rate => 'دل جي شرح';

  @override
  String get health_blood_oxygen => 'رت جي آڪسيجن (SpO2)';

  @override
  String get health_blood_pressure => 'بلڊ پريشر';

  @override
  String get health_blood_glucose => 'رت جو گلوڪوز';

  @override
  String get health_body_temperature => 'جسماني درجه حرارت';

  @override
  String get health_sleep_tracking => 'سمهڻ جي ٽريڪنگ';

  @override
  String get health_weight_tracking => 'وزن ۽ جسماني ساخت';

  @override
  String get health_waist_hip => 'کمر کان هپ جو تناسب';

  @override
  String get health_devices_hub => 'ڊوائيسز ۽ اسمارٽ واچ حب';

  @override
  String get health_sync_now => 'هم وقت صحت ڊيٽا';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'آخري هم وقت: $time';
  }

  @override
  String get health_manual_entry => 'دستي صحت جي داخلا';

  @override
  String get health_metric_detail => 'ميٽرڪ تفصيل';

  @override
  String get health_connected_sensors => 'ڳنڍيل صحت سينسر';

  @override
  String get plan_title => 'روزاني منصوبو';

  @override
  String get plan_weekly_title => 'هفتيوار صحت جو منصوبو';

  @override
  String get plan_calorie_target => 'ڪيلوري جو مقصد';

  @override
  String get plan_water_target => 'هائيڊريشن جو مقصد';

  @override
  String get plan_step_target => 'قدم ھدف';

  @override
  String get plan_sleep_target => 'سمهڻ جو مقصد';

  @override
  String get plan_meal_suggestions => 'کاڌي جون تجويزون';

  @override
  String get plan_healthy_habits => 'صحتمند عادتون ۽ صلاحون';

  @override
  String get plan_coach_advice => 'بلومي AI ڪوچ سفارشون';

  @override
  String get plan_generated_title => 'ذاتي ٿيل روزاني شيڊول';

  @override
  String get profile_title => 'پروفائل';

  @override
  String get profile_edit => 'پروفائل ايڊٽ ڪريو';

  @override
  String get profile_name => 'نالو';

  @override
  String get profile_age => 'عمر';

  @override
  String get profile_gender => 'جنس';

  @override
  String get profile_height => 'اوچائي';

  @override
  String get profile_weight => 'وزن';

  @override
  String get profile_goal => 'پرائمري گول';

  @override
  String get profile_activity_level => 'سرگرمي جي سطح';

  @override
  String get profile_stats => 'منهنجي صحت جا انگ اکر';

  @override
  String get profile_saved => 'پروفائل کي ڪاميابي سان اپڊيٽ ڪيو ويو';

  @override
  String get profile_bmi => 'باڊي ماس انڊيڪس (BMI)';

  @override
  String get profile_membership => 'رڪنيت';

  @override
  String get settings => 'سيٽنگون';

  @override
  String get preferences_habits => 'ترجيحات ۽ عادتون';

  @override
  String get appearance_theme => 'ظاهر ۽ موضوع';

  @override
  String get appearance_theme_sub =>
      'اونداهي، هلڪو، سسٽم موڊ ۽ ايپ پس منظر جا اختيار';

  @override
  String get permissions => 'اجازتون ۽ سسٽم رسائي';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'ياد ڏياريندڙ ۽ نوٽيفڪيشن';

  @override
  String get reminders_sub =>
      'کاڌي جا وقت، پاڻي، وزن جي چڪاس ۽ سمهڻ وقت ياد ڏياريندڙ';

  @override
  String get units_of_measurement => 'ماپ جا يونٽ';

  @override
  String get units_sub =>
      'ميٽرڪ (kg، cm، ml، km) يا امپيريل (lbs، ft/in، fl oz)';

  @override
  String get app_language => 'ايپ جي ٻولي';

  @override
  String get language_sub => 'انگريزي، هندي (هندي)، هنگلش ۽ 195+ عالمي ٻوليون';

  @override
  String get home_screen_widgets => 'گھر جي اسڪرين ويجيٽس';

  @override
  String get widgets_sub =>
      'لائيو Android ويجيٽس: حب، قدم، پاڻي، غذائيت ۽ ماسڪوٽ';

  @override
  String get wear_os_watch_app => 'Wear OS واچ ايپ';

  @override
  String get wear_os_sub => 'اسمارٽ واچ ساٿي، ٽائلس، پيچيدگيون ۽ لائيو حياتيات';

  @override
  String get goals_wellness => 'مقصد ۽ صحت جي بصيرت';

  @override
  String get nutrition_targets => 'غذائي ھدف ۽ ميڪرو تقسيم';

  @override
  String get nutrition_targets_sub =>
      'ڪيلوري جو مقصد، پروٽين، ڪاربوهائيڊريٽ، چربی ۽ پاڻي جو مقصد';

  @override
  String get weekly_recap => 'هفتيوار صحت جو جائزو';

  @override
  String get weekly_recap_sub =>
      '7-ڏينهن ڪلوري اوسط، ميڪرو تناسب ۽ بهترين ڏينهن';

  @override
  String get streaks_milestones => 'اسٽريڪس ۽ سنگ ميل';

  @override
  String get streaks_sub => 'فعال بلاسم اسٽريڪس، بيج ۽ ڪاميابيون';

  @override
  String get connected_devices => 'ڳنڍيل ڊوائيسز ۽ ماحولياتي نظام';

  @override
  String get devices_hub => 'ڊوائيسز ۽ اسمارٽ واچ حب';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'ماحول ۽ موسم';

  @override
  String get surroundings_sub =>
      'هوا جي معيار (AQI)، UV انڊيڪس ۽ موسم جي هائيڊريشن جا طريقا';

  @override
  String get bloomi_pro => 'بلومي پرو سبسڪرپشن';

  @override
  String get bloomi_pro_sub => 'AI پلان ڪوچ، 5 گھر اسڪرين ويجٽ ۽ وائيٽل ٽريڪنگ';

  @override
  String get about_security => 'بابت ۽ سيڪيورٽي';

  @override
  String get about_bloomi => 'بلومي بابت';

  @override
  String get about_bloomi_sub => 'ٺاھ جوڙ specifications, ورجن, انتساب';

  @override
  String get privacy_policy => 'رازداري پاليسي';

  @override
  String get privacy_policy_sub => 'آف لائن-پهرين، آن ڊيوائس ڊيٽا آرڪيٽيڪچر';

  @override
  String get terms_conditions => 'شرط ۽ ضابطا';

  @override
  String get terms_conditions_sub => 'خدمت جون شرطون ۽ صحت جون هدايتون';

  @override
  String get delete_account => 'اڪائونٽ ۽ ڊيٽا کي ختم ڪريو';

  @override
  String get delete_account_sub =>
      'مقامي SQLite ڊيٽا ۽ ڪلائوڊ بيڪ اپ کي ناقابل واپسي طور تي ختم ڪريو';

  @override
  String get healthy_habits => 'نرم، پائيدار صحتمند عادتون ٺاهيو';

  @override
  String get all_logs => 'منهنجي ٽريڪ ڪيل ڊيٽا ۽ لاگس';

  @override
  String get search_language => 'ٻولي يا ڏيهي رسم الخط ذريعي ڳولھيو...';

  @override
  String get languages_available => 'ٻوليون موجود آهن';

  @override
  String get no_matching_languages => 'ڪا به ملندڙ ٻولي نه ملي';

  @override
  String get try_searching =>
      'ڪوشش ڪريو مقامي رسم الخط يا انگريزي اسپيلنگ ذريعي';

  @override
  String get partially_translated => 'جزوي ترجمو';

  @override
  String get complete_translation => 'مڪمل';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ٻولي مقرر ڪئي وئي $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'ماحول ۽ ماحول';

  @override
  String get surroundings_aqi => 'هوا جي معيار جي انڊيڪس';

  @override
  String get surroundings_uv => 'UV انڊيڪس';

  @override
  String get surroundings_temp => 'گرمي پد';

  @override
  String get surroundings_humidity => 'نمي';

  @override
  String get surroundings_hydration_advice =>
      'موجوده موسمي حالتن ۾ چڱي طرح hydrated رهو.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'کاڌو ڳوليو';

  @override
  String get food_quick_barcode => 'اسڪين بارڪوڊ 👑';

  @override
  String get food_quick_water => 'پاڻي شامل ڪريو';

  @override
  String get food_quick_custom => 'حسب ضرورت کاڌو';

  @override
  String get surroundings_good => 'چڱو';

  @override
  String get surroundings_moderate => 'وچولي';

  @override
  String get surroundings_unhealthy => 'بيڪار';

  @override
  String get notifications_title => 'نوٽيفڪيشن ۽ الرٽ';

  @override
  String get notifications_empty => 'ڪابه نئين اطلاع نه آهي';

  @override
  String get notifications_mark_read => 'نشان لڳايو سڀني کي پڙهو';

  @override
  String get notifications_clear => 'سڀ صاف ڪريو';

  @override
  String get reminders => 'ياد ڏياريندڙ سيٽنگون';

  @override
  String get notifications => 'نوٽيفڪيشن';

  @override
  String get reminders_breakfast_title => 'ناشتي جي ياد ڏياريندڙ 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'صبح بخير! $time تي غذائي ناشتي جو وقت.';
  }

  @override
  String get reminders_lunch_title => 'لنچ جي ياد ڏياريندڙ 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'روڪيو ۽ $time تي هڪ متوازن، ذهني لنچ مان لطف اندوز ٿيو.';
  }

  @override
  String get reminders_dinner_title => 'رات جي ماني ياد ڏياريندڙ 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time تي روشني، اطمينان واري رات جي ماني لاءِ وقت.';
  }

  @override
  String get reminders_water_title => 'هائيڊريشن نڊج 💧';

  @override
  String reminders_water_body(Object time) {
    return 'پاڻي جو تازو گلاس پيئڻ جو وقت! ( $time )';
  }

  @override
  String get reminders_weight_title => 'هفتيوار وزن ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'بلومي ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'سمهڻ وقت ونڊ-ڊائون 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'آرام ڪريو ۽ آرام واري ننڊ لاءِ تيار ڪريو ( $time ).';
  }

  @override
  String get onboard_welcome => 'بلومي ۾ ڀليڪار';

  @override
  String get onboard_sub =>
      'توهان جو دوستانه، آف لائن- پهريون صحت ۽ غذائي ساٿي.';

  @override
  String get onboard_get_started => 'شروع ڪريو';

  @override
  String get onboard_sign_in => 'سائن ان';

  @override
  String get onboard_skip => 'ڇڏڻ';

  @override
  String get onboard_choose_goal => 'توهان جي بنيادي صحت جو مقصد ڇا آهي؟';

  @override
  String get onboard_goal_weight_loss => 'نرم وزن گھٽائڻ';

  @override
  String get onboard_goal_muscle => 'عضلات جي حاصلات ۽ طاقت';

  @override
  String get onboard_goal_energy => 'روزاني توانائي ۽ توانائي';

  @override
  String get onboard_goal_habits => 'صحت مند ذھني کاڌو';

  @override
  String get onboard_about_you => 'اسان کي پنهنجي باري ۾ ٻڌايو';

  @override
  String get onboard_lifestyle => 'توهان جي روزاني روٽين';

  @override
  String get onboard_permissions_title => 'اجازتون ۽ سسٽم رسائي';

  @override
  String get onboard_permissions_sub =>
      'هم وقت سازي جي مرحلن، ورڪشاپ، ۽ ياد ڏياريندڙن تائين رسائي ڏيو.';

  @override
  String get onboard_plan_ready_title => 'توهان جو ڪسٽم پلان تيار آهي!';

  @override
  String get onboard_plan_ready_sub =>
      'اسان صرف توهان لاءِ هڪ نرم، ذاتي غذائيت ۽ صحت واري روڊ ميپ ٺاهيو آهي.';

  @override
  String get onboard_enter_bloomi => 'بلومي داخل ڪريو';

  @override
  String get insights_weekly_report => 'هفتيوار صحت جو جائزو';

  @override
  String insights_best_day(Object day) {
    return 'بهترين مطابقت جو ڏينهن: $day';
  }

  @override
  String get insights_streaks_badges => 'اسٽريڪس ۽ سنگ ميل';

  @override
  String insights_unlocked_on(Object date) {
    return '$date تي کوليو ويو';
  }

  @override
  String get insights_keep_going => 'شاندار ترقي جاري رکو!';

  @override
  String get widgets_title => 'گھر جي اسڪرين ويجيٽس';

  @override
  String widgets_active_count(Object count) {
    return 'فعال ويجيٽس: $count';
  }

  @override
  String get widgets_hub_title => 'بلومي فلاحي مرڪز';

  @override
  String get widgets_steps_title => 'قدم ۽ فعال رنگ';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'بلومي ماسڪوٽ ساٿي';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'واچ سان ڳنڍيل';

  @override
  String get wear_os_sync => 'واچ ڊيٽا کي هم وقت سازي ڪريو';

  @override
  String get theme_title => 'ظاهر ۽ موضوع';

  @override
  String get theme_mode => 'موضوع موڊ';

  @override
  String get theme_light => 'روشني';

  @override
  String get theme_dark => 'ڳاڙهو';

  @override
  String get theme_system => 'سسٽم ڊفالٽ';

  @override
  String get theme_background_palette => 'پس منظر پيلٽ';

  @override
  String get units_title => 'ماپ جا يونٽ';

  @override
  String get units_metric => 'ميٽرڪ (ڪلو، سينٽي، ايم ايل)';

  @override
  String get units_imperial => 'امپيريل (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'ڊيش بورڊ لوڊ ڪرڻ جي قابل نه';

  @override
  String get home_health_permission_req => 'صحت سان ڳنڍڻ جي اجازت گهربل';

  @override
  String get home_health_permission_desc =>
      'بلومي کي صحت جي ڪنيڪٽ جي اجازت جي ضرورت آهي حقيقي قدم کڻڻ، دل جي شرح، ۽ موبائل گهر ويجٽ کي حقيقي وقت ۾ هم وقت سازي ڪرڻ لاء.';

  @override
  String get home_allow_health => 'صحت سان ڳنڍڻ جي اجازت ڏيو';

  @override
  String get home_ready_mindful_day => 'هڪ ذهني ڏينهن لاء تيار؟ ✨';

  @override
  String get home_quick_add => 'جلدي شامل ڪريو';

  @override
  String get home_live_gps => 'لائيو GPS';

  @override
  String get home_calories_remaining_label => 'باقي ڪيلوريون';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'کاڌو: $consumed / $target ڪيڪال';
  }

  @override
  String get home_tap_water_tracker => 'واٽر ٽريڪر 💧 لاءِ ٽيپ ڪريو';

  @override
  String get home_water_goal_reached => 'روزانه مقصد حاصل ڪيو 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml روزاني مقصد تائين';
  }

  @override
  String get home_details => 'تفصيل';

  @override
  String get home_upgrade_plan_desc =>
      'ذاتي روزاني هدفن ۽ AI پلان کي انلاڪ ڪرڻ لاءِ اپڊيٽ ڪريو';

  @override
  String get home_unlock => 'کوليو 👑';

  @override
  String get home_quick_log_hint => 'جلدي صحت جي داخلا کي رڪارڊ ڪريو';

  @override
  String get food_serving_size => 'سرونگ سائز';

  @override
  String get food_serving_grams => 'خدمت ڪرڻ (جي)';

  @override
  String get food_number_servings => 'سرونگ جو تعداد';

  @override
  String get food_calories_per_serving => 'ڪيلوريون في سرونگ';

  @override
  String get food_recipe_ingredients => 'اجزاء';

  @override
  String get food_recipe_add_ingredient => 'اجزاء شامل ڪريو';

  @override
  String get food_recipe_directions => 'هدايتون ۽ نوٽس';

  @override
  String get food_recipe_total => 'ڪُل ترڪيب غذائيت';

  @override
  String get food_recipe_per_serving => 'في سرونگ غذائيت';

  @override
  String get food_recipe_saved_toast => 'ڪسٽم کاڌو ڪاميابي سان بچايو ويو!';

  @override
  String get food_barcode_found => 'پراڊڪٽ مليو!';

  @override
  String get food_barcode_not_found_desc =>
      'اسان هن بارڪوڊ کي کليل ڊيٽابيس ۾ نه ڳولي سگهيا آهيون. توھان ان کي شامل ڪري سگھو ٿا ھڪڙي روايتي کاڌي جي طور تي.';

  @override
  String get food_add_custom_btn => 'ڪسٽم کاڌو شامل ڪريو';

  @override
  String get food_scan_again => 'ٻيهر اسڪين ڪريو';

  @override
  String get food_review_items => 'نظرثاني ٿيل کاڌ خوراڪ';

  @override
  String get food_review_hint =>
      'مقدار کي ترتيب ڏيو يا ڪنهن به اڻ سڃاتل شيء کي هٽايو';

  @override
  String get food_log_selected => 'منتخب ٿيل کاڌو لاگ ان ڪريو';

  @override
  String get food_favourites_title => 'پسنديده کاڌو';

  @override
  String get food_recent_title => 'تازو کاڌو';

  @override
  String get food_no_favourites =>
      'اڃان تائين ڪو به پسنديده کاڌو ناهي. هتي بچائڻ لاءِ ڪنهن به کاڌي تي دل تي ٽيپ ڪريو.';

  @override
  String get food_no_recents => 'تازو لاگ ٿيل کاڌو نه مليو.';

  @override
  String get food_nutrition_details_title => 'روزاني غذائيت جا تفصيل';

  @override
  String get food_macro_protein_label => 'پروٽين جي ڀڃڪڙي';

  @override
  String get food_macro_carbs_label => 'ڪاربوهائيڊريٽ جي ڀڃڪڙي';

  @override
  String get food_macro_fat_label => 'چربی جي ڀڃڪڙي';

  @override
  String get food_macro_fiber_label => 'فائبر جي ڀڃڪڙي';

  @override
  String get food_daily_target_comparison => 'ھدف جو مقابلو';

  @override
  String food_target_label(Object target) {
    return 'ھدف: $target';
  }

  @override
  String get food_edit_entry => 'ڊائري جي داخلا ۾ ترميم ڪريو';

  @override
  String get food_delete_entry => 'داخلا ختم ڪريو';

  @override
  String food_grams_short(Object grams) {
    return '$grams جي';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal ڪيڪال';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current جو $target ml';
  }

  @override
  String get water_intake_history => 'اڄ جي واٽر لاگز';

  @override
  String get water_no_logs_today =>
      'اڄ تائين پاڻي نه پهتو آهي. هائيڊريٽ ڪريو ۽ ٽيپ ڪريو تڪڙو اضافو بٽڻ!';

  @override
  String get water_adjust_goal => 'روزاني مقصد کي ترتيب ڏيو';

  @override
  String get health_connect_banner => 'صحت سان ڳنڍيل آهي';

  @override
  String get health_vitals_summary => 'روزاني صحت جون شيون';

  @override
  String get health_latest_heart_rate => 'دل جي ويران رڻ تي';

  @override
  String get health_latest_bp => 'بلڊ پريشر';

  @override
  String get health_latest_spo2 => 'رت جي آڪسيجن';

  @override
  String get health_latest_glucose => 'رت جو گلوڪوز';

  @override
  String get health_latest_weight => 'وزن';

  @override
  String get health_latest_sleep => 'سمهڻ جو عرصو';

  @override
  String get health_add_manual => 'دستي ماپ شامل ڪريو';

  @override
  String get health_history_trends => 'تاريخي رجحانات';

  @override
  String get health_sync_success => 'صحت جي ڊيٽا ڪاميابي سان هم وقت ٿي وئي!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ڪلاڪ $mins منٽ';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val ڪلو';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm بي پي ايم';
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
  String get health_devices_title => 'ڳنڍيل ڊوائيسز ۽ ڪپڙا';

  @override
  String get health_devices_desc =>
      'جوڙيل سمارٽ واچز، فٽنيس ٽريڪرز، ۽ هيلٿ سينسر جو انتظام ڪريو.';

  @override
  String get health_workout_editor_title => 'ورزش ۾ ترميم ڪريو';

  @override
  String get health_workout_name_label => 'ورزش جو نالو';

  @override
  String get health_workout_duration_label => 'مدت (منٽ)';

  @override
  String get health_workout_calories_label => 'اندازي مطابق ڪيلوريون (kcal)';

  @override
  String get health_workout_date_label => 'تاريخ ۽ وقت';

  @override
  String get plan_daily_wellness_roadmap => 'توهان جي ذاتي روڊ ميپ';

  @override
  String get plan_morning_routine => 'صبح جو معمول';

  @override
  String get plan_afternoon_routine => 'منجھند جي صحت';

  @override
  String get plan_evening_routine => 'شام جو ونڊ-ڊائون';

  @override
  String get plan_coach_badge => 'بلومي AI ڪوچ';

  @override
  String get plan_weekly_overview => '7-ڏينهن جي صحت جو مرڪز';

  @override
  String get plan_targets_title => 'صحت جا مقصد ۽ مقصد';

  @override
  String get plan_calorie_budget_label => 'روزاني ڪيلوري بجيٽ';

  @override
  String get plan_water_budget_label => 'روزاني پاڻي جو هدف';

  @override
  String get plan_step_budget_label => 'روزانه قدم جو مقصد';

  @override
  String get plan_macro_split_label => 'Macronutrient تناسب';

  @override
  String get profile_personal_details => 'ذاتي تفصيل';

  @override
  String get profile_body_stats => 'جسماني ماپون';

  @override
  String get profile_app_preferences => 'ترجيحات ۽ ايپ سيٽنگون';

  @override
  String get profile_edit_name_hint => 'توهان جو نالو';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'اوچائي ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'وزن ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'عمر';

  @override
  String get profile_gender_male => 'نر';

  @override
  String get profile_gender_female => 'عورت';

  @override
  String get profile_gender_other => 'ٻيو / نه چوڻ کي ترجيح ڏيو';

  @override
  String get profile_activity_sedentary => 'بيڪار (ٿوري کان سواءِ ورزش)';

  @override
  String get profile_activity_light => 'هلڪو هلڪو (1-3 ڏينهن/هفتو)';

  @override
  String get profile_activity_moderate =>
      'وچولي طور تي فعال (3-5 ڏينهن / هفتي)';

  @override
  String get profile_activity_very => 'تمام سرگرم (6-7 ڏينهن/هفتو)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion ائپ';

  @override
  String get settings_wear_os_desc =>
      'بلومي ٽائل ۽ پيچيدگي کي انسٽال ڪريو پنھنجي Wear OS واچ تي نظر ڪرڻ لاءِ ڪلوريون، پاڻي ۽ قدم.';

  @override
  String get settings_widgets_header => 'انٽرايڪٽو Android Widgets';

  @override
  String get settings_widgets_desc =>
      'فوري اپڊيٽ لاءِ پنهنجي ڊوائيس جي هوم اسڪرين تي حقيقي وقت جي ويجيٽس کي پن ڪريو.';

  @override
  String get settings_about_header => 'بلومي بابت';

  @override
  String get settings_about_version => 'نسخو 1.0.0';

  @override
  String get settings_about_build => '100 ٺاھيو';

  @override
  String get settings_about_credits =>
      'ذھني، صحتمند زندگي گذارڻ لاء خيال سان ٺاھيو ويو.';

  @override
  String get settings_terms_header => 'شرط ۽ ضابطا';

  @override
  String get settings_privacy_header => 'رازداري پاليسي';

  @override
  String get settings_delete_header => 'اڪائونٽ ۽ ڊيٽا کي ختم ڪريو';

  @override
  String get settings_delete_warning =>
      'ھن عمل کي رد نٿو ڪري سگھجي. توهان جا سڀئي کاڌا، ورزش، اهم شيون ۽ پروفائل مستقل طور تي ڊهي ويندا.';

  @override
  String get settings_delete_confirm_btn => 'مستقل طور تي حذف ڪريو';

  @override
  String get onboard_welcome_headline => 'بلومي ۾ ڀليڪار ✨';

  @override
  String get onboard_welcome_tagline =>
      'توهان جي زندگي جي چوڌاري ٺهيل نرم، ذهني صحت جي ٽريڪنگ.';

  @override
  String get onboard_step_about => 'توھان جي باري ۾';

  @override
  String get onboard_step_goals => 'توهان جا مقصد';

  @override
  String get onboard_step_lifestyle => 'روزاني عادتون';

  @override
  String get onboard_step_permissions => 'اجازتون';

  @override
  String get onboard_step_plan => 'تيار!';

  @override
  String get onboard_health_connect_perm => 'صحت رابطي جي رسائي';

  @override
  String get onboard_step_sensors_perm => 'قدم انسداد سينسر';

  @override
  String get onboard_notif_perm => 'ذھني ياد ڏياريندڙ ۽ نوٽيفڪيشن';

  @override
  String get onboard_camera_perm => 'ڪئميرا (بار ڪوڊ ۽ فوڊ اسڪينر)';

  @override
  String get onboard_grant_permissions => 'اجازتون ڏيو';

  @override
  String get onboard_continue_dashboard => 'اوپن ڊيش بورڊ';

  @override
  String get notif_channel_hydration_name => 'هائيڊريشن ننڊ';

  @override
  String get notif_channel_hydration_desc =>
      'سڄي ڏينهن ۾ نرم پاڻي جي ياد ڏياريندڙ';

  @override
  String get notif_channel_nutrition_name => 'کاڌو ۽ غذائي ياد ڏياريندڙ';

  @override
  String get notif_channel_nutrition_desc =>
      'ناشتو، لنچ، ۽ رات جي ماني ياد ڏياريندڙ الرٽ';

  @override
  String get notif_channel_steps_name => 'قدم سنگ ميل';

  @override
  String get notif_channel_steps_desc =>
      'جشن جڏهن روزانه قدم جي مقصدن تائين پهچي';

  @override
  String get notif_channel_vitals_name => 'صحت ۽ حياتيات جي چڪاس';

  @override
  String get notif_channel_vitals_desc =>
      'وزن ۽ سمهڻ وقت ونڊ-ڊائون ياد ڏياريندڙ';

  @override
  String get notif_action_log_water => '💧 لاگ + 250ml';

  @override
  String get notif_action_snooze => 'اسنوز 15 ايم';

  @override
  String get notif_action_log_meal => '🥗 لاگ ماني';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
