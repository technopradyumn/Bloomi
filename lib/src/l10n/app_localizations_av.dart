// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Avaric (`av`).
class AppLocalizationsAv extends AppLocalizations {
  AppLocalizationsAv([String locale = 'av']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Рокъоб';

  @override
  String get nav_today => 'Жакъа .';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Квен .';

  @override
  String get nav_food_diary => 'Кванил дневник';

  @override
  String get nav_workout => 'Тренировкабазул журнал';

  @override
  String get nav_health => 'Сахлъи';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Хвасар гьабе';

  @override
  String get cancel => 'Нахъе бахъизе';

  @override
  String get delete => 'Удалить';

  @override
  String get edit => 'Редактировать';

  @override
  String get done => 'ЛъугӀана';

  @override
  String get close => 'Къазе';

  @override
  String get back => 'Нахъе';

  @override
  String get next => 'Хадуб';

  @override
  String get continue_btn => 'Халат бахъинабизе';

  @override
  String get confirm => 'Тадсикъ гьабе';

  @override
  String get search => 'ЦӀех-рех гьабе';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Киналго';

  @override
  String get active => 'Жигараб';

  @override
  String get today => 'Жакъа .';

  @override
  String get yesterday => 'Нолъ';

  @override
  String get tomorrow => 'Метер .';

  @override
  String get add => 'ТӀаде жубай';

  @override
  String get remove => 'Рахъе';

  @override
  String get refresh => 'ЦӀигьабизе';

  @override
  String get retry => 'ЦӀидасан хӀалбихье';

  @override
  String get error => 'ГӀалатӀ';

  @override
  String get success => 'Икъбал';

  @override
  String get loading => 'Загрузка...';

  @override
  String get no_data => 'Цониги баян гьечӀо';

  @override
  String get offline => 'Офлайн режим';

  @override
  String get offline_sub =>
      'Хис-басал синхронизация гьабизе руго цӀидасан бухьараб мехалъ';

  @override
  String get undo => 'Нахъе буссинабизе';

  @override
  String get portion => 'Порция';

  @override
  String get quantity => 'Къадар';

  @override
  String get unit => 'Блок';

  @override
  String get clear => 'БацӀцӀад гьабе';

  @override
  String get select => 'ТӀаса бище .';

  @override
  String get apply => 'ХӀалтӀизабе';

  @override
  String get reset => 'Сброс';

  @override
  String get ok => 'ЛъикӀ';

  @override
  String get yes => 'Гьа';

  @override
  String get no => 'ГьечӀо';

  @override
  String get optional => 'Необязательно';

  @override
  String get calories => 'Калориял';

  @override
  String get protein => 'Белок';

  @override
  String get carbs => 'Углеводал';

  @override
  String get fat => 'Жир';

  @override
  String get fiber => 'Клетчатка';

  @override
  String get water => 'Лъим .';

  @override
  String get steps => 'Гали';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'г';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунтал';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'соналъ';

  @override
  String get bpm => 'бпм';

  @override
  String get hours => 'сагӀат';

  @override
  String get minutes => 'минут';

  @override
  String get serving => 'Хъулухъ гьаби';

  @override
  String get servings => 'Порциял';

  @override
  String get serving_size => 'Порциялъул къадар';

  @override
  String get per_100g => '100гр';

  @override
  String get india => 'Индия';

  @override
  String get asia => 'Азия';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'ГӀагараб Машрикъ';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Рокъоб';

  @override
  String get home_greeting_morning => 'Радал лъикӀ';

  @override
  String get home_greeting_afternoon => 'ЛъикӀаб къаси';

  @override
  String get home_greeting_evening => 'Къаси лъикӀ';

  @override
  String get home_streak_title => 'ТӀегьалъул гьумер';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count къоязул кьер',
      one: '1 къоялъул кьер',
      zero: '0 къоялъул кьер',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'БухӀана';

  @override
  String get home_calories_budget => 'Калориязул бюджет';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал хутӀараб';
  }

  @override
  String get home_water_title => 'Щибаб къоялъ лъим кьей';

  @override
  String home_water_goal(Object current, Object target) {
    return '__РН_0__ / __РН_1__ мл';
  }

  @override
  String get home_steps_title => 'Гали ана';

  @override
  String get home_quick_actions => 'Хехал ишал';

  @override
  String get home_log_meal => 'Логалъул квен';

  @override
  String get home_log_water => 'Логалъул лъим';

  @override
  String get home_log_workout => 'Журналалъул тренировка';

  @override
  String get home_log_weight => 'Лог къинлъи';

  @override
  String get home_insights_title => 'Жакъасел бичӀчӀиял';

  @override
  String get home_quote =>
      'ГьитӀинал сахлъиялъе пайдаял тӀасабищияз гӀуцӀула тӀегьалел трансформациял.';

  @override
  String get home_ai_coach_tip => 'Блуми АИ тренер';

