// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Fulah (`ff`).
class AppLocalizationsFf extends AppLocalizations {
  AppLocalizationsFf([String locale = 'ff']) : super(locale);

  @override
  String get app_name => 'Puɗi';

  @override
  String get nav_home => 'Koɗorɗe';

  @override
  String get nav_today => 'Hannde';

  @override
  String get nav_plan => 'Feere';

  @override
  String get nav_food => 'Nyaamdu';

  @override
  String get nav_food_diary => 'Jaaynde nguura';

  @override
  String get nav_workout => 'Log golle';

  @override
  String get nav_health => 'Cellal';

  @override
  String get nav_profile => 'Profaayiil';

  @override
  String get save => 'Hisnu';

  @override
  String get cancel => 'Woppu';

  @override
  String get delete => 'Mumtu';

  @override
  String get edit => 'Waylu';

  @override
  String get done => 'Waɗii';

  @override
  String get close => 'Uddit';

  @override
  String get back => 'Caggal';

  @override
  String get next => 'Ko arata';

  @override
  String get continue_btn => 'Jokku';

  @override
  String get confirm => 'Tabintin';

  @override
  String get search => 'Yiylo';

  @override
  String get filter => 'Fiiltirde';

  @override
  String get all => 'Fof';

  @override
  String get active => 'Golloowo';

  @override
  String get today => 'Hannde';

  @override
  String get yesterday => 'Hanki';

  @override
  String get tomorrow => 'Janngo';

  @override
  String get add => 'Ɓeydu';

  @override
  String get remove => 'Ittu';

  @override
  String get refresh => 'Hesɗitin';

  @override
  String get retry => 'Enndu kadi';

  @override
  String get error => 'Juumre';

  @override
  String get success => 'Nafoore';

  @override
  String get loading => 'Ina loowa...';

  @override
  String get no_data => 'Alaa dokke keɓaaɗe';

  @override
  String get offline => 'Mode mo alaa e laylaytol';

  @override
  String get offline_sub => 'Waylooji ɗii maa sinkron so ɗi njokkondirii';

  @override
  String get undo => 'Woppu';

  @override
  String get portion => 'Feccere';

  @override
  String get quantity => 'Ɗuuɗal';

  @override
  String get unit => 'Yuɓɓo';

  @override
  String get clear => 'Laɓɓin';

  @override
  String get select => 'Suɓo';

  @override
  String get apply => 'Waɗde';

  @override
  String get reset => 'Resndo';

  @override
  String get ok => 'Okay';

  @override
  String get yes => 'Eey';

  @override
  String get no => 'Alaa';

  @override
  String get optional => 'Ko cuɓagol';

  @override
  String get calories => 'Kaloriiji';

  @override
  String get protein => 'Poroteyin';

  @override
  String get carbs => 'Karbohidrat';

  @override
  String get fat => 'Fat';

  @override
  String get fiber => 'Fiɓnde';

  @override
  String get water => 'Ndiyam';

  @override
  String get steps => 'Ɗatal';

  @override
  String get kcal => 'kkal';

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
  String get inches => 'nder';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'waktuuji';

  @override
  String get minutes => 'hojomaaji';

  @override
  String get serving => 'Gollaade';

  @override
  String get servings => 'Sarwiisuuji';

  @override
  String get serving_size => 'Njaajeendi Serwiis';

  @override
  String get per_100g => 'e kala 100g';

  @override
  String get india => 'Leydi Indiya';

  @override
  String get asia => 'Asii';

  @override
  String get europe => 'Orop';

  @override
  String get middle_east => 'Fuɗnaange hakkundeejo';

  @override
  String get africa => 'Afrik';

  @override
  String get americas => 'Amerik';

  @override
  String get home_title => 'Koɗorɗe';

  @override
  String get home_greeting_morning => 'Jam hiiri';

  @override
  String get home_greeting_afternoon => 'Jam hiiri';

  @override
  String get home_greeting_evening => 'Jam hiiri';

  @override
  String get home_streak_title => 'Ɗaɗi Puɗi';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count balɗe limtaaɗe',
      one: '1 ñalawma streak',
      zero: '0 balɗe streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Yanii';

