// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chuvash (`cv`).
class AppLocalizationsCv extends AppLocalizations {
  AppLocalizationsCv([String locale = 'cv']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Килте';

  @override
  String get nav_today => 'Паян';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Апат-ҫимӗҫ';

  @override
  String get nav_food_diary => 'Апат-ҫимӗҫ дневникӗ';

  @override
  String get nav_workout => 'Тренировка журналӗ';

  @override
  String get nav_health => 'Сывлӑх';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Упра';

  @override
  String get cancel => 'Пӑрахӑҫла';

  @override
  String get delete => 'Пӗтер';

  @override
  String get edit => 'Тӳрлет';

  @override
  String get done => 'Пӗтернӗ';

  @override
  String get close => 'Хуп';

  @override
  String get back => 'Каялла';

  @override
  String get next => 'Малалла';

  @override
  String get continue_btn => 'Малалла';

  @override
  String get confirm => 'Ҫирӗплетӗр';

  @override
  String get search => 'Шырав';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Пурте';

  @override
  String get active => 'Активлӑ';

  @override
  String get today => 'Паян';

  @override
  String get yesterday => 'Ӗнер';

  @override
  String get tomorrow => 'Ыран';

  @override
  String get add => 'Хуш';

  @override
  String get remove => 'Кӑларса пӑрахӑр';

  @override
  String get refresh => 'Ҫӗнет';

  @override
  String get retry => 'Тепӗр хут тытӑнса пӑхӑр';

  @override
  String get error => 'Йӑнӑш';

  @override
  String get success => 'Ӑнӑҫу';

  @override
  String get loading => 'Загрузка...';

  @override
  String get no_data => 'Даннӑйсем ҫук';

  @override
  String get offline => 'Офлайн режим';

  @override
  String get offline_sub => 'Улшӑнусем ҫӗнӗрен ҫыхӑнсан синхронизациленӗҫ';

  @override
  String get undo => 'Каялла тавӑр';

  @override
  String get portion => 'Порци';

  @override
  String get quantity => 'Хисеп';

  @override
  String get unit => 'Блок';

  @override
  String get clear => 'Тасат';

  @override
  String get select => 'Суйласа илӗр';

  @override
  String get apply => 'Заявлени';

  @override
  String get reset => 'Сброс';

  @override
  String get ok => 'Юрать';

  @override
  String get yes => 'Ҫапла';

  @override
  String get no => 'Ҫук';

  @override
  String get optional => 'Опциональнӑй';

  @override
  String get calories => 'Калори';

  @override
  String get protein => 'Белок';

  @override
  String get carbs => 'Углеводсем';

  @override
  String get fat => 'Ҫуллӑ';

  @override
  String get fiber => 'Клетчатка';

  @override
  String get water => 'Шыв';

  @override
  String get steps => 'Утӑмсем';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунт';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'в';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'сехет';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Сервировани';

  @override
  String get servings => 'Порцисем';

  @override
  String get serving_size => 'Порци калӑпӑшӗ';

  @override
  String get per_100g => '100 г пуҫне';

  @override
  String get india => 'Инди';

  @override
  String get asia => 'Ази';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Ҫывӑх Хӗвелтухӑҫӗ';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'Килте';

  @override
  String get home_greeting_morning => 'Ырӑ ир';

  @override
  String get home_greeting_afternoon => 'Ырӑ кун пултӑр';

  @override
  String get home_greeting_evening => 'Ырӑ каҫ';

  @override
  String get home_streak_title => 'Блоссом Стрик';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count кун йӗрки',
      one: '1 кун йӗрки',
      zero: '0 кун хушши',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ҫуннӑ';

  @override
  String get home_calories_budget => 'Калори бюджетӗ';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал юлнӑ';
  }

  @override
  String get home_water_title => 'Кунсерен шыв ӗҫни';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Утӑмсем утнӑ';

  @override
  String get home_quick_actions => 'Хӑвӑрт ӗҫсем';

  @override
  String get home_log_meal => 'Пӗрене апачӗ';

  @override
  String get home_log_water => 'Пӗрене шывӗ';

  @override
  String get home_log_workout => 'Журнал тренировки';

  @override
  String get home_log_weight => 'Пӗрене йывӑрӑшӗ';

  @override
  String get home_insights_title => 'Паянхи ӑнланусем';

  @override
  String get home_quote =>
      'Пӗчӗк сывлӑхлӑ суйласа илӳсем чечекленекен улшӑнусем тӑваҫҫӗ.';

  @override
  String get home_ai_coach_tip => 'Блуми ИИ тренерӗ';

  @override
  String get home_surroundings => 'Тавралӑх тата сывлӑш';

  @override
  String get home_notifications => 'Пӗлтерӳсем';

  @override
  String get home_daily_score => 'Кулленхи сывлӑх шайӗ';

  @override
  String get home_view_all => 'Пурне те пӑхӑр';

  @override
  String get food_diary_title => 'Апат-ҫимӗҫ дневникӗ';

  @override
  String get food_breakfast => 'Ирхи апат';

