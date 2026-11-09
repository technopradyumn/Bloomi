// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Haitian Haitian Creole (`ht`).
class AppLocalizationsHt extends AppLocalizations {
  AppLocalizationsHt([String locale = 'ht']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Lakay';

  @override
  String get nav_today => 'Jodi a';

  @override
  String get nav_plan => 'Planifye';

  @override
  String get nav_food => 'Manje';

  @override
  String get nav_food_diary => 'Jounal Manje';

  @override
  String get nav_workout => 'Jounal antrennman';

  @override
  String get nav_health => 'Sante';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Sove';

  @override
  String get cancel => 'Anile';

  @override
  String get delete => 'Efase';

  @override
  String get edit => 'Edit';

  @override
  String get done => 'Fè';

  @override
  String get close => 'Fèmen';

  @override
  String get back => 'Retounen';

  @override
  String get next => 'Next';

  @override
  String get continue_btn => 'Kontinye';

  @override
  String get confirm => 'Konfime';

  @override
  String get search => 'Rechèch';

  @override
  String get filter => 'Filtre';

  @override
  String get all => 'Tout';

  @override
  String get active => 'Aktif';

  @override
  String get today => 'Jodi a';

  @override
  String get yesterday => 'Yè';

  @override
  String get tomorrow => 'Demen';

  @override
  String get add => 'Ajoute';

  @override
  String get remove => 'Retire';

  @override
  String get refresh => 'Rafrechi';

  @override
  String get retry => 'Eseye ankò';

  @override
  String get error => 'Erè';

  @override
  String get success => 'Siksè';

  @override
  String get loading => 'Chaje...';

  @override
  String get no_data => 'Pa gen done ki disponib';

  @override
  String get offline => 'Offline Mode';

  @override
  String get offline_sub => 'Chanjman yo pral senkronize yon fwa rekonekte';

  @override
  String get undo => 'Defèt';

  @override
  String get portion => 'Pòsyon';

  @override
  String get quantity => 'Kantite';

  @override
  String get unit => 'Inite';

  @override
  String get clear => 'Klè';

  @override
  String get select => 'Chwazi';

  @override
  String get apply => 'Aplike';

  @override
  String get reset => 'Reyajiste';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Wi';

  @override
  String get no => 'Non';

  @override
  String get optional => 'Si ou vle';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Pwoteyin';

  @override
  String get carbs => 'Glusid';

  @override
  String get fat => 'Grès';

  @override
  String get fiber => 'Fib';

  @override
  String get water => 'Dlo';

  @override
  String get steps => 'Etap';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'liv';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'nan';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'minit';

  @override
  String get serving => 'Sèvi';

  @override
  String get servings => 'Pòsyon';

  @override
  String get serving_size => 'Gwosè pòsyon';

  @override
  String get per_100g => 'pou chak 100g';

  @override
  String get india => 'peyi Zend';

  @override
  String get asia => 'Azi';

  @override
  String get europe => 'Ewòp';

  @override
  String get middle_east => 'Mwayen Oryan';

  @override
  String get africa => 'Lafrik';

  @override
  String get americas => 'Amerik yo';

  @override
  String get home_title => 'Lakay';

  @override
  String get home_greeting_morning => 'Bon maten';

  @override
  String get home_greeting_afternoon => 'Bon apremidi';

  @override
  String get home_greeting_evening => 'Bonswa';

  @override
  String get home_streak_title => 'Sou entènèt jwèt Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jou seri',
      one: '1 jou tras',
      zero: '0 jou tras',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Boule';

  @override
  String get home_calories_budget => 'Bidjè kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ki rete';
  }

  @override
  String get home_water_title => 'Idratasyon chak jou';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Etap te mache';

  @override
  String get home_quick_actions => 'Aksyon rapid';

  @override
  String get home_log_meal => 'Log Manje';

  @override
  String get home_log_water => 'Log Dlo';

  @override
  String get home_log_workout => 'Log antrennman';

  @override
  String get home_log_weight => 'Log Pwa';

  @override
  String get home_insights_title => 'Insights jodi a';

  @override
  String get home_quote => 'Ti chwa ki an sante kreye transfòmasyon éklèrè.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Antrenè';

  @override
  String get home_surroundings => 'Anviwònman & Air';

  @override
  String get home_notifications => 'Notifikasyon';

