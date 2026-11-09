// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Occitan (`oc`).
class AppLocalizationsOc extends AppLocalizations {
  AppLocalizationsOc([String locale = 'oc']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Acuèlh';

  @override
  String get nav_today => 'Uèi';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Alimentacion';

  @override
  String get nav_food_diary => 'Diari de noiridura';

  @override
  String get nav_workout => 'Registre d\'entraïnament';

  @override
  String get nav_health => 'Salut';

  @override
  String get nav_profile => 'Perfil';

  @override
  String get save => 'Enregistrar';

  @override
  String get cancel => 'Anullar';

  @override
  String get delete => 'Suprimir';

  @override
  String get edit => 'Modificar';

  @override
  String get done => 'Fach';

  @override
  String get close => 'Barrar';

  @override
  String get back => 'Enrè';

  @override
  String get next => 'Seguent';

  @override
  String get continue_btn => 'Contunhar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get search => 'Cercar';

  @override
  String get filter => 'Filtre';

  @override
  String get all => 'Totes';

  @override
  String get active => 'Actiu';

  @override
  String get today => 'Uèi';

  @override
  String get yesterday => 'Ièr';

  @override
  String get tomorrow => 'Deman';

  @override
  String get add => 'Apondre';

  @override
  String get remove => 'Suprimir';

  @override
  String get refresh => 'Actualizar';

  @override
  String get retry => 'Tornatz ensajar';

  @override
  String get error => 'Error';

  @override
  String get success => 'Capitada';

  @override
  String get loading => 'En cargament...';

  @override
  String get no_data => 'Pas de donadas disponiblas';

  @override
  String get offline => 'Mòde fòra linha';

  @override
  String get offline_sub =>
      'Las modificacions se sincronizaràn un còp reconnectadas';

  @override
  String get undo => 'Desfar';

  @override
  String get portion => 'Porcion';

  @override
  String get quantity => 'Quantitat';

  @override
  String get unit => 'Unitat';

  @override
  String get clear => 'Escafar';

  @override
  String get select => 'Seleccionar';

  @override
  String get apply => 'Aplicar';

  @override
  String get reset => 'Reïnicializar';

  @override
  String get ok => 'D\'acòrdi';

  @override
  String get yes => 'Òc';

  @override
  String get no => 'Non';

  @override
  String get optional => 'Facultatiu';

  @override
  String get calories => 'Calorias';

  @override
  String get protein => 'Proteïna';

  @override
  String get carbs => 'Carbohidrats';

  @override
  String get fat => 'Gras';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Aiga';

  @override
  String get steps => 'Etapas';

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
  String get inches => 'dins';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'oras';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Servir';

  @override
  String get servings => 'Porcions';

  @override
  String get serving_size => 'Talha de la porcion';

  @override
  String get per_100g => 'per 100g';

  @override
  String get india => 'Índia';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Euròpa';

  @override
  String get middle_east => 'Orient Mejan';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Acuèlh';

  @override
  String get home_greeting_morning => 'Bonjorn';

  @override
  String get home_greeting_afternoon => 'Bona Tarda';

  @override
  String get home_greeting_evening => 'Bona Serada';

  @override
  String get home_streak_title => 'Rasca de flors';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jorns de seguida',
      one: '1 jorn de seguida',
      zero: '0 jorns de seguida',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Cremat';

  @override
  String get home_calories_budget => 'Budgèt de calorias';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal restant';
  }

  @override
  String get home_water_title => 'Idratacion quotidiana';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Passes caminats';

  @override
  String get home_quick_actions => 'Accions rapidas';

  @override
  String get home_log_meal => 'Repais de troncs';

  @override
  String get home_log_water => 'Aiga de troncs';

  @override
  String get home_log_workout => 'Entrenament de registre';

  @override
  String get home_log_weight => 'Pes del tronc';

  @override
  String get home_insights_title => 'Las coneissenças d\'uèi';

  @override
  String get home_quote =>
      'De pichonas causidas sanas crean de transformacions en flor.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Environament e aire';

