// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Faroese (`fo`).
class AppLocalizationsFo extends AppLocalizations {
  AppLocalizationsFo([String locale = 'fo']) : super(locale);

  @override
  String get app_name => 'Blóma';

  @override
  String get nav_home => 'Heim';

  @override
  String get nav_today => 'Í dag';

  @override
  String get nav_plan => 'Ætlan';

  @override
  String get nav_food => 'Matur';

  @override
  String get nav_food_diary => 'Matdagbók';

  @override
  String get nav_workout => 'Venjingarlogg';

  @override
  String get nav_health => 'Heilsa';

  @override
  String get nav_profile => 'Vangamynd';

  @override
  String get save => 'Goym';

  @override
  String get cancel => 'Avlýs';

  @override
  String get delete => 'Strika';

  @override
  String get edit => 'Rætta';

  @override
  String get done => 'Liðugt';

  @override
  String get close => 'Lat aftur';

  @override
  String get back => 'Aftur';

  @override
  String get next => 'Næsta';

  @override
  String get continue_btn => 'Halt fram';

  @override
  String get confirm => 'Staðfest';

  @override
  String get search => 'Leita';

  @override
  String get filter => 'Filtur';

  @override
  String get all => 'Øll';

  @override
  String get active => 'Virkin';

  @override
  String get today => 'Í dag';

  @override
  String get yesterday => 'Í gjár';

  @override
  String get tomorrow => 'Í morgin';

  @override
  String get add => 'Legg afturat';

  @override
  String get remove => 'Fjerna';

  @override
  String get refresh => 'Fríska upp';

  @override
  String get retry => 'Royn aftur';

  @override
  String get error => 'Feilur';

  @override
  String get success => 'Eydna';

  @override
  String get loading => 'Heinta...';

  @override
  String get no_data => 'Ongar dátur eru tøkar';

  @override
  String get offline => 'Ónetlitsstilling';

  @override
  String get offline_sub =>
      'Broytingar verða synkroniseraðar, tá tær eru knýttar aftur.';

  @override
  String get undo => 'Angra';

  @override
  String get portion => 'Partur';

  @override
  String get quantity => 'Nøgd';

  @override
  String get unit => 'Eind';

  @override
  String get clear => 'Klára';

  @override
  String get select => 'Vel';

  @override
  String get apply => 'Søk';

  @override
  String get reset => 'Nullstilla';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nei';

  @override
  String get optional => 'Valfrítt';

  @override
  String get calories => 'Kaloriur';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Kulhydratir';

  @override
  String get fat => 'Feitt';

  @override
  String get fiber => 'Trevjur';

  @override
  String get water => 'Vatn';

  @override
  String get steps => 'Stig';

  @override
  String get kcal => 'kkal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'pund';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'í';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'kl';

  @override
  String get minutes => 'minuttir';

  @override
  String get serving => 'Servera';

  @override
  String get servings => 'Portiónir';

  @override
  String get serving_size => 'Portiónsstødd';

  @override
  String get per_100g => 'á 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Evropa';

  @override
  String get middle_east => 'Miðeystur';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Heim';

  @override
  String get home_greeting_morning => 'Góðan morgun';

  @override
  String get home_greeting_afternoon => 'Góðan seinnapart';

  @override
  String get home_greeting_evening => 'Gott kvøld';

  @override
  String get home_streak_title => 'Blómustrika';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count daga røð',
      one: '1 dags røð',
      zero: '0 daga røð',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Brend';

