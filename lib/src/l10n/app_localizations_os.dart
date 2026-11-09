// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ossetian Ossetic (`os`).
class AppLocalizationsOs extends AppLocalizations {
  AppLocalizationsOs([String locale = 'os']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Хæдзар';

  @override
  String get nav_today => 'Абон';

  @override
  String get nav_plan => 'Пълан';

  @override
  String get nav_food => 'Хæринаг';

  @override
  String get nav_food_diary => 'Хæринæгты боныг';

  @override
  String get nav_workout => 'Тренировкæты журнал';

  @override
  String get nav_health => 'Æнæниздзинад';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Хъахъхъæнын';

  @override
  String get cancel => 'Æрлæууын кæнын';

  @override
  String get delete => 'Сæфт';

  @override
  String get edit => 'Раивын';

  @override
  String get done => 'Арæзт';

  @override
  String get close => 'Сæхгæнын';

  @override
  String get back => 'Фæстæмæ';

  @override
  String get next => 'Дарддæр';

  @override
  String get continue_btn => 'Дарддæр';

  @override
  String get confirm => 'Сбæлвырд кæнын';

  @override
  String get search => 'Агур';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Æппæт';

  @override
  String get active => 'Активон';

  @override
  String get today => 'Абон';

  @override
  String get yesterday => 'Знон';

  @override
  String get tomorrow => 'Райсом';

  @override
  String get add => 'Бафтауын';

  @override
  String get remove => 'Аппарын';

  @override
  String get refresh => 'Сног кæнын';

  @override
  String get retry => 'Ногæй бафæлвар';

  @override
  String get error => 'Рæдыд';

  @override
  String get success => 'Æнтыст';

  @override
  String get loading => 'Æрбакæнын...';

  @override
  String get no_data => 'Бæрæггæнæнтæ нæй';

  @override
  String get offline => 'Офлайн режим';

  @override
  String get offline_sub =>
      'Ивддзинæдтæ синхронизацигонд æрцæудзысты, ногæй куы баиу уой, уæд';

  @override
  String get undo => 'Æрæвæрын';

  @override
  String get portion => 'хай';

  @override
  String get quantity => 'Бæрц';

  @override
  String get unit => 'Иуæг';

  @override
  String get clear => 'Сыгъдæг кæнын';

  @override
  String get select => 'Равзарут';

  @override
  String get apply => 'Курдиат бадæттын';

  @override
  String get reset => 'Сног кæнын';

  @override
  String get ok => 'Хорз';

  @override
  String get yes => 'О';

  @override
  String get no => 'Нæ';

  @override
  String get optional => 'Фæндонмæ гæсгæ';

  @override
  String get calories => 'Калоритæ';

  @override
  String get protein => 'Белок';

  @override
  String get carbs => 'Углеводтæ';

  @override
  String get fat => 'Ссад';

  @override
  String get fiber => 'Æфсæйнаг';

  @override
  String get water => 'Дон';

  @override
  String get steps => 'Къахдзæфтæ';

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
  String get bpm => 'bpm';

  @override
  String get hours => 'сахаттæ';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Лæггад кæнын';

  @override
  String get servings => 'Хæйттæ';

  @override
  String get serving_size => 'Порцийы бæрц';

  @override
  String get per_100g => '100г-æн';

  @override
  String get india => 'Инди';

  @override
  String get asia => 'Ази';

  @override
  String get europe => 'Европæ';

  @override
  String get middle_east => 'Æввахс Скæсæн';

  @override
  String get africa => 'Африкæ';

  @override
  String get americas => 'Америкæ';

  @override
  String get home_title => 'Хæдзар';

  @override
  String get home_greeting_morning => 'Дæ бон хорз';

  @override
  String get home_greeting_afternoon => 'Уæ бонтæ хорз';

  @override
  String get home_greeting_evening => 'Дæ изæр хорз';

  @override
  String get home_streak_title => 'Блоссом Стрик';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count боны æмгъуыд',
      one: '1 боны æмгъуыд',
      zero: '0 боны æмгъуыд',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Сыгъд';

  @override
  String get home_calories_budget => 'Калориты бюджет';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал баззайæг';
  }

  @override
  String get home_water_title => 'Æрвылбонон дон';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Къахдзæфтæ';

  @override
  String get home_quick_actions => 'Тагъд архайдтытæ';

  @override
  String get home_log_meal => 'Хъæдын хæринаг';

  @override
  String get home_log_water => 'Хъæдын дон';

  @override
  String get home_log_workout => 'Лог-тренировкæ';

  @override
  String get home_log_weight => 'Бæрзæнды уæз';

  @override
  String get home_insights_title => 'Абоны æмбарынад';

  @override
  String get home_quote =>
      'Чысыл æнæниз равзæрстытæ æвзæрын кæнынц дидинæг калæг ивддзинæдтæ.';

