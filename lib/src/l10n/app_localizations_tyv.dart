// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tuvinian (`tyv`).
class AppLocalizationsTyv extends AppLocalizations {
  AppLocalizationsTyv([String locale = 'tyv']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Башкы';

  @override
  String get nav_today => 'Бөгүн';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Аъш-чем';

  @override
  String get nav_food_diary => 'Аъш-чем дневниги';

  @override
  String get nav_workout => 'Тренировкалар журналы';

  @override
  String get nav_health => 'Кадыкшыл';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Камгалаар';

  @override
  String get cancel => 'Соксадыр';

  @override
  String get delete => 'Удалить';

  @override
  String get edit => 'Өскертир';

  @override
  String get done => 'Доозулган';

  @override
  String get close => 'Хааптар';

  @override
  String get back => 'Артынче';

  @override
  String get next => 'Дараазында';

  @override
  String get continue_btn => 'Улаштыр';

  @override
  String get confirm => 'Бадыткаар';

  @override
  String get search => 'Дилээшкин';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Шупту';

  @override
  String get active => 'Идепкейлиг';

  @override
  String get today => 'Бөгүн';

  @override
  String get yesterday => 'Дуун';

  @override
  String get tomorrow => 'Эртен';

  @override
  String get add => 'Немээр';

  @override
  String get remove => 'үндүрер';

  @override
  String get refresh => 'Чаартыр';

  @override
  String get retry => 'Катап шенеп көрүңер';

  @override
  String get error => 'Частырыг';

  @override
  String get success => 'Чедиишкин';

  @override
  String get loading => 'Чүдүрүп турар...';

  @override
  String get no_data => 'Данныйлар чок';

  @override
  String get offline => 'Офлайн режим';

  @override
  String get offline_sub => 'Өскерлиишкиннер катап кожуптарга синхроннаар';

  @override
  String get undo => 'Эгидер';

  @override
  String get portion => 'Бөлүк';

  @override
  String get quantity => 'Сан';

  @override
  String get unit => 'Бөлүк';

  @override
  String get clear => 'Тодаргай';

  @override
  String get select => 'Шилип алыңар';

  @override
  String get apply => 'Дужаап кирер';

  @override
  String get reset => 'Эгидер';

  @override
  String get ok => 'ОК';

  @override
  String get yes => 'Ийе';

  @override
  String get no => 'Чок';

  @override
  String get optional => 'Необязательный';

  @override
  String get calories => 'Калория';

  @override
  String get protein => 'Белок';

  @override
  String get carbs => 'Углеводтар';

  @override
  String get fat => 'Семис';

  @override
  String get fiber => 'Клетчатка';

  @override
  String get water => 'Суг';

  @override
  String get steps => 'Базымнар';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'г';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунту';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'в';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'шактар';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Хереглеп турар';

  @override
  String get servings => 'Порциялар';

  @override
  String get serving_size => 'Порцияның хемчээли';

  @override
  String get per_100g => '100г-га';

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
  String get home_title => 'Башкы';

  @override
  String get home_greeting_morning => 'Эртенгиниң мендизи-биле';

  @override
  String get home_greeting_afternoon => 'Экии';

  @override
  String get home_greeting_evening => 'Кежээкинин мендизи-биле';

  @override
  String get home_streak_title => 'Блоссом Стрик';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хонуктарның ээлчээ',
      one: '1 хонук дургузунда',
      zero: '0 хонук дургузунда',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Өрттенген';

  @override
  String get home_calories_budget => 'Калория бюджеди';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал арткан';
  }

  @override
  String get home_water_title => 'Хүннүң-не суггарылга';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Кылган базымнар';

  @override
  String get home_quick_actions => 'Дүрген ажылдар';

  @override
  String get home_log_meal => 'Ыяш чем';

  @override
  String get home_log_water => 'ыяш суг';

  @override
  String get home_log_workout => 'Лог Тренировка';

  @override
  String get home_log_weight => 'Лог деңзизи';

  @override
  String get home_insights_title => 'Бөгүнгү көрүштер';

  @override
  String get home_quote =>
      'Бичии кадык шилилге чечектелген өскерлиишкиннерни тургузуп турар.';

  @override
  String get home_ai_coach_tip => 'Блуминиң АИ тренери';

  @override
  String get home_surroundings => 'Долгандыр турар болгаш агаар';

  @override
  String get home_notifications => 'Уведомлениелер';

  @override
  String get home_daily_score => 'Хүннүң-не кадыкшылдың деңнели';

  @override
  String get home_view_all => 'Шуптузун көрүңер';