  @override
  String get food_lunch => 'Кӑнтӑрлахи апат';

  @override
  String get food_dinner => 'Каҫхи апат';

  @override
  String get food_snacks => 'Ҫӑкӑр-тӑвар';

  @override
  String get food_add_food => 'Апат-ҫимӗҫ хушӑр';

  @override
  String get food_edit_food => 'Апат-ҫимӗҫе тӳрлет';

  @override
  String get food_add_breakfast => 'Ирхи апат хушӑр';

  @override
  String get food_add_lunch => 'Кӑнтӑрлахи апат хушӑр';

  @override
  String get food_add_dinner => 'Каҫхи апат хушӑр';

  @override
  String get food_add_snack => 'Снек хушӑр';

  @override
  String get food_total_calories => 'Пӗтӗмӗшле калори';

  @override
  String get food_empty_meal =>
      'Ку апат валли хальлӗхе нимӗнле апат-ҫимӗҫ те ҫырса хуман';

  @override
  String get food_empty_diary => 'Ҫак кун апат-ҫимӗҫе ҫырса хуман';

  @override
  String get food_log_first_meal =>
      'Пӗрремӗш тутлӑ апат-ҫимӗҫе ҫырса пыма + пусӑр';

  @override
  String get food_quick_add => 'Хӑвӑрт хуш';

  @override
  String get food_search_hint =>
      'Апат-ҫимӗҫ, ҫимӗҫсем, дал, роти шыраса тупӑр...';

  @override
  String get food_custom_recipe => 'Ятарлӑ апат-ҫимӗҫ тата рецепт';

  @override
  String get food_scan_barcode => 'Штрих-код сканерла';

  @override
  String get food_camera_scan => 'ИИ апат-ҫимӗҫ сканерӗ';

  @override
  String get food_recent => 'Юлашки апат-ҫимӗҫ';

  @override
  String get food_favourites => 'Юратнисем';

  @override
  String get food_macro_summary => 'Макроэлементсен пайланӑвӗ';

  @override
  String get food_delete_meal_confirm =>
      'Эсир ҫак япалана кӑларса пӑрахасшӑн-и?';

  @override
  String get food_item_deleted => 'Апат-ҫимӗҫе кӑларса пӑрахнӑ';

  @override
  String get food_remaining => 'юлнӑ';

  @override
  String get food_consumed => 'ҫисе янӑ';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Апат-ҫимӗҫ шырӑр';

  @override
  String get foodSearch_scan_barcode => 'Штрих-код сканерла';

  @override
  String get foodSearch_take_photo => 'Апат-ҫимӗҫ сӑнӳкерчӗкне ӳкер';

  @override
  String get foodSearch_custom_food => 'Ятарлӑ апат-ҫимӗҫ хатӗрлӗр';

  @override
  String get foodSearch_recent_searches => 'Юлашки шыравсем';

  @override
  String get foodSearch_popular => 'Халӑх хушшинче анлӑ сарӑлнӑ апат-ҫимӗҫ';

  @override
  String get foodSearch_no_results =>
      'Сирӗн шыравпа килӗшсе тӑракан апат-ҫимӗҫ ҫук';

  @override
  String get barcode_title => 'Штрих-код сканерӗ';

  @override
  String get barcode_align => 'Камера рамки ӑшне штрих-кода вырнаҫтарӑр';

  @override
  String get barcode_not_found => 'Продукт базӑра тупӑнман';

  @override
  String get barcode_premium_feature =>
      'Штрих-кодсене сканерлама Bloomi Pro пулӑшать';

  @override
  String get camera_title => 'ИИ апат-ҫимӗҫ сканерӗ';

  @override
  String get camera_tap_hint => 'Хӑвӑрӑн апат-ҫимӗҫе уҫҫӑн ӳкерсе илӗр';

  @override
  String get camera_analysing => 'Апат-ҫимӗҫ турилккисене тишкерни...';

  @override
  String get camera_detected => 'Тупнӑ япаласем';

  @override
  String get camera_flash => 'Flash-а куҫар';

  @override
  String get camera_retake => 'Сӑнӳкерчӗке тепӗр хут ӳкер';

  @override
  String get camera_confirm_food => 'Япаласене ҫирӗплетӗр';

  @override
  String get customFood_title => 'Ятарлӑ апат-ҫимӗҫ тата рецепт';

  @override
  String get customFood_name_hint => 'Апат е ингредиент ячӗ';

  @override
  String get customFood_calories_hint => 'Калори (ккал)';

  @override
  String get customFood_protein_hint => 'Белок (g)';

  @override
  String get customFood_carbs_hint => 'Углеводсем (г)';

  @override
  String get customFood_fat_hint => 'Ҫу (g)';

  @override
  String get customFood_save => 'Рецепта упрӑр';

  @override
  String get water_tracker_title => 'Шыв йӗрлевҫи';

  @override
  String get water_daily_target => 'Кулленхи гидратаци тӗллевӗ';

