// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Aymara (`ay`).
class AppLocalizationsAy extends AppLocalizations {
  AppLocalizationsAy([String locale = 'ay']) : super(locale);

  @override
  String get app_name => 'Bloomi kullakajj ukham luräna';

  @override
  String get nav_home => 'Uta';

  @override
  String get nav_today => 'Jichhürunakanxa';

  @override
  String get nav_plan => 'Amtañani';

  @override
  String get nav_food => 'Manq’añanaka';

  @override
  String get nav_food_diary => 'Manq’añanaka Diario';

  @override
  String get nav_workout => 'Entrenamiento Log ukax mä juk’a pachanakanwa';

  @override
  String get nav_health => 'K’umaräñapataki';

  @override
  String get nav_profile => 'Perfil ukax mä juk’a pachanakanwa';

  @override
  String get save => 'Qhispiyaña';

  @override
  String get cancel => 'Cancelar sañ muni';

  @override
  String get delete => 'Chhaqtayaña';

  @override
  String get edit => 'Ukax mä juk’a pachanakanwa';

  @override
  String get done => 'Lurawayxiwa';

  @override
  String get close => 'Jist’antaña';

  @override
  String get back => 'Qhipäxaru';

  @override
  String get next => 'Ukxarusti';

  @override
  String get continue_btn => 'Ukhama sarantaskakiwa';

  @override
  String get confirm => 'Chiqañchaña';

  @override
  String get search => 'Uñakipt’aña';

  @override
  String get filter => 'Filtro ukaxa mä juk’a pachanakwa lurasi';

  @override
  String get all => 'Taqi kunasa';

  @override
  String get active => 'Activo ukhamawa';

  @override
  String get today => 'Jichhürunakanxa';

  @override
  String get yesterday => 'Qharüruxa';

  @override
  String get tomorrow => 'Qharüruxa';

  @override
  String get add => 'Ukhamaraki';

  @override
  String get remove => 'Ukaxa apsutawa';

  @override
  String get refresh => 'Refresco luraña';

  @override
  String get retry => 'Wasitat yantʼañamawa';

  @override
  String get error => 'Pantjasiwi';

  @override
  String get success => 'Suma sarnaqaña';

  @override
  String get loading => 'Ukax mä...';

  @override
  String get no_data => 'Janiw kuna datos ukanakas utjkiti';

  @override
  String get offline => 'Modo Offline ukax mä juk’a pachanakanwa';

  @override
  String get offline_sub =>
      'Mayjt’awinakax mä kuti wasitat mayachatäxi ukhax sincronizatäniwa';

  @override
  String get undo => 'Ukax mä juk’a pachanakanwa';

  @override
  String get portion => 'Mä t’aqa';

  @override
  String get quantity => 'Jakhuwi';

  @override
  String get unit => 'Unidad';

  @override
  String get clear => 'Qhana';

  @override
  String get select => 'Ajlliñani';

  @override
  String get apply => 'Uka tuqitxa';

  @override
  String get reset => 'Ukax mä juk’a pachanakanwa';

  @override
  String get ok => 'Ukhamajj walikïskiwa';

  @override
  String get yes => 'Jisa';

  @override
  String get no => 'Janiwa';

  @override
  String get optional => 'Opcional ukhamawa';

  @override
  String get calories => 'Calorías ukanaka';

  @override
  String get protein => 'Proteína ukaxa wali ch’amawa';

  @override
  String get carbs => 'Carbohidratos ukanaka';

  @override
  String get fat => 'Q’añu';

  @override
  String get fiber => 'Fibra satawa';

  @override
  String get water => 'Uma';

  @override
  String get steps => 'Ukax mä juk’a pachanakanwa';

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
  String get serving => 'Servicio luraña';

  @override
  String get servings => 'Servicios ukanaka';

  @override
  String get serving_size => 'Servidor Tamapa';

  @override
  String get per_100g => 'sapa 100g';

  @override
  String get india => 'India markanxa';

  @override
  String get asia => 'Asia tuqina';

  @override
  String get europe => 'Europa markanxa';

  @override
  String get middle_east => 'Oriente Medio uksanxa';

  @override
  String get africa => 'África markanwa';

  @override
  String get americas => 'América markanxa';

  @override
  String get home_title => 'Uta';

  @override
  String get home_greeting_morning => 'Suma alwa';

  @override
  String get home_greeting_afternoon => 'Suma Tarde';

  @override
  String get home_greeting_evening => 'Suma Jayp’u';

  @override
  String get home_streak_title => 'Panqara Racha';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count urunak saraqatat',
      one: '1 uru saraqata',
      zero: '0 urunak saraqataruw puri',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Nina phichhantatänwa';

