// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bashkir (`ba`).
class AppLocalizationsBa extends AppLocalizations {
  AppLocalizationsBa([String locale = 'ba']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Төп';

  @override
  String get nav_today => 'Бөгөн .';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Аҙыҡ-түлек .';

  @override
  String get nav_food_diary => 'Аҙыҡ-түлек көндәлеге';

  @override
  String get nav_workout => 'Тренировкалар журналы';

  @override
  String get nav_health => 'Һаулыҡ';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Һаҡлау';

  @override
  String get cancel => 'Юҡҡа сығарыу';

  @override
  String get delete => 'Юйырға';

  @override
  String get edit => 'Мөхәррирләү';

  @override
  String get done => 'Бөттө';

  @override
  String get close => 'Ябыҡ';

  @override
  String get back => 'Артҡа';

  @override
  String get next => 'Артабан';

  @override
  String get continue_btn => 'Дауам итеү';

  @override
  String get confirm => 'Раҫлау';

  @override
  String get search => 'Эҙләү';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Барыһы ла';

  @override
  String get active => 'Әүҙем';

  @override
  String get today => 'Бөгөн .';

  @override
  String get yesterday => 'Кисә .';

  @override
  String get tomorrow => 'Иртәгә .';

  @override
  String get add => 'Өҫтәү';

  @override
  String get remove => 'Алып ташлау';

  @override
  String get refresh => 'Яңыртыу';

  @override
  String get retry => 'Ҡабаттан ҡара';

  @override
  String get error => 'Хата';

  @override
  String get success => 'Уңыш .';

  @override
  String get loading => 'Йөйләү...';

  @override
  String get no_data => 'Мәғлүмәттәр юҡ';

  @override
  String get offline => 'Офлайн режимы';

  @override
  String get offline_sub =>
      'Үҙгәрештәр бер тапҡыр яңынан тоташтырылғандан һуң синхронлаштырыласаҡ';

  @override
  String get undo => 'Кире ҡайтарыу';

  @override
  String get portion => 'Өлөш';

  @override
  String get quantity => 'Күләме';

  @override
  String get unit => 'Блок';

  @override
  String get clear => 'Асыҡ';

  @override
  String get select => 'Һайлағыҙ';

  @override
  String get apply => 'Ҡулланыу';

  @override
  String get reset => 'Сброс';

  @override
  String get ok => 'Ярай';

  @override
  String get yes => 'Эйе';

  @override
  String get no => 'Юҡ';

  @override
  String get optional => 'Һорау буйынса';

  @override
  String get calories => 'Калориялар';

  @override
  String get protein => 'Аҡһым';

  @override
  String get carbs => 'Углеводтар';

  @override
  String get fat => 'Һимеҙ';

  @override
  String get fiber => 'Сүс';

  @override
  String get water => 'Һыу .';

  @override
  String get steps => 'Аҙымдар';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'ж';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунт';

  @override
  String get centimeters => 'см';

  @override
  String get inches => '2012 йылда.';

  @override
  String get bpm => 'бпм';

  @override
  String get hours => 'сәғәт';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Хеҙмәтләндереү';

  @override
  String get servings => 'Порциялар';

  @override
  String get serving_size => 'Порция күләме';

  @override
  String get per_100g => '100 гр';

  @override
  String get india => 'Һиндостан';

  @override
  String get asia => 'Азия .';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Яҡын Көнсығыш .';

  @override
  String get africa => 'Африка .';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Төп';

  @override
  String get home_greeting_morning => 'Хәйерле иртә';

  @override
  String get home_greeting_afternoon => 'Хәйерле көн';

  @override
  String get home_greeting_evening => 'Хәйерле кис';

  @override
  String get home_streak_title => 'Сәскә һыҙаты';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '__РН_0__ көндәр теҙмәһе',
      one: '1 көнлөк серия',
      zero: '0 көн серияһы',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Яндырылған';

  @override
  String get home_calories_budget => 'Калория бюджеты';

  @override
  String home_calories_remaining(Object kcal) {
    return '__РН_0__ ккал ҡалған';
  }

  @override
  String get home_water_title => 'Көндәлек гидратацион';

  @override
  String home_water_goal(Object current, Object target) {
    return '__РН_0__ / __РН_1__ мл';
  }

  @override
  String get home_steps_title => 'Аҙымдар атланы';

  @override
  String get home_quick_actions => 'Тиҙ эштәр';

  @override
  String get home_log_meal => 'Бүрәнә аш';

  @override
  String get home_log_water => 'Бүрәнә һыуы';

  @override
  String get home_log_workout => 'Журнал тренировкаһы';

  @override
  String get home_log_weight => 'Лог ауырлығы';

  @override
  String get home_insights_title => 'Бөгөнгө төшөнсәләр';

  @override
  String get home_quote =>
      'Бәләкәй генә сәләмәт һайлауҙар сәскә атыусы үҙгәрештәр тыуҙыра.';

  @override
  String get home_ai_coach_tip => 'Блуми АИ тренеры';

  @override
  String get home_surroundings => 'Тирә-яҡ мөхит һәм һауа';

  @override
  String get home_notifications => 'Хәбәр итеүҙәр';

  @override
  String get home_daily_score => 'Көндәлек һаулыҡ баһаһы';

  @override
  String get home_view_all => 'Барыһын да ҡарау';

  @override
  String get food_diary_title => 'Аҙыҡ-түлек көндәлеге';

  @override
  String get food_breakfast => 'Иртәнге аш';

  @override
  String get food_lunch => 'Төшкө аш';

  @override
  String get food_dinner => 'Киске аш';

  @override
  String get food_snacks => 'Закускалар';

  @override
  String get food_add_food => 'Аҙыҡ өҫтәү';

  @override
  String get food_edit_food => 'Аҙыҡ-түлекте мөхәррирләү';

  @override
  String get food_add_breakfast => 'Иртәнге аш өҫтәү';

  @override
  String get food_add_lunch => 'Төшкө аш өҫтәү';

  @override
  String get food_add_dinner => 'Киске аш өҫтәү';

  @override
  String get food_add_snack => 'Закуска өҫтәү';

  @override
  String get food_total_calories => 'Дөйөм калориялар';

  @override
  String get food_empty_meal =>
      'Был аш өсөн әлегә бер ниндәй ҙә аҙыҡ-түлек теркәлмәгән';

  @override
  String get food_empty_diary => 'Был көнгә бер ниндәй ҙә аш теркәлмәгән';

  @override
  String get food_log_first_meal =>
      'Һеҙҙең тәүге тәмле ашты теркәү өсөн + баҫығыҙ';

  @override
  String get food_quick_add => 'Тиҙ өҫтәү';

  @override
  String get food_search_hint => 'Эҙләү аш-һыу, емеш-еләк, дал, роти...';

  @override
  String get food_custom_recipe => 'Ҡулланыусылар өсөн аҙыҡ-түлек һәм рецепт';

  @override
  String get food_scan_barcode => 'Штрих-кодты сканерлау';

  @override
  String get food_camera_scan => 'AI аҙыҡ-түлек сканеры';

  @override
  String get food_recent => 'Һуңғы аҙыҡ-түлек';

  @override
  String get food_favourites => 'Яратҡандар';

  @override
  String get food_macro_summary => 'Макроэлементтар тарҡалыуы';

  @override
  String get food_delete_meal_confirm =>
      'Һеҙ был әйберҙе алып ташларға теләйһегеҙме?';

  @override
  String get food_item_deleted => 'Аҙыҡ-түлек әйбере алып ташланды';

  @override
  String get food_remaining => 'ҡалған .';

  @override
  String get food_consumed => 'ҡулланылған';

  @override
  String food_of_target(Object target) {
    return '__РН_0__ ккал';
  }

  @override
  String get foodSearch_title => 'Аҙыҡ-түлек эҙләү';

  @override
  String get foodSearch_scan_barcode => 'Штрих-кодты сканерлау';

  @override
  String get foodSearch_take_photo => 'Аҙыҡ-түлек фотоһын төшөрөү';

  @override
  String get foodSearch_custom_food => 'Ҡулланыусылар өсөн аҙыҡ-түлек булдырыу';

  @override
  String get foodSearch_recent_searches => 'Һуңғы эҙләүҙәр';

  @override
  String get foodSearch_popular => 'Популяр аштар';

  @override
  String get foodSearch_no_results => 'Һеҙҙең эҙләүгә тап килгән аҙыҡ-түлек юҡ';

  @override
  String get barcode_title => 'Штрих-код сканер';

  @override
  String get barcode_align =>
      'Штрих-кодты камера рамкаһы эсендә тура килтерегеҙ';

  @override
  String get barcode_not_found => 'Продукт мәғлүмәттәр базаһында табылмаған';

  @override
  String get barcode_premium_feature =>
      'Штрих-код сканерлау менән мөмкин Bloomi Pro .';

  @override
  String get camera_title => 'AI аҙыҡ-түлек сканеры';

  @override
  String get camera_tap_hint => 'Һеҙҙең аш-һыуҙы асыҡ фотоға төшөрөгөҙ';

  @override
  String get camera_analysing => 'Аҙыҡ-түлек тәрилкәһен анализлау...';

  @override
  String get camera_detected => 'Асыҡланған әйберҙәр';

  @override
  String get camera_flash => 'Вспышканы алмаштырыу';

  @override
  String get camera_retake => 'Фотоны ҡабаттан төшөрөү';

  @override
  String get camera_confirm_food => 'Элементтарҙы раҫлау';

  @override
  String get customFood_title => 'Ҡулланыусылар өсөн аҙыҡ-түлек һәм рецепт';

  @override
  String get customFood_name_hint => 'Аш-һыу йәки ингредиент исеме .';

  @override
  String get customFood_calories_hint => 'Калория (ккал)';

  @override
  String get customFood_protein_hint => 'Аҡһым (г)';

  @override
  String get customFood_carbs_hint => 'Углеводтар (г)';

  @override
  String get customFood_fat_hint => 'Май (г)';

  @override
  String get customFood_save => 'Рецептты һаҡларға';

  @override
  String get water_tracker_title => 'Һыу эҙләүсе';

  @override
  String get water_daily_target => 'Көндәлек гидратацион маҡсат';

  @override
  String get water_logged_today => 'Бөгөн теркәлгән';

  @override
  String get water_add_glass => '+250 мл Быяла';

  @override
  String get water_add_bottle => '+500 мл шешә';

  @override
  String get water_custom_amount => 'Ҡулланыусы суммаһы';

  @override
  String get water_reminder_tip =>
      'Тотороҡло энергия булһын өсөн көнө буйы даими һыу эсегеҙ.';

  @override
  String water_logged_toast(Object amount) {
    return '__РН_0__ мл һыу теркәлгән 💧';
  }

  @override
  String get workout_title => 'Тренировкалар журналы';

  @override
  String get workout_add_exercise => 'Тренировка өҫтәү';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Көс';

  @override
  String get workout_yoga => 'Йога һәм һығылмалылыҡ';

  @override
  String get workout_duration => 'Оҙайлылығы';

  @override
  String get workout_intensity => 'Интенсивлыҡ';

  @override
  String get workout_calories_burned => 'Яндырылған калориялар';

  @override
  String get workout_empty => 'Бөгөн бер ниндәй ҙә тренировкалар теркәлмәгән';

  @override
  String get workout_save_success => 'Тренировка уңышлы һаҡлап ҡалды!';

  @override
  String get workout_type => 'Тип тренировки';

  @override
  String get workout_notes => 'Иҫкәрмәләр һәм уйланыуҙар';

  @override
  String get health_overview_title => 'Һаулыҡ һәм йәшәү өсөн мөһим';

  @override
  String get health_heart_rate => 'Йөрәк тибеше';

  @override
  String get health_blood_oxygen => 'Ҡан кислороды (SpO2)';

  @override
  String get health_blood_pressure => 'Ҡан баҫымы';

  @override
  String get health_blood_glucose => 'Ҡандағы глюкоза';

  @override
  String get health_body_temperature => 'Тән температураһы';

  @override
  String get health_sleep_tracking => 'Йоҡо күҙәтеүе';

  @override
  String get health_weight_tracking => 'Ауырлыҡ һәм тән составы';

  @override
  String get health_waist_hip => 'Бил менән янбаш нисбәте';

  @override
  String get health_devices_hub => 'Ҡоролма һәм аҡыллы сәғәттәр үҙәге';

  @override
  String get health_sync_now => 'Һаулыҡ мәғлүмәттәрен синхронлаштырыу';

  @override
  String health_last_synced(Object time) {
    return 'Һуңғы синхронлаштырылған: $time';
  }

  @override
  String get health_manual_entry => 'Ҡул менән һаулыҡ индереү';

  @override
  String get health_metric_detail => 'Метрик деталдәр';

  @override
  String get health_connected_sensors => 'Тоташтырылған һаулыҡ датчиктары';

  @override
  String get plan_title => 'Көндәлек план';

  @override
  String get plan_weekly_title => 'Аҙналыҡ һаулыҡ планы';

  @override
  String get plan_calorie_target => 'Калория маҡсаты';

  @override
  String get plan_water_target => 'Гидратация маҡсаты';

  @override
  String get plan_step_target => 'Маҡсатлы аҙым';

  @override
  String get plan_sleep_target => 'Йоҡо маҡсаты';

  @override
  String get plan_meal_suggestions => 'Ашарға тәҡдимдәр';

  @override
  String get plan_healthy_habits => 'Сәләмәт ғәҙәттәр һәм кәңәштәр';

  @override
  String get plan_coach_advice => 'Блуми АИ тренеры тәҡдимдәре';

  @override
  String get plan_generated_title => 'Шәхси көндәлек графигы';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профильде мөхәррирләү';

  @override
  String get profile_name => 'Исем';

  @override
  String get profile_age => 'Йәше .';

  @override
  String get profile_gender => 'Енси';

  @override
  String get profile_height => 'Буйы .';

  @override
  String get profile_weight => 'Ауырлығы';

  @override
  String get profile_goal => 'Төп маҡсат';

  @override
  String get profile_activity_level => 'Эшмәкәрлек кимәле';

  @override
  String get profile_stats => 'Минең һаулыҡ статистикаһы';

  @override
  String get profile_saved => 'Профиль уңышлы яңыртылды';

  @override
  String get profile_bmi => 'Тән массаһы индексы (ИМТ)';

  @override
  String get profile_membership => 'Ағзалыҡ';

  @override
  String get settings => 'Көйләүҙәр';

  @override
  String get preferences_habits => 'ӨҪТӨНЛӨКТӘР ҺӘМ ҒӘҘӘТТӘР';

  @override
  String get appearance_theme => 'Тышҡы ҡиәфәт һәм тема';

  @override
  String get appearance_theme_sub =>
      'Ҡараңғы, яҡты, система режимы һәм ҡушымта фоны параметрҙары';

  @override
  String get permissions => 'Рөхсәттәр һәм системаға инеү';

  @override
  String get permissions_sub =>
      'Һаулыҡ тоташтырыу, Аҙым датчиктары, GPS, хәбәр итеүҙәр & Камера';

  @override
  String get reminders_notifications => 'Иҫкәртмәләр һәм хәбәрҙәр';

  @override
  String get reminders_sub =>
      'Аш ваҡыты, һыу, ауырлыҡ тикшерелгән & йоҡо алдынан иҫкәртмәләр';

  @override
  String get units_of_measurement => 'Үлсәү берәмектәре .';

  @override
  String get units_sub =>
      'Метрик (кг, см, мл, км) йәки император (фунт, фут/дюйм, фл унция)';

  @override
  String get app_language => 'Ҡушымта теле';

  @override
  String get language_sub => '195+ глобаль телдәр';

  @override
  String get home_screen_widgets => 'Төп экран виджеттары';

  @override
  String get widgets_sub =>
      'Тере Android виджеттар: Концентратор, Аҙымдар, Һыу, Туҡланыу & Талисман';

  @override
  String get wear_os_watch_app => 'OS ҡарау ҡушымтаһын кейегеҙ';

  @override
  String get wear_os_sub =>
      'Аҡыллы сәғәт иптәше, плитка, ҡатмарлыҡтар & тере йәшәү өсөн мөһим';

  @override
  String get goals_wellness => 'МАҠСАТТАР ҺӘМ ҺАУЛЫҠ ТӨШӨНДӘРЕ';

  @override
  String get nutrition_targets => 'Туҡланыу маҡсаттары һәм макросплит';

  @override
  String get nutrition_targets_sub =>
      'Калория маҡсат, аҡһым, углеводтар, май & һыу маҡсат';

  @override
  String get weekly_recap => 'Аҙналыҡ һаулыҡ һығымтаһы';

  @override
  String get weekly_recap_sub =>
      '7-көнлөк калория уртаса, макро нисбәте & иң яҡшы көн';

  @override
  String get streaks_milestones => 'Һыҙыҡтар һәм осҡондар';

  @override
  String get streaks_sub => 'Әүҙем сәскә һыҙаттары, значоктар һәм ҡаҙаныштар';

  @override
  String get connected_devices => 'ҠОРОЛМАЛАР ҺӘМ ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Ҡоролма һәм аҡыллы сәғәттәр үҙәге';

  @override
  String get devices_hub_sub =>
      'Һаулыҡ тоташтырыу, Галактика сәғәте, Пиксель сәғәте, Garmin';

  @override
  String get surroundings_weather => 'Тирә-яҡ мөхит һәм һауа торошо';

  @override
  String get surroundings_sub =>
      'Һауа сифаты (AQI), УФ индексы & һауа торошо гидратацион кәңәштәре';

  @override
  String get bloomi_pro => 'Блуми Проға яҙылыу';

  @override
  String get bloomi_pro_sub =>
      'AI планы тренеры, 5 төп экран виджеттары һәм мөһим әйберҙәрҙе күҙәтеү';

  @override
  String get about_security => 'ХӘҮЕФҺЕҘЛЕК ТУРАҺЫНДА';

  @override
  String get about_bloomi => 'Блуми тураһында';

  @override
  String get about_bloomi_sub =>
      'Төҙөү спецификацияһы, версияһы, атрибуциялары';

  @override
  String get privacy_policy => 'Хосуси сәйәсәт';

  @override
  String get privacy_policy_sub =>
      'Офлайн-беренсе, ҡоролма мәғлүмәт архитектураһы';

  @override
  String get terms_conditions => 'Шарттар һәм шарттар';

  @override
  String get terms_conditions_sub =>
      'Хеҙмәтләндереүҙең шарттары һәм һаулыҡ һаҡлау ҡағиҙәләре';

  @override
  String get delete_account => 'Иҫәп яҙмаһын һәм мәғлүмәттәрҙе юйыу';

  @override
  String get delete_account_sub =>
      'Кире ҡайтарып булмаҫлыҡ юйып урындағы SQLite мәғлүмәттәре һәм болот резерв көйҙәре';

  @override
  String get healthy_habits => 'Йомшаҡ, оҙайлы һаулыҡ ғәҙәттәрен булдырыу';

  @override
  String get all_logs => 'Минең күҙәтелгән мәғлүмәттәрем һәм журналдар';

  @override
  String get search_language => 'Тел йәки туған яҙма буйынса эҙләү...';

  @override
  String get languages_available => 'Телдәр бар';

  @override
  String get no_matching_languages => 'Тап килгән телдәр табылмаған';

  @override
  String get try_searching =>
      'Туған яҙма йәки инглиз орфографияһы буйынса эҙләп ҡарағыҙ';

  @override
  String get partially_translated => 'Өлөшләтә тәржемә ителгән .';

  @override
  String get complete_translation => 'Тулы';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Тел __РН_0__ (__РН_1__) тип ҡуйылған.';
  }

