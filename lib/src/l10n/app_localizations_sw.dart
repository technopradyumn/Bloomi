// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Nyumbani';

  @override
  String get nav_today => 'Leo';

  @override
  String get nav_plan => 'Mpango';

  @override
  String get nav_food => 'Chakula';

  @override
  String get nav_food_diary => 'Diary ya Chakula';

  @override
  String get nav_workout => 'Logi ya Mazoezi';

  @override
  String get nav_health => 'Afya';

  @override
  String get nav_profile => 'Wasifu';

  @override
  String get save => 'Hifadhi';

  @override
  String get cancel => 'Ghairi';

  @override
  String get delete => 'Futa';

  @override
  String get edit => 'Hariri';

  @override
  String get done => 'Imekamilika';

  @override
  String get close => 'Funga';

  @override
  String get back => 'Nyuma';

  @override
  String get next => 'Inayofuata';

  @override
  String get continue_btn => 'Endelea';

  @override
  String get confirm => 'Thibitisha';

  @override
  String get search => 'Tafuta';

  @override
  String get filter => 'Chuja';

  @override
  String get all => 'Wote';

  @override
  String get active => 'Inayotumika';

  @override
  String get today => 'Leo';

  @override
  String get yesterday => 'Jana';

  @override
  String get tomorrow => 'Kesho';

  @override
  String get add => 'Ongeza';

  @override
  String get remove => 'Ondoa';

  @override
  String get refresh => 'Onyesha upya';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get error => 'Hitilafu';

  @override
  String get success => 'Mafanikio';

  @override
  String get loading => 'Inapakia...';

  @override
  String get no_data => 'Hakuna data inayopatikana';

  @override
  String get offline => 'Hali ya Nje ya Mtandao';

  @override
  String get offline_sub =>
      'Mabadiliko yatasawazishwa mara tu yatakapounganishwa tena';

  @override
  String get undo => 'Tendua';

  @override
  String get portion => 'Sehemu';

  @override
  String get quantity => 'Kiasi';

  @override
  String get unit => 'Kitengo';

  @override
  String get clear => 'Wazi';

  @override
  String get select => 'Chagua';

  @override
  String get apply => 'Omba';

  @override
  String get reset => 'Weka upya';

  @override
  String get ok => 'Sawa';

  @override
  String get yes => 'Ndiyo';

  @override
  String get no => 'Hapana';

  @override
  String get optional => 'Hiari';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protini';

  @override
  String get carbs => 'Wanga';

  @override
  String get fat => 'Mafuta';

  @override
  String get fiber => 'Nyuzinyuzi';

  @override
  String get water => 'Maji';

  @override
  String get steps => 'Hatua';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kilo';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'katika';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'saa';

  @override
  String get minutes => 'dakika';

  @override
  String get serving => 'Kuhudumia';

  @override
  String get servings => 'Huduma';

  @override
  String get serving_size => 'Ukubwa wa Kutumikia';

  @override
  String get per_100g => 'kwa 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Ulaya';

  @override
  String get middle_east => 'Mashariki ya Kati';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Nyumbani';

  @override
  String get home_greeting_morning => 'Habari za Asubuhi';

  @override
  String get home_greeting_afternoon => 'Mchana Mwema';

  @override
  String get home_greeting_evening => 'Jioni Njema';

  @override
  String get home_streak_title => 'Mfululizo wa Blossom';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mfululizo wa siku $count',
      one: 'Mfululizo wa siku 1',
      zero: 'Mfululizo wa siku 0',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Imechomwa';

  @override
  String get home_calories_budget => 'Bajeti ya Kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal imesalia';
  }

  @override
  String get home_water_title => 'Kila siku Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Hatua Zilizotembea';

  @override
  String get home_quick_actions => 'Vitendo vya Haraka';

  @override
  String get home_log_meal => 'Mlo wa logi';

  @override
  String get home_log_water => 'Maji ya logi';

  @override
  String get home_log_workout => 'Logi Workout';

  @override
  String get home_log_weight => 'Uzito wa logi';

  @override
  String get home_insights_title => 'Maarifa ya Leo';

  @override
  String get home_quote =>
      'Chaguzi ndogo zenye afya huunda mabadiliko yanayochanua.';

  @override
  String get home_ai_coach_tip => 'Kocha wa Bloomi AI';

  @override
  String get home_surroundings => 'Mazingira na Hewa';

  @override
  String get home_notifications => 'Arifa';

  @override
  String get home_daily_score => 'Alama ya Ustawi wa Kila Siku';

  @override
  String get home_view_all => 'Tazama Zote';

  @override
  String get food_diary_title => 'Diary ya Chakula';

  @override
  String get food_breakfast => 'Kifungua kinywa';

  @override
  String get food_lunch => 'Chakula cha mchana';

  @override
  String get food_dinner => 'Chakula cha jioni';

  @override
  String get food_snacks => 'Vitafunio';

  @override
  String get food_add_food => 'Ongeza Chakula';

  @override
  String get food_edit_food => 'Hariri Chakula';

  @override
  String get food_add_breakfast => 'Ongeza Kifungua kinywa';

  @override
  String get food_add_lunch => 'Ongeza Chakula cha mchana';

  @override
  String get food_add_dinner => 'Ongeza Chakula cha jioni';

  @override
  String get food_add_snack => 'Ongeza Vitafunio';

  @override
  String get food_total_calories => 'Jumla ya Kalori';

  @override
  String get food_empty_meal =>
      'Bado hakuna vyakula vilivyowekwa kwenye mlo huu';

  @override
  String get food_empty_diary => 'Hakuna milo iliyoingia kwa siku hii';

  @override
  String get food_log_first_meal =>
      'Gonga + ili uandikishe mlo wako wa kwanza wa kitamu';

  @override
  String get food_quick_add => 'Ongeza Haraka';

  @override
  String get food_search_hint => 'Tafuta sahani, matunda, dal, roti...';

  @override
  String get food_custom_recipe => 'Chakula na Mapishi Maalum';

  @override
  String get food_scan_barcode => 'Changanua Msimbo Pau';

  @override
  String get food_camera_scan => 'Kichanganuzi cha Chakula cha AI';

  @override
  String get food_recent => 'Vyakula vya Hivi Karibuni';

  @override
  String get food_favourites => 'Vipendwa';

  @override
  String get food_macro_summary => 'Uchanganuzi wa Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Je, una uhakika unataka kuondoa kipengee hiki?';

  @override
  String get food_item_deleted => 'Bidhaa ya chakula imeondolewa';

  @override
  String get food_remaining => 'iliyobaki';

  @override
  String get food_consumed => 'zinazotumiwa';

  @override
  String food_of_target(Object target) {
    return 'ya $target kcal';
  }

  @override
  String get foodSearch_title => 'Tafuta Vyakula';

  @override
  String get foodSearch_scan_barcode => 'Changanua Msimbo Pau';

  @override
  String get foodSearch_take_photo => 'Picha ya Chakula cha Snap';

  @override
  String get foodSearch_custom_food => 'Unda Chakula Maalum';

  @override
  String get foodSearch_recent_searches => 'Utafutaji wa Hivi Karibuni';

  @override
  String get foodSearch_popular => 'Sahani maarufu';

  @override
  String get foodSearch_no_results =>
      'Hakuna vyakula vinavyolingana na utafutaji wako';

  @override
  String get barcode_title => 'Kichanganuzi cha msimbo wa pau';

  @override
  String get barcode_align => 'Pangilia msimbopau ndani ya fremu ya kamera';

  @override
  String get barcode_not_found => 'Bidhaa haipatikani kwenye hifadhidata';

  @override
  String get barcode_premium_feature =>
      'Uchanganuzi wa msimbo pau unapatikana kwa Bloomi Pro';

  @override
  String get camera_title => 'Kichanganuzi cha Chakula cha AI';

  @override
  String get camera_tap_hint => 'Piga picha wazi ya sahani yako';

  @override
  String get camera_analysing => 'Inachambua sahani ya chakula...';

  @override
  String get camera_detected => 'Vipengee vilivyotambuliwa';

  @override
  String get camera_flash => 'Geuza Mweko';

  @override
  String get camera_retake => 'Piga Picha tena';

  @override
  String get camera_confirm_food => 'Thibitisha Vipengee';

  @override
  String get customFood_title => 'Chakula na Mapishi Maalum';

  @override
  String get customFood_name_hint => 'Mlo au jina la kiungo';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Protini (g)';

  @override
  String get customFood_carbs_hint => 'Wanga (g)';

  @override
  String get customFood_fat_hint => 'Mafuta (g)';

  @override
  String get customFood_save => 'Hifadhi Kichocheo';

  @override
  String get water_tracker_title => 'Mfuatiliaji wa Maji';

  @override
  String get water_daily_target => 'Malengo ya Kila siku ya Ugavi wa maji';

  @override
  String get water_logged_today => 'Imeingia Leo';

  @override
  String get water_add_glass => '+250 ml Kioo';

  @override
  String get water_add_bottle => '+500 ml Chupa';

  @override
  String get water_custom_amount => 'Kiasi Maalum';

  @override
  String get water_reminder_tip =>
      'Kunywa maji mara kwa mara siku nzima kwa nishati thabiti.';

  @override
  String water_logged_toast(Object amount) {
    return 'Iliyoingia $amount ml ya maji 💧';
  }

  @override
  String get workout_title => 'Logi ya Mazoezi';

  @override
  String get workout_add_exercise => 'Ongeza Mazoezi';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Nguvu';

  @override
  String get workout_yoga => 'Yoga & Kubadilika';

  @override
  String get workout_duration => 'Muda';

  @override
  String get workout_intensity => 'Uzito';

  @override
  String get workout_calories_burned => 'Kalori zilizochomwa';

  @override
  String get workout_empty => 'Hakuna mazoezi yaliyowekwa leo';

  @override
  String get workout_save_success => 'Mazoezi yamehifadhiwa!';

  @override
  String get workout_type => 'Aina ya Mazoezi';

  @override
  String get workout_notes => 'Vidokezo na Tafakari';

  @override
  String get health_overview_title => 'Afya na Muhimu';

  @override
  String get health_heart_rate => 'Kiwango cha Moyo';

  @override
  String get health_blood_oxygen => 'Oksijeni ya Damu (SpO2)';

  @override
  String get health_blood_pressure => 'Shinikizo la Damu';

  @override
  String get health_blood_glucose => 'Glucose ya Damu';

  @override
  String get health_body_temperature => 'Joto la Mwili';

  @override
  String get health_sleep_tracking => 'Kufuatilia Usingizi';

  @override
  String get health_weight_tracking => 'Uzito & Muundo wa Mwili';

  @override
  String get health_waist_hip => 'Uwiano wa Kiuno kwa Hip';

  @override
  String get health_devices_hub => 'Vifaa na Smartwatch Hub';

  @override
  String get health_sync_now => 'Sawazisha Data ya Afya';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Mara ya mwisho kusawazishwa: $time';
  }

  @override
  String get health_manual_entry => 'Kuingia kwa Mwongozo wa Afya';

  @override
  String get health_metric_detail => 'Maelezo ya kipimo';

  @override
  String get health_connected_sensors => 'Sensorer za Afya Zilizounganishwa';

  @override
  String get plan_title => 'Mpango wa Kila siku';

  @override
  String get plan_weekly_title => 'Mpango wa Ustawi wa Kila Wiki';

  @override
  String get plan_calorie_target => 'Lengo la Kalori';

  @override
  String get plan_water_target => 'Lengo la Hydration';

  @override
  String get plan_step_target => 'Hatua Lengo';

  @override
  String get plan_sleep_target => 'Lengo la Kulala';

  @override
  String get plan_meal_suggestions => 'Mapendekezo ya Chakula';

  @override
  String get plan_healthy_habits => 'Mazoea na Vidokezo vya Afya';

  @override
  String get plan_coach_advice => 'Mapendekezo ya Kocha wa Bloomi AI';

  @override
  String get plan_generated_title => 'Ratiba ya Kila Siku Iliyobinafsishwa';

  @override
  String get profile_title => 'Wasifu';

  @override
  String get profile_edit => 'Badilisha Wasifu';

  @override
  String get profile_name => 'Jina';

  @override
  String get profile_age => 'Umri';

  @override
  String get profile_gender => 'Jinsia';

  @override
  String get profile_height => 'Urefu';

  @override
  String get profile_weight => 'Uzito';

  @override
  String get profile_goal => 'Lengo la Msingi';

  @override
  String get profile_activity_level => 'Kiwango cha Shughuli';

  @override
  String get profile_stats => 'Takwimu Zangu za Ustawi';

  @override
  String get profile_saved => 'Wasifu umesasishwa';

  @override
  String get profile_bmi => 'Kielezo cha Misa ya Mwili (BMI)';

  @override
  String get profile_membership => 'Uanachama';

  @override
  String get settings => 'Mipangilio';

  @override
  String get preferences_habits => 'UPENDELEO & TABIA';

  @override
  String get appearance_theme => 'Muonekano & Mandhari';

  @override
  String get appearance_theme_sub =>
      'Nyeusi, Nyepesi, Hali ya Mfumo na Chaguo za Mandharinyuma ya Programu';

  @override
  String get permissions => 'Ruhusa na Ufikiaji wa Mfumo';

  @override
  String get permissions_sub =>
      'Health Connect, Sensorer za Hatua, GPS, Arifa na Kamera';

  @override
  String get reminders_notifications => 'Vikumbusho na Arifa';

  @override
  String get reminders_sub =>
      'Saa za kula, maji, kuingia kwa uzito na vikumbusho vya wakati wa kulala';

  @override
  String get units_of_measurement => 'Vitengo vya Vipimo';

  @override
  String get units_sub =>
      'Kipimo (kg, cm, ml, km) au Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Lugha ya Programu';

  @override
  String get language_sub =>
      'Kiingereza, हिन्दी (Kihindi), Hinglish & 195+ lugha za kimataifa';

  @override
  String get home_screen_widgets => 'Wijeti za Skrini ya Nyumbani';

  @override
  String get widgets_sub =>
      'Wijeti za Android za moja kwa moja: Hub, Hatua, Maji, Lishe na Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch mwandani, vigae, matatizo & live vitals';

  @override
  String get goals_wellness => 'MALENGO NA MAARIFA YA USTAAFU';

  @override
  String get nutrition_targets => 'Malengo ya Lishe & Mgawanyiko Mkuu';

  @override
  String get nutrition_targets_sub =>
      'Lengo la kalori, protini, wanga, mafuta na maji';

  @override
  String get weekly_recap => 'Muhtasari wa Ustawi wa Kila Wiki';

  @override
  String get weekly_recap_sub =>
      'Wastani wa kalori wa siku 7, uwiano wa jumla na siku bora zaidi';

  @override
  String get streaks_milestones => 'Michirizi & Milestones';

  @override
  String get streaks_sub => 'Misururu inayoendelea ya maua, beji na mafanikio';

  @override
  String get connected_devices => 'VIFAA & ECOSYSTEM ZILIZOUNGANISHWA';

  @override
  String get devices_hub => 'Vifaa na Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Mazingira na Hali ya hewa';

  @override
  String get surroundings_sub =>
      'Ubora wa hewa (AQI), index ya UV na vidokezo vya hali ya hewa ya unyevu';

  @override
  String get bloomi_pro => 'Usajili wa Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Kocha wa Mpango wa AI, wijeti 5 za skrini ya nyumbani na ufuatiliaji muhimu';

  @override
  String get about_security => 'KUHUSU & USALAMA';

  @override
  String get about_bloomi => 'Kuhusu Bloomi';

  @override
  String get about_bloomi_sub => 'Unda vipimo, toleo, sifa';

  @override
  String get privacy_policy => 'Sera ya Faragha';

  @override
  String get privacy_policy_sub =>
      'Usanifu wa data ya nje ya mtandao-kwanza kwenye kifaa';

  @override
  String get terms_conditions => 'Sheria na Masharti';

  @override
  String get terms_conditions_sub => 'Masharti ya huduma na miongozo ya ustawi';

  @override
  String get delete_account => 'Futa Akaunti na Data';

  @override
  String get delete_account_sub =>
      'Futa kwa njia isiyoweza kutenduliwa data ya ndani ya SQLite na chelezo za wingu';

  @override
  String get healthy_habits => 'Jenga tabia za upole na za kudumu za ustawi';

  @override
  String get all_logs => 'Data Yangu Zilizofuatiliwa na Kumbukumbu';

  @override
  String get search_language => 'Tafuta kwa lugha au hati asili...';

  @override
  String get languages_available => 'Lugha Zinazopatikana';

  @override
  String get no_matching_languages =>
      'Hakuna lugha zinazolingana zilizopatikana';

  @override
  String get try_searching =>
      'Jaribu kutafuta kwa hati asili au tahajia ya Kiingereza';

  @override
  String get partially_translated => 'Imetafsiriwa kwa kiasi';

  @override
  String get complete_translation => 'Kamilisha';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lugha imewekwa kuwa $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Mazingira na Mazingira';

  @override
  String get surroundings_aqi => 'Kielezo cha Ubora wa Hewa';

  @override
  String get surroundings_uv => 'Kiashiria cha UV';

  @override
  String get surroundings_temp => 'Halijoto';

  @override
  String get surroundings_humidity => 'Unyevu';

  @override
  String get surroundings_hydration_advice =>
      'Kaa na maji mengi katika hali ya hewa ya sasa.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Tafuta Chakula';

  @override
  String get food_quick_barcode => 'Changanua Msimbo Pau 👑';

  @override
  String get food_quick_water => 'Ongeza Maji';

  @override
  String get food_quick_custom => 'Chakula Maalum';

  @override
  String get surroundings_good => 'Nzuri';

  @override
  String get surroundings_moderate => 'Wastani';

  @override
  String get surroundings_unhealthy => 'Asiye na afya';

  @override
  String get notifications_title => 'Arifa na Tahadhari';

  @override
  String get notifications_empty => 'Hakuna arifa mpya';

  @override
  String get notifications_mark_read => 'Tia Alama Zote Kama Zimesomwa';

  @override
  String get notifications_clear => 'Futa Zote';

  @override
  String get reminders => 'Mipangilio ya Kikumbusho';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Kikumbusho cha Kiamsha kinywa 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Habari za asubuhi! Muda wa kifungua kinywa bora saa $time .';
  }

  @override
  String get reminders_lunch_title => 'Kikumbusho cha Chakula cha Mchana 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Sitisha na ufurahie chakula cha mchana kilichosawazishwa na kizuri saa $time .';
  }

  @override
  String get reminders_dinner_title => 'Kikumbusho cha Chakula cha jioni 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Wakati wa chakula cha jioni chepesi na cha kuridhisha saa $time .';
  }

  @override
  String get reminders_water_title => 'Msukumo wa Kuongeza maji 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Wakati wa kunywa glasi safi ya maji! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Upimaji wa Kila Wiki ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Fuatilia vipimo vyako vya mwili vya kila wiki kwenye Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Upepo chini wakati wa kulala 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Pumzika na ujiandae kulala kwa utulivu ( $time ).';
  }

  @override
  String get onboard_welcome => 'Karibu Bloomi';

  @override
  String get onboard_sub =>
      'Rafiki yako, mshirika wako wa kwanza wa afya na lishe nje ya mtandao.';

  @override
  String get onboard_get_started => 'Anza';

  @override
  String get onboard_sign_in => 'Ingia';

  @override
  String get onboard_skip => 'Ruka';

  @override
  String get onboard_choose_goal => 'Je, lengo lako kuu la afya njema ni lipi?';

  @override
  String get onboard_goal_weight_loss => 'Kupunguza Uzito Mpole';

  @override
  String get onboard_goal_muscle => 'Kuongezeka kwa Misuli & Nguvu';

  @override
  String get onboard_goal_energy => 'Nishati na Uhai wa Kila Siku';

  @override
  String get onboard_goal_habits => 'Kula kwa Kuzingatia Afya';

  @override
  String get onboard_about_you => 'Tuambie Kuhusu Wewe Mwenyewe';

  @override
  String get onboard_lifestyle => 'Ratiba Yako ya Kila Siku';

  @override
  String get onboard_permissions_title => 'Ruhusa na Ufikiaji wa Mfumo';

  @override
  String get onboard_permissions_sub =>
      'Ruhusu ufikiaji wa hatua za kusawazisha, mazoezi na vikumbusho.';

  @override
  String get onboard_plan_ready_title => 'Mpango Wako Maalum uko Tayari!';

  @override
  String get onboard_plan_ready_sub =>
      'Tumekuundia ramani bora ya lishe na afya bora kwa ajili yako.';

  @override
  String get onboard_enter_bloomi => 'Ingiza Bloomi';

  @override
  String get insights_weekly_report => 'Muhtasari wa Ustawi wa Kila Wiki';

  @override
  String insights_best_day(Object day) {
    return 'Siku Bora ya Uthabiti: $day';
  }

  @override
  String get insights_streaks_badges => 'Michirizi & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Imefunguliwa mnamo $date';
  }

  @override
  String get insights_keep_going => 'Endelea na maendeleo ya ajabu!';

  @override
  String get widgets_title => 'Wijeti za Skrini ya Nyumbani';

  @override
  String widgets_active_count(Object count) {
    return 'Wijeti Zinazotumika: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Hatua & Pete Inayotumika';

  @override
  String get widgets_water_title => 'Hidration Quick Ingia';

  @override
  String get widgets_mascot_title => 'Mwenzi wa Bloomi Mascot';

  @override
  String get wear_os_title => 'Vaa Smartwatch ya OS';

  @override
  String get wear_os_connected => 'Imeunganishwa kwa Tazama';

  @override
  String get wear_os_sync => 'Sawazisha Data ya Kutazama';

  @override
  String get theme_title => 'Muonekano & Mandhari';

  @override
  String get theme_mode => 'Hali ya Mandhari';

  @override
  String get theme_light => 'Mwanga';

  @override
  String get theme_dark => 'Giza';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Palette ya Mandharinyuma';

  @override
  String get units_title => 'Vitengo vya Vipimo';

  @override
  String get units_metric => 'Kipimo (kilo, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Imeshindwa kupakia dashibodi';

  @override
  String get home_health_permission_req =>
      'Ruhusa ya Kuunganisha Afya Inahitajika';

  @override
  String get home_health_permission_desc =>
      'Bloomi inahitaji ruhusa ya Health Connect ili kuvuta hatua halisi, mapigo ya moyo na kusawazisha wijeti za simu za mkononi katika muda halisi.';

  @override
  String get home_allow_health => 'Ruhusu Afya Unganisha';

  @override
  String get home_ready_mindful_day => 'Je, uko tayari kwa siku nzuri? ✨';

  @override
  String get home_quick_add => 'Ongeza Haraka';

  @override
  String get home_live_gps => 'GPS ya moja kwa moja';

  @override
  String get home_calories_remaining_label => 'KALORI ZILIZOBAKI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Zinazoliwa: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Gusa kwa Kifuatiliaji cha Maji 💧';

  @override
  String get home_water_goal_reached => 'Lengo la kila siku limefikiwa 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml hadi lengo la kila siku';
  }

  @override
  String get home_details => 'Maelezo';

  @override
  String get home_upgrade_plan_desc =>
      'Boresha ili ufungue malengo ya kila siku yaliyobinafsishwa na mpango wa AI';

  @override
  String get home_unlock => 'Fungua 👑';

  @override
  String get home_quick_log_hint => 'Rekodi kwa haraka ingizo la ustawi';

  @override
  String get food_serving_size => 'Ukubwa wa Kutumikia';

  @override
  String get food_serving_grams => 'Kuhudumia (g)';

  @override
  String get food_number_servings => 'Idadi ya Huduma';

  @override
  String get food_calories_per_serving => 'Kalori kwa kuwahudumia';

  @override
  String get food_recipe_ingredients => 'Viungo';

  @override
  String get food_recipe_add_ingredient => 'Ongeza Kiungo';

  @override
  String get food_recipe_directions => 'Maagizo na Vidokezo';

  @override
  String get food_recipe_total => 'Jumla ya Lishe ya Mapishi';

  @override
  String get food_recipe_per_serving => 'Kwa Kutumikia Lishe';

  @override
  String get food_recipe_saved_toast => 'Chakula maalum kimehifadhiwa!';

  @override
  String get food_barcode_found => 'Bidhaa Imepatikana!';

  @override
  String get food_barcode_not_found_desc =>
      'Hatukuweza kupata msimbopau huu kwenye hifadhidata iliyo wazi. Unaweza kuiongeza kama chakula maalum.';

  @override
  String get food_add_custom_btn => 'Ongeza Chakula Maalum';

  @override
  String get food_scan_again => 'Changanua Tena';

  @override
  String get food_review_items => 'Kagua Vyakula Vilivyogunduliwa';

  @override
  String get food_review_hint =>
      'Rekebisha idadi au uondoe bidhaa yoyote isiyotambulika';

  @override
  String get food_log_selected => 'Ingia Vyakula Vilivyochaguliwa';

  @override
  String get food_favourites_title => 'Vyakula Vipendwavyo';

  @override
  String get food_recent_title => 'Vyakula vya Hivi Karibuni';

  @override
  String get food_no_favourites =>
      'Bado hakuna vyakula unavyovipenda. Gusa moyo kwenye chakula chochote ili uhifadhi hapa.';

  @override
  String get food_no_recents =>
      'Hakuna vyakula vilivyowekwa kwenye kumbukumbu hivi majuzi.';

  @override
  String get food_nutrition_details_title => 'Maelezo ya Lishe ya Kila Siku';

  @override
  String get food_macro_protein_label => 'Kuvunjika kwa protini';

  @override
  String get food_macro_carbs_label => 'Mgawanyiko wa Wanga';

  @override
  String get food_macro_fat_label => 'Kuvunjika kwa mafuta';

  @override
  String get food_macro_fiber_label => 'Kuvunjika kwa Fiber';

  @override
  String get food_daily_target_comparison => 'Ulinganisho wa Lengo';

  @override
  String food_target_label(Object target) {
    return 'Lengo: $target';
  }

  @override
  String get food_edit_entry => 'Badilisha Ingizo la Diary';

  @override
  String get food_delete_entry => 'Futa Ingizo';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current kati ya mililita $target';
  }

  @override
  String get water_intake_history => 'Magogo ya Maji ya Leo';

  @override
  String get water_no_logs_today =>
      'Bado hakuna maji yaliyojaa leo. Hydrate na uguse kitufe cha kuongeza haraka!';

  @override
  String get water_adjust_goal => 'Rekebisha Lengo la Kila Siku';

  @override
  String get health_connect_banner => 'Imeunganishwa kwa Health Connect';

  @override
  String get health_vitals_summary => 'Muhimu za Kila siku za Afya';

  @override
  String get health_latest_heart_rate => 'Kiwango cha Moyo cha Hivi Punde';

  @override
  String get health_latest_bp => 'Shinikizo la Damu';

  @override
  String get health_latest_spo2 => 'Oksijeni ya Damu';

  @override
  String get health_latest_glucose => 'Glucose ya Damu';

  @override
  String get health_latest_weight => 'Uzito';

  @override
  String get health_latest_sleep => 'Muda wa Kulala';

  @override
  String get health_add_manual => 'Ongeza Kipimo cha Mwongozo';

  @override
  String get health_history_trends => 'Mitindo ya Kihistoria';

  @override
  String get health_sync_success => 'Data ya afya imesawazishwa!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return 'Saa $hours dakika $mins';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilo';
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
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title => 'Vifaa Vilivyounganishwa na Vivazi';

  @override
  String get health_devices_desc =>
      'Dhibiti saa mahiri zilizooanishwa, vifuatiliaji vya siha na vitambuzi vya afya.';

  @override
  String get health_workout_editor_title => 'Badilisha Mazoezi';

  @override
  String get health_workout_name_label => 'Jina la Workout';

  @override
  String get health_workout_duration_label => 'Muda (dakika)';

  @override
  String get health_workout_calories_label => 'Kalori Zilizokadiriwa (kcal)';

  @override
  String get health_workout_date_label => 'Tarehe na Wakati';

  @override
  String get plan_daily_wellness_roadmap => 'Ramani Yako Iliyobinafsishwa';

  @override
  String get plan_morning_routine => 'Utaratibu wa Asubuhi';

  @override
  String get plan_afternoon_routine => 'Ustawi wa Mchana';

  @override
  String get plan_evening_routine => 'Jioni Upepo-Chini';

  @override
  String get plan_coach_badge => 'Kocha wa Bloomi AI';

  @override
  String get plan_weekly_overview => 'Mtazamo wa Ustawi wa Siku 7';

  @override
  String get plan_targets_title => 'Malengo na Malengo ya Afya';

  @override
  String get plan_calorie_budget_label => 'Bajeti ya Kalori ya Kila Siku';

  @override
  String get plan_water_budget_label => 'Malengo ya Maji ya Kila Siku';

  @override
  String get plan_step_budget_label => 'Lengo la Hatua ya Kila Siku';

  @override
  String get plan_macro_split_label => 'Uwiano wa Macronutrient';

  @override
  String get profile_personal_details => 'Maelezo ya Kibinafsi';

  @override
  String get profile_body_stats => 'Vipimo vya Mwili';

  @override
  String get profile_app_preferences => 'Mapendeleo na Mipangilio ya Programu';

  @override
  String get profile_edit_name_hint => 'Jina lako';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Urefu ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Uzito ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Umri';

  @override
  String get profile_gender_male => 'Mwanaume';

  @override
  String get profile_gender_female => 'Mwanamke';

  @override
  String get profile_gender_other => 'Nyingine / Ninapendelea kutosema';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Kidogo au hakuna mazoezi)';

  @override
  String get profile_activity_light => 'Inatumika Nyepesi (siku 1-3 / wiki)';

  @override
  String get profile_activity_moderate => 'Inatumika Wastani (siku 3-5 / wiki)';

  @override
  String get profile_activity_very => 'Inatumika Sana (siku 6-7 / wiki)';

  @override
  String get settings_wear_os_header => 'Kuvaa OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Sakinisha kigae cha Bloomi na matatizo kwenye saa yako ya Wear OS ili kutazama kalori, maji na hatua.';

  @override
  String get settings_widgets_header => 'Wijeti Zinazoingiliana za Android';

  @override
  String get settings_widgets_desc =>
      'Bandika wijeti za wakati halisi kwenye skrini ya nyumbani ya kifaa chako kwa sasisho za papo hapo.';

  @override
  String get settings_about_header => 'Kuhusu Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Kujenga 100';

  @override
  String get settings_about_credits =>
      'Imeundwa kwa uangalifu kwa maisha ya akili, yenye afya.';

  @override
  String get settings_terms_header => 'Vigezo na Masharti';

  @override
  String get settings_privacy_header => 'Sera ya Faragha';

  @override
  String get settings_delete_header => 'Futa Akaunti na Data';

  @override
  String get settings_delete_warning =>
      'Kitendo hiki hakiwezi kutenduliwa. Milo yako yote, mazoezi, muhimu na wasifu wako utafutwa kabisa.';

  @override
  String get settings_delete_confirm_btn => 'Futa kabisa';

  @override
  String get onboard_welcome_headline => 'Karibu kwenye Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Ufuatiliaji mpole na makini wa afya ulioundwa maishani mwako.';

  @override
  String get onboard_step_about => 'Kuhusu Wewe';

  @override
  String get onboard_step_goals => 'Malengo Yako';

  @override
  String get onboard_step_lifestyle => 'Mazoea ya Kila Siku';

  @override
  String get onboard_step_permissions => 'Ruhusa';

  @override
  String get onboard_step_plan => 'Tayari!';

  @override
  String get onboard_health_connect_perm => 'Ufikiaji wa Muunganisho wa Afya';

  @override
  String get onboard_step_sensors_perm => 'Sensorer ya Kukabiliana na Hatua';

  @override
  String get onboard_notif_perm => 'Vikumbusho na Arifa Muhimu';

  @override
  String get onboard_camera_perm =>
      'Kamera (Barcode & Kichanganuzi cha Chakula)';

  @override
  String get onboard_grant_permissions => 'Ruhusa za Ruzuku';

  @override
  String get onboard_continue_dashboard => 'Fungua Dashibodi';

  @override
  String get notif_channel_hydration_name => 'Vidokezo vya Hydration';

  @override
  String get notif_channel_hydration_desc =>
      'Vikumbusho vya maji mpole siku nzima';

  @override
  String get notif_channel_nutrition_name => 'Vikumbusho vya Mlo na Lishe';

  @override
  String get notif_channel_nutrition_desc =>
      'Arifa za ukumbusho wa kifungua kinywa, chakula cha mchana na chakula cha jioni';

  @override
  String get notif_channel_steps_name => 'Hatua Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Sherehe wakati wa kufikia malengo ya hatua ya kila siku';

  @override
  String get notif_channel_vitals_name => 'Ukaguzi wa Afya na Vitas';

  @override
  String get notif_channel_vitals_desc =>
      'Vikumbusho vya kupunguza uzito na wakati wa kulala';

  @override
  String get notif_action_log_water => '💧 Kigogo +250ml';

  @override
  String get notif_action_snooze => 'Sinzia 15m';

  @override
  String get notif_action_log_meal => '🥗 Mlo wa logi';

  @override
  String get language => 'Lugha';

  @override
  String get share => 'Shiriki';

  @override
  String common_days(Object count) {
    return 'Siku $count zilizopita';
  }
}
