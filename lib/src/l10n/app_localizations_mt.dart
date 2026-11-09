// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maltese (`mt`).
class AppLocalizationsMt extends AppLocalizations {
  AppLocalizationsMt([String locale = 'mt']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Dar';

  @override
  String get nav_today => 'Illum';

  @override
  String get nav_plan => 'Pjan';

  @override
  String get nav_food => 'Ikel';

  @override
  String get nav_food_diary => 'Djarju tal-Ikel';

  @override
  String get nav_workout => 'Ħjiel ta\' Workout';

  @override
  String get nav_health => 'Saħħa';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Ħlief';

  @override
  String get cancel => 'Ikkanċella';

  @override
  String get delete => 'Ħassar';

  @override
  String get edit => 'Editja';

  @override
  String get done => 'Magħmul';

  @override
  String get close => 'Agħlaq';

  @override
  String get back => 'Lura';

  @override
  String get next => 'Li jmiss';

  @override
  String get continue_btn => 'Kompli';

  @override
  String get confirm => 'Ikkonferma';

  @override
  String get search => 'Fittex';

  @override
  String get filter => 'Iffiltra';

  @override
  String get all => 'Kollha';

  @override
  String get active => 'Attiva';

  @override
  String get today => 'Illum';

  @override
  String get yesterday => 'Ilbieraħ';

  @override
  String get tomorrow => 'Għada';

  @override
  String get add => 'Żid';

  @override
  String get remove => 'Neħħi';

  @override
  String get refresh => 'Aġġorna';

  @override
  String get retry => 'Ipprova mill-ġdid';

  @override
  String get error => 'Żball';

  @override
  String get success => 'Suċċess';

  @override
  String get loading => 'Tagħbija...';

  @override
  String get no_data => 'L-ebda dejta disponibbli';

  @override
  String get offline => 'Modalità Offline';

  @override
  String get offline_sub =>
      'Il-bidliet se jissinkronizzaw ladarba jerġgħu jiġu konnessi';

  @override
  String get undo => 'Ħoll';

  @override
  String get portion => 'Porzjon';

  @override
  String get quantity => 'Kwantità';

  @override
  String get unit => 'Unità';

  @override
  String get clear => 'Ċara';

  @override
  String get select => 'Agħżel';

  @override
  String get apply => 'Applika';

  @override
  String get reset => 'Irrisettja';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Iva';

  @override
  String get no => 'Nru';

  @override
  String get optional => 'Fakultattiv';

  @override
  String get calories => 'Kaloriji';

  @override
  String get protein => 'Proteina';

  @override
  String get carbs => 'Karboidrati';

  @override
  String get fat => 'Xaħam';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Ilma';

  @override
  String get steps => 'Passi';

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
  String get centimeters => 'ċm';

  @override
  String get inches => 'fi';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'sigħat';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Isservi';

  @override
  String get servings => 'Porzjonijiet';

  @override
  String get serving_size => 'Daqs tas-Servizz';

  @override
  String get per_100g => 'għal kull 100g';

  @override
  String get india => 'l-Indja';

  @override
  String get asia => 'Asja';

  @override
  String get europe => 'Ewropa';

  @override
  String get middle_east => 'Lvant Nofsani';

  @override
  String get africa => 'l-Afrika';

  @override
  String get americas => 'l-Amerika';

  @override
  String get home_title => 'Dar';

  @override
  String get home_greeting_morning => 'Il-Jum it-Tajjeb';

  @override
  String get home_greeting_afternoon => 'Wara nofsinhar it-tajjeb';

  @override
  String get home_greeting_evening => 'Il-lejla t-tajba';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jiem serje',
      one: '1 jum Streak',
      zero: '0 ijiem streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Maħruq';

  @override
  String get home_calories_budget => 'Baġit tal-kaloriji';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal fadal';
  }

  @override
  String get home_water_title => 'Idratazzjoni ta \'Kuljum';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Passi Mixi';

  @override
  String get home_quick_actions => 'Azzjonijiet Mgħaġġla';

  @override
  String get home_log_meal => 'Log Ikla';

  @override
  String get home_log_water => 'Log Ilma';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Piż tal-Lokk';

  @override
  String get home_insights_title => 'L-Intuwizzjonijiet tal-lum';

