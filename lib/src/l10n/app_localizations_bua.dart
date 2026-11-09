// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Buriat (`bua`).
class AppLocalizationsBua extends AppLocalizations {
  AppLocalizationsBua([String locale = 'bua']) : super(locale);

  @override
  String get app_name => 'Блуми';

  @override
  String get nav_home => 'Гэр';

  @override
  String get nav_today => 'Мүнөөдэр';

  @override
  String get nav_plan => 'Түсэб';

  @override
  String get nav_food => 'Эдеэ хоол';

  @override
  String get nav_food_diary => 'Эдеэнэй үдэр бүриин тэмдэглэл';

  @override
  String get nav_workout => 'Һуралсалай тэмдэглэл';

  @override
  String get nav_health => 'Элүүр энхэ';

  @override
  String get nav_profile => 'Профиль';

  @override
  String get save => 'Хадагалха';

  @override
  String get cancel => 'Болюулха';

  @override
  String get delete => 'Усадхаха';

  @override
  String get edit => 'Заһабарилха';

  @override
  String get done => 'Бүтээбэ';

  @override
  String get close => 'Хааха';

  @override
  String get back => 'Бусаха';

  @override
  String get next => 'Удаадахи';

  @override
  String get continue_btn => 'Үргэлжэлүүлхэ';

  @override
  String get confirm => 'Баталха';

  @override
  String get search => 'Бэдэрхэ';

  @override
  String get filter => 'Шүүгшэ';

  @override
  String get all => 'Бүхы';

  @override
  String get active => 'Эдэбхитэй';

  @override
  String get today => 'Мүнөөдэр';

  @override
  String get yesterday => 'Үглөөдэр';

  @override
  String get tomorrow => 'Үглөөдэр';

  @override
  String get add => 'Нэмэхэ';

  @override
  String get remove => 'Усадхаха';

  @override
  String get refresh => 'Һэргээхэ';

  @override
  String get retry => 'Дахин туршагты';

  @override
  String get error => 'Алдуу';

  @override
  String get success => 'Амжалта';

  @override
  String get loading => 'Ашаажа байна...';

  @override
  String get no_data => 'Мэдээсэл үгы';

  @override
  String get offline => 'Офлайн горим';

  @override
  String get offline_sub =>
      'Дахин холбогдоһоной удаа хубилалтанууд синхронизацилагдаха';

  @override
  String get undo => 'Бусааха';

  @override
  String get portion => 'Хэсэг';

  @override
  String get quantity => 'Тоо';

  @override
  String get unit => 'Бүлэг';

  @override
  String get clear => 'Сэбэрлэхэ';

  @override
  String get select => 'Шэлэхэ';

  @override
  String get apply => 'Мэдүүлгэ оруулха';

  @override
  String get reset => 'Дахин һэргээхэ';

  @override
  String get ok => 'Зай';

  @override
  String get yes => 'Тиимэ';

  @override
  String get no => 'Үгы';

  @override
  String get optional => 'Нэмэлтэ';

  @override
  String get calories => 'Калори';

  @override
  String get protein => 'Уураг';

  @override
  String get carbs => 'Нүүрһэнуһантүрэгшэ';

  @override
  String get fat => 'Тарган';

  @override
  String get fiber => 'Утаһан';

  @override
  String get water => 'Уһан';

  @override
  String get steps => 'Алхамууд';

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
  String get inches => 'ондо';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'саг';

  @override
  String get minutes => 'минута';

  @override
  String get serving => 'Хэрэглэхэ';

  @override
  String get servings => 'Порцинууд';

  @override
  String get serving_size => 'Порциин хэмжээ';

  @override
  String get per_100g => '100г-да';

  @override
  String get india => 'Энэдхэг';

  @override
  String get asia => 'Ази';

  @override
  String get europe => 'Европо';

  @override
  String get middle_east => 'Дундада Зүүн';

  @override
  String get africa => 'Африка';

  @override
  String get americas => 'Америкэ';

  @override
  String get home_title => 'Гэр';

  @override
  String get home_greeting_morning => 'Үглөөнэй мэндэ';

  @override
  String get home_greeting_afternoon => 'Үдэрэй мэндэ';

  @override
  String get home_greeting_evening => 'Үдэшын мэндэ';

  @override
  String get home_streak_title => 'Блоссом Стрик';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count үдэрэй үргэлжэлэл',
      one: '1 үдэрэй үргэлжэлэл',
      zero: '0 үдэрэй үргэлжэлэл',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Шатаһан';

