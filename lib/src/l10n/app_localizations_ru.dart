// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Главная';

  @override
  String get nav_today => 'Сегодня';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Питание';

  @override
  String get nav_food_diary => 'Дневник питания';

  @override
  String get nav_workout => 'Тренировки';

  @override
  String get nav_health => 'Здоровье';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Сохранить';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get edit => 'Изменить';

  @override
  String get done => 'Готово';

  @override
  String get close => 'Закрыть';

  @override
  String get back => 'Назад';

  @override
  String get next => 'Далее';

  @override
  String get continue_btn => 'Продолжить';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get search => 'Поиск';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Все';

  @override
  String get active => 'Активно';

  @override
  String get today => 'Сегодня';

  @override
  String get yesterday => 'Вчера';

  @override
  String get tomorrow => 'Завтра';

  @override
  String get add => 'Добавить';

  @override
  String get remove => 'Удалить';

  @override
  String get refresh => 'Обновить';

  @override
  String get retry => 'Повторить';

  @override
  String get error => 'Ошибка';

  @override
  String get success => 'Успешно';

  @override
  String get loading => 'Загрузка...';

  @override
  String get no_data => 'Нет данных';

  @override
  String get offline => 'Автономный режим';

  @override
  String get offline_sub => 'Данные синхронизируются при подключении';

  @override
  String get undo => 'Отменить';

  @override
  String get portion => 'порция';

  @override
  String get quantity => 'Количество';

  @override
  String get unit => 'Единица';

  @override
  String get clear => 'Очистить';

  @override
  String get select => 'Выбрать';

  @override
  String get apply => 'Применить';

  @override
  String get reset => 'Сброс';

  @override
  String get ok => 'ОК';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get optional => 'Необязательно';

  @override
  String get calories => 'Калории';

  @override
  String get protein => 'Белки';

  @override
  String get carbs => 'Углеводы';

  @override
  String get fat => 'Жиры';

  @override
  String get fiber => 'Клетчатка';

  @override
  String get water => 'Вода';

  @override
  String get steps => 'Шаги';

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
  String get inches => 'в';

  @override
  String get bpm => 'ударов в минуту';

  @override
  String get hours => 'часы';

  @override
  String get minutes => 'минут';

  @override
  String get serving => 'Обслуживание';

  @override
  String get servings => 'Порции';

  @override
  String get serving_size => 'Размер порции';

  @override
  String get per_100g => 'за 100 г';

  @override
  String get india => 'Индия';

  @override
  String get asia => 'Азия';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Ближний Восток';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Главная';

  @override
  String get home_greeting_morning => 'Доброе утро';

  @override
  String get home_greeting_afternoon => 'Добрый день';

  @override
  String get home_greeting_evening => 'Добрый вечер';

  @override
  String get home_streak_title => 'Серия Bloomi';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дней',
      many: '$count дней',
      few: '$count дня',
      one: '1 день',
      zero: '0 дней',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Сожжено';

  @override
  String get home_calories_budget => 'Дневная норма';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Осталось $kcal ккал';
  }

  @override
  String get home_water_title => 'Баланс воды';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Пройдено шагов';

  @override
  String get home_quick_actions => 'Быстрые действия';

  @override
  String get home_log_meal => 'Записать прием пищи';

  @override
  String get home_log_water => 'Записать воду';

  @override
  String get home_log_workout => 'Записать тренировку';

  @override
  String get home_log_weight => 'Записать вес';

  @override
  String get home_insights_title => 'Советы на сегодня';

  @override
  String get home_quote =>
      'Маленькие здоровые привычки ведут к большим переменам.';

  @override
  String get home_ai_coach_tip => 'AI-тренер Bloomi';

  @override
  String get home_surroundings => 'Окружающая среда';

  @override
  String get home_notifications => 'Уведомления';

  @override
  String get home_daily_score => 'Индекс здоровья';

  @override
  String get home_view_all => 'Смотреть все';

  @override
  String get food_diary_title => 'Дневник питания';

  @override
  String get food_breakfast => 'Завтрак';

  @override
  String get food_lunch => 'Обед';

  @override
  String get food_dinner => 'Ужин';

  @override
  String get food_snacks => 'Перекусы';

  @override
  String get food_add_food => 'Добавить блюдо';

  @override
  String get food_edit_food => 'Изменить блюдо';

  @override
  String get food_add_breakfast => 'Добавить завтрак';

  @override
  String get food_add_lunch => 'Добавить обед';

  @override
  String get food_add_dinner => 'Добавить ужин';

  @override
  String get food_add_snack => 'Добавить закуску';

  @override
  String get food_total_calories => 'Всего калорий';

  @override
  String get food_empty_meal =>
      'Для этого блюда пока не зарегистрировано продуктов';

  @override
  String get food_empty_diary =>
      'На этот день приемов пищи не зарегистрировано.';

  @override
  String get food_log_first_meal =>
      'Нажмите +, чтобы записать свой первый вкусный обед.';

  @override
  String get food_quick_add => 'Быстрое добавление';

  @override
  String get food_search_hint => 'Поиск блюд, фруктов, дал, роти...';

  @override
  String get food_custom_recipe => 'Индивидуальная еда и рецепты';

  @override
  String get food_scan_barcode => 'Сканировать штрих-код';

  @override
  String get food_camera_scan => 'Сканер еды с искусственным интеллектом';

  @override
  String get food_recent => 'Недавние продукты';

  @override
  String get food_favourites => 'Избранное';

  @override
  String get food_macro_summary => 'Распад макронутриентов';

  @override
  String get food_delete_meal_confirm =>
      'Вы уверены, что хотите удалить этот элемент?';

  @override
  String get food_item_deleted => 'Продукт удален';

  @override
  String get food_remaining => 'оставшееся';

  @override
  String get food_consumed => 'потребляется';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Поиск продуктов питания';

  @override
  String get foodSearch_scan_barcode => 'Сканировать штрих-код';

  @override
  String get foodSearch_take_photo => 'Фото еды';

  @override
  String get foodSearch_custom_food => 'Создать собственную еду';

  @override
  String get foodSearch_recent_searches => 'Недавние поиски';

  @override
  String get foodSearch_popular => 'Популярные блюда';

  @override
  String get foodSearch_no_results =>
      'Нет продуктов, соответствующих вашему запросу';

  @override
  String get barcode_title => 'Сканер штрих-кода';

  @override
  String get barcode_align => 'Выровняйте штрих-код внутри рамки камеры';

  @override
  String get barcode_not_found => 'Товар не найден в базе данных';

  @override
  String get barcode_premium_feature =>
      'Сканирование штрих-кода доступно в Bloomi Pro.';

  @override
  String get camera_title => 'Сканер еды с искусственным интеллектом';

  @override
  String get camera_tap_hint => 'Сделайте четкое фото вашего блюда.';

  @override
  String get camera_analysing => 'Анализ тарелки с едой...';

  @override
  String get camera_detected => 'Обнаруженные предметы';

  @override
  String get camera_flash => 'Переключить вспышку';

  @override
  String get camera_retake => 'Переснять фото';

  @override
  String get camera_confirm_food => 'Подтвердить элементы';

  @override
  String get customFood_title => 'Индивидуальная еда и рецепты';

  @override
  String get customFood_name_hint => 'Название блюда или ингредиента';

  @override
  String get customFood_calories_hint => 'Калории (ккал)';

  @override
  String get customFood_protein_hint => 'Белок (г)';

  @override
  String get customFood_carbs_hint => 'Углеводы (г)';

  @override
  String get customFood_fat_hint => 'Жир (г)';

  @override
  String get customFood_save => 'Сохранить рецепт';

  @override
  String get water_tracker_title => 'Трекер воды';

  @override
  String get water_daily_target => 'Ежедневная цель по гидратации';

  @override
  String get water_logged_today => 'Зарегистрировано сегодня';

  @override
  String get water_add_glass => '+250 мл Стакан';

  @override
  String get water_add_bottle => '+500 мл Бутылка';

  @override
  String get water_custom_amount => 'Пользовательская сумма';

  @override
  String get water_reminder_tip =>
      'Пейте воду регулярно в течение дня для поддержания стабильной энергии.';

  @override
  String water_logged_toast(Object amount) {
    return 'Записано $amount мл воды 💧';
  }

  @override
  String get workout_title => 'Журнал тренировок';

  @override
  String get workout_add_exercise => 'Добавить тренировку';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Сила';

  @override
  String get workout_yoga => 'Йога и гибкость';

  @override
  String get workout_duration => 'Продолжительность';

  @override
  String get workout_intensity => 'Интенсивность';

  @override
  String get workout_calories_burned => 'Калории сожжены';

  @override
  String get workout_empty => 'Сегодня тренировок не зарегистрировано';

  @override
  String get workout_save_success => 'Тренировка успешно сохранена!';

  @override
  String get workout_type => 'Тип тренировки';

  @override
  String get workout_notes => 'Заметки и размышления';

  @override
  String get health_overview_title => 'Здоровье и показатели';

  @override
  String get health_heart_rate => 'Частота сердечных сокращений';

  @override
  String get health_blood_oxygen => 'Кислород в крови (SpO2)';

  @override
  String get health_blood_pressure => 'Артериальное давление';

  @override
  String get health_blood_glucose => 'Глюкоза крови';

  @override
  String get health_body_temperature => 'Температура тела';

  @override
  String get health_sleep_tracking => 'Отслеживание сна';

  @override
  String get health_weight_tracking => 'Вес и состав тела';

  @override
  String get health_waist_hip => 'Соотношение талии и бедер';

  @override
  String get health_devices_hub => 'Центр устройств и умных часов';

  @override
  String get health_sync_now => 'Синхронизировать данные о состоянии здоровья';

  @override
  String health_last_synced(Object time) {
    return 'Последняя синхронизация: $time';
  }

  @override
  String get health_manual_entry => 'Ручной ввод данных о состоянии здоровья';

  @override
  String get health_metric_detail => 'Детали метрики';

  @override
  String get health_connected_sensors => 'Подключенные датчики здоровья';

  @override
  String get plan_title => 'Дневной план';

  @override
  String get plan_weekly_title => 'Еженедельный план оздоровления';

  @override
  String get plan_calorie_target => 'Цель по калориям';

  @override
  String get plan_water_target => 'Цель по гидратации';

  @override
  String get plan_step_target => 'Шаг Цель';

  @override
  String get plan_sleep_target => 'Цель сна';

  @override
  String get plan_meal_suggestions => 'Рекомендации по питанию';

  @override
  String get plan_healthy_habits => 'Здоровые привычки и советы';

  @override
  String get plan_coach_advice => 'Рекомендации Bloomi AI-тренера';

  @override
  String get plan_generated_title => 'Персонализированный ежедневный график';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Редактировать профиль';

  @override
  String get profile_name => 'Имя';

  @override
  String get profile_age => 'Возраст';

  @override
  String get profile_gender => 'Пол';

  @override
  String get profile_height => 'Высота';

  @override
  String get profile_weight => 'Вес';

  @override
  String get profile_goal => 'Основная цель';

  @override
  String get profile_activity_level => 'Уровень активности';

  @override
  String get profile_stats => 'Моя статистика здоровья';

  @override
  String get profile_saved => 'Профиль успешно обновлен';

  @override
  String get profile_bmi => 'Индекс массы тела (ИМТ)';

  @override
  String get profile_membership => 'Членство';

  @override
  String get settings => 'Настройки';

  @override
  String get preferences_habits => 'ПРЕДПОЧТЕНИЯ И ПРИВЫЧКИ';

  @override
  String get appearance_theme => 'Внешний вид и тема';

  @override
  String get appearance_theme_sub =>
      'Темный, светлый, системный режим и параметры фона приложения';

  @override
  String get permissions => 'Разрешения и доступ к системе';

  @override
  String get permissions_sub =>
      'Health Connect, датчики шагов, GPS, уведомления и камера';

  @override
  String get reminders_notifications => 'Напоминания и уведомления';

  @override
  String get reminders_sub =>
      'Время приема пищи, воды, проверка веса и напоминания о времени сна';

  @override
  String get units_of_measurement => 'Единицы измерения';

  @override
  String get units_sub =>
      'Метрические (кг, см, мл, км) или британские (фунты, футы/дюймы, жидкие унции)';

  @override
  String get app_language => 'Язык приложения';

  @override
  String get language_sub =>
      'Английский, हिन्दी (хинди), хинглиш и более 195 языков мира';

  @override
  String get home_screen_widgets => 'Виджеты главного экрана';

  @override
  String get widgets_sub =>
      'Живые виджеты Android: Хаб, Шаги, Вода, Питание и Талисман';

  @override
  String get wear_os_watch_app => 'Приложение Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Компаньон для умных часов, плитки, осложнения и жизненные показатели';

  @override
  String get goals_wellness => 'ЦЕЛИ И ЗДОРОВЬЕ';

  @override
  String get nutrition_targets =>
      'Целевые показатели питания и макро-разделение';

  @override
  String get nutrition_targets_sub =>
      'Цель по калориям, белкам, углеводам, жирам и воде';

  @override
  String get weekly_recap => 'Еженедельный обзор здоровья';

  @override
  String get weekly_recap_sub =>
      'Среднее значение калорий за 7 дней, соотношение макросов и лучший день';

  @override
  String get streaks_milestones => 'Полосы и вехи';

  @override
  String get streaks_sub => 'Активные полоски цветения, значки и достижения';

  @override
  String get connected_devices => 'ПОДКЛЮЧЕННЫЕ УСТРОЙСТВА И ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Центр устройств и умных часов';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Окружение и погода';

  @override
  String get surroundings_sub =>
      'Качество воздуха (AQI), УФ-индекс и советы по увлажнению по погодным условиям';

  @override
  String get bloomi_pro => 'Подписка Блуми Про';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 виджетов на главном экране и отслеживание жизненно важных показателей';

  @override
  String get about_security => 'О КОМПАНИИ И БЕЗОПАСНОСТЬ';

  @override
  String get about_bloomi => 'О Блуми';

  @override
  String get about_bloomi_sub => 'Спецификации сборки, версия, авторство';

  @override
  String get privacy_policy => 'Политика конфиденциальности';

  @override
  String get privacy_policy_sub =>
      'Архитектура данных, ориентированная на офлайн-режим, на устройстве';

  @override
  String get terms_conditions => 'Условия использования';

  @override
  String get terms_conditions_sub =>
      'Условия обслуживания и рекомендации по оздоровлению';

  @override
  String get delete_account => 'Удалить учетную запись и данные';

  @override
  String get delete_account_sub =>
      'Безвозвратно стереть локальные данные SQLite и облачные резервные копии.';

  @override
  String get healthy_habits =>
      'Формируйте нежные и устойчивые привычки к здоровью';

  @override
  String get all_logs => 'Мои отслеживаемые данные и журналы';

  @override
  String get search_language => 'Поиск языка...';

  @override
  String get languages_available => 'Доступные языки';

  @override
  String get no_matching_languages => 'Подходящие языки не найдены';

  @override
  String get try_searching =>
      'Попробуйте выполнить поиск по родному алфавиту или английскому написанию.';

  @override
  String get partially_translated => 'Частичный перевод';

  @override
  String get complete_translation => 'Полный';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Язык изменен на $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'Окружение и окружающая среда';

  @override
  String get surroundings_aqi => 'Индекс качества воздуха';

  @override
  String get surroundings_uv => 'УФ-индекс';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Влажность';

  @override
  String get surroundings_hydration_advice =>
      'Поддерживайте достаточное количество жидкости в текущих погодных условиях.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Поиск еды';

  @override
  String get food_quick_barcode => 'Сканировать штрих-код 👑';

  @override
  String get food_quick_water => 'Добавить воду';

  @override
  String get food_quick_custom => 'Еда на заказ';

  @override
  String get surroundings_good => 'Хорошо';

  @override
  String get surroundings_moderate => 'Умеренный';

  @override
  String get surroundings_unhealthy => 'Нездоровый';

  @override
  String get notifications_title => 'Уведомления и оповещения';

  @override
  String get notifications_empty => 'Нет новых уведомлений';

  @override
  String get notifications_mark_read => 'Отметить все как прочитанное';

  @override
  String get notifications_clear => 'Очистить все';

  @override
  String get reminders => 'Настройки напоминаний';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Напоминание о завтраке 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Доброе утро! Пришло время сытного завтрака в $time.';
  }

  @override
  String get reminders_lunch_title => 'Напоминание об обеде 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Сделайте паузу и насладитесь сбалансированным и осознанным обедом в $time.';
  }

  @override
  String get reminders_dinner_title => 'Напоминание об ужине 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Пришло время легкого и сытного ужина в $time.';
  }

  @override
  String get reminders_water_title => 'Увлажнение 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Время выпить стакан свежей воды! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Еженедельное взвешивание ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Отслеживайте свои еженедельные показатели тела на Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Перед сном 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Расслабьтесь и приготовьтесь к спокойному сну ( $time ).';
  }

  @override
  String get onboard_welcome => 'Добро пожаловать в Блуми';

  @override
  String get onboard_sub =>
      'Ваш дружелюбный помощник в области здоровья и питания, который всегда готов к работе в автономном режиме.';

  @override
  String get onboard_get_started => 'Начать';

  @override
  String get onboard_sign_in => 'Войти';

  @override
  String get onboard_skip => 'Пропустить';

  @override
  String get onboard_choose_goal =>
      'Какова ваша основная цель в области здоровья?';

  @override
  String get onboard_goal_weight_loss => 'Бережная потеря веса';

  @override
  String get onboard_goal_muscle => 'Увеличение мышечной массы и сила';

  @override
  String get onboard_goal_energy => 'Ежедневная энергия и жизненная сила';

  @override
  String get onboard_goal_habits => 'Здоровое осознанное питание';

  @override
  String get onboard_about_you => 'Расскажите нам о себе';

  @override
  String get onboard_lifestyle => 'Ваш распорядок дня';

  @override
  String get onboard_permissions_title => 'Разрешения и доступ к системе';

  @override
  String get onboard_permissions_sub =>
      'Предоставьте доступ к синхронизации шагов, тренировок и напоминаний.';

  @override
  String get onboard_plan_ready_title => 'Ваш индивидуальный план готов!';

  @override
  String get onboard_plan_ready_sub =>
      'Специально для вас мы разработали бережную, индивидуальную дорожную карту питания и здоровья.';

  @override
  String get onboard_enter_bloomi => 'Введите Блуми';

  @override
  String get insights_weekly_report => 'Еженедельный обзор здоровья';

  @override
  String insights_best_day(Object day) {
    return 'День лучшей последовательности: $day';
  }

  @override
  String get insights_streaks_badges => 'Полосы и вехи';

  @override
  String insights_unlocked_on(Object date) {
    return 'Разблокировано $date';
  }

  @override
  String get insights_keep_going => 'Продолжайте в том же духе!';

  @override
  String get widgets_title => 'Виджеты главного экрана';

  @override
  String widgets_active_count(Object count) {
    return 'Активные виджеты: $count';
  }

  @override
  String get widgets_hub_title => 'Оздоровительный центр Bloomi';

  @override
  String get widgets_steps_title => 'Шаги и активное кольцо';

  @override
  String get widgets_water_title => 'Быстрый журнал гидратации';

  @override
  String get widgets_mascot_title => 'Компаньон-талисман Блуми';

  @override
  String get wear_os_title => 'Смарт-часы с ОС Wear';

  @override
  String get wear_os_connected => 'Подключено к часам';

  @override
  String get wear_os_sync => 'Синхронизировать данные часов';

  @override
  String get theme_title => 'Внешний вид и тема';

  @override
  String get theme_mode => 'Тематический режим';

  @override
  String get theme_light => 'Свет';

  @override
  String get theme_dark => 'Темный';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Фоновая палитра';

  @override
  String get units_title => 'Единицы измерения';

  @override
  String get units_metric => 'Метрические (кг, см, мл)';

  @override
  String get units_imperial => 'Британский (фунты, дюймы, жидкие унции)';

  @override
  String get home_unable_load => 'Не удалось загрузить панель';

  @override
  String get home_health_permission_req =>
      'Требуется разрешение Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi требуется разрешение Health Connect, чтобы получать данные о реальных шагах, частоте сердечных сокращений и синхронизировать виджеты мобильного дома в режиме реального времени.';

  @override
  String get home_allow_health => 'Разрешить Health Connect';

  @override
  String get home_ready_mindful_day => 'Готовы к новому дню? ✨';

  @override
  String get home_quick_add => 'Быстрое добавление';

  @override
  String get home_live_gps => 'GPS в реальном времени';

  @override
  String get home_calories_remaining_label => 'ОСТАЛОСЬ КАЛОРИЙ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Съедено: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Нажмите для трекера воды 💧';

  @override
  String get home_water_goal_reached => 'Цель по воде достигнута! 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Осталось $remaining мл до цели';
  }

  @override
  String get home_details => 'Детали';

  @override
  String get home_upgrade_plan_desc =>
      'Обновите, чтобы разблокировать персонализированные ежедневные цели и план AI.';

  @override
  String get home_unlock => 'Разблокируй 👑';

  @override
  String get home_quick_log_hint => 'Быстрая запись записи о здоровье';

  @override
  String get food_serving_size => 'Размер порции';

  @override
  String get food_serving_grams => 'Порция (г)';

  @override
  String get food_number_servings => 'Количество порций';

  @override
  String get food_calories_per_serving => 'Калорий на порцию';

  @override
  String get food_recipe_ingredients => 'Ингредиенты';

  @override
  String get food_recipe_add_ingredient => 'Добавить ингредиент';

  @override
  String get food_recipe_directions => 'Инструкции и примечания';

  @override
  String get food_recipe_total => 'Полное питание по рецепту';

  @override
  String get food_recipe_per_serving => 'Питание на порцию';

  @override
  String get food_recipe_saved_toast => 'Заказная еда успешно сохранена!';

  @override
  String get food_barcode_found => 'Товар найден!';

  @override
  String get food_barcode_not_found_desc =>
      'Нам не удалось найти этот штрих-код в открытой базе данных. Вы можете добавить его как нестандартную еду.';

  @override
  String get food_add_custom_btn => 'Добавить пользовательскую еду';

  @override
  String get food_scan_again => 'Сканировать еще раз';

  @override
  String get food_review_items => 'Просмотрите обнаруженные продукты';

  @override
  String get food_review_hint =>
      'Откорректируйте количество или удалите любой нераспознанный товар.';

  @override
  String get food_log_selected => 'Записать выбранные продукты';

  @override
  String get food_favourites_title => 'Любимая еда';

  @override
  String get food_recent_title => 'Недавние продукты';

  @override
  String get food_no_favourites =>
      'Любимых блюд пока нет. Нажмите сердечком на любой еде, чтобы сохранить здесь.';

  @override
  String get food_no_recents =>
      'Недавно зарегистрированные продукты не найдены.';

  @override
  String get food_nutrition_details_title => 'Подробности ежедневного питания';

  @override
  String get food_macro_protein_label => 'Распад белка';

  @override
  String get food_macro_carbs_label => 'Расщепление углеводов';

  @override
  String get food_macro_fat_label => 'Распределение жира';

  @override
  String get food_macro_fiber_label => 'Распад волокна';

  @override
  String get food_daily_target_comparison => 'Целевое сравнение';

  @override
  String food_target_label(Object target) {
    return 'Цель: $target';
  }

  @override
  String get food_edit_entry => 'Редактировать запись в дневнике';

  @override
  String get food_delete_entry => 'Удалить запись';

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
    return '$current из $target мл';
  }

  @override
  String get water_intake_history => 'Сегодняшние журналы воды';

  @override
  String get water_no_logs_today =>
      'Сегодня воды еще не было. Увлажните и нажмите кнопку быстрого добавления!';

  @override
  String get water_adjust_goal => 'Скорректировать ежедневную цель';

  @override
  String get health_connect_banner => 'Подключено к Health Connect';

  @override
  String get health_vitals_summary => 'Ежедневные показатели здоровья';

  @override
  String get health_latest_heart_rate => 'Последний пульс';

  @override
  String get health_latest_bp => 'Артериальное давление';

  @override
  String get health_latest_spo2 => 'Кислород в крови';

  @override
  String get health_latest_glucose => 'Глюкоза крови';

  @override
  String get health_latest_weight => 'Вес';

  @override
  String get health_latest_sleep => 'Продолжительность сна';

  @override
  String get health_add_manual => 'Добавить измерение вручную';

  @override
  String get health_history_trends => 'Исторические тенденции';

  @override
  String get health_sync_success =>
      'Данные о состоянии здоровья успешно синхронизированы!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ч. $mins мин.';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm ударов в минуту';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic мм рт.ст.';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title =>
      'Подключенные устройства и носимые устройства';

  @override
  String get health_devices_desc =>
      'Управляйте сопряженными умными часами, фитнес-трекерами и датчиками здоровья.';

  @override
  String get health_workout_editor_title => 'Редактировать тренировку';

  @override
  String get health_workout_name_label => 'Название тренировки';

  @override
  String get health_workout_duration_label => 'Продолжительность (минуты)';

  @override
  String get health_workout_calories_label =>
      'Ориентировочная калорийность (ккал)';

  @override
  String get health_workout_date_label => 'Дата и время';

  @override
  String get plan_daily_wellness_roadmap => 'Ваша персональная дорожная карта';

  @override
  String get plan_morning_routine => 'Утренняя рутина';

  @override
  String get plan_afternoon_routine => 'Полуденный велнес';

  @override
  String get plan_evening_routine => 'Вечерний отдых';

  @override
  String get plan_coach_badge => 'Блуми Тренер по искусственному интеллекту';

  @override
  String get plan_weekly_overview => '7-дневный оздоровительный курс';

  @override
  String get plan_targets_title => 'Цели и задачи оздоровления';

  @override
  String get plan_calorie_budget_label => 'Ежедневный бюджет калорий';

  @override
  String get plan_water_budget_label => 'Ежедневная цель по воде';

  @override
  String get plan_step_budget_label => 'Ежедневная цель по шагам';

  @override
  String get plan_macro_split_label => 'Соотношение макронутриентов';

  @override
  String get profile_personal_details => 'Личные данные';

  @override
  String get profile_body_stats => 'Измерения тела';

  @override
  String get profile_app_preferences => 'Настройки и настройки приложения';

  @override
  String get profile_edit_name_hint => 'Ваше имя';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Высота ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Вес ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Возраст';

  @override
  String get profile_gender_male => 'Мужской';

  @override
  String get profile_gender_female => 'Женский';

  @override
  String get profile_gender_other => 'Другое / Предпочитаю не говорить';

  @override
  String get profile_activity_sedentary =>
      'Сидячий образ жизни (практически нет физических упражнений)';

  @override
  String get profile_activity_light => 'Легкая активность (1-3 дня в неделю)';

  @override
  String get profile_activity_moderate =>
      'Умеренно активный (3-5 дней в неделю)';

  @override
  String get profile_activity_very => 'Очень активный (6-7 дней в неделю)';

  @override
  String get settings_wear_os_header => 'Приложение Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Установите плитку Bloomi и усложнение на часы Wear OS, чтобы следить за калориями, водой и количеством шагов.';

  @override
  String get settings_widgets_header => 'Интерактивные виджеты Android';

  @override
  String get settings_widgets_desc =>
      'Закрепите виджеты, работающие в режиме реального времени, на главном экране вашего устройства для мгновенного обновления.';

  @override
  String get settings_about_header => 'О Блуми';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Построить 100';

  @override
  String get settings_about_credits =>
      'Создано с заботой о сознательном и здоровом образе жизни.';

  @override
  String get settings_terms_header => 'Условия использования';

  @override
  String get settings_privacy_header => 'Политика конфиденциальности';

  @override
  String get settings_delete_header => 'Удалить учетную запись и данные';

  @override
  String get settings_delete_warning =>
      'Это действие невозможно отменить. Все ваши блюда, тренировки, жизненные показатели и профиль будут навсегда удалены.';

  @override
  String get settings_delete_confirm_btn => 'Удалить навсегда';

  @override
  String get onboard_welcome_headline => 'Добро пожаловать в Блуми ✨';

  @override
  String get onboard_welcome_tagline =>
      'Мягкое и внимательное отслеживание здоровья, разработанное с учетом вашей жизни.';

  @override
  String get onboard_step_about => 'О тебе';

  @override
  String get onboard_step_goals => 'Ваши цели';

  @override
  String get onboard_step_lifestyle => 'Ежедневные привычки';

  @override
  String get onboard_step_permissions => 'Разрешения';

  @override
  String get onboard_step_plan => 'Готово!';

  @override
  String get onboard_health_connect_perm => 'Доступ к Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Датчик счетчика шагов';

  @override
  String get onboard_notif_perm => 'Внимательные напоминания и уведомления';

  @override
  String get onboard_camera_perm =>
      'Камера (сканер штрих-кода и продуктов питания)';

  @override
  String get onboard_grant_permissions => 'Предоставить разрешения';

  @override
  String get onboard_continue_dashboard => 'Открыть панель управления';

  @override
  String get notif_channel_hydration_name => 'Увлажнение';

  @override
  String get notif_channel_hydration_desc =>
      'Нежные напоминания о воде в течение дня';

  @override
  String get notif_channel_nutrition_name => 'Напоминания о еде и питании';

  @override
  String get notif_channel_nutrition_desc =>
      'Напоминания о завтраке, обеде и ужине';

  @override
  String get notif_channel_steps_name => 'Шаговые этапы';

  @override
  String get notif_channel_steps_desc =>
      'Празднование достижения ежедневных целей по шагам';

  @override
  String get notif_channel_vitals_name =>
      'Проверка здоровья и жизненно важных показателей';

  @override
  String get notif_channel_vitals_desc => 'Напоминания о весе и времени сна';

  @override
  String get notif_action_log_water => '💧 Журнал +250мл';

  @override
  String get notif_action_snooze => 'Отложить на 15 минут';

  @override
  String get notif_action_log_meal => '🥗 Бревна';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
