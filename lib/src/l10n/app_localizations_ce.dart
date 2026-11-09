// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chechen (`ce`).
class AppLocalizationsCe extends AppLocalizations {
  AppLocalizationsCe([String locale = 'ce']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'ЦӀа';

  @override
  String get nav_today => 'Тахана .';

  @override
  String get nav_plan => 'План';

  @override
  String get nav_food => 'Юург';

  @override
  String get nav_food_diary => 'Юучу хӀуманан дневник';

  @override
  String get nav_workout => 'Тренировкин журнал';

  @override
  String get nav_health => 'Могашалла';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'КӀелхьардаккха';

  @override
  String get cancel => 'Юхаяккха';

  @override
  String get delete => 'Удалить';

  @override
  String get edit => 'Хийца';

  @override
  String get done => 'Дина';

  @override
  String get close => 'ДӀакъовла';

  @override
  String get back => 'Юха';

  @override
  String get next => 'Дагахь';

  @override
  String get continue_btn => 'Кхин дӀа а';

  @override
  String get confirm => 'ТӀечӀагӀде';

  @override
  String get search => 'Лаха';

  @override
  String get filter => 'Фильтр';

  @override
  String get all => 'Дерриге а';

  @override
  String get active => 'Жигара';

  @override
  String get today => 'Тахана .';

  @override
  String get yesterday => 'Селхана';

  @override
  String get tomorrow => 'Кхана .';

  @override
  String get add => 'ТӀетоха';

  @override
  String get remove => 'ДӀаяккха';

  @override
  String get refresh => 'Карладаккха';

  @override
  String get retry => 'Юха хьажа';

  @override
  String get error => 'ГӀалат';

  @override
  String get success => 'Кхиам';

  @override
  String get loading => 'Загрузка...';

  @override
  String get no_data => 'Цхьа а даннаш дац';

  @override
  String get offline => 'Офлайн режим';

  @override
  String get offline_sub => 'Хийцамаш синхронизаци йийр ю цкъа юха зӀе тоьхча';

  @override
  String get undo => 'Юхаяккха';

  @override
  String get portion => 'Дакъа';

  @override
  String get quantity => 'Барам';

  @override
  String get unit => 'Блок';

  @override
  String get clear => 'ЦӀена';

  @override
  String get select => 'Таллам бе .';

  @override
  String get apply => 'Заявка е';

  @override
  String get reset => 'Сброс';

  @override
  String get ok => 'ХӀан-хӀа';

  @override
  String get yes => 'ХӀаъ';

  @override
  String get no => 'ХӀан-хӀа';

  @override
  String get optional => 'Лаамехь';

  @override
  String get calories => 'Калореш';

  @override
  String get protein => 'Белок';

  @override
  String get carbs => 'Карбс';

  @override
  String get fat => 'Мохь';

  @override
  String get fiber => 'Нах';

  @override
  String get water => 'Хи .';

  @override
  String get steps => 'ГӀулчаш';

  @override
  String get kcal => 'ккал';

  @override
  String get grams => 'ж';

  @override
  String get milliliters => 'мл';

  @override
  String get kilograms => 'кг';

  @override
  String get pounds => 'фунт';

  @override
  String get centimeters => 'см';

  @override
  String get inches => 'шарахь';

  @override
  String get bpm => 'бпм';

  @override
  String get hours => 'сахьт';

  @override
  String get minutes => 'минот';

  @override
  String get serving => 'ГӀуллакх дар';

  @override
  String get servings => 'Порциш';

  @override
  String get serving_size => 'Порцин барам';

  @override
  String get per_100g => 'за 100г';

  @override
  String get india => 'ХӀиндойчоь';

  @override
  String get asia => 'Ази';

  @override
  String get europe => 'Европа';

  @override
  String get middle_east => 'Гергара Малхбале';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америка';

  @override
  String get home_title => 'ЦӀа';

  @override
  String get home_greeting_morning => 'Ӏуьйре дика хуьлда хьан';

  @override
  String get home_greeting_afternoon => 'Де дика хуьлда шун';

  @override
  String get home_greeting_evening => 'Суьйре дика хуьлда шун';

  @override
  String get home_streak_title => 'Блоссом Стрик';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count денош дӀасадаржар',
      one: '1 де дӀадоьду',
      zero: '0 де дӀадахна',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ягийна';

  @override
  String get home_calories_budget => 'Калорийн бюджет .';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал йисина';
  }

  @override
  String get home_water_title => 'Денна хи латтор';

  @override
  String home_water_goal(Object current, Object target) {
    return '__РН_0__ / __РН_1__ мл';
  }

  @override
  String get home_steps_title => 'ГӀулчаш яьхна';

  @override
  String get home_quick_actions => 'Сихха гӀуллакхаш';