  @override
  String get home_ai_coach_tip => 'Блумийы тренер';

  @override
  String get home_surroundings => 'Алфамбылай æмæ уæлдæф';

  @override
  String get home_notifications => 'Хъусынгæнинæгтæ';

  @override
  String get home_daily_score => 'Æрвылбонон æнæниздзинады бæрæггæнæн';

  @override
  String get home_view_all => 'Æппæт дæр фенын';

  @override
  String get food_diary_title => 'Хæринæгты боныг';

  @override
  String get food_breakfast => 'Райсомæй хæрд';

  @override
  String get food_lunch => 'Æхсæвæр';

  @override
  String get food_dinner => 'Сихор';

  @override
  String get food_snacks => 'Закускæтæ';

  @override
  String get food_add_food => 'Бафтауын хæринаг';

  @override
  String get food_edit_food => 'Хæринаг ивын';

  @override
  String get food_add_breakfast => 'Райсомæй хæринаг бафтауын';

  @override
  String get food_add_lunch => 'Бафтау æхсæвæр';

  @override
  String get food_add_dinner => 'Бафтау сихор';

  @override
  String get food_add_snack => 'Бафтауын æхсæвæр';

  @override
  String get food_total_calories => 'Æдæппæт калоритæ';

  @override
  String get food_empty_meal => 'Нырма хæринæгтæ нæй фыст ацы хæринагæн';

  @override
  String get food_empty_diary => 'Ацы бон хæринæгтæ нæй фыст';

  @override
  String get food_log_first_meal =>
      'Æрцауындзут +, цæмæй ныффыссат уæ фыццаг адджын хæринаг';

  @override
  String get food_quick_add => 'Тагъд бафтауын';

  @override
  String get food_search_hint => 'Агур хæринæгтæ, дыргътæ, дал, роти...';

  @override
  String get food_custom_recipe => 'Æмбæлон хæринæгтæ æмæ рецепт';

  @override
  String get food_scan_barcode => 'Скан штрих-код';

  @override
  String get food_camera_scan => 'AI хæринаджы сканер';

  @override
  String get food_recent => 'Фæстаг хæринæгтæ';

  @override
  String get food_favourites => 'Уарзондæртæ';

  @override
  String get food_macro_summary => 'Макроэлементты ныппырх';

  @override
  String get food_delete_meal_confirm =>
      'Æцæг дæ фæнды ацы дзаума аиуварс кæнын?';

  @override
  String get food_item_deleted => 'Хæринаг ист æрцыд';

  @override
  String get food_remaining => 'баззайæг';

  @override
  String get food_consumed => 'хардзгонд';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Агур хæринæгтæ';

  @override
  String get foodSearch_scan_barcode => 'Скан штрих-код';

  @override
  String get foodSearch_take_photo => 'Хæринаджы къам';

  @override
  String get foodSearch_custom_food => 'Сараз индивидуалон хæринаг';

  @override
  String get foodSearch_recent_searches => 'Фæстаг агурæнтæ';

  @override
  String get foodSearch_popular => 'Популярон хæринæгтæ';

  @override
  String get foodSearch_no_results =>
      'Нæй хæринæгтæ, кæцытæ æмбæлынц дæ агурæнмæ';

  @override
  String get barcode_title => 'Штрих-кодты сканер';

  @override
  String get barcode_align => 'Æрæвæрут штрих-код камерæйы мидæг';

  @override
  String get barcode_not_found => 'Продукт нæ ссардæуыд бæрæггæнæнты базæйы';

  @override
  String get barcode_premium_feature =>
      'Штрих-код сканер кæнын гæнæн ис Bloomi Pro-йы фæрцы';

  @override
  String get camera_title => 'AI хæринаджы сканер';

  @override
  String get camera_tap_hint => 'Дæ хæринаджы ирд къам сисын';

  @override
  String get camera_analysing => 'Хæринаджы фынг анализ кæнын...';

  @override
  String get camera_detected => 'Сбæрæггонд дзаумæттæ';

  @override
  String get camera_flash => 'Флеш ивын';

  @override
  String get camera_retake => 'Фото ногæй сисын';

  @override
  String get camera_confirm_food => 'Дзаумæттæ сбæлвырд кæнын';

  @override
  String get customFood_title => 'Æмбæлон хæринæгтæ æмæ рецепт';

  @override
  String get customFood_name_hint => 'Хæринаг кæнæ ингредиентты ном';

  @override
  String get customFood_calories_hint => 'Калоритæ (ккал)';

  @override
  String get customFood_protein_hint => 'Белок (g)';

  @override
  String get customFood_carbs_hint => 'Углеводтæ (г)';

  @override
  String get customFood_fat_hint => 'Ссад (г)';

  @override
  String get customFood_save => 'Рецепт бахъахъхъæнын';

  @override
  String get water_tracker_title => 'Доны фæдæвзарæг';

