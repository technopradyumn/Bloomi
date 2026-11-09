// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latin (`la`).
class AppLocalizationsLa extends AppLocalizations {
  AppLocalizationsLa([String locale = 'la']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Home';

  @override
  String get nav_today => 'hodie';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Cibus';

  @override
  String get nav_food_diary => 'Food Diarium';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Salus';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Servare';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delere';

  @override
  String get edit => 'Edit';

  @override
  String get done => 'Done';

  @override
  String get close => 'Close';

  @override
  String get back => 'Retro';

  @override
  String get next => 'Proximum';

  @override
  String get continue_btn => 'continue';

  @override
  String get confirm => 'Confirm';

  @override
  String get search => 'Investigatio';

  @override
  String get filter => 'Filtrum';

  @override
  String get all => 'All';

  @override
  String get active => 'Active';

  @override
  String get today => 'hodie';

  @override
  String get yesterday => 'heri';

  @override
  String get tomorrow => 'Cras';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Aufer';

  @override
  String get refresh => 'Renovare';

  @override
  String get retry => 'Retry';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Nulla notitia available';

  @override
  String get offline => 'Offline Modus';

  @override
  String get offline_sub => 'Mutationes autem sync cum reconnected';

  @override
  String get undo => 'Undo';

  @override
  String get portion => 'Portio';

  @override
  String get quantity => 'quantitas';

  @override
  String get unit => 'Unitas';

  @override
  String get clear => 'Patet';

  @override
  String get select => 'Lego';

  @override
  String get apply => 'Applicare';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'Bene';

  @override
  String get yes => 'Ita';

  @override
  String get no => 'No';

  @override
  String get optional => 'Libitum';

  @override
  String get calories => 'Suspendisse';

  @override
  String get protein => 'Dapibus';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Pinguis';

  @override
  String get fiber => 'Fibre';

  @override
  String get water => 'Aquae';

  @override
  String get steps => 'Vestigia';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g*';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'libras *';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs *';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Servientes';

  @override
  String get servings => 'Servings';

  @override
  String get serving_size => 'servientes Location';

  @override
  String get per_100g => 'per 100g *';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Medius Oriens';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Home';

  @override
  String get home_greeting_morning => 'Salve';

  @override
  String get home_greeting_afternoon => 'bonum meridiem';

  @override
  String get home_greeting_evening => 'Bonum est vespere';

  @override
  String get home_streak_title => 'Flos series';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dies series',
      one: 'Series I die',
      zero: 'Series 0 dies',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Incendio';

  @override
  String get home_calories_budget => 'Suspendisse Donec';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal reliquum';
  }

  @override
  String get home_water_title => 'Cotidiana Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Vestigia Ambulavit';

  @override
  String get home_quick_actions => 'Velox actiones';

  @override
  String get home_log_meal => 'Log Farina';

  @override
  String get home_log_water => 'Log aqua';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Pondus';

  @override
  String get home_insights_title => 'Hodiernae insights';

  @override
  String get home_quote =>
      'Electiones parvae sanae virentes mutationes creant.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Circumcirca & Air';

  @override
  String get home_notifications => 'Acta Vicimediorum';

  @override
  String get home_daily_score => 'Cotidiana Hotel Score';

  @override
  String get home_view_all => 'View All';

  @override
  String get food_diary_title => 'Food Diarium';

  @override
  String get food_breakfast => 'Prandium';

  @override
  String get food_lunch => 'Prandium';

  @override
  String get food_dinner => 'Prandium';

  @override
  String get food_snacks => 'Laborum';

  @override
  String get food_add_food => 'Add Food';

  @override
  String get food_edit_food => 'Edit Food';

  @override
  String get food_add_breakfast => 'Adde Prandium';

  @override
  String get food_add_lunch => 'Add Prandium';

  @override
  String get food_add_dinner => 'Adde Prandium';

  @override
  String get food_add_snack => 'Add PORTIO';

