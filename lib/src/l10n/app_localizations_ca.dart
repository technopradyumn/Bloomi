// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'A casa';

  @override
  String get nav_today => 'Avui';

  @override
  String get nav_plan => 'Pla';

  @override
  String get nav_food => 'Menjar';

  @override
  String get nav_food_diary => 'Diari d\'alimentació';

  @override
  String get nav_workout => 'Registre d\'entrenament';

  @override
  String get nav_health => 'Salut';

  @override
  String get nav_profile => 'Perfil';

  @override
  String get save => 'Desa';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get delete => 'Suprimeix';

  @override
  String get edit => 'Edita';

  @override
  String get done => 'Fet';

  @override
  String get close => 'Tancar';

  @override
  String get back => 'Enrere';

  @override
  String get next => 'A continuació';

  @override
  String get continue_btn => 'Continua';

  @override
  String get confirm => 'Confirmeu';

  @override
  String get search => 'Cerca';

  @override
  String get filter => 'Filtre';

  @override
  String get all => 'Tots';

  @override
  String get active => 'Actius';

  @override
  String get today => 'Avui';

  @override
  String get yesterday => 'Ahir';

  @override
  String get tomorrow => 'Demà';

  @override
  String get add => 'Afegeix';

  @override
  String get remove => 'Eliminar';

  @override
  String get refresh => 'Actualitza';

  @override
  String get retry => 'Torna-ho a provar';

  @override
  String get error => 'Error';

  @override
  String get success => 'Èxit';

  @override
  String get loading => 'Carregant...';

  @override
  String get no_data => 'No hi ha dades disponibles';

  @override
  String get offline => 'Mode fora de línia';

  @override
  String get offline_sub =>
      'Els canvis es sincronitzaran un cop es tornin a connectar';

  @override
  String get undo => 'Desfer';

  @override
  String get portion => 'Porció';

  @override
  String get quantity => 'Quantitat';

  @override
  String get unit => 'Unitat';

  @override
  String get clear => 'Clar';

  @override
  String get select => 'Seleccioneu';

  @override
  String get apply => 'Aplicar';

  @override
  String get reset => 'Restableix';

  @override
  String get ok => 'D\'\'acord';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get optional => 'Opcional';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Proteïna';

  @override
  String get carbs => 'Carbohidrats';

  @override
  String get fat => 'Greix';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Aigua';

  @override
  String get steps => 'Passos';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'lliures';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'en';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'minuts';

  @override
  String get serving => 'Servint';

  @override
  String get servings => 'Racions';

  @override
  String get serving_size => 'Mida de la porció';

  @override
  String get per_100g => 'per 100 g';

  @override
  String get india => 'Índia';

  @override
  String get asia => 'Àsia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Orient Mitjà';

  @override
  String get africa => 'Àfrica';

  @override
  String get americas => 'Amèrica';

  @override
  String get home_title => 'A casa';

  @override
  String get home_greeting_morning => 'Bon dia';

  @override
  String get home_greeting_afternoon => 'Bona tarda';

  @override
  String get home_greeting_evening => 'Bona tarda';

  @override
  String get home_streak_title => 'Rat de Flor';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ratxa de $count dies',
      one: 'Ratxa d\'1 dia',
      zero: 'Ratxa de 0 dies',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Cremat';

  @override
  String get home_calories_budget => 'Pressupost calòric';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal restants';
  }

  @override
  String get home_water_title => 'Hidratació diària';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Passos Recorreguts';

  @override
  String get home_quick_actions => 'Accions ràpides';

  @override
  String get home_log_meal => 'Menjar de registre';

  @override
  String get home_log_water => 'Aigua de registre';

  @override
  String get home_log_workout => 'Registre d\'entrenament';

  @override
  String get home_log_weight => 'Pes del registre';

  @override
  String get home_insights_title => 'Insights d\'avui';

  @override
  String get home_quote =>
      'Les petites opcions saludables creen transformacions florents.';

  @override
  String get home_ai_coach_tip => 'Entrenador Bloomi AI';

  @override
  String get home_surroundings => 'Entorn i aire';

  @override
  String get home_notifications => 'Notificacions';

  @override
  String get home_daily_score => 'Puntuació diària de benestar';

  @override
  String get home_view_all => 'Veure-ho tot';

  @override
  String get food_diary_title => 'Diari d\'alimentació';

  @override
  String get food_breakfast => 'Esmorzar';

  @override
  String get food_lunch => 'Dinar';

  @override
  String get food_dinner => 'Sopar';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Afegiu menjar';

  @override
  String get food_edit_food => 'Edita el menjar';

  @override
  String get food_add_breakfast => 'Afegeix l\'esmorzar';

  @override
  String get food_add_lunch => 'Afegeix el dinar';

  @override
  String get food_add_dinner => 'Afegeix el sopar';

  @override
  String get food_add_snack => 'Afegeix un berenar';

  @override
  String get food_total_calories => 'Calories totals';

  @override
  String get food_empty_meal =>
      'Encara no s\'ha registrat cap aliment per a aquest àpat';

  @override
  String get food_empty_diary => 'No s\'han registrat àpats per a aquest dia';

  @override
  String get food_log_first_meal =>
      'Toca + per registrar el teu primer àpat deliciós';

  @override
  String get food_quick_add => 'Addició ràpida';

  @override
  String get food_search_hint => 'Cerca plats, fruites, dal, roti...';

  @override
  String get food_custom_recipe => 'Menjar i recepta personalitzada';

  @override
  String get food_scan_barcode => 'Escaneja el codi de barres';

  @override
  String get food_camera_scan => 'Escàner d\'aliments AI';

  @override
  String get food_recent => 'Aliments recents';

  @override
  String get food_favourites => 'Preferits';

  @override
  String get food_macro_summary => 'Descomposició de macronutrients';

  @override
  String get food_delete_meal_confirm =>
      'Esteu segur que voleu eliminar aquest element?';

  @override
  String get food_item_deleted => 'S\'ha eliminat l\'aliment';

  @override
  String get food_remaining => 'restant';

  @override
  String get food_consumed => 'consumit';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Cerca Aliments';

  @override
  String get foodSearch_scan_barcode => 'Escaneja el codi de barres';

  @override
  String get foodSearch_take_photo => 'Foto de menjar ràpid';

  @override
  String get foodSearch_custom_food => 'Crea menjar personalitzat';

  @override
  String get foodSearch_recent_searches => 'Cerques recents';

  @override
  String get foodSearch_popular => 'Plats Populars';

  @override
  String get foodSearch_no_results =>
      'No hi ha aliment que coincideixi amb la teva cerca';

  @override
  String get barcode_title => 'Escàner de codis de barres';

  @override
  String get barcode_align =>
      'Alineeu el codi de barres dins del marc de la càmera';

  @override
  String get barcode_not_found =>
      'No s\'ha trobat el producte a la base de dades';

  @override
  String get barcode_premium_feature =>
      'L\'escaneig de codis de barres està disponible amb Bloomi Pro';

  @override
  String get camera_title => 'Escàner d\'aliments AI';

  @override
  String get camera_tap_hint => 'Fes una foto clara del teu plat';

  @override
  String get camera_analysing => 'S\'està analitzant el plat de menjar...';

  @override
  String get camera_detected => 'Elements detectats';

  @override
  String get camera_flash => 'Commuta Flash';

  @override
  String get camera_retake => 'Torna a fer la foto';

  @override
  String get camera_confirm_food => 'Confirmar elements';

  @override
  String get customFood_title => 'Menjar i recepta personalitzada';

  @override
  String get customFood_name_hint => 'Nom del plat o ingredient';

  @override
  String get customFood_calories_hint => 'Calories (kcal)';

  @override
  String get customFood_protein_hint => 'Proteïna (g)';

  @override
  String get customFood_carbs_hint => 'Carbohidrats (g)';

  @override
  String get customFood_fat_hint => 'Greix (g)';

  @override
  String get customFood_save => 'Guarda la recepta';

  @override
  String get water_tracker_title => 'Seguidor d\'aigua';

  @override
  String get water_daily_target => 'Objectiu d\'hidratació diària';

  @override
  String get water_logged_today => 'Registrat avui';

  @override
  String get water_add_glass => '+250 ml de vidre';

  @override
  String get water_add_bottle => 'Ampolla +500 ml';

  @override
  String get water_custom_amount => 'Import personalitzat';

  @override
  String get water_reminder_tip =>
      'Beveu aigua amb regularitat durant tot el dia per obtenir energia constant.';

  @override
  String water_logged_toast(Object amount) {
    return 'S\'han registrat $amount ml d\'aigua 💧';
  }

  @override
  String get workout_title => 'Registre d\'entrenament';

  @override
  String get workout_add_exercise => 'Afegeix entrenament';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Força';

  @override
  String get workout_yoga => 'Ioga i flexibilitat';

  @override
  String get workout_duration => 'Durada';

  @override
  String get workout_intensity => 'Intensitat';

  @override
  String get workout_calories_burned => 'Calories cremades';

  @override
  String get workout_empty => 'No s\'ha registrat cap entrenament avui';

  @override
  String get workout_save_success => 'L\'entrenament s\'ha desat correctament!';

  @override
  String get workout_type => 'Tipus d\'entrenament';

  @override
  String get workout_notes => 'Notes i reflexions';

  @override
  String get health_overview_title => 'Salut i Vitals';

  @override
  String get health_heart_rate => 'Freqüència cardíaca';

  @override
  String get health_blood_oxygen => 'Oxigen en sang (SpO2)';

  @override
  String get health_blood_pressure => 'Tensió arterial';

  @override
  String get health_blood_glucose => 'Glucosa en sang';

  @override
  String get health_body_temperature => 'Temperatura corporal';

  @override
  String get health_sleep_tracking => 'Seguiment del son';

  @override
  String get health_weight_tracking => 'Pes i composició corporal';

  @override
  String get health_waist_hip => 'Relació cintura-maluc';

  @override
  String get health_devices_hub => 'Dispositius i Smartwatch Hub';

  @override
  String get health_sync_now => 'Sincronitza les dades de salut';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Darrera sincronització: $time';
  }

  @override
  String get health_manual_entry => 'Entrada manual de salut';

  @override
  String get health_metric_detail => 'Detalls de la mètrica';

  @override
  String get health_connected_sensors => 'Sensors de salut connectats';

  @override
  String get plan_title => 'Pla diari';

  @override
  String get plan_weekly_title => 'Pla setmanal de benestar';

  @override
  String get plan_calorie_target => 'Objectiu de calories';

  @override
  String get plan_water_target => 'Objectiu d\'hidratació';

  @override
  String get plan_step_target => 'Objectiu de pas';

  @override
  String get plan_sleep_target => 'Objectiu del son';

  @override
  String get plan_meal_suggestions => 'Suggeriments de menjar';

  @override
  String get plan_healthy_habits => 'Hàbits i consells saludables';

  @override
  String get plan_coach_advice => 'Recomanacions de l\'entrenador Bloomi AI';

  @override
  String get plan_generated_title => 'Horari diari personalitzat';

  @override
  String get profile_title => 'Perfil';

  @override
  String get profile_edit => 'Edita el perfil';

  @override
  String get profile_name => 'Nom';

  @override
  String get profile_age => 'Edat';

  @override
  String get profile_gender => 'Gènere';

  @override
  String get profile_height => 'Alçada';

  @override
  String get profile_weight => 'Pes';

  @override
  String get profile_goal => 'Objectiu principal';

  @override
  String get profile_activity_level => 'Nivell d\'activitat';

  @override
  String get profile_stats => 'Les meves estadístiques de benestar';

  @override
  String get profile_saved => 'El perfil s\'ha actualitzat correctament';

  @override
  String get profile_bmi => 'Índex de massa corporal (IMC)';

  @override
  String get profile_membership => 'Pertinença';

  @override
  String get settings => 'Configuració';

  @override
  String get preferences_habits => 'PREFERÈNCIES I HÀBITS';

  @override
  String get appearance_theme => 'Aparença i tema';

  @override
  String get appearance_theme_sub =>
      'Opcions de fons fosc, clar, mode del sistema i aplicació';

  @override
  String get permissions => 'Permisos i accés al sistema';

  @override
  String get permissions_sub =>
      'Health Connect, sensors de pas, GPS, notificacions i càmera';

  @override
  String get reminders_notifications => 'Recordatoris i notificacions';

  @override
  String get reminders_sub =>
      'Horaris dels àpats, aigua, registre de pes i recordatoris d\'hora d\'anar a dormir';

  @override
  String get units_of_measurement => 'Unitats de mesura';

  @override
  String get units_sub =>
      'Mètric (kg, cm, ml, km) o imperial (lbs, peus/polzada, fl oz)';

  @override
  String get app_language => 'Idioma de l\'aplicació';

  @override
  String get language_sub =>
      'Anglès, हिन्दी (hindi), Hinglish i més de 195 idiomes globals';

  @override
  String get home_screen_widgets => 'Ginys de la pantalla d\'\'inici';

  @override
  String get widgets_sub =>
      'Ginys Android en directe: Hub, Steps, Aigua, Nutrició i Mascota';

  @override
  String get wear_os_watch_app => 'Aplicació Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Rellotge intel·ligent acompanyant, fitxes, complicacions i vitals en viu';

  @override
  String get goals_wellness => 'OBJECTIUS I PERSPECTIVAS DE BENESTAR';

  @override
  String get nutrition_targets => 'Objectius nutricionals i Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Objectiu de calories, proteïnes, carbohidrats, greixos i aigua';

  @override
  String get weekly_recap => 'Recapte setmanal de benestar';

  @override
  String get weekly_recap_sub =>
      'Mitjana de calories de 7 dies, ràtio macro i millor dia';

  @override
  String get streaks_milestones => 'Rates i fites';

  @override
  String get streaks_sub => 'Rates de flors actives, insígnies i assoliments';

  @override
  String get connected_devices => 'DISPOSITIUS I ECOSISTEMA CONNEXATS';

  @override
  String get devices_hub => 'Dispositius i Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Entorn i clima';

  @override
  String get surroundings_sub =>
      'Qualitat de l\'aire (AQI), índex UV i consells d\'hidratació del temps';

  @override
  String get bloomi_pro => 'Subscripció a Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 ginys de la pantalla d\'inici i seguiment de dades vitals';

  @override
  String get about_security => 'SOBRE I SEGURETAT';

  @override
  String get about_bloomi => 'Sobre Bloomi';

  @override
  String get about_bloomi_sub =>
      'Especificacions de construcció, versió, atribucions';

  @override
  String get privacy_policy => 'Política de privadesa';

  @override
  String get privacy_policy_sub =>
      'Arquitectura de dades en el dispositiu primer fora de línia';

  @override
  String get terms_conditions => 'Termes i condicions';

  @override
  String get terms_conditions_sub =>
      'Condicions del servei i pautes de benestar';

  @override
  String get delete_account => 'Suprimeix el compte i les dades';

  @override
  String get delete_account_sub =>
      'Esborra de manera irreversible les dades locals de SQLite i les còpies de seguretat al núvol';

  @override
  String get healthy_habits => 'Construeix hàbits de benestar suaus i duradors';

  @override
  String get all_logs => 'Les meves dades i registres de seguiment';

  @override
  String get search_language => 'Cerca per idioma o escriptura nativa...';

  @override
  String get languages_available => 'Idiomes disponibles';

  @override
  String get no_matching_languages => 'No s\'han trobat idiomes coincidents';

  @override
  String get try_searching =>
      'Proveu de cercar per escriptura nativa o ortografia anglesa';

  @override
  String get partially_translated => 'Parcialment traduït';

  @override
  String get complete_translation => 'Completa';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'S\'ha definit l\'idioma a $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Entorn i Medi Ambient';

  @override
  String get surroundings_aqi => 'Índex de qualitat de l\'aire';

  @override
  String get surroundings_uv => 'Índex UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Humitat';

  @override
  String get surroundings_hydration_advice =>
      'Mantenir-se ben hidratat en les condicions meteorològiques actuals.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Cerca menjar';

  @override
  String get food_quick_barcode => 'Escaneja el codi de barres 👑';

  @override
  String get food_quick_water => 'Afegiu aigua';

  @override
  String get food_quick_custom => 'Menjar personalitzat';

  @override
  String get surroundings_good => 'Bé';

  @override
  String get surroundings_moderate => 'Moderat';

  @override
  String get surroundings_unhealthy => 'Poc saludable';

  @override
  String get notifications_title => 'Notificacions i alertes';

  @override
  String get notifications_empty => 'No hi ha notificacions noves';

  @override
  String get notifications_mark_read => 'Marca-ho tot com a llegit';

  @override
  String get notifications_clear => 'Esborra-ho tot';

  @override
  String get reminders => 'Configuració del recordatori';

  @override
  String get notifications => 'Notificacions push';

  @override
  String get reminders_breakfast_title => 'Recordatori d\'esmorzar 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bon dia! És hora d\'esmorzar a les $time .';
  }

  @override
  String get reminders_lunch_title => 'Recordatori del dinar 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Atura\'t i gaudeix d\'un dinar equilibrat i conscient a $time .';
  }

  @override
  String get reminders_dinner_title => 'Recordatori del sopar 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'És hora d\'un sopar lleuger i satisfactori a $time .';
  }

  @override
  String get reminders_water_title => 'Coixinet d\'hidratació 💧';

  @override
  String reminders_water_body(Object time) {
    return 'És hora de beure un got d\'aigua fresca! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Pesatge setmanal ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Feu un seguiment de les vostres mètriques corporals setmanals a Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Descans a l\'hora d\'anar a dormir 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Desconnecta i prepara\'t per dormir tranquil·lament ( $time ).';
  }

  @override
  String get onboard_welcome => 'Benvingut a Bloomi';

  @override
  String get onboard_sub =>
      'El vostre company de salut i nutrició amigable, fora de línia.';

  @override
  String get onboard_get_started => 'Comença';

  @override
  String get onboard_sign_in => 'Inicieu la sessió';

  @override
  String get onboard_skip => 'Saltar';

  @override
  String get onboard_choose_goal =>
      'Quin és el teu objectiu principal de benestar?';

  @override
  String get onboard_goal_weight_loss => 'Pèrdua de pes suau';

  @override
  String get onboard_goal_muscle => 'Guany i força muscular';

  @override
  String get onboard_goal_energy => 'Energia i vitalitat diàries';

  @override
  String get onboard_goal_habits => 'Alimentació saludable i atenta';

  @override
  String get onboard_about_you => 'Parleu-nos de vosaltres mateixos';

  @override
  String get onboard_lifestyle => 'La teva rutina diària';

  @override
  String get onboard_permissions_title => 'Permisos i accés al sistema';

  @override
  String get onboard_permissions_sub =>
      'Concedeix accés a passos, entrenaments i recordatoris de sincronització.';

  @override
  String get onboard_plan_ready_title =>
      'El vostre pla personalitzat està a punt!';

  @override
  String get onboard_plan_ready_sub =>
      'Hem elaborat un full de ruta de nutrició i benestar personalitzat i suau només per a tu.';

  @override
  String get onboard_enter_bloomi => 'Entra en Bloomi';

  @override
  String get insights_weekly_report => 'Recapte setmanal de benestar';

  @override
  String insights_best_day(Object day) {
    return 'Millor dia de coherència: $day';
  }

  @override
  String get insights_streaks_badges => 'Rates i fites';

  @override
  String insights_unlocked_on(Object date) {
    return 'Desbloquejat el $date';
  }

  @override
  String get insights_keep_going => 'Seguiu amb el fantàstic progrés!';

  @override
  String get widgets_title => 'Ginys de la pantalla d\'inici';

  @override
  String widgets_active_count(Object count) {
    return 'Ginys actius: $count';
  }

  @override
  String get widgets_hub_title => 'Centre de benestar Bloomi';

  @override
  String get widgets_steps_title => 'Passos i anell actiu';

  @override
  String get widgets_water_title => 'Registre ràpid d\'hidratació';

  @override
  String get widgets_mascot_title => 'Acompanyant de la mascota de Bloomi';

  @override
  String get wear_os_title => 'Porteu OS Smartwatch';

  @override
  String get wear_os_connected => 'Connectat a Watch';

  @override
  String get wear_os_sync => 'Sincronitza les dades de visualització';

  @override
  String get theme_title => 'Aparença i tema';

  @override
  String get theme_mode => 'Mode de tema';

  @override
  String get theme_light => 'Llum';

  @override
  String get theme_dark => 'Fosc';

  @override
  String get theme_system => 'Sistema';

  @override
  String get theme_background_palette => 'Paleta de fons';

  @override
  String get units_title => 'Unitats de mesura';

  @override
  String get units_metric => 'mètrica (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, polzades, fl oz)';

  @override
  String get home_unable_load => 'No es pot carregar el tauler';

  @override
  String get home_health_permission_req => 'Cal permís de Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi requereix permís de Health Connect per fer passos reals, la freqüència cardíaca i sincronitzar els ginys de la casa mòbil en temps real.';

  @override
  String get home_allow_health => 'Permet Health Connect';

  @override
  String get home_ready_mindful_day => 'Preparat per a un dia conscient? ✨';

  @override
  String get home_quick_add => 'Addició ràpida';

  @override
  String get home_live_gps => 'GPS en directe';

  @override
  String get home_calories_remaining_label => 'CALORIES QUE RESTAN';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Menjat: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Toqueu per al rastrejador d\'aigua 💧';

  @override
  String get home_water_goal_reached => 'Objectiu diari assolit 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml per a l\'objectiu diari';
  }

  @override
  String get home_details => 'Detalls';

  @override
  String get home_upgrade_plan_desc =>
      'Actualitza per desbloquejar objectius diaris personalitzats i pla d\'IA';

  @override
  String get home_unlock => 'Desbloqueja 👑';

  @override
  String get home_quick_log_hint =>
      'Enregistreu ràpidament una entrada de benestar';

  @override
  String get food_serving_size => 'Mida de la porció';

  @override
  String get food_serving_grams => 'Ració (g)';

  @override
  String get food_number_servings => 'Nombre de porcions';

  @override
  String get food_calories_per_serving => 'Calories per ració';

  @override
  String get food_recipe_ingredients => 'Ingredients';

  @override
  String get food_recipe_add_ingredient => 'Afegeix l\'ingredient';

  @override
  String get food_recipe_directions => 'Instruccions i notes';

  @override
  String get food_recipe_total => 'Nutrició total de la recepta';

  @override
  String get food_recipe_per_serving => 'Nutrició per ració';

  @override
  String get food_recipe_saved_toast =>
      'El menjar personalitzat s\'ha desat correctament!';

  @override
  String get food_barcode_found => 'Producte trobat!';

  @override
  String get food_barcode_not_found_desc =>
      'No hem pogut trobar aquest codi de barres a la base de dades oberta. Podeu afegir-lo com a aliment personalitzat.';

  @override
  String get food_add_custom_btn => 'Afegeix menjar personalitzat';

  @override
  String get food_scan_again => 'Escaneja de nou';

  @override
  String get food_review_items => 'Revisar els aliments detectats';

  @override
  String get food_review_hint =>
      'Ajusteu les quantitats o elimineu qualsevol article no reconegut';

  @override
  String get food_log_selected => 'Registra els aliments seleccionats';

  @override
  String get food_favourites_title => 'Menjars Favorits';

  @override
  String get food_recent_title => 'Aliments recents';

  @override
  String get food_no_favourites =>
      'Encara no hi ha menjar preferit. Toca el cor en qualsevol aliment per desar-lo aquí.';

  @override
  String get food_no_recents =>
      'No s\'han trobat aliments registrats recentment.';

  @override
  String get food_nutrition_details_title => 'Detalls nutricionals diaris';

  @override
  String get food_macro_protein_label => 'Descomposició de proteïnes';

  @override
  String get food_macro_carbs_label => 'Desglossament de carbohidrats';

  @override
  String get food_macro_fat_label => 'Desglossament del greix';

  @override
  String get food_macro_fiber_label => 'Avaria de la fibra';

  @override
  String get food_daily_target_comparison => 'Comparació d\'objectius';

  @override
  String food_target_label(Object target) {
    return 'Objectiu: $target';
  }

  @override
  String get food_edit_entry => 'Edita l\'entrada del diari';

  @override
  String get food_delete_entry => 'Suprimeix l\'entrada';

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
  String get water_intake_history => 'Els registres d\'aigua d\'avui';

  @override
  String get water_no_logs_today =>
      'Avui encara no s\'ha registrat aigua. Hidrata i toca un botó d\'afegir ràpid!';

  @override
  String get water_adjust_goal => 'Ajustar l\'objectiu diari';

  @override
  String get health_connect_banner => 'Connectat a Health Connect';

  @override
  String get health_vitals_summary => 'Vitals de salut diaris';

  @override
  String get health_latest_heart_rate => 'Últim ritme cardíac';

  @override
  String get health_latest_bp => 'Tensió arterial';

  @override
  String get health_latest_spo2 => 'Oxigen en sang';

  @override
  String get health_latest_glucose => 'Glucosa en sang';

  @override
  String get health_latest_weight => 'Pes';

  @override
  String get health_latest_sleep => 'Durada del son';

  @override
  String get health_add_manual => 'Afegeix la mesura manual';

  @override
  String get health_history_trends => 'Tendències històriques';

  @override
  String get health_sync_success =>
      'Les dades de salut s\'han sincronitzat correctament!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours hores $mins minuts';
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
  String get health_devices_title => 'Dispositius connectats i wearables';

  @override
  String get health_devices_desc =>
      'Gestioneu els rellotges intel·ligents emparellats, els rastrejadors de fitness i els sensors de salut.';

  @override
  String get health_workout_editor_title => 'Edita l\'entrenament';

  @override
  String get health_workout_name_label => 'Nom de l\'entrenament';

  @override
  String get health_workout_duration_label => 'Durada (minuts)';

  @override
  String get health_workout_calories_label => 'Calories estimades (kcal)';

  @override
  String get health_workout_date_label => 'Data i hora';

  @override
  String get plan_daily_wellness_roadmap => 'El teu full de ruta personalitzat';

  @override
  String get plan_morning_routine => 'Rutina matinal';

  @override
  String get plan_afternoon_routine => 'Benestar del migdia';

  @override
  String get plan_evening_routine => 'Vent al vespre';

  @override
  String get plan_coach_badge => 'Entrenador Bloomi AI';

  @override
  String get plan_weekly_overview => 'Focus de benestar de 7 dies';

  @override
  String get plan_targets_title => 'Objectius i objectius de benestar';

  @override
  String get plan_calorie_budget_label => 'Pressupost diari de calories';

  @override
  String get plan_water_budget_label => 'Objectiu diari d\'aigua';

  @override
  String get plan_step_budget_label => 'Objectiu de pas diari';

  @override
  String get plan_macro_split_label => 'Relació de macronutrients';

  @override
  String get profile_personal_details => 'Dades personals';

  @override
  String get profile_body_stats => 'Mides corporals';

  @override
  String get profile_app_preferences =>
      'Preferències i configuració de l\'aplicació';

  @override
  String get profile_edit_name_hint => 'El teu nom';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Alçada ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Pes ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Edat';

  @override
  String get profile_gender_male => 'Mascle';

  @override
  String get profile_gender_female => 'Dona';

  @override
  String get profile_gender_other => 'Altres / Prefereixo no dir';

  @override
  String get profile_activity_sedentary => 'Sedentari (poc o cap exercici)';

  @override
  String get profile_activity_light => 'Lleugerament actiu (1-3 dies/setmana)';

  @override
  String get profile_activity_moderate =>
      'Moderadament actiu (3-5 dies/setmana)';

  @override
  String get profile_activity_very => 'Molt actiu (6-7 dies/setmana)';

  @override
  String get settings_wear_os_header => 'Aplicació Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Instal·leu la rajola Bloomi i la complicació al vostre rellotge Wear OS per veure les calories, l\'aigua i els passos.';

  @override
  String get settings_widgets_header => 'Ginys interactius d\'Android';

  @override
  String get settings_widgets_desc =>
      'Fixeu els widgets en temps real a la pantalla d\'inici del vostre dispositiu per obtenir actualitzacions instantànies.';

  @override
  String get settings_about_header => 'Sobre Bloomi';

  @override
  String get settings_about_version => 'Versió';

  @override
  String get settings_about_build => 'Construeix 100';

  @override
  String get settings_about_credits =>
      'Dissenyat amb cura per a una vida conscient i saludable.';

  @override
  String get settings_terms_header => 'Termes i condicions';

  @override
  String get settings_privacy_header => 'Política de privadesa';

  @override
  String get settings_delete_header => 'Suprimeix el compte i les dades';

  @override
  String get settings_delete_warning =>
      'Aquesta acció no es pot desfer. Tots els teus àpats, entrenaments, vitals i perfil se suprimiran permanentment.';

  @override
  String get settings_delete_confirm_btn => 'Suprimeix permanentment';

  @override
  String get onboard_welcome_headline => 'Benvingut a Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Seguiment de benestar suau i atent dissenyat al voltant de la vostra vida.';

  @override
  String get onboard_step_about => 'Sobre tu';

  @override
  String get onboard_step_goals => 'Els teus objectius';

  @override
  String get onboard_step_lifestyle => 'Hàbits quotidians';

  @override
  String get onboard_step_permissions => 'Permisos';

  @override
  String get onboard_step_plan => 'A punt!';

  @override
  String get onboard_health_connect_perm => 'Accés a Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Sensor de comptador de passos';

  @override
  String get onboard_notif_perm => 'Recordatoris i notificacions atents';

  @override
  String get onboard_camera_perm =>
      'Càmera (escàner de codis de barres i aliments)';

  @override
  String get onboard_grant_permissions => 'Concedir permisos';

  @override
  String get onboard_continue_dashboard => 'Obriu el tauler';

  @override
  String get notif_channel_hydration_name => 'Coses d\'hidratació';

  @override
  String get notif_channel_hydration_desc =>
      'Recordatoris suaus d\'aigua durant tot el dia';

  @override
  String get notif_channel_nutrition_name => 'Recordatoris d\'àpats i nutrició';

  @override
  String get notif_channel_nutrition_desc =>
      'Alertes de recordatoris d\'esmorzar, dinar i sopar';

  @override
  String get notif_channel_steps_name => 'Fites de pas';

  @override
  String get notif_channel_steps_desc =>
      'Celebracions en assolir els objectius de pas diaris';

  @override
  String get notif_channel_vitals_name => 'Controls de salut i vitalitat';

  @override
  String get notif_channel_vitals_desc =>
      'Recordatoris de pes i d\'hora d\'anar a dormir';

  @override
  String get notif_action_log_water => '💧 Registre +250ml';

  @override
  String get notif_action_snooze => 'Posposa 15 m';

  @override
  String get notif_action_log_meal => '🥗 Menjar de registre';

  @override
  String get language => 'Llengua';

  @override
  String get share => 'Comparteix';

  @override
  String common_days(Object count) {
    return 'fa $count dies';
  }
}