  @override
  String get home_calories_budget =>
      'Presupuesto de Calorías ukax mä juk’a pachanakanwa';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal ukax qhiparakiwa';
  }

  @override
  String get home_water_title => 'Sapa uru Hidratación ukampi';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pasos Walked ukax mä juk’a pachanakanwa';

  @override
  String get home_quick_actions => 'Jank’aki Luräwinaka';

  @override
  String get home_log_meal => 'Log Manq’aña';

  @override
  String get home_log_water => 'Log Uma';

  @override
  String get home_log_workout => 'Log Workout ukax mä juk’a pachanakanwa';

  @override
  String get home_log_weight => 'Log Peso ukaxa';

  @override
  String get home_insights_title => 'Jichhürunakan Insights';

  @override
  String get home_quote =>
      'Jisk’a k’umara ajlliwinakax panqar mayjt’awinak uñstayapxi.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI ukax mä entrenador ukhamawa';

  @override
  String get home_surroundings => 'Muyuntat & Aire ukanaka';

  @override
  String get home_notifications => 'Yatiyawinaka';

  @override
  String get home_daily_score => 'Sapa uru Suma jakañ Puntuacion';

  @override
  String get home_view_all => 'Taqi kuna uñjaña';

  @override
  String get food_diary_title => 'Manq’añanaka Diario';

  @override
  String get food_breakfast => 'Desayuno ukat juk’ampinaka';

  @override
  String get food_lunch => 'Chika uru manq’aña';

  @override
  String get food_dinner => 'Manq’añanaka';

  @override
  String get food_snacks => 'T’ant’anaka';

  @override
  String get food_add_food => 'Manq’añanaka yapxataña';

  @override
  String get food_edit_food => 'Manq’añanaka Editar';

  @override
  String get food_add_breakfast => 'Ukhamaraki Desayuno';

  @override
  String get food_add_lunch => 'Chika uru manq’aña yapxataña';

  @override
  String get food_add_dinner => 'Ukhama Manq’aña';

  @override
  String get food_add_snack => 'Ukaxa Snack satawa';

  @override
  String get food_total_calories => 'Taqi Calorías ukanaka';

  @override
  String get food_empty_meal =>
      'Janiw kuna manq’anakas aka manq’añatakix qillqt’atäkiti';

  @override
  String get food_empty_diary =>
      'Aka urutakix janiw manq’añanakax qillqt’atäkiti';

  @override
  String get food_log_first_meal =>
      '+ ukxaru ch’iqt’aña nayrïri suma manq’aña qillqt’añataki';

  @override
  String get food_quick_add => 'Jank’aki Yatiqañataki';

  @override
  String get food_search_hint => 'Uka manq’anaka, frutanaka, dal, roti...';

  @override
  String get food_custom_recipe => 'Manq’añanaka & Receta Costumbre';

  @override
  String get food_scan_barcode =>
      'Código de Barras de Escanear ukax mä juk’a pachanakanwa';

  @override
  String get food_camera_scan => 'AI Manq’añanaka Escáner';

  @override
  String get food_recent => 'Jichha Manq’añanaka';

  @override
  String get food_favourites => 'Favoritos ukanaka';

  @override
  String get food_macro_summary =>
      'Macronutrientes ukaxa mä juk’a pachanakwa lurasi';

  @override
  String get food_delete_meal_confirm => '¿Jumax aka yänak apsuñ munasmati?';

  @override
  String get food_item_deleted => 'Manq’a yänaka apsuña';

  @override
  String get food_remaining => 'qhiparapxi';

  @override
  String get food_consumed => 'manq’antatawa';

  @override
  String food_of_target(Object target) {
    return 'ukatsti $target kcal';
  }

  @override
  String get foodSearch_title => 'Manq’añanaka thaqhaña';

  @override
  String get foodSearch_scan_barcode =>
      'Código de Barras de Escanear ukax mä juk’a pachanakanwa';

  @override
  String get foodSearch_take_photo => 'Snap Manq’añ Foto';

  @override
  String get foodSearch_custom_food => 'Manq’añanaka Custom luraña';

  @override
  String get foodSearch_recent_searches => 'Jichha pacha thaqhatanaka';

  @override
  String get foodSearch_popular => 'Wali uñt’at manq’anaka';

  @override
  String get foodSearch_no_results =>
      'Janiwa manq’anaka thaqhañampi kikipakiti';

  @override
  String get barcode_title =>
      'Escáner de Código de Barras ukax mä juk’a pachanakanwa';

  @override
  String get barcode_align =>
      'Código de barras ukax cámara marco manqhan alinear';

  @override
  String get barcode_not_found =>
      'Producto ukax janiw base de datos ukan jikxataskiti';

  @override
  String get barcode_premium_feature =>
      'Código de barras ukan escaneo ukax Bloomi Pro ukampiw lurasi';

  @override
  String get camera_title => 'AI Manq’añanaka Escáner';

  @override
  String get camera_tap_hint => 'Mä qhana foto apsuñamawa platomanxa';

  @override
  String get camera_analysing => 'Manq’a plato uñakipaña...';

  @override
  String get camera_detected => 'Uñt’ata yänaka';

  @override
  String get camera_flash => 'Flash ukar mayjt’ayaña';

  @override
  String get camera_retake => 'Foto wasitat apsuña';

  @override
  String get camera_confirm_food => 'Chiqañchaña yänaka';

  @override
  String get customFood_title => 'Manq’añanaka & Receta Costumbre';

  @override
  String get customFood_name_hint => 'Plato jan ukax ingrediente sutipa';

  @override
  String get customFood_calories_hint => 'Calorías (kcal) ukat juk’ampinaka.';

  @override
  String get customFood_protein_hint => 'Proteína ukaxa (g) .';

  @override
  String get customFood_carbs_hint => 'Carbohidratos (g) ukat juk’ampinaka.';

  @override
  String get customFood_fat_hint => 'Q’añu (g) .';

  @override
  String get customFood_save => 'Save Receta ukaxa';

  @override
  String get water_tracker_title => 'Uma thaqhiri';

  @override
  String get water_daily_target => 'Sapa uru Hidratación uka amtawi';

  @override
  String get water_logged_today => 'Jichhürunakan qillqt’ata';

  @override
  String get water_add_glass => '+250 ml Vidrio ukat juk’ampinaka';

  @override
  String get water_add_bottle => '+500 ml Botella ukaxa';

  @override
  String get water_custom_amount =>
      'Custom Cantidad ukax mä juk’a pachanakanwa';

  @override
  String get water_reminder_tip =>
      'Uma sapa kutiw urux umañama, ukhamat jan ch’amanïñapataki.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml uma 💧';
  }

  @override
  String get workout_title => 'Entrenamiento Log ukax mä juk’a pachanakanwa';

  @override
  String get workout_add_exercise => 'Ukhamaraki Entrenamiento';

  @override
  String get workout_cardio => 'Cardio ukax mä juk’a pachanakanwa';

  @override
  String get workout_strength => 'Ch’amanïña';

  @override
  String get workout_yoga => 'Yoga & Flexibilidad ukanak luraña';

  @override
  String get workout_duration => 'Kuna pachakamasa';

  @override
  String get workout_intensity => 'Intensidad ukat juk’ampinaka';

  @override
  String get workout_calories_burned => 'Calorías ukax phichhantatänwa';

  @override
  String get workout_empty =>
      'Jichhürunakanx janiw kuna entrenamientos ukanakas registratäkiti';

  @override
  String get workout_save_success =>
      '¡Entrenamiento ukax wali suma qhispiyatawa!';

  @override
  String get workout_type => 'Ukax Tipo de Entrenamiento ukawa';

  @override
  String get workout_notes => 'Notas & Reflexiones ukanak uñakipt’aña';

  @override
  String get health_overview_title => 'K’umaräñapataki & Vitales ukanaka';

  @override
  String get health_heart_rate => 'Chuyma ch’allxtawi';

  @override
  String get health_blood_oxygen => 'Wilan Oxígeno (SpO2) ukax 1.1.';

  @override
  String get health_blood_pressure => 'Wila ch’akhanaka';

  @override
  String get health_blood_glucose => 'Wila Glucosa ukaxa';

  @override
  String get health_body_temperature => 'Cuerpo ukan Temperaturapa';

  @override
  String get health_sleep_tracking => 'Ikit sarnaqañ tuqit yatxataña';

  @override
  String get health_weight_tracking =>
      'Peso & Composición corporal ukaxa mä juk’a pachanakwa lurasi';

  @override
  String get health_waist_hip => 'Cintura-Cadera ukax mä juk’a pachanakanwa';

  @override
  String get health_devices_hub =>
      'Dispositivos & Smartwatch Hub ukax mä jach’a uñacht’äwiwa';

  @override
  String get health_sync_now => 'K’umar jakañ tuqit yatiyawinak sincronización';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Qhipa sincronización: $time';
  }

  @override
  String get health_manual_entry => 'Manual K’umaräñapataki Mantaña';

  @override
  String get health_metric_detail =>
      'Detalles Métricos ukax mä juk’a pachanakanwa';

  @override
  String get health_connected_sensors => 'Sensores de Salud ukampi chikt’ata';

  @override
  String get plan_title => 'Sapa uru Plan';

  @override
  String get plan_weekly_title =>
      'Plan de Bienestar Semanal ukax mä jach’a amtawiwa';

  @override
  String get plan_calorie_target => 'Calorías ukax mä juk’a pachanakanwa';

  @override
  String get plan_water_target => 'Hidratación ukax mä amtawiwa';

  @override
  String get plan_step_target => 'Paso Target ukax mä jach’a amtawiwa';

  @override
  String get plan_sleep_target => 'Ukax mä Target ukhamawa';

  @override
  String get plan_meal_suggestions => 'Manq’añ tuqit iwxt’awinaka';

  @override
  String get plan_healthy_habits => 'K’umara sarnaqawi & Iwxt’awinaka';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach ukan iwxt’awinakapax';

  @override
  String get plan_generated_title => 'Sapa uru Horario Personalizado';

  @override
  String get profile_title => 'Perfil ukax mä juk’a pachanakanwa';

  @override
  String get profile_edit => 'Perfil ukar chiqañchaña';

  @override
  String get profile_name => 'Suti';

  @override
  String get profile_age => 'Uka mara';

  @override
  String get profile_gender => 'Género ukat juk’ampinaka';

  @override
  String get profile_height => 'Alturapaxa wali jach’awa';

  @override
  String get profile_weight => 'Peso ukaxa wali ch’amawa';

  @override
  String get profile_goal => 'Nayrïr Amtäwi';

  @override
  String get profile_activity_level => 'Nivel de Actividad ukaxa';

  @override
  String get profile_stats => 'Nayan Estadísticas de Bienestar ukax utjiwa';

  @override
  String get profile_saved => 'Perfil ukax wali sumaw machaqt’ayata';

  @override
  String get profile_bmi => 'Índice de Masa Corporal (IMC) ukax 1.1.';

  @override
  String get profile_membership => 'Miembronakaxa';

  @override
  String get settings => 'Ukax mä juk’a pachanakanwa';

  @override
  String get preferences_habits => 'JISK’A JAQINAKANAKA & SARNAQÄWINAKAPA';

  @override
  String get appearance_theme => 'Uñnaqa & Tema';

  @override
  String get appearance_theme_sub =>
      'Ch’amaka, Qhana, Sistema Modo & App Fondo ukan amtawinakapa';

  @override
  String get permissions => 'Permisos & Sistema ukar mantaña';

  @override
  String get permissions_sub =>
      'K’umar jakañ tuqit Conectar, Sensores de Paso, GPS, Yatiyawinaka & Cámara';

  @override
  String get reminders_notifications => 'Amtawinaka & Yatiyawinaka';

  @override
  String get reminders_sub =>
      'Manq’añ pacha, uma, pesaje check-in & ikiñ pacha amtayaña';

  @override
  String get units_of_measurement => 'Unidades de Medición ukanaka';

  @override
  String get units_sub =>
      'Métrico (kg, cm, ml, km) jan ukax Imperial (lbs, ft/in, fl oz) ukax mä juk’a pachanakanwa.';

  @override
  String get app_language => 'App Aru uñt’ayaña';

  @override
  String get language_sub =>
      'Inglés, हिन्दी (Hindi), Hinglish & 195+ uraqpachan arunaka';

  @override
  String get home_screen_widgets => 'Pantalla Uta Widgets ukanaka';

  @override
  String get widgets_sub =>
      'Android widgets jakaski: Hub, Pasos, Uma, Nutrición & Mascota';

  @override
  String get wear_os_watch_app => 'Ukax OS Watch App ukampiw uñt’ayasi';

  @override
  String get wear_os_sub =>
      'Smartwatch compañero, azulejos, complicaciones & vitales jakaña';

  @override
  String get goals_wellness => 'AMTAWI & SUMA UTJAWIPA';

  @override
  String get nutrition_targets => 'Nutrición Objetivos & Macro Jaljawi';

  @override
  String get nutrition_targets_sub =>
      'Calorías meta, proteína, carbohidratos, grasa & uma meta';

  @override
  String get weekly_recap => 'Semanal Suma jakañ Recap';

  @override
  String get weekly_recap_sub =>
      '7 urunaka calorías promedio, macro ratio & suma uru';

  @override
  String get streaks_milestones => 'Rayas & Hitos ukanakaw utji';

  @override
  String get streaks_sub =>
      'Rayas de flores activas, insignias & logros ukat juk’ampinaka';

  @override
  String get connected_devices =>
      'DISPOSITIVO CONECTODO & ECOSISTEMA UKA UTJAWIPA';

  @override
  String get devices_hub =>
      'Dispositivos & Smartwatch Hub ukax mä jach’a uñacht’äwiwa';

  @override
  String get devices_hub_sub =>
      'K’umar jakañ tuqit Conectar, Galaxy Watch, Pixel Watch, Garmin ukanak uñt’ayaña';

  @override
  String get surroundings_weather => 'Muyuntat & Pachamapa';

  @override
  String get surroundings_sub =>
      'Calidad del aire (AQI), índice UV & pacha hidratación uka tuqita iwxt’awinaka';

  @override
  String get bloomi_pro => 'Bloomi Pro ukax mä suscripción ukhamawa';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 pantalla de inicio widgets & vitales ukanakax arknaqatawa';

  @override
  String get about_security => 'UKHAMARAKI & SEGURIDAD UKA TUQITA';

  @override
  String get about_bloomi => 'Bloomi tuqit yatxataña';

  @override
  String get about_bloomi_sub =>
      'Uñstayaña especificaciones, versión, atribuciones ukanaka';

  @override
  String get privacy_policy =>
      'Política de Privacidad ukax mä juk’a pachanakanwa';

  @override
  String get privacy_policy_sub =>
      'Offline-nayraqata, dispositivo ukan arquitectura de datos';

  @override
  String get terms_conditions => 'Condiciones ukat Condiciones ukanaka';

  @override
  String get terms_conditions_sub =>
      'Condiciones de servicio ukatxa suma jakaña tuqita kamachinaka';

  @override
  String get delete_account => 'Cuenta & Datos ukanak chhaqtayaña';

  @override
  String get delete_account_sub =>
      'Irreversiblemente SQLite local ukan datos ukat cloud backups ukanakar chhaqtayaña';

  @override
  String get healthy_habits =>
      'Llamp’u chuymani, wiñayatak suma jakasiñ costumbrenak luraña';

  @override
  String get all_logs => 'Nayan Rastreo Datos & Registronakaja';

  @override
  String get search_language =>
      'Aru jan ukax nativo script ukarjam thaqhaña...';

  @override
  String get languages_available => 'Arunaka Uñstayata';

  @override
  String get no_matching_languages => 'Janiw mä uñtasit arunakax jikxataskiti';

  @override
  String get try_searching =>
      'Nativo guion jan ukax inglés arut qillqañ tuqit thaqhañ yant’apxam';

  @override
  String get partially_translated => 'Mä juk’a jaqukipata';

  @override
  String get complete_translation => 'Phuqata';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Arunakax $name ($nativeName) ukar uñt’ayatawa.';
  }

  @override
  String get surroundings_title => 'Muyuntat & Pachamaman uñt’atanaka';

  @override
  String get surroundings_aqi =>
      'Índice de Calidad del Aire ukax mä juk’a pachanakanwa';

  @override
  String get surroundings_uv => 'Índice UV ukax mä juk’a pachanakanwa';

  @override
  String get surroundings_temp => 'Ukaxa wali sumawa';

  @override
  String get surroundings_humidity => 'Humedad ukaxa wali ch’amawa';

  @override
  String get surroundings_hydration_advice =>
      'Jichha pachanxa suma hidratado ukhama qhiparañawa.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Manq’añanaka thaqhaña';

  @override
  String get food_quick_barcode => 'Código de Barras ukax 👑 ukan uñt’ayatawa';

  @override
  String get food_quick_water => 'Umampi yapxataña';

  @override
  String get food_quick_custom => 'Custom Manq’añanaka';

  @override
  String get surroundings_good => 'Suma';

  @override
  String get surroundings_moderate => 'Ukax mä juk’a pachanakanwa';

  @override
  String get surroundings_unhealthy => 'Jan k’umara';

  @override
  String get notifications_title => 'Yatiyawinaka & Alertas ukanaka';

  @override
  String get notifications_empty => 'Janiw machaq yatiyawinakax utjkiti';

  @override
  String get notifications_mark_read => 'Taqiniruw Liyt’atjam chimpuntañama';

  @override
  String get notifications_clear => 'Taqi kunas q’umachaña';

  @override
  String get reminders => 'Amtañataki wakicht’awinaka';

  @override
  String get notifications => 'Yatiyawinaka';

  @override
  String get reminders_breakfast_title => 'Desayuno Amtawi 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return '¡Suma alwa! Mä manq’añ desayuno lurañataki pacha $time .';
  }

  @override
  String get reminders_lunch_title => 'Chika uru Amtawi 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Mä juk’a samart’añamawa ukat mä equilibrado, amuyt’at chika uru manq’añ $time ukan kusist’añamawa.';
  }

  @override
  String get reminders_dinner_title => 'Manq\'añ Amtawi 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Mä qhana, satisfactorio manq’añ pachax $time ukanwa.';
  }

  @override
  String get reminders_water_title => 'Hidratación Nudge ukax 💧';

  @override
  String reminders_water_body(Object time) {
    return '¡Mä fresco vaso uma umañ pacha! ($time) ukat juk’ampinaka.';
  }

  @override
  String get reminders_weight_title => 'Sapa semanan Pesamiento ukax ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ( $time ) ukanx sapa semanan cuerpon métricas ukanakax uñakipt’atawa.';
  }

  @override
  String get reminders_sleep_title => 'Ikintaña pacha Thaya-uñt’ayaña 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Samart’añamawa ukat mä samarañ ikiñar wakicht’asiñamawa ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi ukarux walikpun jutapxtaxa';

  @override
  String get onboard_sub =>
      'Juman suma, jan internetan nayrïr k’umaräñ ukhamarak manq’añ tuqit masima.';

  @override
  String get onboard_get_started => 'Qalltañataki';

  @override
  String get onboard_sign_in => 'Uñt’ayasiñataki';

  @override
  String get onboard_skip => 'Ukax mä juk’a pachanakanwa';

  @override
  String get onboard_choose_goal =>
      '¿Kunas jumatakix nayrïr amtäwimaxa suma jakasiñataki?';

  @override
  String get onboard_goal_weight_loss => 'Llamp’u chuymampi Peso Perdir';

  @override
  String get onboard_goal_muscle => 'Musculo Ganancia & Ch’ama';

  @override
  String get onboard_goal_energy => 'Sapa uru Energía & Vitalidad ukampi';

  @override
  String get onboard_goal_habits => 'K’umara Amuyu Manq’aña';

  @override
  String get onboard_about_you => 'Juma pachpat yatiyapxita';

  @override
  String get onboard_lifestyle => 'Sapa uru Rutinama';

  @override
  String get onboard_permissions_title => 'Permisos & Sistema ukar mantaña';

  @override
  String get onboard_permissions_sub =>
      'Sincronización pasos, entrenamientos ukat amtawinakar mantañax churañawa.';

  @override
  String get onboard_plan_ready_title =>
      '¡Plan Personalizado ukax Wakicht’atawa!';

  @override
  String get onboard_plan_ready_sub =>
      'Mä llamp’u, personalizado nutrición ukat bienestar ukanak jumanakatakikiw lurapxta.';

  @override
  String get onboard_enter_bloomi => 'Bloomi ukar mantañamawa';

  @override
  String get insights_weekly_report => 'Semanal Suma jakañ Recap';

  @override
  String insights_best_day(Object day) {
    return 'Suma Consistencia uru: $day .';
  }

  @override
  String get insights_streaks_badges => 'Rayas & Hitos ukanakaw utji';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ukax $date ukan jist\'antatawa.';
  }

  @override
  String get insights_keep_going =>
      '¡Wali muspharkañ nayrar sartañax sarantaskakiwa!';

  @override
  String get widgets_title => 'Pantalla Uta Widgets ukanaka';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets activos ukax akhamawa: $count .';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub ukax mä jach’a utaw';

  @override
  String get widgets_steps_title => 'Pasos & Anillo Activo ukat juk’ampinaka';

  @override
  String get widgets_water_title =>
      'Hidratación Quick Log ukaxa mä juk’a pachanakwa lurasi';

  @override
  String get widgets_mascot_title =>
      'Bloomi Mascota Compañero ukax mä jach’a uñacht’äwiwa';

  @override
  String get wear_os_title => 'Ukax OS Smartwatch ukampiw uñt’ayasi';

  @override
  String get wear_os_connected => 'Uñch’ukiñamp chikt’ata';

  @override
  String get wear_os_sync => 'Uñakipaña Datos ukanaka sincronización';

  @override
  String get theme_title => 'Uñnaqa & Tema';

  @override
  String get theme_mode => 'Modo de Tema ukax mä juk’a pachanakanwa';

  @override
  String get theme_light => 'Qhana';

  @override
  String get theme_dark => 'Ch’amaka';

  @override
  String get theme_system => 'Sistema Default ukax mä juk’a pachanakanwa';

  @override
  String get theme_background_palette =>
      'Paleta de Fondos ukax mä juk’a pachanakanwa';

  @override
  String get units_title => 'Unidades de Medición ukanaka';

  @override
  String get units_metric => 'Métrico (kg, cm, ml) ukat juk’ampinaka.';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz) ukat juk’ampinaka.';

  @override
  String get home_unable_load => 'Janiw dashboard ukar apkatañjamäkiti';

  @override
  String get home_health_permission_req =>
      'K’umar jakañ Conectar Permiso ukax wakisiwa';

  @override
  String get home_health_permission_desc =>
      'Bloomi ukax Health Connect ukan permiso ukaruw munaraki, chiqpach thakhinak apsuñataki, chuyma ch’allxtawi, ukat chiqpach pachan widgets de casa móvil ukanakar sincronización lurañataki.';

  @override
  String get home_allow_health => 'K’umar jakañ tuqit Conectar ukar jaysaña';

  @override
  String get home_ready_mindful_day =>
      '¿Mä amuyt’ir urutakix wakicht’atätati? ✨ ukat juk’ampinaka';

  @override
  String get home_quick_add => 'Jank’aki Yatiqañataki';

  @override
  String get home_live_gps => 'GPS ukax jakaskiwa';

  @override
  String get home_calories_remaining_label => 'CALORIAS UKAX UTJAÑAPAWA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Manq’ata: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Grifo ukax Uma Tracker 💧 ukatakiw';

  @override
  String get home_water_goal_reached => 'Sapa uru amtaruw puri 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ukax sapa uru amtaruw puri';
  }

  @override
  String get home_details => 'Detalles ukanaka';

  @override
  String get home_upgrade_plan_desc =>
      'Jisk’achawix sapa uru amtawinak personalizados & plan AI ukar jist’arañataki';

  @override
  String get home_unlock => 'Jisk’a 👑';

  @override
  String get home_quick_log_hint => 'Jank’akiw mä suma jakañ tuqit qillqt’aña';

  @override
  String get food_serving_size => 'Servidor Tamapa';

  @override
  String get food_serving_grams => 'Servimiento (g) 1.1.';

  @override
  String get food_number_servings => 'Jakhuwi Servicios ukanaka';

  @override
  String get food_calories_per_serving => 'Calorías sapa manq’añataki';

  @override
  String get food_recipe_ingredients => 'Ukax mä juk’a pachanakanwa';

  @override
  String get food_recipe_add_ingredient => 'Ukhamaraki Ingrediente ukampi';

  @override
  String get food_recipe_directions => 'Yatichäwinaka & Notas ukanaka';

  @override
  String get food_recipe_total => 'Taqi Receta Nutrición ukampi';

  @override
  String get food_recipe_per_serving =>
      'Per Serving Nutrición ukaxa mä juk’a pachanakwa lurasi';

  @override
  String get food_recipe_saved_toast =>
      '¡Manq’a costumbre ukax wali suma qhispiyatawa!';

  @override
  String get food_barcode_found => '¡Producto Uñstayata!';

  @override
  String get food_barcode_not_found_desc =>
      'Aka código de barras ukax janiw jist’arat base de datos ukan jikxataskänti. Ukaxa mä costumbre manq’jamawa yapxataspa.';

  @override
  String get food_add_custom_btn => 'Ukhamaraki Custom Manq’añanaka';

  @override
  String get food_scan_again => 'Escanear Mayampi';

  @override
  String get food_review_items => 'Uñakipata Manq’anaka uñakipaña';

  @override
  String get food_review_hint =>
      'Jakhunaka chiqañchaña jan ukax kuna jan uñt’at yänak apsuña';

  @override
  String get food_log_selected => 'Log Ajllit Manq’anaka';

  @override
  String get food_favourites_title => 'Munat Manq’añanaka';

  @override
  String get food_recent_title => 'Jichha Manq’añanaka';

  @override
  String get food_no_favourites =>
      'Janiw kuna munat manq’anakas utjkiti. Chuyma ch’allt’aña kuna manq’anaka akan qhispiyañataki.';

  @override
  String get food_no_recents =>
      'Janiw jichhak qillqt’at manq’anakax jikxataskiti.';

  @override
  String get food_nutrition_details_title =>
      'Sapa uru manq’añanaka tuqita Detalles';

  @override
  String get food_macro_protein_label => 'Proteínas ukanakax t’unjatawa';

  @override
  String get food_macro_carbs_label => 'Carbohidratos ukanakax t’unjatawa';

  @override
  String get food_macro_fat_label => 'Q’añu T’unjaña';

  @override
  String get food_macro_fiber_label => 'Fibra Ukaxa mä juk’a pachanakwa lurasi';

  @override
  String get food_daily_target_comparison =>
      'Target Comparación ukax mä juk’a pachanakanwa';

  @override
  String food_target_label(Object target) {
    return 'Amtäwi: $target';
  }

  @override
  String get food_edit_entry => 'Diario ukar qillqt’aña';

  @override
  String get food_delete_entry => 'Chhaqtayaña Entrada';

  @override
  String food_grams_short(Object grams) {
    return '$grams ukax mä g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal ukat juk’ampinaka';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ukaxa $target ml';
  }

  @override
  String get water_intake_history => 'Jichhürunakanx Uma Qullunaka';

  @override
  String get water_no_logs_today =>
      'Jichhürunakanx janiw umax qilqtatäkiti. ¡Hidratar ukat mä botón jank’ak yapxatañaruw ch’iqt’añama!';

  @override
  String get water_adjust_goal => 'Sapa uru amtar mayjtʼayaña';

  @override
  String get health_connect_banner =>
      'K’umar jakañ tuqit Conectado ukampi chikt’ata';

  @override
  String get health_vitals_summary => 'Sapa uru K’umaräñ Vitales';

  @override
  String get health_latest_heart_rate => 'Qhipa Chuyma ch’allxtawi';

  @override
  String get health_latest_bp => 'Wila ch’akhanaka';

  @override
  String get health_latest_spo2 => 'Wila Oxígeno ukampi';

  @override
  String get health_latest_glucose => 'Wila Glucosa ukaxa';

  @override
  String get health_latest_weight => 'Peso ukaxa wali ch’amawa';

  @override
  String get health_latest_sleep => 'Kuna pachakamas ikiñax wakisi';

  @override
  String get health_add_manual => 'Manual Medición ukampi yapxataña';

  @override
  String get health_history_trends => 'Tendencias Históricas ukanaka';

  @override
  String get health_sync_success =>
      '¡K’umar jakañ tuqit yatiyawinakax sum sincronizado!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours pachanaka $mins pachanaka';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val ukax kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm ukax mä juk’a pachanakanwa';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % ukat juk’ampinaka.';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg ukat juk’ampinaka';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL ukampi';
  }

  @override
  String get health_devices_title =>
      'Dispositivos conectados & Wearables ukax mä juk’a pachanakanwa';

  @override
  String get health_devices_desc =>
      'Inteligente relojes pariados, fitness trackers ukat k’umaräñ tuqit sensores ukanakar apnaqaña.';

  @override
  String get health_workout_editor_title =>
      'Editar Entrenamiento ukax mä juk’a pachanakanwa';

  @override
  String get health_workout_name_label => 'Entrenamiento Suti';

  @override
  String get health_workout_duration_label => 'Kuna pachakamas (minutonaka) .';

  @override
  String get health_workout_calories_label =>
      'Ukax Calorías (kcal) ukanakaw utji.';

  @override
  String get health_workout_date_label => 'Uraqi ukat kuna pachas';

  @override
  String get plan_daily_wellness_roadmap =>
      'Ukax mä Hoja de Ruta Personalizada ukawa';

  @override
  String get plan_morning_routine => 'Alwat Rutina';

  @override
  String get plan_afternoon_routine => 'Chika uru Suma jakaña';

  @override
  String get plan_evening_routine => 'Jayp’u Thaya-Uka';

  @override
  String get plan_coach_badge => 'Bloomi AI ukax mä entrenador ukhamawa';

  @override
  String get plan_weekly_overview => '7-Uru Suma jakañ tuqit amuyt’aña';

  @override
  String get plan_targets_title => 'Suma jakañ amtanaka & Amtanaka';

  @override
  String get plan_calorie_budget_label => 'Sapa uru Calorías ukat Presupuesto';

  @override
  String get plan_water_budget_label => 'Sapa uru Uma Amtawi';

  @override
  String get plan_step_budget_label => 'Sapa uru Paso Amta';

  @override
  String get plan_macro_split_label =>
      'Ratio de Macronutriente ukaxa mä juk’a pachanakwa lurasi';

  @override
  String get profile_personal_details => 'Jaqinakan Detalles ukanakapa';

  @override
  String get profile_body_stats => 'Cuerpo tupunaka';

  @override
  String get profile_app_preferences =>
      'Preferencias & App ukan utt’ayatanakapa';

  @override
  String get profile_edit_name_hint => 'Juman sutimax';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Alturapaxa ($unit) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ukax ($unit) .';
  }

  @override
  String get profile_edit_age_hint => 'Uka mara';

  @override
  String get profile_gender_male => 'Chacha';

  @override
  String get profile_gender_female => 'Warmi';

  @override
  String get profile_gender_other => 'Yaqha / Janiw sañ munkiti';

  @override
  String get profile_activity_sedentary =>
      'Sedentario (Jichhax ejercicio lurañax jukʼakiwa) .';

  @override
  String get profile_activity_light => 'K’achachata (1-3 urunaka/semana) .';

  @override
  String get profile_activity_moderate =>
      'Moderada Activo (3-5 urunaka/semana) .';

  @override
  String get profile_activity_very => 'Wali Activo (6-7 urunaka/semana) .';

  @override
  String get settings_wear_os_header =>
      'Ukax OS Compañero App ukampiw uñt’ayasi';

  @override
  String get settings_wear_os_desc =>
      'Bloomi azulejo ukat complicación ukanak Wear OS reloj ukar uskt’añamawa, calorías, uma ukat pasos ukanakar uñakipañataki.';

  @override
  String get settings_widgets_header =>
      'Widgets Android ukax interactivos ukanakaw utji';

  @override
  String get settings_widgets_desc =>
      'Chiqpach pachan widgets ukanakax dispositivo pantalla de inicio ukar pin ukax mäkiw machaqar tukuyañataki.';

  @override
  String get settings_about_header => 'Bloomi tuqit yatxataña';

  @override
  String get settings_about_version => 'Ukax 1.0.0 ukan uñt’ayatawa';

  @override
  String get settings_about_build => 'Ukax 100 ukhawa';

  @override
  String get settings_about_credits =>
      'Amuyumpi, k’umara jakañataki suma wakicht’ata.';

  @override
  String get settings_terms_header => 'Condiciones ukat Condiciones ukanaka';

  @override
  String get settings_privacy_header =>
      'Política de Privacidad ukax mä juk’a pachanakanwa';

  @override
  String get settings_delete_header => 'Cuenta & Datos ukanak chhaqtayaña';

  @override
  String get settings_delete_warning =>
      'Aka lurawixa janiwa mayjt’ayatäkaspati. Taqi manq’añanaka, entrenamientos, vitales ukat perfil ukanakax wiñayatakiw chhaqtayatäni.';

  @override
  String get settings_delete_confirm_btn => 'Wiñayataki Chhaqtayaña';

  @override
  String get onboard_welcome_headline => 'Bloomi ✨ ukarux walikpun jutapxtaxa';

  @override
  String get onboard_welcome_tagline =>
      'Llamp’u, amuyt’ir suma jakañ arknaqañax jakäwiman muyuntat luratawa.';

  @override
  String get onboard_step_about => 'Jumanakat parltʼañäni';

  @override
  String get onboard_step_goals => 'Amtanakamax';

  @override
  String get onboard_step_lifestyle => 'Sapa uru sarnaqawi';

  @override
  String get onboard_step_permissions => 'Permisonaka';

  @override
  String get onboard_step_plan => '¡Wakicht’atäpxtawa!';

  @override
  String get onboard_health_connect_perm =>
      'K’umar jakañ tuqit Conectar Acceso';

  @override
  String get onboard_step_sensors_perm =>
      'Paso Contador Sensor ukax mä juk’a pachanakanwa';

  @override
  String get onboard_notif_perm => 'Amuyu Amtawinaka & Yatiyawinaka';

  @override
  String get onboard_camera_perm =>
      'Camara (Código de barras & Manq’añanaka escáner) .';

  @override
  String get onboard_grant_permissions => 'Permisonaka churaña';

  @override
  String get onboard_continue_dashboard => 'Ukax Dashboard ukan jist’aratawa';

  @override
  String get notif_channel_hydration_name =>
      'Hidratación Nudges ukax mä juk’a pachanakanwa';

  @override
  String get notif_channel_hydration_desc => 'Llamp’u uma amtawi urunaka';

  @override
  String get notif_channel_nutrition_name =>
      'Manq’añanaka & Manq’añanaka Amtawinaka';

  @override
  String get notif_channel_nutrition_desc =>
      'Desayuno, chika uru ukat jayp’u manq’añ amtañ alertas';

  @override
  String get notif_channel_steps_name => 'Paso Hitos ukanaka';

  @override
  String get notif_channel_steps_desc =>
      'Sapa uru paso amtanakar puriñkamax jach’a phunchhawinaka';

  @override
  String get notif_channel_vitals_name =>
      'K’umaräñapataki & Vitales ukanaka uñakipaña';

  @override
  String get notif_channel_vitals_desc =>
      'Peso ukat ikiñkamax thaya tuqit amtañanaka';

  @override
  String get notif_action_log_water => '💧 Log +250ml ukat juk’ampinaka';

  @override
  String get notif_action_snooze => 'Ukax 15m';

  @override
  String get notif_action_log_meal => '🥗 Tronco Manq’aña';

  @override
  String get language => 'Arunaka';

  @override
  String get share => 'Compartir';

  @override
  String common_days(Object count) {
    return '$count d nayra';
  }
}
