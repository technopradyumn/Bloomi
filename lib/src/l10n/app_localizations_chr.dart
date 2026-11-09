// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cherokee (`chr`).
class AppLocalizationsChr extends AppLocalizations {
  AppLocalizationsChr([String locale = 'chr']) : super(locale);

  @override
  String get app_name => 'flori';

  @override
  String get nav_home => 'Inicio';

  @override
  String get nav_today => 'hoy';

  @override
  String get nav_plan => 'Planificar';

  @override
  String get nav_food => 'comida';

  @override
  String get nav_food_diary => 'Diario de alimentos';

  @override
  String get nav_workout => 'Registro de entrenamiento';

  @override
  String get nav_health => 'Salud';

  @override
  String get nav_profile => 'Perfil';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get edit => 'Editar';

  @override
  String get done => 'hecho';

  @override
  String get close => 'Cerrar';

  @override
  String get back => 'Atrás';

  @override
  String get next => 'Siguiente';

  @override
  String get continue_btn => 'Continuar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get search => 'Buscar';

  @override
  String get filter => 'Filtrar';

  @override
  String get all => 'Todos';

  @override
  String get active => 'Activo';

  @override
  String get today => 'hoy';

  @override
  String get yesterday => 'ayer';

  @override
  String get tomorrow => 'mañana';

  @override
  String get add => 'Añadir';

  @override
  String get remove => 'Quitar';

  @override
  String get refresh => 'Actualizar';

  @override
  String get retry => 'Reintentar';

  @override
  String get error => 'error';

  @override
  String get success => 'Éxito';

  @override
  String get loading => 'Cargando...';

  @override
  String get no_data => 'No hay datos disponibles';

  @override
  String get offline => 'Modo sin conexión';

  @override
  String get offline_sub =>
      'Los cambios se sincronizarán una vez que se vuelva a conectar';

  @override
  String get undo => 'Deshacer';

  @override
  String get portion => 'porción';

  @override
  String get quantity => 'Cantidad';

  @override
  String get unit => 'Unidad';

  @override
  String get clear => 'Borrar';

  @override
  String get select => 'Seleccionar';

  @override
  String get apply => 'Aplicar';

  @override
  String get reset => 'Reiniciar';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'si';

  @override
  String get no => 'No';

  @override
  String get optional => 'Opcional';

  @override
  String get calories => 'calorías';

  @override
  String get protein => 'Proteína';

  @override
  String get carbs => 'carbohidratos';

  @override
  String get fat => 'grasa';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'agua';

  @override
  String get steps => 'Pasos';

  @override
  String get kcal => 'calorías';

  @override
  String get grams => 'gramo';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kilos';

  @override
  String get pounds => 'libras';

  @override
  String get centimeters => 'centímetros';

  @override
  String get inches => 'en';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'horas';

  @override
  String get minutes => 'minutos';

  @override
  String get serving => 'sirviendo';

  @override
  String get servings => 'Porciones';

  @override
  String get serving_size => 'Tamaño de la porción';

  @override
  String get per_100g => 'por 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Medio Oriente';

  @override
  String get africa => 'África';

  @override
  String get americas => 'Américas';

  @override
  String get home_title => 'Inicio';

  @override
  String get home_greeting_morning => 'Buenos dias';

  @override
  String get home_greeting_afternoon => 'Buenas tardes';

  @override
  String get home_greeting_evening => 'Buenas noches';

  @override
  String get home_streak_title => 'Raya de flor';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' $count racha de días',
      one: '1 day streak',
      zero: '0 days streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'quemado';

