// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tajik (`tg`).
class AppLocalizationsTg extends AppLocalizations {
  AppLocalizationsTg([String locale = 'tg']) : super(locale);

  @override
  String get app_name => 'Блум';

  @override
  String get nav_home => 'Хона';

  @override
  String get nav_today => 'Имруз';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Хӯрок';

  @override
  String get nav_food_diary => 'Рӯзномаи ғизо';

  @override
  String get nav_workout => 'Сабти машқ';

  @override
  String get nav_health => 'Тандурустй';

  @override
  String get nav_profile => 'Профил';

  @override
  String get save => 'Захира кунед';

  @override
  String get cancel => 'Бекор кардан';

  @override
  String get delete => 'Нобуд кунед';

  @override
  String get edit => 'Таҳрир';

  @override
  String get done => 'Иҷро шуд';

  @override
  String get close => 'Пӯшед';

  @override
  String get back => 'Бозгашт';

  @override
  String get next => 'Оянда';

  @override
  String get continue_btn => 'Давом додан';

  @override
  String get confirm => 'Тасдиқ кунед';

  @override
  String get search => 'Ҷустуҷӯ';

  @override
  String get filter => 'Филтр';

  @override
  String get all => 'Ҳама';

  @override
  String get active => 'Фаъол';

  @override
  String get today => 'Имруз';

  @override
  String get yesterday => 'Дируз';

  @override
  String get tomorrow => 'Пагох';

  @override
  String get add => 'Илова';

  @override
  String get remove => 'Хориҷ кунед';

  @override
  String get refresh => 'Навсозӣ';

  @override
  String get retry => 'Аз нав кӯшиш кунед';

  @override
  String get error => 'Хатогӣ';

  @override
  String get success => 'Муваффакият';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Маълумот дастрас нест';

  @override
  String get offline => 'Ҳолати офлайн';

  @override
  String get offline_sub =>
      'Тағиротҳо пас аз пайвастшавӣ ҳамоҳанг карда мешаванд';

  @override
  String get undo => 'Бекор кардан';

  @override
  String get portion => 'Қисм';

  @override
  String get quantity => 'Миқдор';

  @override
  String get unit => 'Воҳиди';

  @override
  String get clear => 'Тоза';

  @override
  String get select => 'Интихоб кунед';

  @override
  String get apply => 'Муроҷиат кунед';

  @override
  String get reset => 'Бозсозӣ';

  @override
  String get ok => 'Хуб';

  @override
  String get yes => 'Бале';

  @override
  String get no => 'Не';

  @override
  String get optional => 'Ихтиёрӣ';

  @override
  String get calories => 'Калорияҳо';

  @override
  String get protein => 'Протеин';

  @override
  String get carbs => 'Карбогидратҳо';

  @override
  String get fat => 'фарбеҳ';

  @override
  String get fiber => 'Нах';

  @override
  String get water => 'Об';

  @override
  String get steps => 'Қадамҳо';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'г';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунт';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'дар';

  @override
  String get bpm => 'зарбаи дақиқа';

  @override
  String get hours => 'соат';

  @override
  String get minutes => 'дақ';

  @override
  String get serving => 'Хизмат';

  @override
  String get servings => 'Порцияҳо';

  @override
  String get serving_size => 'Андозаи хидматрасонӣ';

  @override
  String get per_100g => 'барои 100 г';

  @override
  String get india => 'Ҳиндустон';

  @override
  String get asia => 'Осиё';

  @override
  String get europe => 'Аврупо';

  @override
  String get middle_east => 'Шарки Наздик';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Хона';

  @override
  String get home_greeting_morning => 'Субҳ ба хайр';

  @override
  String get home_greeting_afternoon => 'Нимаи хуб';

  @override
  String get home_greeting_evening => 'Шаб ба хайр';

  @override
  String get home_streak_title => 'Streak Blossom';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Давраи $count рӯз',
      one: 'Давраи 1 рӯз',
      zero: 'Давраи 0 рӯз',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Сӯхтан';

