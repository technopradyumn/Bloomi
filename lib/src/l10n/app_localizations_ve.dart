// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Venda (`ve`).
class AppLocalizationsVe extends AppLocalizations {
  AppLocalizationsVe([String locale = 've']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Hayani';

  @override
  String get nav_today => 'Namusi';

  @override
  String get nav_plan => 'Pulane';

  @override
  String get nav_food => 'Zwiḽiwa';

  @override
  String get nav_food_diary => 'Dayari ya zwiḽiwa';

  @override
  String get nav_workout => 'Logo ya u ḓiḓowedza';

  @override
  String get nav_health => 'Mutakalo';

  @override
  String get nav_profile => 'Phurofaili';

  @override
  String get save => 'Vhulunga';

  @override
  String get cancel => 'Khansela';

  @override
  String get delete => 'Phumula';

  @override
  String get edit => 'Swaya';

  @override
  String get done => 'Ndo fhedza';

  @override
  String get close => 'Vala';

  @override
  String get back => 'Vhuya';

  @override
  String get next => 'Zwi tevhelaho';

  @override
  String get continue_btn => 'Bvela phanda';

  @override
  String get confirm => 'Kha vha khwaṱhisedze';

  @override
  String get search => 'Setsha';

  @override
  String get filter => 'Sefa';

  @override
  String get all => 'Zwothe';

  @override
  String get active => 'A khou shuma';

  @override
  String get today => 'Namusi';

  @override
  String get yesterday => 'Mulovha';

  @override
  String get tomorrow => 'Matshelo';

  @override
  String get add => 'Engedza';

  @override
  String get remove => 'Bvisani';

  @override
  String get refresh => 'U vusuludza';

  @override
  String get retry => 'Lingedzani hafhu';

  @override
  String get error => 'Vhukhakhi';

  @override
  String get success => 'U bvelela';

  @override
  String get loading => 'Ri khou ḓadza...';

  @override
  String get no_data => 'Ahuna data ine ya vha hone';

  @override
  String get offline => 'Moudu wa u sa vha kha inthanethe';

  @override
  String get offline_sub =>
      'Tshanduko dzi ḓo ṱanganelana musi dzo no ṱangana hafhu';

  @override
  String get undo => 'Undo';

  @override
  String get portion => 'Tshipiḓa';

  @override
  String get quantity => 'Tshivhalo';

  @override
  String get unit => 'Yuniti';

  @override
  String get clear => 'Kha vha bvise';

  @override
  String get select => 'Khethani';

  @override
  String get apply => 'Kha vha ite khumbelo';

  @override
  String get reset => 'Setha hafhu';

  @override
  String get ok => 'Zwo luga';

  @override
  String get yes => 'Ee';

  @override
  String get no => 'Hai';

  @override
  String get optional => 'Zwi sa ṱoḓei';

  @override
  String get calories => 'Khalori';

  @override
  String get protein => 'Phurotheini';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Mapfura';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Maḓi';

  @override
  String get steps => 'Maga';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'kha';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'awara';

  @override
  String get minutes => 'minete';

  @override
  String get serving => 'U shumela';

  @override
  String get servings => 'U ṋekedza';

  @override
  String get serving_size => 'Saizi ya u ṋekedza';

  @override
  String get per_100g => 'nga 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Yuropa';

  @override
  String get middle_east => 'Vhubvaḓuvha Vhukati';

  @override
  String get africa => 'Afurika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Hayani';

  @override
  String get home_greeting_morning => 'Ndi matsheloni';

  @override
  String get home_greeting_afternoon => 'Ndi masiari';

  @override
  String get home_greeting_evening => 'Ndi madekwana';

  @override
  String get home_streak_title => 'Mutevhe wa Maluvha';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maḓuvha a mutevhe',
      one: 'Mutevhe wa ḓuvha ḽithihi',
      zero: '0 maḓuvha o tevhekanaho',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Yo fhiswa';

  @override
  String get home_calories_budget => 'Mugaganyagwama wa Khaḽori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal dzo salaho';
  }

  @override
  String get home_water_title => 'Ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Maga o tshimbilaho';

  @override
  String get home_quick_actions => 'Nyito dza u Ṱavhanya';

  @override
  String get home_log_meal => 'Zwiḽiwa zwa Log';

  @override
  String get home_log_water => 'Maḓi a Log';

  @override
  String get home_log_workout => 'U ḓiḓowedza ha Log';

  @override
  String get home_log_weight => 'Tshileme tsha Log';

  @override
  String get home_insights_title => 'Nḓivho dza Ṋamusi';

  @override
  String get home_quote =>
      'Khetho ṱhukhu dza mutakalo dzi sika tshanduko dzine dza khou bvelela.';

  @override
  String get home_ai_coach_tip => 'Mugudisi wa Bloomi AI';

  @override
  String get home_surroundings => 'Zwo tingeledzwaho na Muya';

  @override
  String get home_notifications => 'Nḓivhadzo';

  @override
  String get home_daily_score =>
      'Tshikoro tsha Mutakalo wa Ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get home_view_all => 'Vhonani zwothe';

  @override
  String get food_diary_title => 'Dayari ya zwiḽiwa';