  @override
  String get home_calories_budget => 'Bidjet kaloriiji';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal heddii';
  }

  @override
  String get home_water_title => 'Hidraasiyoŋ ñalnde kala';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current/_$target ml';
  }

  @override
  String get home_steps_title => 'Ɗatal Njahdi';

  @override
  String get home_quick_actions => 'Golle Jaawɗe';

  @override
  String get home_log_meal => 'Nyaamdu Log';

  @override
  String get home_log_water => 'Ndiyam Log';

  @override
  String get home_log_workout => 'Log Kuugal';

  @override
  String get home_log_weight => 'Teddeendi Log';

  @override
  String get home_insights_title => 'Faandaare hannde';

  @override
  String get home_quote =>
      'Suɓngooji celluɗi tokoosi ina ngadda waylooji ɓuuɓɗi.';

  @override
  String get home_ai_coach_tip => 'Koolaaɗo kuuɓal AI Bloomi';

  @override
  String get home_surroundings => 'Taariindi & Henndu';

  @override
  String get home_notifications => 'Notifikaaji';

  @override
  String get home_daily_score => 'Njoɓdi wellitaare ñalnde kala';

  @override
  String get home_view_all => 'Yiytu Fof';

  @override
  String get food_diary_title => 'Jaaynde nguura';

  @override
  String get food_breakfast => 'Ñaamde subaka';

  @override
  String get food_lunch => 'Ñaamde';

  @override
  String get food_dinner => 'Ñaamde';

  @override
  String get food_snacks => 'Kosam';

  @override
  String get food_add_food => 'Ɓeydu Nguura';

  @override
  String get food_edit_food => 'Waylude Nguura';

  @override
  String get food_add_breakfast => 'Ɓeydu heen Jamma';

  @override
  String get food_add_lunch => 'Ɓeydu heen Ñaamde';

  @override
  String get food_add_dinner => 'Ɓeydu heen Ñaamde';

  @override
  String get food_add_snack => 'Ɓeydu heen Snack';

  @override
  String get food_total_calories => 'Kaloriiji fof';

  @override
  String get food_empty_meal => 'Alaa ñaamdu loggaandu ngam ndee ñaamde tawo';

  @override
  String get food_empty_diary => 'Alaa nyaamdu logginaa ngam ñalngu nguu';

  @override
  String get food_log_first_meal =>
      'Tappu + ngam winndude ñaamdu maa adanndu welndu';

  @override
  String get food_quick_add => 'Ɓeydu Jaawndu';

  @override
  String get food_search_hint => 'Yiylo nyaamdu, ɓiɓɓe leɗɗe, dal, roti...';

  @override
  String get food_custom_recipe => 'Nyaamdu & Resetaaji aadaaji';

  @override
  String get food_scan_barcode => 'Skannde Kod Bar';

  @override
  String get food_camera_scan => 'Skanneer nguura AI';

  @override
  String get food_recent => 'Ñaamduuji ɓooyɗi';

  @override
  String get food_favourites => 'Yiɗɓe';

  @override
  String get food_macro_summary => 'Feccere e ñamri makro';

  @override
  String get food_delete_meal_confirm =>
      'Aɗa sikki aɗa yiɗi ittude ndee huunde?';

  @override
  String get food_item_deleted => 'Geɗel nguura ittaama';

  @override
  String get food_remaining => 'heddii ko';

  @override
  String get food_consumed => 'ñaametee';

  @override
  String food_of_target(Object target) {
    return 'ko $target kaal';
  }

  @override
  String get foodSearch_title => 'Yiylo Ñaamdu';

  @override
  String get foodSearch_scan_barcode => 'Skannde Kod Bar';

  @override
  String get foodSearch_take_photo => 'Snap Foto Nguura';

  @override
  String get foodSearch_custom_food => 'Sosde Ñaamdu Aada';

  @override
  String get foodSearch_recent_searches => 'Njiylawu cakkitiiɗo';

  @override
  String get foodSearch_popular => 'Ñaamduuji ɓurɗi lollude';

  @override
  String get foodSearch_no_results => 'Alaa ñaamdu nanndundu e njiylawu maa';

  @override
  String get barcode_title => 'Skaner kode bar';

  @override
  String get barcode_align => 'Liggondirde kode barre nder kaɓirgal kamera';

  @override
  String get barcode_not_found => 'Product tawaaka e nder lowre domen';

  @override
  String get barcode_premium_feature => 'Skannde barkod ina heɓoo e Bloomi Pro';

  @override
  String get camera_title => 'Skanneer nguura AI';

  @override
  String get camera_tap_hint => 'Ƴettu foto laaɓɗo e diɗɗal maa';

  @override
  String get camera_analysing => 'Hiisiwal taasa nyaamdu...';

  @override
  String get camera_detected => 'Geɗe teskaaɗe';

  @override
  String get camera_flash => 'Waylu Filaas';

  @override
  String get camera_retake => 'Ƴettu Foto';

  @override
  String get camera_confirm_food => 'Tabintin Geɗe';

  @override
  String get customFood_title => 'Nyaamdu & Resetaaji aadaaji';

  @override
  String get customFood_name_hint => 'Innde dish walla ko woni heen';

  @override
  String get customFood_calories_hint => 'Kaloriiji (kal)';

  @override
  String get customFood_protein_hint => 'Poroteyin (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidrat (g)';

  @override
  String get customFood_fat_hint => 'Teddeendi (g)';

  @override
  String get customFood_save => 'Hisnu Resetaaji';

  @override
  String get water_tracker_title => 'Rewrude e ndiyam';

  @override
  String get water_daily_target => 'Golle Hidraasiyoŋ ñalnde kala';

  @override
  String get water_logged_today => 'Logged Hannde';

  @override
  String get water_add_glass => '+250 ml Gilaas';

  @override
  String get water_add_bottle => '+500 ml Butel';

  @override
  String get water_custom_amount => 'Limre Aada';

  @override
  String get water_reminder_tip =>
      'Yar ndiyam e kala sahaa e nder ñalawma ngam heɓde semmbe tiiɗɗo.';

  @override
  String water_logged_toast(Object amount) {
    return 'Loggi $amount ml ndiyam 💧';
  }

  @override
  String get workout_title => 'Log golle';

  @override
  String get workout_add_exercise => 'Ɓeydu golle';

  @override
  String get workout_cardio => 'Kardiyo';

  @override
  String get workout_strength => 'Doole';

  @override
  String get workout_yoga => 'Yoga & Ɓooygol';

  @override
  String get workout_duration => 'Duuɓi';

  @override
  String get workout_intensity => 'Tiiɗnaare';

  @override
  String get workout_calories_burned => 'Kaloriiji ɓuuɓɗi';

  @override
  String get workout_empty => 'Alaa golle logged hannde';

  @override
  String get workout_save_success => 'Workout hisnii e nafoore!';

  @override
  String get workout_type => 'Sifaa golle';

  @override
  String get workout_notes => 'Teskorɗe & Miijooji';

  @override
  String get health_overview_title => 'Cellal & Nguurndam';

  @override
  String get health_heart_rate => 'Ɓernde';

  @override
  String get health_blood_oxygen => 'Oksijen ƴiiƴam (SpO2)';

  @override
  String get health_blood_pressure => 'Ƴiiƴam';

  @override
  String get health_blood_glucose => 'Suukara e nder ƴiiƴam';

  @override
  String get health_body_temperature => 'Tempere ɓanndu';

  @override
  String get health_sleep_tracking => 'Rewindaade ɗanngal';

  @override
  String get health_weight_tracking => 'Teddeendi & Ko woni ɓanndu';

  @override
  String get health_waist_hip => 'Rajo Waast-to-Hip';

  @override
  String get health_devices_hub => 'Kaɓirɗe & Hub Smartwatch';

  @override
  String get health_sync_now => 'Sinkron Dowlaaji Cellal';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Sinkronisaasiyoŋ cakkitiiɗo: $time';
  }

  @override
  String get health_manual_entry => 'Naatgol Cellal e junngo';

  @override
  String get health_metric_detail => 'Detaayuuji metrik';

  @override
  String get health_connected_sensors => 'Sensooruuji cellal jokkondirɗi';

  @override
  String get plan_title => 'Feere ñalnde kala';

  @override
  String get plan_weekly_title => 'Feere Wellitaare Yontere';

  @override
  String get plan_calorie_target => 'Kaloriiji Target';

  @override
  String get plan_water_target => 'Target Hidraasiyoŋ';

  @override
  String get plan_step_target => 'Target Ɗatal';

  @override
  String get plan_sleep_target => 'Target ɗanngal';

  @override
  String get plan_meal_suggestions => 'Wasiyaaji nyaamdu';

  @override
  String get plan_healthy_habits => 'Aadaaji celluɗi & Wasiyaaji';

  @override
  String get plan_coach_advice => 'Wasiyaaji coftal ɓalli Bloomi AI';

  @override
  String get plan_generated_title => 'Jadwal ñalnde kala ko neɗɗo gooto';

  @override
  String get profile_title => 'Profaayiil';

  @override
  String get profile_edit => 'Waylu Profaayiil';

  @override
  String get profile_name => 'Innde';

  @override
  String get profile_age => 'Duuɓi';

  @override
  String get profile_gender => 'Jinnaaɗo';

  @override
  String get profile_height => 'Toowgol';

  @override
  String get profile_weight => 'Teddeendi';

  @override
  String get profile_goal => 'Faandaare adannde';

  @override
  String get profile_activity_level => 'Toɓɓere golle';

  @override
  String get profile_stats => 'Stats Wellitaare am';

  @override
  String get profile_saved => 'Profaayiil kesɗitinaama no moƴƴi';

  @override
  String get profile_bmi => 'Teddeendi ɓanndu (IMC)';

  @override
  String get profile_membership => 'Tergal';

  @override
  String get settings => 'Dottaaɗe';

  @override
  String get preferences_habits => 'ƁURI YIƊDE & AADAAJI';

  @override
  String get appearance_theme => 'Feere & Tiitoonde';

  @override
  String get appearance_theme_sub =>
      'Niɓɓere, Annoore, Mode Siistem & Cuɓe Baɗte App';

  @override
  String get permissions => 'Jaɓɗe & Naatgol Siistem';

  @override
  String get permissions_sub =>
      'Jokkondiral Cellal, Sensoruuji Ɗatal, GPS, Notifikaaji & Kamera';

  @override
  String get reminders_notifications => 'Siftorde & Notifikaaji';

  @override
  String get reminders_sub =>
      'Wakkatiiji nyaamdu, ndiyam, teddeendi ƴeewndo & siftorde wakkati lelnde';

  @override
  String get units_of_measurement => 'Yunituuji fotdeeji';

  @override
  String get units_sub =>
      'Metirik (kg, cm, ml, km) walla laamɗo (kilo, ft/in, fl oz)';

  @override
  String get app_language => 'Ɗemngal App';

  @override
  String get language_sub =>
      'Engele, हिन्दी (Hindi), Engele & 195+ ɗemɗe aduna';

  @override
  String get home_screen_widgets => 'Widgetuuji ekran galle';

  @override
  String get widgets_sub =>
      'Widgetuuji Android guurɗi: Hub, Ɗaɗi, Ndiyam, Nyaamdu & Maskot';

  @override
  String get wear_os_watch_app => 'Ɓorno App OS Waɗde';

  @override
  String get wear_os_sub =>
      'Smartwatch sehil, kaɓirɗe, caɗeele & nguurndam nguurndam';

  @override
  String get goals_wellness => 'PAANDAARE & ANNDE WELLITAARE';

  @override
  String get nutrition_targets => 'Paandaale ñamri & Feccere Makro';

  @override
  String get nutrition_targets_sub =>
      'Paandaale kaloriiji, poroteyiin, karbohidrat, fat & paandaale ndiyam';

  @override
  String get weekly_recap => 'Recap Wellitaare Yontere';

  @override
  String get weekly_recap_sub =>
      '7-balɗe kaloriiji hakkundeeji, makro ratio & ñalawma ɓurɗo moƴƴude';

  @override
  String get streaks_milestones => 'Streaks & Kaaƴe';

  @override
  String get streaks_sub => 'Active streaks puɗi, baaji & baɗte';

  @override
  String get connected_devices => 'JOKKOL JOKKOL & EKOSISTEEM';

  @override
  String get devices_hub => 'Kaɓirɗe & Hub Smartwatch';

  @override
  String get devices_hub_sub =>
      'Jokkondiral cellal, Waɗde Galaksi, Waɗde Pixel, Garmin';

  @override
  String get surroundings_weather => 'Koɗki & Wejo';

  @override
  String get surroundings_sub =>
      'Kalite henndu (AQI), indeks UV & wasiyaaji ɓuuɓgol weeyo';

  @override
  String get bloomi_pro => 'Abonaade Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 wideyooji ekran galle & rewindaade ko ɓuri teeŋtude';

  @override
  String get about_security => 'KO WONI E & KISAL';

  @override
  String get about_bloomi => 'Ko fayti e Bloomi';

  @override
  String get about_bloomi_sub => 'Mahde sifaaji, mbaydi, sifaaji';

  @override
  String get privacy_policy => 'Politik sirlu';

  @override
  String get privacy_policy_sub =>
      'Arsitektuur dokke ɗe ngonaa e laylaytol, e nder kaɓirgol';

  @override
  String get terms_conditions => 'Sarɗiiji e sarɗiiji';

  @override
  String get terms_conditions_sub => 'Sarɗiiji gollal e jamirooje wellitaare';

  @override
  String get delete_account => 'Mumtu Konte e Dowlaaji';

  @override
  String get delete_account_sub =>
      'Mumtude dokke SQLite nokkuuje e backups ruulde tawa mbaylaaka';

  @override
  String get healthy_habits => 'Mahde jikkuuji wellitaare leefɗi, duumotooɗi';

  @override
  String get all_logs => 'Dataaji am & Logs am';

  @override
  String get search_language => 'Yiylo ɗemngal walla binndol neeniwal...';

  @override
  String get languages_available => 'Ɗemɗe ina ngoodi';

  @override
  String get no_matching_languages => 'Alaa ɗemɗe nannduɗe tawaa';

  @override
  String get try_searching =>
      'Enndu njiylawu e binndol ngenndiwal walla e binndol Engele';

  @override
  String get partially_translated => 'Feccere e firo';

  @override
  String get complete_translation => 'Timmin';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ɗemngal ngal waɗaama e $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Taariindi & Taariindi';

  @override
  String get surroundings_aqi => 'Indeks kalite henndu';

  @override
  String get surroundings_uv => 'Innde UV';

  @override
  String get surroundings_temp => 'Nguleeki';

  @override
  String get surroundings_humidity => 'Humpito';

  @override
  String get surroundings_hydration_advice =>
      'Heddo e ndiyam no moƴƴi e ngonka weeyo hannde.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Yiylo Nguura';

  @override
  String get food_quick_barcode => 'Skannde Barkod 👑';

  @override
  String get food_quick_water => 'Ɓeydu heen Ndiyam';

  @override
  String get food_quick_custom => 'Nyaamdu Aada';

  @override
  String get surroundings_good => 'Moƴƴi';

  @override
  String get surroundings_moderate => 'Hakkunde';

  @override
  String get surroundings_unhealthy => 'Ko sellaani';

  @override
  String get notifications_title => 'Notifikaaji & Jeertinaango';

  @override
  String get notifications_empty => 'Alaa humpitooji kesi';

  @override
  String get notifications_mark_read => 'Mark Fof ko Janngaa';

  @override
  String get notifications_clear => 'Laɓɓin Fof';

  @override
  String get reminders => 'Cuɓe Siftorde';

  @override
  String get notifications => 'Notifikaaji';

  @override
  String get reminders_breakfast_title => 'Siftorde kosam 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Jam hiiri! Wakkati nyaamdu ɓuuɓndu haa $time .';
  }

  @override
  String get reminders_lunch_title => 'Siftorde Ñaamde 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Jokku e weltaade e ñaamde ɓuuɓnde, hakkille to $time .';
  }

  @override
  String get reminders_dinner_title => 'Siftorde ñaamde 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Wakkati nyaamdu ɓuuɓndu, welndu to $time .';
  }

  @override
  String get reminders_water_title => 'Nudge Hidraasiyoŋ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Wakkati yarde gilaas ndiyam laaɓɗam! ($time)';
  }

  @override
  String get reminders_weight_title => 'Teddeendi yontere kala ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Rewru e limtooji ɓanndu maa yontere kala e Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Lelnde Henndu-dow 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Fooftu e peewnugol ɗanngal fooftere ( $time ).';
  }

  @override
  String get onboard_welcome => 'On njaaraama e Bloomi';

  @override
  String get onboard_sub => 'Sehil maa, offline-first cellal e ñamri.';

  @override
  String get onboard_get_started => 'Fuɗɗoo';

  @override
  String get onboard_sign_in => 'Nastu';

  @override
  String get onboard_skip => 'Juppu';

  @override
  String get onboard_choose_goal =>
      'Hol ko woni faandaare maa wellitaare adannde?';

  @override
  String get onboard_goal_weight_loss => 'Teddeendi Leefndi';

  @override
  String get onboard_goal_muscle => 'Gain Muscle & Doole';

  @override
  String get onboard_goal_energy => 'Semmbe & Nguurndam ñalnde kala';

  @override
  String get onboard_goal_habits => 'Nyaamde Hakkille Cellal';

  @override
  String get onboard_about_you => 'Haalan min ko fayti e hoore maa';

  @override
  String get onboard_lifestyle => 'Ko mbaɗata ñalnde kala';

  @override
  String get onboard_permissions_title => 'Jaɓɗe & Naatgol Siistem';

  @override
  String get onboard_permissions_sub =>
      'Hokku naatde e laabi sinkronisaasiyoŋ, golle, e siftorde.';

  @override
  String get onboard_plan_ready_title => 'Feere maa Custom ina hesɗi!';

  @override
  String get onboard_plan_ready_sub =>
      'Min mbaɗii kartal laawol ñamri e wellitaare leefndi, keeriindi ngam mon tan.';

  @override
  String get onboard_enter_bloomi => 'Naatde e Bloomi';

  @override
  String get insights_weekly_report => 'Recap Wellitaare Yontere';

  @override
  String insights_best_day(Object day) {
    return 'Ñalngu ɓurngu moƴƴude e jokkondire: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Kaaƴe';

  @override
  String insights_unlocked_on(Object date) {
    return 'Udditaama e $date';
  }

  @override
  String get insights_keep_going => 'Jokku e yahrude yeeso!';

  @override
  String get widgets_title => 'Widgetuuji ekran galle';

  @override
  String widgets_active_count(Object count) {
    return 'Kuutorɗe kuutorteeɗe: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellitaare Hub';

  @override
  String get widgets_steps_title => 'Ɗatal & Ring Active';

  @override
  String get widgets_water_title => 'Hidraasiyoŋ Log Jaawɗo';

  @override
  String get widgets_mascot_title => 'Bloomi Maskot Sehil';

  @override
  String get wear_os_title => 'Ɓorno-ɗee waktuuji OS';

  @override
  String get wear_os_connected => 'Jokkondirɗo e Watch';

  @override
  String get wear_os_sync => 'Sinkronisaasiyoŋ Dowlaaji Waɗde';

  @override
  String get theme_title => 'Feere & Tiitoonde';

  @override
  String get theme_mode => 'Mode Tiitoonde';

  @override
  String get theme_light => 'Annoore';

  @override
  String get theme_dark => 'Niwre';

  @override
  String get theme_system => 'Siistem Defaare';

  @override
  String get theme_background_palette => 'Palet caggal';

  @override
  String get units_title => 'Yunituuji fotdeeji';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Laamiiɗo (kilo, nder, fl oz)';

  @override
  String get home_unable_load => 'Waawaa loowde daasboor';

  @override
  String get home_health_permission_req =>
      'Jaɓde jokkondirde e cellal ina ɗaɓɓiree';

  @override
  String get home_health_permission_desc =>
      'Bloomi ina ɗaɓɓi yamiroore Health Connect ngam ƴettude paɗe goonga, njuuteendi ɓernde, e sinkronisaade wideyooji galleeji mooftaaɗi e sahaa goonga.';

  @override
  String get home_allow_health => 'Jaɓ Jokkondire Cellal';

  @override
  String get home_ready_mindful_day => 'Heɓde ñalawma hakkille? ✨';

  @override
  String get home_quick_add => 'Ɓeydu Jaawndu';

  @override
  String get home_live_gps => 'GPS gonɗo e nguurndam';

  @override
  String get home_calories_remaining_label => 'KALORII HEDDIIƊI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ñaamde: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap ngam Ƴeewndo Ndiyam 💧';

  @override
  String get home_water_goal_reached => 'Faandaare ñalnde kala yettiima 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml to gollal ñalnde kala';
  }

  @override
  String get home_details => 'Detaayuuji';

  @override
  String get home_upgrade_plan_desc =>
      'Ɓeydu ngam udditude paandaale keertiiɗe ñalnde kala & peeje AI';

  @override
  String get home_unlock => 'Uddit 👑';

  @override
  String get home_quick_log_hint => 'Yaawno winndude naatgol wellitaare';

  @override
  String get food_serving_size => 'Njaajeendi Serwiis';

  @override
  String get food_serving_grams => 'Kuugal (g)';

  @override
  String get food_number_servings => 'Limre Sarwisaaji';

  @override
  String get food_calories_per_serving => 'Kaloriiji e kala ñamri';

  @override
  String get food_recipe_ingredients => 'Ko woni heen';

  @override
  String get food_recipe_add_ingredient => 'Ɓeydu heen ko woni heen';

  @override
  String get food_recipe_directions => 'Jamirooje & Teskorɗe';

  @override
  String get food_recipe_total => 'Total Resetaaji ñamri';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast => 'Nyaamdu aadaaji hisnaama e nafoore!';

  @override
  String get food_barcode_found => 'Geɗel ngel tawaama!';

  @override
  String get food_barcode_not_found_desc =>
      'En mbaawaano yiytude ndeeɗoo kod bar e nder lowre udditiinde. Aɗa waawi ɓeydude ɗum e ñaamdu aada.';

  @override
  String get food_add_custom_btn => 'Ɓeydu heen Ñaamdu Aada';

  @override
  String get food_scan_again => 'Skannde kadi';

  @override
  String get food_review_items => 'Yiylo Ñaamduuji Teskaaɗi';

  @override
  String get food_review_hint => 'Reento keewal walla ittude kala ko anndaaka';

  @override
  String get food_log_selected => 'Log Nyaamduuji cuɓaaɗi';

  @override
  String get food_favourites_title => 'Nyaamduuji ɓurɗi yiɗeede';

  @override
  String get food_recent_title => 'Ñaamduuji ɓooyɗi';

  @override
  String get food_no_favourites =>
      'Alaa ñaamdu ɓurndu yiɗeede tawo. Tap ɓernde e kala ñaamdu ngam hisnude ɗoo.';

  @override
  String get food_no_recents => 'Alaa ñaamduuji limtaaɗi ko ɓooyaani tawaa.';

  @override
  String get food_nutrition_details_title => 'Detaayuuji ñamri ñalnde kala';

  @override
  String get food_macro_protein_label => 'Ko ɓuuɓri poroteyiin';

  @override
  String get food_macro_carbs_label => 'Karbs Ɓooygol';

  @override
  String get food_macro_fat_label => 'Feccere Fat';

  @override
  String get food_macro_fiber_label => 'Fiɓnde Ɓooygol';

  @override
  String get food_daily_target_comparison => 'Njiylawu Target';

  @override
  String food_target_label(Object target) {
    return 'Faandaare: $target';
  }

  @override
  String get food_edit_entry => 'Waylu Naatgol Jaaynde';

  @override
  String get food_delete_entry => 'Mumtu Naatgol';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal ko kaal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current mo $target ml';
  }

  @override
  String get water_intake_history => 'Hannde Loggi Ndiyam';

  @override
  String get water_no_logs_today =>
      'Alaa ndiyam ɓuuɓɗam haa hannde. Hidrate e tappude butoŋ ɓeydugol yaawngol!';

  @override
  String get water_adjust_goal => 'Njuɓɓin Golle Ñalawma kala';

  @override
  String get health_connect_banner => 'Jokkondirde e Jokkondirde Cellal';

  @override
  String get health_vitals_summary => 'Vitals cellal ñalnde kala';

  @override
  String get health_latest_heart_rate => 'Ɓernde cakkitiinde';

  @override
  String get health_latest_bp => 'Ƴiiƴam';

  @override
  String get health_latest_spo2 => 'Oksijen ƴiiƴam';

  @override
  String get health_latest_glucose => 'Suukara e nder ƴiiƴam';

  @override
  String get health_latest_weight => 'Teddeendi';

  @override
  String get health_latest_sleep => 'Duuɓi ɗanngal';

  @override
  String get health_add_manual => 'Ɓeydu Fotde Juuɗe';

  @override
  String get health_history_trends => 'Jaambaraagal Daartol';

  @override
  String get health_sync_success => 'Dowlaaji cellal sinkronisaama no moƴƴi!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours waktuuji $mins hojomaaji';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilooji';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm ɓuuɓol';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic/$diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title => 'Kaɓirɗe jokkondirɗe e ɓoorneteeɗe';

  @override
  String get health_devices_desc =>
      'Njuɓɓudi waktuuji smartwatches, rewindaade fitinaaji, e sensorji cellal.';

  @override
  String get health_workout_editor_title => 'Waylu golle';

  @override
  String get health_workout_name_label => 'Innde golle';

  @override
  String get health_workout_duration_label => 'Duuɓi (hojomaaji)';

  @override
  String get health_workout_calories_label => 'Kaloriiji limtaaɗi (kcal)';

  @override
  String get health_workout_date_label => 'Ñalngu e Waktu';

  @override
  String get plan_daily_wellness_roadmap => 'Kartal laawol maa keeriiɗo';

  @override
  String get plan_morning_routine => 'Subaka ko njuɓɓudi';

  @override
  String get plan_afternoon_routine => 'Wellitaare hakkunde ñalawma';

  @override
  String get plan_evening_routine => 'Jamma Henndu-Dow';

  @override
  String get plan_coach_badge => 'Koolaaɗo kuuɓal AI Bloomi';

  @override
  String get plan_weekly_overview => 'Focus Wellitaare Ñalɗi 7';

  @override
  String get plan_targets_title => 'Wellitaare Paandaale & Golle';

  @override
  String get plan_calorie_budget_label => 'Bidsee Kaloriiji ñalnde kala';

  @override
  String get plan_water_budget_label => 'Target ndiyam ñalnde kala';

  @override
  String get plan_step_budget_label => 'Golle Ɗatal Ñalawma';

  @override
  String get plan_macro_split_label => 'Rajo makronutrient';

  @override
  String get profile_personal_details => 'Detaayuuji neɗɗo';

  @override
  String get profile_body_stats => 'Pooɗondiral ɓanndu';

  @override
  String get profile_app_preferences => 'Cuɓe & Cuɓe App';

  @override
  String get profile_edit_name_hint => 'Innde maa';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Toowgol (_PH_0__)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Teddeendi (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Duuɓi';

  @override
  String get profile_gender_male => 'Gorko';

  @override
  String get profile_gender_female => 'Debbo';

  @override
  String get profile_gender_other => 'Goɗɗum / Yiɗde waasde wiyde';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Seɗɗa walla alaa ekkorse)';

  @override
  String get profile_activity_light => 'Ko famɗi fof (balɗe 1-3/aset)';

  @override
  String get profile_activity_moderate =>
      'Ko ɓuri heewde e golle (balɗe 3-5/aset)';

  @override
  String get profile_activity_very => 'Ina golloo no feewi (balɗe 6-7/yontere)';

  @override
  String get settings_wear_os_header => 'Ɓorno OS App Sehil';

  @override
  String get settings_wear_os_desc =>
      'Sos tile Bloomi e caɗeele e waktu maa Wear OS ngam ƴeewde kaloriiji, ndiyam, e paɗe.';

  @override
  String get settings_widgets_header => 'Widgetuuji Android jokkondirɗi';

  @override
  String get settings_widgets_desc =>
      'Pin wideyooji sahaa goonga e ekran jaɓɓorgal kaɓirgol maa ngam kesɗitinde ɗoon e ɗoon.';

  @override
  String get settings_about_header => 'Ko fayti e Bloomi';

  @override
  String get settings_about_version => 'Jaaynde 1.0.0';

  @override
  String get settings_about_build => 'Mahi 100';

  @override
  String get settings_about_credits =>
      'Feewnaa ko e hakkille ngam nguurndam hakkille, celluɗam.';

  @override
  String get settings_terms_header => 'Sarɗiiji e sarɗiiji';

  @override
  String get settings_privacy_header => 'Politik sirlu';

  @override
  String get settings_delete_header => 'Mumtu Konte e Dowlaaji';

  @override
  String get settings_delete_warning =>
      'Ngolɗoo gollal waawaa ustaade. Denndaangal nyaamdu maa, golle maa, vitals maa, e profil maa fof maa momte haa abada.';

  @override
  String get settings_delete_confirm_btn => 'Mumtu haa abada';

  @override
  String get onboard_welcome_headline => 'On njaaraama e Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Leefɗi, hakkille wellitaare rewindaade fawaade e nguurndam maa.';

  @override
  String get onboard_step_about => 'Ko fayti e Ma';

  @override
  String get onboard_step_goals => 'Golle mon';

  @override
  String get onboard_step_lifestyle => 'Aadaaji ñalnde kala';

  @override
  String get onboard_step_permissions => 'Jamirooje';

  @override
  String get onboard_step_plan => 'Heewi!';

  @override
  String get onboard_health_connect_perm => 'Cellal Jokkondirde e Heɓde';

  @override
  String get onboard_step_sensors_perm => 'Sensor limto ɗaɗol';

  @override
  String get onboard_notif_perm => 'Siftorde & Notifikaasiyoŋ Hakkille';

  @override
  String get onboard_camera_perm => 'Kamera (Kod Bar & Skaner Nguura)';

  @override
  String get onboard_grant_permissions => 'Hokku Jamirooje';

  @override
  String get onboard_continue_dashboard => 'Uddit Daasbordo';

  @override
  String get notif_channel_hydration_name => 'Nudges Hidraasiyoŋ';

  @override
  String get notif_channel_hydration_desc =>
      'Siftorde ndiyam ɓuuɓɗam e nder ñalawma hee fof';

  @override
  String get notif_channel_nutrition_name => 'Siftorde Nyaamdu & Nyaamdu';

  @override
  String get notif_channel_nutrition_desc =>
      'Jeertinaango siftorde ñaamde subaka, ñaamde kikiiɗe, e kikiiɗe';

  @override
  String get notif_channel_steps_name => 'Ɗatal Mile';

  @override
  String get notif_channel_steps_desc =>
      'Mawningol nde yettii paandaale step ñalnde kala';

  @override
  String get notif_channel_vitals_name => 'Cellal & Ƴeewndorɗe Nguurndam';

  @override
  String get notif_channel_vitals_desc =>
      'Teddeendi e lelnde henndu-dow siftorde';

  @override
  String get notif_action_log_water => '💧 Ko +250ml';

  @override
  String get notif_action_snooze => 'Ɗuuɗal 15m';

  @override
  String get notif_action_log_meal => '🥗 Nyaamdu Log';

  @override
  String get language => 'Ɗemngal';

  @override
  String get share => 'Renndinde';

  @override
  String common_days(Object count) {
    return '$count ko adii';
  }
}