  @override
  String get home_notifications => 'Notificacions';

  @override
  String get home_daily_score => 'Escòre de Benèsser Quotidian';

  @override
  String get home_view_all => 'Veire tot';

  @override
  String get food_diary_title => 'Diari de noiridura';

  @override
  String get food_breakfast => 'Dejunar';

  @override
  String get food_lunch => 'Dinnar';

  @override
  String get food_dinner => 'Sopar';

  @override
  String get food_snacks => 'Repaisses';

  @override
  String get food_add_food => 'Ajustar de manjar';

  @override
  String get food_edit_food => 'Modificar lo manjar';

  @override
  String get food_add_breakfast => 'Ajustar lo dejunar';

  @override
  String get food_add_lunch => 'Ajustar lo dinnar';

  @override
  String get food_add_dinner => 'Ajustar lo sopar';

  @override
  String get food_add_snack => 'Apondre un aperitiu';

  @override
  String get food_total_calories => 'Calorias totalas';

  @override
  String get food_empty_meal =>
      'Cap de noiridura enregistrada per aqueste repais encara';

  @override
  String get food_empty_diary => 'Cap de repais enregistrat per aqueste jorn';

  @override
  String get food_log_first_meal =>
      'Picatz sus + per enregistrar vòstre primièr repais deliciós';

  @override
  String get food_quick_add => 'Apond rapid';

  @override
  String get food_search_hint => 'Cercar plats, fruchas, dal, roti...';

  @override
  String get food_custom_recipe => 'Manjar e recèpta personalizada';

  @override
  String get food_scan_barcode => 'Escanar lo còde de barras';

  @override
  String get food_camera_scan => 'Escanèr de noiridura d\'IA';

  @override
  String get food_recent => 'Aliments recents';

  @override
  String get food_favourites => 'Favorits';

  @override
  String get food_macro_summary => 'Descomposicion dels macronutriments';

  @override
  String get food_delete_meal_confirm =>
      'Sètz segur que volètz suprimir aqueste element ?';

  @override
  String get food_item_deleted => 'Article alimentari suprimit';

  @override
  String get food_remaining => 'demorant';

  @override
  String get food_consumed => 'consomat';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Cercar los aliments';

  @override
  String get foodSearch_scan_barcode => 'Escanar lo còde de barras';

  @override
  String get foodSearch_take_photo => 'Fòto de Snap Food';

  @override
  String get foodSearch_custom_food => 'Crear de manjar personalizat';

  @override
  String get foodSearch_recent_searches => 'Recèrcas recentas';

  @override
  String get foodSearch_popular => 'Plats populars';

  @override
  String get foodSearch_no_results =>
      'Cap de noiridura que correspond a vòstra recèrca';

  @override
  String get barcode_title => 'Escanèr de còde de barras';

  @override
  String get barcode_align =>
      'Alinhatz lo còde de barras dins l\'encastre de la camèra';

  @override
  String get barcode_not_found => 'Produch pas trobat dins la basa de donadas';

  @override
  String get barcode_premium_feature =>
      'L\'escanatge de còde de barras es disponible amb Bloomi Pro';

  @override
  String get camera_title => 'Escanèr de noiridura d\'IA';

  @override
  String get camera_tap_hint => 'Prenètz una fòto clara de vòstre plat';

  @override
  String get camera_analysing => 'Analisant la placa de manjar...';

  @override
  String get camera_detected => 'Elements detectats';

  @override
  String get camera_flash => 'Bascular Flash';

  @override
  String get camera_retake => 'Tornar prene la fòto';

  @override
  String get camera_confirm_food => 'Confirmar los articles';

  @override
  String get customFood_title => 'Manjar e recèpta personalizada';

  @override
  String get customFood_name_hint => 'Nom del plat o d\'ingredient';

  @override
  String get customFood_calories_hint => 'Calòrias (kcal)';

  @override
  String get customFood_protein_hint => 'Proteïna (g)';

  @override
  String get customFood_carbs_hint => 'Carbohidrats (g)';