  @override
  String get food_total_calories => 'Summa Suspendisse';

  @override
  String get food_empty_meal => 'Non cibum initium huius prandium adhuc';

  @override
  String get food_empty_diary => 'Non cibum initium huius diei';

  @override
  String get food_log_first_meal =>
      'ICTUS + ut stipes amet delectamentum prandium';

  @override
  String get food_quick_add => 'Velox Add';

  @override
  String get food_search_hint => 'Quaere acetabula, fructus, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom Food & Recipe';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Recentes Victus';

  @override
  String get food_favourites => 'Favorites';

  @override
  String get food_macro_summary => 'Macronutrient Naufragii';

  @override
  String get food_delete_meal_confirm => 'Visne vero hanc item amovere?';

  @override
  String get food_item_deleted => 'Item remota cibo';

  @override
  String get food_remaining => 'reliquiae';

  @override
  String get food_consumed => 'consumpsit';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Quaerere Victus';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Cibus photo Snap';

  @override
  String get foodSearch_custom_food => 'Create Custom Food';

  @override
  String get foodSearch_recent_searches => 'Investigationes recentes';

  @override
  String get foodSearch_popular => 'Popular Acetabula';

  @override
  String get foodSearch_no_results => 'Nullae cibos matching quaestioni tuae';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Conlineare barcode intra camera frame';

  @override
  String get barcode_not_found => 'Product non inveni in database';

  @override
  String get barcode_premium_feature =>
      'Barcode intuens is available cum Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Patet accipies photo tui catino';

  @override
  String get camera_analysing => 'Cibus laminam examinare...';

  @override
  String get camera_detected => 'Results items';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Retake Photo';

  @override
  String get camera_confirm_food => 'Confirm Items';

  @override
  String get customFood_title => 'Custom Food & Recipe';

  @override
  String get customFood_name_hint => 'Aut ingrediens nomen catino';

  @override
  String get customFood_calories_hint => 'Suspendisse (kcal)';

  @override
  String get customFood_protein_hint => 'Dapibus (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Pinguis (g)';

  @override
  String get customFood_save => 'Salvum facito';

  @override
  String get water_tracker_title => 'Aqua Tracker';

  @override
  String get water_daily_target => 'Cotidiana Hydration Metam';

  @override
  String get water_logged_today => 'Initium Hodie';

  @override
  String get water_add_glass => '+250 ml Glass';

  @override
  String get water_add_bottle => '+500 ml Bottle';

  @override
  String get water_custom_amount => 'Consuetudo vehicula';

  @override
  String get water_reminder_tip =>
      'Bibere aquam regulariter per diem pro stabilis industria.';

  @override
  String water_logged_toast(Object amount) {
    return 'Initium $amount ml aquae';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Add Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Fortitudo';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Duratio';

  @override
  String get workout_intensity => 'magnitudo';

  @override
  String get workout_calories_burned => 'Suspendisse Incendio';

  @override
  String get workout_empty => 'Nulla workouts initium hodie';

  @override
  String get workout_save_success => 'Workout bene servavit!';

  @override
  String get workout_type => 'Workout Type';

  @override
  String get workout_notes => 'Notae & Meditationes';

  @override
  String get health_overview_title => 'Salutem & Vitalis';

  @override
  String get health_heart_rate => 'Cordis Rate';

  @override
  String get health_blood_oxygen => 'Sanguis Oxygeni (SpO2)';

  @override
  String get health_blood_pressure => 'Sanguis Pressura';

  @override
  String get health_blood_glucose => 'Sanguis Glucosum';

  @override
  String get health_body_temperature => 'Corpus Temperature';

  @override
  String get health_sleep_tracking => 'Somnus mauris';

  @override
  String get health_weight_tracking => 'Pondus & Corpus Compositio';

  @override
  String get health_waist_hip => 'Coxae alvo-ut-Ratio';

  @override
  String get health_devices_hub => 'Hub & machinae Smartwatch';

  @override
  String get health_sync_now => 'Sync Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Novissima synced: $time';
  }