  @override
  String get water_logged_today => 'Паян ҫырӑннӑ';

  @override
  String get water_add_glass => '+250 мл Стакан';

  @override
  String get water_add_bottle => '+500 мл Кӗленче';

  @override
  String get water_custom_amount => 'Ятарлӑ сумма';

  @override
  String get water_reminder_tip =>
      'Вӑй-хал ҫирӗп пултӑр тесен, кунӗпех тӑтӑшах шыв ӗҫӗр.';

  @override
  String water_logged_toast(Object amount) {
    return 'Ҫырса хунӑ $amount мл шыв 💧';
  }

  @override
  String get workout_title => 'Тренировка журналӗ';

  @override
  String get workout_add_exercise => 'Тренировка хушӑр';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Вӑй';

  @override
  String get workout_yoga => 'Йога тата ҫаврӑнӑҫулӑх';

  @override
  String get workout_duration => 'Вӑхӑт';

  @override
  String get workout_intensity => 'Хӗрӳлӗх';

  @override
  String get workout_calories_burned => 'Ҫунтарнӑ калорисем';

  @override
  String get workout_empty => 'Паян тренировкӑсем ҫук';

  @override
  String get workout_save_success => 'Тренировка ӑнӑҫлӑн упранчӗ!';

  @override
  String get workout_type => 'Тренировка тӗсӗ';

  @override
  String get workout_notes => 'Ҫырусемпе шухӑшсем';

  @override
  String get health_overview_title => 'Сывлӑх тата пурнӑҫ';

  @override
  String get health_heart_rate => 'Чӗре таппи';

  @override
  String get health_blood_oxygen => 'Юнри кислород (SpO2)';

  @override
  String get health_blood_pressure => 'Юн пусӑмӗ';

  @override
  String get health_blood_glucose => 'Юнри глюкоза';

  @override
  String get health_body_temperature => 'Ӳт температури';

  @override
  String get health_sleep_tracking => 'Ыйхӑ сӑнавӗ';

  @override
  String get health_weight_tracking => 'Йывӑрӑш тата ӳт-пӳ составӗ';

  @override
  String get health_waist_hip => 'Пилӗкпе пӗҫӗ шайлашӑвӗ';

  @override
  String get health_devices_hub => 'Устройствӑсем тата ӑслӑ сехетсен центрӗ';

  @override
  String get health_sync_now => 'Сывлӑх даннӑйӗсене синхронизацилесси';

  @override
  String health_last_synced(Object time) {
    return 'Юлашки хут синхронизациленӗ: $time';
  }

  @override
  String get health_manual_entry => 'Сывлӑх алӑпа кӗртни';

  @override
  String get health_metric_detail => 'Метрикӑллӑ детальсем';

  @override
  String get health_connected_sensors => 'Ҫыхӑннӑ сывлӑх сенсорӗсем';

  @override
  String get plan_title => 'Кулленхи план';

  @override
  String get plan_weekly_title => 'Эрнери сывлӑх планӗ';

  @override
  String get plan_calorie_target => 'Калори тӗллевӗ';

  @override
  String get plan_water_target => 'Гидратаци тӗллевӗ';

  @override
  String get plan_step_target => 'Утӑм тӗллевӗ';

  @override
  String get plan_sleep_target => 'Ыйхӑ тӗллевӗ';

  @override
  String get plan_meal_suggestions => 'Апат сӗнӗвӗсем';

  @override
  String get plan_healthy_habits => 'Сывлӑхлӑ йӑласемпе канашсем';

  @override
  String get plan_coach_advice => 'Bloomi AI тренерӗн сӗнӗвӗсем';

  @override
  String get plan_generated_title => 'Персонализациленӗ кулленхи график';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профиле тӳрлет';

  @override
  String get profile_name => 'Ят';

  @override
  String get profile_age => 'Ҫулӗ';

  @override
  String get profile_gender => 'Арлӑх';

  @override
  String get profile_height => 'Ҫӳллӗшӗ';

  @override
  String get profile_weight => 'Йывӑрӑшӗ';

  @override
  String get profile_goal => 'Тӗп тӗллев';

  @override
  String get profile_activity_level => 'Ӗҫ шайӗ';

  @override
  String get profile_stats => 'Манӑн сывлӑх статистики';

  @override
  String get profile_saved => 'Профиль ӑнӑҫлӑн ҫӗнетнӗ';

  @override
  String get profile_bmi => 'Ӳт-пӳ йывӑрӑшӗн индексӗ (BMI)';

  @override
  String get profile_membership => 'Членлӑх';

  @override
  String get settings => 'Настройкӑсем';

  @override
  String get preferences_habits => 'ПРЕФЕРЕНЦИЙӖСЕМ & ЙӐЛӐХСЕМ';

  @override
  String get appearance_theme => 'Сӑн-сӑпат тата тема';

  @override
  String get appearance_theme_sub =>
      'Тӗттӗм, ҫутӑ, системӑллӑ режим тата приложени фонӗн опцийӗсем';

  @override
  String get permissions => 'Ирӗксем тата системӑна кӗме ирӗк';