  @override
  String get home_daily_score => 'Nòt Byennèt chak jou';

  @override
  String get home_view_all => 'Gade tout';

  @override
  String get food_diary_title => 'Jounal Manje';

  @override
  String get food_breakfast => 'Dejene';

  @override
  String get food_lunch => 'Manje midi';

  @override
  String get food_dinner => 'Dine';

  @override
  String get food_snacks => 'Ti goute';

  @override
  String get food_add_food => 'Ajoute Manje';

  @override
  String get food_edit_food => 'Edit Manje';

  @override
  String get food_add_breakfast => 'Ajoute Dejene';

  @override
  String get food_add_lunch => 'Ajoute Manje midi';

  @override
  String get food_add_dinner => 'Ajoute Dine';

  @override
  String get food_add_snack => 'Ajoute ti goute';

  @override
  String get food_total_calories => 'Kalori total';

  @override
  String get food_empty_meal =>
      'Pa gen okenn manje ki konekte pou repa sa a ankò';

  @override
  String get food_empty_diary => 'Pa gen manje ki konekte pou jou sa a';

  @override
  String get food_log_first_meal => 'Tape + pou konekte premye repa bon gou ou';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint => 'Chèche asyèt, fwi, dal, roti...';

  @override
  String get food_custom_recipe => 'Manje Custom & Recipe';

  @override
  String get food_scan_barcode => 'Eskane Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Manje ki sot pase yo';

  @override
  String get food_favourites => 'Favoris';

  @override
  String get food_macro_summary => 'Pann makronutriman';

  @override
  String get food_delete_meal_confirm =>
      'Èske w sèten ou vle retire atik sa a?';

  @override
  String get food_item_deleted => 'Atik manje retire';

  @override
  String get food_remaining => 'rete';

  @override
  String get food_consumed => 'konsome';

  @override
  String food_of_target(Object target) {
    return 'nan $target kcal';
  }

  @override
  String get foodSearch_title => 'Rechèch Manje';

  @override
  String get foodSearch_scan_barcode => 'Eskane Barcode';

  @override
  String get foodSearch_take_photo => 'Pran foto Manje';

  @override
  String get foodSearch_custom_food => 'Kreye Manje Custom';

  @override
  String get foodSearch_recent_searches => 'Rechèch ki sot pase yo';

  @override
  String get foodSearch_popular => 'Asyèt popilè';

  @override
  String get foodSearch_no_results => 'Pa gen manje ki matche rechèch ou an';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Aliman kòd bar andedan ankadreman kamera a';

  @override
  String get barcode_not_found => 'Pwodwi pa jwenn nan baz done';

  @override
  String get barcode_premium_feature => 'Kod bar yo disponib ak Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Pran yon foto klè nan plat ou a';

  @override
  String get camera_analysing => 'Analize plak manje...';

  @override
  String get camera_detected => 'Detekte atik yo';

  @override
  String get camera_flash => 'Aktive Flash';

  @override
  String get camera_retake => 'Repran foto';

  @override
  String get camera_confirm_food => 'Konfime atik yo';

  @override
  String get customFood_title => 'Manje Custom & Recipe';

  @override
  String get customFood_name_hint => 'Non plat oswa engredyan';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Pwoteyin (g)';

  @override
  String get customFood_carbs_hint => 'glusid (g)';

  @override
  String get customFood_fat_hint => 'Grès (g)';

  @override
  String get customFood_save => 'Sove resèt';

  @override
  String get water_tracker_title => 'Dlo Tracker';

  @override
  String get water_daily_target => 'Objektif idratasyon chak jou';

  @override
  String get water_logged_today => 'Konekte jodi a';

  @override
  String get water_add_glass => '+250 ml vè';

  @override
  String get water_add_bottle => '+500 ml boutèy';

  @override
  String get water_custom_amount => 'Montan Custom';

  @override
  String get water_reminder_tip =>
      'Bwè dlo regilyèman pandan tout jounen an pou enèji fiks.';

  @override
  String water_logged_toast(Object amount) {
    return 'Ou te konekte $amount ml dlo 💧';
  }

  @override
  String get workout_title => 'Jounal antrennman';

  @override
  String get workout_add_exercise => 'Ajoute antrennman';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Fòs';

  @override
  String get workout_yoga => 'Yoga & Fleksibilite';