  @override
  String get health_manual_entry => 'Manuale Salutem Entry';

  @override
  String get health_metric_detail => 'Metrica Details';

  @override
  String get health_connected_sensors => 'Coniuncta Salutem sensoriis';

  @override
  String get plan_title => 'Cotidiana Plan';

  @override
  String get plan_weekly_title => 'Weekly Hotel Plan';

  @override
  String get plan_calorie_target => 'Suspendisse Target';

  @override
  String get plan_water_target => 'Hydratationis Target';

  @override
  String get plan_step_target => 'Gradus Target';

  @override
  String get plan_sleep_target => 'Somnus Target';

  @override
  String get plan_meal_suggestions => 'Prandium Proposita';

  @override
  String get plan_healthy_habits => 'Habitus sanus & Tips';

  @override
  String get plan_coach_advice => 'Aliquam Commendatione Bloomi AI';

  @override
  String get plan_generated_title => 'Personalized Daily rhoncus';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Edit Profile';

  @override
  String get profile_name => 'Nomen';

  @override
  String get profile_age => 'Aevum';

  @override
  String get profile_gender => 'Gender';

  @override
  String get profile_height => 'Altitudo';

  @override
  String get profile_weight => 'Pondus';

  @override
  String get profile_goal => 'Prima meta';

  @override
  String get profile_activity_level => 'Operatio Level';

  @override
  String get profile_stats => 'My Hotel Stats';

  @override
  String get profile_saved => 'Profile updated feliciter';

  @override
  String get profile_bmi => 'Corpus Missae Index (BMI)';

  @override
  String get profile_membership => 'Sodalitas';

  @override
  String get settings => 'Occasus';

  @override
  String get preferences_habits => 'Preferences & habits';

  @override
  String get appearance_theme => 'Aspectus & Theme';

  @override
  String get appearance_theme_sub =>
      'Tenebris, Lux, Ratio Modus & App Maecenas vitae Options';

  @override
  String get permissions => 'Permissionibus & Ratio Access';

  @override
  String get permissions_sub =>
      'Health Connect, Gradus Sensores, GPS, Notificaciones & Camera';

  @override
  String get reminders_notifications => 'Recordationes & Suspendisse';

  @override
  String get reminders_sub =>
      'Farina tempora, aqua, pondus reprehendo-in & tempus somniorum';

  @override
  String get units_of_measurement => 'Unitates mensurae';

  @override
  String get units_sub =>
      'Metrica (kg, cm, ml, km) seu Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Lingua';

  @override
  String get language_sub =>
      'English, (Hindi), Hinglish & 195+ global languages';

  @override
  String get home_screen_widgets => 'Home Screen Widgets';

  @override
  String get widgets_sub =>
      'Live Android content: Hub, Gradus, Aqua, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Gerunt OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch comes, tiles, inpedimenta & vitalia vivant';

  @override
  String get goals_wellness => 'GOALS & WELLNESS INSIGHTS\'';

  @override
  String get nutrition_targets => 'Pellentesque Targets & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Suspendisse iaculis, interdum, carbs, pinguis meta aqua';

  @override
  String get weekly_recap => 'Weekly Hotel Recap';

  @override
  String get weekly_recap_sub =>
      'VII-dies calorie mediocris, tortor ratio & dies optimus';

  @override
  String get streaks_milestones => 'Striae & Milestones';

  @override
  String get streaks_sub => 'Active germen effectus, velamenta & res gestae';

  @override
  String get connected_devices => 'IUNCTUS ARS & ECOSYSTEM';

  @override
  String get devices_hub => 'Hub & machinae Smartwatch';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Circumcirca & Tempestas';

  @override
  String get surroundings_sub =>
      'Aeris qualitas (AQI), UV index & tempestatum hydropicus apicibus';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 domus screen contenta & vitalia tracking';

