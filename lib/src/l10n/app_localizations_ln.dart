// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lingala (`ln`).
class AppLocalizationsLn extends AppLocalizations {
  AppLocalizationsLn([String locale = 'ln']) : super(locale);

  @override
  String get app_name => 'Bloomi, oyo azali';

  @override
  String get nav_home => 'Ndako';

  @override
  String get nav_today => 'Lelo oyo';

  @override
  String get nav_plan => 'Bongisá mwango';

  @override
  String get nav_food => 'Bilei ya kolia';

  @override
  String get nav_food_diary => 'Journal ya Bilei';

  @override
  String get nav_workout => 'Journal ya entraînement';

  @override
  String get nav_health => 'Santé ya nzoto';

  @override
  String get nav_profile => 'Profil ya makambo';

  @override
  String get save => 'Bomba';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Bolongola';

  @override
  String get edit => 'Bobongisi';

  @override
  String get done => 'Esili';

  @override
  String get close => 'Bokanga';

  @override
  String get back => 'Kozonga sima';

  @override
  String get next => 'Na nsima';

  @override
  String get continue_btn => 'Koba na likambo yango';

  @override
  String get confirm => 'Confirmer';

  @override
  String get search => 'Bolukaluka';

  @override
  String get filter => 'Filtre ya kosala';

  @override
  String get all => 'Nyonso';

  @override
  String get active => 'Active';

  @override
  String get today => 'Lelo oyo';

  @override
  String get yesterday => 'Lobi';

  @override
  String get tomorrow => 'Lobi';

  @override
  String get add => 'Bakisa';

  @override
  String get remove => 'Longola yango';

  @override
  String get refresh => 'Bozongisa sika';

  @override
  String get retry => 'Meká lisusu';

  @override
  String get error => 'Libunga';

  @override
  String get success => 'Kolonga';

  @override
  String get loading => 'Ezali ko charger...';

  @override
  String get no_data => 'Ba données ezali te';

  @override
  String get offline => 'Mode hors ligne';

  @override
  String get offline_sub =>
      'Mbongwana ekosala synchronisation mbala moko ezongisami na boyokani';

  @override
  String get undo => 'Kozongisa nsima';

  @override
  String get portion => 'Eteni';

  @override
  String get quantity => 'Motango ya bato';

  @override
  String get unit => 'Unité';

  @override
  String get clear => 'Ezali polele';

  @override
  String get select => 'Pona';

  @override
  String get apply => 'Salá demande';

  @override
  String get reset => 'Réinitialiser lisusu';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ɛɛ';

  @override
  String get no => 'Te';

  @override
  String get optional => 'Na bolingi na yo';

  @override
  String get calories => 'Calories oyo ezali na kati';

  @override
  String get protein => 'Protéine oyo ezali na kati';

  @override
  String get carbs => 'Ba carbs oyo ezali na mafuta mingi';

  @override
  String get fat => 'Mafuta ya mafuta';

  @override
  String get fiber => 'Fibre ya fibre';

  @override
  String get water => 'Mai';

  @override
  String get steps => 'Matambe ya kosala';

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
  String get inches => 'na';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Kosala mosala';

  @override
  String get servings => 'Ba portions oyo basalelaka';

  @override
  String get serving_size => 'Taille ya portion';

  @override
  String get per_100g => 'na 100g moko';

  @override
  String get india => 'Inde';

  @override
  String get asia => 'Azia';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Moyen-Orient';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amériques';

  @override
  String get home_title => 'Ndako';

  @override
  String get home_greeting_morning => 'Ntongo malamu';

  @override
  String get home_greeting_afternoon => 'Bolamu na nsima ya midi';

  @override
  String get home_greeting_evening => 'Pokwa Malamu';

  @override
  String get home_streak_title => 'Molongo ya Fololo';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mikolo ya molongo',
      one: '1 mokolo ya streak',
      zero: '0 mikolo ya molongo',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ezikisami';