  @override
  String get food_diary_title => 'Аъш-чем дневниги';

  @override
  String get food_breakfast => 'Эртенги чем';

  @override
  String get food_lunch => 'Дүштеки чем';

  @override
  String get food_dinner => 'Кежээки чем';

  @override
  String get food_snacks => 'Чигирзиг чемнер';

  @override
  String get food_add_food => 'Аъш-чемни немээр';

  @override
  String get food_edit_food => 'Аъш-чемни эде көөр';

  @override
  String get food_add_breakfast => 'Эртенги чемни немээр';

  @override
  String get food_add_lunch => 'Дүштеки чемни немээр';

  @override
  String get food_add_dinner => 'Кежээки чемни немеп каар';

  @override
  String get food_add_snack => 'Чигирзиг чемни немеп каар';

  @override
  String get food_total_calories => 'Ниити калория';

  @override
  String get food_empty_meal => 'Бо чемге амдыызында чемнер бижиттинмээн';

  @override
  String get food_empty_diary => 'Бо хүнде чемненилге чок';

  @override
  String get food_log_first_meal =>
      'Бир дугаар амданныг чемиңерни бижиирде + базыптыңар';

  @override
  String get food_quick_add => 'Дүрген немээр';

  @override
  String get food_search_hint =>
      'Аъш-чем, фруктылар, дал, роти дилеп көрүңер...';

  @override
  String get food_custom_recipe => 'Аъш-чем болгаш рецепт';

  @override
  String get food_scan_barcode => 'Штрих-кодту сканерлээр';

  @override
  String get food_camera_scan => 'ИИ Аъш-чем сканери';

  @override
  String get food_recent => 'Соолгу чемнер';

  @override
  String get food_favourites => 'Ынак чүүлдери';

  @override
  String get food_macro_summary => 'Макроэлементилерниң үрелиишкиннери';

  @override
  String get food_delete_meal_confirm =>
      'Бо чүүлдү шынап-ла үндүрер деп турар силер бе?';

  @override
  String get food_item_deleted => 'Аъш-чемни үндүрген';

  @override
  String get food_remaining => 'арткан';

  @override
  String get food_consumed => 'чипкен';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Аъш-чем дилеп тывар';

  @override
  String get foodSearch_scan_barcode => 'Штрих-кодту сканерлээр';

  @override
  String get foodSearch_take_photo => 'Аъш-чем чуруун тырттырып алыңар';

  @override
  String get foodSearch_custom_food => 'Аъш-чемни боттары кылыр';

  @override
  String get foodSearch_recent_searches => 'Сөөлгү дилээшкиннер';

  @override
  String get foodSearch_popular => 'Популярный чемнер';

  @override
  String get foodSearch_no_results =>
      'Силерниң дилээңерге дүгжүп турар чемнер чок';

  @override
  String get barcode_title => 'Штрих-кодтуг сканер';

  @override
  String get barcode_align =>
      'Штрих-кодту камераның рамказының иштинге деңнеп каар';

  @override
  String get barcode_not_found => 'Базада бараан тывылбаан';

  @override
  String get barcode_premium_feature =>
      'Штрих-кодту сканерлээри Bloomi Pro-биле болур';

  @override
  String get camera_title => 'ИИ Аъш-чем сканери';

  @override
  String get camera_tap_hint => 'Аъш-чемиңерниң тода чуруун тырттырып алыңар';

  @override
  String get camera_analysing => 'Аъш-чем таваан сайгарып турар...';

  @override
  String get camera_detected => 'Илереттинген чүүлдер';

  @override
  String get camera_flash => 'Флэшти өскертир';

  @override
  String get camera_retake => 'Чурукту катап тырттырып алыңар';

  @override
  String get camera_confirm_food => 'Чүвелерни бадыткаар';

  @override
  String get customFood_title => 'Аъш-чем болгаш рецепт';

  @override
  String get customFood_name_hint => 'Аъш-чемниң азы бүдүмелдерниң ады';

  @override
  String get customFood_calories_hint => 'Калория (ккал)';

  @override
  String get customFood_protein_hint => 'Белок (g)';

  @override
  String get customFood_carbs_hint => 'Углеводтар (г)';

  @override
  String get customFood_fat_hint => 'Семис (г)';

  @override
  String get customFood_save => 'Рецептини кадагала';

  @override
  String get water_tracker_title => 'Суг хыналдазы';

  @override
  String get water_daily_target => 'Хүннүң-не суггарылга сорулгазы';

  @override
  String get water_logged_today => 'Бөгүн кирген';

  @override
  String get water_add_glass => '+250 мл шил';