  @override
  String get food_breakfast => 'Vhuragane';

  @override
  String get food_lunch => 'Tshiswiṱulo';

  @override
  String get food_dinner => 'Tshilalelo';

  @override
  String get food_snacks => 'Zwiḽiwa';

  @override
  String get food_add_food => 'Engedza Zwiḽiwa';

  @override
  String get food_edit_food => 'Edit Zwiḽiwa';

  @override
  String get food_add_breakfast => 'Engedza vhuragane';

  @override
  String get food_add_lunch => 'Engedza zwiḽiwa zwa masiari';

  @override
  String get food_add_dinner => 'Engedza Tshilalelo';

  @override
  String get food_add_snack => 'Engedza Snack';

  @override
  String get food_total_calories => 'Khaḽori dzoṱhe';

  @override
  String get food_empty_meal => 'Ahuna zwiliwa zwo ṅwaliwaho zwa zwiḽiwa izwi';

  @override
  String get food_empty_diary => 'Ahuna zwiliwa zwo ṅwaliwaho zwa ḽeneḽi ḓuvha';

  @override
  String get food_log_first_meal =>
      'Kha vha dzhene kha + u ṅwala zwiḽiwa zwavho zwa u thoma zwi ḓifhaho';

  @override
  String get food_quick_add => 'U engedza nga u ṱavhanya';

  @override
  String get food_search_hint => 'Setshani zwiliwa, mitshelo, dal, roti...';

  @override
  String get food_custom_recipe => 'Zwiḽiwa zwo khetheaho na Resipi';

  @override
  String get food_scan_barcode => 'Skena Barkhoudu';

  @override
  String get food_camera_scan => 'AI Tshikene tsha Zwiḽiwa';

  @override
  String get food_recent => 'Zwiḽiwa zwa zwenezwino';

  @override
  String get food_favourites => 'Zwine nda zwi funesa';

  @override
  String get food_macro_summary => 'U fhandekanywa ha pfushi khulwane';

  @override
  String get food_delete_meal_confirm =>
      'Ni na vhutanzi uri ni khou toda u bvisa tshithu itshi?';

  @override
  String get food_item_deleted => 'Tshithu tsha zwiḽiwa tsho bviswa';

  @override
  String get food_remaining => 'zwo salaho';

  @override
  String get food_consumed => 'yo ḽiwa';

  @override
  String food_of_target(Object target) {
    return 'ya $target kcal';
  }

  @override
  String get foodSearch_title => 'Setshani Zwiḽiwa';

  @override
  String get foodSearch_scan_barcode => 'Skena Barkhoudu';

  @override
  String get foodSearch_take_photo => 'Snap tshinepe tsha zwiḽiwa';

  @override
  String get foodSearch_custom_food => 'Kha vha sike zwiḽiwa zwo khetheaho';

  @override
  String get foodSearch_recent_searches => 'Tsetshi dza zwenezwino';

  @override
  String get foodSearch_popular => 'Zwiḽiwa zwi takalelwaho';

  @override
  String get foodSearch_no_results =>
      'Ahuna zwiliwa zwine zwa tshimbilelana na zwine na khou toda';

  @override
  String get barcode_title => 'Tshikena tsha Barkhoudu';

  @override
  String get barcode_align =>
      'Kha vha linganise barcode nga ngomu ha fureme ya khamera';

  @override
  String get barcode_not_found => 'Tshibveledzwa a tshi wanali kha database';

  @override
  String get barcode_premium_feature =>
      'U ṱola barcode zwi a wanala na Bloomi Pro .';

  @override
  String get camera_title => 'AI Tshikene tsha Zwiḽiwa';

  @override
  String get camera_tap_hint =>
      'Kha vha dzhie tshinepe tshi re khagala tsha zwiḽiwa zwavho';

  @override
  String get camera_analysing => 'U sengulusa phuleithi ya zwiḽiwa...';

  @override
  String get camera_detected => 'Zwithu zwo wanalaho';

  @override
  String get camera_flash => 'Tshintshani Fuḽeshe';

  @override
  String get camera_retake => 'Dovhani ni dzhie tshinepe';

  @override
  String get camera_confirm_food => 'Kha vha khwaṱhisedze zwithu';

  @override
  String get customFood_title => 'Zwiḽiwa zwo khetheaho na Resipi';

  @override
  String get customFood_name_hint => 'Dzina ḽa zwiḽiwa kana zwishumiswa';

  @override
  String get customFood_calories_hint => 'Khaḽori (kcal)';

  @override
  String get customFood_protein_hint => 'Phurotheini (g)';

  @override
  String get customFood_carbs_hint => 'Khaboidi (g)';

  @override
  String get customFood_fat_hint => 'Mapfura (g)';

  @override
  String get customFood_save => 'Vhulungani risipi';

  @override
  String get water_tracker_title => 'Tshitevheli tsha maḓi';

  @override
  String get water_daily_target =>
      'Tshipikwa tsha u ṋea maḓi ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get water_logged_today => 'Yo ṅwaliwa ṋamusi';

  @override
  String get water_add_glass => '+250 ml ngilasi';