  @override
  String get surroundings_title => 'Тирә-яҡ мөхит һәм тирә-яҡ мөхит';

  @override
  String get surroundings_aqi => 'Һауа сифаты индексы';

  @override
  String get surroundings_uv => 'УФ индексы';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Дымлылыҡ';

  @override
  String get surroundings_hydration_advice =>
      'Хәҙерге һауа шарттарында яҡшы гидратацион ҡалырға.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Аҙыҡ-түлек эҙләү';

  @override
  String get food_quick_barcode => 'Штрих-кодты сканерлау 👑';

  @override
  String get food_quick_water => 'Һыу өҫтәйбеҙ';

  @override
  String get food_quick_custom => 'Ҡулланыусылар өсөн ризыҡ';

  @override
  String get surroundings_good => 'Яҡшы';

  @override
  String get surroundings_moderate => 'Уртаса';

  @override
  String get surroundings_unhealthy => 'Һаулыҡҡа зыянлы';

  @override
  String get notifications_title => 'Иҫкәртмәләр һәм иҫкәртмәләр';

  @override
  String get notifications_empty => 'Яңы хәбәрҙәр юҡ';

  @override
  String get notifications_mark_read => 'Барыһын да уҡылған тип билдәләгеҙ';

  @override
  String get notifications_clear => 'Барыһын да юйырға';

