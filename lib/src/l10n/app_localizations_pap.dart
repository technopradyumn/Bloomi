// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Papiamento (`pap`).
class AppLocalizationsPap extends AppLocalizations {
  AppLocalizationsPap([String locale = 'pap']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Kas';

  @override
  String get nav_today => 'Awe';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Kuminda';

  @override
  String get nav_food_diary => 'Diario di Kuminda';

  @override
  String get nav_workout => 'Registro di ehersisio';

  @override
  String get nav_health => 'Salú';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Warda';

  @override
  String get cancel => 'Kanselá';

  @override
  String get delete => 'Elimina';

  @override
  String get edit => 'Editá';

  @override
  String get done => 'Kla';

  @override
  String get close => 'Sera';

  @override
  String get back => 'Bek';

  @override
  String get next => 'Siguiente';

  @override
  String get continue_btn => 'Sigui';

  @override
  String get confirm => 'Konfirmá';

  @override
  String get search => 'Buska';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Tur';

  @override
  String get active => 'Aktivo';

  @override
  String get today => 'Awe';

  @override
  String get yesterday => 'Ayera';

  @override
  String get tomorrow => 'Mañan';

  @override
  String get add => 'Agregá';

  @override
  String get remove => 'Kita';

  @override
  String get refresh => 'Refreská';

  @override
  String get retry => 'Purba di nobo';

  @override
  String get error => 'Eror';

  @override
  String get success => 'Éksito';

  @override
  String get loading => 'Ta karga...';

  @override
  String get no_data => 'No tin dato disponibel';

  @override
  String get offline => 'Modo Offline';

  @override
  String get offline_sub => 'Kambionan lo sinkronisá unabes rekonektá';

  @override
  String get undo => 'Deshací';

  @override
  String get portion => 'Porshon';

  @override
  String get quantity => 'Kantidat';

  @override
  String get unit => 'Unidat';

  @override
  String get clear => 'Kla';

  @override
  String get select => 'Selektá';

  @override
  String get apply => 'Apliká';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Si';

  @override
  String get no => 'No';

  @override
  String get optional => 'Opshonal';

  @override
  String get calories => 'Kaloria';

  @override
  String get protein => 'Proteina';

  @override
  String get carbs => 'Karbohidrato';

  @override
  String get fat => 'Gordura';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Awa';

  @override
  String get steps => 'Pasonan';

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
  String get inches => 'den';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'oranan';

  @override
  String get minutes => 'minüt';

  @override
  String get serving => 'Sirbiendo';

  @override
  String get servings => 'Porshonnan';

  @override
  String get serving_size => 'Tamaño di Porshon';

  @override
  String get per_100g => 'pa 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Oropa';

  @override
  String get middle_east => 'Medio Oriente';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amérika';

  @override
  String get home_title => 'Kas';

  @override
  String get home_greeting_morning => 'Bon Dia';

  @override
  String get home_greeting_afternoon => 'Bon Tardi';

  @override
  String get home_greeting_evening => 'Bon nochi';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dianan di racha',
      one: '1 dia di racha',
      zero: '0 dia di racha',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Kimá';

  @override
  String get home_calories_budget => 'Presupuesto di Kaloria';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ku ta sobra';
  }

  @override
  String get home_water_title => 'Hidratashon diario';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pasonan kana';

  @override
  String get home_quick_actions => 'Akshonnan Rápido';

  @override
  String get home_log_meal => 'Kuminda di palu';

  @override
  String get home_log_water => 'Awa di palu';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Peso di palu';

  @override
  String get home_insights_title => 'Insights di Awe';

  @override
  String get home_quote =>
      'Eskohonan chikitu i saludabel ta krea transformashonnan floresé.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Alrededor i Aire';

  @override
  String get home_notifications => 'Notifikashonnan';

  @override
  String get home_daily_score => 'Puntuashon di Bienestar Diario';

  @override
  String get home_view_all => 'Wak Tur';