  @override
  String get water_daily_target => 'Æрвылбонон донæй пайда кæныны нысан';

  @override
  String get water_logged_today => 'Абон бацыд';

  @override
  String get water_add_glass => '+250 мл Рудзынг';

  @override
  String get water_add_bottle => '+500 мл Бутылкæ';

  @override
  String get water_custom_amount => 'Æмбæлон бæрц';

  @override
  String get water_reminder_tip =>
      'Æнæхъæн бон æдзухдæр нуаз дон, цæмæй дæ хъару уа æнæфæцудгæ.';

  @override
  String water_logged_toast(Object amount) {
    return 'Фыст $amount мл дон 💧';
  }

  @override
  String get workout_title => 'Тренировкæты журнал';

  @override
  String get workout_add_exercise => 'Бафтауын тренировкæ';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Тых';

  @override
  String get workout_yoga => 'Йога æмæ æнæфæцудгæдзинад';

  @override
  String get workout_duration => 'Дæргъвæтиндзинад';

  @override
  String get workout_intensity => 'Интенсивондзинад';

  @override
  String get workout_calories_burned => 'Сыгъд калоритæ';

  @override
  String get workout_empty => 'Абон нæй фыст тренировкæтæ';

  @override
  String get workout_save_success => 'Тренировкæ æнтыстджынæй фервæзт!';

  @override
  String get workout_type => 'Тренировкæйы хуыз';

  @override
  String get workout_notes => 'Фиппаинæгтæ æмæ хъуыдытæ';

  @override
  String get health_overview_title => 'Æнæниздзинад æмæ æнæниздзинад';

  @override
  String get health_heart_rate => 'Зæрдæйы æхситт';

  @override
  String get health_blood_oxygen => 'Туджы кислород (SpO2)';

  @override
  String get health_blood_pressure => 'Туджы æлхъывдад';

  @override
  String get health_blood_glucose => 'Туджы глюкозæ';

  @override
  String get health_body_temperature => 'Буары температурæ';

  @override
  String get health_sleep_tracking => 'Фынæйы фæдыл цæуын';

  @override
  String get health_weight_tracking => 'Уæз æмæ буары сконд';

  @override
  String get health_waist_hip => 'Æфсæр æмæ риуы нымæц';

  @override
  String get health_devices_hub => 'Аппараттæ æмæ смартсахатты центр';

  @override
  String get health_sync_now => 'Æнæниздзинады бæрæггæнæнтæ синхронизаци кæнын';

  @override
  String health_last_synced(Object time) {
    return 'Фæстаг синхронизаци: $time';
  }

  @override
  String get health_manual_entry => 'Æнæниздзинады къухæй фыст';

  @override
  String get health_metric_detail => 'Метрикæйы лыстæгдзинæдтæ';

  @override
  String get health_connected_sensors => 'Баст æнæниздзинады датчиктæ';

  @override
  String get plan_title => 'Æрвылбонон пълан';

  @override
  String get plan_weekly_title => 'Æрвылкъуырион æнæниздзинады пълан';

  @override
  String get plan_calorie_target => 'Калориты нысан';

  @override
  String get plan_water_target => 'Нысан донæй ифтонг кæнынæн';

  @override
  String get plan_step_target => 'Къахдзæф Нысан';

  @override
  String get plan_sleep_target => 'Фынæйы нысан';

  @override
  String get plan_meal_suggestions => 'Хæринæгты фæндæттæ';

  @override
  String get plan_healthy_habits => 'Æнæниз æгъдæуттæ æмæ уынаффæтæ';

  @override
  String get plan_coach_advice => 'Bloomi AI тренеры рекомендацитæ';

  @override
  String get plan_generated_title => 'Персонализацигонд æрвылбонон график';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профиль ивын';

  @override
  String get profile_name => 'Ном';

  @override
  String get profile_age => 'Кар';

  @override
  String get profile_gender => 'Нæлгоймаг æви сылгоймаг';

  @override
  String get profile_height => 'Бæрзæнд';

  @override
  String get profile_weight => 'Уæз';

  @override
  String get profile_goal => 'Сæйраг нысан';

  @override
  String get profile_activity_level => 'Архайды æмвæзад';

  @override
  String get profile_stats => 'Мæ æнæниздзинады статистикæ';

  @override
  String get profile_saved => 'Профил æнтыстджынæй ноггонд æрцыд';

  @override
  String get profile_bmi => 'Буары уæзы индекс (БМИ)';

  @override
  String get profile_membership => 'Уæнгдзинад';

  @override
  String get settings => 'Параметртæ';

  @override
  String get preferences_habits => 'УАРЗОНДТÆ ÆМÆ ÆГЪДТÆ';

  @override
  String get appearance_theme => 'Æддаг бакаст æмæ темæ';

  @override
  String get appearance_theme_sub =>
      'Тар, рухс, системон режим æмæ æфтуаны фоны опцитæ';

