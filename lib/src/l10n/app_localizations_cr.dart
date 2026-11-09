// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cree (`cr`).
class AppLocalizationsCr extends AppLocalizations {
  AppLocalizationsCr([String locale = 'cr']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Accueil';

  @override
  String get nav_today => 'Aujourd\'hui';

  @override
  String get nav_plan => 'Planifier';

  @override
  String get nav_food => 'Nourriture';

  @override
  String get nav_food_diary => 'Journal alimentaire';

  @override
  String get nav_workout => 'Journal d\'entraînement';

  @override
  String get nav_health => 'Santé';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Enregistrer';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Modifier';

  @override
  String get done => 'Terminé';

  @override
  String get close => 'Fermer';

  @override
  String get back => 'Retour';

  @override
  String get next => 'Suivant';

  @override
  String get continue_btn => 'Continuer';

  @override
  String get confirm => 'Confirmer';

  @override
  String get search => 'Rechercher';

  @override
  String get filter => 'Filtrer';

  @override
  String get all => 'Tout';

  @override
  String get active => 'Actif';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get yesterday => 'Hier';

  @override
  String get tomorrow => 'Demain';

  @override
  String get add => 'Ajouter';

  @override
  String get remove => 'Supprimer';

  @override
  String get refresh => 'Actualiser';

  @override
  String get retry => 'Réessayer';

  @override
  String get error => 'Erreur';

  @override
  String get success => 'Succès';

  @override
  String get loading => 'Chargement...';

  @override
  String get no_data => 'Aucune donnée disponible';

  @override
  String get offline => 'Mode hors ligne';

  @override
  String get offline_sub =>
      'Les modifications seront synchronisées une fois reconnecté';

  @override
  String get undo => 'Annuler';

  @override
  String get portion => 'Portion';

  @override
  String get quantity => 'Quantité';

  @override
  String get unit => 'Unité';

  @override
  String get clear => 'Effacer';

  @override
  String get select => 'Sélectionnez';

  @override
  String get apply => 'Postuler';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get ok => 'D\'accord';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get optional => 'Facultatif';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Protéine';

  @override
  String get carbs => 'Glucides';

  @override
  String get fat => 'Graisse';

  @override
  String get fiber => 'Fibre';

  @override
  String get water => 'Eau';

  @override
  String get steps => 'Étapes';

  @override
  String get kcal => 'kilocalories';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kilos';

  @override
  String get pounds => 'livres';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'dans';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'heures';

  @override
  String get minutes => 'minutes';

  @override
  String get serving => 'Servir';

  @override
  String get servings => 'Portions';

  @override
  String get serving_size => 'Portion';

  @override
  String get per_100g => 'pour 100g';

  @override
  String get india => 'Inde';

  @override
  String get asia => 'Asie';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Moyen-Orient';

  @override
  String get africa => 'Afrique';

  @override
  String get americas => 'Amériques';

  @override
  String get home_title => 'Accueil';

  @override
  String get home_greeting_morning => 'Bonjour';

  @override
  String get home_greeting_afternoon => 'Bon après-midi';

  @override
  String get home_greeting_evening => 'Bonsoir';

  @override
  String get home_streak_title => 'Strie de fleurs';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' $count jours consécutifs',
      one: '1 day streak',
      zero: '0 days streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Brûlé';

  @override
  String get home_calories_budget => 'Bilan calorique';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal restantes';
  }

  @override
  String get home_water_title => 'Hydratation quotidienne';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pas parcourus';

  @override
  String get home_quick_actions => 'Actions rapides';

  @override
  String get home_log_meal => 'Repas en bûche';

  @override
  String get home_log_water => 'Bûche d\'eau';

  @override
  String get home_log_workout => 'Journal d\'entraînement';

  @override
  String get home_log_weight => 'Poids du journal';

  @override
  String get home_insights_title => 'Les perspectives d\'aujourd\'hui';

  @override
  String get home_quote =>
      'De petits choix sains créent des transformations épanouies.';

  @override
  String get home_ai_coach_tip => 'Bloomi IA Coach';

