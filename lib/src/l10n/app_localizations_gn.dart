// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Guarani (`gn`).
class AppLocalizationsGn extends AppLocalizations {
  AppLocalizationsGn([String locale = 'gn']) : super(locale);

  @override
  String get app_name => 'Bloomi rehegua';

  @override
  String get nav_home => 'Óga';

  @override
  String get nav_today => 'Ko árape';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Tembi’u';

  @override
  String get nav_food_diary => 'Tembi’u Ñe’ẽryru';

  @override
  String get nav_workout => 'Registro de Entrenamiento rehegua';

  @override
  String get nav_health => 'Tesãi rehegua';

  @override
  String get nav_profile => 'Perfil rehegua';

  @override
  String get save => 'Oñongatu';

  @override
  String get cancel => 'Ombogue';

  @override
  String get delete => 'Ombogue';

  @override
  String get edit => 'Omohenda';

  @override
  String get done => 'Ojejapo';

  @override
  String get close => 'Oñemboty';

  @override
  String get back => 'Ojevy jey';

  @override
  String get next => 'Upe rire';

  @override
  String get continue_btn => 'Esegíkena';

  @override
  String get confirm => 'Omoañete';

  @override
  String get search => 'Ojeporeka';

  @override
  String get filter => 'Filtro rehegua';

  @override
  String get all => 'Opavave';

  @override
  String get active => 'Activo';

  @override
  String get today => 'Ko árape';

  @override
  String get yesterday => 'Kuehe';

  @override
  String get tomorrow => 'Ko\'êrõ';

  @override
  String get add => 'Oñemoĩve';

  @override
  String get remove => 'Ojepe’a';

  @override
  String get refresh => 'Embopyahu';

  @override
  String get retry => 'Eñeha’ã jey';

  @override
  String get error => 'Ojejavy';

  @override
  String get success => 'Éxito rehegua';

  @override
  String get loading => 'Ojekarga hína...';

  @override
  String get no_data => 'Ndaipóri dato ojeguerekóva';

  @override
  String get offline => 'Modo Offline rehegua';

  @override
  String get offline_sub => 'Umi ñemoambue oñembojoajúta oñembojoaju jeývo';

  @override
  String get undo => 'Deshacer';

  @override
  String get portion => 'Porción rehegua';

  @override
  String get quantity => 'Cantidad rehegua';

  @override
  String get unit => 'Unidad rehegua';

  @override
  String get clear => 'Hesakã porã';

  @override
  String get select => 'Eiporavo';

  @override
  String get apply => 'Ejerure';

  @override
  String get reset => 'Reset jey';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Heẽ';

  @override
  String get no => 'Nahániri';

  @override
  String get optional => 'Opcional';

  @override
  String get calories => 'Calorías rehegua';

  @override
  String get protein => 'Proteína rehegua';

  @override
  String get carbs => 'Carbohidratos rehegua';

  @override
  String get fat => 'Ikyrakue';

  @override
  String get fiber => 'Fibra rehegua';

  @override
  String get water => 'Y';

  @override
  String get steps => 'Umi mba’e ojejapóva';

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
  String get hours => 'aravo’i';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Oservívo';

  @override
  String get servings => 'Porciones rehegua';

  @override
  String get serving_size => 'Tamaño de Servicio rehegua';

  @override
  String get per_100g => 'peteĩ 100g rehe';

  @override
  String get india => 'India-pe';

  @override
  String get asia => 'Asia pegua';

  @override
  String get europe => 'Europa-pe';

  @override
  String get middle_east => 'Oriente Medio-pe';

  @override
  String get africa => 'Áfrika';

  @override
  String get americas => 'América-pe';

  @override
  String get home_title => 'Óga';

  @override
  String get home_greeting_morning => 'Pyhareve porã';

  @override
  String get home_greeting_afternoon => 'Asaje porã';

  @override
  String get home_greeting_evening => 'Ka\'aru porã';

  @override
  String get home_streak_title => 'Yvoty Racha';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ára racha',
      one: '1 ára racha',
      zero: '0 ára racha',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ojehapy';

