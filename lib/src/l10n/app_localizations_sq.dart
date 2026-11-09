// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Shtëpi';

  @override
  String get nav_today => 'Sot';

  @override
  String get nav_plan => 'Planifikoni';

  @override
  String get nav_food => 'Ushqimi';

  @override
  String get nav_food_diary => 'Ditari i ushqimit';

  @override
  String get nav_workout => 'Regjistri i stërvitjes';

  @override
  String get nav_health => 'Shëndeti';

  @override
  String get nav_profile => 'Profili';

  @override
  String get save => 'Ruaj';

  @override
  String get cancel => 'Anulo';

  @override
  String get delete => 'Fshije';

  @override
  String get edit => 'Redakto';

  @override
  String get done => 'U krye';

  @override
  String get close => 'Mbylle';

  @override
  String get back => 'Mbrapa';

  @override
  String get next => 'Tjetra';

  @override
  String get continue_btn => 'Vazhdoni';

  @override
  String get confirm => 'Konfirmo';

  @override
  String get search => 'Kërko';

  @override
  String get filter => 'Filtro';

  @override
  String get all => 'Të gjitha';

  @override
  String get active => 'Aktiv';

  @override
  String get today => 'Sot';

  @override
  String get yesterday => 'Dje';

  @override
  String get tomorrow => 'Nesër';

  @override
  String get add => 'Shtoni';

  @override
  String get remove => 'Hiq';

  @override
  String get refresh => 'Rifresko';

  @override
  String get retry => 'Provo sërish';

  @override
  String get error => 'Gabim';

  @override
  String get success => 'Suksese';

  @override
  String get loading => 'Po ngarkohet...';

  @override
  String get no_data => 'Nuk ka të dhëna të disponueshme';

  @override
  String get offline => 'Modaliteti jashtë linje';

  @override
  String get offline_sub => 'Ndryshimet do të sinkronizohen pasi të rilidhen';

  @override
  String get undo => 'Zhbër';

  @override
  String get portion => 'Porcioni';

  @override
  String get quantity => 'Sasia';

  @override
  String get unit => 'Njësia';

  @override
  String get clear => 'E qartë';

  @override
  String get select => 'Zgjidhni';

  @override
  String get apply => 'Aplikoni';

  @override
  String get reset => 'Rivendos';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'po';

  @override
  String get no => 'Nr';

  @override
  String get optional => 'Fakultative';

  @override
  String get calories => 'Kaloritë';

  @override
  String get protein => 'Proteina';

  @override
  String get carbs => 'Karbohidratet';

  @override
  String get fat => 'Yndyrë';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Uji';

  @override
  String get steps => 'Hapat';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => '£';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'në';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'orë';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Shërbyer';

  @override
  String get servings => 'Shërbimet';

  @override
  String get serving_size => 'Madhësia e shërbimit';

  @override
  String get per_100g => 'për 100 g';

  @override
  String get india => 'Indi';

  @override
  String get asia => 'Azia';

  @override
  String get europe => 'Evropë';

  @override
  String get middle_east => 'Lindja e Mesme';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerikat';

  @override
  String get home_title => 'Shtëpi';

  @override
  String get home_greeting_morning => 'Mirëmëngjes';

  @override
  String get home_greeting_afternoon => 'Mirëdita';

  @override
  String get home_greeting_evening => 'Mirëmbrëma';

  @override
  String get home_streak_title => 'Rripa e lulëzimit';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'seri $count ditësh',
      one: '1 ditë brez',
      zero: '0 ditë brez',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'E djegur';

  @override
  String get home_calories_budget => 'Buxheti i kalorive';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal e mbetur';
  }

  @override
  String get home_water_title => 'Hidratim ditor';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Hapat e ecur';

  @override
  String get home_quick_actions => 'Veprimet e shpejta';

  @override
  String get home_log_meal => 'Ushqimi me log';

  @override
  String get home_log_water => 'Uji i trungut';

  @override
  String get home_log_workout => 'Log stërvitje';

  @override
  String get home_log_weight => 'Pesha e regjistrit';

  @override
  String get home_insights_title => 'Vështrimet e sotme';

  @override
  String get home_quote =>
      'Zgjedhjet e vogla të shëndetshme krijojnë transformime të lulëzuara.';

  @override
  String get home_ai_coach_tip => 'Trajneri i Bloomi AI';

  @override
  String get home_surroundings => 'Rrethinat & Ajri';

  @override
  String get home_notifications => 'Njoftimet';

  @override
  String get home_daily_score => 'Rezultati ditor i mirëqenies';

  @override
  String get home_view_all => 'Shiko të gjitha';

  @override
  String get food_diary_title => 'Ditari i ushqimit';

  @override
  String get food_breakfast => 'Mëngjesi';

  @override
  String get food_lunch => 'Dreka';

  @override
  String get food_dinner => 'Darka';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Shtoni Ushqimin';

  @override
  String get food_edit_food => 'Redakto ushqimin';

  @override
  String get food_add_breakfast => 'Shto Mëngjesi';

  @override
  String get food_add_lunch => 'Shtoni drekën';

  @override
  String get food_add_dinner => 'Shto Darkën';

  @override
  String get food_add_snack => 'Shto Snack';

  @override
  String get food_total_calories => 'Totali i kalorive';

  @override
  String get food_empty_meal =>
      'Nuk është regjistruar ende asnjë ushqim për këtë vakt';

  @override
  String get food_empty_diary =>
      'Nuk është regjistruar asnjë vakt për këtë ditë';

  @override
  String get food_log_first_meal =>
      'Prekni + për të regjistruar vaktin tuaj të parë të shijshëm';

  @override
  String get food_quick_add => 'Shtim i shpejtë';

  @override
  String get food_search_hint => 'Kërko pjata, fruta, dal, roti...';

  @override
  String get food_custom_recipe => 'Ushqim dhe recetë me porosi';

  @override
  String get food_scan_barcode => 'Skanoni barkodin';

  @override
  String get food_camera_scan => 'Skaneri i ushqimit me AI';

  @override
  String get food_recent => 'Ushqimet e fundit';

  @override
  String get food_favourites => 'Të preferuarat';

  @override
  String get food_macro_summary => 'Zbërthimi i makronutrientëve';

  @override
  String get food_delete_meal_confirm =>
      'Je i sigurt që dëshiron ta heqësh këtë artikull?';

  @override
  String get food_item_deleted => 'Artikulli ushqimor u hoq';

  @override
  String get food_remaining => 'mbetur';

  @override
  String get food_consumed => 'konsumuar';

  @override
  String food_of_target(Object target) {
    return 'prej $target kcal';
  }

  @override
  String get foodSearch_title => 'Kërko ushqime';

  @override
  String get foodSearch_scan_barcode => 'Skanoni barkodin';

  @override
  String get foodSearch_take_photo => 'Foto e ushqimit të parakohshëm';

  @override
  String get foodSearch_custom_food => 'Krijoni ushqim të personalizuar';

  @override
  String get foodSearch_recent_searches => 'Kërkimet e fundit';

  @override
  String get foodSearch_popular => 'Pjata popullore';

  @override
  String get foodSearch_no_results =>
      'Nuk ka ushqime që përputhen me kërkimin tuaj';

  @override
  String get barcode_title => 'Skaneri i barkodit';

  @override
  String get barcode_align => 'Vendosni barkodin brenda kornizës së kamerës';

  @override
  String get barcode_not_found => 'Produkti nuk u gjet në bazën e të dhënave';

  @override
  String get barcode_premium_feature =>
      'Skanimi i barkodit ofrohet me Bloomi Pro';

  @override
  String get camera_title => 'Skaneri i ushqimit me AI';

  @override
  String get camera_tap_hint => 'Bëni një foto të qartë të pjatës suaj';

  @override
  String get camera_analysing => 'Duke analizuar pjatën e ushqimit...';

  @override
  String get camera_detected => 'Artikujt e zbuluar';

  @override
  String get camera_flash => 'Ndrysho Flash';

  @override
  String get camera_retake => 'Rimerr foton';

  @override
  String get camera_confirm_food => 'Konfirmo artikujt';

  @override
  String get customFood_title => 'Ushqim dhe recetë me porosi';

  @override
  String get customFood_name_hint => 'Emri i gjellës ose përbërësit';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Proteina (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidratet (g)';

  @override
  String get customFood_fat_hint => 'Yndyrë (g)';

  @override
  String get customFood_save => 'Ruaj recetën';

  @override
  String get water_tracker_title => 'Gjurmues uji';

  @override
  String get water_daily_target => 'Objektivi ditor i hidratimit';

  @override
  String get water_logged_today => 'I regjistruar sot';

  @override
  String get water_add_glass => '+250 ml gotë';

  @override
  String get water_add_bottle => 'Shishe +500 ml';

  @override
  String get water_custom_amount => 'Shuma e personalizuar';

  @override
  String get water_reminder_tip =>
      'Pini ujë rregullisht gjatë gjithë ditës për energji të qëndrueshme.';

  @override
  String water_logged_toast(Object amount) {
    return 'Regjistruar $amount ml ujë 💧';
  }

  @override
  String get workout_title => 'Regjistri i stërvitjes';

  @override
  String get workout_add_exercise => 'Shto stërvitje';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Forca';

  @override
  String get workout_yoga => 'Yoga & Fleksibilitet';

  @override
  String get workout_duration => 'Kohëzgjatja';

  @override
  String get workout_intensity => 'Intensiteti';

  @override
  String get workout_calories_burned => 'Kaloritë e djegura';

  @override
  String get workout_empty => 'Nuk është regjistruar asnjë stërvitje sot';

  @override
  String get workout_save_success => 'Stërvitja u ruajt me sukses!';

  @override
  String get workout_type => 'Lloji i stërvitjes';

  @override
  String get workout_notes => 'Shënime & Reflektime';

  @override
  String get health_overview_title => 'Shëndeti & Vitalet';

  @override
  String get health_heart_rate => 'Frekuenca e zemrës';

  @override
  String get health_blood_oxygen => 'Oksigjeni i gjakut (SpO2)';

  @override
  String get health_blood_pressure => 'Presionin e gjakut';

  @override
  String get health_blood_glucose => 'Glukoza në gjak';

  @override
  String get health_body_temperature => 'Temperatura e trupit';

  @override
  String get health_sleep_tracking => 'Ndjekja e gjumit';

  @override
  String get health_weight_tracking => 'Pesha dhe përbërja e trupit';

  @override
  String get health_waist_hip => 'Raporti mes belit dhe ijeve';

  @override
  String get health_devices_hub => 'Pajisjet dhe qendra e orëve inteligjente';

  @override
  String get health_sync_now => 'Sinkronizoni të dhënat shëndetësore';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Sinkronizimi i fundit: $time';
  }

  @override
  String get health_manual_entry => 'Hyrja manuale e shëndetit';

  @override
  String get health_metric_detail => 'Detajet metrike';

  @override
  String get health_connected_sensors => 'Sensorë shëndetësorë të lidhur';

  @override
  String get plan_title => 'Plani ditor';

  @override
  String get plan_weekly_title => 'Plani javor i mirëqenies';

  @override
  String get plan_calorie_target => 'Synimi i kalorive';

  @override
  String get plan_water_target => 'Objektivi i hidratimit';

  @override
  String get plan_step_target => 'Objektivi i hapit';

  @override
  String get plan_sleep_target => 'Objektivi i gjumit';

  @override
  String get plan_meal_suggestions => 'Sugjerime vaktesh';

  @override
  String get plan_healthy_habits => 'Zakone dhe këshilla të shëndetshme';

  @override
  String get plan_coach_advice => 'Rekomandimet e trajnerit të Bloomi AI';

  @override
  String get plan_generated_title => 'Orari ditor i personalizuar';

  @override
  String get profile_title => 'Profili';

  @override
  String get profile_edit => 'Redakto profilin';

  @override
  String get profile_name => 'Emri';

  @override
  String get profile_age => 'Mosha';

  @override
  String get profile_gender => 'Gjinia';

  @override
  String get profile_height => 'Lartësia';

  @override
  String get profile_weight => 'Pesha';

  @override
  String get profile_goal => 'Qëllimi kryesor';

  @override
  String get profile_activity_level => 'Niveli i aktivitetit';

  @override
  String get profile_stats => 'Statistikat e mia të shëndetit';

  @override
  String get profile_saved => 'Profili u përditësua me sukses';

  @override
  String get profile_bmi => 'Indeksi i masës trupore (BMI)';

  @override
  String get profile_membership => 'Anëtarësimi';

  @override
  String get settings => 'Cilësimet';

  @override
  String get preferences_habits => 'PREFERENCA DHE ZAKONE';

  @override
  String get appearance_theme => 'Pamja & Tema';

  @override
  String get appearance_theme_sub =>
      'Errësirë, dritë, modaliteti i sistemit dhe opsionet e sfondit të aplikacionit';

  @override
  String get permissions => 'Lejet dhe qasja në sistem';

  @override
  String get permissions_sub =>
      'Health Connect, sensorë hapash, GPS, njoftime dhe kamera';

  @override
  String get reminders_notifications => 'Përkujtues dhe njoftime';

  @override
  String get reminders_sub =>
      'Orari i vakteve, uji, kontrolli i peshës dhe rikujtuesit e kohës së gjumit';

  @override
  String get units_of_measurement => 'Njësitë matëse';

  @override
  String get units_sub =>
      'Metrikë (kg, cm, ml, km) ose Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Gjuha e aplikacionit';

  @override
  String get language_sub =>
      'Anglisht, हिन्दी (Hindi), Hinglish dhe 195+ gjuhë globale';

  @override
  String get home_screen_widgets => 'Pajisjet e ekranit bazë';

  @override
  String get widgets_sub =>
      'Veglat e drejtpërdrejta të Android: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Vishni aplikacionin Watch OS';

  @override
  String get wear_os_sub =>
      'Shoqërues i orës inteligjente, pllaka, komplikime dhe vitale të drejtpërdrejta';

  @override
  String get goals_wellness => 'QËLLIMET DHE VËSHTRIMET E MIRËQESISË';

  @override
  String get nutrition_targets => 'Synimet e të ushqyerit dhe ndarja makro';

  @override
  String get nutrition_targets_sub =>
      'Objektivi i kalorive, proteinave, karbohidrateve, yndyrave dhe ujit';

  @override
  String get weekly_recap => 'Përmbledhje javore Wellness';

  @override
  String get weekly_recap_sub =>
      'Mesatarja e kalorive 7-ditore, raporti makro dhe dita më e mirë';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Vija, distinktivë dhe arritje aktive të lulëzimit';

  @override
  String get connected_devices => 'PAJISJET DHE EKOSISTEMI I LIDHUR';

  @override
  String get devices_hub => 'Pajisjet dhe qendra e orëve inteligjente';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Rrethinat & Moti';

  @override
  String get surroundings_sub =>
      'Cilësia e ajrit (AQI), indeksi UV dhe këshilla për hidratimin e motit';

  @override
  String get bloomi_pro => 'Abonimi në Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Traineri i planit të AI, 5 miniaplikacione të ekranit bazë dhe gjurmim i elementeve jetësore';

  @override
  String get about_security => 'RRETH DHE SIGURISË';

  @override
  String get about_bloomi => 'Rreth Bloomit';

  @override
  String get about_bloomi_sub =>
      'Specifikimet e ndërtimit, versioni, atributet';

  @override
  String get privacy_policy => 'Politika e privatësisë';

  @override
  String get privacy_policy_sub =>
      'Arkitektura e të dhënave jashtë linje, në pajisje';

  @override
  String get terms_conditions => 'Termat & Kushtet';

  @override
  String get terms_conditions_sub =>
      'Kushtet e shërbimit dhe udhëzimet e shëndetit';

  @override
  String get delete_account => 'Fshi llogarinë dhe të dhënat';

  @override
  String get delete_account_sub =>
      'Fshini në mënyrë të pakthyeshme të dhënat lokale të SQLite dhe kopjet rezervë të cloud';

  @override
  String get healthy_habits =>
      'Ndërtoni zakone të buta dhe të qëndrueshme të shëndetit';

  @override
  String get all_logs => 'Të dhënat dhe regjistrat e mi të gjurmuar';

  @override
  String get search_language => 'Kërko sipas gjuhës ose shkrimit vendas...';

  @override
  String get languages_available => 'Gjuhët e disponueshme';

  @override
  String get no_matching_languages => 'Nuk u gjet asnjë gjuhë që përputhet';

  @override
  String get try_searching =>
      'Provoni të kërkoni sipas shkrimit vendas ose drejtshkrimit në anglisht';

  @override
  String get partially_translated => 'Përkthyer pjesërisht';

  @override
  String get complete_translation => 'Kompletuar';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Gjuha u caktua në $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Rrethinat & Mjedisi';

  @override
  String get surroundings_aqi => 'Indeksi i cilësisë së ajrit';

  @override
  String get surroundings_uv => 'Indeksi UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Lagështia';

  @override
  String get surroundings_hydration_advice =>
      'Qëndroni mirë të hidratuar në kushtet aktuale të motit.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Kërko ushqim';

  @override
  String get food_quick_barcode => 'Skanoni barkodin 👑';

  @override
  String get food_quick_water => 'Shtoni ujë';

  @override
  String get food_quick_custom => 'Ushqim me porosi';

  @override
  String get surroundings_good => 'Mirë';

  @override
  String get surroundings_moderate => 'E moderuar';

  @override
  String get surroundings_unhealthy => 'E pashëndetshme';

  @override
  String get notifications_title => 'Njoftimet dhe sinjalizimet';

  @override
  String get notifications_empty => 'Nuk ka njoftime të reja';

  @override
  String get notifications_mark_read => 'Shënoni të gjitha si të lexuara';

  @override
  String get notifications_clear => 'Pastro të gjitha';

  @override
  String get reminders => 'Cilësimet e kujtesës';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Kujtesa e mëngjesit 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Mirmengjesi! Koha për një mëngjes ushqyes në $time.';
  }

  @override
  String get reminders_lunch_title => 'Kujtesa e drekës 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Ndalo dhe shijo një drekë të ekuilibruar dhe të kujdesshme në $time.';
  }

  @override
  String get reminders_dinner_title => 'Kujtesa e darkës 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Koha për një darkë të lehtë dhe të kënaqshme në $time.';
  }

  @override
  String get reminders_water_title => 'Nxitje hidratimi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Koha për të pirë një gotë ujë të freskët! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Peshimi javor ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Gjurmo matjet javore të trupit në Bloomi ( $time).';
  }

  @override
  String get reminders_sleep_title => 'Përfundim i kohës së gjumit 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Çlodheni dhe përgatituni për një gjumë të qetë ( $time).';
  }

  @override
  String get onboard_welcome => 'Mirë se vini në Bloomi';

  @override
  String get onboard_sub =>
      'Shoku juaj miqësor, i pari jashtë linje për shëndetin dhe ushqimin.';

  @override
  String get onboard_get_started => 'Filloni';

  @override
  String get onboard_sign_in => 'Hyni';

  @override
  String get onboard_skip => 'Kapërce';

  @override
  String get onboard_choose_goal =>
      'Cili është qëllimi juaj kryesor i shëndetit?';

  @override
  String get onboard_goal_weight_loss => 'Humbje e lehtë në peshë';

  @override
  String get onboard_goal_muscle => 'Fitimi dhe Forca e Muskujve';

  @override
  String get onboard_goal_energy => 'Energji dhe vitalitet ditore';

  @override
  String get onboard_goal_habits => 'Ushqimi i shëndetshëm i ndërgjegjshëm';

  @override
  String get onboard_about_you => 'Na tregoni për veten tuaj';

  @override
  String get onboard_lifestyle => 'Rutina juaj ditore';

  @override
  String get onboard_permissions_title => 'Lejet dhe qasja në sistem';

  @override
  String get onboard_permissions_sub =>
      'Jep qasje në hapat e sinkronizimit, stërvitjet dhe rikujtuesit.';

  @override
  String get onboard_plan_ready_title =>
      'Plani juaj i personalizuar është gati!';

  @override
  String get onboard_plan_ready_sub =>
      'Ne krijuam një udhërrëfyes të butë, të personalizuar të ushqyerjes dhe mirëqenies vetëm për ju.';

  @override
  String get onboard_enter_bloomi => 'Hyni në Bloomi';

  @override
  String get insights_weekly_report => 'Përmbledhje javore Wellness';

  @override
  String insights_best_day(Object day) {
    return 'Dita më e mirë e konsistencës: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'U shkyç në $date';
  }

  @override
  String get insights_keep_going => 'Vazhdoni përparimin fantastik!';

  @override
  String get widgets_title => 'Pajisjet e ekranit bazë';

  @override
  String widgets_active_count(Object count) {
    return 'Miniaplikacionet aktive: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Hapat & Unaza aktive';

  @override
  String get widgets_water_title => 'Regjistri i shpejtë i hidratimit';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Vishni orë inteligjente me OS';

  @override
  String get wear_os_connected => 'Lidhur me Watch';

  @override
  String get wear_os_sync => 'Sinkronizoni të dhënat e orës';

  @override
  String get theme_title => 'Pamja & Tema';

  @override
  String get theme_mode => 'Modaliteti i temës';

  @override
  String get theme_light => 'Drita';

  @override
  String get theme_dark => 'E errët';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Paleta e sfondit';

  @override
  String get units_title => 'Njësitë matëse';

  @override
  String get units_metric => 'Metrikë (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Paneli i kontrollit nuk mund të ngarkohet';

  @override
  String get home_health_permission_req => 'Kërkohet leje Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi kërkon lejen e Health Connect për të tërhequr hapa realë, rrahje të zemrës dhe për të sinkronizuar miniaplikacionet e shtëpisë celulare në kohë reale.';

  @override
  String get home_allow_health => 'Lejo Health Connect';

  @override
  String get home_ready_mindful_day => 'Gati për një ditë të ndërgjegjshme? ✨';

  @override
  String get home_quick_add => 'Shtim i shpejtë';

  @override
  String get home_live_gps => 'GPS drejtpërdrejt';

  @override
  String get home_calories_remaining_label => 'KALORITË E MBETUR';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'E ngrënë: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Trokit për gjurmues uji 💧';

  @override
  String get home_water_goal_reached => 'Qëllimi ditor u arrit 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml në objektivin ditor';
  }

  @override
  String get home_details => 'Detajet';

  @override
  String get home_upgrade_plan_desc =>
      'Përmirësojeni për të zhbllokuar objektivat e personalizuara ditore dhe planin e AI';

  @override
  String get home_unlock => 'Zhblloko 👑';

  @override
  String get home_quick_log_hint => 'Regjistroni shpejt një hyrje të shëndetit';

  @override
  String get food_serving_size => 'Madhësia e shërbimit';

  @override
  String get food_serving_grams => 'Shërbim (g)';

  @override
  String get food_number_servings => 'Numri i servirjeve';

  @override
  String get food_calories_per_serving => 'Kalori për porcion';

  @override
  String get food_recipe_ingredients => 'Përbërësit';

  @override
  String get food_recipe_add_ingredient => 'Shtoni përbërës';

  @override
  String get food_recipe_directions => 'Udhëzime & Shënime';

  @override
  String get food_recipe_total => 'Të ushqyerit me recetë totale';

  @override
  String get food_recipe_per_serving => 'Ushqimi për shërbim';

  @override
  String get food_recipe_saved_toast =>
      'Ushqimi i personalizuar u ruajt me sukses!';

  @override
  String get food_barcode_found => 'Produkti u gjet!';

  @override
  String get food_barcode_not_found_desc =>
      'Nuk mundëm ta gjenim këtë barkod në bazën e të dhënave të hapur. Mund ta shtoni si ushqim me porosi.';

  @override
  String get food_add_custom_btn => 'Shtoni ushqim të personalizuar';

  @override
  String get food_scan_again => 'Skano përsëri';

  @override
  String get food_review_items => 'Rishikoni ushqimet e zbuluara';

  @override
  String get food_review_hint =>
      'Rregulloni sasitë ose hiqni çdo artikull të panjohur';

  @override
  String get food_log_selected => 'Regjistro ushqimet e zgjedhura';

  @override
  String get food_favourites_title => 'Ushqimet e preferuara';

  @override
  String get food_recent_title => 'Ushqimet e fundit';

  @override
  String get food_no_favourites =>
      'Nuk ka ende ushqime të preferuara. Prekni zemrën mbi çdo ushqim për ta ruajtur këtu.';

  @override
  String get food_no_recents =>
      'Nuk u gjetën ushqime të regjistruara kohët e fundit.';

  @override
  String get food_nutrition_details_title => 'Detajet e të ushqyerit ditor';

  @override
  String get food_macro_protein_label => 'Zbërthimi i proteinave';

  @override
  String get food_macro_carbs_label => 'Ndarja e karbohidrateve';

  @override
  String get food_macro_fat_label => 'Ndarja e yndyrës';

  @override
  String get food_macro_fiber_label => 'Ndarja e fibrave';

  @override
  String get food_daily_target_comparison => 'Krahasimi i synimeve';

  @override
  String food_target_label(Object target) {
    return 'Objektivi: $target';
  }

  @override
  String get food_edit_entry => 'Redakto hyrjen e ditarit';

  @override
  String get food_delete_entry => 'Fshi hyrjen';

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
    return '$current nga $target ml';
  }

  @override
  String get water_intake_history => 'Shkrimet e ujit të sotëm';

  @override
  String get water_no_logs_today =>
      'Nuk ka ujë ende sot. Hidratojeni dhe trokitni lehtë mbi një buton shtimi të shpejtë!';

  @override
  String get water_adjust_goal => 'Rregullo objektivin ditor';

  @override
  String get health_connect_banner => 'Lidhur me Health Connect';

  @override
  String get health_vitals_summary => 'Vitalet Ditore të Shëndetit';

  @override
  String get health_latest_heart_rate => 'Rrahjet më të fundit të zemrës';

  @override
  String get health_latest_bp => 'Presionin e gjakut';

  @override
  String get health_latest_spo2 => 'Oksigjeni i gjakut';

  @override
  String get health_latest_glucose => 'Glukoza në gjak';

  @override
  String get health_latest_weight => 'Pesha';

  @override
  String get health_latest_sleep => 'Kohëzgjatja e gjumit';

  @override
  String get health_add_manual => 'Shto matjen manuale';

  @override
  String get health_history_trends => 'Prirjet historike';

  @override
  String get health_sync_success =>
      'Të dhënat shëndetësore u sinkronizuan me sukses!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours orë $mins min';
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
    return '$val mg/dL';
  }

  @override
  String get health_devices_title =>
      'Pajisjet e lidhura dhe pajisjet e veshura';

  @override
  String get health_devices_desc =>
      'Menaxho orët inteligjente të çiftuara, gjurmuesit e fitnesit dhe sensorët e shëndetit.';

  @override
  String get health_workout_editor_title => 'Redakto stërvitjen';

  @override
  String get health_workout_name_label => 'Emri i stërvitjes';

  @override
  String get health_workout_duration_label => 'Kohëzgjatja (minuta)';

  @override
  String get health_workout_calories_label => 'Kaloritë e vlerësuara (kcal)';

  @override
  String get health_workout_date_label => 'Data dhe Ora';

  @override
  String get plan_daily_wellness_roadmap => 'Udhërrëfyesi juaj i personalizuar';

  @override
  String get plan_morning_routine => 'Rutina e mëngjesit';

  @override
  String get plan_afternoon_routine => 'Wellness mesdite';

  @override
  String get plan_evening_routine => 'Mbrëmje Wind-Down';

  @override
  String get plan_coach_badge => 'Trajneri i Bloomi AI';

  @override
  String get plan_weekly_overview => 'Fokus 7-ditor i shëndetit';

  @override
  String get plan_targets_title => 'Objektivat dhe Qëllimet e Wellness';

  @override
  String get plan_calorie_budget_label => 'Buxheti ditor i kalorive';

  @override
  String get plan_water_budget_label => 'Objektivi ditor i ujit';

  @override
  String get plan_step_budget_label => 'Objektivi i hapit ditor';

  @override
  String get plan_macro_split_label => 'Raporti i makronutrientëve';

  @override
  String get profile_personal_details => 'Të dhënat personale';

  @override
  String get profile_body_stats => 'Matjet e trupit';

  @override
  String get profile_app_preferences =>
      'Preferencat dhe Cilësimet e aplikacionit';

  @override
  String get profile_edit_name_hint => 'Emri juaj';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Lartësia ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Pesha ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Mosha';

  @override
  String get profile_gender_male => 'Mashkull';

  @override
  String get profile_gender_female => 'Femër';

  @override
  String get profile_gender_other => 'Tjetër / Preferoj të mos them';

  @override
  String get profile_activity_sedentary => 'I ulur (pak ose aspak ushtrim)';

  @override
  String get profile_activity_light => 'Pak aktiv (1-3 ditë/javë)';

  @override
  String get profile_activity_moderate => 'Mesatarisht aktiv (3-5 ditë/javë)';

  @override
  String get profile_activity_very => 'Shumë aktiv (6-7 ditë/javë)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Instaloni pllakën Bloomi dhe komplikacionin në orën tuaj Wear OS për të parë kaloritë, ujin dhe hapat.';

  @override
  String get settings_widgets_header => 'Pajisje interaktive Android';

  @override
  String get settings_widgets_desc =>
      'Gozhdoni miniaplikacionet në kohë reale në ekranin bazë të pajisjes tuaj për përditësime të menjëhershme.';

  @override
  String get settings_about_header => 'Rreth Bloomit';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Ndërtoni 100';

  @override
  String get settings_about_credits =>
      'Krijuar me kujdes për një jetë të kujdesshme dhe të shëndetshme.';

  @override
  String get settings_terms_header => 'Termat dhe Kushtet';

  @override
  String get settings_privacy_header => 'Politika e privatësisë';

  @override
  String get settings_delete_header => 'Fshi llogarinë dhe të dhënat';

  @override
  String get settings_delete_warning =>
      'Ky veprim nuk mund të zhbëhet. Të gjitha vaktet, stërvitjet, gjërat jetësore dhe profili juaj do të fshihen përgjithmonë.';

  @override
  String get settings_delete_confirm_btn => 'Fshije përgjithmonë';

  @override
  String get onboard_welcome_headline => 'Mirë se vini në Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Gjurmim i butë dhe i vëmendshëm i mirëqenies i krijuar gjatë gjithë jetës suaj.';

  @override
  String get onboard_step_about => 'Rreth Jush';

  @override
  String get onboard_step_goals => 'Qëllimet tuaja';

  @override
  String get onboard_step_lifestyle => 'Zakonet e përditshme';

  @override
  String get onboard_step_permissions => 'Lejet';

  @override
  String get onboard_step_plan => 'Gati!';

  @override
  String get onboard_health_connect_perm => 'Access Connect Health';

  @override
  String get onboard_step_sensors_perm => 'Sensori numërues i hapave';

  @override
  String get onboard_notif_perm => 'Kujtesa dhe njoftime të ndërgjegjshme';

  @override
  String get onboard_camera_perm => 'Kamera (barkodi dhe skaner i ushqimit)';

  @override
  String get onboard_grant_permissions => 'Jepni leje';

  @override
  String get onboard_continue_dashboard => 'Hap panelin e kontrollit';

  @override
  String get notif_channel_hydration_name => 'Shtytje hidratimi';

  @override
  String get notif_channel_hydration_desc =>
      'Përkujtues të butë uji gjatë gjithë ditës';

  @override
  String get notif_channel_nutrition_name =>
      'Përkujtues për vaktet dhe të ushqyerit';

  @override
  String get notif_channel_nutrition_desc =>
      'Alarmet për kujtesë për mëngjesin, drekën dhe darkën';

  @override
  String get notif_channel_steps_name => 'Pikat e hapit';

  @override
  String get notif_channel_steps_desc =>
      'Festimet kur arrini objektivat e hapave të përditshëm';

  @override
  String get notif_channel_vitals_name => 'Kontrollet shëndetësore dhe vitale';

  @override
  String get notif_channel_vitals_desc =>
      'Përkujtues për uljen e peshës dhe para gjumit';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snoke 15 m';

  @override
  String get notif_action_log_meal => '🥗 Ushqimi me log';

  @override
  String get language => 'Gjuha';

  @override
  String get share => 'Shpërndaje';

  @override
  String common_days(Object count) {
    return '$count ditë më parë';
  }
}