  @override
  String get home_quote =>
      'Għażliet b\'saħħithom żgħar joħolqu trasformazzjonijiet li jiffjorixxu.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Inħawi u Arja';

  @override
  String get home_notifications => 'Notifiki';

  @override
  String get home_daily_score => 'Punteġġ tal-Benessri ta \'Kuljum';

  @override
  String get home_view_all => 'Ara Kollha';

  @override
  String get food_diary_title => 'Djarju tal-Ikel';

  @override
  String get food_breakfast => 'Kolazzjon';

  @override
  String get food_lunch => 'Ikla';

  @override
  String get food_dinner => 'Pranzu';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Żid l-Ikel';

  @override
  String get food_edit_food => 'Editja l-Ikel';

  @override
  String get food_add_breakfast => 'Żid Kolazzjon';

  @override
  String get food_add_lunch => 'Żid Ikla';

  @override
  String get food_add_dinner => 'Żid Pranzu';

  @override
  String get food_add_snack => 'Żid Snack';

  @override
  String get food_total_calories => 'Kaloriji totali';

  @override
  String get food_empty_meal =>
      'Għadu l-ebda ikel ma illoggjat għal din l-ikla';

  @override
  String get food_empty_diary => 'Ebda ikliet illoggjati għal din il-ġurnata';

  @override
  String get food_log_first_meal =>
      'Tektek + biex tilloggja l-ewwel ikla delizzjuża tiegħek';

  @override
  String get food_quick_add => 'Żid malajr';

  @override
  String get food_search_hint => 'Fittex platti, frott, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom Food & Ricetta';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'Skaner tal-Ikel AI';

  @override
  String get food_recent => 'Ikel riċenti';

  @override
  String get food_favourites => 'Favoriti';

  @override
  String get food_macro_summary => 'Tqassim tal-makronutrijenti';

  @override
  String get food_delete_meal_confirm =>
      'Int żgur li trid tneħħi dan l-oġġett?';

  @override
  String get food_item_deleted => 'Oġġett tal-ikel imneħħi';

  @override
  String get food_remaining => 'fadal';

  @override
  String get food_consumed => 'ikkunsmat';

  @override
  String food_of_target(Object target) {
    return 'ta\' $target kcal';
  }

  @override
  String get foodSearch_title => 'Fittex Ikel';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Ikel Ritratt';

  @override
  String get foodSearch_custom_food => 'Oħloq Ikel Custom';

  @override
  String get foodSearch_recent_searches => 'Tfittxijiet riċenti';

  @override
  String get foodSearch_popular => 'Dixxijiet Popolari';

  @override
  String get foodSearch_no_results =>
      'Ebda ikel li jaqbel mat-tfittxija tiegħek';

  @override
  String get barcode_title => 'Skaner tal-Barcode';

  @override
  String get barcode_align => 'Allinja barcode ġewwa l-qafas tal-kamera';

  @override
  String get barcode_not_found => 'Prodott ma nstabx fid-database';

  @override
  String get barcode_premium_feature =>
      'L-iskannjar tal-barcode huwa disponibbli bi Bloomi Pro';

  @override
  String get camera_title => 'Skaner tal-Ikel AI';

  @override
  String get camera_tap_hint => 'Ħu ritratt ċar tad-dixx tiegħek';

  @override
  String get camera_analysing => 'L-analiżi tal-pjanċa tal-ikel...';

  @override
  String get camera_detected => 'Oġġetti misjuba';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Erġa\' Ħu Ritratt';

  @override
  String get camera_confirm_food => 'Ikkonferma l-Oġġetti';

  @override
  String get customFood_title => 'Custom Food & Ricetta';

  @override
  String get customFood_name_hint => 'Isem id-dixx jew l-ingredjent';

  @override
  String get customFood_calories_hint => 'Kaloriji (kcal)';

  @override
  String get customFood_protein_hint => 'Proteina (g)';

  @override
  String get customFood_carbs_hint => 'Karboidrati (g)';

  @override
  String get customFood_fat_hint => 'Xaħam (g)';

  @override
  String get customFood_save => 'Ħlief Riċetta';

  @override
  String get water_tracker_title => 'Tracker tal-Ilma';