  @override
  String get home_surroundings => 'Сверухълъи ва гьава';

  @override
  String get home_notifications => 'Уведомления';

  @override
  String get home_daily_score => 'Щибаб къоялъ сахлъиялъул балл';

  @override
  String get home_view_all => 'Кинабго бихьизе';

  @override
  String get food_diary_title => 'Кванил дневник';

  @override
  String get food_breakfast => 'Къаси квен';

  @override
  String get food_lunch => 'Къаде квен';

  @override
  String get food_dinner => 'Къаси квен .';

  @override
  String get food_snacks => 'Закуски';

  @override
  String get food_add_food => 'Квен тӀаде жуба';

  @override
  String get food_edit_food => 'Квен хисизабизе';

  @override
  String get food_add_breakfast => 'Завтрак тӀаде жуба';

  @override
  String get food_add_lunch => 'Къаде квен тӀаде жуба';

  @override
  String get food_add_dinner => 'Къаси квен тӀаде жуба';

  @override
  String get food_add_snack => 'Закуска тӀаде жубазе';

  @override
  String get food_total_calories => 'ГӀаммаб къадаралъул калориял';

  @override
  String get food_empty_meal => 'Гьаб кваназе жеги квен хъван гьечӀо';

  @override
  String get food_empty_diary => 'Гьаб къоялъ квен хъван гьечӀо';

  @override
  String get food_log_first_meal =>
      'Нажмите + для записи вашего первого вкусного еды';

  @override
  String get food_quick_add => 'Хехаб тӀаде жубай';

  @override
  String get food_search_hint => 'Поиск блюд, фруктов, дал, роти...';

  @override
  String get food_custom_recipe => 'Квен ва рецепт';

  @override
  String get food_scan_barcode => 'Сканировать штрих-код';

  @override
  String get food_camera_scan => 'АИ кванил нигӀматазул сканер';

  @override
  String get food_recent => 'Ахирал кванил нигӀматал';

  @override
  String get food_favourites => 'Бокьулел';

  @override
  String get food_macro_summary => 'Макроэлементазул биххи';

  @override
  String get food_delete_meal_confirm =>
      'Дуе ракӀчӀунищ гьаб бутӀа бахъизе бокьун бугеб?';

  @override
  String get food_item_deleted => 'Кванил нигӀмат нахъе бахъана';

  @override
  String get food_remaining => 'хутӀараб;';

  @override
  String get food_consumed => 'хӀалтӀизабун';

  @override
  String food_of_target(Object target) {
    return '__РН_0__ ккал';
  }

  @override
  String get foodSearch_title => 'Кванил нигӀматал ралагье';

  @override
  String get foodSearch_scan_barcode => 'Сканировать штрих-код';

  @override
  String get foodSearch_take_photo => 'Кванил сурат бахъе';

  @override
  String get foodSearch_custom_food => 'ГӀуцӀе махщелчагӀазул квен';

  @override
  String get foodSearch_recent_searches => 'Ахирал цӀех-рехал';

  @override
  String get foodSearch_popular => 'Халкъалда гьоркьоб машгьурал квенал';

  @override
  String get foodSearch_no_results =>
      'Дур цӀех-рехалда данде кколеб квен гьечӀо';

  @override
  String get barcode_title => 'Штрих-кодалъул сканер';

  @override
  String get barcode_align => 'Камераялъул рамкаялда жаниб штрих-код битӀизабе';

  @override
  String get barcode_not_found => 'Товар не найден в базе данных';

  @override
  String get barcode_premium_feature =>
      'Штрих-кодалъул сканирование гьабизе бегьула Bloomi Pro .';

  @override
  String get camera_title => 'АИ кванил нигӀматазул сканер';

  @override
  String get camera_tap_hint => 'Дурго квеналъул якъинго сурат бахъе';

  @override
  String get camera_analysing => 'Кванил тарелкаялъул анализ гьаби...';

  @override
  String get camera_detected => 'ТӀатинарурал жал';

  @override
  String get camera_flash => 'Вспышка буссинабизе';

  @override
  String get camera_retake => 'Сурат цӀидасан бахъе';

  @override
  String get camera_confirm_food => 'Элементал тасдикъ гьаре';

  @override
  String get customFood_title => 'Квен ва рецепт';

  @override
  String get customFood_name_hint => 'ТӀагӀелалъул яги ингредиенталъул цӀар';

  @override
  String get customFood_calories_hint => 'Калориял (ккал)';

  @override
  String get customFood_protein_hint => 'Белок (г)';

  @override
  String get customFood_carbs_hint => 'Углеводал (г)';

  @override
  String get customFood_fat_hint => 'Жир (г)';

  @override
  String get customFood_save => 'Рецепт хвасар гьабе';

  @override
  String get water_tracker_title => 'Лъим лъалкӀ';

  @override
  String get water_daily_target => 'Щибаб къоялъ лъим кьолеб мурад';