  @override
  String get about_security => 'DE & SECURITAS';

  @override
  String get about_bloomi => 'De Bloomi';

  @override
  String get about_bloomi_sub =>
      'Specificationes, versionem, attributiones aedificant';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get privacy_policy_sub =>
      'Offline-primum, on-fabrica data architecturae';

  @override
  String get terms_conditions => 'Terms & Conditions';

  @override
  String get terms_conditions_sub => 'Terms of service and well guidelines';

  @override
  String get delete_account => 'Delere Ratio & Data';

  @override
  String get delete_account_sub =>
      'Irreversibly dele locus SQLite notitia et nubes tergum';

  @override
  String get healthy_habits =>
      'Aedificate mansuetum, habitum sanitatem permanentem';

  @override
  String get all_logs => 'Mea Idolum Data & Acta publica omnia';

  @override
  String get search_language => 'Quaere lingua aut scriptor indigena...';

  @override
  String get languages_available => 'Linguae Available';

  @override
  String get no_matching_languages => 'Non matching linguis inventis';

  @override
  String get try_searching =>
      'Conare investigatione indigena scriptum vel orthographiam Anglicam';

  @override
  String get partially_translated => 'Partialiter translata';

  @override
  String get complete_translation => 'Complete';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lingua apposita $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Circumda & Environment';

  @override
  String get surroundings_aqi => 'Air Quality Index';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperature';

  @override
  String get surroundings_humidity => 'Umor';

  @override
  String get surroundings_hydration_advice =>
      'Mane bene hydrated in hodierna tempestatum.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Quaerere cibum';

  @override
  String get food_quick_barcode => 'Scan Barcode';

  @override
  String get food_quick_water => 'Add aqua';

  @override
  String get food_quick_custom => 'Custom Food';

  @override
  String get surroundings_good => 'bonum';

  @override
  String get surroundings_moderate => 'Moderatus';

  @override
  String get surroundings_unhealthy => 'incuratus';

  @override
  String get notifications_title => 'Acta Vicimediorum Communium & Alerts';

  @override
  String get notifications_empty => 'Nulla nova notificationes';

  @override
  String get notifications_mark_read => 'Attendite omnes sicut Read';

  @override
  String get notifications_clear => 'Patet All';

  @override
  String get reminders => 'Admonitio Optiones';

  @override
  String get notifications => 'Acta Vicimediorum';