  @override
  String get home_calories_budget => 'Presupuesto de calorías';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal restantes';
  }

  @override
  String get home_water_title => 'Hidratación diaria';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / ${target}ml';
  }

  @override
  String get home_steps_title => 'Pasos caminados';

  @override
  String get home_quick_actions => 'Acciones rápidas';

  @override
  String get home_log_meal => 'Comida de registro';

  @override
  String get home_log_water => 'Registro de agua';

  @override
  String get home_log_workout => 'Entrenamiento de registro';

  @override
  String get home_log_weight => 'Peso del tronco';

  @override
  String get home_insights_title => 'Perspectivas de hoy';

  @override
  String get home_quote =>
      'Pequeñas decisiones saludables crean transformaciones florecientes.';

  @override
  String get home_ai_coach_tip => 'Entrenador de IA de Bloomi';

  @override
  String get home_surroundings => 'Entorno y aire';

  @override
  String get home_notifications => 'Notificaciones';

  @override
  String get home_daily_score => 'Puntuación de bienestar diaria';

  @override
  String get home_view_all => 'Ver todo';

  @override
  String get food_diary_title => 'Diario de alimentos';

  @override
  String get food_breakfast => 'Desayuno';

  @override
  String get food_lunch => 'Almuerzo';

  @override
  String get food_dinner => 'cena';

  @override
  String get food_snacks => 'Aperitivos';

  @override
  String get food_add_food => 'Agregar comida';

  @override
  String get food_edit_food => 'Editar comida';

  @override
  String get food_add_breakfast => 'Agregar desayuno';

  @override
  String get food_add_lunch => 'Agregar almuerzo';

  @override
  String get food_add_dinner => 'Agregar cena';

  @override
  String get food_add_snack => 'Agregar refrigerio';

  @override
  String get food_total_calories => 'Calorías totales';

  @override
  String get food_empty_meal =>
      'Aún no se han registrado alimentos para esta comida';

  @override
  String get food_empty_diary => 'No se registraron comidas para este día.';

  @override
  String get food_log_first_meal =>
      'Toca + para registrar tu primera comida deliciosa';

  @override
  String get food_quick_add => 'Agregar rápido';

  @override
  String get food_search_hint => 'Buscar platos, frutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Comida y recetas personalizadas';

  @override
  String get food_scan_barcode => 'Escanear código de barras';

  @override
  String get food_camera_scan => 'Escáner de alimentos con IA';

  @override
  String get food_recent => 'Alimentos recientes';

  @override
  String get food_favourites => 'Favoritos';

  @override
  String get food_macro_summary => 'Desglose de macronutrientes';

  @override
  String get food_delete_meal_confirm =>
      '¿Está seguro de que desea eliminar este elemento?';

  @override
  String get food_item_deleted => 'Alimento eliminado';

  @override
  String get food_remaining => 'restante';

  @override
  String get food_consumed => 'consumido';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Buscar alimentos';

  @override
  String get foodSearch_scan_barcode => 'Escanear código de barras';

  @override
  String get foodSearch_take_photo => 'Foto de comida instantánea';

  @override
  String get foodSearch_custom_food => 'Crear comida personalizada';

  @override
  String get foodSearch_recent_searches => 'Búsquedas recientes';

  @override
  String get foodSearch_popular => 'Platos Populares';

  @override
  String get foodSearch_no_results =>
      'No hay alimentos que coincidan con tu búsqueda';

  @override
  String get barcode_title => 'Escáner de código de barras';

  @override
  String get barcode_align =>
      'Alinear el código de barras dentro del marco de la cámara';

  @override
  String get barcode_not_found => 'Producto no encontrado en la base de datos';

  @override
  String get barcode_premium_feature =>
      'El escaneo de códigos de barras está disponible con Bloomi Pro';

  @override
  String get camera_title => 'Escáner de alimentos con IA';

  @override
  String get camera_tap_hint => 'Toma una foto clara de tu plato.';

  @override
  String get camera_analysing => 'Analizando el plato de comida...';

  @override
  String get camera_detected => 'Artículos detectados';

  @override
  String get camera_flash => 'Alternar flash';

  @override
  String get camera_retake => 'Retomar foto';

  @override
  String get camera_confirm_food => 'Confirmar artículos';

  @override
  String get customFood_title => 'Comida y recetas personalizadas';

  @override
  String get customFood_name_hint => 'Nombre del plato o ingrediente';

  @override
  String get customFood_calories_hint => 'Calorías (kcal)';

  @override
  String get customFood_protein_hint => 'Proteína (g)';

  @override
  String get customFood_carbs_hint => 'Carbohidratos (g)';

  @override
  String get customFood_fat_hint => 'Grasa (g)';

  @override
  String get customFood_save => 'Guardar receta';

  @override
  String get water_tracker_title => 'Rastreador de agua';

  @override
  String get water_daily_target => 'Meta de hidratación diaria';

  @override
  String get water_logged_today => 'Registrado hoy';

  @override
  String get water_add_glass => '+250ml Vaso';

  @override
  String get water_add_bottle => '+Botella de 500ml';

  @override
  String get water_custom_amount => 'Cantidad personalizada';

  @override
  String get water_reminder_tip =>
      'Beba agua con regularidad durante el día para obtener energía constante.';

  @override
  String water_logged_toast(Object amount) {
    return 'Registrado $amount ml de agua 💧';
  }

  @override
  String get workout_title => 'Registro de entrenamiento';

  @override
  String get workout_add_exercise => 'Agregar entrenamiento';

  @override
  String get workout_cardio => 'cardio';

  @override
  String get workout_strength => 'fuerza';

  @override
  String get workout_yoga => 'Yoga y flexibilidad';

  @override
  String get workout_duration => 'Duración';

  @override
  String get workout_intensity => 'intensidad';

  @override
  String get workout_calories_burned => 'Calorías quemadas';

  @override
  String get workout_empty => 'No hay entrenamientos registrados hoy';

  @override
  String get workout_save_success => '¡Entrenamiento guardado exitosamente!';

  @override
  String get workout_type => 'Tipo de entrenamiento';

  @override
  String get workout_notes => 'Notas y reflexiones';

  @override
  String get health_overview_title => 'Salud y signos vitales';

  @override
  String get health_heart_rate => 'Frecuencia cardíaca';

  @override
  String get health_blood_oxygen => 'Oxígeno en sangre (SpO2)';

  @override
  String get health_blood_pressure => 'Presión arterial';

  @override
  String get health_blood_glucose => 'Glucosa en sangre';

  @override
  String get health_body_temperature => 'Temperatura corporal';

  @override
  String get health_sleep_tracking => 'Seguimiento del sueño';

  @override
  String get health_weight_tracking => 'Peso y composición corporal';

  @override
  String get health_waist_hip => 'Relación cintura-cadera';

  @override
  String get health_devices_hub =>
      'Centro de dispositivos y relojes inteligentes';

  @override
  String get health_sync_now => 'Sincronizar datos de salud';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Última sincronización: $time';
  }

  @override
  String get health_manual_entry => 'Entrada manual de salud';

  @override
  String get health_metric_detail => 'Detalles de métricas';

  @override
  String get health_connected_sensors => 'Sensores de salud conectados';

  @override
  String get plan_title => 'Plan diario';

  @override
  String get plan_weekly_title => 'Plan de bienestar semanal';

  @override
  String get plan_calorie_target => 'Objetivo de calorías';

  @override
  String get plan_water_target => 'Objetivo de hidratación';

  @override
  String get plan_step_target => 'Objetivo de paso';

  @override
  String get plan_sleep_target => 'Objetivo del sueño';

  @override
  String get plan_meal_suggestions => 'Sugerencias de comidas';

  @override
  String get plan_healthy_habits => 'Hábitos y consejos saludables';

  @override
  String get plan_coach_advice =>
      'Recomendaciones del entrenador de IA de Bloomi';

  @override
  String get plan_generated_title => 'Horario diario personalizado';

  @override
  String get profile_title => 'Perfil';

  @override
  String get profile_edit => 'Editar perfil';

  @override
  String get profile_name => 'Nombre';

  @override
  String get profile_age => 'edad';

  @override
  String get profile_gender => 'Género';

  @override
  String get profile_height => 'altura';

  @override
  String get profile_weight => 'Peso';

  @override
  String get profile_goal => 'Objetivo principal';

  @override
  String get profile_activity_level => 'Nivel de actividad';

  @override
  String get profile_stats => 'Mis estadísticas de bienestar';

  @override
  String get profile_saved => 'Perfil actualizado exitosamente';

  @override
  String get profile_bmi => 'Índice de masa corporal (IMC)';

  @override
  String get profile_membership => 'Membresía';

  @override
  String get settings => 'Configuración';

  @override
  String get preferences_habits => 'PREFERENCIAS Y HÁBITOS';

  @override
  String get appearance_theme => 'Apariencia y tema';

  @override
  String get appearance_theme_sub =>
      'Opciones de fondo oscuro, claro, modo sistema y aplicación';

  @override
  String get permissions => 'Permisos y acceso al sistema';

  @override
  String get permissions_sub =>
      'Health Connect, sensores de pasos, GPS, notificaciones y cámara';

  @override
  String get reminders_notifications => 'Recordatorios y notificaciones';

  @override
  String get reminders_sub =>
      'Horarios de comida, agua, control de peso y recordatorios de hora de acostarse';

  @override
  String get units_of_measurement => 'Unidades de medida';

  @override
  String get units_sub =>
      'Métrico (kg, cm, ml, km) o imperial (libras, pies/pulgadas, onzas líquidas)';

  @override
  String get app_language => 'Idioma de la aplicación';

  @override
  String get language_sub =>
      'Inglés, हिन्दी (hindi), hinglish y más de 195 idiomas globales';

  @override
  String get home_screen_widgets => 'Widgets de la pantalla de inicio';

  @override
  String get widgets_sub =>
      'Widgets de Android en vivo: Hub, Pasos, Agua, Nutrición y Mascota';

  @override
  String get wear_os_watch_app => 'Use la aplicación OS Watch';

  @override
  String get wear_os_sub =>
      'Compañero de reloj inteligente, mosaicos, complicaciones y signos vitales en vivo';

  @override
  String get goals_wellness => 'METAS Y PERSPECTIVAS DE BIENESTAR';

  @override
  String get nutrition_targets => 'Objetivos de nutrición y división macro';

  @override
  String get nutrition_targets_sub =>
      'Objetivo de calorías, proteínas, carbohidratos, grasas y agua';

  @override
  String get weekly_recap => 'Resumen semanal de bienestar';

  @override
  String get weekly_recap_sub =>
      'Promedio de calorías de 7 días, proporción macro y mejor día';

  @override
  String get streaks_milestones => 'Rachas e hitos';

  @override
  String get streaks_sub => 'Rayas de flores activas, insignias y logros.';

  @override
  String get connected_devices => 'DISPOSITIVOS CONECTADOS Y ECOSISTEMA';

  @override
  String get devices_hub => 'Centro de dispositivos y relojes inteligentes';

  @override
  String get devices_hub_sub =>
      'Conexión de salud, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Entorno y clima';

  @override
  String get surroundings_sub =>
      'Calidad del aire (ICA), índice UV y consejos de hidratación climática';

  @override
  String get bloomi_pro => 'Suscripción Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets de pantalla de inicio y seguimiento de signos vitales';

  @override
  String get about_security => 'ACERCA DE Y SEGURIDAD';

  @override
  String get about_bloomi => 'Acerca de Bloomi';

  @override
  String get about_bloomi_sub =>
      'Especificaciones de compilación, versión, atribuciones.';

  @override
  String get privacy_policy => 'Política de privacidad';

  @override
  String get privacy_policy_sub =>
      'Arquitectura de datos en el dispositivo, primero sin conexión';

  @override
  String get terms_conditions => 'Términos y condiciones';

  @override
  String get terms_conditions_sub =>
      'Términos de servicio y pautas de bienestar';

  @override
  String get delete_account => 'Eliminar cuenta y datos';

  @override
  String get delete_account_sub =>
      'Borre irreversiblemente los datos SQLite locales y las copias de seguridad en la nube';

  @override
  String get healthy_habits =>
      'Desarrolle hábitos de bienestar suaves y duraderos';

  @override
  String get all_logs => 'Mis datos y registros rastreados';

  @override
  String get search_language => 'Buscar por idioma o escritura nativa...';

  @override
  String get languages_available => 'Idiomas disponibles';

  @override
  String get no_matching_languages => 'No se encontraron idiomas coincidentes';

  @override
  String get try_searching =>
      'Intente buscar por escritura nativa u ortografía en inglés.';

  @override
  String get partially_translated => 'Parcialmente traducido';

  @override
  String get complete_translation => 'completo';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Idioma establecido en $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Entorno y Medio Ambiente';

  @override
  String get surroundings_aqi => 'Índice de calidad del aire';

  @override
  String get surroundings_uv => 'Índice UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Humedad';

  @override
  String get surroundings_hydration_advice =>
      'Manténgase bien hidratado en las condiciones climáticas actuales.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'buscar comida';

  @override
  String get food_quick_barcode => 'Escanear código de barras 👑';

  @override
  String get food_quick_water => 'agregar agua';

  @override
  String get food_quick_custom => 'Comida personalizada';

  @override
  String get surroundings_good => 'bueno';

  @override
  String get surroundings_moderate => 'moderado';

  @override
  String get surroundings_unhealthy => 'Insalubre';

  @override
  String get notifications_title => 'Notificaciones y alertas';

  @override
  String get notifications_empty => 'No hay notificaciones nuevas';

  @override
  String get notifications_mark_read => 'Marcar todo como leído';

  @override
  String get notifications_clear => 'Borrar todo';

  @override
  String get reminders => 'Configuración de recordatorio';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get reminders_breakfast_title => 'Recordatorio de desayuno 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return '¡Buenos días! Es hora de un desayuno nutritivo en $time.';
  }

  @override
  String get reminders_lunch_title => 'Recordatorio de almuerzo 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Haga una pausa y disfrute de un almuerzo equilibrado y consciente en $time.';
  }

  @override
  String get reminders_dinner_title => 'Recordatorio de cena 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Es hora de disfrutar de una cena ligera y satisfactoria en $time.';
  }

  @override
  String get reminders_water_title => 'Empujón de hidratación 💧';

  @override
  String reminders_water_body(Object time) {
    return '¡Es hora de beber un vaso de agua fresca! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Pesaje semanal ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Realice un seguimiento de sus métricas corporales semanales en Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Relajación a la hora de dormir 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Relájate y prepárate para un sueño reparador ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bienvenido a Bloomi';

  @override
  String get onboard_sub =>
      'Su amigable compañero de salud y nutrición fuera de línea.';

  @override
  String get onboard_get_started => 'Empezar';

  @override
  String get onboard_sign_in => 'Iniciar sesión';

  @override
  String get onboard_skip => 'Saltar';

  @override
  String get onboard_choose_goal =>
      '¿Cuál es su principal objetivo de bienestar?';

  @override
  String get onboard_goal_weight_loss => 'Pérdida de peso suave';

  @override
  String get onboard_goal_muscle => 'Ganancia muscular y fuerza';

  @override
  String get onboard_goal_energy => 'Energía y vitalidad diarias';

  @override
  String get onboard_goal_habits => 'Alimentación consciente y saludable';

  @override
  String get onboard_about_you => 'Cuéntanos sobre ti';

  @override
  String get onboard_lifestyle => 'Tu rutina diaria';

  @override
  String get onboard_permissions_title => 'Permisos y acceso al sistema';

  @override
  String get onboard_permissions_sub =>
      'Otorga acceso para sincronizar pasos, entrenamientos y recordatorios.';

  @override
  String get onboard_plan_ready_title => '¡Tu plan personalizado está listo!';

  @override
  String get onboard_plan_ready_sub =>
      'Hemos elaborado una hoja de ruta de bienestar y nutrición suave y personalizada solo para usted.';

  @override
  String get onboard_enter_bloomi => 'Entra Bloomi';

  @override
  String get insights_weekly_report => 'Resumen semanal de bienestar';

  @override
  String insights_best_day(Object day) {
    return 'Día de mejor consistencia: $day';
  }

  @override
  String get insights_streaks_badges => 'Rachas e hitos';

  @override
  String insights_unlocked_on(Object date) {
    return 'Desbloqueado el $date';
  }

  @override
  String get insights_keep_going => '¡Continúa con el fantástico progreso!';

  @override
  String get widgets_title => 'Widgets de la pantalla de inicio';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets activos: $count';
  }

  @override
  String get widgets_hub_title => 'Centro de bienestar Bloomi';

  @override
  String get widgets_steps_title => 'Pasos y anillo activo';

  @override
  String get widgets_water_title => 'Registro rápido de hidratación';

  @override
  String get widgets_mascot_title => 'Compañero mascota Bloomi';

  @override
  String get wear_os_title => 'Use reloj inteligente con sistema operativo';

  @override
  String get wear_os_connected => 'Conectado para mirar';

  @override
  String get wear_os_sync => 'Sincronizar datos de reloj';

  @override
  String get theme_title => 'Apariencia y tema';

  @override
  String get theme_mode => 'Modo temático';

  @override
  String get theme_light => 'Luz';

  @override
  String get theme_dark => 'oscuro';

  @override
  String get theme_system => 'Valor predeterminado del sistema';

  @override
  String get theme_background_palette => 'Paleta de fondo';

  @override
  String get units_title => 'Unidades de medida';

  @override
  String get units_metric => 'Métrico (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (libras, pulgadas, onzas líquidas)';

  @override
  String get home_unable_load => 'No se puede cargar el panel';

  @override
  String get home_health_permission_req =>
      'Se requiere permiso de conexión de salud';

  @override
  String get home_health_permission_desc =>
      'Bloomi requiere permiso de Health Connect para realizar pasos reales, frecuencia cardíaca y sincronizar widgets de casas móviles en tiempo real.';

  @override
  String get home_allow_health => 'Permitir conexión de salud';

  @override
  String get home_ready_mindful_day => '¿Listo para un día consciente? ✨';

  @override
  String get home_quick_add => 'Agregar rápido';

  @override
  String get home_live_gps => 'GPS en vivo';

  @override
  String get home_calories_remaining_label => 'CALORÍAS RESTANTES';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Consumido: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Grifo para rastreador de agua 💧';

  @override
  String get home_water_goal_reached => 'Meta diaria alcanzada 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml al objetivo diario';
  }

  @override
  String get home_details => 'Detalles';

  @override
  String get home_upgrade_plan_desc =>
      'Actualice para desbloquear objetivos diarios personalizados y plan de IA';

  @override
  String get home_unlock => 'Desbloquear 👑';

  @override
  String get home_quick_log_hint =>
      'Grabe rápidamente una entrada de bienestar';

  @override
  String get food_serving_size => 'Tamaño de la porción';

  @override
  String get food_serving_grams => 'Porción (gramos)';

  @override
  String get food_number_servings => 'Número de porciones';

  @override
  String get food_calories_per_serving => 'Calorías por porción';

  @override
  String get food_recipe_ingredients => 'Ingredientes';

  @override
  String get food_recipe_add_ingredient => 'Agregar ingrediente';

  @override
  String get food_recipe_directions => 'Instrucciones y notas';

  @override
  String get food_recipe_total => 'Nutrición total de la receta';

  @override
  String get food_recipe_per_serving => 'Nutrición por porción';

  @override
  String get food_recipe_saved_toast =>
      '¡Comida personalizada guardada con éxito!';

  @override
  String get food_barcode_found => '¡Producto encontrado!';

  @override
  String get food_barcode_not_found_desc =>
      'No pudimos encontrar este código de barras en la base de datos abierta. Puedes agregarlo como comida personalizada.';

  @override
  String get food_add_custom_btn => 'Agregar comida personalizada';

  @override
  String get food_scan_again => 'Escanear de nuevo';

  @override
  String get food_review_items => 'Revisar los alimentos detectados';

  @override
  String get food_review_hint =>
      'Ajustar cantidades o eliminar cualquier artículo no reconocido';

  @override
  String get food_log_selected => 'Registrar alimentos seleccionados';

  @override
  String get food_favourites_title => 'Alimentos favoritos';

  @override
  String get food_recent_title => 'Alimentos recientes';

  @override
  String get food_no_favourites =>
      'Aún no hay comidas favoritas. Toque el corazón en cualquier alimento para guardar aquí.';

  @override
  String get food_no_recents =>
      'No se encontraron alimentos registrados recientemente.';

  @override
  String get food_nutrition_details_title => 'Detalles de nutrición diaria';

  @override
  String get food_macro_protein_label => 'Desglose de proteínas';

  @override
  String get food_macro_carbs_label => 'Desglose de carbohidratos';

  @override
  String get food_macro_fat_label => 'Descomposición de grasas';

  @override
  String get food_macro_fiber_label => 'Descomposición de la fibra';

  @override
  String get food_daily_target_comparison => 'Comparación de objetivos';

  @override
  String food_target_label(Object target) {
    return 'Objetivo: $target';
  }

  @override
  String get food_edit_entry => 'Editar entrada del diario';

  @override
  String get food_delete_entry => 'Eliminar entrada';

  @override
  String food_grams_short(Object grams) {
    return '$grams gramos';
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
  String get water_intake_history => 'Los registros de agua de hoy';

  @override
  String get water_no_logs_today =>
      'Hoy todavía no hay agua registrada. ¡Hidrátate y toca un botón de adición rápida!';

  @override
  String get water_adjust_goal => 'Ajustar objetivo diario';

  @override
  String get health_connect_banner => 'Conectado a Health Connect';

  @override
  String get health_vitals_summary => 'Vitales diarios de salud';

  @override
  String get health_latest_heart_rate => 'Última frecuencia cardíaca';

  @override
  String get health_latest_bp => 'Presión arterial';

  @override
  String get health_latest_spo2 => 'Oxígeno en sangre';

  @override
  String get health_latest_glucose => 'Glucosa en sangre';

  @override
  String get health_latest_weight => 'Peso';

  @override
  String get health_latest_sleep => 'Duración del sueño';

  @override
  String get health_add_manual => 'Agregar medición manual';

  @override
  String get health_history_trends => 'Tendencias históricas';

  @override
  String get health_sync_success =>
      '¡Los datos de salud se sincronizaron correctamente!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours horas $mins minutos';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilos';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm ppm';
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
    return '$val mg/dL';
  }

  @override
  String get health_devices_title => 'Dispositivos conectados y wearables';

  @override
  String get health_devices_desc =>
      'Administre relojes inteligentes, rastreadores de actividad física y sensores de salud vinculados.';

  @override
  String get health_workout_editor_title => 'Editar entrenamiento';

  @override
  String get health_workout_name_label => 'Nombre del entrenamiento';

  @override
  String get health_workout_duration_label => 'Duración (minutos)';

  @override
  String get health_workout_calories_label => 'Calorías estimadas (kcal)';

  @override
  String get health_workout_date_label => 'Fecha y hora';

  @override
  String get plan_daily_wellness_roadmap => 'Su hoja de ruta personalizada';

  @override
  String get plan_morning_routine => 'Rutina matutina';

  @override
  String get plan_afternoon_routine => 'Bienestar del mediodía';

  @override
  String get plan_evening_routine => 'Relajación nocturna';

  @override
  String get plan_coach_badge => 'Entrenador de IA de Bloomi';

  @override
  String get plan_weekly_overview => 'Enfoque de bienestar de 7 días';

  @override
  String get plan_targets_title => 'Metas y objetivos de bienestar';

  @override
  String get plan_calorie_budget_label => 'Presupuesto diario de calorías';

  @override
  String get plan_water_budget_label => 'Objetivo diario de agua';

  @override
  String get plan_step_budget_label => 'Objetivo de pasos diarios';

  @override
  String get plan_macro_split_label => 'Proporción de macronutrientes';

  @override
  String get profile_personal_details => 'Detalles personales';

  @override
  String get profile_body_stats => 'Medidas corporales';

  @override
  String get profile_app_preferences =>
      'Preferencias y configuración de la aplicación';

  @override
  String get profile_edit_name_hint => 'tu nombre';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Altura ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Peso ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'edad';

  @override
  String get profile_gender_male => 'masculino';

  @override
  String get profile_gender_female => 'Mujer';

  @override
  String get profile_gender_other => 'Otro / Prefiero no decirlo';

  @override
  String get profile_activity_sedentary =>
      'Sedentario (poco o ningún ejercicio)';

  @override
  String get profile_activity_light => 'Ligeramente activo (1-3 días/semana)';

  @override
  String get profile_activity_moderate =>
      'Moderadamente activo (3-5 días/semana)';

  @override
  String get profile_activity_very => 'Muy activo (6-7 días/semana)';

  @override
  String get settings_wear_os_header =>
      'Use la aplicación complementaria del sistema operativo';

  @override
  String get settings_wear_os_desc =>
      'Instala el mosaico Bloomi y la complicación en tu reloj Wear OS para ver las calorías, el agua y los pasos.';

  @override
  String get settings_widgets_header => 'Widgets interactivos de Android';

  @override
  String get settings_widgets_desc =>
      'Fije widgets en tiempo real en la pantalla de inicio de su dispositivo para obtener actualizaciones instantáneas.';

  @override
  String get settings_about_header => 'Acerca de Bloomi';

  @override
  String get settings_about_version => 'Versión 1.0.0';

  @override
  String get settings_about_build => 'Construye 100';

  @override
  String get settings_about_credits =>
      'Elaborado con cuidado para una vida consciente y saludable.';

  @override
  String get settings_terms_header => 'Términos y condiciones';

  @override
  String get settings_privacy_header => 'Política de privacidad';

  @override
  String get settings_delete_header => 'Eliminar cuenta y datos';

  @override
  String get settings_delete_warning =>
      'Esta acción no se puede deshacer. Todas sus comidas, entrenamientos, signos vitales y perfil se eliminarán permanentemente.';

  @override
  String get settings_delete_confirm_btn => 'Eliminar permanentemente';

  @override
  String get onboard_welcome_headline => 'Bienvenidos a Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Seguimiento de bienestar suave y consciente diseñado en torno a su vida.';

  @override
  String get onboard_step_about => 'Acerca de ti';

  @override
  String get onboard_step_goals => 'Tus objetivos';

  @override
  String get onboard_step_lifestyle => 'Hábitos diarios';

  @override
  String get onboard_step_permissions => 'Permisos';

  @override
  String get onboard_step_plan => '¡Listo!';

  @override
  String get onboard_health_connect_perm => 'Acceso a la conexión de salud';

  @override
  String get onboard_step_sensors_perm => 'Sensor de contador de pasos';

  @override
  String get onboard_notif_perm => 'Recordatorios y notificaciones conscientes';

  @override
  String get onboard_camera_perm =>
      'Cámara (código de barras y escáner de alimentos)';

  @override
  String get onboard_grant_permissions => 'Conceder permisos';

  @override
  String get onboard_continue_dashboard => 'Abrir panel';

  @override
  String get notif_channel_hydration_name => 'Empujes de hidratación';

  @override
  String get notif_channel_hydration_desc =>
      'Suaves recordatorios de agua durante todo el día.';

  @override
  String get notif_channel_nutrition_name =>
      'Recordatorios de comidas y nutrición';

  @override
  String get notif_channel_nutrition_desc =>
      'Alertas de recordatorio de desayuno, almuerzo y cena.';

  @override
  String get notif_channel_steps_name => 'Hitos de paso';

  @override
  String get notif_channel_steps_desc =>
      'Celebraciones al alcanzar los objetivos de pasos diarios';

  @override
  String get notif_channel_vitals_name => 'Controles de salud y signos vitales';

  @override
  String get notif_channel_vitals_desc =>
      'Recordatorios de peso y hora de acostarse';

  @override
  String get notif_action_log_water => '💧 Registro +250ml';

  @override
  String get notif_action_snooze => 'Posponer 15m';

  @override
  String get notif_action_log_meal => '🥗 Registro de comida';

  @override
  String get language => 'Idioma';

  @override
  String get share => 'Compartir';

  @override
  String common_days(Object count) {
    return 'Hace $count d';
  }
}