  @override
  String get home_log_meal => 'Лог кхача';

  @override
  String get home_log_water => 'Лог хи .';

  @override
  String get home_log_workout => 'Лог тренировка';

  @override
  String get home_log_weight => 'Лог йозалла';

  @override
  String get home_insights_title => 'Таханлера кхетамаш';

  @override
  String get home_quote =>
      'Жимачу могушаллин харжамаша кхуллу зазадоккху трансформацеш.';

  @override
  String get home_ai_coach_tip => 'Блуми АИ тренер';

  @override
  String get home_surroundings => 'Гонах дерг а, хӀаваъ а';

  @override
  String get home_notifications => 'Хаамбарш';

  @override
  String get home_daily_score => 'Денна дика хиларан баллаш';

  @override
  String get home_view_all => 'Дерриге а хьажа';

  @override
  String get food_diary_title => 'Юучу хӀуманан дневник';

  @override
  String get food_breakfast => 'Ӏуьйранна яа хӀума';

  @override
  String get food_lunch => 'Делкъан кхача';

  @override
  String get food_dinner => 'Пхьор';

  @override
  String get food_snacks => 'Закускаш';

  @override
  String get food_add_food => 'Юург тӀетоха';

  @override
  String get food_edit_food => 'Юург хийца';

  @override
  String get food_add_breakfast => 'ТӀетоха Ӏуьйранна яа хӀума';

  @override
  String get food_add_lunch => 'ТӀетоха делкъан кхача';

  @override
  String get food_add_dinner => 'ТӀетоха пхьор';

  @override
  String get food_add_snack => 'Закуска тӀетоха';

  @override
  String get food_total_calories => 'Дерриге а калореш';

  @override
  String get food_empty_meal =>
      'Цкъачунна хӀокху кхачанна лерина кхачанаш дӀаязбина бац';

  @override
  String get food_empty_diary => 'ХӀокху дийнахь кхача ца язбина';

  @override
  String get food_log_first_meal =>
      '+ хьажа хьайн дуьххьарлера чам болуш кхача дӀаязбан .';

  @override
  String get food_quick_add => 'Сихха тӀетоха';

  @override
  String get food_search_hint => 'Поиск блюд, фруктов, дал, роти...';

  @override
  String get food_custom_recipe => 'Къовсамийн кхача а, рецепт а';

  @override
  String get food_scan_barcode => 'Сканировать штрих-код';

  @override
  String get food_camera_scan => 'AI кхачанан сканер';

  @override
  String get food_recent => 'ТӀаьхьарчу хенахь кхачанаш';

  @override
  String get food_favourites => 'Дукхаезаш йолу';

  @override
  String get food_macro_summary => 'Макроэлементийн дӀасадаржар .';

  @override
  String get food_delete_meal_confirm =>
      'Хьо тешна вуй и хӀума дӀаяккха лаьий хьуна?';

  @override
  String get food_item_deleted => 'Дааран хӀума дӀаяьккхина';

  @override
  String get food_remaining => 'дисина;';

  @override
  String get food_consumed => 'дӀадаьккхина';

  @override
  String food_of_target(Object target) {
    return '__РН_0__ ккал';
  }

  @override
  String get foodSearch_title => 'Даарш лаха';

  @override
  String get foodSearch_scan_barcode => 'Сканировать штрих-код';

  @override
  String get foodSearch_take_photo => 'Снап кхачанан сурт';

  @override
  String get foodSearch_custom_food => 'Кхолла леррина кхача';

  @override
  String get foodSearch_recent_searches => 'ТӀаьххьара лехнарг';

  @override
  String get foodSearch_popular => 'Халкъан кхачанаш';

  @override
  String get foodSearch_no_results => 'Хьан лехамашца догӀуш долу кхачанаш бац';

  @override
  String get barcode_title => 'Штрих-кодан сканер';

  @override
  String get barcode_align => 'Камеран рамкина чуьра штрих-код нисъе .';

  @override
  String get barcode_not_found => 'Продукт ца карийна базехь';

  @override
  String get barcode_premium_feature =>
      'Штрих-код сканерца лело йиш ю Bloomi Pro .';

  @override
  String get camera_title => 'AI кхачанан сканер';

  @override
  String get camera_tap_hint => 'Хьайн пхьегӀан шера сурт даккха .';

  @override
  String get camera_analysing => 'Анализ еш кхачанан тарх...';

  @override
  String get camera_detected => 'Гучуевлла хӀуманаш';

  @override
  String get camera_flash => 'Вспышка хийца';

  @override
  String get camera_retake => 'Сурт юха схьаэца';

  @override
  String get camera_confirm_food => 'ХӀуманаш тӀечӀагӀъе';

  @override
  String get customFood_title => 'Къовсамийн кхача а, рецепт а';

