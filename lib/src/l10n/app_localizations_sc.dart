// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sardinian (`sc`).
class AppLocalizationsSc extends AppLocalizations {
  AppLocalizationsSc([String locale = 'sc']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Casa';

  @override
  String get nav_today => 'Oggi';

  @override
  String get nav_plan => 'Piano';

  @override
  String get nav_food => 'Cibo';

  @override
  String get nav_food_diary => 'Diario alimentare';

  @override
  String get nav_workout => 'Registro degli allenamenti';

  @override
  String get nav_health => 'Salute';

  @override
  String get nav_profile => 'Profilo';

  @override
  String get save => 'Salva';

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get edit => 'Modifica';

  @override
  String get done => 'Fatto';

  @override
  String get close => 'Chiudi';

  @override
  String get back => 'Indietro';

  @override
  String get next => 'Avanti';

  @override
  String get continue_btn => 'Continua';

  @override
  String get confirm => 'Conferma';

  @override
  String get search => 'Cerca';

  @override
  String get filter => 'Filtra';

  @override
  String get all => 'Tutto';

  @override
  String get active => 'Attivo';

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get tomorrow => 'Domani';

  @override
  String get add => 'Aggiungi';

  @override
  String get remove => 'Rimuovi';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get retry => 'Riprova';

  @override
  String get error => 'Errore';

  @override
  String get success => 'Successo';

  @override
  String get loading => 'Caricamento...';

  @override
  String get no_data => 'Nessun dato disponibile';

  @override
  String get offline => 'Modalità offline';

  @override
  String get offline_sub =>
      'Le modifiche verranno sincronizzate una volta riconnesso';

  @override
  String get undo => 'Annulla';

  @override
  String get portion => 'Porzione';

  @override
  String get quantity => 'Quantità';

  @override
  String get unit => 'Unità';

  @override
  String get clear => 'Chiaro';

  @override
  String get select => 'Seleziona';

  @override
  String get apply => 'Applicare';

  @override
  String get reset => 'Ripristina';

  @override
  String get ok => 'Va bene';

  @override
  String get yes => 'Sì';

  @override
  String get no => 'No';

  @override
  String get optional => 'Facoltativo';

  @override
  String get calories => 'Calorie';

  @override
  String get protein => 'Proteine';

  @override
  String get carbs => 'Carboidrati';

  @override
  String get fat => 'Grasso';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Acqua';

  @override
  String get steps => 'Passi';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'libbre';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'dentro';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ore';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Servire';

  @override
  String get servings => 'Porzioni';

  @override
  String get serving_size => 'Porzione';

  @override
  String get per_100g => 'ogni 100 g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Medio Oriente';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americhe';

  @override
  String get home_title => 'Casa';

  @override
  String get home_greeting_morning => 'Buongiorno';

  @override
  String get home_greeting_afternoon => 'Buon pomeriggio';

  @override
  String get home_greeting_evening => 'Buonasera';

  @override
  String get home_streak_title => 'Striscia di fiori';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' $count giorni consecutivi',
      one: '1 day streak',
      zero: '0 days streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Bruciato';

  @override
  String get home_calories_budget => 'Bilancio calorico';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal rimanenti';
  }

  @override
  String get home_water_title => 'Idratazione quotidiana';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Passi camminati';

  @override
  String get home_quick_actions => 'Azioni rapide';

  @override
  String get home_log_meal => 'Registra pasto';

  @override
  String get home_log_water => 'Registra acqua';

  @override
  String get home_log_workout => 'Registra allenamento';

  @override
  String get home_log_weight => 'Peso del registro';

  @override
  String get home_insights_title => 'Gli approfondimenti di oggi';

  @override
  String get home_quote =>
      'Piccole scelte salutari creano trasformazioni fiorenti.';

  @override
  String get home_ai_coach_tip =>
      'Allenatore dell\'intelligenza artificiale di Bloomi';

  @override
  String get home_surroundings => 'Dintorni e Aria';

  @override
  String get home_notifications => 'Notifiche';

  @override
  String get home_daily_score => 'Punteggio di benessere giornaliero';

  @override
  String get home_view_all => 'Visualizza tutto';