  @override
  String get home_surroundings => 'Environnement et air';

  @override
  String get home_notifications => 'Notifications';

  @override
  String get home_daily_score => 'Score de bien-être quotidien';

  @override
  String get home_view_all => 'Tout afficher';

  @override
  String get food_diary_title => 'Journal alimentaire';

  @override
  String get food_breakfast => 'Petit-déjeuner';

  @override
  String get food_lunch => 'Déjeuner';

  @override
  String get food_dinner => 'Dîner';

  @override
  String get food_snacks => 'Collations';

  @override
  String get food_add_food => 'Ajouter de la nourriture';

  @override
  String get food_edit_food => 'Modifier la nourriture';

  @override
  String get food_add_breakfast => 'Ajouter le petit-déjeuner';

  @override
  String get food_add_lunch => 'Ajouter un déjeuner';

  @override
  String get food_add_dinner => 'Ajouter un dîner';

  @override
  String get food_add_snack => 'Ajouter une collation';

  @override
  String get food_total_calories => 'Calories totales';

  @override
  String get food_empty_meal =>
      'Aucun aliment enregistré pour ce repas pour le moment';

  @override
  String get food_empty_diary => 'Aucun repas enregistré pour cette journée';

  @override
  String get food_log_first_meal =>
      'Appuyez sur + pour enregistrer votre premier délicieux repas';

  @override
  String get food_quick_add => 'Ajout rapide';

  @override
  String get food_search_hint => 'Rechercher des plats, fruits, dal, roti...';

  @override
  String get food_custom_recipe => 'Nourriture et recette personnalisées';

  @override
  String get food_scan_barcode => 'Scanner le code-barres';

  @override
  String get food_camera_scan => 'Scanner alimentaire IA';

  @override
  String get food_recent => 'Aliments récents';

  @override
  String get food_favourites => 'Favoris';

  @override
  String get food_macro_summary => 'Répartition des macronutriments';

  @override
  String get food_delete_meal_confirm =>
      'Êtes-vous sûr de vouloir supprimer cet élément ?';

  @override
  String get food_item_deleted => 'Aliment supprimé';

  @override
  String get food_remaining => 'restant';

  @override
  String get food_consumed => 'consommé';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Rechercher des aliments';

  @override
  String get foodSearch_scan_barcode => 'Scanner le code-barres';

  @override
  String get foodSearch_take_photo => 'Prendre une photo de nourriture';

  @override
  String get foodSearch_custom_food => 'Créer des aliments personnalisés';

  @override
  String get foodSearch_recent_searches => 'Recherches récentes';

  @override
  String get foodSearch_popular => 'Plats populaires';

  @override
  String get foodSearch_no_results =>
      'Aucun aliment correspondant à votre recherche';

  @override
  String get barcode_title => 'Lecteur de codes à barres';

  @override
  String get barcode_align =>
      'Alignez le code-barres à l\'intérieur du cadre de la caméra';

  @override
  String get barcode_not_found => 'Produit introuvable dans la base de données';

  @override
  String get barcode_premium_feature =>
      'La numérisation de codes-barres est disponible avec Bloomi Pro';

  @override
  String get camera_title => 'Scanner alimentaire IA';

  @override
  String get camera_tap_hint => 'Prenez une photo claire de votre plat';

  @override
  String get camera_analysing => 'Analyser une assiette de nourriture...';

  @override
  String get camera_detected => 'Éléments détectés';

  @override
  String get camera_flash => 'Basculer le flash';

  @override
  String get camera_retake => 'Reprendre la photo';

  @override
  String get camera_confirm_food => 'Confirmer les articles';

  @override
  String get customFood_title => 'Nourriture et recette personnalisées';

  @override
  String get customFood_name_hint => 'Nom du plat ou de l\'ingrédient';

  @override
  String get customFood_calories_hint => 'Calories (kcal)';

  @override
  String get customFood_protein_hint => 'Protéine (g)';

  @override
  String get customFood_carbs_hint => 'Glucides (g)';

  @override
  String get customFood_fat_hint => 'Graisse (g)';