  @override
  String get home_calories_budget => 'Буҷети калория';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал боқӣ мемонад';
  }

  @override
  String get home_water_title => 'Обдиҳии ҳаррӯза';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Қадамҳо роҳ мерафтанд';

  @override
  String get home_quick_actions => 'Амалҳои зуд';

  @override
  String get home_log_meal => 'Хӯроки сабт';

  @override
  String get home_log_water => 'Оби лоғар';

  @override
  String get home_log_workout => 'Сабти машқ';

  @override
  String get home_log_weight => 'Вазни журнал';

  @override
  String get home_insights_title => 'Андешаҳои имрӯза';

  @override
  String get home_quote =>
      'Интихоби хурди солим дигаргуниҳои шукуфтаро ба вуҷуд меорад.';

  @override
  String get home_ai_coach_tip => 'Мураббии Блуми AI';

  @override
  String get home_surroundings => 'Атроф ва ҳаво';

  @override
  String get home_notifications => 'Огоҳиномаҳо';

  @override
  String get home_daily_score => 'Ҳисоби ҳаррӯзаи некӯаҳволӣ';

  @override
  String get home_view_all => 'Ҳамаро дидан';

  @override
  String get food_diary_title => 'Рӯзномаи ғизо';

  @override
  String get food_breakfast => 'Субҳона';

  @override
  String get food_lunch => 'Хӯроки нисфирӯзӣ';

  @override
  String get food_dinner => 'Хӯроки шом';

  @override
  String get food_snacks => 'Газакҳо';

  @override
  String get food_add_food => 'Илова кардани хӯрок';

  @override
  String get food_edit_food => 'Таҳрири ғизо';

  @override
  String get food_add_breakfast => 'Иловаи субҳона';

  @override
  String get food_add_lunch => 'Иловаи хӯроки нисфирӯзӣ';

  @override
  String get food_add_dinner => 'Илова кардани хӯроки шом';

  @override
  String get food_add_snack => 'Иловаи Snack';

  @override
  String get food_total_calories => 'Калорияҳои умумӣ';

  @override
  String get food_empty_meal =>
      'Барои ин таом то ҳол ягон хӯрок сабт нашудааст';

  @override
  String get food_empty_diary =>
      'Дар ин рӯз ягон хӯрок ба қайд гирифта нашудааст';

  @override
  String get food_log_first_meal =>
      '+ клик кунед, то аввалин хӯроки лазизатонро сабт кунед';

  @override
  String get food_quick_add => 'Иловаи зуд';

  @override
  String get food_search_hint => 'Ҷустуҷӯи хӯрокҳо, меваҳо, дал, роти ...';

  @override
  String get food_custom_recipe => 'Хӯроки фармоишӣ ва рецепт';

  @override
  String get food_scan_barcode => 'Штрих-кодро скан кунед';

  @override
  String get food_camera_scan => 'Сканери ғизои AI';

  @override
  String get food_recent => 'Хӯрокҳои охирин';

  @override
  String get food_favourites => 'Дӯстдоштаҳо';

  @override
  String get food_macro_summary => 'Тақсимоти макронутриентҳо';

  @override
  String get food_delete_meal_confirm =>
      'Шумо мутмаин ҳастед, ки мехоҳед ин ашёро нест кунед?';

  @override
  String get food_item_deleted => 'Маҳсулоти хӯрокворӣ хориҷ карда шуд';

  @override
  String get food_remaining => 'боқимонда';

  @override
  String get food_consumed => 'истеъмол карда мешавад';

  @override
  String food_of_target(Object target) {
    return 'аз $target ккал';
  }

  @override
  String get foodSearch_title => 'Ҷустуҷӯи ғизо';

  @override
  String get foodSearch_scan_barcode => 'Штрих-кодро скан кунед';

  @override
  String get foodSearch_take_photo => 'Акси Snap Food';

  @override
  String get foodSearch_custom_food => 'Эҷоди ғизои фармоишӣ';

  @override
  String get foodSearch_recent_searches => 'Ҷустуҷӯҳои охирин';

  @override
  String get foodSearch_popular => 'Хӯрокҳои маъмул';

  @override
  String get foodSearch_no_results => 'Ҳеҷ хӯроке мувофиқи ҷустуҷӯи шумо нест';

  @override
  String get barcode_title => 'Сканер штрих-код';

  @override
  String get barcode_align =>
      'Штрих-кодро дар дохили чаҳорчӯбаи камера мувофиқ кунед';

  @override
  String get barcode_not_found => 'Маҳсулот дар базаи маълумот ёфт нашуд';

  @override
  String get barcode_premium_feature =>
      'Сканкунии штрих-код бо Bloomi Pro дастрас аст';

  @override
  String get camera_title => 'Сканери ғизои AI';

  @override
  String get camera_tap_hint => 'Табақи худро равшан акс гиред';

  @override
  String get camera_analysing => 'Таҳлили табақи ғизоӣ...';

  @override
  String get camera_detected => 'Ададҳои ошкоршуда';

  @override
  String get camera_flash => 'Флешро иваз кунед';

  @override
  String get camera_retake => 'Аксро аз нав гиред';

  @override
  String get camera_confirm_food => 'Тасдиқи ашё';

  @override
  String get customFood_title => 'Хӯроки фармоишӣ ва рецепт';

  @override
  String get customFood_name_hint => 'Номи табақ ё компонент';

  @override
  String get customFood_calories_hint => 'Калорияҳо (ккал)';

  @override
  String get customFood_protein_hint => 'Протеин (г)';

  @override
  String get customFood_carbs_hint => 'Карбогидратҳо (г)';

  @override
  String get customFood_fat_hint => 'Равған (г)';

  @override
  String get customFood_save => 'Рецептро захира кунед';

  @override
  String get water_tracker_title => 'Назоратчии об';

  @override
  String get water_daily_target => 'Ҳадафи обдиҳии ҳаррӯза';

  @override
  String get water_logged_today => 'Имрӯз сабт шудааст';

  @override
  String get water_add_glass => '+250 мл шиша';

  @override
  String get water_add_bottle => '+500 мл шиша';

  @override
  String get water_custom_amount => 'Маблағи фармоишӣ';

  @override
  String get water_reminder_tip =>
      'Барои энергияи устувор дар давоми рӯз мунтазам об нӯшед.';

  @override
  String water_logged_toast(Object amount) {
    return 'Ба қайд гирифта шуд $amount мл об 💧';
  }

  @override
  String get workout_title => 'Сабти машқ';

  @override
  String get workout_add_exercise => 'Илова кардани машқ';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Қувват';

  @override
  String get workout_yoga => 'Йога ва чандирӣ';

  @override
  String get workout_duration => 'Давомнокӣ';

  @override
  String get workout_intensity => 'Шиддатнокй';

  @override
  String get workout_calories_burned => 'Калорияҳои сӯхташуда';

  @override
  String get workout_empty => 'Имрӯз ягон машқ сабт нашудааст';

  @override
  String get workout_save_success => 'Машқ бомуваффақият захира карда шуд!';

  @override
  String get workout_type => 'Навъи машқ';

  @override
  String get workout_notes => 'Қайдҳо ва Мулоҳизаҳо';

  @override
  String get health_overview_title => 'Саломатӣ ва Ҳаёт';

  @override
  String get health_heart_rate => 'Набзи дил';

  @override
  String get health_blood_oxygen => 'Оксигени хун (SpO2)';

  @override
  String get health_blood_pressure => 'Фишори хун';

  @override
  String get health_blood_glucose => 'Глюкозаи хун';

  @override
  String get health_body_temperature => 'Ҳарорати бадан';

  @override
  String get health_sleep_tracking => 'Пайгирии хоб';

  @override
  String get health_weight_tracking => 'Вазн ва таркиби бадан';

  @override
  String get health_waist_hip => 'Таносуби камар ба хип';

  @override
  String get health_devices_hub => 'Дастгоҳҳо ва маркази Smartwatch';

  @override
  String get health_sync_now => 'Синхронизатсияи маълумоти саломатӣ';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Синхронизатсияи охирин: $time';
  }

  @override
  String get health_manual_entry => 'Вуруди дастӣ саломатӣ';

  @override
  String get health_metric_detail => 'Тафсилоти метрикӣ';

  @override
  String get health_connected_sensors => 'Сенсорҳои саломатии пайвастшуда';

  @override
  String get plan_title => 'Нақшаи ҳаррӯза';

  @override
  String get plan_weekly_title => 'Нақшаи ҳарҳафтаинаи некӯаҳволӣ';

  @override
  String get plan_calorie_target => 'Ҳадафи калория';

  @override
  String get plan_water_target => 'Ҳадафи гидратсия';

  @override
  String get plan_step_target => 'Ҳадафи қадам';

  @override
  String get plan_sleep_target => 'Ҳадафи хоб';

  @override
  String get plan_meal_suggestions => 'Маслиҳатҳои хӯрокворӣ';

  @override
  String get plan_healthy_habits => 'Одатҳо ва маслиҳатҳои солим';

  @override
  String get plan_coach_advice => 'Тавсияҳои мураббии Блуми AI';

  @override
  String get plan_generated_title => 'Ҷадвали ҳаррӯзаи фардӣ';

  @override
  String get profile_title => 'Профил';

  @override
  String get profile_edit => 'Таҳрири профил';

  @override
  String get profile_name => 'Ном';

  @override
  String get profile_age => 'Синну сол';

  @override
  String get profile_gender => 'Гендер';

  @override
  String get profile_height => 'Баландӣ';

  @override
  String get profile_weight => 'Вазн';

  @override
  String get profile_goal => 'Ҳадафи асосӣ';

  @override
  String get profile_activity_level => 'Сатҳи фаъолият';

  @override
  String get profile_stats => 'Статистикаи саломатии ман';

  @override
  String get profile_saved => 'Профил бомуваффақият нав карда шуд';

  @override
  String get profile_bmi => 'Индекси массаи бадан (BMI)';

  @override
  String get profile_membership => 'Узвият';

  @override
  String get settings => 'Танзимотҳо';

  @override
  String get preferences_habits => 'Афзалиятҳо ва одатҳо';

  @override
  String get appearance_theme => 'Намуди зоҳирӣ ва мавзӯъ';

  @override
  String get appearance_theme_sub =>
      'Торикӣ, равшанӣ, режими система ва имконоти пасзаминаи барнома';

  @override
  String get permissions => 'Иҷозатҳо ва дастрасии система';

  @override
  String get permissions_sub =>
      'Health Connect, сенсорҳои қадам, GPS, огоҳиҳо ва камера';

  @override
  String get reminders_notifications => 'Ёдраскуниҳо ва огоҳиҳо';

  @override
  String get reminders_sub =>
      'Вақти хӯрок, об, санҷиши вазн ва ёдраскуниҳои вақти хоб';

  @override
  String get units_of_measurement => 'Воҳидҳои андозагирӣ';

  @override
  String get units_sub =>
      'Метрикӣ (кг, см, мл, км) ё Империалӣ (фунт, фут/ин, фл унс)';

  @override
  String get app_language => 'Забони барнома';

  @override
  String get language_sub =>
      'Англисӣ, हिन्दी (Ҳиндӣ), Хинглӣ ва 195+ забонҳои ҷаҳонӣ';

  @override
  String get home_screen_widgets => 'Виҷетҳои экрани хонагӣ';

  @override
  String get widgets_sub =>
      'Виҷетҳои зиндаи Android: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Ҳамсафари соатҳои интеллектуалӣ, плиткаҳо, мушкилиҳо ва ҳаётҳои зинда';

  @override
  String get goals_wellness => 'Мақсадҳо ва фаҳмиши солимӣ';

  @override
  String get nutrition_targets => 'Ҳадафҳои ғизо ва тақсимоти макро';

  @override
  String get nutrition_targets_sub =>
      'Ҳадафи калория, сафеда, карбогидратҳо, равған ва об';

  @override
  String get weekly_recap => 'Хулосаи ҳарҳафтаинаи саломатӣ';

  @override
  String get weekly_recap_sub =>
      'Миёнаи калорияи 7 рӯз, таносуби макро ва беҳтарин рӯз';

  @override
  String get streaks_milestones => 'Сатрҳо ва марҳилаҳо';

  @override
  String get streaks_sub => 'Роҳҳои гули фаъол, нишонҳо ва дастовардҳо';

  @override
  String get connected_devices => 'ДАСТГОҲҲОИ ПАЙВАСТ ВА ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Дастгоҳҳо ва маркази Smartwatch';

  @override
  String get devices_hub_sub =>
      'Health Connect, Watch Galaxy, Watch Pixel, Garmin';

  @override
  String get surroundings_weather => 'Атроф ва обу ҳаво';

  @override
  String get surroundings_sub =>
      'Сифати ҳаво (AQI), индекси ултрабунафш ва маслиҳатҳои обу ҳаво';

  @override
  String get bloomi_pro => 'Обунаи Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 виджетҳои экрани хонагӣ ва пайгирии ҳаёт';

  @override
  String get about_security => 'ДАР БОРАИ & АМНИЯТ';

  @override
  String get about_bloomi => 'Дар бораи Блум';

  @override
  String get about_bloomi_sub => 'Сохтани мушаххасот, версия, атрибутҳо';

  @override
  String get privacy_policy => 'Сиёсати махфият';

  @override
  String get privacy_policy_sub =>
      'Офлайн-аввал, меъмории маълумот дар дастгоҳ';

  @override
  String get terms_conditions => 'Шартҳо ва шартҳо';

  @override
  String get terms_conditions_sub =>
      'Шартҳои хизматрасонӣ ва дастурҳои саломатӣ';

  @override
  String get delete_account => 'Ҳисоб ва маълумотро нест кунед';

  @override
  String get delete_account_sub =>
      'Маълумоти маҳаллии SQLite ва нусхаҳои эҳтиётии абрро бебозгашт нест кунед';

  @override
  String get healthy_habits => 'Одатҳои солим ва бардавомро эҷод кунед';

  @override
  String get all_logs => 'Маълумот ва гузоришҳои пайгирии ман';

  @override
  String get search_language => 'Ҷустуҷӯ аз рӯи забон ё скрипти модарӣ...';

  @override
  String get languages_available => 'Забонҳои дастрас';

  @override
  String get no_matching_languages => 'Ягон забонҳои мувофиқ ёфт нашуд';

  @override
  String get try_searching =>
      'Кӯшиш кунед, ки аз рӯи скрипти модарӣ ё имлои англисӣ ҷустуҷӯ кунед';

  @override
  String get partially_translated => 'Қисман тарҷума шудааст';

  @override
  String get complete_translation => 'Анҷом';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Забон ба $name таъин карда шуд ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Муҳити атроф ва муҳити зист';

  @override
  String get surroundings_aqi => 'Индекси сифати ҳаво';

  @override
  String get surroundings_uv => 'Индекси ултрабунафш';

  @override
  String get surroundings_temp => 'Ҳарорат';

  @override
  String get surroundings_humidity => 'Намӣ';

  @override
  String get surroundings_hydration_advice =>
      'Дар шароити обу ҳавои кунунӣ обро хуб нигоҳ доред.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Ҷустуҷӯи ғизо';

  @override
  String get food_quick_barcode => 'Штрих-кодро скан кунед 👑';

  @override
  String get food_quick_water => 'Об илова кунед';

  @override
  String get food_quick_custom => 'Хӯроки фармоишӣ';

  @override
  String get surroundings_good => 'Хуб';

  @override
  String get surroundings_moderate => 'Муътадил';

  @override
  String get surroundings_unhealthy => 'Носолим';

  @override
  String get notifications_title => 'Огоҳиҳо ва огоҳиҳо';

  @override
  String get notifications_empty => 'Огоҳиҳои нав нест';

  @override
  String get notifications_mark_read => 'Ҳамаро ҳамчун Хонда қайд кунед';

  @override
  String get notifications_clear => 'Ҳамаро тоза кунед';

  @override
  String get reminders => 'Танзимоти ёдраскунӣ';

  @override
  String get notifications => 'Огоҳиномаҳо';

  @override
  String get reminders_breakfast_title => 'Ёдрас кардани субҳона 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Субҳ ба хайр! Вақти наҳории серғизо дар $time.';
  }

  @override
  String get reminders_lunch_title => 'Ёдрас кардани хӯроки нисфирӯзӣ 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Таваққуф кунед ва аз хӯроки нисфирӯзии мутавозин ва хотирмон дар $time лаззат баред.';
  }

  @override
  String get reminders_dinner_title => 'Ёдрас кардани хӯроки шом 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Вақти хӯроки шоми сабук ва қаноатбахш дар $time.';
  }

  @override
  String get reminders_water_title => '💧';

  @override
  String reminders_water_body(Object time) {
    return 'Вақти нӯшидани як пиёла оби тоза! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Тарозуи ҳарҳафтаина ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Метрикҳои ҳарҳафтаинаи ҷисми худро дар Bloomi пайгирӣ кунед ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Вақти хоб 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Истироҳат кунед ва барои хоби ором омода шавед ( $time ).';
  }

  @override
  String get onboard_welcome => 'Хуш омадед ба Блум';

  @override
  String get onboard_sub =>
      'Ҳамсафари дӯстона, офлайнӣ дар соҳаи тандурустӣ ва ғизои шумо.';

  @override
  String get onboard_get_started => 'Оғоз кунед';

  @override
  String get onboard_sign_in => 'Ворид шавед';

  @override
  String get onboard_skip => 'Гузаштан';

  @override
  String get onboard_choose_goal => 'Ҳадафи асосии солимии шумо чист?';

  @override
  String get onboard_goal_weight_loss => 'Аз даст додани вазн';

  @override
  String get onboard_goal_muscle => 'Гирифтани мушакҳо ва қувват';

  @override
  String get onboard_goal_energy => 'Энергияи ҳаррӯза ва ҳаёт';

  @override
  String get onboard_goal_habits => 'Хӯрдани оқилонаи солим';

  @override
  String get onboard_about_you => 'Дар бораи худ ба мо бигӯед';

  @override
  String get onboard_lifestyle => 'Реҷаи ҳаррӯзаи шумо';

  @override
  String get onboard_permissions_title => 'Иҷозатҳо ва дастрасии система';

  @override
  String get onboard_permissions_sub =>
      'Ба қадамҳои ҳамоҳангсозӣ, машқҳо ва ёдраскуниҳо дастрасӣ диҳед.';

  @override
  String get onboard_plan_ready_title => 'Нақшаи фармоишии шумо омода аст!';

  @override
  String get onboard_plan_ready_sub =>
      'Мо танҳо барои шумо як харитаи роҳи нарм ва фардии ғизо ва некӯаҳволиро таҳия кардем.';

  @override
  String get onboard_enter_bloomi => 'Блумро ворид кунед';

  @override
  String get insights_weekly_report => 'Хулосаи ҳарҳафтаинаи саломатӣ';

  @override
  String insights_best_day(Object day) {
    return 'Беҳтарин рӯзи мувофиқат: $day';
  }

  @override
  String get insights_streaks_badges => 'Сатрҳо ва марҳилаҳо';

  @override
  String insights_unlocked_on(Object date) {
    return 'Қулф карда шуд $date';
  }

  @override
  String get insights_keep_going => 'Пешравии афсонавиро давом диҳед!';

  @override
  String get widgets_title => 'Виҷетҳои экрани хонагӣ';

  @override
  String widgets_active_count(Object count) {
    return 'Виҷетҳои фаъол: $count';
  }

  @override
  String get widgets_hub_title => 'Маркази саломатии Bloomi';

  @override
  String get widgets_steps_title => 'Қадамҳо ва ҳалқаи фаъол';

  @override
  String get widgets_water_title => 'Сабти зуди гидратсия';

  @override
  String get widgets_mascot_title => 'Ҳамсафари Маскот Блум';

  @override
  String get wear_os_title => 'OS Smartwatch -ро пӯшед';

  @override
  String get wear_os_connected => 'Ба тамошо пайваст';

  @override
  String get wear_os_sync => 'Синхронизатсияи маълумоти тамошо';

  @override
  String get theme_title => 'Намуди зоҳирӣ ва мавзӯъ';

  @override
  String get theme_mode => 'Ҳолати мавзӯъ';

  @override
  String get theme_light => 'Нур';

  @override
  String get theme_dark => 'Торик';

  @override
  String get theme_system => 'Системаи пешфарз';

  @override
  String get theme_background_palette => 'Палитраи замина';

  @override
  String get units_title => 'Воҳидҳои андозагирӣ';

  @override
  String get units_metric => 'Метрикӣ (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дар, ф унц)';

  @override
  String get home_unable_load => 'Панели асбобҳоро бор кардан ғайриимкон аст';

  @override
  String get home_health_permission_req => 'Иҷозати Health Connect лозим аст';

  @override
  String get home_health_permission_desc =>
      'Блуми иҷозати Health Connect талаб мекунад, то қадамҳои воқеӣ, суръати дил ва ҳамоҳангсозии виджетҳои мобилии хонагӣ дар вақти воқеӣ.';

  @override
  String get home_allow_health => 'Ба саломатӣ пайваст шавед';

  @override
  String get home_ready_mindful_day => 'Ба рӯзи хотирмон омодаед? ✨';

  @override
  String get home_quick_add => 'Иловаи зуд';

  @override
  String get home_live_gps => 'GPS-и зинда';

  @override
  String get home_calories_remaining_label => 'КАЛОРИЯИ БОКИМОНДА';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Хӯрдашуда: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Барои пайгирии об 💧 клик кунед';

  @override
  String get home_water_goal_reached => 'Ҳадафи ҳаррӯза расид 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл ба максади харруза';
  }

  @override
  String get home_details => 'Тафсилот';

  @override
  String get home_upgrade_plan_desc =>
      'Барои кушодани ҳадафҳои фардии ҳаррӯза ва нақшаи AI навсозӣ кунед';

  @override
  String get home_unlock => 'Кушодан 👑';

  @override
  String get home_quick_log_hint => 'Воридоти саломатиро зуд сабт кунед';

  @override
  String get food_serving_size => 'Андозаи хидматрасонӣ';

  @override
  String get food_serving_grams => 'Хизматрасонӣ (г)';

  @override
  String get food_number_servings => 'Шумораи порцияҳо';

  @override
  String get food_calories_per_serving => 'Калорияҳо дар як порция';

  @override
  String get food_recipe_ingredients => 'Компонентхо';

  @override
  String get food_recipe_add_ingredient => 'Иловаи компонент';

  @override
  String get food_recipe_directions => 'Дастурҳо ва қайдҳо';

  @override
  String get food_recipe_total => 'Ғизодиҳии умумӣ';

  @override
  String get food_recipe_per_serving => 'Барои хӯрдани ғизо';

  @override
  String get food_recipe_saved_toast =>
      'Хӯроки фармоишӣ бомуваффақият захира карда шуд!';

  @override
  String get food_barcode_found => 'Маҳсулот пайдо шуд!';

  @override
  String get food_barcode_not_found_desc =>
      'Мо ин штрих-кодро дар базаи кушода пайдо карда натавонистем. Шумо метавонед онро ҳамчун ғизои фармоишӣ илова кунед.';

  @override
  String get food_add_custom_btn => 'Илова кардани ғизои фармоишӣ';

  @override
  String get food_scan_again => 'Боз скан кунед';

  @override
  String get food_review_items => 'Хӯрокҳои ошкоршударо баррасӣ кунед';

  @override
  String get food_review_hint =>
      'Миқдорҳоро танзим кунед ё ягон ашёи шинохтанашударо хориҷ кунед';

  @override
  String get food_log_selected => 'Хӯрокҳои интихобшударо сабт кунед';

  @override
  String get food_favourites_title => 'Хӯрокҳои дӯстдошта';

  @override
  String get food_recent_title => 'Хӯрокҳои охирин';

  @override
  String get food_no_favourites =>
      'Ҳанӯз хӯрокҳои дӯстдошта надоранд. Барои захира кардан дар ин ҷо ба дилхоҳ хӯрок клик кунед.';

  @override
  String get food_no_recents => 'Ягон хӯроки ба наздикӣ сабтшуда ёфт нашуд.';

  @override
  String get food_nutrition_details_title => 'Тафсилоти ғизои ҳаррӯза';

  @override
  String get food_macro_protein_label => 'Тақсими протеин';

  @override
  String get food_macro_carbs_label => 'Тақсимоти карбогидратҳо';

  @override
  String get food_macro_fat_label => 'Тақсимоти фарбеҳ';

  @override
  String get food_macro_fiber_label => 'Тақсими нахи';

  @override
  String get food_daily_target_comparison => 'Муқоисаи ҳадаф';

  @override
  String food_target_label(Object target) {
    return 'Ҳадаф: $target';
  }

  @override
  String get food_edit_entry => 'Таҳрири сабти рӯзнома';

  @override
  String get food_delete_entry => 'Нест кардани вуруд';

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
    return '$current аз $target мл';
  }

  @override
  String get water_intake_history => 'Гузоришҳои обҳои имрӯза';

  @override
  String get water_no_logs_today =>
      'Имрӯз об наомадааст. Обдор кунед ва тугмаи иловаи зудро клик кунед!';

  @override
  String get water_adjust_goal => 'Ҳадафи ҳаррӯзаро танзим кунед';

  @override
  String get health_connect_banner => 'Ба Health Connect пайваст шудааст';

  @override
  String get health_vitals_summary => 'Ҳаётҳои саломатии ҳаррӯза';

  @override
  String get health_latest_heart_rate => 'Набзи охирини дил';

  @override
  String get health_latest_bp => 'Фишори хун';

  @override
  String get health_latest_spo2 => 'Оксигени хун';

  @override
  String get health_latest_glucose => 'Глюкозаи хун';

  @override
  String get health_latest_weight => 'Вазн';

  @override
  String get health_latest_sleep => 'Давомнокии хоб';

  @override
  String get health_add_manual => 'Илова кардани андозагирии дастӣ';

  @override
  String get health_history_trends => 'Тамоюлҳои таърихӣ';

  @override
  String get health_sync_success =>
      'Маълумоти саломатӣ бомуваффақият ҳамоҳанг карда шуд!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours соат $mins дақиқа';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm зарбаи дақиқа';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic мм ст.ситб';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title =>
      'Дастгоҳҳои васлшаванда ва асбобҳои пӯшида';

  @override
  String get health_devices_desc =>
      'Соатҳои интеллектуалии ҷуфтшуда, трекерҳои фитнес ва сенсорҳои саломатиро идора кунед.';

  @override
  String get health_workout_editor_title => 'Таҳрири машқ';

  @override
  String get health_workout_name_label => 'Номи машқ';

  @override
  String get health_workout_duration_label => 'Давомнокӣ (дақиқа)';

  @override
  String get health_workout_calories_label => 'Калорияҳои тахминӣ (ккал)';

  @override
  String get health_workout_date_label => 'Сана ва вақт';

  @override
  String get plan_daily_wellness_roadmap => 'Харитаи роҳи шахсии шумо';

  @override
  String get plan_morning_routine => 'Тартиби субҳ';

  @override
  String get plan_afternoon_routine => 'Саломатии нисфирӯзӣ';

  @override
  String get plan_evening_routine => 'Боди шаб';

  @override
  String get plan_coach_badge => 'Мураббии Блуми AI';

  @override
  String get plan_weekly_overview => 'Фокуси 7-рӯзаи саломатӣ';

  @override
  String get plan_targets_title => 'Ҳадафҳо ва ҳадафҳои саломатӣ';

  @override
  String get plan_calorie_budget_label => 'Буҷаи калорияи ҳаррӯза';

  @override
  String get plan_water_budget_label => 'Ҳадафи ҳаррӯзаи об';

  @override
  String get plan_step_budget_label => 'Ҳадафи қадами ҳаррӯза';

  @override
  String get plan_macro_split_label => 'Таносуби макронутриент';

  @override
  String get profile_personal_details => 'Тафсилоти шахсӣ';

  @override
  String get profile_body_stats => 'Андозагирии бадан';

  @override
  String get profile_app_preferences => 'Афзалиятҳо ва Танзимоти барнома';

  @override
  String get profile_edit_name_hint => 'Номи шумо';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Баландӣ ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Вазн ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Синну сол';

  @override
  String get profile_gender_male => 'Мард';

  @override
  String get profile_gender_female => 'Зан';

  @override
  String get profile_gender_other => 'Дигар / Афзалтар нагӯед';

  @override
  String get profile_activity_sedentary => 'Нишаста (кам ба машқ накардан)';

  @override
  String get profile_activity_light => 'Сабук фаъол (1-3 рӯз дар як ҳафта)';

  @override
  String get profile_activity_moderate =>
      'Мӯътадил фаъол (3-5 рӯз дар як ҳафта)';

  @override
  String get profile_activity_very => 'Хеле фаъол (6-7 рӯз дар як ҳафта)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Плиткаи Bloomi ва мураккабиро дар соати Wear OS насб кунед, то ба калорияҳо, об ва қадамҳо назар андозед.';

  @override
  String get settings_widgets_header => 'Виҷетҳои интерактивии Android';

  @override
  String get settings_widgets_desc =>
      'Барои навсозиҳои фаврӣ виджетҳои вақти воқеиро дар экрани асосии дастгоҳи худ часпонед.';

  @override
  String get settings_about_header => 'Дар бораи Блум';

  @override
  String get settings_about_version => 'Версияи 1.0.0';

  @override
  String get settings_about_build => 'Сохтани 100';

  @override
  String get settings_about_credits =>
      'Бо ғамхорӣ барои зиндагии солим ва солим таҳия шудааст.';

  @override
  String get settings_terms_header => 'Шартҳо ва шартҳо';

  @override
  String get settings_privacy_header => 'Сиёсати махфият';

  @override
  String get settings_delete_header => 'Ҳисоб ва маълумотро нест кунед';

  @override
  String get settings_delete_warning =>
      'Ин амалро бекор кардан мумкин нест. Ҳама хӯрокҳо, машқҳо, виталҳо ва профили шумо ба таври доимӣ нест карда мешаванд.';

  @override
  String get settings_delete_confirm_btn => 'Ба таври доимӣ нест кунед';

  @override
  String get onboard_welcome_headline => 'Хуш омадед ба Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Пайгирии нармӣ ва оқилонаи солимии шумо, ки дар атрофи ҳаёти шумо тарҳрезӣ шудааст.';

  @override
  String get onboard_step_about => 'Дар бораи шумо';

  @override
  String get onboard_step_goals => 'Ҳадафҳои шумо';

  @override
  String get onboard_step_lifestyle => 'Одатҳои ҳаррӯза';

  @override
  String get onboard_step_permissions => 'Иҷозатҳо';

  @override
  String get onboard_step_plan => 'Тайёр!';

  @override
  String get onboard_health_connect_perm => 'Дастрасии Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Сенсори ҳисобкунаки қадам';

  @override
  String get onboard_notif_perm => 'Ёдраскуниҳо ва огоҳиномаҳо';

  @override
  String get onboard_camera_perm => 'Камера (штрих-код ва сканери ғизо)';

  @override
  String get onboard_grant_permissions => 'Иҷозат диҳед';

  @override
  String get onboard_continue_dashboard => 'Панели дастгоҳро кушоед';

  @override
  String get notif_channel_hydration_name => 'Намудҳои гидратсия';

  @override
  String get notif_channel_hydration_desc =>
      'Ёдраскуниҳои оби мулоим дар давоми рӯз';

  @override
  String get notif_channel_nutrition_name =>
      'Ёдраскуниҳо дар бораи хӯрок ва ғизо';

  @override
  String get notif_channel_nutrition_desc =>
      'Огоҳӣ оид ба ёдраскуниҳои субҳона, хӯроки нисфирӯзӣ ва шом';

  @override
  String get notif_channel_steps_name => 'Марҳилаҳои қадам';

  @override
  String get notif_channel_steps_desc =>
      'Ҷашнҳо ҳангоми расидан ба ҳадафҳои ҳаррӯза';

  @override
  String get notif_channel_vitals_name => 'Санҷиши саломатӣ ва ҳаёт';

  @override
  String get notif_channel_vitals_desc => 'Ёдраскуниҳои вазн ва вақти хоб';

  @override
  String get notif_action_log_water => '💧 Логин +250мл';

  @override
  String get notif_action_snooze => '15 м';

  @override
  String get notif_action_log_meal => '🥗 Хӯроки лоғар';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