  @override
  String get food_diary_title => 'Diario di Kuminda';

  @override
  String get food_breakfast => 'Desayuno';

  @override
  String get food_lunch => 'Almuerso';

  @override
  String get food_dinner => 'Cena';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Agregá Kuminda';

  @override
  String get food_edit_food => 'Edita Kuminda';

  @override
  String get food_add_breakfast => 'Agregá Desayuno';

  @override
  String get food_add_lunch => 'Agregá Almuerso';

  @override
  String get food_add_dinner => 'Agregá Cena';

  @override
  String get food_add_snack => 'Agregá Snèk';

  @override
  String get food_total_calories => 'Kaloria Total';

  @override
  String get food_empty_meal =>
      'No tin kuminda registrá pa e kuminda aki ainda';

  @override
  String get food_empty_diary => 'No tin kuminda registrá pa e dia aki';

  @override
  String get food_log_first_meal =>
      'Primi + pa registrá bo promé kuminda dushi';

  @override
  String get food_quick_add => 'Agregá Rápido';

  @override
  String get food_search_hint => 'Buska platonan, fruta, dal, roti...';

  @override
  String get food_custom_recipe => 'Kuminda i Reseta Personalisa';

  @override
  String get food_scan_barcode => 'Skan kódigo di bara';

  @override
  String get food_camera_scan => 'Skaner di Kuminda di AI';

  @override
  String get food_recent => 'Kuminda Resiente';

  @override
  String get food_favourites => 'Faboritonan';

  @override
  String get food_macro_summary => 'Desglose di Makronutriente';

  @override
  String get food_delete_meal_confirm =>
      'Bo ta sigur ku bo ke kita e artíkulo aki?';

  @override
  String get food_item_deleted => 'Artíkulo di kuminda a wòrdu kita';

  @override
  String get food_remaining => 'restante';

  @override
  String get food_consumed => 'konsumí';

  @override
  String food_of_target(Object target) {
    return 'di $target kcal';
  }

  @override
  String get foodSearch_title => 'Buska Kuminda';

  @override
  String get foodSearch_scan_barcode => 'Skan kódigo di bara';

  @override
  String get foodSearch_take_photo => 'Potrèt di Kuminda';

  @override
  String get foodSearch_custom_food => 'Krea Kuminda Personalisa';

  @override
  String get foodSearch_recent_searches => 'Búskedanan resien';

  @override
  String get foodSearch_popular => 'Platonan Popular';

  @override
  String get foodSearch_no_results =>
      'No tin kuminda ku ta kuadra ku bo búskeda';

  @override
  String get barcode_title => 'Skaner di kódigo di bara';

  @override
  String get barcode_align => 'Alineá kódigo di bara den e kuadro di e kámara';

  @override
  String get barcode_not_found => 'Produkto no a haña den base di dato';

  @override
  String get barcode_premium_feature =>
      'Skan di kódigo di bara ta disponibel ku Bloomi Pro';

  @override
  String get camera_title => 'Skaner di Kuminda di AI';

  @override
  String get camera_tap_hint => 'Saka un potrèt kla di bo plato';

  @override
  String get camera_analysing => 'Analisando plato di kuminda...';

  @override
  String get camera_detected => 'Artíkulonan detektá';

  @override
  String get camera_flash => 'Kambia Flash';

  @override
  String get camera_retake => 'Saka potrèt di nobo';

  @override
  String get camera_confirm_food => 'Konfirmá artíkulonan';

  @override
  String get customFood_title => 'Kuminda i Reseta Personalisa';

  @override
  String get customFood_name_hint => 'Nòmber di plato òf ingrediente';

  @override
  String get customFood_calories_hint => 'Kaloria (kcal)';

  @override
  String get customFood_protein_hint => 'Proteina (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidrato (g)';

  @override
  String get customFood_fat_hint => 'Gordura (g)';

  @override
  String get customFood_save => 'Warda Reseta';

