// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tatar (`tt`).
class AppLocalizationsTt extends AppLocalizations {
  AppLocalizationsTt([String locale = 'tt']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Өй';

  @override
  String get nav_today => 'Бүген';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Азык';

  @override
  String get nav_food_diary => 'Азык көндәлеге';

  @override
  String get nav_workout => 'Күнегүләр журналы';

  @override
  String get nav_health => 'Сәламәтлек';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Саклагыз';

  @override
  String get cancel => 'Баш тарту';

  @override
  String get delete => 'Бетерү';

  @override
  String get edit => 'Редакцияләү';

  @override
  String get done => 'Булды';

  @override
  String get close => 'Ябу';

  @override
  String get back => 'Кире';

  @override
  String get next => 'Киләсе';

  @override
  String get continue_btn => 'Дәвам итегез';

  @override
  String get confirm => 'Ышандыр';

  @override
  String get search => 'Эзләү';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Барысы да';

  @override
  String get active => 'Актив';

  @override
  String get today => 'Бүген';

  @override
  String get yesterday => 'Кичә';

  @override
  String get tomorrow => 'Иртәгә';

  @override
  String get add => 'Кушу';

  @override
  String get remove => 'Чыгар';

  @override
  String get refresh => 'Яңарту';

  @override
  String get retry => 'Кабатлап карагыз';

  @override
  String get error => 'Хата';

  @override
  String get success => 'Уңыш';

  @override
  String get loading => 'Йөкләү ...';

  @override
  String get no_data => 'Мәгълүмат юк';

  @override
  String get offline => 'Оффлайн режим';

  @override
  String get offline_sub => 'Esзгәрешләр яңадан тоташкач синхронлашачак';

  @override
  String get undo => 'Кире кайтару';

  @override
  String get portion => 'Порция';

  @override
  String get quantity => 'Сан';

  @override
  String get unit => 'Берәмлек';

  @override
  String get clear => 'Чиста';

  @override
  String get select => 'Сайлагыз';

  @override
  String get apply => 'Кулланыгыз';

  @override
  String get reset => 'Бетерү';

  @override
  String get ok => 'Ярар';

  @override
  String get yes => 'Әйе';

  @override
  String get no => '.К';

  @override
  String get optional => 'Ихтимал';

  @override
  String get calories => 'Калория';

  @override
  String get protein => 'Протеин';

  @override
  String get carbs => 'Карбс';

  @override
  String get fat => 'Май';

  @override
  String get fiber => 'Fiberепсел';

  @override
  String get water => 'Су';

  @override
  String get steps => 'Адымнар';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'ф';

  @override
  String get centimeters => 'см';

  @override
  String get inches => '.әр сүзнең';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'сәг';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Хезмәт итү';

  @override
  String get servings => 'Порция';

  @override
  String get serving_size => 'Хезмәт күрсәтү күләме';

  @override
  String get per_100g => '100г өчен';

  @override
  String get india => 'Indiaиндстан';

  @override
  String get asia => 'Азия';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Якын Көнчыгыш';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Өй';

  @override
  String get home_greeting_morning => 'Хәерле иртә';

  @override
  String get home_greeting_afternoon => 'Хәерле төш';

  @override
  String get home_greeting_evening => 'Хәерле кич';

  @override
  String get home_streak_title => 'Чәчәк ату';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count көн сызыгы',
      one: '1 көнлек юл',
      zero: '0 көн',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Янган';

  @override
  String get home_calories_budget => 'Калория бюджеты';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал калган';
  }

  @override
  String get home_water_title => 'Көн саен гидратлаштыру';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Адымнар';

  @override
  String get home_quick_actions => 'Тиз гамәлләр';

  @override
  String get home_log_meal => 'Керү';

  @override
  String get home_log_water => 'Су бүрәнәсе';

  @override
  String get home_log_workout => 'Керү күнегүләре';

  @override
  String get home_log_weight => 'Бүрәнә авырлыгы';

  @override
  String get home_insights_title => 'Бүгенге төшенчәләр';

  @override
  String get home_quote => 'Кечкенә сәламәт сайлау чәчәк ата.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI тренеры';

  @override
  String get home_surroundings => 'Тирә-юнь һәм һава';

  @override
  String get home_notifications => 'Хәбәрләр';

