// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Domů';

  @override
  String get nav_today => 'dnes';

  @override
  String get nav_plan => 'Plán';

  @override
  String get nav_food => 'Jídlo';

  @override
  String get nav_food_diary => 'Deník jídla';

  @override
  String get nav_workout => 'Záznam cvičení';

  @override
  String get nav_health => 'Zdraví';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Uložit';

  @override
  String get cancel => 'Zrušit';

  @override
  String get delete => 'Vymazat';

  @override
  String get edit => 'Upravit';

  @override
  String get done => 'Hotovo';

  @override
  String get close => 'Zavřít';

  @override
  String get back => 'Zpět';

  @override
  String get next => 'Další';

  @override
  String get continue_btn => 'Pokračovat';

  @override
  String get confirm => 'Potvrďte';

  @override
  String get search => 'Vyhledávání';

  @override
  String get filter => 'Filtr';

  @override
  String get all => 'Vše';

  @override
  String get active => 'Aktivní';

  @override
  String get today => 'dnes';

  @override
  String get yesterday => 'včera';

  @override
  String get tomorrow => 'zítra';

  @override
  String get add => 'Přidat';

  @override
  String get remove => 'Odebrat';

  @override
  String get refresh => 'Obnovit';

  @override
  String get retry => 'Zkuste to znovu';

  @override
  String get error => 'Chyba';

  @override
  String get success => 'Úspěch';

  @override
  String get loading => 'Načítání...';

  @override
  String get no_data => 'Nejsou k dispozici žádné údaje';

  @override
  String get offline => 'Režim offline';

  @override
  String get offline_sub => 'Změny se synchronizují po opětovném připojení';

  @override
  String get undo => 'Vrátit zpět';

  @override
  String get portion => 'Porce';

  @override
  String get quantity => 'množství';

  @override
  String get unit => 'Jednotka';

  @override
  String get clear => 'Jasný';

  @override
  String get select => 'Vyberte';

  @override
  String get apply => 'Použít';

  @override
  String get reset => 'Resetovat';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ano';

  @override
  String get no => 'Ne';

  @override
  String get optional => 'Volitelné';

  @override
  String get calories => 'Kalorie';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Sacharidy';

  @override
  String get fat => 'Tlustý';

  @override
  String get fiber => 'Vláknina';

  @override
  String get water => 'Voda';

  @override
  String get steps => 'Kroky';

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
  String get bpm => 'tep/min';

  @override
  String get hours => 'hod';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Servírování';

  @override
  String get servings => 'Porce';

  @override
  String get serving_size => 'Velikost porce';

  @override
  String get per_100g => 'na 100 g';

  @override
  String get india => 'Indie';

  @override
  String get asia => 'Asie';

  @override
  String get europe => 'Evropě';

  @override
  String get middle_east => 'Střední východ';

  @override
  String get africa => 'Africe';

  @override
  String get americas => 'Ameriky';

  @override
  String get home_title => 'Domů';

  @override
  String get home_greeting_morning => 'Dobré ráno';

  @override
  String get home_greeting_afternoon => 'Dobré odpoledne';

  @override
  String get home_greeting_evening => 'Dobrý večer';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Řada $count dnů',
      one: '1 denní série',
      zero: 'série 0 dnů',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Spálený';

  @override
  String get home_calories_budget => 'Kalorický rozpočet';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Zbývá $kcal kcal';
  }

  @override
  String get home_water_title => 'Denní hydratace';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Kroky chůze';

  @override
  String get home_quick_actions => 'Rychlé akce';

  @override
  String get home_log_meal => 'Log jídlo';

  @override
  String get home_log_water => 'Log Voda';

  @override
  String get home_log_workout => 'Log cvičení';

  @override
  String get home_log_weight => 'Hmotnost log';

  @override
  String get home_insights_title => 'Dnešní statistiky';

  @override
  String get home_quote => 'Malé zdravé volby vytvářejí kvetoucí proměny.';

  @override
  String get home_ai_coach_tip => 'trenér Bloomi AI';

  @override
  String get home_surroundings => 'Okolí & Vzduch';

  @override
  String get home_notifications => 'Oznámení';

  @override
  String get home_daily_score => 'Denní wellness skóre';

  @override
  String get home_view_all => 'Zobrazit vše';

  @override
  String get food_diary_title => 'Deník jídla';

  @override
  String get food_breakfast => 'Snídaně';

  @override
  String get food_lunch => 'oběd';

  @override
  String get food_dinner => 'Večeře';

  @override
  String get food_snacks => 'Občerstvení';

  @override
  String get food_add_food => 'Přidat jídlo';

  @override
  String get food_edit_food => 'Upravit jídlo';

  @override
  String get food_add_breakfast => 'Přidat snídani';

  @override
  String get food_add_lunch => 'Přidejte oběd';

  @override
  String get food_add_dinner => 'Přidat večeři';

  @override
  String get food_add_snack => 'Přidejte svačinku';

  @override
  String get food_total_calories => 'Celkový počet kalorií';

  @override
  String get food_empty_meal =>
      'Pro toto jídlo zatím nejsou přihlášena žádná jídla';

  @override
  String get food_empty_diary => 'Pro tento den nejsou přihlášena žádná jídla';

  @override
  String get food_log_first_meal =>
      'Klepnutím na + zaznamenáte své první chutné jídlo';

  @override
  String get food_quick_add => 'Rychlé přidání';

  @override
  String get food_search_hint => 'Hledejte pokrmy, ovoce, dal, roti...';

  @override
  String get food_custom_recipe => 'Jídlo a recept na zakázku';

  @override
  String get food_scan_barcode => 'Naskenujte čárový kód';

  @override
  String get food_camera_scan => 'AI potravinový skener';

  @override
  String get food_recent => 'Nejnovější jídla';

  @override
  String get food_favourites => 'Oblíbené';

  @override
  String get food_macro_summary => 'Rozdělení makroživin';

  @override
  String get food_delete_meal_confirm =>
      'Opravdu chcete tuto položku odstranit?';

  @override
  String get food_item_deleted => 'Potravina byla odstraněna';

  @override
  String get food_remaining => 'zbývající';

  @override
  String get food_consumed => 'spotřebováno';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'Hledat potraviny';

  @override
  String get foodSearch_scan_barcode => 'Naskenujte čárový kód';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Vytvořte si jídlo na míru';

  @override
  String get foodSearch_recent_searches => 'Nedávná vyhledávání';

  @override
  String get foodSearch_popular => 'Populární jídla';

  @override
  String get foodSearch_no_results =>
      'Vašemu vyhledávání neodpovídají žádné potraviny';

  @override
  String get barcode_title => 'Skener čárových kódů';

  @override
  String get barcode_align => 'Zarovnejte čárový kód uvnitř rámu fotoaparátu';

  @override
  String get barcode_not_found => 'Produkt nenalezen v databázi';

  @override
  String get barcode_premium_feature =>
      'Skenování čárových kódů je dostupné s Bloomi Pro';

  @override
  String get camera_title => 'AI potravinový skener';

  @override
  String get camera_tap_hint => 'Pořiďte jasnou fotku svého pokrmu';

  @override
  String get camera_analysing => 'Analýza talíře s jídlem...';

  @override
  String get camera_detected => 'Zjištěné položky';

  @override
  String get camera_flash => 'Přepnout Flash';

  @override
  String get camera_retake => 'Znovu pořídit fotografii';

  @override
  String get camera_confirm_food => 'Potvrdit položky';

  @override
  String get customFood_title => 'Jídlo a recept na zakázku';

  @override
  String get customFood_name_hint => 'Název pokrmu nebo přísady';

  @override
  String get customFood_calories_hint => 'Kalorie (kcal)';

  @override
  String get customFood_protein_hint => 'Bílkoviny (g)';

  @override
  String get customFood_carbs_hint => 'Sacharidy (g)';

  @override
  String get customFood_fat_hint => 'tuk (g)';

  @override
  String get customFood_save => 'Uložit recept';

  @override
  String get water_tracker_title => 'Sledování vody';

  @override
  String get water_daily_target => 'Denní cíl hydratace';

  @override
  String get water_logged_today => 'Přihlášeno dnes';

  @override
  String get water_add_glass => '+250 ml Sklenice';

  @override
  String get water_add_bottle => '+500 ml láhev';

  @override
  String get water_custom_amount => 'Vlastní částka';

  @override
  String get water_reminder_tip =>
      'Pijte vodu pravidelně po celý den pro stálou energii.';

  @override
  String water_logged_toast(Object amount) {
    return 'Zaneseno $amount ml vody 💧';
  }

  @override
  String get workout_title => 'Záznam cvičení';

  @override
  String get workout_add_exercise => 'Přidat cvičení';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Síla';

  @override
  String get workout_yoga => 'Jóga a flexibilita';

  @override
  String get workout_duration => 'Doba trvání';

  @override
  String get workout_intensity => 'Intenzita';

  @override
  String get workout_calories_burned => 'Spálené kalorie';

  @override
  String get workout_empty => 'Dnes nejsou přihlášeny žádné tréninky';

  @override
  String get workout_save_success => 'Cvičení bylo úspěšně uloženo!';

  @override
  String get workout_type => 'Typ cvičení';

  @override
  String get workout_notes => 'Poznámky a úvahy';

  @override
  String get health_overview_title => 'Zdraví & Vitaly';

  @override
  String get health_heart_rate => 'Srdeční frekvence';

  @override
  String get health_blood_oxygen => 'Krevní kyslík (SpO2)';

  @override
  String get health_blood_pressure => 'Krevní tlak';

  @override
  String get health_blood_glucose => 'Glukóza v krvi';

  @override
  String get health_body_temperature => 'Tělesná teplota';

  @override
  String get health_sleep_tracking => 'Sledování spánku';

  @override
  String get health_weight_tracking => 'Hmotnost a složení těla';

  @override
  String get health_waist_hip => 'Poměr pasu k bokům';

  @override
  String get health_devices_hub => 'Zařízení a centrum chytrých hodinek';

  @override
  String get health_sync_now => 'Synchronizujte zdravotní data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Poslední synchronizace: $time';
  }

  @override
  String get health_manual_entry => 'Manuální zdravotní vstup';

  @override
  String get health_metric_detail => 'Podrobnosti o metrikách';

  @override
  String get health_connected_sensors => 'Připojené zdravotní senzory';

  @override
  String get plan_title => 'Denní plán';

  @override
  String get plan_weekly_title => 'Týdenní wellness plán';

  @override
  String get plan_calorie_target => 'Kalorický cíl';

  @override
  String get plan_water_target => 'Hydratační cíl';

  @override
  String get plan_step_target => 'Krokový cíl';

  @override
  String get plan_sleep_target => 'Spánkový cíl';

  @override
  String get plan_meal_suggestions => 'Návrhy na stravování';

  @override
  String get plan_healthy_habits => 'Zdravé návyky a tipy';

  @override
  String get plan_coach_advice => 'Doporučení Bloomi AI Coach';

  @override
  String get plan_generated_title => 'Personalizovaný denní rozvrh';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Upravit profil';

  @override
  String get profile_name => 'Jméno';

  @override
  String get profile_age => 'Věk';

  @override
  String get profile_gender => 'Pohlaví';

  @override
  String get profile_height => 'Výška';

  @override
  String get profile_weight => 'Hmotnost';

  @override
  String get profile_goal => 'Primární cíl';

  @override
  String get profile_activity_level => 'Úroveň aktivity';

  @override
  String get profile_stats => 'Moje statistiky wellness';

  @override
  String get profile_saved => 'Profil byl úspěšně aktualizován';

  @override
  String get profile_bmi => 'Index tělesné hmotnosti (BMI)';

  @override
  String get profile_membership => 'Členství';

  @override
  String get settings => 'Nastavení';

  @override
  String get preferences_habits => 'PREFERENCE A ZVYKY';

  @override
  String get appearance_theme => 'Vzhled a motiv';

  @override
  String get appearance_theme_sub =>
      'Tmavé, Světlé, Systémový režim a Možnosti pozadí aplikace';

  @override
  String get permissions => 'Oprávnění a přístup k systému';

  @override
  String get permissions_sub =>
      'Health Connect, senzory kroků, GPS, oznámení a kamera';

  @override
  String get reminders_notifications => 'Připomenutí a oznámení';

  @override
  String get reminders_sub =>
      'Čas jídla, voda, kontrola hmotnosti a připomenutí před spaním';

  @override
  String get units_of_measurement => 'Jednotky měření';

  @override
  String get units_sub =>
      'Metrické (kg, cm, ml, km) nebo imperiální (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Jazyk aplikace';

  @override
  String get language_sub =>
      'angličtina, हिन्दी (hindština), hinglish a více než 195 světových jazyků';

  @override
  String get home_screen_widgets => 'Widgety domovské obrazovky';

  @override
  String get widgets_sub =>
      'Živé widgety pro Android: Hub, Kroky, Voda, Výživa a Maskot';

  @override
  String get wear_os_watch_app => 'Aplikace Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Společník pro chytré hodinky, dlaždice, komplikace a živé životy';

  @override
  String get goals_wellness => 'CÍLE A POHLEDY NA WELLNESS';

  @override
  String get nutrition_targets => 'Výživové cíle a makro rozdělení';

  @override
  String get nutrition_targets_sub =>
      'Cílová hodnota kalorií, bílkovin, sacharidů, tuku a vody';

  @override
  String get weekly_recap => 'Týdenní rekapitulace wellness';

  @override
  String get weekly_recap_sub =>
      '7denní průměr kalorií, makro poměr a nejlepší den';

  @override
  String get streaks_milestones => 'Pruhy a milníky';

  @override
  String get streaks_sub => 'Aktivní pruhy květů, odznaky a úspěchy';

  @override
  String get connected_devices => 'PŘIPOJENÁ ZAŘÍZENÍ A EKOSYSTÉM';

  @override
  String get devices_hub => 'Zařízení a centrum chytrých hodinek';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Okolí & Počasí';

  @override
  String get surroundings_sub =>
      'Kvalita vzduchu (AQI), UV index a tipy na hydrataci počasí';

  @override
  String get bloomi_pro => 'Předplatné Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgetů na domovské obrazovce a sledování životních funkcí';

  @override
  String get about_security => 'O A ZABEZPEČENÍ';

  @override
  String get about_bloomi => 'O Bloomi';

  @override
  String get about_bloomi_sub => 'Specifikace sestavení, verze, atributy';

  @override
  String get privacy_policy => 'Zásady ochrany osobních údajů';

  @override
  String get privacy_policy_sub =>
      'Offline-first, on-device datová architektura';

  @override
  String get terms_conditions => 'Smluvní podmínky';

  @override
  String get terms_conditions_sub => 'Podmínky služby a pokyny pro wellness';

  @override
  String get delete_account => 'Smazat účet a data';

  @override
  String get delete_account_sub =>
      'Nenávratně vymažte místní data SQLite a cloudové zálohy';

  @override
  String get healthy_habits => 'Vybudujte si jemné a trvalé wellness návyky';

  @override
  String get all_logs => 'Moje sledovaná data a protokoly';

  @override
  String get search_language => 'Hledat podle jazyka nebo nativního písma...';

  @override
  String get languages_available => 'Dostupné jazyky';

  @override
  String get no_matching_languages =>
      'Nebyly nalezeny žádné odpovídající jazyky';

  @override
  String get try_searching =>
      'Zkuste hledat podle nativního písma nebo anglického pravopisu';

  @override
  String get partially_translated => 'Částečně přeloženo';

  @override
  String get complete_translation => 'Dokončeno';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Jazyk nastaven na $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Okolí a životní prostředí';

  @override
  String get surroundings_aqi => 'Index kvality ovzduší';

  @override
  String get surroundings_uv => 'UV index';

  @override
  String get surroundings_temp => 'Teplota';

  @override
  String get surroundings_humidity => 'Vlhkost';

  @override
  String get surroundings_hydration_advice =>
      'Zůstaňte dobře hydratovaní v aktuálních povětrnostních podmínkách.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Hledat jídlo';

  @override
  String get food_quick_barcode => 'Naskenujte čárový kód 👑';

  @override
  String get food_quick_water => 'Přidejte vodu';

  @override
  String get food_quick_custom => 'Jídlo na zakázku';

  @override
  String get surroundings_good => 'Dobře';

  @override
  String get surroundings_moderate => 'Mírný';

  @override
  String get surroundings_unhealthy => 'Nezdravé';

  @override
  String get notifications_title => 'Oznámení a upozornění';

  @override
  String get notifications_empty => 'Žádná nová oznámení';

  @override
  String get notifications_mark_read => 'Označit vše jako přečtené';

  @override
  String get notifications_clear => 'Vymazat vše';

  @override
  String get reminders => 'Nastavení připomenutí';

  @override
  String get notifications => 'Push oznámení';

  @override
  String get reminders_breakfast_title => 'Připomenutí snídaně 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Dobré ráno! Čas na výživnou snídani v $time .';
  }

  @override
  String get reminders_lunch_title => 'Připomenutí oběda 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Zastavte se a vychutnejte si vyvážený, pozorný oběd v $time .';
  }

  @override
  String get reminders_dinner_title => 'Připomenutí večeře 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Čas na lehkou a uspokojivou večeři v $time .';
  }

  @override
  String get reminders_water_title => 'Hydratační Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Čas vypít sklenici čerstvé vody! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Týdenní vážení ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Sledujte své týdenní tělesné metriky na Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Večerní večerka 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Uvolněte se a připravte se na klidný spánek ( $time ).';
  }

  @override
  String get onboard_welcome => 'Vítejte v destinaci Bloomi';

  @override
  String get onboard_sub =>
      'Váš přátelský, offline první společník pro zdraví a výživu.';

  @override
  String get onboard_get_started => 'Začněte';

  @override
  String get onboard_sign_in => 'Přihlaste se';

  @override
  String get onboard_skip => 'Přeskočit';

  @override
  String get onboard_choose_goal => 'Jaký je váš primární wellness cíl?';

  @override
  String get onboard_goal_weight_loss => 'Jemné hubnutí';

  @override
  String get onboard_goal_muscle => 'Svalový zisk a síla';

  @override
  String get onboard_goal_energy => 'Denní energie a vitalita';

  @override
  String get onboard_goal_habits => 'Zdravé uvědomělé stravování';

  @override
  String get onboard_about_you => 'Řekněte nám o sobě';

  @override
  String get onboard_lifestyle => 'Vaše denní rutina';

  @override
  String get onboard_permissions_title => 'Oprávnění a přístup k systému';

  @override
  String get onboard_permissions_sub =>
      'Udělte přístup k synchronizaci kroků, cvičení a připomenutí.';

  @override
  String get onboard_plan_ready_title => 'Váš vlastní plán je připraven!';

  @override
  String get onboard_plan_ready_sub =>
      'Právě pro vás jsme vytvořili jemný, personalizovaný plán výživy a wellness.';

  @override
  String get onboard_enter_bloomi => 'Vstupte Bloomi';

  @override
  String get insights_weekly_report => 'Týdenní rekapitulace wellness';

  @override
  String insights_best_day(Object day) {
    return 'Den nejlepší konzistence: $day';
  }

  @override
  String get insights_streaks_badges => 'Pruhy a milníky';

  @override
  String insights_unlocked_on(Object date) {
    return 'Odemčeno na $date';
  }

  @override
  String get insights_keep_going => 'Pokračujte ve fantastickém pokroku!';

  @override
  String get widgets_title => 'Widgety domovské obrazovky';

  @override
  String widgets_active_count(Object count) {
    return 'Aktivní widgety: $count';
  }

  @override
  String get widgets_hub_title => 'Wellness centrum Bloomi';

  @override
  String get widgets_steps_title => 'Kroky a aktivní kroužek';

  @override
  String get widgets_water_title => 'Rychlý záznam hydratace';

  @override
  String get widgets_mascot_title => 'Společník maskota Bloomi';

  @override
  String get wear_os_title => 'Chytré hodinky Wear OS';

  @override
  String get wear_os_connected => 'Připojeno k hodinkám';

  @override
  String get wear_os_sync => 'Synchronizovat data hodinek';

  @override
  String get theme_title => 'Vzhled a motiv';

  @override
  String get theme_mode => 'Režim motivu';

  @override
  String get theme_light => 'Světlo';

  @override
  String get theme_dark => 'Tmavý';

  @override
  String get theme_system => 'Systém';

  @override
  String get theme_background_palette => 'Paleta pozadí';

  @override
  String get units_title => 'Jednotky měření';

  @override
  String get units_metric => 'Metrické (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nelze načíst řídicí panel';

  @override
  String get home_health_permission_req =>
      'Je vyžadováno oprávnění Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi vyžaduje oprávnění Health Connect, aby mohla v reálném čase táhnout skutečné kroky, srdeční frekvenci a synchronizovat widgety mobilního domova.';

  @override
  String get home_allow_health => 'Povolit Health Connect';

  @override
  String get home_ready_mindful_day => 'Jste připraveni na den plný vědomí? ✨';

  @override
  String get home_quick_add => 'Rychlé přidání';

  @override
  String get home_live_gps => 'Živá GPS';

  @override
  String get home_calories_remaining_label => 'ZBÝVAJÍCÍ KALORIE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Snědeno: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Klepnutím na Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Denní cíl dosažen 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml do denního cíle';
  }

  @override
  String get home_details => 'Podrobnosti';

  @override
  String get home_upgrade_plan_desc =>
      'Upgradujte a odemkněte personalizované denní cíle a plán AI';

  @override
  String get home_unlock => 'Odemkněte 👑';

  @override
  String get home_quick_log_hint => 'Rychle zaznamenejte vstup do wellness';

  @override
  String get food_serving_size => 'Velikost porce';

  @override
  String get food_serving_grams => 'Porce (g)';

  @override
  String get food_number_servings => 'Počet porcí';

  @override
  String get food_calories_per_serving => 'Kalorie na porci';

  @override
  String get food_recipe_ingredients => 'Ingredience';

  @override
  String get food_recipe_add_ingredient => 'Přidejte přísadu';

  @override
  String get food_recipe_directions => 'Pokyny a poznámky';

  @override
  String get food_recipe_total => 'Celková výživa podle receptu';

  @override
  String get food_recipe_per_serving => 'Výživa na jednu porci';

  @override
  String get food_recipe_saved_toast => 'Vlastní jídlo bylo úspěšně uloženo!';

  @override
  String get food_barcode_found => 'Produkt nalezen!';

  @override
  String get food_barcode_not_found_desc =>
      'Tento čárový kód jsme v otevřené databázi nenašli. Můžete ho přidat jako vlastní jídlo.';

  @override
  String get food_add_custom_btn => 'Přidat vlastní jídlo';

  @override
  String get food_scan_again => 'Skenovat znovu';

  @override
  String get food_review_items => 'Zkontrolujte zjištěné potraviny';

  @override
  String get food_review_hint =>
      'Upravte množství nebo odstraňte jakoukoli nerozpoznanou položku';

  @override
  String get food_log_selected => 'Zaznamenat vybraná jídla';

  @override
  String get food_favourites_title => 'Oblíbená jídla';

  @override
  String get food_recent_title => 'Nejnovější jídla';

  @override
  String get food_no_favourites =>
      'Zatím žádná oblíbená jídla. Klepnutím na srdce na jakékoli jídlo, které zde chcete uložit.';

  @override
  String get food_no_recents =>
      'Nebyla nalezena žádná nedávno přihlášená jídla.';

  @override
  String get food_nutrition_details_title => 'Podrobnosti o denní výživě';

  @override
  String get food_macro_protein_label => 'Odbourávání bílkovin';

  @override
  String get food_macro_carbs_label => 'Rozdělení sacharidů';

  @override
  String get food_macro_fat_label => 'Rozdělení tuku';

  @override
  String get food_macro_fiber_label => 'Rozpad vláken';

  @override
  String get food_daily_target_comparison => 'Cílové srovnání';

  @override
  String food_target_label(Object target) {
    return 'Cíl: $target';
  }

  @override
  String get food_edit_entry => 'Upravit záznam v deníku';

  @override
  String get food_delete_entry => 'Smazat záznam';

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
  String get water_intake_history => 'Dnešní vodní deníky';

  @override
  String get water_no_logs_today =>
      'Dnes ještě žádná voda. Hydratujte a klepněte na tlačítko rychlého přidání!';

  @override
  String get water_adjust_goal => 'Upravit denní cíl';

  @override
  String get health_connect_banner => 'Připojeno ke službě Health Connect';

  @override
  String get health_vitals_summary => 'Denní zdraví Vitals';

  @override
  String get health_latest_heart_rate => 'Nejnovější tepová frekvence';

  @override
  String get health_latest_bp => 'Krevní tlak';

  @override
  String get health_latest_spo2 => 'Krevní kyslík';

  @override
  String get health_latest_glucose => 'Glukóza v krvi';

  @override
  String get health_latest_weight => 'Hmotnost';

  @override
  String get health_latest_sleep => 'Délka spánku';

  @override
  String get health_add_manual => 'Přidejte ruční měření';

  @override
  String get health_history_trends => 'Historické trendy';

  @override
  String get health_sync_success =>
      'Zdravotní údaje byly úspěšně synchronizovány!';

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
    return '$bpm tepů/min';
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
  String get health_devices_title => 'Připojená zařízení a nositelná zařízení';

  @override
  String get health_devices_desc =>
      'Spravujte spárované chytré hodinky, fitness trackery a zdravotní senzory.';

  @override
  String get health_workout_editor_title => 'Upravit cvičení';

  @override
  String get health_workout_name_label => 'Název cvičení';

  @override
  String get health_workout_duration_label => 'Doba trvání (minuty)';

  @override
  String get health_workout_calories_label => 'Odhadované kalorie (kcal)';

  @override
  String get health_workout_date_label => 'Datum a čas';

  @override
  String get plan_daily_wellness_roadmap => 'Váš osobní plán';

  @override
  String get plan_morning_routine => 'Ranní rutina';

  @override
  String get plan_afternoon_routine => 'Polední wellness';

  @override
  String get plan_evening_routine => 'Večerní Wind-Down';

  @override
  String get plan_coach_badge => 'trenér Bloomi AI';

  @override
  String get plan_weekly_overview => '7denní wellness zaměření';

  @override
  String get plan_targets_title => 'Wellness cíle a cíle';

  @override
  String get plan_calorie_budget_label => 'Denní rozpočet na kalorie';

  @override
  String get plan_water_budget_label => 'Denní vodní cíl';

  @override
  String get plan_step_budget_label => 'Denní cílový krok';

  @override
  String get plan_macro_split_label => 'Poměr makroživin';

  @override
  String get profile_personal_details => 'Osobní údaje';

  @override
  String get profile_body_stats => 'Měření těla';

  @override
  String get profile_app_preferences => 'Předvolby a nastavení aplikací';

  @override
  String get profile_edit_name_hint => 'Vaše jméno';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Výška ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Hmotnost ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Věk';

  @override
  String get profile_gender_male => 'Mužské';

  @override
  String get profile_gender_female => 'Žena';

  @override
  String get profile_gender_other => 'Jiné / raději neříkat';

  @override
  String get profile_activity_sedentary => 'Sedavý (málo až žádné cvičení)';

  @override
  String get profile_activity_light => 'Lehce aktivní (1-3 dny/týden)';

  @override
  String get profile_activity_moderate => 'Středně aktivní (3-5 dní/týden)';

  @override
  String get profile_activity_very => 'Velmi aktivní (6-7 dní/týden)';

  @override
  String get settings_wear_os_header => 'Aplikace Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Nainstalujte si dlaždici a komplikaci Bloomi do hodinek Wear OS a podívejte se na kalorie, vodu a kroky.';

  @override
  String get settings_widgets_header => 'Interaktivní widgety pro Android';

  @override
  String get settings_widgets_desc =>
      'Připněte si widgety v reálném čase na domovskou obrazovku zařízení pro okamžité aktualizace.';

  @override
  String get settings_about_header => 'O Bloomi';

  @override
  String get settings_about_version => 'Verze';

  @override
  String get settings_about_build => 'Postavte 100';

  @override
  String get settings_about_credits =>
      'Vyrobeno s péčí pro ohleduplný a zdravý život.';

  @override
  String get settings_terms_header => 'Smluvní podmínky';

  @override
  String get settings_privacy_header => 'Zásady ochrany osobních údajů';

  @override
  String get settings_delete_header => 'Smazat účet a data';

  @override
  String get settings_delete_warning =>
      'Tuto akci nelze vrátit zpět. Všechna vaše jídla, cvičení, životní funkce a profil budou trvale smazány.';

  @override
  String get settings_delete_confirm_btn => 'Trvale smazat';

  @override
  String get onboard_welcome_headline => 'Vítejte v Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Jemné a pozorné sledování zdraví navržené pro váš život.';

  @override
  String get onboard_step_about => 'O vás';

  @override
  String get onboard_step_goals => 'Vaše cíle';

  @override
  String get onboard_step_lifestyle => 'Denní návyky';

  @override
  String get onboard_step_permissions => 'Oprávnění';

  @override
  String get onboard_step_plan => 'Připraveno!';

  @override
  String get onboard_health_connect_perm => 'Přístup Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Snímač počítadla kroků';

  @override
  String get onboard_notif_perm => 'Všímavá připomenutí a upozornění';

  @override
  String get onboard_camera_perm =>
      'Fotoaparát (čtečka čárových kódů a potravin)';

  @override
  String get onboard_grant_permissions => 'Udělení oprávnění';

  @override
  String get onboard_continue_dashboard => 'Otevřete řídicí panel';

  @override
  String get notif_channel_hydration_name => 'Hydratační pošťuchování';

  @override
  String get notif_channel_hydration_desc =>
      'Jemné připomenutí vody po celý den';

  @override
  String get notif_channel_nutrition_name => 'Připomenutí jídla a výživy';

  @override
  String get notif_channel_nutrition_desc =>
      'Upozornění na připomenutí snídaně, oběda a večeře';

  @override
  String get notif_channel_steps_name => 'Krokové milníky';

  @override
  String get notif_channel_steps_desc => 'Oslavy při dosahování denních kroků';

  @override
  String get notif_channel_vitals_name => 'Zdravotní a vitální kontroly';

  @override
  String get notif_channel_vitals_desc => 'Připomenutí váhy a večerky';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Odložit o 15 m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Jazyk';

  @override
  String get share => 'Podíl';

  @override
  String common_days(Object count) {
    return 'před ${count}d';
  }
}