  @override
  String get water_tracker_title => 'Rastreador di Awa';

  @override
  String get water_daily_target => 'Meta di Hidratashon Diario';

  @override
  String get water_logged_today => 'A registrá awe';

  @override
  String get water_add_glass => '+250 ml Glas';

  @override
  String get water_add_bottle => '+500 ml Bòter';

  @override
  String get water_custom_amount => 'Montante Personalisa';

  @override
  String get water_reminder_tip =>
      'Bebe awa regularmente durante henter dia pa energia konstante.';

  @override
  String water_logged_toast(Object amount) {
    return 'A registrá $amount ml di awa 💧';
  }

  @override
  String get workout_title => 'Registro di ehersisio';

  @override
  String get workout_add_exercise => 'Agregá Ehersisio';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Forsa';

  @override
  String get workout_yoga => 'Yoga & Fleksibilidat';

  @override
  String get workout_duration => 'Durashon';

  @override
  String get workout_intensity => 'Intensidat';

  @override
  String get workout_calories_burned => 'Kaloria kimá';

  @override
  String get workout_empty => 'No tin entrenamentu registrá awe';

  @override
  String get workout_save_success => 'Ehersisio a wòrdu wardá ku éksito!';

  @override
  String get workout_type => 'Tipo di ehersisio';

  @override
  String get workout_notes => 'Nota i Reflekshonnan';

  @override
  String get health_overview_title => 'Salú i Vitalnan';

  @override
  String get health_heart_rate => 'Batimentu di kurason';

  @override
  String get health_blood_oxygen => 'Oksígeno den Sanger (SpO2)';

  @override
  String get health_blood_pressure => 'Presion di Sanger';

  @override
  String get health_blood_glucose => 'Glukosa den Sanger';

  @override
  String get health_body_temperature => 'Temperatura di kurpa';

  @override
  String get health_sleep_tracking => 'Rastreo di soño';

  @override
  String get health_weight_tracking => 'Peso & Komposishon di Kurpa';

  @override
  String get health_waist_hip => 'Proporshon di Sintura pa Heup';

  @override
  String get health_devices_hub => 'Aparatonan i Hub di reloj inteligente';