  @override
  String get home_daily_score => 'Көндәлек сәламәтлек баллы';

  @override
  String get home_view_all => 'Барысын да карау';

  @override
  String get food_diary_title => 'Азык көндәлеге';

  @override
  String get food_breakfast => 'Иртәнге аш';

  @override
  String get food_lunch => 'Төшке аш';

  @override
  String get food_dinner => 'Кичке аш';

  @override
  String get food_snacks => 'Ашамлыклар';

  @override
  String get food_add_food => 'Ашарга';

  @override
  String get food_edit_food => 'Ризыкны үзгәртү';

  @override
  String get food_add_breakfast => 'Иртәнге аш өстәргә';

  @override
  String get food_add_lunch => 'Төшке аш өстәргә';

  @override
  String get food_add_dinner => 'Кичке аш';

  @override
  String get food_add_snack => 'Снек өстәргә';

  @override
  String get food_total_calories => 'Барлык калория';

  @override
  String get food_empty_meal => 'Бу ризык өчен әлегә ризык юк';

  @override
  String get food_empty_diary => 'Бу көнгә ашау юк';

  @override
  String get food_log_first_meal => 'Беренче тәмле ашны кертү өчен + басыгыз';

  @override
  String get food_quick_add => 'Тиз өстәү';

  @override
  String get food_search_hint =>
      'Савыт-саба, җиләк-җимеш, даль, роти эзләгез ...';

  @override
  String get food_custom_recipe => 'Махсус ризык һәм рецепт';

  @override
  String get food_scan_barcode => 'Штрих-кодны сканерлау';

  @override
  String get food_camera_scan => 'ЯИ азык сканеры';

  @override
  String get food_recent => 'Соңгы ризыклар';

  @override
  String get food_favourites => 'Фаворитлар';

  @override
  String get food_macro_summary => 'Макронутриент бүленеше';

  @override
  String get food_delete_meal_confirm => 'Сез бу әйберне бетерергә телисезме?';

  @override
  String get food_item_deleted => 'Азык-төлек әйбере алынды';

  @override
  String get food_remaining => 'калган';

  @override
  String get food_consumed => 'кулланылган';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Азык-төлек эзләү';

  @override
  String get foodSearch_scan_barcode => 'Штрих-кодны сканерлау';

  @override
  String get foodSearch_take_photo => 'Азык-төлек фотосы';

  @override
  String get foodSearch_custom_food => 'Заказлы ризык булдыру';

  @override
  String get foodSearch_recent_searches => 'Соңгы эзләнүләр';

  @override
  String get foodSearch_popular => 'Популяр ризыклар';

  @override
  String get foodSearch_no_results => 'Сезнең эзләүгә туры килгән ризык юк';

  @override
  String get barcode_title => 'Штрих-сканер';

  @override
  String get barcode_align => 'Штрих-кодны камера рамкасына тигезләгез';

  @override
  String get barcode_not_found => 'Продукт базада табылмады';

  @override
  String get barcode_premium_feature =>
      'Штрих-код сканерлау Bloomi Pro ярдәмендә бар';

  @override
  String get camera_title => 'ЯИ азык сканеры';

  @override
  String get camera_tap_hint => 'Табыныгызны ачык фотога төшерегез';

  @override
  String get camera_analysing => 'Азык тәлинкәсенә анализ ...';

  @override
  String get camera_detected => 'Ачыкланган әйберләр';

  @override
  String get camera_flash => 'Флешны алыштырыгыз';

  @override
  String get camera_retake => 'Фото';

  @override
  String get camera_confirm_food => 'Предметларны раслагыз';

  @override
  String get customFood_title => 'Махсус ризык һәм рецепт';

  @override
  String get customFood_name_hint => 'Табын яки ингредиент исеме';

  @override
  String get customFood_calories_hint => 'Калория (ккал)';

  @override
  String get customFood_protein_hint => 'Протеин (g)';

  @override
  String get customFood_carbs_hint => 'Карбс (g)';

  @override
  String get customFood_fat_hint => 'Май (g)';

  @override
  String get customFood_save => 'Рецептны саклагыз';

  @override
  String get water_tracker_title => 'Су эзләүче';

  @override
  String get water_daily_target => 'Көндәлек гидратлаштыру максаты';

  @override
  String get water_logged_today => 'Бүген теркәлгән';

