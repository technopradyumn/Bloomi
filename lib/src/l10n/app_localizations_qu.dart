// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Quechua (`qu`).
class AppLocalizationsQu extends AppLocalizations {
  AppLocalizationsQu([String locale = 'qu']) : super(locale);

  @override
  String get app_name => 'Bloomi sutiyuq';

  @override
  String get nav_home => 'Wasi';

  @override
  String get nav_today => 'Kunan punchaw';

  @override
  String get nav_plan => 'Planea';

  @override
  String get nav_food => 'Mikhuna';

  @override
  String get nav_food_diary => 'Mikhuy Diario';

  @override
  String get nav_workout => 'Entrenamiento Registro';

  @override
  String get nav_health => 'Salud';

  @override
  String get nav_profile => 'Perfil nisqa';

  @override
  String get save => 'Waqaychay';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Llamk\'apuy';

  @override
  String get done => 'Rurasqa';

  @override
  String get close => 'Wichqay';

  @override
  String get back => 'Kutiy';

  @override
  String get next => 'Qatiqninpi';

  @override
  String get continue_btn => 'Hinallayá ruway';

  @override
  String get confirm => 'Confirmar';

  @override
  String get search => 'Maskay';

  @override
  String get filter => 'Filtro nisqa';

  @override
  String get all => 'Tukuy';

  @override
  String get active => 'Activo nisqa';

  @override
  String get today => 'Kunan punchaw';

  @override
  String get yesterday => 'Qayna punchaw';

  @override
  String get tomorrow => 'Paqarin';

  @override
  String get add => 'Yapay';

  @override
  String get remove => 'Qulluy';

  @override
  String get refresh => 'Refrescar';

  @override
  String get retry => 'Wakmanta kallpachakuy';

  @override
  String get error => 'Pantasqa';

  @override
  String get success => 'Éxito nisqa';

  @override
  String get loading => 'Cargachkanki...';

  @override
  String get no_data => 'Mana ima datospas kanchu';

  @override
  String get offline => 'Modo Offline nisqa';

  @override
  String get offline_sub =>
      'Huk kuti musuqmanta tinkisqa kaptin tikraykunaqa tinkinqa';

  @override
  String get undo => 'Deshacer';

  @override
  String get portion => 'Porción nisqa';

  @override
  String get quantity => 'Cantidad nisqa';

  @override
  String get unit => 'Unidad';

  @override
  String get clear => 'Chuya';

  @override
  String get select => 'Akllay';

  @override
  String get apply => 'Aplicay';

  @override
  String get reset => 'Reset nisqa';

  @override
  String get ok => 'ALLINMI';

  @override
  String get yes => 'Arí';

  @override
  String get no => 'Manan';

  @override
  String get optional => 'Munasqa';

  @override
  String get calories => 'Calorías nisqa';

  @override
  String get protein => 'Proteína nisqa';

  @override
  String get carbs => 'Carbohidratos';

  @override
  String get fat => 'Wira';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Yaku';

  @override
  String get steps => 'Pasos nisqakuna';

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
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Servispa';

  @override
  String get servings => 'Servicionkuna';

  @override
  String get serving_size => 'Tamaño de Servicio';

  @override
  String get per_100g => 'sapa 100g';

  @override
  String get india => 'India suyu';

  @override
  String get asia => 'Awya Yalapi';

  @override
  String get europe => 'Iwrupapi';

  @override
  String get middle_east => 'Chawpi Oriente';

  @override
  String get africa => 'África suyupi';

  @override
  String get americas => 'Américas nisqapi';

  @override
  String get home_title => 'Wasi';

  @override
  String get home_greeting_morning => 'Allin p\'unchaw';

  @override
  String get home_greeting_afternoon => 'Allin Tarde';

  @override
  String get home_greeting_evening => 'Allin Chisi';

  @override
  String get home_streak_title => 'T’ika Racha';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count punchawkuna qatiqninpi',
      one: '1 punchaw racha',
      zero: '0 punchaw qatiqninpi',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ruphasqa';