  @override
  String get food_diary_title => 'Diario alimentare';

  @override
  String get food_breakfast => 'Colazione';

  @override
  String get food_lunch => 'Pranzo';

  @override
  String get food_dinner => 'Cena';

  @override
  String get food_snacks => 'Spuntini';

  @override
  String get food_add_food => 'Aggiungi cibo';

  @override
  String get food_edit_food => 'Modifica cibo';

  @override
  String get food_add_breakfast => 'Aggiungi la colazione';

  @override
  String get food_add_lunch => 'Aggiungi il pranzo';

  @override
  String get food_add_dinner => 'Aggiungi la cena';

  @override
  String get food_add_snack => 'Aggiungi uno spuntino';

  @override
  String get food_total_calories => 'Calorie totali';

  @override
  String get food_empty_meal =>
      'Nessun alimento ancora registrato per questo pasto';

  @override
  String get food_empty_diary => 'Nessun pasto registrato per questo giorno';

  @override
  String get food_log_first_meal =>
      'Tocca + per registrare il tuo primo pasto delizioso';

  @override
  String get food_quick_add => 'Aggiunta rapida';

  @override
  String get food_search_hint => 'Cerca piatti, frutta, dal, roti...';

  @override
  String get food_custom_recipe => 'Cibo e ricette personalizzate';

  @override
  String get food_scan_barcode => 'Scansiona il codice a barre';

  @override
  String get food_camera_scan => 'Scanner alimentare AI';

  @override
  String get food_recent => 'Alimenti recenti';

  @override
  String get food_favourites => 'Preferiti';

  @override
  String get food_macro_summary => 'Ripartizione dei macronutrienti';

  @override
  String get food_delete_meal_confirm =>
      'Sei sicuro di voler rimuovere questo elemento?';

  @override
  String get food_item_deleted => 'Alimento rimosso';

  @override
  String get food_remaining => 'rimanente';

  @override
  String get food_consumed => 'consumato';

  @override
  String food_of_target(Object target) {
    return 'di $target kcal';
  }

  @override
  String get foodSearch_title => 'Cerca alimenti';

  @override
  String get foodSearch_scan_barcode => 'Scansiona il codice a barre';

  @override
  String get foodSearch_take_photo => 'Scatta foto di cibo';

  @override
  String get foodSearch_custom_food => 'Crea cibo personalizzato';

  @override
  String get foodSearch_recent_searches => 'Ricerche recenti';

  @override
  String get foodSearch_popular => 'Piatti popolari';

  @override
  String get foodSearch_no_results =>
      'Nessun alimento corrispondente alla tua ricerca';

  @override
  String get barcode_title => 'Lettore di codici a barre';

  @override
  String get barcode_align =>
      'Allinea il codice a barre all\'interno della cornice della fotocamera';

  @override
  String get barcode_not_found => 'Prodotto non trovato nel database';

  @override
  String get barcode_premium_feature =>
      'La scansione dei codici a barre è disponibile con Bloomi Pro';

  @override
  String get camera_title => 'Scanner alimentare AI';

  @override
  String get camera_tap_hint => 'Scatta una foto nitida del tuo piatto';

  @override
  String get camera_analysing => 'Analizzando il piatto del cibo...';

  @override
  String get camera_detected => 'Elementi rilevati';

  @override
  String get camera_flash => 'Attiva/disattiva Flash';

  @override
  String get camera_retake => 'Riprendi la foto';

  @override
  String get camera_confirm_food => 'Conferma articoli';

  @override
  String get customFood_title => 'Cibo e ricette personalizzate';

  @override
  String get customFood_name_hint => 'Nome del piatto o dell\'ingrediente';

  @override
  String get customFood_calories_hint => 'Calorie (kcal)';

  @override
  String get customFood_protein_hint => 'Proteine (g)';

  @override
  String get customFood_carbs_hint => 'Carboidrati (g)';

  @override
  String get customFood_fat_hint => 'Grassi (g)';

  @override
  String get customFood_save => 'Salva ricetta';

  @override
  String get water_tracker_title => 'Localizzatore d\'acqua';

