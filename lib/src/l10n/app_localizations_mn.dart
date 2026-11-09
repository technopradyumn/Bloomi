// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get app_name => 'Блум';

  @override
  String get nav_home => 'Гэр';

  @override
  String get nav_today => 'Өнөөдөр';

  @override
  String get nav_plan => 'Төлөвлөгөө';

  @override
  String get nav_food => 'Хоол хүнс';

  @override
  String get nav_food_diary => 'Хоолны өдрийн тэмдэглэл';

  @override
  String get nav_workout => 'Дасгалын бүртгэл';

  @override
  String get nav_health => 'Эрүүл мэнд';

  @override
  String get nav_profile => 'Профайл';

  @override
  String get save => 'Хадгалах';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get delete => 'Устгах';

  @override
  String get edit => 'Засварлах';

  @override
  String get done => 'Дууслаа';

  @override
  String get close => 'Хаах';

  @override
  String get back => 'Буцах';

  @override
  String get next => 'Дараа нь';

  @override
  String get continue_btn => 'Үргэлжлүүлэх';

  @override
  String get confirm => 'Баталгаажуулах';

  @override
  String get search => 'Хайх';

  @override
  String get filter => 'Шүүлтүүр';

  @override
  String get all => 'Бүгд';

  @override
  String get active => 'Идэвхтэй';

  @override
  String get today => 'Өнөөдөр';

  @override
  String get yesterday => 'Өчигдөр';

  @override
  String get tomorrow => 'Маргааш';

  @override
  String get add => 'Нэмэх';

  @override
  String get remove => 'Устгах';

  @override
  String get refresh => 'Сэргээх';

  @override
  String get retry => 'Дахин оролдоно уу';

  @override
  String get error => 'Алдаа';

  @override
  String get success => 'Амжилт';

  @override
  String get loading => 'Ачааж байна...';

  @override
  String get no_data => 'Өгөгдөл байхгүй байна';

  @override
  String get offline => 'Офлайн горим';

  @override
  String get offline_sub => 'Дахин холбогдсон үед өөрчлөлтүүд синк хийгдэнэ';

  @override
  String get undo => 'Буцаах';

  @override
  String get portion => 'Хэсэг';

  @override
  String get quantity => 'Тоо хэмжээ';

  @override
  String get unit => 'Нэгж';

  @override
  String get clear => 'Тодорхой';

  @override
  String get select => 'Сонго';

  @override
  String get apply => 'Өргөдөл гаргах';

  @override
  String get reset => 'Дахин тохируулах';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Тиймээ';

  @override
  String get no => 'Үгүй';

  @override
  String get optional => 'Нэмэлт';

  @override
  String get calories => 'Калори';

  @override
  String get protein => 'Уураг';

  @override
  String get carbs => 'Нүүрс ус';

  @override
  String get fat => 'Өөх';

  @override
  String get fiber => 'Шилэн';

  @override
  String get water => 'Ус';

  @override
  String get steps => 'Алхам';

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
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'цаг';

  @override
  String get minutes => 'мин';

  @override
  String get serving => 'Үйлчилж байна';

  @override
  String get servings => 'Үйлчлэх';

  @override
  String get serving_size => 'Үйлчлэх хэмжээ';

  @override
  String get per_100g => '100 гр тутамд';

  @override
  String get india => 'Энэтхэг';

  @override
  String get asia => 'Ази';

  @override
  String get europe => 'Европ';

  @override
  String get middle_east => 'Ойрхи Дорнод';

  @override
  String get africa => 'Африк';

  @override
  String get americas => 'Америк';

  @override
  String get home_title => 'Гэр';

  @override
  String get home_greeting_morning => 'Өглөөний мэнд';

  @override
  String get home_greeting_afternoon => 'Өдрийн мэнд';

  @override
  String get home_greeting_evening => 'Оройн мэнд';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өдрийн дараалал',
      one: '1 өдрийн дараалал',
      zero: '0 өдрийн дараалал',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Шатаасан';

  @override
  String get home_calories_budget => 'Калорийн төсөв';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal ккал үлдсэн';
  }

  @override
  String get home_water_title => 'Өдөр бүр чийгшүүлэх';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target мл';
  }

  @override
  String get home_steps_title => 'Алхам алхсан';

  @override
  String get home_quick_actions => 'Шуурхай үйлдэл';

  @override
  String get home_log_meal => 'Бүртгэлийн хоол';

  @override
  String get home_log_water => 'Бүртгэлийн ус';

  @override
  String get home_log_workout => 'Бүртгэлийн дасгал';

  @override
  String get home_log_weight => 'Лог жин';

  @override
  String get home_insights_title => 'Өнөөдрийн ойлголтууд';

  @override
  String get home_quote =>
      'Эрүүл жижиг сонголтууд нь цэцэглэж буй өөрчлөлтийг бий болгодог.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI дасгалжуулагч';

  @override
  String get home_surroundings => 'Хүрээлэн буй орчин, агаар';

  @override
  String get home_notifications => 'Мэдэгдэл';

  @override
  String get home_daily_score => 'Өдөр тутмын эрүүл мэндийн оноо';

  @override
  String get home_view_all => 'Бүгдийг харах';

  @override
  String get food_diary_title => 'Хоолны өдрийн тэмдэглэл';

  @override
  String get food_breakfast => 'Өглөөний цай';

  @override
  String get food_lunch => 'Үдийн хоол';

  @override
  String get food_dinner => 'Оройн хоол';

  @override
  String get food_snacks => 'Зууш';

  @override
  String get food_add_food => 'Хоол нэмнэ';

  @override
  String get food_edit_food => 'Хоолыг засах';

  @override
  String get food_add_breakfast => 'Өглөөний цай нэмнэ';

  @override
  String get food_add_lunch => 'Үдийн хоол нэмнэ';

  @override
  String get food_add_dinner => 'Оройн хоол нэмнэ';

  @override
  String get food_add_snack => 'Зууш нэмнэ';

  @override
  String get food_total_calories => 'Нийт калори';

  @override
  String get food_empty_meal =>
      'Энэ хоолонд зориулсан хоол хараахан бүртгэгдээгүй байна';

  @override
  String get food_empty_diary => 'Энэ өдөр ямар ч хоол бүртгэгдээгүй';

  @override
  String get food_log_first_meal =>
      'Анхны амттай хоолоо бүртгүүлэхийн тулд + дээр товшино уу';

  @override
  String get food_quick_add => 'Түргэн нэмэх';

  @override
  String get food_search_hint => 'Аяга таваг, жимс жимсгэнэ, дал, роти...';

  @override
  String get food_custom_recipe => 'Захиалгат хоол ба жор';

  @override
  String get food_scan_barcode => 'Бар кодыг сканнердах';

  @override
  String get food_camera_scan => 'AI хүнсний сканнер';

  @override
  String get food_recent => 'Сүүлийн үеийн хоол хүнс';

  @override
  String get food_favourites => 'Дуртай';

  @override
  String get food_macro_summary => 'Макронутриентийн задаргаа';

  @override
  String get food_delete_meal_confirm =>
      'Та энэ зүйлийг устгахдаа итгэлтэй байна уу?';

  @override
  String get food_item_deleted => 'Хүнсний зүйлийг хассан';

  @override
  String get food_remaining => 'үлдсэн';

  @override
  String get food_consumed => 'хэрэглэсэн';

  @override
  String food_of_target(Object target) {
    return '$target ккал';
  }

  @override
  String get foodSearch_title => 'Хоол хайх';

  @override
  String get foodSearch_scan_barcode => 'Бар кодыг сканнердах';

  @override
  String get foodSearch_take_photo => 'Хоолны гэрэл зураг';

  @override
  String get foodSearch_custom_food => 'Захиалгат хоолыг бий болгох';

  @override
  String get foodSearch_recent_searches => 'Сүүлийн үеийн хайлтууд';

  @override
  String get foodSearch_popular => 'Алдартай хоол';

  @override
  String get foodSearch_no_results => 'Таны хайлтанд тохирох хоол олдсонгүй';

  @override
  String get barcode_title => 'Бар код сканнер';

  @override
  String get barcode_align => 'Зураасан кодыг камерын хүрээ дотор зэрэгцүүлнэ';

  @override
  String get barcode_not_found => 'Бүтээгдэхүүн мэдээллийн сангаас олдсонгүй';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro дээр бар код скан хийх боломжтой';

  @override
  String get camera_title => 'AI хүнсний сканнер';

  @override
  String get camera_tap_hint => 'Хоолныхоо тод зургийг аваарай';

  @override
  String get camera_analysing => 'Хоолны тавагыг шинжилж байна...';

  @override
  String get camera_detected => 'Илэрсэн зүйлс';

  @override
  String get camera_flash => 'Flash-г асаах/унтраах';

  @override
  String get camera_retake => 'Зургийг дахин авах';

  @override
  String get camera_confirm_food => 'Зүйлүүдийг баталгаажуулах';

  @override
  String get customFood_title => 'Захиалгат хоол ба жор';

  @override
  String get customFood_name_hint => 'Хоол эсвэл найрлагын нэр';

  @override
  String get customFood_calories_hint => 'Калори (ккал)';

  @override
  String get customFood_protein_hint => 'Уураг (гр)';

  @override
  String get customFood_carbs_hint => 'Нүүрс ус (гр)';

  @override
  String get customFood_fat_hint => 'Өөх тос (гр)';

  @override
  String get customFood_save => 'Жорыг хадгалах';

  @override
  String get water_tracker_title => 'Усны хянагч';

  @override
  String get water_daily_target => 'Өдөр тутмын чийгшүүлэх зорилго';

  @override
  String get water_logged_today => 'Өнөөдөр нэвтэрсэн';

  @override
  String get water_add_glass => '+250 мл шил';

  @override
  String get water_add_bottle => '+500 мл-ийн шил';

  @override
  String get water_custom_amount => 'Захиалгат дүн';

  @override
  String get water_reminder_tip =>
      'Тогтвортой энерги авахын тулд өдрийн турш тогтмол ус уу.';

  @override
  String water_logged_toast(Object amount) {
    return 'Бүртгүүлсэн $amount мл ус 💧';
  }

  @override
  String get workout_title => 'Дасгалын бүртгэл';

  @override
  String get workout_add_exercise => 'Дасгал нэмэх';

  @override
  String get workout_cardio => 'Кардио';

  @override
  String get workout_strength => 'Хүч чадал';

  @override
  String get workout_yoga => 'Иог ба уян хатан байдал';

  @override
  String get workout_duration => 'Үргэлжлэх хугацаа';

  @override
  String get workout_intensity => 'Эрчим хүч';

  @override
  String get workout_calories_burned => 'Шатаасан калори';

  @override
  String get workout_empty => 'Өнөөдөр ямар ч дасгал бүртгэгдээгүй';

  @override
  String get workout_save_success => 'Дасгалыг амжилттай хадгаллаа!';

  @override
  String get workout_type => 'Дасгалын төрөл';

  @override
  String get workout_notes => 'Тэмдэглэл & эргэцүүлэл';

  @override
  String get health_overview_title => 'Эрүүл мэнд ба амин чухал';

  @override
  String get health_heart_rate => 'Зүрхний цохилт';

  @override
  String get health_blood_oxygen => 'Цусан дахь хүчилтөрөгч (SpO2)';

  @override
  String get health_blood_pressure => 'Цусны даралт';

  @override
  String get health_blood_glucose => 'Цусан дахь глюкоз';

  @override
  String get health_body_temperature => 'Биеийн температур';

  @override
  String get health_sleep_tracking => 'Унтлагын хяналт';

  @override
  String get health_weight_tracking => 'Жин ба биеийн бүтэц';

  @override
  String get health_waist_hip => 'Бүсэлхийн ба ташааны харьцаа';

  @override
  String get health_devices_hub => 'Төхөөрөмж ба ухаалаг цагны төв';

  @override
  String get health_sync_now => 'Эрүүл мэндийн өгөгдлийг синк хийх';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Сүүлд синк хийсэн: $time';
  }

  @override
  String get health_manual_entry => 'Эрүүл мэндийн гарын авлагын оруулга';

  @override
  String get health_metric_detail => 'Метрийн дэлгэрэнгүй мэдээлэл';

  @override
  String get health_connected_sensors => 'Холбогдсон эрүүл мэндийн мэдрэгч';

  @override
  String get plan_title => 'Өдөр тутмын төлөвлөгөө';

  @override
  String get plan_weekly_title => 'Долоо хоног тутмын эрүүл мэндийн төлөвлөгөө';

  @override
  String get plan_calorie_target => 'Калорийн зорилт';

  @override
  String get plan_water_target => 'Чийгшүүлэх зорилт';

  @override
  String get plan_step_target => 'Алхам зорилт';

  @override
  String get plan_sleep_target => 'Унтах зорилт';

  @override
  String get plan_meal_suggestions => 'Хоолны зөвлөмж';

  @override
  String get plan_healthy_habits => 'Эрүүл зуршил ба зөвлөмжүүд';

  @override
  String get plan_coach_advice => 'Bloomi AI дасгалжуулагчийн зөвлөмж';

  @override
  String get plan_generated_title => 'Хувь хүний ​​өдөр тутмын хуваарь';

  @override
  String get profile_title => 'Профайл';

  @override
  String get profile_edit => 'Профайлыг засах';

  @override
  String get profile_name => 'Нэр';

  @override
  String get profile_age => 'Нас';

  @override
  String get profile_gender => 'Хүйс';

  @override
  String get profile_height => 'Өндөр';

  @override
  String get profile_weight => 'Жин';

  @override
  String get profile_goal => 'Үндсэн зорилго';

  @override
  String get profile_activity_level => 'Үйл ажиллагааны түвшин';

  @override
  String get profile_stats => 'Миний эрүүл мэндийн статистик';

  @override
  String get profile_saved => 'Профайлыг амжилттай шинэчилсэн';

  @override
  String get profile_bmi => 'Биеийн жингийн индекс (BMI)';

  @override
  String get profile_membership => 'Гишүүнчлэл';

  @override
  String get settings => 'Тохиргоо';

  @override
  String get preferences_habits => 'ТОХИОЛДОЛ, ДУРШЛАГА';

  @override
  String get appearance_theme => 'Гадаад төрх ба сэдэв';

  @override
  String get appearance_theme_sub =>
      'Харанхуй, цайвар, системийн горим, програмын дэвсгэрийн сонголтууд';

  @override
  String get permissions => 'Зөвшөөрөл ба системийн хандалт';

  @override
  String get permissions_sub =>
      'Эрүүл мэндийн холболт, алхам мэдрэгч, GPS, мэдэгдэл, камер';

  @override
  String get reminders_notifications => 'Сануулагч ба мэдэгдэл';

  @override
  String get reminders_sub =>
      'Хоолны цаг, ус, жингээ шалгах, унтахын өмнөх сануулга';

  @override
  String get units_of_measurement => 'Хэмжилтийн нэгж';

  @override
  String get units_sub =>
      'Метрик (кг, см, мл, км) эсвэл эзэн хааны (фунт, фут/ин, ф унц)';

  @override
  String get app_language => 'Програмын хэл';

  @override
  String get language_sub =>
      'Англи, हिन्दी (Хинди), Хингли хэл, дэлхийн 195+ хэл';

  @override
  String get home_screen_widgets => 'Үндсэн дэлгэцийн виджетүүд';

  @override
  String get widgets_sub =>
      'Амьд Android виджетүүд: Төв, Алхам, Ус, Хоол тэжээл, Сахиус';

  @override
  String get wear_os_watch_app => 'Wear OS Watch програм';

  @override
  String get wear_os_sub =>
      'Ухаалаг цагны хамтрагч, хавтанцар, хүндрэлүүд, амин чухал зүйлс';

  @override
  String get goals_wellness => 'ЗОРИЛГО, САЙХАН АЖИЛЛАГААНЫ ЗААВАЛ';

  @override
  String get nutrition_targets => 'Хоол тэжээлийн зорилтууд ба макро хуваах';

  @override
  String get nutrition_targets_sub =>
      'Калорийн зорилт, уураг, нүүрс ус, өөх тос, усны зорилго';

  @override
  String get weekly_recap => 'Долоо хоног тутмын эрүүл мэндийн тойм';

  @override
  String get weekly_recap_sub =>
      '7 хоногийн дундаж илчлэг, макро харьцаа, хамгийн сайн өдөр';

  @override
  String get streaks_milestones => 'Судлууд ба чухал үеүүд';

  @override
  String get streaks_sub => 'Идэвхтэй цэцэглэлтийн зураас, тэмдэг, амжилт';

  @override
  String get connected_devices => 'ХОЛБООТОЙ ТӨХӨӨРӨМЖ БА ЭКОСИСТЕМ';

  @override
  String get devices_hub => 'Төхөөрөмж ба ухаалаг цагны төв';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Хүрээлэн буй орчин, цаг агаар';

  @override
  String get surroundings_sub =>
      'Агаарын чанар (AQI), хэт ягаан туяаны индекс ба цаг агаарын чийгшлийн зөвлөмжүүд';

  @override
  String get bloomi_pro => 'Bloomi Pro захиалга';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 үндсэн дэлгэцийн виджет, амин чухал мэдээллийг хянах';

  @override
  String get about_security => 'ТУХАЙ & АЮУЛГҮЙ БАЙДАЛ';

  @override
  String get about_bloomi => 'Блумын тухай';

  @override
  String get about_bloomi_sub => 'Үзүүлэлт, хувилбар, аттрибутыг бүтээх';

  @override
  String get privacy_policy => 'Нууцлалын бодлого';

  @override
  String get privacy_policy_sub =>
      'Офлайн-эхлээд төхөөрөмж дээрх өгөгдлийн бүтэц';

  @override
  String get terms_conditions => 'Нөхцөл ба нөхцөл';

  @override
  String get terms_conditions_sub =>
      'Үйлчилгээний нөхцөл, эрүүл мэндийн удирдамж';

  @override
  String get delete_account => 'Бүртгэл болон өгөгдлийг устгах';

  @override
  String get delete_account_sub =>
      'Орон нутгийн SQLite өгөгдөл болон үүлэн нөөцлөлтийг эргэлт буцалтгүй устгана';

  @override
  String get healthy_habits =>
      'Зөөлөн, удаан үргэлжлэх эрүүл мэндийн дадал зуршлыг бий болго';

  @override
  String get all_logs => 'Миний хянасан өгөгдөл, бүртгэл';

  @override
  String get search_language => 'Хэл эсвэл эх бичгээр хайх...';

  @override
  String get languages_available => 'Боломжтой хэлүүд';

  @override
  String get no_matching_languages => 'Тохирох хэл олдсонгүй';

  @override
  String get try_searching => 'Төрөлх скрипт эсвэл англи үсгээр хайж үзээрэй';

  @override
  String get partially_translated => 'Хэсэгчлэн орчуулсан';

  @override
  String get complete_translation => 'Бүрэн';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Хэлийг $name ( $nativeName ) болгож тохируулсан';
  }

  @override
  String get surroundings_title => 'Хүрээлэн буй орчин ба хүрээлэн буй орчин';

  @override
  String get surroundings_aqi => 'Агаарын чанарын индекс';

  @override
  String get surroundings_uv => 'Хэт ягаан туяаны индекс';

  @override
  String get surroundings_temp => 'Температур';

  @override
  String get surroundings_humidity => 'Чийгшил';

  @override
  String get surroundings_hydration_advice =>
      'Одоогийн цаг агаарын нөхцөлд чийглэг сайн байгаарай.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Хоол хайх';

  @override
  String get food_quick_barcode => 'Бар кодыг сканнердах 👑';

  @override
  String get food_quick_water => 'Ус нэмнэ';

  @override
  String get food_quick_custom => 'Захиалгат хоол';

  @override
  String get surroundings_good => 'Сайн байна';

  @override
  String get surroundings_moderate => 'Дунд зэрэг';

  @override
  String get surroundings_unhealthy => 'Эрүүл бус';

  @override
  String get notifications_title => 'Мэдэгдэл ба сэрэмжлүүлэг';

  @override
  String get notifications_empty => 'Шинэ мэдэгдэл алга';

  @override
  String get notifications_mark_read => 'Бүгдийг уншсан гэж тэмдэглэ';

  @override
  String get notifications_clear => 'Бүгдийг арилгах';

  @override
  String get reminders => 'Сануулагчийн тохиргоо';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Өглөөний цайны сануулга 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Өглөөний мэнд! $time цагт тэжээллэг өглөөний цай уух цаг боллоо.';
  }

  @override
  String get reminders_lunch_title => 'Үдийн хоолны сануулга 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Түр зогсоож, $time цагт тэнцвэртэй, анхаарал болгоомжтой үдийн хоол идээрэй.';
  }

  @override
  String get reminders_dinner_title => 'Оройн хоолны сануулга 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time-д хөнгөн, сэтгэл хангалуун оройн зоог барих цаг боллоо.';
  }

  @override
  String get reminders_water_title => 'Чийгшүүлэх түрхэх 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Нэг аяга цэвэр ус уух цаг боллоо! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Долоо хоног бүрийн жин ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) дээр долоо хоног тутмын биеийн хэмжүүрээ хяна.';
  }

  @override
  String get reminders_sleep_title => 'Унтахын өмнө амрах 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Тайвширч, тайван унтахад бэлтгэ ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi-д тавтай морил';

  @override
  String get onboard_sub =>
      'Таны нөхөрсөг, офлайн үед хамгийн түрүүнд эрүүл мэнд, хоол тэжээлийн хамтрагч.';

  @override
  String get onboard_get_started => 'Эхлэх';

  @override
  String get onboard_sign_in => 'Нэвтрэх';

  @override
  String get onboard_skip => 'Алгасах';

  @override
  String get onboard_choose_goal => 'Таны эрүүл мэндийн гол зорилго юу вэ?';

  @override
  String get onboard_goal_weight_loss => 'Зөөлөн турах';

  @override
  String get onboard_goal_muscle => 'Булчингийн өсөлт ба хүч чадал';

  @override
  String get onboard_goal_energy => 'Өдөр тутмын эрчим хүч, эрч хүч';

  @override
  String get onboard_goal_habits => 'Эрүүл ухаантай хооллолт';

  @override
  String get onboard_about_you => 'Өөрийнхөө тухай бидэнд хэлээч';

  @override
  String get onboard_lifestyle => 'Таны өдөр тутмын хэвшил';

  @override
  String get onboard_permissions_title => 'Зөвшөөрөл ба системийн хандалт';

  @override
  String get onboard_permissions_sub =>
      'Алхам, дасгал, сануулагчийг синк хийх эрхийг олгоно уу.';

  @override
  String get onboard_plan_ready_title =>
      'Таны захиалгат төлөвлөгөө бэлэн боллоо!';

  @override
  String get onboard_plan_ready_sub =>
      'Бид зөвхөн танд зориулагдсан зөөлөн, хувь хүний ​​хоол тэжээл, эрүүл мэндийн замын зураглалыг боловсруулсан.';

  @override
  String get onboard_enter_bloomi => 'Блумийг оруулна уу';

  @override
  String get insights_weekly_report => 'Долоо хоног тутмын эрүүл мэндийн тойм';

  @override
  String insights_best_day(Object day) {
    return 'Шилдэг тууштай өдөр: $day';
  }

  @override
  String get insights_streaks_badges => 'Судлууд ба чухал үеүүд';

  @override
  String insights_unlocked_on(Object date) {
    return '$date-д түгжээг тайлсан';
  }

  @override
  String get insights_keep_going => 'Гайхалтай ахиц дэвшлийг үргэлжлүүлээрэй!';

  @override
  String get widgets_title => 'Үндсэн дэлгэцийн виджетүүд';

  @override
  String widgets_active_count(Object count) {
    return 'Идэвхтэй виджетүүд: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Алхам ба идэвхтэй бөгж';

  @override
  String get widgets_water_title => 'Чийгшүүлэх хурдан бүртгэл';

  @override
  String get widgets_mascot_title => 'Бломи сахиусны хамтрагч';

  @override
  String get wear_os_title => 'OS ухаалаг цаг зүү';

  @override
  String get wear_os_connected => 'Watch-д холбогдсон';

  @override
  String get wear_os_sync => 'Цагны өгөгдлийг синк хийх';

  @override
  String get theme_title => 'Гадаад төрх ба сэдэв';

  @override
  String get theme_mode => 'Загварын горим';

  @override
  String get theme_light => 'Гэрэл';

  @override
  String get theme_dark => 'Харанхуй';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Арын дэвсгэр палитр';

  @override
  String get units_title => 'Хэмжилтийн нэгж';

  @override
  String get units_metric => 'Метрик (кг, см, мл)';

  @override
  String get units_imperial => 'Эзэн хааны (фунт, ин, ф унц)';

  @override
  String get home_unable_load => 'Хяналтын самбарыг ачаалах боломжгүй';

  @override
  String get home_health_permission_req =>
      'Эрүүл мэндийн холболтын зөвшөөрөл шаардлагатай';

  @override
  String get home_health_permission_desc =>
      'Блүүми нь бодит алхам, зүрхний цохилт, гар утасны гэрийн виджетүүдийг бодит цаг хугацаанд синхрончлохын тулд Health Connect-ийн зөвшөөрөл шаарддаг.';

  @override
  String get home_allow_health => 'Эрүүл мэндийн холболтыг зөвшөөрөх';

  @override
  String get home_ready_mindful_day => 'Анхааралтай өдөр болоход бэлэн үү? ✨';

  @override
  String get home_quick_add => 'Түргэн нэмэх';

  @override
  String get home_live_gps => 'Шууд GPS';

  @override
  String get home_calories_remaining_label => 'ҮЛДСЭН КАЛОРИ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Идсэн: $consumed / $target ккал';
  }

  @override
  String get home_tap_water_tracker => 'Усны хянагч 💧-г товшино уу';

  @override
  String get home_water_goal_reached => 'Өдөр тутмын зорилгодоо хүрсэн 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Өдөр тутмын зорилгод $remaining мл';
  }

  @override
  String get home_details => 'Дэлгэрэнгүй мэдээлэл';

  @override
  String get home_upgrade_plan_desc =>
      'Хувийн болгосон өдөр тутмын зорилтууд болон хиймэл оюун ухааны төлөвлөгөөг нээхийн тулд сайжруул';

  @override
  String get home_unlock => 'Түгжээг тайлах 👑';

  @override
  String get home_quick_log_hint => 'Эрүүл мэндийн бичлэгийг хурдан бичээрэй';

  @override
  String get food_serving_size => 'Үйлчлэх хэмжээ';

  @override
  String get food_serving_grams => 'Үйлчлэх (г)';

  @override
  String get food_number_servings => 'Үйлчлэх тоо';

  @override
  String get food_calories_per_serving => 'Нэг үйлчлэх калори';

  @override
  String get food_recipe_ingredients => 'Найрлага';

  @override
  String get food_recipe_add_ingredient => 'Найрлага нэмнэ үү';

  @override
  String get food_recipe_directions => 'Заавар, тэмдэглэл';

  @override
  String get food_recipe_total => 'Хоол тэжээлийн нийт жор';

  @override
  String get food_recipe_per_serving => 'Нэг үйлчлэх шим тэжээл';

  @override
  String get food_recipe_saved_toast => 'Захиалгат хоолыг амжилттай хадгаллаа!';

  @override
  String get food_barcode_found => 'Бүтээгдэхүүн олдсон!';

  @override
  String get food_barcode_not_found_desc =>
      'Бид энэ бар кодыг нээлттэй мэдээллийн сангаас олж чадсангүй. Та үүнийг захиалгат хоол болгон нэмж болно.';

  @override
  String get food_add_custom_btn => 'Захиалгат хоол нэмнэ үү';

  @override
  String get food_scan_again => 'Дахин скан хийх';

  @override
  String get food_review_items => 'Илэрсэн хоол хүнсийг шалгана уу';

  @override
  String get food_review_hint =>
      'Хэмжээг тохируулах эсвэл үл мэдэгдэх зүйлийг устгана уу';

  @override
  String get food_log_selected => 'Сонгосон хоолыг бүртгэх';

  @override
  String get food_favourites_title => 'Дуртай хоол';

  @override
  String get food_recent_title => 'Сүүлийн үеийн хоол хүнс';

  @override
  String get food_no_favourites =>
      'Дуртай хоол одоогоор алга. Энд хадгалахын тулд дурын хоолонд зүрх сэтгэлээ товшиж хадгална уу.';

  @override
  String get food_no_recents => 'Саяхан бүртгэгдсэн хоол олдсонгүй.';

  @override
  String get food_nutrition_details_title =>
      'Өдөр тутмын хоол тэжээлийн дэлгэрэнгүй мэдээлэл';

  @override
  String get food_macro_protein_label => 'Уургийн задрал';

  @override
  String get food_macro_carbs_label => 'Нүүрс усны задаргаа';

  @override
  String get food_macro_fat_label => 'Өөхний задрал';

  @override
  String get food_macro_fiber_label => 'Шилэн эсийн задрал';

  @override
  String get food_daily_target_comparison => 'Зорилтот харьцуулалт';

  @override
  String food_target_label(Object target) {
    return 'Зорилтот: $target';
  }

  @override
  String get food_edit_entry => 'Өдрийн тэмдэглэлийг засах';

  @override
  String get food_delete_entry => 'Бүртгэлийг устгах';

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
    return '$target мл-ийн $current';
  }

  @override
  String get water_intake_history => 'Өнөөдрийн усны бүртгэл';

  @override
  String get water_no_logs_today =>
      'Өнөөдрийн байдлаар ус огт ороогүй байна. Чийгшүүлж, хурдан нэмэх товчийг товшино уу!';

  @override
  String get water_adjust_goal => 'Өдөр тутмын зорилгоо тохируулна уу';

  @override
  String get health_connect_banner => 'Health Connect-д холбогдсон';

  @override
  String get health_vitals_summary => 'Эрүүл мэндийн өдөр тутмын амин чухал';

  @override
  String get health_latest_heart_rate => 'Хамгийн сүүлийн үеийн зүрхний цохилт';

  @override
  String get health_latest_bp => 'Цусны даралт';

  @override
  String get health_latest_spo2 => 'Цусны хүчилтөрөгч';

  @override
  String get health_latest_glucose => 'Цусан дахь глюкоз';

  @override
  String get health_latest_weight => 'Жин';

  @override
  String get health_latest_sleep => 'Унтах хугацаа';

  @override
  String get health_add_manual => 'Гарын авлагын хэмжилтийг нэмнэ үү';

  @override
  String get health_history_trends => 'Түүхэн чиг хандлага';

  @override
  String get health_sync_success =>
      'Эрүүл мэндийн өгөгдлийг амжилттай синк хийлээ!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours цаг $mins мин';
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
    return '$systolic / $diastolic ммМУБ';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val мг/дл';
  }

  @override
  String get health_devices_title =>
      'Холбогдсон төхөөрөмжүүд ба зүүдэг төхөөрөмж';

  @override
  String get health_devices_desc =>
      'Хосолсон ухаалаг цаг, фитнесс хянагч, эрүүл мэндийн мэдрэгч зэргийг удирдаарай.';

  @override
  String get health_workout_editor_title => 'Дасгал засварлах';

  @override
  String get health_workout_name_label => 'Дасгалын нэр';

  @override
  String get health_workout_duration_label => 'Үргэлжлэх хугацаа (минут)';

  @override
  String get health_workout_calories_label => 'Тооцоолсон калори (ккал)';

  @override
  String get health_workout_date_label => 'Огноо ба цаг';

  @override
  String get plan_daily_wellness_roadmap => 'Таны хувийн замын зураг';

  @override
  String get plan_morning_routine => 'Өглөөний горим';

  @override
  String get plan_afternoon_routine => 'Үд дундын эрүүл мэнд';

  @override
  String get plan_evening_routine => 'Орой салхилах';

  @override
  String get plan_coach_badge => 'Bloomi AI дасгалжуулагч';

  @override
  String get plan_weekly_overview => '7 өдрийн эрүүл мэндийн төвлөрөл';

  @override
  String get plan_targets_title => 'Эрүүл мэндийн зорилт, зорилго';

  @override
  String get plan_calorie_budget_label => 'Өдөр тутмын илчлэгийн төсөв';

  @override
  String get plan_water_budget_label => 'Өдөр тутмын усны зорилтот';

  @override
  String get plan_step_budget_label => 'Өдөр тутмын алхамын зорилго';

  @override
  String get plan_macro_split_label => 'Макро шим тэжээлийн харьцаа';

  @override
  String get profile_personal_details => 'Хувийн мэдээлэл';

  @override
  String get profile_body_stats => 'Биеийн хэмжилт';

  @override
  String get profile_app_preferences => 'Сонголт ба програмын тохиргоо';

  @override
  String get profile_edit_name_hint => 'Таны нэр';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Өндөр ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Жин ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Нас';

  @override
  String get profile_gender_male => 'Эрэгтэй';

  @override
  String get profile_gender_female => 'Эмэгтэй';

  @override
  String get profile_gender_other => 'Бусад / Хэлэхгүй байхыг илүүд үздэг';

  @override
  String get profile_activity_sedentary =>
      'Хөдөлгөөнгүй (Бага зэрэг дасгал хөдөлгөөн хийхгүй)';

  @override
  String get profile_activity_light =>
      'Хөнгөн идэвхтэй (долоо хоногт 1-3 өдөр)';

  @override
  String get profile_activity_moderate =>
      'Дунд зэргийн идэвхтэй (долоо хоногт 3-5 хоног)';

  @override
  String get profile_activity_very => 'Маш идэвхтэй (долоо хоногт 6-7 хоног)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion програм';

  @override
  String get settings_wear_os_desc =>
      'Калори, ус, алхмуудыг харахын тулд Wear OS цагандаа Bloomi хавтан болон хүндрэлийг суулгаарай.';

  @override
  String get settings_widgets_header => 'Интерактив Android виджетүүд';

  @override
  String get settings_widgets_desc =>
      'Шуурхай шинэчлэлтүүдийг авахын тулд бодит цагийн виджетүүдийг төхөөрөмжийнхөө үндсэн дэлгэц дээр тогтооно уу.';

  @override
  String get settings_about_header => 'Блумын тухай';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '100 барих';

  @override
  String get settings_about_credits =>
      'Ухаантай, эрүүл амьдралын төлөө анхаарал болгоомжтой урласан.';

  @override
  String get settings_terms_header => 'Үйлчилгээний нөхцөл';

  @override
  String get settings_privacy_header => 'Нууцлалын бодлого';

  @override
  String get settings_delete_header => 'Бүртгэл болон өгөгдлийг устгах';

  @override
  String get settings_delete_warning =>
      'Энэ үйлдлийг буцаах боломжгүй. Таны бүх хоол, дасгал, амин чухал мэдээлэл, профайл бүрмөсөн устах болно.';

  @override
  String get settings_delete_confirm_btn => 'Бүрмөсөн устгах';

  @override
  String get onboard_welcome_headline => 'Bloomi-д тавтай морил ✨';

  @override
  String get onboard_welcome_tagline =>
      'Таны амьдралын эргэн тойронд зохион бүтээсэн зөөлөн, анхааралтай эрүүл мэндийг хянах.';

  @override
  String get onboard_step_about => 'Таны тухай';

  @override
  String get onboard_step_goals => 'Таны зорилго';

  @override
  String get onboard_step_lifestyle => 'Өдөр тутмын зуршил';

  @override
  String get onboard_step_permissions => 'Зөвшөөрөл';

  @override
  String get onboard_step_plan => 'Бэлэн!';

  @override
  String get onboard_health_connect_perm => 'Health Connect хандалт';

  @override
  String get onboard_step_sensors_perm => 'Алхам тоолуур мэдрэгч';

  @override
  String get onboard_notif_perm => 'Анхааралтай сануулагч ба мэдэгдэл';

  @override
  String get onboard_camera_perm => 'Камер (Баркод, Хоолны сканнер)';

  @override
  String get onboard_grant_permissions => 'Зөвшөөрөл олгох';

  @override
  String get onboard_continue_dashboard => 'Хяналтын самбарыг нээнэ үү';

  @override
  String get notif_channel_hydration_name => 'Чийгшүүлэгч нудрах';

  @override
  String get notif_channel_hydration_desc => 'Өдрийн турш усны зөөлөн сануулга';

  @override
  String get notif_channel_nutrition_name =>
      'Хоол ба хоол тэжээлийн тухай сануулагч';

  @override
  String get notif_channel_nutrition_desc =>
      'Өглөөний цай, өдрийн хоол, оройн хоолны сануулга';

  @override
  String get notif_channel_steps_name => 'Алхам үе шатууд';

  @override
  String get notif_channel_steps_desc => 'Өдөр тутмын зорилгодоо хүрэх баяр';

  @override
  String get notif_channel_vitals_name => 'Эрүүл мэнд, амин чухал үзлэг';

  @override
  String get notif_channel_vitals_desc =>
      'Жин болон унтахын өмнөх сэрэмжлүүлэг';

  @override
  String get notif_action_log_water => '💧 Лог +250мл';

  @override
  String get notif_action_snooze => '15м түр хойшлуул';

  @override
  String get notif_action_log_meal => '🥗 Бүрхүүлийн хоол';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