  @override
  String get customFood_save => 'Enregistrer la recette';

  @override
  String get water_tracker_title => 'Traqueur d\'eau';

  @override
  String get water_daily_target => 'Objectif d\'hydratation quotidien';

  @override
  String get water_logged_today => 'Connecté aujourd\'hui';

  @override
  String get water_add_glass => '+250 ml de verre';

  @override
  String get water_add_bottle => '+Bouteille de 500 ml';

  @override
  String get water_custom_amount => 'Montant personnalisé';

  @override
  String get water_reminder_tip =>
      'Buvez de l\'eau régulièrement tout au long de la journée pour une énergie constante.';

  @override
  String water_logged_toast(Object amount) {
    return 'J\'ai enregistré $amount ml d\'eau 💧';
  }

  @override
  String get workout_title => 'Journal d\'entraînement';

  @override
  String get workout_add_exercise => 'Ajouter un entraînement';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Force';

  @override
  String get workout_yoga => 'Yoga et flexibilité';

  @override
  String get workout_duration => 'Durée';

  @override
  String get workout_intensity => 'Intensité';

  @override
  String get workout_calories_burned => 'Calories brûlées';

  @override
  String get workout_empty =>
      'Aucune séance d\'entraînement enregistrée aujourd\'hui';

  @override
  String get workout_save_success => 'Entraînement enregistré avec succès !';

  @override
  String get workout_type => 'Type d\'entraînement';

  @override
  String get workout_notes => 'Notes et réflexions';

  @override
  String get health_overview_title => 'Santé et signes vitaux';

  @override
  String get health_heart_rate => 'Fréquence cardiaque';

  @override
  String get health_blood_oxygen => 'Oxygène sanguin (SpO2)';

  @override
  String get health_blood_pressure => 'Pression artérielle';

  @override
  String get health_blood_glucose => 'Glycémie';

  @override
  String get health_body_temperature => 'Température corporelle';

  @override
  String get health_sleep_tracking => 'Suivi du sommeil';

  @override
  String get health_weight_tracking => 'Poids et composition corporelle';

  @override
  String get health_waist_hip => 'Rapport taille/hanche';

  @override
  String get health_devices_hub => 'Hub appareils et montres intelligentes';

