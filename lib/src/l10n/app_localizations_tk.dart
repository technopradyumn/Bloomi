// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkmen (`tk`).
class AppLocalizationsTk extends AppLocalizations {
  AppLocalizationsTk([String locale = 'tk']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Öý';

  @override
  String get nav_today => 'Bu gün';

  @override
  String get nav_plan => 'Meýilnama';

  @override
  String get nav_food => 'Iýmit';

  @override
  String get nav_food_diary => 'Iýmit gündeligi';

  @override
  String get nav_workout => 'Türgenleşik gündeligi';

  @override
  String get nav_health => 'Saglyk';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Saklaň';

  @override
  String get cancel => 'Elatyr';

  @override
  String get delete => 'Öçür';

  @override
  String get edit => 'Redaktirläň';

  @override
  String get done => 'Boldy';

  @override
  String get close => '.Akyn';

  @override
  String get back => 'Yzyna';

  @override
  String get next => 'Indiki';

  @override
  String get continue_btn => 'Dowam et';

  @override
  String get confirm => 'Tassykla';

  @override
  String get search => 'Gözlemek';

  @override
  String get filter => 'Süzgüç';

  @override
  String get all => 'Hemmesi';

  @override
  String get active => 'Işjeň';

  @override
  String get today => 'Bu gün';

  @override
  String get yesterday => 'Düýn';

  @override
  String get tomorrow => 'Ertir';

  @override
  String get add => 'Goş';

  @override
  String get remove => 'Aýyr';

  @override
  String get refresh => 'Täzele';

  @override
  String get retry => 'Gaýtadan synanyşyň';

  @override
  String get error => 'Roralňyşlyk';

  @override
  String get success => 'Üstünlik';

  @override
  String get loading => 'Adingüklenýär ...';

  @override
  String get no_data => 'Maglumat ýok';

  @override
  String get offline => 'Oflayn tertip';

  @override
  String get offline_sub =>
      'Üýtgeşmeler täzeden birikdirilenden soň sinhronlanar';

  @override
  String get undo => 'Yza gaýtar';

  @override
  String get portion => 'Bölüm';

  @override
  String get quantity => 'Mukdar';

  @override
  String get unit => 'Bölüm';

  @override
  String get clear => 'Arassala';

  @override
  String get select => 'Saýlaň';

  @override
  String get apply => 'Giriş';

  @override
  String get reset => 'Täzeden düzmek';

  @override
  String get ok => 'Bolýar';

  @override
  String get yes => 'Hawa';

  @override
  String get no => '.Ok';

  @override
  String get optional => 'Meýletin';

  @override
  String get calories => 'Kaloriýa';

  @override
  String get protein => 'Belok';

  @override
  String get carbs => 'Karbs';

  @override
  String get fat => 'Fatag';

  @override
  String get fiber => 'Süýüm';

  @override
  String get water => 'Suw';

  @override
  String get steps => 'Dimler';

  @override
  String get kcal => 'kkal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'l';

  @override
  String get centimeters => 'sm';

  @override
  String get inches => 'içinde';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'sag';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Hyzmat etmek';

  @override
  String get servings => 'Hyzmatlar';

  @override
  String get serving_size => 'Hyzmat ölçegi';

  @override
  String get per_100g => '100 gr';

  @override
  String get india => 'Hindistan';

  @override
  String get asia => 'Aziýa';

  @override
  String get europe => 'Europeewropa';

  @override
  String get middle_east => 'Eastakyn Gündogar';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Öý';

  @override
  String get home_greeting_morning => 'Ertiriňiz haýyrly bolsun!';

  @override
  String get home_greeting_afternoon => 'Günüň haýyrly bolsun!';

  @override
  String get home_greeting_evening => 'Agşamyňyz haýyrly';

  @override
  String get home_streak_title => 'Gül köçesi';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count günlük hatar',
      one: '1 günlük setir',
      zero: '0 günlük setir',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Burnedakyldy';

  @override
  String get home_calories_budget => 'Kaloriýa býudjeti';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kkal galdy';
  }

  @override
  String get home_water_title => 'Gündelik gidrasiýa';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Dimler';

  @override
  String get home_quick_actions => 'Çalt hereketler';

  @override
  String get home_log_meal => 'Nahar iýmek';

  @override
  String get home_log_water => 'Logurnal suwy';

  @override
  String get home_log_workout => 'Gündelik maşk';

  @override
  String get home_log_weight => 'Agramy hasaba alyň';