  @override
  String get water_logged_today => 'Жакъа лъугьана';

  @override
  String get water_add_glass => '+250 мл Стекло';

  @override
  String get water_add_bottle => '+500 мл Бутылка';

  @override
  String get water_custom_amount => 'Заказалъулаб къадар';

  @override
  String get water_reminder_tip =>
      'Къоялъго гьоркьоса къотӀичӀого гьекъезе ккола лъим, стабильный энергия букӀине.';

  @override
  String water_logged_toast(Object amount) {
    return 'Записан $amount мл воды 💧 .';
  }

  @override
  String get workout_title => 'Тренировкабазул журнал';

  @override
  String get workout_add_exercise => 'Добавить тренировка';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Къуват';

  @override
  String get workout_yoga => 'Йога ва гибкость';

  @override
  String get workout_duration => 'Халалъиги';

  @override
  String get workout_intensity => 'ХӀалуцин';

  @override
  String get workout_calories_burned => 'Калориял рухӀана';

  @override
  String get workout_empty => 'Жакъа тренировкаби хъван гьечӀо';

  @override
  String get workout_save_success =>
      'Тренировка хвасар гьабуна бергьенлъиялда!';

  @override
  String get workout_type => 'Тренировкаялъул тайпа';

  @override
  String get workout_notes => 'Заметки и размышления';

  @override
  String get health_overview_title => 'Сахлъи ва хӀажатаб жо';

  @override
  String get health_heart_rate => 'РекӀел хьвади';

  @override
  String get health_blood_oxygen => 'Бидул кислород (SpO2)';

  @override
  String get health_blood_pressure => 'Бидул тӀадецуй';

  @override
  String get health_blood_glucose => 'Бидул глюкоза';

  @override
  String get health_body_temperature => 'Черхалъул температура';

  @override
  String get health_sleep_tracking => 'Макьуялъул хадув гъей';

  @override
  String get health_weight_tracking => 'ЦӀайи ва черхалъул состав';

  @override
  String get health_waist_hip => 'Талия-бедра соотношение';

  @override
  String get health_devices_hub => 'Аппаратал ва смарт-часазул концентратор';

  @override
  String get health_sync_now => 'Сахлъиялъул баянал синхронизация';

  @override
  String health_last_synced(Object time) {
    return 'Ахирисеб синхронизация: $time';
  }

  @override
  String get health_manual_entry => 'Ручная запись здоровья';

  @override
  String get health_metric_detail => 'Метрикаялъул баянал';

  @override
  String get health_connected_sensors => 'Бухьараб сахлъиялъул датчикал';

  @override
  String get plan_title => 'Къоялъул план';

  @override
  String get plan_weekly_title => 'Анкьида жаниб сахлъи цӀуниялъул план';

  @override
  String get plan_calorie_target => 'Калориязул таргет';

  @override
  String get plan_water_target => 'Гидратациялъул мурад';

  @override
  String get plan_step_target => 'Галиялъул мурад';

  @override
  String get plan_sleep_target => 'Макьуялъул мурад';

  @override
  String get plan_meal_suggestions => 'Кванил хӀакъалъулъ гӀакълу';

  @override
  String get plan_healthy_habits =>
      'Сахлъиялъе пайдаял гӀадатал ва малъа-хъваял';

  @override
  String get plan_coach_advice => 'Блуми АИ тренералъул рекомендациял';

  @override
  String get plan_generated_title =>
      'Персонализированный ежедневный расписание';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профиль хисизабизе';

  @override
  String get profile_name => 'ЦӀар';

  @override
  String get profile_age => 'ГӀел';

  @override
  String get profile_gender => 'Жинс';

  @override
  String get profile_height => 'Борхалъи';

  @override
  String get profile_weight => 'ЦӀайи';

  @override
  String get profile_goal => 'Аслияб мурад';

  @override
  String get profile_activity_level => 'ХӀалтӀул даража';

  @override
  String get profile_stats => 'Дир сахлъиялъул статистика';

  @override
  String get profile_saved => 'Профиль цӀигьабуна бергьенлъиялда';

  @override
  String get profile_bmi => 'Индекс массы тела (ИМТ)';

  @override
  String get profile_membership => 'Членлъи';

  @override
  String get settings => 'Настройки';

  @override
  String get preferences_habits => 'ПРЕДПОЧТЕНИЯ ВА ПРИВЫЧКИ';

  @override
  String get appearance_theme => 'Загьирлъи ва тема';

  @override
  String get appearance_theme_sub =>
      'БецӀаб, канлъи, системаялъул режим ва приложениялъул фоналъул параметрал';

  @override
  String get permissions => 'Изну ва системаялде нух';

  @override
  String get permissions_sub =>
      'Сахлъи цӀуниялъул бухьен, галиялъул датчикал, GPS, лъазабиял ва камера';

  @override
  String get reminders_notifications => 'РакӀалде щвезабиял ва лъазабиял';