  @override
  String get water_add_bottle => '+500 мл шил';

  @override
  String get water_custom_amount => 'Бот-тускайлаң хемчээл';

  @override
  String get water_reminder_tip =>
      'Күштүг болур дизе, бүдүн хүн дургузунда сугну доктаамал ижип чоруңар.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount мл сугну киирген 💧';
  }

  @override
  String get workout_title => 'Тренировкалар журналы';

  @override
  String get workout_add_exercise => 'Тренировканы немээр';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Күш';

  @override
  String get workout_yoga => 'Йога болгаш ээлгир чорук';

  @override
  String get workout_duration => 'Үези';

  @override
  String get workout_intensity => 'Күштүг';

  @override
  String get workout_calories_burned => 'Өрттенген калориялар';

  @override
  String get workout_empty => 'Бо хүнде кандыг-даа тренировкалар бижиттинмээн';

  @override
  String get workout_save_success => 'Тренировка чедиишкинниг камгалаттынган!';

  @override
  String get workout_type => 'Тренировканың хевири';

  @override
  String get workout_notes => 'Бижиктер болгаш боданыышкыннар';

  @override
  String get health_overview_title => 'Кадыкшыл болгаш амыдырал';

  @override
  String get health_heart_rate => 'Чурек согуу';

  @override
  String get health_blood_oxygen => 'Ханның кислороду (SpO2)';

  @override
  String get health_blood_pressure => 'Хан базыышкыны';

  @override
  String get health_blood_glucose => 'Ханның глюкозазы';

  @override
  String get health_body_temperature => 'Мага-боттуң температуразы';

  @override
  String get health_sleep_tracking => 'Уйгу хайгааралы';

  @override
  String get health_weight_tracking => 'Деңзи болгаш мага-боттуң тургузуу';

  @override
  String get health_waist_hip => 'Белден дөңмекке хамаарылга';

  @override
  String get health_devices_hub => 'Хереглелдер болгаш угаанныг шактар төвү';

  @override
  String get health_sync_now => 'Кадыкшыл дугайында медээлерни синхроннаар';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Сөөлгү катап синхронизациялаан: $time';
  }

  @override
  String get health_manual_entry => 'Кадыкшыл дугайында кол бижик';

  @override
  String get health_metric_detail => 'Метриканың тодаргайы';

  @override
  String get health_connected_sensors => 'Кадыкшылдың холбашкан датчиктери';

  @override
  String get plan_title => 'Хүннүң планы';

  @override
  String get plan_weekly_title => 'Неделя санында кадыкшыл планы';

  @override
  String get plan_calorie_target => 'Калория сорулгазы';

  @override
  String get plan_water_target => 'Суггарылга сорулгазы';

  @override
  String get plan_step_target => 'Базымның сорулгазы';

  @override
  String get plan_sleep_target => 'Уйгу сорулгазы';

  @override
  String get plan_meal_suggestions => 'Аъш-чем дугайында сүмелер';

  @override
  String get plan_healthy_habits => 'Кадык чаңчылдар болгаш сүмелер';

  @override
  String get plan_coach_advice => 'Bloomi AI тренер сүмелери';

  @override
  String get plan_generated_title => 'Хүннүң бот-тускайлаң графиги';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профильди өскертир';

  @override
  String get profile_name => 'Ады';

  @override
  String get profile_age => 'Назы-хар';

  @override
  String get profile_gender => 'Эр-кыс';

  @override
  String get profile_height => 'Бедии';

  @override
  String get profile_weight => 'Деңзи';

  @override
  String get profile_goal => 'Баштайгы сорулга';

  @override
  String get profile_activity_level => 'Ажыл-чорудулганың деңнели';

  @override
  String get profile_stats => 'Мээң кадыкшылымның статистиказы';

  @override
  String get profile_saved => 'Профиль чедиишкинниг чаарттынган';

  @override
  String get profile_bmi => 'Мага-боттуң массазының индекзи (БМИ)';

  @override
  String get profile_membership => 'Киржикчи чорук';

  @override
  String get settings => 'Настройкалар';

  @override
  String get preferences_habits => 'ЫНАКШЫЛДАР БОЛГАШ ЧАҢЧЫЛДАР';

  @override
  String get appearance_theme => 'Даштыкы хевири болгаш темазы';

  @override
  String get appearance_theme_sub =>
      'Караңгы, чырык, система режими болгаш приложениениң арынының опциялары';

  @override
  String get permissions => 'Чөпшээрелдер болгаш системаже кирери';

  @override
  String get permissions_sub =>
      'Кадыкшыл харылзаазы, базым датчиктери, GPS, дыңнадыглар болгаш камера';

  @override
  String get reminders_notifications => 'Сагындырыглар болгаш дыңнадыглар';

  @override
  String get reminders_sub =>
      'Аъш-чем үези, суг, деңзизин хынаар болгаш удуур мурнунда сагындырыглар';

  @override
  String get units_of_measurement => 'Хемчээлдерниң бирги деңнелдери';

  @override
  String get units_sub =>
      'Метрика (кг, см, мл, км) азы Империал (фунт, фут/дюйм, фл унция)';

  @override
  String get app_language => 'Приложениениң дылы';

  @override
  String get language_sub =>
      'Англи дыл, हिन्दी (Хинди), Хинглиш болгаш 195+ делегей чергелиг дылдар';

  @override
  String get home_screen_widgets => 'Башкы экранның виджеттери';

  @override
  String get widgets_sub =>
      'Дириг Android виджеттер: Хаб, Базымнар, Суг, Аъш-чем болгаш Талисман';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Угаанныг шактарның эжи, плиткалар, бергедээшкиннер болгаш дириг амыдырал';

  @override
  String get goals_wellness => 'СОРУЛГАЛАР БОЛГАШ КАДЫКШЫЛДЫҢ КӨРҮЖҮЛГЕЛЕРИ';

  @override
  String get nutrition_targets =>
      'Аъш-чемниң сорулгалары болгаш макро үлежилге';

  @override
  String get nutrition_targets_sub =>
      'Калория сорулгазы, белок, углеводтар, үс болгаш суг сорулгазы';

  @override
  String get weekly_recap => 'Неделя санында кадыкшылдың түңнелдери';

  @override
  String get weekly_recap_sub =>
      'хонуктуң ортумак калориязы, макро деңнели болгаш эң эки хүн';

  @override
  String get streaks_milestones => 'Удуртукчулар болгаш чедиишкиннер';

  @override
  String get streaks_sub =>
      'Идепкейлиг чечек шыйыглары, демдектер болгаш чедиишкиннер';

  @override
  String get connected_devices => 'ХОЛБАШКАН ХЕРЕКСЕЛДЕР БОЛГАШ ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Хереглелдер болгаш угаанныг шактар төвү';

  @override
  String get devices_hub_sub =>
      'Хелс Коннект, Галакси Уоч, Пиксель Уоч, Гармин';

  @override
  String get surroundings_weather => 'Долгандыр турар болгаш агаар-бойдус';

  @override
  String get surroundings_sub =>
      'Агаарның шынары (AQI), УФ индекси болгаш агаар-бойдустуң суггарылгазының дугайында сүмелер';

  @override
  String get bloomi_pro => 'Блуми Про Подписка';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 эге экранның виджеттери болгаш чугула чүүлдерниң хайгааралы';

  @override
  String get about_security => 'ДУГАЙЫНДА & КАМГАЛАЛГА';

  @override
  String get about_bloomi => 'Блуми дугайында';

  @override
  String get about_bloomi_sub => 'Тудугнуң айытканы, хевири, атрибуциялары';

  @override
  String get privacy_policy => 'Чажыт чоруктуң политиказы';

  @override
  String get privacy_policy_sub =>
      'Офлайн-бирги, херекселде данныйлар архитектуразы';

  @override
  String get terms_conditions => 'Условиялар болгаш негелделер';

  @override
  String get terms_conditions_sub =>
      'Ажыл-чорудулганың негелделери болгаш кадыкшылдың дүрүмнери';

  @override
  String get delete_account => 'Аккаунтту болгаш медээлерни өжүрүп кааптыңар';

  @override
  String get delete_account_sub =>
      'SQLite-тиң тус черниң данныйларын болгаш булуттуг копияларын эгиттинмес кылдыр өжүрүп кааптыңар';

  @override
  String get healthy_habits =>
      'Оожум, үргүлчү кадык чаңчылдарны тургузуп алыңар';

  @override
  String get all_logs => 'Мээң хайгаарап турар медээлерим болгаш журналдарым';

  @override
  String get search_language => 'Дыл азы төрээн бижик-биле дилээри...';

  @override
  String get languages_available => 'Бар дылдар';

  @override
  String get no_matching_languages => 'Тааржыр дылдар тывылбаан';

  @override
  String get try_searching => 'Төрээн бижик азы англи бижик-биле дилеп көрүңер';

  @override
  String get partially_translated => 'Чартык очулдурган';

  @override
  String get complete_translation => 'Доозулган';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Дыл $name ( $nativeName ) кылдыр тургустунган';
  }

  @override
  String get surroundings_title => 'Долгандыр турар болгаш хүрээлел';

  @override
  String get surroundings_aqi => 'Агаарның шынарының индекзи';

  @override
  String get surroundings_uv => 'УФ индекси';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Чылыг';

  @override
  String get surroundings_hydration_advice =>
      'Амгы агаар-бойдустуң байдалдарында сугну эки ижип алыңар.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Аъш-чемни дилеп тывар';

  @override
  String get food_quick_barcode => 'Штрих-кодту сканерлеп алыңар 👑';

  @override
  String get food_quick_water => 'Суг немеп каар';

  @override
  String get food_quick_custom => 'Чагыг чем';

  @override
  String get surroundings_good => 'Эки';

  @override
  String get surroundings_moderate => 'Ортумак';

  @override
  String get surroundings_unhealthy => 'Кадык эвес';

  @override
  String get notifications_title => 'Уведомлениелер болгаш дыңнадыглар';

  @override
  String get notifications_empty => 'Чаа дыңнадыглар чок';

  @override
  String get notifications_mark_read => 'Шуптузун номчаан деп демдеглээр';

  @override
  String get notifications_clear => 'Шуптузун арыглаар';

  @override
  String get reminders => 'Сагындырыгның настройкалары';

  @override
  String get notifications => 'Уведомлениелер';

  @override
  String get reminders_breakfast_title => 'Эртенги чем дугайында сагындырыг 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Эртенгиниң мендизи-биле! $time шакта чемгерикчи эртенги чем чиир үе келген.';
  }

  @override
  String get reminders_lunch_title => 'Дүштеки чемниң сагындырыг 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time -ге дыштанып алгаш, деңзилиг, сагыш-сеткилдиг дүъштеки чемни чип алыңар.';
  }

  @override
  String get reminders_dinner_title => 'Кежээки чемниң сагындырыг 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time-де чиик, хандырар кежээки чемниң үези келген.';
  }

  @override
  String get reminders_water_title => 'Гидратация Надж 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Чаа стакан суг ижер үе келген! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Неделя санында деңзи ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Блумиге ( $time ) неделя санында мага-бодуңарның көргүзүглерин хайгаарап көрүңер.';
  }

  @override
  String get reminders_sleep_title => 'Удуур үе 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Дыштанып алгаш, дыштаныр уйгуга белеткенип алыңар ( $time ).';
  }

  @override
  String get onboard_welcome => 'Блумиге уткуштур';

  @override
  String get onboard_sub =>
      'Силерниң найыралдыг, офлайн-бирги кадыкшыл болгаш чемненилге эш-өөрүңер.';

  @override
  String get onboard_get_started => 'Эгелээр';

  @override
  String get onboard_sign_in => 'Кирер';

  @override
  String get onboard_skip => 'Өтпес';

  @override
  String get onboard_choose_goal => 'Силерниң кол кадыкшыл сорулгаңар чүл?';

  @override
  String get onboard_goal_weight_loss => 'Оожум арыглаашкын';

  @override
  String get onboard_goal_muscle => 'Булчуңнарның өзүлдези болгаш күжү';

  @override
  String get onboard_goal_energy => 'Хүннүң-не энергия болгаш амыдырал';

  @override
  String get onboard_goal_habits => 'Кадык сагыш-сеткилдиг чемненири';

  @override
  String get onboard_about_you => 'Бодуңнуң дугайыңда чугаалап көрем';

  @override
  String get onboard_lifestyle => 'Силерниң хүн бүрүде ажыл-чорудулгаңар';

  @override
  String get onboard_permissions_title =>
      'Чөпшээрелдер болгаш системаже кирери';

  @override
  String get onboard_permissions_sub =>
      'Синхронизация базымнарынче, мергежилгелерже болгаш сагындырыгларже кирер эргени бээр.';

  @override
  String get onboard_plan_ready_title =>
      'Силерниң бот-тускайлаң планыңар белен!';

  @override
  String get onboard_plan_ready_sub =>
      'Бис чүгле силерге чымчак, бот-тускайлаң чемненилге болгаш кадыкшылдың орук картазын тургускан бис.';

  @override
  String get onboard_enter_bloomi => 'Блумини киирер';

  @override
  String get insights_weekly_report => 'Неделя санында кадыкшылдың түңнелдери';

  @override
  String insights_best_day(Object day) {
    return 'Эң эки доктаамал хүн: $day';
  }

  @override
  String get insights_streaks_badges => 'Удуртукчулар болгаш чедиишкиннер';

  @override
  String insights_unlocked_on(Object date) {
    return '$date-де ажыттынган';
  }

  @override
  String get insights_keep_going => 'Кайгамчык бурунгаарлаашкынны уламчылаңар!';

  @override
  String get widgets_title => 'Башкы экранның виджеттери';

  @override
  String widgets_active_count(Object count) {
    return 'Ажылдап турар виджеттер: $count';
  }

  @override
  String get widgets_hub_title => 'Блуми Велнесс Хаб';

  @override
  String get widgets_steps_title => 'Базымнар болгаш ажылдап турар цилиндр';

  @override
  String get widgets_water_title => 'Гидратацияның дүрген логу';

  @override
  String get widgets_mascot_title => 'Блуминиң талисман эжи';

  @override
  String get wear_os_title => 'OS Smartwatch кедер';

  @override
  String get wear_os_connected => 'Watch-биле холбашкан';

  @override
  String get wear_os_sync => 'Көрүп турар медээлерни синхроннаар';

  @override
  String get theme_title => 'Даштыкы хевири болгаш темазы';

  @override
  String get theme_mode => 'Тема режими';

  @override
  String get theme_light => 'Чырык';

  @override
  String get theme_dark => 'Караңгы';

  @override
  String get theme_system => 'Системаның үндезини';

  @override
  String get theme_background_palette => 'Фоннуң палитразы';

  @override
  String get units_title => 'Хемчээлдерниң бирги деңнелдери';

  @override
  String get units_metric => 'Метрика (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дюйм, фл унция)';

  @override
  String get home_unable_load => 'Приборлар панелди чүдүрүп шыдаваан';

  @override
  String get home_health_permission_req =>
      'Кадыкшылга харылзаа чөпшээрели херек';

  @override
  String get home_health_permission_desc =>
      'Bloomi шын базымнарны, чүректиң согуун болгаш мобильдиг бажыңның виджеттерин шын үеде синхроннаарынга Health Connect чөпшээрелин негеп турар.';

  @override
  String get home_allow_health => 'Кадыкшылга харылзаазын чөпшээрээр';

  @override
  String get home_ready_mindful_day =>
      'Сагыш-сеткилдиг хүнге белен силер бе? ✨';

  @override
  String get home_quick_add => 'Дүрген немээр';

  @override
  String get home_live_gps => 'Дириг GPS';

  @override
  String get home_calories_remaining_label => 'КАЛОРИЯЛАР АРТЫП ТУРАР';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Чиген: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Суг хайгааракчызы дээш базыптыңар 💧';

  @override
  String get home_water_goal_reached => 'Хүннүң сорулгазын чедип алдым 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл хүннүң сорулгазынга';
  }

  @override
  String get home_details => 'Тодаргайы-биле';

  @override
  String get home_upgrade_plan_desc =>
      'Хүннүң-не бот-тускайлаң сорулгаларны болгаш ИИ планын ажыдар дээш чаартылга';

  @override
  String get home_unlock => 'Ажыдып алыңар 👑';

  @override
  String get home_quick_log_hint =>
      'Кадыкшыл дугайында бижикти дүрген бижип алыңар';

  @override
  String get food_serving_size => 'Порцияның хемчээли';

  @override
  String get food_serving_grams => 'Хереглээшкин (ж)';

  @override
  String get food_number_servings => 'Порцияларның саны';

  @override
  String get food_calories_per_serving => 'Бир порцияда калория';

  @override
  String get food_recipe_ingredients => 'Ингредиентилери';

  @override
  String get food_recipe_add_ingredient => 'Ингредиентини немээр';

  @override
  String get food_recipe_directions => 'Инструкциялар болгаш демдеглелдер';

  @override
  String get food_recipe_total => 'Ниити рецепт чемненилгези';

  @override
  String get food_recipe_per_serving => 'Бир порцияда чемненилге';

  @override
  String get food_recipe_saved_toast =>
      'Чагыг-керээлиг чемни чедиишкинниг камнап алган!';

  @override
  String get food_barcode_found => 'Бараан тывылган!';

  @override
  String get food_barcode_not_found_desc =>
      'Бо штрих-кодту ажык дыңнадыглар баазазындан тыппаан бис. Ону чем кылдыр немеп болур силер.';

  @override
  String get food_add_custom_btn => 'Бот-тускайлаң чемни немээр';

  @override
  String get food_scan_again => 'Катап сканерлээр';

  @override
  String get food_review_items => 'Илереттинген чемнерни катаптаары';

  @override
  String get food_review_hint =>
      'Хемчээлди таарыштыр азы таныттынмас чүүлдү үндүрер';

  @override
  String get food_log_selected => 'Шилиттинген чемнерни бижиир';

  @override
  String get food_favourites_title => 'Ынак чемнер';

  @override
  String get food_recent_title => 'Соолгу чемнер';

  @override
  String get food_no_favourites =>
      'Амдыызында ынак чемнер чок. Мында камнап алыр дээш кандыг-даа чемни чүректен базыптыңар.';

  @override
  String get food_no_recents => 'Чоокта чаа демдеглеттинген чемнер тывылбаан.';

  @override
  String get food_nutrition_details_title =>
      'Хүннүң чемненилгезиниң дугайында медээлер';

  @override
  String get food_macro_protein_label => 'Белоктуң үрелиишкиннери';

  @override
  String get food_macro_carbs_label => 'Углеводтарның үрелиишкиннери';

  @override
  String get food_macro_fat_label => 'Семис үрелиишкин';

  @override
  String get food_macro_fiber_label => 'Клетчатканың үрелиишкиннери';

  @override
  String get food_daily_target_comparison => 'Сорулгалыг деңнелге';

  @override
  String food_target_label(Object target) {
    return 'Сорулгазы: $target';
  }

  @override
  String get food_edit_entry => 'Дневниктиң бижиин өскертир';

  @override
  String get food_delete_entry => 'Бижикти өжүрүп кааптыңар';

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
  String get water_intake_history => 'Бөгүнгү суг логтары';

  @override
  String get water_no_logs_today =>
      'Бо хүнде суг чок. Суг ижип алгаш, дүрген немээр кнопканы базыптыңар!';

  @override
  String get water_adjust_goal => 'Хүннүң сорулгазын таарыштырар';

  @override
  String get health_connect_banner => 'Кадыкшыл-биле холбашкан';

  @override
  String get health_vitals_summary => 'Хүннүң-не кадыкшылдың чугула чүүлдери';

  @override
  String get health_latest_heart_rate => 'Сөөлгү чүрек согуу';

  @override
  String get health_latest_bp => 'Хан базыышкыны';

  @override
  String get health_latest_spo2 => 'Ханның кислороду';

  @override
  String get health_latest_glucose => 'Ханның глюкозазы';

  @override
  String get health_latest_weight => 'Деңзи';

  @override
  String get health_latest_sleep => 'Уйгу үре-түңнели';

  @override
  String get health_add_manual => 'Кол хемчээлди немээр';

  @override
  String get health_history_trends => 'Төөгүлүг угланыышкыннар';

  @override
  String get health_sync_success =>
      'Кадыкшыл дугайында медээлер чедиишкинниг синхроннаан!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours шак $mins мин';
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
    return '$systolic / $diastolic мм рт. ст.';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title =>
      'Холушкак херекселдер болгаш кедер херекселдер';

  @override
  String get health_devices_desc =>
      'Угаанныг шактарны, фитнес-трекерлерни болгаш кадыкшыл датчиктерин башкарыңар.';

  @override
  String get health_workout_editor_title => 'Тренировканы өскертир';

  @override
  String get health_workout_name_label => 'Тренировканың ады';

  @override
  String get health_workout_duration_label => 'Үези (минуталар)';

  @override
  String get health_workout_calories_label => 'Хереглел калориялары (ккал)';

  @override
  String get health_workout_date_label => 'Хүнү болгаш шагы';

  @override
  String get plan_daily_wellness_roadmap => 'Силерниң хууда орук картаңар';

  @override
  String get plan_morning_routine => 'Эртенги чаңчыл';

  @override
  String get plan_afternoon_routine => 'Дүштеки кадыкшыл';

  @override
  String get plan_evening_routine => 'Кежээки салгын';

  @override
  String get plan_coach_badge => 'Блуминиң АИ тренери';

  @override
  String get plan_weekly_overview => '7-хүннүг кадыкшылга угланган';

  @override
  String get plan_targets_title => 'Кадыкшылдың сорулгалары болгаш сорулгалары';

  @override
  String get plan_calorie_budget_label => 'Хүннүң калория бюджеди';

  @override
  String get plan_water_budget_label => 'Хүннүң суг сорулгазы';

  @override
  String get plan_step_budget_label => 'Хүннүң базым сорулгазы';

  @override
  String get plan_macro_split_label => 'Макроэлементилерниң деңнели';

  @override
  String get profile_personal_details => 'Хууда медээлер';

  @override
  String get profile_body_stats => 'Бодунуң хемчээлдери';

  @override
  String get profile_app_preferences =>
      'Настройкалар болгаш приложениениң настройкалары';

  @override
  String get profile_edit_name_hint => 'Сээң адың';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Бедии ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Деңзи ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Назы-хар';

  @override
  String get profile_gender_male => 'Эр';

  @override
  String get profile_gender_female => 'Кыс';

  @override
  String get profile_gender_other => 'Өске / чугаалавас мен';

  @override
  String get profile_activity_sedentary => 'Олурар (эвээш азы шуут чок)';

  @override
  String get profile_activity_light => 'Чиик шимченгир (1-3 хонук/неделя)';

  @override
  String get profile_activity_moderate =>
      'Ортумак идепкейлиг (3-5 хонук/неделя)';

  @override
  String get profile_activity_very => 'Дыка идепкейлиг (6-7 хонук/неделя)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Калорияларны, сугларны болгаш базымнарны көөр дээш, Wear OS шагыңарга Bloomi плитказын болгаш нарыыдаашкынны тургузуп алыңар.';

  @override
  String get settings_widgets_header => 'Интерактивтиг Android виджеттер';

  @override
  String get settings_widgets_desc =>
      'Дүрген чаартылгалар дээш, херекселдиң эге экранынга шын үениң виджеттерин быжыглаңар.';

  @override
  String get settings_about_header => 'Блуми дугайында';

  @override
  String get settings_about_version => '1.0.0 деп хевири';

  @override
  String get settings_about_build => '100 кылыр';

  @override
  String get settings_about_credits =>
      'Сагыш-сеткилдиг, кадык амыдырал дээш кичээнгейлиг кылган.';

  @override
  String get settings_terms_header => 'Условиелер болгаш байдалдар';

  @override
  String get settings_privacy_header => 'Чажыт чоруктуң политиказы';

  @override
  String get settings_delete_header =>
      'Аккаунтту болгаш медээлерни өжүрүп кааптыңар';

  @override
  String get settings_delete_warning =>
      'Бо ажылды эгидип болбас. Силерниң шупту чемнериңер, тренировкаларыңар, чугула чүүлдериңер болгаш профилиңер кезээ мөңгеде өжүртүнүп каар.';

  @override
  String get settings_delete_confirm_btn => 'Доктаамал өжүрүп кааптар';

  @override
  String get onboard_welcome_headline => 'Блумиге уткуштур ✨';

  @override
  String get onboard_welcome_tagline =>
      'Силерниң амыдыралыңарга дүүштүр кылган чымчак, сагыш-сеткилдиг кадыкшылды хайгаараар.';

  @override
  String get onboard_step_about => 'Силерниң дугайыңарда';

  @override
  String get onboard_step_goals => 'Силерниң сорулгаларыңар';

  @override
  String get onboard_step_lifestyle => 'Хүн бүрүде чаңчылдар';

  @override
  String get onboard_step_permissions => 'Чөпшээрелдер';

  @override
  String get onboard_step_plan => 'Белен!';

  @override
  String get onboard_health_connect_perm => 'Кадыкшылдың харылзаазы';

  @override
  String get onboard_step_sensors_perm => 'Базым санаар датчиги';

  @override
  String get onboard_notif_perm => 'Угаанныг сагындырыглар болгаш дыңнадыглар';

  @override
  String get onboard_camera_perm => 'Камера (штрих-код болгаш аъш-чем сканери)';

  @override
  String get onboard_grant_permissions => 'Чөпшээрелдерни бээр';

  @override
  String get onboard_continue_dashboard => 'Панельди ажыдып алыңар';

  @override
  String get notif_channel_hydration_name => 'Гидратацияның деткимчези';

  @override
  String get notif_channel_hydration_desc =>
      'Хүн дургузунда чымчак суг сагындырыглары';

  @override
  String get notif_channel_nutrition_name =>
      'Аъш-чем болгаш чемненилге дугайында сагындырыглар';

  @override
  String get notif_channel_nutrition_desc =>
      'Эртенги, дүъш болгаш кежээки чем дугайында сагындырыглар';

  @override
  String get notif_channel_steps_name => 'Базымның эге чадалары';

  @override
  String get notif_channel_steps_desc =>
      'Хүннүң базым сорулгаларын чедип алырда байырлалдар';

  @override
  String get notif_channel_vitals_name => 'Кадыкшыл болгаш чугула хыналдалар';

  @override
  String get notif_channel_vitals_desc =>
      'Деңзи болгаш удуур бетинде сагындырыглар';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => 'Снуз 15м';

  @override
  String get notif_action_log_meal => '🥗 Ыяш чеми';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