  @override
  String get customFood_name_hint => 'ПхьегӀан я кхачанан цӀе';

  @override
  String get customFood_calories_hint => 'Калореш (ккал)';

  @override
  String get customFood_protein_hint => 'Белок (г)';

  @override
  String get customFood_carbs_hint => 'Углеводаш (ж)';

  @override
  String get customFood_fat_hint => 'Жир (ж)';

  @override
  String get customFood_save => 'Рецепт ларъе';

  @override
  String get water_tracker_title => 'Хин лехамаш';

  @override
  String get water_daily_target => 'Денна хи дӀадаларан Ӏалашо';

  @override
  String get water_logged_today => 'Тахана дӀаязвелла';

  @override
  String get water_add_glass => '+250 мл Стакан';

  @override
  String get water_add_bottle => '+500 мл шиша';

  @override
  String get water_custom_amount => 'Къовсамийн барам';

  @override
  String get water_reminder_tip =>
      'Дерриге а дийнахь хаддаза хи мала, ницкъ хилийта.';

  @override
  String water_logged_toast(Object amount) {
    return 'Лог $amount мл хи 💧 .';
  }

  @override
  String get workout_title => 'Тренировкин журнал';

  @override
  String get workout_add_exercise => 'Тренировка тӀетоха';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Ницкъ хилар';

  @override
  String get workout_yoga => 'Йога а, гибкость а';

  @override
  String get workout_duration => 'Дахалла';

  @override
  String get workout_intensity => 'Интенсивалла';

  @override
  String get workout_calories_burned => 'Калореш дӀаяьхна';

  @override
  String get workout_empty => 'Тахана цхьа а тренировка яц дӀаязйина';

  @override
  String get workout_save_success => 'Тренировка кхиамца кӀелхьара яьккхина!';

  @override
  String get workout_type => 'Тренировкин тайпа';

  @override
  String get workout_notes => 'Билгалдаккхар а, ойланаш а';

  @override
  String get health_overview_title => 'Могашалла а, Ӏаламан гӀуллакхаш а';

  @override
  String get health_heart_rate => 'Дог деттар';

  @override
  String get health_blood_oxygen => 'ЦӀийца кислород (SpO2)';

  @override
  String get health_blood_pressure => 'ЦӀий Ӏанор';

  @override
  String get health_blood_glucose => 'ЦӀий чохь глюкоза хилар';

  @override
  String get health_body_temperature => 'ДегӀан температура';

  @override
  String get health_sleep_tracking => 'Наб ларъяр';

  @override
  String get health_weight_tracking => 'Йозалла а, дегӀан хӀоттам а';

  @override
  String get health_waist_hip => 'ГӀодаюкъ-гӀодаюкъ нисъяр';

  @override
  String get health_devices_hub => 'ГӀирсаш а, смарт-сахьташ а';

  @override
  String get health_sync_now => 'Могашаллин хаамаш синхронизаци';

  @override
  String health_last_synced(Object time) {
    return 'ТӀаьххьара синхронизаци йина: $time';
  }

  @override
  String get health_manual_entry => 'Куьйга могашалла язъяр';

  @override
  String get health_metric_detail => 'Метрикан детальш';

  @override
  String get health_connected_sensors => 'ЗӀе йолу могашаллин датчикаш';

  @override
  String get plan_title => 'Денна лерина план';

  @override
  String get plan_weekly_title => 'КӀиранан могушаллин план';

  @override
  String get plan_calorie_target => 'Калорийн Ӏалашо';

  @override
  String get plan_water_target => 'Гидрацин Ӏалашо';

  @override
  String get plan_step_target => 'ГӀулч Ӏалашо';

  @override
  String get plan_sleep_target => 'Наб ян Ӏалашо';

  @override
  String get plan_meal_suggestions => 'Кхачанан хьехам';

  @override
  String get plan_healthy_habits =>
      'Могушалла ларъеш долу гӀиллакхаш а, хьехамаш а';

  @override
  String get plan_coach_advice => 'Bloomi AI тренерийн рекомендацеш';

  @override
  String get plan_generated_title => 'Персонализаци йина денна лерина график';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профиль хийца';

  @override
  String get profile_name => 'ЦӀе';

  @override
  String get profile_age => 'Хенан';

  @override
  String get profile_gender => 'Пол';

  @override
  String get profile_height => 'Локхалла';

  @override
  String get profile_weight => 'Йозалла';

  @override
  String get profile_goal => 'Юьхьанцара Ӏалашо';

  @override
  String get profile_activity_level => 'Жималлин тӀегӀа .';

  @override
  String get profile_stats => 'Сан могушаллина статистика';

  @override
  String get profile_saved => 'Профиль кхиамца карлаяьккхина';

  @override
  String get profile_bmi => 'ДегӀан массан индекс (ИМТ)';

