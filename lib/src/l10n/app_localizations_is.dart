// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Heim';

  @override
  String get nav_today => 'Í dag';

  @override
  String get nav_plan => 'Áætlun';

  @override
  String get nav_food => 'Matur';

  @override
  String get nav_food_diary => 'Matardagbók';

  @override
  String get nav_workout => 'Æfingaskrá';

  @override
  String get nav_health => 'Heilsa';

  @override
  String get nav_profile => 'Prófíll';

  @override
  String get save => 'Vista';

  @override
  String get cancel => 'Hætta við';

  @override
  String get delete => 'Eyða';

  @override
  String get edit => 'Breyta';

  @override
  String get done => 'Búið';

  @override
  String get close => 'Loka';

  @override
  String get back => 'Til baka';

  @override
  String get next => 'Næst';

  @override
  String get continue_btn => 'Halda áfram';

  @override
  String get confirm => 'Staðfesta';

  @override
  String get search => 'Leita';

  @override
  String get filter => 'Sía';

  @override
  String get all => 'Allt';

  @override
  String get active => 'Virkur';

  @override
  String get today => 'Í dag';

  @override
  String get yesterday => 'Í gær';

  @override
  String get tomorrow => 'Á morgun';

  @override
  String get add => 'Bæta við';

  @override
  String get remove => 'Fjarlægja';

  @override
  String get refresh => 'Endurnýja';

  @override
  String get retry => 'Reyndu aftur';

  @override
  String get error => 'Villa';

  @override
  String get success => 'Árangur';

  @override
  String get loading => 'Hleður...';

  @override
  String get no_data => 'Engin gögn tiltæk';

  @override
  String get offline => 'Ótengdur háttur';

  @override
  String get offline_sub =>
      'Breytingar verða samstilltar þegar þær hafa verið tengdar aftur';

  @override
  String get undo => 'Afturkalla';

  @override
  String get portion => 'Hluti';

  @override
  String get quantity => 'Magn';

  @override
  String get unit => 'Eining';

  @override
  String get clear => 'Hreinsa';

  @override
  String get select => 'Veldu';

  @override
  String get apply => 'Virkja';

  @override
  String get reset => 'Frumstilla';

  @override
  String get ok => 'LOKIÐ';

  @override
  String get yes => 'Já';

  @override
  String get no => 'Nei';

  @override
  String get optional => 'Valfrjálst';

  @override
  String get calories => 'Kaloríur';

  @override
  String get protein => 'Prótein';

  @override
  String get carbs => 'Kolvetni';

  @override
  String get fat => 'Feitur';

  @override
  String get fiber => 'Trefjar';

  @override
  String get water => 'Vatn';

  @override
  String get steps => 'Skref';

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
  String get inches => 'inn';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'klst';

  @override
  String get minutes => 'mín';

  @override
  String get serving => 'Afgreiðsla';

  @override
  String get servings => 'Skammtar';

  @override
  String get serving_size => 'Framreiðslustærð';

  @override
  String get per_100g => 'á 100 g';

  @override
  String get india => 'Indlandi';

  @override
  String get asia => 'Asíu';

  @override
  String get europe => 'Evrópu';

  @override
  String get middle_east => 'Miðausturlönd';

  @override
  String get africa => 'Afríku';

  @override
  String get americas => 'Ameríku';

  @override
  String get home_title => 'Heim';

  @override
  String get home_greeting_morning => 'Góðan daginn';

  @override
  String get home_greeting_afternoon => 'Góðan daginn';

  @override
  String get home_greeting_evening => 'Gott kvöld';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count daga röð',
      one: '1 dags röð',
      zero: '0 daga röð',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Brenndur';

  @override
  String get home_calories_budget => 'Kaloría fjárhagsáætlun';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal eftir';
  }

  @override
  String get home_water_title => 'Dagleg vökvun';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Skref Gengið';

  @override
  String get home_quick_actions => 'Fljótar aðgerðir';

  @override
  String get home_log_meal => 'Log máltíð';

  @override
  String get home_log_water => 'Log Vatn';

  @override
  String get home_log_workout => 'Logþjálfun';

  @override
  String get home_log_weight => 'Log Þyngd';

  @override
  String get home_insights_title => 'Innsýn dagsins';

  @override
  String get home_quote =>
      'Lítil heilbrigð val skapa blómstrandi umbreytingar.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI þjálfari';

  @override
  String get home_surroundings => 'Umhverfi & Loft';

  @override
  String get home_notifications => 'Tilkynningar';

  @override
  String get home_daily_score => 'Daglegt heilsustig';

  @override
  String get home_view_all => 'Skoða allt';

  @override
  String get food_diary_title => 'Matardagbók';

  @override
  String get food_breakfast => 'Morgunverður';

  @override
  String get food_lunch => 'Hádegisverður';

  @override
  String get food_dinner => 'Kvöldverður';

  @override
  String get food_snacks => 'Snarl';

  @override
  String get food_add_food => 'Bæta við mat';

  @override
  String get food_edit_food => 'Breyta mat';

  @override
  String get food_add_breakfast => 'Bæta við morgunmat';

  @override
  String get food_add_lunch => 'Bæta við hádegismat';

  @override
  String get food_add_dinner => 'Bæta við kvöldmat';

  @override
  String get food_add_snack => 'Bæta við snarl';

  @override
  String get food_total_calories => 'Heildar kaloríur';

  @override
  String get food_empty_meal => 'Enginn matur skráður fyrir þessa máltíð ennþá';

  @override
  String get food_empty_diary => 'Engar máltíðir skráðar fyrir þennan dag';

  @override
  String get food_log_first_meal =>
      'Ýttu á + til að skrá fyrstu dýrindis máltíðina þína';

  @override
  String get food_quick_add => 'Fljótleg viðbót';

  @override
  String get food_search_hint => 'Leitaðu að réttum, ávöxtum, dal, roti...';

  @override
  String get food_custom_recipe => 'Sérsniðin matur og uppskrift';

  @override
  String get food_scan_barcode => 'Skannaðu strikamerki';

  @override
  String get food_camera_scan => 'AI matarskanni';

  @override
  String get food_recent => 'Nýleg matvæli';

  @override
  String get food_favourites => 'Uppáhalds';

  @override
  String get food_macro_summary => 'Sundurliðun stórefna';

  @override
  String get food_delete_meal_confirm =>
      'Ertu viss um að þú viljir fjarlægja þetta atriði?';

  @override
  String get food_item_deleted => 'Matur fjarlægður';

  @override
  String get food_remaining => 'eftir';

  @override
  String get food_consumed => 'neytt';

  @override
  String food_of_target(Object target) {
    return 'af $target kcal';
  }

  @override
  String get foodSearch_title => 'Leita að matvælum';

  @override
  String get foodSearch_scan_barcode => 'Skannaðu strikamerki';

  @override
  String get foodSearch_take_photo => 'Snap Food mynd';

  @override
  String get foodSearch_custom_food => 'Búðu til sérsniðna mat';

  @override
  String get foodSearch_recent_searches => 'Nýlegar leitir';

  @override
  String get foodSearch_popular => 'Vinsælir réttir';

  @override
  String get foodSearch_no_results => 'Engin matvæli passa við leitina þína';

  @override
  String get barcode_title => 'Strikamerki skanni';

  @override
  String get barcode_align => 'Stilltu strikamerki innan ramma myndavélarinnar';

  @override
  String get barcode_not_found => 'Vara fannst ekki í gagnagrunni';

  @override
  String get barcode_premium_feature =>
      'Strikamerkiskönnun er fáanleg með Bloomi Pro';

  @override
  String get camera_title => 'AI matarskanni';

  @override
  String get camera_tap_hint => 'Taktu skýra mynd af réttinum þínum';

  @override
  String get camera_analysing => 'Er að greina matardisk...';

  @override
  String get camera_detected => 'Greint atriði';

  @override
  String get camera_flash => 'Skiptu um Flash';

  @override
  String get camera_retake => 'Taktu mynd aftur';

  @override
  String get camera_confirm_food => 'Staðfestu atriði';

  @override
  String get customFood_title => 'Sérsniðin matur og uppskrift';

  @override
  String get customFood_name_hint => 'Heiti fats eða hráefnis';

  @override
  String get customFood_calories_hint => 'Kaloríur (kcal)';

  @override
  String get customFood_protein_hint => 'Prótein (g)';

  @override
  String get customFood_carbs_hint => 'Kolvetni (g)';

  @override
  String get customFood_fat_hint => 'Fita (g)';

  @override
  String get customFood_save => 'Vista uppskrift';

  @override
  String get water_tracker_title => 'Vatn rekja spor einhvers';

  @override
  String get water_daily_target => 'Daglegt vökvunarmarkmið';

  @override
  String get water_logged_today => 'Skráður í dag';

  @override
  String get water_add_glass => '+250 ml Gler';

  @override
  String get water_add_bottle => '+500 ml flaska';

  @override
  String get water_custom_amount => 'Sérsniðin upphæð';

  @override
  String get water_reminder_tip =>
      'Drekktu vatn reglulega yfir daginn fyrir stöðuga orku.';

  @override
  String water_logged_toast(Object amount) {
    return 'Skráð $amount ml af vatni 💧';
  }

  @override
  String get workout_title => 'Æfingaskrá';

  @override
  String get workout_add_exercise => 'Bæta við líkamsþjálfun';

  @override
  String get workout_cardio => 'Hjartalínurit';

  @override
  String get workout_strength => 'Styrkur';

  @override
  String get workout_yoga => 'Jóga og sveigjanleiki';

  @override
  String get workout_duration => 'Lengd';

  @override
  String get workout_intensity => 'Styrkur';

  @override
  String get workout_calories_burned => 'Kaloríur brenndar';

  @override
  String get workout_empty => 'Engar æfingar skráðar í dag';

  @override
  String get workout_save_success => 'Æfing vistuð með góðum árangri!';

  @override
  String get workout_type => 'Tegund líkamsþjálfunar';

  @override
  String get workout_notes => 'Skýringar og hugleiðingar';

  @override
  String get health_overview_title => 'Heilsa og lífsnauðsynjar';

  @override
  String get health_heart_rate => 'Hjartsláttur';

  @override
  String get health_blood_oxygen => 'Blóðsúrefni (SpO2)';

  @override
  String get health_blood_pressure => 'Blóðþrýstingur';

  @override
  String get health_blood_glucose => 'Blóðsykur';

  @override
  String get health_body_temperature => 'Líkamshiti';

  @override
  String get health_sleep_tracking => 'Svefnmæling';

  @override
  String get health_weight_tracking => 'Þyngd og líkamssamsetning';

  @override
  String get health_waist_hip => 'Mitti-til-mjöðm hlutfall';

  @override
  String get health_devices_hub => 'Tæki & Smartwatch Hub';

  @override
  String get health_sync_now => 'Samstilla heilsufarsgögn';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Síðast samstillt: $time';
  }

  @override
  String get health_manual_entry => 'Handvirk heilsufærsla';

  @override
  String get health_metric_detail => 'Metraupplýsingar';

  @override
  String get health_connected_sensors => 'Tengdir heilsuskynjarar';

  @override
  String get plan_title => 'Daglegt skipulag';

  @override
  String get plan_weekly_title => 'Vikuleg heilsuáætlun';

  @override
  String get plan_calorie_target => 'Kaloríumarkmið';

  @override
  String get plan_water_target => 'Vökvamarkmið';

  @override
  String get plan_step_target => 'Skref markmið';

  @override
  String get plan_sleep_target => 'Svefnmarkmið';

  @override
  String get plan_meal_suggestions => 'Máltíðartillögur';

  @override
  String get plan_healthy_habits => 'Heilbrigðar venjur og ráð';

  @override
  String get plan_coach_advice => 'Ráðleggingar Bloomi AI þjálfara';

  @override
  String get plan_generated_title => 'Persónuleg dagskrá';

  @override
  String get profile_title => 'Prófíll';

  @override
  String get profile_edit => 'Breyta prófíl';

  @override
  String get profile_name => 'Nafn';

  @override
  String get profile_age => 'Aldur';

  @override
  String get profile_gender => 'Kyn';

  @override
  String get profile_height => 'Hæð';

  @override
  String get profile_weight => 'Þyngd';

  @override
  String get profile_goal => 'Aðalmarkmið';

  @override
  String get profile_activity_level => 'Athafnastig';

  @override
  String get profile_stats => 'Heilsutölfræði mín';

  @override
  String get profile_saved => 'Prófíll uppfærður';

  @override
  String get profile_bmi => 'Líkamsþyngdarstuðull (BMI)';

  @override
  String get profile_membership => 'Aðild';

  @override
  String get settings => 'Stillingar';

  @override
  String get preferences_habits => 'KOSNINGAR OG VANIR';

  @override
  String get appearance_theme => 'Útlit og þema';

  @override
  String get appearance_theme_sub =>
      'Dökk, ljós, kerfisstilling og bakgrunnsvalkostir forrita';

  @override
  String get permissions => 'Heimildir og kerfisaðgangur';

  @override
  String get permissions_sub =>
      'Heilsutenging, skrefskynjarar, GPS, tilkynningar og myndavél';

  @override
  String get reminders_notifications => 'Áminningar og tilkynningar';

  @override
  String get reminders_sub =>
      'Matartímar, vatn, þyngdarinnritun og áminningar um háttatíma';

  @override
  String get units_of_measurement => 'Mælieiningar';

  @override
  String get units_sub =>
      'Metra (kg, cm, ml, km) eða Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Tungumál apps';

  @override
  String get language_sub =>
      'enska, हिन्दी (hindí), hinglish & 195+ alþjóðleg tungumál';

  @override
  String get home_screen_widgets => 'Heimaskjágræjur';

  @override
  String get widgets_sub =>
      'Lifandi Android búnaður: Hub, Steps, Vatn, næring og lukkudýr';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Snjallúr félagi, flísar, fylgikvilla og lifandi lífsnauðsynjar';

  @override
  String get goals_wellness => 'MARKMIÐ OG VELLÍÐARINNSYN';

  @override
  String get nutrition_targets => 'Næringarmarkmið & Macro skipting';

  @override
  String get nutrition_targets_sub =>
      'Kaloríumarkmið, prótein, kolvetni, fitu og vatnsmarkmið';

  @override
  String get weekly_recap => 'Vikuleg vellíðan samantekt';

  @override
  String get weekly_recap_sub =>
      '7 daga kaloríumeðaltal, makróhlutfall og besti dagurinn';

  @override
  String get streaks_milestones => 'Strákar og tímamót';

  @override
  String get streaks_sub => 'Virkar blómastrokur, merki og afrek';

  @override
  String get connected_devices => 'TENGIN TÆKI & VÍKKERFI';

  @override
  String get devices_hub => 'Tæki & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Umhverfi & Veður';

  @override
  String get surroundings_sub =>
      'Loftgæði (AQI), UV vísitala og ábendingar um vökvun veðurs';

  @override
  String get bloomi_pro => 'Bloomi Pro áskrift';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 heimaskjágræjur og mælingar á lífsnauðsynjum';

  @override
  String get about_security => 'UM & ÖRYGGI';

  @override
  String get about_bloomi => 'Um Bloomi';

  @override
  String get about_bloomi_sub => 'Byggja forskriftir, útgáfa, eignir';

  @override
  String get privacy_policy => 'Persónuverndarstefna';

  @override
  String get privacy_policy_sub => 'Fyrstur ótengdur gagnaarkitektúr í tækinu';

  @override
  String get terms_conditions => 'Skilmálar og skilyrði';

  @override
  String get terms_conditions_sub =>
      'Þjónustuskilmálar og leiðbeiningar um vellíðan';

  @override
  String get delete_account => 'Eyða reikningi og gögnum';

  @override
  String get delete_account_sub =>
      'Eyða óafturkræft staðbundnum SQLite gögnum og skýjaafritum';

  @override
  String get healthy_habits => 'Byggðu upp mildar, varanlegar vellíðunarvenjur';

  @override
  String get all_logs => 'Mín rakin gögn og annálar';

  @override
  String get search_language => 'Leitaðu eftir tungumáli eða móðurmáli...';

  @override
  String get languages_available => 'Tungumál í boði';

  @override
  String get no_matching_languages => 'Engin samsvarandi tungumál fundust';

  @override
  String get try_searching =>
      'Prófaðu að leita eftir móðurmáli eða enskri stafsetningu';

  @override
  String get partially_translated => 'Þýtt að hluta';

  @override
  String get complete_translation => 'Heill';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Tungumál stillt á $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Umhverfi & Umhverfi';

  @override
  String get surroundings_aqi => 'Loftgæðavísitala';

  @override
  String get surroundings_uv => 'UV vísitala';

  @override
  String get surroundings_temp => 'Hitastig';

  @override
  String get surroundings_humidity => 'Raki';

  @override
  String get surroundings_hydration_advice =>
      'Vertu vel vökvaður við núverandi veðurskilyrði.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Leita að mat';

  @override
  String get food_quick_barcode => 'Skannaðu strikamerki 👑';

  @override
  String get food_quick_water => 'Bæta við vatni';

  @override
  String get food_quick_custom => 'Sérsniðinn matur';

  @override
  String get surroundings_good => 'Gott';

  @override
  String get surroundings_moderate => 'Í meðallagi';

  @override
  String get surroundings_unhealthy => 'Óhollt';

  @override
  String get notifications_title => 'Tilkynningar og viðvaranir';

  @override
  String get notifications_empty => 'Engar nýjar tilkynningar';

  @override
  String get notifications_mark_read => 'Merktu allt sem lesið';

  @override
  String get notifications_clear => 'Hreinsa allt';

  @override
  String get reminders => 'Stillingar áminningar';

  @override
  String get notifications => 'Tilkynningar';

  @override
  String get reminders_breakfast_title => 'Morgunverðaráminning 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Góðan daginn! Kominn tími á nærandi morgunverð á $time .';
  }

  @override
  String get reminders_lunch_title => 'Hádegisáminning 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Gerðu hlé og njóttu yfirvegaðs, minnugs hádegis á $time.';
  }

  @override
  String get reminders_dinner_title => 'Áminning um kvöldmat 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Kominn tími á léttan, ánægjulega kvöldverð á $time .';
  }

  @override
  String get reminders_water_title => 'Vökvagjöf 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Kominn tími til að drekka ferskt glas af vatni! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Vikuleg vigtun ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Fylgstu með vikulegum líkamsmælingum þínum á Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Slökkt á svefni 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Slakaðu á og búðu þig undir góðan svefn ( $time ).';
  }

  @override
  String get onboard_welcome => 'Velkomin til Bloomi';

  @override
  String get onboard_sub =>
      'Vingjarnlegur, offline fyrsti heilsu- og næringarfélagi þinn.';

  @override
  String get onboard_get_started => 'Byrjaðu';

  @override
  String get onboard_sign_in => 'Skráðu þig inn';

  @override
  String get onboard_skip => 'Sleppa';

  @override
  String get onboard_choose_goal => 'Hvert er helsta vellíðunarmarkmið þitt?';

  @override
  String get onboard_goal_weight_loss => 'Létt þyngdartap';

  @override
  String get onboard_goal_muscle => 'Vöðvaaukning og styrkur';

  @override
  String get onboard_goal_energy => 'Dagleg orka og lífskraftur';

  @override
  String get onboard_goal_habits => 'Heilbrigt hugað borða';

  @override
  String get onboard_about_you => 'Segðu okkur frá sjálfum þér';

  @override
  String get onboard_lifestyle => 'Dagleg rútína þín';

  @override
  String get onboard_permissions_title => 'Heimildir og kerfisaðgangur';

  @override
  String get onboard_permissions_sub =>
      'Veittu aðgang að samstillingarskrefum, æfingum og áminningum.';

  @override
  String get onboard_plan_ready_title => 'Sérsniðin áætlun þín er tilbúin!';

  @override
  String get onboard_plan_ready_sub =>
      'Við bjuggum til mildan, persónulegan næringar- og vellíðunarvegakort fyrir þig.';

  @override
  String get onboard_enter_bloomi => 'Sláðu inn Bloomi';

  @override
  String get insights_weekly_report => 'Vikuleg vellíðan samantekt';

  @override
  String insights_best_day(Object day) {
    return 'Besti samkvæmnisdagurinn: $day';
  }

  @override
  String get insights_streaks_badges => 'Strákar og tímamót';

  @override
  String insights_unlocked_on(Object date) {
    return 'Opnað á $date';
  }

  @override
  String get insights_keep_going => 'Haltu áfram með frábærar framfarir!';

  @override
  String get widgets_title => 'Græjur á heimaskjá';

  @override
  String widgets_active_count(Object count) {
    return 'Virkar græjur: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Vökvahraðaskrá';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Notaðu OS Smartwatch';

  @override
  String get wear_os_connected => 'Tengdur Watch';

  @override
  String get wear_os_sync => 'Samstilla áhorfsgögn';

  @override
  String get theme_title => 'Útlit og þema';

  @override
  String get theme_mode => 'Þema';

  @override
  String get theme_light => 'Ljóst';

  @override
  String get theme_dark => 'Dökkt';

  @override
  String get theme_system => 'Kerfi';

  @override
  String get theme_background_palette => 'Bakgrunnspalletta';

  @override
  String get units_title => 'Mælieiningar';

  @override
  String get units_metric => 'Mæling (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ekki tókst að hlaða mælaborðinu';

  @override
  String get home_health_permission_req => 'Heilsutengingarleyfi krafist';

  @override
  String get home_health_permission_desc =>
      'Bloomi krefst Health Connect leyfis til að draga raunveruleg skref, hjartslátt og samstilla húsbílagræjur í rauntíma.';

  @override
  String get home_allow_health => 'Leyfa Health Connect';

  @override
  String get home_ready_mindful_day => 'Tilbúinn fyrir minnugan dag? ✨';

  @override
  String get home_quick_add => 'Fljótleg viðbót';

  @override
  String get home_live_gps => 'Lifandi GPS';

  @override
  String get home_calories_remaining_label => 'KALORÍA EFTIR';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Borðað: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap fyrir vatnsmælingu 💧';

  @override
  String get home_water_goal_reached => 'Daglegu markmiði náð 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml að daglegu markmiði';
  }

  @override
  String get home_details => 'Upplýsingar';

  @override
  String get home_upgrade_plan_desc =>
      'Uppfærðu til að opna persónulega daglega markmið og gervigreindaráætlun';

  @override
  String get home_unlock => 'Opnaðu 👑';

  @override
  String get home_quick_log_hint => 'Skráðu vellíðunarfærslu fljótt';

  @override
  String get food_serving_size => 'Framreiðslustærð';

  @override
  String get food_serving_grams => 'Afgreiðsla (g)';

  @override
  String get food_number_servings => 'Fjöldi skammta';

  @override
  String get food_calories_per_serving => 'Kaloríur í hverjum skammti';

  @override
  String get food_recipe_ingredients => 'Hráefni';

  @override
  String get food_recipe_add_ingredient => 'Bæta við hráefni';

  @override
  String get food_recipe_directions => 'Leiðbeiningar og athugasemdir';

  @override
  String get food_recipe_total => 'Heildaruppskrift Næring';

  @override
  String get food_recipe_per_serving => 'Næring á hverjum skammti';

  @override
  String get food_recipe_saved_toast =>
      'Sérsniðinn matur vistaður með góðum árangri!';

  @override
  String get food_barcode_found => 'Vara fundin!';

  @override
  String get food_barcode_not_found_desc =>
      'Við fundum ekki þetta strikamerki í opna gagnagrunninum. Þú getur bætt því við sem sérsniðnum mat.';

  @override
  String get food_add_custom_btn => 'Bættu við sérsniðnum mat';

  @override
  String get food_scan_again => 'Skanna aftur';

  @override
  String get food_review_items => 'Skoðaðu uppgötvað matvæli';

  @override
  String get food_review_hint => 'Stilltu magn eða fjarlægðu óþekktan hlut';

  @override
  String get food_log_selected => 'Skráðu valin matvæli';

  @override
  String get food_favourites_title => 'Uppáhalds matur';

  @override
  String get food_recent_title => 'Nýleg matvæli';

  @override
  String get food_no_favourites =>
      'Enginn uppáhaldsmatur ennþá. Bankaðu hjarta á hvaða mat sem er til að spara hér.';

  @override
  String get food_no_recents => 'Engin nýlega skráð matvæli fundust.';

  @override
  String get food_nutrition_details_title => 'Daglegar næringarupplýsingar';

  @override
  String get food_macro_protein_label => 'Niðurbrot próteina';

  @override
  String get food_macro_carbs_label => 'Niðurbrot kolvetna';

  @override
  String get food_macro_fat_label => 'Niðurbrot fitu';

  @override
  String get food_macro_fiber_label => 'Niðurbrot trefja';

  @override
  String get food_daily_target_comparison => 'Samanburður á markmiðum';

  @override
  String food_target_label(Object target) {
    return 'Markmið: $target';
  }

  @override
  String get food_edit_entry => 'Breyta dagbókarfærslu';

  @override
  String get food_delete_entry => 'Eyða færslu';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kkal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current af $target ml';
  }

  @override
  String get water_intake_history => 'Vatnadagskrár dagsins';

  @override
  String get water_no_logs_today =>
      'Ekkert vatn skráð enn í dag. Vökvaðu og ýttu á fljótlegan hnapp til að bæta við!';

  @override
  String get water_adjust_goal => 'Stilla daglegt markmið';

  @override
  String get health_connect_banner => 'Tengdur Health Connect';

  @override
  String get health_vitals_summary => 'Dagleg heilsufarsatriði';

  @override
  String get health_latest_heart_rate => 'Nýjasta hjartsláttartíðni';

  @override
  String get health_latest_bp => 'Blóðþrýstingur';

  @override
  String get health_latest_spo2 => 'Blóð súrefni';

  @override
  String get health_latest_glucose => 'Blóðsykur';

  @override
  String get health_latest_weight => 'Þyngd';

  @override
  String get health_latest_sleep => 'Svefnlengd';

  @override
  String get health_add_manual => 'Bættu við handvirkri mælingu';

  @override
  String get health_history_trends => 'Söguleg stefna';

  @override
  String get health_sync_success => 'Heilsugögn samstillt með góðum árangri!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours klst. $mins mín';
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
  String get health_devices_title => 'Tengd tæki & Wearables';

  @override
  String get health_devices_desc =>
      'Hafa umsjón með pöruðum snjallúrum, líkamsræktarmælum og heilsuskynjurum.';

  @override
  String get health_workout_editor_title => 'Breyta líkamsþjálfun';

  @override
  String get health_workout_name_label => 'Nafn líkamsþjálfunar';

  @override
  String get health_workout_duration_label => 'Lengd (mínútur)';

  @override
  String get health_workout_calories_label => 'Áætlaðar hitaeiningar (kcal)';

  @override
  String get health_workout_date_label => 'Dagsetning og tími';

  @override
  String get plan_daily_wellness_roadmap => 'Persónulega vegakortið þitt';

  @override
  String get plan_morning_routine => 'Morgunrútína';

  @override
  String get plan_afternoon_routine => 'Heilsulind á hádegi';

  @override
  String get plan_evening_routine => 'Kvöldvindur';

  @override
  String get plan_coach_badge => 'Bloomi AI þjálfari';

  @override
  String get plan_weekly_overview => '7 daga vellíðunaráhersla';

  @override
  String get plan_targets_title => 'Heilsumarkmið og markmið';

  @override
  String get plan_calorie_budget_label => 'Daglegt kaloría fjárhagsáætlun';

  @override
  String get plan_water_budget_label => 'Daglegt vatnsmarkmið';

  @override
  String get plan_step_budget_label => 'Daglegt skref markmið';

  @override
  String get plan_macro_split_label => 'Makrónæringarhlutfall';

  @override
  String get profile_personal_details => 'Persónulegar upplýsingar';

  @override
  String get profile_body_stats => 'Líkamsmælingar';

  @override
  String get profile_app_preferences => 'Kjörstillingar og forritastillingar';

  @override
  String get profile_edit_name_hint => 'Nafnið þitt';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Hæð ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Þyngd ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Aldur';

  @override
  String get profile_gender_male => 'Karlkyns';

  @override
  String get profile_gender_female => 'Kvenkyns';

  @override
  String get profile_gender_other => 'Annað / Vil helst ekki segja';

  @override
  String get profile_activity_sedentary =>
      'Kyrrseta (lítil sem engin hreyfing)';

  @override
  String get profile_activity_light => 'Létt virk (1-3 dagar í viku)';

  @override
  String get profile_activity_moderate => 'Miðlungs virk (3-5 dagar í viku)';

  @override
  String get profile_activity_very => 'Mjög virk (6-7 dagar/viku)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion app';

  @override
  String get settings_wear_os_desc =>
      'Settu Bloomi flísarnar og flækjuna á Wear OS úrið þitt til að líta á kaloríur, vatn og skref.';

  @override
  String get settings_widgets_header => 'Gagnvirkar Android búnaður';

  @override
  String get settings_widgets_desc =>
      'Festu rauntímagræjur á heimaskjá tækisins fyrir tafarlausar uppfærslur.';

  @override
  String get settings_about_header => 'Um Bloomi';

  @override
  String get settings_about_version => 'Útgáfa';

  @override
  String get settings_about_build => 'Byggja 100';

  @override
  String get settings_about_credits =>
      'Hannað af umhyggju fyrir meðvitað, heilbrigt líf.';

  @override
  String get settings_terms_header => 'Skilmálar og skilyrði';

  @override
  String get settings_privacy_header => 'Persónuverndarstefna';

  @override
  String get settings_delete_header => 'Eyða reikningi og gögnum';

  @override
  String get settings_delete_warning =>
      'Ekki er hægt að afturkalla þessa aðgerð. Öllum máltíðum þínum, æfingum, lífsnauðsynjum og prófílnum þínum verður varanlega eytt.';

  @override
  String get settings_delete_confirm_btn => 'Eyða varanlega';

  @override
  String get onboard_welcome_headline => 'Velkomin í Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Mjúk og meðvituð vellíðunarmæling hönnuð í kringum líf þitt.';

  @override
  String get onboard_step_about => 'Um þig';

  @override
  String get onboard_step_goals => 'Markmið þín';

  @override
  String get onboard_step_lifestyle => 'Daglegar venjur';

  @override
  String get onboard_step_permissions => 'Heimildir';

  @override
  String get onboard_step_plan => 'Tilbúið!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Skrefmæliskynjari';

  @override
  String get onboard_notif_perm => 'Íhugar áminningar og tilkynningar';

  @override
  String get onboard_camera_perm => 'Myndavél (strikamerkja- og matarskanni)';

  @override
  String get onboard_grant_permissions => 'Veita leyfi';

  @override
  String get onboard_continue_dashboard => 'Opnaðu mælaborð';

  @override
  String get notif_channel_hydration_name => 'Vökvagjöf';

  @override
  String get notif_channel_hydration_desc =>
      'Mildar vatnsáminningar allan daginn';

  @override
  String get notif_channel_nutrition_name => 'Áminningar um máltíð og næringu';

  @override
  String get notif_channel_nutrition_desc =>
      'Áminningar um morgun-, hádegis- og kvöldverð';

  @override
  String get notif_channel_steps_name => 'Skref áfangi';

  @override
  String get notif_channel_steps_desc =>
      'Hátíðahöld þegar daglegum skrefamarkmiðum er náð';

  @override
  String get notif_channel_vitals_name =>
      'Heilsu- og lífsnauðsynlegar athuganir';

  @override
  String get notif_channel_vitals_desc => 'Áminningar um þyngd og svefn';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Blund 15m';

  @override
  String get notif_action_log_meal => '🥗 Log máltíð';

  @override
  String get language => 'Tungumál';

  @override
  String get share => 'Deila';

  @override
  String common_days(Object count) {
    return '${count}d síðan';
  }
}
