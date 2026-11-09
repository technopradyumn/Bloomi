// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Dom';

  @override
  String get nav_today => 'Danas';

  @override
  String get nav_plan => 'Planirajte';

  @override
  String get nav_food => 'hrana';

  @override
  String get nav_food_diary => 'Dnevnik prehrane';

  @override
  String get nav_workout => 'Dnevnik vježbanja';

  @override
  String get nav_health => 'zdravlje';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'spremiti';

  @override
  String get cancel => 'Odustani';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get done => 'Gotovo';

  @override
  String get close => 'Zatvori';

  @override
  String get back => 'natrag';

  @override
  String get next => 'Dalje';

  @override
  String get continue_btn => 'nastavi';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get search => 'Traži';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'sve';

  @override
  String get active => 'Aktivno';

  @override
  String get today => 'Danas';

  @override
  String get yesterday => 'jučer';

  @override
  String get tomorrow => 'Sutra';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Ukloniti';

  @override
  String get refresh => 'Osvježi';

  @override
  String get retry => 'Pokušaj ponovo';

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
      'Promjene će se sinkronizirati nakon ponovnog povezivanja';

  @override
  String get undo => 'Poništi';

  @override
  String get portion => 'Porcija';

  @override
  String get quantity => 'Količina';

  @override
  String get unit => 'Jedinica';

  @override
  String get clear => 'čisto';

  @override
  String get select => 'Odaberite';

  @override
  String get apply => 'primijeniti';

  @override
  String get reset => 'Resetiraj';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'da';

  @override
  String get no => 'br';

  @override
  String get optional => 'Neobavezno';

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
  String get water => 'vode';

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
  String get servings => 'Posluge';

  @override
  String get serving_size => 'Veličina posluživanja';

  @override
  String get per_100g => 'na 100g';

  @override
  String get india => 'Indija';

  @override
  String get asia => 'Azija';

  @override
  String get europe => 'Europi';

  @override
  String get middle_east => 'Bliski istok';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerike';

  @override
  String get home_title => 'Dom';

  @override
  String get home_greeting_morning => 'dobro jutro';

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
      other: '$count dana niza',
      one: '1 dan niza',
      zero: 'niz od 0 dana',
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
  String get home_quick_actions => 'Brze radnje';

  @override
  String get home_log_meal => 'Dnevni obrok';

  @override
  String get home_log_water => 'Log Voda';

  @override
  String get home_log_workout => 'Prijavite vježbanje';

  @override
  String get home_log_weight => 'Log Težina';

  @override
  String get home_insights_title => 'Današnji uvidi';

  @override
  String get home_quote =>
      'Mali zdravi izbori stvaraju cvjetajuće transformacije.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI trener';

  @override
  String get home_surroundings => 'Okruženje i zrak';

  @override
  String get home_notifications => 'Obavijesti';

  @override
  String get home_daily_score => 'Dnevni wellness rezultat';

  @override
  String get home_view_all => 'Pogledaj sve';

  @override
  String get food_diary_title => 'Dnevnik prehrane';

  @override
  String get food_breakfast => 'doručak';

  @override
  String get food_lunch => 'Ručak';

  @override
  String get food_dinner => 'Večera';

  @override
  String get food_snacks => 'grickalice';

  @override
  String get food_add_food => 'Dodajte hranu';

  @override
  String get food_edit_food => 'Uredi hranu';

  @override
  String get food_add_breakfast => 'Dodajte doručak';

  @override
  String get food_add_lunch => 'Dodajte ručak';

  @override
  String get food_add_dinner => 'Dodajte večeru';

  @override
  String get food_add_snack => 'Dodajte užinu';

  @override
  String get food_total_calories => 'Ukupne kalorije';

  @override
  String get food_empty_meal =>
      'Za ovaj obrok još nije zabilježena nijedna hrana';

  @override
  String get food_empty_diary => 'Nema zabilježenih obroka za ovaj dan';

  @override
  String get food_log_first_meal =>
      'Dodirnite + da biste zabilježili svoj prvi ukusni obrok';

  @override
  String get food_quick_add => 'Brzo dodavanje';

  @override
  String get food_search_hint => 'Traži jela, voće, dal, roti...';

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
  String get food_item_deleted => 'Namirnica uklonjena';

  @override
  String get food_remaining => 'preostalih';

  @override
  String get food_consumed => 'potrošeno';

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
  String get foodSearch_custom_food => 'Napravite prilagođenu hranu';

  @override
  String get foodSearch_recent_searches => 'Nedavna pretraživanja';

  @override
  String get foodSearch_popular => 'Popularna jela';

  @override
  String get foodSearch_no_results => 'Nema hrane koja odgovara vašoj pretrazi';

  @override
  String get barcode_title => 'Skener crtičnog koda';

  @override
  String get barcode_align => 'Poravnajte crtični kod unutar okvira kamere';

  @override
  String get barcode_not_found => 'Proizvod nije pronađen u bazi podataka';

  @override
  String get barcode_premium_feature =>
      'Skeniranje crtičnog koda dostupno je uz Bloomi Pro';

  @override
  String get camera_title => 'AI skener hrane';

  @override
  String get camera_tap_hint => 'Snimite jasnu fotografiju svog jela';

  @override
  String get camera_analysing => 'Analiza tanjura s hranom...';

  @override
  String get camera_detected => 'Otkrivene stavke';

  @override
  String get camera_flash => 'Uključi bljeskalicu';

  @override
  String get camera_retake => 'Ponovno snimi fotografiju';

  @override
  String get camera_confirm_food => 'Potvrdi stavke';

  @override
  String get customFood_title => 'Hrana i recepti po narudžbi';

  @override
  String get customFood_name_hint => 'Naziv jela ili sastojka';

  @override
  String get customFood_calories_hint => 'Kalorije (kcal)';

  @override
  String get customFood_protein_hint => 'Proteini (g)';

  @override
  String get customFood_carbs_hint => 'Ugljikohidrati (g)';

  @override
  String get customFood_fat_hint => 'Masti (g)';

  @override
  String get customFood_save => 'Spremi recept';

  @override
  String get water_tracker_title => 'Tragač vode';

  @override
  String get water_daily_target => 'Dnevni cilj hidratacije';

  @override
  String get water_logged_today => 'Zapisano danas';

  @override
  String get water_add_glass => '+250 ml Čaša';

  @override
  String get water_add_bottle => 'Boca +500 ml';

  @override
  String get water_custom_amount => 'Prilagođeni iznos';

  @override
  String get water_reminder_tip =>
      'Pijte vodu redovito tijekom dana za stabilnu energiju.';

  @override
  String water_logged_toast(Object amount) {
    return 'Zabilježeno $amount ml vode 💧';
  }

  @override
  String get workout_title => 'Dnevnik vježbanja';

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
  String get workout_calories_burned => 'Potrošene kalorije';

  @override
  String get workout_empty => 'Danas nije zabilježen nijedan trening';

  @override
  String get workout_save_success => 'Vježbanje je uspješno spremljeno!';

  @override
  String get workout_type => 'Vrsta vježbanja';

  @override
  String get workout_notes => 'Bilješke i razmišljanja';

  @override
  String get health_overview_title => 'Zdravlje i vitalne vrijednosti';

  @override
  String get health_heart_rate => 'Otkucaji srca';

  @override
  String get health_blood_oxygen => 'Kisik u krvi (SpO2)';

  @override
  String get health_blood_pressure => 'Krvni tlak';

  @override
  String get health_blood_glucose => 'Glukoza u krvi';

  @override
  String get health_body_temperature => 'Tjelesna temperatura';

  @override
  String get health_sleep_tracking => 'Praćenje spavanja';

  @override
  String get health_weight_tracking => 'Težina i sastav tijela';

  @override
  String get health_waist_hip => 'Omjer struka i bokova';

  @override
  String get health_devices_hub => 'Uređaji i čvorište za pametne satove';

  @override
  String get health_sync_now => 'Sinkronizacija zdravstvenih podataka';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Zadnja sinkronizacija: $time';
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
  String get plan_weekly_title => 'Tjedni wellness plan';

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
  String get profile_age => 'Dob';

  @override
  String get profile_gender => 'Spol';

  @override
  String get profile_height => 'Visina';

  @override
  String get profile_weight => 'Težina';

  @override
  String get profile_goal => 'Primarni cilj';

  @override
  String get profile_activity_level => 'Razina aktivnosti';

  @override
  String get profile_stats => 'Moja zdravstvena statistika';

  @override
  String get profile_saved => 'Profil je uspješno ažuriran';

  @override
  String get profile_bmi => 'Indeks tjelesne mase (BMI)';

  @override
  String get profile_membership => 'članstvo';

  @override
  String get settings => 'postavke';

  @override
  String get preferences_habits => 'PREFERENCIJE I NAVIKE';

  @override
  String get appearance_theme => 'Izgled i tema';

  @override
  String get appearance_theme_sub =>
      'Tamno, svijetlo, način rada sustava i opcije pozadine aplikacije';

  @override
  String get permissions => 'Dopuštenja i pristup sustavu';

  @override
  String get permissions_sub =>
      'Health Connect, senzori koraka, GPS, obavijesti i kamera';

  @override
  String get reminders_notifications => 'Podsjetnici i obavijesti';

  @override
  String get reminders_sub =>
      'Vrijeme obroka, vode, mjerenje težine i podsjetnici za spavanje';

  @override
  String get units_of_measurement => 'Mjerne jedinice';

  @override
  String get units_sub =>
      'Metrički (kg, cm, ml, km) ili imperijalni (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Jezik aplikacije';

  @override
  String get language_sub =>
      'engleski, हिन्दी (hindi), hinglish i više od 195 svjetskih jezika';

  @override
  String get home_screen_widgets => 'Widgeti početnog zaslona';

  @override
  String get widgets_sub =>
      'Android widgeti uživo: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Aplikacija za sat Wear OS';

  @override
  String get wear_os_sub =>
      'Pametni sat pratilac, pločice, komplikacije i vitalni podaci uživo';

  @override
  String get goals_wellness => 'CILJEVI I WELLNESS UVID';

  @override
  String get nutrition_targets => 'Nutricionistički ciljevi i makropodjela';

  @override
  String get nutrition_targets_sub =>
      'Ciljani unos kalorija, proteina, ugljikohidrata, masti i vode';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-dnevni kalorijski prosjek, makro omjer i najbolji dan';

  @override
  String get streaks_milestones => 'Nizovi i prekretnice';

  @override
  String get streaks_sub => 'Aktivne cvjetne pruge, značke i postignuća';

  @override
  String get connected_devices => 'POVEZANI UREĐAJI & EKOSUSTAV';

  @override
  String get devices_hub => 'Uređaji i čvorište za pametne satove';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Okruženje i vrijeme';

  @override
  String get surroundings_sub =>
      'Kvaliteta zraka (AQI), UV indeks i savjeti za hidrataciju u vremenskim uvjetima';

  @override
  String get bloomi_pro => 'Pretplata na Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgeta na početnom zaslonu i praćenje vitalnih funkcija';

  @override
  String get about_security => 'O I SIGURNOST';

  @override
  String get about_bloomi => 'O Bloomi';

  @override
  String get about_bloomi_sub => 'Specifikacije izrade, verzija, atribucije';

  @override
  String get privacy_policy => 'Politika privatnosti';

  @override
  String get privacy_policy_sub =>
      'Izvanmrežna podatkovna arhitektura na uređaju';

  @override
  String get terms_conditions => 'Odredbe i uvjeti';

  @override
  String get terms_conditions_sub => 'Uvjeti usluge i wellness smjernice';

  @override
  String get delete_account => 'Izbriši račun i podatke';

  @override
  String get delete_account_sub =>
      'Nepovratno obrišite lokalne SQLite podatke i sigurnosne kopije u oblaku';

  @override
  String get healthy_habits =>
      'Izgradite nježne, trajne navike dobrog zdravlja';

  @override
  String get all_logs => 'Moji praćeni podaci i zapisnici';

  @override
  String get search_language => 'Traži po jeziku ili izvornom pismu...';

  @override
  String get languages_available => 'Dostupni jezici';

  @override
  String get no_matching_languages => 'Nema pronađenih odgovarajućih jezika';

  @override
  String get try_searching =>
      'Pokušajte pretraživati izvornim pismom ili engleskim pravopisom';

  @override
  String get partially_translated => 'Djelomično prevedeno';

  @override
  String get complete_translation => 'Kompletan';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Jezik postavljen na $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Okruženje i okoliš';

  @override
  String get surroundings_aqi => 'Indeks kvalitete zraka';

  @override
  String get surroundings_uv => 'UV indeks';

  @override
  String get surroundings_temp => 'temperatura';

  @override
  String get surroundings_humidity => 'Vlažnost';

  @override
  String get surroundings_hydration_advice =>
      'Ostanite dobro hidrirani u trenutnim vremenskim uvjetima.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Traži hranu';

  @override
  String get food_quick_barcode => 'Skeniraj crtični kod 👑';

  @override
  String get food_quick_water => 'Dodajte vodu';

  @override
  String get food_quick_custom => 'Hrana po narudžbi';

  @override
  String get surroundings_good => 'dobro';

  @override
  String get surroundings_moderate => 'Umjereno';

  @override
  String get surroundings_unhealthy => 'Nezdravo';

  @override
  String get notifications_title => 'Obavijesti i upozorenja';

  @override
  String get notifications_empty => 'Nema novih obavijesti';

  @override
  String get notifications_mark_read => 'Označi sve kao pročitano';

  @override
  String get notifications_clear => 'Obriši sve';

  @override
  String get reminders => 'Postavke podsjetnika';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Podsjetnik na doručak 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'dobro jutro Vrijeme je za hranjiv doručak u $time.';
  }

  @override
  String get reminders_lunch_title => 'Podsjetnik na ručak 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Zastanite i uživajte u uravnoteženom, pažljivom ručku u $time.';
  }

  @override
  String get reminders_dinner_title => 'Podsjetnik na večeru 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Vrijeme je za laganu, zadovoljavajuću večeru u $time.';
  }

  @override
  String get reminders_water_title => 'Poticaj za hidrataciju 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Vrijeme je da popijete čašu svježe vode! ($time)';
  }

  @override
  String get reminders_weight_title => 'Tjedno vaganje ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Pratite tjedne mjerne podatke o svom tijelu na Bloomiju ($time).';
  }

  @override
  String get reminders_sleep_title => 'Opuštanje prije spavanja 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Opustite se i pripremite se za miran san ( $time ).';
  }

  @override
  String get onboard_welcome => 'Dobrodošli u Bloomi';

  @override
  String get onboard_sub =>
      'Vaš prijateljski, izvanmrežni prvi suputnik u zdravlju i prehrani.';

  @override
  String get onboard_get_started => 'Započnite';

  @override
  String get onboard_sign_in => 'Prijavite se';

  @override
  String get onboard_skip => 'Preskoči';

  @override
  String get onboard_choose_goal => 'Koji je vaš primarni wellness cilj?';

  @override
  String get onboard_goal_weight_loss => 'Nježno mršavljenje';

  @override
  String get onboard_goal_muscle => 'Dobitak mišića i snaga';

  @override
  String get onboard_goal_energy => 'Dnevna energija i vitalnost';

  @override
  String get onboard_goal_habits => 'Zdrava pažljiva prehrana';

  @override
  String get onboard_about_you => 'Recite nam nešto o sebi';

  @override
  String get onboard_lifestyle => 'Vaša dnevna rutina';

  @override
  String get onboard_permissions_title => 'Dopuštenja i pristup sustavu';

  @override
  String get onboard_permissions_sub =>
      'Odobrite pristup sinkronizaciji koraka, vježbanja i podsjetnika.';

  @override
  String get onboard_plan_ready_title => 'Vaš prilagođeni plan je spreman!';

  @override
  String get onboard_plan_ready_sub =>
      'Izradili smo nježan, personaliziran plan prehrane i dobrobiti samo za vas.';

  @override
  String get onboard_enter_bloomi => 'Ulazi Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Dan najbolje dosljednosti: $day';
  }

  @override
  String get insights_streaks_badges => 'Nizovi i prekretnice';

  @override
  String insights_unlocked_on(Object date) {
    return 'Otključano $date';
  }

  @override
  String get insights_keep_going => 'Nastavite s fantastičnim napretkom!';

  @override
  String get widgets_title => 'Widgeti početnog zaslona';

  @override
  String widgets_active_count(Object count) {
    return 'Aktivni widgeti: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Koraci i aktivni prsten';

  @override
  String get widgets_water_title => 'Hidratacija Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi pratilac maskote';

  @override
  String get wear_os_title => 'Nosite OS Smartwatch';

  @override
  String get wear_os_connected => 'Povezano s Watchom';

  @override
  String get wear_os_sync => 'Sinkroniziraj podatke gledanja';

  @override
  String get theme_title => 'Izgled i tema';

  @override
  String get theme_mode => 'Način rada teme';

  @override
  String get theme_light => 'svjetlo';

  @override
  String get theme_dark => 'tamno';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Paleta pozadine';

  @override
  String get units_title => 'Mjerne jedinice';

  @override
  String get units_metric => 'Metrički (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nije moguće učitati nadzornu ploču';

  @override
  String get home_health_permission_req =>
      'Potrebno je dopuštenje za Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi zahtijeva dopuštenje Health Connecta za povlačenje stvarnih koraka, broj otkucaja srca i sinkronizaciju widgeta mobilne kuće u stvarnom vremenu.';

  @override
  String get home_allow_health => 'Dopusti Health Connect';

  @override
  String get home_ready_mindful_day => 'Jeste li spremni za pažljiv dan? ✨';

  @override
  String get home_quick_add => 'Brzo dodavanje';

  @override
  String get home_live_gps => 'GPS uživo';

  @override
  String get home_calories_remaining_label => 'PREOSTALI KALORIJE';

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
  String get home_details => 'pojedinosti';

  @override
  String get home_upgrade_plan_desc =>
      'Nadogradite za otključavanje personaliziranih dnevnih ciljeva i AI plana';

  @override
  String get home_unlock => 'Otključaj 👑';

  @override
  String get home_quick_log_hint => 'Brzo snimite wellness unos';

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
  String get food_recipe_directions => 'Upute i bilješke';

  @override
  String get food_recipe_total => 'Ukupna prehrana po receptu';

  @override
  String get food_recipe_per_serving => 'Prehrana po obroku';

  @override
  String get food_recipe_saved_toast =>
      'Prilagođena hrana uspješno spremljena!';

  @override
  String get food_barcode_found => 'Proizvod pronađen!';

  @override
  String get food_barcode_not_found_desc =>
      'Nismo mogli pronaći ovaj crtični kod u otvorenoj bazi podataka. Možete ga dodati kao prilagođenu hranu.';

  @override
  String get food_add_custom_btn => 'Dodajte prilagođenu hranu';

  @override
  String get food_scan_again => 'Skeniraj ponovno';

  @override
  String get food_review_items => 'Pregledajte otkrivenu hranu';

  @override
  String get food_review_hint =>
      'Prilagodite količine ili uklonite sve neprepoznate stavke';

  @override
  String get food_log_selected => 'Zabilježite odabranu hranu';

  @override
  String get food_favourites_title => 'Omiljena hrana';

  @override
  String get food_recent_title => 'Recent Foods';

  @override
  String get food_no_favourites =>
      'Još nema omiljene hrane. Dodirnite srcem bilo koju hranu da biste je spremili ovdje.';

  @override
  String get food_no_recents =>
      'Nije pronađena nijedna nedavno prijavljena hrana.';

  @override
  String get food_nutrition_details_title =>
      'Dnevne nutricionističke pojedinosti';

  @override
  String get food_macro_protein_label => 'Razgradnja proteina';

  @override
  String get food_macro_carbs_label => 'Razgradnja ugljikohidrata';

  @override
  String get food_macro_fat_label => 'Razgradnja masti';

  @override
  String get food_macro_fiber_label => 'Raspad vlakana';

  @override
  String get food_daily_target_comparison => 'Usporedba cilja';

  @override
  String food_target_label(Object target) {
    return 'Cilj: $target';
  }

  @override
  String get food_edit_entry => 'Uredi dnevnički unos';

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
  String get water_intake_history => 'Današnji vodeni dnevnici';

  @override
  String get water_no_logs_today =>
      'Danas još nije zabilježena voda. Hidratizirajte se i dodirnite gumb za brzo dodavanje!';

  @override
  String get water_adjust_goal => 'Prilagodite dnevni cilj';

  @override
  String get health_connect_banner => 'Povezan na Health Connect';

  @override
  String get health_vitals_summary => 'Dnevni zdravstveni pokazatelji';

  @override
  String get health_latest_heart_rate => 'Najnoviji broj otkucaja srca';

  @override
  String get health_latest_bp => 'Krvni tlak';

  @override
  String get health_latest_spo2 => 'Kisik u krvi';

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
      'Zdravstveni podaci uspješno sinkronizirani!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours h $mins min';
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
      'Upravljajte uparenim pametnim satovima, uređajima za praćenje fitnessa i senzorima zdravlja.';

  @override
  String get health_workout_editor_title => 'Uredi trening';

  @override
  String get health_workout_name_label => 'Naziv vježbe';

  @override
  String get health_workout_duration_label => 'Trajanje (minute)';

  @override
  String get health_workout_calories_label => 'Procijenjene kalorije (kcal)';

  @override
  String get health_workout_date_label => 'Datum i vrijeme';

  @override
  String get plan_daily_wellness_roadmap => 'Vaš personalizirani plan puta';

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
  String get plan_water_budget_label => 'Dnevni cilj vode';

  @override
  String get plan_step_budget_label => 'Dnevni cilj koraka';

  @override
  String get plan_macro_split_label => 'Omjer makronutrijenata';

  @override
  String get profile_personal_details => 'Osobni podaci';

  @override
  String get profile_body_stats => 'Tjelesne mjere';

  @override
  String get profile_app_preferences => 'Postavke i postavke aplikacije';

  @override
  String get profile_edit_name_hint => 'Vaše ime';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Visina ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Težina ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Dob';

  @override
  String get profile_gender_male => 'muško';

  @override
  String get profile_gender_female => 'žensko';

  @override
  String get profile_gender_other => 'Drugo / Radije ne bih rekao';

  @override
  String get profile_activity_sedentary =>
      'Sjedilački način života (malo ili nimalo tjelovježbe)';

  @override
  String get profile_activity_light => 'Lagano aktivan (1-3 dana/tjedan)';

  @override
  String get profile_activity_moderate => 'Umjereno aktivan (3-5 dana/tjedan)';

  @override
  String get profile_activity_very => 'Vrlo aktivan (6-7 dana/tjedan)';

  @override
  String get settings_wear_os_header => 'Prateća aplikacija za Wear OS';

  @override
  String get settings_wear_os_desc =>
      'Instalirajte Bloomi pločicu i komplikaciju na svoj Wear OS sat kako biste bacili pogled na kalorije, vodu i korake.';

  @override
  String get settings_widgets_header => 'Interaktivni Android Widgeti';

  @override
  String get settings_widgets_desc =>
      'Prikvačite widgete u stvarnom vremenu na početni zaslon svog uređaja za trenutna ažuriranja.';

  @override
  String get settings_about_header => 'O Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Izgradite 100';

  @override
  String get settings_about_credits =>
      'Izrađen s pažnjom za svjestan, zdrav život.';

  @override
  String get settings_terms_header => 'Odredbe i uvjeti';

  @override
  String get settings_privacy_header => 'Politika privatnosti';

  @override
  String get settings_delete_header => 'Izbriši račun i podatke';

  @override
  String get settings_delete_warning =>
      'Ova se radnja ne može poništiti. Svi vaši obroci, vježbanje, vitalni podaci i profil bit će trajno izbrisani.';

  @override
  String get settings_delete_confirm_btn => 'Trajno brisanje';

  @override
  String get onboard_welcome_headline => 'Dobrodošli u Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Nježno, svjesno praćenje dobrobiti osmišljeno oko vašeg života.';

  @override
  String get onboard_step_about => 'O tebi';

  @override
  String get onboard_step_goals => 'Vaši ciljevi';

  @override
  String get onboard_step_lifestyle => 'Dnevne navike';

  @override
  String get onboard_step_permissions => 'Dozvole';

  @override
  String get onboard_step_plan => 'spreman!';

  @override
  String get onboard_health_connect_perm => 'Health Connect pristup';

  @override
  String get onboard_step_sensors_perm => 'Senzor brojača koraka';

  @override
  String get onboard_notif_perm => 'Pažljivi podsjetnici i obavijesti';

  @override
  String get onboard_camera_perm => 'Kamera (barkod i skener hrane)';

  @override
  String get onboard_grant_permissions => 'Dodijeli dopuštenja';

  @override
  String get onboard_continue_dashboard => 'Otvori nadzornu ploču';

  @override
  String get notif_channel_hydration_name => 'Hidratacijski poticaji';

  @override
  String get notif_channel_hydration_desc =>
      'Nježni podsjetnici na vodu tijekom dana';

  @override
  String get notif_channel_nutrition_name => 'Podsjetnici za obroke i prehranu';

  @override
  String get notif_channel_nutrition_desc =>
      'Upozorenja o podsjetnicima za doručak, ručak i večeru';

  @override
  String get notif_channel_steps_name => 'Korak Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Slavlje pri postizanju dnevnih ciljeva koraka';

  @override
  String get notif_channel_vitals_name =>
      'Pregledi zdravlja i vitalnih funkcija';

  @override
  String get notif_channel_vitals_desc =>
      'Podsjetnici za tjelesnu težinu i vrijeme spavanja';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Odgoda 15m';

  @override
  String get notif_action_log_meal => '🥗 Dnevni obrok';

  @override
  String get language => 'Jezik';

  @override
  String get share => 'Podijelite';

  @override
  String common_days(Object count) {
    return 'prije $count d';
  }
}