  @override
  String get water_add_glass => '+250 мл пыяла';

  @override
  String get water_add_bottle => '+500 мл шешә';

  @override
  String get water_custom_amount => 'Махсус сумма';

  @override
  String get water_reminder_tip =>
      'Тотрыклы энергия өчен көн дәвамында су эчегез.';

  @override
  String water_logged_toast(Object amount) {
    return 'Керелгән $amount мл су 💧';
  }

  @override
  String get workout_title => 'Күнегүләр журналы';

  @override
  String get workout_add_exercise => 'Күнегүләр өстәү';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Көч';

  @override
  String get workout_yoga => 'Йога һәм сыгылучылык';

  @override
  String get workout_duration => 'Озынлыгы';

  @override
  String get workout_intensity => 'Интенсивлык';

  @override
  String get workout_calories_burned => 'Калорияләр';

  @override
  String get workout_empty => 'Бүген күнегүләр юк';

  @override
  String get workout_save_success => 'Тренировкалар уңышлы сакланды!';

  @override
  String get workout_type => 'Спорт төре';

  @override
  String get workout_notes => 'Искәрмәләр һәм уйланулар';

  @override
  String get health_overview_title => 'Сәламәтлек';

  @override
  String get health_heart_rate => 'Йөрәк тибеше';

  @override
  String get health_blood_oxygen => 'Кан кислороды (SpO2)';

  @override
  String get health_blood_pressure => 'Кан басымы';

  @override
  String get health_blood_glucose => 'Кан глюкозасы';

  @override
  String get health_body_temperature => 'Тән температурасы';

  @override
  String get health_sleep_tracking => 'Йокы эзләү';

  @override
  String get health_weight_tracking => 'Авырлык һәм тән составы';

  @override
  String get health_waist_hip => 'Билдән-бөке коэффициенты';

  @override
  String get health_devices_hub => 'Devайланмалар һәм Smartwatch Хаб';