  @override
  String get permissions_sub =>
      'Сывлӑх ҫыхӑнӑвӗ, утӑм сенсорӗсем, GPS, пӗлтерӳсем тата камера';

  @override
  String get reminders_notifications => 'Аса илтерӳсем тата пӗлтерӳсем';

  @override
  String get reminders_sub =>
      'Апат вӑхӑчӗ, шыв, йывӑрӑша тӗрӗслесси тата ҫывӑрма выртас умӗнхи асаилӳсем';

  @override
  String get units_of_measurement => 'Виҫе единицисем';

  @override
  String get units_sub =>
      'Метрика (кг, см, мл, км) е Империал (фунт, фут/дюйм, фл унци)';

  @override
  String get app_language => 'Приложени чӗлхи';

  @override
  String get language_sub =>
      'Акӑлчан, हिन्दी (хинди), хинглиш тата 195+ тӗнчери чӗлхесем';

  @override
  String get home_screen_widgets => 'Тӗп экран виджетӗсем';

  @override
  String get widgets_sub =>
      'Чӗрӗ Android виджетсем: Хаб, Утӑмсем, Шыв, Апатлану тата Талисман';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Ӑслӑ сехет юлташӗ, плиткӑсем, йывӑрлӑхсем тата чӗрӗ пурнӑҫ';

  @override
  String get goals_wellness => 'Тӗллевсем тата сывлӑх ҫинчен шухӑшлани';

  @override
  String get nutrition_targets => 'Апатлану тӗллевӗсем тата макро пайланӑвӗ';

  @override
  String get nutrition_targets_sub =>
      'Калори тӗллевӗ, белок, углеводсем, ҫу тата шыв тӗллевӗ';

  @override
  String get weekly_recap => 'Эрнере пӗрре сывлӑх ҫинчен пӗтӗмлетӳ';

  @override
  String get weekly_recap_sub =>
      'кунлӑх вӑтам калори, макро шайлашӑвӗ тата чи лайӑх кун';

  @override
  String get streaks_milestones => 'Ҫулсем тата ҫитӗнӳсем';

  @override
  String get streaks_sub => 'Активлӑ чечек йӗрӗсем, значоксем тата ҫитӗнӳсем';

  @override
  String get connected_devices => 'ҪЫХӐННӐ УСТРОЙСТВА & ЭКОСИСТЕМА';

  @override
  String get devices_hub => 'Устройствӑсем тата ӑслӑ сехетсен центрӗ';

  @override
  String get devices_hub_sub =>
      'Сывлӑх ҫыхӑнӑвӗ, Галактика сехечӗ, Пиксель сехечӗ, Гармин';

  @override
  String get surroundings_weather => 'Тавралӑх тата ҫанталӑк';

  @override
  String get surroundings_sub =>
      'Сывлӑш пахалӑхӗ (AQI), УФ индексӗ тата ҫанталӑк гидратаци канашӗсем';

  @override
  String get bloomi_pro => 'Bloomi Pro ҫырӑнӑвӗ';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 тӗп экран виджетӗ тата пурнӑҫри виталсене сӑнаса тӑрасси';

  @override
  String get about_security => 'ҪИНЧЕН & ХӐРӐВЛӐХ';

  @override
  String get about_bloomi => 'Блуми ҫинчен';

  @override
  String get about_bloomi_sub =>
      'Строительство спецификацийӗсем, версийӗ, атрибуцийӗсем';

  @override
  String get privacy_policy => 'Конфиденциаллӑх политики';

  @override
  String get privacy_policy_sub =>
      'Офлайн-пӗрремӗш, хатӗр ҫинчи даннӑйсен архитектури';

  @override
  String get terms_conditions => 'Условисем';

  @override
  String get terms_conditions_sub =>
      'Ӗҫ условийӗсем тата сывлӑх сыхлавӗн йӗркисем';

  @override
  String get delete_account => 'Аккаунтпа даннӑйсене пӗтерӗр';

  @override
  String get delete_account_sub =>
      'Вырӑнти SQLite даннӑйӗсене тата пӗлӗтри резерв копийӗсене каялла тавӑрмалла мар ҫухатмалла';

  @override
  String get healthy_habits => 'Ҫемҫе те ҫирӗп сывлӑх йӑлисене йӗркелесе пырӑр';

  @override
  String get all_logs => 'Манӑн сӑнанӑ даннӑйсемпе журналсем';

  @override
  String get search_language => 'Чӗлхе е тӑван ҫыру тӑрӑх шыра...';

  @override
  String get languages_available => 'Пур чӗлхесем';

  @override
  String get no_matching_languages => 'Пӗр пек чӗлхесем тупӑнман';

  @override
  String get try_searching =>
      'Тӑван ҫыру е акӑлчан орфографийӗ тӑрӑх шыраса пӑхӑр';

  @override
  String get partially_translated => 'Пӗр пайне куҫарнӑ';