  @override
  String get reminders => 'Иҫкәртеү параметрҙары';

  @override
  String get notifications => 'Хәбәр итеүҙәр';

  @override
  String get reminders_breakfast_title => 'Иртәнге аш иҫкәртмәһе 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Хәйерле иртә! $time -ла туҡлыҡлы иртәнге аш ваҡыты.';
  }

  @override
  String get reminders_lunch_title => 'Төшкө аш иҫкә төшөрөү 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Туҡталыш һәм рәхәтләнеп баланслы, уйлы төшкө аш $time .';
  }

  @override
  String get reminders_dinner_title => 'Киске ашты иҫкә төшөрөү 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time еңел, ҡәнәғәтләндерерлек киске ашҡа ваҡыт.';
  }

  @override
  String get reminders_water_title => 'Гидратация нудж 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Бер стакан яңы һыу эсергә ваҡыт! (__РН_0__)';
  }

  @override
  String get reminders_weight_title => 'Аҙналыҡ үлсәү ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Һеҙҙең аҙналыҡ тән күрһәткестәрен күҙәтеп Блуми ( __РН_0__ ).';
  }

  @override
  String get reminders_sleep_title => 'Йоҡо алдынан Ел-аҫҡа 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Ял итегеҙ һәм тыныс йоҡоға әҙерләнегеҙ ( $time ).';
  }

  @override
  String get onboard_welcome => 'Блумиға рәхим итегеҙ';

  @override
  String get onboard_sub =>
      'Һеҙҙең дуҫ, офлайн-беренсе һаулыҡ һәм туҡланыу иптәше.';

  @override
  String get onboard_get_started => 'Башларға';

  @override
  String get onboard_sign_in => 'Инеү';

  @override
  String get onboard_skip => 'Һикерергә';

  @override
  String get onboard_choose_goal => 'Һеҙҙең төп һаулыҡ һаҡлау маҡсаты ниндәй?';

  @override
  String get onboard_goal_weight_loss => 'Йәһәт кенә ябығыу';

  @override
  String get onboard_goal_muscle => 'Мускулдар өҫтәү һәм көс';

  @override
  String get onboard_goal_energy => 'Көндәлек энергия һәм йәшәү көсө';

  @override
  String get onboard_goal_habits => 'Сәләмәт аҡыллы туҡланыу';

  @override
  String get onboard_about_you => 'Үҙегеҙ тураһында һөйләгеҙ әле';

  @override
  String get onboard_lifestyle => 'Һеҙҙең көндәлек тәртип';

  @override
  String get onboard_permissions_title => 'Рөхсәттәр һәм системаға инеү';

  @override
  String get onboard_permissions_sub =>
      'Грант рөхсәт синхронлаштырыу аҙымдар, тренировкалар, һәм иҫкәртмәләр.';

  @override
  String get onboard_plan_ready_title => 'Һеҙҙең ҡулланыусылар планы әҙер!';

  @override
  String get onboard_plan_ready_sub =>
      'Беҙ һеҙҙең өсөн генә нәзәкәтле, шәхси туҡланыу һәм һаулыҡ һаҡлау юл картаһын эшләнек.';

  @override
  String get onboard_enter_bloomi => 'Блуми индерегеҙ';

  @override
  String get insights_weekly_report => 'Аҙналыҡ һаулыҡ һығымтаһы';

  @override
  String insights_best_day(Object day) {
    return 'Иң яҡшы эҙмә-эҙлеклелек көнө: __РН_0__';
  }

  @override
  String get insights_streaks_badges => 'Һыҙыҡтар һәм осҡондар';

  @override
  String insights_unlocked_on(Object date) {
    return '__РН_0__ өҫтөндә бикләнмәгән';
  }

  @override
  String get insights_keep_going => 'Фантастическое прогресс дауам итегеҙ!';

  @override
  String get widgets_title => 'Төп экран виджеттары';

  @override
  String widgets_active_count(Object count) {
    return 'Әүҙем виджеттар: __РН_0__';
  }

  @override
  String get widgets_hub_title => 'Блуми Уэлнесс Хаб';

  @override
  String get widgets_steps_title => 'Аҙымдар һәм әүҙем йөҙөк';

  @override
  String get widgets_water_title => 'Гидратация тиҙ журнал';

  @override
  String get widgets_mascot_title => 'Блуми талисманы иптәше';

  @override
  String get wear_os_title => 'OS аҡыллы сәғәт кейегеҙ';

  @override
  String get wear_os_connected => 'Сәғәт менән тоташтырылған';

  @override
  String get wear_os_sync => 'Синхронизация ҡарау мәғлүмәттәре';

  @override
  String get theme_title => 'Тышҡы ҡиәфәт һәм тема';

  @override
  String get theme_mode => 'Тема режимы';

  @override
  String get theme_light => 'Яҡтылыҡ';

  @override
  String get theme_dark => 'Ҡараңғы';

  @override
  String get theme_system => 'Система ғәҙәттәгесә';

  @override
  String get theme_background_palette => 'Фон палитраһы';

  @override
  String get units_title => 'Үлсәү берәмектәре .';

  @override
  String get units_metric => 'Метрик (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дюйм, фл унция)';

  @override
  String get home_unable_load => 'Приборҙар таҡтаһын тейәп булмай';

  @override
  String get home_health_permission_req => 'Һаулыҡ тоташтырыу рөхсәте кәрәк';

  @override
  String get home_health_permission_desc =>
      'Bloomi рөхсәт талап итә Health Connect тартып реаль аҙымдар, йөрәк тибеше, һәм синхронлаштырыу өсөн мобиль йорт виджеттары реаль ваҡытта.';

  @override
  String get home_allow_health => 'Һаулыҡ тоташыуына рөхсәт итегеҙ';

  @override
  String get home_ready_mindful_day => 'Аҡыллы көнгә әҙерһегеҙме? ✨';

  @override
  String get home_quick_add => 'Тиҙ өҫтәү';

  @override
  String get home_live_gps => 'Йәшәй GPS';

  @override
  String get home_calories_remaining_label => 'ҠАЛҒАН КАЛОРИЯЛАР';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ашалған: __РН_0__ / __РН_1__ ккал';
  }

  @override
  String get home_tap_water_tracker => 'Һыу эҙләүсе өсөн кран 💧';

  @override
  String get home_water_goal_reached => 'Көндәлек маҡсатҡа ирешелде 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '__РН_0__ мл көндәлек маҡсатҡа тиклем';
  }

  @override
  String get home_details => 'Ентекле мәғлүмәт';

  @override
  String get home_upgrade_plan_desc =>
      'Яңыртыу өсөн персонализацияланған көндәлек маҡсаттарҙы асыу & AI планы';

  @override
  String get home_unlock => 'Блокировканы асыу 👑';

  @override
  String get home_quick_log_hint => 'Тиҙ генә һаулыҡ һаҡлау яҙмаһын яҙып алыу';

  @override
  String get food_serving_size => 'Порция күләме';

  @override
  String get food_serving_grams => 'Порция (ж)';

  @override
  String get food_number_servings => 'Порциялар һаны';

  @override
  String get food_calories_per_serving => 'Бер порцияға калориялар';

  @override
  String get food_recipe_ingredients => 'Ингредиенттар';

  @override
  String get food_recipe_add_ingredient => 'Ингредиенттар өҫтәү';

  @override
  String get food_recipe_directions => 'Инструкциялар һәм иҫкәрмәләр';

  @override
  String get food_recipe_total => 'Дөйөм рецепт туҡланыу';

  @override
  String get food_recipe_per_serving => 'Порцияға туҡланыу';

  @override
  String get food_recipe_saved_toast =>
      'Ҡулланыусылар өсөн аҙыҡ-түлек уңышлы һаҡлап ҡалды!';

  @override
  String get food_barcode_found => 'Продукт табылған!';

  @override
  String get food_barcode_not_found_desc =>
      'Беҙ был штрих-кодты асыҡ базала таба алманыҡ. Ҡулланыусылар ризығы итеп өҫтәргә мөмкин.';

  @override
  String get food_add_custom_btn => 'Ҡулланыусы аҙыҡ-түлек өҫтәгеҙ';

  @override
  String get food_scan_again => 'Яңынан сканерлау';

  @override
  String get food_review_items => 'Асыҡланған аҙыҡ-түлекте тикшерергә';

  @override
  String get food_review_hint =>
      'Күләмдәрҙе көйләү йәки теләһә ниндәй танылмаған әйберҙе алып ташлау';

  @override
  String get food_log_selected => 'Һайланған аҙыҡ-түлек журналы';

  @override
  String get food_favourites_title => 'Яратҡан ризыҡтар';

  @override
  String get food_recent_title => 'Һуңғы аҙыҡ-түлек';

  @override
  String get food_no_favourites =>
      'Әлегә яратҡан ризыҡтар юҡ. Йөрәк ҡағыла теләһә ниндәй аҙыҡ-түлек экономиялау өсөн бында.';

  @override
  String get food_no_recents => 'Яңыраҡ теркәлгән аҙыҡ-түлек табылмаған.';

  @override
  String get food_nutrition_details_title => 'Көндәлек туҡланыу ентекле';

  @override
  String get food_macro_protein_label => 'Аҡһымдың тарҡалыуы';

  @override
  String get food_macro_carbs_label => 'Углеводтар тарҡалыу';

  @override
  String get food_macro_fat_label => 'Май тарҡатыу';

  @override
  String get food_macro_fiber_label => 'Сүс тарҡалыуы';

  @override
  String get food_daily_target_comparison => 'Маҡсатлы сағыштырыу';

  @override
  String food_target_label(Object target) {
    return 'Маҡсат: __РН_0__';
  }

  @override
  String get food_edit_entry => 'Көндәлек яҙмаһын мөхәррирләү';

  @override
  String get food_delete_entry => 'Яҙманы юйырға';

  @override
  String food_grams_short(Object grams) {
    return '__РН_0__ г';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '__РН_0__ ккал';
  }

  @override
  String water_progress(Object current, Object target) {
    return '__РН_0__ __РН_1__ мл';
  }

  @override
  String get water_intake_history => 'Бөгөнгө һыу бүрәнәләре';

  @override
  String get water_no_logs_today =>
      'Бөгөн әлегә һыу йыйылмаған. Гидратация һәм тиҙ өҫтәү төймәһенә баҫығыҙ!';

  @override
  String get water_adjust_goal => 'Көндәлек маҡсатты көйләү';

  @override
  String get health_connect_banner => 'Һаулыҡ тоташтырылған тоташтырыу';

  @override
  String get health_vitals_summary => 'Көндәлек һаулыҡ мөһим';

  @override
  String get health_latest_heart_rate => 'Һуңғы йөрәк тибеше';

  @override
  String get health_latest_bp => 'Ҡан баҫымы';

  @override
  String get health_latest_spo2 => 'Ҡандағы кислород';

  @override
  String get health_latest_glucose => 'Ҡандағы глюкоза';

  @override
  String get health_latest_weight => 'Ауырлығы';

  @override
  String get health_latest_sleep => 'Йоҡо ваҡыты';

  @override
  String get health_add_manual => 'Ҡул менән үлсәү өҫтәү';

  @override
  String get health_history_trends => 'Тарихи йүнәлештәр';

  @override
  String get health_sync_success =>
      'Һаулыҡ мәғлүмәттәре уңышлы синхронлаштырылған!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '__РН_0__ сәғәт __РН_1__ минут';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '__РН_0__ кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '__РН_0__ һуғыу минуты';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '__РН_0__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '__РН_0__ / __РН_1__ мм рт.ст.';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '__РН_0__ мг/дл';
  }

  @override
  String get health_devices_title =>
      'Тоташтырылған ҡоролма һәм кейелгән әйберҙәр';

  @override
  String get health_devices_desc =>
      'Парлы аҡыллы сәғәттәр менән идара итеү, фитнес-трекерҙар һәм һаулыҡ датчиктары.';

  @override
  String get health_workout_editor_title => 'Тренировканы мөхәррирләү';

  @override
  String get health_workout_name_label => 'Тренировка исеме';

  @override
  String get health_workout_duration_label => 'Оҙайлылығы (минут)';

  @override
  String get health_workout_calories_label => 'Яҡынса калориялар (ккал)';

  @override
  String get health_workout_date_label => 'Көн һәм ваҡыт';

  @override
  String get plan_daily_wellness_roadmap => 'Һеҙҙең шәхси юл картаһы';

  @override
  String get plan_morning_routine => 'Иртәнге тәртип';

  @override
  String get plan_afternoon_routine => 'Төшкө һаулыҡ';

  @override
  String get plan_evening_routine => 'Киске ел';

  @override
  String get plan_coach_badge => 'Блуми АИ тренеры';

  @override
  String get plan_weekly_overview => '7-көнлөк һаулыҡ фокусы';

  @override
  String get plan_targets_title => 'Һаулыҡ һаҡлау маҡсаттары һәм маҡсаттары';

  @override
  String get plan_calorie_budget_label => 'Көндәлек калория бюджеты';

  @override
  String get plan_water_budget_label => 'Көндәлек һыу маҡсаты';

  @override
  String get plan_step_budget_label => 'Көндәлек аҙым маҡсаты';

  @override
  String get plan_macro_split_label => 'Макроэлементтар нисбәте';

  @override
  String get profile_personal_details => 'Шәхси мәғлүмәттәр';

  @override
  String get profile_body_stats => 'Тән үлсәүҙәре';

  @override
  String get profile_app_preferences => 'Өҫтөнлөктәр һәм ҡушымта параметрҙары';

  @override
  String get profile_edit_name_hint => 'Һинең исемең .';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Бейеклеге (__РН_0__)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ауырлыҡ (__РН_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Йәше .';

  @override
  String get profile_gender_male => 'Ир-ат';

  @override
  String get profile_gender_female => 'Ҡатын-ҡыҙ';

  @override
  String get profile_gender_other => 'Башҡа / Әйтмәүҙе хуп күрә';

  @override
  String get profile_activity_sedentary =>
      'Ултырыу (аҙ йәки бөтөнләй күнекмәләр эшләмәй)';

  @override
  String get profile_activity_light => 'Еңелсә әүҙем (1-3 көн/аҙна)';

  @override
  String get profile_activity_moderate => 'Уртаса әүҙем (3-5 көн/аҙна)';

  @override
  String get profile_activity_very => 'Бик әүҙем (6-7 көн/аҙна)';

  @override
  String get settings_wear_os_header => 'OS иптәш ҡушымтаһын кейергә';

  @override
  String get settings_wear_os_desc =>
      'Ҡуйырға Bloomi плитка һәм ҡатмарлаштырыу һеҙҙең Wear OS сәғәт ҡараш калория, һыу, һәм аҙымдар.';

  @override
  String get settings_widgets_header => 'Интерактив Android виджеттары';

  @override
  String get settings_widgets_desc =>
      'Ҡоролманың төп экранында реаль ваҡытта виджеттарҙы тиҙ арала яңыртыу өсөн прикрепить итегеҙ.';

  @override
  String get settings_about_header => 'Блуми тураһында';

  @override
  String get settings_about_version => '1.0.0 версияһы';

  @override
  String get settings_about_build => '100 төҙөү';

  @override
  String get settings_about_credits =>
      'Аҡыллы, һау-сәләмәт йәшәү өсөн хәстәрлек менән эшләнгән.';

  @override
  String get settings_terms_header => 'Шарттар һәм шарттар';

  @override
  String get settings_privacy_header => 'Хосуси сәйәсәт';

  @override
  String get settings_delete_header => 'Иҫәп яҙмаһын һәм мәғлүмәттәрҙе юйыу';

  @override
  String get settings_delete_warning =>
      'Был ғәмәлде кире ҡайтарып булмай. Һеҙҙең бөтә аш, тренировкалар, йәшәү өсөн мөһим, һәм профиль мәңгелеккә юйыласаҡ.';

  @override
  String get settings_delete_confirm_btn => 'Мәңгелеккә юйырға';

  @override
  String get onboard_welcome_headline => 'Блумиға рәхим итегеҙ ✨';

  @override
  String get onboard_welcome_tagline =>
      'Йәмле, аҡыллы һаулыҡты күҙәтеү һеҙҙең тормош тирәләй эшләнгән.';

  @override
  String get onboard_step_about => 'Һинең турала .';

  @override
  String get onboard_step_goals => 'Һеҙҙең маҡсаттар';

  @override
  String get onboard_step_lifestyle => 'Көндәлек ғәҙәттәр';

  @override
  String get onboard_step_permissions => 'Рөхсәттәр';

  @override
  String get onboard_step_plan => 'Әҙер!';

  @override
  String get onboard_health_connect_perm => 'Һаулыҡ тоташтырыу мөмкинлеге';

  @override
  String get onboard_step_sensors_perm => 'Аҙым һанағыс датчигы';

  @override
  String get onboard_notif_perm => 'Иҫкәртмәләр һәм иҫкәртмәләр';

  @override
  String get onboard_camera_perm => 'Камера (Штрих-код һәм аҙыҡ-түлек сканеры)';

  @override
  String get onboard_grant_permissions => 'Рөхсәт биреү';

  @override
  String get onboard_continue_dashboard => 'Асыҡ приборҙар таҡтаһы';

  @override
  String get notif_channel_hydration_name => 'Гидратация ҡыҫыуҙары';

  @override
  String get notif_channel_hydration_desc =>
      'Көнө буйы нәзәкәтле һыу иҫкәртмәләр';

  @override
  String get notif_channel_nutrition_name =>
      'Аш һәм туҡланыу тураһында иҫкәртмәләр';

  @override
  String get notif_channel_nutrition_desc =>
      'Иртәнге, төшкө аш һәм киске аш тураһында иҫкәртмәләр';

  @override
  String get notif_channel_steps_name => 'Аҙым осоро';

  @override
  String get notif_channel_steps_desc =>
      'Көндәлек аҙым маҡсаттарына ирешкәндә байрамдар';

  @override
  String get notif_channel_vitals_name =>
      'Һаулыҡ һәм йәшәү өсөн мөһим тикшерелгән';

  @override
  String get notif_channel_vitals_desc =>
      'Ауырлыҡ һәм йоҡо алдынан ел-аҫҡа иҫкәртмәләр';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => 'Отсрочка 15м';

  @override
  String get notif_action_log_meal => '🥗 Бүрәнә аш';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
