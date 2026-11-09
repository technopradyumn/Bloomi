// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Waray (`war`).
class AppLocalizationsWar extends AppLocalizations {
  AppLocalizationsWar([String locale = 'war']) : super(locale);

  @override
  String get app_name => 'Mabukad';

  @override
  String get nav_home => 'Panimalay';

  @override
  String get nav_today => 'Yana nga adlaw';

  @override
  String get nav_plan => 'Planoha';

  @override
  String get nav_food => 'Pagkaon .';

  @override
  String get nav_food_diary => 'Diary han Pagkaon';

  @override
  String get nav_workout => 'Log han Pag-ehersisyo';

  @override
  String get nav_health => 'Kahimsog';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Tipigi';

  @override
  String get cancel => 'Kansela';

  @override
  String get delete => 'Paraa';

  @override
  String get edit => 'Igliwat';

  @override
  String get done => 'Tapos';

  @override
  String get close => 'Sarado';

  @override
  String get back => 'Balik';

  @override
  String get next => 'Sunod';

  @override
  String get continue_btn => 'Padayon';

  @override
  String get confirm => 'Kumpirma';

  @override
  String get search => 'Pagbiling';

  @override
  String get filter => 'Pagsala';

  @override
  String get all => 'Tanan';

  @override
  String get active => 'Aktibo';

  @override
  String get today => 'Yana nga adlaw';

  @override
  String get yesterday => 'Kakulop';

  @override
  String get tomorrow => 'Buwas';

  @override
  String get add => 'Dugangi';

  @override
  String get remove => 'Kuhaa';

  @override
  String get refresh => 'Pagrepresko';

  @override
  String get retry => 'Sarihi utro';

  @override
  String get error => 'Sayop';

  @override
  String get success => 'Kalampusan .';

  @override
  String get loading => 'Pagkarga...';

  @override
  String get no_data => 'Waray datos nga makukuha';

  @override
  String get offline => 'Waray Linya nga Pamaagi';

  @override
  String get offline_sub =>
      'An mga pagbag-o mag-i-sync kon konektado na utro .';

  @override
  String get undo => 'Ibalik';

  @override
  String get portion => 'Bahin';

  @override
  String get quantity => 'Kadamo';

  @override
  String get unit => 'Yunit';

  @override
  String get clear => 'Klaro';

  @override
  String get select => 'Pilia an';

  @override
  String get apply => 'Pag-aplay';

  @override
  String get reset => 'I-set utro';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Oo';

  @override
  String get no => 'Diri';

  @override
  String get optional => 'Opsyonal';

  @override
  String get calories => 'Mga kaloriya';

  @override
  String get protein => 'Protina';

  @override
  String get carbs => 'Karb';

  @override
  String get fat => 'Tambok';

  @override
  String get fiber => 'Lanot';

  @override
  String get water => 'Tubig';

  @override
  String get steps => 'Mga pitad';

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
  String get inches => 'ha';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'oras';

  @override
  String get minutes => 'minutos';

  @override
  String get serving => 'Pagserbisyo .';

  @override
  String get servings => 'Mga Serbi';

  @override
  String get serving_size => 'Kadako han Pagserbi';

  @override
  String get per_100g => 'kada 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Butnga Sinirangan .';

  @override
  String get africa => 'Aprika';

  @override
  String get americas => 'Mga Amerika';

  @override
  String get home_title => 'Panimalay';

  @override
  String get home_greeting_morning => 'Maupay nga Aga';

  @override
  String get home_greeting_afternoon => 'Maupay nga Kulop';

  @override
  String get home_greeting_evening => 'Maupay nga Kulop';

  @override
  String get home_streak_title => 'Gulat han Bukad';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mga adlaw nga sunod-sunod',
      one: '1 ka adlaw nga sunod-sunod',
      zero: '0 ka adlaw nga sunod-sunod',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Nasunog';