  @override
  String get workout_duration => 'Dire';

  @override
  String get workout_intensity => 'Entansite';

  @override
  String get workout_calories_burned => 'Kalori boule';

  @override
  String get workout_empty => 'Pa gen antrennman konekte jodi a';

  @override
  String get workout_save_success => 'Antrennman sove avèk siksè!';

  @override
  String get workout_type => 'Kalite antrennman';

  @override
  String get workout_notes => 'Nòt & Refleksyon';

  @override
  String get health_overview_title => 'Sante ak Vital';

  @override
  String get health_heart_rate => 'Batman kè';

  @override
  String get health_blood_oxygen => 'Oksijèn nan san (SpO2)';

  @override
  String get health_blood_pressure => 'Tansyon';

  @override
  String get health_blood_glucose => 'Glikoz nan san';

  @override
  String get health_body_temperature => 'Tanperati kò';

  @override
  String get health_sleep_tracking => 'Suivi dòmi';

  @override
  String get health_weight_tracking => 'Pwa & Konpozisyon kò';

  @override
  String get health_waist_hip => 'Rapò ren-a-hanch';

  @override
  String get health_devices_hub => 'Aparèy ak Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Done Sante';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Dènye senkronize: $time';
  }

  @override
  String get health_manual_entry => 'Manyèl Antre Sante';

  @override
  String get health_metric_detail => 'Detay metrik';

  @override
  String get health_connected_sensors => 'Konekte detèktè sante';

  @override
  String get plan_title => 'Plan chak jou';

  @override
  String get plan_weekly_title => 'Plan Byennèt chak semèn';

  @override
  String get plan_calorie_target => 'Sib kalori';

  @override
  String get plan_water_target => 'Sib Idratasyon';

  @override
  String get plan_step_target => 'Etap Sib';

  @override
  String get plan_sleep_target => 'Sib dòmi';

  @override
  String get plan_meal_suggestions => 'Sijesyon manje';

  @override
  String get plan_healthy_habits => 'Abitid ki an sante ak konsèy';

  @override
  String get plan_coach_advice => 'Bloomi AI Rekòmandasyon Antrenè';

  @override
  String get plan_generated_title => 'Orè pèsonalize chak jou';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Edit Profile';

  @override
  String get profile_name => 'Non';

  @override
  String get profile_age => 'Laj';

  @override
  String get profile_gender => 'Sèks';

  @override
  String get profile_height => 'Wotè';

  @override
  String get profile_weight => 'Pwa';

  @override
  String get profile_goal => 'Objektif Prensipal';

  @override
  String get profile_activity_level => 'Nivo Aktivite';

  @override
  String get profile_stats => 'Estatistik Byennèt mwen an';

  @override
  String get profile_saved => 'Pwofil mete ajou avèk siksè';

  @override
  String get profile_bmi => 'Endèks mas kò (IMC)';

  @override
  String get profile_membership => 'Manm';

  @override
  String get settings => 'Anviwònman';

  @override
  String get preferences_habits => 'PREFERANS AK ABITUD';

  @override
  String get appearance_theme => 'Aparans & Tèm';

  @override
  String get appearance_theme_sub =>
      'Fè nwa, limyè, mòd sistèm ak opsyon background aplikasyon an';

  @override
  String get permissions => 'Otorizasyon ak Aksè Sistèm';

  @override
  String get permissions_sub =>
      'Health Connect, Detèktè Etap, GPS, Notifikasyon ak Kamera';

  @override
  String get reminders_notifications => 'Rapèl ak Notifikasyon';

  @override
  String get reminders_sub =>
      'Lè repa yo, dlo, chèk-nan pwa ak rapèl lè yo dòmi';

  @override
  String get units_of_measurement => 'Inite Mezi';

  @override
  String get units_sub =>
      'Metrik (kg, cm, ml, km) oswa Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Lang aplikasyon an';

  @override
  String get language_sub =>
      'Angle, हिन्दी (Hindi), Hinglish & plis pase 195 lang mondyal';

  @override
  String get home_screen_widgets => 'Widgets Ekran Kay';

  @override
  String get widgets_sub =>
      'Widget android ap viv: Hub, Etap, Dlo, Nitrisyon & Mascot';

  @override
  String get wear_os_watch_app => 'Mete OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch konpayon, mozayik, konplikasyon ak vital vital';

  @override
  String get goals_wellness => 'OBJEKTIF AK BÈNÈT INSIGHTS';

  @override
  String get nutrition_targets => 'Objektif Nitrisyon & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Objektif kalori, pwoteyin, glusid, grès ak dlo';

  @override
  String get weekly_recap => 'Rezime Byennèt chak semèn';

  @override
  String get weekly_recap_sub =>
      'Mwayèn kalori 7 jou, rapò macro ak pi bon jou';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Tach flè aktif, badj ak reyalizasyon';

  @override
  String get connected_devices => 'APARÈY AK EKOSISTÈM KONEKTE';

  @override
  String get devices_hub => 'Aparèy ak Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Anviwònman & Tan';

  @override
  String get surroundings_sub =>
      'Kalite lè (AQI), endèks UV ak konsèy sou idratasyon move tan';

  @override
  String get bloomi_pro => 'Bloomi Pro Abònman';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Antrenè, 5 widgets ekran lakay ak swiv vital';

  @override
  String get about_security => 'SOU & SEKIRITE';

  @override
  String get about_bloomi => 'Konsènan Bloomi';

  @override
  String get about_bloomi_sub => 'Bati espesifikasyon, vèsyon, atribisyon';

  @override
  String get privacy_policy => 'Règleman sou enfòmasyon prive';

  @override
  String get privacy_policy_sub =>
      'Offline-premye, sou-achitekti done sou aparèy';

  @override
  String get terms_conditions => 'Tèm & Kondisyon yo';

  @override
  String get terms_conditions_sub => 'Regleman sèvis ak byennèt';

  @override
  String get delete_account => 'Efase Kont ak Done yo';

  @override
  String get delete_account_sub =>
      'Efase done SQLite lokal yo ak sovgad nwaj yo san pwoblèm';

  @override
  String get healthy_habits => 'Bati abitid byennèt dou, dirab';

  @override
  String get all_logs => 'Done Tracked mwen ak mòso bwa';

  @override
  String get search_language => 'Chèche pa lang oswa script natif natal...';

  @override
  String get languages_available => 'Lang ki disponib';

  @override
  String get no_matching_languages => 'Pa jwenn okenn lang ki matche';

  @override
  String get try_searching =>
      'Eseye fè rechèch pa script natif natal oswa òtograf angle';

  @override
  String get partially_translated => 'Pasyèlman tradui';

  @override
  String get complete_translation => 'Ranpli';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lang mete sou $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Anviwònman & Anviwònman';

  @override
  String get surroundings_aqi => 'Endèks Kalite lè a';

  @override
  String get surroundings_uv => 'Endèks UV';

  @override
  String get surroundings_temp => 'Tanperati';

  @override
  String get surroundings_humidity => 'Imidite';

  @override
  String get surroundings_hydration_advice =>
      'Rete byen idrate nan kondisyon metewolojik aktyèl yo.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Search Manje';

  @override
  String get food_quick_barcode => 'Eskane Barcode 👑';

  @override
  String get food_quick_water => 'Ajoute Dlo';

  @override
  String get food_quick_custom => 'Manje Custom';

  @override
  String get surroundings_good => 'Bon';

  @override
  String get surroundings_moderate => 'Modere';

  @override
  String get surroundings_unhealthy => 'Malsen';

  @override
  String get notifications_title => 'Notifikasyon ak Alèt';

  @override
  String get notifications_empty => 'Pa gen nouvo notifikasyon';

  @override
  String get notifications_mark_read => 'Make tout kòm li';

  @override
  String get notifications_clear => 'Efase tout';

  @override
  String get reminders => 'Anviwònman rapèl';

  @override
  String get notifications => 'Notifikasyon';

  @override
  String get reminders_breakfast_title => 'Rapèl manje maten 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bon maten! Tan pou yon manje maten nourisan nan $time .';
  }

  @override
  String get reminders_lunch_title => 'Rapèl manje midi 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pran yon poz epi jwi yon repa midi ekilibre ak atansyon nan $time .';
  }

  @override
  String get reminders_dinner_title => 'Rapèl Dine 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tan pou yon dine lejè, satisfezan nan $time .';
  }

  @override
  String get reminders_water_title => 'Idratasyon Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tan pou bwè yon vè dlo fre! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Peze chak semèn ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Swiv mezi kò w chak semèn sou Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Lè dòmi Van desann 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Detann epi prepare pou yon dòmi trankil ( $time ).';
  }

  @override
  String get onboard_welcome => 'Byenveni nan Bloomi';

  @override
  String get onboard_sub =>
      'Zanmitay ou, offline-premye konpayon sante ak nitrisyon.';

  @override
  String get onboard_get_started => 'Kòmanse';

  @override
  String get onboard_sign_in => 'Enskri';

  @override
  String get onboard_skip => 'Sote';

  @override
  String get onboard_choose_goal => 'Ki objektif prensipal byennèt ou a?';

  @override
  String get onboard_goal_weight_loss => 'Pèt pwa dou';

  @override
  String get onboard_goal_muscle => 'Akeri nan misk ak fòs';

  @override
  String get onboard_goal_energy => 'Chak jou enèji ak vitalite';

  @override
  String get onboard_goal_habits => 'Healthy Mindful Manje';

  @override
  String get onboard_about_you => 'Pale nou sou tèt ou';

  @override
  String get onboard_lifestyle => 'Woutin chak jou ou';

  @override
  String get onboard_permissions_title => 'Otorizasyon ak Aksè Sistèm';

  @override
  String get onboard_permissions_sub =>
      'Bay aksè a etap senkronize, antrennman, ak rapèl.';

  @override
  String get onboard_plan_ready_title => 'Plan Custom ou pare!';

  @override
  String get onboard_plan_ready_sub =>
      'Nou te kreye yon plan nitrisyon dou, pèsonalize ak byennèt jis pou ou.';

  @override
  String get onboard_enter_bloomi => 'Antre nan Bloomi';

  @override
  String get insights_weekly_report => 'Rezime Byennèt chak semèn';

  @override
  String insights_best_day(Object day) {
    return 'Pi bon Jou Konsistans: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Debloke sou $date';
  }

  @override
  String get insights_keep_going => 'Kontinye kokenn pwogrè!';

  @override
  String get widgets_title => 'Widgets Ekran Kay';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets aktif: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Etap ak bag aktif';

  @override
  String get widgets_water_title => 'Idratasyon Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot konpayon';

  @override
  String get wear_os_title => 'Mete OS Smartwatch';

  @override
  String get wear_os_connected => 'Konekte ak Watch';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Aparans & Tèm';

  @override
  String get theme_mode => 'Mòd tèm';

  @override
  String get theme_light => 'Limyè';

  @override
  String get theme_dark => 'Fè nwa';

  @override
  String get theme_system => 'Sistèm Default';

  @override
  String get theme_background_palette => 'Palèt background';

  @override
  String get units_title => 'Inite Mezi';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Pa kapab chaje tablodbò a';

  @override
  String get home_health_permission_req => 'Health Connect Pèmisyon Obligatwa';

  @override
  String get home_health_permission_desc =>
      'Bloomi mande pou Health Connect pèmisyon pou rale etap reyèl, batman kè, ak senkronize widgets kay mobil an tan reyèl.';

  @override
  String get home_allow_health => 'Pèmèt Health Connect';

  @override
  String get home_ready_mindful_day => 'Pare pou yon jou konsyan? ✨';

  @override
  String get home_quick_add => 'Quick Add';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORI RETE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Manje: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tape pou Tracker Dlo 💧';

  @override
  String get home_water_goal_reached => 'Objektif chak jou rive 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml pou objektif chak jou';
  }

  @override
  String get home_details => 'Detay yo';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade pou déblotché sib pèsonalize chak jou ak plan AI';

  @override
  String get home_unlock => 'Debloke 👑';

  @override
  String get home_quick_log_hint => 'Byen vit anrejistre yon antre byennèt';

  @override
  String get food_serving_size => 'Gwosè pòsyon';

  @override
  String get food_serving_grams => 'pòsyon (g)';

  @override
  String get food_number_servings => 'Kantite pòsyon';

  @override
  String get food_calories_per_serving => 'Kalori pou chak pòsyon';

  @override
  String get food_recipe_ingredients => 'Engredyan';

  @override
  String get food_recipe_add_ingredient => 'Ajoute engredyan';

  @override
  String get food_recipe_directions => 'Enstriksyon & Nòt';

  @override
  String get food_recipe_total => 'Nitrisyon total resèt';

  @override
  String get food_recipe_per_serving => 'Pou chak pòsyon nitrisyon';

  @override
  String get food_recipe_saved_toast => 'Manje koutim sove avèk siksè!';

  @override
  String get food_barcode_found => 'Pwodwi jwenn!';

  @override
  String get food_barcode_not_found_desc =>
      'Nou pa t \'kapab jwenn kòd bar sa a nan baz done a louvri. Ou ka ajoute li kòm yon manje koutim.';

  @override
  String get food_add_custom_btn => 'Ajoute Manje Custom';

  @override
  String get food_scan_again => 'Eskane ankò';

  @override
  String get food_review_items => 'Revize Manje Detekte';

  @override
  String get food_review_hint =>
      'Ajiste kantite oswa retire nenpòt atik ki pa rekonèt';

  @override
  String get food_log_selected => 'Log Manje Chwazi yo';

  @override
  String get food_favourites_title => 'Manje pi renmen yo';

  @override
  String get food_recent_title => 'Manje ki sot pase yo';

  @override
  String get food_no_favourites =>
      'Pa gen manje pi renmen ankò. Tape kè sou nenpòt manje pou konsève pou isit la.';

  @override
  String get food_no_recents => 'Pa gen okenn manje ki fèk konekte.';

  @override
  String get food_nutrition_details_title => 'Detay Nitrisyon chak jou';

  @override
  String get food_macro_protein_label => 'Dekonpozisyon Pwoteyin';

  @override
  String get food_macro_carbs_label => 'Pann glusid';

  @override
  String get food_macro_fat_label => 'Pann grès';

  @override
  String get food_macro_fiber_label => 'Pann fib';

  @override
  String get food_daily_target_comparison => 'Konparezon Sib';

  @override
  String food_target_label(Object target) {
    return 'Sib: $target';
  }

  @override
  String get food_edit_entry => 'Edit Jounal Antre';

  @override
  String get food_delete_entry => 'Efase antre';

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
    return '$current sou $target ml';
  }

  @override
  String get water_intake_history => 'Jounal dlo jodi a';

  @override
  String get water_no_logs_today =>
      'Pa gen dlo konekte jodi a ankò. Idrate epi tape yon bouton ajoute rapid!';

  @override
  String get water_adjust_goal => 'Ajiste objektif chak jou';

  @override
  String get health_connect_banner => 'Konekte ak Health Connect';

  @override
  String get health_vitals_summary => 'Vital sante chak jou';

  @override
  String get health_latest_heart_rate => 'Dènye batman kè';

  @override
  String get health_latest_bp => 'Tansyon';

  @override
  String get health_latest_spo2 => 'Oksijèn san';

  @override
  String get health_latest_glucose => 'Glikoz nan san';

  @override
  String get health_latest_weight => 'Pwa';

  @override
  String get health_latest_sleep => 'Dòmi dire';

  @override
  String get health_add_manual => 'Ajoute Manyèl Mezi';

  @override
  String get health_history_trends => 'Tandans istorik';

  @override
  String get health_sync_success => 'Done sante senkronize avèk siksè!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours è $mins min';
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
  String get health_devices_title => 'Aparèy Konekte ak Wearables';

  @override
  String get health_devices_desc =>
      'Jere smartwatch pè, trackers Fitness, ak detèktè sante.';

  @override
  String get health_workout_editor_title => 'Edit antrennman';

  @override
  String get health_workout_name_label => 'Non antrennman';

  @override
  String get health_workout_duration_label => 'Dire (minit)';

  @override
  String get health_workout_calories_label => 'Estimasyon kalori (kcal)';

  @override
  String get health_workout_date_label => 'Dat ak Lè';

  @override
  String get plan_daily_wellness_roadmap => 'Roadmap pèsonalize w la';

  @override
  String get plan_morning_routine => 'Woutin maten';

  @override
  String get plan_afternoon_routine => 'Byennèt midi';

  @override
  String get plan_evening_routine => 'Aswè van-desann';

  @override
  String get plan_coach_badge => 'Bloomi AI Antrenè';

  @override
  String get plan_weekly_overview => 'Konsantrasyon byennèt 7 jou';

  @override
  String get plan_targets_title => 'Objektif Byennèt ak Objektif';

  @override
  String get plan_calorie_budget_label => 'Bidjè kalori chak jou';

  @override
  String get plan_water_budget_label => 'Sib Dlo chak jou';

  @override
  String get plan_step_budget_label => 'Objektif etap chak jou';

  @override
  String get plan_macro_split_label => 'Pwopòsyon makronutriman';

  @override
  String get profile_personal_details => 'Detay pèsonèl';

  @override
  String get profile_body_stats => 'Mezi kò';

  @override
  String get profile_app_preferences => 'Preferans ak Anviwònman App';

  @override
  String get profile_edit_name_hint => 'Non ou';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Wotè ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Pwa ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Laj';

  @override
  String get profile_gender_male => 'Gason';

  @override
  String get profile_gender_female => 'Fi';

  @override
  String get profile_gender_other => 'Lòt / Pito pa di';

  @override
  String get profile_activity_sedentary => 'Sedantèr (Ti pa fè egzèsis)';

  @override
  String get profile_activity_light => 'Lejèman aktif (1-3 jou/semèn)';

  @override
  String get profile_activity_moderate => 'Modere aktif (3-5 jou/semèn)';

  @override
  String get profile_activity_very => 'Trè aktif (6-7 jou/semèn)';

  @override
  String get settings_wear_os_header => 'Mete OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Enstale mozayik Bloomi ak konplikasyon sou mont Wear OS ou a pou w gade kalori, dlo, ak etap yo.';

  @override
  String get settings_widgets_header => 'Widget android entèaktif';

  @override
  String get settings_widgets_desc =>
      'Mete widgets an tan reyèl sou ekran lakay aparèy ou an pou mizajou enstantane.';

  @override
  String get settings_about_header => 'Konsènan Bloomi';

  @override
  String get settings_about_version => 'Vèsyon 1.0.0';

  @override
  String get settings_about_build => 'Bati 100';

  @override
  String get settings_about_credits =>
      'Fèt ak swen pou yon vi ki ansante, ki an sante.';

  @override
  String get settings_terms_header => 'Tèm ak Kondisyon yo';

  @override
  String get settings_privacy_header => 'Règleman sou enfòmasyon prive';

  @override
  String get settings_delete_header => 'Efase Kont ak Done yo';

  @override
  String get settings_delete_warning =>
      'Aksyon sa a pa ka defèt. Tout manje, antrennman, vital, ak pwofil ou yo pral efase pou tout tan.';

  @override
  String get settings_delete_confirm_btn => 'Efase nèt ale';

  @override
  String get onboard_welcome_headline => 'Byenveni nan Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Suivi byennèt dou ak atansyon ki fèt alantou lavi ou.';

  @override
  String get onboard_step_about => 'Sou ou';

  @override
  String get onboard_step_goals => 'Objektif ou yo';

  @override
  String get onboard_step_lifestyle => 'Abitid chak jou';

  @override
  String get onboard_step_permissions => 'Otorizasyon';

  @override
  String get onboard_step_plan => 'Pare!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Aksè';

  @override
  String get onboard_step_sensors_perm => 'Etap Counter Capteur';

  @override
  String get onboard_notif_perm => 'Atantif Rapèl ak Notifikasyon';

  @override
  String get onboard_camera_perm => 'Kamera (Kod Bar ak Scanner Manje)';

  @override
  String get onboard_grant_permissions => 'Bay otorizasyon';

  @override
  String get onboard_continue_dashboard => 'Louvri Dach';

  @override
  String get notif_channel_hydration_name => 'Idratasyon Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Rapèl dlo dou pandan tout jounen an';

  @override
  String get notif_channel_nutrition_name => 'Rapèl manje ak nitrisyon';

  @override
  String get notif_channel_nutrition_desc =>
      'Alèt rapèl manje maten, manje midi ak dine';

  @override
  String get notif_channel_steps_name => 'Etap Jalons';

  @override
  String get notif_channel_steps_desc =>
      'Selebrasyon lè yo rive nan objektif etap chak jou';

  @override
  String get notif_channel_vitals_name => 'Chèk Sante ak Vital';

  @override
  String get notif_channel_vitals_desc => 'Rapèl sou pwa ak lè dòmi';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Fè dòmi 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Manje';

  @override
  String get language => 'Lang';

  @override
  String get share => 'Pataje';

  @override
  String common_days(Object count) {
    return '$count jou de sa';
  }
}