  @override
  String get water_add_bottle => '+500 ml Boḓelo';

  @override
  String get water_custom_amount => 'Tshivhalo tsho dzudzanywaho';

  @override
  String get water_reminder_tip =>
      'U nwa maḓi tshifhinga tshoṱhe ḓuvha ḽoṱhe u itela u wana maanḓa o khwaṱhaho.';

  @override
  String water_logged_toast(Object amount) {
    return 'Ho ṅwaliwa $amount ml ya maḓi 💧 .';
  }

  @override
  String get workout_title => 'Logo ya u ḓiḓowedza';

  @override
  String get workout_add_exercise => 'Engedza u ḓiḓowedza';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Maanḓa';

  @override
  String get workout_yoga => 'Yoga & U tendelana na zwiimo';

  @override
  String get workout_duration => 'Tshifhinga';

  @override
  String get workout_intensity => 'Vhuhali';

  @override
  String get workout_calories_burned => 'Khalori dzo fhiswaho';

  @override
  String get workout_empty => 'Ahuna dzi workout dzo ṅwaliwaho ṋamusi';

  @override
  String get workout_save_success =>
      'Workout yo vhulungwa nga nḓila yo bvelelaho!';

  @override
  String get workout_type => 'Lushaka lwa u ḓiḓowedza';

  @override
  String get workout_notes => 'Notsi & Zwihumbudzo';

  @override
  String get health_overview_title => 'Mutakalo & Zwithu zwa ndeme';

  @override
  String get health_heart_rate => 'U rwa ha mbilu';

  @override
  String get health_blood_oxygen => 'Okisidzheni ya malofha (SpO2)';

  @override
  String get health_blood_pressure => 'Mutsiko wa malofha';

  @override
  String get health_blood_glucose => 'Swigiri ya malofha';

  @override
  String get health_body_temperature => 'Mufhiso wa Muvhili';

  @override
  String get health_sleep_tracking => 'U tevhela u eḓela';

  @override
  String get health_weight_tracking => 'Tshileme & Vhubvo ha Muvhili';

  @override
  String get health_waist_hip => 'Nḓisedzo ya khundu u ya kha khundu';

  @override
  String get health_devices_hub => 'Zwishumiswa & Habu ya Smartwatch';