  @override
  String get home_calories_budget => 'Presupuesto Caloría rehegua';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal hembýva';
  }

  @override
  String get home_water_title => 'Hidratación Diaria rehegua';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pasos Oguata';

  @override
  String get home_quick_actions => 'Tembiaporã Pya’e rehegua';

  @override
  String get home_log_meal => 'Registro Rembi’u rehegua';

  @override
  String get home_log_water => 'Y Tronco rehegua';

  @override
  String get home_log_workout => 'Entrenamiento de registro rehegua';

  @override
  String get home_log_weight => 'Tronco Peso rehegua';

  @override
  String get home_insights_title => 'Ko\'ãgagua Perspicacias';

  @override
  String get home_quote =>
      'Umi jeporavo hesãiva michĩva omoheñói umi transformación ipotyva.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Entrenador rehegua';

  @override
  String get home_surroundings => 'Ijerére & Yvytu';

  @override
  String get home_notifications => 'Marandukuéra';

  @override
  String get home_daily_score => 'Puntuación Bienestar Diaria rehegua';

  @override
  String get home_view_all => 'Ojehecha Opa mba\'e';

  @override
  String get food_diary_title => 'Tembi’u Ñe’ẽryru';

  @override
  String get food_breakfast => 'Pyhareve';

  @override
  String get food_lunch => 'Almuerzo rehegua';

  @override
  String get food_dinner => 'Karu guasu';

  @override
  String get food_snacks => 'Merienda rehegua';

  @override
  String get food_add_food => 'Oñemoĩve Tembi’u';

  @override
  String get food_edit_food => 'Editar Tembi’u rehegua';

  @override
  String get food_add_breakfast => 'Oñemoĩve Desayuno';

  @override
  String get food_add_lunch => 'Oñemoĩve Almuerzo';

  @override
  String get food_add_dinner => 'Oñemoĩve Cena';

  @override
  String get food_add_snack => 'Oñemoĩve Snack';

  @override
  String get food_total_calories => 'Total Calorías rehegua';

  @override
  String get food_empty_meal =>
      'Ndaipóri tembi\'u ojeregistráva gueteri ko tembi\'úpe guarã';

  @override
  String get food_empty_diary =>
      'Ndaipóri tembi\'u ojeregistráva ko árape guarã';

  @override
  String get food_log_first_meal =>
      'Epoko + rehe reregistra hag̃ua nde primera tembiʼu heʼẽ porãva';

  @override
  String get food_quick_add => 'Pya’e Agregar';

  @override
  String get food_search_hint => 'Ojeporeka tembi\'u, yva, dal, roti...';

  @override
  String get food_custom_recipe => 'Tembi\'u & Receta Personalizada rehegua';

  @override
  String get food_scan_barcode => 'Código de Barras Escanear rehegua';

  @override
  String get food_camera_scan => 'AI Tembi’u Escáner';

  @override
  String get food_recent => 'Tembi’u Ipyahúva';

  @override
  String get food_favourites => 'Umi mba’e ojehayhuvéva';

  @override
  String get food_macro_summary => 'Macronutriente Ñembyai';

  @override
  String get food_delete_meal_confirm => '¿Eĩpa seguro reipe’aseha ko mba’e?';

  @override
  String get food_item_deleted => 'Tembi’u mba’e ojeipe’a';

  @override
  String get food_remaining => 'opytáva';

  @override
  String get food_consumed => 'oje’uva’ekue';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Eheka Tembi’ukuéra';

  @override
  String get foodSearch_scan_barcode => 'Código de Barras Escanear rehegua';

  @override
  String get foodSearch_take_photo => 'Snap Tembi\'u Ta\'anga';

  @override
  String get foodSearch_custom_food => 'Ojapo Tembi’u Personalizado';

  @override
  String get foodSearch_recent_searches => 'Umi Jeporeka Nda’aréi ojejapóva';

  @override
  String get foodSearch_popular => 'Tembi’u Ojeguerohorýva';

  @override
  String get foodSearch_no_results =>
      'Ndaipóri tembi’u ojoajúva nde jeheka rehe';

  @override
  String get barcode_title => 'Escáner de Código de Barras rehegua';

  @override
  String get barcode_align => 'Emohenda código de barras cámara marco ryepýpe';

  @override
  String get barcode_not_found => 'Producto ndojejuhúiva base de datos-pe';

  @override
  String get barcode_premium_feature =>
      'Ojeguereko escaneo código de barras rehegua Bloomi Pro rupive';

  @override
  String get camera_title => 'AI Tembi’u Escáner';

  @override
  String get camera_tap_hint =>
      'Ejagarra peteĩ foto hesakãva nde plato rehegua';

  @override
  String get camera_analysing => 'Oñeanalisávo tembi\'u plato...';

  @override
  String get camera_detected => 'Umi mba’e ojehechakuaáva';

  @override
  String get camera_flash => 'Embohasa Flash rehegua';

  @override
  String get camera_retake => 'Rejagarra jey Ta\'anga';

  @override
  String get camera_confirm_food => 'Omoañete umi mba’e';

  @override
  String get customFood_title => 'Tembi\'u & Receta Personalizada rehegua';

  @override
  String get customFood_name_hint => 'Tembi’u térã ingrediente réra';

  @override
  String get customFood_calories_hint => 'Calorías (kcal) rehegua .';

  @override
  String get customFood_protein_hint => 'Proteína rehegua (g) .';

  @override
  String get customFood_carbs_hint => 'Carbohidratos rehegua (g) .';

  @override
  String get customFood_fat_hint => 'Ikyrakue (g) .';

  @override
  String get customFood_save => 'Oñongatu Receta';

  @override
  String get water_tracker_title => 'Y Rastreador';

  @override
  String get water_daily_target => 'Meta de Hidratación Diaria rehegua';

  @override
  String get water_logged_today => 'Ojeregistra Ko árape';

  @override
  String get water_add_glass => '+250 ml Vidrio rehegua';

  @override
  String get water_add_bottle => '+500 ml Botella rehegua';

  @override
  String get water_custom_amount => 'Cantidad Personalizada rehegua';

  @override
  String get water_reminder_tip =>
      'Ojey’u jepi y ára pukukue reguereko hagua energía constante.';

  @override
  String water_logged_toast(Object amount) {
    return 'Ojeregistra $amount ml y 💧';
  }

  @override
  String get workout_title => 'Registro de Entrenamiento rehegua';

  @override
  String get workout_add_exercise => 'Ombojoapy Entrenamiento';

  @override
  String get workout_cardio => 'Cardio rehegua';

  @override
  String get workout_strength => 'Mbarete';

  @override
  String get workout_yoga => 'Yoga & Flexibilidad rehegua';

  @override
  String get workout_duration => 'Ipukukue pukukue';

  @override
  String get workout_intensity => 'Intensidad rehegua';

  @override
  String get workout_calories_burned => 'Calorías Ojehapyva’ekue';

  @override
  String get workout_empty => 'Ndaipóri entrenamiento ojeregistráva ko árape';

  @override
  String get workout_save_success => '¡Entrenamiento ojesalva porã!';

  @override
  String get workout_type => 'Tipo de Entrenamiento rehegua';

  @override
  String get workout_notes => 'Notas & Reflexiones rehegua';

  @override
  String get health_overview_title => 'Tesãi & Vitales rehegua';

  @override
  String get health_heart_rate => 'Korasõ ryrýi';

  @override
  String get health_blood_oxygen => 'Tuguy Oxígeno (SpO2) .';

  @override
  String get health_blood_pressure => 'Tuguy Rehegua';

  @override
  String get health_blood_glucose => 'Tuguy Glucosa rehegua';

  @override
  String get health_body_temperature => 'Tete Temperatura rehegua';

  @override
  String get health_sleep_tracking => 'Oke Rastreo rehegua';

  @override
  String get health_weight_tracking => 'Peso & Composición Corporal rehegua';

  @override
  String get health_waist_hip => 'Razón Cintura ha Cadera rehegua';

  @override
  String get health_devices_hub => 'Tembiporu & Smartwatch Hub rehegua';

  @override
  String get health_sync_now => 'Oñembojoaju Datos de Salud rehegua';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Oñembojoaju ipahaitépe: $time';
  }

  @override
  String get health_manual_entry => 'Tesãi rehegua jeike Manual rehegua';

  @override
  String get health_metric_detail => 'Detalles Métricos rehegua';

  @override
  String get health_connected_sensors => 'Sensores de Salud oñembojoajúva';

  @override
  String get plan_title => 'Plan Diario rehegua';

  @override
  String get plan_weekly_title => 'Plan Semanal de Bienestar rehegua';

  @override
  String get plan_calorie_target => 'Caloría rehegua Objetivo';

  @override
  String get plan_water_target => 'Hidratación rehegua Objetivo';

  @override
  String get plan_step_target => 'Paso Meta rehegua';

  @override
  String get plan_sleep_target => 'Oke Objetivo';

  @override
  String get plan_meal_suggestions => 'Tembi’urã Ñe’ẽñemi';

  @override
  String get plan_healthy_habits => 'Jepokuaa & Consejos Saludables rehegua';

  @override
  String get plan_coach_advice =>
      'Bloomi AI Entrenador Recomendaciones rehegua';

  @override
  String get plan_generated_title => 'Horario Diario Personalizado rehegua';

  @override
  String get profile_title => 'Perfil rehegua';

  @override
  String get profile_edit => 'Emohenda Perfil rehegua';

  @override
  String get profile_name => 'Téra';

  @override
  String get profile_age => 'Edad rehegua';

  @override
  String get profile_gender => 'Género rehegua';

  @override
  String get profile_height => 'Ijyvate';

  @override
  String get profile_weight => 'Ipohýi';

  @override
  String get profile_goal => 'Meta Primaria rehegua';

  @override
  String get profile_activity_level => 'Tembiaporã Nivel rehegua';

  @override
  String get profile_stats => 'Che Estadísticas de Bienestar rehegua';

  @override
  String get profile_saved => 'Perfil oñembopyahu porã';

  @override
  String get profile_bmi => 'Índice de Masa Corporal (IMC) rehegua .';

  @override
  String get profile_membership => 'Miembro-kuéra rehegua';

  @override
  String get settings => 'Ñemboheko';

  @override
  String get preferences_habits => 'PREFERENCIAS & JEPOKUAA';

  @override
  String get appearance_theme => 'Apariencia & Tema rehegua';

  @override
  String get appearance_theme_sub =>
      'Pytũ, Tesape, Sistema Modo & App Fondo Opciones';

  @override
  String get permissions => 'Permisos & Sistema Jeike rehegua';

  @override
  String get permissions_sub =>
      'Tesãi Ñembojoaju, Sensores de Paso, GPS, Marandu & Cámara';

  @override
  String get reminders_notifications => 'Mandu’arã & Marandu';

  @override
  String get reminders_sub =>
      'Okaru aravo, y, peso check-in & mandu\'a oke mboyve';

  @override
  String get units_of_measurement => 'Unidades de Medición rehegua';

  @override
  String get units_sub =>
      'Métrico (kg, cm, ml, km) térã Imperial (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'App Ñe’ẽ';

  @override
  String get language_sub =>
      'Inglés, हिन्दी (Hindi), Hinglish & 195+ ñe\'ẽ global';

  @override
  String get home_screen_widgets => 'Widgets Pantalla de Inicio rehegua';

  @override
  String get widgets_sub =>
      'Widgets Android en vivo: Hub, Pasos, Y, Nutrición & Mascota';

  @override
  String get wear_os_watch_app => 'Ojeporu SO Reloj App';

  @override
  String get wear_os_sub =>
      'Smartwatch compañero, azulejos, complicaciones & vitales en vivo';

  @override
  String get goals_wellness => 'METAS & BIENER PERSPECTIVAS rehegua';

  @override
  String get nutrition_targets =>
      'Nutrición Objetivos & Macro División rehegua';

  @override
  String get nutrition_targets_sub =>
      'Caloría blanco, proteína, carbohidratos, grasa & y meta';

  @override
  String get weekly_recap => 'Recap de Bienestar Semanal rehegua';

  @override
  String get weekly_recap_sub =>
      '7 ára caloría promedio, macro ratio & ára iporãvéva';

  @override
  String get streaks_milestones => 'Rayas & Hitos rehegua';

  @override
  String get streaks_sub =>
      'Rachas de flores activas, insignias & logros rehegua';

  @override
  String get connected_devices => 'DISPOSITIVO CONECTODO & ECOSISTEMA';

  @override
  String get devices_hub => 'Tembiporu & Smartwatch Hub rehegua';

  @override
  String get devices_hub_sub =>
      'Tesãi Ñembojoaju, Reloj Galaxy, Reloj Pixel, Garmin';

  @override
  String get surroundings_weather => 'Jere & Aravo rehegua';

  @override
  String get surroundings_sub =>
      'Calidad del aire (AQI), índice UV & consejos de hidratación climática';

  @override
  String get bloomi_pro => 'Bloomi Pro Suscripción rehegua';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget pantalla de inicio & seguimiento vital rehegua';

  @override
  String get about_security => 'SOBRE & SEGURIDAD REHEGUA';

  @override
  String get about_bloomi => 'Bloomi rehegua';

  @override
  String get about_bloomi_sub =>
      'Oñemopuꞌa especificaciones, versión, atribuciones';

  @override
  String get privacy_policy => 'Polítika Privasida rehegua';

  @override
  String get privacy_policy_sub =>
      'Offline-peteĩha, arquitectura de datos oĩva dispositivo-pe';

  @override
  String get terms_conditions => 'Ñe’ẽme’ẽ ha Ñe’ẽme’ẽ';

  @override
  String get terms_conditions_sub =>
      'Términos de servicio ha umi directriz bienestar rehegua';

  @override
  String get delete_account => 'Ombogue Cuenta & Datos';

  @override
  String get delete_account_sub =>
      'Embogue irreversiblemente umi dato SQLite local ha umi copia de seguridad arai rehegua';

  @override
  String get healthy_habits => 'Emopu’ã jepokuaa bienestar suave ha duradero';

  @override
  String get all_logs => 'Che Datos & Registros Seguimiento rehegua';

  @override
  String get search_language => 'Eheka ñe\'ẽ térã script nativo rupive...';

  @override
  String get languages_available => 'Ñe’ẽnguéra Ojeguerekóva';

  @override
  String get no_matching_languages => 'Ndojejuhúi ñe’ẽ ojoajúva';

  @override
  String get try_searching =>
      'Eñeha’ã eheka guión nativo térã ortografía inglés rupive';

  @override
  String get partially_translated => 'Ojetradusi parcialmente';

  @override
  String get complete_translation => 'Oñemohu’ã';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ñe’ẽ oñemohenda $name ( $nativeName )-pe.';
  }

  @override
  String get surroundings_title => 'Jere & Tekoha';

  @override
  String get surroundings_aqi => 'Índice de Calidad del Aire rehegua';

  @override
  String get surroundings_uv => 'Índice UV rehegua';

  @override
  String get surroundings_temp => 'Temperatura rehegua';

  @override
  String get surroundings_humidity => 'Humedad rehegua';

  @override
  String get surroundings_hydration_advice =>
      'Epyta porã hidratado umi condición climática ko’áĝaguápe.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Eheka Tembi’u';

  @override
  String get food_quick_barcode => 'Escanear Código de Barras 👑 rehegua';

  @override
  String get food_quick_water => 'Oñemoĩ pype Y';

  @override
  String get food_quick_custom => 'Tembi’u Personalizado';

  @override
  String get surroundings_good => 'Iporã';

  @override
  String get surroundings_moderate => 'Moderado';

  @override
  String get surroundings_unhealthy => 'Hesãi’ỹva';

  @override
  String get notifications_title => 'Marandu & Alerta rehegua';

  @override
  String get notifications_empty => 'Ndaipóri momarandu pyahu';

  @override
  String get notifications_mark_read => 'Marca Opavave Moñe’ẽrãicha';

  @override
  String get notifications_clear => 'Oñemopotî Opa mba\'e';

  @override
  String get reminders => 'Mandu’arã Ñemboheko';

  @override
  String get notifications => 'Marandukuéra';

  @override
  String get reminders_breakfast_title => 'Desayuno Mandu\'a 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return '¡Pyhareve porã! Tiempo peteî desayuno nutritivo $time -pe.';
  }

  @override
  String get reminders_lunch_title => 'Almuerzo Mandu\'a 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Epytu’u ha evy’a peteĩ almuerzo equilibrado ha iñakãme $time -pe.';
  }

  @override
  String get reminders_dinner_title => 'Cena Mandu\'a 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tiempo peteĩ cena ligero ha satisfactoria-pe ĝuarã $time -pe.';
  }

  @override
  String get reminders_water_title => 'Hidratación Empuje 💧 rehegua';

  @override
  String reminders_water_body(Object time) {
    return '¡Tiempo ojey’u haĝua peteĩ vaso y pyahu! ($time) Ñe’ẽpoty ha ñe’ẽpoty.';
  }

  @override
  String get reminders_weight_title => 'Peso semanal rehegua ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Ejesareko nde rete métrica semanal Bloomi ( $time )-pe.';
  }

  @override
  String get reminders_sleep_title => 'Oke mboyve Yvytu-yvytu 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Epytu\'u ha eñembosako\'i peteĩ oke pytu\'urã ( $time ).';
  }

  @override
  String get onboard_welcome => 'Peju porãite Bloomi-pe';

  @override
  String get onboard_sub =>
      'Nde compañero amistoso, offline-primero salud ha nutrición rehegua.';

  @override
  String get onboard_get_started => 'Eñepyrũ';

  @override
  String get onboard_sign_in => 'Eike';

  @override
  String get onboard_skip => 'Ojesalta';

  @override
  String get onboard_choose_goal =>
      'Mba’épa nde meta principal bienestar rehegua?';

  @override
  String get onboard_goal_weight_loss => 'Pérdida de Peso Suave rehegua';

  @override
  String get onboard_goal_muscle => 'Músculo Ganancia & Mbarete rehegua';

  @override
  String get onboard_goal_energy => 'Energía & Vitalidad ára ha ára';

  @override
  String get onboard_goal_habits => 'Tembi’u Hesãiva Akãme';

  @override
  String get onboard_about_you => 'Emombe\'u Oréve Nde Jehegui';

  @override
  String get onboard_lifestyle => 'Nde Rutina Diaria';

  @override
  String get onboard_permissions_title => 'Permisos & Sistema Jeike rehegua';

  @override
  String get onboard_permissions_sub =>
      'Eme’ẽ jeike umi paso sincronización rehegua, entrenamiento ha mandu’arã.';

  @override
  String get onboard_plan_ready_title =>
      '¡Pende Plan Personalizado oĩma Listo!';

  @override
  String get onboard_plan_ready_sub =>
      'Rojapo peteĩ hoja de ruta nutrición ha bienestar suave, personalizado peẽme ĝuarãnte.';

  @override
  String get onboard_enter_bloomi => 'Oike Bloomi-pe';

  @override
  String get insights_weekly_report => 'Recap de Bienestar Semanal rehegua';

  @override
  String insights_best_day(Object day) {
    return 'Ára Consistencia Iporãvéva: $day';
  }

  @override
  String get insights_streaks_badges => 'Rayas & Hitos rehegua';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ojepe\'a $date-pe.';
  }

  @override
  String get insights_keep_going => '¡Esegui pe progreso fantástico!';

  @override
  String get widgets_title => 'Widgets Pantalla de Inicio rehegua';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets ombaꞌapóva: $count .';
  }

  @override
  String get widgets_hub_title => 'Bloomi Tekopy tee ojehechakuaa’ỹva';

  @override
  String get widgets_steps_title => 'Pasos & Anillo Activo rehegua';

  @override
  String get widgets_water_title => 'Hidratación Registro Pya’e rehegua';

  @override
  String get widgets_mascot_title => 'Bloomi Mascota Compañero';

  @override
  String get wear_os_title => 'Emonde SO Smartwatch rehegua';

  @override
  String get wear_os_connected => 'Oñembojoajúva Watch rehe';

  @override
  String get wear_os_sync => 'Oñembojoaju Datos de Watch rehegua';

  @override
  String get theme_title => 'Apariencia & Tema rehegua';

  @override
  String get theme_mode => 'Modo Tema rehegua';

  @override
  String get theme_light => 'Tesapeha';

  @override
  String get theme_dark => 'Pytũmby';

  @override
  String get theme_system => 'Sistema rehegua Por defecto';

  @override
  String get theme_background_palette => 'Paleta de Antecedentes rehegua';

  @override
  String get units_title => 'Unidades de Medición rehegua';

  @override
  String get units_metric => 'Métrica (kg, cm, ml) rehegua.';

  @override
  String get units_imperial =>
      'Imperial (lbs, en, fl oz) Ñe\'ẽpoty ha ñe\'ẽpoty ñemohenda.';

  @override
  String get home_unable_load => 'Ndaikatúi ojekarga panel de mando';

  @override
  String get home_health_permission_req =>
      'Oñeikotevẽ Permiso Conectar de Salud rehegua';

  @override
  String get home_health_permission_desc =>
      'Bloomi oikotevẽ Health Connect permiso oipyso hag̃ua umi paso añetegua, korasõ ryrýi ha osincronisa hag̃ua umi widget óga móvil rehegua tiempo real-pe.';

  @override
  String get home_allow_health => 'Eheja Tesãi Ñembojoaju';

  @override
  String get home_ready_mindful_day =>
      '¿Reimemapa listo peteĩ ára iñakãme ĝuarã? ✨ rehegua';

  @override
  String get home_quick_add => 'Pya’e Agregar';

  @override
  String get home_live_gps => 'GPS oikovéva';

  @override
  String get home_calories_remaining_label => 'CALORÍAS Opytáva';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Oje’u: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Grifo para Rastreador de agua 💧';

  @override
  String get home_water_goal_reached => 'Meta ára ha ára oguahê 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml meta ára ha ára peve';
  }

  @override
  String get home_details => 'Detalle rehegua';

  @override
  String get home_upgrade_plan_desc =>
      'Embopyahu edesblokea hag̃ua umi blanco diario personalizado & plan AI';

  @override
  String get home_unlock => 'Desbloqueo 👑 rehegua';

  @override
  String get home_quick_log_hint =>
      'Pya’e ojehai peteĩ entrada bienestar rehegua';

  @override
  String get food_serving_size => 'Tamaño de Servicio rehegua';

  @override
  String get food_serving_grams => 'Oservíva (g) .';

  @override
  String get food_number_servings => 'Mboýpa ojeservi';

  @override
  String get food_calories_per_serving => 'Calorías por porción rehegua';

  @override
  String get food_recipe_ingredients => 'Ingrediente-kuéra rehegua';

  @override
  String get food_recipe_add_ingredient => 'Oñemoĩve Ingrediente';

  @override
  String get food_recipe_directions => 'Instrucciones & Notas rehegua';

  @override
  String get food_recipe_total => 'Receta Total Nutrición rehegua';

  @override
  String get food_recipe_per_serving => 'Por Porción Nutrición rehegua';

  @override
  String get food_recipe_saved_toast =>
      '¡Tembi’u personalizado oñeñongatu porã!';

  @override
  String get food_barcode_found => '¡Ojejuhu Producto!';

  @override
  String get food_barcode_not_found_desc =>
      'Ndorojuhúi ko código de barras base de datos abierto-pe. Ikatu remoĩ tembi’u ojejapóvaicha.';

  @override
  String get food_add_custom_btn => 'Oñemoĩve Tembi’u Personalizado';

  @override
  String get food_scan_again => 'Escanear Jey';

  @override
  String get food_review_items => 'Ojehecha jey Tembi’u Ojejuhúva';

  @override
  String get food_review_hint =>
      'Emohenda cantidad térã eipe’a oimeraẽ mba’e ndojehechakuaáiva';

  @override
  String get food_log_selected => 'Log Tembi’u Ojeporavóva';

  @override
  String get food_favourites_title => 'Tembi’ukuéra ojehayhuvéva';

  @override
  String get food_recent_title => 'Tembi’u Ipyahúva';

  @override
  String get food_no_favourites =>
      'Ndaipóri gueteri tembi’u ojehayhuvéva. Tap heart oimeraẽ tembi\'u rehe reñongatu haguã ko\'ápe.';

  @override
  String get food_no_recents => 'Ndojejuhúi tembi’u nda’aréi ojeregistráva.';

  @override
  String get food_nutrition_details_title =>
      'Detalles Nutrición rehegua ára ha ára';

  @override
  String get food_macro_protein_label => 'Proteína Ñembyai';

  @override
  String get food_macro_carbs_label => 'Carbohidratos Ñembyai';

  @override
  String get food_macro_fat_label => 'Ikyra Ñembyai';

  @override
  String get food_macro_fiber_label => 'Fibra Ñembyai';

  @override
  String get food_daily_target_comparison => 'Ñembojojaha Meta rehegua';

  @override
  String food_target_label(Object target) {
    return 'Ojehupytyséva: $target .';
  }

  @override
  String get food_edit_entry => 'Editar Diario jeike';

  @override
  String get food_delete_entry => 'Ombogue Entrada';

  @override
  String food_grams_short(Object grams) {
    return '$grams rehegua g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal rehegua';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current de $target ml';
  }

  @override
  String get water_intake_history => 'Ko árape Y Rekoha';

  @override
  String get water_no_logs_today =>
      'Ndaipóri y ojeregistráva gueteri ko árape. ¡Ehidrata ha epoko peteĩ botón añadir pya’e rehe!';

  @override
  String get water_adjust_goal => 'Emohenda Meta Diario rehegua';

  @override
  String get health_connect_banner => 'Oñembojoajúva Tesãi Ñembojoaju rehe';

  @override
  String get health_vitals_summary => 'Vitales Tesãi rehegua ára ha ára';

  @override
  String get health_latest_heart_rate => 'Ipyahuvéva Korasõ ryrýi';

  @override
  String get health_latest_bp => 'Tuguy Rehegua';

  @override
  String get health_latest_spo2 => 'Tuguy Oxígeno rehegua';

  @override
  String get health_latest_glucose => 'Tuguy Glucosa rehegua';

  @override
  String get health_latest_weight => 'Ipohýi';

  @override
  String get health_latest_sleep => 'Oke Duración';

  @override
  String get health_add_manual => 'Oñemoĩve Medición Manual rehegua';

  @override
  String get health_history_trends => 'Tendencias Históricas rehegua';

  @override
  String get health_sync_success =>
      '¡Oñesincronisa porã umi dato salud rehegua!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours aravo’i $mins aravo’i';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg rehegua';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm rehegua';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % rehegua.';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg rehegua';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL rehegua';
  }

  @override
  String get health_devices_title => 'Dispositivos & Wearables oñembojoajúva';

  @override
  String get health_devices_desc =>
      'Emohenda reloj arandu oñembojoajúva, rastreador de fitness ha sensor salud rehegua.';

  @override
  String get health_workout_editor_title => 'Editar Entrenamiento rehegua';

  @override
  String get health_workout_name_label => 'Entrenamiento Réra';

  @override
  String get health_workout_duration_label => 'Ipukukue (minuto) .';

  @override
  String get health_workout_calories_label => 'Calorías ojeestimáva (kcal) .';

  @override
  String get health_workout_date_label => 'Ára ha Aravo';

  @override
  String get plan_daily_wellness_roadmap =>
      'Nde Hoja de Ruta Personalizada rehegua';

  @override
  String get plan_morning_routine => 'Rutina pyharevegua';

  @override
  String get plan_afternoon_routine => 'Asajepyte Tekoporã';

  @override
  String get plan_evening_routine => 'Ka’aru Yvytu-Oguejy';

  @override
  String get plan_coach_badge => 'Bloomi AI Entrenador rehegua';

  @override
  String get plan_weekly_overview => 'Enfoque Bienestar 7 Ára rehegua';

  @override
  String get plan_targets_title => 'Bienestar rehegua Meta & Meta';

  @override
  String get plan_calorie_budget_label => 'Presupuesto Calorías Diaria rehegua';

  @override
  String get plan_water_budget_label => 'Y Objetivo ára ha ára';

  @override
  String get plan_step_budget_label => 'Meta Paso Diaria rehegua';

  @override
  String get plan_macro_split_label => 'Ratio Macronutriente rehegua';

  @override
  String get profile_personal_details => 'Detalles Personales rehegua';

  @override
  String get profile_body_stats => 'Tete rehegua Medidakuéra';

  @override
  String get profile_app_preferences => 'Preferencias & App Ñemboheko';

  @override
  String get profile_edit_name_hint => 'Nde réra';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ijyvate ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ipohýi ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Edad rehegua';

  @override
  String get profile_gender_male => 'Kuimba’e';

  @override
  String get profile_gender_female => 'Kuña';

  @override
  String get profile_gender_other => 'Ambue / Iporãve ani haguã he\'i';

  @override
  String get profile_activity_sedentary =>
      'Sedentario (Sa’i térã ndaipóri ejercicio) .';

  @override
  String get profile_activity_light =>
      'Ligeramente Activo (1-3 ára/arapokõindy) .';

  @override
  String get profile_activity_moderate =>
      'Moderadamente Activo (3-5 ára/arapokõindy) .';

  @override
  String get profile_activity_very => 'Tuicha Activo (6-7 ára/arapokõindy)';

  @override
  String get settings_wear_os_header => 'Ojeporu SO Compañero App';

  @override
  String get settings_wear_os_desc =>
      'Emoĩ pe azulejo Bloomi ha complicación nde reloj Wear OS-pe emaña hag̃ua calorías, y ha paso rehe.';

  @override
  String get settings_widgets_header => 'Widgets Android interactivos rehegua';

  @override
  String get settings_widgets_desc =>
      'Emoĩ umi widget tiempo real-pegua nde tembipuru’i pantalla ypykuépe oñembopyahu pya’e hag̃ua.';

  @override
  String get settings_about_header => 'Bloomi rehegua';

  @override
  String get settings_about_version => 'Versión 1.0.0 rehegua';

  @override
  String get settings_about_build => 'Omopu’ã 100';

  @override
  String get settings_about_credits =>
      'Ojejapo ñangareko reheve tekove apytu’ũ, hesãiva rehe.';

  @override
  String get settings_terms_header => 'Ñe’ẽme’ẽ ha Ñe’ẽme’ẽ';

  @override
  String get settings_privacy_header => 'Polítika Privasida rehegua';

  @override
  String get settings_delete_header => 'Ombogue Cuenta & Datos';

  @override
  String get settings_delete_warning =>
      'Ko tembiapo ndaikatúi ojedesatina. Opa nde rembi’u, entrenamiento, vital ha perfil oñembogueta permanentemente.';

  @override
  String get settings_delete_confirm_btn => 'Permanentemente Ombogue';

  @override
  String get onboard_welcome_headline => 'Peju porãite Bloomi-pe ✨';

  @override
  String get onboard_welcome_tagline =>
      'Seguimiento bienestar suave, mente reheve ojejapóva nde rekove jerére.';

  @override
  String get onboard_step_about => 'Nde rehegua';

  @override
  String get onboard_step_goals => 'Umi mbaʼe rehupytyséva';

  @override
  String get onboard_step_lifestyle => 'Jepokuaa ára ha ára rehegua';

  @override
  String get onboard_step_permissions => 'Permiso rehegua';

  @override
  String get onboard_step_plan => '¡Eĩma preparádo!';

  @override
  String get onboard_health_connect_perm => 'Tesãi Ñembojoaju Jeike';

  @override
  String get onboard_step_sensors_perm => 'Sensor Contador de Paso rehegua';

  @override
  String get onboard_notif_perm => 'Mandu’a & Marandu Apytu’ũ rehegua';

  @override
  String get onboard_camera_perm =>
      'Cámara (Código de barras ha Tembi\'u Escáner) .';

  @override
  String get onboard_grant_permissions => 'Oñeme’ẽ Permiso-kuéra';

  @override
  String get onboard_continue_dashboard => 'Eipe’a Dashboard rehegua';

  @override
  String get notif_channel_hydration_name => 'Hidratación rehegua Empujes';

  @override
  String get notif_channel_hydration_desc => 'Y mandu’a suave ára pukukue';

  @override
  String get notif_channel_nutrition_name =>
      'Tembi’u & Nutrición rehegua Mandu’arã';

  @override
  String get notif_channel_nutrition_desc =>
      'Alerta mandu’a desayuno, almuerzo ha cena rehegua';

  @override
  String get notif_channel_steps_name => 'Paso Hitos rehegua';

  @override
  String get notif_channel_steps_desc =>
      'Celebraciones oguahëvo umi meta paso diario';

  @override
  String get notif_channel_vitals_name => 'Tesãi & Vitales rehegua Chequeo';

  @override
  String get notif_channel_vitals_desc => 'Peso ha oke mboyve yvytu-pe mandu’a';

  @override
  String get notif_action_log_water => '💧 Registro +250ml rehegua';

  @override
  String get notif_action_snooze => 'Opytu\'u 15m';

  @override
  String get notif_action_log_meal => '🥗 Tembi\'u Tronco rehegua';

  @override
  String get language => 'Ñe’ẽ';

  @override
  String get share => 'Compartir';

  @override
  String common_days(Object count) {
    return '$count d ohasava\'ekuépe';
  }
}