  @override
  String get permissions => 'Бартæ æмæ системæмæ бацæуæн';

  @override
  String get permissions_sub =>
      'Æнæниздзинады бастдзинад, къахдзæфты датчиктæ, GPS, хъусынгæнинæгтæ æмæ камерæ';

  @override
  String get reminders_notifications => 'Зæрдылдарæнтæ æмæ хъусынгæнинæгтæ';

  @override
  String get reminders_sub =>
      'Хæрыны рæстæг, дон, уæз æмæ хуыссæны размæ зæрдылдарæнтæ';

  @override
  String get units_of_measurement => 'Барæн иуæгтæ';

  @override
  String get units_sub =>
      'Метрикон (кг, см, мл, км) кæнæ империалон (фунт, фут/дюйм, фл унци)';

  @override
  String get app_language => 'Приложенийы æвзаг';

  @override
  String get language_sub =>
      'Англисаг, हिन्दी (хинди), хинглиш æмæ 195+ дунеон æвзæгтæ';

  @override
  String get home_screen_widgets => 'Хæдзарон экраны виджеттæ';

  @override
  String get widgets_sub =>
      'Комкоммæ Android-ы виджеттæ: Хаб, Къахдзæфтæ, Дон, Хæлцад æмæ Талисман';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Смарт-сахаты æмбал, плиткæтæ, вазыгджындзинæдтæ æмæ æнæмæнгхъæуæг æрмæг';

  @override
  String get goals_wellness => 'НЫСАНТÆ ÆМÆ ÆНÆНИЗДЗИНАДЫ ÆМБÆРСТÆ';

  @override
  String get nutrition_targets => 'Хæлцады нысантæ æмæ макро дих';

  @override
  String get nutrition_targets_sub =>
      'Калориты нысан, протеин, углеводтæ, ссад æмæ доны нысан';

  @override
  String get weekly_recap => 'Æрвылкъуырион æнæниздзинады хатдзæгтæ';

  @override
  String get weekly_recap_sub =>
      '7-бонон калориты астæуккаг, макроæмвæзад æмæ хуыздæр бон';

  @override
  String get streaks_milestones => 'Æнтыстдзинæдтæ æмæ æнтыстытæ';

  @override
  String get streaks_sub => 'Активон дидинæджы æртæхтæ, нысæнттæ æмæ æнтыстытæ';

  @override
  String get connected_devices => 'БАСТ АППАРАТТÆ ÆМÆ ЭКОСИСТЕМÆ';

  @override
  String get devices_hub => 'Аппараттæ æмæ смартсахатты центр';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Алфамбылай æмæ боныхъæд';

  @override
  String get surroundings_sub =>
      'Уæлдæфы хæрзхъæддзинад (AQI), УФ-индекс æмæ боныхъæды æнæниздзинад хъахъхъæныны уынаффæтæ';

  @override
  String get bloomi_pro => 'Bloomi Pro-йы рафыст';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 хæдзарон экраны виджеты æмæ æнæмæнгхъæуæг хъуыддæгты фæдыл цæуын';

  @override
  String get about_security => 'ÆДАСДЗИНАДЫ ФÆДЫЛ';

  @override
  String get about_bloomi => 'Блумийы тыххæй';

  @override
  String get about_bloomi_sub => 'Арæзтады спецификацитæ, верси, атрибуцитæ';

  @override
  String get privacy_policy => 'Конфиденциалондзинады политикæ';

  @override
  String get privacy_policy_sub =>
      'Офлайн-фыццаг, кусæнгарзы бæрæггæнæнты архитектурæ';

  @override
  String get terms_conditions => 'Уагæвæрдтæ æмæ уавæртæ';

  @override
  String get terms_conditions_sub =>
      'Лæггады уавæртæ æмæ æнæниздзинады уагæвæрдтæ';

  @override
  String get delete_account => 'Хыгъд æмæ бæрæггæнæнтæ фесафын';

  @override
  String get delete_account_sub =>
      'Æнæфæстæмæздæхгæйæ фесафын бынæттон SQLite бæрæггæнæнтæ æмæ мигъон резервон копитæ';

  @override
  String get healthy_habits =>
      'Фæлмæн, æнæфæцудгæ æнæниздзинады æгъдæуттæ аразын';

  @override
  String get all_logs => 'Мæ фæдæвзарæн бæрæггæнæнтæ æмæ журналтæ';

  @override
  String get search_language =>
      'Агур æвзагмæ гæсгæ кæнæ мадæлон фыссынадмæ гæсгæ...';

  @override
  String get languages_available => 'Æвзæгтæ, кæцытæ ис';

  @override
  String get no_matching_languages => 'Æмхуызон æвзæгтæ нæ ссардтой';

  @override
  String get try_searching =>
      'Бафæлварут агурын мадæлон фыссынадмæ гæсгæ кæнæ англисаг растфыссынадмæ гæсгæ';

