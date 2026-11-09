// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'domov';

  @override
  String get nav_today => 'Danes';

  @override
  String get nav_plan => 'Načrtujte';

  @override
  String get nav_food => 'hrana';

  @override
  String get nav_food_diary => 'Prehranski dnevnik';

  @override
  String get nav_workout => 'Dnevnik vadbe';

  @override
  String get nav_health => 'zdravje';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Shrani';

  @override
  String get cancel => 'Prekliči';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get done => 'Končano';

  @override
  String get close => 'Zapri';

  @override
  String get back => 'Nazaj';

  @override
  String get next => 'Naprej';

  @override
  String get continue_btn => 'Nadaljuj';

  @override
  String get confirm => 'Potrdi';

  @override
  String get search => 'Iskanje';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Vse';

  @override
  String get active => 'Aktiven';

  @override
  String get today => 'Danes';

  @override
  String get yesterday => 'včeraj';

  @override
  String get tomorrow => 'jutri';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Odstrani';

  @override
  String get refresh => 'Osveži';

  @override
  String get retry => 'Poskusite znova';

  @override
  String get error => 'Napaka';

  @override
  String get success => 'Uspeh';

  @override
  String get loading => 'Nalaganje...';

  @override
  String get no_data => 'Ni podatkov';

  @override
  String get offline => 'Način brez povezave';

  @override
  String get offline_sub =>
      'Spremembe se bodo sinhronizirale po ponovni povezavi';

  @override
  String get undo => 'Razveljavi';

  @override
  String get portion => 'Porcija';

  @override
  String get quantity => 'Količina';

  @override
  String get unit => 'Enota';

  @override
  String get clear => 'jasno';

  @override
  String get select => 'Izberite';

  @override
  String get apply => 'Prijavite se';

  @override
  String get reset => 'Ponastavi';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'ja';

  @override
  String get no => 'št';

  @override
  String get optional => 'Neobvezno';

  @override
  String get calories => 'Kalorije';

  @override
  String get protein => 'Beljakovine';

  @override
  String get carbs => 'Ogljikovi hidrati';

  @override
  String get fat => 'maščoba';

  @override
  String get fiber => 'Vlaknine';

  @override
  String get water => 'voda';

  @override
  String get steps => 'Koraki';

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
  String get inches => 'v';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ure';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Postrežba';

  @override
  String get servings => 'Porcije';

  @override
  String get serving_size => 'Velikost serviranja';

  @override
  String get per_100g => 'na 100g';

  @override
  String get india => 'Indija';

  @override
  String get asia => 'Azija';

  @override
  String get europe => 'Evropi';

  @override
  String get middle_east => 'Bližnji vzhod';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerike';

  @override
  String get home_title => 'domov';

  @override
  String get home_greeting_morning => 'dobro jutro';

  @override
  String get home_greeting_afternoon => 'Dober dan';

  @override
  String get home_greeting_evening => 'Dober večer';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-dnevni niz',
      one: '1-dnevni niz',
      zero: '0 dni niza',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Zažgano';

  @override
  String get home_calories_budget => 'Proračun kalorij';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Preostalo $kcal kcal';
  }

  @override
  String get home_water_title => 'Dnevna hidracija';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Prehojeni koraki';

  @override
  String get home_quick_actions => 'Hitra dejanja';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Voda';

  @override
  String get home_log_workout => 'Dnevnik vadbe';

  @override
  String get home_log_weight => 'Teža dnevnika';

  @override
  String get home_insights_title => 'Današnji vpogledi';

  @override
  String get home_quote =>
      'Majhne zdrave odločitve ustvarjajo cvetoče preobrazbe.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI trener';

  @override
  String get home_surroundings => 'Okolica in zrak';

  @override
  String get home_notifications => 'Obvestila';

  @override
  String get home_daily_score => 'Dnevna ocena dobrega počutja';

  @override
  String get home_view_all => 'Prikaži vse';

  @override
  String get food_diary_title => 'Prehranski dnevnik';

  @override
  String get food_breakfast => 'Zajtrk';

  @override
  String get food_lunch => 'kosilo';

  @override
  String get food_dinner => 'Večerja';

  @override
  String get food_snacks => 'Prigrizki';

  @override
  String get food_add_food => 'Dodajte hrano';

  @override
  String get food_edit_food => 'Uredi hrano';

  @override
  String get food_add_breakfast => 'Dodajte zajtrk';

  @override
  String get food_add_lunch => 'Dodajte kosilo';

  @override
  String get food_add_dinner => 'Dodajte večerjo';

  @override
  String get food_add_snack => 'Dodajte prigrizek';

  @override
  String get food_total_calories => 'Skupne kalorije';

  @override
  String get food_empty_meal => 'No foods logged for this meal yet';

  @override
  String get food_empty_diary => 'No meals logged for this day';

  @override
  String get food_log_first_meal => 'Tap + to log your first delicious meal';

  @override
  String get food_quick_add => 'Hitro dodajanje';

  @override
  String get food_search_hint => 'Search dishes, fruits, dal, roti...';

  @override
  String get food_custom_recipe => 'Hrana in recepti po meri';

  @override
  String get food_scan_barcode => 'Skeniraj črtno kodo';

  @override
  String get food_camera_scan => 'AI skener hrane';

  @override
  String get food_recent => 'Najnovejša hrana';

  @override
  String get food_favourites => 'Priljubljene';

  @override
  String get food_macro_summary => 'Razčlenitev makrohranil';

  @override
  String get food_delete_meal_confirm =>
      'Are you sure you want to remove this item?';

  @override
  String get food_item_deleted => 'Živilo odstranjeno';

  @override
  String get food_remaining => 'preostalih';

  @override
  String get food_consumed => 'zaužit';

  @override
  String food_of_target(Object target) {
    return 'of  $target  kcal';
  }

  @override
  String get foodSearch_title => 'Search Foods';

  @override
  String get foodSearch_scan_barcode => 'Skeniraj črtno kodo';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Create Custom Food';

  @override
  String get foodSearch_recent_searches => 'Recent Searches';

  @override
  String get foodSearch_popular => 'Popular Dishes';

  @override
  String get foodSearch_no_results => 'No foods matching your search';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Align barcode inside the camera frame';

  @override
  String get barcode_not_found => 'Product not found in database';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning is available with Bloomi Pro';

  @override
  String get camera_title => 'AI skener hrane';

  @override
  String get camera_tap_hint => 'Take a clear photo of your dish';

  @override
  String get camera_analysing => 'Analysing food plate...';

  @override
  String get camera_detected => 'Detected items';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Retake Photo';

  @override
  String get camera_confirm_food => 'Confirm Items';

  @override
  String get customFood_title => 'Hrana in recepti po meri';

  @override
  String get customFood_name_hint => 'Dish or ingredient name';

  @override
  String get customFood_calories_hint => 'Calories (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Fat (g)';

  @override
  String get customFood_save => 'Shrani recept';

  @override
  String get water_tracker_title => 'Vodni sledilnik';

  @override
  String get water_daily_target => 'Dnevni cilj hidracije';

  @override
  String get water_logged_today => 'Prijavljen danes';

  @override
  String get water_add_glass => 'Kozarec +250 ml';

  @override
  String get water_add_bottle => 'Steklenička +500 ml';

  @override
  String get water_custom_amount => 'Znesek po meri';

  @override
  String get water_reminder_tip =>
      'Čez dan redno pijte vodo za enakomerno energijo.';

  @override
  String water_logged_toast(Object amount) {
    return 'Zabeleženo $amount ml vode 💧';
  }

  @override
  String get workout_title => 'Dnevnik vadbe';

  @override
  String get workout_add_exercise => 'Dodaj vadbo';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Moč';

  @override
  String get workout_yoga => 'Joga in prilagodljivost';

  @override
  String get workout_duration => 'Trajanje';

  @override
  String get workout_intensity => 'Intenzivnost';

  @override
  String get workout_calories_burned => 'Porabljene kalorije';

  @override
  String get workout_empty => 'Danes ni zabeležen noben trening';

  @override
  String get workout_save_success => 'Vadba je uspešno shranjena!';

  @override
  String get workout_type => 'Vrsta vadbe';

  @override
  String get workout_notes => 'Opombe in razmišljanja';

  @override
  String get health_overview_title => 'Zdravje in vitalni podatki';

  @override
  String get health_heart_rate => 'Srčni utrip';

  @override
  String get health_blood_oxygen => 'Kisik v krvi (SpO2)';

  @override
  String get health_blood_pressure => 'Krvni tlak';

  @override
  String get health_blood_glucose => 'Glukoza v krvi';

  @override
  String get health_body_temperature => 'Telesna temperatura';

  @override
  String get health_sleep_tracking => 'Sledenje spanju';

  @override
  String get health_weight_tracking => 'Teža in telesna sestava';

  @override
  String get health_waist_hip => 'Razmerje med pasom in boki';

  @override
  String get health_devices_hub => 'Središče za naprave in pametne ure';

  @override
  String get health_sync_now => 'Sinhronizacija zdravstvenih podatkov';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Zadnja sinhronizacija: $time';
  }

  @override
  String get health_manual_entry => 'Ročni vnos zdravja';

  @override
  String get health_metric_detail => 'Metrične podrobnosti';

  @override
  String get health_connected_sensors => 'Povezani senzorji zdravja';

  @override
  String get plan_title => 'Dnevni načrt';

  @override
  String get plan_weekly_title => 'Tedenski načrt dobrega počutja';

  @override
  String get plan_calorie_target => 'Cilj kalorij';

  @override
  String get plan_water_target => 'Cilj hidracije';

  @override
  String get plan_step_target => 'Cilj koraka';

  @override
  String get plan_sleep_target => 'Sleep Target';

  @override
  String get plan_meal_suggestions => 'Predlogi za obroke';

  @override
  String get plan_healthy_habits => 'Zdrave navade in nasveti';

  @override
  String get plan_coach_advice => 'Priporočila trenerja Bloomi AI';

  @override
  String get plan_generated_title => 'Prilagojen dnevni urnik';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Uredi profil';

  @override
  String get profile_name => 'Ime';

  @override
  String get profile_age => 'starost';

  @override
  String get profile_gender => 'Spol';

  @override
  String get profile_height => 'Višina';

  @override
  String get profile_weight => 'Teža';

  @override
  String get profile_goal => 'Primarni cilj';

  @override
  String get profile_activity_level => 'Raven aktivnosti';

  @override
  String get profile_stats => 'Moja statistika dobrega počutja';

  @override
  String get profile_saved => 'Profil je bil uspešno posodobljen';

  @override
  String get profile_bmi => 'Indeks telesne mase (ITM)';

  @override
  String get profile_membership => 'Članstvo';

  @override
  String get settings => 'nastavitve';

  @override
  String get preferences_habits => 'PREFERENCE IN NAVADE';

  @override
  String get appearance_theme => 'Videz in tema';

  @override
  String get appearance_theme_sub =>
      'Možnosti temnega, svetlega, sistemskega načina in ozadja aplikacije';

  @override
  String get permissions => 'Dovoljenja in dostop do sistema';

  @override
  String get permissions_sub =>
      'Health Connect, senzorji korakov, GPS, obvestila in kamera';

  @override
  String get reminders_notifications => 'Opomniki in obvestila';

  @override
  String get reminders_sub =>
      'Opomniki za čas obrokov, vodo, preverjanje teže in čas za spanje';

  @override
  String get units_of_measurement => 'Merske enote';

  @override
  String get units_sub =>
      'Metrični (kg, cm, ml, km) ali imperialni (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Jezik aplikacije';

  @override
  String get language_sub =>
      'angleščina, हिन्दी (hindujščina), hingliš in več kot 195 svetovnih jezikov';

  @override
  String get home_screen_widgets => 'Pripomočki za začetni zaslon';

  @override
  String get widgets_sub =>
      'Pripomočki za Android v živo: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Aplikacija Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Spremljevalec pametne ure, ploščice, zapleti in vitalni podatki v živo';

  @override
  String get goals_wellness => 'CILJI IN VPOGLED V DOBRO POČETJE';

  @override
  String get nutrition_targets => 'Prehranski cilji in makro delitev';

  @override
  String get nutrition_targets_sub =>
      'Cilj kalorij, cilj beljakovin, ogljikovih hidratov, maščob in vode';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-dnevno povprečje kalorij, makro razmerje in najboljši dan';

  @override
  String get streaks_milestones => 'Vrste in mejniki';

  @override
  String get streaks_sub => 'Aktivne cvetne črte, značke in dosežki';

  @override
  String get connected_devices => 'POVEZANE NAPRAVE & EKOSISTEM';

  @override
  String get devices_hub => 'Središče za naprave in pametne ure';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Okolica in vreme';

  @override
  String get surroundings_sub =>
      'Kakovost zraka (AQI), UV-indeks in nasveti za hidracijo zaradi vremenskih razmer';

  @override
  String get bloomi_pro => 'Naročnina Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 pripomočkov za začetni zaslon in sledenje vitalnim funkcijam';

  @override
  String get about_security => 'O IN VARNOST';

  @override
  String get about_bloomi => 'O Bloomi';

  @override
  String get about_bloomi_sub => 'Specifikacije gradnje, različica, atribucije';

  @override
  String get privacy_policy => 'Politika zasebnosti';

  @override
  String get privacy_policy_sub =>
      'Prvotno brez povezave, podatkovna arhitektura v napravi';

  @override
  String get terms_conditions => 'Pogoji in določila';

  @override
  String get terms_conditions_sub =>
      'Pogoji storitve in smernice za dobro počutje';

  @override
  String get delete_account => 'Izbriši račun in podatke';

  @override
  String get delete_account_sub =>
      'Nepovratno izbrišite lokalne podatke SQLite in varnostne kopije v oblaku';

  @override
  String get healthy_habits => 'Zgradite nežne, trajne navade dobrega počutja';

  @override
  String get all_logs => 'Moji sledeni podatki in dnevniki';

  @override
  String get search_language => 'Iskanje po jeziku ali domači pisavi ...';

  @override
  String get languages_available => 'Razpoložljivi jeziki';

  @override
  String get no_matching_languages => 'Ni ustreznih jezikov';

  @override
  String get try_searching =>
      'Poskusite iskati z izvorno pisavo ali angleškim črkovanjem';

  @override
  String get partially_translated => 'Delno prevedeno';

  @override
  String get complete_translation => 'Popolna';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Jezik je nastavljen na $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Okolica in okolje';

  @override
  String get surroundings_aqi => 'Indeks kakovosti zraka';

  @override
  String get surroundings_uv => 'UV indeks';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Vlažnost';

  @override
  String get surroundings_hydration_advice =>
      'Ostanite dobro hidrirani v trenutnih vremenskih razmerah.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Iskanje hrane';

  @override
  String get food_quick_barcode => 'Skeniraj črtno kodo 👑';

  @override
  String get food_quick_water => 'Dodajte vodo';

  @override
  String get food_quick_custom => 'Hrana po meri';

  @override
  String get surroundings_good => 'Dobro';

  @override
  String get surroundings_moderate => 'Zmerno';

  @override
  String get surroundings_unhealthy => 'Nezdravo';

  @override
  String get notifications_title => 'Obvestila in opozorila';

  @override
  String get notifications_empty => 'Ni novih obvestil';

  @override
  String get notifications_mark_read => 'Označi vse kot prebrano';

  @override
  String get notifications_clear => 'Počisti vse';

  @override
  String get reminders => 'Nastavitve opomnika';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Opomnik za zajtrk 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'dobro jutro Čas je za hranljiv zajtrk v $time.';
  }

  @override
  String get reminders_lunch_title => 'Opomnik za kosilo 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Zaustavite se in uživajte v uravnoteženem, pozornem kosilu v $time.';
  }

  @override
  String get reminders_dinner_title => 'Opomnik za večerjo 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Čas je za lahko, zadovoljivo večerjo v $time.';
  }

  @override
  String get reminders_water_title => 'Hidratacija Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Čas je, da popijete kozarec sveže vode! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Tedensko tehtanje ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Spremljajte svoje tedenske telesne meritve na Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Sprostitev pred spanjem 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Sprostite se in se pripravite na miren spanec ( $time ).';
  }

  @override
  String get onboard_welcome => 'Dobrodošli pri Bloomi';

  @override
  String get onboard_sub =>
      'Vaš prijazen spremljevalec na področju zdravja in prehrane brez povezave.';

  @override
  String get onboard_get_started => 'Začnite';

  @override
  String get onboard_sign_in => 'Prijavite se';

  @override
  String get onboard_skip => 'Preskoči';

  @override
  String get onboard_choose_goal => 'Kaj je vaš glavni wellness cilj?';

  @override
  String get onboard_goal_weight_loss => 'Nežno hujšanje';

  @override
  String get onboard_goal_muscle => 'Pridobivanje in moč mišic';

  @override
  String get onboard_goal_energy => 'Dnevna energija in vitalnost';

  @override
  String get onboard_goal_habits => 'Zdravo prehranjevanje';

  @override
  String get onboard_about_you => 'Povejte nam nekaj o sebi';

  @override
  String get onboard_lifestyle => 'Vaša dnevna rutina';

  @override
  String get onboard_permissions_title => 'Dovoljenja in dostop do sistema';

  @override
  String get onboard_permissions_sub =>
      'Dovolite dostop do sinhroniziranih korakov, vadb in opomnikov.';

  @override
  String get onboard_plan_ready_title => 'Vaš načrt po meri je pripravljen!';

  @override
  String get onboard_plan_ready_sub =>
      'Samo za vas smo izdelali nežen, prilagojen načrt prehrane in dobrega počutja.';

  @override
  String get onboard_enter_bloomi => 'Vstopi Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Dan najboljše doslednosti: $day';
  }

  @override
  String get insights_streaks_badges => 'Vrste in mejniki';

  @override
  String insights_unlocked_on(Object date) {
    return 'Odklenjeno dne $date';
  }

  @override
  String get insights_keep_going => 'Nadaljujte s fantastičnim napredkom!';

  @override
  String get widgets_title => 'Pripomočki za začetni zaslon';

  @override
  String widgets_active_count(Object count) {
    return 'Aktivni pripomočki: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Stopnice in aktivni obroč';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Spremljevalec maskote Bloomi';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'Povezan z uro';

  @override
  String get wear_os_sync => 'Sinhroniziraj podatke ure';

  @override
  String get theme_title => 'Videz in tema';

  @override
  String get theme_mode => 'Tematski način';

  @override
  String get theme_light => 'Svetloba';

  @override
  String get theme_dark => 'Temno';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Paleta ozadja';

  @override
  String get units_title => 'Merske enote';

  @override
  String get units_metric => 'Metrični (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nadzorne plošče ni mogoče naložiti';

  @override
  String get home_health_permission_req =>
      'Zahtevano je dovoljenje Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi potrebuje dovoljenje Health Connect, da v realnem času prikaže dejanske korake, srčni utrip in sinhronizira pripomočke mobilne hiše.';

  @override
  String get home_allow_health => 'Dovoli Health Connect';

  @override
  String get home_ready_mindful_day => 'Ste pripravljeni na premišljen dan? ✨';

  @override
  String get home_quick_add => 'Hitro dodajanje';

  @override
  String get home_live_gps => 'GPS v živo';

  @override
  String get home_calories_remaining_label => 'PREOSTALE KALORIJE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Pojedeno: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Dnevni cilj dosežen 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml do dnevnega cilja';
  }

  @override
  String get home_details => 'Podrobnosti';

  @override
  String get home_upgrade_plan_desc =>
      'Nadgradite, da odklenete prilagojene dnevne cilje in načrt AI';

  @override
  String get home_unlock => 'Odkleni 👑';

  @override
  String get home_quick_log_hint => 'Hitro zabeležite vnos wellnessa';

  @override
  String get food_serving_size => 'Velikost serviranja';

  @override
  String get food_serving_grams => 'Porcija (g)';

  @override
  String get food_number_servings => 'Število obrokov';

  @override
  String get food_calories_per_serving => 'Kalorije na porcijo';

  @override
  String get food_recipe_ingredients => 'Sestavine';

  @override
  String get food_recipe_add_ingredient => 'Dodaj sestavino';

  @override
  String get food_recipe_directions => 'Navodila in opombe';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Prehrana na obrok';

  @override
  String get food_recipe_saved_toast => 'Hrana po meri uspešno shranjena!';

  @override
  String get food_barcode_found => 'Izdelek najden!';

  @override
  String get food_barcode_not_found_desc =>
      'Te črtne kode nismo našli v odprti zbirki podatkov. Dodate ga lahko kot hrano po meri.';

  @override
  String get food_add_custom_btn => 'Dodajte hrano po meri';

  @override
  String get food_scan_again => 'Skeniraj znova';

  @override
  String get food_review_items => 'Pregled zaznanih živil';

  @override
  String get food_review_hint =>
      'Prilagodite količine ali odstranite vse neprepoznane predmete';

  @override
  String get food_log_selected => 'Zabeležite izbrana živila';

  @override
  String get food_favourites_title => 'Priljubljena hrana';

  @override
  String get food_recent_title => 'Najnovejša hrana';

  @override
  String get food_no_favourites =>
      'Ni še nobene najljubše hrane. Dotaknite se srca katere koli hrane, da jo shranite tukaj.';

  @override
  String get food_no_recents =>
      'Nedavno prijavljenih živil ni bilo mogoče najti.';

  @override
  String get food_nutrition_details_title => 'Dnevne podrobnosti o prehrani';

  @override
  String get food_macro_protein_label => 'Razgradnja beljakovin';

  @override
  String get food_macro_carbs_label => 'Razčlenitev ogljikovih hidratov';

  @override
  String get food_macro_fat_label => 'Razgradnja maščobe';

  @override
  String get food_macro_fiber_label => 'Razpad vlaken';

  @override
  String get food_daily_target_comparison => 'Ciljna primerjava';

  @override
  String food_target_label(Object target) {
    return 'Cilj: $target';
  }

  @override
  String get food_edit_entry => 'Uredi dnevniški vnos';

  @override
  String get food_delete_entry => 'Izbriši vnos';

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
  String get water_intake_history => 'Današnji vodni dnevniki';

  @override
  String get water_no_logs_today =>
      'Danes še ni bilo vode. Hidrirajte in tapnite gumb za hitro dodajanje!';

  @override
  String get water_adjust_goal => 'Prilagodite dnevni cilj';

  @override
  String get health_connect_banner => 'Povezan s Health Connect';

  @override
  String get health_vitals_summary => 'Daily Health Vitals';

  @override
  String get health_latest_heart_rate => 'Najnovejši srčni utrip';

  @override
  String get health_latest_bp => 'Krvni tlak';

  @override
  String get health_latest_spo2 => 'Kisik v krvi';

  @override
  String get health_latest_glucose => 'Glukoza v krvi';

  @override
  String get health_latest_weight => 'Teža';

  @override
  String get health_latest_sleep => 'Trajanje spanja';

  @override
  String get health_add_manual => 'Dodajte ročno merjenje';

  @override
  String get health_history_trends => 'Zgodovinski trendi';

  @override
  String get health_sync_success =>
      'Zdravstveni podatki so uspešno sinhronizirani!';

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
    return '$bpm u/min';
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
  String get health_devices_title => 'Povezane naprave in nosljive naprave';

  @override
  String get health_devices_desc =>
      'Upravljajte seznanjene pametne ure, merilnike telesne pripravljenosti in zdravstvene senzorje.';

  @override
  String get health_workout_editor_title => 'Uredi vadbo';

  @override
  String get health_workout_name_label => 'Ime vadbe';

  @override
  String get health_workout_duration_label => 'Trajanje (minute)';

  @override
  String get health_workout_calories_label => 'Ocenjene kalorije (kcal)';

  @override
  String get health_workout_date_label => 'Datum in čas';

  @override
  String get plan_daily_wellness_roadmap => 'Vaš osebni načrt';

  @override
  String get plan_morning_routine => 'Jutranja rutina';

  @override
  String get plan_afternoon_routine => 'Opoldanski wellness';

  @override
  String get plan_evening_routine => 'Večerna sprostitev';

  @override
  String get plan_coach_badge => 'Bloomi AI trener';

  @override
  String get plan_weekly_overview => '7-dnevni Wellness Focus';

  @override
  String get plan_targets_title => 'Cilji in cilji dobrega počutja';

  @override
  String get plan_calorie_budget_label => 'Dnevni proračun kalorij';

  @override
  String get plan_water_budget_label => 'Dnevni cilj vode';

  @override
  String get plan_step_budget_label => 'Dnevni cilj korakov';

  @override
  String get plan_macro_split_label => 'Razmerje makrohranil';

  @override
  String get profile_personal_details => 'Osebni podatki';

  @override
  String get profile_body_stats => 'Telesne mere';

  @override
  String get profile_app_preferences => 'Nastavitve in nastavitve aplikacije';

  @override
  String get profile_edit_name_hint => 'Vaše ime';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Višina ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Teža ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'starost';

  @override
  String get profile_gender_male => 'moški';

  @override
  String get profile_gender_female => 'ženska';

  @override
  String get profile_gender_other => 'Drugo / ne želim reči';

  @override
  String get profile_activity_sedentary => 'Sedeči (malo ali nič vadbe)';

  @override
  String get profile_activity_light => 'Rahlo aktiven (1-3 dni/teden)';

  @override
  String get profile_activity_moderate => 'Zmerno aktiven (3-5 dni/teden)';

  @override
  String get profile_activity_very => 'Zelo aktiven (6-7 dni/teden)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Namestite ploščico Bloomi in zaplet na uro Wear OS, da boste lahko spremljali kalorije, vodo in korake.';

  @override
  String get settings_widgets_header => 'Interaktivni pripomočki za Android';

  @override
  String get settings_widgets_desc =>
      'Pripnite pripomočke v realnem času na začetni zaslon naprave za takojšnje posodobitve.';

  @override
  String get settings_about_header => 'O Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Zgradite 100';

  @override
  String get settings_about_credits =>
      'Izdelano s skrbjo za čuječe in zdravo življenje.';

  @override
  String get settings_terms_header => 'Pogoji in določila';

  @override
  String get settings_privacy_header => 'Politika zasebnosti';

  @override
  String get settings_delete_header => 'Izbriši račun in podatke';

  @override
  String get settings_delete_warning =>
      'Tega dejanja ni mogoče razveljaviti. Vsi vaši obroki, vadbe, vitalni podatki in profil bodo trajno izbrisani.';

  @override
  String get settings_delete_confirm_btn => 'Trajno izbriši';

  @override
  String get onboard_welcome_headline => 'Dobrodošli pri Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Nežno, pozorno sledenje dobrega počutja, zasnovano za vaše življenje.';

  @override
  String get onboard_step_about => 'O tebi';

  @override
  String get onboard_step_goals => 'Vaši cilji';

  @override
  String get onboard_step_lifestyle => 'Dnevne navade';

  @override
  String get onboard_step_permissions => 'Dovoljenja';

  @override
  String get onboard_step_plan => 'pripravljena!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Senzor števca korakov';

  @override
  String get onboard_notif_perm => 'Pozorni opomniki in obvestila';

  @override
  String get onboard_camera_perm => 'Kamera (črtne kode in čitalnik hrane)';

  @override
  String get onboard_grant_permissions => 'Podeli dovoljenja';

  @override
  String get onboard_continue_dashboard => 'Odpri nadzorno ploščo';

  @override
  String get notif_channel_hydration_name => 'Hidratacijski dražljaji';

  @override
  String get notif_channel_hydration_desc =>
      'Nežni opomniki za vodo skozi ves dan';

  @override
  String get notif_channel_nutrition_name => 'Opomniki o obrokih in prehrani';

  @override
  String get notif_channel_nutrition_desc =>
      'Opozorila o opomnikih za zajtrk, kosilo in večerjo';

  @override
  String get notif_channel_steps_name => 'Mejniki korakov';

  @override
  String get notif_channel_steps_desc =>
      'Slavje ob doseganju dnevnih ciljnih korakov';

  @override
  String get notif_channel_vitals_name =>
      'Pregledi zdravja in življenjskega stanja';

  @override
  String get notif_channel_vitals_desc => 'Opomniki za težo in čas spanja';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Dremež 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Jezik';

  @override
  String get share => 'Delite';

  @override
  String common_days(Object count) {
    return 'pred $count d';
  }
}