  @override
  String get profile_membership => 'Декъашхо хилар';

  @override
  String get settings => 'Настройкаш';

  @override
  String get preferences_habits => 'ПРЕФРЕНЦИЯШ А, ГӀИЛЛАКХАШ а';

  @override
  String get appearance_theme => 'Куц-кеп а, тема а';

  @override
  String get appearance_theme_sub =>
      'Бодане, серло, системин режим а, Ӏаппан фонан опцеш а';

  @override
  String get permissions => 'Бакъонаш а, системин тӀекхачар а';

  @override
  String get permissions_sub =>
      'Могашалла ларъяр, гӀулчийн датчикаш, GPS, хаамаш а, камера а';

  @override
  String get reminders_notifications => 'Дагадоуьйтуш а, хаамаш а';

  @override
  String get reminders_sub =>
      'Юучу хӀуманан хан, хи, йозалла дӀаязъяр а, дӀавуьжу хан дагадоуьйтуш дерг а';

  @override
  String get units_of_measurement => 'Барамийн цхьаьнакхетараллаш .';

  @override
  String get units_sub =>
      'Метрикан (кг, см, мл, км) я империн (фунт, фут/дюйм, фл унци)';

  @override
  String get app_language => 'Апп мотт';

  @override
  String get language_sub =>
      'Ингалсан мотт, हिन्दी (хӀинди), инглиш & 195+ дуьненаюкъара меттанаш';

  @override
  String get home_screen_widgets => 'ЦӀера экранан виджеташ';

  @override
  String get widgets_sub =>
      'Дийна Android виджеташ: Хаб, ГӀулчаш, Хи, Кхача & Талисман';

  @override
  String get wear_os_watch_app => 'ОС Watch App леладе';

  @override
  String get wear_os_sub =>
      'Смарт-сахьтийн накъост, плитка, чолхенаш & дийна дийна меттигаш';

  @override
  String get goals_wellness => 'Ӏалашонаш а, дика хилар а';

  @override
  String get nutrition_targets => 'Кхачанан Ӏалашонаш а, макросплит а';

  @override
  String get nutrition_targets_sub =>
      'Калорийн Ӏалашо, белок, углеводаш, жир & хи Ӏалашо';

  @override
  String get weekly_recap => 'КӀиранан могушалла ларъяр';

  @override
  String get weekly_recap_sub =>
      '7-денна юккъера калорийн барам, макро нисдалар & уггаре дика де';

  @override
  String get streaks_milestones => 'Стрикаш а, меттигаш а';

  @override
  String get streaks_sub => 'Жигара зезагийн сизаш, значкаш & кхиамаш';

  @override
  String get connected_devices => 'ЗӀЕ ДОЛУ ГӀИРСАШ А, ЭКОСИСТЕМА А';

  @override
  String get devices_hub => 'ГӀирсаш а, смарт-сахьташ а';

  @override
  String get devices_hub_sub =>
      'Могашалла ларъяр, Галактика сахьт, Пиксель сахьт, Гармин';

  @override
  String get surroundings_weather => 'Гонах дерг а, хенан хӀоттам а';

  @override
  String get surroundings_sub =>
      'ХӀаваан дикалла (AQI), УФ-индекс & хенан хӀоттаман хьехам';

  @override
  String get bloomi_pro => 'Блуми Про подписка';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 цӀийнан экранан виджеташ а, Ӏаламан Ӏалашонаш тӀаьхьакхиар а';

  @override
  String get about_security => 'КХЕРАМЗАЛЛАХ ЛАЬЦНА &';

  @override
  String get about_bloomi => 'Блумих лаьцна';

  @override
  String get about_bloomi_sub => 'Спецификаци, верси, атрибуташ хӀиттор';

  @override
  String get privacy_policy => 'Къайленан политика';

  @override
  String get privacy_policy_sub =>
      'Офлайн-хьалхара, гӀирс тӀехь даннийн архитектура';

  @override
  String get terms_conditions => 'Бехкамаш а, бехкамаш а';

  @override
  String get terms_conditions_sub =>
      'Сервисан шардарш а, могушалла ларъяран низам а .';

  @override
  String get delete_account => 'Удалить аккаунт и данные';

  @override
  String get delete_account_sub =>
      'Юхадерза йиш йоцуш дӀадаха меттигера SQLite даннаш а, мархийн резерван копеш а .';

  @override
  String get healthy_habits =>
      'КӀеда, лаьтташ долу могушалла ларъяран амалш кхолла';

  @override
  String get all_logs => 'Сан тӀаьхьакхиъна хаамаш а, журналаш а';

  @override
  String get search_language => 'Маттаца я ненан йозанца леха...';

  @override
  String get languages_available => 'Меттанаш лела .';