  @override
  String get partially_translated => 'Æрдæгæй тæлмацгонд';

  @override
  String get complete_translation => 'Æххæст';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Æвзаг æвæрд у $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Алфамбылай æмæ алфамбылай';

  @override
  String get surroundings_aqi => 'Уæлдæфы хæрзхъæддзинады индекс';

  @override
  String get surroundings_uv => 'УФ-индекс';

  @override
  String get surroundings_temp => 'Температурæ';

  @override
  String get surroundings_humidity => 'Уымæл';

  @override
  String get surroundings_hydration_advice =>
      'Ныртæккæйы боныхъæды уавæрты дæхи хорз æнæдонæй æфсæст кæн.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Хæринаг агурын';

  @override
  String get food_quick_barcode => 'Скан штрих-код 👑';

  @override
  String get food_quick_water => 'Бафтауын дон';

  @override
  String get food_quick_custom => 'Æмбæлон хæринаг';

  @override
  String get surroundings_good => 'Хорз';

  @override
  String get surroundings_moderate => 'Рæстæмбис';

  @override
  String get surroundings_unhealthy => 'Æнæниз';

  @override
  String get notifications_title => 'Хъусынгæнинæгтæ æмæ хъусынгæнинæгтæ';

  @override
  String get notifications_empty => 'Ног хъусынгæнинæгтæ нæй';

  @override
  String get notifications_mark_read => 'Æппæт дæр нысан кæн куыд бакаст';

  @override
  String get notifications_clear => 'Æппæт дæр ссыгъдæг кæнын';

  @override
  String get reminders => 'Зæрдылдарæн параметртæ';

  @override
  String get notifications => 'Хъусынгæнинæгтæ';