  @override
  String get customFood_fat_hint => 'Grassa (g)';

  @override
  String get customFood_save => 'Enregistrar la recèpta';

  @override
  String get water_tracker_title => 'Rastrejaire d\'aiga';

  @override
  String get water_daily_target => 'Objectiu quotidian d\'idratacion';

  @override
  String get water_logged_today => 'Enregistrat uèi';

  @override
  String get water_add_glass => '+250 ml de veire';

  @override
  String get water_add_bottle => '+500 ml Botelha';

  @override
  String get water_custom_amount => 'Montant personalizat';

  @override
  String get water_reminder_tip =>
      'Beure d\'aiga regularament pendent la jornada per una energia constanta.';

  @override
  String water_logged_toast(Object amount) {
    return 'Enregistrat $amount ml d\'aiga 💧';
  }

  @override
  String get workout_title => 'Registre d\'entraïnament';

  @override
  String get workout_add_exercise => 'Ajustar l\'entraïnament';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Força';

  @override
  String get workout_yoga => 'Iòga e soplesa';

  @override
  String get workout_duration => 'Durada';

  @override
  String get workout_intensity => 'Intensitat';

  @override
  String get workout_calories_burned => 'Calorias cremadas';

  @override
  String get workout_empty => 'Cap d\'entraïnament enregistrat uèi';

  @override
  String get workout_save_success => 'L\'entraïnament salvat amb succès!';

  @override
  String get workout_type => 'Tipe d\'entraïnament';

  @override
  String get workout_notes => 'Nòtas e reflexions';

  @override
  String get health_overview_title => 'Salut & Vitals';

  @override
  String get health_heart_rate => 'Frequéncia cardiaca';

  @override
  String get health_blood_oxygen => 'Oxigèn sanguini (SpO2)';

  @override
  String get health_blood_pressure => 'Pression arteriala';

  @override
  String get health_blood_glucose => 'Glucòsa sanguina';

  @override
  String get health_body_temperature => 'Temperatura corporala';

  @override
  String get health_sleep_tracking => 'Seguiment del sòm';

  @override
  String get health_weight_tracking => 'Pes e composicion corporala';

  @override
  String get health_waist_hip => 'Rapòrt cintura-anca';

  @override
  String get health_devices_hub =>
      'Dispositius e centre de relòtge intelligent';