  @override
  String get health_sync_now => 'Сәламәтлек мәгълүматларын синхронизацияләү';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Соңгы синхрон: $time';
  }

  @override
  String get health_manual_entry => 'Сәламәтлек белән кул белән керү';

  @override
  String get health_metric_detail => 'Метрик детальләр';

  @override
  String get health_connected_sensors => 'Бәйләнгән сәламәтлек сенсорлары';

  @override
  String get plan_title => 'Көндәлек план';

  @override
  String get plan_weekly_title => 'Атналык сәламәтлек планы';

  @override
  String get plan_calorie_target => 'Калория максаты';

  @override
  String get plan_water_target => 'Гидратлаштыру максаты';

  @override
  String get plan_step_target => 'Адым максаты';

  @override
  String get plan_sleep_target => 'Йокы максаты';

  @override
  String get plan_meal_suggestions => 'Аш тәкъдимнәре';

  @override
  String get plan_healthy_habits => 'Сәламәт гадәтләр һәм киңәшләр';

  @override
  String get plan_coach_advice => 'Bloomi AI тренеры тәкъдимнәре';

  @override
  String get plan_generated_title => 'Персональләштерелгән көндәлек график';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профильне үзгәртү';

  @override
  String get profile_name => 'Исем';

  @override
  String get profile_age => 'Яше';

  @override
  String get profile_gender => 'Гендер';

  @override
  String get profile_height => 'Биеклек';

  @override
  String get profile_weight => 'Авырлык';

  @override
  String get profile_goal => 'Төп максат';

  @override
  String get profile_activity_level => 'Эшчәнлек дәрәҗәсе';

  @override
  String get profile_stats => 'Минем сәламәтлек статистикасы';

  @override
  String get profile_saved => 'Профиль уңышлы яңартылды';

  @override
  String get profile_bmi => 'Тән масса индексы (BMI)';

  @override
  String get profile_membership => 'Әгъзалык';

  @override
  String get settings => 'Көйләүләр';

  @override
  String get preferences_habits => 'СЫЙЛЫКЛАР & ӘМ ХАБИТЛАР';

  @override
  String get appearance_theme => 'Күренеш һәм тема';

  @override
  String get appearance_theme_sub =>
      'Караңгы, яктылык, система режимы һәм кушымталарның фон вариантлары';

  @override
  String get permissions => 'Рөхсәтләр һәм системага керү';

  @override
  String get permissions_sub =>
      'Сәламәтлекне тоташтыру, адым сенсорлары, GPS, хәбәрләр һәм камера';

  @override
  String get reminders_notifications => 'Искә төшерүләр һәм хәбәрләр';

  @override
  String get reminders_sub =>
      'Аш вакыты, су, авырлыкны тикшерү һәм йокы вакытын искә төшерү';

  @override
  String get units_of_measurement => 'Asлчәү берәмлекләре';

  @override
  String get units_sub =>
      'Метрика (кг, см, мл, км) яки Империял (фунт, ft / in, fl oz)';

  @override
  String get app_language => 'Кушымта теле';

  @override
  String get language_sub =>
      'Инглиз, हिन्दी (Hindiинди), Хинглиш & 195+ глобаль телләр';

  @override
  String get home_screen_widgets => 'Төп экран виджетлары';

  @override
  String get widgets_sub =>
      'Тере Android виджетлары: Хаб, адымнар, су, туклану һәм талисман';

  @override
  String get wear_os_watch_app => 'OS карау кушымтасын киегез';

  @override
  String get wear_os_sub =>
      'Смартватт юлдашы, плиткалар, кыенлыклар һәм тере виталлар';

  @override
  String get goals_wellness => 'Максатлар һәм яхшылык';

  @override
  String get nutrition_targets => 'Туклану максатлары & Макро Сплит';

  @override
  String get nutrition_targets_sub =>
      'Калория максаты, протеин, карбон, май һәм су максаты';

  @override
  String get weekly_recap => 'Атналык сәламәтлекне кабатлау';

  @override
  String get weekly_recap_sub =>
      '7 көнлек калория, макро коэффициенты һәм иң яхшы көн';

  @override
  String get streaks_milestones => 'Урамнар һәм вакыйгалар';

  @override
  String get streaks_sub => 'Актив чәчәк сызыклары, бейджлар һәм казанышлар';

  @override
  String get connected_devices => 'Бәйләнешле җайланмалар һәм экосистема';

  @override
  String get devices_hub => 'Devайланмалар һәм Smartwatch Хаб';

  @override
  String get devices_hub_sub =>
      'Сәламәтлекне тоташтыру, Галактика сәгате, Пиксель сәгате, Гармун';

  @override
  String get surroundings_weather => 'Тирә-юнь һәм һава торышы';

  @override
  String get surroundings_sub =>
      'Airава сыйфаты (AQI), UV индексы һәм һава торышын гидратлаштыру киңәшләре';

  @override
  String get bloomi_pro => 'Bloomi Pro язылу';

  @override
  String get bloomi_pro_sub =>
      'ЯИ планы тренеры, 5 төп экран виджеты һәм виталларны күзәтү';

  @override
  String get about_security => 'Куркынычсызлык турында';

  @override
  String get about_bloomi => 'Блуми турында';

  @override
  String get about_bloomi_sub => 'Спецификацияләр, версия, атрибутлар төзегез';

  @override
  String get privacy_policy => 'Хосусыйлык политикасы';

  @override
  String get privacy_policy_sub =>
      'Оффлайн-беренче, җайланмадагы мәгълүмат архитектурасы';

  @override
  String get terms_conditions => 'Шартлар';

  @override
  String get terms_conditions_sub =>
      'Хезмәт шартлары һәм сәламәтлек өчен күрсәтмәләр';

  @override
  String get delete_account => 'Хисапны һәм мәгълүматны бетерү';

  @override
  String get delete_account_sub =>
      'Localирле SQLite мәгълүматларын һәм болыт резервларын кире кайтарып бетерегез';

  @override
  String get healthy_habits =>
      'Йомшак, дәвамлы сәламәтлек гадәтләрен булдырыгыз';

  @override
  String get all_logs => 'Минем күзәтелгән мәгълүматлар һәм бүрәнәләр';

  @override
  String get search_language => 'Тел яки туган сценарий буенча эзләү ...';

  @override
  String get languages_available => 'Телләр бар';

  @override
  String get no_matching_languages =>
      'Бер-берсенә туры килгән телләр табылмады';

  @override
  String get try_searching =>
      'Туган сценарий яки инглиз орфографиясе буенча эзләгез';

  @override
  String get partially_translated => 'Өлешчә тәрҗемә ителгән';

  @override
  String get complete_translation => 'Тәмам';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Тел $name ($nativeName) итеп куелган';
  }

  @override
  String get surroundings_title => 'Тирә-як мохит';

  @override
  String get surroundings_aqi => 'Airава сыйфаты индексы';

  @override
  String get surroundings_uv => 'UV индексы';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Дым';

  @override
  String get surroundings_hydration_advice =>
      'Хәзерге һава шартларында яхшы гидратлы булыгыз.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Азык эзләү';

  @override
  String get food_quick_barcode => 'Штрих-кодны сканерлау';

  @override
  String get food_quick_water => 'Су өстәргә';

  @override
  String get food_quick_custom => 'Гадәттәге ризык';

  @override
  String get surroundings_good => 'Яхшы';

  @override
  String get surroundings_moderate => 'Урта';

  @override
  String get surroundings_unhealthy => 'Сәламәт түгел';

  @override
  String get notifications_title => 'Хәбәрләр һәм хәбәрләр';

  @override
  String get notifications_empty => 'Яңа хәбәрләр юк';

  @override
  String get notifications_mark_read => 'Барысын да укыгыз';

  @override
  String get notifications_clear => 'Барысын да чистарт';

  @override
  String get reminders => 'Искә төшерү көйләүләре';

  @override
  String get notifications => 'Хәбәрләр';

  @override
  String get reminders_breakfast_title => 'Иртәнге аш искә төшерү 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Хәерле иртә! $time ашатучы иртәнге аш вакыты.';
  }

  @override
  String get reminders_lunch_title => 'Төшке аш искә төшерү 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time да пауза һәм баланслы, акыллы төшке аш.';
  }

  @override
  String get reminders_dinner_title => 'Кичке искә төшерү 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time якты, канәгать кичке аш вакыты.';
  }

  @override
  String get reminders_water_title => 'Гидратлашу башы 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Яңа стакан су эчәргә вакыт! ($time)';
  }

  @override
  String get reminders_weight_title => 'Атналык үлчәү ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Блумида атналык тән үлчәүләрегезне күзәтегез ($time).';
  }

  @override
  String get reminders_sleep_title => 'Йокы вакыты Windил төшү 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Тыныч йокыга әзерләнегез ($time).';
  }

  @override
  String get onboard_welcome => 'Блумига рәхим итегез';

  @override
  String get onboard_sub =>
      'Сезнең дустанә, оффлайн-беренче сәламәтлек һәм туклану юлдашыгыз.';

  @override
  String get onboard_get_started => 'Башлау';

  @override
  String get onboard_sign_in => 'Керегез';

  @override
  String get onboard_skip => 'Сикереп тор';

  @override
  String get onboard_choose_goal => 'Сезнең төп сәламәтлек максатыгыз нинди?';

  @override
  String get onboard_goal_weight_loss => 'Назлы авырлык';

  @override
  String get onboard_goal_muscle => 'Мускуллар арту һәм көч';

  @override
  String get onboard_goal_energy => 'Көндәлек энергия һәм тормыш';

  @override
  String get onboard_goal_habits => 'Сәламәт ашау';

  @override
  String get onboard_about_you => 'Usзең турында сөйлә';

  @override
  String get onboard_lifestyle => 'Сезнең көндәлек тәртибегез';

  @override
  String get onboard_permissions_title => 'Рөхсәтләр һәм системага керү';

  @override
  String get onboard_permissions_sub =>
      'Синхрон адымнарга, күнегүләргә, искәртмәләргә рөхсәт бирегез.';

  @override
  String get onboard_plan_ready_title => 'Сезнең махсус план әзер!';

  @override
  String get onboard_plan_ready_sub =>
      'Без сезнең өчен йомшак, персональ туклану һәм сәламәтлек юл картасын ясадык.';

  @override
  String get onboard_enter_bloomi => 'Блумига керегез';

  @override
  String get insights_weekly_report => 'Атналык сәламәтлекне кабатлау';

  @override
  String insights_best_day(Object day) {
    return 'Иң яхшы эзлеклелек көне: $day';
  }

  @override
  String get insights_streaks_badges => 'Урамнар һәм вакыйгалар';

  @override
  String insights_unlocked_on(Object date) {
    return '$date ачылды';
  }

  @override
  String get insights_keep_going => 'Фантастик алгарышны дәвам итегез!';

  @override
  String get widgets_title => 'Төп экран виджетлары';

  @override
  String widgets_active_count(Object count) {
    return 'Актив виджетлар: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Адымнар һәм Актив боҗра';

  @override
  String get widgets_water_title => 'Гидратация тиз бүрәнә';

  @override
  String get widgets_mascot_title => 'Блуми талисман иптәше';

  @override
  String get wear_os_title => 'Smartwatch OS киегез';

  @override
  String get wear_os_connected => 'Карарга тоташтырылган';

  @override
  String get wear_os_sync => 'Сайтны карау';

  @override
  String get theme_title => 'Күренеш һәм тема';

  @override
  String get theme_mode => 'Тема режимы';

  @override
  String get theme_light => 'Яктылык';

  @override
  String get theme_dark => 'Караңгы';

  @override
  String get theme_system => 'Килешү системасы';

  @override
  String get theme_background_palette => 'Фон Палитра';

  @override
  String get units_title => 'Asлчәү берәмлекләре';

  @override
  String get units_metric => 'Метрика (кг, см, мл)';

  @override
  String get units_imperial => 'Империя (фунт, флз)';

  @override
  String get home_unable_load => 'Тактага йөкләнә алмый';

  @override
  String get home_health_permission_req =>
      'Сәламәтлекне тоташтыру рөхсәте кирәк';

  @override
  String get home_health_permission_desc =>
      'Bloomi реаль адымнарны, йөрәк тибешен һәм мобиль өй виджетларын синхронлаштыру өчен Health Connect рөхсәтен таләп итә.';

  @override
  String get home_allow_health => 'Сәламәтлеккә тоташырга рөхсәт итегез';

  @override
  String get home_ready_mindful_day => 'Акыллы көнгә әзерме? ✨';

  @override
  String get home_quick_add => 'Тиз өстәү';

  @override
  String get home_live_gps => 'Тере GPS';

  @override
  String get home_calories_remaining_label => 'Калорияләр';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ашагыз: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Су эзләүче өчен тап';

  @override
  String get home_water_goal_reached => 'Көндәлек максат reached җитте';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Көндәлек максатка $remaining мл';
  }

  @override
  String get home_details => 'Детальләр';

  @override
  String get home_upgrade_plan_desc =>
      'Персональләштерелгән көндәлек максатларны һәм ЯИ планын ачу өчен яңарту';

  @override
  String get home_unlock => 'Блокны ачу';

  @override
  String get home_quick_log_hint => 'Сәламәтлекне язуны тиз языгыз';

  @override
  String get food_serving_size => 'Хезмәт күрсәтү күләме';

  @override
  String get food_serving_grams => 'Хезмәт итү (g)';

  @override
  String get food_number_servings => 'Хезмәт күрсәтү саны';

  @override
  String get food_calories_per_serving => 'Хезмәткә калория';

  @override
  String get food_recipe_ingredients => 'Ингредиентлар';

  @override
  String get food_recipe_add_ingredient => 'Ингредиент өстәргә';

  @override
  String get food_recipe_directions => 'Инструкция һәм искәрмәләр';

  @override
  String get food_recipe_total => 'Гомуми рецепт туклануы';

  @override
  String get food_recipe_per_serving => 'Туклануга хезмәт күрсәтү өчен';

  @override
  String get food_recipe_saved_toast => 'Махсус ризык уңышлы сакланган!';

  @override
  String get food_barcode_found => 'Продукция табылды!';

  @override
  String get food_barcode_not_found_desc =>
      'Без бу штрих-кодны ачык мәгълүмат базасында таба алмадык. Сез аны гадәти ризык итеп өсти аласыз.';

  @override
  String get food_add_custom_btn => 'Заказлы ризык өстәргә';

  @override
  String get food_scan_again => 'Тагын сканерлау';

  @override
  String get food_review_items => 'Ачыкланган ризыкларны карау';

  @override
  String get food_review_hint =>
      'Саннарны көйләгез яки танылмаган әйберне бетерегез';

  @override
  String get food_log_selected => 'Сайланган ризыкларны бүрәнә';

  @override
  String get food_favourites_title => 'Яраткан ризыклар';

  @override
  String get food_recent_title => 'Соңгы ризыклар';

  @override
  String get food_no_favourites =>
      'Яраткан ризыклар юк. Монда саклау өчен теләсә нинди ризыкка йөрәк тидерегез.';

  @override
  String get food_no_recents => 'Күптән түгел теркәлгән ризыклар табылмады.';

  @override
  String get food_nutrition_details_title =>
      'Көндәлек туклану турында мәгълүмат';

  @override
  String get food_macro_protein_label => 'Аксымнар бүленеше';

  @override
  String get food_macro_carbs_label => 'Карбс';

  @override
  String get food_macro_fat_label => 'Май бүленеше';

  @override
  String get food_macro_fiber_label => 'Fiberепсел өзелү';

  @override
  String get food_daily_target_comparison => 'Максатлы чагыштыру';

  @override
  String food_target_label(Object target) {
    return 'Максат: $target';
  }

  @override
  String get food_edit_entry => 'Көндәлек язуны үзгәртү';

  @override
  String get food_delete_entry => 'Керүне бетерү';

  @override
  String food_grams_short(Object grams) {
    return '$grams г.';
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
  String get water_intake_history => 'Бүгенге су бүрәнәләре';

  @override
  String get water_no_logs_today =>
      'Бүгенге көндә су кермәгән. Гидратлагыз һәм тиз өстәү төймәсенә басыгыз!';

  @override
  String get water_adjust_goal => 'Көндәлек максатны көйләгез';

  @override
  String get health_connect_banner => 'Сәламәтлеккә тоташу';

  @override
  String get health_vitals_summary => 'Көндәлек сәламәтлек';

  @override
  String get health_latest_heart_rate => 'Соңгы йөрәк тибеше';

  @override
  String get health_latest_bp => 'Кан басымы';

  @override
  String get health_latest_spo2 => 'Кан кислороды';

  @override
  String get health_latest_glucose => 'Кан глюкозасы';

  @override
  String get health_latest_weight => 'Авырлык';

  @override
  String get health_latest_sleep => 'Йокы озынлыгы';

  @override
  String get health_add_manual => 'Кул белән үлчәү өстәгез';

  @override
  String get health_history_trends => 'Тарихи тенденцияләр';

  @override
  String get health_sync_success =>
      'Сәламәтлек мәгълүматлары уңышлы синхронлашты!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours сәг $mins мин';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm сәгать';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг / дЛ';
  }

  @override
  String get health_devices_title => 'Бәйләнгән җайланмалар һәм кием әйберләре';

  @override
  String get health_devices_desc =>
      'Парлы акыллы сәгатьләр, фитнес-трекерлар, сәламәтлек сенсорлары белән идарә итү.';

  @override
  String get health_workout_editor_title => 'Күнегүне үзгәртү';

  @override
  String get health_workout_name_label => 'Күнегүләр исеме';

  @override
  String get health_workout_duration_label => 'Озынлыгы (минутлар)';

  @override
  String get health_workout_calories_label => 'Фаразланган калорияләр (ккал)';

  @override
  String get health_workout_date_label => 'Дата һәм Вакыт';

  @override
  String get plan_daily_wellness_roadmap => 'Сезнең Персональ mл картасы';

  @override
  String get plan_morning_routine => 'Таң тәртибе';

  @override
  String get plan_afternoon_routine => 'Көндезге сәламәтлек';

  @override
  String get plan_evening_routine => 'Кич җиле';

  @override
  String get plan_coach_badge => 'Bloomi AI тренеры';

  @override
  String get plan_weekly_overview => '7 көнлек сәламәтлек фокусы';

  @override
  String get plan_targets_title => 'Сәламәтлек максатлары һәм максатлары';

  @override
  String get plan_calorie_budget_label => 'Көндәлек калория бюджеты';

  @override
  String get plan_water_budget_label => 'Көндәлек су максаты';

  @override
  String get plan_step_budget_label => 'Көндәлек адым максаты';

  @override
  String get plan_macro_split_label => 'Макронутриент коэффициенты';

  @override
  String get profile_personal_details => 'Шәхси мәгълүмат';

  @override
  String get profile_body_stats => 'Тән үлчәүләре';

  @override
  String get profile_app_preferences => 'Өстенлекләр һәм кушымта көйләүләре';

  @override
  String get profile_edit_name_hint => 'Сезнең исем';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Биеклек ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Авырлык ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Яше';

  @override
  String get profile_gender_male => 'Ир-ат';

  @override
  String get profile_gender_female => 'Хатын-кыз';

  @override
  String get profile_gender_other => 'Башка / Әйтмәүне өстен күр';

  @override
  String get profile_activity_sedentary => 'Утырган (күнегүләр аз)';

  @override
  String get profile_activity_light => 'Lightиңел актив (1-3 көн / атна)';

  @override
  String get profile_activity_moderate => 'Уртача актив (3-5 көн / атна)';

  @override
  String get profile_activity_very => 'Бик актив (6-7 көн / атна)';

  @override
  String get settings_wear_os_header => 'ОС иптәш кушымтасын киегез';

  @override
  String get settings_wear_os_desc =>
      'Калория, су һәм адымнарны карау өчен Bloomi плиткасын һәм катлаулыгыгызны Wear OS сәгатенә урнаштырыгыз.';

  @override
  String get settings_widgets_header => 'Интерактив Android Виджетлары';

  @override
  String get settings_widgets_desc =>
      'Реаль вакыттагы виджетларны тиз арада яңарту өчен җайланманың төп экранына урнаштырыгыз.';

  @override
  String get settings_about_header => 'Блуми турында';

  @override
  String get settings_about_version => '1.0.0 версиясе';

  @override
  String get settings_about_build => '100 төзегез';

  @override
  String get settings_about_credits =>
      'Акыллы, сәламәт яшәү өчен кайгыртучанлык белән эшләнгән.';

  @override
  String get settings_terms_header => 'Шартлар';

  @override
  String get settings_privacy_header => 'Хосусыйлык политикасы';

  @override
  String get settings_delete_header => 'Хисапны һәм мәгълүматны бетерү';

  @override
  String get settings_delete_warning =>
      'Бу гамәлне кире кайтарып булмый. Сезнең барлык ашамлыклар, күнегүләр, виталлар, профиль мәңгегә бетереләчәк.';

  @override
  String get settings_delete_confirm_btn => 'Даими бетерү';

  @override
  String get onboard_welcome_headline => 'Блумига рәхим итегез';

  @override
  String get onboard_welcome_tagline =>
      'Сезнең тормышыгызда эшләнгән йомшак, акыллы сәламәтлекне күзәтү.';

  @override
  String get onboard_step_about => 'Синең турында';

  @override
  String get onboard_step_goals => 'Сезнең максатлар';

  @override
  String get onboard_step_lifestyle => 'Көндәлек гадәтләр';

  @override
  String get onboard_step_permissions => 'Рөхсәт';

  @override
  String get onboard_step_plan => 'Әзер!';

  @override
  String get onboard_health_connect_perm => 'Сәламәтлеккә тоташу';

  @override
  String get onboard_step_sensors_perm => 'Адым счетчик сенсоры';

  @override
  String get onboard_notif_perm => 'Акыллы искәртмәләр һәм хәбәрләр';

  @override
  String get onboard_camera_perm => 'Камера (штрих-код һәм азык сканеры)';

  @override
  String get onboard_grant_permissions => 'Грант рөхсәте';

  @override
  String get onboard_continue_dashboard => 'Тактаны ачу';

  @override
  String get notif_channel_hydration_name => 'Гидратлашу';

  @override
  String get notif_channel_hydration_desc => 'Көне буе йомшак су искәртмәләре';

  @override
  String get notif_channel_nutrition_name =>
      'Ашау һәм туклану турында искәртмәләр';

  @override
  String get notif_channel_nutrition_desc =>
      'Иртәнге аш, төшке аш, кичке ашны искә төшерү';

  @override
  String get notif_channel_steps_name => 'Адым этаплары';

  @override
  String get notif_channel_steps_desc => 'Көндәлек адымга ирешкәндә бәйрәмнәр';

  @override
  String get notif_channel_vitals_name => 'Сәламәтлек һәм мөһим тикшерүләр';

  @override
  String get notif_channel_vitals_desc =>
      'Авырлык һәм йокы вакытындагы җил искә төшерүләре';

  @override
  String get notif_action_log_water => '💧 Керү + 250мл';

  @override
  String get notif_action_snooze => '15 м';

  @override
  String get notif_action_log_meal => '🥗 Керү';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