  @override
  String get home_insights_title => 'Şu günki düşünjeler';

  @override
  String get home_quote =>
      'Kiçijik sagdyn saýlawlar gülläp ösýän özgerişleri döredýär.';

  @override
  String get home_ai_coach_tip => '“Bloomi AI” tälimçisi';

  @override
  String get home_surroundings => 'Daş-töwerek we howa';

  @override
  String get home_notifications => 'Duýduryşlar';

  @override
  String get home_daily_score => 'Gündelik saglyk baly';

  @override
  String get home_view_all => 'Hemmesini görmek';

  @override
  String get food_diary_title => 'Iýmit gündeligi';

  @override
  String get food_breakfast => 'Ertirlik';

  @override
  String get food_lunch => 'Nahar';

  @override
  String get food_dinner => 'Agşamlyk';

  @override
  String get food_snacks => 'Iýmit önümleri';

  @override
  String get food_add_food => 'Iýmit goşuň';

  @override
  String get food_edit_food => 'Iýmit redaktirläň';

  @override
  String get food_add_breakfast => 'Ertirlik naharyny goşuň';

  @override
  String get food_add_lunch => 'Nahar goşuň';

  @override
  String get food_add_dinner => 'Agşamlyk goşuň';

  @override
  String get food_add_snack => 'Iýmit goşuň';

  @override
  String get food_total_calories => 'Jemi kaloriýa';

  @override
  String get food_empty_meal => 'Bu nahar üçin entek iýmit ýok';

  @override
  String get food_empty_diary => 'Bu gün nahar ýok';

  @override
  String get food_log_first_meal =>
      'Ilkinji lezzetli naharyňyzy ýazmak üçin + basyň';

  @override
  String get food_quick_add => 'Çalt goş';

  @override
  String get food_search_hint => 'Naharlary, miweleri, dal, roti gözläň ...';

  @override
  String get food_custom_recipe => 'Foodörite iýmit we resept';

  @override
  String get food_scan_barcode => 'Ştrih-kody skanirläň';

  @override
  String get food_camera_scan => 'AI iýmit skaneri';

  @override
  String get food_recent => 'Soňky iýmitler';

  @override
  String get food_favourites => 'Halanýanlar';

  @override
  String get food_macro_summary => 'Makronutrientiň bölünişi';

  @override
  String get food_delete_meal_confirm =>
      'Bu elementi aýyrmak isleýändigiňize ynanýarsyňyzmy?';

  @override
  String get food_item_deleted => 'Iýmit önümi aýryldy';

  @override
  String get food_remaining => 'galan';

  @override
  String get food_consumed => 'sarp edildi';

  @override
  String food_of_target(Object target) {
    return '$target kkal';
  }

  @override
  String get foodSearch_title => 'Iýmit gözläň';

  @override
  String get foodSearch_scan_barcode => 'Ştrih-kody skanirläň';

  @override
  String get foodSearch_take_photo => 'Iýmit suraty';

  @override
  String get foodSearch_custom_food => 'Omörite iýmit dörediň';

  @override
  String get foodSearch_recent_searches => 'Soňky gözlegler';

  @override
  String get foodSearch_popular => 'Meşhur tagamlar';

  @override
  String get foodSearch_no_results => 'Gözlegiňize laýyk iýmit ýok';

  @override
  String get barcode_title => 'Ştrih-kod skaneri';

  @override
  String get barcode_align =>
      'Ştrih koduny kamera çarçuwasynyň içinde deňleşdiriň';

  @override
  String get barcode_not_found => 'Maglumat bazasynda ýok';

  @override
  String get barcode_premium_feature =>
      'Ştrih-kod skaneri Bloomi Pro bilen elýeterlidir';

  @override
  String get camera_title => 'AI iýmit skaneri';

  @override
  String get camera_tap_hint => 'Tabagyňyzy anyk surata alyň';

  @override
  String get camera_analysing => 'Iýmit tabagyny seljermek ...';

  @override
  String get camera_detected => 'Tapylan zatlar';

  @override
  String get camera_flash => 'Fleşkany açyň';

  @override
  String get camera_retake => 'Surata al';

  @override
  String get camera_confirm_food => 'Harytlary tassyklaň';

  @override
  String get customFood_title => 'Foodörite iýmit we resept';

  @override
  String get customFood_name_hint => 'Nahar ýa-da düzümiň ady';

  @override
  String get customFood_calories_hint => 'Kaloriýa (kkal)';

  @override
  String get customFood_protein_hint => 'Belok (g)';