  @override
  String get health_sync_now => 'Sincronizar las donadas de santat';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Darrièra sincronizacion : $time';
  }

  @override
  String get health_manual_entry => 'Entrada manuala de santat';

  @override
  String get health_metric_detail => 'Detalhs de la metrica';

  @override
  String get health_connected_sensors => 'Captors de santat connectats';

  @override
  String get plan_title => 'Plan quotidian';

  @override
  String get plan_weekly_title => 'Plan de Benèsser Setmanièr';

  @override
  String get plan_calorie_target => 'Objectiu de calorias';

  @override
  String get plan_water_target => 'Objectiu d\'idratacion';

  @override
  String get plan_step_target => 'Pas cibla';

  @override
  String get plan_sleep_target => 'Cibla de sòm';

  @override
  String get plan_meal_suggestions => 'Suggeriments de repais';

  @override
  String get plan_healthy_habits => 'Abituds e conselhs saludables';

  @override
  String get plan_coach_advice => 'Recomandacions d\'entraïnaire d\'IA Bloomi';

  @override
  String get plan_generated_title => 'Calendari quotidian personalizat';

  @override
  String get profile_title => 'Perfil';

  @override
  String get profile_edit => 'Modificar lo perfil';

  @override
  String get profile_name => 'Nom';

  @override
  String get profile_age => 'Edat';

  @override
  String get profile_gender => 'Genre';

  @override
  String get profile_height => 'Nautor';

  @override
  String get profile_weight => 'Pes';

  @override
  String get profile_goal => 'Objectiu Principal';

  @override
  String get profile_activity_level => 'Nivèl d\'activitat';

  @override
  String get profile_stats => 'Mas estatisticas de benestar';

  @override
  String get profile_saved => 'Perfil mes a jorn amb succès';

  @override
  String get profile_bmi => 'Indici de massa corporala (IMC)';

  @override
  String get profile_membership => 'Adesion';

  @override
  String get settings => 'Paramètres';

  @override
  String get preferences_habits => 'PREFERENCIA E ABITUTS';

  @override
  String get appearance_theme => 'Aparéncia e tèma';

  @override
  String get appearance_theme_sub =>
      'Escur, clar, mòde sistèma e opcions de fons de l\'aplicacion';

  @override
  String get permissions => 'Permissions e accès al sistèma';

  @override
  String get permissions_sub =>
      'Connexion de santat, captors de pas, GPS, notificacions e camèra';

  @override
  String get reminders_notifications => 'Rapèls e notificacions';

  @override
  String get reminders_sub =>
      'Oraris de repais, aiga, registracion de pes e rapèls abans de dormir';

  @override
  String get units_of_measurement => 'Unitats de mesura';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) o Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Lenga de l\'aplicacion';

  @override
  String get language_sub =>
      'Anglés, हिन्दी (Hindi), Hinglish & 195+ lengas globalas';

  @override
  String get home_screen_widgets => 'Widgets d\'ecran d\'inici';

  @override
  String get widgets_sub =>
      'Widgets Android en dirècte: Hub, Pas, Aiga, Nutricion e Mascota';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Companh de relòtge intelligent, teulas, complicacions & vitals en dirècte';

  @override
  String get goals_wellness => 'OBJECTIUS & CONSIGNACIONS DE BENÈSTRE';

  @override
  String get nutrition_targets => 'Objectius de nutricion e division macro';

  @override
  String get nutrition_targets_sub =>
      'Objectiu de calorias, de proteïnas, de glucids, de graissa e d\'aiga';

  @override
  String get weekly_recap => 'Recap Setmanièr de Benèsser';

  @override
  String get weekly_recap_sub =>
      'Mejana de calorias de 7 jorns, rapòrt macro & melhor jorn';

  @override
  String get streaks_milestones => 'Rachas e Etapas';

  @override
  String get streaks_sub => 'Raias de flors activas, insignas e realizacions';

  @override
  String get connected_devices => 'DISPOSITIVÈS CONNECTATS E ECOSISTEMA';

  @override
  String get devices_hub => 'Dispositius e centre de relòtge intelligent';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Environament e temps';

  @override
  String get surroundings_sub =>
      'Qualitat de l\'aire (AQI), indici UV e conselhs d\'idratacion climatica';

  @override
  String get bloomi_pro => 'Abonament Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets d\'ecran d\'inici e seguiment de vitals';

  @override
  String get about_security => 'SOBRE E SEGURETAT';

  @override
  String get about_bloomi => 'A prepaus de Bloomi';

  @override
  String get about_bloomi_sub =>
      'Especificacions de construccion, version, atribucions';

  @override
  String get privacy_policy => 'Politica de confidencialitat';

  @override
  String get privacy_policy_sub =>
      'Arquitectura de donadas fòra linha d\'en primièr, sul periferic';

  @override
  String get terms_conditions => 'Tèrmes e condicions';

  @override
  String get terms_conditions_sub =>
      'Condicions de servici e directivas de benèsser';

  @override
  String get delete_account => 'Suprimir lo compte e las donadas';

  @override
  String get delete_account_sub =>
      'Esfaçar de manièra irreversibla las donadas SQLite localas e las còpias de seguretat en nívol';

  @override
  String get healthy_habits => 'Bastir d\'abituds de benèsser doças e durablas';

  @override
  String get all_logs => 'Mas donadas e jornals seguits';

  @override
  String get search_language => 'Cercar per lenga o grafia nativa...';

  @override
  String get languages_available => 'Lengas disponiblas';

  @override
  String get no_matching_languages => 'Cap de lenga correspondenta pas trobada';

  @override
  String get try_searching =>
      'Ensajatz de cercar per grafia nativa o grafia anglesa';

  @override
  String get partially_translated => 'Parcialament revirat';

  @override
  String get complete_translation => 'Complet';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lenga definida a $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Environament e Environament';

  @override
  String get surroundings_aqi => 'Indici de qualitat de l\'aire';

  @override
  String get surroundings_uv => 'Indici UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Umiditat';

  @override
  String get surroundings_hydration_advice =>
      'Mantenètz-vos plan idratats dins las condicions meteorologicas actualas.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Cercar de manjar';

  @override
  String get food_quick_barcode => 'Escanejar lo còde de barras 👑';

  @override
  String get food_quick_water => 'Ajustar d\'aiga';

  @override
  String get food_quick_custom => 'Alimentacion personalizada';

  @override
  String get surroundings_good => 'Bon';

  @override
  String get surroundings_moderate => 'Moderat';

  @override
  String get surroundings_unhealthy => 'Malsan';

  @override
  String get notifications_title => 'Notificacions e alèrtas';

  @override
  String get notifications_empty => 'Cap de notificacion novèla';

  @override
  String get notifications_mark_read => 'Marcar tot coma legit';

  @override
  String get notifications_clear => 'Escafar tot';

  @override
  String get reminders => 'Paramètres de rapèl';

  @override
  String get notifications => 'Notificacions';

  @override
  String get reminders_breakfast_title => 'Rapèl al dejunar 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bonjorn! Temps d\'un dejunar noirissent a $time .';
  }

  @override
  String get reminders_lunch_title => 'Rapèl del dinnar 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pausatz e gauditz d\'un dinnar equilibrat e atentiu a $time .';
  }

  @override
  String get reminders_dinner_title => 'Rapèl del sopar 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Temps d\'un sopar leugièr e satisfasent a $time .';
  }

  @override
  String get reminders_water_title => 'Hidratacion Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Es temps de beure un veire d\'aiga fresca! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Pesatge Setmanièr ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Seguissètz vòstras mesuras corporalas setmanièras sus Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Temps de dormir Revent-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Desrelajar-se e preparar-se per un sòm repausant ( $time ).';
  }

  @override
  String get onboard_welcome => 'Benvenguda a Bloomi';

  @override
  String get onboard_sub =>
      'Vòstre companh de santat e de nutricion amistós, fòra linha.';

  @override
  String get onboard_get_started => 'Començatz';

  @override
  String get onboard_sign_in => 'Connectatz-vos';

  @override
  String get onboard_skip => 'Sautar';

  @override
  String get onboard_choose_goal =>
      'Quin es vòstre objectiu de benestar principal?';

  @override
  String get onboard_goal_weight_loss => 'Pèrda de pes doça';

  @override
  String get onboard_goal_muscle => 'Ganh muscular e fòrça';

  @override
  String get onboard_goal_energy => 'Energia e Vitalitat Quotidiana';

  @override
  String get onboard_goal_habits => 'Alimentacion conscienta sana';

  @override
  String get onboard_about_you => 'Parlatz-nos de vosautres';

  @override
  String get onboard_lifestyle => 'Vòstra rotina quotidiana';

  @override
  String get onboard_permissions_title => 'Permissions e accès al sistèma';

  @override
  String get onboard_permissions_sub =>
      'Donatz l\'accès a las etapas de sincronizacion, als entrenaments e als rapèls.';

  @override
  String get onboard_plan_ready_title => 'Vòstre plan personalizat es prèst!';

  @override
  String get onboard_plan_ready_sub =>
      'Avèm elaborat una fuèlha de rota de nutricion e de benestar doça e personalizada just per vos.';

  @override
  String get onboard_enter_bloomi => 'Entratz Bloomi';

  @override
  String get insights_weekly_report => 'Recap Setmanièr de Benèsser';

  @override
  String insights_best_day(Object day) {
    return 'Lo melhor jorn de coeréncia: $day';
  }

  @override
  String get insights_streaks_badges => 'Rachas e Etapas';

  @override
  String insights_unlocked_on(Object date) {
    return 'Desblocat sus $date';
  }

  @override
  String get insights_keep_going => 'Contunhatz lo progrès fantastic!';

  @override
  String get widgets_title => 'Widgets d\'ecran d\'inici';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets actius: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Pas & Anèl actiu';

  @override
  String get widgets_water_title => 'Registre rapid d\'idratacion';

  @override
  String get widgets_mascot_title => 'Companh de Mascota Bloomi';

  @override
  String get wear_os_title => 'Relòtge intelligent Wear OS';

  @override
  String get wear_os_connected => 'Connectat a Relòtge';

  @override
  String get wear_os_sync => 'Sincronizar las donadas de relòtge';

  @override
  String get theme_title => 'Aparéncia e tèma';

  @override
  String get theme_mode => 'Mòde tèma';

  @override
  String get theme_light => 'Lutz';

  @override
  String get theme_dark => 'Escur';

  @override
  String get theme_system => 'Per defaut del sistèma';

  @override
  String get theme_background_palette => 'Paleta de fons';

  @override
  String get units_title => 'Unitats de mesura';

  @override
  String get units_metric => 'Mètrica (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, en, fl oz)';

  @override
  String get home_unable_load => 'Impossible de cargar lo tablèu de bòrd';

  @override
  String get home_health_permission_req =>
      'Permission de Health Connect requerida';

  @override
  String get home_health_permission_desc =>
      'Bloomi demanda l\'autorizacion de Health Connect per tirar de passes reals, de ritme cardiac e sincronizar los widgets de casa mobila en temps real.';

  @override
  String get home_allow_health => 'Autorizar la connexion de santat';

  @override
  String get home_ready_mindful_day => 'Lèst per una jornada de consciéncia? ✨';

  @override
  String get home_quick_add => 'Apond rapid';

  @override
  String get home_live_gps => 'GPS en dirècte';

  @override
  String get home_calories_remaining_label => 'CALORIAS RESTANS';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Manjat: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Robinet per un seguidor d\'aiga 💧';

  @override
  String get home_water_goal_reached => 'Objectiu quotidian atench 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml a la tòca quotidiana';
  }

  @override
  String get home_details => 'Detalhs';

  @override
  String get home_upgrade_plan_desc =>
      'Mesa a jorn per desblocar de ciblas quotidianas personalizadas e plan d\'IA';

  @override
  String get home_unlock => 'Desblocar 👑';

  @override
  String get home_quick_log_hint =>
      'Enregistratz rapidament una entrada de benèsser';

  @override
  String get food_serving_size => 'Talha de la porcion';

  @override
  String get food_serving_grams => 'Servir (g)';

  @override
  String get food_number_servings => 'Nombre de porcions';

  @override
  String get food_calories_per_serving => 'Calorias per porcion';

  @override
  String get food_recipe_ingredients => 'Ingredients';

  @override
  String get food_recipe_add_ingredient => 'Apondre d\'ingredients';

  @override
  String get food_recipe_directions => 'Instruccions e nòtas';

  @override
  String get food_recipe_total => 'Nutricion totala de la recèpta';

  @override
  String get food_recipe_per_serving => 'Nutricion per porcion';

  @override
  String get food_recipe_saved_toast =>
      'La noiridura personalizada estauviada amb succès!';

  @override
  String get food_barcode_found => 'Produch trobat!';

  @override
  String get food_barcode_not_found_desc =>
      'Avèm pas pogut trobar aqueste còde de barras dins la basa de donadas dobèrta. Lo podètz apondre coma un aliment personalizat.';

  @override
  String get food_add_custom_btn => 'Ajustar de manjar personalizat';

  @override
  String get food_scan_again => 'Tornatz escanar';

  @override
  String get food_review_items => 'Revisar los aliments detectats';

  @override
  String get food_review_hint =>
      'Ajustar las quantitats o suprimir quin element que siá non reconegut';

  @override
  String get food_log_selected => 'Enregistrar los aliments seleccionats';

  @override
  String get food_favourites_title => 'Aliments favorits';

  @override
  String get food_recent_title => 'Aliments recents';

  @override
  String get food_no_favourites =>
      'Pas encara de manjar favorit. Picatz de còr sus quin manjar que siá per estalviar aicí.';

  @override
  String get food_no_recents =>
      'Cap de noiridura enregistrada recentament trobada.';

  @override
  String get food_nutrition_details_title =>
      'Detalhs de la nutricion quotidiana';

  @override
  String get food_macro_protein_label => 'Descomposicion de las proteïnas';

  @override
  String get food_macro_carbs_label => 'Descomposicion dels glucids';

  @override
  String get food_macro_fat_label => 'Descomposicion de las graissas';

  @override
  String get food_macro_fiber_label => 'Descomposicion de las fibras';

  @override
  String get food_daily_target_comparison => 'Comparason de cibla';

  @override
  String food_target_label(Object target) {
    return 'Objectiu: $target';
  }

  @override
  String get food_edit_entry => 'Modificar l\'entrada del jornal';

  @override
  String get food_delete_entry => 'Suprimir l\'entrada';

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
  String get water_intake_history => 'Los registres d\'aiga d\'uèi';

  @override
  String get water_no_logs_today =>
      'Pas d\'aiga enregistrada encara uèi. Idratatz-vos e picatz un boton d\'apondre rapid!';

  @override
  String get water_adjust_goal => 'Ajustar l\'objectiu quotidian';

  @override
  String get health_connect_banner => 'Connectat a Health Connect';

  @override
  String get health_vitals_summary => 'Vitals de santat quotidian';

  @override
  String get health_latest_heart_rate => 'La darrièra frequéncia cardiaca';

  @override
  String get health_latest_bp => 'Pression arteriala';

  @override
  String get health_latest_spo2 => 'Oxigèn sanguini';

  @override
  String get health_latest_glucose => 'Glucòsa sanguina';

  @override
  String get health_latest_weight => 'Pes';

  @override
  String get health_latest_sleep => 'Durada del sòm';

  @override
  String get health_add_manual => 'Ajustar la mesura manuala';

  @override
  String get health_history_trends => 'Tendéncias istoricas';

  @override
  String get health_sync_success =>
      'Las donadas de santat sincronizadas amb succès!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours hrs $mins mins';
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
  String get health_devices_title => 'Dispositius e portables connectats';

  @override
  String get health_devices_desc =>
      'Gerir los relòtges intelligents, los seguidors de condicion fisica e los captors de santat acoblats.';

  @override
  String get health_workout_editor_title => 'Modificar l\'entraïnament';

  @override
  String get health_workout_name_label => 'Nom de l\'entraïnament';

  @override
  String get health_workout_duration_label => 'Durada (minutas)';

  @override
  String get health_workout_calories_label => 'Calorias estimadas (kcal)';

  @override
  String get health_workout_date_label => 'Data e ora';

  @override
  String get plan_daily_wellness_roadmap =>
      'Vòstra fuèlha de rota personalizada';

  @override
  String get plan_morning_routine => 'Rotina del matin';

  @override
  String get plan_afternoon_routine => 'Benèsser de miègjorn';

  @override
  String get plan_evening_routine => 'Vent de ser';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => 'Enfocament de 7 jorns sul benestar';

  @override
  String get plan_targets_title => 'Objectius e Objectius de Benèsser';

  @override
  String get plan_calorie_budget_label => 'Pressupòst de calorias jornalièrs';

  @override
  String get plan_water_budget_label => 'Objectiu quotidian d\'aiga';

  @override
  String get plan_step_budget_label => 'Objectiu de l\'estapa quotidiana';

  @override
  String get plan_macro_split_label => 'Rapòrt de macronutriments';

  @override
  String get profile_personal_details => 'Detalhs personals';

  @override
  String get profile_body_stats => 'Mesuras del còrs';

  @override
  String get profile_app_preferences =>
      'Preferéncias e paramètres de l\'aplicacion';

  @override
  String get profile_edit_name_hint => 'Vòstre nom';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Nautor ( $unit )';
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
  String get profile_gender_female => 'Femna';

  @override
  String get profile_gender_other => 'Autra / Preferissi pas dire';

  @override
  String get profile_activity_sedentary =>
      'Sedentari (Pauc o pas cap d\'exercici)';

  @override
  String get profile_activity_light => 'Leugièrament actiu (1-3 jorns/setmana)';

  @override
  String get profile_activity_moderate =>
      'Moderadament actiu (3-5 jorns/setmana)';

  @override
  String get profile_activity_very => 'Fòrça actiu (6-7 jorns/setmana)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Installatz lo mosaïc Bloomi e la complicacion sus vòstre relòtge Wear OS per agachar las calorias, l\'aiga e los passes.';

  @override
  String get settings_widgets_header => 'Widgets Android interactius';

  @override
  String get settings_widgets_desc =>
      'Fixatz de widgets en temps real sus l\'ecran d\'accueil de vòstre periferic per de mesas a jorn instantanèas.';

  @override
  String get settings_about_header => 'A prepaus de Bloomi';

  @override
  String get settings_about_version => 'Version 1.0.0';

  @override
  String get settings_about_build => 'Bastir 100';

  @override
  String get settings_about_credits =>
      'Fabricat amb suenh per una vida conscienta e sana.';

  @override
  String get settings_terms_header => 'Tèrmes e condicions';

  @override
  String get settings_privacy_header => 'Politica de confidencialitat';

  @override
  String get settings_delete_header => 'Suprimir lo compte e las donadas';

  @override
  String get settings_delete_warning =>
      'Aquesta accion pòt pas èsser anullada. Totes vòstres repais, entrenaments, vitals e perfil seràn definitivament suprimits.';

  @override
  String get settings_delete_confirm_btn => 'Suprimir definitivament';

  @override
  String get onboard_welcome_headline => 'Benvenguda a Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Seguiment de benèsser doç e atentiu concebut a l\'entorn de vòstra vida.';

  @override
  String get onboard_step_about => 'A prepaus de tu';

  @override
  String get onboard_step_goals => 'Vòstres objectius';

  @override
  String get onboard_step_lifestyle => 'Abituds quotidianas';

  @override
  String get onboard_step_permissions => 'Permissions';

  @override
  String get onboard_step_plan => 'Lèst!';

  @override
  String get onboard_health_connect_perm => 'Accès a la Connexion de Santat';

  @override
  String get onboard_step_sensors_perm => 'Captor de comptador de pas';

  @override
  String get onboard_notif_perm => 'Rapèls e notificacions atentius';

  @override
  String get onboard_camera_perm =>
      'Camèra (Còde de barras e escanèr de noiridura)';

  @override
  String get onboard_grant_permissions => 'Concedir d\'autorizacions';

  @override
  String get onboard_continue_dashboard => 'Dobrir lo tablèu de bòrd';

  @override
  String get notif_channel_hydration_name => 'Emponts d\'idratacion';

  @override
  String get notif_channel_hydration_desc =>
      'Rapèls d\'aiga doça pendent tota la jornada';

  @override
  String get notif_channel_nutrition_name => 'Rapèls de repais e de nutricion';

  @override
  String get notif_channel_nutrition_desc =>
      'Alèrtas de rapèl de dejunar, dinnar e sopar';

  @override
  String get notif_channel_steps_name => 'Etapas de pas';

  @override
  String get notif_channel_steps_desc =>
      'Fèstas al moment d\'aténher los objectius de pas quotidians';

  @override
  String get notif_channel_vitals_name => 'Verificacions de santat e vitalas';

  @override
  String get notif_channel_vitals_desc =>
      'Rapèls de desconnexion de pes e de dormir';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Dormir 15m';

  @override
  String get notif_action_log_meal => '🥗 Repais de troncs';

  @override
  String get language => 'Lenga';

  @override
  String get share => 'Partatjar';

  @override
  String common_days(Object count) {
    return '$count fa d';
  }
}
