// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yakut (`sah`).
class AppLocalizationsSah extends AppLocalizations {
  AppLocalizationsSah([String locale = 'sah']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Дьиэ';

  @override
  String get nav_today => 'Билигин';

  @override
  String get nav_plan => 'Былаан';

  @override
  String get nav_food => 'Аһылык';

  @override
  String get nav_food_diary => 'Аһылык дневнигэ';

  @override
  String get nav_workout => 'Тренировка лог';

  @override
  String get nav_health => 'Доруобуйа';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Сохранить';

  @override
  String get cancel => 'Ууратыы';

  @override
  String get delete => 'Соттор';

  @override
  String get edit => 'Уларытыы';

  @override
  String get done => 'Бүттэ';

  @override
  String get close => 'Саб';

  @override
  String get back => 'Төттөрү';

  @override
  String get next => 'Салгыы';

  @override
  String get continue_btn => 'Салгыы';

  @override
  String get confirm => 'Бигэргэт';

  @override
  String get search => 'Көрдөөһүн';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Бары';

  @override
  String get active => 'Активнай';

  @override
  String get today => 'Билигин';

  @override
  String get yesterday => 'Бэҕэһээ';

  @override
  String get tomorrow => 'Сарсын';

  @override
  String get add => 'Эбии';

  @override
  String get remove => 'Соттор';

  @override
  String get refresh => 'Саҥардыы';

  @override
  String get retry => 'Хата сатаа';

  @override
  String get error => 'Сыыһа';

  @override
  String get success => 'Ситиһии';

  @override
  String get loading => 'Загрузка...';

  @override
  String get no_data => 'Даннайдар суохтар';

  @override
  String get offline => 'Офлайн режим';

  @override
  String get offline_sub =>
      'Уларыйыылар хаттаан холбонон баран синхронизацияланыахтара';

  @override
  String get undo => 'Төннөрүү';

  @override
  String get portion => 'Порция';

  @override
  String get quantity => 'Ахсаан';

  @override
  String get unit => 'Бөлөх';

  @override
  String get clear => 'Ыраас';

  @override
  String get select => 'Талыҥ';

  @override
  String get apply => 'Сайабылыанньа биэр';

  @override
  String get reset => 'Сброс';

  @override
  String get ok => 'Сөп';

  @override
  String get yes => 'Оннук';

  @override
  String get no => 'Суох';

  @override
  String get optional => 'Баҕар';

  @override
  String get calories => 'Калория';

  @override
  String get protein => 'Белок';

  @override
  String get carbs => 'Углеводтар';

  @override
  String get fat => 'Сымнаҕас';

  @override
  String get fiber => 'Клетчатка';

  @override
  String get water => 'Уу';

  @override
  String get steps => 'Хаамыылар';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'киилэ';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'в';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'чаас';

  @override
  String get minutes => 'мүнүүтэ';

  @override
  String get serving => 'Аһылык';

  @override
  String get servings => 'Порциялар';

  @override
  String get serving_size => 'Порция кээмэйэ';

  @override
  String get per_100g => 'на 100г';

  @override
  String get india => 'Индия';

  @override
  String get asia => 'Азия';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Орто Дойду';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Дьиэ';

  @override
  String get home_greeting_morning => 'Үтүө сарсыарданан';

  @override
  String get home_greeting_afternoon => 'Үтүө күнүс';

  @override
  String get home_greeting_evening => 'Үтүө киэһэнэн';

  @override
  String get home_streak_title => 'Блоссом Стрик';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн устата',
      one: '1 күн устата',
      zero: '0 күн устата',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Умайбыт';

  @override
  String get home_calories_budget => 'Калория бүддьүөтэ';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал хаалбыт';
  }

