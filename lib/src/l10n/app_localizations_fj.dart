// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Fijian (`fj`).
class AppLocalizationsFj extends AppLocalizations {
  AppLocalizationsFj([String locale = 'fj']) : super(locale);

  @override
  String get app_name => 'Vula';

  @override
  String get nav_home => 'Vale';

  @override
  String get nav_today => 'Nikua';

  @override
  String get nav_plan => 'Tuvatuva';

  @override
  String get nav_food => 'Kakana';

  @override
  String get nav_food_diary => 'Dairi ni kakana';

  @override
  String get nav_workout => 'Log de entrenamiento';

  @override
  String get nav_health => 'Bulabula';

  @override
  String get nav_profile => 'iTukutuku';

  @override
  String get save => 'Maroroya';

  @override
  String get cancel => 'Bokoca';

  @override
  String get delete => 'Bokoca';

  @override
  String get edit => 'Edita';

  @override
  String get done => 'Sa oti';

  @override
  String get close => 'Voleka';

  @override
  String get back => 'Lesu tale';

  @override
  String get next => 'Tarava';

  @override
  String get continue_btn => 'Tomana tiko';

  @override
  String get confirm => 'Vakadeitaka';

  @override
  String get search => 'Vakasaqara';

  @override
  String get filter => 'Vakasavasavataka';

  @override
  String get all => 'Taucoko';

  @override
  String get active => 'Gugumatua';

  @override
  String get today => 'Nikua';

  @override
  String get yesterday => 'E nanoa';

  @override
  String get tomorrow => 'Ni mataka';

  @override
  String get add => 'Kuria';

  @override
  String get remove => 'Kauta laivi';

  @override
  String get refresh => 'Vakavoui';

  @override
  String get retry => 'Tovolea tale';

  @override
  String get error => 'Cala';

  @override
  String get success => 'Rawaka';

  @override
  String get loading => 'Vakavodoki tiko...';

  @override
  String get no_data => 'Sega ni dua na itukutuku';

  @override
  String get offline => 'Mode ni sega ni initaneti';

  @override
  String get offline_sub =>
      'Na veisau ena vakatautauvatataki ena gauna e semati tale kina';

  @override
  String get undo => 'Vakasuka';

  @override
  String get portion => 'Wase';

  @override
  String get quantity => 'Levu';

  @override
  String get unit => 'iWasewase';

  @override
  String get clear => 'Matata';

  @override
  String get select => 'Digitaka';

  @override
  String get apply => 'Vakayagataka';

  @override
  String get reset => 'Vakavoutaka';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Io';

  @override
  String get no => 'Sega';

  @override
  String get optional => 'Digidigi';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protini';

  @override
  String get carbs => 'Kaboni';

  @override
  String get fat => 'Uro';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Wai';

  @override
  String get steps => 'Na ikalawa';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'paudi';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'ena';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'auwa';

  @override
  String get minutes => 'miniti';

  @override
  String get serving => 'Veiqaravi';

  @override
  String get servings => 'Veiqaravi';

  @override
  String get serving_size => 'Levu ni veiqaravi';

  @override
  String get per_100g => 'ena 100g';

  @override
  String get india => 'Idia';

  @override
  String get asia => 'Esia';

  @override
  String get europe => 'Iurope';

  @override
  String get middle_east => 'Tokalau e Loma';

  @override
  String get africa => 'Aferika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Vale';

  @override
  String get home_greeting_morning => 'Ni Mataka Vinaka';

  @override
  String get home_greeting_afternoon => 'Siga Vinaka';

  @override
  String get home_greeting_evening => 'Vakayakavi Vinaka';

  @override
  String get home_streak_title => 'Streak ni Senikau';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '_PH_0__ siga ni veitaravi',
      one: '1 na siga',
      zero: '0 na siga',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Sa kama';