  @override
  String get health_sync_now => 'Synchroniser les données de santé';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Dernière synchronisation : $time';
  }

  @override
  String get health_manual_entry => 'Saisie manuelle de l\'état de santé';

  @override
  String get health_metric_detail => 'Détails des mesures';

  @override
  String get health_connected_sensors => 'Capteurs de santé connectés';

  @override
  String get plan_title => 'Plan quotidien';

  @override
  String get plan_weekly_title => 'Plan de bien-être hebdomadaire';

  @override
  String get plan_calorie_target => 'Objectif calorique';

  @override
  String get plan_water_target => 'Cible d\'hydratation';

  @override
  String get plan_step_target => 'Cible de pas';

  @override
  String get plan_sleep_target => 'Objectif de sommeil';

  @override
  String get plan_meal_suggestions => 'Suggestions de repas';

  @override
  String get plan_healthy_habits => 'Habitudes saines et conseils';

  @override
  String get plan_coach_advice => 'Recommandations du coach Bloomi AI';

  @override
  String get plan_generated_title => 'Programme quotidien personnalisé';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Modifier le profil';

  @override
  String get profile_name => 'Nom';

  @override
  String get profile_age => 'Âge';

  @override
  String get profile_gender => 'Sexe';

  @override
  String get profile_height => 'Hauteur';

  @override
  String get profile_weight => 'Poids';

  @override
  String get profile_goal => 'Objectif principal';

  @override
  String get profile_activity_level => 'Niveau d\'activité';

  @override
  String get profile_stats => 'Mes statistiques de bien-être';

  @override
  String get profile_saved => 'Profil mis à jour avec succès';

  @override
  String get profile_bmi => 'Indice de masse corporelle (IMC)';

  @override
  String get profile_membership => 'Adhésion';

  @override
  String get settings => 'Paramètres';

  @override
  String get preferences_habits => 'PRÉFÉRENCES ET HABITUDES';

  @override
  String get appearance_theme => 'Apparence et thème';

  @override
  String get appearance_theme_sub =>
      'Options d\'arrière-plan sombre, clair, mode système et application';

  @override
  String get permissions => 'Autorisations et accès au système';

  @override
  String get permissions_sub =>
      'Health Connect, capteurs de pas, GPS, notifications et appareil photo';

  @override
  String get reminders_notifications => 'Rappels et notifications';

  @override
  String get reminders_sub =>
      'Heures de repas, eau, enregistrement du poids et rappels de l\'heure du coucher';

  @override
  String get units_of_measurement => 'Unités de mesure';

  @override
  String get units_sub =>
      'Métrique (kg, cm, ml, km) ou impérial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Langue de l\'application';

  @override
  String get language_sub =>
      'Anglais, हिन्दी (hindi), hinglish et plus de 195 langues mondiales';

  @override
  String get home_screen_widgets => 'Widgets de l\'écran d\'accueil';

  @override
  String get widgets_sub =>
      'Widgets Android en direct : Hub, Étapes, Eau, Nutrition et Mascotte';

  @override
  String get wear_os_watch_app => 'Porter l’application OS Watch';

  @override
  String get wear_os_sub =>
      'Compagnon Smartwatch, tuiles, complications et signes vitaux en direct';

  @override
  String get goals_wellness => 'OBJECTIFS ET APERÇUS DU BIEN-ÊTRE';

  @override
  String get nutrition_targets =>
      'Objectifs nutritionnels et répartition macro';

  @override
  String get nutrition_targets_sub =>
      'Objectif calorique, objectif protéines, glucides, graisses et eau';

  @override
  String get weekly_recap => 'Récapitulatif hebdomadaire du bien-être';

  @override
  String get weekly_recap_sub =>
      'Moyenne calorique sur 7 jours, ratio macro et meilleur jour';

  @override
  String get streaks_milestones => 'Séries et jalons';

  @override
  String get streaks_sub => 'Stries de fleurs actives, badges et réalisations';

  @override
  String get connected_devices => 'APPAREILS CONNECTÉS & ÉCOSYSTÈME';

  @override
  String get devices_hub => 'Hub appareils et montres intelligentes';

  @override
  String get devices_hub_sub =>
      'Santé Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Environs et météo';

  @override
  String get surroundings_sub =>
      'Qualité de l\'air (IQA), indice UV et conseils d\'hydratation météo';

  @override
  String get bloomi_pro => 'Abonnement Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets sur l\'écran d\'accueil et suivi des signes vitaux';

  @override
  String get about_security => 'À PROPOS ET SÉCURITÉ';

  @override
  String get about_bloomi => 'À propos de Bloomi';

  @override
  String get about_bloomi_sub =>
      'Spécifications du build, version, attributions';

  @override
  String get privacy_policy => 'Politique de confidentialité';

  @override
  String get privacy_policy_sub =>
      'Architecture de données hors ligne d\'abord sur l\'appareil';

  @override
  String get terms_conditions => 'Conditions générales';

  @override
  String get terms_conditions_sub =>
      'Conditions d’utilisation et directives de bien-être';

  @override
  String get delete_account => 'Supprimer le compte et les données';

  @override
  String get delete_account_sub =>
      'Effacer de manière irréversible les données SQLite locales et les sauvegardes cloud';

  @override
  String get healthy_habits =>
      'Adoptez des habitudes de bien-être douces et durables';

  @override
  String get all_logs => 'Mes données et journaux suivis';

  @override
  String get search_language => 'Recherche par langue ou écriture native...';

  @override
  String get languages_available => 'Langues disponibles';

  @override
  String get no_matching_languages => 'Aucune langue correspondante trouvée';

  @override
  String get try_searching =>
      'Essayez de rechercher par écriture native ou par orthographe anglaise.';

  @override
  String get partially_translated => 'Partiellement traduit';

  @override
  String get complete_translation => 'Terminé';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Langue définie sur $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Environs et environnement';

  @override
  String get surroundings_aqi => 'Indice de qualité de l\'air';

  @override
  String get surroundings_uv => 'Indice UV';

  @override
  String get surroundings_temp => 'Température';

  @override
  String get surroundings_humidity => 'Humidité';

  @override
  String get surroundings_hydration_advice =>
      'Restez bien hydraté dans les conditions météorologiques actuelles.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Rechercher de la nourriture';

  @override
  String get food_quick_barcode => 'Scanner le code-barres 👑';

  @override
  String get food_quick_water => 'Ajouter de l\'eau';

  @override
  String get food_quick_custom => 'Nourriture personnalisée';

  @override
  String get surroundings_good => 'Bon';

  @override
  String get surroundings_moderate => 'Modéré';

  @override
  String get surroundings_unhealthy => 'Malsain';

  @override
  String get notifications_title => 'Notifications et alertes';

  @override
  String get notifications_empty => 'Aucune nouvelle notification';

  @override
  String get notifications_mark_read => 'Marquer tout comme lu';

  @override
  String get notifications_clear => 'Tout effacer';

  @override
  String get reminders => 'Paramètres de rappel';

  @override
  String get notifications => 'Notifications';

  @override
  String get reminders_breakfast_title => 'Rappel du petit-déjeuner 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bonjour ! C\'est l\'heure d\'un petit-déjeuner nourrissant à $time .';
  }

  @override
  String get reminders_lunch_title => 'Rappel du déjeuner 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Faites une pause et savourez un déjeuner équilibré et conscient au $time .';
  }

  @override
  String get reminders_dinner_title => 'Rappel du dîner 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'C\'est l\'heure d\'un dîner léger et satisfaisant au $time .';
  }

  @override
  String get reminders_water_title => 'Coup de pouce hydratation 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Il est temps de boire un verre d\'eau fraîche ! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Pesée hebdomadaire ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Suivez vos mesures corporelles hebdomadaires sur Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Détente à l\'heure du coucher 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Détendez-vous et préparez-vous à un sommeil réparateur ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bienvenue chez Bloomi';

  @override
  String get onboard_sub =>
      'Votre compagnon convivial et hors ligne en matière de santé et de nutrition.';

  @override
  String get onboard_get_started => 'Commencer';

  @override
  String get onboard_sign_in => 'Connectez-vous';

  @override
  String get onboard_skip => 'Sauter';

  @override
  String get onboard_choose_goal =>
      'Quel est votre principal objectif de bien-être ?';

  @override
  String get onboard_goal_weight_loss => 'Perte de poids en douceur';

  @override
  String get onboard_goal_muscle => 'Gain musculaire et force';

  @override
  String get onboard_goal_energy => 'Énergie et vitalité quotidiennes';

  @override
  String get onboard_goal_habits => 'Alimentation saine et consciente';

  @override
  String get onboard_about_you => 'Parlez-nous de vous';

  @override
  String get onboard_lifestyle => 'Votre routine quotidienne';

  @override
  String get onboard_permissions_title => 'Autorisations et accès au système';

  @override
  String get onboard_permissions_sub =>
      'Accordez l\'accès aux étapes de synchronisation, aux entraînements et aux rappels.';

  @override
  String get onboard_plan_ready_title =>
      'Votre forfait personnalisé est prêt !';

  @override
  String get onboard_plan_ready_sub =>
      'Nous avons élaboré pour vous une feuille de route douce et personnalisée en matière de nutrition et de bien-être.';

  @override
  String get onboard_enter_bloomi => 'Entrez Bloomi';

  @override
  String get insights_weekly_report =>
      'Récapitulatif hebdomadaire du bien-être';

  @override
  String insights_best_day(Object day) {
    return 'Jour de meilleure cohérence : $day';
  }

  @override
  String get insights_streaks_badges => 'Séries et jalons';

  @override
  String insights_unlocked_on(Object date) {
    return 'Débloqué le $date';
  }

  @override
  String get insights_keep_going => 'Continuez vos progrès fantastiques !';

  @override
  String get widgets_title => 'Widgets de l\'écran d\'accueil';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets actifs : $count';
  }

  @override
  String get widgets_hub_title => 'Centre de bien-être Bloomi';

  @override
  String get widgets_steps_title => 'Marches et anneau actif';

  @override
  String get widgets_water_title => 'Journal rapide d\'hydratation';

  @override
  String get widgets_mascot_title => 'Compagnon mascotte Bloomi';

  @override
  String get wear_os_title =>
      'Portez une montre intelligente avec système d\'exploitation';

  @override
  String get wear_os_connected => 'Connecté à la montre';

  @override
  String get wear_os_sync => 'Synchroniser les données de la montre';

  @override
  String get theme_title => 'Apparence et thème';

  @override
  String get theme_mode => 'Mode Thème';

  @override
  String get theme_light => 'Lumière';

  @override
  String get theme_dark => 'Sombre';

  @override
  String get theme_system => 'Système par défaut';

  @override
  String get theme_background_palette => 'Palette d\'arrière-plan';

  @override
  String get units_title => 'Unités de mesure';

  @override
  String get units_metric => 'Métrique (kg, cm, ml)';

  @override
  String get units_imperial => 'Impérial (lbs, po, fl oz)';

  @override
  String get home_unable_load => 'Impossible de charger le tableau de bord';

  @override
  String get home_health_permission_req =>
      'Autorisation Health Connect requise';

  @override
  String get home_health_permission_desc =>
      'Bloomi nécessite l\'autorisation de Health Connect pour obtenir des pas réels, la fréquence cardiaque et synchroniser les widgets de la maison mobile en temps réel.';

  @override
  String get home_allow_health => 'Autoriser Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Prêt pour une journée en pleine conscience ? ✨';

  @override
  String get home_quick_add => 'Ajout rapide';

  @override
  String get home_live_gps => 'GPS en direct';

  @override
  String get home_calories_remaining_label => 'CALORIES RESTANTES';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Consommé : $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Appuyez pour le suivi de l\'eau 💧';

  @override
  String get home_water_goal_reached => 'Objectif quotidien atteint 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml jusqu\'à l\'objectif quotidien';
  }

  @override
  String get home_details => 'Détails';

  @override
  String get home_upgrade_plan_desc =>
      'Mettez à niveau pour débloquer des objectifs quotidiens personnalisés et un plan d\'IA';

  @override
  String get home_unlock => 'Débloquez 👑';

  @override
  String get home_quick_log_hint =>
      'Enregistrez rapidement une entrée de bien-être';

  @override
  String get food_serving_size => 'Portion';

  @override
  String get food_serving_grams => 'Portion (g)';

  @override
  String get food_number_servings => 'Nombre de portions';

  @override
  String get food_calories_per_serving => 'Calories par portion';

  @override
  String get food_recipe_ingredients => 'Ingrédients';

  @override
  String get food_recipe_add_ingredient => 'Ajouter un ingrédient';

  @override
  String get food_recipe_directions => 'Instructions et remarques';

  @override
  String get food_recipe_total => 'Nutrition totale de la recette';

  @override
  String get food_recipe_per_serving => 'Nutrition par portion';

  @override
  String get food_recipe_saved_toast =>
      'Nourriture personnalisée enregistrée avec succès !';

  @override
  String get food_barcode_found => 'Produit trouvé !';

  @override
  String get food_barcode_not_found_desc =>
      'Nous n\'avons pas pu trouver ce code-barres dans la base de données ouverte. Vous pouvez l\'ajouter comme aliment personnalisé.';

  @override
  String get food_add_custom_btn => 'Ajouter de la nourriture personnalisée';

  @override
  String get food_scan_again => 'Scanner à nouveau';

  @override
  String get food_review_items => 'Examiner les aliments détectés';

  @override
  String get food_review_hint =>
      'Ajustez les quantités ou supprimez tout article non reconnu';

  @override
  String get food_log_selected => 'Enregistrer les aliments sélectionnés';

  @override
  String get food_favourites_title => 'Aliments préférés';

  @override
  String get food_recent_title => 'Aliments récents';

  @override
  String get food_no_favourites =>
      'Aucun aliment préféré pour l\'instant. Appuyez sur le cœur de n\'importe quel aliment pour l\'enregistrer ici.';

  @override
  String get food_no_recents =>
      'Aucun aliment récemment enregistré n\'a été trouvé.';

  @override
  String get food_nutrition_details_title => 'Détails nutritionnels quotidiens';

  @override
  String get food_macro_protein_label => 'Répartition des protéines';

  @override
  String get food_macro_carbs_label => 'Répartition des glucides';

  @override
  String get food_macro_fat_label => 'Répartition des graisses';

  @override
  String get food_macro_fiber_label => 'Répartition des fibres';

  @override
  String get food_daily_target_comparison => 'Comparaison cible';

  @override
  String food_target_label(Object target) {
    return 'Cible : $target';
  }

  @override
  String get food_edit_entry => 'Modifier une entrée de journal';

  @override
  String get food_delete_entry => 'Supprimer l\'entrée';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
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
  String get water_intake_history => 'Journaux d\'eau d\'aujourd\'hui';

  @override
  String get water_no_logs_today =>
      'Pas encore d\'eau enregistrée aujourd\'hui. Hydratez-vous et appuyez sur un bouton d\'ajout rapide !';

  @override
  String get water_adjust_goal => 'Ajuster l\'objectif quotidien';

  @override
  String get health_connect_banner => 'Connecté à Connexion Santé';

  @override
  String get health_vitals_summary => 'Vitalité de santé quotidienne';

  @override
  String get health_latest_heart_rate => 'Dernière fréquence cardiaque';

  @override
  String get health_latest_bp => 'Pression artérielle';

  @override
  String get health_latest_spo2 => 'Oxygène sanguin';

  @override
  String get health_latest_glucose => 'Glycémie';

  @override
  String get health_latest_weight => 'Poids';

  @override
  String get health_latest_sleep => 'Durée du sommeil';

  @override
  String get health_add_manual => 'Ajouter une mesure manuelle';

  @override
  String get health_history_trends => 'Tendances historiques';

  @override
  String get health_sync_success =>
      'Données de santé synchronisées avec succès !';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours heures $mins minutes';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '${val}kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title => 'Appareils connectés et wearables';

  @override
  String get health_devices_desc =>
      'Gérez les montres intelligentes, les trackers de fitness et les capteurs de santé couplés.';

  @override
  String get health_workout_editor_title => 'Modifier l\'entraînement';

  @override
  String get health_workout_name_label => 'Nom de l\'entraînement';

  @override
  String get health_workout_duration_label => 'Durée (minutes)';

  @override
  String get health_workout_calories_label => 'Calories estimées (kcal)';

  @override
  String get health_workout_date_label => 'Date et heure';

  @override
  String get plan_daily_wellness_roadmap =>
      'Votre feuille de route personnalisée';

  @override
  String get plan_morning_routine => 'Routine du matin';

  @override
  String get plan_afternoon_routine => 'Bien-être à midi';

  @override
  String get plan_evening_routine => 'Soirée de détente';

  @override
  String get plan_coach_badge => 'Bloomi IA Coach';

  @override
  String get plan_weekly_overview => 'Focus bien-être de 7 jours';

  @override
  String get plan_targets_title => 'Cibles et objectifs de bien-être';

  @override
  String get plan_calorie_budget_label => 'Budget calorique quotidien';

  @override
  String get plan_water_budget_label => 'Objectif d\'eau quotidien';

  @override
  String get plan_step_budget_label => 'Objectif de pas quotidien';

  @override
  String get plan_macro_split_label => 'Ratio de macronutriments';

  @override
  String get profile_personal_details => 'Détails personnels';

  @override
  String get profile_body_stats => 'Mesures du corps';

  @override
  String get profile_app_preferences =>
      'Préférences et paramètres de l\'application';

  @override
  String get profile_edit_name_hint => 'Votre nom';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Taille ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Poids ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Âge';

  @override
  String get profile_gender_male => 'Mâle';

  @override
  String get profile_gender_female => 'Femme';

  @override
  String get profile_gender_other => 'Autre / Je préfère ne pas le dire';

  @override
  String get profile_activity_sedentary =>
      'Sédentaire (peu ou pas d\'exercice)';

  @override
  String get profile_activity_light => 'Légèrement actif (1 à 3 jours/semaine)';

  @override
  String get profile_activity_moderate =>
      'Modérément actif (3 à 5 jours/semaine)';

  @override
  String get profile_activity_very => 'Très actif (6-7 jours/semaine)';

  @override
  String get settings_wear_os_header => 'Application Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Installez la vignette Bloomi et la complication sur votre montre Wear OS pour consulter les calories, l\'eau et les pas.';

  @override
  String get settings_widgets_header => 'Widgets Android interactifs';

  @override
  String get settings_widgets_desc =>
      'Épinglez des widgets en temps réel sur l\'écran d\'accueil de votre appareil pour des mises à jour instantanées.';

  @override
  String get settings_about_header => 'À propos de Bloomi';

  @override
  String get settings_about_version => 'Version 1.0.0';

  @override
  String get settings_about_build => 'Construire 100';

  @override
  String get settings_about_credits =>
      'Fabriqué avec soin pour une vie saine et consciente.';

  @override
  String get settings_terms_header => 'Conditions générales';

  @override
  String get settings_privacy_header => 'Politique de confidentialité';

  @override
  String get settings_delete_header => 'Supprimer le compte et les données';

  @override
  String get settings_delete_warning =>
      'Cette action ne peut pas être annulée. Tous vos repas, entraînements, signes vitaux et profil seront définitivement supprimés.';

  @override
  String get settings_delete_confirm_btn => 'Supprimer définitivement';

  @override
  String get onboard_welcome_headline => 'Bienvenue chez Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Un suivi de bien-être doux et attentif conçu autour de votre vie.';

  @override
  String get onboard_step_about => 'À propos de vous';

  @override
  String get onboard_step_goals => 'Vos objectifs';

  @override
  String get onboard_step_lifestyle => 'Habitudes quotidiennes';

  @override
  String get onboard_step_permissions => 'Autorisations';

  @override
  String get onboard_step_plan => 'Prêt !';

  @override
  String get onboard_health_connect_perm => 'Accès Connexion Santé';

  @override
  String get onboard_step_sensors_perm => 'Capteur de compteur de pas';

  @override
  String get onboard_notif_perm => 'Rappels et notifications attentifs';

  @override
  String get onboard_camera_perm =>
      'Caméra (code-barres et scanner alimentaire)';

  @override
  String get onboard_grant_permissions => 'Accorder des autorisations';

  @override
  String get onboard_continue_dashboard => 'Ouvrir le tableau de bord';

  @override
  String get notif_channel_hydration_name => 'Coups de pouce d’hydratation';

  @override
  String get notif_channel_hydration_desc =>
      'Des rappels d\'eau doux tout au long de la journée';

  @override
  String get notif_channel_nutrition_name => 'Rappels de repas et de nutrition';

  @override
  String get notif_channel_nutrition_desc =>
      'Alertes de rappel pour le petit-déjeuner, le déjeuner et le dîner';

  @override
  String get notif_channel_steps_name => 'Étapes jalons';

  @override
  String get notif_channel_steps_desc =>
      'Célébrations lorsque vous atteignez les objectifs de pas quotidiens';

  @override
  String get notif_channel_vitals_name =>
      'Contrôles de santé et de signes vitaux';

  @override
  String get notif_channel_vitals_desc =>
      'Rappels de poids et d\'heure de coucher';

  @override
  String get notif_action_log_water => '💧 Bûche +250ml';

  @override
  String get notif_action_snooze => 'Répéter 15 minutes';

  @override
  String get notif_action_log_meal => '🥗 Repas en bûche';

  @override
  String get language => 'Langue';

  @override
  String get share => 'Partager';

  @override
  String common_days(Object count) {
    return 'il y a $count j';
  }
}