  @override
  String get reminders_sub =>
      'Кванил заман, лъим, къинлъиялъул хал гьаби ва кьижизегӀан ракӀалде щвезабулеб жо';

  @override
  String get units_of_measurement => 'Босизе ругел цолъаби .';

  @override
  String get units_sub =>
      'Метрикияб (кг, см, мл, км) яги Империалияб (фунт, фут/дюйм, фл унция)';

  @override
  String get app_language => 'Приложениязул мацӀ';

  @override
  String get language_sub =>
      'Английский язык, हिन्दी (хинди), хинглиш & 195+ глобальных языков';

  @override
  String get home_screen_widgets => 'Рокъобе экраналъул виджетал';

  @override
  String get widgets_sub =>
      'ЧӀагоял Android виджетал: Хаб, Гали, Лъим, Кванил нигӀматал ва Талисман';

  @override
  String get wear_os_watch_app => 'ОС Watch Приложение носите';

  @override
  String get wear_os_sub =>
      'Смарт-часы компаньон, плитки, осложнения и жизненные жизненные';

  @override
  String get goals_wellness => 'ЦЕЛИ ВА ЗДОРОВОСТЬ ИНСАЙТС';

  @override
  String get nutrition_targets => 'Питаниеялъул мурадал ва макросплит';

  @override
  String get nutrition_targets_sub =>
      'Калориялъул мурад, белок, углеводал, нах ва лъим';

  @override
  String get weekly_recap => 'Анкьида жаниб сахлъи цӀуниялъул хӀасил';

  @override
  String get weekly_recap_sub =>
      '7-къоялъул гьоркьохъеб калориялъул, макро-коэффициент ва бищун лъикӀаб къо';

  @override
  String get streaks_milestones => 'Полосаби ва лъалкӀал';

  @override
  String get streaks_sub => 'Активные цветочные полосы, значки и достижения';

  @override
  String get connected_devices => 'СВЯЗАННЫЕ УСТРОЙСТВА ВА ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Аппаратал ва смарт-часазул концентратор';

  @override
  String get devices_hub_sub =>
      'Сахлъи цӀуниялъул бухьен, Галактикаялъул сагӀтал, Пиксельалъул сагӀтал, Гармин';

  @override
  String get surroundings_weather => 'Сверухълъи ва гьава-бакъ';

  @override
  String get surroundings_sub =>
      'Гьаваялъул качество (AQI), УФ-индекс ва гьава-бакъалъул гидратациялъул малъа-хъваял';

  @override
  String get bloomi_pro => 'Bloomi Pro абураб хъвай-хъвагӀай';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 виджетов домашнего экрана и отслеживание жизненных вещей';

  @override
  String get about_security => 'О И БЕЗОПАСНОСТИ';

  @override
  String get about_bloomi => 'Блумиялъул хӀакъалъулъ';

  @override
  String get about_bloomi_sub => 'Спецификациял, версиял, атрибуциял гӀуцӀи';

  @override
  String get privacy_policy => 'Щаклъи гьечӀолъиялъул политика';

  @override
  String get privacy_policy_sub =>
      'Офлайн-тӀоцебесеб, аппараталда ругел баяназул архитектура';

  @override
  String get terms_conditions => 'ШартӀал ва шартӀал';

  @override
  String get terms_conditions_sub =>
      'ХӀалтӀиялъул шартӀал ва сахлъи цӀуниялъул къагӀидаби';

  @override
  String get delete_account => 'Удалить аккаунт и данные';

  @override
  String get delete_account_sub =>
      'Необратимо удалять локальные данные SQLite и облачные резервные копии';

  @override
  String get healthy_habits =>
      'ХӀеренал, халат рахъарал сахлъи цӀуниялъул гӀадатал гӀуцӀе';

  @override
  String get all_logs => 'Дир хадув лъугьарал баянал ва журналал';

  @override
  String get search_language => 'Поиск по языку или родному письму...';

  @override
  String get languages_available => 'МацӀал ругел';

  @override
  String get no_matching_languages => 'Соответствующие языки не найдено';

  @override
  String get try_searching =>
      'ХӀалбихье рахьдал хъвай-хъвагӀаялдалъун яги ингилис мацӀалъул битӀунхъваялдалъун цӀех-рех гьабизе';

  @override
  String get partially_translated => 'Цо бутӀа буссинабуна .';