  @override
  String get water_daily_target => 'Obiettivo di idratazione giornaliero';

  @override
  String get water_logged_today => 'Registrato oggi';

  @override
  String get water_add_glass => 'Bicchiere da +250 ml';

  @override
  String get water_add_bottle => 'Bottiglia da +500 ml';

  @override
  String get water_custom_amount => 'Importo personalizzato';

  @override
  String get water_reminder_tip =>
      'Bevi acqua regolarmente durante il giorno per avere energia costante.';

  @override
  String water_logged_toast(Object amount) {
    return 'Registrati $amount ml di acqua 💧';
  }

  @override
  String get workout_title => 'Registro degli allenamenti';

  @override
  String get workout_add_exercise => 'Aggiungi allenamento';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Forza';

  @override
  String get workout_yoga => 'Yoga e flessibilità';

  @override
  String get workout_duration => 'Durata';

  @override
  String get workout_intensity => 'Intensità';

  @override
  String get workout_calories_burned => 'Calorie bruciate';

  @override
  String get workout_empty => 'Nessun allenamento registrato oggi';

  @override
  String get workout_save_success => 'Allenamento salvato con successo!';

  @override
  String get workout_type => 'Tipo di allenamento';

  @override
  String get workout_notes => 'Note e riflessioni';

  @override
  String get health_overview_title => 'Salute e elementi vitali';

  @override
  String get health_heart_rate => 'Frequenza cardiaca';

  @override
  String get health_blood_oxygen => 'Ossigeno nel sangue (SpO2)';

  @override
  String get health_blood_pressure => 'Pressione sanguigna';

  @override
  String get health_blood_glucose => 'Glucosio nel sangue';

  @override
  String get health_body_temperature => 'Temperatura corporea';

  @override
  String get health_sleep_tracking => 'Monitoraggio del sonno';

  @override
  String get health_weight_tracking => 'Peso e composizione corporea';

  @override
  String get health_waist_hip => 'Rapporto vita-fianchi';

  @override
  String get health_devices_hub => 'Dispositivi e hub smartwatch';