  @override
  String get home_water_title => 'Күннээҕи уунан хааччыйыы';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мөл';
  }

  @override
  String get home_steps_title => 'Хаамыы хардыылара';

  @override
  String get home_quick_actions => 'Түргэн дьайыылар';

  @override
  String get home_log_meal => 'Мас аһылык';

  @override
  String get home_log_water => 'Мас уута';

  @override
  String get home_log_workout => 'Лог Тренировка';

  @override
  String get home_log_weight => 'Лог ыйааһына';

  @override
  String get home_insights_title => 'Бүгүҥҥү өйдөбүллэр';

  @override
  String get home_quote =>
      'Кыра доруобай талыылар сибэккилээх уларыйыылары үөскэтэллэр.';

  @override
  String get home_ai_coach_tip => 'Блуми ИИ тренерэ';

  @override
  String get home_surroundings => 'Тулалыыр эйгэ уонна салгын';

  @override
  String get home_notifications => 'Биллэриилэр';

  @override
  String get home_daily_score => 'Күннээҕи доруобуйа сыанабыла';

  @override
  String get home_view_all => 'Барытын көр';

  @override
  String get food_diary_title => 'Аһылык дневнигэ';

  @override
  String get food_breakfast => 'Сарсыардааҥҥы аһылык';

  @override
  String get food_lunch => 'Эбиэт';

  @override
  String get food_dinner => 'Киэһээҥҥи аһылык';

  @override
  String get food_snacks => 'Закускалар';

  @override
  String get food_add_food => 'Аһылык эбэн биэр';

  @override
  String get food_edit_food => 'Аһы уларытыы';

  @override
  String get food_add_breakfast => 'Сарсыардааҥҥы аһылыгы эбэн биэр';

  @override
  String get food_add_lunch => 'Аһылык эбии';

  @override
  String get food_add_dinner => 'Киэһээҥҥи аһылыгы эбэн биэр';

  @override
  String get food_add_snack => 'Снек эбэн биэр';

  @override
  String get food_total_calories => 'Уопсай калория';

  @override
  String get food_empty_meal => 'Бу аһылыкка аһылык билиҥҥитэ бэлиэтэммэтэх';

  @override
  String get food_empty_diary => 'Бу күн аһылык бэлиэтэммэтэх';

  @override
  String get food_log_first_meal =>
      'Бастакы минньигэс аһылыккын суруйарга + баттаа';

  @override
  String get food_quick_add => 'Түргэнник эбии';

  @override
  String get food_search_hint =>
      'Аһылыктары, фрукталары, даллары, ротилары көрдөө...';

  @override
  String get food_custom_recipe => 'Аһылык уонна рецеб';

  @override
  String get food_scan_barcode => 'Штрих-коду сканердыыр';

  @override
  String get food_camera_scan => 'ИИ Аһылык сканера';

  @override
  String get food_recent => 'Кэнники аһылыктар';

  @override
  String get food_favourites => 'Сөбүлээбиттэр';

  @override
  String get food_macro_summary => 'Макроэлемент арахсыыта';

  @override
  String get food_delete_meal_confirm =>
      'Бу эбийиэги суох оҥоруоххун баҕараҕын дуо?';

  @override
  String get food_item_deleted => 'Аһылык эбийиэгэ ылыллыбыт';

  @override
  String get food_remaining => 'хаалбыт';

  @override
  String get food_consumed => 'туһаныллыбыт';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Аһылыктары көрдөө';

  @override
  String get foodSearch_scan_barcode => 'Штрих-коду сканердыыр';

  @override
  String get foodSearch_take_photo => 'Аһылык хаартыската';

  @override
  String get foodSearch_custom_food => 'Тустаах аһы оҥор';

  @override
  String get foodSearch_recent_searches => 'Кэлиҥҥи көрдөөһүннэр';

  @override
  String get foodSearch_popular => 'Биллэр астар';

  @override
  String get foodSearch_no_results => 'Эн көрдөөһүҥҥэр сөп түбэһэр ас суох';

  @override
  String get barcode_title => 'Штрих-код сканера';

  @override
  String get barcode_align => 'Камера раматын иһигэр штрих-коду сөп түбэһиннэр';

  @override
  String get barcode_not_found => 'Табаар базаҕа булуллубатах';

  @override
  String get barcode_premium_feature =>
      'Штрих-код сканердааһына Bloomi Pro көмөтүнэн баар';

  @override
  String get camera_title => 'ИИ Аһылык сканера';

  @override
  String get camera_tap_hint => 'Аһылыккын чуолкайдык хаартыскаҕа түһэр';

  @override
  String get camera_analysing => 'Аһылык тарелкатын ырытыы...';

  @override
  String get camera_detected => 'Булуллубут эбийиэктэр';

  @override
  String get camera_flash => 'Flash-ы уларыт';

  @override
  String get camera_retake => 'Хаартысканы хаттаан ыл';

  @override
  String get camera_confirm_food => 'Элементтэри бигэргэт';

  @override
  String get customFood_title => 'Аһылык уонна рецеб';

  @override
  String get customFood_name_hint => 'Аһылык эбэтэр ингредиен аата';

  @override
  String get customFood_calories_hint => 'Калория (ккал)';

  @override
  String get customFood_protein_hint => 'Белок (g)';

  @override
  String get customFood_carbs_hint => 'Углеводтар (г)';

  @override
  String get customFood_fat_hint => 'Жир (г)';

  @override
  String get customFood_save => 'Рецепты харыстаан';

  @override
  String get water_tracker_title => 'Уу трекерэ';

  @override
  String get water_daily_target => 'Күннээҕи уунан хааччыйыы сыала';

  @override
  String get water_logged_today => 'Бүгүн киирбит';

  @override
  String get water_add_glass => '+250 мл Стакан';

  @override
  String get water_add_bottle => '+500 мл Бытыылка';

  @override
  String get water_custom_amount => 'Тустаах суума';

  @override
  String get water_reminder_tip =>
      'Күнү быһа өрүү уу иһэҕин, күүс-уох туруктаах буоллун диэн.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount мл уу 💧';
  }

  @override
  String get workout_title => 'Тренировка лог';

  @override
  String get workout_add_exercise => 'Тренировканы эбэн биэр';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Күүс';

  @override
  String get workout_yoga => 'Йога уонна сымнаҕас буолуу';

  @override
  String get workout_duration => 'Уһуна';

  @override
  String get workout_intensity => 'Күүс';

  @override
  String get workout_calories_burned => 'Умайбыт калория';

  @override
  String get workout_empty => 'Бүгүн ханнык да дьарык бэлиэтэммэтэх';

  @override
  String get workout_save_success => 'Тренировка ситиһиилээхтик харыстанна!';

  @override
  String get workout_type => 'Үөрэх көрүҥэ';

  @override
  String get workout_notes => 'Бэлиэтээһиннэр уонна толкуйдар';

  @override
  String get health_overview_title => 'Доруобуйа уонна олохтоох';

  @override
  String get health_heart_rate => 'Сүрэх тэбиитэ';

  @override
  String get health_blood_oxygen => 'Хаан кислорода (SpO2)';

  @override
  String get health_blood_pressure => 'Хаан баттааһына';

  @override
  String get health_blood_glucose => 'Хаан глюкозата';

  @override
  String get health_body_temperature => 'Эти-сиини температурата';

  @override
  String get health_sleep_tracking => 'Утуйууну кэтээн көрүү';

  @override
  String get health_weight_tracking => 'Ыйааһын уонна эт-хаан састааба';

  @override
  String get health_waist_hip => 'Бэлиэттэн атахха сыһыан';

  @override
  String get health_devices_hub => 'Тэриллэр уонна смарт-чаһы хаба';

  @override
  String get health_sync_now => 'Доруобуйа даннайдарын синхроннааһын';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Бүтэһик синхронизация: $time';
  }

  @override
  String get health_manual_entry => 'Доруобуйа туһунан илиинэн киирии';

  @override
  String get health_metric_detail => 'Метрика сиһилии';

  @override
  String get health_connected_sensors => 'Холбуу доруобуйа датчиктара';

  @override
  String get plan_title => 'Күннээҕи былаан';

  @override
  String get plan_weekly_title => 'Нэдиэлэтээҕи доруобуйа былаана';

  @override
  String get plan_calorie_target => 'Калория сыала';

  @override
  String get plan_water_target => 'Уунан хааччыйыы сыала';

  @override
  String get plan_step_target => 'Хардыы сыала';

  @override
  String get plan_sleep_target => 'Утуйар сыал';

  @override
  String get plan_meal_suggestions => 'Аһылык этиилэрэ';

  @override
  String get plan_healthy_habits => 'Доруобай үгэстэр уонна сүбэлэр';

  @override
  String get plan_coach_advice => 'Bloomi AI тренер сүбэлэрэ';

  @override
  String get plan_generated_title => 'Бэйэ туспа күннээҕи графига';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профилы уларыт';

  @override
  String get profile_name => 'Аат';

  @override
  String get profile_age => 'Сааһа';

  @override
  String get profile_gender => 'Пол';

  @override
  String get profile_height => 'Үрдүгэ';

  @override
  String get profile_weight => 'Ыйааһын';

  @override
  String get profile_goal => 'Сүрүн сыал';

  @override
  String get profile_activity_level => 'Дьарык таһыма';

  @override
  String get profile_stats => 'Мин доруобуйам статистиката';

  @override
  String get profile_saved => 'Профиль ситиһиилээхтик саҥардылынна';

  @override
  String get profile_bmi => 'Эти-сиини ыйааһын индексэ (ИМТ)';

  @override
  String get profile_membership => 'Чилиэн буолуу';

  @override
  String get settings => 'Настройкалар';

  @override
  String get preferences_habits => 'СӨБҮЛҮҮЛЭР & ҮГЭС';

  @override
  String get appearance_theme => 'Тас көрүҥэ уонна тиэмэтэ';

  @override
  String get appearance_theme_sub =>
      'Хараҥа, сырдык, систиэмэ режимэ уонна приложение фонун варианнара';

  @override
  String get permissions => 'Көҥүлэр уонна систиэмэҕэ киирии';

  @override
  String get permissions_sub =>
      'Health Connect, хаамыы датчиктара, GPS, биллэриилэр уонна камера';

  @override
  String get reminders_notifications => 'Өйдөтүүлэр уонна биллэриилэр';

  @override
  String get reminders_sub =>
      'Аһыыр кэмнэр, уу, ыйааһыны бэрэбиэркэлээһин уонна утуйуох иннинэ өйдөтүү';

  @override
  String get units_of_measurement => 'Кээмэй биридимиэттэрэ';

  @override
  String get units_sub =>
      'Метрика (кг, см, мл, км) эбэтэр Империал (фунт, фут/дюйм, фл унция)';

  @override
  String get app_language => 'Приложение тыла';

  @override
  String get language_sub =>
      'Английскай, हिन्दी (Хинди), Хинглиш уонна 195+ аан дойду тыллар';

  @override
  String get home_screen_widgets => 'Домашняй экран виджеттара';

  @override
  String get widgets_sub =>
      'Android виджеттара: Хаб, Степс, Уу, Аһылык уонна Талисман';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Смарт-чаһы табаарыһа, плиткалар, ыарахаттар уонна тыыннаах дьайыылар';

  @override
  String get goals_wellness => 'СЫАЛЛАР & ДОРУОХ ТУҺУН ӨЙДҮҮЛЭР';

  @override
  String get nutrition_targets => 'Аһылык сыаллара уонна макро араарыы';

  @override
  String get nutrition_targets_sub =>
      'Калория сыала, белок, углевод, сыа уонна уу сыала';

  @override
  String get weekly_recap => 'Нэдиэлэтээҕи чэгиэн буолуу түмүгэ';

  @override
  String get weekly_recap_sub =>
      'күннээх орто калория, макросыһыан уонна бастыҥ күн';

  @override
  String get streaks_milestones => 'Стриктар уонна ситиһиилэр';

  @override
  String get streaks_sub => 'Активнай сибэккилэр, бэлиэлэр уонна ситиһиилэр';

  @override
  String get connected_devices => 'ХОЛБОҺУННААХ ТЭРИЛЛЭРДЭР УОННА ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Тэриллэр уонна смарт-чаһы хаба';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Тулалыыр эйгэ уонна күн-дьыл туруга';

  @override
  String get surroundings_sub =>
      'Салгын хаачыстыбата (AQI), УФ-индекс уонна күн-дьыл туругунан уунан хааччыйыы туһунан сүбэлэр';

  @override
  String get bloomi_pro => 'Bloomi Pro сурутуута';

  @override
  String get bloomi_pro_sub =>
      'ИИ былаан тренерэ, 5 дьиэ экранын виджета уонна олоххо улахан суолталаахтары кэтээн көрүү';

  @override
  String get about_security => 'ТУҺУНАН & БЕЗОПАСНОСТЬ';

  @override
  String get about_bloomi => 'Блуми туһунан';

  @override
  String get about_bloomi_sub =>
      'Тутуу характеристиката, версията, атрибуциялара';

  @override
  String get privacy_policy => 'Конфиденциальность политиката';

  @override
  String get privacy_policy_sub =>
      'Офлайн-бастакы, тэрил иһигэр баар даннай архитектурата';

  @override
  String get terms_conditions => 'Уураахтар уонна усулуобуйалар';

  @override
  String get terms_conditions_sub =>
      'Үлэ усулуобуйата уонна чэгиэн буолуу быраабылалара';

  @override
  String get delete_account => 'Аккаунт уонна даннайдары суох оҥоруу';

  @override
  String get delete_account_sub =>
      'Олохтоох SQLite даннайдарын уонна былыт резервнай копияларын төннүбэттик соттор';

  @override
  String get healthy_habits =>
      'Сымнаҕас, үйэлээх чэгиэн буолуу үгэстэрин олохтоо';

  @override
  String get all_logs => 'Мин кэтээн көрөр даннайдарым уонна логтарым';

  @override
  String get search_language =>
      'Тылынан эбэтэр төрөөбүт суругунан көрдөөһүн...';

  @override
  String get languages_available => 'Баар тыллар';

  @override
  String get no_matching_languages => 'Сөп түбэһэр тыллар булуллубатахтар';

  @override
  String get try_searching =>
      'Төрөөбүт суругунан эбэтэр английскай суругунан көрдөө';

  @override
  String get partially_translated => 'Сорох тылбаастаммыт';

  @override
  String get complete_translation => 'Түмүк';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Тыл $name ( $nativeName ) диэн туруоруллубут';
  }

  @override
  String get surroundings_title => 'Тулалыыр эйгэ уонна эйгэ';

  @override
  String get surroundings_aqi => 'Салгын хаачыстыбатын индексэ';

  @override
  String get surroundings_uv => 'УФ индекс';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Сииктээх';

  @override
  String get surroundings_hydration_advice =>
      'Билиҥҥи күн-дьыл усулуобуйатыгар үчүгэйдик уулаах буолуҥ.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Аһы көрдөө';

  @override
  String get food_quick_barcode => 'Штрих-коду сканердаа 👑';

  @override
  String get food_quick_water => 'Уу кут';

  @override
  String get food_quick_custom => 'Анал ас';

  @override
  String get surroundings_good => 'Үчүгэй';

  @override
  String get surroundings_moderate => 'Орто';

  @override
  String get surroundings_unhealthy => 'Доруобуйаҕа туһата суох';

  @override
  String get notifications_title => 'Биллэриилэр уонна сэрэтиилэр';

  @override
  String get notifications_empty => 'Саҥа биллэрии суох';

  @override
  String get notifications_mark_read => 'Барытын аахпыт курдук бэлиэтээ';

  @override
  String get notifications_clear => 'Барытын ыраастаа';

  @override
  String get reminders => 'Өйдөтүү настройкалара';

  @override
  String get notifications => 'Биллэриилэр';

  @override
  String get reminders_breakfast_title =>
      'Сарсыардааҥҥы аһылык туһунан өйдөтүү 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Үтүө сарсыарданан! $time чааска аһылыктаах сарсыардааҥҥы аһылык кэмэ.';
  }

  @override
  String get reminders_lunch_title => 'Аһылыкка өйдөтүү 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Тохтоон, $time -га тэҥнэһиилээх, өйдөөх аһылыктан астын.';
  }

  @override
  String get reminders_dinner_title => 'Киэһээҥҥи аһылыкка өйдөтүү 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time чааска чэпчэки, астаах аһылык кэмэ.';
  }

  @override
  String get reminders_water_title => 'Гидратация Надж 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Сибиэһэй ыстакаан уу иһэр кэм кэллэ! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Нэдиэлэтээҕи ыйааһын ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) нөҥүө нэдиэлэтээҕи этиҥ-сииниҥ көрдөрүүлэрин көр.';
  }

  @override
  String get reminders_sleep_title => 'Утуйар кэмҥитигэр салгын 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Сынньан уонна сынньалаҥ утуйууга бэлэмнэн ( $time ).';
  }

  @override
  String get onboard_welcome => 'Блумига үөрэ-көтө кэллигит';

  @override
  String get onboard_sub =>
      'Эн доҕордуу, офлайн-бастакы доруобуйа уонна аһылык доҕоро.';

  @override
  String get onboard_get_started => 'Саҕалыахха';

  @override
  String get onboard_sign_in => 'Киирии';

  @override
  String get onboard_skip => 'Көмө';

  @override
  String get onboard_choose_goal => 'Эн сүрүн доруобуйаҥ сыала-соруга тугуй?';

  @override
  String get onboard_goal_weight_loss => 'Сымнаҕас ыйааһыны түһэрии';

  @override
  String get onboard_goal_muscle => 'Былчыҥ күүһүрүүтэ уонна күүһүрүүтэ';

  @override
  String get onboard_goal_energy => 'Күннээҕи энергия уонна тыыннаах буолуу';

  @override
  String get onboard_goal_habits => 'Доруобай өйдөөх-санаалаах аһылык';

  @override
  String get onboard_about_you => 'Бэйэҥ тускунан кэпсээ эрэ';

  @override
  String get onboard_lifestyle => 'Күннээҕи олоҕуҥ';

  @override
  String get onboard_permissions_title => 'Көҥүлэр уонна систиэмэҕэ киирии';

  @override
  String get onboard_permissions_sub =>
      'Синхронизация хардыыларыгар, дьарыктарга уонна өйдөтүүгэ киириини биэр.';

  @override
  String get onboard_plan_ready_title => 'Эн туспа былаанҥын бэлэм!';

  @override
  String get onboard_plan_ready_sub =>
      'Эһиэхэ анаан сымнаҕас, туспа аһылык уонна чэгиэн буолуу суол хартыынатын оҥордубут.';

  @override
  String get onboard_enter_bloomi => 'Блуми киир';

  @override
  String get insights_weekly_report => 'Нэдиэлэтээҕи чэгиэн буолуу түмүгэ';

  @override
  String insights_best_day(Object day) {
    return 'Саамай үчүгэй сөп түбэһии күнэ: $day';
  }

  @override
  String get insights_streaks_badges => 'Стриктар уонна ситиһиилэр';

  @override
  String insights_unlocked_on(Object date) {
    return '$date-га арыллыбыт';
  }

  @override
  String get insights_keep_going => 'Үчүгэй сайдыыны салҕаа!';

  @override
  String get widgets_title => 'Домашняй экран виджеттара';

  @override
  String widgets_active_count(Object count) {
    return 'Активнай виджеттар: $count';
  }

  @override
  String get widgets_hub_title => 'Блуми Уэллнесс Хаб';

  @override
  String get widgets_steps_title => 'Хаамыылар уонна Активнай Кольцо';

  @override
  String get widgets_water_title => 'Түргэнник уунан хааччыйыы бэлиэтэ';

  @override
  String get widgets_mascot_title => 'Блуми талисманын табаарыһа';

  @override
  String get wear_os_title => 'ОС Смарт-чаһы кэт';

  @override
  String get wear_os_connected => 'Чаһыга холбонон';

  @override
  String get wear_os_sync => 'Көрүү дааннайдарын синхроннааһын';

  @override
  String get theme_title => 'Тас көрүҥэ уонна тиэмэтэ';

  @override
  String get theme_mode => 'Тиэмэ режимэ';

  @override
  String get theme_light => 'Сырдык';

  @override
  String get theme_dark => 'Хараҥа';

  @override
  String get theme_system => 'Систиэмэ умолчаниета';

  @override
  String get theme_background_palette => 'Фон палитрата';

  @override
  String get units_title => 'Кээмэй биридимиэттэрэ';

  @override
  String get units_metric => 'Метрика (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дюйм, фл унция)';

  @override
  String get home_unable_load => 'Приборнай панелы киллэрэр кыах суох';

  @override
  String get home_health_permission_req => 'Health Connect көҥүлэ ирдэнэр';

  @override
  String get home_health_permission_desc =>
      'Bloomi дьиҥнээх хардыылары, сүрэх тэбиитин уонна мобильнай дьиэ виджеттарын синхронизациялыырга Health Connect көҥүлүн ирдиир.';

  @override
  String get home_allow_health => 'Доруобуйа сибээһин көҥүллээ';

  @override
  String get home_ready_mindful_day => 'Өйдөөх күҥҥэ бэлэмҥин дуо? ✨';

  @override
  String get home_quick_add => 'Түргэнник эбии';

  @override
  String get home_live_gps => 'Тыыннаах GPS';

  @override
  String get home_calories_remaining_label => 'ХАЛАЛЛАР КАЛОРИЯЛАР';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Сиэбит: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Уу кэтээн көрөр 💧';

  @override
  String get home_water_goal_reached => 'Күннээҕи сыал ситиһиллибит 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Күннээҕи сыалга $remaining мл';
  }

  @override
  String get home_details => 'Сиһилии';

  @override
  String get home_upgrade_plan_desc =>
      'Күннээҕи персонализированнай сыаллары уонна ИИ былаанын арыйарга саҥардыы';

  @override
  String get home_unlock => 'Арый 👑';

  @override
  String get home_quick_log_hint =>
      'Доруобуйаны харыстааһын туһунан суруйууну түргэнник суруй';

  @override
  String get food_serving_size => 'Порция кээмэйэ';

  @override
  String get food_serving_grams => 'Подача (g)';

  @override
  String get food_number_servings => 'Порция ахсаана';

  @override
  String get food_calories_per_serving => 'Биир порцияҕа калория';

  @override
  String get food_recipe_ingredients => 'Ингредиеннэр';

  @override
  String get food_recipe_add_ingredient => 'Ингредиент эбэн биэр';

  @override
  String get food_recipe_directions => 'Инструкция уонна бэлиэтээһин';

  @override
  String get food_recipe_total => 'Уопсай рецепт аһылык';

  @override
  String get food_recipe_per_serving => 'Биир порция аһылык';

  @override
  String get food_recipe_saved_toast => 'Анал ас ситиһиилээхтик харыстанна!';

  @override
  String get food_barcode_found => 'Табаар булуллубут!';

  @override
  String get food_barcode_not_found_desc =>
      'Бу штрих-коду аһаҕас базаттан булбатыбыт. Бэйэҥ ас быһыытынан эбэн биэриэххин сөп.';

  @override
  String get food_add_custom_btn => 'Тустаах аһы эбэн биэр';

  @override
  String get food_scan_again => 'Эмиэ сканердаа';

  @override
  String get food_review_items => 'Булуллубут аһылыктары ырытыы';

  @override
  String get food_review_hint =>
      'Кээмэйи көннөрүҥ эбэтэр ханнык баҕарар биллибэт эбийиэги ылан кэбиһиҥ';

  @override
  String get food_log_selected => 'Талан ылыллыбыт аһылыктары суруй';

  @override
  String get food_favourites_title => 'Сөбүлүүр астарым';

  @override
  String get food_recent_title => 'Кэнники аһылыктар';

  @override
  String get food_no_favourites =>
      'Сөбүлүүр аһым суох. Манна харыстыыр ​​туһугар ханнык баҕарар аһы сөбүлээ.';

  @override
  String get food_no_recents => 'Соторутааҕыта бэлиэтэммит ас булуллубатах.';

  @override
  String get food_nutrition_details_title => 'Күннээҕи аһылык сиһилии';

  @override
  String get food_macro_protein_label => 'Белок ыһыллыыта';

  @override
  String get food_macro_carbs_label => 'Углеводтар арахсыылара';

  @override
  String get food_macro_fat_label => 'Үүт ыһыллыыта';

  @override
  String get food_macro_fiber_label => 'Волокно ыһыллыыта';

  @override
  String get food_daily_target_comparison => 'Сыал тэҥнэбилэ';

  @override
  String food_target_label(Object target) {
    return 'Сыала: $target';
  }

  @override
  String get food_edit_entry => 'Дневникка суруйууну уларыт';

  @override
  String get food_delete_entry => 'Киириини соттор';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal ккал';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current $target мл';
  }

  @override
  String get water_intake_history => 'Бүгүҥҥү уу логтара';

  @override
  String get water_no_logs_today =>
      'Бүгүн уу киирбэтэх. Ууннаран баран түргэнник эбии кнопканы баттаа!';

  @override
  String get water_adjust_goal => 'Күннээҕи сыалы көннөр';

  @override
  String get health_connect_banner => 'Health Connect-ка холбонон';

  @override
  String get health_vitals_summary => 'Күннээҕи доруобуйа харыстабыла';

  @override
  String get health_latest_heart_rate => 'Кэнники сүрэх тэбиитэ';

  @override
  String get health_latest_bp => 'Хаан баттааһына';

  @override
  String get health_latest_spo2 => 'Хаан кислорода';

  @override
  String get health_latest_glucose => 'Хаан глюкозата';

  @override
  String get health_latest_weight => 'Ыйааһын';

  @override
  String get health_latest_sleep => 'Утуйуу кэмэ';

  @override
  String get health_add_manual => 'Илиинэн кээмэйдээһини эбэн биэр';

  @override
  String get health_history_trends => 'Историческай хайысхалар';

  @override
  String get health_sync_success =>
      'Доруобуйа даннайдара ситиһиилээхтик синхроннаммыттар!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours чаас $mins мүн';
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
    return '__РН_0__ / __РН_1__ мм рт. ст.';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title => 'Холбуу тэриллэр уонна кэтиллэр тэриллэр';

  @override
  String get health_devices_desc =>
      'Хос смарт-чаһылары, фитнес-трекердары уонна доруобуйа датчиктарын салай.';

  @override
  String get health_workout_editor_title => 'Тренировканы уларытыы';

  @override
  String get health_workout_name_label => 'Тренировка аата';

  @override
  String get health_workout_duration_label => 'Уһуна (мүнүүтэ)';

  @override
  String get health_workout_calories_label => 'Сыаналаммыт калория (ккал)';

  @override
  String get health_workout_date_label => 'Күнэ уонна бириэмэтэ';

  @override
  String get plan_daily_wellness_roadmap => 'Бэйэҥ туспа суол хартыынаҥ';

  @override
  String get plan_morning_routine => 'Сарсыардааҥҥы үгэс';

  @override
  String get plan_afternoon_routine => 'Күнүскү чэгиэн буолуу';

  @override
  String get plan_evening_routine => 'Киэһээҥҥи салгын';

  @override
  String get plan_coach_badge => 'Блуми ИИ тренерэ';

  @override
  String get plan_weekly_overview => '7-күннээх чэгиэн буолууга болҕомто';

  @override
  String get plan_targets_title => 'Доруобай буолуу сыаллара уонна сыаллара';

  @override
  String get plan_calorie_budget_label => 'Күннээҕи калория бүддьүөтэ';

  @override
  String get plan_water_budget_label => 'Күннээҕи уу сыала';

  @override
  String get plan_step_budget_label => 'Күннээҕи хардыы сыала';

  @override
  String get plan_macro_split_label => 'Макроэлемент сыһыана';

  @override
  String get profile_personal_details => 'Тус тус реквизиттэр';

  @override
  String get profile_body_stats => 'Эти-сиини кээмэйдээһин';

  @override
  String get profile_app_preferences =>
      'Настройкалар уонна приложение настройкалара';

  @override
  String get profile_edit_name_hint => 'Эн ааккын';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Үрдүгэ ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ыйааһын ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Сааһа';

  @override
  String get profile_gender_male => 'Эр киһи';

  @override
  String get profile_gender_female => 'Дьахтар';

  @override
  String get profile_gender_other => 'Атын / Этиэхпин баҕарбаппын';

  @override
  String get profile_activity_sedentary => 'Олорор (кыра эбэтэр суох дьарык)';

  @override
  String get profile_activity_light => 'Кыратык хамсанар (1-3 күн/нэдиэлэ)';

  @override
  String get profile_activity_moderate => 'Орто актыыбынай (3-5 күн/нэдиэлэ)';

  @override
  String get profile_activity_very => 'Олус актыыбынай (6-7 күн/нэдиэлэ)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Калориялары, уулары уонна хаамыылары көрөргө Wear OS чаһыгар Bloomi плиткатын уонна ыарахаттары туруор.';

  @override
  String get settings_widgets_header => 'Интерактивнай Android-виджеттар';

  @override
  String get settings_widgets_desc =>
      'Түргэн саҥардыылары ылар туһугар, тэрилгит сүрүн экрааныгар дьиҥнээх кэмҥэ үлэлиир виджеттары туруоруҥ.';

  @override
  String get settings_about_header => 'Блуми туһунан';

  @override
  String get settings_about_version => '1.0.0 версия';

  @override
  String get settings_about_build => '100 тутуу';

  @override
  String get settings_about_credits =>
      'Өйдөөх, доруобай олоххо болҕомтолоохтук оҥоһуллубут.';

  @override
  String get settings_terms_header => 'Уураахтар уонна ирдэбиллэр';

  @override
  String get settings_privacy_header => 'Конфиденциальность политиката';

  @override
  String get settings_delete_header => 'Аккаунт уонна даннайдары суох оҥоруу';

  @override
  String get settings_delete_warning =>
      'Бу дьайыыны төнүннэрэр кыах суох. Аһылыккыт, дьарыккыт, дьарыккыт уонна профилгыт барыта үйэлэргэ суох оҥоһуллуоҕа.';

  @override
  String get settings_delete_confirm_btn => 'Бүтүн тухары суох оҥоруу';

  @override
  String get onboard_welcome_headline => 'Bloomi-ҕа үөрэ-көтө кэллиҥ ✨';

  @override
  String get onboard_welcome_tagline =>
      'Олоххун тула оҥоһуллубут сымнаҕас, өйдөөх чэгиэн буолууну кэтээн көрүү.';

  @override
  String get onboard_step_about => 'Эн тускунан';

  @override
  String get onboard_step_goals => 'Эн сыалларыҥ';

  @override
  String get onboard_step_lifestyle => 'Күннээҕи үгэстэр';

  @override
  String get onboard_step_permissions => 'Көҥүл';

  @override
  String get onboard_step_plan => 'Бэлэм!';

  @override
  String get onboard_health_connect_perm => 'Доруобуйа холбоһуутугар киирии';

  @override
  String get onboard_step_sensors_perm => 'Хаамыыны ааҕар датчик';

  @override
  String get onboard_notif_perm => 'Өйдөөх санатыылар уонна биллэриилэр';

  @override
  String get onboard_camera_perm => 'Камера (Штрих-код уонна ас сканера)';

  @override
  String get onboard_grant_permissions => 'Көҥүлү биэр';

  @override
  String get onboard_continue_dashboard => 'Панель арый';

  @override
  String get notif_channel_hydration_name => 'Гидратационнай соруктар';

  @override
  String get notif_channel_hydration_desc => 'Күнү быһа сымнаҕас уу өйдөтүүтэ';

  @override
  String get notif_channel_nutrition_name =>
      'Аһылык уонна аһылык туһунан өйдөтүү';

  @override
  String get notif_channel_nutrition_desc =>
      'Сарсыардааҥҥы, күнүскү уонна киэһээҥҥи аһылык туһунан сэрэтиилэр';

  @override
  String get notif_channel_steps_name => 'Хаамыы түһүмэхтэрэ';

  @override
  String get notif_channel_steps_desc =>
      'Күннээҕи хардыы сыалын ситиһэр бырааһынньыктар';

  @override
  String get notif_channel_vitals_name =>
      'Доруобуйаны уонна олоҕу бэрэбиэркэлээһин';

  @override
  String get notif_channel_vitals_desc =>
      'Ыйааһын уонна утуйуу иннинэ сынньанар туһунан өйдөтүү';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => 'Снуз 15м';

  @override
  String get notif_action_log_meal => '🥗 Мас аһылык';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
