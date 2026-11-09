// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Zuhause';

  @override
  String get nav_today => 'Heute';

  @override
  String get nav_plan => 'Planen';

  @override
  String get nav_food => 'Essen';

  @override
  String get nav_food_diary => 'Ernährungstagebuch';

  @override
  String get nav_workout => 'Trainingsprotokoll';

  @override
  String get nav_health => 'Gesundheit';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Speichern';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get done => 'Fertig';

  @override
  String get close => 'Schließen';

  @override
  String get back => 'Zurück';

  @override
  String get next => 'Als nächstes';

  @override
  String get continue_btn => 'Weiter';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get search => 'Suchen';

  @override
  String get filter => 'Filtern';

  @override
  String get all => 'Alle';

  @override
  String get active => 'Aktiv';

  @override
  String get today => 'Heute';

  @override
  String get yesterday => 'Gestern';

  @override
  String get tomorrow => 'Morgen';

  @override
  String get add => 'Hinzufügen';

  @override
  String get remove => 'Entfernen';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get retry => 'Versuchen Sie es noch einmal';

  @override
  String get error => 'Fehler';

  @override
  String get success => 'Erfolg';

  @override
  String get loading => 'Laden...';

  @override
  String get no_data => 'Keine Daten verfügbar';

  @override
  String get offline => 'Offline-Modus';

  @override
  String get offline_sub =>
      'Änderungen werden synchronisiert, sobald die Verbindung wiederhergestellt ist';

  @override
  String get undo => 'Rückgängig';

  @override
  String get portion => 'Portion';

  @override
  String get quantity => 'Menge';

  @override
  String get unit => 'Einheit';

  @override
  String get clear => 'Klar';

  @override
  String get select => 'Auswählen';

  @override
  String get apply => 'Anwenden';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get ok => 'Okay';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get optional => 'Optional';

  @override
  String get calories => 'Kalorien';

  @override
  String get protein => 'Eiweiß';

  @override
  String get carbs => 'Kohlenhydrate';

  @override
  String get fat => 'Fett';

  @override
  String get fiber => 'Faser';

  @override
  String get water => 'Wasser';

  @override
  String get steps => 'Schritte';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'Pfund';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'Std';

  @override
  String get minutes => 'Min';

  @override
  String get serving => 'Servieren';

  @override
  String get servings => 'Portionen';

  @override
  String get serving_size => 'Portionsgröße';

  @override
  String get per_100g => 'pro 100g';

  @override
  String get india => 'Indien';

  @override
  String get asia => 'Asien';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Naher Osten';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Zuhause';

  @override
  String get home_greeting_morning => 'Guten Morgen';

  @override
  String get home_greeting_afternoon => 'Guten Tag';

  @override
  String get home_greeting_evening => 'Guten Abend';

  @override
  String get home_streak_title => 'Blütenstreifen';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage Streak',
      one: '1 Tag Streak',
      zero: '0-Tage-Strecke',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Verbrannt';

  @override
  String get home_calories_budget => 'Kalorienbudget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal verbleibend';
  }

  @override
  String get home_water_title => 'Tägliche Flüssigkeitszufuhr';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Schritte gegangen';

  @override
  String get home_quick_actions => 'Schnelle Aktionen';

  @override
  String get home_log_meal => 'Protokollmahlzeit';

  @override
  String get home_log_water => 'Log-Wasser';

  @override
  String get home_log_workout => 'Protokollieren Sie das Training';

  @override
  String get home_log_weight => 'Stammgewicht';

  @override
  String get home_insights_title => 'Die heutigen Erkenntnisse';

  @override
  String get home_quote =>
      'Kleine, gesunde Entscheidungen führen zu blühenden Veränderungen.';

  @override
  String get home_ai_coach_tip => 'Bloomi KI-Trainer';

  @override
  String get home_surroundings => 'Umgebung & Luft';

  @override
  String get home_notifications => 'Benachrichtigungen';

  @override
  String get home_daily_score => 'Täglicher Wellness-Score';

  @override
  String get home_view_all => 'Alle anzeigen';

  @override
  String get food_diary_title => 'Ernährungstagebuch';

  @override
  String get food_breakfast => 'Frühstück';

  @override
  String get food_lunch => 'Mittagessen';

  @override
  String get food_dinner => 'Abendessen';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Essen hinzufügen';

  @override
  String get food_edit_food => 'Essen bearbeiten';

  @override
  String get food_add_breakfast => 'Frühstück hinzufügen';

  @override
  String get food_add_lunch => 'Mittagessen hinzufügen';

  @override
  String get food_add_dinner => 'Abendessen hinzufügen';

  @override
  String get food_add_snack => 'Snack hinzufügen';

  @override
  String get food_total_calories => 'Gesamtkalorien';

  @override
  String get food_empty_meal =>
      'Für diese Mahlzeit sind noch keine Lebensmittel protokolliert';

  @override
  String get food_empty_diary =>
      'Für diesen Tag sind keine Mahlzeiten protokolliert';

  @override
  String get food_log_first_meal =>
      'Tippen Sie auf +, um Ihre erste köstliche Mahlzeit zu protokollieren';

  @override
  String get food_quick_add => 'Schnell hinzufügen';

  @override
  String get food_search_hint =>
      'Suchen Sie nach Gerichten, Früchten, Dal, Roti...';

  @override
  String get food_custom_recipe => 'Individuelles Essen und Rezept';

  @override
  String get food_scan_barcode => 'Barcode scannen';

  @override
  String get food_camera_scan => 'KI-Lebensmittelscanner';

  @override
  String get food_recent => 'Aktuelle Lebensmittel';

  @override
  String get food_favourites => 'Favoriten';

  @override
  String get food_macro_summary => 'Aufschlüsselung der Makronährstoffe';

  @override
  String get food_delete_meal_confirm =>
      'Möchten Sie dieses Element wirklich entfernen?';

  @override
  String get food_item_deleted => 'Lebensmittel entfernt';

  @override
  String get food_remaining => 'verbleibend';

  @override
  String get food_consumed => 'verbraucht';

  @override
  String food_of_target(Object target) {
    return 'von $target kcal';
  }

  @override
  String get foodSearch_title => 'Suche nach Lebensmitteln';

  @override
  String get foodSearch_scan_barcode => 'Barcode scannen';

  @override
  String get foodSearch_take_photo => 'Snap-Food-Foto';

  @override
  String get foodSearch_custom_food => 'Erstellen Sie individuelles Essen';

  @override
  String get foodSearch_recent_searches => 'Aktuelle Suchanfragen';

  @override
  String get foodSearch_popular => 'Beliebte Gerichte';

  @override
  String get foodSearch_no_results =>
      'Keine Lebensmittel, die Ihrer Suche entsprechen';

  @override
  String get barcode_title => 'Barcode-Scanner';

  @override
  String get barcode_align =>
      'Richten Sie den Barcode innerhalb des Kamerarahmens aus';

  @override
  String get barcode_not_found => 'Produkt nicht in der Datenbank gefunden';

  @override
  String get barcode_premium_feature =>
      'Das Scannen von Barcodes ist mit Bloomi Pro möglich';

  @override
  String get camera_title => 'KI-Lebensmittelscanner';

  @override
  String get camera_tap_hint => 'Machen Sie ein klares Foto von Ihrem Gericht';

  @override
  String get camera_analysing => 'Lebensmittelteller wird analysiert...';

  @override
  String get camera_detected => 'Erkannte Elemente';

  @override
  String get camera_flash => 'Blitz umschalten';

  @override
  String get camera_retake => 'Foto erneut aufnehmen';

  @override
  String get camera_confirm_food => 'Elemente bestätigen';

  @override
  String get customFood_title => 'Individuelles Essen und Rezept';

  @override
  String get customFood_name_hint => 'Name des Gerichts oder der Zutat';

  @override
  String get customFood_calories_hint => 'Kalorien (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Kohlenhydrate (g)';

  @override
  String get customFood_fat_hint => 'Fett (g)';

  @override
  String get customFood_save => 'Rezept speichern';

  @override
  String get water_tracker_title => 'Wasser-Tracker';

  @override
  String get water_daily_target => 'Tägliches Hydratationsziel';

  @override
  String get water_logged_today => 'Heute angemeldet';

  @override
  String get water_add_glass => '+250 ml Glas';

  @override
  String get water_add_bottle => '+500 ml Flasche';

  @override
  String get water_custom_amount => 'Benutzerdefinierter Betrag';

  @override
  String get water_reminder_tip =>
      'Trinken Sie den ganzen Tag über regelmäßig Wasser, um eine gleichmäßige Energieversorgung zu gewährleisten.';

  @override
  String water_logged_toast(Object amount) {
    return 'Protokollierte $amount ml Wasser 💧';
  }

  @override
  String get workout_title => 'Trainingsprotokoll';

  @override
  String get workout_add_exercise => 'Training hinzufügen';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Stärke';

  @override
  String get workout_yoga => 'Yoga & Flexibilität';

  @override
  String get workout_duration => 'Dauer';

  @override
  String get workout_intensity => 'Intensität';

  @override
  String get workout_calories_burned => 'Verbrannte Kalorien';

  @override
  String get workout_empty =>
      'Heute wurden keine Trainingseinheiten protokolliert';

  @override
  String get workout_save_success => 'Training erfolgreich gespeichert!';

  @override
  String get workout_type => 'Trainingstyp';

  @override
  String get workout_notes => 'Notizen und Reflexionen';

  @override
  String get health_overview_title => 'Gesundheit & Vitalwerte';

  @override
  String get health_heart_rate => 'Herzfrequenz';

  @override
  String get health_blood_oxygen => 'Blutsauerstoff (SpO2)';

  @override
  String get health_blood_pressure => 'Blutdruck';

  @override
  String get health_blood_glucose => 'Blutzucker';

  @override
  String get health_body_temperature => 'Körpertemperatur';

  @override
  String get health_sleep_tracking => 'Schlafverfolgung';

  @override
  String get health_weight_tracking => 'Gewicht und Körperzusammensetzung';

  @override
  String get health_waist_hip => 'Verhältnis von Taille zu Hüfte';

  @override
  String get health_devices_hub => 'Geräte- und Smartwatch-Hub';

  @override
  String get health_sync_now => 'Gesundheitsdaten synchronisieren';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Zuletzt synchronisiert: $time';
  }

  @override
  String get health_manual_entry => 'Manueller Gesundheitseintrag';

  @override
  String get health_metric_detail => 'Metrikdetails';

  @override
  String get health_connected_sensors => 'Vernetzte Gesundheitssensoren';

  @override
  String get plan_title => 'Tagesplan';

  @override
  String get plan_weekly_title => 'Wöchentlicher Wellnessplan';

  @override
  String get plan_calorie_target => 'Kalorienziel';

  @override
  String get plan_water_target => 'Hydratationsziel';

  @override
  String get plan_step_target => 'Schrittziel';

  @override
  String get plan_sleep_target => 'Schlafziel';

  @override
  String get plan_meal_suggestions => 'Essensvorschläge';

  @override
  String get plan_healthy_habits => 'Gesunde Gewohnheiten und Tipps';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach-Empfehlungen';

  @override
  String get plan_generated_title => 'Personalisierter Tagesplan';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profil bearbeiten';

  @override
  String get profile_name => 'Name';

  @override
  String get profile_age => 'Alter';

  @override
  String get profile_gender => 'Geschlecht';

  @override
  String get profile_height => 'Höhe';

  @override
  String get profile_weight => 'Gewicht';

  @override
  String get profile_goal => 'Primäres Ziel';

  @override
  String get profile_activity_level => 'Aktivitätsniveau';

  @override
  String get profile_stats => 'Meine Wellness-Statistiken';

  @override
  String get profile_saved => 'Profil erfolgreich aktualisiert';

  @override
  String get profile_bmi => 'Body-Mass-Index (BMI)';

  @override
  String get profile_membership => 'Mitgliedschaft';

  @override
  String get settings => 'Einstellungen';

  @override
  String get preferences_habits => 'Vorlieben und Gewohnheiten';

  @override
  String get appearance_theme => 'Aussehen & Thema';

  @override
  String get appearance_theme_sub =>
      'Optionen für Dunkel, Hell, Systemmodus und App-Hintergrund';

  @override
  String get permissions => 'Berechtigungen und Systemzugriff';

  @override
  String get permissions_sub =>
      'Health Connect, Schrittsensoren, GPS, Benachrichtigungen und Kamera';

  @override
  String get reminders_notifications => 'Erinnerungen und Benachrichtigungen';

  @override
  String get reminders_sub =>
      'Essenszeiten, Wasser, Gewichtskontrolle und Erinnerungen an die Schlafenszeit';

  @override
  String get units_of_measurement => 'Maßeinheiten';

  @override
  String get units_sub =>
      'Metrisch (kg, cm, ml, km) oder Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App-Sprache';

  @override
  String get language_sub =>
      'Englisch, हिन्दी (Hindi), Hinglish und über 195 globale Sprachen';

  @override
  String get home_screen_widgets => 'Startbildschirm-Widgets';

  @override
  String get widgets_sub =>
      'Live-Android-Widgets: Hub, Schritte, Wasser, Ernährung und Maskottchen';

  @override
  String get wear_os_watch_app => 'Tragen Sie die OS Watch-App';

  @override
  String get wear_os_sub =>
      'Smartwatch-Begleiter, Kacheln, Komplikationen und Live-Vitalwerte';

  @override
  String get goals_wellness => 'ZIELE & WELLNESS-EINBLICKE';

  @override
  String get nutrition_targets => 'Ernährungsziele und Makrosplit';

  @override
  String get nutrition_targets_sub =>
      'Kalorienziel, Protein, Kohlenhydrate, Fett und Wasserziel';

  @override
  String get weekly_recap => 'Wöchentliche Wellness-Zusammenfassung';

  @override
  String get weekly_recap_sub =>
      '7-Tage-Kaloriendurchschnitt, Makroverhältnis und bester Tag';

  @override
  String get streaks_milestones => 'Streifen und Meilensteine';

  @override
  String get streaks_sub => 'Aktive Blütensträhnen, Abzeichen und Erfolge';

  @override
  String get connected_devices => 'VERBUNDENE GERÄTE UND ÖKOSYSTEM';

  @override
  String get devices_hub => 'Geräte- und Smartwatch-Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Umgebung & Wetter';

  @override
  String get surroundings_sub =>
      'Tipps zur Luftqualität (AQI), zum UV-Index und zur wetterbedingten Flüssigkeitszufuhr';

  @override
  String get bloomi_pro => 'Bloomi Pro-Abonnement';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 Startbildschirm-Widgets und Vitaldaten-Tracking';

  @override
  String get about_security => 'ÜBER & SICHERHEIT';

  @override
  String get about_bloomi => 'Über Bloomi';

  @override
  String get about_bloomi_sub =>
      'Build-Spezifikationen, Version, Zuschreibungen';

  @override
  String get privacy_policy => 'Datenschutzrichtlinie';

  @override
  String get privacy_policy_sub => 'Offline-First-On-Device-Datenarchitektur';

  @override
  String get terms_conditions => 'Allgemeine Geschäftsbedingungen';

  @override
  String get terms_conditions_sub =>
      'Nutzungsbedingungen und Wellness-Richtlinien';

  @override
  String get delete_account => 'Konto und Daten löschen';

  @override
  String get delete_account_sub =>
      'Löschen Sie lokale SQLite-Daten und Cloud-Backups unwiderruflich';

  @override
  String get healthy_habits =>
      'Bauen Sie sanfte, dauerhafte Wellness-Gewohnheiten auf';

  @override
  String get all_logs => 'Meine verfolgten Daten und Protokolle';

  @override
  String get search_language => 'Suche nach Sprache oder nativer Schrift...';

  @override
  String get languages_available => 'Verfügbare Sprachen';

  @override
  String get no_matching_languages => 'Keine passenden Sprachen gefunden';

  @override
  String get try_searching =>
      'Versuchen Sie, nach muttersprachlicher Schrift oder englischer Rechtschreibung zu suchen';

  @override
  String get partially_translated => 'Teilweise übersetzt';

  @override
  String get complete_translation => 'Komplett';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Sprache auf $name ( $nativeName ) eingestellt';
  }

  @override
  String get surroundings_title => 'Umgebung & Umwelt';

  @override
  String get surroundings_aqi => 'Luftqualitätsindex';

  @override
  String get surroundings_uv => 'UV-Index';

  @override
  String get surroundings_temp => 'Temperatur';

  @override
  String get surroundings_humidity => 'Luftfeuchtigkeit';

  @override
  String get surroundings_hydration_advice =>
      'Bleiben Sie bei den aktuellen Wetterbedingungen gut hydriert.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Essen suchen';

  @override
  String get food_quick_barcode => 'Barcode scannen 👑';

  @override
  String get food_quick_water => 'Wasser hinzufügen';

  @override
  String get food_quick_custom => 'Maßgeschneidertes Essen';

  @override
  String get surroundings_good => 'Gut';

  @override
  String get surroundings_moderate => 'Mäßig';

  @override
  String get surroundings_unhealthy => 'Ungesund';

  @override
  String get notifications_title => 'Benachrichtigungen und Warnungen';

  @override
  String get notifications_empty => 'Keine neuen Benachrichtigungen';

  @override
  String get notifications_mark_read => 'Alle als gelesen markieren';

  @override
  String get notifications_clear => 'Alles löschen';

  @override
  String get reminders => 'Erinnerungseinstellungen';

  @override
  String get notifications => 'Push-Benachrichtigungen';

  @override
  String get reminders_breakfast_title => 'Frühstückserinnerung 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Guten Morgen! Zeit für ein nahrhaftes Frühstück im $time.';
  }

  @override
  String get reminders_lunch_title => 'Erinnerung an das Mittagessen 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Machen Sie eine Pause und genießen Sie ein ausgewogenes, achtsames Mittagessen im $time.';
  }

  @override
  String get reminders_dinner_title => 'Erinnerung an das Abendessen 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Zeit für ein leichtes, sättigendes Abendessen im $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Zeit, ein frisches Glas Wasser zu trinken! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Wöchentliches Wiegen ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Verfolgen Sie Ihre wöchentlichen Körperkennzahlen auf Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Entspannung vor dem Schlafengehen 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Entspannen Sie sich und bereiten Sie sich auf einen erholsamen Schlaf vor ($time).';
  }

  @override
  String get onboard_welcome => 'Willkommen bei Bloomi';

  @override
  String get onboard_sub =>
      'Ihr freundlicher Offline-Begleiter für Gesundheit und Ernährung.';

  @override
  String get onboard_get_started => 'Legen Sie los';

  @override
  String get onboard_sign_in => 'Anmelden';

  @override
  String get onboard_skip => 'Überspringen';

  @override
  String get onboard_choose_goal => 'Was ist Ihr primäres Wellness-Ziel?';

  @override
  String get onboard_goal_weight_loss => 'Sanfte Gewichtsabnahme';

  @override
  String get onboard_goal_muscle => 'Muskelaufbau und Kraft';

  @override
  String get onboard_goal_energy => 'Tägliche Energie und Vitalität';

  @override
  String get onboard_goal_habits => 'Gesunde, achtsame Ernährung';

  @override
  String get onboard_about_you => 'Erzählen Sie uns etwas über sich';

  @override
  String get onboard_lifestyle => 'Ihr Tagesablauf';

  @override
  String get onboard_permissions_title => 'Berechtigungen und Systemzugriff';

  @override
  String get onboard_permissions_sub =>
      'Gewähren Sie Zugriff auf die Synchronisierung von Schritten, Trainingseinheiten und Erinnerungen.';

  @override
  String get onboard_plan_ready_title => 'Ihr individueller Plan ist fertig!';

  @override
  String get onboard_plan_ready_sub =>
      'Wir haben speziell für Sie eine sanfte, personalisierte Ernährungs- und Wellness-Roadmap erstellt.';

  @override
  String get onboard_enter_bloomi => 'Betreten Sie Bloomi';

  @override
  String get insights_weekly_report => 'Wöchentliche Wellness-Zusammenfassung';

  @override
  String insights_best_day(Object day) {
    return 'Tag der besten Konsistenz: $day';
  }

  @override
  String get insights_streaks_badges => 'Streifen und Meilensteine';

  @override
  String insights_unlocked_on(Object date) {
    return 'Freigeschaltet am $date';
  }

  @override
  String get insights_keep_going =>
      'Machen Sie weiter so mit den fantastischen Fortschritten!';

  @override
  String get widgets_title => 'Widgets für den Startbildschirm';

  @override
  String widgets_active_count(Object count) {
    return 'Aktive Widgets: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Schritte und aktiver Ring';

  @override
  String get widgets_water_title => 'Schnellprotokoll zur Flüssigkeitszufuhr';

  @override
  String get widgets_mascot_title => 'Bloomi-Maskottchen-Begleiter';

  @override
  String get wear_os_title => 'Tragen Sie eine OS-Smartwatch';

  @override
  String get wear_os_connected => 'Verbunden mit Watch';

  @override
  String get wear_os_sync => 'Uhrendaten synchronisieren';

  @override
  String get theme_title => 'Aussehen & Thema';

  @override
  String get theme_mode => 'Themenmodus';

  @override
  String get theme_light => 'Hell';

  @override
  String get theme_dark => 'Dunkel';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Hintergrundpalette';

  @override
  String get units_title => 'Maßeinheiten';

  @override
  String get units_metric => 'Metrisch (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Dashboard kann nicht geladen werden';

  @override
  String get home_health_permission_req =>
      'Health Connect-Berechtigung erforderlich';

  @override
  String get home_health_permission_desc =>
      'Bloomi benötigt die Berechtigung von Health Connect, um echte Schritte und Herzfrequenz abzurufen und Mobilheim-Widgets in Echtzeit zu synchronisieren.';

  @override
  String get home_allow_health => 'Health Connect zulassen';

  @override
  String get home_ready_mindful_day => 'Bereit für einen achtsamen Tag? ✨';

  @override
  String get home_quick_add => 'Schnell hinzufügen';

  @override
  String get home_live_gps => 'Live-GPS';

  @override
  String get home_calories_remaining_label => 'VERBLEIBENDE KALORIEN';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Gegessen: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tippen Sie für Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Tagesziel erreicht 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml zum Tagesziel';
  }

  @override
  String get home_details => 'Details';

  @override
  String get home_upgrade_plan_desc =>
      'Führen Sie ein Upgrade durch, um personalisierte Tagesziele und einen KI-Plan freizuschalten';

  @override
  String get home_unlock => 'Entsperren 👑';

  @override
  String get home_quick_log_hint =>
      'Erfassen Sie schnell einen Wellness-Eintrag';

  @override
  String get food_serving_size => 'Portionsgröße';

  @override
  String get food_serving_grams => 'Portion (g)';

  @override
  String get food_number_servings => 'Anzahl der Portionen';

  @override
  String get food_calories_per_serving => 'Kalorien pro Portion';

  @override
  String get food_recipe_ingredients => 'Zutaten';

  @override
  String get food_recipe_add_ingredient => 'Zutat hinzufügen';

  @override
  String get food_recipe_directions => 'Anweisungen und Hinweise';

  @override
  String get food_recipe_total => 'Gesamtrezept-Ernährung';

  @override
  String get food_recipe_per_serving => 'Nährwert pro Portion';

  @override
  String get food_recipe_saved_toast =>
      'Benutzerdefiniertes Essen erfolgreich gespeichert!';

  @override
  String get food_barcode_found => 'Produkt gefunden!';

  @override
  String get food_barcode_not_found_desc =>
      'Wir konnten diesen Barcode in der offenen Datenbank nicht finden. Sie können es als individuelles Lebensmittel hinzufügen.';

  @override
  String get food_add_custom_btn => 'Fügen Sie benutzerdefiniertes Essen hinzu';

  @override
  String get food_scan_again => 'Erneut scannen';

  @override
  String get food_review_items => 'Überprüfen Sie erkannte Lebensmittel';

  @override
  String get food_review_hint =>
      'Passen Sie die Mengen an oder entfernen Sie nicht erkannte Artikel';

  @override
  String get food_log_selected => 'Protokollieren Sie ausgewählte Lebensmittel';

  @override
  String get food_favourites_title => 'Lieblingsspeisen';

  @override
  String get food_recent_title => 'Aktuelle Lebensmittel';

  @override
  String get food_no_favourites =>
      'Noch keine Lieblingsspeisen. Tippen Sie hier auf ein beliebiges Lebensmittel, um es zu speichern.';

  @override
  String get food_no_recents =>
      'Keine kürzlich protokollierten Lebensmittel gefunden.';

  @override
  String get food_nutrition_details_title => 'Tägliche Ernährungsdetails';

  @override
  String get food_macro_protein_label => 'Proteinabbau';

  @override
  String get food_macro_carbs_label => 'Aufschlüsselung der Kohlenhydrate';

  @override
  String get food_macro_fat_label => 'Fettabbau';

  @override
  String get food_macro_fiber_label => 'Faserabbau';

  @override
  String get food_daily_target_comparison => 'Zielvergleich';

  @override
  String food_target_label(Object target) {
    return 'Ziel: $target';
  }

  @override
  String get food_edit_entry => 'Tagebucheintrag bearbeiten';

  @override
  String get food_delete_entry => 'Eintrag löschen';

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
    return '$current von $target ml';
  }

  @override
  String get water_intake_history => 'Die heutigen Stauwasserprotokolle';

  @override
  String get water_no_logs_today =>
      'Heute ist noch kein Wasser registriert. Hydratieren Sie und tippen Sie auf die Schaltfläche „Schnell hinzufügen“!';

  @override
  String get water_adjust_goal => 'Passen Sie das Tagesziel an';

  @override
  String get health_connect_banner => 'Verbunden mit Health Connect';

  @override
  String get health_vitals_summary => 'Tägliche Gesundheitsvitalitäten';

  @override
  String get health_latest_heart_rate => 'Aktuelle Herzfrequenz';

  @override
  String get health_latest_bp => 'Blutdruck';

  @override
  String get health_latest_spo2 => 'Blutsauerstoff';

  @override
  String get health_latest_glucose => 'Blutzucker';

  @override
  String get health_latest_weight => 'Gewicht';

  @override
  String get health_latest_sleep => 'Schlafdauer';

  @override
  String get health_add_manual => 'Manuelle Messung hinzufügen';

  @override
  String get health_history_trends => 'Historische Trends';

  @override
  String get health_sync_success =>
      'Gesundheitsdaten erfolgreich synchronisiert!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours Std. $mins Min';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm Schläge pro Minute';
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
  String get health_devices_title => 'Vernetzte Geräte und Wearables';

  @override
  String get health_devices_desc =>
      'Verwalten Sie gekoppelte Smartwatches, Fitness-Tracker und Gesundheitssensoren.';

  @override
  String get health_workout_editor_title => 'Training bearbeiten';

  @override
  String get health_workout_name_label => 'Trainingsname';

  @override
  String get health_workout_duration_label => 'Dauer (Minuten)';

  @override
  String get health_workout_calories_label => 'Geschätzte Kalorien (kcal)';

  @override
  String get health_workout_date_label => 'Datum und Uhrzeit';

  @override
  String get plan_daily_wellness_roadmap => 'Ihre personalisierte Roadmap';

  @override
  String get plan_morning_routine => 'Morgenroutine';

  @override
  String get plan_afternoon_routine => 'Wellness am Mittag';

  @override
  String get plan_evening_routine => 'Abendliche Entspannung';

  @override
  String get plan_coach_badge => 'Bloomi KI-Trainer';

  @override
  String get plan_weekly_overview => '7-Tage-Wellness-Fokus';

  @override
  String get plan_targets_title => 'Wellness-Ziele und Ziele';

  @override
  String get plan_calorie_budget_label => 'Tägliches Kalorienbudget';

  @override
  String get plan_water_budget_label => 'Tägliches Wasserziel';

  @override
  String get plan_step_budget_label => 'Tägliches Schrittziel';

  @override
  String get plan_macro_split_label => 'Makronährstoffverhältnis';

  @override
  String get profile_personal_details => 'Persönliche Daten';

  @override
  String get profile_body_stats => 'Körpermaße';

  @override
  String get profile_app_preferences => 'Präferenzen und App-Einstellungen';

  @override
  String get profile_edit_name_hint => 'Dein Name';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Höhe ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Gewicht ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Alter';

  @override
  String get profile_gender_male => 'Männlich';

  @override
  String get profile_gender_female => 'Weiblich';

  @override
  String get profile_gender_other => 'Sonstiges / Möchte es lieber nicht sagen';

  @override
  String get profile_activity_sedentary =>
      'Bewegungsmangel (wenig bis gar keine Bewegung)';

  @override
  String get profile_activity_light => 'Leicht aktiv (1-3 Tage/Woche)';

  @override
  String get profile_activity_moderate => 'Mäßig aktiv (3-5 Tage/Woche)';

  @override
  String get profile_activity_very => 'Sehr aktiv (6-7 Tage/Woche)';

  @override
  String get settings_wear_os_header => 'Tragen Sie die OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Installieren Sie die Bloomi-Kachel und -Komplikation auf Ihrer Wear OS-Uhr, um Kalorien, Wasser und Schritte anzuzeigen.';

  @override
  String get settings_widgets_header => 'Interaktive Android-Widgets';

  @override
  String get settings_widgets_desc =>
      'Pinnen Sie Echtzeit-Widgets für sofortige Updates auf dem Startbildschirm Ihres Geräts.';

  @override
  String get settings_about_header => 'Über Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Baue 100';

  @override
  String get settings_about_credits =>
      'Hergestellt mit Sorgfalt für ein achtsames, gesundes Leben.';

  @override
  String get settings_terms_header => 'Allgemeine Geschäftsbedingungen';

  @override
  String get settings_privacy_header => 'Datenschutzrichtlinie';

  @override
  String get settings_delete_header => 'Konto und Daten löschen';

  @override
  String get settings_delete_warning =>
      'Diese Aktion kann nicht rückgängig gemacht werden. Alle Ihre Mahlzeiten, Trainingseinheiten, Vitalwerte und Ihr Profil werden dauerhaft gelöscht.';

  @override
  String get settings_delete_confirm_btn => 'Endgültig löschen';

  @override
  String get onboard_welcome_headline => 'Willkommen bei Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Sanftes, achtsames Wellness-Tracking, das auf Ihr Leben zugeschnitten ist.';

  @override
  String get onboard_step_about => 'Über Dich';

  @override
  String get onboard_step_goals => 'Ihre Ziele';

  @override
  String get onboard_step_lifestyle => 'Tägliche Gewohnheiten';

  @override
  String get onboard_step_permissions => 'Berechtigungen';

  @override
  String get onboard_step_plan => 'Fertig!';

  @override
  String get onboard_health_connect_perm => 'Health Connect-Zugriff';

  @override
  String get onboard_step_sensors_perm => 'Schrittzählersensor';

  @override
  String get onboard_notif_perm =>
      'Achtsame Erinnerungen und Benachrichtigungen';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode- und Lebensmittelscanner)';

  @override
  String get onboard_grant_permissions => 'Berechtigungen erteilen';

  @override
  String get onboard_continue_dashboard => 'Öffnen Sie das Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration-Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Sanfte Wassererinnerungen den ganzen Tag über';

  @override
  String get notif_channel_nutrition_name =>
      'Erinnerungen an Mahlzeiten und Ernährung';

  @override
  String get notif_channel_nutrition_desc =>
      'Erinnerungsbenachrichtigungen für Frühstück, Mittag- und Abendessen';

  @override
  String get notif_channel_steps_name => 'Schritt-Meilensteine';

  @override
  String get notif_channel_steps_desc =>
      'Feierlichkeiten beim Erreichen der täglichen Schrittziele';

  @override
  String get notif_channel_vitals_name => 'Gesundheits- und Vitalchecks';

  @override
  String get notif_channel_vitals_desc =>
      'Gewichts- und Schlafenszeit-Erinnerungen';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Schlummern Sie 15 Minuten';

  @override
  String get notif_action_log_meal => '🥗 Protokollmahlzeit';

  @override
  String get language => 'Sprache';

  @override
  String get share => 'Teilen';

  @override
  String common_days(Object count) {
    return 'vor ${count}T';
  }
}