  @override
  String get home_calories_budget => 'Budget ya calories';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal etikali';
  }

  @override
  String get home_water_title => 'Hydration ya mokolo na mokolo';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Matambe Etambolaki';

  @override
  String get home_quick_actions => 'Misala ya Noki';

  @override
  String get home_log_meal => 'Bolei ya Log';

  @override
  String get home_log_water => 'Mai ya Log';

  @override
  String get home_log_workout => 'Entraînement ya Log';

  @override
  String get home_log_weight => 'Kilo ya Loge';

  @override
  String get home_insights_title => 'Ba Insights ya Lelo';

  @override
  String get home_quote =>
      'Ba choix ya mike mike ya santé esala ba transformations ya fleur.';

  @override
  String get home_ai_coach_tip => 'Bloomi Molakisi ya AI';

  @override
  String get home_surroundings => 'Environnement & Mopepe';

  @override
  String get home_notifications => 'Mayebisi';

  @override
  String get home_daily_score => 'Score ya Bien-être ya Mokolo na Mokolo';

  @override
  String get home_view_all => 'Tala Nyonso';

  @override
  String get food_diary_title => 'Journal ya Bilei';

  @override
  String get food_breakfast => 'Na ntongo ya tongo';

  @override
  String get food_lunch => 'Bilei ya midi';

  @override
  String get food_dinner => 'Bolei ya mpokwa';

  @override
  String get food_snacks => 'Bilei ya mikemike';

  @override
  String get food_add_food => 'Bakisa Bilei';

  @override
  String get food_edit_food => 'Bobongisi Bilei';

  @override
  String get food_add_breakfast => 'Bakisa Déjeuner';

  @override
  String get food_add_lunch => 'Bakisa Bilei ya Midi';

  @override
  String get food_add_dinner => 'Bakisa Dinner';

  @override
  String get food_add_snack => 'Bakisa Snack';

  @override
  String get food_total_calories => 'Total ya ba Calories';

  @override
  String get food_empty_meal => 'Bilei moko te e logé mpo na bilei oyo naino';

  @override
  String get food_empty_diary => 'Bilei moko te ekomamaki mpo na mokolo oyo';

  @override
  String get food_log_first_meal =>
      'Finá + mpo na kokɔtisa bilei na yo ya liboso ya elengi';

  @override
  String get food_quick_add => 'Bakisa ya mbangu';

  @override
  String get food_search_hint => 'Boluka bilei, mbuma, dal, roti...';

  @override
  String get food_custom_recipe => 'Bilei & Recette Personnalisée';

  @override
  String get food_scan_barcode => 'Scan Code barre';

  @override
  String get food_camera_scan => 'Scanner ya Bilei ya AI';

  @override
  String get food_recent => 'Bilei oyo euti kosalema kala mingi te';

  @override
  String get food_favourites => 'Ba oyo balingaka mingi';

  @override
  String get food_macro_summary => 'Bokabwani ya ba macronutriments';

  @override
  String get food_delete_meal_confirm =>
      'Ozali na ntembe te ete olingi kolongola eloko oyo?';

  @override
  String get food_item_deleted => 'Eloko ya kolia elongolami';

  @override
  String get food_remaining => 'etikali';

  @override
  String get food_consumed => 'esili kolya';

  @override
  String food_of_target(Object target) {
    return 'ya $target kcal';
  }

  @override
  String get foodSearch_title => 'Luka Bilei';

  @override
  String get foodSearch_scan_barcode => 'Scan Code barre';

  @override
  String get foodSearch_take_photo => 'Snap Biloko ya kolia Photo';

  @override
  String get foodSearch_custom_food =>
      'Salá Bilei oyo esalemi na kolanda bamposa ya moto';

  @override
  String get foodSearch_recent_searches => 'Bolukiluki ya sika';

  @override
  String get foodSearch_popular => 'Bilei oyo bato mingi balingaka';

  @override
  String get foodSearch_no_results =>
      'Bilei oyo ekokani na bolukiluki na yo te';

  @override
  String get barcode_title => 'Scanner ya code barre';

  @override
  String get barcode_align => 'Aligner code barre na kati ya cadre ya caméra';

  @override
  String get barcode_not_found => 'Produit ezwami te na base de données';

  @override
  String get barcode_premium_feature =>
      'Scanning ya code barre ezali na Bloomi Pro';

  @override
  String get camera_title => 'Scanner ya Bilei ya AI';

  @override
  String get camera_tap_hint => 'Zwá fɔtɔ́ ya polele ya bilei na yo';

  @override
  String get camera_analysing => 'Analyse ya plaque ya biloko ya kolia...';

  @override
  String get camera_detected => 'Biloko oyo ezwami';

  @override
  String get camera_flash => 'Toggle Flash na yango';

  @override
  String get camera_retake => 'Bozwa lisusu Fɔtɔ́';

  @override
  String get camera_confirm_food => 'Kondimisa Biloko';

  @override
  String get customFood_title => 'Bilei & Recette Personnalisée';

  @override
  String get customFood_name_hint => 'Nkombo ya bilei to ingrédient';

  @override
  String get customFood_calories_hint => 'Calories (kcal) oyo ezali na kati .';

  @override
  String get customFood_protein_hint => 'Protéine (g) .';

  @override
  String get customFood_carbs_hint => 'Ba carbs (g) .';

  @override
  String get customFood_fat_hint => 'Mafuta (g) .';

  @override
  String get customFood_save => 'Bomba Recette';

  @override
  String get water_tracker_title => 'Tracker ya Mai';

  @override
  String get water_daily_target => 'Mokano ya Hydration ya mokolo na mokolo';

  @override
  String get water_logged_today => 'Logged Lelo oyo';

  @override
  String get water_add_glass => '+250 ml Verre';

  @override
  String get water_add_bottle => '+500 ml Molangi';

  @override
  String get water_custom_amount => 'Montant personnalisé';

  @override
  String get water_reminder_tip =>
      'Melá mai mbala na mbala mokolo mobimba mpo na kozala na makasi ya kokita te.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logé $amount ml ya mayi 💧';
  }

  @override
  String get workout_title => 'Journal ya entraînement';

  @override
  String get workout_add_exercise => 'Bakisa Entraînement';

  @override
  String get workout_cardio => 'Cardio ya motema';

  @override
  String get workout_strength => 'Bokasi';

  @override
  String get workout_yoga => 'Yoga & Flexibilité na makambo';

  @override
  String get workout_duration => 'Bolai ya ntango';

  @override
  String get workout_intensity => 'Intensité na yango';

  @override
  String get workout_calories_burned => 'Calories oyo ezikisami';

  @override
  String get workout_empty => 'Ba entraînements moko te e logé lelo';

  @override
  String get workout_save_success => 'Entraînement ebikisami na elonga!';

  @override
  String get workout_type => 'Lolenge ya ngalasisi';

  @override
  String get workout_notes => 'Notes & Ba réflexions';

  @override
  String get health_overview_title => 'Santé & Vitals';

  @override
  String get health_heart_rate => 'Motema Kobeta';

  @override
  String get health_blood_oxygen => 'Oxygène na makila (SpO2) .';

  @override
  String get health_blood_pressure => 'Tansiɔ́ ya makila';

  @override
  String get health_blood_glucose => 'Glucose na makila';

  @override
  String get health_body_temperature => 'Température ya Nzoto';

  @override
  String get health_sleep_tracking => 'Kolanda Pongi';

  @override
  String get health_weight_tracking => 'Kilo & Composition ya nzoto';

  @override
  String get health_waist_hip => 'Ratio ya loketo na loketo';

  @override
  String get health_devices_hub => 'Appareils & Hub ya Smartwatch';

  @override
  String get health_sync_now => 'Sync ba Données ya Santé';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Syncisé ya suka: $time';
  }

  @override
  String get health_manual_entry => 'Bokotisi ya bokolongono na maboko';

  @override
  String get health_metric_detail => 'Ba Détails ya Métrique';

  @override
  String get health_connected_sensors => 'Ba Capteurs ya Santé oyo ekangami';

  @override
  String get plan_title => 'Plan ya mokolo na mokolo';

  @override
  String get plan_weekly_title => 'Plan ya Bien-être ya Poso na Poso';

  @override
  String get plan_calorie_target => 'Cible ya calories';

  @override
  String get plan_water_target => 'Cible ya Hydration';

  @override
  String get plan_step_target => 'Etape Cible';

  @override
  String get plan_sleep_target => 'Cible ya Pongi';

  @override
  String get plan_meal_suggestions => 'Makanisi ya kolya';

  @override
  String get plan_healthy_habits => 'Mimeseno & Ba conseils ya santé';

  @override
  String get plan_coach_advice => 'Bloomi AI Ba Recommandations ya Entraîneur';

  @override
  String get plan_generated_title =>
      'Programme ya mokolo na mokolo oyo ebongisami mpo na moto ye moko';

  @override
  String get profile_title => 'Profil ya makambo';

  @override
  String get profile_edit => 'Bobongisi Profil';

  @override
  String get profile_name => 'Kombo';

  @override
  String get profile_age => 'Mbula ya mbula';

  @override
  String get profile_gender => 'Bobali to mwasi';

  @override
  String get profile_height => 'Bolai';

  @override
  String get profile_weight => 'Kilo ya kilo';

  @override
  String get profile_goal => 'Mokano ya libosoliboso';

  @override
  String get profile_activity_level => 'Niveau ya Mosala';

  @override
  String get profile_stats => 'Stats na ngai ya Bien-être';

  @override
  String get profile_saved => 'Profil ebongwani na malonga';

  @override
  String get profile_bmi => 'Indice ya masse ya nzoto (IMC) .';

  @override
  String get profile_membership => 'Bozali ya bandimi';

  @override
  String get settings => 'Ba paramètres';

  @override
  String get preferences_habits => 'BA PREFERENCES & BA HABITS';

  @override
  String get appearance_theme => 'Emonani & Motó ya likambo';

  @override
  String get appearance_theme_sub =>
      'Molili, Pole, Mode Système & Options ya Fond ya App';

  @override
  String get permissions => 'Ndingisa & Accès na Système';

  @override
  String get permissions_sub =>
      'Connexion ya Santé, Capteurs ya pas, GPS, Notifications & Caméra';

  @override
  String get reminders_notifications => 'Makundoli & Mayebisi';

  @override
  String get reminders_sub =>
      'Tango ya kolia, mayi, check-in ya kilo & ba rappels ya kolala';

  @override
  String get units_of_measurement => 'Ba Unités ya Mesure';

  @override
  String get units_sub =>
      'Métrique (kg, cm, ml, km) to Impérial (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'Monoko ya App';

  @override
  String get language_sub =>
      'Lingelesi, हिन्दी (Hindi), Hinglish & 195+ minoko ya mokili mobimba';

  @override
  String get home_screen_widgets => 'Widgets ya Écran d\'accueil';

  @override
  String get widgets_sub =>
      'Widgets Android en direct: Hub, Matambe, Mai, Nutrition & Mascotte';

  @override
  String get wear_os_watch_app => 'Lata App ya Montre ya OS';

  @override
  String get wear_os_sub =>
      'Compagnon Smartwatch, carreaux, complications & vitals en direct';

  @override
  String get goals_wellness => 'MAKAMBO & BA INSIGHTS YA BIEN-ENNEMENT';

  @override
  String get nutrition_targets => 'Cibles ya Nutrition & Bokabwani ya Macro';

  @override
  String get nutrition_targets_sub =>
      'Cible ya calories, proteine, carbs, mafuta & mayi but';

  @override
  String get weekly_recap => 'Recap ya Bien-être ya Poso na Poso';

  @override
  String get weekly_recap_sub =>
      '7-jours moyenne ya calories, macro ratio & mokolo ya malamu koleka';

  @override
  String get streaks_milestones => 'Streaks & Milestones ya kosala';

  @override
  String get streaks_sub =>
      'Ba streaks ya fleur active, ba badges & ba réussites';

  @override
  String get connected_devices => 'BILOKO YA KOBONGISA & ÉCOSYSTÈME';

  @override
  String get devices_hub => 'Appareils & Hub ya Smartwatch';

  @override
  String get devices_hub_sub =>
      'Connexion ya santé, Montre Galaxy, Montre Pixel, Garmin';

  @override
  String get surroundings_weather => 'Environnement & Météo';

  @override
  String get surroundings_sub =>
      'Qualité ya mopepe (AQI), indice UV & ba conseils ya hydration météo';

  @override
  String get bloomi_pro => 'Abonnement ya Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets ya écran d\'accueil & suivi ya ba vitals';

  @override
  String get about_security => 'NA LILOBA YA & SÉCURITÉ';

  @override
  String get about_bloomi => 'Na ntina na Bloomi';

  @override
  String get about_bloomi_sub =>
      'Kotonga ba spécifications, version, ba attributs';

  @override
  String get privacy_policy => 'Politiki ya kobatela makambo ya moto ye moko';

  @override
  String get privacy_policy_sub =>
      'Architecture ya ba données hors ligne-ya liboso, na dispositif';

  @override
  String get terms_conditions => 'Mibeko mpe Makambo';

  @override
  String get terms_conditions_sub =>
      'Mibeko ya mosala mpe malako ya bolamu ya nzoto';

  @override
  String get delete_account => 'Bolongola Compte & Ba Données';

  @override
  String get delete_account_sub =>
      'Effacer irreversiblement ba données SQLite locales na ba sauvegarde ya cloud';

  @override
  String get healthy_habits =>
      'Tongela mimeseno ya bolamu ya boboto, ya koumela';

  @override
  String get all_logs => 'Données & Logs na ngai oyo elandami';

  @override
  String get search_language => 'Boluka na monoko to na script ya mboka...';

  @override
  String get languages_available => 'Minɔkɔ oyo Ezali';

  @override
  String get no_matching_languages => 'Minɔkɔ oyo ekokani na yango ezwami te';

  @override
  String get try_searching =>
      'Meká koluka na nzela ya makomi ya mboka to na ndenge ya kokoma Lingelesi';

  @override
  String get partially_translated => 'Ebongolami ndambo';

  @override
  String get complete_translation => 'Kosilisa';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Monoko oyo etiamaki na $name ( $nativeName ) .';
  }

  @override
  String get surroundings_title => 'Nzinga nzinga & Environnement';

  @override
  String get surroundings_aqi => 'Index ya qualité ya mopepe';

  @override
  String get surroundings_uv => 'Index ya UV';

  @override
  String get surroundings_temp => 'Température ya molunge';

  @override
  String get surroundings_humidity => 'Humidité na yango';

  @override
  String get surroundings_hydration_advice =>
      'Tikala hydraté malamu na ba conditions météorologiques ya lelo.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Luka Bilei';

  @override
  String get food_quick_barcode => 'Scan Code barre 👑';

  @override
  String get food_quick_water => 'Bakisa Mai';

  @override
  String get food_quick_custom => 'Bilei ya momeseno';

  @override
  String get surroundings_good => 'Malamu';

  @override
  String get surroundings_moderate => 'Moderate';

  @override
  String get surroundings_unhealthy => 'Ezali na nzoto kolɔngɔnɔ te';

  @override
  String get notifications_title => 'Mayebisi & Mayebisi';

  @override
  String get notifications_empty => 'Ba notifications ya sika te';

  @override
  String get notifications_mark_read => 'Tyá elembo na Nyonso lokola Kotánga';

  @override
  String get notifications_clear => 'Effacer Nionso';

  @override
  String get reminders => 'Paramètres ya bokundoli';

  @override
  String get notifications => 'Mayebisi';

  @override
  String get reminders_breakfast_title => 'Rappel ya déjeuner 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ntongo malamu! Tango ya déjeuner ya nourriture na $time .';
  }

  @override
  String get reminders_lunch_title => 'Rappel ya midi 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pemá mpe sepela na bilei ya midi oyo ezali na bokatikati, oyo ezali na makanisi malamu na $time .';
  }

  @override
  String get reminders_dinner_title => 'Rappel ya Dinner 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tango ya dinner ya pete, ya kosepelisa na $time .';
  }

  @override
  String get reminders_water_title => 'Nudge ya Hydration 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ntango ya komɛla kɔpɔ ya mai ya sika! ( $time ) Ezali ndenge moko na .';
  }

  @override
  String get reminders_weight_title => 'Kopesa kilo na poso na poso ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bolanda ba metrics ya nzoto na yo ya poso na poso na Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Mopepe ya kolala 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Bopema mpe bomibongisa mpo na mpɔngi ya kopema ( $time ).';
  }

  @override
  String get onboard_welcome => 'Boyei malamu na Bloomi';

  @override
  String get onboard_sub =>
      'Moninga na yo ya boninga, oyo azali na internet te oyo azali liboso ya bokolongono mpe ya bopesi bilei.';

  @override
  String get onboard_get_started => 'Kobanda';

  @override
  String get onboard_sign_in => 'Kokota na site';

  @override
  String get onboard_skip => 'Koleka';

  @override
  String get onboard_choose_goal =>
      'Mokano na yo ya libosoliboso ya kozala na nzoto kolɔngɔnɔ ezali nini?';

  @override
  String get onboard_goal_weight_loss => 'Kokita ya kilo na malɛmbɛ';

  @override
  String get onboard_goal_muscle => 'Gain ya Muscle & Bokasi';

  @override
  String get onboard_goal_energy => 'Énergie & Vitalité ya mokolo na mokolo';

  @override
  String get onboard_goal_habits => 'Kolia na makanisi ya malamu';

  @override
  String get onboard_about_you => 'Yebisa Biso Makambo Na Yo';

  @override
  String get onboard_lifestyle => 'Momeseno na yo ya mokolo na mokolo';

  @override
  String get onboard_permissions_title => 'Ndingisa & Accès na Système';

  @override
  String get onboard_permissions_sub =>
      'Pesa nzela ya kosala ba étapes ya synchronisation, ba entraînements, mpe ba rappels.';

  @override
  String get onboard_plan_ready_title =>
      'Plan na yo ya Personnalisé ezali Prêt!';

  @override
  String get onboard_plan_ready_sub =>
      'Tosalaki feuille de route ya nutrition mpe bien-être ya doux, personnalisé kaka pona bino.';

  @override
  String get onboard_enter_bloomi => 'Kota na Bloomi';

  @override
  String get insights_weekly_report => 'Recap ya Bien-être ya Poso na Poso';

  @override
  String insights_best_day(Object day) {
    return 'Mokolo ya boyokani ya malamu koleka: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones ya kosala';

  @override
  String insights_unlocked_on(Object date) {
    return 'Efungolami na $date .';
  }

  @override
  String get insights_keep_going => 'Bokoba kokende liboso ya kokamwa!';

  @override
  String get widgets_title => 'Widgets ya Écran d\'accueil';

  @override
  String widgets_active_count(Object count) {
    return 'Ba Widgets oyo ezali kosala: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Esika ya bolamu ya nzoto';

  @override
  String get widgets_steps_title => 'Matambe & Bague Actif';

  @override
  String get widgets_water_title => 'Hydration Journal ya mbangu';

  @override
  String get widgets_mascot_title => 'Moninga ya Mascotte ya Bloomi';

  @override
  String get wear_os_title => 'Lata Smartwatch ya OS';

  @override
  String get wear_os_connected => 'Ezali na boyokani na Watch';

  @override
  String get wear_os_sync => 'Sync ba Données ya Watch';

  @override
  String get theme_title => 'Emonani & Motó ya likambo';

  @override
  String get theme_mode => 'Mode ya Thème';

  @override
  String get theme_light => 'Pole';

  @override
  String get theme_dark => 'Molili';

  @override
  String get theme_system => 'Système na ndenge ya liboso';

  @override
  String get theme_background_palette => 'Palette ya fond d\'écran';

  @override
  String get units_title => 'Ba Unités ya Mesure';

  @override
  String get units_metric => 'Métrique (kg, cm, ml) 1.1.';

  @override
  String get units_imperial => 'Impérial (lbs, na, fl oz) .';

  @override
  String get home_unable_load =>
      'Ezali na makoki te ya ko charger tableau de bord';

  @override
  String get home_health_permission_req =>
      'Ndingisa ya Connexion ya Santé esengeli';

  @override
  String get home_health_permission_desc =>
      'Bloomi esengaka ndingisa ya Health Connect mpo na kobenda matambe ya solo, rythme cardiaque, mpe synchronisation ya ba widgets ya ndako ya telefone na tango ya solo.';

  @override
  String get home_allow_health => 'Tika Santé ezala na boyokani';

  @override
  String get home_ready_mindful_day => 'Ozali prêt pona mokolo ya mindful? ✨';

  @override
  String get home_quick_add => 'Bakisa ya mbangu';

  @override
  String get home_live_gps => 'GPS en direct';

  @override
  String get home_calories_remaining_label => 'BA CALORIES EZALI EZALI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Elyami: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Robinet pona Tracker ya Mai 💧';

  @override
  String get home_water_goal_reached =>
      'Mokano ya mokolo na mokolo ekokisami 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml na mokano ya mokolo na mokolo';
  }

  @override
  String get home_details => 'Makambo ya mikemike';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade pona ko débloquer ba cibles ya mokolo na mokolo personnalisés & plan AI';

  @override
  String get home_unlock => 'Débloquer 👑';

  @override
  String get home_quick_log_hint => 'Enregistrer noki entrée ya bien-être';

  @override
  String get food_serving_size => 'Taille ya portion';

  @override
  String get food_serving_grams => 'Kosalela (g) .';

  @override
  String get food_number_servings => 'Motango ya Ba Portions';

  @override
  String get food_calories_per_serving => 'Calories na portion moko';

  @override
  String get food_recipe_ingredients => 'Biloko oyo basalelaka';

  @override
  String get food_recipe_add_ingredient => 'Bobakisa Ingrédient';

  @override
  String get food_recipe_directions => 'Malako & Maloba ya ntina';

  @override
  String get food_recipe_total => 'Total ya Recette Nutrition';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition ya kolia';

  @override
  String get food_recipe_saved_toast =>
      'Bilei ya kosala na kolanda bamposa ya moto ebombami malamu!';

  @override
  String get food_barcode_found => 'Produit Ezwami!';

  @override
  String get food_barcode_not_found_desc =>
      'Tozwaki te code barre oyo na base de données oyo ezali polele. Okoki kobakisa yango lokola bilei oyo basali na kolanda bamposa ya moto.';

  @override
  String get food_add_custom_btn => 'Bakisa Bilei ya Momeseno';

  @override
  String get food_scan_again => 'Scan Lisusu';

  @override
  String get food_review_items => 'Talá lisusu Bilei oyo Bamoni';

  @override
  String get food_review_hint =>
      'Bongisa motuya to longola eloko nyonso oyo oyebi te';

  @override
  String get food_log_selected => 'Log Bilei oyo eponami';

  @override
  String get food_favourites_title => 'Bilei oyo balingaka mingi';

  @override
  String get food_recent_title => 'Bilei oyo euti kosalema kala mingi te';

  @override
  String get food_no_favourites =>
      'Bilei oyo olingaka mingi naino te. Tap motema na biloko nionso ya kolia pona ko sauver awa.';

  @override
  String get food_no_recents => 'Bilei oyo euti kokatama na banzete ezwami te.';

  @override
  String get food_nutrition_details_title =>
      'Détails ya nutrition ya mokolo na mokolo';

  @override
  String get food_macro_protein_label => 'Kopanzana ya Protéine';

  @override
  String get food_macro_carbs_label => 'Bokabwani ya ba carbs';

  @override
  String get food_macro_fat_label => 'Kopanzana ya Mafuta';

  @override
  String get food_macro_fiber_label => 'Kopanzana ya Fibre';

  @override
  String get food_daily_target_comparison => 'Bokokanisi ya cible';

  @override
  String food_target_label(Object target) {
    return 'Cible: $target Ezali na .';
  }

  @override
  String get food_edit_entry => 'Bobongisi Bokoti ya Journal';

  @override
  String get food_delete_entry => 'Bolongola Entrée';

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
    return '$current ya $target ml';
  }

  @override
  String get water_intake_history => 'Ba Logs ya Mai ya lelo';

  @override
  String get water_no_logs_today =>
      'Mai moko te ekangami naino lelo. Hydrater mpe finá bouton ya kobakisa ya mbangu!';

  @override
  String get water_adjust_goal => 'Bongisá Mokano ya Mokolo na Mokolo';

  @override
  String get health_connect_banner => 'Ezali na boyokani na Santé Connect';

  @override
  String get health_vitals_summary => 'Vitals ya Santé ya Mokolo na Mokolo';

  @override
  String get health_latest_heart_rate => 'Kobɛta Motema ya sika';

  @override
  String get health_latest_bp => 'Tansiɔ́ ya makila';

  @override
  String get health_latest_spo2 => 'Oxygène na makila';

  @override
  String get health_latest_glucose => 'Glucose na makila';

  @override
  String get health_latest_weight => 'Kilo ya kilo';

  @override
  String get health_latest_sleep => 'Bolai ya Pongi';

  @override
  String get health_add_manual => 'Bakisa Mesure ya Manuel';

  @override
  String get health_history_trends => 'Tendances ya lisolo ya bato';

  @override
  String get health_sync_success =>
      'Ba données ya santé e synchronisé na succès!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ngonga $mins mins';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilo';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % ya .';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg ya nzoto';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title => 'Ba Appareils Connexés & Ba Wearables';

  @override
  String get health_devices_desc =>
      'Gérer ba smartwatches mibale mibale, ba trackers ya fitness, na ba capteurs ya santé.';

  @override
  String get health_workout_editor_title => 'Edit Entraînement ya kosala';

  @override
  String get health_workout_name_label => 'Kombo ya ngalasisi';

  @override
  String get health_workout_duration_label => 'Bolai (miniti) .';

  @override
  String get health_workout_calories_label => 'Calories oyo ekanisami (kcal) .';

  @override
  String get health_workout_date_label => 'Mokolo mpe Ngonga';

  @override
  String get plan_daily_wellness_roadmap =>
      'Feuille de route na yo personnalisée';

  @override
  String get plan_morning_routine => 'Routine ya tongo';

  @override
  String get plan_afternoon_routine => 'Bien-être ya midi';

  @override
  String get plan_evening_routine => 'Mopepe ya mpokwa-Na nse';

  @override
  String get plan_coach_badge => 'Bloomi Molakisi ya AI';

  @override
  String get plan_weekly_overview => '7-Mikolo ya Bien-être Focus';

  @override
  String get plan_targets_title => 'Bien-être Cibles & Mikano';

  @override
  String get plan_calorie_budget_label =>
      'Budget ya Calories ya mokolo na mokolo';

  @override
  String get plan_water_budget_label => 'Cible ya Mai ya Mokolo na Mokolo';

  @override
  String get plan_step_budget_label => 'Mokano ya Litambe ya Mokolo na Mokolo';

  @override
  String get plan_macro_split_label => 'Ratio ya ba macronutriments';

  @override
  String get profile_personal_details => 'Makambo ya moto ye moko';

  @override
  String get profile_body_stats => 'Ba Mesures ya Nzoto';

  @override
  String get profile_app_preferences => 'Ba préférences & Paramètres ya App';

  @override
  String get profile_edit_name_hint => 'Kombo na yo';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Bolai ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Kilo ya kilo ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Mbula ya mbula';

  @override
  String get profile_gender_male => 'Mobali';

  @override
  String get profile_gender_female => 'Mwasi';

  @override
  String get profile_gender_other => 'Mosusu / Preferer koloba te';

  @override
  String get profile_activity_sedentary =>
      'Kofanda kofanda (Exercice moke to kozanga kosala ngalasisi) .';

  @override
  String get profile_activity_light => 'Active légèrement (1-3 mikolo/poso)';

  @override
  String get profile_activity_moderate =>
      'Moderatement Active (3-5 mikolo/poso)';

  @override
  String get profile_activity_very => 'Très Active (6-7 mikolo/poso)';

  @override
  String get settings_wear_os_header => 'Lata App ya Moninga ya OS';

  @override
  String get settings_wear_os_desc =>
      'Botia carreau ya Bloomi mpe complication na montre na yo ya Wear OS mpo na kotala ba calories, mayi, mpe ba étapes.';

  @override
  String get settings_widgets_header => 'Widgets ya Android interactifs';

  @override
  String get settings_widgets_desc =>
      'Pin ba widgets en temps réel na écran d’accueil ya appareil na yo pona ba mises à jour ya mbala moko.';

  @override
  String get settings_about_header => 'Na ntina na Bloomi';

  @override
  String get settings_about_version => 'Version 1.0.0';

  @override
  String get settings_about_build => 'Tongela bato 100';

  @override
  String get settings_about_credits =>
      'Esalemi na bokebi mpo na bomoi ya makanisi, ya nzoto kolɔngɔnɔ.';

  @override
  String get settings_terms_header => 'Mibeko mpe Makambo';

  @override
  String get settings_privacy_header =>
      'Politiki ya kobatela makambo ya moto ye moko';

  @override
  String get settings_delete_header => 'Bolongola Compte & Ba Données';

  @override
  String get settings_delete_warning =>
      'Action oyo ekoki kozongisama sima te. Bilei na yo nyonso, ngalasisi na yo, ba vitals, mpe profil na yo ekolongolama mpo na libela.';

  @override
  String get settings_delete_confirm_btn => 'Bolongola mpo na libela';

  @override
  String get onboard_welcome_headline => 'Boyei malamu na Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Douce, mindful wellness tracking oyo ebongisami zingazinga ya bomoi na yo.';

  @override
  String get onboard_step_about => 'Na ntina na Yo';

  @override
  String get onboard_step_goals => 'Mikano na Yo';

  @override
  String get onboard_step_lifestyle => 'Mimeseno ya mokolo na mokolo';

  @override
  String get onboard_step_permissions => 'Ndingisa oyo epesami';

  @override
  String get onboard_step_plan => 'Prêt!';

  @override
  String get onboard_health_connect_perm => 'Accès ya Connexion ya Santé';

  @override
  String get onboard_step_sensors_perm => 'Capteur ya Compteur ya Etape';

  @override
  String get onboard_notif_perm => 'Makundoli & Mayebisi ya makanisi';

  @override
  String get onboard_camera_perm =>
      'Caméra (Scanner ya code barre & Biloko ya kolia)';

  @override
  String get onboard_grant_permissions => 'Kopesa Ndingisa';

  @override
  String get onboard_continue_dashboard => 'Fungola Tableau de bord';

  @override
  String get notif_channel_hydration_name => 'Ba Nudges ya Hydration';

  @override
  String get notif_channel_hydration_desc =>
      'Makundoli ya mai ya malembe na boumeli ya mokolo mobimba';

  @override
  String get notif_channel_nutrition_name => 'Makundoli ya Bilei & Bolei';

  @override
  String get notif_channel_nutrition_desc =>
      'Makebi ya makundoli ya bilei ya ntongo, ya midi, mpe ya mpokwa';

  @override
  String get notif_channel_steps_name => 'Milestones ya Etape';

  @override
  String get notif_channel_steps_desc =>
      'Ba fêtes tango ekokisaka ba objectifs ya étape ya mokolo na mokolo';

  @override
  String get notif_channel_vitals_name => 'Ba Vérifications ya Santé & Vitales';

  @override
  String get notif_channel_vitals_desc =>
      'Kilo mpe makundoli ya mopepe-na nse liboso ya kolala';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Kolala mpɔngi 15m';

  @override
  String get notif_action_log_meal => '🥗 Bilei ya Mabaya';

  @override
  String get language => 'Monoko';

  @override
  String get share => 'Bokabola';

  @override
  String common_days(Object count) {
    return '$count d eleki';
  }
}
