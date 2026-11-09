// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Casa';

  @override
  String get nav_today => 'Hoxe';

  @override
  String get nav_plan => 'Planificar';

  @override
  String get nav_food => 'Comida';

  @override
  String get nav_food_diary => 'Diario de alimentos';

  @override
  String get nav_workout => 'Rexistro de adestramento';

  @override
  String get nav_health => 'Saúde';

  @override
  String get nav_profile => 'Perfil';

  @override
  String get save => 'Gardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get edit => 'Editar';

  @override
  String get done => 'Feito';

  @override
  String get close => 'Pechar';

  @override
  String get back => 'De volta';

  @override
  String get next => 'A continuación';

  @override
  String get continue_btn => 'Continuar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get search => 'Busca';

  @override
  String get filter => 'Filtro';

  @override
  String get all => 'Todos';

  @override
  String get active => 'Activo';

  @override
  String get today => 'Hoxe';

  @override
  String get yesterday => 'Onte';

  @override
  String get tomorrow => 'Mañá';

  @override
  String get add => 'Engadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get refresh => 'Actualizar';

  @override
  String get retry => 'Volve tentar';

  @override
  String get error => 'Erro';

  @override
  String get success => 'Éxito';

  @override
  String get loading => 'Cargando...';

  @override
  String get no_data => 'Non hai datos dispoñibles';

  @override
  String get offline => 'Modo sen conexión';

  @override
  String get offline_sub =>
      'Os cambios sincronizaranse unha vez que se volvan conectar';

  @override
  String get undo => 'Desfacer';

  @override
  String get portion => 'Porción';

  @override
  String get quantity => 'Cantidade';

  @override
  String get unit => 'Unidade';

  @override
  String get clear => 'Limpar';

  @override
  String get select => 'Seleccione';

  @override
  String get apply => 'Solicitar';

  @override
  String get reset => 'Restablecer';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Si';

  @override
  String get no => 'Non';

  @override
  String get optional => 'Opcional';

  @override
  String get calories => 'Calorías';

  @override
  String get protein => 'Proteína';

  @override
  String get carbs => 'Carbohidratos';

  @override
  String get fat => 'Gordo';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Auga';

  @override
  String get steps => 'Pasos';

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
  String get inches => 'en';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Servindo';

  @override
  String get servings => 'Porcións';

  @override
  String get serving_size => 'Tamaño da ración';

  @override
  String get per_100g => 'por 100 g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Oriente Medio';

  @override
  String get africa => 'África';

  @override
  String get americas => 'Américas';

  @override
  String get home_title => 'Casa';

  @override
  String get home_greeting_morning => 'Bos días';

  @override
  String get home_greeting_afternoon => 'Boas tardes';

  @override
  String get home_greeting_evening => 'Boas noites';

  @override
  String get home_streak_title => 'Raia de Flor';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días consecutivos',
      one: '1 día consecutivo',
      zero: '0 días consecutivos',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Queimado';

  @override
  String get home_calories_budget => 'Orzamento de calorías';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal restantes';
  }

  @override
  String get home_water_title => 'Hidratación diaria';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pasos Camiñados';

  @override
  String get home_quick_actions => 'Accións rápidas';

  @override
  String get home_log_meal => 'Comida de rexistro';

  @override
  String get home_log_water => 'Auga de rexistro';

  @override
  String get home_log_workout => 'Rexistro de adestramento';

  @override
  String get home_log_weight => 'Peso do rexistro';

  @override
  String get home_insights_title => 'Insights de hoxe';

  @override
  String get home_quote =>
      'Pequenas opcións saudables crean transformacións florecentes.';

  @override
  String get home_ai_coach_tip => 'Adestrador Bloomi AI';

  @override
  String get home_surroundings => 'Entorno e aire';

  @override
  String get home_notifications => 'Notificacións';

  @override
  String get home_daily_score => 'Puntuación diaria de benestar';

  @override
  String get home_view_all => 'Ver todo';

  @override
  String get food_diary_title => 'Diario de alimentos';

  @override
  String get food_breakfast => 'Almorzo';

  @override
  String get food_lunch => 'Xantar';

  @override
  String get food_dinner => 'Cea';

  @override
  String get food_snacks => 'Merendas';

  @override
  String get food_add_food => 'Engadir Comida';

  @override
  String get food_edit_food => 'Editar Comida';

  @override
  String get food_add_breakfast => 'Engadir almorzo';

  @override
  String get food_add_lunch => 'Engadir Xantar';

  @override
  String get food_add_dinner => 'Engadir a cea';

  @override
  String get food_add_snack => 'Engadir Snack';

  @override
  String get food_total_calories => 'Calorías totais';

  @override
  String get food_empty_meal =>
      'Aínda non se rexistraron alimentos para esta comida';

  @override
  String get food_empty_diary => 'Non se rexistraron comidas para este día';

  @override
  String get food_log_first_meal =>
      'Toca + para rexistrar a túa primeira comida deliciosa';

  @override
  String get food_quick_add => 'Engadido rápido';

  @override
  String get food_search_hint => 'Busca pratos, froitas, dal, roti...';

  @override
  String get food_custom_recipe => 'Comida e receitas personalizadas';

  @override
  String get food_scan_barcode => 'Escanear código de barras';

  @override
  String get food_camera_scan => 'Escáner de alimentos AI';

  @override
  String get food_recent => 'Alimentos recentes';

  @override
  String get food_favourites => 'Favoritos';

  @override
  String get food_macro_summary => 'Descomposición de macronutrientes';

  @override
  String get food_delete_meal_confirm =>
      'Estás seguro de que queres eliminar este elemento?';

  @override
  String get food_item_deleted => 'Alimentos eliminados';

  @override
  String get food_remaining => 'restante';

  @override
  String get food_consumed => 'consumido';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Busca alimentos';

  @override
  String get foodSearch_scan_barcode => 'Escanear código de barras';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Crea alimentos personalizados';

  @override
  String get foodSearch_recent_searches => 'Buscas recentes';

  @override
  String get foodSearch_popular => 'Pratos populares';

  @override
  String get foodSearch_no_results =>
      'Non hai alimentos que coincidan coa túa busca';

  @override
  String get barcode_title => 'Escáner de código de barras';

  @override
  String get barcode_align =>
      'Aliñar o código de barras dentro do marco da cámara';

  @override
  String get barcode_not_found => 'Non se atopou o produto na base de datos';

  @override
  String get barcode_premium_feature =>
      'A dixitalización de códigos de barras está dispoñible con Bloomi Pro';

  @override
  String get camera_title => 'Escáner de alimentos AI';

  @override
  String get camera_tap_hint => 'Fai unha foto clara do teu prato';

  @override
  String get camera_analysing => 'Analizando prato de comida...';

  @override
  String get camera_detected => 'Elementos detectados';

  @override
  String get camera_flash => 'Alternar Flash';

  @override
  String get camera_retake => 'Volver a tirar a foto';

  @override
  String get camera_confirm_food => 'Confirmar elementos';

  @override
  String get customFood_title => 'Comida e receitas personalizadas';

  @override
  String get customFood_name_hint => 'Nome do prato ou do ingrediente';

  @override
  String get customFood_calories_hint => 'Calorías (kcal)';

  @override
  String get customFood_protein_hint => 'Proteína (g)';

  @override
  String get customFood_carbs_hint => 'Carbohidratos (g)';

  @override
  String get customFood_fat_hint => 'Graxa (g)';

  @override
  String get customFood_save => 'Garda a receita';

  @override
  String get water_tracker_title => 'Rastreador de auga';

  @override
  String get water_daily_target => 'Meta de hidratación diaria';

  @override
  String get water_logged_today => 'Rexistrado hoxe';

  @override
  String get water_add_glass => '+250 ml de vidro';

  @override
  String get water_add_bottle => '+ Botella de 500 ml';

  @override
  String get water_custom_amount => 'Cantidade personalizada';

  @override
  String get water_reminder_tip =>
      'Beba auga regularmente durante todo o día para obter enerxía constante.';

  @override
  String water_logged_toast(Object amount) {
    return 'Rexistráronse $amount ml de auga 💧';
  }

  @override
  String get workout_title => 'Rexistro de adestramento';

  @override
  String get workout_add_exercise => 'Engadir adestramento';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Forza';

  @override
  String get workout_yoga => 'Ioga e flexibilidade';

  @override
  String get workout_duration => 'Duración';

  @override
  String get workout_intensity => 'Intensidade';

  @override
  String get workout_calories_burned => 'Calorías queimadas';

  @override
  String get workout_empty => 'Non se rexistrou ningún adestramento hoxe';

  @override
  String get workout_save_success => 'O adestramento gardouse correctamente!';

  @override
  String get workout_type => 'Tipo de adestramento';

  @override
  String get workout_notes => 'Notas e reflexións';

  @override
  String get health_overview_title => 'Saúde e Vitais';

  @override
  String get health_heart_rate => 'Frecuencia cardíaca';

  @override
  String get health_blood_oxygen => 'Osíxeno no sangue (SpO2)';

  @override
  String get health_blood_pressure => 'Presión arterial';

  @override
  String get health_blood_glucose => 'Glicosa no sangue';

  @override
  String get health_body_temperature => 'Temperatura corporal';

  @override
  String get health_sleep_tracking => 'Seguimento do sono';

  @override
  String get health_weight_tracking => 'Peso e composición corporal';

  @override
  String get health_waist_hip => 'Relación cintura a cadeira';

  @override
  String get health_devices_hub => 'Dispositivos e Smartwatch Hub';

  @override
  String get health_sync_now => 'Sincronizar datos de saúde';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Última sincronización: $time';
  }

  @override
  String get health_manual_entry => 'Entrada manual da saúde';

  @override
  String get health_metric_detail => 'Detalles da métrica';

  @override
  String get health_connected_sensors => 'Sensores de saúde conectados';

  @override
  String get plan_title => 'Plan diario';

  @override
  String get plan_weekly_title => 'Plan semanal de benestar';

  @override
  String get plan_calorie_target => 'Obxectivo de calorías';

  @override
  String get plan_water_target => 'Obxectivo de hidratación';

  @override
  String get plan_step_target => 'Obxectivo de paso';

  @override
  String get plan_sleep_target => 'Obxectivo do sono';

  @override
  String get plan_meal_suggestions => 'Suxestións de comidas';

  @override
  String get plan_healthy_habits => 'Hábitos saudables e consellos';

  @override
  String get plan_coach_advice => 'Recomendacións do adestrador Bloomi AI';

  @override
  String get plan_generated_title => 'Horario diario personalizado';

  @override
  String get profile_title => 'Perfil';

  @override
  String get profile_edit => 'Editar perfil';

  @override
  String get profile_name => 'Nome';

  @override
  String get profile_age => 'Idade';

  @override
  String get profile_gender => 'Xénero';

  @override
  String get profile_height => 'Altura';

  @override
  String get profile_weight => 'Peso';

  @override
  String get profile_goal => 'Obxectivo Primario';

  @override
  String get profile_activity_level => 'Nivel de actividade';

  @override
  String get profile_stats => 'As miñas estatísticas de benestar';

  @override
  String get profile_saved => 'Perfil actualizado correctamente';

  @override
  String get profile_bmi => 'Índice de Masa Corporal (IMC)';

  @override
  String get profile_membership => 'Membresía';

  @override
  String get settings => 'Configuración';

  @override
  String get preferences_habits => 'PREFERENCIAS E HÁBITOS';

  @override
  String get appearance_theme => 'Aspecto e tema';

  @override
  String get appearance_theme_sub =>
      'Opcións de fondo escuro, claro, modo do sistema e aplicación';

  @override
  String get permissions => 'Permisos e acceso ao sistema';

  @override
  String get permissions_sub =>
      'Health Connect, sensores de pasos, GPS, notificacións e cámara';

  @override
  String get reminders_notifications => 'Recordatorios e notificacións';

  @override
  String get reminders_sub =>
      'Horas das comidas, auga, rexistro de peso e recordatorios para durmir';

  @override
  String get units_of_measurement => 'Unidades de medida';

  @override
  String get units_sub =>
      'Métrico (kg, cm, ml, km) ou imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Idioma da aplicación';

  @override
  String get language_sub =>
      'Inglés, हिन्दी (hindi), Hinglish e máis de 195 linguas globais';

  @override
  String get home_screen_widgets => 'Widgets da pantalla de inicio';

  @override
  String get widgets_sub =>
      'Widgets de Android en directo: Hub, Steps, Auga, Nutrición e Mascota';

  @override
  String get wear_os_watch_app => 'Aplicación Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Compañeiro do reloxo intelixente, mosaicos, complicacións e elementos vitais en directo';

  @override
  String get goals_wellness => 'OBXECTIVOS E PERSPECTIVAS DE BENESTAR';

  @override
  String get nutrition_targets =>
      'Obxectivos de nutrición e división de macros';

  @override
  String get nutrition_targets_sub =>
      'Obxectivo de calorías, proteínas, carbohidratos, graxa e auga';

  @override
  String get weekly_recap => 'Resumo semanal de benestar';

  @override
  String get weekly_recap_sub =>
      'Media de calorías de 7 días, relación macro e mellor día';

  @override
  String get streaks_milestones => 'Raias e fitos';

  @override
  String get streaks_sub => 'Raias de flores activas, insignias e logros';

  @override
  String get connected_devices => 'DISPOSITIVOS E ECOSISTEMA CONECTADO';

  @override
  String get devices_hub => 'Dispositivos e Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Entorno e Tempo';

  @override
  String get surroundings_sub =>
      'Calidade do aire (AQI), índice UV e consellos de hidratación meteorolóxica';

  @override
  String get bloomi_pro => 'Subscrición Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets da pantalla de inicio e seguimento de elementos vitais';

  @override
  String get about_security => 'ACERCA E SEGURIDADE';

  @override
  String get about_bloomi => 'Sobre Bloomi';

  @override
  String get about_bloomi_sub =>
      'Especificacións de construción, versión, atribucións';

  @override
  String get privacy_policy => 'Política de privacidade';

  @override
  String get privacy_policy_sub =>
      'Arquitectura de datos no dispositivo en primeiro lugar sen conexión';

  @override
  String get terms_conditions => 'Termos e condicións';

  @override
  String get terms_conditions_sub =>
      'Condicións de servizo e pautas de benestar';

  @override
  String get delete_account => 'Eliminar conta e datos';

  @override
  String get delete_account_sub =>
      'Borra de xeito irreversible os datos locais de SQLite e as copias de seguridade na nube';

  @override
  String get healthy_habits => 'Crea hábitos de benestar suaves e duradeiros';

  @override
  String get all_logs => 'Os meus datos e rexistros rastrexados';

  @override
  String get search_language => 'Busca por idioma ou escritura nativa...';

  @override
  String get languages_available => 'Idiomas dispoñibles';

  @override
  String get no_matching_languages => 'Non se atoparon idiomas coincidentes';

  @override
  String get try_searching =>
      'Proba a buscar mediante a escritura nativa ou a ortografía inglesa';

  @override
  String get partially_translated => 'Traducido parcialmente';

  @override
  String get complete_translation => 'Completa';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Idioma definido como $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Entorno e Medio Ambiente';

  @override
  String get surroundings_aqi => 'Índice de calidade do aire';

  @override
  String get surroundings_uv => 'Índice UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Humidade';

  @override
  String get surroundings_hydration_advice =>
      'Mantéñase ben hidratado nas condicións meteorolóxicas actuais.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Busca Comida';

  @override
  String get food_quick_barcode => 'Escanear código de barras 👑';

  @override
  String get food_quick_water => 'Engadir auga';

  @override
  String get food_quick_custom => 'Comida personalizada';

  @override
  String get surroundings_good => 'Ben';

  @override
  String get surroundings_moderate => 'Moderado';

  @override
  String get surroundings_unhealthy => 'Non saudable';

  @override
  String get notifications_title => 'Notificacións e alertas';

  @override
  String get notifications_empty => 'Non hai novas notificacións';

  @override
  String get notifications_mark_read => 'Marcar todo como lido';

  @override
  String get notifications_clear => 'Borrar todo';

  @override
  String get reminders => 'Configuración do recordatorio';

  @override
  String get notifications => 'Notificacións push';

  @override
  String get reminders_breakfast_title => 'Recordatorio de almorzo 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bos días! É hora de tomar un almorzo nutritivo ás $time .';
  }

  @override
  String get reminders_lunch_title => 'Recordatorio do xantar 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Fai unha pausa e disfruta dun xantar equilibrado e consciente en $time .';
  }

  @override
  String get reminders_dinner_title => 'Recordatorio da cea 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'É hora de unha cea lixeira e satisfactoria en $time .';
  }

  @override
  String get reminders_water_title => 'Empuñada de hidratación 💧';

  @override
  String reminders_water_body(Object time) {
    return 'É hora de beber un vaso de auga fresca! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Pesaxe semanal ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Fai un seguimento das túas métricas corporales semanais en Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Descanso á hora de durmir 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Reláxate e prepárate para durmir reparador ( $time ).';
  }

  @override
  String get onboard_welcome => 'Benvido a Bloomi';

  @override
  String get onboard_sub =>
      'O teu amable compañeiro de saúde e nutrición sen conexión.';

  @override
  String get onboard_get_started => 'Comeza';

  @override
  String get onboard_sign_in => 'Iniciar sesión';

  @override
  String get onboard_skip => 'Saltar';

  @override
  String get onboard_choose_goal =>
      'Cal é o teu obxectivo principal de benestar?';

  @override
  String get onboard_goal_weight_loss => 'Perda de peso suave';

  @override
  String get onboard_goal_muscle => 'Ganancia muscular e forza';

  @override
  String get onboard_goal_energy => 'Enerxía e vitalidade diarias';

  @override
  String get onboard_goal_habits => 'Alimentación saudable e consciente';

  @override
  String get onboard_about_you => 'Fálanos de ti';

  @override
  String get onboard_lifestyle => 'A túa rutina diaria';

  @override
  String get onboard_permissions_title => 'Permisos e acceso ao sistema';

  @override
  String get onboard_permissions_sub =>
      'Concede acceso a pasos de sincronización, adestramentos e recordatorios.';

  @override
  String get onboard_plan_ready_title => 'O teu plan personalizado está listo!';

  @override
  String get onboard_plan_ready_sub =>
      'Elaboramos unha folla de ruta de nutrición e benestar suave e personalizada só para ti.';

  @override
  String get onboard_enter_bloomi => 'Entra Bloomi';

  @override
  String get insights_weekly_report => 'Resumo semanal de benestar';

  @override
  String insights_best_day(Object day) {
    return 'Día de mellor coherencia: $day';
  }

  @override
  String get insights_streaks_badges => 'Raias e fitos';

  @override
  String insights_unlocked_on(Object date) {
    return 'Desbloqueado o $date';
  }

  @override
  String get insights_keep_going => 'Sigue co progreso fantástico!';

  @override
  String get widgets_title => 'Widgets da pantalla de inicio';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets activos: $count';
  }

  @override
  String get widgets_hub_title => 'Centro de benestar Bloomi';

  @override
  String get widgets_steps_title => 'Pasos e anel activo';

  @override
  String get widgets_water_title => 'Registro rápido de hidratación';

  @override
  String get widgets_mascot_title => 'Acompañante da mascota de Bloomi';

  @override
  String get wear_os_title => 'Use OS Smartwatch';

  @override
  String get wear_os_connected => 'Conectado a Watch';

  @override
  String get wear_os_sync => 'Sincronizar datos de visualización';

  @override
  String get theme_title => 'Aspecto e tema';

  @override
  String get theme_mode => 'Modo tema';

  @override
  String get theme_light => 'Luz';

  @override
  String get theme_dark => 'Escuro';

  @override
  String get theme_system => 'Sistema';

  @override
  String get theme_background_palette => 'Paleta de fondo';

  @override
  String get units_title => 'Unidades de medida';

  @override
  String get units_metric => 'Métrico (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Non se puido cargar o panel';

  @override
  String get home_health_permission_req =>
      'Necesítase permiso de Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi require permiso Health Connect para realizar pasos reais, frecuencia cardíaca e sincronizar os widgets da casa móbil en tempo real.';

  @override
  String get home_allow_health => 'Permitir Health Connect';

  @override
  String get home_ready_mindful_day => 'Preparado para un día consciente? ✨';

  @override
  String get home_quick_add => 'Engadido rápido';

  @override
  String get home_live_gps => 'GPS en directo';

  @override
  String get home_calories_remaining_label => 'CALORÍAS REMANENTES';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Comido: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Toca para rastrexar auga 💧';

  @override
  String get home_water_goal_reached => 'Obxectivo diario alcanzado 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml para o obxectivo diario';
  }

  @override
  String get home_details => 'Detalles';

  @override
  String get home_upgrade_plan_desc =>
      'Actualiza para desbloquear obxectivos diarios personalizados e plan de IA';

  @override
  String get home_unlock => 'Desbloquear 👑';

  @override
  String get home_quick_log_hint =>
      'Grava rapidamente unha entrada de benestar';

  @override
  String get food_serving_size => 'Tamaño da ración';

  @override
  String get food_serving_grams => 'Porción (g)';

  @override
  String get food_number_servings => 'Número de racións';

  @override
  String get food_calories_per_serving => 'Calorías por porción';

  @override
  String get food_recipe_ingredients => 'Ingredientes';

  @override
  String get food_recipe_add_ingredient => 'Engadir ingrediente';

  @override
  String get food_recipe_directions => 'Instrucións e notas';

  @override
  String get food_recipe_total => 'Nutrición total da receita';

  @override
  String get food_recipe_per_serving => 'Nutrición por porción';

  @override
  String get food_recipe_saved_toast =>
      'A comida personalizada gardouse correctamente.';

  @override
  String get food_barcode_found => 'Produto atopado!';

  @override
  String get food_barcode_not_found_desc =>
      'Non puidemos atopar este código de barras na base de datos aberta. Podes engadilo como alimento personalizado.';

  @override
  String get food_add_custom_btn => 'Engade comida personalizada';

  @override
  String get food_scan_again => 'Escanear de novo';

  @override
  String get food_review_items => 'Revisa os alimentos detectados';

  @override
  String get food_review_hint =>
      'Axusta as cantidades ou elimina calquera artigo non recoñecido';

  @override
  String get food_log_selected => 'Rexistro de alimentos seleccionados';

  @override
  String get food_favourites_title => 'Alimentos Favoritos';

  @override
  String get food_recent_title => 'Alimentos recentes';

  @override
  String get food_no_favourites =>
      'Aínda non hai comidas favoritas. Toca calquera alimento para gardar aquí.';

  @override
  String get food_no_recents =>
      'Non se atoparon alimentos rexistrados recentemente.';

  @override
  String get food_nutrition_details_title => 'Detalles de nutrición diaria';

  @override
  String get food_macro_protein_label => 'Descomposición de proteínas';

  @override
  String get food_macro_carbs_label => 'Desglose de carbohidratos';

  @override
  String get food_macro_fat_label => 'Descomposición de graxas';

  @override
  String get food_macro_fiber_label => 'Avaría da fibra';

  @override
  String get food_daily_target_comparison => 'Comparación de obxectivos';

  @override
  String food_target_label(Object target) {
    return 'Obxectivo: $target';
  }

  @override
  String get food_edit_entry => 'Editar entrada do diario';

  @override
  String get food_delete_entry => 'Eliminar entrada';

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
  String get water_intake_history => 'Rexistros de auga de hoxe';

  @override
  String get water_no_logs_today =>
      'Aínda non se rexistrou auga hoxe. Hidratate e toca un botón de engadir rápido!';

  @override
  String get water_adjust_goal => 'Axustar o obxectivo diario';

  @override
  String get health_connect_banner => 'Conectado a Health Connect';

  @override
  String get health_vitals_summary => 'Vitais diarias da saúde';

  @override
  String get health_latest_heart_rate => 'Último ritmo cardíaco';

  @override
  String get health_latest_bp => 'Presión arterial';

  @override
  String get health_latest_spo2 => 'Osíxeno no sangue';

  @override
  String get health_latest_glucose => 'Glicosa no sangue';

  @override
  String get health_latest_weight => 'Peso';

  @override
  String get health_latest_sleep => 'Duración do sono';

  @override
  String get health_add_manual => 'Engadir medición manual';

  @override
  String get health_history_trends => 'Tendencias históricas';

  @override
  String get health_sync_success =>
      'Os datos de saúde sincronizáronse correctamente.';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours horas $mins minutos';
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
  String get health_devices_title => 'Dispositivos e wearables conectados';

  @override
  String get health_devices_desc =>
      'Xestiona reloxos intelixentes emparellados, rastreadores de fitness e sensores de saúde.';

  @override
  String get health_workout_editor_title => 'Editar adestramento';

  @override
  String get health_workout_name_label => 'Nome do adestramento';

  @override
  String get health_workout_duration_label => 'Duración (minutos)';

  @override
  String get health_workout_calories_label => 'Calorías estimadas (kcal)';

  @override
  String get health_workout_date_label => 'Data e Hora';

  @override
  String get plan_daily_wellness_roadmap => 'A túa folla de ruta personalizada';

  @override
  String get plan_morning_routine => 'Rutina matinal';

  @override
  String get plan_afternoon_routine => 'Benestar do mediodía';

  @override
  String get plan_evening_routine => 'Vento da noite';

  @override
  String get plan_coach_badge => 'Adestrador Bloomi AI';

  @override
  String get plan_weekly_overview => 'Foco de benestar de 7 días';

  @override
  String get plan_targets_title => 'Obxectivos e obxectivos de benestar';

  @override
  String get plan_calorie_budget_label => 'Orzamento diario de calorías';

  @override
  String get plan_water_budget_label => 'Obxectivo diario de auga';

  @override
  String get plan_step_budget_label => 'Obxectivo de paso diario';

  @override
  String get plan_macro_split_label => 'Relación de macronutrientes';

  @override
  String get profile_personal_details => 'Datos persoais';

  @override
  String get profile_body_stats => 'Medidas Corporais';

  @override
  String get profile_app_preferences =>
      'Preferencias e configuración da aplicación';

  @override
  String get profile_edit_name_hint => 'O teu nome';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Altura ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Peso ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Idade';

  @override
  String get profile_gender_male => 'Masculino';

  @override
  String get profile_gender_female => 'Feminino';

  @override
  String get profile_gender_other => 'Outro / Prefiro non dicir';

  @override
  String get profile_activity_sedentary =>
      'Sedentario (pouco ou ningún exercicio)';

  @override
  String get profile_activity_light => 'Lixeiramente activo (1-3 días/semana)';

  @override
  String get profile_activity_moderate =>
      'Moderadamente activo (3-5 días/semana)';

  @override
  String get profile_activity_very => 'Moi activo (6-7 días/semana)';

  @override
  String get settings_wear_os_header => 'Aplicación Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Instala o mosaico e a complicación de Bloomi no teu reloxo Wear OS para ver as calorías, a auga e os pasos.';

  @override
  String get settings_widgets_header => 'Widgets interactivos de Android';

  @override
  String get settings_widgets_desc =>
      'Fixa widgets en tempo real na pantalla de inicio do teu dispositivo para obter actualizacións instantáneas.';

  @override
  String get settings_about_header => 'Sobre Bloomi';

  @override
  String get settings_about_version => 'Versión';

  @override
  String get settings_about_build => 'Construción 100';

  @override
  String get settings_about_credits =>
      'Elaborado con coidado para unha vida consciente e saudable.';

  @override
  String get settings_terms_header => 'Termos e condicións';

  @override
  String get settings_privacy_header => 'Política de privacidade';

  @override
  String get settings_delete_header => 'Eliminar conta e datos';

  @override
  String get settings_delete_warning =>
      'Esta acción non se pode desfacer. Eliminaranse permanentemente todas as túas comidas, adestramentos, funcións vitais e perfil.';

  @override
  String get settings_delete_confirm_btn => 'Eliminar permanentemente';

  @override
  String get onboard_welcome_headline => 'Benvido a Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Seguimento de benestar suave e consciente deseñado arredor da túa vida.';

  @override
  String get onboard_step_about => 'Sobre ti';

  @override
  String get onboard_step_goals => 'Os teus obxectivos';

  @override
  String get onboard_step_lifestyle => 'Hábitos diarios';

  @override
  String get onboard_step_permissions => 'Permisos';

  @override
  String get onboard_step_plan => 'Listo!';

  @override
  String get onboard_health_connect_perm => 'Acceso Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Sensor contador de pasos';

  @override
  String get onboard_notif_perm => 'Recordatorios e notificacións conscientes';

  @override
  String get onboard_camera_perm =>
      'Cámara (escáner de código de barras e alimentos)';

  @override
  String get onboard_grant_permissions => 'Conceder permisos';

  @override
  String get onboard_continue_dashboard => 'Abre o panel de control';

  @override
  String get notif_channel_hydration_name => 'Golpes de hidratación';

  @override
  String get notif_channel_hydration_desc =>
      'Recordatorios de auga suaves durante todo o día';

  @override
  String get notif_channel_nutrition_name =>
      'Recordatorios de comidas e nutrición';

  @override
  String get notif_channel_nutrition_desc =>
      'Alertas de recordatorios de almorzo, xantar e cea';

  @override
  String get notif_channel_steps_name => 'Fitos de paso';

  @override
  String get notif_channel_steps_desc =>
      'Celebracións ao alcanzar os obxectivos de paso diario';

  @override
  String get notif_channel_vitals_name => 'Revisións de Saúde e Vital';

  @override
  String get notif_channel_vitals_desc =>
      'Recordatorios do peso e da hora de durmir';

  @override
  String get notif_action_log_water => '💧 Rexistro +250ml';

  @override
  String get notif_action_snooze => 'Retardo 15 m';

  @override
  String get notif_action_log_meal => '🥗 Comida de rexistro';

  @override
  String get language => 'Linguaxe';

  @override
  String get share => 'Compartir';

  @override
  String common_days(Object count) {
    return 'hai ${count}d';
  }
}
