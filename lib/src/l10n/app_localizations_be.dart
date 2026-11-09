// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get app_name => 'Блумі';

  @override
  String get nav_home => 'дадому';

  @override
  String get nav_today => 'сёння';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'харчаванне';

  @override
  String get nav_food_diary => 'Дзённік харчавання';

  @override
  String get nav_workout => 'Журнал трэніровак';

  @override
  String get nav_health => 'Здароўе';

  @override
  String get nav_profile => 'Профіль';

  @override
  String get save => 'Захаваць';

  @override
  String get cancel => 'Адмяніць';

  @override
  String get delete => 'Выдаліць';

  @override
  String get edit => 'Рэдагаваць';

  @override
  String get done => 'Гатова';

  @override
  String get close => 'Блізка';

  @override
  String get back => 'Назад';

  @override
  String get next => 'Далей';

  @override
  String get continue_btn => 'Працягнуць';

  @override
  String get confirm => 'Пацвердзіць';

  @override
  String get search => 'Пошук';

  @override
  String get filter => 'Фільтраваць';

  @override
  String get all => 'Усе';

  @override
  String get active => 'Актыўны';

  @override
  String get today => 'сёння';

  @override
  String get yesterday => 'Учора';

  @override
  String get tomorrow => 'Заўтра';

  @override
  String get add => 'Дадаць';

  @override
  String get remove => 'Выдаліць';

  @override
  String get refresh => 'Абнавіць';

  @override
  String get retry => 'Паўтарыць';

  @override
  String get error => 'Памылка';

  @override
  String get success => 'Поспех';

  @override
  String get loading => 'Загрузка...';

  @override
  String get no_data => 'Дадзеных няма';

  @override
  String get offline => 'Аўтаномны рэжым';

  @override
  String get offline_sub =>
      'Змены будуць сінхранізаваны пасля паўторнага падключэння';

  @override
  String get undo => 'Адмяніць';

  @override
  String get portion => 'Порцыя';

  @override
  String get quantity => 'Колькасць';

  @override
  String get unit => 'Адзінка';

  @override
  String get clear => 'Ясна';

  @override
  String get select => 'Выберыце';

  @override
  String get apply => 'Ужыць';

  @override
  String get reset => 'Скінуць';

  @override
  String get ok => 'добра';

  @override
  String get yes => 'так';

  @override
  String get no => 'няма';

  @override
  String get optional => 'Дадаткова';

  @override
  String get calories => 'Калорыі';

  @override
  String get protein => 'Бялок';

  @override
  String get carbs => 'Вугляводы';

  @override
  String get fat => 'Тлушч';

  @override
  String get fiber => 'Абалоніна';

  @override
  String get water => 'вада';

  @override
  String get steps => 'крокі';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'г';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунты';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'ст';

  @override
  String get bpm => 'удараў у хвіліну';

  @override
  String get hours => 'гадзіны';

  @override
  String get minutes => 'мін';

  @override
  String get serving => 'Сервіроўка';

  @override
  String get servings => 'Порцыі';

  @override
  String get serving_size => 'Памер порцыі';

  @override
  String get per_100g => 'на 100г';

  @override
  String get india => 'Індыя';

  @override
  String get asia => 'Азія';

  @override
  String get europe => 'Еўропа';

  @override
  String get middle_east => 'Блізкі Ўсход';

  @override
  String get africa => 'Афрыка';

  @override
  String get americas => 'Амерыкі';

  @override
  String get home_title => 'дадому';

  @override
  String get home_greeting_morning => 'Добрай раніцы';

  @override
  String get home_greeting_afternoon => 'Добры дзень';

  @override
  String get home_greeting_evening => 'Добры вечар';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дзённая серыя',
      one: '1-дзённая серыя',
      zero: '0 дзён запар',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Спалілі';

  @override
  String get home_calories_budget => 'Бюджэт калорый';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Засталося $kcal ккал';
  }

  @override
  String get home_water_title => 'Штодзённае ўвільгатненне';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Крокі ішлі';

  @override
  String get home_quick_actions => 'Хуткія дзеянні';

  @override
  String get home_log_meal => 'Часопіс';

  @override
  String get home_log_water => 'Лог вады';

  @override
  String get home_log_workout => 'Часопіс трэніроўкі';

  @override
  String get home_log_weight => 'Вага часопіса';

  @override
  String get home_insights_title => 'Сённяшняя інфармацыя';

  @override
  String get home_quote =>
      'Невялікі здаровы выбар стварае квітнеючыя пераўтварэнні.';

  @override
  String get home_ai_coach_tip => 'Блумі AI трэнер';

  @override
  String get home_surroundings => 'Наваколле і паветра';

  @override
  String get home_notifications => 'Апавяшчэнні';

  @override
  String get home_daily_score => 'Штодзённы паказчык здароўя';

  @override
  String get home_view_all => 'Прагледзець усе';

  @override
  String get food_diary_title => 'Дзённік харчавання';

  @override
  String get food_breakfast => 'Сняданак';

  @override
  String get food_lunch => 'Абед';

  @override
  String get food_dinner => 'Вячэра';

  @override
  String get food_snacks => 'Закускі';

  @override
  String get food_add_food => 'Дадаць ежу';

  @override
  String get food_edit_food => 'Рэдагаваць ежу';

  @override
  String get food_add_breakfast => 'Дадайце сняданак';

  @override
  String get food_add_lunch => 'Дадайце абед';

  @override
  String get food_add_dinner => 'Дадайце вячэру';

  @override
  String get food_add_snack => 'Дадайце закуску';

  @override
  String get food_total_calories => 'Агульная колькасць калорый';

  @override
  String get food_empty_meal =>
      'Для гэтага прыёму ежы яшчэ не зарэгістравана прадуктаў';

  @override
  String get food_empty_diary => 'За гэты дзень прыём ежы не зарэгістраваны';

  @override
  String get food_log_first_meal =>
      'Націсніце +, каб зарэгістраваць сваю першую смачную ежу';

  @override
  String get food_quick_add => 'Хуткае даданне';

  @override
  String get food_search_hint => 'Шукаць стравы, садавіна, дал, році...';

  @override
  String get food_custom_recipe => 'Індывідуальныя стравы і рэцэпты';

  @override
  String get food_scan_barcode => 'Сканаваць штрых-код';

  @override
  String get food_camera_scan => 'Сканер харчовых прадуктаў AI';

  @override
  String get food_recent => 'Апошнія прадукты';

  @override
  String get food_favourites => 'Выбранае';

  @override
  String get food_macro_summary => 'Расшчапленне макраэлементаў';

  @override
  String get food_delete_meal_confirm =>
      'Вы ўпэўнены, што хочаце выдаліць гэты элемент?';

  @override
  String get food_item_deleted => 'Ежа выдалена';

  @override
  String get food_remaining => 'засталося';

  @override
  String get food_consumed => 'спажываецца';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Пошук ежы';

  @override
  String get foodSearch_scan_barcode => 'Сканаваць штрых-код';

  @override
  String get foodSearch_take_photo => 'Фота хуткай ежы';

  @override
  String get foodSearch_custom_food => 'Стварыце ежу на заказ';

  @override
  String get foodSearch_recent_searches => 'Апошнія пошукі';

  @override
  String get foodSearch_popular => 'Папулярныя стравы';

  @override
  String get foodSearch_no_results =>
      'Няма прадуктаў, якія адпавядаюць вашаму пошуку';

  @override
  String get barcode_title => 'Сканер штрых-кода';

  @override
  String get barcode_align => 'Выраўнуйце штрых-код у рамцы камеры';

  @override
  String get barcode_not_found => 'Прадукт не знойдзены ў базе дадзеных';

  @override
  String get barcode_premium_feature =>
      'Сканаванне штрых-кода даступна з Bloomi Pro';

  @override
  String get camera_title => 'Сканер харчовых прадуктаў AI';

  @override
  String get camera_tap_hint => 'Зрабіце выразнае фота вашай стравы';

  @override
  String get camera_analysing => 'Аналіз талеркі з ежай...';

  @override
  String get camera_detected => 'Выяўленыя элементы';

  @override
  String get camera_flash => 'Уключыць успышку';

  @override
  String get camera_retake => 'Паўтарыць фота';

  @override
  String get camera_confirm_food => 'Пацвердзіць элементы';

  @override
  String get customFood_title => 'Індывідуальныя стравы і рэцэпты';

  @override
  String get customFood_name_hint => 'Назва стравы або інгрэдыента';

  @override
  String get customFood_calories_hint => 'Калорыі (ккал)';

  @override
  String get customFood_protein_hint => 'Бялок (г)';

  @override
  String get customFood_carbs_hint => 'Вугляводы (г)';

  @override
  String get customFood_fat_hint => 'Тлушч (г)';

  @override
  String get customFood_save => 'Захаваць рэцэпт';

  @override
  String get water_tracker_title => 'Трэкер вады';

  @override
  String get water_daily_target => 'Штодзённая мэта ўвільгатнення';

  @override
  String get water_logged_today => 'Зарэгістраваны сёння';

  @override
  String get water_add_glass => 'Шклянка +250 мл';

  @override
  String get water_add_bottle => 'Бутэлька +500 мл';

  @override
  String get water_custom_amount => 'Нестандартная сума';

  @override
  String get water_reminder_tip =>
      'Піце ваду рэгулярна на працягу дня для стабільнай энергіі.';

  @override
  String water_logged_toast(Object amount) {
    return 'Зарэгістравана $amount мл вады 💧';
  }

  @override
  String get workout_title => 'Журнал трэніровак';

  @override
  String get workout_add_exercise => 'Дадаць трэніроўку';

  @override
  String get workout_cardio => 'Кардыё';

  @override
  String get workout_strength => 'Сіла';

  @override
  String get workout_yoga => 'Ёга і гнуткасць';

  @override
  String get workout_duration => 'Працягласць';

  @override
  String get workout_intensity => 'Інтэнсіўнасць';

  @override
  String get workout_calories_burned => 'Спаленыя калорыі';

  @override
  String get workout_empty => 'Сёння трэніровак не зарэгістравана';

  @override
  String get workout_save_success => 'Трэніроўка паспяхова захавана!';

  @override
  String get workout_type => 'Тып трэніроўкі';

  @override
  String get workout_notes => 'Нататкі і разважанні';

  @override
  String get health_overview_title => 'Здароўе і жыццёва важныя паказчыкі';

  @override
  String get health_heart_rate => 'Частата сардэчных скарачэнняў';

  @override
  String get health_blood_oxygen => 'Кісларод крыві (SpO2)';

  @override
  String get health_blood_pressure => 'Артэрыяльны ціск';

  @override
  String get health_blood_glucose => 'Глюкоза ў крыві';

  @override
  String get health_body_temperature => 'Тэмпература цела';

  @override
  String get health_sleep_tracking => 'Адсочванне сну';

  @override
  String get health_weight_tracking => 'Вага і склад цела';

  @override
  String get health_waist_hip => 'Суадносіны таліі і сцёгнаў';

  @override
  String get health_devices_hub => 'Прылады і SmartWatch Hub';

  @override
  String get health_sync_now => 'Сінхранізацыя даных здароўя';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Апошняя сінхранізацыя: $time';
  }

  @override
  String get health_manual_entry => 'Ручны ўвод здароўя';

  @override
  String get health_metric_detail => 'Метрычныя дэталі';

  @override
  String get health_connected_sensors => 'Падключаныя датчыкі здароўя';

  @override
  String get plan_title => 'Штодзённы план';

  @override
  String get plan_weekly_title => 'Штотыднёвы аздараўленчы план';

  @override
  String get plan_calorie_target => 'Мэтавая колькасць калорый';

  @override
  String get plan_water_target => 'Мэта гідратацыі';

  @override
  String get plan_step_target => 'Крок Мэта';

  @override
  String get plan_sleep_target => 'Мэта сну';

  @override
  String get plan_meal_suggestions => 'Прапановы па ежы';

  @override
  String get plan_healthy_habits => 'Здаровыя звычкі і парады';

  @override
  String get plan_coach_advice => 'Рэкамендацыі трэнера Bloomi AI';

  @override
  String get plan_generated_title => 'Персаналізаваны штодзённы расклад';

  @override
  String get profile_title => 'Профіль';

  @override
  String get profile_edit => 'Рэдагаваць профіль';

  @override
  String get profile_name => 'Імя';

  @override
  String get profile_age => 'Узрост';

  @override
  String get profile_gender => 'Пол';

  @override
  String get profile_height => 'Вышыня';

  @override
  String get profile_weight => 'Вага';

  @override
  String get profile_goal => 'Асноўная мэта';

  @override
  String get profile_activity_level => 'Узровень актыўнасці';

  @override
  String get profile_stats => 'Мая статыстыка здароўя';

  @override
  String get profile_saved => 'Профіль паспяхова абноўлены';

  @override
  String get profile_bmi => 'Індэкс масы цела (ІМТ)';

  @override
  String get profile_membership => 'Сяброўства';

  @override
  String get settings => 'Налады';

  @override
  String get preferences_habits => 'ПЕРАВЕРГІ І ЗВЫЧКІ';

  @override
  String get appearance_theme => 'Знешні выгляд і тэма';

  @override
  String get appearance_theme_sub =>
      'Цёмны, светлы, сістэмны рэжым і параметры фону праграмы';

  @override
  String get permissions => 'Дазволы і доступ да сістэмы';

  @override
  String get permissions_sub =>
      'Health Connect, крокавыя датчыкі, GPS, апавяшчэнні і камера';

  @override
  String get reminders_notifications => 'Напаміны і апавяшчэнні';

  @override
  String get reminders_sub =>
      'Час прыёму ежы, вада, рэгістрацыя вагі і напаміны перад сном';

  @override
  String get units_of_measurement => 'Адзінкі вымярэння';

  @override
  String get units_sub =>
      'Метрычная (кг, см, мл, км) або імперская (фунты, футы/цалі, вадкія унцыі)';

  @override
  String get app_language => 'Мова праграмы';

  @override
  String get language_sub =>
      'англійская, हिन्दी (хіндзі), хінгліш і больш за 195 моў свету';

  @override
  String get home_screen_widgets => 'Віджэты галоўнага экрана';

  @override
  String get widgets_sub =>
      'Жывыя віджэты Android: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Спадарожнік SmartWatch, пліткі, складанасці і жывыя паказчыкі';

  @override
  String get goals_wellness => 'МЭТЫ І ДЗЯРОЎНЫЯ ІНГЭТЫКІ';

  @override
  String get nutrition_targets => 'Мэты харчавання і макраспліт';

  @override
  String get nutrition_targets_sub =>
      'Мэтавая колькасць калорый, бялкоў, вугляводаў, тлушчаў і вады';

  @override
  String get weekly_recap => 'Штотыднёвы аздараўленчы агляд';

  @override
  String get weekly_recap_sub =>
      'Сярэдняя каларыйнасць за 7 дзён, макрасуадносіны і лепшы дзень';

  @override
  String get streaks_milestones => 'Паласы і вехі';

  @override
  String get streaks_sub => 'Актыўныя палосы кветак, значкі і дасягненні';

  @override
  String get connected_devices => 'ПАДКЛЮЧАНЫЯ ПРЫЛАДЫ І ЭКАСІСТЭМА';

  @override
  String get devices_hub => 'Прылады і SmartWatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Наваколле і надвор\'е';

  @override
  String get surroundings_sub =>
      'Якасць паветра (AQI), УФ-індэкс і парады па гідратацыі надвор\'я';

  @override
  String get bloomi_pro => 'Падпіска Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 віджэтаў для галоўнага экрана і адсочванне жыццёвых паказчыкаў';

  @override
  String get about_security => 'ПРА І БЯСПЕКА';

  @override
  String get about_bloomi => 'Пра Блюмі';

  @override
  String get about_bloomi_sub => 'Спецыфікацыі зборкі, версія, атрыбуцыі';

  @override
  String get privacy_policy => 'Палітыка прыватнасці';

  @override
  String get privacy_policy_sub =>
      'Па-першае, аўтаномная архітэктура даных на прыладзе';

  @override
  String get terms_conditions => 'Правілы і ўмовы';

  @override
  String get terms_conditions_sub =>
      'Умовы абслугоўвання і аздараўленчыя рэкамендацыі';

  @override
  String get delete_account => 'Выдаліць уліковы запіс і дадзеныя';

  @override
  String get delete_account_sub =>
      'Незваротна сцерці лакальныя даныя SQLite і рэзервовыя копіі ў воблаку';

  @override
  String get healthy_habits =>
      'Выпрацуйце мяккія, працяглыя звычкі добрага самаадчування';

  @override
  String get all_logs => 'Мае адсочваныя даныя і журналы';

  @override
  String get search_language => 'Пошук па мове або роднай пісьменнасці...';

  @override
  String get languages_available => 'Даступныя мовы';

  @override
  String get no_matching_languages => 'Адпаведныя мовы не знойдзены';

  @override
  String get try_searching =>
      'Паспрабуйце шукаць па роднай пісьменнасці або англійскай мове';

  @override
  String get partially_translated => 'Часткова перакладзены';

  @override
  String get complete_translation => 'Поўнае';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Усталявана мова $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Навакольнае асяроддзе';

  @override
  String get surroundings_aqi => 'Індэкс якасці паветра';

  @override
  String get surroundings_uv => 'УФ-індэкс';

  @override
  String get surroundings_temp => 'тэмпература';

  @override
  String get surroundings_humidity => 'Вільготнасць';

  @override
  String get surroundings_hydration_advice =>
      'Заставайцеся ўвільготненым у цяперашніх умовах надвор\'я.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Пошук ежы';

  @override
  String get food_quick_barcode => 'Сканіруйце штрых-код 👑';

  @override
  String get food_quick_water => 'Дадаць ваду';

  @override
  String get food_quick_custom => 'Харчаванне на заказ';

  @override
  String get surroundings_good => 'Добра';

  @override
  String get surroundings_moderate => 'Умераны';

  @override
  String get surroundings_unhealthy => 'Нездаровае';

  @override
  String get notifications_title => 'Апавяшчэнні і абвесткі';

  @override
  String get notifications_empty => 'Няма новых апавяшчэнняў';

  @override
  String get notifications_mark_read => 'Пазначыць усё як прачытанае';

  @override
  String get notifications_clear => 'Ачысціць усе';

  @override
  String get reminders => 'Налады напамінкаў';

  @override
  String get notifications => 'Push-апавяшчэнні';

  @override
  String get reminders_breakfast_title => 'Напамін пра сняданак 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Добрай раніцы! Час сытнага сняданку ў $time.';
  }

  @override
  String get reminders_lunch_title => 'Напамін аб абедзе 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Зрабіце паўзу і атрымлівайце асалоду ад збалансаванага, уважлівага абеду ў $time.';
  }

  @override
  String get reminders_dinner_title => 'Напамін аб вячэры 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Час лёгкага, сытнага абеду ў $time.';
  }

  @override
  String get reminders_water_title => 'Падштурхоўванне да ўвільгатнення 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Час выпіць шклянку свежай вады! ($time)';
  }

  @override
  String get reminders_weight_title => 'Штотыднёвае ўзважванне ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Адсочвайце штотыднёвыя паказчыкі вашага цела на Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Адпачынак перад сном 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Расслабцеся і падрыхтуйцеся да спакойнага сну ($time).';
  }

  @override
  String get onboard_welcome => 'Сардэчна запрашаем у Блумі';

  @override
  String get onboard_sub =>
      'Ваш прыязны, афлайн-першы спадарожнік па пытаннях здароўя і харчавання.';

  @override
  String get onboard_get_started => 'Пачніце';

  @override
  String get onboard_sign_in => 'Увайдзіце';

  @override
  String get onboard_skip => 'Прапусціць';

  @override
  String get onboard_choose_goal => 'Якая ваша галоўная аздараўленчая мэта?';

  @override
  String get onboard_goal_weight_loss => 'Мяккая страта вагі';

  @override
  String get onboard_goal_muscle => 'Павелічэнне мышачнай масы і сіла';

  @override
  String get onboard_goal_energy => 'Штодзённая энергія і бадзёрасць';

  @override
  String get onboard_goal_habits => 'Здаровае ўважлівае харчаванне';

  @override
  String get onboard_about_you => 'Раскажыце пра сябе';

  @override
  String get onboard_lifestyle => 'Ваш распарадак дня';

  @override
  String get onboard_permissions_title => 'Дазволы і доступ да сістэмы';

  @override
  String get onboard_permissions_sub =>
      'Дайце доступ да сінхранізацыі крокаў, трэніровак і напамінаў.';

  @override
  String get onboard_plan_ready_title => 'Ваш індывідуальны план гатовы!';

  @override
  String get onboard_plan_ready_sub =>
      'Спецыяльна для вас мы распрацавалі далікатную персаналізаваную дарожную карту харчавання і самаадчування.';

  @override
  String get onboard_enter_bloomi => 'Уваходзіць Блумі';

  @override
  String get insights_weekly_report => 'Штотыднёвы аздараўленчы агляд';

  @override
  String insights_best_day(Object day) {
    return 'Лепшы дзень паслядоўнасці: $day';
  }

  @override
  String get insights_streaks_badges => 'Паласы і вехі';

  @override
  String insights_unlocked_on(Object date) {
    return 'Разблакіравана $date';
  }

  @override
  String get insights_keep_going => 'Сачыце за фантастычным прагрэсам!';

  @override
  String get widgets_title => 'Віджэты галоўнага экрана';

  @override
  String widgets_active_count(Object count) {
    return 'Актыўныя віджэты: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Крокі і актыўны званок';

  @override
  String get widgets_water_title => 'Хуткі журнал гідратацыі';

  @override
  String get widgets_mascot_title => 'Талісман Блумі';

  @override
  String get wear_os_title => 'Wear OS SmartWatch';

  @override
  String get wear_os_connected => 'Падключаны да Watch';

  @override
  String get wear_os_sync => 'Сінхранізаваць даныя гадзінніка';

  @override
  String get theme_title => 'Знешні выгляд і тэма';

  @override
  String get theme_mode => 'Тэматычны рэжым';

  @override
  String get theme_light => 'Святло';

  @override
  String get theme_dark => 'Цёмны';

  @override
  String get theme_system => 'сістэма';

  @override
  String get theme_background_palette => 'Фонавая палітра';

  @override
  String get units_title => 'Адзінкі вымярэння';

  @override
  String get units_metric => 'Метрыка (кг, см, мл)';

  @override
  String get units_imperial => 'Імперскія (фунты, цалі, вадкія унцыі)';

  @override
  String get home_unable_load => 'Немагчыма загрузіць прыборную панэль';

  @override
  String get home_health_permission_req => 'Патрабуецца дазвол Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi патрабуе дазволу Health Connect, каб атрымліваць рэальныя крокі, пульс і сінхранізаваць віджэты мабільнага дома ў рэжыме рэальнага часу.';

  @override
  String get home_allow_health => 'Дазволіць Health Connect';

  @override
  String get home_ready_mindful_day => 'Гатовы да ўважлівага дня? ✨';

  @override
  String get home_quick_add => 'Хуткае даданне';

  @override
  String get home_live_gps => 'Жывы GPS';

  @override
  String get home_calories_remaining_label => 'ЗАСТАЛІСЯ КАЛОРЫЙ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'З\'едзена: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Націсніце для трэкера вады 💧';

  @override
  String get home_water_goal_reached => 'Штодзённая мэта дасягнута 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл да штодзённай мэты';
  }

  @override
  String get home_details => 'Дэталі';

  @override
  String get home_upgrade_plan_desc =>
      'Абнавіце, каб разблакіраваць персаналізаваныя штодзённыя мэты і план AI';

  @override
  String get home_unlock => 'Разблакіраваць 👑';

  @override
  String get home_quick_log_hint => 'Хутка запішыце аздараўленчы запіс';

  @override
  String get food_serving_size => 'Памер порцыі';

  @override
  String get food_serving_grams => 'Порцыя (г)';

  @override
  String get food_number_servings => 'Колькасць порцый';

  @override
  String get food_calories_per_serving => 'Калорыі на порцыю';

  @override
  String get food_recipe_ingredients => 'Інгрэдыенты';

  @override
  String get food_recipe_add_ingredient => 'Дадаць інгрэдыент';

  @override
  String get food_recipe_directions => 'Інструкцыі і нататкі';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Харчаванне на порцыю';

  @override
  String get food_recipe_saved_toast => 'Спецыяльная ежа паспяхова захавана!';

  @override
  String get food_barcode_found => 'Прадукт знойдзены!';

  @override
  String get food_barcode_not_found_desc =>
      'Нам не ўдалося знайсці гэты штрых-код у адкрытай базе дадзеных. Вы можаце дадаць яго ў якасці індывідуальнай ежы.';

  @override
  String get food_add_custom_btn => 'Дадайце ежу на заказ';

  @override
  String get food_scan_again => 'Сканаваць яшчэ раз';

  @override
  String get food_review_items => 'Агляд выяўленых прадуктаў';

  @override
  String get food_review_hint =>
      'Адрэгулюйце колькасць або выдаліце любы нераспазнаны тавар';

  @override
  String get food_log_selected => 'Запіс выбраных прадуктаў';

  @override
  String get food_favourites_title => 'Любімая ежа';

  @override
  String get food_recent_title => 'Апошнія прадукты';

  @override
  String get food_no_favourites =>
      'Пакуль няма любімых страў. Націсніце сэрцам любую ежу, каб захаваць тут.';

  @override
  String get food_no_recents =>
      'Нядаўна зарэгістраваных прадуктаў не знойдзена.';

  @override
  String get food_nutrition_details_title =>
      'Падрабязнасці штодзённага харчавання';

  @override
  String get food_macro_protein_label => 'Расшчапленне бялку';

  @override
  String get food_macro_carbs_label => 'Расшчапленне вугляводаў';

  @override
  String get food_macro_fat_label => 'Расшчапленне тлушчу';

  @override
  String get food_macro_fiber_label => 'Распад абалоніны';

  @override
  String get food_daily_target_comparison => 'Мэтавае параўнанне';

  @override
  String food_target_label(Object target) {
    return 'Мэта: $target';
  }

  @override
  String get food_edit_entry => 'Рэдагаваць дзённікавы запіс';

  @override
  String get food_delete_entry => 'Выдаліць запіс';

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
    return '$current з $target мл';
  }

  @override
  String get water_intake_history => 'Сённяшнія водныя часопісы';

  @override
  String get water_no_logs_today =>
      'Сёння вады яшчэ не было. Увільгатняйце і націсніце кнопку хуткага дадання!';

  @override
  String get water_adjust_goal => 'Адрэгулюйце штодзённую мэту';

  @override
  String get health_connect_banner => 'Падключаны да Health Connect';

  @override
  String get health_vitals_summary => 'Штодзённыя паказчыкі здароўя';

  @override
  String get health_latest_heart_rate => 'Апошні пульс';

  @override
  String get health_latest_bp => 'Артэрыяльны ціск';

  @override
  String get health_latest_spo2 => 'Кісларод крыві';

  @override
  String get health_latest_glucose => 'Глюкоза ў крыві';

  @override
  String get health_latest_weight => 'Вага';

  @override
  String get health_latest_sleep => 'Працягласць сну';

  @override
  String get health_add_manual => 'Дадаць ручное вымярэнне';

  @override
  String get health_history_trends => 'Гістарычныя тэндэнцыі';

  @override
  String get health_sync_success =>
      'Даныя пра здароўе паспяхова сінхранізаваны!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours гадз $mins хв';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm удараў у хвіліну';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic мм рт.сл';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title => 'Падключаныя прылады і носныя прылады';

  @override
  String get health_devices_desc =>
      'Кіруйце спаранымі разумнымі гадзіннікамі, фітнес-трэкерамі і датчыкамі здароўя.';

  @override
  String get health_workout_editor_title => 'Рэдагаваць трэніроўку';

  @override
  String get health_workout_name_label => 'Назва трэніроўкі';

  @override
  String get health_workout_duration_label => 'Працягласць (хвілін)';

  @override
  String get health_workout_calories_label =>
      'Прыблізная колькасць калорый (ккал)';

  @override
  String get health_workout_date_label => 'Дата і час';

  @override
  String get plan_daily_wellness_roadmap =>
      'Ваша персаналізаваная дарожная карта';

  @override
  String get plan_morning_routine => 'Ранішняя руціна';

  @override
  String get plan_afternoon_routine => 'Аздараўленчы апоўдні';

  @override
  String get plan_evening_routine => 'Вячэрні адпачынак';

  @override
  String get plan_coach_badge => 'Блумі AI трэнер';

  @override
  String get plan_weekly_overview => '7-дзённы аздараўленчы фокус';

  @override
  String get plan_targets_title => 'Задачы і мэты аздараўлення';

  @override
  String get plan_calorie_budget_label => 'Штодзённы бюджэт калорый';

  @override
  String get plan_water_budget_label => 'Сутачная мэтавая норма вады';

  @override
  String get plan_step_budget_label => 'Мэта штодзённага кроку';

  @override
  String get plan_macro_split_label => 'Каэфіцыент макраэлементаў';

  @override
  String get profile_personal_details => 'Асабістыя звесткі';

  @override
  String get profile_body_stats => 'Вымярэнні цела';

  @override
  String get profile_app_preferences => 'Параметры і налады праграмы';

  @override
  String get profile_edit_name_hint => 'Ваша імя';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Вышыня ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Вага ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Узрост';

  @override
  String get profile_gender_male => 'мужчынскі';

  @override
  String get profile_gender_female => 'жаночы';

  @override
  String get profile_gender_other => 'Іншае / Не хачу казаць';

  @override
  String get profile_activity_sedentary =>
      'Маларухомы лад жыцця (Малая фізічная нагрузка або адсутнасць)';

  @override
  String get profile_activity_light => 'Злёгку актыўны (1-3 дні/тыдзень)';

  @override
  String get profile_activity_moderate => 'Умерана актыўны (3-5 дзён/тыдзень)';

  @override
  String get profile_activity_very => 'Вельмі актыўны (6-7 дзён/тыдзень)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Усталюйце плітку Bloomi і ўскладненне на гадзіннік Wear OS, каб зірнуць на калорыі, ваду і крокі.';

  @override
  String get settings_widgets_header => 'Інтэрактыўныя віджэты Android';

  @override
  String get settings_widgets_desc =>
      'Замацуйце віджэты ў рэжыме рэальнага часу на галоўным экране прылады для імгненнага абнаўлення.';

  @override
  String get settings_about_header => 'Пра Блюмі';

  @override
  String get settings_about_version => 'Версія';

  @override
  String get settings_about_build => 'Зборка 100';

  @override
  String get settings_about_credits =>
      'Створаны з клопатам пра ўважлівы здаровы лад жыцця.';

  @override
  String get settings_terms_header => 'Правілы і ўмовы';

  @override
  String get settings_privacy_header => 'Палітыка прыватнасці';

  @override
  String get settings_delete_header => 'Выдаліць уліковы запіс і дадзеныя';

  @override
  String get settings_delete_warning =>
      'Гэта дзеянне нельга адмяніць. Усе вашы стравы, трэніроўкі, жыццёва важныя паказчыкі і профіль будуць назаўсёды выдалены.';

  @override
  String get settings_delete_confirm_btn => 'Выдаліць назаўсёды';

  @override
  String get onboard_welcome_headline => 'Сардэчна запрашаем у Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Далікатнае, уважлівае адсочванне самаадчування распрацавана з улікам вашага жыцця.';

  @override
  String get onboard_step_about => 'Пра вас';

  @override
  String get onboard_step_goals => 'Вашы мэты';

  @override
  String get onboard_step_lifestyle => 'Штодзённыя звычкі';

  @override
  String get onboard_step_permissions => 'Дазволы';

  @override
  String get onboard_step_plan => 'гатовы!';

  @override
  String get onboard_health_connect_perm => 'Доступ да Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Датчык лічыльніка крокаў';

  @override
  String get onboard_notif_perm => 'Уважлівыя напаміны і апавяшчэнні';

  @override
  String get onboard_camera_perm => 'Камера (сканер штрых-кодаў і ежы)';

  @override
  String get onboard_grant_permissions => 'Даць дазволы';

  @override
  String get onboard_continue_dashboard => 'Адкрыць прыборную панэль';

  @override
  String get notif_channel_hydration_name => 'Гідратацыйныя штуршкі';

  @override
  String get notif_channel_hydration_desc =>
      'Пяшчотныя напамінкі пра ваду на працягу дня';

  @override
  String get notif_channel_nutrition_name => 'Напаміны пра ежу і харчаванне';

  @override
  String get notif_channel_nutrition_desc =>
      'Напамінкі аб сняданку, абедзе і вячэры';

  @override
  String get notif_channel_steps_name => 'Крок Вехі';

  @override
  String get notif_channel_steps_desc =>
      'Урачыстасці пры дасягненні штодзённых мэтавых крокаў';

  @override
  String get notif_channel_vitals_name => 'Праверкі здароўя і жыццядзейнасці';

  @override
  String get notif_channel_vitals_desc => 'Напаміны аб вазе і перад сном';

  @override
  String get notif_action_log_water => '💧 Палена +250 мл';

  @override
  String get notif_action_snooze => 'Адкласці 15 м';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'мова';

  @override
  String get share => 'Падзяліцеся';

  @override
  String common_days(Object count) {
    return '$count дн. таму';
  }
}