  @override
  String get home_calories_budget => 'Kaloriujáttan';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal eftir';
  }

  @override
  String get home_water_title => 'Daglig vætugeving';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Stig gingu';

  @override
  String get home_quick_actions => 'Skjótar handlingar';

  @override
  String get home_log_meal => 'Loggmáltíð';

  @override
  String get home_log_water => 'Loggvatn';

  @override
  String get home_log_workout => 'Logg venjing';

  @override
  String get home_log_weight => 'Loggvekt';

  @override
  String get home_insights_title => 'Dagsins innlit';

  @override
  String get home_quote => 'Smá sunn val skapa blómandi umskipanir.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI venjari';

  @override
  String get home_surroundings => 'Umhvørvi og luft';

  @override
  String get home_notifications => 'Fráboðanir';

  @override
  String get home_daily_score => 'Dagliga vælverustig';

  @override
  String get home_view_all => 'Vís alt';

  @override
  String get food_diary_title => 'Matdagbók';

  @override
  String get food_breakfast => 'Morgunmatur';

  @override
  String get food_lunch => 'Døgurði';

  @override
  String get food_dinner => 'Kvøldmatur';

  @override
  String get food_snacks => 'Ábit';

  @override
  String get food_add_food => 'Legg mat til';

  @override
  String get food_edit_food => 'Rætta mat';

  @override
  String get food_add_breakfast => 'Legg morgunmat til';

  @override
  String get food_add_lunch => 'Legg døgurða til';

  @override
  String get food_add_dinner => 'Legg døgurða til';

  @override
  String get food_add_snack => 'Legg ábit til';

  @override
  String get food_total_calories => 'Samlaðar kaloriur';

  @override
  String get food_empty_meal => 'Eingin matur skrásettur til hesa máltíð enn';

  @override
  String get food_empty_diary =>
      'Ongar máltíðir eru skrásettar fyri hendan dagin';

  @override
  String get food_log_first_meal =>
      'Trýst á + fyri at logga tína fyrstu leskiligu máltíð';

  @override
  String get food_quick_add => 'Skjótt legg til';

  @override
  String get food_search_hint => 'Leita eftir rættum, frukt, dal, roti...';

  @override
  String get food_custom_recipe => 'Sersniðgivin matur og uppskrift';

  @override
  String get food_scan_barcode => 'Skanna strikukotu';

  @override
  String get food_camera_scan => 'AI Matskannari';

  @override
  String get food_recent => 'Nýggjari matvøra';

  @override
  String get food_favourites => 'Uppáhald';

  @override
  String get food_macro_summary => 'Makroføðsluevnisbýti';

  @override
  String get food_delete_meal_confirm =>
      'Ert tú vísur í, at tú vilt strika hendan lutin?';

  @override
  String get food_item_deleted => 'Matvøra burturbeind';

  @override
  String get food_remaining => 'eftir';

  @override
  String get food_consumed => 'forbrúkt';

  @override
  String food_of_target(Object target) {
    return 'av $target kakal';
  }

  @override
  String get foodSearch_title => 'Leita eftir mati';

  @override
  String get foodSearch_scan_barcode => 'Skanna strikukotu';

  @override
  String get foodSearch_take_photo => 'Snap Matmynd';

  @override
  String get foodSearch_custom_food => 'Stovna sersniðgivnan mat';

  @override
  String get foodSearch_recent_searches => 'Nýggjari leitingar';

  @override
  String get foodSearch_popular => 'Vælumtóktir rættir';

  @override
  String get foodSearch_no_results => 'Eingin matur passar til tína leitan';

  @override
  String get barcode_title => 'Strikakotuskannari';

  @override
  String get barcode_align => 'Stilla strikukotuna inni í myndatólsrammuni';

  @override
  String get barcode_not_found => 'Vøra ikki funnin í dátugrunninum';

  @override
  String get barcode_premium_feature =>
      'Strikakotuskanning fæst við Bloomi Pro .';

  @override
  String get camera_title => 'AI Matskannari';

  @override
  String get camera_tap_hint => 'Tak eina greiða mynd av tínum rætti';

  @override
  String get camera_analysing => 'Greina matplátu...';

  @override
  String get camera_detected => 'Uppdagaðir lutir';

  @override
  String get camera_flash => 'Skift blits';

  @override
  String get camera_retake => 'Endurtak mynd';

  @override
  String get camera_confirm_food => 'Staðfest lutir';

  @override
  String get customFood_title => 'Sersniðgivin matur og uppskrift';

  @override
  String get customFood_name_hint => 'Navn á rætti ella tilfari';

  @override
  String get customFood_calories_hint => 'Kaloriur (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Kulhydratir (g)';

  @override
  String get customFood_fat_hint => 'Feitt (g)';

  @override
  String get customFood_save => 'Goym uppskrift';

  @override
  String get water_tracker_title => 'Vatnsporari';

  @override
  String get water_daily_target => 'Dagliga vætumálið';

  @override
  String get water_logged_today => 'Loggað í dag';

  @override
  String get water_add_glass => '+250 ml Gler';

  @override
  String get water_add_bottle => '+500 ml Fløska';

  @override
  String get water_custom_amount => 'Sersniðgivin upphædd';

  @override
  String get water_reminder_tip =>
      'Drekk vatn javnan gjøgnum dagin fyri at fáa støðuga orku.';

  @override
  String water_logged_toast(Object amount) {
    return 'Loggað $amount ml av vatni 💧 .';
  }

  @override
  String get workout_title => 'Venjingarlogg';

  @override
  String get workout_add_exercise => 'Legg venjing til';

  @override
  String get workout_cardio => 'Hjartastarv';

  @override
  String get workout_strength => 'Styrki';

  @override
  String get workout_yoga => 'Yoga og smidleiki';

  @override
  String get workout_duration => 'Lengd';

  @override
  String get workout_intensity => 'Intensitetur';

  @override
  String get workout_calories_burned => 'Kaloriur brendar';

  @override
  String get workout_empty => 'Ongar venjingar loggaðar í dag';

  @override
  String get workout_save_success => 'Venjing bjargað væleydnað!';

  @override
  String get workout_type => 'Venjingarslag';

  @override
  String get workout_notes => 'Viðmerkingar og hugleiðingar';

  @override
  String get health_overview_title => 'Heilsa og lívsneyðug';

  @override
  String get health_heart_rate => 'Hjartafrekvensur';

  @override
  String get health_blood_oxygen => 'Blóðsúrevni (SpO2)';

  @override
  String get health_blood_pressure => 'Blóðtrýst';

  @override
  String get health_blood_glucose => 'Blóðsukur';

  @override
  String get health_body_temperature => 'Kropshiti';

  @override
  String get health_sleep_tracking => 'Svøvnfylgja';

  @override
  String get health_weight_tracking => 'Vekt og kropssamseting';

  @override
  String get health_waist_hip => 'Lutfall millum mitt og mjaðmar';

  @override
  String get health_devices_hub => 'Tól og snildfonmiðdepil';

  @override
  String get health_sync_now => 'Samskipa heilsudátur';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Seinast samskipað: $time';
  }

  @override
  String get health_manual_entry => 'Handlig heilsufrágreiðing';

  @override
  String get health_metric_detail => 'Metriskar smálutir';

  @override
  String get health_connected_sensors => 'Samskipaðir heilsufølarar';

  @override
  String get plan_title => 'Dagætlan';

  @override
  String get plan_weekly_title => 'Vikuliga vælveruætlan';

  @override
  String get plan_calorie_target => 'Kaloriumark';

  @override
  String get plan_water_target => 'Fuktgevingarmark';

  @override
  String get plan_step_target => 'Stig mark';

  @override
  String get plan_sleep_target => 'Svøvnmark';

  @override
  String get plan_meal_suggestions => 'Máltíðaruppskot';

  @override
  String get plan_healthy_habits => 'Sunnir vanar og ráð';

  @override
  String get plan_coach_advice => 'Tilmæli frá Bloomi AI venjara';

  @override
  String get plan_generated_title => 'Persónlig daglig skrá';

  @override
  String get profile_title => 'Vangamynd';

  @override
  String get profile_edit => 'Rætta vangamynd';

  @override
  String get profile_name => 'Navn';

  @override
  String get profile_age => 'Aldur';

  @override
  String get profile_gender => 'Kyn';

  @override
  String get profile_height => 'Hædd';

  @override
  String get profile_weight => 'Vekt';

  @override
  String get profile_goal => 'Høvuðsendamálið';

  @override
  String get profile_activity_level => 'Virksemisstig';

  @override
  String get profile_stats => 'Míni trivnaðarhagtøl';

  @override
  String get profile_saved => 'Vangamyndin er dagførd væleydnað';

  @override
  String get profile_bmi => 'Kropsvekttal (BMI)';

  @override
  String get profile_membership => 'Limaskapur';

  @override
  String get settings => 'Innstillingar';

  @override
  String get preferences_habits => 'VANAR & VANAR';

  @override
  String get appearance_theme => 'Útsjónd og tema';

  @override
  String get appearance_theme_sub =>
      'Myrkt, ljóst, skipanarstilling og app bakgrundsmøguleikar';

  @override
  String get permissions => 'Loyvi og skipanaratgongd';

  @override
  String get permissions_sub =>
      'Heilsusamband, stigfølarar, GPS, fráboðanir og myndatól';

  @override
  String get reminders_notifications => 'Áminningar og fráboðanir';

  @override
  String get reminders_sub =>
      'Máltíðir, vatn, innritan av vekt og áminningar um songartíð';

  @override
  String get units_of_measurement => 'Mátieindir';

  @override
  String get units_sub =>
      'Metrisk (kg, cm, ml, km) ella keisaralig (pund, føtur/tumma, fl oz)';

  @override
  String get app_language => 'App mál';

  @override
  String get language_sub =>
      'Enskt, हिन्दी (Hindi), Hingliskt og 195+ alheimsmál';

  @override
  String get home_screen_widgets => 'Widgets á heimasíðuni';

  @override
  String get widgets_sub =>
      'Beinleiðis Android-widgets: Miðdepil, Trin, Vatn, Kostur og Maskott';

  @override
  String get wear_os_watch_app => 'Brúka OS Vaktar App';

  @override
  String get wear_os_sub =>
      'Snildfonir fylgjari, flísar, fløkjur og livandi lívsneyðug';

  @override
  String get goals_wellness => 'MÁL & VÆLVERAINNLITT';

  @override
  String get nutrition_targets => 'Kostmál og makrobýti';

  @override
  String get nutrition_targets_sub =>
      'Kaloriumark, protein, kulhydratir, feitt & vatnmark';

  @override
  String get weekly_recap => 'Vikuliga vælveru Samandráttur';

  @override
  String get weekly_recap_sub =>
      '7-daga kaloriumiðaltal, makrolutfall & besti dagur';

  @override
  String get streaks_milestones => 'Stríkur og málsteinar';

  @override
  String get streaks_sub => 'Virknar blómustrikur, merki og avrik';

  @override
  String get connected_devices => 'TÓL OG VISTSKIPAN';

  @override
  String get devices_hub => 'Tól og snildfonmiðdepil';

  @override
  String get devices_hub_sub => 'Heilsusamband, Galaxy ur, Pixel ur, Garmin';

  @override
  String get surroundings_weather => 'Umhvørvi og veður';

  @override
  String get surroundings_sub => 'Luftgóðska (AQI), UV-indeks og veðurvæturáð';

  @override
  String get bloomi_pro => 'Bloomi Pro hald';

  @override
  String get bloomi_pro_sub =>
      'AI-ætlanarvenjari, 5 heimasíðu-widgets og sporing av lívsneyðugum';

  @override
  String get about_security => 'UM & TRYGD';

  @override
  String get about_bloomi => 'Um Bloomi';

  @override
  String get about_bloomi_sub =>
      'Bygg tekniskar upplýsingar, útgáva, attributiónir';

  @override
  String get privacy_policy => 'Persónsverndarpolitikkur';

  @override
  String get privacy_policy_sub => 'Offline-fyrst, á tólinum dátuarkitektur';

  @override
  String get terms_conditions => 'Treytir og fortreytir';

  @override
  String get terms_conditions_sub => 'Tænastutreytir og trivnaðarleiðreglur';

  @override
  String get delete_account => 'Strika kontu og dátur';

  @override
  String get delete_account_sub =>
      'Óafturvendandi strika lokal SQLite dátur og ský backups';

  @override
  String get healthy_habits => 'Bygg upp blíðar, varandi vælveruvanar';

  @override
  String get all_logs => 'Mínar sporaðu dátur og loggar';

  @override
  String get search_language => 'Leita eftir máli ella upprunaskriftum...';

  @override
  String get languages_available => 'Mál, sum eru tøk';

  @override
  String get no_matching_languages => 'Eingi samsvarandi mál funnin';

  @override
  String get try_searching =>
      'Royn at leita eftir innføddum skrift ella enskum stavseting';

  @override
  String get partially_translated => 'Partvíst týtt';

  @override
  String get complete_translation => 'Liðugt';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Málið sett til $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Umhvørvi og umhvørvi';

  @override
  String get surroundings_aqi => 'Luftgóðskuvísitalið';

  @override
  String get surroundings_uv => 'UV-vísitalið';

  @override
  String get surroundings_temp => 'Hiti';

  @override
  String get surroundings_humidity => 'Fukt';

  @override
  String get surroundings_hydration_advice =>
      'Halt teg væl væturíkan í verandi veðurlagsviðurskiftum.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Leita eftir mati';

  @override
  String get food_quick_barcode => 'Skanna strikukotu 👑';

  @override
  String get food_quick_water => 'Koyr vatn í';

  @override
  String get food_quick_custom => 'Sersniðgivin matur';

  @override
  String get surroundings_good => 'Gott';

  @override
  String get surroundings_moderate => 'Miðal';

  @override
  String get surroundings_unhealthy => 'Ósunt';

  @override
  String get notifications_title => 'Fráboðanir og áminningar';

  @override
  String get notifications_empty => 'Ongar nýggjar fráboðanir';

  @override
  String get notifications_mark_read => 'Merk alt sum lisið';

  @override
  String get notifications_clear => 'Rudda alt';

  @override
  String get reminders => 'Áminningar innstillingar';

  @override
  String get notifications => 'Fráboðanir';

  @override
  String get reminders_breakfast_title => 'Áminning um morgunmat 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Góðan morgun! Tíð til ein føðsluríkan morgunmat á $time .';
  }

  @override
  String get reminders_lunch_title => 'Døgurða Áminning 🥗 .';

  @override
  String reminders_lunch_body(Object time) {
    return 'Steðga á og njót ein javnan, hugsandi døgurða á $time .';
  }

  @override
  String get reminders_dinner_title => 'Áminning um døgurða 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Tíð til ein lættan, nøktandi døgurða á $time .';
  }

  @override
  String get reminders_water_title => 'Vøtu Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Tíð at drekka eitt frískt glas av vatni! (_PH_0__)';
  }

  @override
  String get reminders_weight_title => 'Vikuliga innviging ⚖️ .';

  @override
  String reminders_weight_body(Object time) {
    return 'Fylg við tínum vikuligu kropsmátingum á Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Songartíð Vind-niður 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Slappa av og fyrireika teg til ein hvílandi svøvn ( $time ).';
  }

  @override
  String get onboard_welcome => 'Vælkomin til Bloomi';

  @override
  String get onboard_sub =>
      'Tín vinarligi, offline-fyrsti heilsu- og kostfylgjari.';

  @override
  String get onboard_get_started => 'Kom í gongd';

  @override
  String get onboard_sign_in => 'Rita inn';

  @override
  String get onboard_skip => 'Hoppa';

  @override
  String get onboard_choose_goal => 'Hvat er títt fremsta trivnaðarmál?';

  @override
  String get onboard_goal_weight_loss => 'Blítt vekttap';

  @override
  String get onboard_goal_muscle => 'Muskelvinningur og styrki';

  @override
  String get onboard_goal_energy => 'Daglig orka og lívsmegi';

  @override
  String get onboard_goal_habits => 'Sunn hugsandi kost';

  @override
  String get onboard_about_you => 'Fortel okkum um teg sjálvan';

  @override
  String get onboard_lifestyle => 'Tín gerandisdagur';

  @override
  String get onboard_permissions_title => 'Loyvi og skipanaratgongd';

  @override
  String get onboard_permissions_sub =>
      'Gev atgongd til synkroniseringsstig, venjingar og áminningar.';

  @override
  String get onboard_plan_ready_title => 'Tín sersniðgivna ætlan er klár!';

  @override
  String get onboard_plan_ready_sub =>
      'Vit hava gjørt eina blíða, persónliga kost- og vælveruvegakort júst til tín.';

  @override
  String get onboard_enter_bloomi => 'Skriva Bloomi';

  @override
  String get insights_weekly_report => 'Vikuliga vælveru Samandráttur';

  @override
  String insights_best_day(Object day) {
    return 'Besti samsvarsdagur: $day';
  }

  @override
  String get insights_streaks_badges => 'Stríkur og málsteinar';

  @override
  String insights_unlocked_on(Object date) {
    return 'Læst upp á $date';
  }

  @override
  String get insights_keep_going => 'Haldið áfram við fantastisku gongdini!';

  @override
  String get widgets_title => 'Widgets á heimasíðuni';

  @override
  String widgets_active_count(Object count) {
    return 'Virk smálutir: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Vælverudepilin';

  @override
  String get widgets_steps_title => 'Stig og virkin ringur';

  @override
  String get widgets_water_title => 'Fuktføðing Skjótt logg';

  @override
  String get widgets_mascot_title => 'Bloomi maskottfylgjari';

  @override
  String get wear_os_title => 'Ver í OS snildfonur';

  @override
  String get wear_os_connected => 'Samband við Watch';

  @override
  String get wear_os_sync => 'Samskipa klokkudátur';

  @override
  String get theme_title => 'Útsjónd og tema';

  @override
  String get theme_mode => 'Temastilling';

  @override
  String get theme_light => 'Ljós';

  @override
  String get theme_dark => 'Myrkt';

  @override
  String get theme_system => 'Forsett skipan';

  @override
  String get theme_background_palette => 'Bakgrundspaletta';

  @override
  String get units_title => 'Mátieindir';

  @override
  String get units_metric => 'Mál (kg, cm, ml)';

  @override
  String get units_imperial => 'Keisara (pund, í, fl oz)';

  @override
  String get home_unable_load => 'Tað ber ikki til at heinta stýriborðið';

  @override
  String get home_health_permission_req => 'Loyvi til heilsusamband krevst';

  @override
  String get home_health_permission_desc =>
      'Bloomi krevur loyvi frá Health Connect til at draga verulig stig, hjartafrekvens og synkronisera fartelefon-widgets í sanntíð.';

  @override
  String get home_allow_health => 'Loyva Heilsusambandi';

  @override
  String get home_ready_mindful_day => 'Klárur til ein hugsandi dag? ✨';

  @override
  String get home_quick_add => 'Skjótt legg til';

  @override
  String get home_live_gps => 'Beinleiðis GPS';

  @override
  String get home_calories_remaining_label => 'KALORIUR EFTIR';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Etið: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Krana til Vatnsporing 💧';

  @override
  String get home_water_goal_reached => 'Dagliga málið nátt 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml til dagliga markið';
  }

  @override
  String get home_details => 'Smálutir';

  @override
  String get home_upgrade_plan_desc =>
      'Dagfør fyri at læsa upp persónlig daglig mál og AI-ætlan';

  @override
  String get home_unlock => 'Læs upp 👑';

  @override
  String get home_quick_log_hint => 'Skráset skjótt eina vælverufrágreiðing';

  @override
  String get food_serving_size => 'Portiónsstødd';

  @override
  String get food_serving_grams => 'Servera (g)';

  @override
  String get food_number_servings => 'Tal av portiónum';

  @override
  String get food_calories_per_serving => 'Kaloriur í hvørjari portión';

  @override
  String get food_recipe_ingredients => 'Tilfar';

  @override
  String get food_recipe_add_ingredient => 'Koyr tilfar í';

  @override
  String get food_recipe_directions => 'Vegleiðing og viðmerkingar';

  @override
  String get food_recipe_total => 'Samlað uppskriftskost';

  @override
  String get food_recipe_per_serving => 'Per portión kost';

  @override
  String get food_recipe_saved_toast =>
      'Sersniðgivin matur bjargaður væleydnaður!';

  @override
  String get food_barcode_found => 'Vøra funnin!';

  @override
  String get food_barcode_not_found_desc =>
      'Vit funnu ikki hesa strikukotuna í opna dátugrunninum. Tú kanst leggja tað afturat sum sersniðgivnan mat.';

  @override
  String get food_add_custom_btn => 'Legg sersniðgivnan mat til';

  @override
  String get food_scan_again => 'Skanna aftur';

  @override
  String get food_review_items => 'Ummæli uppdagaðar matvørur';

  @override
  String get food_review_hint =>
      'Stilla nøgdir ella tak burtur óviðurkendar lutir';

  @override
  String get food_log_selected => 'Logg Útvaldar matvørur';

  @override
  String get food_favourites_title => 'Yndismatvørur';

  @override
  String get food_recent_title => 'Nýggjari matvøra';

  @override
  String get food_no_favourites =>
      'Eingin yndismatur enn. Trýst hjarta á nakran mat at spara her.';

  @override
  String get food_no_recents => 'Ongin nýliga loggaður matvørur funnin.';

  @override
  String get food_nutrition_details_title => 'Daglig kost smálutir';

  @override
  String get food_macro_protein_label => 'Protein niðurbróting';

  @override
  String get food_macro_carbs_label => 'Kulhydratir niðurbróting';

  @override
  String get food_macro_fat_label => 'Feittniðurbróting';

  @override
  String get food_macro_fiber_label => 'Fibur niðurbróting';

  @override
  String get food_daily_target_comparison => 'Marksamanbering';

  @override
  String food_target_label(Object target) {
    return 'Mark: $target';
  }

  @override
  String get food_edit_entry => 'Rætta dagbókafrásøgn';

  @override
  String get food_delete_entry => 'Strika uppslag';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kakal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current av $target ml';
  }

  @override
  String get water_intake_history => 'Vatnloggar í dag';

  @override
  String get water_no_logs_today =>
      'Einki vatn loggað enn í dag. Hydratera og trýst á ein skjótan legg til knøtt!';

  @override
  String get water_adjust_goal => 'Stilla dagliga málið';

  @override
  String get health_connect_banner => 'Samband við Heilsusamband';

  @override
  String get health_vitals_summary => 'Daglig heilsulívsneyðug';

  @override
  String get health_latest_heart_rate => 'Nýggjasti hjartafrekvensur';

  @override
  String get health_latest_bp => 'Blóðtrýst';

  @override
  String get health_latest_spo2 => 'Blóðsúrevni';

  @override
  String get health_latest_glucose => 'Blóðsukur';

  @override
  String get health_latest_weight => 'Vekt';

  @override
  String get health_latest_sleep => 'Svøvntíð';

  @override
  String get health_add_manual => 'Legg manuella máting til';

  @override
  String get health_history_trends => 'Søguligar gongdir';

  @override
  String get health_sync_success => 'Heilsudátur synkroniseraðar væl!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours klst $mins minuttir';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm slag/min';
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
  String get health_devices_title => 'Sambandstólar og slitsterkar lutir';

  @override
  String get health_devices_desc =>
      'Stjóra paraðum snildfonum, fitness sporarum og heilsufølarum.';

  @override
  String get health_workout_editor_title => 'Rætta venjing';

  @override
  String get health_workout_name_label => 'Navn á venjing';

  @override
  String get health_workout_duration_label => 'Tíðarskeið (minuttir)';

  @override
  String get health_workout_calories_label => 'Mettar kaloriur (kcal)';

  @override
  String get health_workout_date_label => 'Dagfesting og klokkutíð';

  @override
  String get plan_daily_wellness_roadmap => 'Títt persónliga vegakort';

  @override
  String get plan_morning_routine => 'Morgunrutina';

  @override
  String get plan_afternoon_routine => 'Vælvera á middegi';

  @override
  String get plan_evening_routine => 'Kvøldvindurin';

  @override
  String get plan_coach_badge => 'Bloomi AI venjari';

  @override
  String get plan_weekly_overview => '7-daga vælverufokus';

  @override
  String get plan_targets_title => 'Vælverumál og mál';

  @override
  String get plan_calorie_budget_label => 'Daglig kaloriujáttan';

  @override
  String get plan_water_budget_label => 'Dagliga vatnmark';

  @override
  String get plan_step_budget_label => 'Dagliga stigmálið';

  @override
  String get plan_macro_split_label => 'Makroføðsluevnislutfall';

  @override
  String get profile_personal_details => 'Persónligar upplýsingar';

  @override
  String get profile_body_stats => 'Kropsmátingar';

  @override
  String get profile_app_preferences => 'Innstillingar og appinnstillingar';

  @override
  String get profile_edit_name_hint => 'Títt navn';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Hædd (_PH_0__)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Vekt (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Aldur';

  @override
  String get profile_gender_male => 'Maður';

  @override
  String get profile_gender_female => 'Kvinna';

  @override
  String get profile_gender_other => 'Annað / Helst ikki siga';

  @override
  String get profile_activity_sedentary => 'Sitandi (Lítil til eingin venjing)';

  @override
  String get profile_activity_light => 'Lætt virkin (1-3 dagar/viku)';

  @override
  String get profile_activity_moderate => 'Miðal virkin (3-5 dagar/viku)';

  @override
  String get profile_activity_very => 'Sera virkin (6-7 dagar/viku)';

  @override
  String get settings_wear_os_header => 'Brúka OS fylgjara app';

  @override
  String get settings_wear_os_desc =>
      'Set Bloomi flísina og fløkjuna upp á títt Wear OS uri fyri at hyggja at kalorium, vatni og stigum.';

  @override
  String get settings_widgets_header => 'Samvirkin Android smálutir';

  @override
  String get settings_widgets_desc =>
      'Pinna real-time widgets á heimasíðuna á tínari eind fyri at fáa dagføringar beinanvegin.';

  @override
  String get settings_about_header => 'Um Bloomi';

  @override
  String get settings_about_version => 'Útgáva 1.0.0';

  @override
  String get settings_about_build => 'Bygg 100';

  @override
  String get settings_about_credits =>
      'Handverkað við umsorgan fyri hugsandi, sunnum lívi.';

  @override
  String get settings_terms_header => 'Treytir og fortreytir';

  @override
  String get settings_privacy_header => 'Persónsverndarpolitikkur';

  @override
  String get settings_delete_header => 'Strika kontu og dátur';

  @override
  String get settings_delete_warning =>
      'Henda handlingin kann ikki ógildast. Allar tínar máltíðir, venjingar, lívsneyðugar vørur og profilur verða strikaðar varandi.';

  @override
  String get settings_delete_confirm_btn => 'Strika varandi';

  @override
  String get onboard_welcome_headline => 'Vælkomin í Bloomi ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'Blíð, hugsandi vælverufylgja, sum er sniðgivin kring títt lív.';

  @override
  String get onboard_step_about => 'Um teg';

  @override
  String get onboard_step_goals => 'Tíni mál';

  @override
  String get onboard_step_lifestyle => 'Dagligir vanar';

  @override
  String get onboard_step_permissions => 'Loyvi';

  @override
  String get onboard_step_plan => 'Klárt!';

  @override
  String get onboard_health_connect_perm => 'Heilsasamband Atgongd';

  @override
  String get onboard_step_sensors_perm => 'Stigteljarafølari';

  @override
  String get onboard_notif_perm => 'Mindful áminningar og fráboðanir';

  @override
  String get onboard_camera_perm => 'Myndatól (Strikukoda og matskannari)';

  @override
  String get onboard_grant_permissions => 'Gev loyvi';

  @override
  String get onboard_continue_dashboard => 'Opna stýriborð';

  @override
  String get notif_channel_hydration_name => 'Fuktgevingarnudgar';

  @override
  String get notif_channel_hydration_desc =>
      'Blíðar vatnáminningar gjøgnum dagin';

  @override
  String get notif_channel_nutrition_name => 'Áminningar um máltíð og kost';

  @override
  String get notif_channel_nutrition_desc =>
      'Áminningar um morgunmat, døgurða og kvøldmat';

  @override
  String get notif_channel_steps_name => 'Stig Mílsteinar';

  @override
  String get notif_channel_steps_desc =>
      'Hátíðarhald tá ið nátt verður daglig stigmál';

  @override
  String get notif_channel_vitals_name => 'Heilsu- og lívsneyðugar kanningar';

  @override
  String get notif_channel_vitals_desc => 'Áminningar um vekt og songartíð';

  @override
  String get notif_action_log_water => '💧 Logg +250ml';

  @override
  String get notif_action_snooze => 'Hvíla 15m';

  @override
  String get notif_action_log_meal => '🥗 Loggmáltíð';

  @override
  String get language => 'Mál';

  @override
  String get share => 'Deil';

  @override
  String common_days(Object count) {
    return '$count fyri døgum síðan';
  }
}
