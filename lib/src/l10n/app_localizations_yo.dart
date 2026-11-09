// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsYo extends AppLocalizations {
  AppLocalizationsYo([String locale = 'yo']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ile';

  @override
  String get nav_today => 'Loni';

  @override
  String get nav_plan => 'Ètò';

  @override
  String get nav_food => 'Ounjẹ';

  @override
  String get nav_food_diary => 'Iwe ito iṣẹlẹ Ounjẹ';

  @override
  String get nav_workout => 'Wọle adaṣe';

  @override
  String get nav_health => 'Ilera';

  @override
  String get nav_profile => 'Profaili';

  @override
  String get save => 'Fipamọ';

  @override
  String get cancel => 'Fagilee';

  @override
  String get delete => 'Paarẹ';

  @override
  String get edit => 'Ṣatunkọ';

  @override
  String get done => 'Ti ṣe';

  @override
  String get close => 'Sunmọ';

  @override
  String get back => 'Pada';

  @override
  String get next => 'Itele';

  @override
  String get continue_btn => 'Tesiwaju';

  @override
  String get confirm => 'Jẹrisi';

  @override
  String get search => 'Wa';

  @override
  String get filter => 'Àlẹmọ';

  @override
  String get all => 'Gbogbo';

  @override
  String get active => 'Ti nṣiṣe lọwọ';

  @override
  String get today => 'Loni';

  @override
  String get yesterday => 'Lana';

  @override
  String get tomorrow => 'Ọla';

  @override
  String get add => 'Fi kun';

  @override
  String get remove => 'Yọ kuro';

  @override
  String get refresh => 'Tuntun';

  @override
  String get retry => 'Tun gbiyanju';

  @override
  String get error => 'Asise';

  @override
  String get success => 'Aseyori';

  @override
  String get loading => 'Nkojọpọ...';

  @override
  String get no_data => 'Ko si data wa';

  @override
  String get offline => 'Aisinipo Ipo';

  @override
  String get offline_sub =>
      'Awọn ayipada yoo muṣiṣẹpọ ni kete ti a tun ti sopọ';

  @override
  String get undo => 'Yipada';

  @override
  String get portion => 'Ìpín';

  @override
  String get quantity => 'Opoiye';

  @override
  String get unit => 'Ẹyọ';

  @override
  String get clear => 'Ko o';

  @override
  String get select => 'Yan';

  @override
  String get apply => 'Waye';

  @override
  String get reset => 'Tunto';

  @override
  String get ok => 'O DARA';

  @override
  String get yes => 'Bẹẹni';

  @override
  String get no => 'Rara';

  @override
  String get optional => 'iyan';

  @override
  String get calories => 'Awọn kalori';

  @override
  String get protein => 'Amuaradagba';

  @override
  String get carbs => 'Awọn kalori';

  @override
  String get fat => 'Ọra';

  @override
  String get fiber => 'Okun';

  @override
  String get water => 'Omi';

  @override
  String get steps => 'Awọn igbesẹ';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'milimita';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'ninu';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'wakati';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Nsin';

  @override
  String get servings => 'Awọn iṣẹ iranṣẹ';

  @override
  String get serving_size => 'Nṣiṣẹ Iwon';

  @override
  String get per_100g => 'fun 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Yuroopu';

  @override
  String get middle_east => 'Aarin Ila-oorun';

  @override
  String get africa => 'Afirika';

  @override
  String get americas => 'Amẹrika';

  @override
  String get home_title => 'Ile';

  @override
  String get home_greeting_morning => 'E ku Owuro';

  @override
  String get home_greeting_afternoon => 'O dara Friday';

  @override
  String get home_greeting_evening => 'O dara aṣalẹ';

  @override
  String get home_streak_title => 'Ṣiṣan Iruwe';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '_PH_0__ ṣiṣan ọjọ',
      one: '1 ṣiṣan ọjọ',
      zero: '0 ṣiṣan ọjọ',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ti jona';

  @override
  String get home_calories_budget => 'Isuna Kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal to ku';
  }

  @override
  String get home_water_title => 'Ojoojumọ Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / $target milimita';
  }

  @override
  String get home_steps_title => 'Awọn Igbesẹ Rin';

  @override
  String get home_quick_actions => 'Awọn iṣẹ iyara';

  @override
  String get home_log_meal => 'Wọle Ounjẹ';

  @override
  String get home_log_water => 'Wọle Omi';

  @override
  String get home_log_workout => 'Wọle Workout';

  @override
  String get home_log_weight => 'Wọle iwuwo';

  @override
  String get home_insights_title => 'Awọn Imọye Oni';

  @override
  String get home_quote =>
      'Awọn yiyan ilera kekere ṣẹda awọn iyipada ti o dagba.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI ẹlẹsin';

  @override
  String get home_surroundings => 'Awọn agbegbe & Afẹfẹ';

  @override
  String get home_notifications => 'Awọn iwifunni';

  @override
  String get home_daily_score => 'Dimegilio Nini alafia Ojoojumọ';

  @override
  String get home_view_all => 'Wo Gbogbo';

  @override
  String get food_diary_title => 'Iwe ito iṣẹlẹ Ounjẹ';

  @override
  String get food_breakfast => 'Ounjẹ owurọ';

  @override
  String get food_lunch => 'Ounjẹ ọsan';

  @override
  String get food_dinner => 'Ounjẹ ale';

  @override
  String get food_snacks => 'Awọn ipanu';

  @override
  String get food_add_food => 'Fi Ounjẹ kun';

  @override
  String get food_edit_food => 'Ṣatunkọ Ounjẹ';

  @override
  String get food_add_breakfast => 'Fi Ounjẹ owurọ kun';

  @override
  String get food_add_lunch => 'Fi Ounjẹ Ọsan kun';

  @override
  String get food_add_dinner => 'Fi Ounjẹ Alẹ kun';

  @override
  String get food_add_snack => 'Fi Ipanu kun';

  @override
  String get food_total_calories => 'Lapapọ awọn kalori';

  @override
  String get food_empty_meal =>
      'Ko si awọn ounjẹ ti o wọle fun ounjẹ yii sibẹsibẹ';

  @override
  String get food_empty_diary => 'Ko si ounjẹ ti o wọle fun ọjọ yii';

  @override
  String get food_log_first_meal => 'Fọwọ ba + lati wọle ounjẹ aladun akọkọ rẹ';

  @override
  String get food_quick_add => 'Fikun kiakia';

  @override
  String get food_search_hint => 'Ṣewadii awọn ounjẹ, awọn eso, dal, roti...';

  @override
  String get food_custom_recipe => 'Ounjẹ aṣa & Ohunelo';

  @override
  String get food_scan_barcode => 'Ṣayẹwo kooduopo';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Awọn ounjẹ to ṣẹṣẹ';

  @override
  String get food_favourites => 'Awọn ayanfẹ';

  @override
  String get food_macro_summary => 'Idilọwọ Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Ṣe o da ọ loju pe o fẹ yọ nkan yii kuro?';

  @override
  String get food_item_deleted => 'Nkan ounje kuro';

  @override
  String get food_remaining => 'ti o ku';

  @override
  String get food_consumed => 'run';

  @override
  String food_of_target(Object target) {
    return 'ti $target kcal';
  }

  @override
  String get foodSearch_title => 'Wa Awọn ounjẹ';

  @override
  String get foodSearch_scan_barcode => 'Ṣayẹwo kooduopo';

  @override
  String get foodSearch_take_photo => 'Imolara Food Fọto';

  @override
  String get foodSearch_custom_food => 'Ṣẹda Aṣa Ounjẹ';

  @override
  String get foodSearch_recent_searches => 'Awọn iwadii aipẹ';

  @override
  String get foodSearch_popular => 'Gbajumo awopọ';

  @override
  String get foodSearch_no_results => 'Ko si awọn ounjẹ ti o baamu wiwa rẹ';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Mu koodu iwọle pọ si inu fireemu kamẹra';

  @override
  String get barcode_not_found => 'A ko ri ọja ni ibi ipamọ data';

  @override
  String get barcode_premium_feature =>
      'Ṣiṣayẹwo koodu koodu wa pẹlu Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Ya kan ko o Fọto ti rẹ satelaiti';

  @override
  String get camera_analysing => 'Ṣiṣayẹwo awo ounjẹ...';

  @override
  String get camera_detected => 'Awọn nkan ti a rii';

  @override
  String get camera_flash => 'Yipada Flash';

  @override
  String get camera_retake => 'Mu Fọto pada';

  @override
  String get camera_confirm_food => 'Jẹrisi Awọn nkan';

  @override
  String get customFood_title => 'Ounjẹ aṣa & Ohunelo';

  @override
  String get customFood_name_hint => 'Satelaiti tabi eroja orukọ';

  @override
  String get customFood_calories_hint => 'Awọn kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Amuaradagba (g)';

  @override
  String get customFood_carbs_hint => 'Karoobu (g)';

  @override
  String get customFood_fat_hint => 'Ọra (g)';

  @override
  String get customFood_save => 'Ṣafipamọ Ohunelo';

  @override
  String get water_tracker_title => 'Omi Tracker';

  @override
  String get water_daily_target => 'Ifojusi Hydration Daily';

  @override
  String get water_logged_today => 'Wọle Loni';

  @override
  String get water_add_glass => '+ 250 milimita gilasi';

  @override
  String get water_add_bottle => '+ 500 milimita igo';

  @override
  String get water_custom_amount => 'Aṣa iye';

  @override
  String get water_reminder_tip =>
      'Mu omi nigbagbogbo jakejado ọjọ fun agbara ti o duro.';

  @override
  String water_logged_toast(Object amount) {
    return 'Wọle $amount milimita omi 💧';
  }

  @override
  String get workout_title => 'Wọle adaṣe';

  @override
  String get workout_add_exercise => 'Fi adaṣe sii';

  @override
  String get workout_cardio => 'Kadio';

  @override
  String get workout_strength => 'Agbara';

  @override
  String get workout_yoga => 'Yoga & Ni irọrun';

  @override
  String get workout_duration => 'Iye akoko';

  @override
  String get workout_intensity => 'Kikankikan';

  @override
  String get workout_calories_burned => 'Awọn kalori Iná';

  @override
  String get workout_empty => 'Ko si awọn adaṣe ti o wọle loni';

  @override
  String get workout_save_success => 'Ti fipamọ adaṣe ni aṣeyọri!';

  @override
  String get workout_type => 'Orisi adaṣe';

  @override
  String get workout_notes => 'Awọn akọsilẹ & Awọn ifojusọna';

  @override
  String get health_overview_title => 'Ilera & Pataki';

  @override
  String get health_heart_rate => 'Okan Oṣuwọn';

  @override
  String get health_blood_oxygen => 'Atẹgun ẹjẹ (SpO2)';

  @override
  String get health_blood_pressure => 'Iwọn Ẹjẹ';

  @override
  String get health_blood_glucose => 'Glukosi ẹjẹ';

  @override
  String get health_body_temperature => 'Iwọn otutu ara';

  @override
  String get health_sleep_tracking => 'Titele orun';

  @override
  String get health_weight_tracking => 'Iwuwo & Ara Tiwqn';

  @override
  String get health_waist_hip => 'Ikun-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Awọn ẹrọ & Smartwatch Ipele';

  @override
  String get health_sync_now => 'Sync Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Amuṣiṣẹpọ kẹhin: _PH_0__';
  }

  @override
  String get health_manual_entry => 'Titẹsi Ilera Afowoyi';

  @override
  String get health_metric_detail => 'Awọn alaye Metiriki';

  @override
  String get health_connected_sensors => 'Awọn sensọ Ilera ti a ti sopọ';

  @override
  String get plan_title => 'Ojoojumọ Eto';

  @override
  String get plan_weekly_title => 'Eto Nini alafia Ọsẹ';

  @override
  String get plan_calorie_target => 'Kalori Àkọlé';

  @override
  String get plan_water_target => 'Ifojusi Hydration';

  @override
  String get plan_step_target => 'Àkọlé Igbesẹ';

  @override
  String get plan_sleep_target => 'Ifojusun oorun';

  @override
  String get plan_meal_suggestions => 'Awọn imọran ounjẹ';

  @override
  String get plan_healthy_habits => 'Ni ilera isesi & Italolobo';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Awọn iṣeduro';

  @override
  String get plan_generated_title => 'Iṣeto Ojoojumọ ti ara ẹni';

  @override
  String get profile_title => 'Profaili';

  @override
  String get profile_edit => 'Profaili Ṣatunkọ';

  @override
  String get profile_name => 'Oruko';

  @override
  String get profile_age => 'Ọjọ ori';

  @override
  String get profile_gender => 'abo';

  @override
  String get profile_height => 'Giga';

  @override
  String get profile_weight => 'Iwọn';

  @override
  String get profile_goal => 'Ifojusi akọkọ';

  @override
  String get profile_activity_level => 'Ipele aṣayan iṣẹ-ṣiṣe';

  @override
  String get profile_stats => 'Iṣiro Nini alafia Mi';

  @override
  String get profile_saved => 'Profaili imudojuiwọn ni aṣeyọri';

  @override
  String get profile_bmi => 'Atọka Ibi Ara (BMI)';

  @override
  String get profile_membership => 'Omo egbe';

  @override
  String get settings => 'Eto';

  @override
  String get preferences_habits => 'Awọn ayanfẹ & Awọn aṣa';

  @override
  String get appearance_theme => 'Irisi & Akori';

  @override
  String get appearance_theme_sub =>
      'Dudu, Ina, Ipo Eto & Awọn aṣayan abẹlẹ App';

  @override
  String get permissions => 'Awọn igbanilaaye & Wiwọle Eto';

  @override
  String get permissions_sub =>
      'Sopọ Ilera, Awọn sensọ Igbesẹ, GPS, Awọn iwifunni & Kamẹra';

  @override
  String get reminders_notifications => 'Awọn olurannileti & Awọn iwifunni';

  @override
  String get reminders_sub =>
      'Awọn akoko ounjẹ, omi, iṣayẹwo iwuwo & awọn olurannileti akoko ibusun';

  @override
  String get units_of_measurement => 'Sipo ti wiwọn';

  @override
  String get units_sub =>
      'Metiriki (kg, cm, milimita, km) tabi Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Ede App';

  @override
  String get language_sub =>
      'English, हिन्दी (Hindi), Hinglish & 195+ awọn ede agbaye';

  @override
  String get home_screen_widgets => 'Home Iboju ẹrọ ailorukọ';

  @override
  String get widgets_sub =>
      'Awọn ẹrọ ailorukọ Live Android: Ipele, Awọn igbesẹ, Omi, Ounjẹ & Mascot';

  @override
  String get wear_os_watch_app => 'Wọ OS Watch App';

  @override
  String get wear_os_sub =>
      'Ẹlẹgbẹ Smartwatch, awọn alẹmọ, awọn ilolu & awọn iwulo igbesi aye';

  @override
  String get goals_wellness => 'Awọn ibi-afẹde & AWỌN ỌRỌ NIPA';

  @override
  String get nutrition_targets => 'Nutrition fojusi & Makiro Pipin';

  @override
  String get nutrition_targets_sub =>
      'Ibi-afẹde kalori, amuaradagba, awọn carbs, ọra & ibi-afẹde omi';

  @override
  String get weekly_recap => 'Nini alafia Ibojuwẹhin wo nkan';

  @override
  String get weekly_recap_sub =>
      'Iwọn kalori ọjọ 7, ipin Makiro & ọjọ ti o dara julọ';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub =>
      'Awọn ṣiṣan ododo ti nṣiṣe lọwọ, awọn baaji & awọn aṣeyọri';

  @override
  String get connected_devices => 'Awọn ẹrọ ti a ti sopọ & ECOSYSTEM';

  @override
  String get devices_hub => 'Awọn ẹrọ & Smartwatch Ipele';

  @override
  String get devices_hub_sub =>
      'Asopọ ilera, Agbaaiye Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Awọn agbegbe & Oju ojo';

  @override
  String get surroundings_sub =>
      'Didara afẹfẹ (AQI), atọka UV & awọn imọran hydration oju ojo';

  @override
  String get bloomi_pro => 'Bloomi Pro alabapin';

  @override
  String get bloomi_pro_sub =>
      'Olukọni Eto AI, awọn ẹrọ ailorukọ iboju ile 5 & ipasẹ pataki';

  @override
  String get about_security => 'NIPA & AABO';

  @override
  String get about_bloomi => 'Nipa Bloomi';

  @override
  String get about_bloomi_sub => 'Kọ ni pato, version, eroja';

  @override
  String get privacy_policy => 'Asiri Afihan';

  @override
  String get privacy_policy_sub => 'Aisinipo-akọkọ, faaji data ẹrọ lori ẹrọ';

  @override
  String get terms_conditions => 'Awọn ofin & Awọn ipo';

  @override
  String get terms_conditions_sub => 'Awọn ofin iṣẹ ati awọn itọnisọna ilera';

  @override
  String get delete_account => 'Pa Account & Data';

  @override
  String get delete_account_sub =>
      'Ni aiyipada pa data SQLite agbegbe ati awọn ifẹhinti awọsanma nu';

  @override
  String get healthy_habits => 'Kọ awọn iwa onirẹlẹ, ti o pẹ ni alafia';

  @override
  String get all_logs => 'Data Mi Tọpa & Awọn akọọlẹ';

  @override
  String get search_language =>
      'Ṣewadii nipasẹ ede tabi iwe afọwọkọ abinibi...';

  @override
  String get languages_available => 'Awọn ede Wa';

  @override
  String get no_matching_languages => 'Ko si awọn ede ti o baamu';

  @override
  String get try_searching =>
      'Gbiyanju wiwa nipasẹ iwe afọwọkọ abinibi tabi akọtọ Gẹẹsi';

  @override
  String get partially_translated => 'Itumọ apakan';

  @override
  String get complete_translation => 'Pari';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Eto ede si _PH_0__ ( $nativeName)';
  }

  @override
  String get surroundings_title => 'Agbegbe & Ayika';

  @override
  String get surroundings_aqi => 'Atọka Didara Air';

  @override
  String get surroundings_uv => 'Atọka UV';

  @override
  String get surroundings_temp => 'Iwọn otutu';

  @override
  String get surroundings_humidity => 'Ọriniinitutu';

  @override
  String get surroundings_hydration_advice =>
      'Duro omi daradara ni awọn ipo oju ojo lọwọlọwọ.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Wa Ounjẹ';

  @override
  String get food_quick_barcode => 'Ṣe ọlọjẹ kooduopo 👑';

  @override
  String get food_quick_water => 'Fi omi kun';

  @override
  String get food_quick_custom => 'Ounjẹ aṣa';

  @override
  String get surroundings_good => 'O dara';

  @override
  String get surroundings_moderate => 'Déde';

  @override
  String get surroundings_unhealthy => 'Ailera';

  @override
  String get notifications_title => 'Awọn iwifunni & Awọn itaniji';

  @override
  String get notifications_empty => 'Ko si awọn iwifunni titun';

  @override
  String get notifications_mark_read => 'Samisi Gbogbo bi Ka';

  @override
  String get notifications_clear => 'Ko Gbogbo rẹ kuro';

  @override
  String get reminders => 'Eto olurannileti';

  @override
  String get notifications => 'Awọn iwifunni';

  @override
  String get reminders_breakfast_title => 'Iranti aro 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'O dara owurọ! Àkókò fún oúnjẹ alẹ́ oúnjẹ òòjọ́ ní $time .';
  }

  @override
  String get reminders_lunch_title => 'Iranti ounjẹ ọsan 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Sinmi ati gbadun iwontunwonsi, ounjẹ ọsan ti o ni iranti ni $time .';
  }

  @override
  String get reminders_dinner_title => 'Iranti ale 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Akoko fun ina, ounjẹ alẹ ti o ni itẹlọrun ni $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Akoko lati mu gilasi omi tuntun kan! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Iwọn-ni-ọsẹ ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Tọpinpin awọn metiriki ara osẹ rẹ lori Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Akoko ibusun Afẹfẹ-isalẹ 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Yọọ kuro ki o mura silẹ fun oorun isinmi ( $time ).';
  }

  @override
  String get onboard_welcome => 'Kaabo si Bloomi';

  @override
  String get onboard_sub => 'Ọrẹ rẹ, aisinipo-akọkọ ilera ati ẹlẹgbẹ ijẹẹmu.';

  @override
  String get onboard_get_started => 'Bẹrẹ';

  @override
  String get onboard_sign_in => 'Wọle';

  @override
  String get onboard_skip => 'Rekọja';

  @override
  String get onboard_choose_goal => 'Kini ibi-afẹde ilera akọkọ rẹ?';

  @override
  String get onboard_goal_weight_loss => 'Pipadanu iwuwo Onirẹlẹ';

  @override
  String get onboard_goal_muscle => 'Isan Gain & Agbara';

  @override
  String get onboard_goal_energy => 'Daily Energy & Vitality';

  @override
  String get onboard_goal_habits => 'Ni ilera Mindful jijẹ';

  @override
  String get onboard_about_you => 'Sọ Fun Wa Nipa Ara Rẹ';

  @override
  String get onboard_lifestyle => 'Rẹ Ojoojumọ baraku';

  @override
  String get onboard_permissions_title => 'Awọn igbanilaaye & Wiwọle Eto';

  @override
  String get onboard_permissions_sub =>
      'Yọọ iraye si awọn igbesẹ amuṣiṣẹpọ, awọn adaṣe, ati awọn olurannileti.';

  @override
  String get onboard_plan_ready_title => 'Eto Aṣa Rẹ ti Ṣetan!';

  @override
  String get onboard_plan_ready_sub =>
      'A ṣe apẹrẹ onirẹlẹ, ijẹẹmu ti ara ẹni ati oju-ọna alafia fun ọ nikan.';

  @override
  String get onboard_enter_bloomi => 'Tẹ Bloomi';

  @override
  String get insights_weekly_report => 'Nini alafia Ibojuwẹhin wo nkan';

  @override
  String insights_best_day(Object day) {
    return 'Ọjọ Iduroṣinṣin ti o dara julọ: _PH_0__';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ṣii silẹ ni _PH_0__';
  }

  @override
  String get insights_keep_going => 'Jeki awọn ikọja ilọsiwaju!';

  @override
  String get widgets_title => 'Home Iboju ẹrọ ailorukọ';

  @override
  String widgets_active_count(Object count) {
    return 'Awọn ẹrọ ailorukọ ti nṣiṣẹ: _PH_0__';
  }

  @override
  String get widgets_hub_title => 'Bloomi Nini alafia Ipele';

  @override
  String get widgets_steps_title => 'Igbesẹ & Oruka Nṣiṣẹ';

  @override
  String get widgets_water_title => 'Hydration Quick Wọle';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Wọ Smartwatch OS';

  @override
  String get wear_os_connected => 'Ti sopọ si Watch';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Irisi & Akori';

  @override
  String get theme_mode => 'Ipo Akori';

  @override
  String get theme_light => 'Imọlẹ';

  @override
  String get theme_dark => 'Dudu';

  @override
  String get theme_system => 'Eto Aiyipada';

  @override
  String get theme_background_palette => 'Paleti abẹlẹ';

  @override
  String get units_title => 'Sipo ti wiwọn';

  @override
  String get units_metric => 'Metiriki (kg, cm, milimita)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ko le kojọpọ dasibodu';

  @override
  String get home_health_permission_req =>
      'Ti beere fun igbanilaaye Sopọ Ilera';

  @override
  String get home_health_permission_desc =>
      'Bloomi nilo igbanilaaye Sopọ Ilera lati fa awọn igbesẹ gidi, oṣuwọn ọkan, ati muṣiṣẹpọ awọn ẹrọ ailorukọ ile alagbeka ni akoko gidi.';

  @override
  String get home_allow_health => 'Gba Health Sopọ';

  @override
  String get home_ready_mindful_day => 'Ṣetan fun ọjọ iranti kan? ✨';

  @override
  String get home_quick_add => 'Fikun kiakia';

  @override
  String get home_live_gps => 'GPS Live';

  @override
  String get home_calories_remaining_label => 'Awọn kalori ti o ku';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Je: _PH_0__ / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Fọwọ ba fun Olutọpa Omi 💧';

  @override
  String get home_water_goal_reached => 'Ibi-afẹde ojoojumọ ti de 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '_PH_0__ milimita si ibi-afẹde ojoojumọ';
  }

  @override
  String get home_details => 'Awọn alaye';

  @override
  String get home_upgrade_plan_desc =>
      'Igbesoke lati ṣii awọn ibi-afẹde ojoojumọ ti ara ẹni & ero AI';

  @override
  String get home_unlock => 'Ṣii silẹ 👑';

  @override
  String get home_quick_log_hint => 'Ni kiakia ṣe igbasilẹ titẹsi alafia kan';

  @override
  String get food_serving_size => 'Nṣiṣẹ Iwon';

  @override
  String get food_serving_grams => 'Ṣiṣẹ (g)';

  @override
  String get food_number_servings => 'Nọmba ti Awọn iṣẹ';

  @override
  String get food_calories_per_serving => 'Awọn kalori fun iṣẹ';

  @override
  String get food_recipe_ingredients => 'Awọn eroja';

  @override
  String get food_recipe_add_ingredient => 'Fi eroja kun';

  @override
  String get food_recipe_directions => 'Awọn ilana & Awọn akọsilẹ';

  @override
  String get food_recipe_total => 'Lapapọ Ohunelo Ounjẹ';

  @override
  String get food_recipe_per_serving => 'Per Sìn Nutrition';

  @override
  String get food_recipe_saved_toast => 'Ounjẹ aṣa ti o fipamọ ni aṣeyọri!';

  @override
  String get food_barcode_found => 'Ti ri ọja!';

  @override
  String get food_barcode_not_found_desc =>
      'A ko le rii kooduopo koodu ni ibi ipamọ data ti o ṣii. O le fi kun bi ounjẹ aṣa.';

  @override
  String get food_add_custom_btn => 'Fi Aṣa Ounjẹ';

  @override
  String get food_scan_again => 'Ṣayẹwo Lẹẹkansi';

  @override
  String get food_review_items => 'Atunwo Awọn ounjẹ ti a rii';

  @override
  String get food_review_hint =>
      'Ṣatunṣe awọn iwọn tabi yọ eyikeyi nkan ti a ko mọ';

  @override
  String get food_log_selected => 'Wọle Awọn ounjẹ ti a yan';

  @override
  String get food_favourites_title => 'Awọn ounjẹ ayanfẹ';

  @override
  String get food_recent_title => 'Awọn ounjẹ to ṣẹṣẹ';

  @override
  String get food_no_favourites =>
      'Ko si awọn ounjẹ ayanfẹ sibẹsibẹ. Tẹ ọkan si eyikeyi ounjẹ lati fipamọ ni ibi.';

  @override
  String get food_no_recents => 'Ko si awọn ounjẹ ti a wọle laipẹ ti a rii.';

  @override
  String get food_nutrition_details_title => 'Awọn alaye Ounjẹ ojoojumọ';

  @override
  String get food_macro_protein_label => 'Amuaradagba didenukole';

  @override
  String get food_macro_carbs_label => 'Idinku Carbs';

  @override
  String get food_macro_fat_label => 'Ọra didenukole';

  @override
  String get food_macro_fiber_label => 'Fiber didenukole';

  @override
  String get food_daily_target_comparison => 'Afiwera Àkọlé';

  @override
  String food_target_label(Object target) {
    return 'Àfojúsùn: _PH_0__';
  }

  @override
  String get food_edit_entry => 'Ṣatunkọ Diary titẹsi';

  @override
  String get food_delete_entry => 'Pa titẹ sii';

  @override
  String food_grams_short(Object grams) {
    return '_PH_0__ g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '_PH_0__ kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '_PH_0__ ti _PH_1__ milimita';
  }

  @override
  String get water_intake_history => 'Omi Lojo oni';

  @override
  String get water_no_logs_today =>
      'Ko si omi wọle sibẹsibẹ loni. Mu omi ki o tẹ bọtini fikun ni iyara kan!';

  @override
  String get water_adjust_goal => 'Ṣatunṣe Ibi-afẹde Ojoojumọ';

  @override
  String get health_connect_banner => 'Ti sopọ si Health Sopọ';

  @override
  String get health_vitals_summary => 'Ojoojumọ Health Vitals';

  @override
  String get health_latest_heart_rate => 'Latest Heart Rate';

  @override
  String get health_latest_bp => 'Iwọn Ẹjẹ';

  @override
  String get health_latest_spo2 => 'Atẹgun ẹjẹ';

  @override
  String get health_latest_glucose => 'Glukosi ẹjẹ';

  @override
  String get health_latest_weight => 'Iwọn';

  @override
  String get health_latest_sleep => 'Iye akoko orun';

  @override
  String get health_add_manual => 'Ṣafikun Wiwọn Afowoyi';

  @override
  String get health_history_trends => 'Awọn aṣa itan';

  @override
  String get health_sync_success => 'Data ilera muṣiṣẹpọ ni aṣeyọri!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return 'Wakati _PH_0___$mins iseju';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '_PH_0__ kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '_PH_0__ bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '_PH_0__%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '_PH_0__ / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '_PH_0__ mg/dL';
  }

  @override
  String get health_devices_title => 'Awọn ẹrọ ti a ti sopọ & Awọn aṣọ wiwọ';

  @override
  String get health_devices_desc =>
      'Ṣakoso awọn smartwatches so pọ, awọn olutọpa amọdaju, ati awọn sensọ ilera.';

  @override
  String get health_workout_editor_title => 'Ṣatunkọ Workout';

  @override
  String get health_workout_name_label => 'Orukọ adaṣe';

  @override
  String get health_workout_duration_label => 'Iye akoko (iṣẹju)';

  @override
  String get health_workout_calories_label => 'Awọn kalori ifoju (kcal)';

  @override
  String get health_workout_date_label => 'Ọjọ ati Aago';

  @override
  String get plan_daily_wellness_roadmap => 'Oju-ọna oju-ọna ti ara ẹni';

  @override
  String get plan_morning_routine => 'Ilana Owurọ';

  @override
  String get plan_afternoon_routine => 'Nini alafia ọsan';

  @override
  String get plan_evening_routine => 'Afẹfẹ aṣalẹ-isalẹ';

  @override
  String get plan_coach_badge => 'Bloomi AI ẹlẹsin';

  @override
  String get plan_weekly_overview => '7-ọjọ Nini alafia Idojukọ';

  @override
  String get plan_targets_title =>
      'Nini alafia Awọn ibi-afẹde & Awọn ibi-afẹde';

  @override
  String get plan_calorie_budget_label => 'Isuna Kalori ojoojumọ';

  @override
  String get plan_water_budget_label => 'Daily Water Àkọlé';

  @override
  String get plan_step_budget_label => 'Ifojusi Igbesẹ Ojoojumọ';

  @override
  String get plan_macro_split_label => 'Idiwọn Macronutrient';

  @override
  String get profile_personal_details => 'Awọn alaye ti ara ẹni';

  @override
  String get profile_body_stats => 'Awọn wiwọn ara';

  @override
  String get profile_app_preferences => 'Awọn ayanfẹ & Awọn Eto App';

  @override
  String get profile_edit_name_hint => 'Orukọ rẹ';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Giga ( $unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ìwọ̀n ( $unit)';
  }

  @override
  String get profile_edit_age_hint => 'Ọjọ ori';

  @override
  String get profile_gender_male => 'Okunrin';

  @override
  String get profile_gender_female => 'Obirin';

  @override
  String get profile_gender_other => 'Omiiran / Ṣe ayanfẹ lati ma sọ';

  @override
  String get profile_activity_sedentary => 'Sedentary (Kekere si ko si adaṣe)';

  @override
  String get profile_activity_light => 'Ṣiṣẹ Fẹẹrẹ (ọjọ 1-3 fun ọsẹ)';

  @override
  String get profile_activity_moderate => 'Niwọntunwọsi Ṣiṣẹ (ọjọ 3-5 fun ọsẹ)';

  @override
  String get profile_activity_very => 'Nṣiṣẹ pupọ (ọjọ 6-7 / ọsẹ)';

  @override
  String get settings_wear_os_header => 'Wọ OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Fi sori ẹrọ tile Bloomi ati ilolu lori iṣọ Wear OS rẹ lati wo awọn kalori, omi, ati awọn igbesẹ.';

  @override
  String get settings_widgets_header => 'Ohun ibanisọrọ Android ẹrọ ailorukọ';

  @override
  String get settings_widgets_desc =>
      'Pin awọn ẹrọ ailorukọ akoko gidi lori iboju ile ẹrọ rẹ fun awọn imudojuiwọn lẹsẹkẹsẹ.';

  @override
  String get settings_about_header => 'Nipa Bloomi';

  @override
  String get settings_about_version => 'Ẹya 1.0.0';

  @override
  String get settings_about_build => 'Kọ 100';

  @override
  String get settings_about_credits =>
      'Ti ṣe pẹlu abojuto fun iṣaro, igbesi aye ilera.';

  @override
  String get settings_terms_header => 'Awọn ofin ati ipo';

  @override
  String get settings_privacy_header => 'Asiri Afihan';

  @override
  String get settings_delete_header => 'Pa Account & Data';

  @override
  String get settings_delete_warning =>
      'Iṣe yii ko le ṣe atunṣe. Gbogbo ounjẹ rẹ, awọn adaṣe, awọn igbesi aye, ati profaili yoo paarẹ patapata.';

  @override
  String get settings_delete_confirm_btn => 'Paarẹ titilai';

  @override
  String get onboard_welcome_headline => 'Kaabo si Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Onírẹlẹ, titọpa alafia ti a ṣe apẹrẹ ni ayika igbesi aye rẹ.';

  @override
  String get onboard_step_about => 'Nipa Iwọ';

  @override
  String get onboard_step_goals => 'Awọn ibi-afẹde rẹ';

  @override
  String get onboard_step_lifestyle => 'Awọn iwa ojoojumọ';

  @override
  String get onboard_step_permissions => 'Awọn igbanilaaye';

  @override
  String get onboard_step_plan => 'Ṣetan!';

  @override
  String get onboard_health_connect_perm => 'Health So Access';

  @override
  String get onboard_step_sensors_perm => 'Sensọ counter Igbesẹ';

  @override
  String get onboard_notif_perm => 'Awọn olurannileti Okan & Awọn iwifunni';

  @override
  String get onboard_camera_perm => 'Kamẹra (Barcode & Scaner Food)';

  @override
  String get onboard_grant_permissions => 'Awọn igbanilaaye fifunni';

  @override
  String get onboard_continue_dashboard => 'Ṣii Dasibodu';

  @override
  String get notif_channel_hydration_name => 'Hydration nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Awọn olurannileti omi onirẹlẹ jakejado ọjọ naa';

  @override
  String get notif_channel_nutrition_name => 'Ounjẹ & Awọn olurannileti Ounjẹ';

  @override
  String get notif_channel_nutrition_desc =>
      'Ounjẹ owurọ, ounjẹ ọsan, ati awọn itaniji olurannileti ale';

  @override
  String get notif_channel_steps_name => 'Igbesẹ Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Awọn ayẹyẹ nigbati o ba de awọn ibi-afẹde igbesẹ ojoojumọ';

  @override
  String get notif_channel_vitals_name => 'Ilera & Awọn sọwedowo pataki';

  @override
  String get notif_channel_vitals_desc =>
      'Awọn olurannileti afẹfẹ-isalẹ iwuwo ati akoko ibusun';

  @override
  String get notif_action_log_water => '💧 Wọle +250ml';

  @override
  String get notif_action_snooze => 'Didun 15m';

  @override
  String get notif_action_log_meal => '🥗 Ounjẹ Wọle';

  @override
  String get language => 'Ede';

  @override
  String get share => 'Pin';

  @override
  String common_days(Object count) {
    return '_PH_0__ d seyin';
  }
}