  @override
  String get complete_translation => 'ТӀубараб';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Язык установлен на __РН_0__ ( __РН_1__ )';
  }

  @override
  String get surroundings_title => 'Сверухълъи ва сверухълъи';

  @override
  String get surroundings_aqi => 'Гьаваялъул качествоялъул индекс';

  @override
  String get surroundings_uv => 'УФ-индекс';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'ЦӀорой';

  @override
  String get surroundings_hydration_advice =>
      'ГьабсагӀаталда гьава-бакъалъул шартӀазда лъикӀаб лъим гъорлъ букӀине ккола.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Квен балагье';

  @override
  String get food_quick_barcode => 'Сканировать штрих-код 👑 .';

  @override
  String get food_quick_water => 'Лъим тӀаде жубана .';

  @override
  String get food_quick_custom => 'ГӀадатияб квен';

  @override
  String get surroundings_good => 'ЛъикӀаб';

  @override
  String get surroundings_moderate => 'Гьоркьохъеб';

  @override
  String get surroundings_unhealthy => 'Сахлъи гьечӀеб';

  @override
  String get notifications_title => 'Уведомления и предупреждения';

  @override
  String get notifications_empty => 'ЦӀиял лъазабиял гьечӀо';

  @override
  String get notifications_mark_read => 'Кинабго цӀалараблъун хъвай';

  @override
  String get notifications_clear => 'Кинабго бацӀцӀад гьабе';

  @override
  String get reminders => 'Настройки напоминания';

  @override
  String get notifications => 'Уведомления';

  @override
  String get reminders_breakfast_title => 'Завтрак ракӀалде щвезабулеб 🍳 .';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Радал лъикӀ! $time -ялда жаниб питнаялъулаб къаси квен гьабизе заман щвана.';
  }

  @override
  String get reminders_lunch_title => 'Къаде кваназе ракӀалде щвезабулеб 🥗 .';

  @override
  String reminders_lunch_body(Object time) {
    return 'Пауза гьабе ва $time .';
  }

  @override
  String get reminders_dinner_title => 'Кваназе ракӀалде щвезабулеб 🍲 .';

  @override
  String reminders_dinner_body(Object time) {
    return 'Заман щвана бигьаяб, гӀорцӀизабулеб къаси кваназе $time .';
  }

  @override
  String get reminders_water_title => 'Гидратация Нудж 💧 .';

  @override
  String reminders_water_body(Object time) {
    return 'ЦӀияб стакан лъим гьекъезе заман щвана! (__РХ_0__)';
  }

  @override
  String get reminders_weight_title => 'Анкьида жаниб кьолеб къимат ⚖️ .';

  @override
  String reminders_weight_body(Object time) {
    return 'Блумиялда ( $time ) анкьида жаниб дурго черхалъул метрикаялъул хал гьабе.';
  }

  @override
  String get reminders_sleep_title => 'КьижизегӀан Гьури 🌙 .';

  @override
  String reminders_sleep_body(Object time) {
    return 'РахӀат хвезабизе ва хӀалхьолеб макьуялде хӀадурлъизе ( $time ).';
  }

  @override
  String get onboard_welcome => 'РорчӀами нуж Блумиялде';

  @override
  String get onboard_sub =>
      'Дур гьудуллъиялъулаб, офлайн-тӀоцебесеб сахлъиялъул ва кванил нигӀматазул гьалмагъ.';

  @override
  String get onboard_get_started => 'Байбихьизе';

  @override
  String get onboard_sign_in => 'Жаниве лъугьа';

  @override
  String get onboard_skip => 'Пропустить';

  @override
  String get onboard_choose_goal =>
      'Кинаб бугеб дур аслияб сахлъи цӀуниялъул мурад?';

  @override
  String get onboard_goal_weight_loss => 'ХӀеренаб кьаби щвезаби';

  @override
  String get onboard_goal_muscle => 'Мускулазул рахъалъ цебетӀей ва къуват';

  @override
  String get onboard_goal_energy => 'Щибаб къоялъул энергия ва чӀаголъи';

  @override
  String get onboard_goal_habits => 'Сахлъиялъе пайдаяб гӀакълуялъулаб квен';

  @override
  String get onboard_about_you => 'Дурго хӀакъалъулъ бице';

  @override
  String get onboard_lifestyle => 'Дур къойилго ругьунлъи';

  @override
  String get onboard_permissions_title => 'Изну ва системаялде нух';

  @override
  String get onboard_permissions_sub =>
      'Синхронизациялъул галиязде, тренировкабазде ва ракӀалде щвеязде нух кьезе.';

  @override
  String get onboard_plan_ready_title => 'Дур махщелчагӀазул план хӀадурго!';

  @override
  String get onboard_plan_ready_sub =>
      'Нижеца гӀуцӀана хӀеренаб, персонализация гьабураб кванил нигӀматазул ва сахлъи цӀуниялъул нухлул карта гӀицӀго нужее.';

  @override
  String get onboard_enter_bloomi => 'Блуми лъугьа';

  @override
  String get insights_weekly_report => 'Анкьида жаниб сахлъи цӀуниялъул хӀасил';

  @override
  String insights_best_day(Object day) {
    return 'Бищун лъикӀаб дандеккунгутӀиялъул къо: $day';
  }

  @override
  String get insights_streaks_badges => 'Полосаби ва лъалкӀал';

  @override
  String insights_unlocked_on(Object date) {
    return 'Разблокировка на $date';
  }

  @override
  String get insights_keep_going => 'Фантастикияб цебетӀей халат бахъинабе!';

  @override
  String get widgets_title => 'Рокъобе экраналъул виджетал';

  @override
  String widgets_active_count(Object count) {
    return 'Активиял виджетал: $count';
  }

  @override
  String get widgets_hub_title => 'Блуми Уэллнесс Хаб';

  @override
  String get widgets_steps_title => 'Гали ва активияб кольцо';

  @override
  String get widgets_water_title => 'Гидратациялъул хехаб журнал';

  @override
  String get widgets_mascot_title => 'Блуми талисманалъул гьалмагъ';

  @override
  String get wear_os_title => 'ОС Смарт-сагӀат ретӀе';

  @override
  String get wear_os_connected => 'Бухьараб бухьараб Watch .';

  @override
  String get wear_os_sync => 'Синхронизация данных смотреть';

  @override
  String get theme_title => 'Загьирлъи ва тема';

  @override
  String get theme_mode => 'Темаялъул режим';

  @override
  String get theme_light => 'Канлъи';

  @override
  String get theme_dark => 'БецӀаб';

  @override
  String get theme_system => 'Системаялъул стандарт';

  @override
  String get theme_background_palette => 'Фоналъул палитра';

  @override
  String get units_title => 'Босизе ругел цолъаби .';

  @override
  String get units_metric => 'Метрика (кг, см, мл)';

  @override
  String get units_imperial => 'Империалияб (фунт, дюйм, фл унция)';

  @override
  String get home_unable_load => 'Приборазул панел загрузить гьабизе кӀоларо';

  @override
  String get home_health_permission_req =>
      'Сахлъиялъул бухьен гьабизе изну къваригӀуна';

  @override
  String get home_health_permission_desc =>
      'Bloomi-ялъе къваригӀуна Health Connect-алъе изну, хӀакъикъиял галиял, рекӀел хьвади цӀазе ва хӀакъикъияб заманалда мобильнияб рукъалъул виджетал синхронизация гьабизе.';

  @override
  String get home_allow_health => 'Сахлъиялъул бухьен гьабизе изну кьезе';

  @override
  String get home_ready_mindful_day =>
      'ХӀадурал ругищ ракӀалда бугеб къоялъе? ✨';

  @override
  String get home_quick_add => 'Хехаб тӀаде жубай';

  @override
  String get home_live_gps => 'ЧӀагояб GPS';

  @override
  String get home_calories_remaining_label => 'КАЛОРИЯЛ ХУЦӀУЛЕБ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Кванаб: __РН_0__ / __РН_1__ ккал';
  }

  @override
  String get home_tap_water_tracker => 'Кран для воды трекера 💧 .';

  @override
  String get home_water_goal_reached => 'Щибаб къоялъул мурадалде щвана 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл щибаб къоялъул мурадалде';
  }

  @override
  String get home_details => 'МухӀканлъи';

  @override
  String get home_upgrade_plan_desc =>
      'ЦӀигьаби, персонализация гьабураб къойилго мурадал ва ИИялъул план рагьизе';

  @override
  String get home_unlock => 'Разблокировать 👑';

  @override
  String get home_quick_log_hint => 'Хехго хъвай унтиялъул хъвай-хъвагӀай .';

  @override
  String get food_serving_size => 'Порциялъул къадар';

  @override
  String get food_serving_grams => 'ХӀалтӀи гьаби (ж)';

  @override
  String get food_number_servings => 'Порциялъул къадар';

  @override
  String get food_calories_per_serving => 'Калориял цо порциялда жанир';

  @override
  String get food_recipe_ingredients => 'Ингредиентал';

  @override
  String get food_recipe_add_ingredient => 'Ингредиентал тӀаде жубазе';

  @override
  String get food_recipe_directions => 'Инструкция ва хъвай-хъвагӀаял';

  @override
  String get food_recipe_total =>
      'ГӀаммаб къагӀидаялъ рецепталъул кванил нигӀматал';

  @override
  String get food_recipe_per_serving => 'Порциялда рекъон кванил нигӀматал';

  @override
  String get food_recipe_saved_toast =>
      'Заказалъул квен хвасар гьабуна бергьенлъиялда!';

  @override
  String get food_barcode_found => 'Продукт батана!';

  @override
  String get food_barcode_not_found_desc =>
      'Нижеда гьеб штрих-код батичӀо рагьараб базаялда. Гьеб тӀаде жубазе бегьула гӀадатияб квен хӀисабалда.';

  @override
  String get food_add_custom_btn => 'ТӀаде жубана махщелчагӀазул квен';

  @override
  String get food_scan_again => 'ЦӀидасан сканер гьабе';

  @override
  String get food_review_items => 'ТӀатинарурал кванил нигӀматазул хал гьаби';

  @override
  String get food_review_hint =>
      'Настройте количества или удалите любой неизвестный предмет';

  @override
  String get food_log_selected => 'Журнал тӀаса рищарал кванил нигӀматал';

  @override
  String get food_favourites_title => 'Бокьулел кванил нигӀматал';

  @override
  String get food_recent_title => 'Ахирал кванил нигӀматал';

  @override
  String get food_no_favourites =>
      'Жеги бокьулел кванил нигӀматал гьечӀо. Гьаниб хвасар гьабизе бокьараб квеналда ракӀ кьабизе.';

  @override
  String get food_no_recents =>
      'Ахираб заманалда хъварал кванил нигӀматал ратичӀо.';

  @override
  String get food_nutrition_details_title =>
      'Щибаб къоялъ кванил нигӀматазул баянал';

  @override
  String get food_macro_protein_label => 'Белокалъул биххи';

  @override
  String get food_macro_carbs_label => 'Углеводазул биххи';

  @override
  String get food_macro_fat_label => 'Жиралъул биххи';

  @override
  String get food_macro_fiber_label => 'Клетчатка биххи';

  @override
  String get food_daily_target_comparison => 'Мурадалъул дандекквей .';

  @override
  String food_target_label(Object target) {
    return 'Цель: __РН_0__';
  }

  @override
  String get food_edit_entry => 'Дневникалъул хъвай-хъвагӀай хисизабизе';

  @override
  String get food_delete_entry => 'Удалить запись';

  @override
  String food_grams_short(Object grams) {
    return '__РХ_0__ г';
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
  String get water_intake_history => 'Жакъасел лъел хъвай-хъвагӀаял';

  @override
  String get water_no_logs_today =>
      'Жакъа жеги лъим хъван гьечӀо. Увлажняйтесь и нажмите на кнопку быстрого добавления!';

  @override
  String get water_adjust_goal => 'Щибаб къоялъул мурад рекъезабизе';

  @override
  String get health_connect_banner => 'Бухьараб бухьараб Сахлъи Бухьен .';

  @override
  String get health_vitals_summary =>
      'Щибаб къойил сахлъи цӀуниялъул хӀажалъаби';

  @override
  String get health_latest_heart_rate => 'Ахирисеб ракӀалъул кьаби';

  @override
  String get health_latest_bp => 'Бидул тӀадецуй';

  @override
  String get health_latest_spo2 => 'Бидул кислород';

  @override
  String get health_latest_glucose => 'Бидул глюкоза';

  @override
  String get health_latest_weight => 'ЦӀайи';

  @override
  String get health_latest_sleep => 'Макьуялъул заман';

  @override
  String get health_add_manual => 'Добавить ручное измерение';

  @override
  String get health_history_trends => 'Тарихалъул тенденциял';

  @override
  String get health_sync_success =>
      'Сахлъиялъул баянал бергьенлъиялда синхронизация гьабуна!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '__РН_0__ сагӀат __РН_1__ минут';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '__РН_0__ кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '__РН_0__ кьаби';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '__РН_0__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '__РН_0__ / __РН_1__ ммрт.ст.';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '__РН_0__ мг/дл';
  }

  @override
  String get health_devices_title =>
      'Бухьен бугел аппаратал ва ретӀунел алатал';

  @override
  String get health_devices_desc =>
      'Управление парными смарт-часами, фитнес-трекерами и датчиками здоровья.';

  @override
  String get health_workout_editor_title => 'Редактировать тренировка';

  @override
  String get health_workout_name_label => 'Тренировкаялъул цӀар';

  @override
  String get health_workout_duration_label => 'Халалъиги (минут)';

  @override
  String get health_workout_calories_label =>
      'ХӀисаб гьабураб калориялъул къадар (ккал)';

  @override
  String get health_workout_date_label => 'Къо ва заман';

  @override
  String get plan_daily_wellness_roadmap =>
      'Дур персонализация гьабураб нухлул карта';

  @override
  String get plan_morning_routine => 'Радалил рутина';

  @override
  String get plan_afternoon_routine => 'Бакъанида сахлъи';

  @override
  String get plan_evening_routine => 'Къаси гьури-гьури';

  @override
  String get plan_coach_badge => 'Блуми АИ тренер';

  @override
  String get plan_weekly_overview => '7-къоялъул сахлъи цӀуниялъул фокус';

  @override
  String get plan_targets_title => 'Сахлъиялъул мурадал ва мурадал';

  @override
  String get plan_calorie_budget_label => 'Щибаб къоялъул калориялъул бюджет';

  @override
  String get plan_water_budget_label => 'Щибаб къоялъ лъел таргет .';

  @override
  String get plan_step_budget_label => 'Щибаб къоялъул галиялъул мурад';

  @override
  String get plan_macro_split_label => 'Макроэлементазул къадар';

  @override
  String get profile_personal_details => 'Лъиданиги бачӀеб баян';

  @override
  String get profile_body_stats => 'Черхалъул роценал';

  @override
  String get profile_app_preferences => 'Настройки и настройки приложения';

  @override
  String get profile_edit_name_hint => 'Дур цӀар .';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Борхалъи ( __РН_0__ )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'ЦӀайи ( __РН_0__ )';
  }

  @override
  String get profile_edit_age_hint => 'ГӀел';

  @override
  String get profile_gender_male => 'Бихьин';

  @override
  String get profile_gender_female => 'ЧӀужугӀадан';

  @override
  String get profile_gender_other => 'Цогидал / Бищунго бокьула абизе';

  @override
  String get profile_activity_sedentary =>
      'ГӀодор чӀун (Дагьаб яги щибго упражнение гьабичӀого)';

  @override
  String get profile_activity_light => 'Бигьаго хӀаракатчилъи (1-3 къо/анкь)';

  @override
  String get profile_activity_moderate =>
      'Гьоркьохъеб хӀаракатчилъи (3-5 къо/анкь)';

  @override
  String get profile_activity_very => 'ЦӀакъ жигараб (6-7 къо/анкь)';

  @override
  String get settings_wear_os_header => 'ОС Компаньоналъул приложение ретӀе';

  @override
  String get settings_wear_os_desc =>
      'Установите плитку Bloomi и сложность на своих часах Wear OS, чтобы взглянуть на калории, воду и шаги.';

  @override
  String get settings_widgets_header => 'Интерактивиял Android виджетал';

  @override
  String get settings_widgets_desc =>
      'Прикрепите виджеты в реальном времени на экране главного устройства для моментальных обновлений.';

  @override
  String get settings_about_header => 'Блумиялъул хӀакъалъулъ';

  @override
  String get settings_about_version => '1.0.0 версия';

  @override
  String get settings_about_build => 'Базе 100 .';

  @override
  String get settings_about_credits =>
      'ГӀакълуялъулаб, сахлъиялъулаб гӀумру гьабиялъул ургъелгун гьабураб.';

  @override
  String get settings_terms_header => 'ШартӀал ва шартӀал';

  @override
  String get settings_privacy_header => 'Щаклъи гьечӀолъиялъул политика';

  @override
  String get settings_delete_header => 'Удалить аккаунт и данные';

  @override
  String get settings_delete_warning =>
      'Гьеб иш нахъе бахъизе кӀоларо. Киналго дур квенал, тренировкаби, хӀажатал жал ва профиль даималъего тӀагӀинаризе руго.';

  @override
  String get settings_delete_confirm_btn => 'Даимго тӀагӀинабизе';

  @override
  String get onboard_welcome_headline => 'Добро пожаловать в Блуми ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'ХӀеренаб, ракӀбацӀцӀадаб сахлъиялъул хадув гъей, дур гӀумруялда сверухъ ургъараб.';

  @override
  String get onboard_step_about => 'Дур хӀакъалъулъ';

  @override
  String get onboard_step_goals => 'Дур мурадал';

  @override
  String get onboard_step_lifestyle => 'Щибаб къоялъул гӀадатал';

  @override
  String get onboard_step_permissions => 'Изну';

  @override
  String get onboard_step_plan => 'ХӀадур руго!';

  @override
  String get onboard_health_connect_perm => 'Сахлъи цӀуниялъул бухьен';

  @override
  String get onboard_step_sensors_perm => 'Датчик счетчика шагов';

  @override
  String get onboard_notif_perm => 'РакӀалде щвезарулел ва лъазабиял';

  @override
  String get onboard_camera_perm =>
      'Камера (Штрих-код ва кванил нигӀматазул сканер)';

  @override
  String get onboard_grant_permissions => 'Изну кьезе';

  @override
  String get onboard_continue_dashboard => 'Рагьизе панел';

  @override
  String get notif_channel_hydration_name => 'Гидратациялъул нухал';

  @override
  String get notif_channel_hydration_desc =>
      'Къоялъго хӀеренго лъим ракӀалде щвезабулеб';

  @override
  String get notif_channel_nutrition_name =>
      'Квен ва кванил нигӀматал ракӀалде щвезарулел';

  @override
  String get notif_channel_nutrition_desc =>
      'Къаси квен, къаде квен ва къаси квен ракӀалде щвезабулеб лъазаби';

  @override
  String get notif_channel_steps_name => 'Галиялъул лъалкӀал';

  @override
  String get notif_channel_steps_desc =>
      'Щибаб къоялъул галиялъул мурадал щведал байрамал';

  @override
  String get notif_channel_vitals_name =>
      'Сахлъиялъул ва хӀажатаб жоялъул халгьаби';

  @override
  String get notif_channel_vitals_desc =>
      'ЦӀайи ва кьижизегӀан гьури-гьури ракӀалде щвезабулеб';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => 'Снуз 15м';

  @override
  String get notif_action_log_meal => '🥗 Логалъул квен';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
