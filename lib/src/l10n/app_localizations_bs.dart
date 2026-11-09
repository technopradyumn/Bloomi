// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Dom';

  @override
  String get nav_today => 'Danas';

  @override
  String get nav_plan => 'Planirajte';

  @override
  String get nav_food => 'Hrana';

  @override
  String get nav_food_diary => 'Dnevnik hrane';

  @override
  String get nav_workout => 'Dnevnik treninga';

  @override
  String get nav_health => 'Zdravlje';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Sačuvaj';

  @override
  String get cancel => 'Otkaži';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get done => 'Gotovo';

  @override
  String get close => 'Zatvori';

  @override
  String get back => 'Nazad';

  @override
  String get next => 'Sledeći';

  @override
  String get continue_btn => 'Nastavi';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get search => 'Traži';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Sve';

  @override
  String get active => 'Aktivan';

  @override
  String get today => 'Danas';

  @override
  String get yesterday => 'Jučer';

  @override
  String get tomorrow => 'sutra';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Ukloni';

  @override
  String get refresh => 'Osvježi';

  @override
  String get retry => 'Pokušajte ponovo';

  @override
  String get error => 'Greška';

  @override
  String get success => 'Uspjeh';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get no_data => 'Nema dostupnih podataka';

  @override
  String get offline => 'Izvanmrežni način rada';

  @override
  String get offline_sub =>
      'Promjene će se sinhronizirati nakon ponovnog povezivanja';

  @override
  String get undo => 'Poništi';

  @override
  String get portion => 'Porcija';

  @override
  String get quantity => 'Količina';

  @override
  String get unit => 'Jedinica';

  @override
  String get clear => 'Jasno';

  @override
  String get select => 'Odaberite';

  @override
  String get apply => 'Prijavite se';

  @override
  String get reset => 'Resetiraj';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Da';

  @override
  String get no => 'br';

  @override
  String get optional => 'Opciono';

  @override
  String get calories => 'Kalorije';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Ugljikohidrati';

  @override
  String get fat => 'mast';

  @override
  String get fiber => 'Vlakna';

  @override
  String get water => 'Voda';

  @override
  String get steps => 'Koraci';

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
  String get inches => 'u';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'sati';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Posluživanje';

  @override
  String get servings => 'Porcije';

  @override
  String get serving_size => 'Veličina posluživanja';

  @override
  String get per_100g => 'po 100g';

  @override
  String get india => 'Indija';

  @override
  String get asia => 'Azija';

  @override
  String get europe => 'Evropa';

  @override
  String get middle_east => 'Bliski istok';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerike';

  @override
  String get home_title => 'Dom';

  @override
  String get home_greeting_morning => 'Dobro jutro';

  @override
  String get home_greeting_afternoon => 'Dobar dan';

  @override
  String get home_greeting_evening => 'Dobro veče';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count niz dana',
      one: '1 dan niz',
      zero: '0 dana niza',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Spaljena';

  @override
  String get home_calories_budget => 'Budžet kalorija';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Preostalo $kcal kcal';
  }

  @override
  String get home_water_title => 'Dnevna hidratacija';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Hodani koraci';

  @override
  String get home_quick_actions => 'Brze akcije';

  @override
  String get home_log_meal => 'Dnevni obrok';

  @override
  String get home_log_water => 'Log Voda';

  @override
  String get home_log_workout => 'Prijavite vježbanje';

  @override
  String get home_log_weight => 'Težina trupca';

  @override
  String get home_insights_title => 'Današnji uvidi';

  @override
  String get home_quote =>
      'Mali zdravi izbori stvaraju procvatu transformaciju.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI trener';

  @override
  String get home_surroundings => 'Okolina i zrak';

  @override
  String get home_notifications => 'Obavještenja';

  @override
  String get home_daily_score => 'Dnevni Wellness Score';

  @override
  String get home_view_all => 'Pogledaj sve';

  @override
  String get food_diary_title => 'Dnevnik hrane';

  @override
  String get food_breakfast => 'Doručak';

  @override
  String get food_lunch => 'Ručak';

  @override
  String get food_dinner => 'Večera';

  @override
  String get food_snacks => 'Grickalice';

  @override
  String get food_add_food => 'Dodaj hranu';

  @override
  String get food_edit_food => 'Uredi hranu';

  @override
  String get food_add_breakfast => 'Dodaj doručak';

  @override
  String get food_add_lunch => 'Dodaj ručak';

  @override
  String get food_add_dinner => 'Dodaj večeru';

  @override
  String get food_add_snack => 'Dodaj užinu';

  @override
  String get food_total_calories => 'Ukupne kalorije';

  @override
  String get food_empty_meal => 'Za ovaj obrok još nije evidentirana hrana';

  @override
  String get food_empty_diary => 'Nema evidentiranih obroka za ovaj dan';

  @override
  String get food_log_first_meal =>
      'Dodirnite + da zabilježite svoj prvi ukusni obrok';

  @override
  String get food_quick_add => 'Brzo dodavanje';

  @override
  String get food_search_hint => 'Pretražite jela, voće, dal, roti...';

  @override
  String get food_custom_recipe => 'Hrana i recepti po narudžbi';

  @override
  String get food_scan_barcode => 'Skeniraj crtični kod';

  @override
  String get food_camera_scan => 'AI skener hrane';

  @override
  String get food_recent => 'Recent Foods';

  @override
  String get food_favourites => 'Favoriti';

  @override
  String get food_macro_summary => 'Razgradnja makronutrijenata';

  @override
  String get food_delete_meal_confirm =>
      'Jeste li sigurni da želite ukloniti ovu stavku?';

  @override
  String get food_item_deleted => 'Uklonjena hrana';

  @override
  String get food_remaining => 'preostali';

  @override
  String get food_consumed => 'konzumira';

  @override
  String food_of_target(Object target) {
    return 'od $target kcal';
  }

  @override
  String get foodSearch_title => 'Traži hranu';

  @override
  String get foodSearch_scan_barcode => 'Skeniraj crtični kod';

  @override
  String get foodSearch_take_photo => 'Fotografija brze hrane';

  @override
  String get foodSearch_custom_food => 'Kreirajte prilagođenu hranu';

  @override
  String get foodSearch_recent_searches => 'Nedavna pretraživanja';

  @override
  String get foodSearch_popular => 'Popularna jela';

  @override
  String get foodSearch_no_results => 'Nema hrane koja odgovara vašoj potrazi';

  @override
  String get barcode_title => 'Skener crtičnog koda';

  @override
  String get barcode_align => 'Poravnajte bar kod unutar okvira kamere';

  @override
  String get barcode_not_found => 'Proizvod nije pronađen u bazi podataka';

  @override
  String get barcode_premium_feature =>
      'Skeniranje bar kodova dostupno je uz Bloomi Pro';

  @override
  String get camera_title => 'AI skener hrane';

  @override
  String get camera_tap_hint => 'Snimite jasnu fotografiju svog jela';

  @override
  String get camera_analysing => 'Analiziranje tanjira sa hranom...';

  @override
  String get camera_detected => 'Otkrivene stavke';

  @override
  String get camera_flash => 'Uključite Flash';

  @override
  String get camera_retake => 'Ponovo snimite fotografiju';

  @override
  String get camera_confirm_food => 'Potvrdite stavke';

  @override
  String get customFood_title => 'Hrana i recepti po narudžbi';

  @override
  String get customFood_name_hint => 'Naziv jela ili sastojka';

  @override
  String get customFood_calories_hint => 'Kalorije (kcal)';

  @override
  String get customFood_protein_hint => 'proteini (g)';

  @override
  String get customFood_carbs_hint => 'Ugljikohidrati (g)';

  @override
  String get customFood_fat_hint => 'masti (g)';

  @override
  String get customFood_save => 'Spremi recept';

  @override
  String get water_tracker_title => 'Tragač vode';

  @override
  String get water_daily_target => 'Dnevni cilj hidratacije';

  @override
  String get water_logged_today => 'Zapisano danas';

  @override
  String get water_add_glass => '+250 ml Staklo';

  @override
  String get water_add_bottle => '+500 ml Boca';

  @override
  String get water_custom_amount => 'Prilagođeni iznos';

  @override
  String get water_reminder_tip =>
      'Pijte vodu redovno tokom dana za stabilnu energiju.';

  @override
  String water_logged_toast(Object amount) {
    return 'Zabilježeno $amount ml vode 💧';
  }

  @override
  String get workout_title => 'Dnevnik treninga';

  @override
  String get workout_add_exercise => 'Dodajte vježbanje';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Snaga';

  @override
  String get workout_yoga => 'Joga i fleksibilnost';

  @override
  String get workout_duration => 'Trajanje';

  @override
  String get workout_intensity => 'Intenzitet';

  @override
  String get workout_calories_burned => 'Spaljene kalorije';

  @override
  String get workout_empty => 'Danas nema prijavljenih treninga';

  @override
  String get workout_save_success => 'Vježba je uspješno sačuvana!';

  @override
  String get workout_type => 'Vrsta treninga';

  @override
  String get workout_notes => 'Bilješke i razmišljanja';

  @override
  String get health_overview_title => 'Zdravlje i vitalni elementi';

  @override
  String get health_heart_rate => 'Otkucaji srca';

  @override
  String get health_blood_oxygen => 'Kiseonik u krvi (SpO2)';

  @override
  String get health_blood_pressure => 'Krvni pritisak';

  @override
  String get health_blood_glucose => 'Glukoza u krvi';

  @override
  String get health_body_temperature => 'Temperatura tijela';

  @override
  String get health_sleep_tracking => 'Praćenje spavanja';

  @override
  String get health_weight_tracking => 'Težina i sastav tijela';

  @override
  String get health_waist_hip => 'Odnos struka i bokova';

  @override
  String get health_devices_hub => 'Uređaji i čvorište za pametne satove';

  @override
  String get health_sync_now => 'Sinhronizacija zdravstvenih podataka';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Zadnja sinhronizacija: $time';
  }

  @override
  String get health_manual_entry => 'Ručni unos zdravlja';

  @override
  String get health_metric_detail => 'Metrički detalji';

  @override
  String get health_connected_sensors => 'Povezani zdravstveni senzori';

  @override
  String get plan_title => 'Dnevni plan';

  @override
  String get plan_weekly_title => 'Sedmični wellness plan';

  @override
  String get plan_calorie_target => 'Ciljani kalorijski unos';

  @override
  String get plan_water_target => 'Cilj hidratacije';

  @override
  String get plan_step_target => 'Cilj koraka';

  @override
  String get plan_sleep_target => 'Cilj spavanja';

  @override
  String get plan_meal_suggestions => 'Prijedlozi za obroke';

  @override
  String get plan_healthy_habits => 'Zdrave navike i savjeti';

  @override
  String get plan_coach_advice => 'Preporuke Bloomi AI trenera';

  @override
  String get plan_generated_title => 'Personalizirani dnevni raspored';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Uredi profil';

  @override
  String get profile_name => 'Ime';

  @override
  String get profile_age => 'Starost';

  @override
  String get profile_gender => 'Rod';

  @override
  String get profile_height => 'Visina';

  @override
  String get profile_weight => 'Težina';

  @override
  String get profile_goal => 'Primarni gol';

  @override
  String get profile_activity_level => 'Nivo aktivnosti';

  @override
  String get profile_stats => 'Moja zdravstvena statistika';

  @override
  String get profile_saved => 'Profil je uspješno ažuriran';

  @override
  String get profile_bmi => 'Indeks tjelesne mase (BMI)';

  @override
  String get profile_membership => 'Članstvo';

  @override
  String get settings => 'Postavke';

  @override
  String get preferences_habits => 'PREFERENCIJE I NAVIKE';

  @override
  String get appearance_theme => 'Izgled i tema';

  @override
  String get appearance_theme_sub =>
      'Tamno, svijetlo, način rada sustava i opcije pozadine aplikacije';

  @override
  String get permissions => 'Dozvole i pristup sistemu';

  @override
  String get permissions_sub =>
      'Health Connect, senzori koraka, GPS, obavještenja i kamera';

  @override
  String get reminders_notifications => 'Podsjetnici i obavještenja';

  @override
  String get reminders_sub =>
      'Vrijeme obroka, voda, prijava težine i podsjetnici za vrijeme spavanja';

  @override
  String get units_of_measurement => 'Jedinice mjerenja';

  @override
  String get units_sub =>
      'Metrički (kg, cm, ml, km) ili imperijalni (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Jezik aplikacije';

  @override
  String get language_sub =>
      'engleski, हिन्दी (hindi), hingliš i 195+ globalnih jezika';

  @override
  String get home_screen_widgets => 'Widgeti početnog ekrana';

  @override
  String get widgets_sub =>
      'Android widgeti uživo: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Aplikacija Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Pratilac za pametni sat, pločice, komplikacije i vitalni podaci';

  @override
  String get goals_wellness => 'CILJEVI I WELLNESS Uvidi';

  @override
  String get nutrition_targets => 'Nutricionistički ciljevi i makropodjela';

  @override
  String get nutrition_targets_sub =>
      'Ciljne kalorije, proteini, ugljikohidrati, masti i voda';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-dnevni prosjek kalorija, makro omjer i najbolji dan';

  @override
  String get streaks_milestones => 'Nizovi i prekretnice';

  @override
  String get streaks_sub => 'Aktivni nizovi cvjetanja, značke i postignuća';

  @override
  String get connected_devices => 'POVEZANI UREĐAJI I EKOSISTEM';

  @override
  String get devices_hub => 'Uređaji i čvorište za pametne satove';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Okolina & Vrijeme';

  @override
  String get surroundings_sub =>
      'Kvalitet zraka (AQI), UV indeks i savjeti za hidrataciju u vremenu';

  @override
  String get bloomi_pro => 'Bloomi Pro pretplata';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgeta za početni ekran i praćenje vitalnih funkcija';

  @override
  String get about_security => 'O & SIGURNOST';

  @override
  String get about_bloomi => 'O Bloomi';

  @override
  String get about_bloomi_sub => 'Specifikacije izrade, verzija, atribucije';

  @override
  String get privacy_policy => 'Politika privatnosti';

  @override
  String get privacy_policy_sub =>
      'Offline-first, arhitektura podataka na uređaju';

  @override
  String get terms_conditions => 'Odredbe i uvjeti';

  @override
  String get terms_conditions_sub => 'Uslovi usluge i wellness smjernice';

  @override
  String get delete_account => 'Izbriši račun i podatke';

  @override
  String get delete_account_sub =>
      'Nepovratno obrišite lokalne SQLite podatke i sigurnosne kopije u oblaku';

  @override
  String get healthy_habits => 'Izgradite nježne, trajne wellness navike';

  @override
  String get all_logs => 'Moji praćeni podaci i evidencije';

  @override
  String get search_language => 'Traži po jeziku ili maternjem pismu...';

  @override
  String get languages_available => 'Dostupni jezici';

  @override
  String get no_matching_languages =>
      'Nije pronađen nijedan odgovarajući jezik';

  @override
  String get try_searching =>
      'Pokušajte pretraživati izvornim pismom ili engleskim pravopisom';

  @override
  String get partially_translated => 'Djelomično prevedeno';

  @override
  String get complete_translation => 'Završeno';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Jezik je postavljen na $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Okolina i okoliš';

  @override
  String get surroundings_aqi => 'Indeks kvalitete zraka';

  @override
  String get surroundings_uv => 'UV indeks';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Vlažnost';

  @override
  String get surroundings_hydration_advice =>
      'Ostanite dobro hidrirani u trenutnim vremenskim uslovima.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Traži hranu';

  @override
  String get food_quick_barcode => 'Skeniraj bar kod 👑';

  @override
  String get food_quick_water => 'Dodajte vodu';

  @override
  String get food_quick_custom => 'Hrana po narudžbi';

  @override
  String get surroundings_good => 'Dobro';

  @override
  String get surroundings_moderate => 'Umjereno';

  @override
  String get surroundings_unhealthy => 'Nezdravo';

  @override
  String get notifications_title => 'Obavještenja i upozorenja';

  @override
  String get notifications_empty => 'Nema novih obavještenja';

  @override
  String get notifications_mark_read => 'Označi sve kao pročitano';

  @override
  String get notifications_clear => 'Obriši sve';

  @override
  String get reminders => 'Postavke podsjetnika';

  @override
  String get notifications => 'Push obavještenja';

  @override
  String get reminders_breakfast_title => 'Podsjetnik za doručak 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Dobro jutro! Vrijeme je za hranjiv doručak u $time .';
  }

  @override
  String get reminders_lunch_title => 'Podsjetnik na ručak 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pauzirajte i uživajte u uravnoteženom ručku s pažnjom u $time .';
  }

  @override
  String get reminders_dinner_title => 'Podsjetnik na večeru 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Vrijeme je za laganu, zadovoljavajuću večeru u $time .';
  }

  @override
  String get reminders_water_title => 'Hidratacija 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Vreme je da popijete čašu sveže vode! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Sedmično vaganje ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Pratite svoju sedmičnu mjeru tijela na Bloomiju ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Odmaranje prije spavanja 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Opustite se i pripremite za miran san ( $time ).';
  }

  @override
  String get onboard_welcome => 'Dobrodošli u Bloomi';

  @override
  String get onboard_sub =>
      'Vaš prijateljski, prvi offline pratilac zdravlja i ishrane.';

  @override
  String get onboard_get_started => 'Započnite';

  @override
  String get onboard_sign_in => 'Prijavite se';

  @override
  String get onboard_skip => 'Preskoči';

  @override
  String get onboard_choose_goal => 'Koji je vaš primarni wellness cilj?';

  @override
  String get onboard_goal_weight_loss => 'Nježni gubitak težine';

  @override
  String get onboard_goal_muscle => 'Dobitak mišića i snaga';

  @override
  String get onboard_goal_energy => 'Dnevna energija i vitalnost';

  @override
  String get onboard_goal_habits => 'Zdrava svjesna prehrana';

  @override
  String get onboard_about_you => 'Recite nam nešto o sebi';

  @override
  String get onboard_lifestyle => 'Vaša dnevna rutina';

  @override
  String get onboard_permissions_title => 'Dozvole i pristup sistemu';

  @override
  String get onboard_permissions_sub =>
      'Omogućite pristup koracima sinhronizacije, vježbama i podsjetnicima.';

  @override
  String get onboard_plan_ready_title => 'Vaš prilagođeni plan je spreman!';

  @override
  String get onboard_plan_ready_sub =>
      'Napravili smo nježnu, personaliziranu mapu ishrane i wellnessa samo za vas.';

  @override
  String get onboard_enter_bloomi => 'Ulazi Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Najbolji dan konzistencije: $day';
  }

  @override
  String get insights_streaks_badges => 'Nizovi i prekretnice';

  @override
  String insights_unlocked_on(Object date) {
    return 'Otključano $date';
  }

  @override
  String get insights_keep_going => 'Nastavite sa fantastičnim napretkom!';

  @override
  String get widgets_title => 'Widgeti početnog ekrana';

  @override
  String widgets_active_count(Object count) {
    return 'Aktivni widgeti: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Stepenice i aktivni prsten';

  @override
  String get widgets_water_title => 'Brzi zapis hidratacije';

  @override
  String get widgets_mascot_title => 'Bloomi pratilac maskote';

  @override
  String get wear_os_title => 'Nosite OS Smartwatch';

  @override
  String get wear_os_connected => 'Povezano na sat';

  @override
  String get wear_os_sync => 'Sinhronizacija podataka sata';

  @override
  String get theme_title => 'Izgled i tema';

  @override
  String get theme_mode => 'Način rada teme';

  @override
  String get theme_light => 'svjetlo';

  @override
  String get theme_dark => 'tamno';

  @override
  String get theme_system => 'Sistem';

  @override
  String get theme_background_palette => 'Paleta pozadine';

  @override
  String get units_title => 'Jedinice mjerenja';

  @override
  String get units_metric => 'Metrički (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nije moguće učitati kontrolnu tablu';

  @override
  String get home_health_permission_req =>
      'Potrebna je dozvola za Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi zahtijeva Health Connect dozvolu za povlačenje stvarnih koraka, otkucaja srca i sinhronizaciju widgeta mobilne kuće u realnom vremenu.';

  @override
  String get home_allow_health => 'Dozvolite Health Connect';

  @override
  String get home_ready_mindful_day => 'Spremni za dan svjesnosti? ✨';

  @override
  String get home_quick_add => 'Brzo dodavanje';

  @override
  String get home_live_gps => 'GPS uživo';

  @override
  String get home_calories_remaining_label => 'PREOSTALE KALORIJE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Pojedeno: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Dnevni cilj postignut 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml do dnevnog cilja';
  }

  @override
  String get home_details => 'Detalji';

  @override
  String get home_upgrade_plan_desc =>
      'Nadogradite za otključavanje personaliziranih dnevnih ciljeva i AI plana';

  @override
  String get home_unlock => 'Otključaj 👑';

  @override
  String get home_quick_log_hint => 'Brzo snimite unos u wellness';

  @override
  String get food_serving_size => 'Veličina posluživanja';

  @override
  String get food_serving_grams => 'Posluživanje (g)';

  @override
  String get food_number_servings => 'Broj porcija';

  @override
  String get food_calories_per_serving => 'Kalorije po porciji';

  @override
  String get food_recipe_ingredients => 'Sastojci';

  @override
  String get food_recipe_add_ingredient => 'Dodajte sastojak';

  @override
  String get food_recipe_directions => 'Upute i napomene';

  @override
  String get food_recipe_total => 'Ukupna prehrana po receptu';

  @override
  String get food_recipe_per_serving => 'Nutricionizam po porciji';

  @override
  String get food_recipe_saved_toast => 'Hrana po narudžbi uspješno sačuvana!';

  @override
  String get food_barcode_found => 'Pronađen proizvod!';

  @override
  String get food_barcode_not_found_desc =>
      'Nismo mogli pronaći ovaj bar kod u otvorenoj bazi podataka. Možete ga dodati kao prilagođenu hranu.';

  @override
  String get food_add_custom_btn => 'Dodajte prilagođenu hranu';

  @override
  String get food_scan_again => 'Skeniraj ponovno';

  @override
  String get food_review_items => 'Pregledajte otkrivenu hranu';

  @override
  String get food_review_hint =>
      'Prilagodite količine ili uklonite sve neprepoznate artikle';

  @override
  String get food_log_selected => 'Zapišite odabranu hranu';

  @override
  String get food_favourites_title => 'Favorite Foods';

  @override
  String get food_recent_title => 'Recent Foods';

  @override
  String get food_no_favourites =>
      'Još nema omiljene hrane. Dodirnite srce bilo koju hranu da uštedite ovdje.';

  @override
  String get food_no_recents => 'Nije pronađena nedavno evidentirana hrana.';

  @override
  String get food_nutrition_details_title => 'Dnevni detalji o ishrani';

  @override
  String get food_macro_protein_label => 'Razgradnja proteina';

  @override
  String get food_macro_carbs_label => 'Razgradnja ugljikohidrata';

  @override
  String get food_macro_fat_label => 'Razgradnja masti';

  @override
  String get food_macro_fiber_label => 'Raspad vlakana';

  @override
  String get food_daily_target_comparison => 'Target Comparision';

  @override
  String food_target_label(Object target) {
    return 'Cilj: $target';
  }

  @override
  String get food_edit_entry => 'Uredi unos u dnevnik';

  @override
  String get food_delete_entry => 'Izbriši unos';

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
    return '$current od $target ml';
  }

  @override
  String get water_intake_history => 'Današnji dnevnici';

  @override
  String get water_no_logs_today =>
      'Danas još uvijek nema vode. Hidrirajte i dodirnite dugme za brzo dodavanje!';

  @override
  String get water_adjust_goal => 'Podesite dnevni cilj';

  @override
  String get health_connect_banner => 'Povezano na Health Connect';

  @override
  String get health_vitals_summary => 'Dnevne vitalne vrijednosti zdravlja';

  @override
  String get health_latest_heart_rate => 'Najnoviji otkucaji srca';

  @override
  String get health_latest_bp => 'Krvni pritisak';

  @override
  String get health_latest_spo2 => 'Krvni kiseonik';

  @override
  String get health_latest_glucose => 'Glukoza u krvi';

  @override
  String get health_latest_weight => 'Težina';

  @override
  String get health_latest_sleep => 'Trajanje spavanja';

  @override
  String get health_add_manual => 'Dodajte ručno mjerenje';

  @override
  String get health_history_trends => 'Povijesni trendovi';

  @override
  String get health_sync_success =>
      'Zdravstveni podaci uspješno sinhronizirani!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours sati $mins min';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm otkucaja u minuti';
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
  String get health_devices_title => 'Povezani uređaji i nosivi uređaji';

  @override
  String get health_devices_desc =>
      'Upravljajte uparenim pametnim satovima, fitnes trackerima i zdravstvenim senzorima.';

  @override
  String get health_workout_editor_title => 'Uredi trening';

  @override
  String get health_workout_name_label => 'Naziv treninga';

  @override
  String get health_workout_duration_label => 'Trajanje (minuta)';

  @override
  String get health_workout_calories_label => 'Procijenjene kalorije (kcal)';

  @override
  String get health_workout_date_label => 'Datum i vrijeme';

  @override
  String get plan_daily_wellness_roadmap => 'Vaša personalizirana mapa puta';

  @override
  String get plan_morning_routine => 'Jutarnja rutina';

  @override
  String get plan_afternoon_routine => 'Podnevni wellness';

  @override
  String get plan_evening_routine => 'Večernje opuštanje';

  @override
  String get plan_coach_badge => 'Bloomi AI trener';

  @override
  String get plan_weekly_overview => '7-dnevni wellness fokus';

  @override
  String get plan_targets_title => 'Wellness ciljevi i ciljevi';

  @override
  String get plan_calorie_budget_label => 'Dnevni proračun kalorija';

  @override
  String get plan_water_budget_label => 'Dnevni cilj za vodu';

  @override
  String get plan_step_budget_label => 'Dnevni cilj koraka';

  @override
  String get plan_macro_split_label => 'Odnos makronutrijenata';

  @override
  String get profile_personal_details => 'Lični podaci';

  @override
  String get profile_body_stats => 'Tjelesne mjere';

  @override
  String get profile_app_preferences => 'Postavke i postavke aplikacije';

  @override
  String get profile_edit_name_hint => 'Tvoje ime';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Visina ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Težina ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Starost';

  @override
  String get profile_gender_male => 'Muško';

  @override
  String get profile_gender_female => 'Žensko';

  @override
  String get profile_gender_other => 'Ostalo / radije ne kažem';

  @override
  String get profile_activity_sedentary => 'Sjedi (malo ili nimalo vježbanja)';

  @override
  String get profile_activity_light => 'Lagano aktivan (1-3 dana sedmično)';

  @override
  String get profile_activity_moderate =>
      'Umjereno aktivan (3-5 dana sedmično)';

  @override
  String get profile_activity_very => 'Veoma aktivan (6-7 dana/sedmično)';

  @override
  String get settings_wear_os_header => 'Prateća aplikacija za Wear OS';

  @override
  String get settings_wear_os_desc =>
      'Instalirajte Bloomi pločicu i komplikaciju na svoj Wear OS sat da pogledate kalorije, vodu i korake.';

  @override
  String get settings_widgets_header => 'Interaktivni Android Widgeti';

  @override
  String get settings_widgets_desc =>
      'Zakačite vidžete u realnom vremenu na početni ekran vašeg uređaja za trenutna ažuriranja.';

  @override
  String get settings_about_header => 'O Bloomi';

  @override
  String get settings_about_version => 'Verzija';

  @override
  String get settings_about_build => 'Izgradnja 100';

  @override
  String get settings_about_credits =>
      'Napravljen sa pažnjom za pažljiv, zdrav život.';

  @override
  String get settings_terms_header => 'Odredbe i uslovi';

  @override
  String get settings_privacy_header => 'Politika privatnosti';

  @override
  String get settings_delete_header => 'Izbriši račun i podatke';

  @override
  String get settings_delete_warning =>
      'Ova radnja se ne može poništiti. Svi vaši obroci, treninzi, vitalni pokazatelji i profil će biti trajno izbrisani.';

  @override
  String get settings_delete_confirm_btn => 'Trajno izbrisati';

  @override
  String get onboard_welcome_headline => 'Dobrodošli u Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Nježno, pažljivo praćenje zdravlja osmišljeno oko vašeg života.';

  @override
  String get onboard_step_about => 'O tebi';

  @override
  String get onboard_step_goals => 'Vaši ciljevi';

  @override
  String get onboard_step_lifestyle => 'Dnevne navike';

  @override
  String get onboard_step_permissions => 'Dozvole';

  @override
  String get onboard_step_plan => 'Spremni!';

  @override
  String get onboard_health_connect_perm => 'Pristup Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Senzor brojača koraka';

  @override
  String get onboard_notif_perm => 'Pažljivi podsjetnici i obavještenja';

  @override
  String get onboard_camera_perm => 'Kamera (barkod i skener hrane)';

  @override
  String get onboard_grant_permissions => 'Dajte dozvole';

  @override
  String get onboard_continue_dashboard => 'Otvorite Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hidratacijski poticaji';

  @override
  String get notif_channel_hydration_desc =>
      'Nježni podsjetnici vode tokom cijelog dana';

  @override
  String get notif_channel_nutrition_name => 'Podsjetnici na obroke i ishranu';

  @override
  String get notif_channel_nutrition_desc =>
      'Podsjetnici za doručak, ručak i večeru';

  @override
  String get notif_channel_steps_name => 'Korak Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Slavlje prilikom postizanja dnevnih ciljeva koraka';

  @override
  String get notif_channel_vitals_name => 'Zdravstvene i vitalne provjere';

  @override
  String get notif_channel_vitals_desc =>
      'Podsjetnici na težinu i vrijeme za spavanje';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Odgoda 15m';

  @override
  String get notif_action_log_meal => '🥗 Dnevni obrok';

  @override
  String get language => 'Jezik';

  @override
  String get share => 'Dijeli';

  @override
  String common_days(Object count) {
    return 'prije $count d';
  }
}
