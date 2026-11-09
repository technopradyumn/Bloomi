// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Acasă';

  @override
  String get nav_today => 'Astăzi';

  @override
  String get nav_plan => 'Planifică';

  @override
  String get nav_food => 'Mâncare';

  @override
  String get nav_food_diary => 'Jurnal alimentar';

  @override
  String get nav_workout => 'Jurnal de antrenament';

  @override
  String get nav_health => 'Sănătate';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Salvați';

  @override
  String get cancel => 'Anulează';

  @override
  String get delete => 'Ștergeți';

  @override
  String get edit => 'Editați';

  @override
  String get done => 'Gata';

  @override
  String get close => 'Închide';

  @override
  String get back => 'Înapoi';

  @override
  String get next => 'În continuare';

  @override
  String get continue_btn => 'Continuă';

  @override
  String get confirm => 'Confirmați';

  @override
  String get search => 'Caută';

  @override
  String get filter => 'Filtru';

  @override
  String get all => 'Toate';

  @override
  String get active => 'Activ';

  @override
  String get today => 'Astăzi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get tomorrow => 'Mâine';

  @override
  String get add => 'Adăugați';

  @override
  String get remove => 'Eliminați';

  @override
  String get refresh => 'Reîmprospătați';

  @override
  String get retry => 'Reîncercați';

  @override
  String get error => 'Eroare';

  @override
  String get success => 'Succes';

  @override
  String get loading => 'Se încarcă...';

  @override
  String get no_data => 'Nu există date disponibile';

  @override
  String get offline => 'Modul offline';

  @override
  String get offline_sub => 'Modificările se vor sincroniza după reconectare';

  @override
  String get undo => 'Anulați';

  @override
  String get portion => 'Porțiune';

  @override
  String get quantity => 'Cantitatea';

  @override
  String get unit => 'unitate';

  @override
  String get clear => 'Clar';

  @override
  String get select => 'Selectați';

  @override
  String get apply => 'Aplicați';

  @override
  String get reset => 'Resetați';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Nu';

  @override
  String get optional => 'Opțional';

  @override
  String get calories => 'Calorii';

  @override
  String get protein => 'Proteine';

  @override
  String get carbs => 'Carbohidrați';

  @override
  String get fat => 'grăsime';

  @override
  String get fiber => 'Fibră';

  @override
  String get water => 'apă';

  @override
  String get steps => 'Pași';

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
  String get hours => 'ore';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Servire';

  @override
  String get servings => 'Porții';

  @override
  String get serving_size => 'Dimensiunea porției';

  @override
  String get per_100g => 'la 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Orientul Mijlociu';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americi';

  @override
  String get home_title => 'Acasă';

  @override
  String get home_greeting_morning => 'Bună dimineața';

  @override
  String get home_greeting_afternoon => 'Bună după-amiaza';

  @override
  String get home_greeting_evening => 'Buna seara';

  @override
  String get home_streak_title => 'Dâra de înflorire';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zile consecutive',
      one: '1 zi consecutiv',
      zero: '0 zile consecutiv',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ars';

  @override
  String get home_calories_budget => 'Bugetul de calorii';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal rămase';
  }

  @override
  String get home_water_title => 'Hidratare zilnică';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Pași parcurși';

  @override
  String get home_quick_actions => 'Acțiuni rapide';

  @override
  String get home_log_meal => 'Masa din busteni';

  @override
  String get home_log_water => 'Bușteni de apă';

  @override
  String get home_log_workout => 'Înregistrați antrenamentul';

  @override
  String get home_log_weight => 'Greutatea jurnalului';

  @override
  String get home_insights_title => 'Perspectivele de azi';

  @override
  String get home_quote =>
      'Micile alegeri sănătoase creează transformări înfloritoare.';

  @override
  String get home_ai_coach_tip => 'Antrenor Bloomi AI';

  @override
  String get home_surroundings => 'Împrejurimi și aer';

  @override
  String get home_notifications => 'Notificări';

  @override
  String get home_daily_score => 'Scorul zilnic de bunăstare';

  @override
  String get home_view_all => 'Vezi toate';

  @override
  String get food_diary_title => 'Jurnal alimentar';

  @override
  String get food_breakfast => 'Micul dejun';

  @override
  String get food_lunch => 'Prânzul';

  @override
  String get food_dinner => 'Cina';

  @override
  String get food_snacks => 'Gustări';

  @override
  String get food_add_food => 'Adăugați mâncare';

  @override
  String get food_edit_food => 'Editați mâncarea';

  @override
  String get food_add_breakfast => 'Adăugați Micul dejun';

  @override
  String get food_add_lunch => 'Adăugați prânzul';

  @override
  String get food_add_dinner => 'Adăugați Cina';

  @override
  String get food_add_snack => 'Adăugați o gustare';

  @override
  String get food_total_calories => 'Calorii totale';

  @override
  String get food_empty_meal =>
      'Nu există alimente înregistrate încă pentru această masă';

  @override
  String get food_empty_diary => 'Nicio masă înregistrată pentru această zi';

  @override
  String get food_log_first_meal =>
      'Atingeți + pentru a vă înregistra prima masă delicioasă';

  @override
  String get food_quick_add => 'Adăugare rapidă';

  @override
  String get food_search_hint =>
      'Căutați feluri de mâncare, fructe, dal, roti...';

  @override
  String get food_custom_recipe => 'Mâncare și rețetă personalizate';

  @override
  String get food_scan_barcode => 'Scanați codul de bare';

  @override
  String get food_camera_scan => 'Scanner AI pentru alimente';

  @override
  String get food_recent => 'Alimente recente';

  @override
  String get food_favourites => 'Favorite';

  @override
  String get food_macro_summary => 'Defalcarea macronutrienților';

  @override
  String get food_delete_meal_confirm =>
      'Sigur doriți să eliminați acest articol?';

  @override
  String get food_item_deleted => 'Produs alimentar eliminat';

  @override
  String get food_remaining => 'ramanand';

  @override
  String get food_consumed => 'consumat';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Caută alimente';

  @override
  String get foodSearch_scan_barcode => 'Scanați codul de bare';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Creați mâncare personalizată';

  @override
  String get foodSearch_recent_searches => 'Căutări recente';

  @override
  String get foodSearch_popular => 'Mâncăruri populare';

  @override
  String get foodSearch_no_results =>
      'Nu există alimente care să corespundă căutării dvs';

  @override
  String get barcode_title => 'Scanner de coduri de bare';

  @override
  String get barcode_align =>
      'Aliniați codul de bare în interiorul cadrului camerei';

  @override
  String get barcode_not_found => 'Produsul nu a fost găsit în baza de date';

  @override
  String get barcode_premium_feature =>
      'Scanarea codurilor de bare este disponibilă cu Bloomi Pro';

  @override
  String get camera_title => 'Scanner AI pentru alimente';

  @override
  String get camera_tap_hint => 'Faceți o fotografie clară a preparatului dvs';

  @override
  String get camera_analysing => 'Se analizează farfuria cu mâncare...';

  @override
  String get camera_detected => 'Articole detectate';

  @override
  String get camera_flash => 'Comutați Flash';

  @override
  String get camera_retake => 'Refaceți fotografia';

  @override
  String get camera_confirm_food => 'Confirmați articole';

  @override
  String get customFood_title => 'Mâncare și rețetă personalizate';

  @override
  String get customFood_name_hint =>
      'Numele preparatului sau al ingredientului';

  @override
  String get customFood_calories_hint => 'Calorii (kcal)';

  @override
  String get customFood_protein_hint => 'proteine (g)';

  @override
  String get customFood_carbs_hint => 'Carbohidrați (g)';

  @override
  String get customFood_fat_hint => 'grăsime (g)';

  @override
  String get customFood_save => 'Salvați rețeta';

  @override
  String get water_tracker_title => 'Urmăritor de apă';

  @override
  String get water_daily_target => 'Obiectivul zilnic de hidratare';

  @override
  String get water_logged_today => 'Conectat astăzi';

  @override
  String get water_add_glass => '+250 ml Sticlă';

  @override
  String get water_add_bottle => '+ Flacon de 500 ml';

  @override
  String get water_custom_amount => 'Sumă personalizată';

  @override
  String get water_reminder_tip =>
      'Bea apă în mod regulat pe tot parcursul zilei pentru energie constantă.';

  @override
  String water_logged_toast(Object amount) {
    return 'S-au înregistrat $amount ml de apă 💧';
  }

  @override
  String get workout_title => 'Jurnal de antrenament';

  @override
  String get workout_add_exercise => 'Adăugați antrenament';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Puterea';

  @override
  String get workout_yoga => 'Yoga și flexibilitate';

  @override
  String get workout_duration => 'Durata';

  @override
  String get workout_intensity => 'Intensitate';

  @override
  String get workout_calories_burned => 'Calorii arse';

  @override
  String get workout_empty => 'Nu au fost înregistrate antrenamente astăzi';

  @override
  String get workout_save_success => 'Antrenamentul a fost salvat cu succes!';

  @override
  String get workout_type => 'Tip de antrenament';

  @override
  String get workout_notes => 'Note și reflecții';

  @override
  String get health_overview_title => 'Sănătate și elemente vitale';

  @override
  String get health_heart_rate => 'Ritmul cardiac';

  @override
  String get health_blood_oxygen => 'Oxigenul din sânge (SpO2)';

  @override
  String get health_blood_pressure => 'Tensiunea arterială';

  @override
  String get health_blood_glucose => 'Glicemia';

  @override
  String get health_body_temperature => 'Temperatura corpului';

  @override
  String get health_sleep_tracking => 'Urmărirea somnului';

  @override
  String get health_weight_tracking => 'Greutate și compoziție corporală';

  @override
  String get health_waist_hip => 'Raportul talie la șold';

  @override
  String get health_devices_hub => 'Dispozitive și Smartwatch Hub';

  @override
  String get health_sync_now => 'Sincronizați datele de sănătate';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Ultima sincronizare: $time';
  }

  @override
  String get health_manual_entry => 'Introducere manuală în sănătate';

  @override
  String get health_metric_detail => 'Detalii metrice';

  @override
  String get health_connected_sensors => 'Senzori de sănătate conectați';

  @override
  String get plan_title => 'Plan zilnic';

  @override
  String get plan_weekly_title => 'Plan săptămânal de wellness';

  @override
  String get plan_calorie_target => 'țintă de calorii';

  @override
  String get plan_water_target => 'Țintă de hidratare';

  @override
  String get plan_step_target => 'Pas țintă';

  @override
  String get plan_sleep_target => 'Țintă de somn';

  @override
  String get plan_meal_suggestions => 'Sugestii de masă';

  @override
  String get plan_healthy_habits => 'Obiceiuri și sfaturi sănătoase';

  @override
  String get plan_coach_advice => 'Recomandări ale antrenorului Bloomi AI';

  @override
  String get plan_generated_title => 'Program zilnic personalizat';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Editați profilul';

  @override
  String get profile_name => 'Nume';

  @override
  String get profile_age => 'Vârsta';

  @override
  String get profile_gender => 'Gen';

  @override
  String get profile_height => 'Înălțime';

  @override
  String get profile_weight => 'Greutate';

  @override
  String get profile_goal => 'Scopul principal';

  @override
  String get profile_activity_level => 'Nivel de activitate';

  @override
  String get profile_stats => 'Statisticile mele de sănătate';

  @override
  String get profile_saved => 'Profil actualizat cu succes';

  @override
  String get profile_bmi => 'Indicele de masă corporală (IMC)';

  @override
  String get profile_membership => 'Calitatea de membru';

  @override
  String get settings => 'Setări';

  @override
  String get preferences_habits => 'PREFERINȚE ȘI OBIECȚURI';

  @override
  String get appearance_theme => 'Aspect și temă';

  @override
  String get appearance_theme_sub =>
      'Opțiuni de fundal întuneric, deschis, modul sistem și aplicație';

  @override
  String get permissions => 'Permisiuni și acces la sistem';

  @override
  String get permissions_sub =>
      'Health Connect, senzori de pas, GPS, notificări și cameră';

  @override
  String get reminders_notifications => 'Mementouri și notificări';

  @override
  String get reminders_sub =>
      'Orele de masă, apă, verificarea greutății și mementouri pentru ora de culcare';

  @override
  String get units_of_measurement => 'Unități de măsură';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) sau imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Limba aplicației';

  @override
  String get language_sub =>
      'Engleză, हिन्दी (Hindi), Hinglish și peste 195 de limbi globale';

  @override
  String get home_screen_widgets => 'Widgeturi pe ecranul de pornire';

  @override
  String get widgets_sub =>
      'Widgeturi live Android: hub, pași, apă, nutriție și mascotă';

  @override
  String get wear_os_watch_app => 'Aplicația Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Smartwatch însoțitor, plăci, complicații și elemente vitale vii';

  @override
  String get goals_wellness => 'OBIECTIVE ȘI PERSPECTIVE DE SĂNĂTATE';

  @override
  String get nutrition_targets => 'Ținte nutriționale și Macro Split';

  @override
  String get nutrition_targets_sub =>
      'țintă de calorii, proteine, carbohidrați, grăsimi și apă';

  @override
  String get weekly_recap => 'Recapitulare săptămânală de sănătate';

  @override
  String get weekly_recap_sub =>
      'Medie calorică pe 7 zile, raport macro și cea mai bună zi';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Dâre active de înflorire, insigne și realizări';

  @override
  String get connected_devices => 'DISPOZITIVE ȘI ECOSISTEM CONECTATE';

  @override
  String get devices_hub => 'Dispozitive și Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Împrejurimi și vreme';

  @override
  String get surroundings_sub =>
      'Calitatea aerului (AQI), indicele UV și sfaturi pentru hidratarea vremii';

  @override
  String get bloomi_pro => 'Abonament Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget-uri pe ecranul de pornire și urmărire a elementelor vitale';

  @override
  String get about_security => 'DESPRE & SECURITATE';

  @override
  String get about_bloomi => 'Despre Bloomi';

  @override
  String get about_bloomi_sub =>
      'Specificații de construcție, versiune, atribuții';

  @override
  String get privacy_policy => 'Politica de confidențialitate';

  @override
  String get privacy_policy_sub => 'Arhitectură de date offline, pe dispozitiv';

  @override
  String get terms_conditions => 'Termeni și condiții';

  @override
  String get terms_conditions_sub => 'Termeni și reguli de bunăstare';

  @override
  String get delete_account => 'Ștergeți contul și datele';

  @override
  String get delete_account_sub =>
      'Ștergeți ireversibil datele SQLite locale și backup-urile din cloud';

  @override
  String get healthy_habits =>
      'Construiește obiceiuri blânde și de durată de sănătate';

  @override
  String get all_logs => 'Datele și jurnalele mele urmărite';

  @override
  String get search_language => 'Căutați după limbă sau script nativ...';

  @override
  String get languages_available => 'Limbi disponibile';

  @override
  String get no_matching_languages => 'Nu s-au găsit limbi care se potrivesc';

  @override
  String get try_searching =>
      'Încercați să căutați după scrierea nativă sau ortografia engleză';

  @override
  String get partially_translated => 'Parțial tradus';

  @override
  String get complete_translation => 'Complet';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Limba setată la $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Împrejurimi și Mediu';

  @override
  String get surroundings_aqi => 'Indicele de calitate a aerului';

  @override
  String get surroundings_uv => 'Index UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Umiditate';

  @override
  String get surroundings_hydration_advice =>
      'Rămâneți bine hidratat în condițiile meteo actuale.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Caută Mâncare';

  @override
  String get food_quick_barcode => 'Scanează codul de bare 👑';

  @override
  String get food_quick_water => 'Adăugați apă';

  @override
  String get food_quick_custom => 'Mâncare personalizată';

  @override
  String get surroundings_good => 'Bun';

  @override
  String get surroundings_moderate => 'Moderat';

  @override
  String get surroundings_unhealthy => 'Nesănătos';

  @override
  String get notifications_title => 'Notificări și alerte';

  @override
  String get notifications_empty => 'Fără notificări noi';

  @override
  String get notifications_mark_read => 'Marcați toate ca citite';

  @override
  String get notifications_clear => 'Ștergeți tot';

  @override
  String get reminders => 'Setări de memento';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Memento pentru micul dejun 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bună dimineața! Este timpul pentru un mic dejun hrănitor la $time .';
  }

  @override
  String get reminders_lunch_title => 'Memento de prânz 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Faceți o pauză și bucurați-vă de un prânz echilibrat și atent la $time .';
  }

  @override
  String get reminders_dinner_title => 'Memento pentru cină 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Este timpul pentru o cină ușoară și satisfăcătoare la $time .';
  }

  @override
  String get reminders_water_title => 'Hidratare Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'E timpul să bei un pahar de apă proaspătă! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Cântărire săptămânală ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Urmăriți valorile corporale săptămânale pe Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Relaxarea la culcare 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Relaxează-te și pregătește-te pentru un somn odihnitor ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bun venit la Bloomi';

  @override
  String get onboard_sub =>
      'Partenerul tău prietenos, offline pentru sănătate și nutriție.';

  @override
  String get onboard_get_started => 'Începeți';

  @override
  String get onboard_sign_in => 'Conectați-vă';

  @override
  String get onboard_skip => 'Sari peste';

  @override
  String get onboard_choose_goal =>
      'Care este obiectivul tău principal de sănătate?';

  @override
  String get onboard_goal_weight_loss => 'Pierdere uşoară în greutate';

  @override
  String get onboard_goal_muscle => 'Creștere musculară și forță';

  @override
  String get onboard_goal_energy => 'Energie și vitalitate zilnică';

  @override
  String get onboard_goal_habits => 'Alimentație sănătoasă și atentă';

  @override
  String get onboard_about_you => 'Povestește-ne despre tine';

  @override
  String get onboard_lifestyle => 'Rutina ta zilnică';

  @override
  String get onboard_permissions_title => 'Permisiuni și acces la sistem';

  @override
  String get onboard_permissions_sub =>
      'Acordați acces la pașii de sincronizare, antrenamente și mementouri.';

  @override
  String get onboard_plan_ready_title => 'Planul dvs. personalizat este gata!';

  @override
  String get onboard_plan_ready_sub =>
      'Am creat o foaie de parcurs blândă, personalizată pentru nutriție și sănătate, doar pentru tine.';

  @override
  String get onboard_enter_bloomi => 'Intră Bloomi';

  @override
  String get insights_weekly_report => 'Recapitulare săptămânală de sănătate';

  @override
  String insights_best_day(Object day) {
    return 'Cea mai bună zi a consistenței: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Deblocat pe $date';
  }

  @override
  String get insights_keep_going => 'Continuați cu progresul fantastic!';

  @override
  String get widgets_title => 'Widgeturi pe ecranul de pornire';

  @override
  String widgets_active_count(Object count) {
    return 'Widgeturi active: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Pași și inel activ';

  @override
  String get widgets_water_title => 'Jurnal rapid de hidratare';

  @override
  String get widgets_mascot_title => 'Companionul mascotei Bloomi';

  @override
  String get wear_os_title => 'Purtați Smartwatch OS';

  @override
  String get wear_os_connected => 'Conectat la Watch';

  @override
  String get wear_os_sync => 'Sincronizați datele de vizionare';

  @override
  String get theme_title => 'Aspect și temă';

  @override
  String get theme_mode => 'Modul Temă';

  @override
  String get theme_light => 'Lumină';

  @override
  String get theme_dark => 'Întuneric';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Paleta de fundal';

  @override
  String get units_title => 'Unități de măsură';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nu se poate încărca tabloul de bord';

  @override
  String get home_health_permission_req =>
      'Este necesară permisiunea Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi necesită permisiunea Health Connect pentru a efectua pași reali, frecvența cardiacă și sincronizarea widget-urilor pentru casele mobile în timp real.';

  @override
  String get home_allow_health => 'Permite Health Connect';

  @override
  String get home_ready_mindful_day => 'Sunteți gata pentru o zi atentă? ✨';

  @override
  String get home_quick_add => 'Adăugare rapidă';

  @override
  String get home_live_gps => 'GPS live';

  @override
  String get home_calories_remaining_label => 'CALORII RĂMÂNSE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Mâncat: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Atingeți pentru Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Obiectivul zilnic atins 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml până la obiectivul zilnic';
  }

  @override
  String get home_details => 'Detalii';

  @override
  String get home_upgrade_plan_desc =>
      'Faceți upgrade pentru a debloca ținte zilnice personalizate și plan AI';

  @override
  String get home_unlock => 'Deblocați 👑';

  @override
  String get home_quick_log_hint => 'Înregistrați rapid o intrare de wellness';

  @override
  String get food_serving_size => 'Dimensiunea porției';

  @override
  String get food_serving_grams => 'Porție (g)';

  @override
  String get food_number_servings => 'Numărul de porții';

  @override
  String get food_calories_per_serving => 'Calorii per porție';

  @override
  String get food_recipe_ingredients => 'Ingrediente';

  @override
  String get food_recipe_add_ingredient => 'Adăugați ingredient';

  @override
  String get food_recipe_directions => 'Instrucțiuni și note';

  @override
  String get food_recipe_total => 'Nutriție totală rețetă';

  @override
  String get food_recipe_per_serving => 'Nutriție per porție';

  @override
  String get food_recipe_saved_toast =>
      'Mâncare personalizată salvată cu succes!';

  @override
  String get food_barcode_found => 'Produs găsit!';

  @override
  String get food_barcode_not_found_desc =>
      'Nu am putut găsi acest cod de bare în baza de date deschisă. Îl poți adăuga ca aliment personalizat.';

  @override
  String get food_add_custom_btn => 'Adăugați mâncare personalizată';

  @override
  String get food_scan_again => 'Scanați din nou';

  @override
  String get food_review_items => 'Examinați alimentele detectate';

  @override
  String get food_review_hint =>
      'Ajustați cantitățile sau eliminați orice articol nerecunoscut';

  @override
  String get food_log_selected => 'Înregistrați alimentele selectate';

  @override
  String get food_favourites_title => 'Alimentele preferate';

  @override
  String get food_recent_title => 'Alimente recente';

  @override
  String get food_no_favourites =>
      'Nu există alimente preferate încă. Apăsați inima pe orice mâncare pentru a salva aici.';

  @override
  String get food_no_recents => 'Nu s-au găsit alimente înregistrate recent.';

  @override
  String get food_nutrition_details_title => 'Detalii de nutriție zilnică';

  @override
  String get food_macro_protein_label => 'Defalcarea proteinelor';

  @override
  String get food_macro_carbs_label => 'Defalcarea carbohidraților';

  @override
  String get food_macro_fat_label => 'Defalcarea grăsimilor';

  @override
  String get food_macro_fiber_label => 'Defalcarea fibrei';

  @override
  String get food_daily_target_comparison => 'Comparație țintă';

  @override
  String food_target_label(Object target) {
    return 'Țintă: $target';
  }

  @override
  String get food_edit_entry => 'Editați intrarea din jurnal';

  @override
  String get food_delete_entry => 'Ștergeți intrarea';

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
    return '$current din $target ml';
  }

  @override
  String get water_intake_history => 'Jurnalele de apă de astăzi';

  @override
  String get water_no_logs_today =>
      'Nu s-a înregistrat încă apă azi. Hidratează-te și atinge un buton de adăugare rapidă!';

  @override
  String get water_adjust_goal => 'Ajustați obiectivul zilnic';

  @override
  String get health_connect_banner => 'Conectat la Health Connect';

  @override
  String get health_vitals_summary => 'Elementele vitale zilnice ale sănătății';

  @override
  String get health_latest_heart_rate => 'Cel mai recent ritm cardiac';

  @override
  String get health_latest_bp => 'Tensiunea arterială';

  @override
  String get health_latest_spo2 => 'Oxigenul din sânge';

  @override
  String get health_latest_glucose => 'Glicemia';

  @override
  String get health_latest_weight => 'Greutate';

  @override
  String get health_latest_sleep => 'Durata somnului';

  @override
  String get health_add_manual => 'Adăugați măsurarea manuală';

  @override
  String get health_history_trends => 'Tendințe istorice';

  @override
  String get health_sync_success =>
      'Datele de sănătate au fost sincronizate cu succes!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ore $mins minute';
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
  String get health_devices_title =>
      'Dispozitive și dispozitive purtabile conectate';

  @override
  String get health_devices_desc =>
      'Gestionați ceasurile inteligente asociate, trackerele de fitness și senzorii de sănătate.';

  @override
  String get health_workout_editor_title => 'Editați antrenamentul';

  @override
  String get health_workout_name_label => 'Numele antrenamentului';

  @override
  String get health_workout_duration_label => 'Durata (minute)';

  @override
  String get health_workout_calories_label => 'Calorii estimate (kcal)';

  @override
  String get health_workout_date_label => 'Data și ora';

  @override
  String get plan_daily_wellness_roadmap => 'Foaia ta de parcurs personalizată';

  @override
  String get plan_morning_routine => 'Rutina de dimineață';

  @override
  String get plan_afternoon_routine => 'Wellness la amiază';

  @override
  String get plan_evening_routine => 'Seara Wind-Down';

  @override
  String get plan_coach_badge => 'Antrenor Bloomi AI';

  @override
  String get plan_weekly_overview => 'Focalizare de wellness de 7 zile';

  @override
  String get plan_targets_title => 'Obiective și obiective de wellness';

  @override
  String get plan_calorie_budget_label => 'Bugetul zilnic de calorii';

  @override
  String get plan_water_budget_label => 'Țintă zilnică de apă';

  @override
  String get plan_step_budget_label => 'Obiectiv de pas zilnic';

  @override
  String get plan_macro_split_label => 'Raportul de macronutrienți';

  @override
  String get profile_personal_details => 'Detalii personale';

  @override
  String get profile_body_stats => 'Măsurătorile corpului';

  @override
  String get profile_app_preferences => 'Preferințe și setări pentru aplicații';

  @override
  String get profile_edit_name_hint => 'Numele tău';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Înălțime ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Greutate ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Vârsta';

  @override
  String get profile_gender_male => 'Bărbat';

  @override
  String get profile_gender_female => 'Femeie';

  @override
  String get profile_gender_other => 'Altele / Prefer să nu spun';

  @override
  String get profile_activity_sedentary =>
      'Sedentar (Puțin sau deloc exercițiu)';

  @override
  String get profile_activity_light => 'Usor activ (1-3 zile/saptamana)';

  @override
  String get profile_activity_moderate => 'Moderat activ (3-5 zile/saptamana)';

  @override
  String get profile_activity_very => 'Foarte activ (6-7 zile/saptamana)';

  @override
  String get settings_wear_os_header => 'Aplicația Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Instalează țiglă Bloomi și complicația pe ceasul tău Wear OS pentru a arunca o privire asupra caloriilor, apei și pașilor.';

  @override
  String get settings_widgets_header => 'Widgeturi interactive Android';

  @override
  String get settings_widgets_desc =>
      'Fixați widgeturi în timp real pe ecranul de pornire al dispozitivului pentru actualizări instantanee.';

  @override
  String get settings_about_header => 'Despre Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Construiește 100';

  @override
  String get settings_about_credits =>
      'Creat cu grijă pentru o viață sănătoasă și atentă.';

  @override
  String get settings_terms_header => 'Termeni și condiții';

  @override
  String get settings_privacy_header => 'Politica de confidențialitate';

  @override
  String get settings_delete_header => 'Ștergeți contul și datele';

  @override
  String get settings_delete_warning =>
      'Această acțiune nu poate fi anulată. Toate mesele, antrenamentele, elementele vitale și profilul dvs. vor fi șterse definitiv.';

  @override
  String get settings_delete_confirm_btn => 'Ștergeți definitiv';

  @override
  String get onboard_welcome_headline => 'Bun venit la Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Urmărire blândă și atentă a stării de bine concepute în jurul vieții tale.';

  @override
  String get onboard_step_about => 'Despre tine';

  @override
  String get onboard_step_goals => 'Obiectivele tale';

  @override
  String get onboard_step_lifestyle => 'Obiceiuri zilnice';

  @override
  String get onboard_step_permissions => 'Permisiuni';

  @override
  String get onboard_step_plan => 'Gata!';

  @override
  String get onboard_health_connect_perm => 'Acces Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Senzor de contor de pași';

  @override
  String get onboard_notif_perm => 'Mementouri și notificări atent';

  @override
  String get onboard_camera_perm =>
      'Cameră (cod de bare și scaner pentru alimente)';

  @override
  String get onboard_grant_permissions => 'Acordați permisiuni';

  @override
  String get onboard_continue_dashboard => 'Deschideți tabloul de bord';

  @override
  String get notif_channel_hydration_name => 'Îmbunătățiri de hidratare';

  @override
  String get notif_channel_hydration_desc =>
      'Mementouri blânde de apă pe tot parcursul zilei';

  @override
  String get notif_channel_nutrition_name =>
      'Mementouri pentru mese și nutriție';

  @override
  String get notif_channel_nutrition_desc =>
      'Alerte de memento pentru micul dejun, prânz și cină';

  @override
  String get notif_channel_steps_name => 'Etape de reper';

  @override
  String get notif_channel_steps_desc =>
      'Sărbători atunci când atingeți obiectivele de pas zilnice';

  @override
  String get notif_channel_vitals_name =>
      'Verificări de sănătate și vitalitate';

  @override
  String get notif_channel_vitals_desc =>
      'Mementouri privind greutatea și ora de culcare';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Amânați 15 m';

  @override
  String get notif_action_log_meal => '🥗 Masa din busteni';

  @override
  String get language => 'Limba';

  @override
  String get share => 'Distribuie';

  @override
  String common_days(Object count) {
    return 'acum $count zi';
  }
}
