// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get app_name => 'Bloom';

  @override
  String get nav_home => 'Otthon';

  @override
  String get nav_today => 'Ma';

  @override
  String get nav_plan => 'Terv';

  @override
  String get nav_food => 'Élelmiszer';

  @override
  String get nav_food_diary => 'Élelmiszernapló';

  @override
  String get nav_workout => 'Edzésnapló';

  @override
  String get nav_health => 'Egészség';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Mentés';

  @override
  String get cancel => 'Mégse';

  @override
  String get delete => 'Törölje';

  @override
  String get edit => 'Szerkesztés';

  @override
  String get done => 'Kész';

  @override
  String get close => 'Bezárás';

  @override
  String get back => 'Vissza';

  @override
  String get next => 'Következő';

  @override
  String get continue_btn => 'Folytatás';

  @override
  String get confirm => 'Erősítse meg';

  @override
  String get search => 'Keresés';

  @override
  String get filter => 'Szűrés';

  @override
  String get all => 'Mind';

  @override
  String get active => 'Aktív';

  @override
  String get today => 'Ma';

  @override
  String get yesterday => 'tegnap';

  @override
  String get tomorrow => 'Holnap';

  @override
  String get add => 'Hozzáadás';

  @override
  String get remove => 'Távolítsa el';

  @override
  String get refresh => 'Frissítés';

  @override
  String get retry => 'Próbálja újra';

  @override
  String get error => 'Hiba';

  @override
  String get success => 'Siker';

  @override
  String get loading => 'Betöltés...';

  @override
  String get no_data => 'Nincs adat';

  @override
  String get offline => 'Offline mód';

  @override
  String get offline_sub =>
      'A módosítások szinkronizálódnak az újracsatlakozás után';

  @override
  String get undo => 'Visszavonás';

  @override
  String get portion => 'adag';

  @override
  String get quantity => 'Mennyiség';

  @override
  String get unit => 'Egység';

  @override
  String get clear => 'Világos';

  @override
  String get select => 'Válassza ki';

  @override
  String get apply => 'Alkalmazni';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Igen';

  @override
  String get no => 'Nem';

  @override
  String get optional => 'Nem kötelező';

  @override
  String get calories => 'Kalória';

  @override
  String get protein => 'Fehérje';

  @override
  String get carbs => 'szénhidrát';

  @override
  String get fat => 'Kövér';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Water';

  @override
  String get steps => 'Lépések';

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
  String get inches => 'be';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'perc';

  @override
  String get serving => 'Serving';

  @override
  String get servings => 'Servings';

  @override
  String get serving_size => 'Serving Size';

  @override
  String get per_100g => 'per 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Európa';

  @override
  String get middle_east => 'Közel-Kelet';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Otthon';

  @override
  String get home_greeting_morning => 'Good Morning';

  @override
  String get home_greeting_afternoon => 'Good Afternoon';

  @override
  String get home_greeting_evening => 'Jó estét!';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count napos sorozat',
      one: '1 napos sorozat',
      zero: '0 napos sorozat',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Leégett';

  @override
  String get home_calories_budget => 'Kalória költségvetés';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal maradt';
  }

  @override
  String get home_water_title => 'Daily Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Lépések sétáltak';

  @override
  String get home_quick_actions => 'Gyors műveletek';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Víz';

  @override
  String get home_log_workout => 'Napló edzés';

  @override
  String get home_log_weight => 'Napló súlya';

  @override
  String get home_insights_title => 'Mai betekintések';

  @override
  String get home_quote =>
      'A kis egészséges választások virágzó átalakulásokat hoznak létre.';

  @override
  String get home_ai_coach_tip => 'Bloom AI edző';

  @override
  String get home_surroundings => 'Környezet és levegő';

  @override
  String get home_notifications => 'Értesítések';

  @override
  String get home_daily_score => 'Napi Wellness Score';

  @override
  String get home_view_all => 'Összes megtekintése';

  @override
  String get food_diary_title => 'Élelmiszernapló';

  @override
  String get food_breakfast => 'Reggeli';

  @override
  String get food_lunch => 'Lunch';

  @override
  String get food_dinner => 'Vacsora';

  @override
  String get food_snacks => 'Snackek';

  @override
  String get food_add_food => 'Add Food';

  @override
  String get food_edit_food => 'Edit Food';

  @override
  String get food_add_breakfast => 'Add Breakfast';

  @override
  String get food_add_lunch => 'Add Lunch';

  @override
  String get food_add_dinner => 'Add Dinner';

  @override
  String get food_add_snack => 'Add Snack';

  @override
  String get food_total_calories => 'Total Calories';

  @override
  String get food_empty_meal =>
      'Ehhez az étkezéshez még nincsenek regisztrálva élelmiszerek';

  @override
  String get food_empty_diary => 'Erre a napra nincs naplózott étkezés';

  @override
  String get food_log_first_meal =>
      'Érintse meg a + gombot az első ízletes étkezés naplózásához';

  @override
  String get food_quick_add => 'Gyors hozzáadás';

  @override
  String get food_search_hint => 'Keresés ételek, gyümölcsök, dal, roti...';

  @override
  String get food_custom_recipe => 'Egyedi ételek és receptek';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Legutóbbi ételek';

  @override
  String get food_favourites => 'Kedvencek';

  @override
  String get food_macro_summary => 'Makrotápanyagok lebontása';

  @override
  String get food_delete_meal_confirm => 'Biztosan eltávolítja ezt az elemet?';

  @override
  String get food_item_deleted => 'Élelmiszer eltávolítva';

  @override
  String get food_remaining => 'megmaradt';

  @override
  String get food_consumed => 'elfogyasztott';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'Search Foods';

  @override
  String get foodSearch_scan_barcode => 'Vonalkód beolvasása';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Készítsen egyedi ételeket';

  @override
  String get foodSearch_recent_searches => 'Legutóbbi keresések';

  @override
  String get foodSearch_popular => 'Népszerű ételek';

  @override
  String get foodSearch_no_results => 'Nincs a keresésnek megfelelő élelmiszer';

  @override
  String get barcode_title => 'Vonalkód olvasó';

  @override
  String get barcode_align => 'Igazítsa a vonalkódot a kamera keretébe';

  @override
  String get barcode_not_found => 'A termék nem található az adatbázisban';

  @override
  String get barcode_premium_feature =>
      'A vonalkód szkennelés a Bloom Pro segítségével érhető el';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Készítsen tiszta fényképet az ételről';

  @override
  String get camera_analysing => 'Ételtányér elemzése...';

  @override
  String get camera_detected => 'Észlelt elemek';

  @override
  String get camera_flash => 'Flash váltás';

  @override
  String get camera_retake => 'Fotó újrafelvétele';

  @override
  String get camera_confirm_food => 'Erősítse meg az elemeket';

  @override
  String get customFood_title => 'Egyedi ételek és receptek';

  @override
  String get customFood_name_hint => 'Étel vagy összetevő neve';

  @override
  String get customFood_calories_hint => 'Kalória (kcal)';

  @override
  String get customFood_protein_hint => 'fehérje (g)';

  @override
  String get customFood_carbs_hint => 'szénhidrát (g)';

  @override
  String get customFood_fat_hint => 'zsír (g)';

  @override
  String get customFood_save => 'Recept mentése';

  @override
  String get water_tracker_title => 'Vízkövető';

  @override
  String get water_daily_target => 'Napi hidratálási cél';

  @override
  String get water_logged_today => 'Naplózott ma';

  @override
  String get water_add_glass => '+250 ml Üveg';

  @override
  String get water_add_bottle => '+500 ml-es palack';

  @override
  String get water_custom_amount => 'Egyéni összeg';

  @override
  String get water_reminder_tip =>
      'Drink water regularly throughout the day for steady energy.';

  @override
  String water_logged_toast(Object amount) {
    return 'Naplózott $amount ml víz 💧';
  }

  @override
  String get workout_title => 'Edzésnapló';

  @override
  String get workout_add_exercise => 'Edzés hozzáadása';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Erő';

  @override
  String get workout_yoga => 'Jóga és rugalmasság';

  @override
  String get workout_duration => 'Időtartam';

  @override
  String get workout_intensity => 'Intenzitás';

  @override
  String get workout_calories_burned => 'Elégetett kalóriák';

  @override
  String get workout_empty => 'Ma nincs edzés';

  @override
  String get workout_save_success => 'Az edzés sikeresen mentve!';

  @override
  String get workout_type => 'Edzés típusa';

  @override
  String get workout_notes => 'Jegyzetek és elmélkedések';

  @override
  String get health_overview_title => 'Egészség és Vitals';

  @override
  String get health_heart_rate => 'Pulzusszám';

  @override
  String get health_blood_oxygen => 'Vér oxigén (SpO2)';

  @override
  String get health_blood_pressure => 'Vérnyomás';

  @override
  String get health_blood_glucose => 'Vércukor';

  @override
  String get health_body_temperature => 'Testhőmérséklet';

  @override
  String get health_sleep_tracking => 'Alváskövetés';

  @override
  String get health_weight_tracking => 'Súly és testösszetétel';

  @override
  String get health_waist_hip => 'Derék-csípő arány';

  @override
  String get health_devices_hub => 'Eszközök és Smartwatch Hub';

  @override
  String get health_sync_now => 'Egészségügyi adatok szinkronizálása';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Utolsó szinkronizálás: $time';
  }

  @override
  String get health_manual_entry => 'Kézi egészségügyi bejegyzés';

  @override
  String get health_metric_detail => 'Metrika részletei';

  @override
  String get health_connected_sensors =>
      'Csatlakoztatott egészségügyi érzékelők';

  @override
  String get plan_title => 'Napi terv';

  @override
  String get plan_weekly_title => 'Heti Wellness terv';

  @override
  String get plan_calorie_target => 'Kalóriacél';

  @override
  String get plan_water_target => 'Hidratációs cél';

  @override
  String get plan_step_target => 'Step Target';

  @override
  String get plan_sleep_target => 'Alváscél';

  @override
  String get plan_meal_suggestions => 'Étkezési javaslatok';

  @override
  String get plan_healthy_habits => 'Egészséges szokások és tippek';

  @override
  String get plan_coach_advice => 'Bloom AI Coach ajánlásai';

  @override
  String get plan_generated_title => 'Személyre szabott napirend';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profil szerkesztése';

  @override
  String get profile_name => 'Név';

  @override
  String get profile_age => 'Életkor';

  @override
  String get profile_gender => 'Nem';

  @override
  String get profile_height => 'Magasság';

  @override
  String get profile_weight => 'Súly';

  @override
  String get profile_goal => 'Elsődleges cél';

  @override
  String get profile_activity_level => 'Tevékenységi szint';

  @override
  String get profile_stats => 'Saját Wellness Statisztika';

  @override
  String get profile_saved => 'A profil sikeresen frissítve';

  @override
  String get profile_bmi => 'Testtömeg-index (BMI)';

  @override
  String get profile_membership => 'Tagság';

  @override
  String get settings => 'Beállítások elemre';

  @override
  String get preferences_habits => 'BEÁLLÍTÁSOK ÉS SZOKÁSOK';

  @override
  String get appearance_theme => 'Megjelenés és téma';

  @override
  String get appearance_theme_sub =>
      'Sötét, világos, rendszermód és alkalmazás háttérbeállítások';

  @override
  String get permissions => 'Engedélyek és rendszerhozzáférés';

  @override
  String get permissions_sub =>
      'Health Connect, lépésérzékelők, GPS, értesítések és kamera';

  @override
  String get reminders_notifications => 'Emlékeztetők és értesítések';

  @override
  String get reminders_sub =>
      'Étkezési idők, víz, súlyellenőrzés és lefekvés emlékeztetők';

  @override
  String get units_of_measurement => 'Mértékegységek';

  @override
  String get units_sub =>
      'Metrikus (kg, cm, ml, km) vagy angolszász (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Alkalmazás nyelve';

  @override
  String get language_sub =>
      'angol, हिन्दी (hindi), hinglish és 195+ globális nyelv';

  @override
  String get home_screen_widgets => 'Kezdőképernyő widgetek';

  @override
  String get widgets_sub =>
      'Élő Android widgetek: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Okosóra társ, csempék, komplikációk és élő létfontosságú adatok';

  @override
  String get goals_wellness => 'CÉLKITŰZÉSEK ÉS JÓLÉTI BETEKINTÉS';

  @override
  String get nutrition_targets => 'Táplálkozási célok és makromegosztás';

  @override
  String get nutrition_targets_sub =>
      'Kalóriacél, fehérje, szénhidrát, zsír és víz cél';

  @override
  String get weekly_recap => 'Heti Wellness Összefoglaló';

  @override
  String get weekly_recap_sub =>
      '7 napos kalóriaátlag, makroarány és a legjobb nap';

  @override
  String get streaks_milestones => 'Csíkok és mérföldkövek';

  @override
  String get streaks_sub => 'Aktív virágcsíkok, jelvények és eredmények';

  @override
  String get connected_devices => 'CSATLAKOZTATOTT ESZKÖZÖK ÉS ÖKOSZISTÉMA';

  @override
  String get devices_hub => 'Eszközök és Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Környék és időjárás';

  @override
  String get surroundings_sub =>
      'Levegőminőség (AQI), UV-index és időjárási hidratálási tippek';

  @override
  String get bloomi_pro => 'Bloom Pro előfizetés';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 kezdőképernyő widget és életfontosságú nyomon követés';

  @override
  String get about_security => 'RÓLUNK ÉS BIZTONSÁG';

  @override
  String get about_bloomi => 'Bloomról';

  @override
  String get about_bloomi_sub =>
      'Építési specifikációk, verzió, hozzárendelések';

  @override
  String get privacy_policy => 'Adatvédelmi szabályzat';

  @override
  String get privacy_policy_sub =>
      'Offline-első, az eszközön lévő adatarchitektúra';

  @override
  String get terms_conditions => 'Általános Szerződési Feltételek';

  @override
  String get terms_conditions_sub =>
      'Szolgáltatási feltételek és wellness irányelvek';

  @override
  String get delete_account => 'Fiók és adatok törlése';

  @override
  String get delete_account_sub =>
      'Visszafordíthatatlanul törli a helyi SQLite-adatokat és a felhőalapú biztonsági másolatokat';

  @override
  String get healthy_habits => 'Gyengéd, tartós wellness szokások kialakítása';

  @override
  String get all_logs => 'Saját nyomon követett adatok és naplók';

  @override
  String get search_language => 'Keresés nyelv vagy natív írásmód szerint...';

  @override
  String get languages_available => 'Elérhető nyelvek';

  @override
  String get no_matching_languages => 'Nem található megfelelő nyelv';

  @override
  String get try_searching =>
      'Próbáljon natív írásmód vagy angol helyesírás alapján keresni';

  @override
  String get partially_translated => 'Részben lefordítva';

  @override
  String get complete_translation => 'Teljes';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'A nyelv beállítása $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Környezet és környezet';

  @override
  String get surroundings_aqi => 'Levegőminőségi index';

  @override
  String get surroundings_uv => 'UV-index';

  @override
  String get surroundings_temp => 'Hőmérséklet';

  @override
  String get surroundings_humidity => 'Páratartalom';

  @override
  String get surroundings_hydration_advice =>
      'Maradjon jól hidratált a jelenlegi időjárási körülmények között.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Élelmiszer keresése';

  @override
  String get food_quick_barcode => 'Vonalkód beolvasása 👑';

  @override
  String get food_quick_water => 'Adjunk hozzá vizet';

  @override
  String get food_quick_custom => 'Egyedi ételek';

  @override
  String get surroundings_good => 'Jó';

  @override
  String get surroundings_moderate => 'Mérsékelt';

  @override
  String get surroundings_unhealthy => 'egészségtelen';

  @override
  String get notifications_title => 'Értesítések és figyelmeztetések';

  @override
  String get notifications_empty => 'Nincsenek új értesítések';

  @override
  String get notifications_mark_read => 'Az összes megjelölése olvasottként';

  @override
  String get notifications_clear => 'Összes törlése';

  @override
  String get reminders => 'Emlékeztető beállításai';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Reggeli emlékeztető 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Jó reggelt! Ideje egy tápláló reggelire itt: $time.';
  }

  @override
  String get reminders_lunch_title => 'Emlékeztető ebédre 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Álljon meg, és élvezze a kiegyensúlyozott, figyelmes ebédet itt: $time.';
  }

  @override
  String get reminders_dinner_title => 'Vacsora emlékeztető 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Itt az ideje egy könnyű, kielégítő vacsorának itt: $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ideje inni egy pohár friss vizet! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Heti mérlegelés ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Kövesse nyomon heti testmutatóit a Bloomon ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Lefekvés 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Lazítson és készüljön fel a pihentető alvásra ( $time ).';
  }

  @override
  String get onboard_welcome => 'Üdvözöljük Bloomban';

  @override
  String get onboard_sub =>
      'Barátságos, offline egészséggel és táplálkozással foglalkozó társad.';

  @override
  String get onboard_get_started => 'Kezdje el';

  @override
  String get onboard_sign_in => 'Jelentkezzen be';

  @override
  String get onboard_skip => 'Kihagyás';

  @override
  String get onboard_choose_goal => 'Mi az elsődleges wellness célja?';

  @override
  String get onboard_goal_weight_loss => 'Gyengéd fogyás';

  @override
  String get onboard_goal_muscle => 'Izomnövelés és erő';

  @override
  String get onboard_goal_energy => 'Napi energia és vitalitás';

  @override
  String get onboard_goal_habits => 'Egészséges tudatos táplálkozás';

  @override
  String get onboard_about_you => 'Meséljen nekünk magáról';

  @override
  String get onboard_lifestyle => 'Az Ön napi rutinja';

  @override
  String get onboard_permissions_title => 'Engedélyek és rendszerhozzáférés';

  @override
  String get onboard_permissions_sub =>
      'Hozzáférést biztosít a szinkronizálási lépésekhez, edzésekhez és emlékeztetőkhöz.';

  @override
  String get onboard_plan_ready_title => 'Egyedi terved készen áll!';

  @override
  String get onboard_plan_ready_sub =>
      'Kíméletes, személyre szabott táplálkozási és wellness ütemtervet készítettünk csak az Ön számára.';

  @override
  String get onboard_enter_bloomi => 'Lépj be Boomiba';

  @override
  String get insights_weekly_report => 'Heti Wellness Összefoglaló';

  @override
  String insights_best_day(Object day) {
    return 'A legjobb konzisztencia napja: $day';
  }

  @override
  String get insights_streaks_badges => 'Csíkok és mérföldkövek';

  @override
  String insights_unlocked_on(Object date) {
    return 'Feloldva ekkor: $date';
  }

  @override
  String get insights_keep_going => 'Folytasd a fantasztikus fejlődést!';

  @override
  String get widgets_title => 'Kezdőképernyő widgetek';

  @override
  String widgets_active_count(Object count) {
    return 'Aktív widgetek: $count';
  }

  @override
  String get widgets_hub_title => 'Bloom Wellness Hub';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Hidratálás gyorsnapló';

  @override
  String get widgets_mascot_title => 'Boomi Mascot Companion';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'Csatlakoztatva a Watchhoz';

  @override
  String get wear_os_sync => 'Óraadatok szinkronizálása';

  @override
  String get theme_title => 'Megjelenés és téma';

  @override
  String get theme_mode => 'Téma mód';

  @override
  String get theme_light => 'Fény';

  @override
  String get theme_dark => 'Sötét';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Háttér paletta';

  @override
  String get units_title => 'Mértékegységek';

  @override
  String get units_metric => 'Metrikus (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Nem sikerült betölteni az irányítópultot';

  @override
  String get home_health_permission_req => 'Health Connect engedély szükséges';

  @override
  String get home_health_permission_desc =>
      'A Bloomnak Health Connect engedélyre van szüksége a valós lépések, pulzusszám és a mobilház widgetek valós idejű szinkronizálásához.';

  @override
  String get home_allow_health => 'Health Connect engedélyezése';

  @override
  String get home_ready_mindful_day => 'Készen állsz egy figyelmes napra? ✨';

  @override
  String get home_quick_add => 'Gyors hozzáadás';

  @override
  String get home_live_gps => 'Élő GPS';

  @override
  String get home_calories_remaining_label => 'MARADÉK KALÓRIA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Elfogyasztott: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Csap a vízkövetéshez 💧';

  @override
  String get home_water_goal_reached => 'A napi cél elérve 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml a napi célig';
  }

  @override
  String get home_details => 'Részletek';

  @override
  String get home_upgrade_plan_desc =>
      'Frissítsen a személyre szabott napi célok és az AI-terv feloldásához';

  @override
  String get home_unlock => 'Feloldás 👑';

  @override
  String get home_quick_log_hint => 'Gyorsan rögzítsen egy wellness bejegyzést';

  @override
  String get food_serving_size => 'Tálalás mérete';

  @override
  String get food_serving_grams => 'Tálalás (g)';

  @override
  String get food_number_servings => 'Az adagok száma';

  @override
  String get food_calories_per_serving => 'Kalória adagonként';

  @override
  String get food_recipe_ingredients => 'Hozzávalók';

  @override
  String get food_recipe_add_ingredient => 'Adja hozzá az összetevőt';

  @override
  String get food_recipe_directions => 'Utasítások és megjegyzések';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Táplálkozás adagonként';

  @override
  String get food_recipe_saved_toast => 'Egyedi étel sikeresen mentve!';

  @override
  String get food_barcode_found => 'Terméket találtunk!';

  @override
  String get food_barcode_not_found_desc =>
      'Nem találtuk ezt a vonalkódot a nyitott adatbázisban. Hozzáadhatja egyedi ételként.';

  @override
  String get food_add_custom_btn => 'Adjon hozzá egyedi ételeket';

  @override
  String get food_scan_again => 'Scan Again';

  @override
  String get food_review_items => 'Tekintse át az észlelt élelmiszereket';

  @override
  String get food_review_hint =>
      'Módosítsa a mennyiséget, vagy távolítsa el a fel nem ismert tételeket';

  @override
  String get food_log_selected => 'Log Selected Foods';

  @override
  String get food_favourites_title => 'Kedvenc Ételek';

  @override
  String get food_recent_title => 'Legutóbbi ételek';

  @override
  String get food_no_favourites =>
      'Még nincsenek kedvenc ételei. Érintse meg szívét bármely ételre, hogy megmentse itt.';

  @override
  String get food_no_recents => 'Nem találhatók nemrég naplózott élelmiszerek.';

  @override
  String get food_nutrition_details_title => 'A napi táplálkozás részletei';

  @override
  String get food_macro_protein_label => 'A fehérje lebontása';

  @override
  String get food_macro_carbs_label => 'A szénhidrátok lebontása';

  @override
  String get food_macro_fat_label => 'Zsírbontás';

  @override
  String get food_macro_fiber_label => 'Fiber lebontás';

  @override
  String get food_daily_target_comparison => 'Célok összehasonlítása';

  @override
  String food_target_label(Object target) {
    return 'Cél: $target';
  }

  @override
  String get food_edit_entry => 'Naplóbejegyzés szerkesztése';

  @override
  String get food_delete_entry => 'Bejegyzés törlése';

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
    return '$current / $target ml';
  }

  @override
  String get water_intake_history => 'Mai víznaplók';

  @override
  String get water_no_logs_today =>
      'Ma még nincs víz. Hidratáljon, és koppintson a gyors hozzáadás gombra!';

  @override
  String get water_adjust_goal => 'Állítsa be a napi célt';

  @override
  String get health_connect_banner => 'Csatlakoztatva a Health Connecthez';

  @override
  String get health_vitals_summary => 'Napi Egészségügyi Vitals';

  @override
  String get health_latest_heart_rate => 'Legutóbbi pulzusszám';

  @override
  String get health_latest_bp => 'Vérnyomás';

  @override
  String get health_latest_spo2 => 'Vér oxigén';

  @override
  String get health_latest_glucose => 'Vércukor';

  @override
  String get health_latest_weight => 'Súly';

  @override
  String get health_latest_sleep => 'Az alvás időtartama';

  @override
  String get health_add_manual => 'Kézi mérés hozzáadása';

  @override
  String get health_history_trends => 'Történelmi trendek';

  @override
  String get health_sync_success =>
      'Az egészségügyi adatok sikeresen szinkronizálva!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours óra $mins perc';
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
    return '$systolic / $diastolic Hgmm';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dl';
  }

  @override
  String get health_devices_title =>
      'Csatlakoztatott eszközök és hordható eszközök';

  @override
  String get health_devices_desc =>
      'Kezelje a párosított okosórákat, fitneszkövetőket és egészségérzékelőket.';

  @override
  String get health_workout_editor_title => 'Edzés szerkesztése';

  @override
  String get health_workout_name_label => 'Edzés neve';

  @override
  String get health_workout_duration_label => 'Időtartam (perc)';

  @override
  String get health_workout_calories_label => 'Becsült kalória (kcal)';

  @override
  String get health_workout_date_label => 'Dátum és idő';

  @override
  String get plan_daily_wellness_roadmap => 'Az Ön személyre szabott ütemterve';

  @override
  String get plan_morning_routine => 'Reggeli rutin';

  @override
  String get plan_afternoon_routine => 'Déli Wellness';

  @override
  String get plan_evening_routine => 'Esti leállás';

  @override
  String get plan_coach_badge => 'Bloom AI edző';

  @override
  String get plan_weekly_overview => '7 napos wellness fókusz';

  @override
  String get plan_targets_title => 'Wellness célok és célok';

  @override
  String get plan_calorie_budget_label => 'Napi kalóriaköltségvetés';

  @override
  String get plan_water_budget_label => 'Napi vízcél';

  @override
  String get plan_step_budget_label => 'Napi lépéscél';

  @override
  String get plan_macro_split_label => 'Makrotápanyag arány';

  @override
  String get profile_personal_details => 'Személyes adatok';

  @override
  String get profile_body_stats => 'Testmérések';

  @override
  String get profile_app_preferences => 'Beállítások és alkalmazásbeállítások';

  @override
  String get profile_edit_name_hint => 'A te neved';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Magasság ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Súly ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Életkor';

  @override
  String get profile_gender_male => 'Férfi';

  @override
  String get profile_gender_female => 'Nő';

  @override
  String get profile_gender_other => 'Egyéb / Inkább nem mondom';

  @override
  String get profile_activity_sedentary =>
      'Ülő (keveset vagy egyáltalán nem mozog)';

  @override
  String get profile_activity_light => 'Enyhén aktív (1-3 nap/hét)';

  @override
  String get profile_activity_moderate => 'Közepesen aktív (3-5 nap/hét)';

  @override
  String get profile_activity_very => 'Nagyon aktív (6-7 nap/hét)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Telepítse a Boomi csempét és a szövődményt Wear OS órájára, hogy megnézze a kalóriákat, a vizet és a lépéseket.';

  @override
  String get settings_widgets_header => 'Interaktív Android widgetek';

  @override
  String get settings_widgets_desc =>
      'Rögzítse a valós idejű widgeteket eszköze kezdőképernyőjére az azonnali frissítésekhez.';

  @override
  String get settings_about_header => 'Bloomról';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Építsd 100-at';

  @override
  String get settings_about_credits =>
      'Gondosan elkészítve a tudatos, egészséges életmód érdekében.';

  @override
  String get settings_terms_header => 'Általános Szerződési Feltételek';

  @override
  String get settings_privacy_header => 'Adatvédelmi szabályzat';

  @override
  String get settings_delete_header => 'Fiók és adatok törlése';

  @override
  String get settings_delete_warning =>
      'Ez a művelet nem vonható vissza. Minden étkezésed, edzésed, életfontosságú adataid és profilod véglegesen törlődik.';

  @override
  String get settings_delete_confirm_btn => 'Végleges törlés';

  @override
  String get onboard_welcome_headline => 'Üdvözlünk Bloomban ✨';

  @override
  String get onboard_welcome_tagline =>
      'Gyengéd, figyelmes wellness-követés az Ön életére tervezve.';

  @override
  String get onboard_step_about => 'Rólad';

  @override
  String get onboard_step_goals => 'Az Ön céljai';

  @override
  String get onboard_step_lifestyle => 'Napi szokások';

  @override
  String get onboard_step_permissions => 'Engedélyek';

  @override
  String get onboard_step_plan => 'Kész!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Lépésszámláló érzékelő';

  @override
  String get onboard_notif_perm => 'Figyelmes emlékeztetők és értesítések';

  @override
  String get onboard_camera_perm => 'Kamera (vonalkód- és ételszkenner)';

  @override
  String get onboard_grant_permissions => 'Engedélyek megadása';

  @override
  String get onboard_continue_dashboard => 'Nyissa meg az Irányítópultot';

  @override
  String get notif_channel_hydration_name => 'Hidratáló hatások';

  @override
  String get notif_channel_hydration_desc =>
      'Gyengéd vízre emlékeztető a nap folyamán';

  @override
  String get notif_channel_nutrition_name =>
      'Étkezési és táplálkozási emlékeztetők';

  @override
  String get notif_channel_nutrition_desc =>
      'Reggelire, ebédre és vacsorára emlékeztető figyelmeztetések';

  @override
  String get notif_channel_steps_name => 'Lépés Mérföldkövek';

  @override
  String get notif_channel_steps_desc => 'Ünnepek a napi lépéscélok elérésekor';

  @override
  String get notif_channel_vitals_name =>
      'Egészségügyi és életfontosságú ellenőrzések';

  @override
  String get notif_channel_vitals_desc => 'Súly- és lefekvésidő-emlékeztetők';

  @override
  String get notif_action_log_water => '💧 Rönk +250ml';

  @override
  String get notif_action_snooze => 'Szundi 15 m';

  @override
  String get notif_action_log_meal => '🥗 Reggeli';

  @override
  String get language => 'Nyelv';

  @override
  String get share => 'Megosztás';

  @override
  String common_days(Object count) {
    return '$count napja';
  }
}