  @override
  String get home_calories_budget => 'Presupuesto de Calorías nisqa';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal puchuq';
  }

  @override
  String get home_water_title => 'Sapa punchaw Hidratación';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pasos Purisqa';

  @override
  String get home_quick_actions => 'Utqaylla Ruwaykuna';

  @override
  String get home_log_meal => 'Log Mikhuna';

  @override
  String get home_log_water => 'Tronco Yaku';

  @override
  String get home_log_workout => 'Log Entrenamiento';

  @override
  String get home_log_weight => 'Tronco Llasaq';

  @override
  String get home_insights_title => 'Kunan punchawpi Insights';

  @override
  String get home_quote =>
      'Huch’uy qhali akllanakuna t’ikaq t’ikraykunata paqarichimun.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Entrenador';

  @override
  String get home_surroundings => 'Muyuriq & Wayra';

  @override
  String get home_notifications => 'Willakuykuna';

  @override
  String get home_daily_score => 'Sapa punchaw Allin Kawsaymanta Puntuacion';

  @override
  String get home_view_all => 'Tukuy rikuy';

  @override
  String get food_diary_title => 'Mikhuy Diario';

  @override
  String get food_breakfast => 'Desayuno nisqa';

  @override
  String get food_lunch => 'Almuerzo';

  @override
  String get food_dinner => 'Cenay';

  @override
  String get food_snacks => 'T’antakuna';

  @override
  String get food_add_food => 'Mikhunata yapay';

  @override
  String get food_edit_food => 'Mikhuna allichay';

  @override
  String get food_add_breakfast => 'Desayuno yapay';

  @override
  String get food_add_lunch => 'Almuerzota yapay';

  @override
  String get food_add_dinner => 'Cenata yapay';

  @override
  String get food_add_snack => 'Snack nisqatapas yapay';

  @override
  String get food_total_calories => 'Total Calorías nisqa';

  @override
  String get food_empty_meal =>
      'Manaraqmi mikhuykuna kay mikhuypaq registrasqachu';

  @override
  String get food_empty_diary =>
      'Mana mikhuykuna registradochu kay p’unchawpaq';

  @override
  String get food_log_first_meal =>
      '+ ñit’iy ñawpaq sumaq mikhusqaykita registranaykipaq';

  @override
  String get food_quick_add => 'Utqaylla Yanapay';

  @override
  String get food_search_hint =>
      'Maskay platokunata, frutakunata, dal, roti...';

  @override
  String get food_custom_recipe => 'Mikhuy & Receta Personalizada';

  @override
  String get food_scan_barcode => 'Código de Barras de Escanear';

  @override
  String get food_camera_scan => 'AI Mikhuy Escáner';

  @override
  String get food_recent => 'Kunan pacha Mikhuykuna';

  @override
  String get food_favourites => 'Favoritos nisqakuna';

  @override
  String get food_macro_summary => 'Macronutriente nisqakunaq t’aqakuynin';

  @override
  String get food_delete_meal_confirm =>
      '¿Segurochu kanki kay elementota hurquyta munasqaykimanta?';

  @override
  String get food_item_deleted => 'Mikhuy imapas hurqusqa';

  @override
  String get food_remaining => 'puchuq';

  @override
  String get food_consumed => 'mikhusqa';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Mikhuykunata maskay';

  @override
  String get foodSearch_scan_barcode => 'Código de Barras de Escanear';

  @override
  String get foodSearch_take_photo => 'Snap Mikhuy Foto';

  @override
  String get foodSearch_custom_food => 'Sapanchasqa Mikhuy ruway';

  @override
  String get foodSearch_recent_searches => 'Kunan pacha Maskanakuna';

  @override
  String get foodSearch_popular => 'Mikhuykuna Popular';

  @override
  String get foodSearch_no_results => 'Mana maskasqaykiwan tupaq mikhuykuna';

  @override
  String get barcode_title => 'Escáner de Código de barras nisqa';

  @override
  String get barcode_align =>
      'Camarapa marcon ukupi código de barras nisqakunata tupachiy';

  @override
  String get barcode_not_found => 'Ruru mana tarisqa willay tantanapi';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro nisqawanmi código de barras nisqa escaneo nisqa kan';

  @override
  String get camera_title => 'AI Mikhuy Escáner';

  @override
  String get camera_tap_hint => 'Platoykimanta sut’ita fotota horqoy';

  @override
  String get camera_analysing => 'Mikhuy platota t\'aqwispa...';

  @override
  String get camera_detected => 'Detectadas nisqakuna';

  @override
  String get camera_flash => 'Flash nisqapi tikray';

  @override
  String get camera_retake => 'Fotota kaqmanta hurquy';

  @override
  String get camera_confirm_food => 'Itemkunata takyachiy';

  @override
  String get customFood_title => 'Mikhuy & Receta Personalizada';

  @override
  String get customFood_name_hint => 'Plato utaq ingrediente suti';

  @override
  String get customFood_calories_hint => 'Calorías (kcal) nisqa.';

  @override
  String get customFood_protein_hint => 'Proteína (g) nisqa.';

  @override
  String get customFood_carbs_hint => 'Carbohidratos (g) 1.1.';

  @override
  String get customFood_fat_hint => 'Wira (g) .';

  @override
  String get customFood_save => 'Waqaychay Receta';

  @override
  String get water_tracker_title => 'Yaku qatiq';

  @override
  String get water_daily_target => 'Meta de Hidratación Diaria nisqa';

  @override
  String get water_logged_today => 'Logged Kunan punchaw';

  @override
  String get water_add_glass => '+250 ml Vidrio nisqa';

  @override
  String get water_add_bottle => '+500 ml Botella';

  @override
  String get water_custom_amount => 'Cantidad Personalizada';

  @override
  String get water_reminder_tip =>
      'Tukuy punchaw sapa kuti yakuta upyana, mana chiriyaspa kallpayuq kanaykipaq.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml yaku 💧';
  }

  @override
  String get workout_title => 'Entrenamiento Registro';

  @override
  String get workout_add_exercise => 'Yapay Entrenamiento';

  @override
  String get workout_cardio => 'Cardio nisqa';

  @override
  String get workout_strength => 'Kallpa';

  @override
  String get workout_yoga => 'Yoga & Flexibilidad nisqa';

  @override
  String get workout_duration => 'Unay tiempopi';

  @override
  String get workout_intensity => 'Intensidad nisqa';

  @override
  String get workout_calories_burned => 'Calorías Ruphasqa';

  @override
  String get workout_empty =>
      'Mana entrenamientokuna kunan punchaw registrasqachu';

  @override
  String get workout_save_success => '¡Entrenamiento allinta qispichisqa!';

  @override
  String get workout_type => 'Tipo de Entrenamiento';

  @override
  String get workout_notes => 'Notas & Reflexiones nisqa';

  @override
  String get health_overview_title => 'Salud & Vitales nisqamanta';

  @override
  String get health_heart_rate => 'Sonqo Kuyuriynin';

  @override
  String get health_blood_oxygen => 'Yawarpi Oxigeno (SpO2) .';

  @override
  String get health_blood_pressure => 'Yawarpa ñit’iynin';

  @override
  String get health_blood_glucose => 'Yawarpi Glucosa nisqa';

  @override
  String get health_body_temperature => 'Kurku Ruphay';

  @override
  String get health_sleep_tracking => 'Puñuy qatipay';

  @override
  String get health_weight_tracking => 'Peso & Composición Cuerpo nisqa';

  @override
  String get health_waist_hip => 'Ratio Cinturamanta Caderakama';

  @override
  String get health_devices_hub => 'Dispositivos & Smartwatch Hub nisqa';

  @override
  String get health_sync_now => 'Saludmanta Willakuykunata tinkuchiy';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Qhipa kaq tinkisqa: $time';
  }

  @override
  String get health_manual_entry => 'Manual Salud Yaykuy';

  @override
  String get health_metric_detail => 'Detalles Métricos nisqamanta';

  @override
  String get health_connected_sensors => 'Sensores de Salud T’inkisqa';

  @override
  String get plan_title => 'Sapa punchaw Plan';

  @override
  String get plan_weekly_title => 'Plan de Bienestar Semanal nisqa';

  @override
  String get plan_calorie_target => 'Calorías nisqamanta Objetivo';

  @override
  String get plan_water_target => 'Hidratación nisqamanta Objetivo';

  @override
  String get plan_step_target => 'Paso Objetivo';

  @override
  String get plan_sleep_target => 'Puñuy Target';

  @override
  String get plan_meal_suggestions => 'Mikhuymanta yuyaychaykuna';

  @override
  String get plan_healthy_habits => 'Habitos & Consejos Saludables nisqa';

  @override
  String get plan_coach_advice => 'Bloomi AI Entrenadorpa yuyaychasqan';

  @override
  String get plan_generated_title => 'Sapa punchaw horario personalizado';

  @override
  String get profile_title => 'Perfil nisqa';

  @override
  String get profile_edit => 'Perfil nisqa llamk\'apuy';

  @override
  String get profile_name => 'Suti';

  @override
  String get profile_age => 'Edad';

  @override
  String get profile_gender => 'Qhari warmi';

  @override
  String get profile_height => 'Altura';

  @override
  String get profile_weight => 'Llasaq';

  @override
  String get profile_goal => 'Meta Primaria nisqa';

  @override
  String get profile_activity_level => 'Ruray Pata';

  @override
  String get profile_stats => 'Mi Estadísticas de Bienestar';

  @override
  String get profile_saved => 'Perfil allinta musuqyachisqa';

  @override
  String get profile_bmi => 'Índice de Masa Corporal (IMC) nisqa.';

  @override
  String get profile_membership => 'Miembron kay';

  @override
  String get settings => 'Ajustes nisqa';

  @override
  String get preferences_habits => 'IMAYNA RUWAYKUNA & HÁBITOS';

  @override
  String get appearance_theme => 'Apariencia & Tema';

  @override
  String get appearance_theme_sub =>
      'Tutayaq, K\'anchay, Sistema Modo & App Fondo Akllanakuna';

  @override
  String get permissions => 'Permisokuna & Sistemaman yaykuy';

  @override
  String get permissions_sub =>
      'Salud Conectar, Sensores de Paso, GPS, Willakuykuna & Cámara';

  @override
  String get reminders_notifications => 'Yuyarichiykuna & Willakuykuna';

  @override
  String get reminders_sub =>
      'Mikhuy pachakuna, yaku, llasaynin check-in & puñuna pacha yuyarichiykuna';

  @override
  String get units_of_measurement => 'Unidades de Medición nisqa';

  @override
  String get units_sub =>
      'Métrico (kg, cm, ml, km) utaq Imperial (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'App Simi';

  @override
  String get language_sub =>
      'Inglés, हिन्दी (Hindi), Hinglish & 195+ pachantinpi simikuna';

  @override
  String get home_screen_widgets => 'Pantalla qallariypi Widgets nisqakuna';

  @override
  String get widgets_sub =>
      'Kawsaq Android widgets: Hub, Pasos, Yaku, Nutrición & Mascota';

  @override
  String get wear_os_watch_app => 'OS Watch App nisqawan churakuy';

  @override
  String get wear_os_sub =>
      'Smartwatch compañero, azulejos, complicaciones & kawsaq vitales';

  @override
  String get goals_wellness => 'METAS & ALLIN KAWSAYMANTA IMAYNA RUWAYKUNA';

  @override
  String get nutrition_targets => 'Nutrición Objetivos & Macro Rakisqa';

  @override
  String get nutrition_targets_sub =>
      'Calorías meta, proteína, carbohidratos, wira & yaku meta';

  @override
  String get weekly_recap => 'Semanal Bienestar Recap';

  @override
  String get weekly_recap_sub =>
      '7 p’unchaw calorías promedio, macro ratio & aswan allin p’unchaw';

  @override
  String get streaks_milestones => 'Rayas & Hitos';

  @override
  String get streaks_sub => 'T’ika rayas activos, insignias & logros';

  @override
  String get connected_devices => 'DISPOSITIVO CONECTADO & ECOSISTEMA';

  @override
  String get devices_hub => 'Dispositivos & Smartwatch Hub nisqa';

  @override
  String get devices_hub_sub =>
      'Salud Conectar, Galaxia Reloj, Pixel Reloj, Garmin';

  @override
  String get surroundings_weather => 'Muyuriq & Tiempo';

  @override
  String get surroundings_sub =>
      'Wayra calidad (AQI), índice UV & pacha hidratación consejos';

  @override
  String get bloomi_pro => 'Bloomi Pro Suscripción nisqa';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 pantalla qallariy widgets & vitales qatiy';

  @override
  String get about_security => 'SOBRE & SEGURIDAD';

  @override
  String get about_bloomi => 'Bloomimanta';

  @override
  String get about_bloomi_sub =>
      'Especificaciones, versión, atribuciones nisqakunata ruway';

  @override
  String get privacy_policy => 'Sapanchasqa willakuy';

  @override
  String get privacy_policy_sub =>
      'Mana tinkisqa-ñawpaq, dispositivopi willay arquitectura';

  @override
  String get terms_conditions => 'Términos & Condiciones nisqakuna';

  @override
  String get terms_conditions_sub =>
      'Serviciomanta kamachiykuna chaymanta allin kawsay kamachiykuna';

  @override
  String get delete_account => 'Cuenta & Datos nisqa qulluy';

  @override
  String get delete_account_sub =>
      'Mana kutichiy atina llaqta SQLite willayta chaymanta phuyu waqaychasqakunata chinkachiy';

  @override
  String get healthy_habits =>
      'Llampu, wiñaypaq allin kawsay costumbrekunata hatarichiy';

  @override
  String get all_logs => 'Mi Datos & Registros Rastreados';

  @override
  String get search_language => 'Simiwan utaq mama qillqawan maskay...';

  @override
  String get languages_available => 'Simikuna Kaq';

  @override
  String get no_matching_languages => 'Mana tupaq simikuna tarisqachu';

  @override
  String get try_searching =>
      'Nativo qillqawan utaq inglés qillqawan maskayta kallpanchakuy';

  @override
  String get partially_translated => 'Huk chikanpi tikrasqa';

  @override
  String get complete_translation => 'Completo';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Simi churasqa $name ($nativeName) nisqaman.';
  }

  @override
  String get surroundings_title => 'Muyuriq & Pachamama';

  @override
  String get surroundings_aqi => 'Wayrapa Calidadninpa Indice';

  @override
  String get surroundings_uv => 'Índice UV nisqa';

  @override
  String get surroundings_temp => 'Ruphay';

  @override
  String get surroundings_humidity => 'Humedad nisqa';

  @override
  String get surroundings_hydration_advice =>
      'Kunan pachakunapi allin hidratado kay.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Mikhuna maskay';

  @override
  String get food_quick_barcode => 'Código de Barras de Escanear 👑';

  @override
  String get food_quick_water => 'Yakuta yapay';

  @override
  String get food_quick_custom => 'Sapanchasqa Mikhuy';

  @override
  String get surroundings_good => 'Allinmi';

  @override
  String get surroundings_moderate => 'Chawpi';

  @override
  String get surroundings_unhealthy => 'Mana qhali';

  @override
  String get notifications_title => 'Willakuykuna & Alertakuna';

  @override
  String get notifications_empty => 'Mana musuq willakuykunata';

  @override
  String get notifications_mark_read => 'Llapallantan Leesqa nispa marcay';

  @override
  String get notifications_clear => 'Tukuy Ch\'uyanchana';

  @override
  String get reminders => 'Yuyarichinapaq Ajustes';

  @override
  String get notifications => 'Willakuykuna';

  @override
  String get reminders_breakfast_title => 'Desayuno Yuyarichiy 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return '¡Allin p\'unchaw! Tiempo huk nutritivo desayunopaq $time .';
  }

  @override
  String get reminders_lunch_title => 'Almuerzo Yuyarichiy 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Huk samay hinaspa kusikuy huk equilibrado, yuyayniyuq almuerzota $time .';
  }

  @override
  String get reminders_dinner_title => 'Cena Yuyarichiy 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time nisqapi llamp’u, kusichiq cenapaq pacha.';
  }

  @override
  String get reminders_water_title => 'Hidratación Empuje 💧';

  @override
  String reminders_water_body(Object time) {
    return '¡Tiempo huk musuq vaso yakuta upyanapaq! ($time) .';
  }

  @override
  String get reminders_weight_title => 'Sapa semana Pesamiento ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) nisqapi sapa semana cuerpoykipa mitricankunata qatipay.';
  }

  @override
  String get reminders_sleep_title => 'Puñuna Wayra-uray 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Samariy hinaspa samay puñunapaq wakichiy ( $time ).';
  }

  @override
  String get onboard_welcome => 'Allin hamusqayki Bloomi llaqtaman';

  @override
  String get onboard_sub =>
      'Amistadniyuq, mana internetpi-ñawpaqta qhali kaymanta chaymanta mikhuymanta compañeroyki.';

  @override
  String get onboard_get_started => 'Qallariy';

  @override
  String get onboard_sign_in => 'Yaykuy';

  @override
  String get onboard_skip => 'Saltay';

  @override
  String get onboard_choose_goal => '¿Imataq aswan allin kawsaypaq metayki?';

  @override
  String get onboard_goal_weight_loss => 'Llamp’u Llasaq Piray';

  @override
  String get onboard_goal_muscle => 'Aycha Ganancia & Kallpa';

  @override
  String get onboard_goal_energy => 'Sapa punchaw Energía & Vitalidad';

  @override
  String get onboard_goal_habits => 'Saludable Yuyaywan Mikhuy';

  @override
  String get onboard_about_you => 'Willawayku Qanmanta';

  @override
  String get onboard_lifestyle => 'Sapa punchaw Rutinayki';

  @override
  String get onboard_permissions_title => 'Permisokuna & Sistemaman yaykuy';

  @override
  String get onboard_permissions_sub =>
      'Sincronización llamkanakunaman, entrenamientokunaman chaymanta yuyarichiykunaman yaykuyta quy.';

  @override
  String get onboard_plan_ready_title =>
      '¡Plan Personalizado nisqaykiqa Listoñam kachkan!';

  @override
  String get onboard_plan_ready_sub =>
      'Qanllapaqmi huk llampu, sapanchasqa nutrición hinaspa allin kawsay hoja de ruta ruwarqayku.';

  @override
  String get onboard_enter_bloomi => 'Bloomi nisqaman haykuy';

  @override
  String get insights_weekly_report => 'Semanal Bienestar Recap';

  @override
  String insights_best_day(Object day) {
    return 'Aswan allin Consistencia P\'unchaw: $day .';
  }

  @override
  String get insights_streaks_badges => 'Rayas & Hitos';

  @override
  String insights_unlocked_on(Object date) {
    return '$date nisqapi mana wichq\'asqa.';
  }

  @override
  String get insights_keep_going =>
      '¡Hinallapuni chay sumaq ñawpaqman puriyta!';

  @override
  String get widgets_title => 'Pantalla qallariypi Widgets nisqakuna';

  @override
  String widgets_active_count(Object count) {
    return 'Widgetkuna llamk\'achisqa: $count .';
  }

  @override
  String get widgets_hub_title => 'Bloomi Allin Kawsay Wasi';

  @override
  String get widgets_steps_title => 'Pasos & Anillo Activo';

  @override
  String get widgets_water_title => 'Hidratación Utqaylla registro';

  @override
  String get widgets_mascot_title => 'Bloomi Mascota Compañero';

  @override
  String get wear_os_title => 'OS Smartwatch nisqawan churakuy';

  @override
  String get wear_os_connected => 'Watch nisqawan tinkisqa';

  @override
  String get wear_os_sync => 'Watch Datos nisqa sincronización';

  @override
  String get theme_title => 'Apariencia & Tema';

  @override
  String get theme_mode => 'Modo Tema nisqamanta';

  @override
  String get theme_light => 'K’anchay';

  @override
  String get theme_dark => 'Tutayaq';

  @override
  String get theme_system => 'Sistema Default nisqa';

  @override
  String get theme_background_palette => 'Paleta de Fondos';

  @override
  String get units_title => 'Unidades de Medición nisqa';

  @override
  String get units_metric => 'Mitru (kg, cm, ml) .';

  @override
  String get units_imperial => 'Imperial (lbs, en, fl oz) nisqa.';

  @override
  String get home_unable_load => 'Mana atikunchu tablero de mando cargayta';

  @override
  String get home_health_permission_req => 'Salud Conectar Permiso Necesitakun';

  @override
  String get home_health_permission_desc =>
      'Bloomi Health Connect permisota mañan chiqa llamkanakuna, sunqu ritmo, chaymanta kuyuchina wasi widgetkuna chiqa pachapi tinkinapaq.';

  @override
  String get home_allow_health => 'Salud Conectarta saqiy';

  @override
  String get home_ready_mindful_day =>
      '¿Listochu kashanki yuyayniyoq p’unchaypaq? ✨';

  @override
  String get home_quick_add => 'Utqaylla Yanapay';

  @override
  String get home_live_gps => 'Kawsaq GPS';

  @override
  String get home_calories_remaining_label => 'CALORIAS PUESTAS';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Mikhusqa: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Grifo para Rastreador de Agua 💧';

  @override
  String get home_water_goal_reached => 'Sapa punchaw meta chayasqa 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml sapa punchaw metaman';
  }

  @override
  String get home_details => 'Detalles';

  @override
  String get home_upgrade_plan_desc =>
      'Yanapakuy sapanchasqa sapa p\'unchaw metakuna & AI plan kichaypaq';

  @override
  String get home_unlock => 'Desbloquear 👑';

  @override
  String get home_quick_log_hint =>
      'Utqaylla allin kaymanta qillqasqata qillqay';

  @override
  String get food_serving_size => 'Tamaño de Servicio';

  @override
  String get food_serving_grams => 'Servispa (g) .';

  @override
  String get food_number_servings => 'Hayka Servisqakuna';

  @override
  String get food_calories_per_serving => 'Calorías nisqa sapa porción nisqapi';

  @override
  String get food_recipe_ingredients => 'Ingredientekuna';

  @override
  String get food_recipe_add_ingredient => 'Ingrediente nisqatapas yapay';

  @override
  String get food_recipe_directions => 'Instrucciones & Notas';

  @override
  String get food_recipe_total => 'Total Receta Nutrición nisqamanta';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrición nisqamanta';

  @override
  String get food_recipe_saved_toast =>
      '¡Mikhuy personalizado allinta qispichisqa!';

  @override
  String get food_barcode_found => 'Producto Tarisqa!';

  @override
  String get food_barcode_not_found_desc =>
      'Kay barcode nisqataqa manam kichasqa willañiqintinpi tarirqaykuchu. Chaytaqa yapawaqmi costumbre mikuy hina.';

  @override
  String get food_add_custom_btn => 'Mikhuna Sapanchasqa Yapay';

  @override
  String get food_scan_again => 'Yapamanta escanear';

  @override
  String get food_review_items => 'Riqsisqa Mikhuykunata qhaway';

  @override
  String get food_review_hint =>
      'Cantidades nisqakunata allichay utaq ima mana riqsisqa kaqtapas hurquy';

  @override
  String get food_log_selected => 'Log Akllasqa Mikhuykuna';

  @override
  String get food_favourites_title => 'Munasqa Mikhuykuna';

  @override
  String get food_recent_title => 'Kunan pacha Mikhuykuna';

  @override
  String get food_no_favourites =>
      'Manaraqmi munasqa mikhuykuna. Ima mikhuytapas sunquta ñit’iy kaypi waqaychanaykipaq.';

  @override
  String get food_no_recents =>
      'Mana chayllaraq registrochasqa mikhuykuna tarisqachu.';

  @override
  String get food_nutrition_details_title =>
      'Sapa punchaw Mikhuymanta Detalles';

  @override
  String get food_macro_protein_label => 'Proteína nisqa Pakikuy';

  @override
  String get food_macro_carbs_label => 'Carbohidratos Pakikuy';

  @override
  String get food_macro_fat_label => 'Wira Pakikuy';

  @override
  String get food_macro_fiber_label => 'Fibra Pakikuy';

  @override
  String get food_daily_target_comparison => 'Meta Comparación nisqa';

  @override
  String food_target_label(Object target) {
    return 'Meta: $target nisqa.';
  }

  @override
  String get food_edit_entry => 'Diario nisqapi qillqasqata allichay';

  @override
  String get food_delete_entry => 'Yaykusqa Borrar';

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
    return '$current de $target ml';
  }

  @override
  String get water_intake_history => 'Kunan punchaw Yaku Tronco';

  @override
  String get water_no_logs_today =>
      'Manaraqmi kunankama yaku registrasqachu. Hidratar hinaspa ñitiy huk botón rápido yapay!';

  @override
  String get water_adjust_goal => 'Sapa punchaw Meta nisqapi allichay';

  @override
  String get health_connect_banner => 'Salud Conectar nisqawan tinkisqa';

  @override
  String get health_vitals_summary => 'Sapa punchaw Salud Vitales';

  @override
  String get health_latest_heart_rate => 'Qhipa kaq Sunqu Ruway';

  @override
  String get health_latest_bp => 'Yawarpa ñit’iynin';

  @override
  String get health_latest_spo2 => 'Yawar Oxígeno nisqa';

  @override
  String get health_latest_glucose => 'Yawarpi Glucosa nisqa';

  @override
  String get health_latest_weight => 'Llasaq';

  @override
  String get health_latest_sleep => 'Puñuy Unay pacha';

  @override
  String get health_add_manual => 'Manual Tupuyta yapay';

  @override
  String get health_history_trends => 'Tendencias Históricas nisqamanta';

  @override
  String get health_sync_success =>
      '¡Saludmanta willakuykunaqa allintam sincronizasqa!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours horas $mins mins';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm nisqa';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % nisqa.';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg nisqa';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL nisqa';
  }

  @override
  String get health_devices_title =>
      'Dispositivos conectados & Wearables nisqa';

  @override
  String get health_devices_desc =>
      'Iskay iskaymanta smartwatches, fitness qatiq, chaymanta qhali kaymanta sensores kamachiy.';

  @override
  String get health_workout_editor_title => 'Llamk\'apuy Llamk\'apuy';

  @override
  String get health_workout_name_label => 'Entrenamiento Suti';

  @override
  String get health_workout_duration_label => 'Unay pacha (minutos) .';

  @override
  String get health_workout_calories_label => 'Calorías yupasqa (kcal) .';

  @override
  String get health_workout_date_label => 'Fecha y Hora';

  @override
  String get plan_daily_wellness_roadmap =>
      'Hoja de Ruta Personalizada nisqayki';

  @override
  String get plan_morning_routine => 'Rutina de la mañana';

  @override
  String get plan_afternoon_routine => 'Chawpi punchaw Allin kawsay';

  @override
  String get plan_evening_routine => 'Ch’isi Wayra-Uray';

  @override
  String get plan_coach_badge => 'Bloomi AI Entrenador';

  @override
  String get plan_weekly_overview => '7 P’unchaw Allin Kawsaypi Enfoque';

  @override
  String get plan_targets_title => 'Allin kawsaypaq Objetivos & Metas';

  @override
  String get plan_calorie_budget_label =>
      'Sapa punchaw Calorías nisqamanta Presupuesto';

  @override
  String get plan_water_budget_label => 'Sapa punchaw Yaku Meta';

  @override
  String get plan_step_budget_label => 'Sapa punchaw Paso Meta';

  @override
  String get plan_macro_split_label => 'Ratio Macronutriente nisqa';

  @override
  String get profile_personal_details => 'Detalles Personales nisqa';

  @override
  String get profile_body_stats => 'Kurku Tupuykuna';

  @override
  String get profile_app_preferences => 'Munasqakuna & App Ajustes';

  @override
  String get profile_edit_name_hint => 'Sutiyki';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Altura ($unit) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Llasaq ($unit) .';
  }

  @override
  String get profile_edit_age_hint => 'Edad';

  @override
  String get profile_gender_male => 'Qhari';

  @override
  String get profile_gender_female => 'Warmi';

  @override
  String get profile_gender_other => 'Huk / Aswan allinmi mana niyta';

  @override
  String get profile_activity_sedentary =>
      'Tiyaylla (Pisillamanta mana ejercicioyuq) .';

  @override
  String get profile_activity_light =>
      'Llampu llamk\'aq (1-3 p\'unchaw/semana) .';

  @override
  String get profile_activity_moderate =>
      'Moderadamente Activo (3-5 p\'unchaw/semana) .';

  @override
  String get profile_activity_very => 'Ancha Activo (6-7 p\'unchaw/semana) .';

  @override
  String get settings_wear_os_header => 'OS Compañero App nisqawan churakuy';

  @override
  String get settings_wear_os_desc =>
      'Bloomi azulejo chaymanta complicación Wear OS relojniykipi churay calorías, yaku, chaymanta llamkanakuna qhawaypaq.';

  @override
  String get settings_widgets_header => 'Android Widgets interactivos nisqa';

  @override
  String get settings_widgets_desc =>
      'Chiqa pacha widgetkuna dispositivoykipa qallariy pantallapi pinchay chaylla musuqyachiykunapaq.';

  @override
  String get settings_about_header => 'Bloomimanta';

  @override
  String get settings_about_version => '1.0.0 nisqa laya';

  @override
  String get settings_about_build => 'Ruway 100';

  @override
  String get settings_about_credits =>
      'Yuyaywan, qhali kawsayta qhawarispa ruwasqa.';

  @override
  String get settings_terms_header => 'Términos y Condiciones nisqakuna';

  @override
  String get settings_privacy_header => 'Sapanchasqa willakuy';

  @override
  String get settings_delete_header => 'Cuenta & Datos nisqa qulluy';

  @override
  String get settings_delete_warning =>
      'Kay ruwayqa manam kutichiyta atikunmanchu. Llapan mikhuyniykikuna, entrenamientoykikuna, vitalkuna, perfilniyki ima wiñaypaq chinkachisqa kanqa.';

  @override
  String get settings_delete_confirm_btn => 'Wiñaypaq Borrar';

  @override
  String get onboard_welcome_headline => 'Allin hamusqayki Bloomi ✨ llaqtaman';

  @override
  String get onboard_welcome_tagline =>
      'Llampu, yuyayniyuq allin kawsay qatiy kawsayniyki muyuriqpi ruwasqa.';

  @override
  String get onboard_step_about => 'Qanmanta';

  @override
  String get onboard_step_goals => 'Metasniykikuna';

  @override
  String get onboard_step_lifestyle => 'Sapa punchaw costumbrekuna';

  @override
  String get onboard_step_permissions => 'Permisokuna';

  @override
  String get onboard_step_plan => '¡Listoñam kachkanki!';

  @override
  String get onboard_health_connect_perm => 'Salud Conectar Yaykuna';

  @override
  String get onboard_step_sensors_perm => 'Paso Yupaq Sensor';

  @override
  String get onboard_notif_perm => 'Yuyaywan Yuyarichiykuna & Willakuykuna';

  @override
  String get onboard_camera_perm =>
      'Camara (Código de barras & Mikhuy Escáner) .';

  @override
  String get onboard_grant_permissions => 'Permisokunata qoy';

  @override
  String get onboard_continue_dashboard => 'Dashboard nisqa kichay';

  @override
  String get notif_channel_hydration_name => 'Hidratación Nudges nisqa';

  @override
  String get notif_channel_hydration_desc =>
      'Tukuy punchaw llampu yaku yuyarichiykuna';

  @override
  String get notif_channel_nutrition_name =>
      'Mikhuy & Mikhuymanta Yuyarichiykuna';

  @override
  String get notif_channel_nutrition_desc =>
      'Desayuno, almuerzo, cena ima yuyarichiy alertas';

  @override
  String get notif_channel_steps_name => 'Paso Hitos nisqakuna';

  @override
  String get notif_channel_steps_desc =>
      'Sapa punchaw llamkay metakunaman chayaspa raymikuna';

  @override
  String get notif_channel_vitals_name => 'Salud & Vitales nisqamanta Cheques';

  @override
  String get notif_channel_vitals_desc =>
      'Llasaq hinaspa puñuna pacha wayra-uray yuyarichiykuna';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Puñuy 15m';

  @override
  String get notif_action_log_meal => '🥗 Tronco Mikhuna';

  @override
  String get language => 'Simi';

  @override
  String get share => 'Compartir';

  @override
  String common_days(Object count) {
    return '$count d ñawpaqta';
  }
}
