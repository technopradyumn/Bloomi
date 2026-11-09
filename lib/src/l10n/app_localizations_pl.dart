// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get app_name => 'Bloomiego';

  @override
  String get nav_home => 'Dom';

  @override
  String get nav_today => 'Dzisiaj';

  @override
  String get nav_plan => 'Planuj';

  @override
  String get nav_food => 'Jedzenie';

  @override
  String get nav_food_diary => 'Dziennik jedzenia';

  @override
  String get nav_workout => 'Dziennik treningu';

  @override
  String get nav_health => 'Zdrowie';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Zapisz';

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get edit => 'Edytuj';

  @override
  String get done => 'Gotowe';

  @override
  String get close => 'Zamknij';

  @override
  String get back => 'Powrót';

  @override
  String get next => 'Następny';

  @override
  String get continue_btn => 'Kontynuuj';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get search => 'Szukaj';

  @override
  String get filter => 'Filtruj';

  @override
  String get all => 'Wszystko';

  @override
  String get active => 'Aktywny';

  @override
  String get today => 'Dzisiaj';

  @override
  String get yesterday => 'Wczoraj';

  @override
  String get tomorrow => 'Jutro';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Usuń';

  @override
  String get refresh => 'Odśwież';

  @override
  String get retry => 'Spróbuj ponownie';

  @override
  String get error => 'Błąd';

  @override
  String get success => 'Sukces';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get no_data => 'Brak dostępnych danych';

  @override
  String get offline => 'Tryb offline';

  @override
  String get offline_sub =>
      'Zmiany zostaną zsynchronizowane po ponownym połączeniu';

  @override
  String get undo => 'Cofnij';

  @override
  String get portion => 'Porcja';

  @override
  String get quantity => 'Ilość';

  @override
  String get unit => 'Jednostka';

  @override
  String get clear => 'Jasne';

  @override
  String get select => 'Wybierz';

  @override
  String get apply => 'Zastosuj';

  @override
  String get reset => 'Zresetuj';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Tak';

  @override
  String get no => 'Nie';

  @override
  String get optional => 'Opcjonalne';

  @override
  String get calories => 'Kalorie';

  @override
  String get protein => 'Białko';

  @override
  String get carbs => 'Węglowodany';

  @override
  String get fat => 'Gruby';

  @override
  String get fiber => 'Włókno';

  @override
  String get water => 'Woda';

  @override
  String get steps => 'Kroki';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'funty';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'w';

  @override
  String get bpm => 'uderzenia na minutę';

  @override
  String get hours => 'godz';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Porcja';

  @override
  String get servings => 'Porcje';

  @override
  String get serving_size => 'Rozmiar porcji';

  @override
  String get per_100g => 'na 100g';

  @override
  String get india => 'Indie';

  @override
  String get asia => 'Azja';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Bliski Wschód';

  @override
  String get africa => 'Afryka';

  @override
  String get americas => 'Ameryki';

  @override
  String get home_title => 'Dom';

  @override
  String get home_greeting_morning => 'Dzień dobry';

  @override
  String get home_greeting_afternoon => 'Dzień dobry';

  @override
  String get home_greeting_evening => 'Dobry wieczór';

  @override
  String get home_streak_title => 'Smuga kwiatów';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seria $count dni',
      one: 'Seria 1 dzień',
      zero: 'Seria 0 dni',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Spalony';

  @override
  String get home_calories_budget => 'Budżet kalorii';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Pozostało $kcal kcal';
  }

  @override
  String get home_water_title => 'Codzienne nawodnienie';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Kroki szły';

  @override
  String get home_quick_actions => 'Szybkie działania';

  @override
  String get home_log_meal => 'Zaloguj posiłek';

  @override
  String get home_log_water => 'Zaloguj się do wody';

  @override
  String get home_log_workout => 'Zapisz trening';

  @override
  String get home_log_weight => 'Zaloguj wagę';

  @override
  String get home_insights_title => 'Dzisiejsze spostrzeżenia';

  @override
  String get home_quote => 'Małe zdrowe wybory powodują kwitnące przemiany.';

  @override
  String get home_ai_coach_tip => 'Bloomi Trener AI';

  @override
  String get home_surroundings => 'Otoczenie i powietrze';

  @override
  String get home_notifications => 'Powiadomienia';

  @override
  String get home_daily_score => 'Dzienny wynik dobrego samopoczucia';

  @override
  String get home_view_all => 'Zobacz wszystko';

  @override
  String get food_diary_title => 'Dziennik jedzenia';

  @override
  String get food_breakfast => 'Śniadanie';

  @override
  String get food_lunch => 'Obiad';

  @override
  String get food_dinner => 'Kolacja';

  @override
  String get food_snacks => 'Przekąski';

  @override
  String get food_add_food => 'Dodaj jedzenie';

  @override
  String get food_edit_food => 'Edytuj jedzenie';

  @override
  String get food_add_breakfast => 'Dodaj śniadanie';

  @override
  String get food_add_lunch => 'Dodaj lunch';

  @override
  String get food_add_dinner => 'Dodaj obiad';

  @override
  String get food_add_snack => 'Dodaj przekąskę';

  @override
  String get food_total_calories => 'Całkowita liczba kalorii';

  @override
  String get food_empty_meal =>
      'Nie zarejestrowano jeszcze żadnych produktów dla tego posiłku';

  @override
  String get food_empty_diary => 'Na ten dzień nie zapisano żadnych posiłków';

  @override
  String get food_log_first_meal =>
      'Kliknij +, aby zapisać swój pierwszy pyszny posiłek';

  @override
  String get food_quick_add => 'Szybkie dodawanie';

  @override
  String get food_search_hint => 'Wyszukaj dania, owoce, dal, roti...';

  @override
  String get food_custom_recipe => 'Niestandardowe jedzenie i przepis';

  @override
  String get food_scan_barcode => 'Zeskanuj kod kreskowy';

  @override
  String get food_camera_scan => 'Skaner żywności AI';

  @override
  String get food_recent => 'Najnowsze potrawy';

  @override
  String get food_favourites => 'Ulubione';

  @override
  String get food_macro_summary => 'Rozkład makroskładników';

  @override
  String get food_delete_meal_confirm =>
      'Czy na pewno chcesz usunąć ten element?';

  @override
  String get food_item_deleted => 'Usunięto artykuł spożywczy';

  @override
  String get food_remaining => 'pozostałe';

  @override
  String get food_consumed => 'skonsumowany';

  @override
  String food_of_target(Object target) {
    return 'z $target kcal';
  }

  @override
  String get foodSearch_title => 'Wyszukaj żywność';

  @override
  String get foodSearch_scan_barcode => 'Zeskanuj kod kreskowy';

  @override
  String get foodSearch_take_photo => 'Zrób zdjęcie jedzenia';

  @override
  String get foodSearch_custom_food => 'Twórz niestandardowe jedzenie';

  @override
  String get foodSearch_recent_searches => 'Ostatnie wyszukiwania';

  @override
  String get foodSearch_popular => 'Popularne dania';

  @override
  String get foodSearch_no_results =>
      'Brak produktów spożywczych pasujących do Twojego wyszukiwania';

  @override
  String get barcode_title => 'Skaner kodów kreskowych';

  @override
  String get barcode_align => 'Wyrównaj kod kreskowy wewnątrz ramki aparatu';

  @override
  String get barcode_not_found => 'Nie znaleziono produktu w bazie danych';

  @override
  String get barcode_premium_feature =>
      'Skanowanie kodów kreskowych jest dostępne w Bloomi Pro';

  @override
  String get camera_title => 'Skaner żywności AI';

  @override
  String get camera_tap_hint => 'Zrób wyraźne zdjęcie swojego dania';

  @override
  String get camera_analysing => 'Analiza talerza z jedzeniem...';

  @override
  String get camera_detected => 'Wykryte elementy';

  @override
  String get camera_flash => 'Przełącz Flash';

  @override
  String get camera_retake => 'Powtórz zdjęcie';

  @override
  String get camera_confirm_food => 'Potwierdź elementy';

  @override
  String get customFood_title => 'Niestandardowe jedzenie i przepis';

  @override
  String get customFood_name_hint => 'Nazwa dania lub składnika';

  @override
  String get customFood_calories_hint => 'Kalorie (kcal)';

  @override
  String get customFood_protein_hint => 'Białko (g)';

  @override
  String get customFood_carbs_hint => 'Węglowodany (g)';

  @override
  String get customFood_fat_hint => 'Tłuszcz (g)';

  @override
  String get customFood_save => 'Zapisz przepis';

  @override
  String get water_tracker_title => 'Śledzenie wody';

  @override
  String get water_daily_target => 'Dzienny cel nawodnienia';

  @override
  String get water_logged_today => 'Zalogowano dzisiaj';

  @override
  String get water_add_glass => '+250 ml Szkło';

  @override
  String get water_add_bottle => '+500ml Butelka';

  @override
  String get water_custom_amount => 'Kwota niestandardowa';

  @override
  String get water_reminder_tip =>
      'Pij wodę regularnie przez cały dzień, aby uzyskać stałą energię.';

  @override
  String water_logged_toast(Object amount) {
    return 'Zalogowano $amount ml wody 💧';
  }

  @override
  String get workout_title => 'Dziennik treningu';

  @override
  String get workout_add_exercise => 'Dodaj trening';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Siła';

  @override
  String get workout_yoga => 'Joga i elastyczność';

  @override
  String get workout_duration => 'Czas trwania';

  @override
  String get workout_intensity => 'Intensywność';

  @override
  String get workout_calories_burned => 'Spalone kalorie';

  @override
  String get workout_empty => 'Dzisiaj nie zapisano żadnych treningów';

  @override
  String get workout_save_success => 'Trening został zapisany pomyślnie!';

  @override
  String get workout_type => 'Typ treningu';

  @override
  String get workout_notes => 'Notatki i refleksje';

  @override
  String get health_overview_title => 'Zdrowie i witalność';

  @override
  String get health_heart_rate => 'Tętno';

  @override
  String get health_blood_oxygen => 'Tlen we krwi (SpO2)';

  @override
  String get health_blood_pressure => 'Ciśnienie krwi';

  @override
  String get health_blood_glucose => 'Glukoza we krwi';

  @override
  String get health_body_temperature => 'Temperatura ciała';

  @override
  String get health_sleep_tracking => 'Śledzenie snu';

  @override
  String get health_weight_tracking => 'Waga i skład ciała';

  @override
  String get health_waist_hip => 'Stosunek talii do bioder';

  @override
  String get health_devices_hub => 'Centrum urządzeń i smartwatchów';

  @override
  String get health_sync_now => 'Synchronizuj dane zdrowotne';

  @override
  String health_last_synced(Object time) {
    return 'Ostatnia synchronizacja: $time';
  }

  @override
  String get health_manual_entry => 'Ręczne wprowadzanie stanu zdrowia';

  @override
  String get health_metric_detail => 'Szczegóły metryczne';

  @override
  String get health_connected_sensors => 'Połączone czujniki stanu zdrowia';

  @override
  String get plan_title => 'Plan dzienny';

  @override
  String get plan_weekly_title => 'Tygodniowy plan odnowy biologicznej';

  @override
  String get plan_calorie_target => 'Docelowa liczba kalorii';

  @override
  String get plan_water_target => 'Cel nawodnienia';

  @override
  String get plan_step_target => 'Cel kroku';

  @override
  String get plan_sleep_target => 'Cel snu';

  @override
  String get plan_meal_suggestions => 'Propozycje posiłków';

  @override
  String get plan_healthy_habits => 'Zdrowe nawyki i porady';

  @override
  String get plan_coach_advice => 'Zalecenia trenera Bloomi AI';

  @override
  String get plan_generated_title => 'Spersonalizowany harmonogram dnia';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Edytuj profil';

  @override
  String get profile_name => 'Imię';

  @override
  String get profile_age => 'Wiek';

  @override
  String get profile_gender => 'Płeć';

  @override
  String get profile_height => 'Wysokość';

  @override
  String get profile_weight => 'Waga';

  @override
  String get profile_goal => 'Główny cel';

  @override
  String get profile_activity_level => 'Poziom aktywności';

  @override
  String get profile_stats => 'Moje statystyki dotyczące dobrego samopoczucia';

  @override
  String get profile_saved => 'Profil został pomyślnie zaktualizowany';

  @override
  String get profile_bmi => 'Wskaźnik masy ciała (BMI)';

  @override
  String get profile_membership => 'Członkostwo';

  @override
  String get settings => 'Ustawienia';

  @override
  String get preferences_habits => 'PREFERENCJE I NAWYKI';

  @override
  String get appearance_theme => 'Wygląd i motyw';

  @override
  String get appearance_theme_sub =>
      'Opcje ciemnego, jasnego, trybu systemowego i tła aplikacji';

  @override
  String get permissions => 'Uprawnienia i dostęp do systemu';

  @override
  String get permissions_sub =>
      'Health Connect, czujniki kroków, GPS, powiadomienia i aparat';

  @override
  String get reminders_notifications => 'Przypomnienia i powiadomienia';

  @override
  String get reminders_sub =>
      'Godziny posiłków, woda, kontrola wagi i przypomnienia o porze snu';

  @override
  String get units_of_measurement => 'Jednostki miary';

  @override
  String get units_sub =>
      'Metryczne (kg, cm, ml, km) lub imperialne (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Język aplikacji';

  @override
  String get language_sub =>
      'Angielski, हिन्दी (hindi), hinglish i ponad 195 języków z całego świata';

  @override
  String get home_screen_widgets => 'Widżety ekranu głównego';

  @override
  String get widgets_sub =>
      'Widżety na żywo na Androida: Hub, kroki, woda, odżywianie i maskotka';

  @override
  String get wear_os_watch_app => 'Noś aplikację OS Watch';

  @override
  String get wear_os_sub =>
      'Towarzysz smartwatcha, kafelki, komplikacje i parametry życiowe';

  @override
  String get goals_wellness => 'CELE I WNIOSKI DOTYCZĄCE ZDROWIA';

  @override
  String get nutrition_targets => 'Cele żywieniowe i podział makro';

  @override
  String get nutrition_targets_sub =>
      'Docelowy cel kalorii, białka, węglowodanów, tłuszczu i wody';

  @override
  String get weekly_recap => 'Cotygodniowe podsumowanie dobrego samopoczucia';

  @override
  String get weekly_recap_sub =>
      'Średnia kaloryczność z 7 dni, stosunek makro i najlepszy dzień';

  @override
  String get streaks_milestones => 'Smugi i kamienie milowe';

  @override
  String get streaks_sub => 'Aktywne smugi kwiatowe, odznaki i osiągnięcia';

  @override
  String get connected_devices => 'POŁĄCZONE URZĄDZENIA I EKOSYSTEM';

  @override
  String get devices_hub => 'Centrum urządzeń i smartwatchów';

  @override
  String get devices_hub_sub =>
      'Health Connect, zegarek Galaxy, zegarek Pixel, Garmin';

  @override
  String get surroundings_weather => 'Otoczenie i pogoda';

  @override
  String get surroundings_sub =>
      'Jakość powietrza (AQI), wskaźnik UV i wskazówki dotyczące nawodnienia pogody';

  @override
  String get bloomi_pro => 'Subskrypcja Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widżetów na ekranie głównym i śledzenie parametrów życiowych';

  @override
  String get about_security => 'O I BEZPIECZEŃSTWO';

  @override
  String get about_bloomi => 'O Bloomim';

  @override
  String get about_bloomi_sub => 'Specyfikacje kompilacji, wersja, atrybuty';

  @override
  String get privacy_policy => 'Polityka prywatności';

  @override
  String get privacy_policy_sub =>
      'Architektura danych oparta na trybie offline, na urządzeniu';

  @override
  String get terms_conditions => 'Regulamin';

  @override
  String get terms_conditions_sub =>
      'Warunki świadczenia usług i wytyczne dotyczące dobrego samopoczucia';

  @override
  String get delete_account => 'Usuń konto i dane';

  @override
  String get delete_account_sub =>
      'Nieodwracalnie usuwaj lokalne dane SQLite i kopie zapasowe w chmurze';

  @override
  String get healthy_habits =>
      'Buduj delikatne, trwałe nawyki dobrego samopoczucia';

  @override
  String get all_logs => 'Moje śledzone dane i dzienniki';

  @override
  String get search_language => 'Szukaj według języka lub pisma natywnego...';

  @override
  String get languages_available => 'Dostępne języki';

  @override
  String get no_matching_languages => 'Nie znaleziono pasujących języków';

  @override
  String get try_searching =>
      'Spróbuj wyszukiwać według pisma natywnego lub pisowni angielskiej';

  @override
  String get partially_translated => 'Częściowo przetłumaczone';

  @override
  String get complete_translation => 'Kompletny';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Język ustawiony na $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Otoczenie i środowisko';

  @override
  String get surroundings_aqi => 'Wskaźnik jakości powietrza';

  @override
  String get surroundings_uv => 'Indeks UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Wilgotność';

  @override
  String get surroundings_hydration_advice =>
      'Zadbaj o odpowiednie nawodnienie w obecnych warunkach pogodowych.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Wyszukaj jedzenie';

  @override
  String get food_quick_barcode => 'Zeskanuj kod kreskowy 👑';

  @override
  String get food_quick_water => 'Dodaj wodę';

  @override
  String get food_quick_custom => 'Niestandardowe jedzenie';

  @override
  String get surroundings_good => 'Dobrze';

  @override
  String get surroundings_moderate => 'Umiarkowane';

  @override
  String get surroundings_unhealthy => 'Niezdrowe';

  @override
  String get notifications_title => 'Powiadomienia i alerty';

  @override
  String get notifications_empty => 'Brak nowych powiadomień';

  @override
  String get notifications_mark_read => 'Oznacz wszystko jako przeczytane';

  @override
  String get notifications_clear => 'Wyczyść wszystko';

  @override
  String get reminders => 'Ustawienia przypomnień';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Przypomnienie o śniadaniu 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Dzień dobry! Czas na pożywne śniadanie w $time .';
  }

  @override
  String get reminders_lunch_title => 'Przypomnienie o lunchu 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Zatrzymaj się i ciesz się zrównoważonym, uważnym lunchem w $time.';
  }

  @override
  String get reminders_dinner_title => 'Przypomnienie o kolacji 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Czas na lekką, sycącą kolację w $time .';
  }

  @override
  String get reminders_water_title => 'Nawilżający impuls 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Czas wypić szklankę świeżej wody! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Cotygodniowe ważenie ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Śledź swoje cotygodniowe wskaźniki ciała na Bloomi ( $time).';
  }

  @override
  String get reminders_sleep_title => 'Odpoczynek przed snem 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Odpręż się i przygotuj na spokojny sen ( $time ).';
  }

  @override
  String get onboard_welcome => 'Witamy w Bloomie';

  @override
  String get onboard_sub =>
      'Twój przyjazny, dostępny przede wszystkim w trybie offline towarzysz zdrowia i odżywiania.';

  @override
  String get onboard_get_started => 'Rozpocznij';

  @override
  String get onboard_sign_in => 'Zaloguj się';

  @override
  String get onboard_skip => 'Pomiń';

  @override
  String get onboard_choose_goal =>
      'Jaki jest Twój główny cel dobrego samopoczucia?';

  @override
  String get onboard_goal_weight_loss => 'Delikatna utrata wagi';

  @override
  String get onboard_goal_muscle => 'Przyrost i siła mięśni';

  @override
  String get onboard_goal_energy => 'Codzienna energia i witalność';

  @override
  String get onboard_goal_habits => 'Zdrowe, uważne odżywianie';

  @override
  String get onboard_about_you => 'Opowiedz nam o sobie';

  @override
  String get onboard_lifestyle => 'Twoja codzienna rutyna';

  @override
  String get onboard_permissions_title => 'Uprawnienia i dostęp do systemu';

  @override
  String get onboard_permissions_sub =>
      'Przyznaj dostęp do synchronizacji kroków, treningów i przypomnień.';

  @override
  String get onboard_plan_ready_title =>
      'Twój plan niestandardowy jest gotowy!';

  @override
  String get onboard_plan_ready_sub =>
      'Specjalnie dla Ciebie przygotowaliśmy delikatny, spersonalizowany plan odżywiania i dobrego samopoczucia.';

  @override
  String get onboard_enter_bloomi => 'Wchodzi Bloomi';

  @override
  String get insights_weekly_report =>
      'Cotygodniowe podsumowanie dobrego samopoczucia';

  @override
  String insights_best_day(Object day) {
    return 'Najlepszy dzień spójności: $day';
  }

  @override
  String get insights_streaks_badges => 'Smugi i kamienie milowe';

  @override
  String insights_unlocked_on(Object date) {
    return 'Odblokowano $date';
  }

  @override
  String get insights_keep_going => 'Kontynuuj fantastyczny postęp!';

  @override
  String get widgets_title => 'Widżety ekranu głównego';

  @override
  String widgets_active_count(Object count) {
    return 'Aktywne widżety: $count';
  }

  @override
  String get widgets_hub_title => 'Centrum odnowy biologicznej Bloomi';

  @override
  String get widgets_steps_title => 'Kroki i aktywny pierścień';

  @override
  String get widgets_water_title => 'Szybki dziennik nawodnienia';

  @override
  String get widgets_mascot_title => 'Towarzysz maskotki Bloomi';

  @override
  String get wear_os_title => 'Noś smartwatch z systemem operacyjnym';

  @override
  String get wear_os_connected => 'Połączono z zegarkiem';

  @override
  String get wear_os_sync => 'Synchronizuj dane zegarka';

  @override
  String get theme_title => 'Wygląd i motyw';

  @override
  String get theme_mode => 'Tryb tematyczny';

  @override
  String get theme_light => 'Światło';

  @override
  String get theme_dark => 'Ciemny';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Paleta Tła';

  @override
  String get units_title => 'Jednostki miary';

  @override
  String get units_metric => 'Metryczne (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperialne (funty, cale, uncje)';

  @override
  String get home_unable_load => 'Nie można załadować panelu';

  @override
  String get home_health_permission_req =>
      'Wymagane pozwolenie na połączenie zdrowotne';

  @override
  String get home_health_permission_desc =>
      'Bloomi wymaga pozwolenia Health Connect na pobieranie rzeczywistych kroków, tętna i synchronizację widżetów urządzeń mobilnych w czasie rzeczywistym.';

  @override
  String get home_allow_health => 'Zezwól na połączenie zdrowotne';

  @override
  String get home_ready_mindful_day => 'Gotowy na uważny dzień? ✨';

  @override
  String get home_quick_add => 'Szybkie dodawanie';

  @override
  String get home_live_gps => 'GPS na żywo';

  @override
  String get home_calories_remaining_label => 'POZOSTAŁE KALORIE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Spożycie: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker =>
      'Stuknij, aby włączyć moduł śledzenia wody 💧';

  @override
  String get home_water_goal_reached => 'Cel dzienny osiągnięty 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml do dziennego celu';
  }

  @override
  String get home_details => 'Szczegóły';

  @override
  String get home_upgrade_plan_desc =>
      'Uaktualnij, aby odblokować spersonalizowane dzienne cele i plan AI';

  @override
  String get home_unlock => 'Odblokuj 👑';

  @override
  String get home_quick_log_hint =>
      'Szybko nagraj wpis dotyczący dobrego samopoczucia';

  @override
  String get food_serving_size => 'Rozmiar porcji';

  @override
  String get food_serving_grams => 'Porcja (g)';

  @override
  String get food_number_servings => 'Liczba porcji';

  @override
  String get food_calories_per_serving => 'Kalorie na porcję';

  @override
  String get food_recipe_ingredients => 'Składniki';

  @override
  String get food_recipe_add_ingredient => 'Dodaj składnik';

  @override
  String get food_recipe_directions => 'Instrukcje i notatki';

  @override
  String get food_recipe_total => 'Całkowity przepis na odżywianie';

  @override
  String get food_recipe_per_serving => 'Odżywianie w porcji';

  @override
  String get food_recipe_saved_toast =>
      'Niestandardowe jedzenie zostało zapisane pomyślnie!';

  @override
  String get food_barcode_found => 'Znaleziono produkt!';

  @override
  String get food_barcode_not_found_desc =>
      'Nie znaleźliśmy tego kodu kreskowego w otwartej bazie danych. Możesz dodać go jako niestandardowe jedzenie.';

  @override
  String get food_add_custom_btn => 'Dodaj niestandardowe jedzenie';

  @override
  String get food_scan_again => 'Skanuj ponownie';

  @override
  String get food_review_items => 'Przejrzyj wykryte produkty spożywcze';

  @override
  String get food_review_hint =>
      'Dostosuj ilości lub usuń nierozpoznany element';

  @override
  String get food_log_selected => 'Zaloguj wybrane produkty spożywcze';

  @override
  String get food_favourites_title => 'Ulubione potrawy';

  @override
  String get food_recent_title => 'Najnowsze potrawy';

  @override
  String get food_no_favourites =>
      'Nie ma jeszcze ulubionych potraw. Kliknij serce na dowolnym jedzeniu, aby je tutaj zapisać.';

  @override
  String get food_no_recents =>
      'Nie znaleziono ostatnio zarejestrowanych potraw.';

  @override
  String get food_nutrition_details_title => 'Szczegóły codziennego odżywiania';

  @override
  String get food_macro_protein_label => 'Rozkład białek';

  @override
  String get food_macro_carbs_label => 'Rozkład węglowodanów';

  @override
  String get food_macro_fat_label => 'Rozkład tłuszczu';

  @override
  String get food_macro_fiber_label => 'Rozpad włókien';

  @override
  String get food_daily_target_comparison => 'Porównanie celów';

  @override
  String food_target_label(Object target) {
    return 'Cel: $target';
  }

  @override
  String get food_edit_entry => 'Edytuj wpis w dzienniku';

  @override
  String get food_delete_entry => 'Usuń wpis';

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
    return '$current z $target ml';
  }

  @override
  String get water_intake_history => 'Dzisiejsze dzienniki wodne';

  @override
  String get water_no_logs_today =>
      'Dzisiaj nie zarejestrowano jeszcze wody. Nawodnij i dotknij przycisku szybkiego dodawania!';

  @override
  String get water_adjust_goal => 'Dostosuj dzienny cel';

  @override
  String get health_connect_banner => 'Połączono z Health Connect';

  @override
  String get health_vitals_summary => 'Codzienne parametry zdrowotne';

  @override
  String get health_latest_heart_rate => 'Najnowsze tętno';

  @override
  String get health_latest_bp => 'Ciśnienie krwi';

  @override
  String get health_latest_spo2 => 'Tlen we krwi';

  @override
  String get health_latest_glucose => 'Glukoza we krwi';

  @override
  String get health_latest_weight => 'Waga';

  @override
  String get health_latest_sleep => 'Czas snu';

  @override
  String get health_add_manual => 'Dodaj pomiar ręczny';

  @override
  String get health_history_trends => 'Trendy historyczne';

  @override
  String get health_sync_success =>
      'Dane dotyczące zdrowia zostały pomyślnie zsynchronizowane!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours godz. $mins min';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm uderzeń na minutę';
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
    return '$val mg/dl';
  }

  @override
  String get health_devices_title =>
      'Połączone urządzenia i urządzenia do noszenia';

  @override
  String get health_devices_desc =>
      'Zarządzaj sparowanymi smartwatchami, monitorami kondycji i czujnikami zdrowia.';

  @override
  String get health_workout_editor_title => 'Edytuj trening';

  @override
  String get health_workout_name_label => 'Nazwa treningu';

  @override
  String get health_workout_duration_label => 'Czas trwania (minuty)';

  @override
  String get health_workout_calories_label => 'Szacunkowe kalorie (kcal)';

  @override
  String get health_workout_date_label => 'Data i godzina';

  @override
  String get plan_daily_wellness_roadmap =>
      'Twój spersonalizowany plan działania';

  @override
  String get plan_morning_routine => 'Poranna rutyna';

  @override
  String get plan_afternoon_routine => 'Południowe Wellness';

  @override
  String get plan_evening_routine => 'Wieczorny relaks';

  @override
  String get plan_coach_badge => 'Bloomi Trener AI';

  @override
  String get plan_weekly_overview => '7-dniowe skupienie na dobrym zdrowiu';

  @override
  String get plan_targets_title => 'Cele i cele dotyczące dobrego samopoczucia';

  @override
  String get plan_calorie_budget_label => 'Dzienny budżet kalorii';

  @override
  String get plan_water_budget_label => 'Dzienny cel dotyczący wody';

  @override
  String get plan_step_budget_label => 'Dzienny cel kroków';

  @override
  String get plan_macro_split_label => 'Stosunek makroelementów';

  @override
  String get profile_personal_details => 'Dane osobowe';

  @override
  String get profile_body_stats => 'Pomiary ciała';

  @override
  String get profile_app_preferences => 'Preferencje i ustawienia aplikacji';

  @override
  String get profile_edit_name_hint => 'Twoje imię';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Wysokość ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Waga ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Wiek';

  @override
  String get profile_gender_male => 'Mężczyzna';

  @override
  String get profile_gender_female => 'Kobieta';

  @override
  String get profile_gender_other => 'Inne / Wolę nie mówić';

  @override
  String get profile_activity_sedentary =>
      'Siedzący tryb życia (mało ćwiczeń lub brak ćwiczeń)';

  @override
  String get profile_activity_light => 'Lekko aktywny (1-3 dni w tygodniu)';

  @override
  String get profile_activity_moderate =>
      'Umiarkowanie aktywny (3-5 dni w tygodniu)';

  @override
  String get profile_activity_very => 'Bardzo aktywny (6-7 dni w tygodniu)';

  @override
  String get settings_wear_os_header => 'Aplikacja towarzysząca Wear OS';

  @override
  String get settings_wear_os_desc =>
      'Zainstaluj kafelek i komplikację Bloomi na zegarku z systemem Wear OS, aby móc sprawdzać kalorie, wodę i liczbę kroków.';

  @override
  String get settings_widgets_header => 'Interaktywne widżety na Androida';

  @override
  String get settings_widgets_desc =>
      'Przypinaj widżety działające w czasie rzeczywistym na ekranie głównym urządzenia, aby uzyskać natychmiastowe aktualizacje.';

  @override
  String get settings_about_header => 'O Bloomim';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Zbuduj 100';

  @override
  String get settings_about_credits =>
      'Stworzone z troską o uważny, zdrowy tryb życia.';

  @override
  String get settings_terms_header => 'Regulamin';

  @override
  String get settings_privacy_header => 'Polityka prywatności';

  @override
  String get settings_delete_header => 'Usuń konto i dane';

  @override
  String get settings_delete_warning =>
      'Tej akcji nie można cofnąć. Wszystkie Twoje posiłki, treningi, parametry życiowe i profil zostaną trwale usunięte.';

  @override
  String get settings_delete_confirm_btn => 'Usuń trwale';

  @override
  String get onboard_welcome_headline => 'Witamy w Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Delikatne, uważne śledzenie dobrego samopoczucia zaprojektowane z myślą o Twoim życiu.';

  @override
  String get onboard_step_about => 'O Tobie';

  @override
  String get onboard_step_goals => 'Twoje cele';

  @override
  String get onboard_step_lifestyle => 'Codzienne nawyki';

  @override
  String get onboard_step_permissions => 'Uprawnienia';

  @override
  String get onboard_step_plan => 'Gotowy!';

  @override
  String get onboard_health_connect_perm => 'Dostęp do połączenia zdrowotnego';

  @override
  String get onboard_step_sensors_perm => 'Czujnik licznika kroków';

  @override
  String get onboard_notif_perm => 'Uważne przypomnienia i powiadomienia';

  @override
  String get onboard_camera_perm =>
      'Kamera (skaner kodów kreskowych i żywności)';

  @override
  String get onboard_grant_permissions => 'Przyznaj uprawnienia';

  @override
  String get onboard_continue_dashboard => 'Otwórz Panel';

  @override
  String get notif_channel_hydration_name => 'Nawilżające impulsy';

  @override
  String get notif_channel_hydration_desc =>
      'Delikatne przypomnienia o wodzie przez cały dzień';

  @override
  String get notif_channel_nutrition_name =>
      'Przypomnienia o posiłkach i odżywianiu';

  @override
  String get notif_channel_nutrition_desc =>
      'Alerty przypominające o śniadaniu, lunchu i kolacji';

  @override
  String get notif_channel_steps_name => 'Kamienie milowe kroków';

  @override
  String get notif_channel_steps_desc =>
      'Świętowanie po osiągnięciu dziennych celów kroków';

  @override
  String get notif_channel_vitals_name =>
      'Kontrole zdrowia i funkcji życiowych';

  @override
  String get notif_channel_vitals_desc =>
      'Przypomnienia o wadze i odpoczynku przed snem';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Drzemka 15m';

  @override
  String get notif_action_log_meal => '🥗 Posiłek z kłód';

  @override
  String get language => 'Język';

  @override
  String get share => 'Udostępnij';

  @override
  String common_days(Object count) {
    return '$count dni temu';
  }
}