  @override
  String get reminders_breakfast_title =>
      'Райсомæй хæрыны тыххæй зæрдылдарæн 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Дæ бон хорз! Рæстæг хъæбæр райсомæй хæрынæн $time .';
  }

  @override
  String get reminders_lunch_title => 'Æхсæвæры зæрдылдарæн 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Æрлæуу æмæ æхцондзинад райс балансиргонд, æнæзивæг æхсæвæрæй $time .';
  }

  @override
  String get reminders_dinner_title => 'Сихор зæрдылдарæн 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Рæстæг у æнцон, зæрдæмæдзæугæ сихорæн $time .';
  }

  @override
  String get reminders_water_title => 'Гидратацийы æххуыс 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ног агуывзæ дон нуазыны афон! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Æрвылкъуырион уæз ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Бæрæг кæнут уæ буары æрвылкъуырион бæрæггæнæнтæ Bloomi-йы ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Хуыссæны рæстæг Æрæнцад 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Æрулæфут æмæ уæхи бацæттæ кæнут æнцой фынæймæ ( $time ).';
  }

  @override
  String get onboard_welcome => 'Хорзæх уæ уæд Bloomi-мæ';

  @override
  String get onboard_sub =>
      'Дæ хæларзæрдæ, офлайн-фыццаг æнæниздзинад æмæ хæлцады æмбал.';

  @override
  String get onboard_get_started => 'Райдай';

  @override
  String get onboard_sign_in => 'Бацæуын';

  @override
  String get onboard_skip => 'Ахизын';

  @override
  String get onboard_choose_goal => 'Цавæр у дæ сæйраг æнæниздзинады нысан?';

  @override
  String get onboard_goal_weight_loss => 'Фæлмæн уæз æрныллæг кæнын';

  @override
  String get onboard_goal_muscle => 'Мæцъисты рæзт æмæ тых';

  @override
  String get onboard_goal_energy => 'Æрвылбонон энерги æмæ цардхъомдзинад';

  @override
  String get onboard_goal_habits => 'Æнæниз хæрд';

  @override
  String get onboard_about_you => 'Дæхи тыххæй нын радзур';

  @override
  String get onboard_lifestyle => 'Дæ æрвылбонон цардыуаг';

  @override
  String get onboard_permissions_title => 'Бартæ æмæ системæмæ бацæуæн';

  @override
  String get onboard_permissions_sub =>
      'Раттут бар синхронизацийы къахдзæфтæм, тренировкæтæм æмæ зæрдылдарæнтæм.';

  @override
  String get onboard_plan_ready_title => 'Дæ æмбæлон пълан цæттæ у!';

  @override
  String get onboard_plan_ready_sub =>
      'Мах сарæзтам фæлмæн, персоналон хæлцад æмæ æнæниздзинады фæндагон картæ æрмæстдæр сымахæн.';

  @override
  String get onboard_enter_bloomi => 'Бацæут Блумимæ';

  @override
  String get insights_weekly_report => 'Æрвылкъуырион æнæниздзинады хатдзæгтæ';

  @override
  String insights_best_day(Object day) {
    return 'Хуыздæр æнæфæцудгæдзинады бон: $day';
  }

  @override
  String get insights_streaks_badges => 'Æнтыстдзинæдтæ æмæ æнтыстытæ';

  @override
  String insights_unlocked_on(Object date) {
    return 'Æхгæд æрцыд $date';
  }

  @override
  String get insights_keep_going => 'Дарддæр кæнут диссаджы размæцыд!';

  @override
  String get widgets_title => 'Хæдзарон экраны виджеттæ';

  @override
  String widgets_active_count(Object count) {
    return 'Активон виджеттæ: $count';
  }

  @override
  String get widgets_hub_title => 'Блумийы æнæниздзинады центр';

  @override
  String get widgets_steps_title => 'Къахдзæфтæ æмæ активон цирхъ';

  @override
  String get widgets_water_title => 'Гидратацийы тагъд æрфыст';

  @override
  String get widgets_mascot_title => 'Блумийы талисман æмбал';

  @override
  String get wear_os_title => 'Дарут OS Smartwatch';

  @override
  String get wear_os_connected => 'Баст у Watch-имæ';

  @override
  String get wear_os_sync => 'Синхронизаци кæнын æркасты бæрæггæнæнтæ';

  @override
  String get theme_title => 'Æддаг бакаст æмæ темæ';

  @override
  String get theme_mode => 'Темæйы режим';

  @override
  String get theme_light => 'Рухс';

  @override
  String get theme_dark => 'Тар';

  @override
  String get theme_system => 'Системæйы æнæмæнгхъæуæгдзинад';

  @override
  String get theme_background_palette => 'Фоны палитрæ';

  @override
  String get units_title => 'Барæн иуæгтæ';

  @override
  String get units_metric => 'Метрикæ (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дюйм, фл унци)';

  @override
  String get home_unable_load => 'Нæй гæнæн æрбакæнын панел';

  @override
  String get home_health_permission_req =>
      'Æнæниздзинады бастдзинады бар хъæуы';

  @override
  String get home_health_permission_desc =>
      'Bloomi-йæн хъæуы Health Connect-ы барлæвæрд, цæмæй æххæст кæна реалон къахдзæфтæ, зæрдæйы æхситт æмæ синхронизаци кæна мобилон хæдзары виджеттæ реалон рæстæджы.';

  @override
  String get home_allow_health => 'Æнæниздзинады бастдзинады бар раттын';

  @override
  String get home_ready_mindful_day => 'Цæттæ дæ æнкъард бонмæ? ✨';

  @override
  String get home_quick_add => 'Тагъд бафтауын';

  @override
  String get home_live_gps => 'Комкоммæ GPS';

  @override
  String get home_calories_remaining_label => 'КАЛОРИТÆ БАЗДÆР';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Хæрд: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Доны фæдæвзарæнæн æрцауындзут 💧';

  @override
  String get home_water_goal_reached => 'Æрвылбонон нысанмæ баххæсыдысты 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл æрвылбонон нысанмæ';
  }

  @override
  String get home_details => 'Бæлвырддæр';

  @override
  String get home_upgrade_plan_desc =>
      'Ногдзинад, цæмæй æрвылбонон нысантæ æмæ AI пълан байгом кæнат';

  @override
  String get home_unlock => 'Рахгæн 👑';

  @override
  String get home_quick_log_hint => 'Тагъд ныффыссут æнæниздзинады фыстæг';

  @override
  String get food_serving_size => 'Порцийы бæрц';

  @override
  String get food_serving_grams => 'Лæггад кæнын (г)';

  @override
  String get food_number_servings => 'Порцийы нымæц';

  @override
  String get food_calories_per_serving => 'Иу порцийы калоритæ';

  @override
  String get food_recipe_ingredients => 'Ингредиенттæ';

  @override
  String get food_recipe_add_ingredient => 'Бафтауын ингредиент';

  @override
  String get food_recipe_directions => 'Амынддзинæдтæ æмæ фиппаинæгтæ';

  @override
  String get food_recipe_total => 'Æдæппæт рецепты хæлцад';

  @override
  String get food_recipe_per_serving => 'Иу порцийы хæлцад';

  @override
  String get food_recipe_saved_toast => 'Хæринæгтæ æнтыстджынæй фервæзтысты!';

  @override
  String get food_barcode_found => 'Ссардтой продукт!';

  @override
  String get food_barcode_not_found_desc =>
      'Гом базæйы нæ ссардтам ацы штрих-код. Дæ бон у йæ бафтауын куыд æмбæлон хæринаг.';

  @override
  String get food_add_custom_btn => 'Бафтаут æмбæлон хæринаг';

  @override
  String get food_scan_again => 'Ногæй сканер кæнын';

  @override
  String get food_review_items => 'Æркæсын рабæрæггонд хæринæгтæм';

  @override
  String get food_review_hint =>
      'Бæрцтæ æрæвæрут кæнæ æнæзонгæ дзаумæттæ аиуварс кæнут';

  @override
  String get food_log_selected => 'Æвзæрст хæринæгтæ ныффыссут';

  @override
  String get food_favourites_title => 'Уарзон хæринæгтæ';

  @override
  String get food_recent_title => 'Фæстаг хæринæгтæ';

  @override
  String get food_no_favourites =>
      'Нырма уарзон хæринæгтæ нæй. Зæрдæйæ ныккæнут цыфæнды хæринаг дæр, цæмæй ам бахъахъхъæнат.';

  @override
  String get food_no_recents => 'Æрæджы фыст хæринæгтæ нæ ссардтой.';

  @override
  String get food_nutrition_details_title =>
      'Æрвылбонон хæлцады лыстæгдзинæдтæ';

  @override
  String get food_macro_protein_label => 'Протеины ныппырх';

  @override
  String get food_macro_carbs_label => 'Углеводты ныппырх';

  @override
  String get food_macro_fat_label => 'Ссад ныппырх кæнын';

  @override
  String get food_macro_fiber_label => 'Æфсæйнаг ныппырх';

  @override
  String get food_daily_target_comparison => 'Нысан абарын';

  @override
  String food_target_label(Object target) {
    return 'Нысан: $target';
  }

  @override
  String get food_edit_entry => 'Боныфыст ивын';

  @override
  String get food_delete_entry => 'Фыст фесафын';

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
    return '$current æмæ $target мл';
  }

  @override
  String get water_intake_history => 'Абоны доны æрфыст';

  @override
  String get water_no_logs_today =>
      'Абон нырма дон нæй. Æрæвæрут æмæ æрцауындзут тагъд бафтауыны кнопкæ!';

  @override
  String get water_adjust_goal => 'Æрвылбонон нысан сраст кæнын';

  @override
  String get health_connect_banner => 'Баст у Health Connect-имæ';

  @override
  String get health_vitals_summary =>
      'Æрвылбонон æнæниздзинады ахсджиаг æууæлтæ';

  @override
  String get health_latest_heart_rate => 'Фæстаг зæрдæйы æхст';

  @override
  String get health_latest_bp => 'Туджы æлхъывдад';

  @override
  String get health_latest_spo2 => 'Туджы кислород';

  @override
  String get health_latest_glucose => 'Туджы глюкозæ';

  @override
  String get health_latest_weight => 'Уæз';

  @override
  String get health_latest_sleep => 'Фынæйы дæргъвæтиндзинад';

  @override
  String get health_add_manual => 'Бафтауын къухæй барæн';

  @override
  String get health_history_trends => 'Историон тенденцитæ';

  @override
  String get health_sync_success =>
      'Æнæниздзинады бæрæггæнæнтæ æнтыстджынæй синхронизацигонд æрцыдысты!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours сахаты $mins мин';
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
    return '__РН_0__ / __РН_1__ ммрт.ст.';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title => 'Баст кусæнгæрзтæ æмæ дарæн дзаумæттæ';

  @override
  String get health_devices_desc =>
      'Æххæст кæнут дыууæйон смарт-сахаттæ, фитнес-трекертæ æмæ æнæниздзинады датчиктæ.';

  @override
  String get health_workout_editor_title => 'Тренировкæ ивын';

  @override
  String get health_workout_name_label => 'Тренировкæйы ном';

  @override
  String get health_workout_duration_label => 'Дæргъвæтиндзинад (минуттæ)';

  @override
  String get health_workout_calories_label => 'Бæрæггæнæн калоритæ (ккал)';

  @override
  String get health_workout_date_label => 'Датæ æмæ рæстæг';

  @override
  String get plan_daily_wellness_roadmap =>
      'Дæ персонализацигонд фæндагон картæ';

  @override
  String get plan_morning_routine => 'Райсомы æгъдау';

  @override
  String get plan_afternoon_routine => 'Æмбисбоны æнæниздзинад';

  @override
  String get plan_evening_routine => 'Изæры дымгæ';

  @override
  String get plan_coach_badge => 'Блумийы тренер';

  @override
  String get plan_weekly_overview => '7-бонон æнæниздзинады фокус';

  @override
  String get plan_targets_title => 'Æнæниздзинады нысантæ æмæ нысантæ';

  @override
  String get plan_calorie_budget_label => 'Æрвылбонон калориты бюджет';

  @override
  String get plan_water_budget_label => 'Æрвылбонон доны нысан';

  @override
  String get plan_step_budget_label => 'Æрвылбонон къахдзæфы нысан';

  @override
  String get plan_macro_split_label => 'Макроэлементты нымæц';

  @override
  String get profile_personal_details => 'Хисæрмагонд информаци';

  @override
  String get profile_body_stats => 'Буары барæнтæ';

  @override
  String get profile_app_preferences => 'Уæлбартæ æмæ æфтуаны параметртæ';

  @override
  String get profile_edit_name_hint => 'Дæ ном';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Бæрзæнд ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Уæз ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Кар';

  @override
  String get profile_gender_male => 'Нæлгоймаг';

  @override
  String get profile_gender_female => 'Сылгоймаг';

  @override
  String get profile_gender_other => 'Æндæр / Нæ уарзын зæгъын';

  @override
  String get profile_activity_sedentary =>
      'Бадгæ (Чысыл кæнæ æппындæр нæ ахуыр кæнын)';

  @override
  String get profile_activity_light => 'Лæгъз активон (1-3 боны/къуыри)';

  @override
  String get profile_activity_moderate => 'Рæстæмбис активон (3-5 боны/къуыри)';

  @override
  String get profile_activity_very => 'Тынг активон (6-7 боны/къуыри)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Æрæвæрут Bloomi-йы плиткæ æмæ вазыгджындзинад уæ Wear OS-ы сахатыл, цæмæй æркæсат калоритæм, донмæ æмæ къахдзæфтæм.';

  @override
  String get settings_widgets_header => 'Интерактивон Android-виджеттæ';

  @override
  String get settings_widgets_desc =>
      'Æвæрут виджеттæ реалон рæстæджы уæ аппараты сæйраг экраныл, цæмæй æвæстиатæй ногдзинæдтæ райсат.';

  @override
  String get settings_about_header => 'Блумийы тыххæй';

  @override
  String get settings_about_version => 'Верси 1.0.0';

  @override
  String get settings_about_build => 'Сараз 100';

  @override
  String get settings_about_credits =>
      'Арæзт у æнæниз, æнæниз цардæн лæмбынæгæй.';

  @override
  String get settings_terms_header => 'Уагæвæрдтæ æмæ уавæртæ';

  @override
  String get settings_privacy_header => 'Конфиденциалондзинады политикæ';

  @override
  String get settings_delete_header => 'Хыгъд æмæ бæрæггæнæнтæ фесафын';

  @override
  String get settings_delete_warning =>
      'Ацы архайд фæстæмæ раздахæн нæй. Дæ хæринæгтæ, тренировкæтæ, æнæмæнгхъæуæг æрмæг æмæ дæ профил æнæмæнгæй фесæфдзысты.';

  @override
  String get settings_delete_confirm_btn => 'Æнустæм фесафын';

  @override
  String get onboard_welcome_headline => 'Хорзæх уæ уæд Bloomi-мæ ✨';

  @override
  String get onboard_welcome_tagline =>
      'Фæлмæн, æнæзивæг æнæниздзинады фæдыл цæуын, арæзт у дæ царды алыварс.';

  @override
  String get onboard_step_about => 'Дæу тыххæй';

  @override
  String get onboard_step_goals => 'Дæ нысантæ';

  @override
  String get onboard_step_lifestyle => 'Æрвылбонон æгъдæуттæ';

  @override
  String get onboard_step_permissions => 'Барлæвæрдтæ';

  @override
  String get onboard_step_plan => 'Цæттæ!';

  @override
  String get onboard_health_connect_perm => 'Æнæниздзинады бастдзинады бацæуæн';

  @override
  String get onboard_step_sensors_perm => 'Къахдзæф нымайæг датчик';

  @override
  String get onboard_notif_perm => 'Зæрдылдарæн æмæ хъусынгæнинæгтæ';

  @override
  String get onboard_camera_perm => 'Камерæ (штрих-код æмæ хæринаджы сканер)';

  @override
  String get onboard_grant_permissions => 'Бар раттын';

  @override
  String get onboard_continue_dashboard => 'Байгом кæнут панел';

  @override
  String get notif_channel_hydration_name => 'Гидратацийы æххуыс';

  @override
  String get notif_channel_hydration_desc =>
      'Фæлмæн доны зæрдылдарæнтæ æнæхъæн бон';

  @override
  String get notif_channel_nutrition_name =>
      'Хæринæгтæ æмæ хойраджы тыххæй зæрдылдарæнтæ';

  @override
  String get notif_channel_nutrition_desc =>
      'Райсомæй, æхсæвæр æмæ сихор зæрдылдарæн хъусынгæнинæгтæ';

  @override
  String get notif_channel_steps_name => 'Къахдзæфты æвдисæнтæ';

  @override
  String get notif_channel_steps_desc =>
      'Бæрæгбæттæ æрвылбонон къахдзæфты нысантæм куы бахæццæ вæййынц, уæд';

  @override
  String get notif_channel_vitals_name =>
      'Æнæниздзинад æмæ æнæмæнгхъæуæгдзинады бæрæггæнæнтæ';

  @override
  String get notif_channel_vitals_desc =>
      'Уæз æмæ хуыссæны агъоммæ æрулæфыны зæрдылдарæнтæ';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => 'Æрæнцой кæнын 15м';

  @override
  String get notif_action_log_meal => '🥗 Хъæдын хæринаг';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