  @override
  String get no_matching_languages =>
      'Цхьа а нийса догӀу меттанаш ца карийна .';

  @override
  String get try_searching =>
      'Ненан йозанца я ингалсан нийсаяздарца леха хьажа .';

  @override
  String get partially_translated => 'Цхьана декъехь гочдина .';

  @override
  String get complete_translation => 'Дуьззина';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Мотт дӀахӀоттийна __РХ_0__ ( __РХ_1__ ) .';
  }

  @override
  String get surroundings_title => 'Гонах дерг а, Ӏалам а';

  @override
  String get surroundings_aqi => 'ХӀаваан дикаллин индекс';

  @override
  String get surroundings_uv => 'УФ индекс';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Мокхазалла';

  @override
  String get surroundings_hydration_advice =>
      'ХӀинцалерчу хенан хьелашкахь дика хи латтаде.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Юург лаха';

  @override
  String get food_quick_barcode => 'Сканировать штрих-код 👑 .';

  @override
  String get food_quick_water => 'Хи тӀетоха';

  @override
  String get food_quick_custom => 'Къовсам кхача';

  @override
  String get surroundings_good => 'Дика ду .';

  @override
  String get surroundings_moderate => 'Юккъера';

  @override
  String get surroundings_unhealthy => 'Могуш доцуш';

  @override
  String get notifications_title => 'Хаамаш а, лардарш а';

  @override
  String get notifications_empty => 'Керла хаамаш бац';

  @override
  String get notifications_mark_read => 'Дерриге а дешна аьлла билгалдаккха';

  @override
  String get notifications_clear => 'Дерриге а дӀадаккха';

  @override
  String get reminders => 'Дагадаийтаран настройкаш';

  @override
  String get notifications => 'Хаамбарш';

  @override
  String get reminders_breakfast_title => 'Ӏуьйранна дагадоуьйтуш 🍳 .';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ӏуьйре дика хуьлда! $time -хь кхачаме Ӏуьйранна яа хӀума яа хан.';
  }

  @override
  String get reminders_lunch_title => 'Делкъана дагадоуьйтуш 🥗 .';

  @override
  String reminders_lunch_body(Object time) {
    return 'СоцунгӀа а еш, $time -хь нийса, синкхетамца делкъан кхача баа.';
  }

  @override
  String get reminders_dinner_title => 'Пхьор дагадоуьйтуш 🍲 .';

  @override
  String reminders_dinner_body(Object time) {
    return '$time -хь сирла, кхачаме пхьор дан хан.';
  }

  @override
  String get reminders_water_title => 'Гидратаци нудж 💧 .';

  @override
  String reminders_water_body(Object time) {
    return 'Керла стака хи мала хан ю! (__ПХ_0__)';
  }

  @override
  String get reminders_weight_title => 'КӀиранан мах хадор ⚖️ .';

  @override
  String reminders_weight_body(Object time) {
    return 'Хьайн кӀиранан дегӀан гайтамашна тӀаьхьакхиа Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'ДӀавуьжу хан Мох-даун 🌙 .';

  @override
  String reminders_sleep_body(Object time) {
    return 'СадаӀа, садаӀа кечам бе ( $time ).';
  }

  @override
  String get onboard_welcome => 'Марша вогӀийла хьо Блуми .';

  @override
  String get onboard_sub =>
      'Сан доттагӀаллин, офлайн-хьалхара могашалла а, кхачанан накъостий.';

  @override
  String get onboard_get_started => 'ДӀадоло';

  @override
  String get onboard_sign_in => 'Чу вала';

  @override
  String get onboard_skip => 'Скип';

  @override
  String get onboard_choose_goal => 'ХӀун ю хьан коьрта велнес-Ӏалашо?';

  @override
  String get onboard_goal_weight_loss => 'КӀеда йозалла лахъяран .';

  @override
  String get onboard_goal_muscle => 'Мускулийн совдалар а, ницкъ а';

  @override
  String get onboard_goal_energy => 'Денна энерги а, синтем а';

  @override
  String get onboard_goal_habits => 'Могушалла ларъеш синкхетамца кхача баар';

  @override
  String get onboard_about_you => 'Хьайх лаьцна дийца .';

  @override
  String get onboard_lifestyle => 'Хьан денна лело дезаш долу гӀуллакхаш .';

  @override
  String get onboard_permissions_title => 'Бакъонаш а, системин тӀекхачар а';

  @override
  String get onboard_permissions_sub =>
      'Синхронизацин гӀулчаш, тренировкаш, дагадоуьйтуш дерг дан бакъо ло.';

  @override
  String get onboard_plan_ready_title => 'Хьан леррина план кийча ю!';

  @override
  String get onboard_plan_ready_sub =>
      'Оха еккъа шуна лерина кечйина кӀеда, персонализаци йина кхачанан а, могушаллин а некъан карта.';

  @override
  String get onboard_enter_bloomi => 'Блуми чу вала';

  @override
  String get insights_weekly_report => 'КӀиранан могушалла ларъяр';

  @override
  String insights_best_day(Object day) {
    return 'Уггаре а дика консистенцин де: $day';
  }

  @override
  String get insights_streaks_badges => 'Стрикаш а, меттигаш а';

  @override
  String insights_unlocked_on(Object date) {
    return '$date тӀехь дӀакъевлина';
  }

  @override
  String get insights_keep_going => 'КхидӀа а фантастикан кхиамаш баха!';

  @override
  String get widgets_title => 'ЦӀера экранан виджеташ';

  @override
  String widgets_active_count(Object count) {
    return 'Жигара виджеташ: $count';
  }

  @override
  String get widgets_hub_title => 'Блуми Велнесс Хаб';

  @override
  String get widgets_steps_title => 'ГӀулчаш & Жигара ринг';

  @override
  String get widgets_water_title => 'Гидратаци сиха лог';

  @override
  String get widgets_mascot_title => 'Блуми талисман накъост';

  @override
  String get wear_os_title => 'OS смарт-сахьт леладе';

  @override
  String get wear_os_connected => 'ЗӀе ю Watch .';

  @override
  String get wear_os_sync => 'Синхронизаци хьажа даннаш';

  @override
  String get theme_title => 'Куц-кеп а, тема а';

  @override
  String get theme_mode => 'Теман режим';

  @override
  String get theme_light => 'Серло';

  @override
  String get theme_dark => 'Бода';

  @override
  String get theme_system => 'Системан стандарт';

  @override
  String get theme_background_palette => 'Фонан палитра';

  @override
  String get units_title => 'Барамийн цхьаьнакхетараллаш .';

  @override
  String get units_metric => 'Метрика (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дюйм, фл унци)';

  @override
  String get home_unable_load => 'Приборийн панель чуяккха аьтто бац';

  @override
  String get home_health_permission_req => 'Могашалла зӀе латто бакъо оьшу';

  @override
  String get home_health_permission_desc =>
      'Bloomi-на Health Connect-на бакъо оьшу бакъйолу гӀулчаш а, дог деттар а, мобилан цӀийнан виджеташ синхронизаци ян бакъйолчу хенахь.';

  @override
  String get home_allow_health => 'Могашалла зӀе латто бакъо ло';

  @override
  String get home_ready_mindful_day =>
      'Кийча вуй хьо синкхетамехь долчу денна? ✨';

  @override
  String get home_quick_add => 'Сихха тӀетоха';

  @override
  String get home_live_gps => 'Дийна GPS';

  @override
  String get home_calories_remaining_label => 'КАЛОРИШ ДИСИНА';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Яъна: __РН_0__ / __РН_1__ ккал';
  }

  @override
  String get home_tap_water_tracker => 'Кран для воды трекер 💧 .';

  @override
  String get home_water_goal_reached => 'Денна Ӏалашо кхаьчна 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл денна лерина Ӏалашо';
  }

  @override
  String get home_details => 'Деталаш';

  @override
  String get home_upgrade_plan_desc =>
      'Персонализаци йина денна лерина Ӏалашонаш & AI план схьаелла хьалаяккхар';

  @override
  String get home_unlock => 'Разблокировать 👑 .';

  @override
  String get home_quick_log_hint => 'Сихха дӀаязъе велнес-запись .';

  @override
  String get food_serving_size => 'Порцин барам';

  @override
  String get food_serving_grams => 'ГӀуллакх дар (ж)';

  @override
  String get food_number_servings => 'Порцийн терахь';

  @override
  String get food_calories_per_serving => 'Калореш цхьана порцехь';

  @override
  String get food_recipe_ingredients => 'ХӀуманаш';

  @override
  String get food_recipe_add_ingredient => 'Ингредиент тӀетоха';

  @override
  String get food_recipe_directions => 'ТӀедиллар а, билгалдаккхар а';

  @override
  String get food_recipe_total => 'Тотал рецепт кхача .';

  @override
  String get food_recipe_per_serving => 'ХӀора порци кхачанан';

  @override
  String get food_recipe_saved_toast => 'Къастийна кхача кхиамца ларбина!';

  @override
  String get food_barcode_found => 'Продукт карийна!';

  @override
  String get food_barcode_not_found_desc =>
      'И штрих-код тхуна ца карийра йиллинчу базехь. Ӏадатан кхача санна тӀетоха мегар ду.';

  @override
  String get food_add_custom_btn => 'ТӀетоха леррина кхача';

  @override
  String get food_scan_again => 'Юха а сканер йина';

  @override
  String get food_review_items => 'Карладаккха гучудаьлла кхачанаш';

  @override
  String get food_review_hint =>
      'Барам нисбе я дӀаяккха муьлхха а ца евзаш йолу хӀума .';

  @override
  String get food_log_selected => 'Лог хаьржина кхачанаш .';

  @override
  String get food_favourites_title => 'Дукхаезаш йолу кхачанаш';

  @override
  String get food_recent_title => 'ТӀаьхьарчу хенахь кхачанаш';

  @override
  String get food_no_favourites =>
      'Цкъачунна езаш йолу кхачанаш бац. Кхузахь кӀелхьараяккха муьлххачу а кхачанна тӀе дог хьакха.';

  @override
  String get food_no_recents =>
      'Дукха хан йоццуш дӀаязйина кхачанаш ца карийна.';

  @override
  String get food_nutrition_details_title => 'Денна кхачанан деталь';

  @override
  String get food_macro_protein_label => 'Белхан дӀасадаржар .';

  @override
  String get food_macro_carbs_label => 'Карбс дӀасакъастар .';

  @override
  String get food_macro_fat_label => 'Мохь дӀасакъастар .';

  @override
  String get food_macro_fiber_label => 'Нах дӀасакъастар .';

  @override
  String get food_daily_target_comparison => 'Ӏалашонан дустар .';

  @override
  String food_target_label(Object target) {
    return 'Ӏалашо: __РХ_0__';
  }

  @override
  String get food_edit_entry => 'Дневникан яззам хийца';

  @override
  String get food_delete_entry => 'ДӀаяккха яззам';

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
    return '__РН_0__ из __РН_1__ мл';
  }

  @override
  String get water_intake_history => 'Таханлера хин логаш';

  @override
  String get water_no_logs_today =>
      'Тахана а хи ца лоьру. Гидрат а йина, сиха тӀетоха кнопка тӀе хьажа!';

  @override
  String get water_adjust_goal => 'Денна лерина Ӏалашо нисъе';

  @override
  String get health_connect_banner => 'Могашаллаца зӀе йолуш ю Connect .';

  @override
  String get health_vitals_summary => 'Денна могашалла ларъяр';

  @override
  String get health_latest_heart_rate => 'ТӀаьххьара дог деттар';

  @override
  String get health_latest_bp => 'ЦӀий Ӏанор';

  @override
  String get health_latest_spo2 => 'ЦӀийца кислород';

  @override
  String get health_latest_glucose => 'ЦӀий чохь глюкоза хилар';

  @override
  String get health_latest_weight => 'Йозалла';

  @override
  String get health_latest_sleep => 'Наб кхетаран хан';

  @override
  String get health_add_manual => 'Куьйга мах хадор тӀетоха';

  @override
  String get health_history_trends => 'Исторически тенденцеш';

  @override
  String get health_sync_success =>
      'Могашаллин даннаш кхиамца синхронизаци йина!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '__РН_0__ сахьт __РН_1__ мин';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '__РН_0__ кг';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '__РН_0__ бпм';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '__РХ_0__ %';
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
  String get health_devices_title => 'ЗӀе йолу гӀирсаш а, тӀеюха хӀуманаш а';

  @override
  String get health_devices_desc =>
      'Парни смарт-сахьташна, фитнес-трекершна, могашаллин датчикашна урхалла дар.';

  @override
  String get health_workout_editor_title => 'Тренировка хийца';

  @override
  String get health_workout_name_label => 'Тренировкин цӀе';

  @override
  String get health_workout_duration_label => 'Дахалла (миноташ)';

  @override
  String get health_workout_calories_label => 'Хетарехь, калори (ккал)';

  @override
  String get health_workout_date_label => 'Де а, хан а';

  @override
  String get plan_daily_wellness_roadmap =>
      'Хьан персонализаци йина некъан карта .';

  @override
  String get plan_morning_routine => 'Ӏуьйранна лелош долу гӀуллакх';

  @override
  String get plan_afternoon_routine => 'Юккъа дийнахь могушалла';

  @override
  String get plan_evening_routine => 'Суьйренан мох-Даун';

  @override
  String get plan_coach_badge => 'Блуми АИ тренер';

  @override
  String get plan_weekly_overview => '7-денна лерина могушалла ларъяр';

  @override
  String get plan_targets_title => 'Велнесс Ӏалашонаш а, Ӏалашонаш а';

  @override
  String get plan_calorie_budget_label => 'Денна лерина йолу калорийн бюджет .';

  @override
  String get plan_water_budget_label => 'Денна хи Ӏалашо .';

  @override
  String get plan_step_budget_label => 'Денна гӀулч яккхаран Ӏалашо';

  @override
  String get plan_macro_split_label => 'Макроэлементийн нисдалар';

  @override
  String get profile_personal_details => 'Личный данныйш';

  @override
  String get profile_body_stats => 'ДегӀан барам';

  @override
  String get profile_app_preferences =>
      'Предпочтенеш а, Ӏалашонан настройкаш а';

  @override
  String get profile_edit_name_hint => 'Хьан цӀе .';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Локхалла ( __РХ_0__ )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Йозалла ( __РХ_0__ ) .';
  }

  @override
  String get profile_edit_age_hint => 'Хенан';

  @override
  String get profile_gender_male => 'Боьрша';

  @override
  String get profile_gender_female => 'Зуда';

  @override
  String get profile_gender_other => 'Кхин / Ца ала гӀоле хета';

  @override
  String get profile_activity_sedentary =>
      'Охьахиъна (КӀезиг я цхьа а упражнени ца еш)';

  @override
  String get profile_activity_light => 'КӀеззиг жигара (1-3 де/кӀира)';

  @override
  String get profile_activity_moderate => 'Юккъера жигара (3-5 де/кӀира)';

  @override
  String get profile_activity_very => 'ЧӀогӀа жигара (6-7 де/кӀира)';

  @override
  String get settings_wear_os_header => 'ОС Компаньон Апп лелош';

  @override
  String get settings_wear_os_desc =>
      'Bloomi плитка а, чолхелла а хьайн Wear OS сахьт тӀе дӀахӀоттае, калорешка а, хи а, гӀулчаш а хьажа.';

  @override
  String get settings_widgets_header => 'Интерактивни Android виджеташ';

  @override
  String get settings_widgets_desc =>
      'Хьайн гӀирсан коьртачу экран тӀехь виджеташ дӀахӀиттае, сихонца керланаш хилийта.';

  @override
  String get settings_about_header => 'Блумих лаьцна';

  @override
  String get settings_about_version => '1.0.0 верси ю.';

  @override
  String get settings_about_build => 'Бил 100 .';

  @override
  String get settings_about_credits =>
      'Синкхетамца, могуш-маьрша дахар лардеш кхоьллина.';

  @override
  String get settings_terms_header => 'Бехкамаш а, бехкамаш а';

  @override
  String get settings_privacy_header => 'Къайленан политика';

  @override
  String get settings_delete_header => 'Удалить аккаунт и данные';

  @override
  String get settings_delete_warning =>
      'И гӀуллакх юхадерзо йиш яц. Хьан дерриге а кхача, тренировкаш, дийна дерг, профиль гуттаренна а дӀаяьккхина хир ю.';

  @override
  String get settings_delete_confirm_btn => 'Даима дӀадаккха';

  @override
  String get onboard_welcome_headline => 'Марша вогӀийла хьо Блуми ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'КӀеда, синкхетам болуш велнес-трекинг хьан дахарна гонаха кечйина.';

  @override
  String get onboard_step_about => 'Хьох лаьцна';

  @override
  String get onboard_step_goals => 'Хьан Ӏалашонаш';

  @override
  String get onboard_step_lifestyle => 'Денна лелош долу гӀиллакхаш';

  @override
  String get onboard_step_permissions => 'Бакъонаш';

  @override
  String get onboard_step_plan => 'Кийча ву!';

  @override
  String get onboard_health_connect_perm => 'Могашалла ларъяр';

  @override
  String get onboard_step_sensors_perm => 'ГӀулч дагардаран датчик';

  @override
  String get onboard_notif_perm =>
      'Дагахь латтош долу дагадоуьйтуш а, хаамаш а';

  @override
  String get onboard_camera_perm => 'Камера (Штрих-код а, кхачанан сканер а)';

  @override
  String get onboard_grant_permissions => 'Бакъонаш ло';

  @override
  String get onboard_continue_dashboard => 'Схьаелла панель';

  @override
  String get notif_channel_hydration_name => 'Гидрацин нуьцкъала';

  @override
  String get notif_channel_hydration_desc =>
      'Дерриге а дийнахь кӀеда хи дагадоуьйтуш .';

  @override
  String get notif_channel_nutrition_name => 'Юург а, кхача а дагадоуьйтуш';

  @override
  String get notif_channel_nutrition_desc =>
      'Ӏуьйранна а, делкъанна а, пхьорна а дагадоуьйтуш долу хаамаш';

  @override
  String get notif_channel_steps_name => 'ГӀулчийн Ӏалашонаш';

  @override
  String get notif_channel_steps_desc =>
      'Денна гӀулч яккхаран Ӏалашонаш кхочушъеш даздарш';

  @override
  String get notif_channel_vitals_name => 'Могашалла а, Ӏаламан хьал а толлуш';

  @override
  String get notif_channel_vitals_desc =>
      'Йозалла а, дӀавуьжуш а мох-охьа дагадоуьйтуш';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => 'Снуз 15м';

  @override
  String get notif_action_log_meal => '🥗 Лог кхача';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