  @override
  String get home_calories_budget => 'Badyet han Kaloriya';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal nga nahibilin';
  }

  @override
  String get home_water_title => 'Adlaw-adlaw nga Paghatag hin Tubig';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Mga Lakang nga Ginlakat';

  @override
  String get home_quick_actions => 'Madagmit nga mga Buhat';

  @override
  String get home_log_meal => 'Pagkaon ha Troso';

  @override
  String get home_log_water => 'Tubig nga Log';

  @override
  String get home_log_workout => 'Pag-ehersisyo';

  @override
  String get home_log_weight => 'Log nga Timbang';

  @override
  String get home_insights_title => 'Mga Pagsabot Yana nga Adlaw';

  @override
  String get home_quote =>
      'An gudtiay nga mahimsog nga mga pagpili naghimo hin namumukad nga mga pagbag-o.';

  @override
  String get home_ai_coach_tip => 'Magbansay hin Bloomi AI';

  @override
  String get home_surroundings => 'Palibot & Hangin';

  @override
  String get home_notifications => 'Mga pahibaro';

  @override
  String get home_daily_score => 'Adlaw-adlaw nga Iskor han Kahimsog';

  @override
  String get home_view_all => 'Kitaa an ngatanan';

  @override
  String get food_diary_title => 'Diary han Pagkaon';

  @override
  String get food_breakfast => 'Pamahaw .';

  @override
  String get food_lunch => 'Paniudto';

  @override
  String get food_dinner => 'Panihapon .';

  @override
  String get food_snacks => 'Mga meryenda';

  @override
  String get food_add_food => 'Dugangi hin Pagkaon';

  @override
  String get food_edit_food => 'Igliwat an Pagkaon';

  @override
  String get food_add_breakfast => 'Dugangi hin Pamahaw .';

  @override
  String get food_add_lunch => 'Dugangi hin Paniudto';

  @override
  String get food_add_dinner => 'Dugangi hin Panihapon';

  @override
  String get food_add_snack => 'Dugangi hin Meryenda';

  @override
  String get food_total_calories => 'Kabug-usan nga Kaloriya';

  @override
  String get food_empty_meal =>
      'Waray pa mga pagkaon nga na-log para hini nga pangaon';

  @override
  String get food_empty_diary => 'Waray pagkaon nga na-log para hini nga adlaw';

  @override
  String get food_log_first_meal =>
      'I-tap an + para ma-log an imo syahan nga marasa nga pagkaon .';

  @override
  String get food_quick_add => 'Madagmit nga Pagdugang';

  @override
  String get food_search_hint => 'Search mga putahe, mga prutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Pasadya nga Pagkaon & Resipe';

  @override
  String get food_scan_barcode => 'I-scan an Barcode';

  @override
  String get food_camera_scan => 'AI Pag-Iskan hin Pagkaon';

  @override
  String get food_recent => 'Mga Bag-o nga Pagkaon';

  @override
  String get food_favourites => 'Mga paborito';

  @override
  String get food_macro_summary => 'Pagbungkag han Makronutriyente';

  @override
  String get food_delete_meal_confirm =>
      'Sigurado ka ba nga karuyag mo kuhaon ini nga butang?';

  @override
  String get food_item_deleted => 'Ginkuha an pagkaon';

  @override
  String get food_remaining => 'nahibilin';

  @override
  String get food_consumed => 'naubos';

  @override
  String food_of_target(Object target) {
    return 'han $target kcal';
  }

  @override
  String get foodSearch_title => 'Pagbiling hin mga Pagkaon';

  @override
  String get foodSearch_scan_barcode => 'I-scan an Barcode';

  @override
  String get foodSearch_take_photo => 'Snap an Litrato han Pagkaon';

  @override
  String get foodSearch_custom_food => 'Paghimo hin Pasadya nga Pagkaon .';

  @override
  String get foodSearch_recent_searches => 'Mga Bag-o nga Pagbiling';

  @override
  String get foodSearch_popular => 'Mga Sikat nga Putahe';

  @override
  String get foodSearch_no_results =>
      'Waray pagkaon nga katugbang han imo ginbibiling';

  @override
  String get barcode_title => 'Barkod nga Iskanar';

  @override
  String get barcode_align =>
      'Paglinya han barcode ha sulod han bayanan han kamera .';

  @override
  String get barcode_not_found => 'Waray makita nga produkto ha database';

  @override
  String get barcode_premium_feature =>
      'An pag-scan han barcode in makukuha ha Bloomi Pro .';

  @override
  String get camera_title => 'AI Pag-Iskan hin Pagkaon';

  @override
  String get camera_tap_hint => 'Kuha hin klaro nga litrato han imo putahe .';

  @override
  String get camera_analysing => 'Pag-analisar hin plato hin pagkaon...';

  @override
  String get camera_detected => 'Mga nakit-an nga butang';

  @override
  String get camera_flash => 'Balhin-balhin an Kilat';

  @override
  String get camera_retake => 'Kuha utro an Litrato';

  @override
  String get camera_confirm_food => 'Kumpirma an mga Butang';

  @override
  String get customFood_title => 'Pasadya nga Pagkaon & Resipe';

  @override
  String get customFood_name_hint => 'Ngaran han putahe o sangkap .';

  @override
  String get customFood_calories_hint => 'Mga kaloriya (kcal)';

  @override
  String get customFood_protein_hint => 'Protina (g)';

  @override
  String get customFood_carbs_hint => 'Karb (g)';

  @override
  String get customFood_fat_hint => 'Tambok (g)';

  @override
  String get customFood_save => 'Tipigi an Resipe';

  @override
  String get water_tracker_title => 'Pagsubay han Tubig';

  @override
  String get water_daily_target =>
      'Tumong ha Adlaw-adlaw nga Paghatag hin Tubig';

  @override
  String get water_logged_today => 'Gin-log Yana nga Adlaw';

  @override
  String get water_add_glass => '+ 250 ml nga Biso .';

  @override
  String get water_add_bottle => '+500 ml Botelya';

  @override
  String get water_custom_amount => 'Pasadya nga kantidad';

  @override
  String get water_reminder_tip =>
      'Regular nga pag-inom hin tubig ha bug-os nga adlaw para hin marig-on nga kusog.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml nga tubig 💧 .';
  }

  @override
  String get workout_title => 'Log han Pag-ehersisyo';

  @override
  String get workout_add_exercise => 'Dugangi hin Pag-ehersisyo';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Kusog';

  @override
  String get workout_yoga => 'Yoga & Pagbag-o-bag-o';

  @override
  String get workout_duration => 'Kahilawig';

  @override
  String get workout_intensity => 'Kakusog';

  @override
  String get workout_calories_burned => 'Mga Kaloriya nga Nasunog';

  @override
  String get workout_empty => 'Waray mga ehersisyo nga na-log yana nga adlaw';

  @override
  String get workout_save_success => 'Pag-ehersisyo naluwas hin malampuson!';

  @override
  String get workout_type => 'Klase hin Pag-ehersisyo';

  @override
  String get workout_notes => 'Mga Tigamnan & Mga Pamalandong';

  @override
  String get health_overview_title => 'Panlawas & Importante';

  @override
  String get health_heart_rate => 'Kitik han Kasingkasing';

  @override
  String get health_blood_oxygen => 'Oksiheno sa dugo (spO2)';

  @override
  String get health_blood_pressure => 'Presyon han Dugo';

  @override
  String get health_blood_glucose => 'Sukala ha Dugo';

  @override
  String get health_body_temperature => 'Kainit han Lawas';

  @override
  String get health_sleep_tracking => 'Pagsubay han Pagkaturog';

  @override
  String get health_weight_tracking => 'Timbang & Pagkomponer han Lawas';

  @override
  String get health_waist_hip => 'Ratio han Hawak-ngadto ha Hawak';

  @override
  String get health_devices_hub => 'Mga Gamit & Sentro han Smartwatch';

  @override
  String get health_sync_now => 'Ig-sync an Datos han Panglawas';

  @override
  String health_last_synced(Object time) {
    return 'Kataposan nga gin-sync: $time';
  }

  @override
  String get health_manual_entry => 'Manwal nga Pagsulod ha Panglawas';

  @override
  String get health_metric_detail => 'Mga Detalye han Metrikal';

  @override
  String get health_connected_sensors =>
      'Konektado nga mga Sensor han Panglawas';

  @override
  String get plan_title => 'Adlaw-adlaw nga Plano';

  @override
  String get plan_weekly_title => 'Simana nga Plano han Kahimsog .';

  @override
  String get plan_calorie_target => 'Tumong han Kaloriya';

  @override
  String get plan_water_target => 'Tumong han Paghatag hin Tubig';

  @override
  String get plan_step_target => 'Lakang nga Puntirya';

  @override
  String get plan_sleep_target => 'Puntirya han Pagkaturog';

  @override
  String get plan_meal_suggestions => 'Mga Suhestyon ha Pagkaon';

  @override
  String get plan_healthy_habits => 'Mga Mahimsog nga Pamatasan & Tip';

  @override
  String get plan_coach_advice => 'Mga Rekomendasyon sa Magbansay sa Bloomi AI';

  @override
  String get plan_generated_title => 'Personal nga Adlaw-adlaw nga Iskedyol';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Igliwat an Profil';

  @override
  String get profile_name => 'Ngaran';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Kasarian';

  @override
  String get profile_height => 'Kahitaas';

  @override
  String get profile_weight => 'Timbang';

  @override
  String get profile_goal => 'Panguna nga Tumong';

  @override
  String get profile_activity_level => 'Lebel han Buruhaton';

  @override
  String get profile_stats => 'An akon mga Estadistika han Kahimsog';

  @override
  String get profile_saved => 'Malampuson nga ginbag-o an profile';

  @override
  String get profile_bmi => 'Index nga Masa han Lawas (BMI)';

  @override
  String get profile_membership => 'Pagin miyembro';

  @override
  String get settings => 'Mga kahimtang';

  @override
  String get preferences_habits => 'MGA KARURUYAG & MGA BATASAN';

  @override
  String get appearance_theme => 'Hitsura & Tema';

  @override
  String get appearance_theme_sub =>
      'Madulom, Kahayag, Mode han Sistema & Mga Kapilian ha Luyo han App';

  @override
  String get permissions => 'Mga Pagtugot & Pag-agi han Sistema';

  @override
  String get permissions_sub =>
      'Pagsumpay han Panglawas, Mga Sensor han Lakang, GPS, Mga Pahibaro & Kamera';

  @override
  String get reminders_notifications => 'Mga Pahinumdom & Mga Pahibaro';

  @override
  String get reminders_sub =>
      'Mga oras han pangaon, tubig, pag-check-in han timbang & mga pahinumdom ha oras han katurog';

  @override
  String get units_of_measurement => 'Mga Yunit han Pagsukol .';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) o Imperial (lbs, ft / in, fl oz)';

  @override
  String get app_language => 'Pinulongan han App';

  @override
  String get language_sub =>
      'Iningles, हिन्दी (Hindi), Hinglish & 195+ nga mga pinulongan ha bug-os nga kalibutan';

  @override
  String get home_screen_widgets => 'Mga Widget ha Panimalay';

  @override
  String get widgets_sub =>
      'Buhi nga mga widget sa Android: Hub, Mga Lakang, Tubig, Nutrisyon & Mascot';

  @override
  String get wear_os_watch_app => 'Isul-ot an OS Pagbantay App .';

  @override
  String get wear_os_sub =>
      'Mga kaupod nga smartwatch, mga baldosa, mga komplikasyon & buhi nga mga importante';

  @override
  String get goals_wellness => 'MGA TUMUYO & MGA SANTAW HA KAUPAYAN';

  @override
  String get nutrition_targets => 'Mga Tumong sa Nutrisyon & Pagbahin sa Makro';

  @override
  String get nutrition_targets_sub =>
      'Tumong sa kaloriya, protina, carbs, tambok & tumong sa tubig';

  @override
  String get weekly_recap => 'Simana nga Recap han Kahimsog';

  @override
  String get weekly_recap_sub =>
      '7-adlaw nga aberids nga kaloriya, makro nga ratio & pinakamaayo nga adlaw';

  @override
  String get streaks_milestones => 'Mga Gubay & Mga Tuna';

  @override
  String get streaks_sub =>
      'Aktibo nga mga guhit han bukad, mga badge & mga kalamposan';

  @override
  String get connected_devices => 'KONEKTADO NGA MGA GAMAT & EKOSISTEM';

  @override
  String get devices_hub => 'Mga Gamit & Sentro han Smartwatch';

  @override
  String get devices_hub_sub =>
      'Pagsumpay sa Panglawas, Pagbantay sa Galaxy, Pagbantay sa Pixel, Garmin';

  @override
  String get surroundings_weather => 'Palibot & Panahon';

  @override
  String get surroundings_sub =>
      'Kalidad sa hangin (AQI), UV index & mga sagdon sa panahon';

  @override
  String get bloomi_pro => 'Suskrisyon sa Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 nga mga widget sa panimalay & pagsubay sa mga importante';

  @override
  String get about_security => 'MAHITUNGOD & SEGURIDAD';

  @override
  String get about_bloomi => 'Mahitungod han Bloomi';

  @override
  String get about_bloomi_sub =>
      'Pagtukod mga detalye, bersyon, mga atribusyon';

  @override
  String get privacy_policy => 'Patakaran ha Pagkapribado';

  @override
  String get privacy_policy_sub =>
      'Offline-una, ha-apato nga arkitektura han datos';

  @override
  String get terms_conditions => 'Mga Kondisyon & Kondisyon';

  @override
  String get terms_conditions_sub =>
      'Mga kondisyon han serbisyo ngan mga giya ha kahimsog .';

  @override
  String get delete_account => 'Paraa an Kuwenta & Datos';

  @override
  String get delete_account_sub =>
      'Diri mababalik nga pagpara han lokal nga datos han SQLite ngan mga backup han dampog .';

  @override
  String get healthy_habits =>
      'Paghimo hin malumo, nagpapadayon nga mga batasan ha kahimsog .';

  @override
  String get all_logs => 'An akon Ginsubaybayan nga Datos & mga Log';

  @override
  String get search_language =>
      'Pagbiling pinaagi han yinaknan o tuminongnong nga iskrip...';

  @override
  String get languages_available => 'Mga Pinulongan nga Makukuha';

  @override
  String get no_matching_languages =>
      'Waray mga katugbang nga yinaknan nga nabilngan';

  @override
  String get try_searching =>
      'Sarihi pamiling pinaagi han tuminongnong nga iskrip o Ingles nga ispeling .';

  @override
  String get partially_translated => 'Bahin nga iginhubad .';

  @override
  String get complete_translation => 'Kumpleto';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Pinulongan nga ginbutang ha $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Palibot & Kalibungan';

  @override
  String get surroundings_aqi => 'Indeks han Kalidad han Hangin';

  @override
  String get surroundings_uv => 'Indeks han UV';

  @override
  String get surroundings_temp => 'Kainit';

  @override
  String get surroundings_humidity => 'Kahagkot';

  @override
  String get surroundings_hydration_advice =>
      'Magpabilin nga maupay an tubig ha yana nga kondisyon han panahon.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Pagbiling hin Pagkaon';

  @override
  String get food_quick_barcode => 'I-scan an Barcode 👑';

  @override
  String get food_quick_water => 'Dugangi hin Tubig';

  @override
  String get food_quick_custom => 'Pasadya nga Pagkaon';

  @override
  String get surroundings_good => 'Maupay';

  @override
  String get surroundings_moderate => 'Kasarangan';

  @override
  String get surroundings_unhealthy => 'Diri mahimsog';

  @override
  String get notifications_title => 'Mga Pahibaro & Mga Pahimatngon';

  @override
  String get notifications_empty => 'Waray bag-o nga pahibaro';

  @override
  String get notifications_mark_read =>
      'Markahi an Ngatanan sugad nga Ginbasa .';

  @override
  String get notifications_clear => 'Limpyohi an ngatanan';

  @override
  String get reminders => 'Mga Setting han Pahinumdom';

  @override
  String get notifications => 'Mga pahibaro';

  @override
  String get reminders_breakfast_title => 'Pahinumdom han Pamahaw 🍳 .';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Maupay nga aga! Oras para hin masustansya nga pamahaw ha $time .';
  }

  @override
  String get reminders_lunch_title => 'Pahinumdom ha Paniudto 🥗 .';

  @override
  String reminders_lunch_body(Object time) {
    return 'Hunong ngan magpahimulos hin balanse, may hunahuna nga paniudto ha $time .';
  }

  @override
  String get reminders_dinner_title => 'Pahinumdom han Panihapon 🍲 .';

  @override
  String reminders_dinner_body(Object time) {
    return 'Oras para hin magaan, makatagbaw nga panihapon ha $time .';
  }

  @override
  String get reminders_water_title => 'Pagduso han Pag-awas 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Panahon na nga uminom hin presko nga baso nga tubig! ($time)';
  }

  @override
  String get reminders_weight_title => 'Simana nga Pagtimbang ⚖️ .';

  @override
  String reminders_weight_body(Object time) {
    return 'Sunda an imo sinemana nga mga sukol han lawas ha Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Oras han Pagkaturog Hangin-paubos 🌙 .';

  @override
  String reminders_sleep_body(Object time) {
    return 'Paghuway ngan pag-andam para hin makapahuway nga pagkaturog ( $time ).';
  }

  @override
  String get onboard_welcome => 'Maupay nga adlaw ha Bloomi';

  @override
  String get onboard_sub =>
      'An imo makisangkayon, offline-una nga kaupod ha panlawas ngan sustansya.';

  @override
  String get onboard_get_started => 'Tikangi';

  @override
  String get onboard_sign_in => 'Pagsulod';

  @override
  String get onboard_skip => 'Laktaw';

  @override
  String get onboard_choose_goal =>
      'Ano an imo nangunguna nga tumong ha kahimsog?';

  @override
  String get onboard_goal_weight_loss => 'Malumo nga Pag-ubos han Timbang .';

  @override
  String get onboard_goal_muscle => 'Pag-angkon han Kaunoran & Kusog';

  @override
  String get onboard_goal_energy => 'Adlaw-adlaw nga Enerhiya & Kakusog';

  @override
  String get onboard_goal_habits => 'Mahimsog nga Pagkaon nga May Hunahuna .';

  @override
  String get onboard_about_you =>
      'Sumati Kami Mahitungod han Imo Kalugaringon .';

  @override
  String get onboard_lifestyle => 'An Imo Adlaw-adlaw nga Rutina .';

  @override
  String get onboard_permissions_title => 'Mga Pagtugot & Pag-agi han Sistema';

  @override
  String get onboard_permissions_sub =>
      'Ihatag an pag-access ha mga pitad han pag-sync, mga pag-ehersisyo, ngan mga pahinumdom.';

  @override
  String get onboard_plan_ready_title => 'Andam na an iyo Pasadya nga Plano!';

  @override
  String get onboard_plan_ready_sub =>
      'Naghimo kami hin malumo, personal nga mapa han nutrisyon ngan kahimsog para la ha iyo.';

  @override
  String get onboard_enter_bloomi => 'Pagsulod ha Bloomi';

  @override
  String get insights_weekly_report => 'Simana nga Recap han Kahimsog';

  @override
  String insights_best_day(Object day) {
    return 'Pinakamaupay nga Adlaw han Pagkamanunayon: $day';
  }

  @override
  String get insights_streaks_badges => 'Mga Gubay & Mga Tuna';

  @override
  String insights_unlocked_on(Object date) {
    return 'Gin-abrihan ha $date';
  }

  @override
  String get insights_keep_going => 'Padayon ha urusahon nga pag-uswag!';

  @override
  String get widgets_title => 'Mga Widget ha Panimalay';

  @override
  String widgets_active_count(Object count) {
    return 'Mga aktibo nga Widget: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi nga Kahimsog nga Sentro';

  @override
  String get widgets_steps_title => 'Mga Lakang & Aktibo nga Singsing';

  @override
  String get widgets_water_title => 'Pag-ubos hin tubig nga madagmit nga Log';

  @override
  String get widgets_mascot_title => 'Kaupod nga Maskot han Bloomi';

  @override
  String get wear_os_title => 'Pagsul-ot hin OS nga Smartno nga Relo';

  @override
  String get wear_os_connected => 'Konektado ha Pagbantay .';

  @override
  String get wear_os_sync => 'Pag-sync hin Datos han Pagbantay';

  @override
  String get theme_title => 'Hitsura & Tema';

  @override
  String get theme_mode => 'Mode han Tema';

  @override
  String get theme_light => 'Kahayag';

  @override
  String get theme_dark => 'Madulom';

  @override
  String get theme_system => 'Sistema nga Kasagaran';

  @override
  String get theme_background_palette => 'Paleta han Luyo';

  @override
  String get units_title => 'Mga Yunit han Pagsukol .';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperyal (lbs, sa, fl oz)';

  @override
  String get home_unable_load => 'Diri nakakarga hin dashboard';

  @override
  String get home_health_permission_req =>
      'Kinahanglan an Pagtugot han Pagsumpay han Panglawas';

  @override
  String get home_health_permission_desc =>
      'Nagkikinahanglan hi Bloomi hin pagtugot han Health Connect ha pagkuha hin tinuod nga mga pitad, kadagmitan han kasingkasing, ngan pag-sync han mga widget han mobile nga balay ha tinuod nga panahon.';

  @override
  String get home_allow_health => 'Tuguti an Pagsumpay han Panlawas .';

  @override
  String get home_ready_mindful_day =>
      'Andam para hin adlaw nga may hunahuna? ✨';

  @override
  String get home_quick_add => 'Madagmit nga Pagdugang';

  @override
  String get home_live_gps => 'Buhi nga GPS';

  @override
  String get home_calories_remaining_label => 'MGA KALORIYA NGA NAHIBILIN';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ginkaon: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Gripo para han Pagsubay han Tubig 💧 .';

  @override
  String get home_water_goal_reached => 'Naabot an adlaw-adlaw nga tumong 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml sa adlaw-adlaw nga tumong';
  }

  @override
  String get home_details => 'Mga detalye';

  @override
  String get home_upgrade_plan_desc =>
      'Pag-uswag para ma-abrihan an personal nga mga target ha adlaw-adlaw ngan plano han AI';

  @override
  String get home_unlock => 'Pag-abri 👑 .';

  @override
  String get home_quick_log_hint =>
      'Madagmit nga magrekord hin pagsulod ha kahimsog .';

  @override
  String get food_serving_size => 'Kadako han Pagserbi';

  @override
  String get food_serving_grams => 'Pagserbisyo (g)';

  @override
  String get food_number_servings => 'Ihap han Pagserbi';

  @override
  String get food_calories_per_serving => 'Mga kaloriya kada pagserbi .';

  @override
  String get food_recipe_ingredients => 'Mga sangkap';

  @override
  String get food_recipe_add_ingredient => 'Dugangi hin Sangkap';

  @override
  String get food_recipe_directions => 'Mga Direksyon & Mga Tigamnan';

  @override
  String get food_recipe_total => 'Kabug-usan nga Resipe nga Sustansya .';

  @override
  String get food_recipe_per_serving => 'Kada Pagserbi nga Nutrisyon .';

  @override
  String get food_recipe_saved_toast =>
      'Malampuson nga natipigan an pasadya nga pagkaon!';

  @override
  String get food_barcode_found => 'Nakit-an nga Produkto!';

  @override
  String get food_barcode_not_found_desc =>
      'Waray namon mabilngi ini nga barcode ha abrido nga database. Pwede niyo ini igdugang komo kostumbre nga pagkaon.';

  @override
  String get food_add_custom_btn => 'Dugangi hin Pasadya nga Pagkaon';

  @override
  String get food_scan_again => 'I-scan Utro';

  @override
  String get food_review_items => 'Repasuha an Nakit-an nga mga Pagkaon .';

  @override
  String get food_review_hint =>
      'Ipahiuyon an kadamu o kuhaa an bisan ano nga diri kinikilala nga butang .';

  @override
  String get food_log_selected => 'Log Mga Pinili nga Pagkaon .';

  @override
  String get food_favourites_title => 'Mga Paborito nga Pagkaon';

  @override
  String get food_recent_title => 'Mga Bag-o nga Pagkaon';

  @override
  String get food_no_favourites =>
      'Waray pa paborito nga pagkaon. Tap an kasingkasing ha bisan ano nga pagkaon para makatipid dinhi.';

  @override
  String get food_no_recents =>
      'Waray mga bag-o la nga gin-log nga pagkaon nga nakit-an.';

  @override
  String get food_nutrition_details_title =>
      'Mga Detalye han Sustansya ha Adlaw-adlaw';

  @override
  String get food_macro_protein_label => 'Pagbungkag han Protina';

  @override
  String get food_macro_carbs_label => 'Pagbungkag han Carbs';

  @override
  String get food_macro_fat_label => 'Pagbungkag han Tambok .';

  @override
  String get food_macro_fiber_label => 'Pagbungkag han Lanot';

  @override
  String get food_daily_target_comparison => 'Pagtanding han Tuntirya';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'Igliwat an Pagsulod ha Diary';

  @override
  String get food_delete_entry => 'Paraa an Pagsulod';

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
    return '$current han $target ml';
  }

  @override
  String get water_intake_history => 'Mga Log han Tubig Yana';

  @override
  String get water_no_logs_today =>
      'Waray pa tubig nga na-log yana nga adlaw. Pag-hydrate ngan i-tap an madagmit nga pagdugang nga buton!';

  @override
  String get water_adjust_goal => 'Ipahiuyon an Adlaw-adlaw nga Tumong .';

  @override
  String get health_connect_banner => 'Konektado ha Panlawas Konektado .';

  @override
  String get health_vitals_summary => 'Adlaw-adlaw nga Importante ha Panlawas';

  @override
  String get health_latest_heart_rate =>
      'Pinakabag-o nga Kitik han Kasingkasing';

  @override
  String get health_latest_bp => 'Presyon han Dugo';

  @override
  String get health_latest_spo2 => 'Oksiheno ha Dugo';

  @override
  String get health_latest_glucose => 'Sukala ha Dugo';

  @override
  String get health_latest_weight => 'Timbang';

  @override
  String get health_latest_sleep => 'Kahilawig han Pagkaturog';

  @override
  String get health_add_manual => 'Dugangi an Manwal nga Pagsukol .';

  @override
  String get health_history_trends => 'Mga Uso ha Kasaysayan';

  @override
  String get health_sync_success =>
      'Malampuson nga gin-sync an datos han panlawas!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours oras $mins minutos';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
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
    return 'mg/dL';
  }

  @override
  String get health_devices_title => 'Mga konektado nga Gamit & Mga Sul-ot';

  @override
  String get health_devices_desc =>
      'Pagdumara hin ginpadis nga mga smartwatch, mga parasubay han kahimsog, ngan mga sensor han panlawas.';

  @override
  String get health_workout_editor_title => 'I-edit an Pag-ehersisyo';

  @override
  String get health_workout_name_label => 'Ngaran han Pag-ehersisyo';

  @override
  String get health_workout_duration_label => 'Dugay (mga minuto)';

  @override
  String get health_workout_calories_label =>
      'Ginbanabana nga mga kaloriya (kcal)';

  @override
  String get health_workout_date_label => 'Petsa ngan Oras';

  @override
  String get plan_daily_wellness_roadmap =>
      'An Imo Personal nga Mapa han Dalan';

  @override
  String get plan_morning_routine => 'Rutina ha Aga';

  @override
  String get plan_afternoon_routine => 'Kaupayan ha Kaudtuhon';

  @override
  String get plan_evening_routine => 'Pag-ubos han Hangin ha Kulop';

  @override
  String get plan_coach_badge => 'Magbansay hin Bloomi AI';

  @override
  String get plan_weekly_overview => '7-Adlaw nga Pagpokus ha Kahimsog';

  @override
  String get plan_targets_title => 'Mga Tumong & Tumong sa Kahimsog';

  @override
  String get plan_calorie_budget_label => 'Adlaw-adlaw nga Kaloriya nga Badyet';

  @override
  String get plan_water_budget_label => 'Target han Tubig ha Adlaw-adlaw .';

  @override
  String get plan_step_budget_label => 'Tumong ha Adlaw-adlaw nga Lakang';

  @override
  String get plan_macro_split_label => 'Ratio han Makronutriente';

  @override
  String get profile_personal_details => 'Personal nga mga Detalye';

  @override
  String get profile_body_stats => 'Mga Sukol han Lawas';

  @override
  String get profile_app_preferences =>
      'Mga Kagustuhan & Mga Pag-andam han App';

  @override
  String get profile_edit_name_hint => 'An imo ngaran .';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Kahitaas (_PH_0__)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Timbang (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Edad';

  @override
  String get profile_gender_male => 'Lalaki';

  @override
  String get profile_gender_female => 'Babaye';

  @override
  String get profile_gender_other => 'Iba / Mas karuyag nga diri magsiring .';

  @override
  String get profile_activity_sedentary =>
      'Paglingkod (Gutiay la o waray ehersisyo)';

  @override
  String get profile_activity_light =>
      'Magaan nga Aktibo (1-3 ka adlaw / semana)';

  @override
  String get profile_activity_moderate =>
      'Kasarangan nga Aktibo (3-5 ka adlaw / semana)';

  @override
  String get profile_activity_very => 'Aktibo kaayo (6-7 ka adlaw/semana)';

  @override
  String get settings_wear_os_header => 'Isul-ot an OS Kaupod nga App .';

  @override
  String get settings_wear_os_desc =>
      'Ibutang an tile nga Bloomi ngan komplikasyon ha imo relo han Wear OS basi makasiplat ha mga kaloriya, tubig, ngan mga pitad.';

  @override
  String get settings_widgets_header => 'Mga interaktibo nga Android';

  @override
  String get settings_widgets_desc =>
      'I-pin an tinuod nga oras nga mga widget ha iskrin han imo aparato para hin mga bag-o dayon.';

  @override
  String get settings_about_header => 'Mahitungod han Bloomi';

  @override
  String get settings_about_version => 'Bersyon 1.0.0';

  @override
  String get settings_about_build => 'Pagtukod 100';

  @override
  String get settings_about_credits =>
      'Ginhimo nga may pag-ataman para hin mahunahunaon, mahimsog nga pagkinabuhi.';

  @override
  String get settings_terms_header => 'Mga Kondisyon ngan Kondisyon';

  @override
  String get settings_privacy_header => 'Patakaran ha Pagkapribado';

  @override
  String get settings_delete_header => 'Paraa an Kuwenta & Datos';

  @override
  String get settings_delete_warning =>
      'Ini nga aksyon diri mababawi. An ngatanan mo nga pagkaon, pag-ehersisyo, mga importante nga butang, ngan profile permanente nga papason.';

  @override
  String get settings_delete_confirm_btn => 'Permanente nga Paraa .';

  @override
  String get onboard_welcome_headline => 'Maupay nga adlaw ha Bloomi ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'Malumo, mahunahunaon nga pagsubay han kahimsog nga gindisenyo ha palibot han imo kinabuhi.';

  @override
  String get onboard_step_about => 'Mahitungod ha Imo';

  @override
  String get onboard_step_goals => 'An Imo mga Tumong .';

  @override
  String get onboard_step_lifestyle => 'Mga Pamatasan ha Adlaw-adlaw .';

  @override
  String get onboard_step_permissions => 'Mga pagtugot';

  @override
  String get onboard_step_plan => 'Andam na!';

  @override
  String get onboard_health_connect_perm =>
      'Pag-access han Pagsumpay han Panlawas';

  @override
  String get onboard_step_sensors_perm => 'Sensor han Pag-ihap han Lakang';

  @override
  String get onboard_notif_perm => 'Mga Pahinumdom & Pahibaro nga Mahunahunaon';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Pag-iskan hin Pagkaon)';

  @override
  String get onboard_grant_permissions => 'Ihatag an mga Pagtugot';

  @override
  String get onboard_continue_dashboard => 'Abrihi nga Dashboard';

  @override
  String get notif_channel_hydration_name =>
      'Mga Pagduso han Paghatag hin Tubig';

  @override
  String get notif_channel_hydration_desc =>
      'Malumo nga mga pahinumdom han tubig ha bug-os nga adlaw .';

  @override
  String get notif_channel_nutrition_name =>
      'Mga Pahinumdom han Pagkaon & Nutrisyon';

  @override
  String get notif_channel_nutrition_desc =>
      'Alerto hin pahinumdom ha pamahaw, paniudto, ngan panihapon';

  @override
  String get notif_channel_steps_name => 'Mga Lakang nga Tuna';

  @override
  String get notif_channel_steps_desc =>
      'Mga selebrasyon kun nakakab-ot an adlaw-adlaw nga mga target han pitad .';

  @override
  String get notif_channel_vitals_name =>
      'Mga Pag-usisa han Panlawas & Importante';

  @override
  String get notif_channel_vitals_desc =>
      'Mga pahinumdom han timbang ngan oras han katurog';

  @override
  String get notif_action_log_water => '💧 Troso +250ml';

  @override
  String get notif_action_snooze => 'Pag-ukoy 15m';

  @override
  String get notif_action_log_meal => '🥗 Pagkaon hin Troso';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
