// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Дома';

  @override
  String get nav_today => 'Денес';

  @override
  String get nav_plan => 'Планирајте';

  @override
  String get nav_food => 'Храна';

  @override
  String get nav_food_diary => 'Дневник за храна';

  @override
  String get nav_workout => 'Дневник за вежбање';

  @override
  String get nav_health => 'Здравје';

  @override
  String get nav_profile => 'Профил';

  @override
  String get save => 'Зачувај';

  @override
  String get cancel => 'Откажи';

  @override
  String get delete => 'Избриши';

  @override
  String get edit => 'Уреди';

  @override
  String get done => 'Готово';

  @override
  String get close => 'Затвори';

  @override
  String get back => 'Назад';

  @override
  String get next => 'Следно';

  @override
  String get continue_btn => 'Продолжи';

  @override
  String get confirm => 'Потврди';

  @override
  String get search => 'Пребарување';

  @override
  String get filter => 'Филтер';

  @override
  String get all => 'Сите';

  @override
  String get active => 'Активен';

  @override
  String get today => 'Денес';

  @override
  String get yesterday => 'Вчера';

  @override
  String get tomorrow => 'Утре';

  @override
  String get add => 'Додадете';

  @override
  String get remove => 'Отстрани';

  @override
  String get refresh => 'Освежи';

  @override
  String get retry => 'Обидете се повторно';

  @override
  String get error => 'Грешка';

  @override
  String get success => 'Успех';

  @override
  String get loading => 'Се вчитува...';

  @override
  String get no_data => 'Нема достапни податоци';

  @override
  String get offline => 'Офлајн режим';

  @override
  String get offline_sub =>
      'Промените ќе се синхронизираат откако повторно ќе се поврзат';

  @override
  String get undo => 'Врати';

  @override
  String get portion => 'Порција';

  @override
  String get quantity => 'Количина';

  @override
  String get unit => 'Единица';

  @override
  String get clear => 'Јасно';

  @override
  String get select => 'Изберете';

  @override
  String get apply => 'Пријавете се';

  @override
  String get reset => 'Ресетирај';

  @override
  String get ok => 'Во ред';

  @override
  String get yes => 'Да';

  @override
  String get no => 'бр';

  @override
  String get optional => 'Факултативно';

  @override
  String get calories => 'Калории';

  @override
  String get protein => 'Протеини';

  @override
  String get carbs => 'Јаглехидрати';

  @override
  String get fat => 'Масти';

  @override
  String get fiber => 'Влакна';

  @override
  String get water => 'Вода';

  @override
  String get steps => 'Чекори';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'е';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунти';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'во';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ч';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Послужување';

  @override
  String get servings => 'порции';

  @override
  String get serving_size => 'Големина на сервирање';

  @override
  String get per_100g => 'на 100 гр';

  @override
  String get india => 'Индија';

  @override
  String get asia => 'Азија';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Блискиот Исток';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Дома';

  @override
  String get home_greeting_morning => 'Добро утро';

  @override
  String get home_greeting_afternoon => 'Добро попладне';

  @override
  String get home_greeting_evening => 'Добра вечер';

  @override
  String get home_streak_title => 'Цветна редеа';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дена серија',
      one: '1 дневна серија',
      zero: '0 дена низа',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Изгорена';

  @override
  String get home_calories_budget => 'Калориски буџет';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Преостанати $kcal kcal';
  }

  @override
  String get home_water_title => 'Дневна хидратација';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Чекори одеше';

  @override
  String get home_quick_actions => 'Брзи акции';

  @override
  String get home_log_meal => 'Оброк од дневници';

  @override
  String get home_log_water => 'Вода од дневници';

  @override
  String get home_log_workout => 'Пријавете се вежба';

  @override
  String get home_log_weight => 'Дневна тежина';

  @override
  String get home_insights_title => 'Денешни увиди';

  @override
  String get home_quote =>
      'Малите здрави избори создаваат расцутени трансформации.';

  @override
  String get home_ai_coach_tip => 'Тренер за вештачка интелигенција на Блуми';

  @override
  String get home_surroundings => 'Околината и воздухот';

  @override
  String get home_notifications => 'Известувања';

  @override
  String get home_daily_score => 'Дневен бод за благосостојба';

  @override
  String get home_view_all => 'Прикажи ги сите';

  @override
  String get food_diary_title => 'Дневник за храна';

  @override
  String get food_breakfast => 'Појадок';

  @override
  String get food_lunch => 'Ручек';

  @override
  String get food_dinner => 'Вечера';

  @override
  String get food_snacks => 'Закуски';

  @override
  String get food_add_food => 'Додадете храна';

  @override
  String get food_edit_food => 'Уредете ја храната';

  @override
  String get food_add_breakfast => 'Додадете Појадок';

  @override
  String get food_add_lunch => 'Додадете ручек';

  @override
  String get food_add_dinner => 'Додадете вечера';

  @override
  String get food_add_snack => 'Додадете закуска';

  @override
  String get food_total_calories => 'Вкупно калории';

  @override
  String get food_empty_meal => 'Сè уште нема евидентирана храна за овој оброк';

  @override
  String get food_empty_diary => 'Нема пријавени оброци за овој ден';

  @override
  String get food_log_first_meal =>
      'Допрете + за да го најавите вашиот прв вкусен оброк';

  @override
  String get food_quick_add => 'Брзо додавање';

  @override
  String get food_search_hint => 'Пребарајте јадења, овошје, дал, роти...';

  @override
  String get food_custom_recipe => 'Прилагодена храна и рецепт';

  @override
  String get food_scan_barcode => 'Скенирај баркод';

  @override
  String get food_camera_scan => 'Скенер за храна со вештачка интелигенција';

  @override
  String get food_recent => 'Неодамнешна храна';

  @override
  String get food_favourites => 'Омилени';

  @override
  String get food_macro_summary => 'Распаѓање на макронутриенти';

  @override
  String get food_delete_meal_confirm =>
      'Дали сте сигурни дека сакате да ја отстраните оваа ставка?';

  @override
  String get food_item_deleted => 'Прехранбениот производ е отстранет';

  @override
  String get food_remaining => 'преостанати';

  @override
  String get food_consumed => 'консумираат';

  @override
  String food_of_target(Object target) {
    return 'од $target kcal';
  }

  @override
  String get foodSearch_title => 'Пребарајте храна';

  @override
  String get foodSearch_scan_barcode => 'Скенирај баркод';

  @override
  String get foodSearch_take_photo => 'Фотографија на Snap Food';

  @override
  String get foodSearch_custom_food => 'Создадете прилагодена храна';

  @override
  String get foodSearch_recent_searches => 'Неодамнешни пребарувања';

  @override
  String get foodSearch_popular => 'Популарни јадења';

  @override
  String get foodSearch_no_results =>
      'Нема храна што одговара на вашето пребарување';

  @override
  String get barcode_title => 'Баркод скенер';

  @override
  String get barcode_align => 'Порамнете го бар-кодот во рамката на камерата';

  @override
  String get barcode_not_found =>
      'Производот не е пронајден во базата на податоци';

  @override
  String get barcode_premium_feature =>
      'Скенирањето баркод е достапно со Bloomi Pro';

  @override
  String get camera_title => 'Скенер за храна со вештачка интелигенција';

  @override
  String get camera_tap_hint => 'Направете јасна фотографија од вашето јадење';

  @override
  String get camera_analysing => 'Се анализира чинијата со храна...';

  @override
  String get camera_detected => 'Откриени ставки';

  @override
  String get camera_flash => 'Вклучете го блицот';

  @override
  String get camera_retake => 'Повторно фотографирајте';

  @override
  String get camera_confirm_food => 'Потврдете ги ставките';

  @override
  String get customFood_title => 'Прилагодена храна и рецепт';

  @override
  String get customFood_name_hint => 'Име на јадење или состојка';

  @override
  String get customFood_calories_hint => 'Калории (kcal)';

  @override
  String get customFood_protein_hint => 'Протеин (g)';

  @override
  String get customFood_carbs_hint => 'Јаглехидрати (g)';

  @override
  String get customFood_fat_hint => 'Масти (g)';

  @override
  String get customFood_save => 'Зачувај го рецептот';

  @override
  String get water_tracker_title => 'Тракер за вода';

  @override
  String get water_daily_target => 'Дневна цел за хидратација';

  @override
  String get water_logged_today => 'Најавени денес';

  @override
  String get water_add_glass => '+250 ml Чаша';

  @override
  String get water_add_bottle => '+500 ml Шише';

  @override
  String get water_custom_amount => 'Прилагодена сума';

  @override
  String get water_reminder_tip =>
      'Пијте вода редовно во текот на денот за стабилна енергија.';

  @override
  String water_logged_toast(Object amount) {
    return 'Најавени $amount мл вода 💧';
  }

  @override
  String get workout_title => 'Дневник за вежбање';

  @override
  String get workout_add_exercise => 'Додадете вежбање';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Сила';

  @override
  String get workout_yoga => 'Јога и флексибилност';

  @override
  String get workout_duration => 'Времетраење';

  @override
  String get workout_intensity => 'Интензитет';

  @override
  String get workout_calories_burned => 'Согорени калории';

  @override
  String get workout_empty => 'Денеска не се пријавени тренинзи';

  @override
  String get workout_save_success => 'Вежбањето е успешно зачувано!';

  @override
  String get workout_type => 'Тип на вежбање';

  @override
  String get workout_notes => 'Белешки и рефлексии';

  @override
  String get health_overview_title => 'Здравје и витали';

  @override
  String get health_heart_rate => 'Отчукувањата на срцето';

  @override
  String get health_blood_oxygen => 'Кислород во крвта (SpO2)';

  @override
  String get health_blood_pressure => 'Крвниот притисок';

  @override
  String get health_blood_glucose => 'Гликоза во крвта';

  @override
  String get health_body_temperature => 'Температура на телото';

  @override
  String get health_sleep_tracking => 'Следење на спиење';

  @override
  String get health_weight_tracking => 'Тежина и состав на телото';

  @override
  String get health_waist_hip => 'Сооднос помеѓу половината и колковите';

  @override
  String get health_devices_hub => 'Уреди и центар за паметни часовници';

  @override
  String get health_sync_now => 'Синхронизирајте здравствени податоци';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Последно синхронизирано: $time';
  }

  @override
  String get health_manual_entry => 'Рачен здравствен влез';

  @override
  String get health_metric_detail => 'Метрички детали';

  @override
  String get health_connected_sensors => 'Поврзани здравствени сензори';

  @override
  String get plan_title => 'Дневен план';

  @override
  String get plan_weekly_title => 'Неделен велнес план';

  @override
  String get plan_calorie_target => 'Цел на калории';

  @override
  String get plan_water_target => 'Целта за хидратација';

  @override
  String get plan_step_target => 'Чекор Цел';

  @override
  String get plan_sleep_target => 'Цел за спиење';

  @override
  String get plan_meal_suggestions => 'Предлози за оброци';

  @override
  String get plan_healthy_habits => 'Здрави навики и совети';

  @override
  String get plan_coach_advice =>
      'Препораки за тренер на Блуми со вештачка интелигенција';

  @override
  String get plan_generated_title => 'Персонализиран дневен распоред';

  @override
  String get profile_title => 'Профил';

  @override
  String get profile_edit => 'Уредете го профилот';

  @override
  String get profile_name => 'Име';

  @override
  String get profile_age => 'Возраст';

  @override
  String get profile_gender => 'Пол';

  @override
  String get profile_height => 'Висина';

  @override
  String get profile_weight => 'Тежина';

  @override
  String get profile_goal => 'Примарна цел';

  @override
  String get profile_activity_level => 'Ниво на активност';

  @override
  String get profile_stats => 'Мојата велнес статистика';

  @override
  String get profile_saved => 'Профилот е успешно ажуриран';

  @override
  String get profile_bmi => 'Индекс на телесна маса (БМИ)';

  @override
  String get profile_membership => 'Членство';

  @override
  String get settings => 'Поставки';

  @override
  String get preferences_habits => 'ПРЕФЕРЕНЦИИ И НАВИКИ';

  @override
  String get appearance_theme => 'Изглед и тема';

  @override
  String get appearance_theme_sub =>
      'Темно, светло, системски режим и опции за заднина на апликации';

  @override
  String get permissions => 'Дозволи и пристап до системот';

  @override
  String get permissions_sub =>
      'Health Connect, сензори за чекори, GPS, известувања и камера';

  @override
  String get reminders_notifications => 'Потсетници и известувања';

  @override
  String get reminders_sub =>
      'Време на оброци, вода, проверка на тежината и потсетници пред спиење';

  @override
  String get units_of_measurement => 'Мерни единици';

  @override
  String get units_sub =>
      'Метрички (kg, cm, ml, km) или Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Јазик на апликацијата';

  @override
  String get language_sub =>
      'англиски, हिन्दी (хинди), хинглишки и над 195 глобални јазици';

  @override
  String get home_screen_widgets => 'Додатоци на почетниот екран';

  @override
  String get widgets_sub =>
      'Виџети за Android во живо: Hub, Steps, Water, Nutrition и Mascot';

  @override
  String get wear_os_watch_app => 'Носете OS Watch App';

  @override
  String get wear_os_sub =>
      'Придружник на паметен часовник, плочки, компликации и витални елементи во живо';

  @override
  String get goals_wellness => 'Увиди за ЦЕЛИ И ВЕЛНЕС';

  @override
  String get nutrition_targets => 'Цели за исхрана и макро поделба';

  @override
  String get nutrition_targets_sub =>
      'Цел на калории, протеини, јаглехидрати, масти и вода';

  @override
  String get weekly_recap => 'Неделен Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-дневен просек на калории, макро сооднос и најдобар ден';

  @override
  String get streaks_milestones => 'Низи и пресвртници';

  @override
  String get streaks_sub => 'Активни цветни ленти, значки и достигнувања';

  @override
  String get connected_devices => 'ПОВРЗАНИ УРЕДИ И ЕКОСИСТЕМ';

  @override
  String get devices_hub => 'Уреди и центар за паметни часовници';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Околината и времето';

  @override
  String get surroundings_sub =>
      'Квалитет на воздухот (AQI), УВ индекс и совети за хидратација на времето';

  @override
  String get bloomi_pro => 'Претплата на Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Тренер за план за вештачка интелигенција, 5 графички контроли за почетниот екран и следење на витални елементи';

  @override
  String get about_security => 'ЗА И БЕЗБЕДНОСТ';

  @override
  String get about_bloomi => 'За Блуми';

  @override
  String get about_bloomi_sub => 'Изградба на спецификации, верзија, атрибути';

  @override
  String get privacy_policy => 'Политика за приватност';

  @override
  String get privacy_policy_sub =>
      'Офлајн-прво, архитектура на податоци на уредот';

  @override
  String get terms_conditions => 'Услови и правила';

  @override
  String get terms_conditions_sub =>
      'Услови за користење и упатства за здравје';

  @override
  String get delete_account => 'Избришете сметка и податоци';

  @override
  String get delete_account_sub =>
      'Неповратно избришете ги локалните SQLite податоци и резервните копии на облакот';

  @override
  String get healthy_habits => 'Изградете нежни, трајни велнес навики';

  @override
  String get all_logs => 'Мои следени податоци и дневници';

  @override
  String get search_language => 'Пребарувајте по јазик или мајчин писмо...';

  @override
  String get languages_available => 'Достапни јазици';

  @override
  String get no_matching_languages => 'Не се најдени јазици што се совпаѓаат';

  @override
  String get try_searching =>
      'Обидете се да пребарувате по мајчин или англиски правопис';

  @override
  String get partially_translated => 'Делумно преведено';

  @override
  String get complete_translation => 'Целосно';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Јазикот е поставен на $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Околината и животната средина';

  @override
  String get surroundings_aqi => 'Индекс за квалитет на воздухот';

  @override
  String get surroundings_uv => 'УВ индекс';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Влажност';

  @override
  String get surroundings_hydration_advice =>
      'Останете добро хидрирани во моменталните временски услови.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Пребарајте храна';

  @override
  String get food_quick_barcode => 'Скенирајте баркод 👑';

  @override
  String get food_quick_water => 'Додадете вода';

  @override
  String get food_quick_custom => 'Прилагодена храна';

  @override
  String get surroundings_good => 'Добро';

  @override
  String get surroundings_moderate => 'Умерено';

  @override
  String get surroundings_unhealthy => 'Нездраво';

  @override
  String get notifications_title => 'Известувања и предупредувања';

  @override
  String get notifications_empty => 'Нема нови известувања';

  @override
  String get notifications_mark_read => 'Обележете ги сите како прочитани';

  @override
  String get notifications_clear => 'Исчисти ги сите';

  @override
  String get reminders => 'Поставки за потсетување';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Потсетник за појадок 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Добро утро! Време е за хранлив појадок во $time.';
  }

  @override
  String get reminders_lunch_title => 'Потсетник за ручек 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Паузирајте и уживајте во урамнотежен, внимателен ручек во $time.';
  }

  @override
  String get reminders_dinner_title => 'Потсетник за вечера 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Време е за лесна, задоволувачка вечера во $time.';
  }

  @override
  String get reminders_water_title => 'Хидратациски поттик 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Време е да пиете свежа чаша вода! ($time)';
  }

  @override
  String get reminders_weight_title => 'Неделно мерење ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Следете ги вашите неделни метрики на телото на Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Затворање пред спиење 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Опуштете се и подгответе се за мирен сон ( $time ).';
  }

  @override
  String get onboard_welcome => 'Добредојдовте во Bloomi';

  @override
  String get onboard_sub =>
      'Ваш пријателски, офлајн придружник за здравје и исхрана.';

  @override
  String get onboard_get_started => 'Започнете';

  @override
  String get onboard_sign_in => 'Пријавете се';

  @override
  String get onboard_skip => 'Прескокни';

  @override
  String get onboard_choose_goal => 'Која е вашата примарна цел за здравје?';

  @override
  String get onboard_goal_weight_loss => 'Нежно губење на тежината';

  @override
  String get onboard_goal_muscle => 'Мускулно зголемување и сила';

  @override
  String get onboard_goal_energy => 'Дневна енергија и виталност';

  @override
  String get onboard_goal_habits => 'Здрава свесна исхрана';

  @override
  String get onboard_about_you => 'Кажете ни за себе';

  @override
  String get onboard_lifestyle => 'Вашата дневна рутина';

  @override
  String get onboard_permissions_title => 'Дозволи и пристап до системот';

  @override
  String get onboard_permissions_sub =>
      'Дозволете пристап до чекори за синхронизација, вежбање и потсетници.';

  @override
  String get onboard_plan_ready_title => 'Вашиот сопствен план е подготвен!';

  @override
  String get onboard_plan_ready_sub =>
      'Направивме нежен, персонализиран патоказ за исхрана и здравје само за вас.';

  @override
  String get onboard_enter_bloomi => 'Влезете во Bloomi';

  @override
  String get insights_weekly_report => 'Неделен Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Најдобар ден за конзистентност: $day';
  }

  @override
  String get insights_streaks_badges => 'Низи и пресвртници';

  @override
  String insights_unlocked_on(Object date) {
    return 'Отклучено на $date';
  }

  @override
  String get insights_keep_going => 'Продолжете со фантастичниот напредок!';

  @override
  String get widgets_title => 'Додатоци на почетниот екран';

  @override
  String widgets_active_count(Object count) {
    return 'Активни виџети: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Чекори и активен прстен';

  @override
  String get widgets_water_title => 'Брз дневник за хидратација';

  @override
  String get widgets_mascot_title => 'Блуми маскота придружник';

  @override
  String get wear_os_title => 'Носете паметен часовник со оперативен систем';

  @override
  String get wear_os_connected => 'Поврзан со Watch';

  @override
  String get wear_os_sync => 'Синхронизирај податоци за часовникот';

  @override
  String get theme_title => 'Изглед и тема';

  @override
  String get theme_mode => 'Режим на тема';

  @override
  String get theme_light => 'Светлина';

  @override
  String get theme_dark => 'Темно';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Палета за позадина';

  @override
  String get units_title => 'Мерни единици';

  @override
  String get units_metric => 'Метрички (kg, cm, ml)';

  @override
  String get units_imperial => 'Империјал (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Не може да се вчита контролната табла';

  @override
  String get home_health_permission_req =>
      'Потребна е дозвола за Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi бара дозвола за Health Connect за да повлече вистински чекори, отчукувањата на срцето и да ги синхронизира виџетите од мобилниот дом во реално време.';

  @override
  String get home_allow_health => 'Дозволете Health Connect';

  @override
  String get home_ready_mindful_day => 'Подготвени за внимателен ден? ✨';

  @override
  String get home_quick_add => 'Брзо додавање';

  @override
  String get home_live_gps => 'ГПС во живо';

  @override
  String get home_calories_remaining_label => 'ОСТАНУВААТ КАЛОРИИ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Јадено: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Допрете за следење на вода 💧';

  @override
  String get home_water_goal_reached => 'Постигната дневна цел 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml до дневна цел';
  }

  @override
  String get home_details => 'Детали';

  @override
  String get home_upgrade_plan_desc =>
      'Надградете за да отклучите персонализирани дневни цели и план за вештачка интелигенција';

  @override
  String get home_unlock => 'Отклучи 👑';

  @override
  String get home_quick_log_hint => 'Брзо снимајте велнес влез';

  @override
  String get food_serving_size => 'Големина на сервирање';

  @override
  String get food_serving_grams => 'Послужување (g)';

  @override
  String get food_number_servings => 'Број на порции';

  @override
  String get food_calories_per_serving => 'Калории по порција';

  @override
  String get food_recipe_ingredients => 'Состојки';

  @override
  String get food_recipe_add_ingredient => 'Додадете состојка';

  @override
  String get food_recipe_directions => 'Инструкции и белешки';

  @override
  String get food_recipe_total => 'Вкупен рецепт за исхрана';

  @override
  String get food_recipe_per_serving => 'Исхрана по порција';

  @override
  String get food_recipe_saved_toast =>
      'Прилагодената храна е успешно зачувана!';

  @override
  String get food_barcode_found => 'Пронајден производ!';

  @override
  String get food_barcode_not_found_desc =>
      'Не можевме да го најдеме овој баркод во отворената база на податоци. Можете да го додадете како прилагодена храна.';

  @override
  String get food_add_custom_btn => 'Додадете прилагодена храна';

  @override
  String get food_scan_again => 'Скенирајте повторно';

  @override
  String get food_review_items => 'Прегледајте ја откриената храна';

  @override
  String get food_review_hint =>
      'Прилагодете ги количините или отстранете ги сите непризнаени ставки';

  @override
  String get food_log_selected => 'Пријавете ја избраната храна';

  @override
  String get food_favourites_title => 'Омилена храна';

  @override
  String get food_recent_title => 'Неодамнешна храна';

  @override
  String get food_no_favourites =>
      'Сè уште нема омилена храна. Допрете го срцето на која било храна за да заштедите овде.';

  @override
  String get food_no_recents => 'Не е пронајдена неодамна евидентирана храна.';

  @override
  String get food_nutrition_details_title => 'Детали за дневна исхрана';

  @override
  String get food_macro_protein_label => 'Распаѓање на протеини';

  @override
  String get food_macro_carbs_label => 'Распаѓање на јаглехидрати';

  @override
  String get food_macro_fat_label => 'Распаѓање на маснотии';

  @override
  String get food_macro_fiber_label => 'Распаѓање на влакна';

  @override
  String get food_daily_target_comparison => 'Целна споредба';

  @override
  String food_target_label(Object target) {
    return 'Цел: $target';
  }

  @override
  String get food_edit_entry => 'Уреди запис во дневник';

  @override
  String get food_delete_entry => 'Избриши го записот';

  @override
  String food_grams_short(Object grams) {
    return '$grams г';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current од $target ml';
  }

  @override
  String get water_intake_history => 'Денешни водни трупци';

  @override
  String get water_no_logs_today =>
      'Денеска сè уште нема најавена вода. Хидрирајте и допрете копче за брзо додавање!';

  @override
  String get water_adjust_goal => 'Прилагодете ја дневната цел';

  @override
  String get health_connect_banner => 'Поврзан со Health Connect';

  @override
  String get health_vitals_summary => 'Дневни здравствени витали';

  @override
  String get health_latest_heart_rate => 'Најнови отчукувањата на срцето';

  @override
  String get health_latest_bp => 'Крвниот притисок';

  @override
  String get health_latest_spo2 => 'Кислород во крвта';

  @override
  String get health_latest_glucose => 'Гликоза во крвта';

  @override
  String get health_latest_weight => 'Тежина';

  @override
  String get health_latest_sleep => 'Времетраење на спиењето';

  @override
  String get health_add_manual => 'Додадете рачно мерење';

  @override
  String get health_history_trends => 'Историски трендови';

  @override
  String get health_sync_success =>
      'Здравствените податоци успешно се синхронизираат!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours часа $mins мин';
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
  String get health_devices_title => 'Поврзани уреди и уреди за носење';

  @override
  String get health_devices_desc =>
      'Управувајте со спарени паметни часовници, фитнес тракери и здравствени сензори.';

  @override
  String get health_workout_editor_title => 'Уреди вежбање';

  @override
  String get health_workout_name_label => 'Име на вежбање';

  @override
  String get health_workout_duration_label => 'Времетраење (минути)';

  @override
  String get health_workout_calories_label => 'Проценети калории (kcal)';

  @override
  String get health_workout_date_label => 'Датум и време';

  @override
  String get plan_daily_wellness_roadmap => 'Вашиот персонализиран патоказ';

  @override
  String get plan_morning_routine => 'Утринска рутина';

  @override
  String get plan_afternoon_routine => 'Велнес на пладне';

  @override
  String get plan_evening_routine => 'Вечер на ветер';

  @override
  String get plan_coach_badge => 'Тренер за вештачка интелигенција на Блуми';

  @override
  String get plan_weekly_overview => '7-дневен велнес фокус';

  @override
  String get plan_targets_title => 'Велнес цели и цели';

  @override
  String get plan_calorie_budget_label => 'Дневен калориски буџет';

  @override
  String get plan_water_budget_label => 'Дневна цел за вода';

  @override
  String get plan_step_budget_label => 'Цел на дневниот чекор';

  @override
  String get plan_macro_split_label => 'Сооднос на макронутриенти';

  @override
  String get profile_personal_details => 'Лични детали';

  @override
  String get profile_body_stats => 'Мерења на телото';

  @override
  String get profile_app_preferences => 'Преференци и поставки за апликации';

  @override
  String get profile_edit_name_hint => 'Вашето име';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Висина ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Тежина ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Возраст';

  @override
  String get profile_gender_male => 'Машки';

  @override
  String get profile_gender_female => 'Женски';

  @override
  String get profile_gender_other => 'Друго / Претпочитајте да не кажувате';

  @override
  String get profile_activity_sedentary => 'Седентарен (малку или без вежбање)';

  @override
  String get profile_activity_light => 'Лесно активен (1-3 дена/недела)';

  @override
  String get profile_activity_moderate => 'Умерено активен (3-5 дена/недела)';

  @override
  String get profile_activity_very => 'Многу активен (6-7 дена/недела)';

  @override
  String get settings_wear_os_header => 'Носете OS Companion апликација';

  @override
  String get settings_wear_os_desc =>
      'Инсталирајте ја плочката и компликацијата Bloomi на вашиот часовник Wear OS за да погледнете во калориите, водата и чекорите.';

  @override
  String get settings_widgets_header => 'Интерактивни додатоци за Android';

  @override
  String get settings_widgets_desc =>
      'Закачете виџети во реално време на почетниот екран на вашиот уред за инстант ажурирања.';

  @override
  String get settings_about_header => 'За Блуми';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Изградба на 100';

  @override
  String get settings_about_credits =>
      'Создаден со грижа за внимателен, здрав живот.';

  @override
  String get settings_terms_header => 'Услови и правила';

  @override
  String get settings_privacy_header => 'Политика за приватност';

  @override
  String get settings_delete_header => 'Избришете сметка и податоци';

  @override
  String get settings_delete_warning =>
      'Ова дејство не може да се врати. Сите ваши оброци, тренинзи, витални елементи и профил ќе бидат трајно избришани.';

  @override
  String get settings_delete_confirm_btn => 'Избриши трајно';

  @override
  String get onboard_welcome_headline => 'Добредојдовте во Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Нежно, внимателно следење на здравјето дизајнирано околу вашиот живот.';

  @override
  String get onboard_step_about => 'За тебе';

  @override
  String get onboard_step_goals => 'Вашите цели';

  @override
  String get onboard_step_lifestyle => 'Дневни навики';

  @override
  String get onboard_step_permissions => 'Дозволи';

  @override
  String get onboard_step_plan => 'Подготвени!';

  @override
  String get onboard_health_connect_perm => 'Health Connect пристап';

  @override
  String get onboard_step_sensors_perm => 'Сензор за бројач на чекори';

  @override
  String get onboard_notif_perm => 'Внимателни потсетници и известувања';

  @override
  String get onboard_camera_perm => 'Камера (баркод и скенер за храна)';

  @override
  String get onboard_grant_permissions => 'Доделување дозволи';

  @override
  String get onboard_continue_dashboard => 'Отворете ја контролната табла';

  @override
  String get notif_channel_hydration_name => 'Напојувања за хидратација';

  @override
  String get notif_channel_hydration_desc =>
      'Нежни потсетници за вода во текот на денот';

  @override
  String get notif_channel_nutrition_name => 'Потсетници за оброци и исхрана';

  @override
  String get notif_channel_nutrition_desc =>
      'Предупредувања за потсетник за појадок, ручек и вечера';

  @override
  String get notif_channel_steps_name => 'Чекор пресвртници';

  @override
  String get notif_channel_steps_desc =>
      'Прослави кога се постигнуваат дневни цели';

  @override
  String get notif_channel_vitals_name => 'Здравствени и витални проверки';

  @override
  String get notif_channel_vitals_desc =>
      'Потсетници за намалување на тежината и пред спиење';

  @override
  String get notif_action_log_water => '💧 Дневник +250мл';

  @override
  String get notif_action_snooze => 'Одложување 15 м';

  @override
  String get notif_action_log_meal => '🥗 Оброк од дневници';

  @override
  String get language => 'Јазик';

  @override
  String get share => 'Споделете';

  @override
  String common_days(Object count) {
    return 'пред $count ден';
  }
}
