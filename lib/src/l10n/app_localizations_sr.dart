// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get app_name => 'Блооми';

  @override
  String get nav_home => 'Хоме';

  @override
  String get nav_today => 'данас';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Храна';

  @override
  String get nav_food_diary => 'Дневник хране';

  @override
  String get nav_workout => 'Дневник тренинга';

  @override
  String get nav_health => 'Здравље';

  @override
  String get nav_profile => 'Профил';

  @override
  String get save => 'Сачувај';

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
  String get next => 'Следеће';

  @override
  String get continue_btn => 'Настави';

  @override
  String get confirm => 'Потврди';

  @override
  String get search => 'Тражи';

  @override
  String get filter => 'Филтер';

  @override
  String get all => 'Све';

  @override
  String get active => 'Активан';

  @override
  String get today => 'данас';

  @override
  String get yesterday => 'Јучер';

  @override
  String get tomorrow => 'сутра';

  @override
  String get add => 'Додај';

  @override
  String get remove => 'Уклони';

  @override
  String get refresh => 'Освежи';

  @override
  String get retry => 'Покушајте поново';

  @override
  String get error => 'Грешка';

  @override
  String get success => 'Успех';

  @override
  String get loading => 'Учитавање...';

  @override
  String get no_data => 'Нема доступних података';

  @override
  String get offline => 'Оффлине Моде';

  @override
  String get offline_sub =>
      'Промене ће се синхронизовати када се поново повежете';

  @override
  String get undo => 'Поништи';

  @override
  String get portion => 'Порција';

  @override
  String get quantity => 'Количина';

  @override
  String get unit => 'Јединица';

  @override
  String get clear => 'Јасно';

  @override
  String get select => 'Изаберите';

  @override
  String get apply => 'Пријавите се';

  @override
  String get reset => 'Ресетуј';

  @override
  String get ok => 'ОК';

  @override
  String get yes => 'Да';

  @override
  String get no => 'бр';

  @override
  String get optional => 'Опционо';

  @override
  String get calories => 'Калорије';

  @override
  String get protein => 'Протеин';

  @override
  String get carbs => 'Царбс';

  @override
  String get fat => 'Фат';

  @override
  String get fiber => 'Влакна';

  @override
  String get water => 'Вода';

  @override
  String get steps => 'Степс';

  @override
  String get kcal => 'кцал';

  @override
  String get grams => 'г';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'лбс';

  @override
  String get centimeters => 'цм';

  @override
  String get inches => 'ин';

  @override
  String get bpm => 'бпм';

  @override
  String get hours => 'сати';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Сервинг';

  @override
  String get servings => 'Порције';

  @override
  String get serving_size => 'Величина сервирања';

  @override
  String get per_100g => 'по 100г';

  @override
  String get india => 'Индија';

  @override
  String get asia => 'Азија';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Блиски исток';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америке';

  @override
  String get home_title => 'Хоме';

  @override
  String get home_greeting_morning => 'Добро јутро';

  @override
  String get home_greeting_afternoon => 'Добар дан';

  @override
  String get home_greeting_evening => 'Добро вече';

  @override
  String get home_streak_title => 'Блоссом Стреак';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '__ПХ_0__ низ дана',
      one: '1 дан низ',
      zero: '0 дана низа',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Спаљена';

  @override
  String get home_calories_budget => 'Буџет калорија';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Преостало __ПХ_0__ кцал';
  }

  @override
  String get home_water_title => 'Дневна хидратација';

  @override
  String home_water_goal(Object current, Object target) {
    return '__ПХ_0__ / __ПХ_1__ мл';
  }

  @override
  String get home_steps_title => 'Степс Валкед';

  @override
  String get home_quick_actions => 'Брзе акције';

  @override
  String get home_log_meal => 'Лог Меал';

  @override
  String get home_log_water => 'Лог Ватер';

  @override
  String get home_log_workout => 'Лог Воркоут';

  @override
  String get home_log_weight => 'Тежина трупаца';

  @override
  String get home_insights_title => 'Данашњи увиди';

  @override
  String get home_quote =>
      'Мали здрави избори стварају цветајуће трансформације.';

  @override
  String get home_ai_coach_tip => 'Блооми АИ тренер';

  @override
  String get home_surroundings => 'Околина и ваздух';

  @override
  String get home_notifications => 'Обавештења';

  @override
  String get home_daily_score => 'Дневни Веллнесс Сцоре';

  @override
  String get home_view_all => 'Прикажи све';

  @override
  String get food_diary_title => 'Дневник хране';

  @override
  String get food_breakfast => 'Доручак';

  @override
  String get food_lunch => 'Ручак';

  @override
  String get food_dinner => 'Вечера';

  @override
  String get food_snacks => 'Грицкалице';

  @override
  String get food_add_food => 'Додај храну';

  @override
  String get food_edit_food => 'Уреди храну';

  @override
  String get food_add_breakfast => 'Додај доручак';

  @override
  String get food_add_lunch => 'Додај ручак';

  @override
  String get food_add_dinner => 'Додај вечеру';

  @override
  String get food_add_snack => 'Додајте ужину';

  @override
  String get food_total_calories => 'Укупне калорије';

  @override
  String get food_empty_meal =>
      'Још увек није евидентирана храна за овај оброк';

  @override
  String get food_empty_diary => 'Нема евидентираних оброка за овај дан';

  @override
  String get food_log_first_meal =>
      'Додирните + да бисте забележили свој први укусни оброк';

  @override
  String get food_quick_add => 'Брзо додавање';

  @override
  String get food_search_hint => 'Претражите јела, воће, дал, роти...';

  @override
  String get food_custom_recipe => 'Прилагођена храна и рецепт';

  @override
  String get food_scan_barcode => 'Скенирај бар код';

  @override
  String get food_camera_scan => 'АИ скенер хране';

  @override
  String get food_recent => 'Рецент Фоодс';

  @override
  String get food_favourites => 'Фаворитес';

  @override
  String get food_macro_summary => 'Мацронутриент Бреакдовн';

  @override
  String get food_delete_meal_confirm =>
      'Да ли сте сигурни да желите да уклоните ову ставку?';

  @override
  String get food_item_deleted => 'Храна је уклоњена';

  @override
  String get food_remaining => 'преосталих';

  @override
  String get food_consumed => 'конзумиран';

  @override
  String food_of_target(Object target) {
    return 'од __ПХ_0__ кцал';
  }

  @override
  String get foodSearch_title => 'Сеарцх Фоодс';

  @override
  String get foodSearch_scan_barcode => 'Скенирај бар код';

  @override
  String get foodSearch_take_photo => 'Снап Фоод Пхото';

  @override
  String get foodSearch_custom_food => 'Направите прилагођену храну';

  @override
  String get foodSearch_recent_searches => 'Недавне претраге';

  @override
  String get foodSearch_popular => 'Популарна јела';

  @override
  String get foodSearch_no_results => 'Нема хране која одговара вашој претрази';

  @override
  String get barcode_title => 'Барцоде Сцаннер';

  @override
  String get barcode_align => 'Поравнајте бар код унутар оквира камере';

  @override
  String get barcode_not_found => 'Производ није пронађен у бази података';

  @override
  String get barcode_premium_feature =>
      'Скенирање бар кодова је доступно уз Блооми Про';

  @override
  String get camera_title => 'АИ скенер хране';

  @override
  String get camera_tap_hint => 'Снимите јасну фотографију свог јела';

  @override
  String get camera_analysing => 'Анализирање тањира за храну...';

  @override
  String get camera_detected => 'Откривене ставке';

  @override
  String get camera_flash => 'Укључите Фласх';

  @override
  String get camera_retake => 'Поново снимите фотографију';

  @override
  String get camera_confirm_food => 'Потврдите ставке';

  @override
  String get customFood_title => 'Прилагођена храна и рецепт';

  @override
  String get customFood_name_hint => 'Назив јела или састојка';

  @override
  String get customFood_calories_hint => 'Калорије (кцал)';

  @override
  String get customFood_protein_hint => 'Протеини (г)';

  @override
  String get customFood_carbs_hint => 'угљени хидрати (г)';

  @override
  String get customFood_fat_hint => 'маст (г)';

  @override
  String get customFood_save => 'Сачувај рецепт';

  @override
  String get water_tracker_title => 'Ватер Трацкер';

  @override
  String get water_daily_target => 'Дневни циљ хидратације';

  @override
  String get water_logged_today => 'Логгед Тодаи';

  @override
  String get water_add_glass => '+250 мл Стакло';

  @override
  String get water_add_bottle => '+500 мл Боца';

  @override
  String get water_custom_amount => 'Прилагођени износ';

  @override
  String get water_reminder_tip =>
      'Пијте воду редовно током дана за стабилну енергију.';

  @override
  String water_logged_toast(Object amount) {
    return 'Забележено __ПХ_0__ мл воде 💧';
  }

  @override
  String get workout_title => 'Дневник тренинга';

  @override
  String get workout_add_exercise => 'Додајте тренинг';

  @override
  String get workout_cardio => 'Цардио';

  @override
  String get workout_strength => 'Снага';

  @override
  String get workout_yoga => 'Јога и флексибилност';

  @override
  String get workout_duration => 'Трајање';

  @override
  String get workout_intensity => 'Интензитет';

  @override
  String get workout_calories_burned => 'Сагореле калорије';

  @override
  String get workout_empty => 'Данас није забележен ниједан тренинг';

  @override
  String get workout_save_success => 'Вежбање је успешно сачувано!';

  @override
  String get workout_type => 'Воркоут Типе';

  @override
  String get workout_notes => 'Нотес & Рефлецтионс';

  @override
  String get health_overview_title => 'Здравље и витални елементи';

  @override
  String get health_heart_rate => 'Откуцаји срца';

  @override
  String get health_blood_oxygen => 'Кисеоник у крви (СпО2)';

  @override
  String get health_blood_pressure => 'Крвни притисак';

  @override
  String get health_blood_glucose => 'Глукоза у крви';

  @override
  String get health_body_temperature => 'Температура тела';

  @override
  String get health_sleep_tracking => 'Праћење спавања';

  @override
  String get health_weight_tracking => 'Тежина и састав тела';

  @override
  String get health_waist_hip => 'Однос струка и бокова';

  @override
  String get health_devices_hub => 'Уређаји и чвориште за паметне сатове';

  @override
  String get health_sync_now => 'Синхронизујте здравствене податке';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Последња синхронизација: __ПХ_0__';
  }

  @override
  String get health_manual_entry => 'Ручни унос здравља';

  @override
  String get health_metric_detail => 'Метриц Детаилс';

  @override
  String get health_connected_sensors => 'Повезани здравствени сензори';

  @override
  String get plan_title => 'Дневни план';

  @override
  String get plan_weekly_title => 'Недељни веллнесс план';

  @override
  String get plan_calorie_target => 'Цалорие Таргет';

  @override
  String get plan_water_target => 'Циљ хидратације';

  @override
  String get plan_step_target => 'Степ Таргет';

  @override
  String get plan_sleep_target => 'Слееп Таргет';

  @override
  String get plan_meal_suggestions => 'Предлози за оброк';

  @override
  String get plan_healthy_habits => 'Здраве навике и савети';

  @override
  String get plan_coach_advice => 'Препоруке тренера Блооми АИ';

  @override
  String get plan_generated_title => 'Персонализовани дневни распоред';

  @override
  String get profile_title => 'Профил';

  @override
  String get profile_edit => 'Уреди профил';

  @override
  String get profile_name => 'Име';

  @override
  String get profile_age => 'Старост';

  @override
  String get profile_gender => 'Пол';

  @override
  String get profile_height => 'Висина';

  @override
  String get profile_weight => 'Тежина';

  @override
  String get profile_goal => 'Примарни циљ';

  @override
  String get profile_activity_level => 'Ниво активности';

  @override
  String get profile_stats => 'Ми Веллнесс Статс';

  @override
  String get profile_saved => 'Профил је успешно ажуриран';

  @override
  String get profile_bmi => 'Индекс телесне масе (БМИ)';

  @override
  String get profile_membership => 'Чланство';

  @override
  String get settings => 'Подешавања';

  @override
  String get preferences_habits => 'ПРЕФЕРЕНЦИЈЕ И НАВИКЕ';

  @override
  String get appearance_theme => 'Изглед и тема';

  @override
  String get appearance_theme_sub =>
      'Тамно, Светло, Системски режим и Опције позадине апликације';

  @override
  String get permissions => 'Дозволе и приступ систему';

  @override
  String get permissions_sub =>
      'Хеалтх Цоннецт, сензори корака, ГПС, обавештења и камера';

  @override
  String get reminders_notifications => 'Подсетници и обавештења';

  @override
  String get reminders_sub =>
      'Време оброка, вода, провера тежине и подсетници за спавање';

  @override
  String get units_of_measurement => 'Јединице мере';

  @override
  String get units_sub =>
      'Метрички (кг, цм, мл, км) или империјални (лбс, фт/ин, фл оз)';

  @override
  String get app_language => 'Језик апликације';

  @override
  String get language_sub =>
      'енглески, हिनदी (хинди), хинглиш и 195+ глобалних језика';

  @override
  String get home_screen_widgets => 'Виџети за почетни екран';

  @override
  String get widgets_sub =>
      'Андроид виџети уживо: Хуб, Степс, Ватер, Нутритион & Масцот';

  @override
  String get wear_os_watch_app => 'Апликација Веар ОС Ватцх';

  @override
  String get wear_os_sub =>
      'Пратилац за паметни сат, плочице, компликације и витални подаци';

  @override
  String get goals_wellness => 'ЦИЉЕВИ И ВЕЛЛНЕСС УВИДИ';

  @override
  String get nutrition_targets => 'Нутритион Таргетс & Мацро Сплит';

  @override
  String get nutrition_targets_sub =>
      'Циљ калорија, протеина, угљених хидрата, масти и воде';

  @override
  String get weekly_recap => 'Недељни преглед здравља';

  @override
  String get weekly_recap_sub =>
      'Просек калорија за 7 дана, макро однос и најбољи дан';

  @override
  String get streaks_milestones => 'Низови и прекретнице';

  @override
  String get streaks_sub => 'Активни цветни низови, значке и достигнућа';

  @override
  String get connected_devices => 'ПОВЕЗАНИ УРЕЂАЈИ И ЕКОСИСТЕМ';

  @override
  String get devices_hub => 'Уређаји и чвориште за паметне сатове';

  @override
  String get devices_hub_sub =>
      'Хеалтх Цоннецт, Галаки Ватцх, Пикел Ватцх, Гармин';

  @override
  String get surroundings_weather => 'Околина & Време';

  @override
  String get surroundings_sub =>
      'Квалитет ваздуха (АКИ), УВ индекс и савети за временску хидратацију';

  @override
  String get bloomi_pro => 'Блооми Про претплата';

  @override
  String get bloomi_pro_sub =>
      'АИ План Цоацх, 5 виџета за почетни екран и праћење виталних функција';

  @override
  String get about_security => 'О И БЕЗБЕДНОСТИ';

  @override
  String get about_bloomi => 'О Блуми';

  @override
  String get about_bloomi_sub => 'Спецификације израде, верзија, атрибуције';

  @override
  String get privacy_policy => 'Политика приватности';

  @override
  String get privacy_policy_sub =>
      'Архитектура података на уређају, прва ван мреже';

  @override
  String get terms_conditions => 'Услови и одредбе';

  @override
  String get terms_conditions_sub =>
      'Услови коришћења услуге и смернице за добробит';

  @override
  String get delete_account => 'Избришите налог и податке';

  @override
  String get delete_account_sub =>
      'Неповратно обришите локалне СКЛите податке и резервне копије у облаку';

  @override
  String get healthy_habits => 'Изградите нежне, трајне навике за здравље';

  @override
  String get all_logs => 'Моји праћени подаци и евиденције';

  @override
  String get search_language => 'Претрага по језику или матерњем писму...';

  @override
  String get languages_available => 'Доступни језици';

  @override
  String get no_matching_languages =>
      'Није пронађен ниједан одговарајући језик';

  @override
  String get try_searching =>
      'Покушајте да претражујете по изворном писму или енглеском правопису';

  @override
  String get partially_translated => 'Делимично преведено';

  @override
  String get complete_translation => 'Завршено';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Језик је подешен на __ПХ_0__ ( __ПХ_1__)';
  }

  @override
  String get surroundings_title => 'Околина и животна средина';

  @override
  String get surroundings_aqi => 'Индекс квалитета ваздуха';

  @override
  String get surroundings_uv => 'УВ индекс';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Влажност';

  @override
  String get surroundings_hydration_advice =>
      'Останите добро хидрирани у тренутним временским условима.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Сеарцх Фоод';

  @override
  String get food_quick_barcode => 'Скенирајте бар код 👑';

  @override
  String get food_quick_water => 'Додајте воду';

  @override
  String get food_quick_custom => 'Цустом Фоод';

  @override
  String get surroundings_good => 'Добро';

  @override
  String get surroundings_moderate => 'Умерено';

  @override
  String get surroundings_unhealthy => 'Нездраво';

  @override
  String get notifications_title => 'Обавештења и упозорења';

  @override
  String get notifications_empty => 'Нема нових обавештења';

  @override
  String get notifications_mark_read => 'Означи све као прочитано';

  @override
  String get notifications_clear => 'Обриши све';

  @override
  String get reminders => 'Подешавања подсетника';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Подсетник за доручак 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Добро јутро! Време је за хранљив доручак у __ПХ_0__.';
  }

  @override
  String get reminders_lunch_title => 'Подсетник за ручак 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Паузирајте и уживајте у уравнотеженом ручку са пажњом у __ПХ_0__.';
  }

  @override
  String get reminders_dinner_title => 'Подсетник на вечеру 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Време је за лагану, задовољавајућу вечеру у __ПХ_0__.';
  }

  @override
  String get reminders_water_title => 'Хидратион Нудге 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Време је да попијете чашу свеже воде! ( __ПХ_0__ )';
  }

  @override
  String get reminders_weight_title => 'Недељно вагање ⚖';

  @override
  String reminders_weight_body(Object time) {
    return 'Пратите недељне показатеље тела на Блооми ( __ПХ_0__ ).';
  }

  @override
  String get reminders_sleep_title => 'Одмарање пре спавања 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Опустите се и припремите се за миран сан ( __ПХ_0__ ).';
  }

  @override
  String get onboard_welcome => 'Добродошли у Блооми';

  @override
  String get onboard_sub =>
      'Ваш пријатељски, ван мреже први сапутник за здравље и исхрану.';

  @override
  String get onboard_get_started => 'Започните';

  @override
  String get onboard_sign_in => 'Пријавите се';

  @override
  String get onboard_skip => 'Скип';

  @override
  String get onboard_choose_goal => 'Који је ваш примарни веллнесс циљ?';

  @override
  String get onboard_goal_weight_loss => 'Нежан губитак тежине';

  @override
  String get onboard_goal_muscle => 'Добитак мишића и снага';

  @override
  String get onboard_goal_energy => 'Дневна енергија и виталност';

  @override
  String get onboard_goal_habits => 'Здрава свесна исхрана';

  @override
  String get onboard_about_you => 'Реците нам нешто о себи';

  @override
  String get onboard_lifestyle => 'Ваша дневна рутина';

  @override
  String get onboard_permissions_title => 'Дозволе и приступ систему';

  @override
  String get onboard_permissions_sub =>
      'Одобрите приступ корацима синхронизације, вежбама и подсетницима.';

  @override
  String get onboard_plan_ready_title => 'Ваш прилагођени план је спреман!';

  @override
  String get onboard_plan_ready_sub =>
      'Направили смо нежан, персонализован план за исхрану и добробит само за вас.';

  @override
  String get onboard_enter_bloomi => 'Улази Блооми';

  @override
  String get insights_weekly_report => 'Недељни преглед здравља';

  @override
  String insights_best_day(Object day) {
    return 'Најбољи дан конзистентности: __ПХ_0__';
  }

  @override
  String get insights_streaks_badges => 'Низови и прекретнице';

  @override
  String insights_unlocked_on(Object date) {
    return 'Откључано __ПХ_0__';
  }

  @override
  String get insights_keep_going => 'Наставите са фантастичним напретком!';

  @override
  String get widgets_title => 'Виџети за почетни екран';

  @override
  String widgets_active_count(Object count) {
    return 'Активни виџети: __ПХ_0__';
  }

  @override
  String get widgets_hub_title => 'Блооми Веллнесс Хуб';

  @override
  String get widgets_steps_title => 'Степенице и активни прстен';

  @override
  String get widgets_water_title => 'Брзи дневник хидратације';

  @override
  String get widgets_mascot_title => 'Блооми Масцот Цомпанион';

  @override
  String get wear_os_title => 'Носите ОС Смартватцх';

  @override
  String get wear_os_connected => 'Повезано са Ватцх';

  @override
  String get wear_os_sync => 'Синхронизујте податке о гледању';

  @override
  String get theme_title => 'Изглед и тема';

  @override
  String get theme_mode => 'Тхеме Моде';

  @override
  String get theme_light => 'Светлост';

  @override
  String get theme_dark => 'Дарк';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Палета позадине';

  @override
  String get units_title => 'Јединице мере';

  @override
  String get units_metric => 'Метрички (кг, цм, мл)';

  @override
  String get units_imperial => 'Империјал (лбс, ин, фл оз)';

  @override
  String get home_unable_load => 'Није могуће учитати контролну таблу';

  @override
  String get home_health_permission_req =>
      'Потребна је дозвола за Хеалтх Цоннецт';

  @override
  String get home_health_permission_desc =>
      'Блооми-у је потребна дозвола Хеалтх Цоннецт да би направио стварне кораке, откуцаје срца и синхронизовао виџете мобилне куће у реалном времену.';

  @override
  String get home_allow_health => 'Дозволите Хеалтх Цоннецт';

  @override
  String get home_ready_mindful_day => 'Спремни за дан са пажњом? ✨';

  @override
  String get home_quick_add => 'Брзо додавање';

  @override
  String get home_live_gps => 'ГПС уживо';

  @override
  String get home_calories_remaining_label => 'ПРЕОСТАЛЕ КАЛОРИЈЕ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Поједено: __ПХ_0__ / __ПХ_1__ кцал';
  }

  @override
  String get home_tap_water_tracker => 'Тап фор Ватер Трацкер 💧';

  @override
  String get home_water_goal_reached => 'Дневни циљ је постигнут 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '__ПХ_0__ мл до дневног циља';
  }

  @override
  String get home_details => 'Детаљи';

  @override
  String get home_upgrade_plan_desc =>
      'Надоградите да бисте откључали персонализоване дневне циљеве и АИ план';

  @override
  String get home_unlock => 'Откључај 👑';

  @override
  String get home_quick_log_hint => 'Брзо снимите унос у веллнесс';

  @override
  String get food_serving_size => 'Величина сервирања';

  @override
  String get food_serving_grams => 'Послуживање (г)';

  @override
  String get food_number_servings => 'Број порција';

  @override
  String get food_calories_per_serving => 'Калорије по порцији';

  @override
  String get food_recipe_ingredients => 'Састојци';

  @override
  String get food_recipe_add_ingredient => 'Додајте састојак';

  @override
  String get food_recipe_directions => 'Упутства и напомене';

  @override
  String get food_recipe_total => 'Тотал Реципе Нутритион';

  @override
  String get food_recipe_per_serving => 'Исхрана по порцији';

  @override
  String get food_recipe_saved_toast =>
      'Прилагођена храна је успешно сачувана!';

  @override
  String get food_barcode_found => 'Пронађен производ!';

  @override
  String get food_barcode_not_found_desc =>
      'Нисмо могли да пронађемо овај бар код у отвореној бази података. Можете га додати као прилагођену храну.';

  @override
  String get food_add_custom_btn => 'Додајте прилагођену храну';

  @override
  String get food_scan_again => 'Сцан Агаин';

  @override
  String get food_review_items => 'Прегледајте откривену храну';

  @override
  String get food_review_hint =>
      'Прилагодите количине или уклоните све непрепознате артикле';

  @override
  String get food_log_selected => 'Запишите одабрану храну';

  @override
  String get food_favourites_title => 'Фаворите Фоодс';

  @override
  String get food_recent_title => 'Рецент Фоодс';

  @override
  String get food_no_favourites =>
      'Још нема омиљене хране. Куцните срцем на било коју храну да бисте сачували овде.';

  @override
  String get food_no_recents => 'Није пронађена недавно регистрована храна.';

  @override
  String get food_nutrition_details_title => 'Дневни детаљи о исхрани';

  @override
  String get food_macro_protein_label => 'Протеин Бреакдовн';

  @override
  String get food_macro_carbs_label => 'Царбс Бреакдовн';

  @override
  String get food_macro_fat_label => 'Фат Бреакдовн';

  @override
  String get food_macro_fiber_label => 'Фибер Бреакдовн';

  @override
  String get food_daily_target_comparison => 'Поређење циља';

  @override
  String food_target_label(Object target) {
    return 'Циљ: __ПХ_0__';
  }

  @override
  String get food_edit_entry => 'Уреди унос у дневник';

  @override
  String get food_delete_entry => 'Избриши унос';

  @override
  String food_grams_short(Object grams) {
    return '__ПХ_0__ г';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '__ПХ_0__ кцал';
  }

  @override
  String water_progress(Object current, Object target) {
    return '__ПХ_0__ од __ПХ_1__ мл';
  }

  @override
  String get water_intake_history => 'Данашњи дневници';

  @override
  String get water_no_logs_today =>
      'Данас још нема воде. Хидрирајте и додирните дугме за брзо додавање!';

  @override
  String get water_adjust_goal => 'Прилагодите дневни циљ';

  @override
  String get health_connect_banner => 'Повезано са Хеалтх Цоннецт-ом';

  @override
  String get health_vitals_summary => 'Дневне виталне вредности здравља';

  @override
  String get health_latest_heart_rate => 'Најновији пулс';

  @override
  String get health_latest_bp => 'Крвни притисак';

  @override
  String get health_latest_spo2 => 'Крвни кисеоник';

  @override
  String get health_latest_glucose => 'Глукоза у крви';

  @override
  String get health_latest_weight => 'Тежина';

  @override
  String get health_latest_sleep => 'Трајање спавања';

  @override
  String get health_add_manual => 'Додајте ручно мерење';

  @override
  String get health_history_trends => 'Хисторицал Трендс';

  @override
  String get health_sync_success =>
      'Здравствени подаци су успешно синхронизовани!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '__ПХ_0__ сати __ПХ_1__ мин';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '__ПХ_0__ кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '__ПХ_0__ бпм';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '__ПХ_0__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '__ПХ_0__ / __ПХ_1__ ммХг';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '__ПХ_0__ мг/дЛ';
  }

  @override
  String get health_devices_title => 'Повезани уређаји и носиви уређаји';

  @override
  String get health_devices_desc =>
      'Управљајте упареним паметним сатовима, фитнес трацкерима и здравственим сензорима.';

  @override
  String get health_workout_editor_title => 'Уреди тренинг';

  @override
  String get health_workout_name_label => 'Назив тренинга';

  @override
  String get health_workout_duration_label => 'Трајање (минути)';

  @override
  String get health_workout_calories_label => 'Процењене калорије (кцал)';

  @override
  String get health_workout_date_label => 'Датум и време';

  @override
  String get plan_daily_wellness_roadmap => 'Ваш персонализовани путоказ';

  @override
  String get plan_morning_routine => 'Јутарња рутина';

  @override
  String get plan_afternoon_routine => 'Миддаи Веллнесс';

  @override
  String get plan_evening_routine => 'Евенинг Винд-Довн';

  @override
  String get plan_coach_badge => 'Блооми АИ тренер';

  @override
  String get plan_weekly_overview => '7-дневни веллнесс фокус';

  @override
  String get plan_targets_title => 'Веллнесс циљеви и циљеви';

  @override
  String get plan_calorie_budget_label => 'Дневни буџет калорија';

  @override
  String get plan_water_budget_label => 'Дневни циљ за воду';

  @override
  String get plan_step_budget_label => 'Дневни циљ корака';

  @override
  String get plan_macro_split_label => 'Однос макронутријената';

  @override
  String get profile_personal_details => 'Лични подаци';

  @override
  String get profile_body_stats => 'Боди Меасурементс';

  @override
  String get profile_app_preferences => 'Подешавања и подешавања апликације';

  @override
  String get profile_edit_name_hint => 'Твоје име';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Висина ( __ПХ_0__ )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Тежина ( __ПХ_0__ )';
  }

  @override
  String get profile_edit_age_hint => 'Старост';

  @override
  String get profile_gender_male => 'Мушко';

  @override
  String get profile_gender_female => 'Фемале';

  @override
  String get profile_gender_other => 'Друго / Радије не кажем';

  @override
  String get profile_activity_sedentary =>
      'Седентарни (мало или нимало вежбања)';

  @override
  String get profile_activity_light => 'Лагано активан (1-3 дана недељно)';

  @override
  String get profile_activity_moderate => 'Умерено активан (3-5 дана недељно)';

  @override
  String get profile_activity_very => 'Веома активан (6-7 дана недељно)';

  @override
  String get settings_wear_os_header => 'Апликација Веар ОС Цомпанион';

  @override
  String get settings_wear_os_desc =>
      'Инсталирајте Блооми плочицу и компликацију на свој Веар ОС сат да бисте погледали калорије, воду и кораке.';

  @override
  String get settings_widgets_header => 'Интерактивни Андроид виџети';

  @override
  String get settings_widgets_desc =>
      'Закачите виџете у реалном времену на почетни екран уређаја за тренутна ажурирања.';

  @override
  String get settings_about_header => 'О Блуми';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Буилд 100';

  @override
  String get settings_about_credits =>
      'Направљен са пажњом за пажљив, здрав живот.';

  @override
  String get settings_terms_header => 'Услови и одредбе';

  @override
  String get settings_privacy_header => 'Политика приватности';

  @override
  String get settings_delete_header => 'Избришите налог и податке';

  @override
  String get settings_delete_warning =>
      'Ова радња се не може опозвати. Сви ваши оброци, вежбе, витални показатељи и профил ће бити трајно избрисани.';

  @override
  String get settings_delete_confirm_btn => 'Трајно избрисати';

  @override
  String get onboard_welcome_headline => 'Добродошли у Блооми ✨';

  @override
  String get onboard_welcome_tagline =>
      'Нежно, пажљиво праћење здравља дизајнирано око вашег живота.';

  @override
  String get onboard_step_about => 'О теби';

  @override
  String get onboard_step_goals => 'Ваши циљеви';

  @override
  String get onboard_step_lifestyle => 'Даили Хабитс';

  @override
  String get onboard_step_permissions => 'Дозволе';

  @override
  String get onboard_step_plan => 'Спремни!';

  @override
  String get onboard_health_connect_perm => 'Хеалтх Цоннецт приступ';

  @override
  String get onboard_step_sensors_perm => 'Сензор бројача корака';

  @override
  String get onboard_notif_perm => 'Пажљиви подсетници и обавештења';

  @override
  String get onboard_camera_perm => 'Камера (бар код и скенер хране)';

  @override
  String get onboard_grant_permissions => 'Дајте дозволе';

  @override
  String get onboard_continue_dashboard => 'Отворите контролну таблу';

  @override
  String get notif_channel_hydration_name => 'Хидратион Нудгес';

  @override
  String get notif_channel_hydration_desc =>
      'Нежни подсетници на воду током целог дана';

  @override
  String get notif_channel_nutrition_name => 'Подсетници на оброке и исхрану';

  @override
  String get notif_channel_nutrition_desc =>
      'Обавештења о подсетницима за доручак, ручак и вечеру';

  @override
  String get notif_channel_steps_name => 'Степ Милестонес';

  @override
  String get notif_channel_steps_desc =>
      'Славље приликом достизања дневних циљева корака';

  @override
  String get notif_channel_vitals_name => 'Здравствене и виталне провере';

  @override
  String get notif_channel_vitals_desc =>
      'Подсетници на тежину и време за спавање';

  @override
  String get notif_action_log_water => '💧 Дневник +250мл';

  @override
  String get notif_action_snooze => 'Одложи 15м';

  @override
  String get notif_action_log_meal => '🥗 Дневни оброк';

  @override
  String get language => 'Језик';

  @override
  String get share => 'Схаре';

  @override
  String common_days(Object count) {
    return 'пре __ПХ_0__ д';
  }
}
