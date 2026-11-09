// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Үй';

  @override
  String get nav_today => 'Бүгүн';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Тамак-аш';

  @override
  String get nav_food_diary => 'Тамак-аш күндөлүгү';

  @override
  String get nav_workout => 'Машыгуу журналы';

  @override
  String get nav_health => 'Ден соолук';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Сактоо';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get delete => 'Жок кылуу';

  @override
  String get edit => 'Түзөтүү';

  @override
  String get done => 'Бүттү';

  @override
  String get close => 'Жабуу';

  @override
  String get back => 'Артка';

  @override
  String get next => 'Кийинки';

  @override
  String get continue_btn => 'Улантуу';

  @override
  String get confirm => 'Ырастоо';

  @override
  String get search => 'Издөө';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Баары';

  @override
  String get active => 'Активдүү';

  @override
  String get today => 'Бүгүн';

  @override
  String get yesterday => 'Кечээ';

  @override
  String get tomorrow => 'Эртең';

  @override
  String get add => 'кошуу';

  @override
  String get remove => 'Алып салуу';

  @override
  String get refresh => 'Жаңылоо';

  @override
  String get retry => 'Кайталап көрүңүз';

  @override
  String get error => 'Ката';

  @override
  String get success => 'Ийгилик';

  @override
  String get loading => 'Жүктөлүүдө...';

  @override
  String get no_data => 'Дайындар жок';

  @override
  String get offline => 'Оффлайн режими';

  @override
  String get offline_sub =>
      'Өзгөртүүлөр кайра туташтырылгандан кийин шайкештирилет';

  @override
  String get undo => 'Жок кылуу';

  @override
  String get portion => 'Порция';

  @override
  String get quantity => 'Саны';

  @override
  String get unit => 'бирдиги';

  @override
  String get clear => 'Таза';

  @override
  String get select => 'Тандоо';

  @override
  String get apply => 'Колдонуу';

  @override
  String get reset => 'Калыбына келтирүү';

  @override
  String get ok => 'макул';

  @override
  String get yes => 'Ооба';

  @override
  String get no => 'жок';

  @override
  String get optional => 'Кошумча';

  @override
  String get calories => 'Калориялар';

  @override
  String get protein => 'Протеин';

  @override
  String get carbs => 'углеводдор';

  @override
  String get fat => 'Fat';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Суу';

  @override
  String get steps => 'Кадамдар';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'г';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунт';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'ичинде';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'с';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Кызмат көрсөтүү';

  @override
  String get servings => 'порциялар';

  @override
  String get serving_size => 'Кызмат өлчөмү';

  @override
  String get per_100g => '100 г үчүн';

  @override
  String get india => 'Индия';

  @override
  String get asia => 'Азия';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Жакынкы Чыгыш';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Үй';

  @override
  String get home_greeting_morning => 'Кутман таң';

  @override
  String get home_greeting_afternoon => 'Кутмандуу кеч';

  @override
  String get home_greeting_evening => 'Кутман кеч';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн сызык',
      one: '1 күн сызык',
      zero: '0 күн сызык',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Күйүп кетти';

  @override
  String get home_calories_budget => 'Калория бюджети';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал калды';
  }

  @override
  String get home_water_title => 'Күнүмдүк гидратация';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Кадамдар басылды';

  @override
  String get home_quick_actions => 'Ыкчам аракеттер';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Бүгүнкү Инсайттар';

  @override
  String get home_quote =>
      'Кичинекей дени сак тандоолор гүлдөгөн өзгөрүүлөрдү жаратат.';

  @override
  String get home_ai_coach_tip => 'Блуми AI машыктыруучусу';

  @override
  String get home_surroundings => 'Айлана-чөйрө жана аба';

  @override
  String get home_notifications => 'Эскертмелер';

  @override
  String get home_daily_score => 'Күнүмдүк ден соолук упай';

  @override
  String get home_view_all => 'Баарын көрүү';

  @override
  String get food_diary_title => 'Тамак-аш күндөлүгү';

  @override
  String get food_breakfast => 'Эртең мененки тамак';

  @override
  String get food_lunch => 'Түшкү тамак';

  @override
  String get food_dinner => 'Кечки тамак';

  @override
  String get food_snacks => 'Тамак-аш';

  @override
  String get food_add_food => 'Тамак-аш кошуу';

  @override
  String get food_edit_food => 'Тамак-ашты түзөтүү';

  @override
  String get food_add_breakfast => 'Эртең мененки тамакты кошуу';

  @override
  String get food_add_lunch => 'Түшкү тамак кошуу';

  @override
  String get food_add_dinner => 'Түшкү тамак кошуу';

  @override
  String get food_add_snack => 'Snack кошуу';

  @override
  String get food_total_calories => 'Жалпы калория';

  @override
  String get food_empty_meal =>
      'Бул тамакка азырынча эч кандай тамактар катталган жок';

  @override
  String get food_empty_diary => 'Бул күн үчүн эч кандай тамак катталган жок';

  @override
  String get food_log_first_meal =>
      'Биринчи даамдуу тамакыңызды каттоо үчүн + таптаңыз';

  @override
  String get food_quick_add => 'Тез кошуу';

  @override
  String get food_search_hint =>
      'Издөө табактарды, мөмө-жемиштерди, дал, роти...';

  @override
  String get food_custom_recipe => 'Ыңгайлаштырылган тамак-аш жана рецепт';

  @override
  String get food_scan_barcode => 'Штрихкодду сканерлеңиз';

  @override
  String get food_camera_scan => 'AI тамак-аш сканери';

  @override
  String get food_recent => 'Акыркы тамактар';

  @override
  String get food_favourites => 'Сүйүктүүлөр';

  @override
  String get food_macro_summary => 'Макронутриенттин бөлүнүшү';

  @override
  String get food_delete_meal_confirm =>
      'Бул нерсени чын эле алып салгыңыз келеби?';

  @override
  String get food_item_deleted => 'Азык-түлүк алынып салынды';

  @override
  String get food_remaining => 'калган';

  @override
  String get food_consumed => 'керектелген';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Тамактарды издөө';

  @override
  String get foodSearch_scan_barcode => 'Штрихкодду сканерлеңиз';

  @override
  String get foodSearch_take_photo => 'Snap Food Сүрөт';

  @override
  String get foodSearch_custom_food => 'Ыңгайлаштырылган тамактарды түзүү';

  @override
  String get foodSearch_recent_searches => 'Акыркы издөөлөр';

  @override
  String get foodSearch_popular => 'Популярдуу тамактар';

  @override
  String get foodSearch_no_results => 'Издөөңүзгө дал келген тамактар жок';

  @override
  String get barcode_title => 'Штрихкод сканери';

  @override
  String get barcode_align => 'Штрихкодду камера алкагынын ичине тууралаңыз';

  @override
  String get barcode_not_found => 'Продукт маалымат базасында табылган жок';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro менен штрих-кодду сканерлөө жеткиликтүү';

  @override
  String get camera_title => 'AI тамак-аш сканери';

  @override
  String get camera_tap_hint => 'Тамагыңызды ачык сүрөткө тартыңыз';

  @override
  String get camera_analysing => 'Тамак-аш табличкасы талданууда...';

  @override
  String get camera_detected => 'Табылган нерселер';

  @override
  String get camera_flash => 'Flash которуштуруу';

  @override
  String get camera_retake => 'Сүрөттү кайра тартуу';

  @override
  String get camera_confirm_food => 'Элементтерди ырастоо';

  @override
  String get customFood_title => 'Ыңгайлаштырылган тамак-аш жана рецепт';

  @override
  String get customFood_name_hint => 'Тамактын же ингредиенттин аталышы';

  @override
  String get customFood_calories_hint => 'Калориялар (ккал)';

  @override
  String get customFood_protein_hint => 'Протеин (г)';

  @override
  String get customFood_carbs_hint => 'Көмүрсуулар (г)';

  @override
  String get customFood_fat_hint => 'Май (г)';

  @override
  String get customFood_save => 'Рецептти сактоо';

  @override
  String get water_tracker_title => 'Суу трекер';

  @override
  String get water_daily_target => 'Күнүмдүк гидратация максаты';

  @override
  String get water_logged_today => 'Бүгүн катталды';

  @override
  String get water_add_glass => '+250 мл стакан';

  @override
  String get water_add_bottle => '+500 мл бөтөлкө';

  @override
  String get water_custom_amount => 'Ыңгайлаштырылган сумма';

  @override
  String get water_reminder_tip =>
      'Туруктуу энергия үчүн күнү бою үзгүлтүксүз суу ичиңиз.';

  @override
  String water_logged_toast(Object amount) {
    return 'Тартылган $amount мл суу 💧';
  }

  @override
  String get workout_title => 'Машыгуу журналы';

  @override
  String get workout_add_exercise => 'Workout кошуу';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Күч';

  @override
  String get workout_yoga => 'Йога жана ийкемдүүлүк';

  @override
  String get workout_duration => 'Узактыгы';

  @override
  String get workout_intensity => 'Интенсивдүүлүк';

  @override
  String get workout_calories_burned => 'Күйгөн калориялар';

  @override
  String get workout_empty => 'Бүгүн эч кандай машыгуу катталган жок';

  @override
  String get workout_save_success => 'Машыгуу ийгиликтүү сакталды!';

  @override
  String get workout_type => 'Машыгуу түрү';

  @override
  String get workout_notes => 'Эскертүүлөр & Ой жүгүртүү';

  @override
  String get health_overview_title => 'Ден соолук жана Vitals';

  @override
  String get health_heart_rate => 'Жүрөктүн кагышы';

  @override
  String get health_blood_oxygen => 'Кандагы кычкылтек (SpO2)';

  @override
  String get health_blood_pressure => 'Кан басымы';

  @override
  String get health_blood_glucose => 'Кандагы глюкоза';

  @override
  String get health_body_temperature => 'Дене температурасы';

  @override
  String get health_sleep_tracking => 'Уйкуга көз салуу';

  @override
  String get health_weight_tracking => 'Салмагы жана дене курамы';

  @override
  String get health_waist_hip => 'Белден жамбашка катышы';

  @override
  String get health_devices_hub => 'Түзмөктөр жана Smartwatch Hub';

  @override
  String get health_sync_now => 'Ден соолук дайындарын синхрондоштуруу';

  @override
  String health_last_synced(Object time) {
    return 'Акыркы жолу шайкештирилген: $time';
  }

  @override
  String get health_manual_entry => 'Кол менен ден соолук киргизүү';

  @override
  String get health_metric_detail => 'Метрикалык чоо-жай';

  @override
  String get health_connected_sensors => 'Туташкан ден соолук сенсорлору';

  @override
  String get plan_title => 'Күнүмдүк план';

  @override
  String get plan_weekly_title => 'Жумалык Wellness планы';

  @override
  String get plan_calorie_target => 'Калория Максаты';

  @override
  String get plan_water_target => 'Гидрация Максаты';

  @override
  String get plan_step_target => 'Максаттуу кадам';

  @override
  String get plan_sleep_target => 'Уйку максаты';

  @override
  String get plan_meal_suggestions => 'Тамактануу сунуштары';

  @override
  String get plan_healthy_habits =>
      'Ден соолукка пайдалуу адаттар жана кеңештер';

  @override
  String get plan_coach_advice => 'Bloomi AI машыктыруучусунун сунуштары';

  @override
  String get plan_generated_title => 'Жекелештирилген күн тартиби';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профильди түзөтүү';

  @override
  String get profile_name => 'аты';

  @override
  String get profile_age => 'Жашы';

  @override
  String get profile_gender => 'Гендер';

  @override
  String get profile_height => 'Бийиктик';

  @override
  String get profile_weight => 'Салмагы';

  @override
  String get profile_goal => 'Негизги Максат';

  @override
  String get profile_activity_level => 'Активдүүлүк деңгээли';

  @override
  String get profile_stats => 'Менин ден соолук статистикам';

  @override
  String get profile_saved => 'Профиль ийгиликтүү жаңыртылды';

  @override
  String get profile_bmi => 'Дене массасынын индекси (BMI)';

  @override
  String get profile_membership => 'Мүчөлүк';

  @override
  String get settings => 'Орнотуулар';

  @override
  String get preferences_habits => 'ПРЕФЕРЕНЦИЯЛАР ЖАНА АДАТТАР';

  @override
  String get appearance_theme => 'Сырткы көрүнүш жана тема';

  @override
  String get appearance_theme_sub =>
      'Караңгы, жарык, тутум режими жана колдонмонун Фон параметрлери';

  @override
  String get permissions => 'Уруксаттар жана системага кирүү';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'Эстеткичтер жана эскертмелер';

  @override
  String get reminders_sub =>
      'Тамактануу убактысы, суу, салмакты текшерүү жана уктаар алдында эскертмелер';

  @override
  String get units_of_measurement => 'Өлчөө бирдиктери';

  @override
  String get units_sub =>
      'Метрикалык (кг, см, мл, км) же Императордук (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Колдонмо тили';

  @override
  String get language_sub =>
      'Англис, हिन्दी (Хинди), Хингли жана 195+ дүйнөлүк тил';

  @override
  String get home_screen_widgets => 'Үй экранынын виджеттери';

  @override
  String get widgets_sub =>
      'Live Android виджеттери: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch колдонмосу';

  @override
  String get wear_os_sub =>
      'Smartwatch шериги, плиткалар, татаалдыктар жана тирүү жашоо';

  @override
  String get goals_wellness => 'МАКСАТТАР ЖАНА ЖАҢАЛЫКТАР';

  @override
  String get nutrition_targets => 'Тамактануу максаттары жана макро бөлүү';

  @override
  String get nutrition_targets_sub =>
      'Калория максаты, белок, углевод, май жана суу максаты';

  @override
  String get weekly_recap => 'Жумалык Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7 күндүк орточо калория, макро катыш жана эң жакшы күн';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub =>
      'Жигердүү гүл сызыктары, бейджиктер жана жетишкендиктер';

  @override
  String get connected_devices => 'БАЙЛАНЫШКАН ТҮЗМӨЛӨР ЖАНА ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Түзмөктөр жана Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Айлана жана Аба ырайы';

  @override
  String get surroundings_sub =>
      'Абанын сапаты (AQI), UV индекси жана аба ырайынын гидратация боюнча кеңештери';

  @override
  String get bloomi_pro => 'Bloomi Pro жазылуусу';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 үй экранынын виджеттери жана маанилүү нерселерге көз салуу';

  @override
  String get about_security => 'ЖӨНҮНДӨ & КООПСУЗДУК';

  @override
  String get about_bloomi => 'Блуми жөнүндө';

  @override
  String get about_bloomi_sub =>
      'Техникалык мүнөздөмөлөрдү, версияларды, атрибуцияларды түзүңүз';

  @override
  String get privacy_policy => 'Купуялык саясаты';

  @override
  String get privacy_policy_sub =>
      'Оффлайн - биринчи, түзмөктөгү маалымат архитектурасы';

  @override
  String get terms_conditions => 'Шарттар жана жоболор';

  @override
  String get terms_conditions_sub =>
      'Тейлөө шарттары жана ден соолук эрежелери';

  @override
  String get delete_account => 'Каттоо эсебин жана дайындарды жок кылуу';

  @override
  String get delete_account_sub =>
      'Жергиликтүү SQLite маалыматтарын жана булуттагы камдык көчүрмөлөрдү кайтарылгыс түрдө жок кылыңыз';

  @override
  String get healthy_habits =>
      'Жумшак, узакка созулган сергектик адаттарын түзүңүз';

  @override
  String get all_logs => 'Менин көз салынган маалыматтарым жана журналдарым';

  @override
  String get search_language => 'Тил же эне скрипт боюнча издөө...';

  @override
  String get languages_available => 'Тилдер жеткиликтүү';

  @override
  String get no_matching_languages => 'Дал келген тилдер табылган жок';

  @override
  String get try_searching =>
      'Жергиликтүү жазуу же англис орфографиясы боюнча издеп көрүңүз';

  @override
  String get partially_translated => 'Жарым-жартылай которулган';

  @override
  String get complete_translation => 'Бүттү';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Тил коюлду $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Айлана-чөйрө жана айлана-чөйрө';

  @override
  String get surroundings_aqi => 'Абанын сапаты индекси';

  @override
  String get surroundings_uv => 'UV индекси';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Нымдуулук';

  @override
  String get surroundings_hydration_advice =>
      'Азыркы аба ырайынын шарттарында жакшы гидратталган болуңуз.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Тамак-аш издөө';

  @override
  String get food_quick_barcode => 'Штрихкодду скандоо 👑';

  @override
  String get food_quick_water => 'Суу кошуу';

  @override
  String get food_quick_custom => 'Тамак-аш';

  @override
  String get surroundings_good => 'Жакшы';

  @override
  String get surroundings_moderate => 'Орто';

  @override
  String get surroundings_unhealthy => 'Ден соолукка зыян';

  @override
  String get notifications_title => 'Эскертмелер жана эскертүүлөр';

  @override
  String get notifications_empty => 'Жаңы эскертмелер жок';

  @override
  String get notifications_mark_read => 'Баарын окулду деп белгилөө';

  @override
  String get notifications_clear => 'Баарын тазалоо';

  @override
  String get reminders => 'Эстеткич Орнотуулар';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Эртең мененки тамакты эскертме 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Кутман таң! $time азыктандыруучу эртең мененки тамакка убакыт.';
  }

  @override
  String get reminders_lunch_title => 'Түшкү тамакты эстеткич 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Тыныгуу жана $time тең салмактуу, эстүү түшкү тамактан ырахат алыңыз.';
  }

  @override
  String get reminders_dinner_title => 'Кечки тамакты эскертме 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time жеңил, канааттандырарлык кечки тамакка убакыт келди.';
  }

  @override
  String get reminders_water_title => 'Гидратациялоочу 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Бир стакан таза суу ичкенге убакыт келди! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Апталык тараза ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Апталык дене көрсөткүчтөрүңүзгө Bloomiде көз салыңыз ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Уктоо маалында эс алуу 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Эс алып, тынч уктоого даярданыңыз ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi кош келиңиз';

  @override
  String get onboard_sub =>
      'Сиздин достук, оффлайн-биринчи ден-соолук жана тамактануу шериги.';

  @override
  String get onboard_get_started => 'Баштоо';

  @override
  String get onboard_sign_in => 'Кирүү';

  @override
  String get onboard_skip => 'Өткөрүп жибер';

  @override
  String get onboard_choose_goal =>
      'Ден соолукту чыңдоо боюнча негизги максатыңыз эмне?';

  @override
  String get onboard_goal_weight_loss => 'жумшак салмак жоготуу';

  @override
  String get onboard_goal_muscle => 'Muscle Gain & Strength';

  @override
  String get onboard_goal_energy => 'Күнүмдүк энергия жана жашоо';

  @override
  String get onboard_goal_habits => 'Дени сак тамактануу';

  @override
  String get onboard_about_you => 'Бизге өзүң жөнүндө айтып бер';

  @override
  String get onboard_lifestyle => 'Күнүмдүк ишиңиз';

  @override
  String get onboard_permissions_title => 'Уруксаттар жана системага кирүү';

  @override
  String get onboard_permissions_sub =>
      'Кадамдарды, машыгууларды жана эстеткичтерди шайкештирүү мүмкүнчүлүгүн бериңиз.';

  @override
  String get onboard_plan_ready_title => 'Сиздин жеке планыңыз даяр!';

  @override
  String get onboard_plan_ready_sub =>
      'Биз сиз үчүн жумшак, жекелештирилген тамактануунун жана ден соолуктун жол картасын түздүк.';

  @override
  String get onboard_enter_bloomi => 'Bloomi кир';

  @override
  String get insights_weekly_report => 'Жумалык Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Мыкты туруктуулук күнү: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return '$date кулпусу ачылган';
  }

  @override
  String get insights_keep_going => 'Фантастикалык прогрессти уланта бер!';

  @override
  String get widgets_title => 'Үй экранынын виджеттери';

  @override
  String widgets_active_count(Object count) {
    return 'Жигердүү виджеттер: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'OS Smartwatch тагыңыз';

  @override
  String get wear_os_connected => 'Watch менен туташты';

  @override
  String get wear_os_sync => 'Саат берилиштерин синхрондоштуруу';

  @override
  String get theme_title => 'Сырткы көрүнүш жана тема';

  @override
  String get theme_mode => 'Тема режими';

  @override
  String get theme_light => 'Жарык';

  @override
  String get theme_dark => 'Караңгы';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Фон палитрасы';

  @override
  String get units_title => 'Өлчөө бирдиктери';

  @override
  String get units_metric => 'Метрикалык (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дюйм, ф унция)';

  @override
  String get home_unable_load => 'Куралдар тактасын жүктөө мүмкүн эмес';

  @override
  String get home_health_permission_req =>
      'Health Connect уруксаты талап кылынат';

  @override
  String get home_health_permission_desc =>
      'Bloomi реалдуу кадамдарды, жүрөктүн кагышын жана мобилдик үй виджеттерин реалдуу убакытта шайкештештирүү үчүн Health Connect уруксатын талап кылат.';

  @override
  String get home_allow_health => 'Ден-соолукка туташууга уруксат берүү';

  @override
  String get home_ready_mindful_day => 'Эстүү күнгө даярсызбы? ✨';

  @override
  String get home_quick_add => 'Тез кошуу';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'КАЛОРИЯЛАР КАЛГАН';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Жеген: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Суу көзөмөлдөөчү үчүн таптаңыз 💧';

  @override
  String get home_water_goal_reached => 'Күнүмдүк максатына жетти 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Күнүмдүк максатка $remaining мл';
  }

  @override
  String get home_details => 'Толук маалымат';

  @override
  String get home_upgrade_plan_desc =>
      'Жекелештирилген күнүмдүк максаттарды жана AI планын ачуу үчүн жаңыртыңыз';

  @override
  String get home_unlock => 'Кулпуну ачуу 👑';

  @override
  String get home_quick_log_hint =>
      'Ден соолукту чыңдоо жазуусун тез жаздырыңыз';

  @override
  String get food_serving_size => 'Кызмат өлчөмү';

  @override
  String get food_serving_grams => 'Кызмат көрсөтүү (г)';

  @override
  String get food_number_servings => 'Кызматтардын саны';

  @override
  String get food_calories_per_serving => 'Кызмат үчүн калория';

  @override
  String get food_recipe_ingredients => 'Ингредиенттер';

  @override
  String get food_recipe_add_ingredient => 'Ингредиент кошуу';

  @override
  String get food_recipe_directions => 'Instructions & Notes';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Тамактануу үчүн';

  @override
  String get food_recipe_saved_toast =>
      'Ыңгайлаштырылган тамак ийгиликтүү сакталды!';

  @override
  String get food_barcode_found => 'Продукт табылды!';

  @override
  String get food_barcode_not_found_desc =>
      'Бул штрих-кодду ачык маалымат базасынан таба алган жокпуз. Сиз аны жеке тамак катары кошо аласыз.';

  @override
  String get food_add_custom_btn => 'Ыңгайлаштырылган тамак-аш кошуу';

  @override
  String get food_scan_again => 'Кайра сканерлөө';

  @override
  String get food_review_items => 'Аныкталган азыктарды карап чыгуу';

  @override
  String get food_review_hint =>
      'Сандарды тууралаңыз же таанылбаган нерсени алып салыңыз';

  @override
  String get food_log_selected => 'Тандалган тамактарды журналга жазыңыз';

  @override
  String get food_favourites_title => 'Сүйүктүү тамактар';

  @override
  String get food_recent_title => 'Акыркы тамактар';

  @override
  String get food_no_favourites =>
      'Сүйүктүү тамактар азырынча жок. Бул жерде үнөмдөө үчүн каалаган тамакка жүрөктү таптаңыз.';

  @override
  String get food_no_recents => 'Жакында катталган тамактар ​​табылган жок.';

  @override
  String get food_nutrition_details_title => 'Күнүмдүк тамактануунун чоо-жайы';

  @override
  String get food_macro_protein_label => 'Протеиндин бузулушу';

  @override
  String get food_macro_carbs_label => 'Көмүрсуулар';

  @override
  String get food_macro_fat_label => 'Майдын бөлүнүшү';

  @override
  String get food_macro_fiber_label => 'Fiber Breakdown';

  @override
  String get food_daily_target_comparison => 'Максаттуу салыштыруу';

  @override
  String food_target_label(Object target) {
    return 'Максат: $target';
  }

  @override
  String get food_edit_entry => 'Күндөлүк жазууну түзөтүү';

  @override
  String get food_delete_entry => 'Киргизүүнү жок кылуу';

  @override
  String food_grams_short(Object grams) {
    return '$grams г';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal ккал';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ичинен $target мл';
  }

  @override
  String get water_intake_history => 'Бүгүнкү суу журналдары';

  @override
  String get water_no_logs_today =>
      'Бүгүнкү күнгө чейин суу жок. Гидратация жана тез кошуу баскычын таптаңыз!';

  @override
  String get water_adjust_goal => 'Күнүмдүк максатты тууралоо';

  @override
  String get health_connect_banner => 'Health Connect менен туташты';

  @override
  String get health_vitals_summary => 'Daily Health Vitals';

  @override
  String get health_latest_heart_rate => 'Акыркы жүрөктүн кагышы';

  @override
  String get health_latest_bp => 'Кан басымы';

  @override
  String get health_latest_spo2 => 'Кан кычкылтек';

  @override
  String get health_latest_glucose => 'Кандагы глюкоза';

  @override
  String get health_latest_weight => 'Салмагы';

  @override
  String get health_latest_sleep => 'Уйкунун узактыгы';

  @override
  String get health_add_manual => 'Кол менен өлчөө кошуу';

  @override
  String get health_history_trends => 'Тарыхый тенденциялар';

  @override
  String get health_sync_success =>
      'Ден соолук дайындары ийгиликтүү шайкештирилди!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ч. $mins мүн';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val кг';
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
    return '$systolic / $diastolic мм.рт.ст';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title => 'Туташкан түзмөктөр жана тагынуу';

  @override
  String get health_devices_desc =>
      'Жупташкан акылдуу сааттарды, фитнес трекерлерди жана ден соолук сенсорлорун башкарыңыз.';

  @override
  String get health_workout_editor_title => 'Машыгууну түзөтүү';

  @override
  String get health_workout_name_label => 'Машыгуу аты';

  @override
  String get health_workout_duration_label => 'Узактыгы (мүнөт)';

  @override
  String get health_workout_calories_label => 'Болжолдуу калориялар (ккал)';

  @override
  String get health_workout_date_label => 'Дата жана убакыт';

  @override
  String get plan_daily_wellness_roadmap =>
      'Сиздин жекелештирилген жол картасы';

  @override
  String get plan_morning_routine => 'Эртең мененки тартип';

  @override
  String get plan_afternoon_routine => 'түшкү ден соолук';

  @override
  String get plan_evening_routine => 'Кечки шамал';

  @override
  String get plan_coach_badge => 'Блуми AI машыктыруучусу';

  @override
  String get plan_weekly_overview => '7 күндүк ден соолукту чыңдоо';

  @override
  String get plan_targets_title => 'Wellness максаттары жана максаттары';

  @override
  String get plan_calorie_budget_label => 'Күнүмдүк калория бюджети';

  @override
  String get plan_water_budget_label => 'Күнүмдүк суу максаты';

  @override
  String get plan_step_budget_label => 'Күнүмдүк кадам максаты';

  @override
  String get plan_macro_split_label => 'Макронутриенттин катышы';

  @override
  String get profile_personal_details => 'Жеке маалыматтар';

  @override
  String get profile_body_stats => 'Дене өлчөөлөрү';

  @override
  String get profile_app_preferences =>
      'Параметрлер жана Колдонмонун жөндөөлөрү';

  @override
  String get profile_edit_name_hint => 'Сиздин атыңыз';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Бийиктиги ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Салмагы ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Жашы';

  @override
  String get profile_gender_male => 'Эркек';

  @override
  String get profile_gender_female => 'Аял';

  @override
  String get profile_gender_other => 'Башка / Айтпоону жакшы көрөм';

  @override
  String get profile_activity_sedentary => 'Кыймылсыз (аздан көнүгүү)';

  @override
  String get profile_activity_light => 'Жеңил активдүү (жумасына 1-3 күн)';

  @override
  String get profile_activity_moderate => 'Орточо активдүү (жумасына 3-5 күн)';

  @override
  String get profile_activity_very => 'Абдан активдүү (жумасына 6-7 күн)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Калорияга, сууга жана кадамдарга көз салуу үчүн Wear OS саатыңызга Bloomi плиткасын жана татаалдыгын орнотуңуз.';

  @override
  String get settings_widgets_header => 'Интерактивдүү Android виджеттери';

  @override
  String get settings_widgets_desc =>
      'Ыкчам жаңыртуулар үчүн түзмөгүңүздүн башкы экранына реалдуу убакыттагы виджеттерди кадап коюңуз.';

  @override
  String get settings_about_header => 'Блуми жөнүндө';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '100 куруу';

  @override
  String get settings_about_credits =>
      'Эстүү, сергек жашоо үчүн кам көрүү менен жасалган.';

  @override
  String get settings_terms_header => 'Шарттар жана жоболор';

  @override
  String get settings_privacy_header => 'Купуялык саясаты';

  @override
  String get settings_delete_header =>
      'Каттоо эсебин жана дайындарды жок кылуу';

  @override
  String get settings_delete_warning =>
      'Бул аракетти артка кайтаруу мүмкүн эмес. Бардык тамактарыңыз, машыгууларыңыз, vitals жана профилиңиз биротоло жок кылынат.';

  @override
  String get settings_delete_confirm_btn => 'Биротоло жок кылуу';

  @override
  String get onboard_welcome_headline => 'Bloomiге кош келиңиз ✨';

  @override
  String get onboard_welcome_tagline =>
      'Жашооңуздун айланасында иштелип чыккан жумшак, көңүлдүү ден-соолукка көз салуу.';

  @override
  String get onboard_step_about => 'Сен жөнүндө';

  @override
  String get onboard_step_goals => 'Сиздин максаттарыңыз';

  @override
  String get onboard_step_lifestyle => 'Күнүмдүк адаттар';

  @override
  String get onboard_step_permissions => 'Уруксаттар';

  @override
  String get onboard_step_plan => 'Даяр!';

  @override
  String get onboard_health_connect_perm => 'Health Connect мүмкүндүк алуу';

  @override
  String get onboard_step_sensors_perm => 'Кадам эсептегич сенсор';

  @override
  String get onboard_notif_perm => 'Эстүү эскертүүлөр жана эскертмелер';

  @override
  String get onboard_camera_perm => 'Камера (штрихкод жана тамак-аш сканери)';

  @override
  String get onboard_grant_permissions => 'Уруксаттарды берүү';

  @override
  String get onboard_continue_dashboard => 'Башкаруу тактасын ачыңыз';

  @override
  String get notif_channel_hydration_name => 'Гидрациялоо';

  @override
  String get notif_channel_hydration_desc => 'Күн бою жумшак суу эскертүүлөрү';

  @override
  String get notif_channel_nutrition_name =>
      'Тамактануу жана тамактануу жөнүндө эскертүүлөр';

  @override
  String get notif_channel_nutrition_desc =>
      'Эртең мененки, түшкү жана кечки тамакты эскертүү эскертүүлөрү';

  @override
  String get notif_channel_steps_name => 'Step Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Күнүмдүк кадам максаттарына жеткендеги майрамдар';

  @override
  String get notif_channel_vitals_name => 'Ден соолук жана Vitals текшерүүлөр';

  @override
  String get notif_channel_vitals_desc =>
      'Салмагын жана уктоо маалын эске салгычтар';

  @override
  String get notif_action_log_water => '💧 Log +250мл';

  @override
  String get notif_action_snooze => '15м тындыруу';

  @override
  String get notif_action_log_meal => '🥗 Тартылган тамак';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