  @override
  String get customFood_carbs_hint => 'Karblar (g)';

  @override
  String get customFood_fat_hint => '(Ag (g)';

  @override
  String get customFood_save => 'Reseptini ýazdyryň';

  @override
  String get water_tracker_title => 'Suw yzarlaýjy';

  @override
  String get water_daily_target => 'Gündelik gidrasiýa maksady';

  @override
  String get water_logged_today => 'Şu gün hasaba alyndy';

  @override
  String get water_add_glass => '+250 ml Aýna';

  @override
  String get water_add_bottle => '+500 ml çüýşe';

  @override
  String get water_custom_amount => 'Omörite mukdar';

  @override
  String get water_reminder_tip =>
      'Dowamly energiýa üçin günüň dowamynda yzygiderli suw içiň.';

  @override
  String water_logged_toast(Object amount) {
    return 'Hasaba alnan $amount ml suw 💧';
  }

  @override
  String get workout_title => 'Türgenleşik gündeligi';

  @override
  String get workout_add_exercise => 'Türgenleşik goşuň';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Güýç';

  @override
  String get workout_yoga => 'Ogaoga we çeýeligi';

  @override
  String get workout_duration => 'Dowamlylygy';

  @override
  String get workout_intensity => 'Dykyzlyk';

  @override
  String get workout_calories_burned => 'Kaloriýa ýakyldy';

  @override
  String get workout_empty => 'Bu gün hiç hili türgenleşik ýazylmady';

  @override
  String get workout_save_success => 'Türgenleşik üstünlikli saklandy!';

  @override
  String get workout_type => 'Okuw görnüşi';

  @override
  String get workout_notes => 'Bellikler we oýlanmalar';

  @override
  String get health_overview_title => 'Saglyk we möhüm ýerler';

  @override
  String get health_heart_rate => 'Heartürek urşy';

  @override
  String get health_blood_oxygen => 'Gan kislorody (SpO2)';

  @override
  String get health_blood_pressure => 'Gan basyşy';

  @override
  String get health_blood_glucose => 'Gan glýukozasy';

  @override
  String get health_body_temperature => 'Bedeniň temperaturasy';

  @override
  String get health_sleep_tracking => 'Uky yzarlamak';

  @override
  String get health_weight_tracking => 'Agram we beden düzümi';

  @override
  String get health_waist_hip => 'Belden-bagryň gatnaşygy';

  @override
  String get health_devices_hub => 'Enjamlar we Smartwatch merkezi';