  @override
  String get home_calories_budget => 'Калориин бюджед';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал үлэһэн';
  }

  @override
  String get home_water_title => 'Үдэр бүриин уһажуулга';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Ябаһан алхамууд';

  @override
  String get home_quick_actions => 'Түргэн үйлэ хэрэгүүд';

  @override
  String get home_log_meal => 'Модоной эдеэн';

  @override
  String get home_log_water => 'Модоной уһан';

  @override
  String get home_log_workout => 'Бэшэгэй һорилго';

  @override
  String get home_log_weight => 'Модоной шэгнүүр';

  @override
  String get home_insights_title => 'Мүнөөдэрэй ойлгосонууд';

  @override
  String get home_quote =>
      'Багахан элүүр энхын шэлжэлтэнүүд һалбаржа байһан хубилалтануудые бии болгодог.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI һоригшо';

  @override
  String get home_surroundings => 'Оршон тойронхи байгаали ба агаар';

  @override
  String get home_notifications => 'Мэдэгдэлнүүд';

  @override
  String get home_daily_score => 'Үдэр бүриин элүүр энхын сэгнэлтэ';

  @override
  String get home_view_all => 'Бүхыень хараха';

  @override
  String get food_diary_title => 'Эдеэнэй үдэр бүриин тэмдэглэл';

  @override
  String get food_breakfast => 'Үглөөнэй хоол';

  @override
  String get food_lunch => 'Үдын хоол';

  @override
  String get food_dinner => 'Үдэшын хоол';

  @override
  String get food_snacks => 'Закусканууд';

  @override
  String get food_add_food => 'Эдеэ нэмэхэ';

  @override
  String get food_edit_food => 'Эдеэ хоол заһабарилха';

  @override
  String get food_add_breakfast => 'Үглөөнэй хоол нэмэхэ';

  @override
  String get food_add_lunch => 'Үдын хоол нэмэхэ';

  @override
  String get food_add_dinner => 'Үдэшын хоол нэмэхэ';

  @override
  String get food_add_snack => 'Закуска нэмэхэ';

  @override
  String get food_total_calories => 'Ниитэ калори';

  @override
  String get food_empty_meal => 'Энэ эдеэндэ үшөө эдеэ хоол бүридхэгдээгүй';

  @override
  String get food_empty_diary => 'Энэ үдэртэ эдеэ хоол бүридхэгдээгүй';

  @override
  String get food_log_first_meal =>
      'Түрүүшын амтатай эдеэгээ бүридхэхэдөө + дараха хэрэгтэй';

  @override
  String get food_quick_add => 'Түргэн нэмэлтэ';

  @override
  String get food_search_hint => 'Эдеэ хоол, жэмэс, дал, роти...';

  @override
  String get food_custom_recipe => 'Захиалгаар эдеэ хоол ба жороо үгэ';

  @override
  String get food_scan_barcode => 'Баркод сканерлха';

  @override
  String get food_camera_scan => 'AI эдеэ хоолой сканер';

  @override
  String get food_recent => 'Һаяын эдеэ хоол';

  @override
  String get food_favourites => 'Дуратай';

  @override
  String get food_macro_summary => 'Макроэлементнүүдэй хубаари';

  @override
  String get food_delete_meal_confirm => 'Энэ зүйлые усадхаха һанаатай гүт?';

  @override
  String get food_item_deleted => 'Эдеэ хоол усадхагдаһан';

  @override
  String get food_remaining => 'үлэһэн';

  @override
  String get food_consumed => 'хэрэглэгдээ';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Эдеэ хоол бэдэрхэ';

  @override
  String get foodSearch_scan_barcode => 'Баркод сканерлха';

  @override
  String get foodSearch_take_photo => 'Эдеэнэй гэрэл зураг';

  @override
  String get foodSearch_custom_food => 'Захиалгаар эдеэ хоол бүтээхэ';

  @override
  String get foodSearch_recent_searches => 'Һүүлшын бэдэрэлгэнүүд';

  @override
  String get foodSearch_popular => 'Алдартай эдеэн';

  @override
  String get foodSearch_no_results => 'Танай бэдэрһэн эдеэн үгы';

  @override
  String get barcode_title => 'Штрих-код сканер';

  @override
  String get barcode_align => 'Фотоаппаратай хүрээ дотор штрих-кодые тэгшэлхэ';

  @override
  String get barcode_not_found => 'Бүтээгдэхүүн мэдээсэлэй сан соо үгы';

  @override
  String get barcode_premium_feature =>
      'Штрих-код сканерлалга Bloomi Pro-до бии';

  @override
  String get camera_title => 'AI эдеэ хоолой сканер';

  @override
  String get camera_tap_hint => 'Эдеэнэйнгээ тодо гэрэл зураг буулгагты';

  @override
  String get camera_analysing => 'Эдеэнэй табаг шэнжэлжэ...';

  @override
  String get camera_detected => 'Илгарһан зүйлнүүд';

  @override
  String get camera_flash => 'Flash һэлгэхэ';

  @override
  String get camera_retake => 'Гэрэл зураг дахин буулгаха';

  @override
  String get camera_confirm_food => 'Зүйлнүүдые баталха';

  @override
  String get customFood_title => 'Захиалгаар эдеэ хоол ба жороо үгэ';

  @override
  String get customFood_name_hint => 'Эдеэнэй нэрэ';

  @override
  String get customFood_calories_hint => 'Калори (ккал)';

  @override
  String get customFood_protein_hint => 'Уураг (g)';

  @override
  String get customFood_carbs_hint => 'Нүүрһэнуһантүрэгшэ (г)';

  @override
  String get customFood_fat_hint => 'Тарган (г)';

  @override
  String get customFood_save => 'Жор хадагалха';

  @override
  String get water_tracker_title => 'Уһанай мүрдэгшэ';

  @override
  String get water_daily_target => 'Үдэр бүриин уһажуулгын зорилго';

  @override
  String get water_logged_today => 'Мүнөөдэр бүридхэлдэ абтаа';

  @override
  String get water_add_glass => '+250 мл Шэл';

  @override
  String get water_add_bottle => '+500 мл лонхо';

  @override
  String get water_custom_amount => 'Захиалагшын хэмжээн';

  @override
  String get water_reminder_tip =>
      'Тогтууритай эршэ хүсэнэй түлөө бүхэли үдэр соо саг үргэлжэ уһа уужа бай.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount мл уһан 💧';
  }

  @override
  String get workout_title => 'Һуралсалай тэмдэглэл';

  @override
  String get workout_add_exercise => 'Дасхал нэмэхэ';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Хүсэ шадал';

  @override
  String get workout_yoga => 'Йога ба уян нугархай байдал';

  @override
  String get workout_duration => 'Үргэлжэлэл';

  @override
  String get workout_intensity => 'Эршэм хүсэн';

  @override
  String get workout_calories_burned => 'Шатаһан калоринууд';

  @override
  String get workout_empty => 'Мүнөөдэр ямаршье һорилго бүридхэлдэ абтаагүй';

  @override
  String get workout_save_success => 'Дасхал амжалтатайгаар абарагдаба!';

  @override
  String get workout_type => 'Һуралсалай түхэл';

  @override
  String get workout_notes => 'Тэмдэглэлнүүд ба бодолнууд';

  @override
  String get health_overview_title => 'Элүүр энхэ ба амин шухала';

  @override
  String get health_heart_rate => 'Зүрхэнэй сохилто';

  @override
  String get health_blood_oxygen => 'Шуһанай хүшэлтүрэгшэ (SpO2)';

  @override
  String get health_blood_pressure => 'Шуһанай даралтань';

  @override
  String get health_blood_glucose => 'Шуһанда глюкоза';

  @override
  String get health_body_temperature => 'Бэеын температура';

  @override
  String get health_sleep_tracking => 'Унтаха мүрдэлгэ';

  @override
  String get health_weight_tracking => 'Жин ба бэеын бүридэл';

  @override
  String get health_waist_hip => 'Бэлхүүс ба ташаанай харисаа';

  @override
  String get health_devices_hub => 'Түхеэрэлгэнүүд ба ухаалиг часын түб';

  @override
  String get health_sync_now => 'Элүүрые хамгаалгын мэдээсэл синхронизацилха';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Һүүлшынхиеэ синхронизацилагдаһан: $time';
  }

  @override
  String get health_manual_entry => 'Элүүрые хамгаалгын гараар оруулха';

  @override
  String get health_metric_detail => 'Метрикын дэлгэрэнгы мэдээсэл';

  @override
  String get health_connected_sensors =>
      'Холбоотой элүүрые хамгаалгын датчикнууд';

  @override
  String get plan_title => 'Үдэрэй түсэб';

  @override
  String get plan_weekly_title => 'Долоон хоногой элүүрые хамгаалгын түсэб';

  @override
  String get plan_calorie_target => 'Калориин зорилго';

  @override
  String get plan_water_target => 'Уһажуулгын зорилго';

  @override
  String get plan_step_target => 'Алхам Зорилго';

  @override
  String get plan_sleep_target => 'Унтаха зорилго';

  @override
  String get plan_meal_suggestions => 'Эдеэнэй дурадхалнууд';

  @override
  String get plan_healthy_habits => 'Элүүр энхын заншалнууд ба зүбшэлнүүд';

  @override
  String get plan_coach_advice => 'Bloomi AI һоригшын дурадхалнууд';

  @override
  String get plan_generated_title => 'Хубиин үдэрэй график';

  @override
  String get profile_title => 'Профиль';

  @override
  String get profile_edit => 'Профайл заһабарилха';

  @override
  String get profile_name => 'Нэрэ';

  @override
  String get profile_age => 'Наһан';

  @override
  String get profile_gender => 'Хүнэй хүйһэн';

  @override
  String get profile_height => 'Үндэр';

  @override
  String get profile_weight => 'Жин';

  @override
  String get profile_goal => 'Юрэнхы зорилго';

  @override
  String get profile_activity_level => 'Үйлэдбэриин хэмжээн';

  @override
  String get profile_stats => 'Минии элүүр энхын тоо баримта';

  @override
  String get profile_saved => 'Профайл амжалтатай шэнэлэгдэбэ';

  @override
  String get profile_bmi => 'Бэеын массай индекс (BMI)';

  @override
  String get profile_membership => 'Гишүүншэлгэ';

  @override
  String get settings => 'Тохиргоонууд';

  @override
  String get preferences_habits => 'ДУРАТАЙ БОЛОН ДУРАЛГА';

  @override
  String get appearance_theme => 'Гадаада түхэл ба сэдэб';

  @override
  String get appearance_theme_sub =>
      'Харанхы, гэрэлтэ, системын горим ба апп-ай арын опцинууд';

  @override
  String get permissions => 'Зүбшөөлнүүд ба системэдэ нэбтэрэлгэ';

  @override
  String get permissions_sub =>
      'Элүүрые хамгаалгын холбоо, алхам датчикууд, GPS, мэдээсэлнүүд ба камера';

  @override
  String get reminders_notifications => 'Һануулганууд ба мэдээсэлнүүд';

  @override
  String get reminders_sub =>
      'Эдеэлхэ саг, уһан, шэгнүүрэй шалгалта ба унтаха тухай һануулга';

  @override
  String get units_of_measurement => 'Хэмжээнэй нэгэдэлнүүд';

  @override
  String get units_sub =>
      'Метрик (кг, см, мл, км) гү, али Империал (фунт, фут/дюйм, фл унци)';

  @override
  String get app_language => 'Апп хэлэн';

  @override
  String get language_sub =>
      'Англи, हिन्दी (Хинди), Хинглиш ба 195+ дэлхэйн хэлэнүүд';

  @override
  String get home_screen_widgets => 'Гол дэлгэсэй виджетнүүд';

  @override
  String get widgets_sub =>
      'Сэхэ Android виджетнүүд: Түб, Алхамууд, Уһан, Хоол тэжээл ба Талисман';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Ухаантай часай нүхэр, плитканууд, хүндэрэлнүүд ба амиды амидарал';

  @override
  String get goals_wellness => 'ЗОРИЛГО БОЛОН ЭЛҮҮРЭЙ ХЭЛЭЛСЭЭНҮҮД';

  @override
  String get nutrition_targets =>
      'Хоол тэжээлээ хангаха зорилгонууд ба макро хубаари';

  @override
  String get nutrition_targets_sub =>
      'Калориин зорилго, уураг, нүүрһэнуһантүрэгшэ, өөхэн ба уһанай зорилго';

  @override
  String get weekly_recap => 'Долоон хоногой элүүрые хамгаалгын тобшолол';

  @override
  String get weekly_recap_sub =>
      'үдэрэй дунда зэргын калори, макро харисаа ба эгээл һайн үдэр';

  @override
  String get streaks_milestones => 'Мүрнүүд ба амжалтанууд';

  @override
  String get streaks_sub =>
      'Эдэбхитэй сэсэглэлэй зурлаанууд, тэмдэгүүд ба амжалтанууд';

  @override
  String get connected_devices => 'ХОЛБООТОЙ ТҮХЭЭЛГЭНҮҮД БОЛОН ЭКОСИСТЕМЭ';

  @override
  String get devices_hub => 'Түхеэрэлгэнүүд ба ухаалиг часын түб';

  @override
  String get devices_hub_sub =>
      'Элүүрые хамгаалгын холбоо, Галактика часы, Пиксель часы, Гармин';

  @override
  String get surroundings_weather => 'Оршон тойронхи байдал ба уларил';

  @override
  String get surroundings_sub =>
      'Агаарай шанар (AQI), ультраягаан туяагай индекс ба уларил шэнжэлэлгын зүбшэлнүүд';

  @override
  String get bloomi_pro => 'Bloomi Pro захиалга';

  @override
  String get bloomi_pro_sub =>
      'AI түсэбэй һоригшо, 5 гэрэй дэлгэсэй виджет ба амин шухала мүрдэлгэ';

  @override
  String get about_security => 'АЮУЛГҮЙ БАЙДАЛ ТУХАЙ';

  @override
  String get about_bloomi => 'Блуми тухай';

  @override
  String get about_bloomi_sub =>
      'Бүтээлгын тодорхойлолто, хубилалта, нэрэ томьёо';

  @override
  String get privacy_policy => 'Хубиин бодолгын бодолгын';

  @override
  String get privacy_policy_sub =>
      'Офлайн-түрүүшын, түхеэрэлгэ дээрэхи мэдээсэлэй архитектура';

  @override
  String get terms_conditions => 'Нюур ба дүримүүд';

  @override
  String get terms_conditions_sub =>
      'Үйлэшэлгын дүримүүд ба элүүрые хамгаалгын заабаринууд';

  @override
  String get delete_account => 'Данса ба мэдээсэл усадхаха';

  @override
  String get delete_account_sub =>
      'Нютагай SQLite мэдээсэл ба үүлэнэй нөөсэлэлгэнүүдые һөөргэнь бусаахагүйгөөр усадхаха';

  @override
  String get healthy_habits =>
      'Зөөлэн, удаан үргэлжэлхэ элүүр энхын заншалнуудые байгуулха';

  @override
  String get all_logs => 'Минии шалгаһан мэдээсэл ба бүридхэл';

  @override
  String get search_language =>
      'Хэлэнэй гү, али үндэһэн бэшэгэй ёһоор бэдэрхэ...';

  @override
  String get languages_available => 'Боломжотой хэлэнүүд';

  @override
  String get no_matching_languages => 'Таараһан хэлэнүүд олдоогүй';

  @override
  String get try_searching =>
      'Түрэлхи бэшэгээр гү, али англи хэлэнэй бэшэгээр бэдэржэ туршагты';

  @override
  String get partially_translated => 'Хэсүүгээр оршуулһан';

  @override
  String get complete_translation => 'Дүүргэхэ';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Хэлэ $name ( $nativeName ) гэжэ тохируулагдаһан';
  }

  @override
  String get surroundings_title => 'Оршон тойронхи байгаали';

  @override
  String get surroundings_aqi => 'Агаарай шанарай индекс';

  @override
  String get surroundings_uv => 'Ультрафиолет индекс';

  @override
  String get surroundings_temp => 'Температура';

  @override
  String get surroundings_humidity => 'Шимхэг';

  @override
  String get surroundings_hydration_advice =>
      'Мүнөөнэй уларилда һайнаар уһатай байгты.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Эдеэ хоол бэдэрхэ';

  @override
  String get food_quick_barcode => 'Штрих-код сканерлэхэ 👑';

  @override
  String get food_quick_water => 'Уһа нэмэхэ';

  @override
  String get food_quick_custom => 'Захиалгаар хэһэн эдеэн';

  @override
  String get surroundings_good => 'Һайн';

  @override
  String get surroundings_moderate => 'Дунда зэргын';

  @override
  String get surroundings_unhealthy => 'Элүүр мэндэдэ муу';

  @override
  String get notifications_title => 'Мэдэгдэлнүүд ба һэргылэмжэнүүд';

  @override
  String get notifications_empty => 'Шэнэ мэдээсэл үгы';

  @override
  String get notifications_mark_read => 'Бүхыень уншаһан гэжэ тэмдэглэхэ';

  @override
  String get notifications_clear => 'Бүхыень усадхаха';

  @override
  String get reminders => 'Һануулгын тохиргоонууд';

  @override
  String get notifications => 'Мэдэгдэлнүүд';

  @override
  String get reminders_breakfast_title => 'Үглөөнэй хоол тухай һануулга 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Үглөөнэй мэндэ! $time сагта аша туһатай үглөөнэй хоол бариха саг.';
  }

  @override
  String get reminders_lunch_title => 'Үдын хоол тухай һануулга 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time сагта зогсоод, тэнсүүритэй, ухаансар үдын хоол барижа амталха.';
  }

  @override
  String get reminders_dinner_title => 'Үдэшын хоол тухай һануулга 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time сагта хүнгэн, хангалтатай үдэшын хоол бариха саг.';
  }

  @override
  String get reminders_water_title => 'Гидратациин түлхисэ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Шэнэ стакан уһа ууха саг ерэбэ! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Долоон хоногой шэгнүүр ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) дээрэ долоон хоногой бэеынгээ хэмжүүрые шалгагты.';
  }

  @override
  String get reminders_sleep_title => 'Унтаха саг Һалхин унтарааха 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Амаралтада гаража, амгалан нойрто бэлдэхэ ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi-да амаршалаад байнабди';

  @override
  String get onboard_sub =>
      'Танай эбтэй эетэй, офлайн-түрүүшын элүүрые хамгаалха ба эдеэ хоолой нүхэр.';

  @override
  String get onboard_get_started => 'Эхилхэ';

  @override
  String get onboard_sign_in => 'Нэгэ нэбтэрхэ';

  @override
  String get onboard_skip => 'Алхаха';

  @override
  String get onboard_choose_goal =>
      'Танай элүүрые хамгаалгын гол зорилго юун бэ?';

  @override
  String get onboard_goal_weight_loss => 'Зөөлэн шэгнүүрэй алдагдалга';

  @override
  String get onboard_goal_muscle => 'Булшархайн нэмэгдэл ба хүсэн';

  @override
  String get onboard_goal_energy => 'Үдэр бүриин эршэ хүсэн ба амидарал';

  @override
  String get onboard_goal_habits => 'Элүүр энхын ухаан бодолтой эдеэлхэ';

  @override
  String get onboard_about_you => 'Өөр тухайгаа хөөрэжэ үгыт';

  @override
  String get onboard_lifestyle => 'Танай үдэр бүриин журам';

  @override
  String get onboard_permissions_title => 'Зүбшөөлнүүд ба системэдэ нэбтэрэлгэ';

  @override
  String get onboard_permissions_sub =>
      'Синхронизациин алхамууд, һорилгонууд болон һануулгануудта нэбтэрхэ эрхэ олгогты.';

  @override
  String get onboard_plan_ready_title => 'Танай өөрын түсэб бэлэн болоо!';

  @override
  String get onboard_plan_ready_sub =>
      'Бидэ гансал таанадта зөөлэн, өөртөө таараһан эдеэ хоолой ба элүүр энхын харгын карта зохёогообди.';

  @override
  String get onboard_enter_bloomi => 'Bloomi руу орохо';

  @override
  String get insights_weekly_report =>
      'Долоон хоногой элүүрые хамгаалгын тобшолол';

  @override
  String insights_best_day(Object day) {
    return 'Эрхим нягта үдэр: $day';
  }

  @override
  String get insights_streaks_badges => 'Мүрнүүд ба амжалтанууд';

  @override
  String insights_unlocked_on(Object date) {
    return '$date дээрэ нээгдээ';
  }

  @override
  String get insights_keep_going => 'Гайхалтай урагшатай ябагты!';

  @override
  String get widgets_title => 'Гол дэлгэсэй виджетнүүд';

  @override
  String widgets_active_count(Object count) {
    return 'Эдэбхитэй виджетнүүд: $count';
  }

  @override
  String get widgets_hub_title => 'Блумиин элүүрые хамгаалгын түб';

  @override
  String get widgets_steps_title => 'Алхамууд ба эдэбхитэй бэһэлиг';

  @override
  String get widgets_water_title => 'Уһанда шэнгээхэ түргэн бүридхэл';

  @override
  String get widgets_mascot_title => 'Блумиин талисман нүхэр';

  @override
  String get wear_os_title => 'OS Smartwatch үмдэхэ';

  @override
  String get wear_os_connected => 'Watch-тай холбоотой';

  @override
  String get wear_os_sync => 'Хараха мэдээсэл синхронизацилха';

  @override
  String get theme_title => 'Гадаада түхэл ба сэдэб';

  @override
  String get theme_mode => 'Сэдэбэй горим';

  @override
  String get theme_light => 'Гэрэл';

  @override
  String get theme_dark => 'Хара';

  @override
  String get theme_system => 'Системын стандарт';

  @override
  String get theme_background_palette => 'Ара талын палитра';

  @override
  String get units_title => 'Хэмжээнэй нэгэдэлнүүд';

  @override
  String get units_metric => 'Метрикэ (кг, см, мл)';

  @override
  String get units_imperial => 'Империал (фунт, дюйм, фл унци)';

  @override
  String get home_unable_load => 'Санхүүгэй самбар ашаглажа шадаагүй';

  @override
  String get home_health_permission_req =>
      'Элүүрые хамгаалгын холбооной зүбшөөл хэрэгтэй';

  @override
  String get home_health_permission_desc =>
      'Bloomi бодото алхамуудые татаха, зүрхэнэй сохилто татаха, мобильна гэрэй виджетүүдые бодото сагта синхронизацилха Health Connect зүбшөөл хэрэгтэй.';

  @override
  String get home_allow_health => 'Элүүрые хамгаалгын холбоо зүбшөөхэ';

  @override
  String get home_ready_mindful_day => 'Сэдьхэлэй үдэртэ бэлэн гүт? ✨';

  @override
  String get home_quick_add => 'Түргэн нэмэлтэ';

  @override
  String get home_live_gps => 'Сэхэ GPS';

  @override
  String get home_calories_remaining_label => 'ҮЛЭҺЭН КАЛОРИ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Эдэһэн: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Уһанай мүрдэлгын кран 💧';

  @override
  String get home_water_goal_reached => 'Үдэрэй зорилго бэелүүлэгдээ 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining мл үдэрэй зорилгодо';
  }

  @override
  String get home_details => 'Дэлгэрэнгы мэдээсэл';

  @override
  String get home_upgrade_plan_desc =>
      'Хубиин үдэр бүриин зорилгонуудые ба AI түсэбые нээхэ шэнэлэлтэ';

  @override
  String get home_unlock => 'Түлхюур нээхэ 👑';

  @override
  String get home_quick_log_hint =>
      'Элүүрые хамгаалгын мэдүүлгэ түргэн бэшэжэ абагты';

  @override
  String get food_serving_size => 'Порциин хэмжээ';

  @override
  String get food_serving_grams => 'Хэрэглэхэ (g)';

  @override
  String get food_number_servings => 'Порциин тоо';

  @override
  String get food_calories_per_serving => 'Нэгэ порцида калори';

  @override
  String get food_recipe_ingredients => 'Найрлаганууд';

  @override
  String get food_recipe_add_ingredient => 'Найрлага нэмэхэ';

  @override
  String get food_recipe_directions => 'Заабари ба тэмдэглэлнүүд';

  @override
  String get food_recipe_total => 'Ниитэ жороо эдеэ хоол';

  @override
  String get food_recipe_per_serving => 'Нэгэ порциин эдеэ хоол';

  @override
  String get food_recipe_saved_toast =>
      'Захиалгаар хэһэн эдеэ хоол амжалтатайгаар абарагдаба!';

  @override
  String get food_barcode_found => 'Бүтээгдэхүүн олдоо!';

  @override
  String get food_barcode_not_found_desc =>
      'Нээмэл мэдээсэлэй сан соо энэ штрих-код оложо шадаагүйбди. Та энээнииень захиһан эдеэн болгон нэмэжэ болохот.';

  @override
  String get food_add_custom_btn => 'Захиалгаар эдеэ хоол нэмэхэ';

  @override
  String get food_scan_again => 'Дахин сканер';

  @override
  String get food_review_items => 'Илгарһан эдеэ хоол шалгаха';

  @override
  String get food_review_hint =>
      'Тоо хэмжээе тааруулха гү, али танигдахагүй зүйлые усадхаха';

  @override
  String get food_log_selected => 'Шэлэгдэhэн эдеэ хоол бүридхэхэ';

  @override
  String get food_favourites_title => 'Дуратай эдеэн';

  @override
  String get food_recent_title => 'Һаяын эдеэ хоол';

  @override
  String get food_no_favourites =>
      'Дуратай эдеэн үшөө үгы. Эндэ хэмнэхэ ямаршье эдеэ хоолдо дуратай байгты.';

  @override
  String get food_no_recents => 'Һаяхан бүридхэгдэһэн эдеэ хоол олдоогүй.';

  @override
  String get food_nutrition_details_title =>
      'Үдэр бүриин эдеэ хоолой дэлгэрэнгы мэдээсэл';

  @override
  String get food_macro_protein_label => 'Уураг задарал';

  @override
  String get food_macro_carbs_label => 'Нүүрһэнуһантүрэгшын хубаари';

  @override
  String get food_macro_fat_label => 'Өөхэнэй хубаари';

  @override
  String get food_macro_fiber_label => 'Утаһанай задарал';

  @override
  String get food_daily_target_comparison => 'Зорилгото зэргэсүүлгэ';

  @override
  String food_target_label(Object target) {
    return 'Зорилго: $target';
  }

  @override
  String get food_edit_entry => 'Дневникэй бэшэг заһабарилха';

  @override
  String get food_delete_entry => 'Оролто усадхаха';

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
  String get water_intake_history => 'Мүнөөдэрэй уһанай тэмдэглэлнүүд';

  @override
  String get water_no_logs_today =>
      'Мүнөөдэр үшөө уһан ороогүй. Уһалжа, түргэн нэмэлгын товчин дээрэ дараха хэрэгтэй!';

  @override
  String get water_adjust_goal => 'Үдэрэй зорилго тааруулха';

  @override
  String get health_connect_banner => 'Элүүрые хамгаалгын холбоотой';

  @override
  String get health_vitals_summary => 'Үдэр бүриин элүүр мэндэ';

  @override
  String get health_latest_heart_rate => 'Һүүлшын зүрхэнэй сохилто';

  @override
  String get health_latest_bp => 'Шуһанай даралтань';

  @override
  String get health_latest_spo2 => 'Шуһанай хүшэлтүрэгшэ';

  @override
  String get health_latest_glucose => 'Шуһанда глюкоза';

  @override
  String get health_latest_weight => 'Жин';

  @override
  String get health_latest_sleep => 'Унтаха үргэлжэлэл';

  @override
  String get health_add_manual => 'Гараар хэмжүүр нэмэхэ';

  @override
  String get health_history_trends => 'Түүхын шэглэлнүүд';

  @override
  String get health_sync_success =>
      'Элүүрые хамгаалгын мэдээсэл амжалтатай синхронизацилагдаа!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours час $mins мин';
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
    return '$systolic / $diastolic мм рт.ст.';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title =>
      'Холбоотой хэрэгсэлнүүд ба үмдэхэ хэрэгсэлнүүд';

  @override
  String get health_devices_desc =>
      'Хос ухаалиг часынуудые, фитнес-трекернүүдые, элүүрые хамгаалгын датчикнуудые ударидаха.';

  @override
  String get health_workout_editor_title => 'Дасхал заһабарилха';

  @override
  String get health_workout_name_label => 'Бэеын тамирай нэрэ';

  @override
  String get health_workout_duration_label => 'Үргэлжэлэл (минут)';

  @override
  String get health_workout_calories_label => 'Тоосоолһон калори (ккал)';

  @override
  String get health_workout_date_label => 'Үдэр ба саг';

  @override
  String get plan_daily_wellness_roadmap =>
      'Танай өөртөө тааруулһан харгын карта';

  @override
  String get plan_morning_routine => 'Үглөөнэй журам';

  @override
  String get plan_afternoon_routine => 'Үдэрэй элүүр энхэ байдал';

  @override
  String get plan_evening_routine => 'Үдэшын һалхин';

  @override
  String get plan_coach_badge => 'Bloomi AI һоригшо';

  @override
  String get plan_weekly_overview => '7-үдэрэй элүүр энхын анхарал';

  @override
  String get plan_targets_title =>
      'Элүүрые хамгаалгын зорилгонууд ба зорилгонууд';

  @override
  String get plan_calorie_budget_label => 'Үдэр бүриин калориин бюджед';

  @override
  String get plan_water_budget_label => 'Үдэр бүриин уһанай зорилго';

  @override
  String get plan_step_budget_label => 'Үдэр бүриин алхам зорилго';

  @override
  String get plan_macro_split_label => 'Макроэлементнүүдэй харисаа';

  @override
  String get profile_personal_details => 'Хубиин мэдээсэл';

  @override
  String get profile_body_stats => 'Бэеын хэмжүүрнүүд';

  @override
  String get profile_app_preferences => 'Тохиргоонууд ба апп-ай тохиргоонууд';

  @override
  String get profile_edit_name_hint => 'Танай нэрэ';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Үндэр ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Жин ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Наһан';

  @override
  String get profile_gender_male => 'Эрэ';

  @override
  String get profile_gender_female => 'Эхэнэр';

  @override
  String get profile_gender_other => 'Бусад / Хэлэхэеэ һанадаггүйб';

  @override
  String get profile_activity_sedentary =>
      'Һуужа һууха (Бага гү, али үгышье һаа бэеэ һорихо)';

  @override
  String get profile_activity_light =>
      'Хүнгэн эдэбхитэй (1-3 үдэр/долоо хоног)';

  @override
  String get profile_activity_moderate =>
      'Дунда зэргын эдэбхитэй (3-5 үдэр/долоо хоног)';

  @override
  String get profile_activity_very => 'Ехэ эдэбхитэй (6-7 үдэр/долоо хоног)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Wear OS часы дээрээ Bloomi плиткэ ба хүндэрэлые табижа, калори, уһа, алхамуудые харагты.';

  @override
  String get settings_widgets_header => 'Интерактивна Андроид виджетнүүд';

  @override
  String get settings_widgets_desc =>
      'Түргэн шэнэлэлтэнүүдые абахын тулада бодото сагта виджетнүүдые түхеэрэмжынгээ гэрэй дэлгэс дээрэ хабсаруулха.';

  @override
  String get settings_about_header => 'Блуми тухай';

  @override
  String get settings_about_version => '1.0.0 хубилалта';

  @override
  String get settings_about_build => '100 бүтээхэ';

  @override
  String get settings_about_credits =>
      'Сэдьхэлэй, элүүр энхын амидаралай түлөө анхаралтайгаар бүтээгдэһэн.';

  @override
  String get settings_terms_header => 'Нюур ба дүримүүд';

  @override
  String get settings_privacy_header => 'Хубиин бодолгын бодолгын';

  @override
  String get settings_delete_header => 'Данса ба мэдээсэл усадхаха';

  @override
  String get settings_delete_warning =>
      'Энэ үйлэ һөөргэнь бусаажа болохогүй. Танай бүхы эдеэ хоол, бэеын тамирай дасхалнууд, амин шухала зүйлнүүд, профиль хэтын хэтэдэ усадхагдаха.';

  @override
  String get settings_delete_confirm_btn => 'Үнэхөөрөө усадхаха';

  @override
  String get onboard_welcome_headline => 'Bloomi-да амаршалаад байнабди ✨';

  @override
  String get onboard_welcome_tagline =>
      'Танай амидаралда зорюулагдаһан зөөлэн, ухаансар элүүрые хамгаалгын мүрдэлгэ.';

  @override
  String get onboard_step_about => 'Танай тухай';

  @override
  String get onboard_step_goals => 'Танай зорилгонууд';

  @override
  String get onboard_step_lifestyle => 'Үдэр бүриин заншалнууд';

  @override
  String get onboard_step_permissions => 'Зүбшөөлнүүд';

  @override
  String get onboard_step_plan => 'Бэлэн!';

  @override
  String get onboard_health_connect_perm =>
      'Элүүрые хамгаалгын холбооной нэбтэрэлгэ';

  @override
  String get onboard_step_sensors_perm => 'Алхам тоолуур датчик';

  @override
  String get onboard_notif_perm => 'Сэдьхэлэй һануулганууд ба мэдээсэлнүүд';

  @override
  String get onboard_camera_perm => 'Фотоаппарат (штрих-код ба эдеэнэй сканер)';

  @override
  String get onboard_grant_permissions => 'Зүбшөөл үгэхэ';

  @override
  String get onboard_continue_dashboard => 'Самбар нээхэ';

  @override
  String get notif_channel_hydration_name => 'Уһажуулгын түлхисэ';

  @override
  String get notif_channel_hydration_desc =>
      'Үдэрэй туршада зөөлэн уһанай һануулга';

  @override
  String get notif_channel_nutrition_name =>
      'Эдеэ хоол ба эдеэ хоолой һануулга';

  @override
  String get notif_channel_nutrition_desc =>
      'Үглөөнэй, үдын, үдэшын хоол тухай һануулгын һэргылэмжэ';

  @override
  String get notif_channel_steps_name => 'Алхамуудай гол шатанууд';

  @override
  String get notif_channel_steps_desc =>
      'Үдэр бүриин алхамуудай зорилгонуудта хүрэхэдөө баяр ёһололнууд';

  @override
  String get notif_channel_vitals_name =>
      'Элүүрые хамгаалгын ба амидаралай шалгалтанууд';

  @override
  String get notif_channel_vitals_desc =>
      'Жин ба унтахын урда тээхи амаралта тухай һануулга';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => 'унтаха 15м';

  @override
  String get notif_action_log_meal => '🥗 Модоной эдеэн';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