  @override
  String get reminders_breakfast_title => 'Lorem Lorem';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Salve! Tempus alimenti ientaculi apud $time.';
  }

  @override
  String get reminders_lunch_title => 'Lorem prandium';

  @override
  String reminders_lunch_body(Object time) {
    return 'Quiesce et aequo fruere, memor prandii in $time.';
  }

  @override
  String get reminders_dinner_title => 'Lorem prandium';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tempus lucis, cenae satisfaciens in $time.';
  }

  @override
  String get reminders_water_title => 'Hydratationis Nudge';

  @override
  String reminders_water_body(Object time) {
    return 'Tempus bibendi novum vitrum aquae! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Weekly appende-in';

  @override
  String reminders_weight_body(Object time) {
    return 'Vestigare corpus tuum hebdomadale metrice in Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'SOMNI Ventus descendit';

  @override
  String reminders_sleep_body(Object time) {
    return 'Solve et para somnum quietem ($time).';
  }

  @override
  String get onboard_welcome => 'Gratam Bloomi';

  @override
  String get onboard_sub => 'Amica tua, prima salutis et nutritionis comes.';

  @override
  String get onboard_get_started => 'Adepto Coepi';

  @override
  String get onboard_sign_in => 'Signum in';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal =>
      'Quod est opus tuum primaria sanitatem metam?';

  @override
  String get onboard_goal_weight_loss => 'Lenis pondus damnum';

  @override
  String get onboard_goal_muscle => 'Lucrum musculus & fortitudo';

  @override
  String get onboard_goal_energy => 'Cotidiana Energy & Vitality';

  @override
  String get onboard_goal_habits => 'Sanus memor esus';

  @override
  String get onboard_about_you => 'Dic nobis de te ipso';

  @override
  String get onboard_lifestyle => 'Tuum Daily DEFUNCTORIUS';

  @override
  String get onboard_permissions_title => 'Permissionibus & Ratio Access';

  @override
  String get onboard_permissions_sub =>
      'Da accessum ad sync gradibus, workouts et commonitiones.';

  @override
  String get onboard_plan_ready_title => 'Your Custom Plan is Promptus!';

  @override
  String get onboard_plan_ready_sub =>
      'Lenem, personalem nutritionem et sanitatem roadmap ficti sumus tibi iusta.';

  @override
  String get onboard_enter_bloomi => 'Intra Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Hotel Recap';

  @override
  String insights_best_day(Object day) {
    return 'Dies optimus Constantia: $day';
  }

  @override
  String get insights_streaks_badges => 'Striae & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Reserata in $date';
  }

  @override
  String get insights_keep_going => 'Sustine phantasticam progressum!';

  @override
  String get widgets_title => 'Home Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Active Ludicra: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Hotel Hub';

  @override
  String get widgets_steps_title => 'Gradus & Active Ringo';

  @override
  String get widgets_water_title => 'Hydration Velox Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Socius';

  @override
  String get wear_os_title => 'OS gere Smartwatch';

  @override
  String get wear_os_connected => 'Coniuncta ad Watch';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Aspectus & Theme';

  @override
  String get theme_mode => 'Theme Mode';

  @override
  String get theme_light => 'lux';

  @override
  String get theme_dark => 'Dark';

  @override
  String get theme_system => 'Systema Default';

  @override
  String get theme_background_palette => 'Background Palette';

  @override
  String get units_title => 'Unitates mensurae';

  @override
  String get units_metric => 'Metrica (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, oz)';

  @override
  String get home_unable_load => '\'Non load ashboardday';

  @override
  String get home_health_permission_req => 'Salutem Iungo Permissio required';

  @override
  String get home_health_permission_desc =>
      'Bloomi requirit Salutem Iungo licentiam trahere veras gradus, cor rate, et sync mobile domestica contenta in tempore reali.';

  @override
  String get home_allow_health => 'Salutem permittere Iungo';

  @override
  String get home_ready_mindful_day => 'Parata memor diei? ✨';

  @override
  String get home_quick_add => 'Velox Add';

  @override
  String get home_live_gps => 'Vivamus GPS';

  @override
  String get home_calories_remaining_label => 'CALORIES RELIQUUS';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Comedi: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'ICTUS pro aqua Tracker';

  @override
  String get home_water_goal_reached => 'Cotidie metam pervenit';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ad metam cotidianam';
  }

  @override
  String get home_details => 'Singula';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade ad recludam personalized cotidie scuta & AI consilium';

  @override
  String get home_unlock => 'Basem';

  @override
  String get home_quick_log_hint => 'Cito recordarentur sanitatem viscus';

  @override
  String get food_serving_size => 'servientes Location';

  @override
  String get food_serving_grams => 'Servientes (g)';

  @override
  String get food_number_servings => 'Numerus Servings';

  @override
  String get food_calories_per_serving => 'Suspendisse per servientes';

  @override
  String get food_recipe_ingredients => 'Ingredientia';

  @override
  String get food_recipe_add_ingredient => 'Add Ingredient';

  @override
  String get food_recipe_directions => 'Instructiones & Notae';

  @override
  String get food_recipe_total => 'Totalis facito nutritionis';

  @override
  String get food_recipe_per_serving => 'Per Serving NUTRICIUM';

  @override
  String get food_recipe_saved_toast => 'Consuetudo cibum feliciter servavit!';

  @override
  String get food_barcode_found => 'Product Found!';

  @override
  String get food_barcode_not_found_desc =>
      'Hoc barcode in aperto database invenire non potuimus. Cibum consuetudinarium addere potes.';

  @override
  String get food_add_custom_btn => 'Add Custom Food';

  @override
  String get food_scan_again => 'Scan Iterum';

  @override
  String get food_review_items => 'Review Results Victus';

  @override
  String get food_review_hint => 'Aptet quantitates vel latuit item';

  @override
  String get food_log_selected => 'Log Lego Victus';

  @override
  String get food_favourites_title => 'Favorite Ciborum';

  @override
  String get food_recent_title => 'Recentes Victus';

  @override
  String get food_no_favourites =>
      'No favorite foods yet. Tap cor on any food to save here.';

  @override
  String get food_no_recents => 'Nulla nuper initium edulium invenisti.';

  @override
  String get food_nutrition_details_title => 'QUOTIDIE NUTRICIUM Details';

  @override
  String get food_macro_protein_label => 'Dapibus Naufragii';

  @override
  String get food_macro_carbs_label => 'Carbs Naufragii';

  @override
  String get food_macro_fat_label => 'Adipem Naufragii';

  @override
  String get food_macro_fiber_label => 'Fibra Naufragii';

  @override
  String get food_daily_target_comparison => 'Scopum Comparatio';

  @override
  String food_target_label(Object target) {
    return 'Scopum: $target';
  }

  @override
  String get food_edit_entry => 'Edit Diarium Entry';

  @override
  String get food_delete_entry => 'Delere Entry';

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
    return '$current ex $target ml';
  }

  @override
  String get water_intake_history => 'Hodie aqua Acta publica omnia';

  @override
  String get water_no_logs_today =>
      'Nulla aqua initium adhuc hodie. Hydrate ac ICTUS velox addendi button!';

  @override
  String get water_adjust_goal => 'Adjust Daily Metam';

  @override
  String get health_connect_banner => 'Coniuncta ad Salutem Iungo';

  @override
  String get health_vitals_summary => 'Cotidiana Health Vitales';

  @override
  String get health_latest_heart_rate => 'Tardus Cordis Rate';

  @override
  String get health_latest_bp => 'Sanguis Pressura';

  @override
  String get health_latest_spo2 => 'Sanguis Oxygeni';

  @override
  String get health_latest_glucose => 'Sanguis Glucosum';

  @override
  String get health_latest_weight => 'Pondus';

  @override
  String get health_latest_sleep => 'Somnus durationis';

  @override
  String get health_add_manual => 'Addere Manualis mensurae';

  @override
  String get health_history_trends => 'Historical Trends';

  @override
  String get health_sync_success => 'Sanitas data synced feliciter!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours mins $mins mins';
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
  String get health_devices_title => 'Connexa Fabrica & Wearables';

  @override
  String get health_devices_desc =>
      'Curo paribus smart vigiliis, idoneitate elit, et sensoriis sanitatis.';

  @override
  String get health_workout_editor_title => 'Edit Workout';

  @override
  String get health_workout_name_label => 'Nomen Workout';

  @override
  String get health_workout_duration_label => 'Duratio (minuta)';

  @override
  String get health_workout_calories_label => 'Aestimari Suspendisse (kcal)';

  @override
  String get health_workout_date_label => 'Date et tempus';

  @override
  String get plan_daily_wellness_roadmap => 'Privatum Roadmap tuum';

  @override
  String get plan_morning_routine => 'mane DEFUNCTORIUS';

  @override
  String get plan_afternoon_routine => 'Meridiana Hotel';

  @override
  String get plan_evening_routine => 'Vespere Ventus-down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => 'Dies Thermae Focus';

  @override
  String get plan_targets_title => 'Hotel Targets & Nullam';

  @override
  String get plan_calorie_budget_label => 'Cotidiana Suspendisse Donec';

  @override
  String get plan_water_budget_label => 'Cotidiana aqua Target';

  @override
  String get plan_step_budget_label => 'Cotidiana Gradus Metam';

  @override
  String get plan_macro_split_label => 'Ratio Macronutrient';

  @override
  String get profile_personal_details => 'Personal Details';

  @override
  String get profile_body_stats => 'Corpus Mensurae';

  @override
  String get profile_app_preferences => 'Optiones & App Occasus';

  @override
  String get profile_edit_name_hint => 'nomen tuum';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Altitudo ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Pondus ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Aevum';

  @override
  String get profile_gender_male => 'Male';

  @override
  String get profile_gender_female => 'Feminae';

  @override
  String get profile_gender_other => 'Alii / Malo non dicere';

  @override
  String get profile_activity_sedentary =>
      'SEDENTARIUS (Parva ad nullum exercitium)';

  @override
  String get profile_activity_light => 'Leviter Active (1-3 dies / week)';

  @override
  String get profile_activity_moderate =>
      'Mediocriter Active (3-5 dies / week)';

  @override
  String get profile_activity_very => 'Ipsum Active (6-7 dies/septimana)';

  @override
  String get settings_wear_os_header => 'OS gere comes App';

  @override
  String get settings_wear_os_desc =>
      'Instrue tilem Bloomi et complicationem in gere OS tuos ut perspicias in calories, aqua, et vestigia.';

  @override
  String get settings_widgets_header => 'Interactive Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Pin real-time widgets in fabrica domus screen pro instant updates.';

  @override
  String get settings_about_header => 'De Bloomi';

  @override
  String get settings_about_version => 'Version 1.0.0';

  @override
  String get settings_about_build => 'aedificare 100';

  @override
  String get settings_about_credits => 'Cura ficti memores, viva salubris.';

  @override
  String get settings_terms_header => 'Terms and Conditions';

  @override
  String get settings_privacy_header => 'Privacy Policy';

  @override
  String get settings_delete_header => 'Delere Ratio & Data';

  @override
  String get settings_delete_warning =>
      'Haec actio infectum fieri non potest. Omnia prandia, workout, viscera, profile perpetuo delebuntur.';

  @override
  String get settings_delete_confirm_btn => 'in perpetuum Delete';

  @override
  String get onboard_welcome_headline => 'Gratam Bloomi';

  @override
  String get onboard_welcome_tagline =>
      'Mitis, memor salubris semita vitae tuae destinata est.';

  @override
  String get onboard_step_about => 'De te';

  @override
  String get onboard_step_goals => 'Tua Nullam dignissim convallis';

  @override
  String get onboard_step_lifestyle => 'Cotidiana consuetudine';

  @override
  String get onboard_step_permissions => 'permissiones';

  @override
  String get onboard_step_plan => 'Parati!';

  @override
  String get onboard_health_connect_perm => 'Salutem Iungo Access';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Recordationes & Suspendisse';

  @override
  String get onboard_camera_perm => 'Camera (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Da Permissionibus';

  @override
  String get onboard_continue_dashboard => 'Open Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc => 'Lenis aqua iteratis per diem';

  @override
  String get notif_channel_nutrition_name =>
      'Prandium & Nutrition Recordationes';

  @override
  String get notif_channel_nutrition_desc =>
      'Prandium, prandium, cenam in summis monitionibus';

  @override
  String get notif_channel_steps_name => 'Gradus Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Celebrationes cum perveniens cotidie gradus scuta';

  @override
  String get notif_channel_vitals_name => 'Salutem & Vitalis SCUTULATUM';

  @override
  String get notif_channel_vitals_desc =>
      'Pondus et tempus requiescendi vento-descendit memorias';

  @override
  String get notif_action_log_water => 'Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => 'Log Farina';

  @override
  String get language => 'Linguae';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '$count d abhinc';
  }
}