  @override
  String get health_sync_now => 'U ṱanganya Datha ya Mutakalo';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'U fhedzisela u ṱanganya: $time';
  }

  @override
  String get health_manual_entry => 'U dzhena ha Mutakalo nga Zwanḓa';

  @override
  String get health_metric_detail => 'Zwidodombedzwa zwa Metriki';

  @override
  String get health_connected_sensors =>
      'Sensara dza Mutakalo dzo Ṱanganelanaho';

  @override
  String get plan_title => 'Pulane ya Ḓuvha Ḽiṅwe na Ḓuvha';

  @override
  String get plan_weekly_title => 'Pulane ya Vhuḓifari ha Vhege iṅwe na iṅwe';

  @override
  String get plan_calorie_target => 'Tshipikwa tsha Khaḽori';

  @override
  String get plan_water_target => 'Tshipikwa tsha u ṋea maḓi';

  @override
  String get plan_step_target => 'Tshipikwa tsha vhukando';

  @override
  String get plan_sleep_target => 'Tshipikwa tsha u eḓela';

  @override
  String get plan_meal_suggestions => 'Nyeletshedzo dza zwiḽiwa';

  @override
  String get plan_healthy_habits => 'Nḓowelo ya Mutakalo & Nyeletshedzo';

  @override
  String get plan_coach_advice => 'Themendelo dza Mugudisi wa Bloomi AI';

  @override
  String get plan_generated_title =>
      'Mbekanyamushumo ya Ḓuvha ḽiṅwe na ḽiṅwe yo Ḓiitelaho';

  @override
  String get profile_title => 'Phurofaili';

  @override
  String get profile_edit => 'Swaya Phurofaili';

  @override
  String get profile_name => 'Dzina';

  @override
  String get profile_age => 'Minwaha';

  @override
  String get profile_gender => 'Mbeu';

  @override
  String get profile_height => 'Vhulapfu';

  @override
  String get profile_weight => 'Tshileme';

  @override
  String get profile_goal => 'Tshipikwa tshihulwane';

  @override
  String get profile_activity_level => 'Vhuimo ha Mushumo';

  @override
  String get profile_stats => 'Zwidodombedzwa zwanga zwa Mutakalo';

  @override
  String get profile_saved => 'Phurofaili yo khwiniswa zwo bvelela';

  @override
  String get profile_bmi => 'Indekisi ya Vhundeme ha Muvhili (BMI)';

  @override
  String get profile_membership => 'Vhurangeli';

  @override
  String get settings => 'Zwishumiswa';

  @override
  String get preferences_habits => 'ZWINE NDA ZWI FUNA NA NDOVHE';

  @override
  String get appearance_theme => 'Mbonalo & Thero';

  @override
  String get appearance_theme_sub =>
      'Swiswi, Tshedza, Moudu wa Sisiṱeme & Khetho dza Mupo wa App';

  @override
  String get permissions => 'Thendelo & Tswikelelo ya Sisiṱeme';

  @override
  String get permissions_sub =>
      'Vhuṱumani ha Mutakalo, Sensara dza Vhukando, GPS, Nḓivhadzo & Khamera';

  @override
  String get reminders_notifications => 'Khumbudzo na Nḓivhadzo';

  @override
  String get reminders_sub =>
      'Zwifhinga zwa zwiḽiwa, maḓi, u ṱola tshileme na zwihumbudzo zwa tshifhinga tsha u eḓela';

  @override
  String get units_of_measurement => 'Yunithi dza u ela';

  @override
  String get units_sub =>
      'Methiki (kg, cm, ml, km) kana Imperiaḽa (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Luambo lwa App';

  @override
  String get language_sub =>
      'Luisimane, हिन्दी (Luhindi), Luisimane & nyambo dza ḽifhasi ḽoṱhe dza 195+';

  @override
  String get home_screen_widgets => 'Zwishumiswa zwa Tshikirini tsha Hayani';

  @override
  String get widgets_sub =>
      'Zwishumiswa zwa Android zwi tshilaho: Hub, Maga, Maḓi, Mufusho & Mascot';

  @override
  String get wear_os_watch_app => 'Ambara App ya OS Watch';

  @override
  String get wear_os_sub =>
      'Khonani ya watshi ya vhuṱali, thaela, vhuleme & zwithu zwa ndeme zwi tshilaho';

  @override
  String get goals_wellness => 'ZWIPIKWA & ṰHOḒISISO DZA VHUḒIFHILO';

  @override
  String get nutrition_targets =>
      'Zwipikwa zwa Mufusho & U Fhandekana ha Makro';

  @override
  String get nutrition_targets_sub =>
      'Tshipikwa tsha khaḽori, phurotheini, khaboidi, mapfura & tshipikwa tsha maḓi';

  @override
  String get weekly_recap => 'Recap ya Vhuḓifari ha Vhege iṅwe na iṅwe';

  @override
  String get weekly_recap_sub =>
      'Avhareji ya khalori ya maḓuvha a 7, nḓisedzo khulwane & ḓuvha ḽa khwine';

  @override
  String get streaks_milestones => 'Mitevhe & Zwipikwa';

  @override
  String get streaks_sub =>
      'Mitevhe ya maluvha i shumaho, bege na zwine zwa swikelelwa';

  @override
  String get connected_devices => 'ZWISHUMISWA ZWO ṰANGANEDZWAHO & EKOSISITEME';

  @override
  String get devices_hub => 'Zwishumiswa & Habu ya Smartwatch';

  @override
  String get devices_hub_sub =>
      'Vhuṱumani ha Mutakalo, Watshi ya Galaxy, Watshi ya Pixel, Garmin';

  @override
  String get surroundings_weather => 'Mupo & Mutsho';

  @override
  String get surroundings_sub =>
      'Khwalithi ya muya (AQI), index ya UV & nyeletshedzo dza u ṋuṋedza mutsho';

  @override
  String get bloomi_pro => 'U ḓiṅwalisa ha Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Mugudisi wa Pulane ya AI, zwishumiswa zwa tshikirini tsha hayani zwa 5 & u tevhela zwithu zwa ndeme';

  @override
  String get about_security => 'NGA HA & TSHISIRELEDZO';

  @override
  String get about_bloomi => 'Nga ha Bloomi';

  @override
  String get about_bloomi_sub =>
      'Kha vha fhaṱe zwidodombedzwa, mbekanyamushumo, zwidodombedzwa';

  @override
  String get privacy_policy => 'Mbekanyamaitele ya zwa vhuṋe';

  @override
  String get privacy_policy_sub =>
      'Offline-ya u thoma, kha tshishumiswa tsha vhufhaṱi ha datha';

  @override
  String get terms_conditions => 'Milayo na Nyimele';

  @override
  String get terms_conditions_sub =>
      'Maitele a tshumelo na vhulivhisi ha mutakalo';

  @override
  String get delete_account => 'Phumula akhaunthu na datha';

  @override
  String get delete_account_sub =>
      'Phumula nga nḓila i sa vhuyedzei murahu data ya SQLite yapo na bekhaphu dza gole';

  @override
  String get healthy_habits =>
      'Fhaṱani nḓowelo ya mutakalo ya vhulenda, ya tshifhinga tshilapfu';

  @override
  String get all_logs => 'Datha yanga yo tevhelwaho & ḽogo';

  @override
  String get search_language => 'Setsha nga luambo kana maṅwalo a ḓamuni...';

  @override
  String get languages_available => 'Nyambo dzi re hone';

  @override
  String get no_matching_languages =>
      'Ahuna nyambo dzi tshimbilelanaho dzo wanalaho';

  @override
  String get try_searching =>
      'Lingedzani u setsha nga maṅwalo a ḓamuni kana mupeleṱo wa Luisimane';

  @override
  String get partially_translated => 'Zwo ṱalutshedzelwa zwiṱuku';

  @override
  String get complete_translation => 'U fhedza';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Luambo lwo vhewa kha $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Mupo & Mupo';

  @override
  String get surroundings_aqi => 'Index ya Khwalithi ya Muya';

  @override
  String get surroundings_uv => 'Indekisi ya UV';

  @override
  String get surroundings_temp => 'Mufhiso';

  @override
  String get surroundings_humidity => 'Muṋu';

  @override
  String get surroundings_hydration_advice =>
      'U dzula wo hydrated zwavhuḓi kha nyimelo dza mutsho wa zwino.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Setshani Zwiḽiwa';

  @override
  String get food_quick_barcode => 'Skena Barkhoudu 👑';

  @override
  String get food_quick_water => 'Engedza Maḓi';

  @override
  String get food_quick_custom => 'Zwiḽiwa zwa mvelele';

  @override
  String get surroundings_good => 'Zwavhudi';

  @override
  String get surroundings_moderate => 'Vhukati';

  @override
  String get surroundings_unhealthy => 'A si na mutakalo';

  @override
  String get notifications_title => 'Nḓivhadzo & Tsivhudzo';

  @override
  String get notifications_empty => 'Ahuna nḓivhadzo ntswa';

  @override
  String get notifications_mark_read => 'Swayani Zwoṱhe sa Zwo Vhaliwaho';

  @override
  String get notifications_clear => 'Kha vha bvise zwothe';

  @override
  String get reminders => 'Zwiṱirathedzhi zwa Khumbudzo';

  @override
  String get notifications => 'Nḓivhadzo';

  @override
  String get reminders_breakfast_title => 'Humbudzo ya vhuragane 🍳 .';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ndi matsheloni! Tshifhinga tsha vhuragane vhu re na pfushi kha $time .';
  }

  @override
  String get reminders_lunch_title => 'Humbudzo ya Lunch 🥗 .';

  @override
  String reminders_lunch_body(Object time) {
    return 'Imani ni ḓiphine nga zwiḽiwa zwa masiari zwo linganelaho, zwi re na muhumbulo kha $time .';
  }

  @override
  String get reminders_dinner_title => 'Humbudzo ya Tshilalelo 🍲 .';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tshifhinga tsha tshilalelo tshi leluwaho, tshi fushaho kha $time .';
  }

  @override
  String get reminders_water_title => 'Nudge ya u ṋea maḓi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tshifhinga tsha u nwa ngilasi ya maḓi a kunaho! (_PH_0__)';
  }

  @override
  String get reminders_weight_title => 'U kala vhege inwe na inwe ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Tevhelani methiki dza muvhili wa vhege iṅwe na iṅwe kha Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Tshifhinga tsha u eḓela Muya-fhasi 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'U ḓifhumudza na u lugisela u eḓela ho fholaho ( $time ).';
  }

  @override
  String get onboard_welcome => 'Vho ni tanganedza kha Bloomi';

  @override
  String get onboard_sub =>
      'Khonani yaṋu ya vhukonani, ya u thoma ya mutakalo na pfushi i siho kha inthanethe.';

  @override
  String get onboard_get_started => 'Thomani';

  @override
  String get onboard_sign_in => 'Kha vha dzhene';

  @override
  String get onboard_skip => 'U pfuka';

  @override
  String get onboard_choose_goal =>
      'Ndi tshifhio tshipikwa tshaṋu tshihulwane tsha mutakalo?';

  @override
  String get onboard_goal_weight_loss => 'U fhungudza muvhili nga vhulenda';

  @override
  String get onboard_goal_muscle => 'U wana misipha na maanḓa';

  @override
  String get onboard_goal_energy =>
      'Fulufulu na Vhutshilo ha Ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get onboard_goal_habits => 'U ḽa zwiḽiwa zwi re na mutakalo';

  @override
  String get onboard_about_you => 'Ri vhudzeni nga ha inwi';

  @override
  String get onboard_lifestyle => 'Nḓowelo yaṋu ya Ḓuvha Ḽiṅwe na Ḽiṅwe';

  @override
  String get onboard_permissions_title => 'Thendelo & Tswikelelo ya Sisiṱeme';

  @override
  String get onboard_permissions_sub =>
      'Ṋeani tswikelelo kha maga a u ṱanganya, u ḓiḓowedza, na khumbudzo.';

  @override
  String get onboard_plan_ready_title => 'Pulane yaṋu ya Mukhwa yo Lugela!';

  @override
  String get onboard_plan_ready_sub =>
      'Ro ita mbekanyamaitele ya pfushi na mutakalo ya vhulenda, yo khetheaho yo itelwa inwi fhedzi.';

  @override
  String get onboard_enter_bloomi => 'Kha vha dzhene kha Bloomi';

  @override
  String get insights_weekly_report =>
      'Recap ya Vhuḓifari ha Vhege iṅwe na iṅwe';

  @override
  String insights_best_day(Object day) {
    return 'Duvha la khwine la u sa shanduka: $day';
  }

  @override
  String get insights_streaks_badges => 'Mitevhe & Zwipikwa';

  @override
  String insights_unlocked_on(Object date) {
    return 'Yo vulea nga $date';
  }

  @override
  String get insights_keep_going =>
      'Bvelani phanḓa na mvelaphanḓa yavhuḓi vhukuma!';

  @override
  String get widgets_title => 'Zwishumiswa zwa Tshikirini tsha Hayani';

  @override
  String widgets_active_count(Object count) {
    return 'Zwishumiswa zwi shumaho: $count';
  }

  @override
  String get widgets_hub_title => 'Habu ya Mutakalo wa Bloomi';

  @override
  String get widgets_steps_title => 'Maga & Rinngi i shumaho';

  @override
  String get widgets_water_title => 'Logo ya u ṱavhanya ya u ṋea maḓi';

  @override
  String get widgets_mascot_title => 'Mufarisi wa Mascot wa Bloomi';

  @override
  String get wear_os_title => 'Ambara Watshi ya Smart ya OS';

  @override
  String get wear_os_connected => 'Yo ṱumanaho na Watch';

  @override
  String get wear_os_sync => 'U ṱanganya Datha ya Watshi';

  @override
  String get theme_title => 'Mbonalo & Thero';

  @override
  String get theme_mode => 'Moudu wa Thero';

  @override
  String get theme_light => 'Tshedza';

  @override
  String get theme_dark => 'Swiswi';

  @override
  String get theme_system => 'Tshivhumbeo tsha Sisiṱeme';

  @override
  String get theme_background_palette => 'Phaḽethe ya murahu';

  @override
  String get units_title => 'Yunithi dza u ela';

  @override
  String get units_metric => 'Methiki (kg, cm, ml)';

  @override
  String get units_imperial => 'Vhuhosi (lbs, nga, fl oz)';

  @override
  String get home_unable_load => 'A thi koni u ḓadza dashibodo';

  @override
  String get home_health_permission_req =>
      'Thendelo ya Vhuṱumani ha Mutakalo i a Ṱoḓea';

  @override
  String get home_health_permission_desc =>
      'Bloomi i ṱoḓa thendelo ya Health Connect u kokodza maga a vhukuma, u rwa ha mbilu, na u ṱanganya zwishumiswa zwa hayani zwi tshimbilaho nga tshifhinga tsha vhukuma.';

  @override
  String get home_allow_health => 'Tendelani Vhuṱumani ha Mutakalo';

  @override
  String get home_ready_mindful_day => 'Vho lugela duvha la muhumbulo? ✨';

  @override
  String get home_quick_add => 'U engedza nga u ṱavhanya';

  @override
  String get home_live_gps => 'GPS i tshilaho';

  @override
  String get home_calories_remaining_label => 'KHALORI DZO SALAHO';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Zwo ḽiwa: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Pompo ya Tshiṱoḓisisi tsha Maḓi 💧 .';

  @override
  String get home_water_goal_reached =>
      'Tshipikwa tsha duvha na duvha tsho swikeleliwa 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml kha tshipikwa tsha duvha na duvha';
  }

  @override
  String get home_details => 'Zwidodombedzwa';

  @override
  String get home_upgrade_plan_desc =>
      'U khwinisa u itela u vula zwipikwa zwo khetheaho zwa ḓuvha ḽiṅwe na ḽiṅwe & pulane ya AI';

  @override
  String get home_unlock => 'U vula 👑';

  @override
  String get home_quick_log_hint => 'U ṱavhanya u rekhoda u dzhena ha mutakalo';

  @override
  String get food_serving_size => 'Saizi ya u ṋekedza';

  @override
  String get food_serving_grams => 'U shuma (g)';

  @override
  String get food_number_servings => 'Tshivhalo tsha u ṋekedza';

  @override
  String get food_calories_per_serving => 'Khaḽori nga zwiḽiwa';

  @override
  String get food_recipe_ingredients => 'Thimbinywa';

  @override
  String get food_recipe_add_ingredient => 'Engedza Thimbinywa';

  @override
  String get food_recipe_directions => 'Ndaela na Notsi';

  @override
  String get food_recipe_total => 'Mufusho woṱhe wa Resipi';

  @override
  String get food_recipe_per_serving => 'Mufusho nga u ṋekedza';

  @override
  String get food_recipe_saved_toast =>
      'Zwiḽiwa zwa custom zwo vhulungwa nga nḓila yo bvelelaho!';

  @override
  String get food_barcode_found => 'Tshibveledzwa tsho wanala!';

  @override
  String get food_barcode_not_found_desc =>
      'Ro vha ri sa koni u wana barcode iyi kha database yo vuleaho. Unga zwi engedza sa zwiḽiwa zwa mvelele.';

  @override
  String get food_add_custom_btn => 'Engedza Zwiḽiwa Zwo Ḓiitelaho';

  @override
  String get food_scan_again => 'Skena Hafhu';

  @override
  String get food_review_items => 'U vusuludza zwiḽiwa zwo wanalaho';

  @override
  String get food_review_hint =>
      'Kha vha dzudzanye tshivhalo kana vha bvise tshithu tshiṅwe na tshiṅwe tshi sa ḓivhei';

  @override
  String get food_log_selected => 'Log Zwiḽiwa zwo Khethwaho';

  @override
  String get food_favourites_title => 'Zwiḽiwa zwine nda zwi funesa';

  @override
  String get food_recent_title => 'Zwiḽiwa zwa zwenezwino';

  @override
  String get food_no_favourites =>
      'Ahuna zwiḽiwa zwine nda zwi funesa. Tap heart kha zwiliwa zwinwe na zwinwe u vhulunga hafha.';

  @override
  String get food_no_recents =>
      'Ahuna zwiḽiwa zwo ṅwaliwaho zwenezwino zwo wanalaho.';

  @override
  String get food_nutrition_details_title =>
      'Zwidodombedzwa zwa Mufusho wa Ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get food_macro_protein_label => 'U fhandekana ha phurotheini';

  @override
  String get food_macro_carbs_label => 'U fhandekana ha Carbs';

  @override
  String get food_macro_fat_label => 'U fhandekana ha mapfura';

  @override
  String get food_macro_fiber_label => 'U fhandekana ha fiber';

  @override
  String get food_daily_target_comparison => 'U vhambedza zwipikwa';

  @override
  String food_target_label(Object target) {
    return 'Tshipikwa: $target';
  }

  @override
  String get food_edit_entry => 'Kha vha dzudzanye zwe vha ṅwala kha dayari';

  @override
  String get food_delete_entry => 'Kha vha phumule zwe vha dzhena';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal khilo';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ya $target ml';
  }

  @override
  String get water_intake_history => 'Logo dza Maḓi dza Ṋamusi';

  @override
  String get water_no_logs_today =>
      'Ahuna maḓi o ṅwaliwaho ṋamusi. Hydrate ni ṱoḓe buthano ḽa u engedza nga u ṱavhanya!';

  @override
  String get water_adjust_goal =>
      'Lugisani Tshipikwa tsha Ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get health_connect_banner => 'U ṱumana na Mutakalo Ṱumana';

  @override
  String get health_vitals_summary =>
      'Zwithu zwa ndeme zwa Mutakalo wa Ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get health_latest_heart_rate => 'Mbilu ya zwenezwino';

  @override
  String get health_latest_bp => 'Mutsiko wa malofha';

  @override
  String get health_latest_spo2 => 'Okisidzheni ya malofha';

  @override
  String get health_latest_glucose => 'Swigiri ya malofha';

  @override
  String get health_latest_weight => 'Tshileme';

  @override
  String get health_latest_sleep => 'Tshifhinga tsha u eḓela';

  @override
  String get health_add_manual => 'Engedza Muelo wa Zwanḓa';

  @override
  String get health_history_trends => 'Nḓila dza ḓivhazwakale';

  @override
  String get health_sync_success =>
      'Datha ya mutakalo yo ṱanganedzwa nga nḓila yo bvelelaho!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours awara $mins minete';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm mufhiso';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title =>
      'Zwishumiswa zwo Ṱanganelanaho & Zwiambara';

  @override
  String get health_devices_desc =>
      'Langulani watshi dza vhuṱali dzo ṱanganaho, zwiṱirakha zwa u ḓilugisa, na sensara dza mutakalo.';

  @override
  String get health_workout_editor_title => 'Swaya mushumo wa u ḓiḓowedza';

  @override
  String get health_workout_name_label => 'Dzina ḽa u ḓiḓowedza';

  @override
  String get health_workout_duration_label => 'Tshifhinga (mimunithi)';

  @override
  String get health_workout_calories_label => 'Khaḽori dzo anganyelwaho (kcal)';

  @override
  String get health_workout_date_label => 'Datumu na Tshifhinga';

  @override
  String get plan_daily_wellness_roadmap =>
      'Mbekanyamushumo ya Nḓila yaṋu yo Ḓiitelaho';

  @override
  String get plan_morning_routine => 'Nḓowelo ya Matsheloni';

  @override
  String get plan_afternoon_routine => 'Mutakalo wa masiari';

  @override
  String get plan_evening_routine => 'Muya-Fhasi wa Madekwana';

  @override
  String get plan_coach_badge => 'Mugudisi wa Bloomi AI';

  @override
  String get plan_weekly_overview => '7-Maḓuvha a u Sedza Mutakalo';

  @override
  String get plan_targets_title => 'Zwipikwa na Zwipikwa zwa Mutakalo';

  @override
  String get plan_calorie_budget_label =>
      'Mugaganyagwama wa Khaḽori dza Ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get plan_water_budget_label =>
      'Tshipikwa tsha Maḓi tsha Ḓuvha Ḽiṅwe na Ḓuvha';

  @override
  String get plan_step_budget_label =>
      'Tshipikwa tsha vhukando ha ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get plan_macro_split_label => 'Nḓisedzo ya pfushi khulwane';

  @override
  String get profile_personal_details => 'Zwidodombedzwa zwa vhuṋe';

  @override
  String get profile_body_stats => 'Mielo ya muvhili';

  @override
  String get profile_app_preferences =>
      'Zwine na zwi takalela & Nzudzanyo dza App';

  @override
  String get profile_edit_name_hint => 'Dzina lavho';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Vhulapfu (_PH_0__)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Tshileme (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Minwaha';

  @override
  String get profile_gender_male => 'Munna';

  @override
  String get profile_gender_female => 'Mufumakadzi';

  @override
  String get profile_gender_other => 'Zwiṅwe / Ndi funa u sa amba .';

  @override
  String get profile_activity_sedentary => 'U dzula (U sa ita nyonyoloso)';

  @override
  String get profile_activity_light => 'U shuma zwiṱuku (maḓuvha a 1-3/vhege)';

  @override
  String get profile_activity_moderate =>
      'U shuma nga nḓila yo linganelaho (maḓuvha a 3-5/vhege)';

  @override
  String get profile_activity_very => 'U a shuma vhukuma (maḓuvha a 6-7/vhege)';

  @override
  String get settings_wear_os_header => 'Ambara App ya Mufarisi wa OS';

  @override
  String get settings_wear_os_desc =>
      'Ṱanganedzani thaela ya Bloomi na vhuleme kha watshi yaṋu ya Wear OS u itela u sedza khaḽori, maḓi, na zwiṱepisi.';

  @override
  String get settings_widgets_header =>
      'Zwishumiswa zwa Android zwi shumisanaho';

  @override
  String get settings_widgets_desc =>
      'Pin zwishumiswa zwa tshifhinga tsha vhukuma kha tshikirini tsha hayani tsha tshishumiswa tshavho u itela u khwiniswa nga u ṱavhanya.';

  @override
  String get settings_about_header => 'Nga ha Bloomi';

  @override
  String get settings_about_version => 'Vhesheni 1.0.0';

  @override
  String get settings_about_build => 'Fhaṱani 100';

  @override
  String get settings_about_credits =>
      'Yo itwa nga vhuronwane u itela u tshila nga muhumbulo, mutakalo.';

  @override
  String get settings_terms_header => 'Milayo na Nyimele';

  @override
  String get settings_privacy_header => 'Mbekanyamaitele ya zwa vhuṋe';

  @override
  String get settings_delete_header => 'Phumula akhaunthu na datha';

  @override
  String get settings_delete_warning =>
      'Nyito iyi a i nga ḓo vhuyedzedzwa murahu. Zwiḽiwa zwaṋu zwoṱhe, u ḓiḓowedza, zwithu zwa ndeme, na phrofaili zwi ḓo phumulwa lwa tshoṱhe.';

  @override
  String get settings_delete_confirm_btn => 'Phumula lwa tshoṱhe';

  @override
  String get onboard_welcome_headline => 'Ni ṱanganedzwa kha Bloomi ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'U tevhela ha mutakalo wa vhulenda, wa muhumbulo wo itelwaho u mona na vhutshilo haṋu.';

  @override
  String get onboard_step_about => 'Nga ha Inwi';

  @override
  String get onboard_step_goals => 'Zwipikwa zwaṋu';

  @override
  String get onboard_step_lifestyle => 'Nḓowelo ya Ḓuvha Ḽiṅwe na Ḽiṅwe';

  @override
  String get onboard_step_permissions => 'Thendelo';

  @override
  String get onboard_step_plan => 'Ro lugela!';

  @override
  String get onboard_health_connect_perm =>
      'Tswikelelo ya Vhuṱumani ha Mutakalo';

  @override
  String get onboard_step_sensors_perm => 'Sensara ya Muvhali wa Vhukando';

  @override
  String get onboard_notif_perm => 'Khumbudzo na Nḓivhadzo dza Muhumbulo';

  @override
  String get onboard_camera_perm =>
      'Khamera (Khoudu ya Bara & Tshiṱirathedzhi tsha Zwiḽiwa)';

  @override
  String get onboard_grant_permissions => 'Thendelo dza u ṋea';

  @override
  String get onboard_continue_dashboard => 'Vula Dashibodo';

  @override
  String get notif_channel_hydration_name => 'Nudges dza u ṋea maḓi';

  @override
  String get notif_channel_hydration_desc =>
      'Humbudzo dza maḓi a vhulenda ḓuvha ḽoṱhe';

  @override
  String get notif_channel_nutrition_name => 'Zwiḽiwa & Khumbudzo dza Mufusho';

  @override
  String get notif_channel_nutrition_desc =>
      'Nḓivhadzo dza u humbudza vhuragane, tshiswiṱulo, na tshilalelo';

  @override
  String get notif_channel_steps_name => 'Vhukando ha ndeme';

  @override
  String get notif_channel_steps_desc =>
      'Vhuṱambo musi ri tshi swikelela zwipikwa zwa vhukando ha ḓuvha ḽiṅwe na ḽiṅwe';

  @override
  String get notif_channel_vitals_name => 'Mutakalo & Vhuṱoli ha ndeme';

  @override
  String get notif_channel_vitals_desc =>
      'Zwihumbudzo zwa u fhungudzea ha tshileme na tshifhinga tsha u eḓela';

  @override
  String get notif_action_log_water => '💧 Logo +250ml';

  @override
  String get notif_action_snooze => 'U eḓela 15m';

  @override
  String get notif_action_log_meal => '🥗 Zwiḽiwa zwa Log';

  @override
  String get language => 'Luambo';

  @override
  String get share => 'Kovhelanani';

  @override
  String common_days(Object count) {
    return '$count maḓuvha o fhiraho';
  }
}