  @override
  String get health_sync_now => 'Saglyk maglumatlary sinhronlaň';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Iň soňky sinhronlanan: $time';
  }

  @override
  String get health_manual_entry => 'El bilen saglyk girişi';

  @override
  String get health_metric_detail => 'Metrik maglumatlar';

  @override
  String get health_connected_sensors => 'Birikdirilen saglyk datçikleri';

  @override
  String get plan_title => 'Gündelik meýilnama';

  @override
  String get plan_weekly_title => 'Hepdelik saglyk meýilnamasy';

  @override
  String get plan_calorie_target => 'Kaloriýa nyşany';

  @override
  String get plan_water_target => 'Gidratasiýa nyşany';

  @override
  String get plan_step_target => 'Stepdim nyşany';

  @override
  String get plan_sleep_target => 'Uky nyşany';

  @override
  String get plan_meal_suggestions => 'Nahar teklipleri';

  @override
  String get plan_healthy_habits => 'Sagdyn endikler we maslahatlar';

  @override
  String get plan_coach_advice => '“Bloomi AI” tälimçisiniň teklipleri';

  @override
  String get plan_generated_title => 'Şahsylaşdyrylan gündelik meýilnama';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profili redaktirläň';

  @override
  String get profile_name => 'Ady';

  @override
  String get profile_age => 'Ageaş';

  @override
  String get profile_gender => 'Jyns';

  @override
  String get profile_height => 'Boý';

  @override
  String get profile_weight => 'Agram';

  @override
  String get profile_goal => 'Esasy maksat';

  @override
  String get profile_activity_level => 'Iş derejesi';

  @override
  String get profile_stats => 'Saglyk statistikam';

  @override
  String get profile_saved => 'Profil üstünlikli täzelendi';

  @override
  String get profile_bmi => 'Bedeniň köpçülik görkezijisi (BMI)';

  @override
  String get profile_membership => 'Agzalyk';

  @override
  String get settings => 'Sazlamalar';

  @override
  String get preferences_habits => 'ÜPJÜNÇILIKLER WE HABARLAR';

  @override
  String get appearance_theme => 'Daş görnüşi we mowzugy';

  @override
  String get appearance_theme_sub =>
      'Garaňky, ýagtylyk, ulgam tertibi we programma fon görnüşleri';

  @override
  String get permissions => 'Rugsatlar we ulgama giriş';

  @override
  String get permissions_sub =>
      'Saglyk birikmesi, ädim datçikleri, GPS, bildirişler we kamera';

  @override
  String get reminders_notifications => 'Inderatlatmalar we bildirişler';

  @override
  String get reminders_sub =>
      'Nahar wagty, suw, agramy barlamak we ýatmak ýatlatmalary';

  @override
  String get units_of_measurement => 'Ölçeg bölümleri';

  @override
  String get units_sub =>
      'Metrik (kg, sm, ml, km) ýa-da Imperial (lbs, ft / in, fl oz)';

  @override
  String get app_language => 'Programma dili';

  @override
  String get language_sub =>
      'Iňlis, हिन्दी (Hindi), Hinglish we 195+ global diller';

  @override
  String get home_screen_widgets => 'Öý ekrany widjetleri';

  @override
  String get widgets_sub =>
      'Janly Android gurallary: Hub, ädimler, suw, iýmitleniş we maskot';

  @override
  String get wear_os_watch_app => 'OS Watch programmasyny geýiň';

  @override
  String get wear_os_sub =>
      'Akylly sagadyň ýoldaşy, plitkalar, kynçylyklar we janly witallar';

  @override
  String get goals_wellness => 'MAKSATLAR WE GÖRNÜŞLIK DÜZGÜNLERI';

  @override
  String get nutrition_targets => 'Iýmitleniş maksatlary we makro bölünişi';

  @override
  String get nutrition_targets_sub =>
      'Kaloriýa nyşany, belok, ugler, ýag we suw maksady';

  @override
  String get weekly_recap => 'Hepdelik saglyk ýagdaýy';

  @override
  String get weekly_recap_sub =>
      '7 günlük kaloriýa ortaça, makro gatnaşygy we iň gowy gün';

  @override
  String get streaks_milestones => 'Akollar we basgançaklar';

  @override
  String get streaks_sub => 'Işjeň gül çyzyklary, nyşanlar we üstünlikler';

  @override
  String get connected_devices => 'BAGLANAN GURLUŞLAR we EKOSYSTEM';

  @override
  String get devices_hub => 'Enjamlar we Smartwatch merkezi';

  @override
  String get devices_hub_sub =>
      'Saglyk birikmesi, “Galaxy Watch”, “Pixel Watch”, “Garmin”';

  @override
  String get surroundings_weather => 'Daş-töwerek we howa';

  @override
  String get surroundings_sub =>
      'Howanyň hili (AQI), UV indeks we howa gidrasiýa maslahatlary';

  @override
  String get bloomi_pro => '“Bloomi Pro” abunalygy';

  @override
  String get bloomi_pro_sub =>
      'AI meýilnama tälimçisi, 5 sany ekran widjeti we witals yzarlamak';

  @override
  String get about_security => 'HOWPSUZLYK HAKYNDA';

  @override
  String get about_bloomi => 'Bloomi hakda';

  @override
  String get about_bloomi_sub => 'Aýratynlyklary, wersiýany, atributlary guruň';

  @override
  String get privacy_policy => 'Gizlinlik syýasaty';

  @override
  String get privacy_policy_sub =>
      'Oflayn, enjamdaky maglumatlar arhitekturasy';

  @override
  String get terms_conditions => 'Şertler we şertler';

  @override
  String get terms_conditions_sub => 'Hyzmat şertleri we saglyk görkezmeleri';

  @override
  String get delete_account => 'Hasaby we maglumatlary pozuň';

  @override
  String get delete_account_sub =>
      'Localerli SQLite maglumatlaryny we bulut ätiýaçlyklaryny yzyna gaýtaryp bolmaz';

  @override
  String get healthy_habits => 'Leumşak, dowamly saglyk endiklerini dörediň';

  @override
  String get all_logs => 'Gözlenen maglumatlarym we ýazgylarym';

  @override
  String get search_language => 'Dil ýa-da ene ýazuwy boýunça gözläň ...';

  @override
  String get languages_available => 'Diller bar';

  @override
  String get no_matching_languages => 'Gabat gelýän diller tapylmady';

  @override
  String get try_searching =>
      'Nativeerli skript ýa-da iňlis harplary bilen gözläp görüň';

  @override
  String get partially_translated => 'Bölekleýin terjime edildi';

  @override
  String get complete_translation => 'Doly';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Dil $name ($nativeName) düzüldi';
  }

  @override
  String get surroundings_title => 'Daş-töwerek we daşky gurşaw';

  @override
  String get surroundings_aqi => 'Howanyň hiliniň görkezijisi';

  @override
  String get surroundings_uv => 'UV görkezijisi';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Çyglylyk';

  @override
  String get surroundings_hydration_advice =>
      'Häzirki howa şertlerinde gowy gidratly boluň.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Iýmit gözläň';

  @override
  String get food_quick_barcode => 'Ştrih koduny skanirläň';

  @override
  String get food_quick_water => 'Suw goşuň';

  @override
  String get food_quick_custom => 'Omörite iýmit';

  @override
  String get surroundings_good => 'Gowy';

  @override
  String get surroundings_moderate => 'Orta';

  @override
  String get surroundings_unhealthy => 'Saglyk däl';

  @override
  String get notifications_title => 'Duýduryşlar we duýduryşlar';

  @override
  String get notifications_empty => 'Täze bildiriş ýok';

  @override
  String get notifications_mark_read => 'Hemmesini okaň diýip belläň';

  @override
  String get notifications_clear => 'Hemmesini arassala';

  @override
  String get reminders => 'Inderatlatma sazlamalary';

  @override
  String get notifications => 'Duýduryşlar';

  @override
  String get reminders_breakfast_title => 'Ertirlik nahary barada ýatlatma 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ertiriňiz haýyrly bolsun! $time-de iýmitlenýän ertirlik wagty.';
  }

  @override
  String get reminders_lunch_title => 'Günortanlyk ýatlatmasy 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time-de deňagramly we oýlanyşykly günortanlyk naharyndan lezzet alyň.';
  }

  @override
  String get reminders_dinner_title => 'Agşamlyk ýatlatmasy 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time-de ýeňil, kanagatlandyryjy agşamlyk wagty.';
  }

  @override
  String get reminders_water_title => 'Gidrasiýa düwmesi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Täze stakan suw içmegiň wagty! ($time)';
  }

  @override
  String get reminders_weight_title => 'Hepdelik agram ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi-de hepdelik beden ölçegleriňizi yzarlaň ($time).';
  }

  @override
  String get reminders_sleep_title => 'Bedatmak wagty Windel-aşak 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Açyň we rahat uky üçin taýynlaň ($time).';
  }

  @override
  String get onboard_welcome => 'Bloomi-e hoş geldiňiz';

  @override
  String get onboard_sub =>
      'Dostlukly, oflayn ilkinji saglyk we iýmitleniş ýoldaşyňyz.';

  @override
  String get onboard_get_started => 'Başla';

  @override
  String get onboard_sign_in => 'Giriň';

  @override
  String get onboard_skip => 'Geçmek';

  @override
  String get onboard_choose_goal => 'Esasy saglyk maksadyňyz näme?';

  @override
  String get onboard_goal_weight_loss => 'Leumşak horlanmak';

  @override
  String get onboard_goal_muscle => 'Myşsa gazanmak we güýç';

  @override
  String get onboard_goal_energy => 'Gündelik energiýa we ýaşaýyş';

  @override
  String get onboard_goal_habits => 'Sagdyn akyl iýmek';

  @override
  String get onboard_about_you => 'Özüň hakda gürrüň ber';

  @override
  String get onboard_lifestyle => 'Gündelik işiňiz';

  @override
  String get onboard_permissions_title => 'Rugsatlar we ulgama giriş';

  @override
  String get onboard_permissions_sub =>
      'Sinhronlamak ädimlerine, türgenleşiklere we ýatlatmalara ygtyýar beriň.';

  @override
  String get onboard_plan_ready_title => 'Hususy meýilnamaňyz taýýar!';

  @override
  String get onboard_plan_ready_sub =>
      'Diňe siziň üçin ýumşak, şahsylaşdyrylan iýmitleniş we saglyk ýol kartasyny taýýarladyk.';

  @override
  String get onboard_enter_bloomi => '“Bloomi” -e giriň';

  @override
  String get insights_weekly_report => 'Hepdelik saglyk ýagdaýy';

  @override
  String insights_best_day(Object day) {
    return 'Iň oňat yzygiderlilik güni: $day';
  }

  @override
  String get insights_streaks_badges => 'Akollar we basgançaklar';

  @override
  String insights_unlocked_on(Object date) {
    return '$date açyldy';
  }

  @override
  String get insights_keep_going => 'Ajaýyp ösüşi dowam etdiriň!';

  @override
  String get widgets_title => 'Öý ekrany widjetleri';

  @override
  String widgets_active_count(Object count) {
    return 'Işjeň widjetler: $count';
  }

  @override
  String get widgets_hub_title => '“Bloomi” saglyk merkezi';

  @override
  String get widgets_steps_title => 'Psdimler we işjeň halka';

  @override
  String get widgets_water_title => 'Gidrasiýa çalt gündeligi';

  @override
  String get widgets_mascot_title => 'Bloomi maskot ýoldaşy';

  @override
  String get wear_os_title => 'OS Smartwatch geýiň';

  @override
  String get wear_os_connected => 'Görmek üçin birikdirildi';

  @override
  String get wear_os_sync => 'Gözegçilik maglumatlary sinhronlaň';

  @override
  String get theme_title => 'Daş görnüşi we mowzugy';

  @override
  String get theme_mode => 'Mowzuk tertibi';

  @override
  String get theme_light => 'Lightagtylyk';

  @override
  String get theme_dark => 'Garaňky';

  @override
  String get theme_system => 'Ulgam standarty';

  @override
  String get theme_background_palette => 'Fon palitrasy';

  @override
  String get units_title => 'Ölçeg bölümleri';

  @override
  String get units_metric => 'Metrik (kg, sm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Dolandyryş panelini ýükläp bolmaýar';

  @override
  String get home_health_permission_req => 'Saglyk birikmesi üçin rugsat gerek';

  @override
  String get home_health_permission_desc =>
      '“Bloomi” hakyky ädimleri, ýürek urmasyny we ykjam öý widjetlerini hakyky wagtda sinhronlamak üçin “Health Connect” rugsady talap edýär.';

  @override
  String get home_allow_health => 'Saglyk birikmesine rugsat beriň';

  @override
  String get home_ready_mindful_day => 'Akylly güne taýynmy? ✨';

  @override
  String get home_quick_add => 'Çalt goş';

  @override
  String get home_live_gps => 'Göni GPS';

  @override
  String get home_calories_remaining_label => 'KALORIESALAR';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Iýiň: $consumed / $target kkal';
  }

  @override
  String get home_tap_water_tracker => 'Suw yzarlaýjy üçin basyň 💧';

  @override
  String get home_water_goal_reached => 'Gündelik maksat reached ýetdi';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Gündelik maksada $remaining ml';
  }

  @override
  String get home_details => 'Jikme-jiklikler';

  @override
  String get home_upgrade_plan_desc =>
      'Şahsylaşdyrylan gündelik maksatlary we AI meýilnamasyny açmak üçin täzeläň';

  @override
  String get home_unlock => 'Gulpy açmak';

  @override
  String get home_quick_log_hint => 'Saglyk ýazgysyny çalt ýazyň';

  @override
  String get food_serving_size => 'Hyzmat ölçegi';

  @override
  String get food_serving_grams => 'Hyzmat etmek (g)';

  @override
  String get food_number_servings => 'Hyzmatlaryň sany';

  @override
  String get food_calories_per_serving => 'Hyzmat başyna kaloriýa';

  @override
  String get food_recipe_ingredients => 'Goşundylar';

  @override
  String get food_recipe_add_ingredient => 'Goşundy goşuň';

  @override
  String get food_recipe_directions => 'Görkezmeler we bellikler';

  @override
  String get food_recipe_total => 'Jemi resept iýmitlenmesi';

  @override
  String get food_recipe_per_serving => 'Iýmitlenmek üçin';

  @override
  String get food_recipe_saved_toast => 'Omörite iýmit üstünlikli tygşytlandy!';

  @override
  String get food_barcode_found => 'Önüm tapyldy!';

  @override
  String get food_barcode_not_found_desc =>
      'Bu ştrih koduny açyk maglumatlar bazasynda tapyp bilmedik. Adaty iýmit hökmünde goşup bilersiňiz.';

  @override
  String get food_add_custom_btn => 'Omörite iýmit goşuň';

  @override
  String get food_scan_again => 'Againene gözden geçiriň';

  @override
  String get food_review_items => 'Detüze çykarylan iýmitleri gözden geçiriň';

  @override
  String get food_review_hint =>
      'Mukdarlary sazlaň ýa-da tanalmaýan elementi aýyryň';

  @override
  String get food_log_selected => 'Saýlanan iýmitleri hasaba alyň';

  @override
  String get food_favourites_title => 'Halaýan iýmitler';

  @override
  String get food_recent_title => 'Soňky iýmitler';

  @override
  String get food_no_favourites =>
      'Entek halaýan iýmit ýok. Bu ýerde tygşytlamak üçin islendik iýmitiň ýüregine basyň.';

  @override
  String get food_no_recents =>
      'Recentlyakynda hasaba alnan iýmitler tapylmady.';

  @override
  String get food_nutrition_details_title => 'Gündelik iýmitleniş maglumatlary';

  @override
  String get food_macro_protein_label => 'Beloklaryň bölünişi';

  @override
  String get food_macro_carbs_label => 'Karblaryň bölünişi';

  @override
  String get food_macro_fat_label => 'Breag bölünişi';

  @override
  String get food_macro_fiber_label => 'Süýümiň bölünişi';

  @override
  String get food_daily_target_comparison => 'Maksat deňeşdirme';

  @override
  String food_target_label(Object target) {
    return 'Maksat: $target';
  }

  @override
  String get food_edit_entry => 'Gündelik ýazgyny redaktirläň';

  @override
  String get food_delete_entry => 'Girişi poz';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kkal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current $target ml';
  }

  @override
  String get water_intake_history => 'Şu günki suw ýazgylary';

  @override
  String get water_no_logs_today =>
      'Häzirki wagtda suw ýok. Gidrat we çalt goşmak düwmesine basyň!';

  @override
  String get water_adjust_goal => 'Gündelik maksady sazlaň';

  @override
  String get health_connect_banner => 'Saglyk birikmesine birikdirildi';

  @override
  String get health_vitals_summary => 'Gündelik saglyk merkezleri';

  @override
  String get health_latest_heart_rate => 'Iň soňky ýürek urşy';

  @override
  String get health_latest_bp => 'Gan basyşy';

  @override
  String get health_latest_spo2 => 'Gan kislorody';

  @override
  String get health_latest_glucose => 'Gan glýukozasy';

  @override
  String get health_latest_weight => 'Agram';

  @override
  String get health_latest_sleep => 'Ukynyň dowamlylygy';

  @override
  String get health_add_manual => 'El bilen ölçemek goşuň';

  @override
  String get health_history_trends => 'Taryhy tendensiýalar';

  @override
  String get health_sync_success =>
      'Saglyk maglumatlary üstünlikli sinhronlandy!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours sagat $mins min';
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
    return '$pct%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg / dL';
  }

  @override
  String get health_devices_title => 'Birikdirilen enjamlar we geýilýän zatlar';

  @override
  String get health_devices_desc =>
      'Jübütlenen akylly sagatlary, fitnes yzarlaýjylaryny we saglyk datçiklerini dolandyryň.';

  @override
  String get health_workout_editor_title => 'Türgenleşigi redaktirläň';

  @override
  String get health_workout_name_label => 'Okuwyň ady';

  @override
  String get health_workout_duration_label => 'Dowamlylygy (minut)';

  @override
  String get health_workout_calories_label => 'Takmynan kaloriýa (kkal)';

  @override
  String get health_workout_date_label => 'Sene we Wagt';

  @override
  String get plan_daily_wellness_roadmap => 'Şahsylaşdyrylan mol kartasy';

  @override
  String get plan_morning_routine => 'Säher tertibi';

  @override
  String get plan_afternoon_routine => 'Günortan saglyk';

  @override
  String get plan_evening_routine => 'Agşam şemaly';

  @override
  String get plan_coach_badge => '“Bloomi AI” tälimçisi';

  @override
  String get plan_weekly_overview => '7 günlük saglyk ünsi';

  @override
  String get plan_targets_title => 'Saglyk maksatlary we maksatlary';

  @override
  String get plan_calorie_budget_label => 'Gündelik kaloriýa býudjeti';

  @override
  String get plan_water_budget_label => 'Gündelik suw nyşany';

  @override
  String get plan_step_budget_label => 'Gündelik ädim maksady';

  @override
  String get plan_macro_split_label => 'Makronutrient gatnaşygy';

  @override
  String get profile_personal_details => 'Şahsy maglumatlar';

  @override
  String get profile_body_stats => 'Beden ölçegleri';

  @override
  String get profile_app_preferences => 'Saýlamalar we programma sazlamalary';

  @override
  String get profile_edit_name_hint => 'Adyňyz';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Boýy ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Agramy ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Ageaş';

  @override
  String get profile_gender_male => 'Erkek';

  @override
  String get profile_gender_female => 'Aýal';

  @override
  String get profile_gender_other => 'Başga / Diýmezligi makul biliň';

  @override
  String get profile_activity_sedentary => 'Oturylyan (az maşk etmeli däl)';

  @override
  String get profile_activity_light => 'Lighteňil işjeň (1-3 gün / hepde)';

  @override
  String get profile_activity_moderate => 'Ortaça işjeň (3-5 gün / hepde)';

  @override
  String get profile_activity_very => 'Örän işjeň (6-7 gün / hepde)';

  @override
  String get settings_wear_os_header => 'OS ýoldaş programmasyny geýiň';

  @override
  String get settings_wear_os_desc =>
      'Kaloriýa, suw we ädimlere göz aýlamak üçin “Bloomi” kafelini we çylşyrymlylygy “Wear OS” sagadyňyza guruň.';

  @override
  String get settings_widgets_header => 'Interaktiw Android widjetleri';

  @override
  String get settings_widgets_desc =>
      'Derrew täzelenmeler üçin enjamyňyzyň baş ekranyna real wagt gurallaryny dakyň.';

  @override
  String get settings_about_header => 'Bloomi hakda';

  @override
  String get settings_about_version => '1.0.0 wersiýasy';

  @override
  String get settings_about_build => '100 guruň';

  @override
  String get settings_about_credits =>
      'Akyldar, sagdyn durmuş üçin alada bilen ýasaldy.';

  @override
  String get settings_terms_header => 'Şertler we şertler';

  @override
  String get settings_privacy_header => 'Gizlinlik syýasaty';

  @override
  String get settings_delete_header => 'Hasaby we maglumatlary pozuň';

  @override
  String get settings_delete_warning =>
      'Bu hereketi yzyna gaýtaryp bolmaz. Naharlaryňyzyň, türgenleşikleriňiziň, witallaryňyzyň we profiliňiz hemişelik ýok ediler.';

  @override
  String get settings_delete_confirm_btn => 'Hemişelik pozuň';

  @override
  String get onboard_welcome_headline => '“Bloomi” -e hoş geldiňiz';

  @override
  String get onboard_welcome_tagline =>
      'Durmuşyňyzda döredilen mylaýym, aňly saglygy yzarlamak.';

  @override
  String get onboard_step_about => 'Sen hakda';

  @override
  String get onboard_step_goals => 'Maksatlaryňyz';

  @override
  String get onboard_step_lifestyle => 'Gündelik endikler';

  @override
  String get onboard_step_permissions => 'Rugsatlar';

  @override
  String get onboard_step_plan => 'Taýýar!';

  @override
  String get onboard_health_connect_perm => 'Saglyk birikmesi';

  @override
  String get onboard_step_sensors_perm => 'Stepdim hasaplaýjy datçik';

  @override
  String get onboard_notif_perm => 'Akylly ýatlatmalar we bildirişler';

  @override
  String get onboard_camera_perm => 'Kamera (ştrih-kod we iýmit skaneri)';

  @override
  String get onboard_grant_permissions => 'Rugsatnamalar';

  @override
  String get onboard_continue_dashboard => 'Dolandyryş panelini açyň';

  @override
  String get notif_channel_hydration_name => 'Gidrasiýa düwünleri';

  @override
  String get notif_channel_hydration_desc =>
      'Günüň dowamynda mylaýym suw ýatlatmalary';

  @override
  String get notif_channel_nutrition_name => 'Nahar we iýmit ýatlatmalary';

  @override
  String get notif_channel_nutrition_desc =>
      'Ertirlik, günortanlyk we agşamlyk ýatlatma duýduryşlary';

  @override
  String get notif_channel_steps_name => 'Stepdim ädimleri';

  @override
  String get notif_channel_steps_desc =>
      'Gündelik ädim maksatlaryna ýetilende dabaralar';

  @override
  String get notif_channel_vitals_name => 'Saglyk we ähmiýetli barlaglar';

  @override
  String get notif_channel_vitals_desc =>
      'Agramy we ýatýan wagty ýel öwüsýän ýatlatmalar';

  @override
  String get notif_action_log_water => '💧 Log + 250ml';

  @override
  String get notif_action_snooze => '15 m';

  @override
  String get notif_action_log_meal => '🥗 Giriş nahary';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
