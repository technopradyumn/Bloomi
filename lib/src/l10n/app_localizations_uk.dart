// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get app_name => 'Блумі';

  @override
  String get nav_home => 'додому';

  @override
  String get nav_today => 'Сьогодні';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'харчування';

  @override
  String get nav_food_diary => 'Харчовий щоденник';

  @override
  String get nav_workout => 'Журнал тренувань';

  @override
  String get nav_health => 'Здоров\'я';

  @override
  String get nav_profile => 'Профіль';

  @override
  String get save => 'зберегти';

  @override
  String get cancel => 'Скасувати';

  @override
  String get delete => 'Видалити';

  @override
  String get edit => 'Редагувати';

  @override
  String get done => 'Готово';

  @override
  String get close => 'Закрити';

  @override
  String get back => 'Назад';

  @override
  String get next => 'Далі';

  @override
  String get continue_btn => 'Продовжити';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get search => 'Пошук';

  @override
  String get filter => 'фільтр';

  @override
  String get all => 'все';

  @override
  String get active => 'Активний';

  @override
  String get today => 'Сьогодні';

  @override
  String get yesterday => 'вчора';

  @override
  String get tomorrow => 'завтра';

  @override
  String get add => 'додати';

  @override
  String get remove => 'видалити';

  @override
  String get refresh => 'Оновити';

  @override
  String get retry => 'Повторіть спробу';

  @override
  String get error => 'Помилка';

  @override
  String get success => 'Успіх';

  @override
  String get loading => 'Завантаження...';

  @override
  String get no_data => 'Немає даних';

  @override
  String get offline => 'Автономний режим';

  @override
  String get offline_sub =>
      'Зміни синхронізуються після повторного підключення';

  @override
  String get undo => 'Скасувати';

  @override
  String get portion => 'порція';

  @override
  String get quantity => 'Кількість';

  @override
  String get unit => 'одиниця';

  @override
  String get clear => 'ясно';

  @override
  String get select => 'Виберіть';

  @override
  String get apply => 'Застосувати';

  @override
  String get reset => 'Скинути';

  @override
  String get ok => 'добре';

  @override
  String get yes => 'так';

  @override
  String get no => 'немає';

  @override
  String get optional => 'Додатково';

  @override
  String get calories => 'Калорії';

  @override
  String get protein => 'білок';

  @override
  String get carbs => 'вуглеводи';

  @override
  String get fat => 'Жир';

  @override
  String get fiber => 'клітковина';

  @override
  String get water => 'вода';

  @override
  String get steps => 'Кроки';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунти';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'в';

  @override
  String get bpm => 'уд/хв';

  @override
  String get hours => 'години';

  @override
  String get minutes => 'хв';

  @override
  String get serving => 'Подача';

  @override
  String get servings => 'Порції';

  @override
  String get serving_size => 'Розмір порції';

  @override
  String get per_100g => 'на 100г';

  @override
  String get india => 'Індія';

  @override
  String get asia => 'Азії';

  @override
  String get europe => 'Європа';

  @override
  String get middle_east => 'Близький Схід';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америки';

  @override
  String get home_title => 'додому';

  @override
  String get home_greeting_morning => 'Доброго ранку';

  @override
  String get home_greeting_afternoon => 'Доброго дня';

  @override
  String get home_greeting_evening => 'Добрий вечір';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count днів поспіль',
      one: '1 день поспіль',
      zero: '0 днів поспіль',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Спалений';

  @override
  String get home_calories_budget => 'Бюджет калорій';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Залишилося $kcal ккал';
  }

  @override
  String get home_water_title => 'Щоденне зволоження';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Кроки Пройшли';

  @override
  String get home_quick_actions => 'Швидкі дії';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Вхід води';

  @override
  String get home_log_workout => 'Журнал тренування';

  @override
  String get home_log_weight => 'Вага журналу';

  @override
  String get home_insights_title => 'Статистика сьогоднішнього дня';

  @override
  String get home_quote => 'Невеликі здорові рішення створюють яскраві зміни.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Оточення та повітря';

  @override
  String get home_notifications => 'Сповіщення';

  @override
  String get home_daily_score => 'Щоденна оцінка здоров’я';

  @override
  String get home_view_all => 'Переглянути всі';

  @override
  String get food_diary_title => 'Харчовий щоденник';

  @override
  String get food_breakfast => 'Сніданок';

  @override
  String get food_lunch => 'обід';

  @override
  String get food_dinner => 'Вечеря';

  @override
  String get food_snacks => 'закуски';

  @override
  String get food_add_food => 'Додати їжу';

  @override
  String get food_edit_food => 'Редагувати їжу';

  @override
  String get food_add_breakfast => 'Додайте сніданок';

  @override
  String get food_add_lunch => 'Додайте обід';

  @override
  String get food_add_dinner => 'Додайте вечерю';

  @override
  String get food_add_snack => 'Додати закуску';

  @override
  String get food_total_calories => 'Загальна кількість калорій';

  @override
  String get food_empty_meal => 'Для цього обіду ще не зареєстровано продуктів';

  @override
  String get food_empty_diary => 'Їжа не зареєстрована за цей день';

  @override
  String get food_log_first_meal =>
      'Торкніться +, щоб зареєструвати свій перший смачний обід';

  @override
  String get food_quick_add => 'Швидке додавання';

  @override
  String get food_search_hint => 'Пошук страв, фруктів, дал, роті...';

  @override
  String get food_custom_recipe => 'Спеціальна їжа та рецепти';

  @override
  String get food_scan_barcode => 'Сканувати штрих-код';

  @override
  String get food_camera_scan => 'ШІ сканер їжі';

  @override
  String get food_recent => 'Останні страви';

  @override
  String get food_favourites => 'Вибране';

  @override
  String get food_macro_summary => 'Розпад макронутрієнтів';

  @override
  String get food_delete_meal_confirm =>
      'Ви впевнені, що хочете видалити цей елемент?';

  @override
  String get food_item_deleted => 'Харчовий продукт видалено';

  @override
  String get food_remaining => 'залишилося';

  @override
  String get food_consumed => 'споживається';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Пошук їжі';

  @override
  String get foodSearch_scan_barcode => 'Сканувати штрих-код';

  @override
  String get foodSearch_take_photo => 'Фото швидкої їжі';

  @override
  String get foodSearch_custom_food => 'Створення їжі на замовлення';

  @override
  String get foodSearch_recent_searches => 'Останні пошуки';

  @override
  String get foodSearch_popular => 'Популярні страви';

  @override
  String get foodSearch_no_results =>
      'Немає продуктів, які відповідають вашому запиту';

  @override
  String get barcode_title => 'Сканер штрих-кодів';

  @override
  String get barcode_align => 'Вирівняйте штрих-код всередині рамки камери';

  @override
  String get barcode_not_found => 'Товар не знайдено в базі даних';

  @override
  String get barcode_premium_feature =>
      'Сканування штрих-кодів доступне з Bloomi Pro';

  @override
  String get camera_title => 'ШІ сканер їжі';

  @override
  String get camera_tap_hint => 'Зробіть чітке фото своєї страви';

  @override
  String get camera_analysing => 'Аналіз харчової тарілки...';

  @override
  String get camera_detected => 'Виявлені елементи';

  @override
  String get camera_flash => 'Увімкнути спалах';

  @override
  String get camera_retake => 'Перезняти фото';

  @override
  String get camera_confirm_food => 'Підтвердити елементи';

  @override
  String get customFood_title => 'Спеціальна їжа та рецепти';

  @override
  String get customFood_name_hint => 'Назва страви або інгредієнта';

  @override
  String get customFood_calories_hint => 'Калорії (ккал)';

  @override
  String get customFood_protein_hint => 'Білок (г)';

  @override
  String get customFood_carbs_hint => 'вуглеводи (г)';

  @override
  String get customFood_fat_hint => 'жир (г)';

  @override
  String get customFood_save => 'Зберегти рецепт';

  @override
  String get water_tracker_title => 'Трекер води';

  @override
  String get water_daily_target => 'Щоденна мета гідратації';

  @override
  String get water_logged_today => 'Зареєстровано сьогодні';

  @override
  String get water_add_glass => 'Стакан +250 мл';

  @override
  String get water_add_bottle => 'Флакон +500 мл';

  @override
  String get water_custom_amount => 'Спеціальна сума';

  @override
  String get water_reminder_tip =>
      'Пийте воду регулярно протягом дня для стабільної енергії.';

  @override
  String water_logged_toast(Object amount) {
    return 'Зареєстровано $amount мл води 💧';
  }

  @override
  String get workout_title => 'Журнал тренувань';

  @override
  String get workout_add_exercise => 'Додати тренування';

  @override
  String get workout_cardio => 'Кардіо';

  @override
  String get workout_strength => 'Сила';

  @override
  String get workout_yoga => 'Йога та гнучкість';

  @override
  String get workout_duration => 'Тривалість';

  @override
  String get workout_intensity => 'Інтенсивність';

  @override
  String get workout_calories_burned => 'Спалені калорії';

  @override
  String get workout_empty => 'Сьогодні тренування не зареєстровано';

  @override
  String get workout_save_success => 'Тренування успішно збережено!';

  @override
  String get workout_type => 'Тип тренування';

  @override
  String get workout_notes => 'Нотатки та роздуми';

  @override
  String get health_overview_title => 'Здоров\'я та життєво важливі';

  @override
  String get health_heart_rate => 'ЧСС';

  @override
  String get health_blood_oxygen => 'Кисень крові (SpO2)';

  @override
  String get health_blood_pressure => 'Артеріальний тиск';

  @override
  String get health_blood_glucose => 'Рівень глюкози в крові';

  @override
  String get health_body_temperature => 'Температура тіла';

  @override
  String get health_sleep_tracking => 'Відстеження сну';

  @override
  String get health_weight_tracking => 'Вага та склад тіла';

  @override
  String get health_waist_hip => 'Співвідношення талії до стегон';

  @override
  String get health_devices_hub => 'Пристрої та концентратор Smartwatch';

  @override
  String get health_sync_now => 'Синхронізувати дані про стан здоров\'я';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Остання синхронізація: $time';
  }

  @override
  String get health_manual_entry => 'Введення стану здоров\'я вручну';

  @override
  String get health_metric_detail => 'Метричні деталі';

  @override
  String get health_connected_sensors => 'Підключені датчики здоров\'я';

  @override
  String get plan_title => 'Щоденний план';

  @override
  String get plan_weekly_title => 'Тижневий оздоровчий план';

  @override
  String get plan_calorie_target => 'Цільова калорійність';

  @override
  String get plan_water_target => 'Мета гідратації';

  @override
  String get plan_step_target => 'Ціль кроку';

  @override
  String get plan_sleep_target => 'Цільовий сон';

  @override
  String get plan_meal_suggestions => 'Пропозиції щодо їжі';

  @override
  String get plan_healthy_habits => 'Здорові звички та поради';

  @override
  String get plan_coach_advice => 'Рекомендації тренера Bloomi AI';

  @override
  String get plan_generated_title => 'Індивідуальний щоденний розклад';

  @override
  String get profile_title => 'Профіль';

  @override
  String get profile_edit => 'Редагувати профіль';

  @override
  String get profile_name => 'Ім\'я';

  @override
  String get profile_age => 'Вік';

  @override
  String get profile_gender => 'Стать';

  @override
  String get profile_height => 'Висота';

  @override
  String get profile_weight => 'вага';

  @override
  String get profile_goal => 'Основна мета';

  @override
  String get profile_activity_level => 'Рівень активності';

  @override
  String get profile_stats => 'Моя статистика здоров\'я';

  @override
  String get profile_saved => 'Профіль успішно оновлено';

  @override
  String get profile_bmi => 'Індекс маси тіла (ІМТ)';

  @override
  String get profile_membership => 'Членство';

  @override
  String get settings => 'Налаштування';

  @override
  String get preferences_habits => 'Уподобання та звички';

  @override
  String get appearance_theme => 'Зовнішній вигляд і тема';

  @override
  String get appearance_theme_sub =>
      'Параметри темного, світлого, системного режиму та фону програми';

  @override
  String get permissions => 'Дозволи та доступ до системи';

  @override
  String get permissions_sub =>
      'Health Connect, крокові датчики, GPS, сповіщення та камера';

  @override
  String get reminders_notifications => 'Нагадування та сповіщення';

  @override
  String get reminders_sub =>
      'Час прийому їжі, вода, контроль ваги та нагадування перед сном';

  @override
  String get units_of_measurement => 'Одиниці вимірювання';

  @override
  String get units_sub =>
      'Метричні (кг, см, мл, км) або імперські (фунти, фути/дюйми, рідкі унції)';

  @override
  String get app_language => 'Мова програми';

  @override
  String get language_sub =>
      'Англійська, हिन्दी (гінді), хінгліш і понад 195 мов світу';

  @override
  String get home_screen_widgets => 'Віджети головного екрана';

  @override
  String get widgets_sub =>
      'Живі віджети Android: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Додаток Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Розумний годинник-компаньйон, плитки, ускладнення та актуальні показники';

  @override
  String get goals_wellness => 'ЦІЛІ ТА ЗДОРОВ\'Я';

  @override
  String get nutrition_targets => 'Харчові цілі та макроспліт';

  @override
  String get nutrition_targets_sub =>
      'Цільова кількість калорій, білків, вуглеводів, жирів і води';

  @override
  String get weekly_recap => 'Щотижневий підсумок оздоровлення';

  @override
  String get weekly_recap_sub =>
      'Середня калорійність за 7 днів, співвідношення макросів і найкращий день';

  @override
  String get streaks_milestones => 'Смуги та віхи';

  @override
  String get streaks_sub => 'Активні квітучі смуги, значки та досягнення';

  @override
  String get connected_devices => 'ПІДКЛЮЧЕНІ ПРИСТРОЇ ТА ЕКОСИСТЕМА';

  @override
  String get devices_hub => 'Пристрої та концентратор Smartwatch';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Оточення та погода';

  @override
  String get surroundings_sub =>
      'Поради щодо якості повітря (AQI), УФ-індексу та погодних умов';

  @override
  String get bloomi_pro => 'Підписка Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 віджетів на головному екрані та відстеження життєво важливих показників';

  @override
  String get about_security => 'ПРО ТА БЕЗПЕКА';

  @override
  String get about_bloomi => 'Про Блумі';

  @override
  String get about_bloomi_sub => 'Специфікації збірки, версія, атрибути';

  @override
  String get privacy_policy => 'Політика конфіденційності';

  @override
  String get privacy_policy_sub =>
      'Архітектура даних на пристрої в першу чергу офлайн';

  @override
  String get terms_conditions => 'Правила та умови';

  @override
  String get terms_conditions_sub =>
      'Умови обслуговування та правила оздоровлення';

  @override
  String get delete_account => 'Видалити обліковий запис і дані';

  @override
  String get delete_account_sub =>
      'Безповоротно видаліть локальні дані SQLite і хмарні резервні копії';

  @override
  String get healthy_habits => 'Сформуйте м’які, стійкі звички здоров’я';

  @override
  String get all_logs => 'Мої відстежувані дані та журнали';

  @override
  String get search_language => 'Пошук за мовою чи рідним письмом...';

  @override
  String get languages_available => 'Доступні мови';

  @override
  String get no_matching_languages => 'Відповідних мов не знайдено';

  @override
  String get try_searching =>
      'Спробуйте здійснити пошук рідною мовою або англійською мовою';

  @override
  String get partially_translated => 'Частково перекладено';

  @override
  String get complete_translation => 'Повний';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Вибрано мову $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Навколишнє середовище';

  @override
  String get surroundings_aqi => 'Індекс якості повітря';

  @override
  String get surroundings_uv => 'УФ-індекс';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Вологість';

  @override
  String get surroundings_hydration_advice =>
      'Залишайтеся добре зволоженими за поточних погодних умов.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Пошук їжі';

  @override
  String get food_quick_barcode => 'Сканувати штрих-код 👑';

  @override
  String get food_quick_water => 'Додати воду';

  @override
  String get food_quick_custom => 'Харчування на замовлення';

  @override
  String get surroundings_good => 'добре';

  @override
  String get surroundings_moderate => 'Помірний';

  @override
  String get surroundings_unhealthy => 'Нездоровий';

  @override
  String get notifications_title => 'Сповіщення та сповіщення';

  @override
  String get notifications_empty => 'Немає нових сповіщень';

  @override
  String get notifications_mark_read => 'Позначити все як прочитане';

  @override
  String get notifications_clear => 'Очистити все';

  @override
  String get reminders => 'Налаштування нагадування';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Нагадування про сніданок 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Доброго ранку! Час для ситного сніданку в $time.';
  }

  @override
  String get reminders_lunch_title => 'Нагадування про обід 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Зробіть паузу та насолоджуйтесь збалансованим, уважним обідом у $time.';
  }

  @override
  String get reminders_dinner_title => 'Нагадування про вечерю 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Час для легкої, ситної вечері в $time.';
  }

  @override
  String get reminders_water_title => 'Підштовх до зволоження 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Час випити склянку свіжої води! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Щотижневе зважування ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Відстежуйте щотижневі показники свого тіла на Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Відпочинок перед сном 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Розслабтеся та підготуйтеся до спокійного сну ( $time ).';
  }

  @override
  String get onboard_welcome => 'Ласкаво просимо до Блумі';

  @override
  String get onboard_sub =>
      'Ваш дружній, офлайн-перший компаньйон у питаннях здоров’я та харчування.';

  @override
  String get onboard_get_started => 'Почніть роботу';

  @override
  String get onboard_sign_in => 'Увійти';

  @override
  String get onboard_skip => 'Пропустити';

  @override
  String get onboard_choose_goal => 'Яка ваша головна мета оздоровлення?';

  @override
  String get onboard_goal_weight_loss => 'Щадна втрата ваги';

  @override
  String get onboard_goal_muscle => 'Збільшення м\'язів і сила';

  @override
  String get onboard_goal_energy => 'Щоденна енергія та бадьорість';

  @override
  String get onboard_goal_habits => 'Здорове усвідомлене харчування';

  @override
  String get onboard_about_you => 'Розкажіть нам про себе';

  @override
  String get onboard_lifestyle => 'Ваш розпорядок дня';

  @override
  String get onboard_permissions_title => 'Дозволи та доступ до системи';

  @override
  String get onboard_permissions_sub =>
      'Надайте доступ до синхронізації кроків, тренувань і нагадувань.';

  @override
  String get onboard_plan_ready_title => 'Ваш індивідуальний план готовий!';

  @override
  String get onboard_plan_ready_sub =>
      'Спеціально для вас ми склали щадну, персоналізовану дорожню карту харчування та оздоровлення.';

  @override
  String get onboard_enter_bloomi => 'Входить Блумі';

  @override
  String get insights_weekly_report => 'Щотижневий підсумок оздоровлення';

  @override
  String insights_best_day(Object day) {
    return 'Найкращий день консистенції: $day';
  }

  @override
  String get insights_streaks_badges => 'Смуги та віхи';

  @override
  String insights_unlocked_on(Object date) {
    return 'Розблоковано $date';
  }

  @override
  String get insights_keep_going => 'Продовжуйте фантастичний прогрес!';

  @override
  String get widgets_title => 'Віджети головного екрана';

  @override
  String widgets_active_count(Object count) {
    return 'Активні віджети: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Сходинки та активний дзвінок';

  @override
  String get widgets_water_title => 'Швидкий журнал зволоження';

  @override
  String get widgets_mascot_title => 'Компаньйон-талісман Блумі';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'Підключено до Watch';

  @override
  String get wear_os_sync => 'Синхронізувати дані годинника';

  @override
  String get theme_title => 'Зовнішній вигляд і тема';

  @override
  String get theme_mode => 'Тематичний режим';

  @override
  String get theme_light => 'світло';

  @override
  String get theme_dark => 'Темний';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Фонова палітра';

  @override
  String get units_title => 'Одиниці вимірювання';

  @override
  String get units_metric => 'Метричний (кг, см, мл)';

  @override
  String get units_imperial =>
      'Імперська система (фунтів, дюймів, рідких унцій)';

  @override
  String get home_unable_load => 'Не вдалося завантажити інформаційну панель';

  @override
  String get home_health_permission_req => 'Потрібен дозвіл Health Connect';

  @override
  String get home_health_permission_desc =>
      'Блумі потрібен дозвіл Health Connect, щоб відображати реальні кроки, частоту серцевих скорочень і синхронізувати віджети мобільного будинку в режимі реального часу.';

  @override
  String get home_allow_health => 'Дозволити Health Connect';

  @override
  String get home_ready_mindful_day => 'Готові до уважного дня? ✨';

  @override
  String get home_quick_add => 'Швидке додавання';

  @override
  String get home_live_gps => 'Живий GPS';

  @override
  String get home_calories_remaining_label => 'ЗАЛИШИЛОСЬ КАЛОРІЙ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'З\'їдено: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Кран для відстеження води 💧';

  @override
  String get home_water_goal_reached => 'Щоденна мета досягнута 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл до щоденної цілі';
  }

  @override
  String get home_details => 'Подробиці';

  @override
  String get home_upgrade_plan_desc =>
      'Оновіть, щоб розблокувати персоналізовані щоденні цілі та план AI';

  @override
  String get home_unlock => 'Розблокувати 👑';

  @override
  String get home_quick_log_hint => 'Швидко запишіть оздоровчий запис';

  @override
  String get food_serving_size => 'Розмір порції';

  @override
  String get food_serving_grams => 'Порція (г)';

  @override
  String get food_number_servings => 'Кількість порцій';

  @override
  String get food_calories_per_serving => 'Калорії на порцію';

  @override
  String get food_recipe_ingredients => 'Інгредієнти';

  @override
  String get food_recipe_add_ingredient => 'Додати інгредієнт';

  @override
  String get food_recipe_directions => 'Інструкції та примітки';

  @override
  String get food_recipe_total => 'Повний рецепт харчування';

  @override
  String get food_recipe_per_serving => 'Харчування на порцію';

  @override
  String get food_recipe_saved_toast => 'Нестандартну їжу успішно збережено!';

  @override
  String get food_barcode_found => 'Товар знайдено!';

  @override
  String get food_barcode_not_found_desc =>
      'Нам не вдалося знайти цей штрих-код у відкритій базі даних. Ви можете додати його як спеціальну їжу.';

  @override
  String get food_add_custom_btn => 'Додати спеціальну їжу';

  @override
  String get food_scan_again => 'Сканувати ще раз';

  @override
  String get food_review_items => 'Перегляньте виявлені продукти';

  @override
  String get food_review_hint =>
      'Відкоригуйте кількість або видаліть будь-який нерозпізнаний товар';

  @override
  String get food_log_selected => 'Зареєструйте вибрані продукти';

  @override
  String get food_favourites_title => 'Улюблені страви';

  @override
  String get food_recent_title => 'Останні страви';

  @override
  String get food_no_favourites =>
      'Ще немає улюблених страв. Натисніть серцем на будь-яку їжу, щоб зберегти тут.';

  @override
  String get food_no_recents =>
      'Не знайдено нещодавно зареєстрованих продуктів.';

  @override
  String get food_nutrition_details_title => 'Деталі щоденного харчування';

  @override
  String get food_macro_protein_label => 'Розщеплення білка';

  @override
  String get food_macro_carbs_label => 'Розщеплення вуглеводів';

  @override
  String get food_macro_fat_label => 'Розщеплення жиру';

  @override
  String get food_macro_fiber_label => 'Розпад волокон';

  @override
  String get food_daily_target_comparison => 'Цільове порівняння';

  @override
  String food_target_label(Object target) {
    return 'Ціль: $target';
  }

  @override
  String get food_edit_entry => 'Редагувати запис щоденника';

  @override
  String get food_delete_entry => 'Видалити запис';

  @override
  String food_grams_short(Object grams) {
    return '$grams р';
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
  String get water_intake_history => 'Сьогоднішні журнали води';

  @override
  String get water_no_logs_today =>
      'Сьогодні води ще не було. Зволожте та натисніть кнопку швидкого додавання!';

  @override
  String get water_adjust_goal => 'Налаштуйте щоденну ціль';

  @override
  String get health_connect_banner => 'Підключено до Health Connect';

  @override
  String get health_vitals_summary => 'Щоденні показники здоров\'я';

  @override
  String get health_latest_heart_rate => 'Останній пульс';

  @override
  String get health_latest_bp => 'Артеріальний тиск';

  @override
  String get health_latest_spo2 => 'Кисень крові';

  @override
  String get health_latest_glucose => 'Рівень глюкози в крові';

  @override
  String get health_latest_weight => 'вага';

  @override
  String get health_latest_sleep => 'Тривалість сну';

  @override
  String get health_add_manual => 'Додайте ручне вимірювання';

  @override
  String get health_history_trends => 'Історичні тенденції';

  @override
  String get health_sync_success =>
      'Дані про стан здоров’я успішно синхронізовано!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours год. $mins хв';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm уд/хв';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic мм рт.ст';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title =>
      'Підключені пристрої та пристрої, що носяться';

  @override
  String get health_devices_desc =>
      'Керуйте сполученими розумними годинниками, фітнес-трекерами та датчиками здоров’я.';

  @override
  String get health_workout_editor_title => 'Редагувати тренування';

  @override
  String get health_workout_name_label => 'Назва тренування';

  @override
  String get health_workout_duration_label => 'Тривалість (хв)';

  @override
  String get health_workout_calories_label => 'Орієнтовна калорійність (ккал)';

  @override
  String get health_workout_date_label => 'Дата і час';

  @override
  String get plan_daily_wellness_roadmap =>
      'Ваша персоналізована дорожня карта';

  @override
  String get plan_morning_routine => 'Ранкова рутина';

  @override
  String get plan_afternoon_routine => 'Полуденне оздоровлення';

  @override
  String get plan_evening_routine => 'Вечірній відпочинок';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-денний оздоровчий фокус';

  @override
  String get plan_targets_title => 'Оздоровчі цілі та цілі';

  @override
  String get plan_calorie_budget_label => 'Щоденний бюджет калорій';

  @override
  String get plan_water_budget_label => 'Добова норма води';

  @override
  String get plan_step_budget_label => 'Ціль щоденного кроку';

  @override
  String get plan_macro_split_label => 'Співвідношення макронутрієнтів';

  @override
  String get profile_personal_details => 'Особисті дані';

  @override
  String get profile_body_stats => 'Вимірювання тіла';

  @override
  String get profile_app_preferences => 'Параметри та налаштування програми';

  @override
  String get profile_edit_name_hint => 'Ваше ім\'я';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Висота ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Вага ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Вік';

  @override
  String get profile_gender_male => 'Чоловік';

  @override
  String get profile_gender_female => 'Жінка';

  @override
  String get profile_gender_other => 'Інше / Бажаю не говорити';

  @override
  String get profile_activity_sedentary =>
      'Малорухливий спосіб життя (відсутність фізичних вправ)';

  @override
  String get profile_activity_light => 'Злегка активний (1-3 дні/тиждень)';

  @override
  String get profile_activity_moderate =>
      'Помірно активний (3-5 днів на тиждень)';

  @override
  String get profile_activity_very => 'Дуже активний (6-7 днів на тиждень)';

  @override
  String get settings_wear_os_header => 'Додаток Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Встановіть плитку Bloomi та комплікацію на свій годинник Wear OS, щоб переглядати калорії, воду та кроки.';

  @override
  String get settings_widgets_header => 'Інтерактивні віджети Android';

  @override
  String get settings_widgets_desc =>
      'Закріпіть віджети в режимі реального часу на головному екрані пристрою для миттєвого оновлення.';

  @override
  String get settings_about_header => 'Про Блумі';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Побудувати 100';

  @override
  String get settings_about_credits =>
      'Створено з турботою про здоровий спосіб життя.';

  @override
  String get settings_terms_header => 'Правила та умови';

  @override
  String get settings_privacy_header => 'Політика конфіденційності';

  @override
  String get settings_delete_header => 'Видалити обліковий запис і дані';

  @override
  String get settings_delete_warning =>
      'Цю дію не можна скасувати. Усі ваші страви, тренування, життєво важливі показники та профіль буде остаточно видалено.';

  @override
  String get settings_delete_confirm_btn => 'Видалити назавжди';

  @override
  String get onboard_welcome_headline => 'Ласкаво просимо до Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'М’яке, уважне відстеження здоров’я, розроблене з урахуванням вашого життя.';

  @override
  String get onboard_step_about => 'Про вас';

  @override
  String get onboard_step_goals => 'Ваші цілі';

  @override
  String get onboard_step_lifestyle => 'Щоденні звички';

  @override
  String get onboard_step_permissions => 'Дозволи';

  @override
  String get onboard_step_plan => 'Готовий!';

  @override
  String get onboard_health_connect_perm => 'Доступ до Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Датчик лічильника кроків';

  @override
  String get onboard_notif_perm => 'Пам’ятні нагадування та сповіщення';

  @override
  String get onboard_camera_perm => 'Камера (сканер штрих-кодів і їжі)';

  @override
  String get onboard_grant_permissions => 'Надати дозволи';

  @override
  String get onboard_continue_dashboard => 'Відкрийте інформаційну панель';

  @override
  String get notif_channel_hydration_name => 'Підштовхи до зволоження';

  @override
  String get notif_channel_hydration_desc =>
      'Легкі нагадування про воду протягом дня';

  @override
  String get notif_channel_nutrition_name =>
      'Нагадування про їжу та харчування';

  @override
  String get notif_channel_nutrition_desc =>
      'Сповіщення про нагадування про сніданок, обід і вечерю';

  @override
  String get notif_channel_steps_name => 'Крок Віхи';

  @override
  String get notif_channel_steps_desc =>
      'Святкування досягнення щоденних цільових кроків';

  @override
  String get notif_channel_vitals_name =>
      'Перевірки здоров’я та життєво важливих показників';

  @override
  String get notif_channel_vitals_desc => 'Нагадування про вагу та час сну';

  @override
  String get notif_action_log_water => '💧 Журнал +250 мл';

  @override
  String get notif_action_snooze => 'Відкласти 15м';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Мова';

  @override
  String get share => 'Поділіться';

  @override
  String common_days(Object count) {
    return '$count дн. тому';
  }
}