  @override
  String get water_daily_target => 'Għan ta \'Idratazzjoni ta\' Kuljum';

  @override
  String get water_logged_today => 'Logged Illum';

  @override
  String get water_add_glass => '+250 ml Ħġieġ';

  @override
  String get water_add_bottle => '+500 ml Flixkun';

  @override
  String get water_custom_amount => 'Ammont tad-dwana';

  @override
  String get water_reminder_tip =>
      'Ixrob l-ilma regolarment matul il-ġurnata għal enerġija kostanti.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml ta\' ilma 💧';
  }

  @override
  String get workout_title => 'Ħjiel ta\' Workout';

  @override
  String get workout_add_exercise => 'Żid Workout';

  @override
  String get workout_cardio => 'Kardjo';

  @override
  String get workout_strength => 'Qawwa';

  @override
  String get workout_yoga => 'Yoga & Flessibilità';

  @override
  String get workout_duration => 'Tul ta\' żmien';

  @override
  String get workout_intensity => 'Intensità';

  @override
  String get workout_calories_burned => 'Kaloriji maħruqa';

  @override
  String get workout_empty => 'Ebda workouts illoggjat illum';

  @override
  String get workout_save_success => 'Workout salvat b\'suċċess!';

  @override
  String get workout_type => 'Tip ta\' Workout';

  @override
  String get workout_notes => 'Noti u Riflessjonijiet';

  @override
  String get health_overview_title => 'Saħħa u Vitali';

  @override
  String get health_heart_rate => 'Rata tal-Qalb';

  @override
  String get health_blood_oxygen => 'Ossiġenu tad-Demm (SpO2)';

  @override
  String get health_blood_pressure => 'Pressjoni tad-Demm';

  @override
  String get health_blood_glucose => 'Glukożju fid-Demm';

  @override
  String get health_body_temperature => 'Temperatura tal-Korp';

  @override
  String get health_sleep_tracking => 'Traċċar tal-irqad';

  @override
  String get health_weight_tracking => 'Piż u Kompożizzjoni tal-Korp';

  @override
  String get health_waist_hip => 'Proporzjon tal-qadd għall-ġenbejn';

  @override
  String get health_devices_hub => 'Apparat & Smartwatch Hub';

  @override
  String get health_sync_now => 'Issinkronizza Data tas-Saħħa';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'L-aħħar sinkronizzat: $time';
  }

  @override
  String get health_manual_entry => 'Dħul tas-Saħħa manwali';

  @override
  String get health_metric_detail => 'Dettalji Metriċi';

  @override
  String get health_connected_sensors => 'Sensuri tas-Saħħa Konnessi';

  @override
  String get plan_title => 'Pjan ta \'Kuljum';

  @override
  String get plan_weekly_title => 'Pjan ta\' Benessri ta\' kull ġimgħa';

  @override
  String get plan_calorie_target => 'Mira tal-kaloriji';

  @override
  String get plan_water_target => 'Mira ta\' Idrazzjoni';

  @override
  String get plan_step_target => 'Target Pass';

  @override
  String get plan_sleep_target => 'Mira tal-Irqad';

  @override
  String get plan_meal_suggestions => 'Suġġerimenti għall-Ikla';

  @override
  String get plan_healthy_habits => 'Drawwiet Sani u Għajnuniet';

  @override
  String get plan_coach_advice => 'Rakkomandazzjonijiet tal-Coach Bloomi AI';

  @override
  String get plan_generated_title => 'Skeda ta\' Kuljum Personalizzata';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Editja Profil';

  @override
  String get profile_name => 'Isem';

  @override
  String get profile_age => 'Età';

  @override
  String get profile_gender => 'Is-sess';

  @override
  String get profile_height => 'Għoli';

  @override
  String get profile_weight => 'Piż';

  @override
  String get profile_goal => 'Għan Primarju';

  @override
  String get profile_activity_level => 'Livell ta\' Attività';

  @override
  String get profile_stats => 'L-Istatistika tal-Benessri Tiegħi';

  @override
  String get profile_saved => 'Profil aġġornat b\'suċċess';

  @override
  String get profile_bmi => 'Indiċi tal-Massa tal-Ġisem (BMI)';

  @override
  String get profile_membership => 'Sħubija';

  @override
  String get settings => 'Settings';

  @override
  String get preferences_habits => 'PREFERENZI U ABITUDJI';

  @override
  String get appearance_theme => 'Dehra u Tema';

  @override
  String get appearance_theme_sub =>
      'Dlam, Dawl, Modalità tas-Sistema u Għażliet tal-Isfond tal-App';

  @override
  String get permissions => 'Permessi u Aċċess għas-Sistema';

  @override
  String get permissions_sub =>
      'Qabbad tas-Saħħa, Sensuri tal-Passi, GPS, Notifiki u Kamera';

  @override
  String get reminders_notifications => 'Tfakkiriet u Notifiki';

  @override
  String get reminders_sub =>
      'Ħinijiet tal-ikel, ilma, check-in tal-piż u tfakkiriet ta’ ħin l-irqad';

  @override
  String get units_of_measurement => 'Unitajiet ta\' Kejl';

  @override
  String get units_sub =>
      'Metriku (kg, ċm, ml, km) jew Imperjali (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Lingwa tal-App';

  @override
  String get language_sub =>
      'Ingliż, हिन्दी (Ħindi), Ħinglish u 195+ lingwa globali';

  @override
  String get home_screen_widgets => 'Widgets tal-Iskrin tad-Dar';

  @override
  String get widgets_sub =>
      'Widgets Android ħajjin: Hub, Passi, Ilma, Nutrizzjoni u Mascot';

  @override
  String get wear_os_watch_app => 'Ilbes OS Watch App';

  @override
  String get wear_os_sub =>
      'Anëillari tal-ismartwatch, madum, kumplikazzjonijiet u vitali ħajjin';

  @override
  String get goals_wellness => 'GĦANIJIET U WELLNESS INSIGHTS';

  @override
  String get nutrition_targets => 'Miri tan-Nutrizzjoni & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Mira ta\' kaloriji, proteini, karboidrati, xaħam u għan ta\' ilma';

  @override
  String get weekly_recap => 'Rikap tal-Benessri ta’ kull ġimgħa';

  @override
  String get weekly_recap_sub =>
      'Medja ta \'kaloriji ta\' 7 ijiem, proporzjon makro u l-aħjar jum';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Fjuri attivi, badges u kisbiet';

  @override
  String get connected_devices => 'APPARATI KONNETTI & EKOSISTEMA';

  @override
  String get devices_hub => 'Apparat & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Inħawi u Temp';

  @override
  String get surroundings_sub =>
      'Kwalità tal-arja (AQI), indiċi UV u pariri dwar l-idratazzjoni tat-temp';

  @override
  String get bloomi_pro => 'Abbonament Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets tal-iskrin tad-dar u traċċar tal-fatturi vitali';

  @override
  String get about_security => 'DWAR & SIGURTÀ';

  @override
  String get about_bloomi => 'Dwar Bloomi';

  @override
  String get about_bloomi_sub =>
      'Ibni speċifikazzjonijiet, verżjoni, attribuzzjonijiet';

  @override
  String get privacy_policy => 'Politika ta\' Privatezza';

  @override
  String get privacy_policy_sub =>
      'L-ewwel offline, arkitettura tad-dejta fuq l-apparat';

  @override
  String get terms_conditions => 'Termini u Kundizzjonijiet';

  @override
  String get terms_conditions_sub =>
      'Termini tas-servizz u linji gwida dwar il-benessri';

  @override
  String get delete_account => 'Ħassar Kont u Data';

  @override
  String get delete_account_sub =>
      'Ħassar b\'mod irreversibbli d-dejta lokali SQLite u l-backups tas-sħab';

  @override
  String get healthy_habits => 'Ibni drawwiet tal-benessri ġentili u dejjiema';

  @override
  String get all_logs => 'Dejta & Zkuk Tracked Tiegħi';

  @override
  String get search_language => 'Fittex bil-lingwa jew b\'kitba indiġena...';

  @override
  String get languages_available => 'Lingwi Disponibbli';

  @override
  String get no_matching_languages =>
      'Ma nstabet l-ebda lingwa li tikkorrispondi';

  @override
  String get try_searching =>
      'Ipprova fittex b\'kitba indiġena jew ortografija bl-Ingliż';

  @override
  String get partially_translated => 'Tradott parzjalment';

  @override
  String get complete_translation => 'Imla';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lingwa ssettjata għal $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Inħawi u Ambjent';

  @override
  String get surroundings_aqi => 'Indiċi tal-Kwalità tal-Arja';

  @override
  String get surroundings_uv => 'Indiċi UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Umdità';

  @override
  String get surroundings_hydration_advice =>
      'Ibqa\' idratat tajjeb fil-kundizzjonijiet tat-temp attwali.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Fittex l-Ikel';

  @override
  String get food_quick_barcode => 'Skennja Barcode 👑';

  @override
  String get food_quick_water => 'Żid l-Ilma';

  @override
  String get food_quick_custom => 'Ikel tad-dwana';

  @override
  String get surroundings_good => 'Tajjeb';

  @override
  String get surroundings_moderate => 'Moderat';

  @override
  String get surroundings_unhealthy => 'Ħżiena għas-saħħa';

  @override
  String get notifications_title => 'Notifiki u Twissijiet';

  @override
  String get notifications_empty => 'Ebda notifiki ġodda';

  @override
  String get notifications_mark_read => 'Immarka Kollha bħala Aqra';

  @override
  String get notifications_clear => 'Ċara Kollha';

  @override
  String get reminders => 'Settings ta\' tfakkira';

  @override
  String get notifications => 'Notifiki';

  @override
  String get reminders_breakfast_title => 'Tifkira għall-kolazzjon 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'L-għodwa t-tajba! Ħin għal kolazzjon nutrittiv fi $time .';
  }

  @override
  String get reminders_lunch_title => 'Tifkira għall-Ikla 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Waqqaf u gawdi ikla bilanċjata u konxja fi $time .';
  }

  @override
  String get reminders_dinner_title => 'Tfakkira tal-Ikla 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Ħin għal ikla ħafifa u sodisfaċenti fi $time .';
  }

  @override
  String get reminders_water_title => 'Idratazzjoni Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Żmien li tixrob tazza ilma frisk! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Użin ta\' kull ġimgħa ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Issegwi l-metriċi tal-ġisem tiegħek ta\' kull ġimgħa fuq Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Ħin l-irqad 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Ħoll u ħejja għal irqad ta\' mistrieħ ( $time ).';
  }

  @override
  String get onboard_welcome => 'Merħba għal Bloomi';

  @override
  String get onboard_sub =>
      'Is-sieħba tiegħek ta\' ħbiberija, offline-ewwel tas-saħħa u n-nutrizzjoni.';

  @override
  String get onboard_get_started => 'Ibda';

  @override
  String get onboard_sign_in => 'Idħol';

  @override
  String get onboard_skip => 'Aqbeż';

  @override
  String get onboard_choose_goal =>
      'X\'inhu l-għan primarju tal-benessri tiegħek?';

  @override
  String get onboard_goal_weight_loss => 'Telf ta \'Piż Ġentili';

  @override
  String get onboard_goal_muscle => 'Gwadan u Qawwa tal-Muskoli';

  @override
  String get onboard_goal_energy => 'Enerġija ta \'Kuljum u Vitalità';

  @override
  String get onboard_goal_habits => 'Tiekol Konxju għas-Saħħa';

  @override
  String get onboard_about_you => 'Għidilna dwarek innifsek';

  @override
  String get onboard_lifestyle => 'Ir-Rutina Tiegħek ta\' Kuljum';

  @override
  String get onboard_permissions_title => 'Permessi u Aċċess għas-Sistema';

  @override
  String get onboard_permissions_sub =>
      'Agħti aċċess għas-sinkronizzazzjoni tal-passi, workouts, u tfakkiriet.';

  @override
  String get onboard_plan_ready_title => 'Il-Pjan Custom tiegħek huwa Lest!';

  @override
  String get onboard_plan_ready_sub =>
      'Ħdejna pjan direzzjonali dwar in-nutrizzjoni u l-benessri ġentili u personalizzati biss għalik.';

  @override
  String get onboard_enter_bloomi => 'Daħħal Bloomi';

  @override
  String get insights_weekly_report => 'Rikap tal-Benessri ta’ kull ġimgħa';

  @override
  String insights_best_day(Object day) {
    return 'L-Aħjar Jum tal-Konsistenza: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Jinfetaħ fi $date';
  }

  @override
  String get insights_keep_going => 'Żomm il-progress meraviljuż!';

  @override
  String get widgets_title => 'Widgets tal-Iskrin tad-Dar';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets Attivi: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Passi & Ċirku Attiv';

  @override
  String get widgets_water_title => 'Idrazzjoni Quick Log';

  @override
  String get widgets_mascot_title => 'Kumpann tal-Mascot Bloomi';

  @override
  String get wear_os_title => 'Ilbes OS Smartwatch';

  @override
  String get wear_os_connected => 'Konness ma Watch';

  @override
  String get wear_os_sync => 'Issinkronizza Data tal-Għassa';

  @override
  String get theme_title => 'Dehra u Tema';

  @override
  String get theme_mode => 'Modalità Tema';

  @override
  String get theme_light => 'Dawl';

  @override
  String get theme_dark => 'Dlam';

  @override
  String get theme_system => 'Default tas-Sistema';

  @override
  String get theme_background_palette => 'Paletta tal-isfond';

  @override
  String get units_title => 'Unitajiet ta\' Kejl';

  @override
  String get units_metric => 'Metriku (kg, ċm, ml)';

  @override
  String get units_imperial => 'Imperjali (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ma tistax tgħabbi d-dashboard';

  @override
  String get home_health_permission_req =>
      'Permess tal-Konness tas-Saħħa Meħtieġa';

  @override
  String get home_health_permission_desc =>
      'Bloomi teħtieġ permess ta\' Health Connect biex tiġbed passi reali, rata tal-qalb, u tissinkronizza widgets tad-dar mobbli f\'ħin reali.';

  @override
  String get home_allow_health => 'Ħalli Health Connect';

  @override
  String get home_ready_mindful_day => 'Lest għal ġurnata konxja? ✨';

  @override
  String get home_quick_add => 'Żid malajr';

  @override
  String get home_live_gps => 'GPS ħajjin';

  @override
  String get home_calories_remaining_label => 'KALORIJI LI JIBQA\'';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Jittiekel: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tektek għal Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Mira ta\' kuljum milħuqa 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml għall-mira ta\' kuljum';
  }

  @override
  String get home_details => 'Dettalji';

  @override
  String get home_upgrade_plan_desc =>
      'Aġġorna biex nisfruttaw miri personalizzati ta\' kuljum u pjan AI';

  @override
  String get home_unlock => 'Nisfruttaw 👑';

  @override
  String get home_quick_log_hint => 'Irreġistra malajr dħul tal-benessri';

  @override
  String get food_serving_size => 'Daqs tas-Servizz';

  @override
  String get food_serving_grams => 'Jservu (g)';

  @override
  String get food_number_servings => 'Numru ta\' Porzjonijiet';

  @override
  String get food_calories_per_serving => 'Kaloriji għal kull porzjon';

  @override
  String get food_recipe_ingredients => 'Ingredjenti';

  @override
  String get food_recipe_add_ingredient => 'Żid Ingredjent';

  @override
  String get food_recipe_directions => 'Istruzzjonijiet u Noti';

  @override
  String get food_recipe_total => 'Nutrizzjoni Riċetta Totali';

  @override
  String get food_recipe_per_serving => 'Għal kull Serving Nutrizzjoni';

  @override
  String get food_recipe_saved_toast => 'Ikel personalizzat salvat b\'suċċess!';

  @override
  String get food_barcode_found => 'Prodott misjub!';

  @override
  String get food_barcode_not_found_desc =>
      'Ma stajniex insibu dan il-barcode fid-database miftuħa. Tista \'żżidha bħala ikel tad-dwana.';

  @override
  String get food_add_custom_btn => 'Żid Custom Food';

  @override
  String get food_scan_again => 'Scan Again';

  @override
  String get food_review_items => 'Reviżjoni Ikel Individwat';

  @override
  String get food_review_hint =>
      'Aġġusta l-kwantitajiet jew neħħi kwalunkwe oġġett mhux rikonoxxut';

  @override
  String get food_log_selected => 'Log Ikel Magħżul';

  @override
  String get food_favourites_title => 'Ikel favorit';

  @override
  String get food_recent_title => 'Ikel riċenti';

  @override
  String get food_no_favourites =>
      'S\'issa l-ebda ikel favorit. Tektek il-qalb fuq kwalunkwe ikel biex issalva hawn.';

  @override
  String get food_no_recents => 'Ma nstab l-ebda ikel illoggjat reċentement.';

  @override
  String get food_nutrition_details_title =>
      'Dettalji dwar in-Nutrizzjoni ta\' Kuljum';

  @override
  String get food_macro_protein_label => 'Tkissir tal-proteini';

  @override
  String get food_macro_carbs_label => 'Tqassim tal-Carbs';

  @override
  String get food_macro_fat_label => 'Tkissir tax-Xaħam';

  @override
  String get food_macro_fiber_label => 'Tkissir tal-Fibra';

  @override
  String get food_daily_target_comparison => 'Tqabbil tal-Mira';

  @override
  String food_target_label(Object target) {
    return 'Mira: $target';
  }

  @override
  String get food_edit_entry => 'Editja Dħul tad-Djarju';

  @override
  String get food_delete_entry => 'Ħassar Dħul';

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
    return '$current ta\' $target ml';
  }

  @override
  String get water_intake_history => 'Zkuk tal-Ilma tal-lum';

  @override
  String get water_no_logs_today =>
      'Għadu m\'hemmx ilma illoggjat illum. Idrata u tektek buttuna ta\' żid malajr!';

  @override
  String get water_adjust_goal => 'Aġġusta l-Għan ta\' Kuljum';

  @override
  String get health_connect_banner => 'Konnessi ma\' Health Connect';

  @override
  String get health_vitals_summary => 'Vitali tas-Saħħa ta \'Kuljum';

  @override
  String get health_latest_heart_rate => 'L-aħħar Rata tal-Qalb';

  @override
  String get health_latest_bp => 'Pressjoni tad-Demm';

  @override
  String get health_latest_spo2 => 'Ossiġenu tad-Demm';

  @override
  String get health_latest_glucose => 'Glukożju fid-Demm';

  @override
  String get health_latest_weight => 'Piż';

  @override
  String get health_latest_sleep => 'Tul ta\' Sleep';

  @override
  String get health_add_manual => 'Żid Kejl Manwali';

  @override
  String get health_history_trends => 'Xejriet Storiċi';

  @override
  String get health_sync_success =>
      'Id-dejta tas-saħħa ssinkronizzata b\'suċċess!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours sigħat $mins minuti';
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
  String get health_devices_title => 'Apparat Konnessi u Oġġetti li jintlibsu';

  @override
  String get health_devices_desc =>
      'Immaniġġja smartwatches imqabbla, trackers tal-fitness, u sensuri tas-saħħa.';

  @override
  String get health_workout_editor_title => 'Edit Workout';

  @override
  String get health_workout_name_label => 'Isem Workout';

  @override
  String get health_workout_duration_label => 'Tul (minuti)';

  @override
  String get health_workout_calories_label => 'Kaloriji Stimati (kcal)';

  @override
  String get health_workout_date_label => 'Data u Ħin';

  @override
  String get plan_daily_wellness_roadmap =>
      'Il-Pjan Direzzjonali Personalizzat Tiegħek';

  @override
  String get plan_morning_routine => 'Rutina ta’ Filgħodu';

  @override
  String get plan_afternoon_routine => 'Nofs il-Benessri';

  @override
  String get plan_evening_routine => 'Riħ Down filgħaxija';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => 'Fokus tal-Benessri ta\' 7 Ijiem';

  @override
  String get plan_targets_title => 'Miri u Għanijiet tal-Benessri';

  @override
  String get plan_calorie_budget_label => 'Budget ta\' Kaloriji ta\' Kuljum';

  @override
  String get plan_water_budget_label => 'Ilma ta \'Kuljum Mira';

  @override
  String get plan_step_budget_label => 'Għan ta\' Pass ta\' Kuljum';

  @override
  String get plan_macro_split_label => 'Proporzjon ta \'makronutrijenti';

  @override
  String get profile_personal_details => 'Dettalji Personali';

  @override
  String get profile_body_stats => 'Kejl tal-Korp';

  @override
  String get profile_app_preferences => 'Preferenzi u Settings tal-App';

  @override
  String get profile_edit_name_hint => 'Ismek';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Għoli ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Piż ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Età';

  @override
  String get profile_gender_male => 'Raġel';

  @override
  String get profile_gender_female => 'Mara';

  @override
  String get profile_gender_other => 'Oħrajn / Nippreferi ma ngħidx';

  @override
  String get profile_activity_sedentary =>
      'Sedentarja (Ftit jew xejn eżerċizzju)';

  @override
  String get profile_activity_light => 'Attiv ħafif (1-3 ijiem/ġimgħa)';

  @override
  String get profile_activity_moderate => 'Moderament Attiv (3-5 ijiem/ġimgħa)';

  @override
  String get profile_activity_very => 'Attiv ħafna (6-7 ijiem/ġimgħa)';

  @override
  String get settings_wear_os_header => 'Ilbes OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Installa l-madum Bloomi u l-kumplikazzjoni fuq l-arloġġ Wear OS tiegħek biex tagħti daqqa t\'għajn lejn il-kaloriji, l-ilma u l-passi.';

  @override
  String get settings_widgets_header => 'Widgets Android interattivi';

  @override
  String get settings_widgets_desc =>
      'Pin widgets f\'ħin reali fuq l-iskrin tad-dar tat-tagħmir tiegħek għal aġġornamenti immedjati.';

  @override
  String get settings_about_header => 'Dwar Bloomi';

  @override
  String get settings_about_version => 'Verżjoni 1.0.0';

  @override
  String get settings_about_build => 'Ibni 100';

  @override
  String get settings_about_credits =>
      'Magħmul b\'attenzjoni għal għajxien b\'saħħtu u konxju.';

  @override
  String get settings_terms_header => 'Termini u Kundizzjonijiet';

  @override
  String get settings_privacy_header => 'Politika ta\' Privatezza';

  @override
  String get settings_delete_header => 'Ħassar Kont u Data';

  @override
  String get settings_delete_warning =>
      'Din l-azzjoni ma tistax titneħħa. L-ikliet, il-workouts, il-fatturi vitali u l-profil kollha tiegħek se jitħassru b\'mod permanenti.';

  @override
  String get settings_delete_confirm_btn => 'Ħassar b\'mod permanenti';

  @override
  String get onboard_welcome_headline => 'Merħba għal Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Traċċar tal-benessri ġentili u konxju ddisinjat madwar ħajtek.';

  @override
  String get onboard_step_about => 'Dwarek';

  @override
  String get onboard_step_goals => 'L-Għanijiet Tiegħek';

  @override
  String get onboard_step_lifestyle => 'Drawwiet ta \'Kuljum';

  @override
  String get onboard_step_permissions => 'Permessi';

  @override
  String get onboard_step_plan => 'Lest!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Aċċess';

  @override
  String get onboard_step_sensors_perm => 'Pass Counter Sensor';

  @override
  String get onboard_notif_perm => 'Tfakkiriet u Notifiki Konxji';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode u Skaner tal-Ikel)';

  @override
  String get onboard_grant_permissions => 'Agħti Permessi';

  @override
  String get onboard_continue_dashboard => 'Iftaħ Dashboard';

  @override
  String get notif_channel_hydration_name => 'Idratazzjoni Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Tfakkiriet tal-ilma ġentili matul il-ġurnata';

  @override
  String get notif_channel_nutrition_name =>
      'Tfakkiriet dwar l-Ikla u n-Nutrizzjoni';

  @override
  String get notif_channel_nutrition_desc =>
      'Twissijiet ta’ tfakkira għall-kolazzjon, ikla u pranzu';

  @override
  String get notif_channel_steps_name => 'Passi Tragwardi';

  @override
  String get notif_channel_steps_desc =>
      'Ċelebrazzjonijiet meta jintlaħqu l-miri ta \'pass ta\' kuljum';

  @override
  String get notif_channel_vitals_name => 'Kontrolli tas-Saħħa u tal-Vitali';

  @override
  String get notif_channel_vitals_desc => 'Tfakkiriet dwar il-piż u l-irqad';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Ikla';

  @override
  String get language => 'Lingwa';

  @override
  String get share => 'Aqsam';

  @override
  String common_days(Object count) {
    return '$count jum ilu';
  }
}