  @override
  String get home_calories_budget => 'Na ilavo ni kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal vo tiko';
  }

  @override
  String get home_water_title => 'Vakawai ena veisiga';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current/$target ml';
  }

  @override
  String get home_steps_title => 'Na ikalawa e lakovi';

  @override
  String get home_quick_actions => 'Cakacaka Totolo';

  @override
  String get home_log_meal => 'Kakana ni Log';

  @override
  String get home_log_water => 'Wai ni Log';

  @override
  String get home_log_workout => 'Vakatovotovo ni Log';

  @override
  String get home_log_weight => 'Bibi ni Log';

  @override
  String get home_insights_title => 'Na Vakasama Nikua';

  @override
  String get home_quote =>
      'Na digidigi bulabula lalai e bulia na veisau bulabula.';

  @override
  String get home_ai_coach_tip => 'Dauniveivakatavulici ni AI ni Bloomi';

  @override
  String get home_surroundings => 'Na veivanua wavolita kei na cagi';

  @override
  String get home_notifications => 'Veivakatakila';

  @override
  String get home_daily_score => 'Sikoa ni Bula Raraba ni Veisiga';

  @override
  String get home_view_all => 'Raica kece';

  @override
  String get food_diary_title => 'Dairi ni kakana';

  @override
  String get food_breakfast => 'Kakana ni mataka';

  @override
  String get food_lunch => 'Kakana';

  @override
  String get food_dinner => 'Kana ni yakavi';

  @override
  String get food_snacks => 'Kakana';

  @override
  String get food_add_food => 'Kuria na Kakana';

  @override
  String get food_edit_food => 'Edita na kakana';

  @override
  String get food_add_breakfast => 'Kuria na kakana ni mataka';

  @override
  String get food_add_lunch => 'Kuria na kakana';

  @override
  String get food_add_dinner => 'Kuria na kana';

  @override
  String get food_add_snack => 'Kuria na kakana lailai';

  @override
  String get food_total_calories => 'Kalori taucoko';

  @override
  String get food_empty_meal =>
      'Se bera ni dua na kakana e volai me baleta na kakana oqo';

  @override
  String get food_empty_diary => 'Sega ni dua na kakana e volai ena siga oqo';

  @override
  String get food_log_first_meal =>
      'Tap + me volai kina na imatai ni nomu kakana kamikamica .';

  @override
  String get food_quick_add => 'Vakacuruma totolo';

  @override
  String get food_search_hint => 'Busca platos, frutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Kakana vakaitaukei & Recipe';

  @override
  String get food_scan_barcode => 'Sikena na Barkode';

  @override
  String get food_camera_scan => 'AI ni vakadidike ni kakana';

  @override
  String get food_recent => 'Kakana vou';

  @override
  String get food_favourites => 'Taleitaki';

  @override
  String get food_macro_summary => 'Na veiwasei ni kakana lelevu';

  @override
  String get food_delete_meal_confirm =>
      'O sa vakadeitaka ni o vinakata mo kauta laivi na iyaya oqo?';

  @override
  String get food_item_deleted => 'Sa kau tani na kakana';

  @override
  String get food_remaining => 'vo tiko';

  @override
  String get food_consumed => 'vakayagataki';

  @override
  String food_of_target(Object target) {
    return 'de $target kilokali';
  }

  @override
  String get foodSearch_title => 'Vakasaqara na Kakana';

  @override
  String get foodSearch_scan_barcode => 'Sikena na Barkode';

  @override
  String get foodSearch_take_photo => 'Snap na itaba ni kakana';

  @override
  String get foodSearch_custom_food => 'Cakava na kakana vakaitaukei';

  @override
  String get foodSearch_recent_searches => 'Vakasaqaqara se qai oti toka ga';

  @override
  String get foodSearch_popular => 'Kakana kilai levu';

  @override
  String get foodSearch_no_results =>
      'Sega ni dua na kakana e veiganiti kei na nomu vakasaqaqara';

  @override
  String get barcode_title => 'Sikena ni Barcode';

  @override
  String get barcode_align =>
      'Vakadodonutaka na barcode ena loma ni frame ni itaba';

  @override
  String get barcode_not_found => 'Na iyaya e sega ni kune ena itukutuku';

  @override
  String get barcode_premium_feature =>
      'Barcode vakadidike sa vakarautaki tu ena Bloomi Pro .';

  @override
  String get camera_title => 'AI ni vakadidike ni kakana';

  @override
  String get camera_tap_hint => 'Taura e dua na itaba matata ni nomu kakana';

  @override
  String get camera_analysing => 'Vakadikeva na peleti ni kakana...';

  @override
  String get camera_detected => 'Na veika e kunei';

  @override
  String get camera_flash => 'Veisautaka na cina';

  @override
  String get camera_retake => 'Taura tale na itaba';

  @override
  String get camera_confirm_food => 'Vakadeitaka na iyaya';

  @override
  String get customFood_title => 'Kakana vakaitaukei & Recipe';

  @override
  String get customFood_name_hint => 'Na yaca ni kakana se iyaya';

  @override
  String get customFood_calories_hint => 'Kalori (kalori)';

  @override
  String get customFood_protein_hint => 'Protini (g)';

  @override
  String get customFood_carbs_hint => 'Kaboni (g)';

  @override
  String get customFood_fat_hint => 'Uro (g)';

  @override
  String get customFood_save => 'Maroroya na ivakarau';

  @override
  String get water_tracker_title => 'Dauvakamuri ni wai';

  @override
  String get water_daily_target => 'Takete ni Vakasuasuataki ni Veisiga';

  @override
  String get water_logged_today => 'Logged Nikua';

  @override
  String get water_add_glass => '+250 mililita na iloilo';

  @override
  String get water_add_bottle => '+500 mililita na tavaya';

  @override
  String get water_custom_amount => 'iLavo Vakatautauvata';

  @override
  String get water_reminder_tip =>
      'Gunu wai vakawasoma ena siga taucoko me rawa ni tudei na kaukauwa.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logado $amount ml de agua 💧';
  }

  @override
  String get workout_title => 'Log de entrenamiento';

  @override
  String get workout_add_exercise => 'Kuria na cakacaka';

  @override
  String get workout_cardio => 'Na uto';

  @override
  String get workout_strength => 'Vakaukauwataki';

  @override
  String get workout_yoga => 'Yoga & Veisau';

  @override
  String get workout_duration => 'Balavu';

  @override
  String get workout_intensity => 'Vakabibi';

  @override
  String get workout_calories_burned => 'Kalori e kama';

  @override
  String get workout_empty => 'Sega ni dua na cakacaka e volai nikua';

  @override
  String get workout_save_success => 'Workout salvado con éxito!';

  @override
  String get workout_type => 'Mataqali cakacaka';

  @override
  String get workout_notes => 'iTukutuku kei na Vakasama';

  @override
  String get health_overview_title => 'Bulabula & Veika Bibi';

  @override
  String get health_heart_rate => 'Totolo ni Loma';

  @override
  String get health_blood_oxygen => 'Okisijeni ni Dra (SpO2)';

  @override
  String get health_blood_pressure => 'Na Toso ni Dra';

  @override
  String get health_blood_glucose => 'Suka ena Dra';

  @override
  String get health_body_temperature => 'Na katakata ni yago';

  @override
  String get health_sleep_tracking => 'Vakamuria na Moce';

  @override
  String get health_weight_tracking => 'Bibi & ibulibuli ni yago';

  @override
  String get health_waist_hip => 'Ratio ni tolo ki na iqaqalo';

  @override
  String get health_devices_hub => 'Na iyaya kei na matailoilo vuku';

  @override
  String get health_sync_now => 'Vakaduavatataka na itukutuku ni bula';

  @override
  String health_last_synced(Object time) {
    return 'iOtioti ni veitaratara: $time';
  }

  @override
  String get health_manual_entry => 'iVoladusidusi ni Bula';

  @override
  String get health_metric_detail => 'Na itukutuku matailalai';

  @override
  String get health_connected_sensors => 'Sensor ni bula e semati';

  @override
  String get plan_title => 'Tuvatuva ni Veisiga';

  @override
  String get plan_weekly_title => 'Tuvatuva ni Bula Raraba ni Veimacawa';

  @override
  String get plan_calorie_target => 'Takete ni kalori';

  @override
  String get plan_water_target => 'Takete ni wai';

  @override
  String get plan_step_target => 'Takete ni Kalawa';

  @override
  String get plan_sleep_target => 'Takete ni Moce';

  @override
  String get plan_meal_suggestions => 'Vakatutu ni kakana';

  @override
  String get plan_healthy_habits => 'Na itovo bulabula kei na ivakasala';

  @override
  String get plan_coach_advice =>
      'Vakatutu ni dauniveivakatavulici ni Bloomi AI';

  @override
  String get plan_generated_title => 'Tuvatuva ni Veisiga Vakatamata';

  @override
  String get profile_title => 'iTukutuku';

  @override
  String get profile_edit => 'Edita na itukutuku';

  @override
  String get profile_name => 'Yaca';

  @override
  String get profile_age => 'Yabaki';

  @override
  String get profile_gender => 'Tagane se yalewa';

  @override
  String get profile_height => 'Cecere';

  @override
  String get profile_weight => 'Bibi';

  @override
  String get profile_goal => 'Takete taumada';

  @override
  String get profile_activity_level => 'iVakatagedegede ni Cakacaka';

  @override
  String get profile_stats => 'Na noqu iwiliwili ni bula vinaka';

  @override
  String get profile_saved => 'Sa vakavoutaki vinaka na itukutuku';

  @override
  String get profile_bmi => 'Na ivakatakilakila ni levu ni yago (BMI)';

  @override
  String get profile_membership => 'Lewenilotu';

  @override
  String get settings => 'Tuvatuva';

  @override
  String get preferences_habits => 'VEIKA E LOMANA & IVAKAVUVULI';

  @override
  String get appearance_theme => 'iRairai kei na Ulutaga';

  @override
  String get appearance_theme_sub =>
      'Butobuto, Rarama, ivakarau ni ivakarau & Digidigi ni itukutuku ni App';

  @override
  String get permissions => 'Veivakadonui & Rawa ni Sistema';

  @override
  String get permissions_sub =>
      'Veisemati ni bula, Sensor ni ikalawa, GPS, itukutuku & itaba';

  @override
  String get reminders_notifications => 'Veivakananumi kei na itukutuku';

  @override
  String get reminders_sub =>
      'Gauna ni kana, wai, bibi ni jeke-ena & veivakananumi ni gauna ni moce';

  @override
  String get units_of_measurement => 'iunite ni veivakarautaki';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) se vakaturaga (paudi, pie/ena, oz)';

  @override
  String get app_language => 'Vosa ni App';

  @override
  String get language_sub =>
      'Vakavalagi, हिन्दी (Hindi), Vakavalagi & 195+ vosa ni vuravura raraba';

  @override
  String get home_screen_widgets => 'Widget ni sikirini ni vale';

  @override
  String get widgets_sub =>
      'Widget ni Android bula: Hub, Kalawa, Wai, Kakana & Mascot';

  @override
  String get wear_os_watch_app => 'Vakayagataka na OS sarasara App';

  @override
  String get wear_os_sub =>
      'Itokani ni matailoilo vuku, taile, leqa & bula bibi';

  @override
  String get goals_wellness => 'TAKETE & VEIVAKADEITAKI NI BULA VINAKA';

  @override
  String get nutrition_targets => 'Takete ni kakana & Wasei ni Macro';

  @override
  String get nutrition_targets_sub =>
      'Takete ni kalori, protein, carbs, uro & takete ni wai';

  @override
  String get weekly_recap => 'Recap ni Bula Raraba ni Veimacawa';

  @override
  String get weekly_recap_sub =>
      '7-siga kalori ivakatautauvata, macro ratio & siga vinaka duadua';

  @override
  String get streaks_milestones => 'Veika kei na Maile';

  @override
  String get streaks_sub =>
      'Na veisenikau bulabula, ivakatakilakila kei na rawaka';

  @override
  String get connected_devices => 'VEIQARAVI VEIWEKANI & EKOSISTEMA';

  @override
  String get devices_hub => 'Na iyaya kei na matailoilo vuku';

  @override
  String get devices_hub_sub =>
      'Veisemati ni bula, Vakaraica na kalokalo, Vakaraica na pixel, Garmin';

  @override
  String get surroundings_weather => 'Na veika bula wavoliti keda kei na draki';

  @override
  String get surroundings_sub =>
      'Na ivakarau ni cagi (AQI), ivakatakilakila ni UV kei na ivakasala ni draki';

  @override
  String get bloomi_pro => 'Sausaumi ni Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI ituvatuva ni dauniveivakatavulici, 5 na iyaya ni sikirini ni vale kei na vakamuri ni bibi';

  @override
  String get about_security => 'ME BALETA & VEITAQOMAKI';

  @override
  String get about_bloomi => 'Me baleta na Bloomi';

  @override
  String get about_bloomi_sub =>
      'Tara na ivakamacala, vakadewa, ivakatakilakila';

  @override
  String get privacy_policy => 'iTuvatuva ni itukutuku';

  @override
  String get privacy_policy_sub =>
      'Offline-matai, ena-iyaya ni itukutuku ni droini';

  @override
  String get terms_conditions => 'Na ivakarau kei na ituvatuva';

  @override
  String get terms_conditions_sub =>
      'Na ivakarau ni veiqaravi kei na idusidusi ni bula vinaka';

  @override
  String get delete_account => 'Bokoca na akaude kei na itukutuku';

  @override
  String get delete_account_sub =>
      'Bokoca rawa na itukutuku ni SQLite ni vanua kei na veivakadeitaki ni o';

  @override
  String get healthy_habits => 'Tara cake na itovo ni bula vinaka ka tudei';

  @override
  String get all_logs => 'Na noqu itukutuku vakamuri & itukutuku';

  @override
  String get search_language =>
      'Vakasaqara ena vosa se volavola vakaitaukei...';

  @override
  String get languages_available => 'Vosa e tiko';

  @override
  String get no_matching_languages => 'E sega ni kune e dua na vosa veiganiti';

  @override
  String get try_searching =>
      'Tovolea mo vakasaqara ena volavola ni vanua se sipeli ni vosa vakavavalagi';

  @override
  String get partially_translated => 'Vakadewataki vakatikina';

  @override
  String get complete_translation => 'Taucoko';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Vosa vakarautaki ki na $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'Vanua & Vanua';

  @override
  String get surroundings_aqi => 'Index ni vinaka ni cagi';

  @override
  String get surroundings_uv => 'iTukutuku ni UV';

  @override
  String get surroundings_temp => 'Katakata';

  @override
  String get surroundings_humidity => 'Na katakata';

  @override
  String get surroundings_hydration_advice =>
      'Mo dau vakasuasuataki vinaka ena ituvaki ni draki ena gauna oqo.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Vakasaqara na Kakana';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Kuria na wai';

  @override
  String get food_quick_custom => 'Kakana vakaitaukei';

  @override
  String get surroundings_good => 'Vinaka';

  @override
  String get surroundings_moderate => 'Veiraurau';

  @override
  String get surroundings_unhealthy => 'Sega ni bulabula';

  @override
  String get notifications_title => 'Veivakatakila & Veivakasalataki';

  @override
  String get notifications_empty => 'Sega ni dua na itukutuku vou';

  @override
  String get notifications_mark_read => 'Vakatakilakilataka kece me Wilika';

  @override
  String get notifications_clear => 'Bokoca kece';

  @override
  String get reminders => 'Tuvatuva ni Vakananumi';

  @override
  String get notifications => 'Veivakatakila';

  @override
  String get reminders_breakfast_title => 'Vakananumi ni kakana ni mataka 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Vinaka vakalevu! Gauna ni dua na kakana ni mataka veivakabulabulataki ena $time .';
  }

  @override
  String get reminders_lunch_title => 'Recuerdo de Almuerzo 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Cegu ka marautaka e dua na kakana veiganiti, vakasama ena $time .';
  }

  @override
  String get reminders_dinner_title => 'Vakananumi ni Kana 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Gauna ni dua na kana magiti mamada ka veivakacegui ena $time .';
  }

  @override
  String get reminders_water_title => 'Hidratación 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Gauna me gunuvi kina e dua na bilo wai vou! (_PH_0__)';
  }

  @override
  String get reminders_weight_title => 'Peso semanal ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Vakamuria na nomu ivakarau ni yago ena veimacawa ena Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Moce Cagi-abaso 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Vakacegu ka vakavakarau ki na dua na moce vakacegu ( $time ).';
  }

  @override
  String get onboard_welcome => 'Vinaka vakalevu na Bloomi';

  @override
  String get onboard_sub =>
      'Na nomu itokani, offline-matai ni bula kei na kakana.';

  @override
  String get onboard_get_started => 'Tekivu';

  @override
  String get onboard_sign_in => 'Saini';

  @override
  String get onboard_skip => 'Lako';

  @override
  String get onboard_choose_goal =>
      'Na cava na nomu inaki taumada ni bula vinaka?';

  @override
  String get onboard_goal_weight_loss => 'Vakayalia na bibi malumu';

  @override
  String get onboard_goal_muscle => 'Rawa ni masela kei na kaukauwa';

  @override
  String get onboard_goal_energy => 'Na kaukauwa ni veisiga kei na bulabula';

  @override
  String get onboard_goal_habits => 'Kana Vakasama Bulabula';

  @override
  String get onboard_about_you => 'Tukuna vei keimami na veika e baleti iko .';

  @override
  String get onboard_lifestyle => 'Na Nomu iTuvatuva ni Veisiga .';

  @override
  String get onboard_permissions_title => 'Veivakadonui & Rawa ni Sistema';

  @override
  String get onboard_permissions_sub =>
      'Solia na curu ki na ikalawa ni sync, cakacaka, kei na veivakananumi.';

  @override
  String get onboard_plan_ready_title =>
      'Sa vakarau tu na nomu ituvatuva ni itovo!';

  @override
  String get onboard_plan_ready_sub =>
      'Keitou a bulia e dua na mape ni gaunisala ni kakana malumu, vakatamata kei na bula vinaka me baleti iko ga.';

  @override
  String get onboard_enter_bloomi => 'Vakacuruma na Bloomi';

  @override
  String get insights_weekly_report => 'Recap ni Bula Raraba ni Veimacawa';

  @override
  String insights_best_day(Object day) {
    return 'Siga ni Veivakadeitaki Vinaka Duadua: $day';
  }

  @override
  String get insights_streaks_badges => 'Veika kei na Maile';

  @override
  String insights_unlocked_on(Object date) {
    return 'Dolavi ena $date';
  }

  @override
  String get insights_keep_going => 'Tomana tikoga na toso vakasakiti!';

  @override
  String get widgets_title => 'Widget ni sikirini ni vale';

  @override
  String widgets_active_count(Object count) {
    return 'Na iyaya ni cakacaka: $count';
  }

  @override
  String get widgets_hub_title => 'Bula Bula Raraba ni Bloomi';

  @override
  String get widgets_steps_title => 'Na ikalawa & Mama ni cakacaka';

  @override
  String get widgets_water_title => 'Log totolo ni wai';

  @override
  String get widgets_mascot_title => 'Veitokani ni Mascot ni Bloomi';

  @override
  String get wear_os_title => 'Daramaka na matailoilo vuku ni OS';

  @override
  String get wear_os_connected => 'Semati ki na Watch';

  @override
  String get wear_os_sync => 'Vakaduavatataka na itukutuku ni sarasara';

  @override
  String get theme_title => 'iRairai kei na Ulutaga';

  @override
  String get theme_mode => 'Mode ni ulutaga';

  @override
  String get theme_light => 'Rarama';

  @override
  String get theme_dark => 'Butobuto';

  @override
  String get theme_system => 'ivakarau ni ivakarau';

  @override
  String get theme_background_palette => 'Paleti ni taudaku';

  @override
  String get units_title => 'iunite ni veivakarautaki';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Vakatui (paudi, ena, oz)';

  @override
  String get home_unable_load => 'Sega ni rawa ni vakavodoki na papa';

  @override
  String get home_health_permission_req =>
      'E gadrevi na veivakadonui ni veitaratara ni bula';

  @override
  String get home_health_permission_desc =>
      'Bloomi e gadrevi kina na veivakadonui ni Bula ni Veisemati me dreta na ikalawa dina, na ivakarau ni yalo, kei na sync na widgets ni vale ni talevoni veikauyaki ena gauna dina.';

  @override
  String get home_allow_health => 'Laiva na Veisemati ni Bula';

  @override
  String get home_ready_mindful_day =>
      'Vakarau tu ki na dua na siga ni vakasama? ✨';

  @override
  String get home_quick_add => 'Vakacuruma totolo';

  @override
  String get home_live_gps => 'GPS bula';

  @override
  String get home_calories_remaining_label => 'KALORI E VO TU';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kania: $consumed /$target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap para trazador de agua 💧';

  @override
  String get home_water_goal_reached => 'Takete ni veisiga sa rawati 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ki na takete ni veisiga';
  }

  @override
  String get home_details => 'Matailalai';

  @override
  String get home_upgrade_plan_desc =>
      'Vakatorocaketaka me dolava na takete ni veisiga vakatamata & ituvatuva ni AI';

  @override
  String get home_unlock => 'Dolava 👑';

  @override
  String get home_quick_log_hint =>
      'Totolo sara na kena volai e dua na curu ni bula vinaka .';

  @override
  String get food_serving_size => 'Levu ni veiqaravi';

  @override
  String get food_serving_grams => 'Veiqaravi (g)';

  @override
  String get food_number_servings => 'Iwiliwili ni Veiqaravi';

  @override
  String get food_calories_per_serving => 'Kalori ena dua na veiqaravi';

  @override
  String get food_recipe_ingredients => 'Na veika e vakayagataki';

  @override
  String get food_recipe_add_ingredient => 'Kuria na veika e vakayagataki';

  @override
  String get food_recipe_directions => 'Veidusimaki & itukutuku';

  @override
  String get food_recipe_total => 'Na kakana taucoko ni Recipe';

  @override
  String get food_recipe_per_serving => 'Ena dua na veiqaravi ni kakana';

  @override
  String get food_recipe_saved_toast =>
      'Kakana vakaitaukei e vakabulai vinaka!';

  @override
  String get food_barcode_found => 'Sa kunei na iyaya!';

  @override
  String get food_barcode_not_found_desc =>
      'Keitou sega ni kunea rawa na barcode oqo ena itukutuku dolavi. E rawa ni o vakacuruma me vaka e dua na kakana vakaitaukei.';

  @override
  String get food_add_custom_btn => 'Vakacuruma na kakana vakaitaukei';

  @override
  String get food_scan_again => 'Sikena tale';

  @override
  String get food_review_items => 'Railesuva na kakana e kunei';

  @override
  String get food_review_hint =>
      'Veisautaka na levu se kauta laivi e dua na ka e sega ni kilai .';

  @override
  String get food_log_selected => 'Log na kakana digitaki';

  @override
  String get food_favourites_title => 'Kakana taleitaki';

  @override
  String get food_recent_title => 'Kakana vou';

  @override
  String get food_no_favourites =>
      'Sega ni dua na kakana taleitaki. Tap lomamu ena dua na kakana me maroroi eke.';

  @override
  String get food_no_recents =>
      'E sega ni kune e dua na kakana e se qai volai walega oqo.';

  @override
  String get food_nutrition_details_title =>
      'Na itukutuku matailalai ni kakana ena veisiga';

  @override
  String get food_macro_protein_label => 'Na kena vakacacani na protein';

  @override
  String get food_macro_carbs_label => 'Carbs vakacacani';

  @override
  String get food_macro_fat_label => 'Veisoliyaki ni uro';

  @override
  String get food_macro_fiber_label => 'Veivakacacani ni Fiber';

  @override
  String get food_daily_target_comparison => 'Veivakatauvatani ni Takete';

  @override
  String food_target_label(Object target) {
    return 'Takete: _PH_0__';
  }

  @override
  String get food_edit_entry => 'Edita na iVola ni Dairi';

  @override
  String get food_delete_entry => 'Bokoca na icurucuru';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kilokali';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current ni $target ml';
  }

  @override
  String get water_intake_history => 'Na Loga ni Wai Nikua .';

  @override
  String get water_no_logs_today =>
      'Se bera ni dua na wai e vakacurumi nikua. Hidrata ka tabaka e dua na ikuri ni totolo!';

  @override
  String get water_adjust_goal => 'Veisautaka na Takete ni Veisiga .';

  @override
  String get health_connect_banner => 'Semati ki na Bula Semati .';

  @override
  String get health_vitals_summary => 'Na Veika Bibi ni Bula ena Veisiga';

  @override
  String get health_latest_heart_rate => 'Totolo ni Loma Vou';

  @override
  String get health_latest_bp => 'Na Toso ni Dra';

  @override
  String get health_latest_spo2 => 'Na Okisijeni ni Dra';

  @override
  String get health_latest_glucose => 'Suka ena Dra';

  @override
  String get health_latest_weight => 'Bibi';

  @override
  String get health_latest_sleep => 'Balavu ni Moce';

  @override
  String get health_add_manual => 'Kuria na ivakarau ni ivola';

  @override
  String get health_history_trends => 'iTukutuku Makawa';

  @override
  String get health_sync_success =>
      'Sa vakatautauvatataki vinaka na itukutuku ni bula!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours auwa $mins na miniti';
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
    return '$systolic/$diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dl';
  }

  @override
  String get health_devices_title => 'Na iyaya ni veitaratara kei na iyaya';

  @override
  String get health_devices_desc =>
      'Lewa na matailoilo vuku veiwatini, dauvakadidike ni bulabula, kei na sensor ni bula.';

  @override
  String get health_workout_editor_title => 'Edita na cakacaka';

  @override
  String get health_workout_name_label => 'Yaca ni cakacaka';

  @override
  String get health_workout_duration_label => 'Balavu (miniti)';

  @override
  String get health_workout_calories_label =>
      'Kalori vakatautauvatataki (kcal)';

  @override
  String get health_workout_date_label => 'Siga kei na Gauna';

  @override
  String get plan_daily_wellness_roadmap => 'Na nomu mape ni sala vakatamata';

  @override
  String get plan_morning_routine => 'iTuvatuva ni Mataka';

  @override
  String get plan_afternoon_routine => 'Bula Vinaka ni Sigatabu';

  @override
  String get plan_evening_routine => 'Cagi-Sobu ni Yakavi';

  @override
  String get plan_coach_badge => 'Dauniveivakatavulici ni AI ni Bloomi';

  @override
  String get plan_weekly_overview => '7-Siga ni Bula Raraba';

  @override
  String get plan_targets_title => 'Takete kei na Takete ni Bula Vinaka';

  @override
  String get plan_calorie_budget_label => 'Na ilavo ni kalori ena veisiga';

  @override
  String get plan_water_budget_label => 'Takete ni Wai ena Veisiga';

  @override
  String get plan_step_budget_label => 'Takete ni Kalawa ni Veisiga';

  @override
  String get plan_macro_split_label => 'Ratio ni kakana lelevu';

  @override
  String get profile_personal_details => 'Na itukutuku ni tamata yadua';

  @override
  String get profile_body_stats => 'Na ivakarau ni yago';

  @override
  String get profile_app_preferences =>
      'Na veika e taleitaki & ituvatuva ni App';

  @override
  String get profile_edit_name_hint => 'Na yacamu .';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Cecere (_PH_0__)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Bibi (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Yabaki';

  @override
  String get profile_gender_male => 'Tagane';

  @override
  String get profile_gender_female => 'Yalewa';

  @override
  String get profile_gender_other => 'Eso tale / Vinaka me kakua ni tukuna';

  @override
  String get profile_activity_sedentary =>
      'Dabe (Lalai se sega na vakaukauwa yago)';

  @override
  String get profile_activity_light =>
      'Mamada na cakacaka (1-3 na siga/macawa)';

  @override
  String get profile_activity_moderate =>
      'Vakatautauvatataka na cakacaka (3-5 na siga/macawa)';

  @override
  String get profile_activity_very => 'Gugumatua sara (6-7 na siga/macawa)';

  @override
  String get settings_wear_os_header => 'Vakayagataka na OS itokani App';

  @override
  String get settings_wear_os_desc =>
      'Vakacuruma na tile ni Bloomi kei na vereverea ena nomu vakaraica na OS ni daramaka me raica na kalori, wai, kei na ikalawa.';

  @override
  String get settings_widgets_header => 'Veitaratara ni Android';

  @override
  String get settings_widgets_desc =>
      'Pin na widgets ni gauna dina ena nomu sikirini ni vale ni misini me baleta na veivakavoui totolo.';

  @override
  String get settings_about_header => 'Me baleta na Bloomi';

  @override
  String get settings_about_version => 'Vakadewa 1.0.0';

  @override
  String get settings_about_build => 'Tara 100';

  @override
  String get settings_about_credits =>
      'E caka ena qarauni me baleta na bula vakasama, bulabula.';

  @override
  String get settings_terms_header => 'Na ivakarau kei na ituvatuva';

  @override
  String get settings_privacy_header => 'iTuvatuva ni itukutuku';

  @override
  String get settings_delete_header => 'Bokoca na akaude kei na itukutuku';

  @override
  String get settings_delete_warning =>
      'Na cakacaka oqo e sega ni rawa ni vakasukai. Na nomu kakana kece, cakacaka, vitals, kei na itukutuku ena bokoci vakadua.';

  @override
  String get settings_delete_confirm_btn => 'Bokoca vakadua';

  @override
  String get onboard_welcome_headline => 'Vinaka vakalevu na Bloomi ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'Na malumu, vakasama ni bula vinaka ni vakamuri e vakarautaki wavolita na nomu bula.';

  @override
  String get onboard_step_about => 'Me baleti Kemuni';

  @override
  String get onboard_step_goals => 'Na Nomu Takete .';

  @override
  String get onboard_step_lifestyle => 'iTovo ni Veisiga';

  @override
  String get onboard_step_permissions => 'Veivakadonui';

  @override
  String get onboard_step_plan => 'Vakarau!';

  @override
  String get onboard_health_connect_perm => 'Rawa ni Veisemati ni Bula';

  @override
  String get onboard_step_sensors_perm => 'Sensor ni wiliwili ni ikalawa';

  @override
  String get onboard_notif_perm => 'Vakananumi Vakasama & Veivakatakila';

  @override
  String get onboard_camera_perm => 'Camera (Barcode & Scaner de Alimentos)';

  @override
  String get onboard_grant_permissions => 'Solia na veivakadonui';

  @override
  String get onboard_continue_dashboard => 'Dolava na Dasibodi';

  @override
  String get notif_channel_hydration_name => 'Veivakauqeti ni wai';

  @override
  String get notif_channel_hydration_desc =>
      'Vakananumi wai malumu ena siga taucoko .';

  @override
  String get notif_channel_nutrition_name =>
      'Na veivakananumi ni kakana kei na kakana';

  @override
  String get notif_channel_nutrition_desc =>
      'Na kakana ni mataka, kakana ni sigalevu, kei na kakana ni yakavi';

  @override
  String get notif_channel_steps_name => 'Na iKalawa ni Maile';

  @override
  String get notif_channel_steps_desc =>
      'Na marau ni sa yacovi na takete ni kalawa ni veisiga';

  @override
  String get notif_channel_vitals_name => 'Bula & Veika Bibi';

  @override
  String get notif_channel_vitals_desc =>
      'Bibi kei na gauna ni moce cagi-sobu veivakananumi .';

  @override
  String get notif_action_log_water => '💧 Kau +250ml';

  @override
  String get notif_action_snooze => 'Vakacegu 15m';

  @override
  String get notif_action_log_meal => '🥗 Kakana ni kau';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
