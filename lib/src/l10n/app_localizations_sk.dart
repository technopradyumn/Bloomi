// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Domov';

  @override
  String get nav_today => 'Dnes';

  @override
  String get nav_plan => 'Plán';

  @override
  String get nav_food => 'Jedlo';

  @override
  String get nav_food_diary => 'Potravinový denník';

  @override
  String get nav_workout => 'Záznam o cvičení';

  @override
  String get nav_health => 'Zdravie';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Uložiť';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get delete => 'Odstrániť';

  @override
  String get edit => 'Upraviť';

  @override
  String get done => 'Hotovo';

  @override
  String get close => 'Zavrieť';

  @override
  String get back => 'Späť';

  @override
  String get next => 'Ďalej';

  @override
  String get continue_btn => 'Pokračovať';

  @override
  String get confirm => 'Potvrďte';

  @override
  String get search => 'Hľadať';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Všetky';

  @override
  String get active => 'Aktívne';

  @override
  String get today => 'Dnes';

  @override
  String get yesterday => 'včera';

  @override
  String get tomorrow => 'zajtra';

  @override
  String get add => 'Pridať';

  @override
  String get remove => 'Odstrániť';

  @override
  String get refresh => 'Obnoviť';

  @override
  String get retry => 'Skúste to znova';

  @override
  String get error => 'Chyba';

  @override
  String get success => 'Úspech';

  @override
  String get loading => 'Načítava sa...';

  @override
  String get no_data => 'Nie sú k dispozícii žiadne údaje';

  @override
  String get offline => 'Režim offline';

  @override
  String get offline_sub => 'Zmeny sa zosynchronizujú po opätovnom pripojení';

  @override
  String get undo => 'Vrátiť späť';

  @override
  String get portion => 'Porcia';

  @override
  String get quantity => 'Množstvo';

  @override
  String get unit => 'Jednotka';

  @override
  String get clear => 'Jasné';

  @override
  String get select => 'Vyberte';

  @override
  String get apply => 'Použiť';

  @override
  String get reset => 'Resetovať';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'áno';

  @override
  String get no => 'Nie';

  @override
  String get optional => 'Voliteľné';

  @override
  String get calories => 'Kalórie';

  @override
  String get protein => 'Proteín';

  @override
  String get carbs => 'Sacharidy';

  @override
  String get fat => 'Tuk';

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
  String get bpm => 'bpm';

  @override
  String get hours => 'hod';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Podávanie';

  @override
  String get servings => 'Porcie';

  @override
  String get serving_size => 'Veľkosť porcie';

  @override
  String get per_100g => 'na 100 g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Ázie';

  @override
  String get europe => 'Európe';

  @override
  String get middle_east => 'Stredný východ';

  @override
  String get africa => 'Afriky';

  @override
  String get americas => 'Ameriky';

  @override
  String get home_title => 'Domov';

  @override
  String get home_greeting_morning => 'Dobré ráno';

  @override
  String get home_greeting_afternoon => 'Dobré popoludnie';

  @override
  String get home_greeting_evening => 'Dobrý večer';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Séria $count dní',
      one: '1 denná séria',
      zero: 'séria 0 dní',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Spálený';

  @override
  String get home_calories_budget => 'Kalorický rozpočet';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Zostáva $kcal kcal';
  }

  @override
  String get home_water_title => 'Denná hydratácia';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Kráčal kroky';

  @override
  String get home_quick_actions => 'Rýchle akcie';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Prihlásiť cvičenie';

  @override
  String get home_log_weight => 'Hmotnosť denníka';

  @override
  String get home_insights_title => 'Dnešné postrehy';

  @override
  String get home_quote => 'Malé zdravé voľby vytvárajú kvitnúce premeny.';

  @override
  String get home_ai_coach_tip => 'Tréner Bloomi AI';

  @override
  String get home_surroundings => 'Okolie a vzduch';

  @override
  String get home_notifications => 'Upozornenia';

  @override
  String get home_daily_score => 'Denné wellness skóre';

  @override
  String get home_view_all => 'Zobraziť všetko';

  @override
  String get food_diary_title => 'Potravinový denník';

  @override
  String get food_breakfast => 'Raňajky';

  @override
  String get food_lunch => 'obed';

  @override
  String get food_dinner => 'Večera';

  @override
  String get food_snacks => 'Občerstvenie';

  @override
  String get food_add_food => 'Pridajte jedlo';

  @override
  String get food_edit_food => 'Upraviť jedlo';

  @override
  String get food_add_breakfast => 'Pridajte raňajky';

  @override
  String get food_add_lunch => 'Pridajte obed';

  @override
  String get food_add_dinner => 'Pridajte večeru';

  @override
  String get food_add_snack => 'Pridajte občerstvenie';

  @override
  String get food_total_calories => 'Celkový počet kalórií';

  @override
  String get food_empty_meal =>
      'Pre toto jedlo zatiaľ nie sú prihlásené žiadne potraviny';

  @override
  String get food_empty_diary => 'Na tento deň nie sú zaznamenané žiadne jedlá';

  @override
  String get food_log_first_meal =>
      'Klepnutím na + zaznamenáte svoje prvé chutné jedlo';

  @override
  String get food_quick_add => 'Rýchle pridanie';

  @override
  String get food_search_hint => 'Hľadaj jedlá, ovocie, dal, roti...';

  @override
  String get food_custom_recipe => 'Jedlo a recept na mieru';

  @override
  String get food_scan_barcode => 'Naskenujte čiarový kód';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Nedávne jedlá';

  @override
  String get food_favourites => 'Obľúbené';

  @override
  String get food_macro_summary => 'Rozdelenie makroživín';

  @override
  String get food_delete_meal_confirm =>
      'Naozaj chcete odstrániť túto položku?';

  @override
  String get food_item_deleted => 'Potravina bola odstránená';

  @override
  String get food_remaining => 'zostávajúce';

  @override
  String get food_consumed => 'spotrebované';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'Hľadať potraviny';

  @override
  String get foodSearch_scan_barcode => 'Naskenujte čiarový kód';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Vytvorte si vlastné jedlo';

  @override
  String get foodSearch_recent_searches => 'Nedávne vyhľadávania';

  @override
  String get foodSearch_popular => 'Populárne jedlá';

  @override
  String get foodSearch_no_results =>
      'Vášmu vyhľadávaniu nezodpovedajú žiadne potraviny';

  @override
  String get barcode_title => 'Skener čiarových kódov';

  @override
  String get barcode_align =>
      'Zarovnajte čiarový kód vo vnútri rámu fotoaparátu';

  @override
  String get barcode_not_found => 'Produkt sa nenašiel v databáze';

  @override
  String get barcode_premium_feature =>
      'Skenovanie čiarových kódov je dostupné s Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Vytvorte jasnú fotografiu svojho jedla';

  @override
  String get camera_analysing => 'Analyzuje sa tanier s jedlom...';

  @override
  String get camera_detected => 'Zistené položky';

  @override
  String get camera_flash => 'Prepnúť Flash';

  @override
  String get camera_retake => 'Znovu nasnímať fotografiu';

  @override
  String get camera_confirm_food => 'Potvrdiť položky';

  @override
  String get customFood_title => 'Jedlo a recept na mieru';

  @override
  String get customFood_name_hint => 'Názov jedla alebo zložky';

  @override
  String get customFood_calories_hint => 'Kalórie (kcal)';

  @override
  String get customFood_protein_hint => 'Bielkoviny (g)';

  @override
  String get customFood_carbs_hint => 'Sacharidy (g)';

  @override
  String get customFood_fat_hint => 'tuk (g)';

  @override
  String get customFood_save => 'Uložiť recept';

  @override
  String get water_tracker_title => 'Sledovač vody';

  @override
  String get water_daily_target => 'Denný cieľ hydratácie';

  @override
  String get water_logged_today => 'Prihlásené dnes';

  @override
  String get water_add_glass => '+250 ml sklo';

  @override
  String get water_add_bottle => '+500 ml fľaša';

  @override
  String get water_custom_amount => 'Vlastná suma';

  @override
  String get water_reminder_tip =>
      'Pite vodu pravidelne počas dňa pre stálu energiu.';

  @override
  String water_logged_toast(Object amount) {
    return 'Prihlásených $amount ml vody 💧';
  }

  @override
  String get workout_title => 'Záznam o cvičení';

  @override
  String get workout_add_exercise => 'Pridať cvičenie';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Pevnosť';

  @override
  String get workout_yoga => 'Joga a flexibilita';

  @override
  String get workout_duration => 'Trvanie';

  @override
  String get workout_intensity => 'Intenzita';

  @override
  String get workout_calories_burned => 'Spálené kalórie';

  @override
  String get workout_empty => 'Dnes nie sú zaznamenané žiadne tréningy';

  @override
  String get workout_save_success => 'Cvičenie bolo úspešne uložené!';

  @override
  String get workout_type => 'Typ tréningu';

  @override
  String get workout_notes => 'Poznámky a úvahy';

  @override
  String get health_overview_title => 'Health & Vitals';

  @override
  String get health_heart_rate => 'Srdcová frekvencia';

  @override
  String get health_blood_oxygen => 'Krvný kyslík (SpO2)';

  @override
  String get health_blood_pressure => 'Krvný tlak';

  @override
  String get health_blood_glucose => 'Glukóza v krvi';

  @override
  String get health_body_temperature => 'Telesná teplota';

  @override
  String get health_sleep_tracking => 'Sledovanie spánku';

  @override
  String get health_weight_tracking => 'Hmotnosť a zloženie tela';

  @override
  String get health_waist_hip => 'Pomer pásu k bokom';

  @override
  String get health_devices_hub =>
      'Zariadenia a centrum inteligentných hodiniek';

  @override
  String get health_sync_now => 'Synchronizovať údaje o zdraví';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Posledná synchronizácia: $time';
  }

  @override
  String get health_manual_entry => 'Manuálny zdravotný vstup';

  @override
  String get health_metric_detail => 'Podrobnosti o metrike';

  @override
  String get health_connected_sensors => 'Pripojené senzory zdravia';

  @override
  String get plan_title => 'Denný plán';

  @override
  String get plan_weekly_title => 'Týždenný wellness plán';

  @override
  String get plan_calorie_target => 'Kalorický cieľ';

  @override
  String get plan_water_target => 'Hydratačný cieľ';

  @override
  String get plan_step_target => 'Cieľ kroku';

  @override
  String get plan_sleep_target => 'Cieľ spánku';

  @override
  String get plan_meal_suggestions => 'Návrhy na stravovanie';

  @override
  String get plan_healthy_habits => 'Zdravé návyky a tipy';

  @override
  String get plan_coach_advice => 'Odporúčania Bloomi AI Coach';

  @override
  String get plan_generated_title => 'Personalizovaný denný rozvrh';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Upraviť profil';

  @override
  String get profile_name => 'Meno';

  @override
  String get profile_age => 'Vek';

  @override
  String get profile_gender => 'Pohlavie';

  @override
  String get profile_height => 'Výška';

  @override
  String get profile_weight => 'Hmotnosť';

  @override
  String get profile_goal => 'Primárny cieľ';

  @override
  String get profile_activity_level => 'Úroveň aktivity';

  @override
  String get profile_stats => 'Moje wellness štatistiky';

  @override
  String get profile_saved => 'Profil bol úspešne aktualizovaný';

  @override
  String get profile_bmi => 'Index telesnej hmotnosti (BMI)';

  @override
  String get profile_membership => 'členstvo';

  @override
  String get settings => 'Nastavenia';

  @override
  String get preferences_habits => 'PREFERENCIE A ZVYKY';

  @override
  String get appearance_theme => 'Vzhľad a motív';

  @override
  String get appearance_theme_sub =>
      'Tmavé, Svetlé, Systémový režim a Možnosti pozadia aplikácie';

  @override
  String get permissions => 'Povolenia a systémový prístup';

  @override
  String get permissions_sub =>
      'Health Connect, krokové senzory, GPS, upozornenia a kamera';

  @override
  String get reminders_notifications => 'Pripomienky a upozornenia';

  @override
  String get reminders_sub =>
      'Časy jedla, voda, kontrola hmotnosti a pripomienky pred spaním';

  @override
  String get units_of_measurement => 'Jednotky merania';

  @override
  String get units_sub =>
      'Metrické (kg, cm, ml, km) alebo imperiálne (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Jazyk aplikácie';

  @override
  String get language_sub =>
      'angličtina, हिन्दी (hindčina), hinglish a viac ako 195 svetových jazykov';

  @override
  String get home_screen_widgets => 'Widgety domovskej obrazovky';

  @override
  String get widgets_sub =>
      'Živé miniaplikácie pre Android: Hub, Kroky, Voda, Výživa a Maskot';

  @override
  String get wear_os_watch_app => 'Aplikácia Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Spoločník inteligentných hodiniek, dlaždice, komplikácie a živé životy';

  @override
  String get goals_wellness => 'CIELE A POHĽADY NA WELLNESS';

  @override
  String get nutrition_targets => 'Výživové ciele a makro rozdelenie';

  @override
  String get nutrition_targets_sub =>
      'Cieľ kalórií, bielkovín, sacharidov, tukov a vody';

  @override
  String get weekly_recap => 'Týždenná rekapitulácia wellness';

  @override
  String get weekly_recap_sub =>
      '7-dňový priemer kalórií, makro pomer a najlepší deň';

  @override
  String get streaks_milestones => 'Pruhy a míľniky';

  @override
  String get streaks_sub => 'Aktívne pruhy kvetov, odznaky a úspechy';

  @override
  String get connected_devices => 'PRIPOJENÉ ZARIADENIA A EKOSYSTÉM';

  @override
  String get devices_hub => 'Zariadenia a centrum inteligentných hodiniek';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Okolie a počasie';

  @override
  String get surroundings_sub =>
      'Kvalita vzduchu (AQI), UV index a tipy na hydratáciu počas počasia';

  @override
  String get bloomi_pro => 'Predplatné Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 miniaplikácií na domovskej obrazovke a sledovanie životných funkcií';

  @override
  String get about_security => 'O A BEZPEČNOSŤ';

  @override
  String get about_bloomi => 'O Bloomi';

  @override
  String get about_bloomi_sub => 'Špecifikácie zostavy, verzia, atribúty';

  @override
  String get privacy_policy => 'Zásady ochrany osobných údajov';

  @override
  String get privacy_policy_sub =>
      'Dátová architektúra v režime offline najskôr na zariadení';

  @override
  String get terms_conditions => 'Zmluvné podmienky';

  @override
  String get terms_conditions_sub => 'Zmluvné podmienky a pokyny pre wellness';

  @override
  String get delete_account => 'Odstrániť účet a údaje';

  @override
  String get delete_account_sub =>
      'Nenávratne vymažte miestne dáta SQLite a zálohy v cloude';

  @override
  String get healthy_habits => 'Vybudujte si jemné a trvalé wellness návyky';

  @override
  String get all_logs => 'Moje sledované údaje a denníky';

  @override
  String get search_language => 'Hľadať podľa jazyka alebo pôvodného písma...';

  @override
  String get languages_available => 'Dostupné jazyky';

  @override
  String get no_matching_languages => 'Nenašli sa žiadne zodpovedajúce jazyky';

  @override
  String get try_searching =>
      'Skúste hľadať podľa pôvodného písma alebo anglického pravopisu';

  @override
  String get partially_translated => 'Čiastočne preložené';

  @override
  String get complete_translation => 'Dokončiť';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Jazyk nastavený na $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Okolie a prostredie';

  @override
  String get surroundings_aqi => 'Index kvality ovzdušia';

  @override
  String get surroundings_uv => 'UV index';

  @override
  String get surroundings_temp => 'Teplota';

  @override
  String get surroundings_humidity => 'Vlhkosť';

  @override
  String get surroundings_hydration_advice =>
      'Zostaňte dobre hydratovaní v aktuálnych poveternostných podmienkach.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Hľadať jedlo';

  @override
  String get food_quick_barcode => 'Naskenujte čiarový kód 👑';

  @override
  String get food_quick_water => 'Pridajte vodu';

  @override
  String get food_quick_custom => 'Jedlo na mieru';

  @override
  String get surroundings_good => 'Dobre';

  @override
  String get surroundings_moderate => 'Mierne';

  @override
  String get surroundings_unhealthy => 'Nezdravé';

  @override
  String get notifications_title => 'Upozornenia a upozornenia';

  @override
  String get notifications_empty => 'Žiadne nové upozornenia';

  @override
  String get notifications_mark_read => 'Označiť všetko ako prečítané';

  @override
  String get notifications_clear => 'Vymazať všetko';

  @override
  String get reminders => 'Nastavenia pripomenutia';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Pripomenutie raňajok 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Dobré ráno! Čas na výživné raňajky o $time .';
  }

  @override
  String get reminders_lunch_title => 'Pripomenutie obeda 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Zastavte sa a vychutnajte si vyvážený a pozorný obed o $time .';
  }

  @override
  String get reminders_dinner_title => 'Pripomienka na večeru 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Čas na ľahkú a uspokojivú večeru o $time .';
  }

  @override
  String get reminders_water_title => 'Hydratačný Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Čas vypiť pohár čerstvej vody! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Týždenné váženie ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Sledujte svoje týždenné telesné metriky na Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Večierka pred spaním 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Uvoľnite sa a pripravte sa na pokojný spánok ( $time ).';
  }

  @override
  String get onboard_welcome => 'Vitajte v Bloomi';

  @override
  String get onboard_sub =>
      'Váš priateľský, offline prvý spoločník v oblasti zdravia a výživy.';

  @override
  String get onboard_get_started => 'Začíname';

  @override
  String get onboard_sign_in => 'Prihlásiť sa';

  @override
  String get onboard_skip => 'Preskočiť';

  @override
  String get onboard_choose_goal => 'Aký je váš primárny wellness cieľ?';

  @override
  String get onboard_goal_weight_loss => 'Jemné chudnutie';

  @override
  String get onboard_goal_muscle => 'Svalový prírastok a sila';

  @override
  String get onboard_goal_energy => 'Denná energia a vitalita';

  @override
  String get onboard_goal_habits => 'Zdravé vedomé stravovanie';

  @override
  String get onboard_about_you => 'Povedzte nám o sebe';

  @override
  String get onboard_lifestyle => 'Vaša denná rutina';

  @override
  String get onboard_permissions_title => 'Povolenia a systémový prístup';

  @override
  String get onboard_permissions_sub =>
      'Udeľte prístup k synchronizovaným krokom, cvičeniam a pripomienkam.';

  @override
  String get onboard_plan_ready_title => 'Váš vlastný plán je pripravený!';

  @override
  String get onboard_plan_ready_sub =>
      'Práve pre vás sme vytvorili jemný, personalizovaný plán výživy a wellness.';

  @override
  String get onboard_enter_bloomi => 'Vstúpte do Bloomi';

  @override
  String get insights_weekly_report => 'Týždenná rekapitulácia wellness';

  @override
  String insights_best_day(Object day) {
    return 'Deň najlepšej konzistencie: $day';
  }

  @override
  String get insights_streaks_badges => 'Pruhy a míľniky';

  @override
  String insights_unlocked_on(Object date) {
    return 'Odomknuté na $date';
  }

  @override
  String get insights_keep_going => 'Pokračujte vo fantastickom pokroku!';

  @override
  String get widgets_title => 'Widgety domovskej obrazovky';

  @override
  String widgets_active_count(Object count) {
    return 'Aktívne miniaplikácie: $count';
  }

  @override
  String get widgets_hub_title => 'Wellness centrum Bloomi';

  @override
  String get widgets_steps_title => 'Kroky a aktívny krúžok';

  @override
  String get widgets_water_title => 'Rýchly záznam hydratácie';

  @override
  String get widgets_mascot_title => 'Spoločník maskota Bloomi';

  @override
  String get wear_os_title => 'Inteligentné hodinky Wear OS';

  @override
  String get wear_os_connected => 'Pripojené k hodinkám';

  @override
  String get wear_os_sync => 'Synchronizácia údajov hodiniek';

  @override
  String get theme_title => 'Vzhľad a motív';

  @override
  String get theme_mode => 'Režim témy';

  @override
  String get theme_light => 'Svetlo';

  @override
  String get theme_dark => 'Tmavý';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Paleta pozadia';

  @override
  String get units_title => 'Jednotky merania';

  @override
  String get units_metric => 'Metrické (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nie je možné načítať informačný panel';

  @override
  String get home_health_permission_req =>
      'Vyžaduje sa povolenie Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi vyžaduje povolenie Health Connect na ťahanie skutočných krokov, srdcovej frekvencie a synchronizáciu miniaplikácií mobilného domu v reálnom čase.';

  @override
  String get home_allow_health => 'Povoliť Health Connect';

  @override
  String get home_ready_mindful_day => 'Pripravený na deň plný pozornosti? ✨';

  @override
  String get home_quick_add => 'Rýchle pridanie';

  @override
  String get home_live_gps => 'Živé GPS';

  @override
  String get home_calories_remaining_label => 'ZOSTÁVAJÚCE KALÓRIE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Zjedené: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Klepnite na Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Dosiahnutý denný cieľ 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml do denného cieľa';
  }

  @override
  String get home_details => 'Podrobnosti';

  @override
  String get home_upgrade_plan_desc =>
      'Inovujte a odomknite prispôsobené denné ciele a plán AI';

  @override
  String get home_unlock => 'Odomknite 👑';

  @override
  String get home_quick_log_hint => 'Rýchlo zaznamenajte vstup do wellness';

  @override
  String get food_serving_size => 'Veľkosť porcie';

  @override
  String get food_serving_grams => 'Porcia (g)';

  @override
  String get food_number_servings => 'Počet porcií';

  @override
  String get food_calories_per_serving => 'Kalórie na porciu';

  @override
  String get food_recipe_ingredients => 'Ingrediencie';

  @override
  String get food_recipe_add_ingredient => 'Pridajte prísadu';

  @override
  String get food_recipe_directions => 'Pokyny a poznámky';

  @override
  String get food_recipe_total => 'Celková výživa podľa receptov';

  @override
  String get food_recipe_per_serving => 'Výživa na jednu porciu';

  @override
  String get food_recipe_saved_toast => 'Vlastné jedlo bolo úspešne uložené!';

  @override
  String get food_barcode_found => 'Produkt sa našiel!';

  @override
  String get food_barcode_not_found_desc =>
      'Tento čiarový kód sa nám nepodarilo nájsť v otvorenej databáze. Môžete ho pridať ako vlastné jedlo.';

  @override
  String get food_add_custom_btn => 'Pridať vlastné jedlo';

  @override
  String get food_scan_again => 'Skenovať znova';

  @override
  String get food_review_items => 'Skontrolujte zistené potraviny';

  @override
  String get food_review_hint =>
      'Upravte množstvá alebo odstráňte akúkoľvek nerozpoznanú položku';

  @override
  String get food_log_selected => 'Zaznamenať vybrané jedlá';

  @override
  String get food_favourites_title => 'Obľúbené jedlá';

  @override
  String get food_recent_title => 'Nedávne jedlá';

  @override
  String get food_no_favourites =>
      'Zatiaľ žiadne obľúbené jedlá. Klepnutím na srdce na akékoľvek jedlo, ktoré tu uložíte.';

  @override
  String get food_no_recents =>
      'Nenašli sa žiadne nedávno prihlásené potraviny.';

  @override
  String get food_nutrition_details_title => 'Podrobnosti o dennej výžive';

  @override
  String get food_macro_protein_label => 'Odbúravanie bielkovín';

  @override
  String get food_macro_carbs_label => 'Rozdelenie sacharidov';

  @override
  String get food_macro_fat_label => 'Rozdelenie tuku';

  @override
  String get food_macro_fiber_label => 'Rozpad vlákien';

  @override
  String get food_daily_target_comparison => 'Cieľové porovnanie';

  @override
  String food_target_label(Object target) {
    return 'Cieľ: $target';
  }

  @override
  String get food_edit_entry => 'Upraviť záznam v denníku';

  @override
  String get food_delete_entry => 'Odstrániť položku';

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
  String get water_intake_history => 'Dnešné denníky vody';

  @override
  String get water_no_logs_today =>
      'Dnes ešte nie je prihlásená žiadna voda. Hydratujte a klepnite na tlačidlo rýchleho pridania!';

  @override
  String get water_adjust_goal => 'Upraviť denný cieľ';

  @override
  String get health_connect_banner => 'Pripojené k aplikácii Health Connect';

  @override
  String get health_vitals_summary => 'Denné zdravie Vitals';

  @override
  String get health_latest_heart_rate => 'Najnovšia srdcová frekvencia';

  @override
  String get health_latest_bp => 'Krvný tlak';

  @override
  String get health_latest_spo2 => 'Krvný kyslík';

  @override
  String get health_latest_glucose => 'Glukóza v krvi';

  @override
  String get health_latest_weight => 'Hmotnosť';

  @override
  String get health_latest_sleep => 'Trvanie spánku';

  @override
  String get health_add_manual => 'Pridajte manuálne meranie';

  @override
  String get health_history_trends => 'Historické trendy';

  @override
  String get health_sync_success =>
      'Zdravotné údaje boli úspešne synchronizované!';

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
    return '$bpm tepov/min';
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
  String get health_devices_title =>
      'Pripojené zariadenia a nositeľné zariadenia';

  @override
  String get health_devices_desc =>
      'Spravujte spárované inteligentné hodinky, fitness trackery a senzory zdravia.';

  @override
  String get health_workout_editor_title => 'Upraviť cvičenie';

  @override
  String get health_workout_name_label => 'Názov tréningu';

  @override
  String get health_workout_duration_label => 'Trvanie (minúty)';

  @override
  String get health_workout_calories_label => 'Odhadované kalórie (kcal)';

  @override
  String get health_workout_date_label => 'Dátum a čas';

  @override
  String get plan_daily_wellness_roadmap => 'Váš personalizovaný plán';

  @override
  String get plan_morning_routine => 'Ranná rutina';

  @override
  String get plan_afternoon_routine => 'Poludňajšie wellness';

  @override
  String get plan_evening_routine => 'Večerné vetranie';

  @override
  String get plan_coach_badge => 'Tréner Bloomi AI';

  @override
  String get plan_weekly_overview => '7-dňové wellness zameranie';

  @override
  String get plan_targets_title => 'Wellness ciele a ciele';

  @override
  String get plan_calorie_budget_label => 'Denný rozpočet na kalórie';

  @override
  String get plan_water_budget_label => 'Denný vodný cieľ';

  @override
  String get plan_step_budget_label => 'Denný cieľ krokov';

  @override
  String get plan_macro_split_label => 'Pomer makronutrientov';

  @override
  String get profile_personal_details => 'Osobné údaje';

  @override
  String get profile_body_stats => 'Merania tela';

  @override
  String get profile_app_preferences => 'Predvoľby a nastavenia aplikácie';

  @override
  String get profile_edit_name_hint => 'Vaše meno';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Výška ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Hmotnosť ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Vek';

  @override
  String get profile_gender_male => 'Mužský';

  @override
  String get profile_gender_female => 'Žena';

  @override
  String get profile_gender_other => 'Iné / radšej nehovor';

  @override
  String get profile_activity_sedentary => 'Sedavý (málo až žiadne cvičenie)';

  @override
  String get profile_activity_light => 'Mierne aktívny (1-3 dni/týždeň)';

  @override
  String get profile_activity_moderate => 'Stredne aktívny (3-5 dní/týždeň)';

  @override
  String get profile_activity_very => 'Veľmi aktívny (6-7 dní/týždeň)';

  @override
  String get settings_wear_os_header => 'Aplikácia Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Nainštalujte si dlaždicu Bloomi a komplikáciu na hodinky Wear OS, aby ste sa mohli pozrieť na kalórie, vodu a kroky.';

  @override
  String get settings_widgets_header =>
      'Interaktívne miniaplikácie pre Android';

  @override
  String get settings_widgets_desc =>
      'Pripnite si miniaplikácie v reálnom čase na domovskú obrazovku zariadenia a získajte okamžité aktualizácie.';

  @override
  String get settings_about_header => 'O Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Postavte 100';

  @override
  String get settings_about_credits =>
      'Vyrobené so starostlivosťou o rozumný a zdravý život.';

  @override
  String get settings_terms_header => 'Zmluvné podmienky';

  @override
  String get settings_privacy_header => 'Zásady ochrany osobných údajov';

  @override
  String get settings_delete_header => 'Odstrániť účet a údaje';

  @override
  String get settings_delete_warning =>
      'Túto akciu nie je možné vrátiť späť. Všetky vaše jedlá, tréningy, životné funkcie a profil budú natrvalo odstránené.';

  @override
  String get settings_delete_confirm_btn => 'Natrvalo odstrániť';

  @override
  String get onboard_welcome_headline => 'Vitajte v Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Jemné a pozorné sledovanie zdravia navrhnuté pre váš život.';

  @override
  String get onboard_step_about => 'O Tebe';

  @override
  String get onboard_step_goals => 'Vaše ciele';

  @override
  String get onboard_step_lifestyle => 'Denné návyky';

  @override
  String get onboard_step_permissions => 'Povolenia';

  @override
  String get onboard_step_plan => 'Pripravený!';

  @override
  String get onboard_health_connect_perm => 'Prístup k Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Snímač počítadla krokov';

  @override
  String get onboard_notif_perm => 'Pozorné pripomienky a upozornenia';

  @override
  String get onboard_camera_perm =>
      'Fotoaparát (snímač čiarových kódov a potravín)';

  @override
  String get onboard_grant_permissions => 'Udeliť povolenia';

  @override
  String get onboard_continue_dashboard => 'Otvorte informačný panel';

  @override
  String get notif_channel_hydration_name => 'Hydratačné krémy';

  @override
  String get notif_channel_hydration_desc =>
      'Jemné pripomenutie vody počas dňa';

  @override
  String get notif_channel_nutrition_name => 'Pripomenutie jedla a výživy';

  @override
  String get notif_channel_nutrition_desc =>
      'Upozornenia na pripomenutie raňajok, obeda a večere';

  @override
  String get notif_channel_steps_name => 'Krokové míľniky';

  @override
  String get notif_channel_steps_desc =>
      'Oslavy pri dosahovaní denných cieľových krokov';

  @override
  String get notif_channel_vitals_name => 'Zdravotné a vitálne kontroly';

  @override
  String get notif_channel_vitals_desc =>
      'Pripomenutia hmotnosti a večerného spánku';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Odložiť o 15 m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Jazyk';

  @override
  String get share => 'zdieľať';

  @override
  String common_days(Object count) {
    return 'pred $count d';
  }
}
