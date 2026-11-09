// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get app_name => 'Блум';

  @override
  String get nav_home => 'Үй';

  @override
  String get nav_today => 'Бүгін';

  @override
  String get nav_plan => 'Жоспар';

  @override
  String get nav_food => 'Тамақ';

  @override
  String get nav_food_diary => 'Тамақ күнделігі';

  @override
  String get nav_workout => 'Жаттығу журналы';

  @override
  String get nav_health => 'Денсаулық';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Сақтау';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get delete => 'Жою';

  @override
  String get edit => 'Өңдеу';

  @override
  String get done => 'Дайын';

  @override
  String get close => 'Жабу';

  @override
  String get back => 'Артқа';

  @override
  String get next => 'Келесі';

  @override
  String get continue_btn => 'Жалғастыру';

  @override
  String get confirm => 'Растау';

  @override
  String get search => 'Іздеу';

  @override
  String get filter => 'Сүзгі';

  @override
  String get all => 'Барлығы';

  @override
  String get active => 'Белсенді';

  @override
  String get today => 'Бүгін';

  @override
  String get yesterday => 'Кеше';

  @override
  String get tomorrow => 'Ертең';

  @override
  String get add => 'қосу';

  @override
  String get remove => 'Жою';

  @override
  String get refresh => 'Жаңарту';

  @override
  String get retry => 'Қайталап көріңіз';

  @override
  String get error => 'Қате';

  @override
  String get success => 'Сәттілік';

  @override
  String get loading => 'Жүктелуде...';

  @override
  String get no_data => 'Дерек жоқ';

  @override
  String get offline => 'Офлайн режимі';

  @override
  String get offline_sub => 'Қайта қосылғаннан кейін өзгертулер синхрондалады';

  @override
  String get undo => 'Болдырмау';

  @override
  String get portion => 'Бөлім';

  @override
  String get quantity => 'Саны';

  @override
  String get unit => 'Бірлік';

  @override
  String get clear => 'Таза';

  @override
  String get select => 'таңдаңыз';

  @override
  String get apply => 'Қолдану';

  @override
  String get reset => 'Тазарту';

  @override
  String get ok => 'ОК';

  @override
  String get yes => 'Иә';

  @override
  String get no => 'Жоқ';

  @override
  String get optional => 'Қосымша';

  @override
  String get calories => 'Калориялар';

  @override
  String get protein => 'Протеин';

  @override
  String get carbs => 'Көмірсулар';

  @override
  String get fat => 'Май';

  @override
  String get fiber => 'Талшық';

  @override
  String get water => 'Су';

  @override
  String get steps => 'Қадамдар';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунт';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'жылы';

  @override
  String get bpm => 'соққы/мин';

  @override
  String get hours => 'сағ';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Қызмет көрсету';

  @override
  String get servings => 'Порциялар';

  @override
  String get serving_size => 'Қызмет көрсету мөлшері';

  @override
  String get per_100g => '100 г үшін';

  @override
  String get india => 'Үндістан';

  @override
  String get asia => 'Азия';

  @override
  String get europe => 'Еуропа';

  @override
  String get middle_east => 'Таяу Шығыс';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Үй';

  @override
  String get home_greeting_morning => 'Қайырлы таң';

  @override
  String get home_greeting_afternoon => 'Қайырлы күн';

  @override
  String get home_greeting_evening => 'Қайырлы кеш';

  @override
  String get home_streak_title => 'Гүлдену жолағы';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күндік үзіліс',
      one: '1 күндік үзіліс',
      zero: '0 күндік жол',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Өртенген';

  @override
  String get home_calories_budget => 'Калория бюджеті';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал қалды';
  }

  @override
  String get home_water_title => 'Күнделікті ылғалдандыру';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Қадамдар жүрді';

  @override
  String get home_quick_actions => 'Жылдам әрекеттер';

  @override
  String get home_log_meal => 'Журнал тағамы';

  @override
  String get home_log_water => 'Бөрене суы';

  @override
  String get home_log_workout => 'Жаттығуды тіркеу';

  @override
  String get home_log_weight => 'Журнал салмағы';

  @override
  String get home_insights_title => 'Бүгінгі түсініктер';

  @override
  String get home_quote =>
      'Кішкентай сау таңдаулар гүлденген өзгерістерді жасайды.';

  @override
  String get home_ai_coach_tip => 'Блуми AI жаттықтырушысы';

  @override
  String get home_surroundings => 'Айнала және ауа';

  @override
  String get home_notifications => 'Хабарландырулар';

  @override
  String get home_daily_score => 'Күнделікті сауықтыру көрсеткіші';

  @override
  String get home_view_all => 'Барлығын көру';

  @override
  String get food_diary_title => 'Тамақ күнделігі';

  @override
  String get food_breakfast => 'Таңғы ас';

  @override
  String get food_lunch => 'Түскі ас';

  @override
  String get food_dinner => 'Кешкі ас';

  @override
  String get food_snacks => 'Тағамдар';

  @override
  String get food_add_food => 'Тамақ қосыңыз';

  @override
  String get food_edit_food => 'Тағамды өңдеу';

  @override
  String get food_add_breakfast => 'Таңғы ас қосыңыз';

  @override
  String get food_add_lunch => 'Түскі ас қосыңыз';

  @override
  String get food_add_dinner => 'Кешкі ас қосыңыз';

  @override
  String get food_add_snack => 'Snack қосыңыз';

  @override
  String get food_total_calories => 'Жалпы калориялар';

  @override
  String get food_empty_meal => 'Бұл тағамға әлі ешбір тағам тіркелмеген';

  @override
  String get food_empty_diary => 'Бұл күні тамақ тіркелмеген';

  @override
  String get food_log_first_meal =>
      'Алғашқы дәмді тағамды тіркеу үшін + түймесін түртіңіз';

  @override
  String get food_quick_add => 'Жылдам қосу';

  @override
  String get food_search_hint =>
      'Ыдыстарды, жемістерді, дальдарды, ротилерді іздеңіз ...';

  @override
  String get food_custom_recipe => 'Арнайы тағам және рецепт';

  @override
  String get food_scan_barcode => 'Штрих-кодты сканерлеу';

  @override
  String get food_camera_scan => 'AI тағам сканері';

  @override
  String get food_recent => 'Соңғы тағамдар';

  @override
  String get food_favourites => 'Таңдаулылар';

  @override
  String get food_macro_summary => 'Макронутриенттердің бөлінуі';

  @override
  String get food_delete_meal_confirm =>
      'Бұл элементті шынымен жойғыңыз келе ме?';

  @override
  String get food_item_deleted => 'Азық-түлік жойылды';

  @override
  String get food_remaining => 'қалды';

  @override
  String get food_consumed => 'тұтынылған';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Тағамдарды іздеу';

  @override
  String get foodSearch_scan_barcode => 'Штрих-кодты сканерлеу';

  @override
  String get foodSearch_take_photo => 'Snap Food фотосуреті';

  @override
  String get foodSearch_custom_food => 'Арнайы тағам жасау';

  @override
  String get foodSearch_recent_searches => 'Соңғы іздеулер';

  @override
  String get foodSearch_popular => 'Танымал тағамдар';

  @override
  String get foodSearch_no_results => 'Іздеуіңізге сәйкес тағам жоқ';

  @override
  String get barcode_title => 'Штрих-код сканері';

  @override
  String get barcode_align => 'Штрих-кодты камера жақтауының ішіне туралаңыз';

  @override
  String get barcode_not_found => 'Өнім дерекқордан табылмады';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro көмегімен штрих-кодты сканерлеуге болады';

  @override
  String get camera_title => 'AI тағам сканері';

  @override
  String get camera_tap_hint => 'Тағамыңызды анық суретке түсіріңіз';

  @override
  String get camera_analysing => 'Тағам табағына талдау жасалуда...';

  @override
  String get camera_detected => 'Анықталған элементтер';

  @override
  String get camera_flash => 'Флэш қосу/өшіру';

  @override
  String get camera_retake => 'Фотосуретті қайта түсіру';

  @override
  String get camera_confirm_food => 'Элементтерді растау';

  @override
  String get customFood_title => 'Арнайы тағам және рецепт';

  @override
  String get customFood_name_hint => 'Тағам немесе ингредиент атауы';

  @override
  String get customFood_calories_hint => 'Калориялар (ккал)';

  @override
  String get customFood_protein_hint => 'Ақуыз (г)';

  @override
  String get customFood_carbs_hint => 'Көмірсулар (г)';

  @override
  String get customFood_fat_hint => 'Май (г)';

  @override
  String get customFood_save => 'Рецептті сақтау';

  @override
  String get water_tracker_title => 'Суды бақылау құралы';

  @override
  String get water_daily_target => 'Күнделікті ылғалдандыру мақсаты';

  @override
  String get water_logged_today => 'Бүгін тіркелді';

  @override
  String get water_add_glass => '+250 мл шыны';

  @override
  String get water_add_bottle => '+500 мл бөтелке';

  @override
  String get water_custom_amount => 'Арнаулы сома';

  @override
  String get water_reminder_tip =>
      'Тұрақты қуат алу үшін күні бойы суды үнемі ішіңіз.';

  @override
  String water_logged_toast(Object amount) {
    return 'Тіркелген $amount мл су 💧';
  }

  @override
  String get workout_title => 'Жаттығу журналы';

  @override
  String get workout_add_exercise => 'Жаттығу қосу';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Күш';

  @override
  String get workout_yoga => 'Йога және икемділік';

  @override
  String get workout_duration => 'Ұзақтығы';

  @override
  String get workout_intensity => 'Қарқындылық';

  @override
  String get workout_calories_burned => 'Күйген калориялар';

  @override
  String get workout_empty => 'Бүгін ешқандай жаттығулар тіркелмеген';

  @override
  String get workout_save_success => 'Жаттығу сәтті сақталды!';

  @override
  String get workout_type => 'Жаттығу түрі';

  @override
  String get workout_notes => 'Ескертпелер және рефлексиялар';

  @override
  String get health_overview_title => 'Денсаулық және өмірлік маңызы бар';

  @override
  String get health_heart_rate => 'Жүрек соғу жиілігі';

  @override
  String get health_blood_oxygen => 'Қандағы оттегі (SpO2)';

  @override
  String get health_blood_pressure => 'Қан қысымы';

  @override
  String get health_blood_glucose => 'Қандағы глюкоза';

  @override
  String get health_body_temperature => 'Дене температурасы';

  @override
  String get health_sleep_tracking => 'Ұйқыны бақылау';

  @override
  String get health_weight_tracking => 'Салмақ және дене құрамы';

  @override
  String get health_waist_hip => 'Бел мен жамбас қатынасы';

  @override
  String get health_devices_hub => 'Құрылғылар және Smartwatch хабы';

  @override
  String get health_sync_now => 'Денсаулық деректерін синхрондау';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Соңғы синхрондалған: $time';
  }

  @override
  String get health_manual_entry => 'Денсаулықты қолмен енгізу';

  @override
  String get health_metric_detail => 'Метрика мәліметтері';

  @override
  String get health_connected_sensors => 'Қосылған денсаулық сенсорлары';

  @override
  String get plan_title => 'Күнделікті жоспар';

  @override
  String get plan_weekly_title => 'Апталық сауықтыру жоспары';

  @override
  String get plan_calorie_target => 'Калориялық мақсат';

  @override
  String get plan_water_target => 'Ылғалдандыру мақсаты';

  @override
  String get plan_step_target => 'Қадамдық мақсат';

  @override
  String get plan_sleep_target => 'Ұйқы мақсаты';

  @override
  String get plan_meal_suggestions => 'Тамақтану бойынша ұсыныстар';

  @override
  String get plan_healthy_habits => 'Салауатты әдеттер мен кеңестер';

  @override
  String get plan_coach_advice => 'Bloomi AI жаттықтырушы ұсыныстары';

  @override
  String get plan_generated_title => 'Жекелендірілген күнделікті кесте';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профильді өңдеу';

  @override
  String get profile_name => 'Аты';

  @override
  String get profile_age => 'Жасы';

  @override
  String get profile_gender => 'Жыныс';

  @override
  String get profile_height => 'Биіктігі';

  @override
  String get profile_weight => 'Салмағы';

  @override
  String get profile_goal => 'Негізгі мақсат';

  @override
  String get profile_activity_level => 'Белсенділік деңгейі';

  @override
  String get profile_stats => 'Менің денсаулық статистикам';

  @override
  String get profile_saved => 'Профиль сәтті жаңартылды';

  @override
  String get profile_bmi => 'Дене салмағының индексі (BMI)';

  @override
  String get profile_membership => 'Мүшелік';

  @override
  String get settings => 'Параметрлер';

  @override
  String get preferences_habits => 'ТАҢДАУЛАР ЖӘНЕ ӘДЕТТЕР';

  @override
  String get appearance_theme => 'Сыртқы түрі және тақырыбы';

  @override
  String get appearance_theme_sub =>
      'Қараңғы, ашық, жүйелік режим және қолданба фондық опциялары';

  @override
  String get permissions => 'Рұқсаттар және жүйеге кіру';

  @override
  String get permissions_sub =>
      'Health Connect, қадам сенсорлары, GPS, хабарландырулар және камера';

  @override
  String get reminders_notifications => 'Еске салғыштар мен хабарландырулар';

  @override
  String get reminders_sub =>
      'Тамақтану уақыты, су, салмақты тіркеу және ұйықтау уақыты туралы еске салғыштар';

  @override
  String get units_of_measurement => 'Өлшем бірліктері';

  @override
  String get units_sub =>
      'Метрика (кг, см, мл, км) немесе империялық (фунт, фут/дюйм, ф унция)';

  @override
  String get app_language => 'Қолданба тілі';

  @override
  String get language_sub =>
      'Ағылшын, हिन्दी (хинди), хингли және 195+ жаһандық тілдер';

  @override
  String get home_screen_widgets => 'Негізгі экран виджеттері';

  @override
  String get widgets_sub =>
      'Live Android виджеттері: хаб, қадамдар, су, тамақтану және маскот';

  @override
  String get wear_os_watch_app => 'Wear OS Watch қолданбасы';

  @override
  String get wear_os_sub =>
      'Смарт сағаттың серігі, тақтайшалар, асқынулар және өмірлік маңызы бар';

  @override
  String get goals_wellness => 'МАҚСАТТАР ЖӘНЕ САЛАУАТТЫҚ ТҮСІНІКТЕР';

  @override
  String get nutrition_targets => 'Тамақтану мақсаттары және макро бөлу';

  @override
  String get nutrition_targets_sub =>
      'Мақсатты калория, ақуыз, көмірсулар, май және су';

  @override
  String get weekly_recap => 'Апталық сауықтыру қорытындылары';

  @override
  String get weekly_recap_sub =>
      '7 күндік орташа калория, макропропорция және ең жақсы күн';

  @override
  String get streaks_milestones => 'Жолақтар мен белестер';

  @override
  String get streaks_sub => 'Белсенді гүл жолақтары, белгілер және жетістіктер';

  @override
  String get connected_devices => 'ҚОСЫЛҒАН ҚҰРЫЛҒЫЛАР ЖӘНЕ ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Құрылғылар және Smartwatch хабы';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Айнала және ауа райы';

  @override
  String get surroundings_sub =>
      'Ауа сапасы (AQI), УК индексі және ауа райының ылғалдану жөніндегі кеңестері';

  @override
  String get bloomi_pro => 'Bloomi Pro жазылымы';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 негізгі экран виджеті және өмірлік маңызы бар бақылау';

  @override
  String get about_security => 'ТУРАЛЫ & ҚАУІПСІЗДІК';

  @override
  String get about_bloomi => 'Блум туралы';

  @override
  String get about_bloomi_sub =>
      'Құрастыру спецификациялары, нұсқасы, атрибуттары';

  @override
  String get privacy_policy => 'Құпиялылық саясаты';

  @override
  String get privacy_policy_sub =>
      'Офлайн-бірінші, құрылғыдағы деректер архитектурасы';

  @override
  String get terms_conditions => 'Шарттар мен талаптар';

  @override
  String get terms_conditions_sub =>
      'Қызмет көрсету шарттары және сауықтыру нұсқаулары';

  @override
  String get delete_account => 'Тіркелгі мен деректерді жою';

  @override
  String get delete_account_sub =>
      'Жергілікті SQLite деректері мен бұлттың сақтық көшірмелерін қайтымсыз өшіріңіз';

  @override
  String get healthy_habits =>
      'Нәзік, тұрақты сауықтыру әдеттерін қалыптастырыңыз';

  @override
  String get all_logs => 'Менің бақыланатын деректерім және журналдарым';

  @override
  String get search_language => 'Тіл немесе ана жазуы бойынша іздеу...';

  @override
  String get languages_available => 'Қол жетімді тілдер';

  @override
  String get no_matching_languages => 'Сәйкес тіл табылмады';

  @override
  String get try_searching =>
      'Жергілікті сценарий немесе ағылшын емлесі бойынша іздеп көріңіз';

  @override
  String get partially_translated => 'Ішінара аударылған';

  @override
  String get complete_translation => 'Аяқталды';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Тіл $name ( $nativeName ) болып орнатылды';
  }

  @override
  String get surroundings_title => 'Айнала және қоршаған орта';

  @override
  String get surroundings_aqi => 'Ауа сапасының индексі';

  @override
  String get surroundings_uv => 'УК индексі';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Ылғалдылық';

  @override
  String get surroundings_hydration_advice =>
      'Ағымдағы ауа-райы жағдайында жақсы ылғалдандырыңыз.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Тамақ іздеу';

  @override
  String get food_quick_barcode => 'Штрих-кодты сканерлеу 👑';

  @override
  String get food_quick_water => 'Су қосыңыз';

  @override
  String get food_quick_custom => 'Арнайы тағам';

  @override
  String get surroundings_good => 'Жақсы';

  @override
  String get surroundings_moderate => 'Орташа';

  @override
  String get surroundings_unhealthy => 'Дені сау емес';

  @override
  String get notifications_title => 'Хабарландырулар мен ескертулер';

  @override
  String get notifications_empty => 'Жаңа хабарландырулар жоқ';

  @override
  String get notifications_mark_read => 'Барлығын оқылған деп белгілеңіз';

  @override
  String get notifications_clear => 'Барлығын өшіру';

  @override
  String get reminders => 'Еске салғыш параметрлері';

  @override
  String get notifications => 'Хабарландырулар';

  @override
  String get reminders_breakfast_title => 'Таңғы ас туралы еске салу 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Қайырлы таң! $time тамақтандыратын таңғы ас уақыты.';
  }

  @override
  String get reminders_lunch_title => 'Түскі ас туралы еске салу 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Үзіліс жасап, $time теңдестірілген, мұқият түскі ас ішіңіз.';
  }

  @override
  String get reminders_dinner_title => 'Кешкі ас туралы еске салу 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time жеңіл, қанағаттанарлық кешкі ас уақыты.';
  }

  @override
  String get reminders_water_title => 'Ылғалдандыру 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Бір стакан таза су ішетін уақыт! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Апталық салмақ өлшеу ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Апталық дене көрсеткіштерін Bloomi сайтында қадағалаңыз ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Ұйықтау уақыты 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Демалыңыз және тыныш ұйқыға дайындалыңыз ( $time ).';
  }

  @override
  String get onboard_welcome => 'Блумге қош келдіңіз';

  @override
  String get onboard_sub =>
      'Сіздің достық, офлайн режиміндегі бірінші денсаулық және тамақтану серіктесіңіз.';

  @override
  String get onboard_get_started => 'Жұмысты бастау';

  @override
  String get onboard_sign_in => 'Жүйеге кіру';

  @override
  String get onboard_skip => 'Өткізіп жіберу';

  @override
  String get onboard_choose_goal =>
      'Сіздің негізгі сауықтыру мақсатыңыз қандай?';

  @override
  String get onboard_goal_weight_loss => 'Жұмсақ салмақ жоғалту';

  @override
  String get onboard_goal_muscle => 'Бұлшықеттің өсуі және күші';

  @override
  String get onboard_goal_energy => 'Күнделікті энергия және сергектік';

  @override
  String get onboard_goal_habits => 'Салауатты ақылмен тамақтану';

  @override
  String get onboard_about_you => 'Бізге өзіңіз туралы айтыңыз';

  @override
  String get onboard_lifestyle => 'Сіздің күнделікті жұмысыңыз';

  @override
  String get onboard_permissions_title => 'Рұқсаттар және жүйеге кіру';

  @override
  String get onboard_permissions_sub =>
      'Қадамдарды, жаттығуларды және еске салғыштарды синхрондауға рұқсат беріңіз.';

  @override
  String get onboard_plan_ready_title => 'Жеке жоспарыңыз дайын!';

  @override
  String get onboard_plan_ready_sub =>
      'Біз тек сіз үшін нәзік, жекелендірілген тамақтану және сауықтыру жол картасын жасадық.';

  @override
  String get onboard_enter_bloomi => 'Блумге кіріңіз';

  @override
  String get insights_weekly_report => 'Апталық сауықтыру қорытындылары';

  @override
  String insights_best_day(Object day) {
    return 'Үздік тұрақтылық күні: $day';
  }

  @override
  String get insights_streaks_badges => 'Жолақтар мен белестер';

  @override
  String insights_unlocked_on(Object date) {
    return 'Құлып $date күні ашылды';
  }

  @override
  String get insights_keep_going => 'Фантастикалық прогресті жалғастырыңыз!';

  @override
  String get widgets_title => 'Негізгі экран виджеттері';

  @override
  String widgets_active_count(Object count) {
    return 'Белсенді виджеттер: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness хабы';

  @override
  String get widgets_steps_title => 'Қадамдар және белсенді қоңырау';

  @override
  String get widgets_water_title => 'Ылғалдандырудың жылдам журналы';

  @override
  String get widgets_mascot_title => 'Блум маскотының серігі';

  @override
  String get wear_os_title => 'OS Smartwatch киіңіз';

  @override
  String get wear_os_connected => 'Watch қолданбасына қосылды';

  @override
  String get wear_os_sync => 'Көру деректерін синхрондау';

  @override
  String get theme_title => 'Сыртқы түрі және тақырыбы';

  @override
  String get theme_mode => 'Тақырып режимі';

  @override
  String get theme_light => 'Жарық';

  @override
  String get theme_dark => 'Қараңғы';

  @override
  String get theme_system => 'Жүйе';

  @override
  String get theme_background_palette => 'Фон палитрасы';

  @override
  String get units_title => 'Өлшем бірліктері';

  @override
  String get units_metric => 'Метрика (кг, см, мл)';

  @override
  String get units_imperial => 'Императорлық (фунт, дюйм, ф унция)';

  @override
  String get home_unable_load => 'Бақылау тақтасын жүктеу мүмкін емес';

  @override
  String get home_health_permission_req => 'Health Connect рұқсаты қажет';

  @override
  String get home_health_permission_desc =>
      'Bloomi нақты уақытта нақты қадамдарды, жүрек соғу жиілігін және мобильді үй виджеттерін синхрондау үшін Health Connect рұқсатын талап етеді.';

  @override
  String get home_allow_health => 'Денсаулыққа қосылуға рұқсат беріңіз';

  @override
  String get home_ready_mindful_day => 'Саналы күнге дайынсыз ба? ✨';

  @override
  String get home_quick_add => 'Жылдам қосу';

  @override
  String get home_live_gps => 'Тікелей GPS';

  @override
  String get home_calories_remaining_label => 'ҚАЛАРИЯЛАР';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Жегені: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Суды бақылау құралы үшін түртіңіз 💧';

  @override
  String get home_water_goal_reached => 'Күнделікті мақсатқа жетті 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Күнделікті мақсатқа $remaining мл';
  }

  @override
  String get home_details => 'Мәліметтер';

  @override
  String get home_upgrade_plan_desc =>
      'Жекелендірілген күнделікті мақсаттар мен AI жоспарын ашу үшін жаңартыңыз';

  @override
  String get home_unlock => 'Құлыпты ашу 👑';

  @override
  String get home_quick_log_hint => 'Сауықтыру жазбасын жылдам жазып алыңыз';

  @override
  String get food_serving_size => 'Қызмет көрсету мөлшері';

  @override
  String get food_serving_grams => 'Қызмет көрсету (г)';

  @override
  String get food_number_servings => 'Сыбаға саны';

  @override
  String get food_calories_per_serving => 'Бір порциядағы калория';

  @override
  String get food_recipe_ingredients => 'Ингредиенттер';

  @override
  String get food_recipe_add_ingredient => 'Ингредиент қосыңыз';

  @override
  String get food_recipe_directions => 'Нұсқаулар мен ескертпелер';

  @override
  String get food_recipe_total => 'Толық рецепт тамақтану';

  @override
  String get food_recipe_per_serving => 'Бір қызмет көрсету тағамы';

  @override
  String get food_recipe_saved_toast => 'Арнаулы тағам сәтті сақталды!';

  @override
  String get food_barcode_found => 'Өнім табылды!';

  @override
  String get food_barcode_not_found_desc =>
      'Біз бұл штрих-кодты ашық дерекқордан таба алмадық. Сіз оны арнайы тағам ретінде қосуға болады.';

  @override
  String get food_add_custom_btn => 'Арнаулы тағамды қосыңыз';

  @override
  String get food_scan_again => 'Қайта сканерлеу';

  @override
  String get food_review_items => 'Анықталған тағамдарды қарап шығыңыз';

  @override
  String get food_review_hint =>
      'Сандарды реттеңіз немесе кез келген танылмаған элементті жойыңыз';

  @override
  String get food_log_selected => 'Таңдалған тағамдарды тіркеу';

  @override
  String get food_favourites_title => 'Сүйікті тағамдар';

  @override
  String get food_recent_title => 'Соңғы тағамдар';

  @override
  String get food_no_favourites =>
      'Әлі сүйікті тағамдар жоқ. Мұнда сақтау үшін кез келген тағамның жүрегін түртіңіз.';

  @override
  String get food_no_recents => 'Жақында тіркелген тағамдар табылмады.';

  @override
  String get food_nutrition_details_title => 'Күнделікті тамақтану мәліметтері';

  @override
  String get food_macro_protein_label => 'Ақуыздың ыдырауы';

  @override
  String get food_macro_carbs_label => 'Көмірсулардың бөлінуі';

  @override
  String get food_macro_fat_label => 'Майдың бөлінуі';

  @override
  String get food_macro_fiber_label => 'Талшықты бұзу';

  @override
  String get food_daily_target_comparison => 'Мақсатты салыстыру';

  @override
  String food_target_label(Object target) {
    return 'Мақсат: $target';
  }

  @override
  String get food_edit_entry => 'Күнделік жазбасын өңдеу';

  @override
  String get food_delete_entry => 'Жазбаны жою';

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
    return '$current/$target мл';
  }

  @override
  String get water_intake_history => 'Бүгінгі су журналдары';

  @override
  String get water_no_logs_today =>
      'Бүгінге дейін су кірген жоқ. Ылғалдандырыңыз және жылдам қосу түймесін түртіңіз!';

  @override
  String get water_adjust_goal => 'Күнделікті мақсатты реттеңіз';

  @override
  String get health_connect_banner => 'Health Connect желісіне қосылған';

  @override
  String get health_vitals_summary => 'Күнделікті денсаулық маңызды';

  @override
  String get health_latest_heart_rate => 'Соңғы жүрек соғу жиілігі';

  @override
  String get health_latest_bp => 'Қан қысымы';

  @override
  String get health_latest_spo2 => 'Қандағы оттегі';

  @override
  String get health_latest_glucose => 'Қандағы глюкоза';

  @override
  String get health_latest_weight => 'Салмағы';

  @override
  String get health_latest_sleep => 'Ұйқы ұзақтығы';

  @override
  String get health_add_manual => 'Қолмен өлшеуді қосыңыз';

  @override
  String get health_history_trends => 'Тарихи тенденциялар';

  @override
  String get health_sync_success => 'Денсаулық деректері сәтті синхрондалды!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours сағ $mins мин';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm соққы/мин';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic мм.сын.бағ';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title =>
      'Қосылған құрылғылар және киетін құрылғылар';

  @override
  String get health_devices_desc =>
      'Жұптастырылған смарт сағаттарды, фитнес трекерлерді және денсаулық сенсорларын басқарыңыз.';

  @override
  String get health_workout_editor_title => 'Жаттығуды өңдеу';

  @override
  String get health_workout_name_label => 'Жаттығу атауы';

  @override
  String get health_workout_duration_label => 'Ұзақтығы (минут)';

  @override
  String get health_workout_calories_label => 'Болжалды калориялар (ккал)';

  @override
  String get health_workout_date_label => 'Күні мен уақыты';

  @override
  String get plan_daily_wellness_roadmap =>
      'Сіздің жекелендірілген жол картаңыз';

  @override
  String get plan_morning_routine => 'Таңертеңгілік тәртіп';

  @override
  String get plan_afternoon_routine => 'Күндізгі сауықтыру';

  @override
  String get plan_evening_routine => 'Кешкі демалыс';

  @override
  String get plan_coach_badge => 'Блуми AI жаттықтырушысы';

  @override
  String get plan_weekly_overview => '7 күндік сауықтыру фокусы';

  @override
  String get plan_targets_title => 'Сауықтыру мақсаттары мен мақсаттары';

  @override
  String get plan_calorie_budget_label => 'Күнделікті калория бюджеті';

  @override
  String get plan_water_budget_label => 'Күнделікті су мақсаты';

  @override
  String get plan_step_budget_label => 'Күнделікті қадам мақсаты';

  @override
  String get plan_macro_split_label => 'Макронутриент қатынасы';

  @override
  String get profile_personal_details => 'Жеке мәліметтер';

  @override
  String get profile_body_stats => 'Дене өлшемдері';

  @override
  String get profile_app_preferences =>
      'Параметрлер және қолданба параметрлері';

  @override
  String get profile_edit_name_hint => 'Сіздің атыңыз';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Биіктігі ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Салмағы ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Жасы';

  @override
  String get profile_gender_male => 'Еркек';

  @override
  String get profile_gender_female => 'Әйел';

  @override
  String get profile_gender_other => 'Басқа / Айтпағанды қалаймын';

  @override
  String get profile_activity_sedentary =>
      'Отырықшы (жаттығулар аз немесе мүлдем жоқ)';

  @override
  String get profile_activity_light => 'Жеңіл белсенді (аптасына 1-3 күн)';

  @override
  String get profile_activity_moderate => 'Орташа белсенді (аптасына 3-5 күн)';

  @override
  String get profile_activity_very => 'Өте белсенді (аптасына 6-7 күн)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion қолданбасы';

  @override
  String get settings_wear_os_desc =>
      'Калорияларды, суды және қадамдарды көру үшін Wear OS сағатына Bloomi тақтасын және күрделілігін орнатыңыз.';

  @override
  String get settings_widgets_header => 'Интерактивті Android виджеттері';

  @override
  String get settings_widgets_desc =>
      'Жылдам жаңартулар үшін нақты уақыттағы виджеттерді құрылғының негізгі экранына бекітіңіз.';

  @override
  String get settings_about_header => 'Блум туралы';

  @override
  String get settings_about_version => 'Нұсқа';

  @override
  String get settings_about_build => '100 құрастыру';

  @override
  String get settings_about_credits =>
      'Саналы, салауатты өмір сүру үшін жасалған.';

  @override
  String get settings_terms_header => 'Ережелер мен шарттар';

  @override
  String get settings_privacy_header => 'Құпиялық саясаты';

  @override
  String get settings_delete_header => 'Тіркелгі мен деректерді жою';

  @override
  String get settings_delete_warning =>
      'Бұл әрекетті қайтару мүмкін емес. Барлық тағамдарыңыз, жаттығуларыңыз, виталдеріңіз және профиліңіз біржола жойылады.';

  @override
  String get settings_delete_confirm_btn => 'Біржола жою';

  @override
  String get onboard_welcome_headline => 'Bloomi-ге қош келдіңіз ✨';

  @override
  String get onboard_welcome_tagline =>
      'Сіздің өміріңізде жасалған нәзік, мұқият денсаулықты бақылау.';

  @override
  String get onboard_step_about => 'Сіз туралы';

  @override
  String get onboard_step_goals => 'Сіздің мақсаттарыңыз';

  @override
  String get onboard_step_lifestyle => 'Күнделікті әдеттер';

  @override
  String get onboard_step_permissions => 'Рұқсаттар';

  @override
  String get onboard_step_plan => 'Дайын!';

  @override
  String get onboard_health_connect_perm => 'Health Connect қатынасы';

  @override
  String get onboard_step_sensors_perm => 'Қадам санауыш сенсоры';

  @override
  String get onboard_notif_perm => 'Еске салғыштар мен хабарландырулар';

  @override
  String get onboard_camera_perm => 'Камера (штрихкод және тағам сканері)';

  @override
  String get onboard_grant_permissions => 'Рұқсаттар беру';

  @override
  String get onboard_continue_dashboard => 'Басқару тақтасын ашыңыз';

  @override
  String get notif_channel_hydration_name => 'Ылғалдандырғыштар';

  @override
  String get notif_channel_hydration_desc =>
      'Күні бойы жұмсақ су туралы ескертулер';

  @override
  String get notif_channel_nutrition_name =>
      'Тамақтану және тамақтану туралы еске салғыштар';

  @override
  String get notif_channel_nutrition_desc =>
      'Таңғы ас, түскі және кешкі ас туралы ескертулер';

  @override
  String get notif_channel_steps_name => 'Қадам кезеңдері';

  @override
  String get notif_channel_steps_desc =>
      'Күнделікті қадам мақсаттарына жеткендегі мерекелер';

  @override
  String get notif_channel_vitals_name =>
      'Денсаулық және өмірлік маңызды тексерулер';

  @override
  String get notif_channel_vitals_desc =>
      'Салмақ және ұйықтау уақыты туралы еске салғыштар';

  @override
  String get notif_action_log_water => '💧 Журнал +250мл';

  @override
  String get notif_action_snooze => '15 м кейінге қалдыру';

  @override
  String get notif_action_log_meal => '🥗 Бөрене тағамы';

  @override
  String get language => 'Тіл';

  @override
  String get share => 'Бөлісу';

  @override
  String common_days(Object count) {
    return '$count күн бұрын';
  }
}