  @override
  String get complete_translation => 'Пӗтӗм';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Чӗлхене $name ( $nativeName ) лартнӑ';
  }

  @override
  String get surroundings_title => 'Тавралӑх тата тавралӑх';

  @override
  String get surroundings_aqi => 'Сывлӑш пахалӑхӗн индексӗ';

  @override
  String get surroundings_uv => 'УФ индексӗ';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Нӳрлӗх';

  @override
  String get surroundings_hydration_advice =>
      'Хальхи ҫанталӑкра шыв лайӑх ӗҫмелле.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Апат-ҫимӗҫ шырӑр';

  @override
  String get food_quick_barcode => 'Штрих-код сканерла 👑';

  @override
  String get food_quick_water => 'Шыв хушӑр';

  @override
  String get food_quick_custom => 'Ятарлӑ апат-ҫимӗҫ';

  @override
  String get surroundings_good => 'Лайӑх';

  @override
  String get surroundings_moderate => 'Вӑтам';

  @override
  String get surroundings_unhealthy => 'Сывӑ мар';

  @override
  String get notifications_title => 'Пӗлтерӳсемпе систерӳсем';

  @override
  String get notifications_empty => 'Ҫӗнӗ пӗлтерӳсем ҫук';

  @override
  String get notifications_mark_read => 'Пурне те вуланӑ тесе паллӑ тӑвӑр';

  @override
  String get notifications_clear => 'Пурне те тасат';

  @override
  String get reminders => 'Аса илтерекен настройкӑсем';

  @override
  String get notifications => 'Пӗлтерӳсем';

  @override
  String get reminders_breakfast_title => 'Ирхи апат ҫинчен аса илтерни 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ырӑ кун пултӑр! $time сехетре тутлӑ ирхи апат ҫиме вӑхӑт.';
  }

  @override
  String get reminders_lunch_title => 'Кӑнтӑрлахи апат ҫинчен аса илтерни 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time сехетре чарӑнса тӑрӑр та шайлашуллӑ та ӑслӑ кӑнтӑрлахи апатпа киленӗр.';
  }

  @override
  String get reminders_dinner_title => 'Апат ҫинчен аса илтерни 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time сехетре ҫӑмӑл та тутлӑ апат ҫиме вӑхӑт.';
  }

  @override
  String get reminders_water_title => 'Гидратаци 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Пӗр стакан шыв ӗҫме вӑхӑт! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Эрнере пӗрре виҫесси ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) ҫинче хӑвӑрӑн эрнере пӗрре ӳт-пӳ кӑтартӑвӗсене сӑнаса тӑрӑр.';
  }

  @override
  String get reminders_sleep_title => 'Ҫывӑрма выртас умӗн Ҫил-тӑвӑл 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Канӑр та канлӗ ҫывӑрма хатӗрленӗр ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi ҫине хапӑл туса кӗтетпӗр';

  @override
  String get onboard_sub =>
      'Сирӗн туслӑ, офлайн-пӗрремӗш сывлӑх тата апатлану юлташӗ.';

  @override
  String get onboard_get_started => 'Пуҫла';

  @override
  String get onboard_sign_in => 'Кӗр';

  @override
  String get onboard_skip => 'Сиктерсе хӑвар';

  @override
  String get onboard_choose_goal => 'Сирӗн тӗп сывлӑх тӗллевӗ мӗнле?';

  @override
  String get onboard_goal_weight_loss => 'Ҫемҫен йывӑрӑша чакарни';

  @override
  String get onboard_goal_muscle => 'Мышца ӳсӗмӗ тата вӑйӗ';

  @override
  String get onboard_goal_energy => 'Кулленхи вӑй-хал тата чӗрӗлӗх';

  @override
  String get onboard_goal_habits => 'Сывӑ ӑслӑ апатлану';

  @override
  String get onboard_about_you => 'Хӑвӑр ҫинчен каласа парӑр';

  @override
  String get onboard_lifestyle => 'Сирӗн кулленхи йӗрке';

  @override
  String get onboard_permissions_title => 'Ирӗксем тата системӑна кӗме ирӗк';

  @override
  String get onboard_permissions_sub =>
      'Синхронизаци утӑмӗсене, тренировкӑсене тата аса илтерӳсене кӗме ирӗк парӑр.';

  @override
  String get onboard_plan_ready_title => 'Сирӗн ятарлӑ план хатӗр!';

  @override
  String get onboard_plan_ready_sub =>
      'Эпир сирӗн валли ҫемҫе, персонализациленӗ апатлану тата сывлӑх ҫул-йӗр карттине хатӗрлерӗмӗр.';

  @override
  String get onboard_enter_bloomi => 'Bloomi кӗрӗр';

  @override
  String get insights_weekly_report => 'Эрнере пӗрре сывлӑх ҫинчен пӗтӗмлетӳ';

  @override
  String insights_best_day(Object day) {
    return 'Чи лайӑх ҫирӗплӗх кунӗ: $day';
  }

  @override
  String get insights_streaks_badges => 'Ҫулсем тата ҫитӗнӳсем';

  @override
  String insights_unlocked_on(Object date) {
    return '$date ҫинче уҫӑлнӑ';
  }

  @override
  String get insights_keep_going => 'Тӗлӗнмелле ҫитӗнӳсене малалла тӑсӑр!';

  @override
  String get widgets_title => 'Тӗп экран виджетӗсем';

  @override
  String widgets_active_count(Object count) {
    return 'Активлӑ виджетсем: $count';
  }

  @override
  String get widgets_hub_title => 'Блуми Велнесс Хаб';

  @override
  String get widgets_steps_title => 'Утӑмсем тата активлӑ ҫӗрӗ';

  @override
  String get widgets_water_title => 'Гидратаци хӑвӑрт журналӗ';

  @override
  String get widgets_mascot_title => 'Блуми талисман юлташӗ';

  @override
  String get wear_os_title => 'OS Smartwatch тӑхӑнӑр';

  @override
  String get wear_os_connected => 'Сехетпе ҫыхӑннӑ';

  @override
  String get wear_os_sync => 'Сехет даннӑйӗсене синхронизацилесси';

  @override
  String get theme_title => 'Сӑн-сӑпат тата тема';

  @override
  String get theme_mode => 'Тема режимӗ';

  @override
  String get theme_light => 'Ҫутӑ';

  @override
  String get theme_dark => 'Тӗттӗм';

  @override
  String get theme_system => 'Система стандартлӑ';

  @override
  String get theme_background_palette => 'Фон палитри';

  @override
  String get units_title => 'Виҫе единицисем';

  @override
  String get units_metric => 'Метрика (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дюйм, фл унци)';

  @override
  String get home_unable_load => 'Приборсен панелне ҫӗклеме май ҫук';

  @override
  String get home_health_permission_req => 'Health Connect ирӗкӗ кирлӗ';

  @override
  String get home_health_permission_desc =>
      'Bloomi чӑн-чӑн утӑмсене, чӗре таппи тата куҫса ҫӳрекен ҫурт виджетӗсене чӑн вӑхӑтра синхронизацилеме Health Connect ирӗкне ыйтать.';

  @override
  String get home_allow_health => 'Сывлӑх ҫыхӑнӑвне ирӗк парӑр';

  @override
  String get home_ready_mindful_day => 'Ӑслӑ кун валли хатӗр-и? ✨';

  @override
  String get home_quick_add => 'Хӑвӑрт хуш';

  @override
  String get home_live_gps => 'Чӗрӗ GPS';

  @override
  String get home_calories_remaining_label => 'КАЛОРИСЕМ ЮЛНӐ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ҫинӗ: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Шыв йӗрлевҫи валли кран 💧';

  @override
  String get home_water_goal_reached => 'Кулленхи тӗллеве пурнӑҫланӑ 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл кулленхи тӗллев патне';
  }

  @override
  String get home_details => 'Тӗплӗнрех';

  @override
  String get home_upgrade_plan_desc =>
      'Персонализациленӗ кулленхи тӗллевсене тата ИИ планне уҫма ҫӗнетмелле';

  @override
  String get home_unlock => 'Уҫӑр 👑';

  @override
  String get home_quick_log_hint => 'Сывлӑх ҫырӑвне хӑвӑрт ҫырса илӗр';

  @override
  String get food_serving_size => 'Порци калӑпӑшӗ';

  @override
  String get food_serving_grams => 'Ҫитересси (g)';

  @override
  String get food_number_servings => 'Порцисен шучӗ';

  @override
  String get food_calories_per_serving => 'Пӗр порцире калори';

  @override
  String get food_recipe_ingredients => 'Ингредиентсем';

  @override
  String get food_recipe_add_ingredient => 'Ингредиент хушӑр';

  @override
  String get food_recipe_directions => 'Инструкцисемпе заметкӑсем';

  @override
  String get food_recipe_total => 'Пӗтӗмӗшле рецепт апатланӑвӗ';

  @override
  String get food_recipe_per_serving => 'Пӗр порци апатланӑвӗ';

  @override
  String get food_recipe_saved_toast =>
      'Ятарлӑ апат-ҫимӗҫе ӑнӑҫлӑн перекетленӗ!';

  @override
  String get food_barcode_found => 'Продукт тупӑнчӗ!';

  @override
  String get food_barcode_not_found_desc =>
      'Эпир ҫак штрих-кода уҫӑ базӑра тупаймарӑмӑр. Ӑна ятарлӑ апат пек хушма пулать.';

  @override
  String get food_add_custom_btn => 'Ятарлӑ апат-ҫимӗҫ хушӑр';

  @override
  String get food_scan_again => 'Тепӗр хут сканерла';

  @override
  String get food_review_items => 'Тупнӑ апат-ҫимӗҫе пӑхса тухӑр';

  @override
  String get food_review_hint =>
      'Йышсене тӳрлетӗр е паллӑ мар япалана кӑларса пӑрахӑр';

  @override
  String get food_log_selected => 'Суйласа илнӗ апат-ҫимӗҫе ҫырса хурӑр';

  @override
  String get food_favourites_title => 'Юратнӑ апат-ҫимӗҫ';

  @override
  String get food_recent_title => 'Юлашки апат-ҫимӗҫ';

  @override
  String get food_no_favourites =>
      'Юратнӑ апат-ҫимӗҫ ҫук-ха. Кунта перекетлеме кирек мӗнле апат-ҫимӗҫе те чӗререн ҫапӑр.';

  @override
  String get food_no_recents =>
      'Нумаях пулмасть ҫырса илнӗ апат-ҫимӗҫ тупӑнман.';

  @override
  String get food_nutrition_details_title => 'Кулленхи апатлану ҫинчен';

  @override
  String get food_macro_protein_label => 'Белок пайланӑвӗ';

  @override
  String get food_macro_carbs_label => 'Углеводсен пайланӑвӗ';

  @override
  String get food_macro_fat_label => 'Ҫу пайланӑвӗ';

  @override
  String get food_macro_fiber_label => 'Сӳс ҫӗмӗрӗлни';

  @override
  String get food_daily_target_comparison => 'Тӗллев танлаштарӑвӗ';

  @override
  String food_target_label(Object target) {
    return 'Тӗллев: $target';
  }

  @override
  String get food_edit_entry => 'Дневник ҫырӑвне тӳрлет';

  @override
  String get food_delete_entry => 'Ҫырӑва пӗтермелле';

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
    return '$current $target мл';
  }

  @override
  String get water_intake_history => 'Паянхи шыв ҫырӑвӗсем';

  @override
  String get water_no_logs_today =>
      'Паян шыв ҫук-ха. Шыв ӗҫтерӗр те хӑвӑрт хушмалли кнопкӑна пусӑр!';

  @override
  String get water_adjust_goal => 'Кулленхи тӗллеве тӳрлетӗр';

  @override
  String get health_connect_banner => 'Сывлӑх ҫыхӑнӑвӗпе ҫыхӑннӑ';

  @override
  String get health_vitals_summary => 'Кулленхи сывлӑх';

  @override
  String get health_latest_heart_rate => 'Юлашки чӗре таппи';

  @override
  String get health_latest_bp => 'Юн пусӑмӗ';

  @override
  String get health_latest_spo2 => 'Юнри кислород';

  @override
  String get health_latest_glucose => 'Юнри глюкоза';

  @override
  String get health_latest_weight => 'Йывӑрӑшӗ';

  @override
  String get health_latest_sleep => 'Ыйхӑ вӑхӑчӗ';

  @override
  String get health_add_manual => 'Алӑпа виҫессине хушӑр';

  @override
  String get health_history_trends => 'Историллӗ юхӑмсем';

  @override
  String get health_sync_success =>
      'Сывлӑх даннӑйӗсем ӑнӑҫлӑн синхронизациленнӗ!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours сехет $mins мин';
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
  String get health_devices_title =>
      'Ҫыхӑннӑ хатӗрсем тата тӑхӑнмалли хатӗрсем';

  @override
  String get health_devices_desc =>
      'Мӑшӑрлӑ ӑслӑ сехетсене, фитнес-трекерсене тата сывлӑх сенсорӗсене тытса пырӑр.';

  @override
  String get health_workout_editor_title => 'Тӳрлетӳ тренировки';

  @override
  String get health_workout_name_label => 'Тренировка ячӗ';

  @override
  String get health_workout_duration_label => 'Вӑхӑчӗ (минутсем)';

  @override
  String get health_workout_calories_label => 'Хакланӑ калорисем (ккал)';

  @override
  String get health_workout_date_label => 'Кун тата вӑхӑт';

  @override
  String get plan_daily_wellness_roadmap =>
      'Сирӗн персонализациленӗ ҫул-йӗр картти';

  @override
  String get plan_morning_routine => 'Ирхи йӗрке';

  @override
  String get plan_afternoon_routine => 'Кӑнтӑрлахи сывлӑх';

  @override
  String get plan_evening_routine => 'Каҫхи ҫил-тӑвӑл';

  @override
  String get plan_coach_badge => 'Блуми ИИ тренерӗ';

  @override
  String get plan_weekly_overview => '7-кунлӑх сывлӑх ҫине тимлӗх уйӑрасси';

  @override
  String get plan_targets_title => 'Сывлӑх тӗллевӗсем тата тӗллевӗсем';

  @override
  String get plan_calorie_budget_label => 'Кулленхи калори бюджечӗ';

  @override
  String get plan_water_budget_label => 'Кулленхи шыв тӗллевӗ';

  @override
  String get plan_step_budget_label => 'Кулленхи утӑм тӗллевӗ';

  @override
  String get plan_macro_split_label => 'Макроэлементсен шайлашӑвӗ';

  @override
  String get profile_personal_details => 'Харпӑр хӑйӗн даннӑйӗсем';

  @override
  String get profile_body_stats => 'Кӗлетке виҫисем';

  @override
  String get profile_app_preferences => 'Настройки и настройки приложений';

  @override
  String get profile_edit_name_hint => 'Санӑн яту';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ҫӳллӗшӗ ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Йывӑрӑшӗ ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Ҫулӗ';

  @override
  String get profile_gender_male => 'Арҫын';

  @override
  String get profile_gender_female => 'Хӗрарӑм';

  @override
  String get profile_gender_other => 'Ытти / Каласшӑн мар';

  @override
  String get profile_activity_sedentary =>
      'Ларса ҫӳрекен (сахал е пачах та хусканусем туман)';

  @override
  String get profile_activity_light => 'Ҫӑмӑл хастар (1-3 кун/эрне)';

  @override
  String get profile_activity_moderate => 'Вӑтам хастарлӑх (3-5 кун/эрне)';

  @override
  String get profile_activity_very => 'Питӗ хастар (6-7 кун/эрне)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Калори, шыв тата утӑмсем ҫине пӑхма Wear OS сехечӗ ҫине Bloomi плиткине тата йывӑрлӑхне вырнаҫтарӑр.';

  @override
  String get settings_widgets_header => 'Интерактивлӑ Android виджетсем';

  @override
  String get settings_widgets_desc =>
      'Ҫийӗнчех ҫӗнетме хӑвӑрӑн устройствӑн тӗп экранӗ ҫине чӑн-чӑн вӑхӑтри виджетсене ҫирӗплетӗр.';

  @override
  String get settings_about_header => 'Блуми ҫинчен';

  @override
  String get settings_about_version => '1.0.0 верси';

  @override
  String get settings_about_build => '100 тӑвӑр';

  @override
  String get settings_about_credits => 'Ӑслӑ, сывӑ пурнӑҫшӑн тӑрӑшса тунӑ.';

  @override
  String get settings_terms_header => 'Условисем';

  @override
  String get settings_privacy_header => 'Конфиденциаллӑх политики';

  @override
  String get settings_delete_header => 'Аккаунтпа даннӑйсене пӗтерӗр';

  @override
  String get settings_delete_warning =>
      'Ку ӗҫе каялла тавӑрма май ҫук. Сирӗн мӗнпур апат-ҫимӗҫ, тренировкӑсем, пурнӑҫ ҫинчен калакан даннӑйсем тата профиль яланлӑхах пӗтӗҫ.';

  @override
  String get settings_delete_confirm_btn => 'Яланлӑхах пӗтермелле';

  @override
  String get onboard_welcome_headline => 'Bloomi ҫине хапӑл туса кӗтетпӗр ✨';

  @override
  String get onboard_welcome_tagline =>
      'Сирӗн пурнӑҫ тавра йӗркеленӗ ҫемҫе, ӑслӑ сывлӑх сыхлавӗ.';

  @override
  String get onboard_step_about => 'Сирӗн ҫинчен';

  @override
  String get onboard_step_goals => 'Сирӗн тӗллевсем';

  @override
  String get onboard_step_lifestyle => 'Кулленхи йӑласем';

  @override
  String get onboard_step_permissions => 'Ирӗксем';

  @override
  String get onboard_step_plan => 'Хатӗр!';

  @override
  String get onboard_health_connect_perm => 'Сывлӑх ҫыхӑнӑвӗн ҫыхӑнӑвӗ';

  @override
  String get onboard_step_sensors_perm => 'Утӑм шутлав датчикӗ';

  @override
  String get onboard_notif_perm => 'Ӑслӑ асаилӳсемпе пӗлтерӳсем';

  @override
  String get onboard_camera_perm =>
      'Камера (штрих-код тата апат-ҫимӗҫ сканерӗ)';

  @override
  String get onboard_grant_permissions => 'Ирӗксем парӑр';

  @override
  String get onboard_continue_dashboard => 'Приборсен панелне уҫӑр';

  @override
  String get notif_channel_hydration_name => 'Гидратаци ҫивӗчлӗхӗсем';

  @override
  String get notif_channel_hydration_desc =>
      'Кунӗпех ҫемҫе шыв аса илтерекенсем';

  @override
  String get notif_channel_nutrition_name =>
      'Апат тата апатлану ҫинчен аса илтерекенсем';

  @override
  String get notif_channel_nutrition_desc =>
      'Ирхи, кӑнтӑрлахи тата каҫхи апат ҫинчен аса илтерекен сигналсем';

  @override
  String get notif_channel_steps_name => 'Утӑм ҫул-йӗрӗсем';

  @override
  String get notif_channel_steps_desc =>
      'Кулленхи утӑм тӗллевӗсене пурнӑҫланӑ чухнехи уявсем';

  @override
  String get notif_channel_vitals_name => 'Сывлӑх тата пурнӑҫ шайне тӗрӗслесси';

  @override
  String get notif_channel_vitals_desc =>
      'Йывӑрӑш тата ҫывӑрма выртас умӗнхи ҫил ҫинчен аса илтерекенсем';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => 'Ҫывӑр 15м';

  @override
  String get notif_action_log_meal => '🥗 Пӗрене апачӗ';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