  @override
  String get health_sync_now => 'Sinkronisá Dato di Salú';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Ultimo sinkronisashon: $time';
  }

  @override
  String get health_manual_entry => 'Entrada di Salú Manual';

  @override
  String get health_metric_detail => 'Detayenan di Métriko';

  @override
  String get health_connected_sensors => 'Sensornan di Salú Konektá';

  @override
  String get plan_title => 'Plan diario';

  @override
  String get plan_weekly_title => 'Plan di Bienestar Semanal';

  @override
  String get plan_calorie_target => 'Meta di Kaloria';

  @override
  String get plan_water_target => 'Meta di Hidratashon';

  @override
  String get plan_step_target => 'Meta di Paso';

  @override
  String get plan_sleep_target => 'Meta di Soño';

  @override
  String get plan_meal_suggestions => 'Sugerensia pa kuminda';

  @override
  String get plan_healthy_habits => 'Kustumbernan i Tipnan Saludabel';

  @override
  String get plan_coach_advice => 'Rekomendashonnan di Bloomi AI Coach';

  @override
  String get plan_generated_title => 'Orario diario personalisá';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Editá Profil';

  @override
  String get profile_name => 'Nòmber';

  @override
  String get profile_age => 'Edat';

  @override
  String get profile_gender => 'Género';

  @override
  String get profile_height => 'Altura';

  @override
  String get profile_weight => 'Peso';

  @override
  String get profile_goal => 'Meta Prinsipal';

  @override
  String get profile_activity_level => 'Nivel di aktividat';

  @override
  String get profile_stats => 'Mi Estadístika di Bienestar';

  @override
  String get profile_saved => 'Profil a wòrdu aktualisá ku éksito';

  @override
  String get profile_bmi => 'Índise di Masa di Kurpa (BMI)';

  @override
  String get profile_membership => 'Miembresia';

  @override
  String get settings => 'Ahustonan';

  @override
  String get preferences_habits => 'PREFERENSIA & KUSTUMBERNAN';

  @override
  String get appearance_theme => 'Aparensia i Tema';

  @override
  String get appearance_theme_sub =>
      'Skur, Kla, Modo di Sistema i Opshonnan di Fondo di App';

  @override
  String get permissions => 'Pèrmitnan i Akseso na Sistema';

  @override
  String get permissions_sub =>
      'Konekshon di Salú, Sensornan di Paso, GPS, Notifikashonnan i Kámara';

  @override
  String get reminders_notifications => 'Rekordatorionan i Notifikashonnan';

  @override
  String get reminders_sub =>
      'Ora di kome, awa, kòntròl di peso i rekordatorionan promé ku bai drumi';

  @override
  String get units_of_measurement => 'Unidatnan di Midi';

  @override
  String get units_sub =>
      'Métriko (kg, cm, ml, km) òf Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Idioma di App';

  @override
  String get language_sub =>
      'Ingles, हिन्दी (Hindi), Hinglish & 195+ idioma mundial';

  @override
  String get home_screen_widgets => 'Widgetnan di Pantaya di Kas';

  @override
  String get widgets_sub =>
      'Widgetnan di Android bibu: Hub, Pasonan, Awa, Nutrishon i Maskot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Kompañero di reloj inteligente, tegelnan, komplikashonnan i vitalnan bibu';

  @override
  String get goals_wellness => 'METANAN & PERSONTASHON DI BIENESTAR';

  @override
  String get nutrition_targets => 'Metanan di Nutrishon & Split Makro';

  @override
  String get nutrition_targets_sub =>
      'Meta di kaloria, proteina, karbohidrato, vèt i awa';

  @override
  String get weekly_recap => 'Rekapitulashon di Bienestar Semanal';

  @override
  String get weekly_recap_sub =>
      'Promedio di kaloria di 7 dia, proporshon makro i mihó dia';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Racha di flor aktivo, badge i logronan';

  @override
  String get connected_devices => 'APARATONAN KONEKTA I EKOSISTEMA';

  @override
  String get devices_hub => 'Aparatonan i Hub di reloj inteligente';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Alrededor i Wer';

  @override
  String get surroundings_sub =>
      'Kalidat di aire (AQI), índise UV i tepnan di hidratashon di wer';

  @override
  String get bloomi_pro => 'Suskripshon di Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget di pantaya di inisio i rastreo di vitalnan';

  @override
  String get about_security => 'TOKANTE & SEGURIDAT';

  @override
  String get about_bloomi => 'Tokante Bloomi';

  @override
  String get about_bloomi_sub =>
      'Spesifikashonnan di konstrukshon, vershon, atribushonnan';

  @override
  String get privacy_policy => 'Polítika di Privasidat';

  @override
  String get privacy_policy_sub =>
      'Arkitektura di dato offline-promé, riba aparato';

  @override
  String get terms_conditions => 'Términonan i Kondishonnan';

  @override
  String get terms_conditions_sub =>
      'Kondishonnan di servisio i guianan di bienestar';

  @override
  String get delete_account => 'Elimina Kuenta i Dato';

  @override
  String get delete_account_sub =>
      'Elimina ireversibelmente datonan lokal di SQLite i backupnan di nubia';

  @override
  String get healthy_habits =>
      'Konstruí kustumbernan di bienestar suave i duradero';

  @override
  String get all_logs => 'Mi Datonan i Lognan Rastreá';

  @override
  String get search_language => 'Buska pa idioma òf skritura nativo...';

  @override
  String get languages_available => 'Idiomanan Disponibel';

  @override
  String get no_matching_languages => 'No a haña idiomanan ku ta kuadra';

  @override
  String get try_searching =>
      'Purba buska pa skritura nativo òf ortografia ingles';

  @override
  String get partially_translated => 'Tradusí parsialmente';

  @override
  String get complete_translation => 'Kompleto';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Idioma set na $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Alrededor i Medio Ambiente';

  @override
  String get surroundings_aqi => 'Índise di Kalidat di Aire';

  @override
  String get surroundings_uv => 'Índise UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Humedat';

  @override
  String get surroundings_hydration_advice =>
      'Keda bon hidratá den e kondishonnan di wer aktual.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Buska Kuminda';

  @override
  String get food_quick_barcode => 'Skan Kódigo di Bar 👑';

  @override
  String get food_quick_water => 'Agregá Awa';

  @override
  String get food_quick_custom => 'Kuminda Personalisa';

  @override
  String get surroundings_good => 'Bon';

  @override
  String get surroundings_moderate => 'Moderá';

  @override
  String get surroundings_unhealthy => 'Insaludabel';

  @override
  String get notifications_title => 'Notifikashonnan i Alertanan';

  @override
  String get notifications_empty => 'No tin notifikashon nobo';

  @override
  String get notifications_mark_read => 'Marka Tur komo Lesá';

  @override
  String get notifications_clear => 'Limpiá Tur';

  @override
  String get reminders => 'Konfigurashon di Rekordatorio';

  @override
  String get notifications => 'Notifikashonnan';

  @override
  String get reminders_breakfast_title => 'Rekordatorio di Desayuno 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bon dia! Tempu pa un desayuno nutritivo na $time .';
  }

  @override
  String get reminders_lunch_title => 'Rekordatorio di Almuerso 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pausa i disfrutá di un almuerso balansá i konsiente na $time .';
  }

  @override
  String get reminders_dinner_title => 'Rekordatorio pa sena 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tempu pa un sena lihé i satisfaktorio na $time .';
  }

  @override
  String get reminders_water_title => 'Hidratashon Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tempu pa bebe un glas di awa fresku! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Pesamentu Semanal ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Traha bo métrikonan di kurpa semanal riba Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Ora di drumi Bientu abou 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Relahá i prepará pa un soño trankil ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bon Bini na Bloomi';

  @override
  String get onboard_sub =>
      'Bo kompañero di salú i nutrishon amistoso, offline-promé.';

  @override
  String get onboard_get_started => 'Kuminsá';

  @override
  String get onboard_sign_in => 'Drenta';

  @override
  String get onboard_skip => 'Salta';

  @override
  String get onboard_choose_goal => 'Kiko ta bo meta prinsipal di bienestar?';

  @override
  String get onboard_goal_weight_loss => 'Pèrdida di Peso Suave';

  @override
  String get onboard_goal_muscle => 'Ganashi i Forsa di Múskulo';

  @override
  String get onboard_goal_energy => 'Energia i Vitalidat diario';

  @override
  String get onboard_goal_habits => 'Komementu Sano i Konsiente';

  @override
  String get onboard_about_you => 'Konta Nos di Bo Mes';

  @override
  String get onboard_lifestyle => 'Bo Rutina Diario';

  @override
  String get onboard_permissions_title => 'Pèrmitnan i Akseso na Sistema';

  @override
  String get onboard_permissions_sub =>
      'Duna akseso na pasonan di sinkronisashon, ehersisio i rekordatorionan.';

  @override
  String get onboard_plan_ready_title => 'Bo Plan Personalisa ta Kla!';

  @override
  String get onboard_plan_ready_sub =>
      'Nos a traha un mapa di kaminda di nutrishon i bienestar suave i personalisá djis pa bo.';

  @override
  String get onboard_enter_bloomi => 'Drenta Bloomi';

  @override
  String get insights_weekly_report => 'Rekapitulashon di Bienestar Semanal';

  @override
  String insights_best_day(Object day) {
    return 'Mihó Dia di Konsistensia: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Desblokeá riba $date';
  }

  @override
  String get insights_keep_going => 'Sigui ku e progreso fantástiko!';

  @override
  String get widgets_title => 'Widgetnan di Pantaya di Kas';

  @override
  String widgets_active_count(Object count) {
    return 'Widgetnan aktivo: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Pasonan & Ring Aktivo';

  @override
  String get widgets_water_title => 'Registro Rápido di Hidratashon';

  @override
  String get widgets_mascot_title => 'Kompañero di Maskota di Bloomi';

  @override
  String get wear_os_title => 'Bisti un reloj inteligente di OS';

  @override
  String get wear_os_connected => 'Konektá na Watch';

  @override
  String get wear_os_sync => 'Sinkronisá Dato di Reloj';

  @override
  String get theme_title => 'Aparensia i Tema';

  @override
  String get theme_mode => 'Modo di Tema';

  @override
  String get theme_light => 'Lus';

  @override
  String get theme_dark => 'Skur';

  @override
  String get theme_system => 'Sistema Predeterminá';

  @override
  String get theme_background_palette => 'Paleta di Fondo';

  @override
  String get units_title => 'Unidatnan di Midi';

  @override
  String get units_metric => 'Métriko (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'No por karga e dashboard';

  @override
  String get home_health_permission_req =>
      'Pèrmit di Health Connect ta nesesario';

  @override
  String get home_health_permission_desc =>
      'Bloomi ta rekerí pèrmit di Health Connect pa hala pasonan real, batimentu di kurason i sinkronisá widgetnan di kas mobil den tempu real.';

  @override
  String get home_allow_health => 'Permití Konekshon di Salú';

  @override
  String get home_ready_mindful_day => 'Kla pa un dia konsiente? ✨';

  @override
  String get home_quick_add => 'Agregá Rápido';

  @override
  String get home_live_gps => 'GPS bibu';

  @override
  String get home_calories_remaining_label => 'KALORIANAN TA RESTA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Komé: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap pa Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Meta diario alkansá 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml pa meta diario';
  }

  @override
  String get home_details => 'Detayenan';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade pa desblokea metanan diario personalisá i plan di inteligensi artifisial';

  @override
  String get home_unlock => 'Desblokea 👑';

  @override
  String get home_quick_log_hint => 'Graba lihé un entrada di bienestar';

  @override
  String get food_serving_size => 'Tamaño di Porshon';

  @override
  String get food_serving_grams => 'Sirbiendo (g)';

  @override
  String get food_number_servings => 'Kantidat di Porshon';

  @override
  String get food_calories_per_serving => 'Kaloria pa porshon';

  @override
  String get food_recipe_ingredients => 'Ingredientenan';

  @override
  String get food_recipe_add_ingredient => 'Agregá Ingrediente';

  @override
  String get food_recipe_directions => 'Instrukshonnan i Nota';

  @override
  String get food_recipe_total => 'Nutrishon Total di Reseta';

  @override
  String get food_recipe_per_serving => 'Nutrishon pa porshon';

  @override
  String get food_recipe_saved_toast =>
      'Kuminda personalisá a wòrdu wardá ku éksito!';

  @override
  String get food_barcode_found => 'Produkto Hañá!';

  @override
  String get food_barcode_not_found_desc =>
      'Nos no por a haña e kódigo di bara aki den e base di dato habrí. Bo por agreg’é komo un kuminda personalisá.';

  @override
  String get food_add_custom_btn => 'Agregá Kuminda Personalisa';

  @override
  String get food_scan_again => 'Skan Atrobe';

  @override
  String get food_review_items => 'Repasá Kuminda Detektá';

  @override
  String get food_review_hint =>
      'Ahustá kantidatnan òf kita kualke artíkulo no rekonosé';

  @override
  String get food_log_selected => 'Log Kuminda Selektá';

  @override
  String get food_favourites_title => 'Kuminda Faborito';

  @override
  String get food_recent_title => 'Kuminda Resiente';

  @override
  String get food_no_favourites =>
      'No tin kuminda faborito ainda. Tap kurason riba kualke kuminda pa spar aki.';

  @override
  String get food_no_recents => 'No a haña kuminda registrá resientemente.';

  @override
  String get food_nutrition_details_title => 'Detayenan di Nutrishon diario';

  @override
  String get food_macro_protein_label => 'Desglose di Proteina';

  @override
  String get food_macro_carbs_label => 'Desglose di Karbohidrato';

  @override
  String get food_macro_fat_label => 'Desglose di Vèt';

  @override
  String get food_macro_fiber_label => 'Desglose di Fibra';

  @override
  String get food_daily_target_comparison => 'Komparashon di Meta';

  @override
  String food_target_label(Object target) {
    return 'Meta: $target';
  }

  @override
  String get food_edit_entry => 'Editá Entrada di Diario';

  @override
  String get food_delete_entry => 'Elimina Entrada';

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
    return '$current di $target ml';
  }

  @override
  String get water_intake_history => 'E Lognan di Awa di Awe';

  @override
  String get water_no_logs_today =>
      'No tin awa registrá ainda awe. Hidratá i primi un boton di agregá lihé!';

  @override
  String get water_adjust_goal => 'Ahustá Meta di Dia';

  @override
  String get health_connect_banner => 'Konektá na Salú Konektá';

  @override
  String get health_vitals_summary => 'Vitalnan di Salú diario';

  @override
  String get health_latest_heart_rate => 'Ultimo Frekuensia di Kurason';

  @override
  String get health_latest_bp => 'Presion di Sanger';

  @override
  String get health_latest_spo2 => 'Oksígeno den Sanger';

  @override
  String get health_latest_glucose => 'Glukosa den Sanger';

  @override
  String get health_latest_weight => 'Peso';

  @override
  String get health_latest_sleep => 'Durashon di Soño';

  @override
  String get health_add_manual => 'Agregá Midimentu Manual';

  @override
  String get health_history_trends => 'Tendensianan Históriko';

  @override
  String get health_sync_success => 'Datonan di salú sinkronisá ku éksito!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ora $mins minüt';
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
  String get health_devices_title => 'Aparatonan Konektá i Bistibelnan';

  @override
  String get health_devices_desc =>
      'Manehá smartwatch pareá, trackernan di fitness i sensornan di salú.';

  @override
  String get health_workout_editor_title => 'Edita Ehersisio';

  @override
  String get health_workout_name_label => 'Nòmber di ehersisio';

  @override
  String get health_workout_duration_label => 'Durashon (minüt)';

  @override
  String get health_workout_calories_label => 'Kaloria kalkulá (kcal)';

  @override
  String get health_workout_date_label => 'Fecha i Ora';

  @override
  String get plan_daily_wellness_roadmap => 'Bo mapa di kaminda personalisá';

  @override
  String get plan_morning_routine => 'Rutina di mainta';

  @override
  String get plan_afternoon_routine => 'Bienestar di Merdia';

  @override
  String get plan_evening_routine => 'Bientu di Anochi';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => 'Enfoke di Bienestar di 7 Dia';

  @override
  String get plan_targets_title => 'Metanan i Metanan di Bienestar';

  @override
  String get plan_calorie_budget_label => 'Presupuesto di Kaloria diario';

  @override
  String get plan_water_budget_label => 'Meta di Awa diario';

  @override
  String get plan_step_budget_label => 'Meta di e paso diario';

  @override
  String get plan_macro_split_label => 'Proporshon di Makronutriente';

  @override
  String get profile_personal_details => 'Detayenan Personal';

  @override
  String get profile_body_stats => 'Midimentu di kurpa';

  @override
  String get profile_app_preferences => 'Preferensia i Konfigurashon di App';

  @override
  String get profile_edit_name_hint => 'Bo nòmber';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Altura ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Peso ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Edat';

  @override
  String get profile_gender_male => 'Maskulino';

  @override
  String get profile_gender_female => 'Femenino';

  @override
  String get profile_gender_other => 'Otro / Preferá pa no bisa';

  @override
  String get profile_activity_sedentary =>
      'Sedentario (Poko òf ningun ehersisio)';

  @override
  String get profile_activity_light => 'Lihé Aktivo (1-3 dia/siman)';

  @override
  String get profile_activity_moderate =>
      'Moderadamente Aktivo (3-5 dia/siman)';

  @override
  String get profile_activity_very => 'Hopi Aktivo (6-7 dia/siman)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Instalá e tegel i komplikashon di Bloomi riba bo reloj Wear OS pa tira un bista riba kaloria, awa i pasonan.';

  @override
  String get settings_widgets_header => 'Widgetnan Interaktivo di Android';

  @override
  String get settings_widgets_desc =>
      'Pin widgetnan den tempu real riba pantaya di inisio di bo aparato pa aktualisashonnan instantáneo.';

  @override
  String get settings_about_header => 'Tokante Bloomi';

  @override
  String get settings_about_version => 'Vershon 1.0.0';

  @override
  String get settings_about_build => 'Konstruí 100';

  @override
  String get settings_about_credits =>
      'Trahá ku kuido pa un bida konsiente i saludabel.';

  @override
  String get settings_terms_header => 'Términonan i Kondishonnan';

  @override
  String get settings_privacy_header => 'Polítika di Privasidat';

  @override
  String get settings_delete_header => 'Elimina Kuenta i Dato';

  @override
  String get settings_delete_warning =>
      'E akshon aki no por wòrdu deshací. Tur bo kuminda, ehersisio, vitalnan i profil lo wòrdu eliminá permanentemente.';

  @override
  String get settings_delete_confirm_btn => 'Elimina Permanentemente';

  @override
  String get onboard_welcome_headline => 'Bon Bini na Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Tracking di bienestar suave i konsiente diseñá rònt di bo bida.';

  @override
  String get onboard_step_about => 'Tokante di Bo';

  @override
  String get onboard_step_goals => 'Bo Metanan';

  @override
  String get onboard_step_lifestyle => 'Kustumbernan di Dia';

  @override
  String get onboard_step_permissions => 'Pèrmitnan';

  @override
  String get onboard_step_plan => 'Kla!';

  @override
  String get onboard_health_connect_perm => 'Akseso na Konekshon di Salú';

  @override
  String get onboard_step_sensors_perm => 'Sensor di Kontadó di Paso';

  @override
  String get onboard_notif_perm =>
      'Rekordatorionan i Notifikashonnan Konsiente';

  @override
  String get onboard_camera_perm => 'Kámara (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Duna pèrmitnan';

  @override
  String get onboard_continue_dashboard => 'Habri Dashboard';

  @override
  String get notif_channel_hydration_name => 'Empuhe di Hidratashon';

  @override
  String get notif_channel_hydration_desc =>
      'Rekordatorionan di awa suave durante henter dia';

  @override
  String get notif_channel_nutrition_name =>
      'Rekordatorionan di Kuminda i Nutrishon';

  @override
  String get notif_channel_nutrition_desc =>
      'Alertanan di rekordatorio di desayuno, almuerso i sena';

  @override
  String get notif_channel_steps_name => 'Hitonan di Paso';

  @override
  String get notif_channel_steps_desc =>
      'Selebrashonnan ora di alkansá metanan di paso diario';

  @override
  String get notif_channel_vitals_name => 'Kontrolnan di Salú i Vitalnan';

  @override
  String get notif_channel_vitals_desc => 'Rekordatorionan di peso i bai drumi';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Kuminda di palu';

  @override
  String get language => 'Idioma';

  @override
  String get share => 'Kompartí';

  @override
  String common_days(Object count) {
    return '$count d ago';
  }
}
