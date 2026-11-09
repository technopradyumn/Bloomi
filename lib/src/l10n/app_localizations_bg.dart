// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Начало';

  @override
  String get nav_today => 'Днес';

  @override
  String get nav_plan => 'Планирайте';

  @override
  String get nav_food => 'храна';

  @override
  String get nav_food_diary => 'Хранителен дневник';

  @override
  String get nav_workout => 'Дневник на тренировките';

  @override
  String get nav_health => 'здраве';

  @override
  String get nav_profile => 'Профил';

  @override
  String get save => 'Запазване';

  @override
  String get cancel => 'Отказ';

  @override
  String get delete => 'Изтриване';

  @override
  String get edit => 'Редактиране';

  @override
  String get done => 'Готово';

  @override
  String get close => 'затвори';

  @override
  String get back => 'Назад';

  @override
  String get next => 'Следваща';

  @override
  String get continue_btn => 'Продължи';

  @override
  String get confirm => 'Потвърдете';

  @override
  String get search => 'Търсене';

  @override
  String get filter => 'Филтър';

  @override
  String get all => 'Всички';

  @override
  String get active => 'Активен';

  @override
  String get today => 'Днес';

  @override
  String get yesterday => 'Вчера';

  @override
  String get tomorrow => 'утре';

  @override
  String get add => 'Добавете';

  @override
  String get remove => 'Премахнете';

  @override
  String get refresh => 'Опресняване';

  @override
  String get retry => 'Опитайте отново';

  @override
  String get error => 'Грешка';

  @override
  String get success => 'Успех';

  @override
  String get loading => 'Зареждане...';

  @override
  String get no_data => 'Няма налични данни';

  @override
  String get offline => 'Офлайн режим';

  @override
  String get offline_sub =>
      'Промените ще се синхронизират след повторно свързване';

  @override
  String get undo => 'Отмяна';

  @override
  String get portion => 'порция';

  @override
  String get quantity => 'Количество';

  @override
  String get unit => 'единица';

  @override
  String get clear => 'ясно';

  @override
  String get select => 'Изберете';

  @override
  String get apply => 'Кандидатствайте';

  @override
  String get reset => 'Нулиране';

  @override
  String get ok => 'добре';

  @override
  String get yes => 'да';

  @override
  String get no => 'не';

  @override
  String get optional => 'Не е задължително';

  @override
  String get calories => 'Калории';

  @override
  String get protein => 'Протеин';

  @override
  String get carbs => 'Въглехидрати';

  @override
  String get fat => 'мазнини';

  @override
  String get fiber => 'Фибри';

  @override
  String get water => 'вода';

  @override
  String get steps => 'стъпки';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'ж';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'в';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'часове';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Сервиране';

  @override
  String get servings => 'Порции';

  @override
  String get serving_size => 'Размер на сервиране';

  @override
  String get per_100g => 'на 100гр';

  @override
  String get india => 'Индия';

  @override
  String get asia => 'Азия';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Близък изток';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Начало';

  @override
  String get home_greeting_morning => 'добро утро';

  @override
  String get home_greeting_afternoon => 'добър следобед';

  @override
  String get home_greeting_evening => 'добър вечер';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дни поредица',
      one: '1 ден поредица',
      zero: '0 дни поредица',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Изгорени';

  @override
  String get home_calories_budget => 'Калориен бюджет';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Остават $kcal kcal';
  }

  @override
  String get home_water_title => 'Ежедневна хидратация';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Вървят стъпки';

  @override
  String get home_quick_actions => 'Бързи действия';

  @override
  String get home_log_meal => 'Дневник Храна';

  @override
  String get home_log_water => 'Дървена вода';

  @override
  String get home_log_workout => 'Регистрирайте тренировка';

  @override
  String get home_log_weight => 'Тегло на дневник';

  @override
  String get home_insights_title => 'Днешните прозрения';

  @override
  String get home_quote =>
      'Малките здравословни избори създават цъфтящи трансформации.';

  @override
  String get home_ai_coach_tip => 'Блуми ИИ треньор';

  @override
  String get home_surroundings => 'Околна среда и въздух';

  @override
  String get home_notifications => 'Известия';

  @override
  String get home_daily_score => 'Дневен уелнес резултат';

  @override
  String get home_view_all => 'Вижте всички';

  @override
  String get food_diary_title => 'Хранителен дневник';

  @override
  String get food_breakfast => 'закуска';

  @override
  String get food_lunch => 'Обяд';

  @override
  String get food_dinner => 'Вечеря';

  @override
  String get food_snacks => 'закуски';

  @override
  String get food_add_food => 'Добавяне на храна';

  @override
  String get food_edit_food => 'Редактиране на храна';

  @override
  String get food_add_breakfast => 'Добавяне на закуска';

  @override
  String get food_add_lunch => 'Добавяне на обяд';

  @override
  String get food_add_dinner => 'Добавяне на вечеря';

  @override
  String get food_add_snack => 'Добавяне на закуска';

  @override
  String get food_total_calories => 'Общо калории';

  @override
  String get food_empty_meal =>
      'Все още няма регистрирани храни за това хранене';

  @override
  String get food_empty_diary => 'Няма регистрирани хранения за този ден';

  @override
  String get food_log_first_meal =>
      'Докоснете +, за да регистрирате първото си вкусно ястие';

  @override
  String get food_quick_add => 'Бързо добавяне';

  @override
  String get food_search_hint => 'Търсете ястия, плодове, дал, роти...';

  @override
  String get food_custom_recipe => 'Персонализирана храна и рецепта';

  @override
  String get food_scan_barcode => 'Сканиране на баркод';

  @override
  String get food_camera_scan => 'AI скенер за храна';

  @override
  String get food_recent => 'Скорошни храни';

  @override
  String get food_favourites => 'Любими';

  @override
  String get food_macro_summary => 'Разбивка на макронутриенти';

  @override
  String get food_delete_meal_confirm =>
      'Сигурни ли сте, че искате да премахнете този елемент?';

  @override
  String get food_item_deleted => 'Премахнат хранителен продукт';

  @override
  String get food_remaining => 'оставащи';

  @override
  String get food_consumed => 'консумирани';

  @override
  String food_of_target(Object target) {
    return 'от $target kcal';
  }

  @override
  String get foodSearch_title => 'Търсене на храни';

  @override
  String get foodSearch_scan_barcode => 'Сканиране на баркод';

  @override
  String get foodSearch_take_photo => 'Снимка на бърза храна';

  @override
  String get foodSearch_custom_food => 'Създайте персонализирана храна';

  @override
  String get foodSearch_recent_searches => 'Последни търсения';

  @override
  String get foodSearch_popular => 'Популярни ястия';

  @override
  String get foodSearch_no_results =>
      'Няма храни, съответстващи на вашето търсене';

  @override
  String get barcode_title => 'Скенер за баркод';

  @override
  String get barcode_align => 'Подравнете баркода в рамката на камерата';

  @override
  String get barcode_not_found => 'Продуктът не е намерен в базата данни';

  @override
  String get barcode_premium_feature =>
      'Сканирането на баркод е налично с Bloomi Pro';

  @override
  String get camera_title => 'AI скенер за храна';

  @override
  String get camera_tap_hint => 'Направете ясна снимка на вашето ястие';

  @override
  String get camera_analysing => 'Анализира се чиния с храна...';

  @override
  String get camera_detected => 'Открити елементи';

  @override
  String get camera_flash => 'Превключете светкавицата';

  @override
  String get camera_retake => 'Повторно заснемане на снимка';

  @override
  String get camera_confirm_food => 'Потвърдете елементи';

  @override
  String get customFood_title => 'Персонализирана храна и рецепта';

  @override
  String get customFood_name_hint => 'Име на ястие или съставка';

  @override
  String get customFood_calories_hint => 'Калории (kcal)';

  @override
  String get customFood_protein_hint => 'Протеин (g)';

  @override
  String get customFood_carbs_hint => 'Въглехидрати (g)';

  @override
  String get customFood_fat_hint => 'Мазнини (g)';

  @override
  String get customFood_save => 'Запазване на рецептата';

  @override
  String get water_tracker_title => 'Воден тракер';

  @override
  String get water_daily_target => 'Ежедневна цел за хидратация';

  @override
  String get water_logged_today => 'Вписан днес';

  @override
  String get water_add_glass => '+250 мл Стъкло';

  @override
  String get water_add_bottle => 'Бутилка +500 мл';

  @override
  String get water_custom_amount => 'Персонализирана сума';

  @override
  String get water_reminder_tip =>
      'Пийте вода редовно през целия ден за стабилна енергия.';

  @override
  String water_logged_toast(Object amount) {
    return 'Записани $amount ml вода 💧';
  }

  @override
  String get workout_title => 'Дневник на тренировките';

  @override
  String get workout_add_exercise => 'Добавяне на тренировка';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Сила';

  @override
  String get workout_yoga => 'Йога и гъвкавост';

  @override
  String get workout_duration => 'Продължителност';

  @override
  String get workout_intensity => 'Интензивност';

  @override
  String get workout_calories_burned => 'Изгорени калории';

  @override
  String get workout_empty => 'Днес няма регистрирани тренировки';

  @override
  String get workout_save_success => 'Тренировката е запазена успешно!';

  @override
  String get workout_type => 'Тип тренировка';

  @override
  String get workout_notes => 'Бележки и разсъждения';

  @override
  String get health_overview_title => 'Здраве и жизнени показатели';

  @override
  String get health_heart_rate => 'Сърдечен ритъм';

  @override
  String get health_blood_oxygen => 'Кислород в кръвта (SpO2)';

  @override
  String get health_blood_pressure => 'Кръвно налягане';

  @override
  String get health_blood_glucose => 'Кръвна глюкоза';

  @override
  String get health_body_temperature => 'Телесна температура';

  @override
  String get health_sleep_tracking => 'Проследяване на съня';

  @override
  String get health_weight_tracking => 'Тегло и състав на тялото';

  @override
  String get health_waist_hip => 'Съотношение талия към ханш';

  @override
  String get health_devices_hub => 'Устройства и център за смарт часовници';

  @override
  String get health_sync_now => 'Синхронизиране на здравни данни';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Последно синхронизирано: $time';
  }

  @override
  String get health_manual_entry => 'Ръчно въвеждане на здраве';

  @override
  String get health_metric_detail => 'Подробности за показателите';

  @override
  String get health_connected_sensors => 'Свързани здравни сензори';

  @override
  String get plan_title => 'Дневен план';

  @override
  String get plan_weekly_title => 'Седмичен уелнес план';

  @override
  String get plan_calorie_target => 'Цел за калории';

  @override
  String get plan_water_target => 'Цел за хидратация';

  @override
  String get plan_step_target => 'Стъпка Цел';

  @override
  String get plan_sleep_target => 'Цел за сън';

  @override
  String get plan_meal_suggestions => 'Предложения за хранене';

  @override
  String get plan_healthy_habits => 'Здравословни навици и съвети';

  @override
  String get plan_coach_advice => 'Препоръки на Bloomi AI Coach';

  @override
  String get plan_generated_title => 'Персонализиран дневен график';

  @override
  String get profile_title => 'Профил';

  @override
  String get profile_edit => 'Редактиране на профил';

  @override
  String get profile_name => 'Име';

  @override
  String get profile_age => 'Възраст';

  @override
  String get profile_gender => 'Пол';

  @override
  String get profile_height => 'Височина';

  @override
  String get profile_weight => 'Тегло';

  @override
  String get profile_goal => 'Основна цел';

  @override
  String get profile_activity_level => 'Ниво на активност';

  @override
  String get profile_stats => 'Моята статистика за здравето';

  @override
  String get profile_saved => 'Профилът е актуализиран успешно';

  @override
  String get profile_bmi => 'Индекс на телесна маса (ИТМ)';

  @override
  String get profile_membership => 'Членство';

  @override
  String get settings => 'Настройки';

  @override
  String get preferences_habits => 'ПРЕДПОЧИТАНИЯ И НАВИЦИ';

  @override
  String get appearance_theme => 'Външен вид и тема';

  @override
  String get appearance_theme_sub =>
      'Опции за тъмен, светъл, системен режим и фон на приложението';

  @override
  String get permissions => 'Разрешения и достъп до системата';

  @override
  String get permissions_sub =>
      'Health Connect, сензори за стъпки, GPS, известия и камера';

  @override
  String get reminders_notifications => 'Напомняния и известия';

  @override
  String get reminders_sub =>
      'Часове за хранене, вода, проверка на теглото и напомняния за лягане';

  @override
  String get units_of_measurement => 'Мерни единици';

  @override
  String get units_sub =>
      'Метрични (kg, cm, ml, km) или имперски (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Език на приложението';

  @override
  String get language_sub =>
      'английски, हिन्दी (хинди), хинглиш и над 195 глобални езика';

  @override
  String get home_screen_widgets => 'Уиджети на началния екран';

  @override
  String get widgets_sub =>
      'Уиджети за Android на живо: център, стъпки, вода, хранене и талисман';

  @override
  String get wear_os_watch_app => 'Приложение за гледане на Wear OS';

  @override
  String get wear_os_sub =>
      'Придружител за смарт часовник, плочки, усложнения и жизнени показатели на живо';

  @override
  String get goals_wellness => 'ЦЕЛИ И УЕЛНЕС ПРОЗРАЧЕНИЯ';

  @override
  String get nutrition_targets => 'Хранителни цели и макро разделяне';

  @override
  String get nutrition_targets_sub =>
      'Цел за калории, цел за протеини, въглехидрати, мазнини и вода';

  @override
  String get weekly_recap => 'Седмично уелнес резюме';

  @override
  String get weekly_recap_sub =>
      '7-дневна средна калория, съотношение на макроси и най-добър ден';

  @override
  String get streaks_milestones => 'Ивици и етапи';

  @override
  String get streaks_sub => 'Активни цъфтящи ивици, значки и постижения';

  @override
  String get connected_devices => 'СВЪРЗАНИ УСТРОЙСТВА И ЕКОСИСТЕМА';

  @override
  String get devices_hub => 'Устройства и център за смарт часовници';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Околностите и времето';

  @override
  String get surroundings_sub =>
      'Качество на въздуха (AQI), UV индекс и съвети за хидратация във времето';

  @override
  String get bloomi_pro => 'Абонамент за Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 уиджета на началния екран и проследяване на жизнените показатели';

  @override
  String get about_security => 'ЗА И СИГУРНОСТ';

  @override
  String get about_bloomi => 'Относно Блуми';

  @override
  String get about_bloomi_sub => 'Спецификации на компилация, версия, атрибути';

  @override
  String get privacy_policy => 'Политика за поверителност';

  @override
  String get privacy_policy_sub =>
      'Първо офлайн, архитектура на данните на устройството';

  @override
  String get terms_conditions => 'Правила и условия';

  @override
  String get terms_conditions_sub => 'Условия за обслужване и насоки за уелнес';

  @override
  String get delete_account => 'Изтриване на акаунт и данни';

  @override
  String get delete_account_sub =>
      'Изтрийте необратимо локални SQLite данни и облачни резервни копия';

  @override
  String get healthy_habits => 'Изградете нежни, трайни навици за здраве';

  @override
  String get all_logs => 'Моите проследявани данни и регистрационни файлове';

  @override
  String get search_language => 'Търсене по език или родна писменост...';

  @override
  String get languages_available => 'Налични езици';

  @override
  String get no_matching_languages => 'Няма намерени съответстващи езици';

  @override
  String get try_searching =>
      'Опитайте да търсите по родна писменост или английски правопис';

  @override
  String get partially_translated => 'Частично преведено';

  @override
  String get complete_translation => 'Завършено';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Езикът е зададен на $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Околна среда и среда';

  @override
  String get surroundings_aqi => 'Индекс на качеството на въздуха';

  @override
  String get surroundings_uv => 'UV индекс';

  @override
  String get surroundings_temp => 'температура';

  @override
  String get surroundings_humidity => 'Влажност';

  @override
  String get surroundings_hydration_advice =>
      'Останете добре хидратирани при настоящите метеорологични условия.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Търсене на храна';

  @override
  String get food_quick_barcode => 'Сканирайте баркод 👑';

  @override
  String get food_quick_water => 'Добавете вода';

  @override
  String get food_quick_custom => 'Персонализирана храна';

  @override
  String get surroundings_good => 'добре';

  @override
  String get surroundings_moderate => 'Умерен';

  @override
  String get surroundings_unhealthy => 'Нездравословно';

  @override
  String get notifications_title => 'Известия и сигнали';

  @override
  String get notifications_empty => 'Няма нови известия';

  @override
  String get notifications_mark_read => 'Маркирайте всички като прочетени';

  @override
  String get notifications_clear => 'Изчистване на всички';

  @override
  String get reminders => 'Настройки за напомняне';

  @override
  String get notifications => 'Насочени известия';

  @override
  String get reminders_breakfast_title => 'Напомняне за закуска 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'добро утро Време е за питателна закуска в $time.';
  }

  @override
  String get reminders_lunch_title => 'Напомняне за обяд 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Направете пауза и се насладете на балансиран, внимателен обяд в $time.';
  }

  @override
  String get reminders_dinner_title => 'Напомняне за вечеря 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Време е за лека, удовлетворяваща вечеря в $time.';
  }

  @override
  String get reminders_water_title => 'Подтикване към хидратация 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Време е да изпиете чаша прясна вода! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Седмично претегляне ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Проследявайте седмичните си телесни показатели на Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Отпускане преди лягане 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Отпуснете се и се подгответе за спокоен сън ( $time ).';
  }

  @override
  String get onboard_welcome => 'Добре дошли в Блуми';

  @override
  String get onboard_sub =>
      'Вашият дружелюбен, първи офлайн спътник за здраве и хранене.';

  @override
  String get onboard_get_started => 'Започнете';

  @override
  String get onboard_sign_in => 'Вход';

  @override
  String get onboard_skip => 'Пропускане';

  @override
  String get onboard_choose_goal => 'Каква е вашата основна цел за уелнес?';

  @override
  String get onboard_goal_weight_loss => 'Нежна загуба на тегло';

  @override
  String get onboard_goal_muscle => 'Покачване на мускули и сила';

  @override
  String get onboard_goal_energy => 'Ежедневна енергия и жизненост';

  @override
  String get onboard_goal_habits => 'Здравословно съзнателно хранене';

  @override
  String get onboard_about_you => 'Разкажете ни за себе си';

  @override
  String get onboard_lifestyle => 'Вашето ежедневие';

  @override
  String get onboard_permissions_title => 'Разрешения и достъп до системата';

  @override
  String get onboard_permissions_sub =>
      'Дайте достъп до стъпки за синхронизиране, тренировки и напомняния.';

  @override
  String get onboard_plan_ready_title => 'Вашият персонализиран план е готов!';

  @override
  String get onboard_plan_ready_sub =>
      'Създадохме нежна, персонализирана пътна карта за хранене и здраве само за вас.';

  @override
  String get onboard_enter_bloomi => 'Влез Блуми';

  @override
  String get insights_weekly_report => 'Седмично уелнес резюме';

  @override
  String insights_best_day(Object day) {
    return 'Ден с най-добра последователност: $day';
  }

  @override
  String get insights_streaks_badges => 'Ивици и етапи';

  @override
  String insights_unlocked_on(Object date) {
    return 'Отключено на $date';
  }

  @override
  String get insights_keep_going => 'Продължавайте с фантастичния напредък!';

  @override
  String get widgets_title => 'Widgets на началния екран';

  @override
  String widgets_active_count(Object count) {
    return 'Активни уиджети: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Стъпки и активен пръстен';

  @override
  String get widgets_water_title => 'Хидратация Quick Log';

  @override
  String get widgets_mascot_title => 'Талисман спътник на Блуми';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'Свързан с Watch';

  @override
  String get wear_os_sync => 'Синхронизиране на данните за гледане';

  @override
  String get theme_title => 'Външен вид и тема';

  @override
  String get theme_mode => 'Тематичен режим';

  @override
  String get theme_light => 'светлина';

  @override
  String get theme_dark => 'Тъмно';

  @override
  String get theme_system => 'система';

  @override
  String get theme_background_palette => 'Палитра за фон';

  @override
  String get units_title => 'Мерни единици';

  @override
  String get units_metric => 'Метрика (kg, cm, ml)';

  @override
  String get units_imperial => 'Имперски (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Таблото за управление не може да се зареди';

  @override
  String get home_health_permission_req =>
      'Изисква се разрешение за Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi изисква разрешение за Health Connect, за да изтегли реални стъпки, сърдечен ритъм и да синхронизира джаджи за мобилен дом в реално време.';

  @override
  String get home_allow_health => 'Разрешаване на Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Готови ли сте за ден със загриженост? ✨';

  @override
  String get home_quick_add => 'Бързо добавяне';

  @override
  String get home_live_gps => 'GPS на живо';

  @override
  String get home_calories_remaining_label => 'ОСТАТЪЧНИ КАЛОРИИ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Изядено: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Докоснете за проследяване на водата 💧';

  @override
  String get home_water_goal_reached => 'Дневната цел е постигната 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml до дневната цел';
  }

  @override
  String get home_details => 'Подробности';

  @override
  String get home_upgrade_plan_desc =>
      'Надстройте, за да отключите персонализирани ежедневни цели и AI план';

  @override
  String get home_unlock => 'Отключи 👑';

  @override
  String get home_quick_log_hint => 'Бързо запишете запис за уелнес';

  @override
  String get food_serving_size => 'Размер на сервиране';

  @override
  String get food_serving_grams => 'Сервиране (g)';

  @override
  String get food_number_servings => 'Брой порции';

  @override
  String get food_calories_per_serving => 'Калории на порция';

  @override
  String get food_recipe_ingredients => 'съставки';

  @override
  String get food_recipe_add_ingredient => 'Добавяне на съставка';

  @override
  String get food_recipe_directions => 'Инструкции и бележки';

  @override
  String get food_recipe_total => 'Пълна рецепта за хранене';

  @override
  String get food_recipe_per_serving => 'Хранене на порция';

  @override
  String get food_recipe_saved_toast =>
      'Персонализираната храна е запазена успешно!';

  @override
  String get food_barcode_found => 'Продуктът е намерен!';

  @override
  String get food_barcode_not_found_desc =>
      'Не можахме да намерим този баркод в отворената база данни. Можете да го добавите като персонализирана храна.';

  @override
  String get food_add_custom_btn => 'Добавете персонализирана храна';

  @override
  String get food_scan_again => 'Сканирайте отново';

  @override
  String get food_review_items => 'Преглед на откритите храни';

  @override
  String get food_review_hint =>
      'Коригирайте количествата или премахнете всеки неразпознат артикул';

  @override
  String get food_log_selected => 'Регистрирайте избраните храни';

  @override
  String get food_favourites_title => 'Любими храни';

  @override
  String get food_recent_title => 'Скорошни храни';

  @override
  String get food_no_favourites =>
      'Все още няма любими храни. Докоснете сърце всяка храна, за да запазите тук.';

  @override
  String get food_no_recents => 'Няма намерени наскоро регистрирани храни.';

  @override
  String get food_nutrition_details_title =>
      'Подробности за ежедневното хранене';

  @override
  String get food_macro_protein_label => 'Разграждане на протеини';

  @override
  String get food_macro_carbs_label => 'Разграждане на въглехидратите';

  @override
  String get food_macro_fat_label => 'Разграждане на мазнините';

  @override
  String get food_macro_fiber_label => 'Разграждане на фибрите';

  @override
  String get food_daily_target_comparison => 'Целево сравнение';

  @override
  String food_target_label(Object target) {
    return 'Цел: $target';
  }

  @override
  String get food_edit_entry => 'Редактиране на запис в дневника';

  @override
  String get food_delete_entry => 'Изтриване на запис';

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
    return '$current от $target мл';
  }

  @override
  String get water_intake_history => 'Днешните водни дневници';

  @override
  String get water_no_logs_today =>
      'Все още няма регистрирана вода днес. Хидратирайте и натиснете бутон за бързо добавяне!';

  @override
  String get water_adjust_goal => 'Коригирайте дневната цел';

  @override
  String get health_connect_banner => 'Свързан с Health Connect';

  @override
  String get health_vitals_summary => 'Ежедневни здравни показатели';

  @override
  String get health_latest_heart_rate => 'Последен сърдечен ритъм';

  @override
  String get health_latest_bp => 'Кръвно налягане';

  @override
  String get health_latest_spo2 => 'Кислород в кръвта';

  @override
  String get health_latest_glucose => 'Кръвна глюкоза';

  @override
  String get health_latest_weight => 'Тегло';

  @override
  String get health_latest_sleep => 'Продължителност на съня';

  @override
  String get health_add_manual => 'Добавяне на ръчно измерване';

  @override
  String get health_history_trends => 'Исторически тенденции';

  @override
  String get health_sync_success =>
      'Здравните данни са синхронизирани успешно!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours часа $mins минути';
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
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title => 'Свързани устройства и носими устройства';

  @override
  String get health_devices_desc =>
      'Управлявайте сдвоени смарт часовници, фитнес тракери и здравни сензори.';

  @override
  String get health_workout_editor_title => 'Редактиране на тренировка';

  @override
  String get health_workout_name_label => 'Име на тренировката';

  @override
  String get health_workout_duration_label => 'Продължителност (минути)';

  @override
  String get health_workout_calories_label => 'Очаквани калории (kcal)';

  @override
  String get health_workout_date_label => 'Дата и час';

  @override
  String get plan_daily_wellness_roadmap =>
      'Вашата персонализирана пътна карта';

  @override
  String get plan_morning_routine => 'Сутрешна рутина';

  @override
  String get plan_afternoon_routine => 'Обеден уелнес';

  @override
  String get plan_evening_routine => 'Вечерно отпускане';

  @override
  String get plan_coach_badge => 'Блуми ИИ треньор';

  @override
  String get plan_weekly_overview => '7-дневен уелнес фокус';

  @override
  String get plan_targets_title => 'Уелнес цели и цели';

  @override
  String get plan_calorie_budget_label => 'Дневен калориен бюджет';

  @override
  String get plan_water_budget_label => 'Дневна цел за вода';

  @override
  String get plan_step_budget_label => 'Ежедневна цел за стъпка';

  @override
  String get plan_macro_split_label => 'Съотношение на макронутриенти';

  @override
  String get profile_personal_details => 'Лични данни';

  @override
  String get profile_body_stats => 'Измервания на тялото';

  @override
  String get profile_app_preferences =>
      'Предпочитания и настройки на приложението';

  @override
  String get profile_edit_name_hint => 'Вашето име';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Височина ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Тегло ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Възраст';

  @override
  String get profile_gender_male => 'мъжки';

  @override
  String get profile_gender_female => 'женски';

  @override
  String get profile_gender_other => 'Друго / Предпочитам да не казвам';

  @override
  String get profile_activity_sedentary =>
      'Заседнал живот (малко или никакви упражнения)';

  @override
  String get profile_activity_light => 'Леко активен (1-3 дни/седмица)';

  @override
  String get profile_activity_moderate => 'Умерено активен (3-5 дни/седмица)';

  @override
  String get profile_activity_very => 'Много активен (6-7 дни/седмица)';

  @override
  String get settings_wear_os_header => 'Приложение Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Инсталирайте плочката Bloomi и усложнението на вашия часовник Wear OS, за да прегледате калориите, водата и стъпките.';

  @override
  String get settings_widgets_header => 'Интерактивни Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Закачете уиджети в реално време на началния екран на вашето устройство за незабавни актуализации.';

  @override
  String get settings_about_header => 'Относно Блуми';

  @override
  String get settings_about_version => 'Версия';

  @override
  String get settings_about_build => 'Изградете 100';

  @override
  String get settings_about_credits =>
      'Създаден с грижа за внимателен, здравословен живот.';

  @override
  String get settings_terms_header => 'Правила и условия';

  @override
  String get settings_privacy_header => 'Политика за поверителност';

  @override
  String get settings_delete_header => 'Изтриване на акаунт и данни';

  @override
  String get settings_delete_warning =>
      'Това действие не може да бъде отменено. Всичките ви хранения, тренировки, жизнени показатели и профил ще бъдат изтрити за постоянно.';

  @override
  String get settings_delete_confirm_btn => 'Изтриване за постоянно';

  @override
  String get onboard_welcome_headline => 'Добре дошли в Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Нежно, внимателно проследяване на здравето, проектирано за живота ви.';

  @override
  String get onboard_step_about => 'За теб';

  @override
  String get onboard_step_goals => 'Вашите цели';

  @override
  String get onboard_step_lifestyle => 'Ежедневни навици';

  @override
  String get onboard_step_permissions => 'Разрешения';

  @override
  String get onboard_step_plan => 'Готови!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Сензор за брояч на стъпки';

  @override
  String get onboard_notif_perm => 'Внимателни напомняния и известия';

  @override
  String get onboard_camera_perm => 'Камера (баркод и скенер за храна)';

  @override
  String get onboard_grant_permissions => 'Предоставяне на разрешения';

  @override
  String get onboard_continue_dashboard => 'Отворете таблото за управление';

  @override
  String get notif_channel_hydration_name => 'Хидратация';

  @override
  String get notif_channel_hydration_desc =>
      'Нежни напомняния за вода през целия ден';

  @override
  String get notif_channel_nutrition_name => 'Напомняния за храна и хранене';

  @override
  String get notif_channel_nutrition_desc =>
      'Сигнали за напомняне за закуска, обяд и вечеря';

  @override
  String get notif_channel_steps_name => 'Стъпка Основни етапи';

  @override
  String get notif_channel_steps_desc =>
      'Празненства при достигане на дневните цели за крачки';

  @override
  String get notif_channel_vitals_name =>
      'Проверки на здравето и жизнените показатели';

  @override
  String get notif_channel_vitals_desc =>
      'Напомняния за тегло и време за лягане';

  @override
  String get notif_action_log_water => '💧 Дневник +250 мл';

  @override
  String get notif_action_snooze => 'Дрямка 15м';

  @override
  String get notif_action_log_meal => '🥗 Дневно хранене';

  @override
  String get language => 'език';

  @override
  String get share => 'Споделете';

  @override
  String common_days(Object count) {
    return 'преди $count дни';
  }
}