  @override
  String get health_sync_now => 'Sincronizza i dati sanitari';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Ultima sincronizzazione: $time';
  }

  @override
  String get health_manual_entry => 'Inserimento manuale della salute';

  @override
  String get health_metric_detail => 'Dettagli metrici';

  @override
  String get health_connected_sensors => 'Sensori sanitari connessi';

  @override
  String get plan_title => 'Piano giornaliero';

  @override
  String get plan_weekly_title => 'Piano Benessere Settimanale';

  @override
  String get plan_calorie_target => 'Obiettivo calorico';

  @override
  String get plan_water_target => 'Obiettivo di idratazione';

  @override
  String get plan_step_target => 'Obiettivo del passo';

  @override
  String get plan_sleep_target => 'Obiettivo del sonno';

  @override
  String get plan_meal_suggestions => 'Suggerimenti per i pasti';

  @override
  String get plan_healthy_habits => 'Abitudini e consigli salutari';

  @override
  String get plan_coach_advice => 'Consigli per l\'allenatore Bloomi AI';

  @override
  String get plan_generated_title => 'Programma giornaliero personalizzato';

  @override
  String get profile_title => 'Profilo';

  @override
  String get profile_edit => 'Modifica profilo';

  @override
  String get profile_name => 'Nome';

  @override
  String get profile_age => 'Età';

  @override
  String get profile_gender => 'Genere';

  @override
  String get profile_height => 'Altezza';

  @override
  String get profile_weight => 'Peso';

  @override
  String get profile_goal => 'Obiettivo primario';

  @override
  String get profile_activity_level => 'Livello di attività';

  @override
  String get profile_stats => 'Le mie statistiche sul benessere';

  @override
  String get profile_saved => 'Profilo aggiornato con successo';

  @override
  String get profile_bmi => 'Indice di massa corporea (IMC)';

  @override
  String get profile_membership => 'Appartenenza';

  @override
  String get settings => 'Impostazioni';

  @override
  String get preferences_habits => 'PREFERENZE E ABITUDINI';

  @override
  String get appearance_theme => 'Aspetto e tema';

  @override
  String get appearance_theme_sub =>
      'Opzioni Scuro, Chiaro, Modalità Sistema e Sfondo app';

  @override
  String get permissions => 'Autorizzazioni e accesso al sistema';

  @override
  String get permissions_sub =>
      'Health Connect, sensori di passo, GPS, notifiche e fotocamera';

  @override
  String get reminders_notifications => 'Promemoria e notifiche';

  @override
  String get reminders_sub =>
      'Orari dei pasti, acqua, controllo del peso e promemoria per andare a dormire';

  @override
  String get units_of_measurement => 'Unità di misura';

  @override
  String get units_sub =>
      'Sistema metrico (kg, cm, ml, km) o imperiale (libbre, piedi/pollici, fl oz)';

  @override
  String get app_language => 'Lingua dell\'app';

  @override
  String get language_sub =>
      'Inglese, हिन्दी (hindi), hinglish e oltre 195 lingue globali';

  @override
  String get home_screen_widgets => 'Widget della schermata iniziale';

  @override
  String get widgets_sub =>
      'Widget Android live: Hub, Passi, Acqua, Nutrizione e Mascotte';

  @override
  String get wear_os_watch_app => 'Indossa l\'app OS Watch';

  @override
  String get wear_os_sub =>
      'Compagno smartwatch, tessere, complicazioni e parametri vitali in tempo reale';

  @override
  String get goals_wellness => 'OBIETTIVI E APPROFONDIMENTI SUL BENESSERE';

  @override
  String get nutrition_targets => 'Obiettivi nutrizionali e suddivisione macro';

  @override
  String get nutrition_targets_sub =>
      'Obiettivo di calorie, obiettivo di proteine, carboidrati, grassi e acqua';

  @override
  String get weekly_recap => 'Riepilogo settimanale del benessere';

  @override
  String get weekly_recap_sub =>
      'Media calorica su 7 giorni, rapporto macro e giorno migliore';

  @override
  String get streaks_milestones => 'Strisce e traguardi';

  @override
  String get streaks_sub => 'Serie di fiori attivi, distintivi e risultati';

  @override
  String get connected_devices => 'DISPOSITIVI CONNESSI ED ECOSISTEMA';

  @override
  String get devices_hub => 'Dispositivi e hub smartwatch';

  @override
  String get devices_hub_sub =>
      'Connessione Salute, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Dintorni e tempo';

  @override
  String get surroundings_sub =>
      'Consigli per la qualità dell\'aria (AQI), indice UV e idratazione meteorologica';

  @override
  String get bloomi_pro => 'Abbonamento Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget sulla schermata iniziale e monitoraggio dei parametri vitali';

  @override
  String get about_security => 'INFORMAZIONI E SICUREZZA';

  @override
  String get about_bloomi => 'A proposito di Bloomi';

  @override
  String get about_bloomi_sub =>
      'Specifiche di costruzione, versione, attribuzioni';

  @override
  String get privacy_policy => 'Informativa sulla privacy';

  @override
  String get privacy_policy_sub =>
      'Architettura dei dati offline-first e sul dispositivo';

  @override
  String get terms_conditions => 'Termini e condizioni';

  @override
  String get terms_conditions_sub =>
      'Termini di servizio e linee guida sul benessere';

  @override
  String get delete_account => 'Elimina account e dati';

  @override
  String get delete_account_sub =>
      'Cancella in modo irreversibile i dati SQLite locali e i backup nel cloud';

  @override
  String get healthy_habits =>
      'Costruisci abitudini di benessere delicate e durature';

  @override
  String get all_logs => 'I miei dati e registri tracciati';

  @override
  String get search_language => 'Cerca per lingua o scrittura nativa...';

  @override
  String get languages_available => 'Lingue disponibili';

  @override
  String get no_matching_languages => 'Nessuna lingua corrispondente trovata';

  @override
  String get try_searching =>
      'Prova a cercare in base alla scrittura nativa o all\'ortografia inglese';

  @override
  String get partially_translated => 'Parzialmente tradotto';

  @override
  String get complete_translation => 'Completo';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lingua impostata su $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Dintorni e Ambiente';

  @override
  String get surroundings_aqi => 'Indice della qualità dell\'aria';

  @override
  String get surroundings_uv => 'Indice UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Umidità';

  @override
  String get surroundings_hydration_advice =>
      'Rimani ben idratato nelle condizioni meteorologiche attuali.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Cerca cibo';

  @override
  String get food_quick_barcode => 'Scansiona il codice a barre 👑';

  @override
  String get food_quick_water => 'Aggiungi acqua';

  @override
  String get food_quick_custom => 'Cibo personalizzato';

  @override
  String get surroundings_good => 'Bene';

  @override
  String get surroundings_moderate => 'Moderato';

  @override
  String get surroundings_unhealthy => 'Malsano';

  @override
  String get notifications_title => 'Notifiche e avvisi';

  @override
  String get notifications_empty => 'Nessuna nuova notifica';

  @override
  String get notifications_mark_read => 'Segna tutto come letto';

  @override
  String get notifications_clear => 'Cancella tutto';

  @override
  String get reminders => 'Impostazioni promemoria';

  @override
  String get notifications => 'Notifiche';

  @override
  String get reminders_breakfast_title => 'Promemoria colazione 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Buongiorno! È ora di una colazione nutriente alle $time.';
  }

  @override
  String get reminders_lunch_title => 'Promemoria pranzo 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Fai una pausa e goditi un pranzo equilibrato e consapevole al $time .';
  }

  @override
  String get reminders_dinner_title => 'Promemoria cena 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'È ora di una cena leggera e soddisfacente alle $time.';
  }

  @override
  String get reminders_water_title => 'Nudge di idratazione 💧';

  @override
  String reminders_water_body(Object time) {
    return 'È ora di bere un bicchiere d\'acqua fresca! ($time)';
  }

  @override
  String get reminders_weight_title => 'Peso settimanale ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Tieni traccia delle metriche corporee settimanali su Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Rilassamento della buonanotte 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Rilassati e preparati per un sonno ristoratore ( $time ).';
  }

  @override
  String get onboard_welcome => 'Benvenuti a Bloomi';

  @override
  String get onboard_sub =>
      'Il tuo amichevole compagno offline per la salute e la nutrizione.';

  @override
  String get onboard_get_started => 'Inizia';

  @override
  String get onboard_sign_in => 'Accedi';

  @override
  String get onboard_skip => 'Salta';

  @override
  String get onboard_choose_goal =>
      'Qual è il tuo obiettivo primario di benessere?';

  @override
  String get onboard_goal_weight_loss => 'Perdita di peso delicata';

  @override
  String get onboard_goal_muscle => 'Guadagno e forza muscolare';

  @override
  String get onboard_goal_energy => 'Energia e vitalità quotidiana';

  @override
  String get onboard_goal_habits => 'Alimentazione sana e consapevole';

  @override
  String get onboard_about_you => 'Raccontaci di te';

  @override
  String get onboard_lifestyle => 'La tua routine quotidiana';

  @override
  String get onboard_permissions_title => 'Autorizzazioni e accesso al sistema';

  @override
  String get onboard_permissions_sub =>
      'Concedi l\'accesso alla sincronizzazione di passaggi, allenamenti e promemoria.';

  @override
  String get onboard_plan_ready_title =>
      'Il tuo piano personalizzato è pronto!';

  @override
  String get onboard_plan_ready_sub =>
      'Abbiamo creato per te un piano d\'azione delicato e personalizzato per la nutrizione e il benessere.';

  @override
  String get onboard_enter_bloomi => 'Entra Bloomi';

  @override
  String get insights_weekly_report => 'Riepilogo settimanale del benessere';

  @override
  String insights_best_day(Object day) {
    return 'Giorno della migliore coerenza: $day';
  }

  @override
  String get insights_streaks_badges => 'Strisce e traguardi';

  @override
  String insights_unlocked_on(Object date) {
    return 'Sbloccato il $date';
  }

  @override
  String get insights_keep_going => 'Continuate così!';

  @override
  String get widgets_title => 'Widget della schermata iniziale';

  @override
  String widgets_active_count(Object count) {
    return 'Widget attivi: $count';
  }

  @override
  String get widgets_hub_title => 'Centro benessere Bloomi';

  @override
  String get widgets_steps_title => 'Passi e suoneria attiva';

  @override
  String get widgets_water_title => 'Registro rapido dell\'idratazione';

  @override
  String get widgets_mascot_title => 'Compagno mascotte Bloomi';

  @override
  String get wear_os_title => 'Indossa lo smartwatch del sistema operativo';

  @override
  String get wear_os_connected => 'Connesso all\'orologio';

  @override
  String get wear_os_sync => 'Sincronizza i dati dell\'orologio';

  @override
  String get theme_title => 'Aspetto e tema';

  @override
  String get theme_mode => 'Modalità tema';

  @override
  String get theme_light => 'Luce';

  @override
  String get theme_dark => 'Buio';

  @override
  String get theme_system => 'Predefinito del sistema';

  @override
  String get theme_background_palette => 'Tavolozza di sfondo';

  @override
  String get units_title => 'Unità di misura';

  @override
  String get units_metric => 'Sistema metrico (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperiale (libbre, pollici, fl oz)';

  @override
  String get home_unable_load => 'Impossibile caricare il dashboard';

  @override
  String get home_health_permission_req =>
      'È richiesta l\'autorizzazione per Connessione Salute';

  @override
  String get home_health_permission_desc =>
      'Bloomi richiede l\'autorizzazione di Health Connect per rilevare passi reali, frequenza cardiaca e sincronizzare i widget della casa mobile in tempo reale.';

  @override
  String get home_allow_health => 'Consenti Connessione Salute';

  @override
  String get home_ready_mindful_day => 'Pronti per una giornata consapevole? ✨';

  @override
  String get home_quick_add => 'Aggiunta rapida';

  @override
  String get home_live_gps => 'GPS in tempo reale';

  @override
  String get home_calories_remaining_label => 'CALORIE RESIDUE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Mangiato: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tocca per il rilevatore d\'acqua 💧';

  @override
  String get home_water_goal_reached => 'Obiettivo giornaliero raggiunto 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml all\'obiettivo giornaliero';
  }

  @override
  String get home_details => 'Dettagli';

  @override
  String get home_upgrade_plan_desc =>
      'Esegui l\'upgrade per sbloccare obiettivi giornalieri personalizzati e piano AI';

  @override
  String get home_unlock => 'Sblocca 👑';

  @override
  String get home_quick_log_hint =>
      'Registra rapidamente una voce sul benessere';

  @override
  String get food_serving_size => 'Porzione';

  @override
  String get food_serving_grams => 'Porzione (g)';

  @override
  String get food_number_servings => 'Numero di porzioni';

  @override
  String get food_calories_per_serving => 'Calorie per porzione';

  @override
  String get food_recipe_ingredients => 'Ingredienti';

  @override
  String get food_recipe_add_ingredient => 'Aggiungi ingrediente';

  @override
  String get food_recipe_directions => 'Istruzioni e note';

  @override
  String get food_recipe_total => 'Nutrizione totale della ricetta';

  @override
  String get food_recipe_per_serving => 'Nutrizione per porzione';

  @override
  String get food_recipe_saved_toast =>
      'Cibo personalizzato salvato con successo!';

  @override
  String get food_barcode_found => 'Prodotto trovato!';

  @override
  String get food_barcode_not_found_desc =>
      'Non siamo riusciti a trovare questo codice a barre nel database aperto. Puoi aggiungerlo come alimento personalizzato.';

  @override
  String get food_add_custom_btn => 'Aggiungi cibo personalizzato';

  @override
  String get food_scan_again => 'Scansione di nuovo';

  @override
  String get food_review_items => 'Revisione degli alimenti rilevati';

  @override
  String get food_review_hint =>
      'Modifica le quantità o rimuovi eventuali articoli non riconosciuti';

  @override
  String get food_log_selected => 'Registra gli alimenti selezionati';

  @override
  String get food_favourites_title => 'Cibi preferiti';

  @override
  String get food_recent_title => 'Alimenti recenti';

  @override
  String get food_no_favourites =>
      'Nessun cibo preferito ancora. Tocca il cuore su qualsiasi cibo da salvare qui.';

  @override
  String get food_no_recents =>
      'Nessun alimento registrato di recente trovato.';

  @override
  String get food_nutrition_details_title =>
      'Dettagli nutrizionali giornalieri';

  @override
  String get food_macro_protein_label => 'Decomposizione delle proteine';

  @override
  String get food_macro_carbs_label => 'Ripartizione dei carboidrati';

  @override
  String get food_macro_fat_label => 'Ripartizione del grasso';

  @override
  String get food_macro_fiber_label => 'Rottura delle fibre';

  @override
  String get food_daily_target_comparison => 'Confronto degli obiettivi';

  @override
  String food_target_label(Object target) {
    return 'Obiettivo: $target';
  }

  @override
  String get food_edit_entry => 'Modifica voce diario';

  @override
  String get food_delete_entry => 'Elimina voce';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '${kcal}kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current di ${target}ml';
  }

  @override
  String get water_intake_history => 'I registri dell\'acqua di oggi';

  @override
  String get water_no_logs_today =>
      'Nessuna acqua registrata ancora oggi. Idratati e tocca un pulsante di aggiunta rapida!';

  @override
  String get water_adjust_goal => 'Modifica l\'obiettivo giornaliero';

  @override
  String get health_connect_banner => 'Connesso a Connessione Salute';

  @override
  String get health_vitals_summary => 'Dati vitali sanitari quotidiani';

  @override
  String get health_latest_heart_rate => 'Ultima frequenza cardiaca';

  @override
  String get health_latest_bp => 'Pressione sanguigna';

  @override
  String get health_latest_spo2 => 'Ossigeno nel sangue';

  @override
  String get health_latest_glucose => 'Glucosio nel sangue';

  @override
  String get health_latest_weight => 'Peso';

  @override
  String get health_latest_sleep => 'Durata del sonno';

  @override
  String get health_add_manual => 'Aggiungi misurazione manuale';

  @override
  String get health_history_trends => 'Tendenze storiche';

  @override
  String get health_sync_success =>
      'I dati sanitari sono stati sincronizzati correttamente!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ore $mins minuti';
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
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dl';
  }

  @override
  String get health_devices_title => 'Dispositivi connessi e indossabili';

  @override
  String get health_devices_desc =>
      'Gestisci smartwatch, fitness tracker e sensori di salute associati.';

  @override
  String get health_workout_editor_title => 'Modifica allenamento';

  @override
  String get health_workout_name_label => 'Nome dell\'allenamento';

  @override
  String get health_workout_duration_label => 'Durata (minuti)';

  @override
  String get health_workout_calories_label => 'Calorie stimate (kcal)';

  @override
  String get health_workout_date_label => 'Data e ora';

  @override
  String get plan_daily_wellness_roadmap =>
      'La tua tabella di marcia personalizzata';

  @override
  String get plan_morning_routine => 'Routine mattutina';

  @override
  String get plan_afternoon_routine => 'Benessere di mezzogiorno';

  @override
  String get plan_evening_routine => 'Rilassamento serale';

  @override
  String get plan_coach_badge =>
      'Allenatore dell\'intelligenza artificiale di Bloomi';

  @override
  String get plan_weekly_overview => 'Focus sul benessere di 7 giorni';

  @override
  String get plan_targets_title => 'Obiettivi e obiettivi di benessere';

  @override
  String get plan_calorie_budget_label => 'Bilancio calorico giornaliero';

  @override
  String get plan_water_budget_label => 'Obiettivo idrico giornaliero';

  @override
  String get plan_step_budget_label => 'Obiettivo di passi giornaliero';

  @override
  String get plan_macro_split_label => 'Rapporto dei macronutrienti';

  @override
  String get profile_personal_details => 'Dettagli personali';

  @override
  String get profile_body_stats => 'Misure del corpo';

  @override
  String get profile_app_preferences => 'Preferenze e impostazioni dell\'app';

  @override
  String get profile_edit_name_hint => 'Il tuo nome';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Altezza ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Peso ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Età';

  @override
  String get profile_gender_male => 'Maschio';

  @override
  String get profile_gender_female => 'Femmina';

  @override
  String get profile_gender_other => 'Altro/Preferisco non dirlo';

  @override
  String get profile_activity_sedentary =>
      'Sedentario (poco o nessun esercizio fisico)';

  @override
  String get profile_activity_light =>
      'Leggermente attivo (1-3 giorni/settimana)';

  @override
  String get profile_activity_moderate =>
      'Moderatamente attivo (3-5 giorni/settimana)';

  @override
  String get profile_activity_very => 'Molto attivo (6-7 giorni/settimana)';

  @override
  String get settings_wear_os_header =>
      'Indossa l\'app complementare del sistema operativo';

  @override
  String get settings_wear_os_desc =>
      'Installa il riquadro Bloomi e la complicazione sul tuo orologio Wear OS per visualizzare calorie, acqua e passi.';

  @override
  String get settings_widgets_header => 'Widget Android interattivi';

  @override
  String get settings_widgets_desc =>
      'Aggiungi widget in tempo reale sulla schermata iniziale del tuo dispositivo per aggiornamenti istantanei.';

  @override
  String get settings_about_header => 'A proposito di Bloomi';

  @override
  String get settings_about_version => 'Versione 1.0.0';

  @override
  String get settings_about_build => 'Costruisci 100';

  @override
  String get settings_about_credits =>
      'Realizzato con cura per una vita consapevole e sana.';

  @override
  String get settings_terms_header => 'Termini e condizioni';

  @override
  String get settings_privacy_header => 'Informativa sulla privacy';

  @override
  String get settings_delete_header => 'Elimina account e dati';

  @override
  String get settings_delete_warning =>
      'Questa azione non può essere annullata. Tutti i tuoi pasti, allenamenti, parametri vitali e profilo verranno eliminati definitivamente.';

  @override
  String get settings_delete_confirm_btn => 'Elimina definitivamente';

  @override
  String get onboard_welcome_headline => 'Benvenuti a Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Monitoraggio del benessere delicato e consapevole progettato intorno alla tua vita.';

  @override
  String get onboard_step_about => 'Su di te';

  @override
  String get onboard_step_goals => 'I tuoi obiettivi';

  @override
  String get onboard_step_lifestyle => 'Abitudini quotidiane';

  @override
  String get onboard_step_permissions => 'Autorizzazioni';

  @override
  String get onboard_step_plan => 'Pronto!';

  @override
  String get onboard_health_connect_perm =>
      'Accesso alla connessione sanitaria';

  @override
  String get onboard_step_sensors_perm => 'Sensore contapassi';

  @override
  String get onboard_notif_perm => 'Promemoria e notifiche consapevoli';

  @override
  String get onboard_camera_perm =>
      'Fotocamera (scanner per codici a barre e alimenti)';

  @override
  String get onboard_grant_permissions => 'Concedere autorizzazioni';

  @override
  String get onboard_continue_dashboard => 'Apri Dashboard';

  @override
  String get notif_channel_hydration_name => 'Suggerimenti per l\'idratazione';

  @override
  String get notif_channel_hydration_desc =>
      'Delicati promemoria dell\'acqua durante il giorno';

  @override
  String get notif_channel_nutrition_name => 'Promemoria su pasti e nutrizione';

  @override
  String get notif_channel_nutrition_desc =>
      'Avvisi promemoria per colazione, pranzo e cena';

  @override
  String get notif_channel_steps_name => 'Traguardi del passo';

  @override
  String get notif_channel_steps_desc =>
      'Festeggiamenti al raggiungimento degli obiettivi di passi giornalieri';

  @override
  String get notif_channel_vitals_name => 'Controlli sanitari e vitali';

  @override
  String get notif_channel_vitals_desc =>
      'Promemoria per il peso e l\'ora di andare a dormire';

  @override
  String get notif_action_log_water => '💧 Registro +250ml';

  @override
  String get notif_action_snooze => 'Posticipa 15 minuti';

  @override
  String get notif_action_log_meal => '🥗 Log Pasto';

  @override
  String get language => 'Lingua';

  @override
  String get share => 'Condividi';

  @override
  String common_days(Object count) {
    return '$count giorni fa';
  }
}
