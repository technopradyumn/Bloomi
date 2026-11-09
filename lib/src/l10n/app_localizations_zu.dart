// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ikhaya';

  @override
  String get nav_today => 'Namuhla';

  @override
  String get nav_plan => 'Hlela';

  @override
  String get nav_food => 'Ukudla';

  @override
  String get nav_food_diary => 'Idayari Yokudla';

  @override
  String get nav_workout => 'Ilogi yokujima';

  @override
  String get nav_health => 'Impilo';

  @override
  String get nav_profile => 'Iphrofayela';

  @override
  String get save => 'Londoloza';

  @override
  String get cancel => 'Khansela';

  @override
  String get delete => 'Susa';

  @override
  String get edit => 'Hlela';

  @override
  String get done => 'Kwenziwe';

  @override
  String get close => 'Vala';

  @override
  String get back => 'Emuva';

  @override
  String get next => 'Okulandelayo';

  @override
  String get continue_btn => 'Qhubeka';

  @override
  String get confirm => 'Qinisekisa';

  @override
  String get search => 'Sesha';

  @override
  String get filter => 'Hlunga';

  @override
  String get all => 'Konke';

  @override
  String get active => 'Iyasebenza';

  @override
  String get today => 'Namuhla';

  @override
  String get yesterday => 'Izolo';

  @override
  String get tomorrow => 'Kusasa';

  @override
  String get add => 'Engeza';

  @override
  String get remove => 'Susa';

  @override
  String get refresh => 'Vuselela';

  @override
  String get retry => 'Zama futhi';

  @override
  String get error => 'Iphutha';

  @override
  String get success => 'Impumelelo';

  @override
  String get loading => 'Iyalayisha...';

  @override
  String get no_data => 'Ayikho idatha etholakalayo';

  @override
  String get offline => 'Imodi engaxhunyiwe ku-inthanethi';

  @override
  String get offline_sub => 'Izinguquko zizovumelaniswa uma isixhumeke kabusha';

  @override
  String get undo => 'Hlehlisa';

  @override
  String get portion => 'Ingxenye';

  @override
  String get quantity => 'Ubuningi';

  @override
  String get unit => 'Iyunithi';

  @override
  String get clear => 'Kucace';

  @override
  String get select => 'Khetha';

  @override
  String get apply => 'Faka isicelo';

  @override
  String get reset => 'Setha kabusha';

  @override
  String get ok => 'KULUNGILE';

  @override
  String get yes => 'Yebo';

  @override
  String get no => 'Cha';

  @override
  String get optional => 'Ongakukhetha';

  @override
  String get calories => 'Amakhalori';

  @override
  String get protein => 'Amaprotheni';

  @override
  String get carbs => 'Ama-Carbs';

  @override
  String get fat => 'Amafutha';

  @override
  String get fiber => 'I-Fiber';

  @override
  String get water => 'Amanzi';

  @override
  String get steps => 'Izinyathelo';

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
  String get inches => 'phakathi';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'amahora';

  @override
  String get minutes => 'imiz';

  @override
  String get serving => 'Ukukhonza';

  @override
  String get servings => 'Izinkonzo';

  @override
  String get serving_size => 'Usayizi Wokukhonza';

  @override
  String get per_100g => 'ku-100g';

  @override
  String get india => 'I-India';

  @override
  String get asia => 'E-Asia';

  @override
  String get europe => 'EYurophu';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'AmaMelika';

  @override
  String get home_title => 'Ikhaya';

  @override
  String get home_greeting_morning => 'Sawubona';

  @override
  String get home_greeting_afternoon => 'Sawubona';

  @override
  String get home_greeting_evening => 'Sawubona';

  @override
  String get home_streak_title => 'I-Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uchungechunge lwezinsuku',
      one: '1 usuku streak',
      zero: '0 izinsuku streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Kushisiwe';

  @override
  String get home_calories_budget => 'Ibhajethi Yekhalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal esele';
  }

  @override
  String get home_water_title => 'I-Daily Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Izinyathelo Zahamba';

  @override
  String get home_quick_actions => 'Izenzo Ezisheshayo';

  @override
  String get home_log_meal => 'Isidlo Sokungena';

  @override
  String get home_log_water => 'Amanzi Okungena';

  @override
  String get home_log_workout => 'I-Log Workout';

  @override
  String get home_log_weight => 'Isisindo Sokungena';

  @override
  String get home_insights_title => 'Imibono Yanamuhla';

  @override
  String get home_quote =>
      'Izinketho ezincane ezinempilo zidala izinguquko eziqhakazayo.';

  @override
  String get home_ai_coach_tip => 'Umqeqeshi we-Bloomi AI';

  @override
  String get home_surroundings => 'Okuzungezile Nomoya';

  @override
  String get home_notifications => 'Izaziso';

  @override
  String get home_daily_score => 'I-Daily Wellness Score';

  @override
  String get home_view_all => 'Buka Konke';

  @override
  String get food_diary_title => 'Idayari Yokudla';

  @override
  String get food_breakfast => 'Ukudla kwasekuseni';

  @override
  String get food_lunch => 'Isidlo sasemini';

  @override
  String get food_dinner => 'Isidlo sakusihlwa';

  @override
  String get food_snacks => 'Ukudla okulula';

  @override
  String get food_add_food => 'Engeza Ukudla';

  @override
  String get food_edit_food => 'Hlela Ukudla';

  @override
  String get food_add_breakfast => 'Engeza Ukudla kwasekuseni';

  @override
  String get food_add_lunch => 'Engeza Isidlo sasemini';

  @override
  String get food_add_dinner => 'Engeza Isidlo sakusihlwa';

  @override
  String get food_add_snack => 'Engeza I-Snack';

  @override
  String get food_total_calories => 'Amakhalori Aphelele';

  @override
  String get food_empty_meal =>
      'Akukho kudla okufakiwe kulokhu kudla okwamanje';

  @override
  String get food_empty_diary => 'Akukho ukudla okufakiwe kwalolu suku';

  @override
  String get food_log_first_meal =>
      'Thepha + ukuze ungene ekudleni kwakho kokuqala okumnandi';

  @override
  String get food_quick_add => 'Engeza Ngokushesha';

  @override
  String get food_search_hint => 'Sesha izitsha, izithelo, i-dal, i-roti...';

  @override
  String get food_custom_recipe => 'Ukudla Ngokwezifiso & Iresiphi';

  @override
  String get food_scan_barcode => 'Skena ibhakhodi';

  @override
  String get food_camera_scan => 'Iskena Sokudla se-AI';

  @override
  String get food_recent => 'Ukudla Kwakamuva';

  @override
  String get food_favourites => 'Izintandokazi';

  @override
  String get food_macro_summary => 'Ukuhlukaniswa Kwemacronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Uqinisekile ukuthi ufuna ukususa le nto?';

  @override
  String get food_item_deleted => 'Into yokudla isusiwe';

  @override
  String get food_remaining => 'esele';

  @override
  String get food_consumed => 'kudliwe';

  @override
  String food_of_target(Object target) {
    return 'kwe-$target kcal';
  }

  @override
  String get foodSearch_title => 'Sesha Ukudla';

  @override
  String get foodSearch_scan_barcode => 'Skena ibhakhodi';

  @override
  String get foodSearch_take_photo => 'Isithombe Sokudla Se-Snap';

  @override
  String get foodSearch_custom_food => 'Dala Ukudla Ngokwezifiso';

  @override
  String get foodSearch_recent_searches => 'Usesho Lwakamuva';

  @override
  String get foodSearch_popular => 'Izitsha ezishisayo';

  @override
  String get foodSearch_no_results => 'Akukho ukudla okufana nosesho lwakho';

  @override
  String get barcode_title => 'Iskena sebhakhodi';

  @override
  String get barcode_align =>
      'Qondanisa ibhakhodi ngaphakathi kohlaka lwekhamera';

  @override
  String get barcode_not_found => 'Umkhiqizo awutholakali kusizindalwazi';

  @override
  String get barcode_premium_feature =>
      'Ukuskena ibhakhodi kuyatholakala nge-Bloomi Pro';

  @override
  String get camera_title => 'Iskena Sokudla se-AI';

  @override
  String get camera_tap_hint => 'Thatha isithombe esicacile sesidlo sakho';

  @override
  String get camera_analysing => 'Ihlaziya ipuleti lokudla...';

  @override
  String get camera_detected => 'Izinto ezitholiwe';

  @override
  String get camera_flash => 'Guqula i-Flash';

  @override
  String get camera_retake => 'Thatha futhi Isithombe';

  @override
  String get camera_confirm_food => 'Qinisekisa Izinto';

  @override
  String get customFood_title => 'Ukudla Ngokwezifiso & Iresiphi';

  @override
  String get customFood_name_hint => 'Igama lesitsha noma isithako';

  @override
  String get customFood_calories_hint => 'Amakhalori (kcal)';

  @override
  String get customFood_protein_hint => 'Amaprotheni (g)';

  @override
  String get customFood_carbs_hint => 'Ama-carbohydrate (g)';

  @override
  String get customFood_fat_hint => 'Amafutha (g)';

  @override
  String get customFood_save => 'Londoloza Iresiphi';

  @override
  String get water_tracker_title => 'I-Tracker Yamanzi';

  @override
  String get water_daily_target => 'I-Daily Hydration Goal';

  @override
  String get water_logged_today => 'Kungeniwe Namuhla';

  @override
  String get water_add_glass => '+250 ml Ingilazi';

  @override
  String get water_add_bottle => '+500 ml Ibhodlela';

  @override
  String get water_custom_amount => 'Inani Ngokwezifiso';

  @override
  String get water_reminder_tip =>
      'Phuza amanzi njalo usuku lonke ukuze uthole amandla.';

  @override
  String water_logged_toast(Object amount) {
    return 'Kufakwe $amount ml amanzi 💧';
  }

  @override
  String get workout_title => 'Ilogi yokujima';

  @override
  String get workout_add_exercise => 'Engeza Ukujima';

  @override
  String get workout_cardio => 'I-Cardio';

  @override
  String get workout_strength => 'Amandla';

  @override
  String get workout_yoga => 'I-Yoga & Ukuvumelana nezimo';

  @override
  String get workout_duration => 'Ubude besikhathi';

  @override
  String get workout_intensity => 'Ukuqina';

  @override
  String get workout_calories_burned => 'Ama-calories ashisiwe';

  @override
  String get workout_empty => 'Akukho ukujima okufakiwe namuhla';

  @override
  String get workout_save_success => 'Ukujima kulondolozwe ngempumelelo!';

  @override
  String get workout_type => 'Uhlobo lokujima';

  @override
  String get workout_notes => 'Amanothi & Imicabango';

  @override
  String get health_overview_title => 'Ezempilo & Okubalulekile';

  @override
  String get health_heart_rate => 'Izinga Lenhliziyo';

  @override
  String get health_blood_oxygen => 'I-Blood Oxygen (SpO2)';

  @override
  String get health_blood_pressure => 'Umfutho Wegazi';

  @override
  String get health_blood_glucose => 'IGlucose yegazi';

  @override
  String get health_body_temperature => 'Izinga Lokushisa Lomzimba';

  @override
  String get health_sleep_tracking => 'Ukulandela Ukulala';

  @override
  String get health_weight_tracking => 'Isisindo Nokwakheka Komzimba';

  @override
  String get health_waist_hip => 'I-Waist-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Amadivayisi ne-Smartwatch Hub';

  @override
  String get health_sync_now => 'Vumelanisa Idatha Yezempilo';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Ukuvumelanisa kokugcina: $time';
  }

  @override
  String get health_manual_entry => 'Ukungena Kwezempilo Ngesandla';

  @override
  String get health_metric_detail => 'Imininingwane Yemethrikhi';

  @override
  String get health_connected_sensors => 'Izinzwa Zezempilo Ezixhunyiwe';

  @override
  String get plan_title => 'Uhlelo Lwansuku zonke';

  @override
  String get plan_weekly_title => 'Uhlelo Lwempilo Yamaviki Onke';

  @override
  String get plan_calorie_target => 'Ikhalori Target';

  @override
  String get plan_water_target => 'I-Hydration Target';

  @override
  String get plan_step_target => 'Isinyathelo Ithagethi';

  @override
  String get plan_sleep_target => 'Ithagethi Yokulala';

  @override
  String get plan_meal_suggestions => 'Iziphakamiso zokudla';

  @override
  String get plan_healthy_habits => 'Imikhuba Enempilo & Amathiphu';

  @override
  String get plan_coach_advice => 'Izincomo Zomqeqeshi we-Bloomi AI';

  @override
  String get plan_generated_title =>
      'Isheduli Yansuku zonke Eyenziwe Ngezifiso';

  @override
  String get profile_title => 'Iphrofayela';

  @override
  String get profile_edit => 'Hlela iphrofayela';

  @override
  String get profile_name => 'Igama';

  @override
  String get profile_age => 'Ubudala';

  @override
  String get profile_gender => 'Ubulili';

  @override
  String get profile_height => 'Ubude';

  @override
  String get profile_weight => 'Isisindo';

  @override
  String get profile_goal => 'Umgomo Oyinhloko';

  @override
  String get profile_activity_level => 'Ileveli Yomsebenzi';

  @override
  String get profile_stats => 'Izibalo Zokuphila Kwami';

  @override
  String get profile_saved => 'Iphrofayela ibuyekezwe ngempumelelo';

  @override
  String get profile_bmi => 'I-Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Ubulungu';

  @override
  String get settings => 'Izilungiselelo';

  @override
  String get preferences_habits => 'OKUSHIWO IMIGWAQO';

  @override
  String get appearance_theme => 'Ukubukeka Netimu';

  @override
  String get appearance_theme_sub =>
      'Okumnyama, Okukhanyayo, Imodi Yesistimu Nezinketho Zasemuva Lohlelo Lokusebenza';

  @override
  String get permissions => 'Izimvume Nokufinyelela Kwesistimu';

  @override
  String get permissions_sub =>
      'I-Health Connect, Izinzwa zesinyathelo, i-GPS, Izaziso nekhamera';

  @override
  String get reminders_notifications => 'Izikhumbuzi Nezaziso';

  @override
  String get reminders_sub =>
      'Izikhathi zokudla, amanzi, ukungena kwesisindo nesikhathi sokulala';

  @override
  String get units_of_measurement => 'Amayunithi Wokulinganisa';

  @override
  String get units_sub =>
      'I-Metric (kg, cm, ml, km) noma i-Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Ulimi Lokusebenza';

  @override
  String get language_sub =>
      'IsiNgisi, isi-हिन्दी (isi-Hindi), isi-Hinglish kanye nezilimi zomhlaba ezingu-195+';

  @override
  String get home_screen_widgets => 'Amawijethi esikrini sasekhaya';

  @override
  String get widgets_sub =>
      'Amawijethi e-Android abukhoma: Ihabhu, Izinyathelo, Amanzi, Ukudla Okunempilo & I-Mascot';

  @override
  String get wear_os_watch_app => 'I-Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Umngane we-Smartwatch, amathayili, izinkinga nokubalulekile okubukhoma';

  @override
  String get goals_wellness => 'IMIGOMO NEMINININGWANE YEMPILO';

  @override
  String get nutrition_targets =>
      'Okuqondisiwe Kokondleka Nokuhlukaniswa Okukhulu';

  @override
  String get nutrition_targets_sub =>
      'Umgomo wekhalori, amaprotheni, ama-carbs, amafutha namanzi';

  @override
  String get weekly_recap => 'I-Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      'Isilinganiso sekhalori sezinsuku ezingu-7, isilinganiso esikhulu nosuku oluhle kakhulu';

  @override
  String get streaks_milestones => 'Ama-Streaks & Milestones';

  @override
  String get streaks_sub =>
      'I-blossom streak esebenzayo, amabheji nezimpumelelo';

  @override
  String get connected_devices => 'AMADIVAYISI AXHUNYIWE NE-ECOSYSTEM';

  @override
  String get devices_hub => 'Amadivayisi ne-Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'I-Health Connect, i-Galaxy Watch, i-Pixel Watch, i-Garmin';

  @override
  String get surroundings_weather => 'Okuzungezile & Isimo Sezulu';

  @override
  String get surroundings_sub =>
      'Ikhwalithi yomoya (AQI), inkomba ye-UV kanye namathiphu okushintshashintsha kwesimo sezulu';

  @override
  String get bloomi_pro => 'Ukubhaliswa kwe-Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Umqeqeshi Wokuhlela we-AI, amawijethi esikrini sasekhaya angu-5 nokulandelela okubalulekile';

  @override
  String get about_security => 'MAYELANA NOKUPHEPHA';

  @override
  String get about_bloomi => 'Mayelana neBloomi';

  @override
  String get about_bloomi_sub => 'Yakha imininingwane, inguqulo, izibaluli';

  @override
  String get privacy_policy => 'Inqubomgomo Yobumfihlo';

  @override
  String get privacy_policy_sub =>
      'Okungaxhunyiwe ku-inthanethi kuqala, ukwakheka kwedatha ekudivayisi';

  @override
  String get terms_conditions => 'Imigomo Nemibandela';

  @override
  String get terms_conditions_sub =>
      'Imigomo yesevisi nemihlahlandlela yezempilo';

  @override
  String get delete_account => 'Susa i-akhawunti nedatha';

  @override
  String get delete_account_sub =>
      'Sula ngokungenakulungiseka idatha yendawo ye-SQLite nezipele zamafu';

  @override
  String get healthy_habits =>
      'Yakha imikhuba emnene, yokuphila kahle ehlala njalo';

  @override
  String get all_logs => 'Idatha Yami Elandelwayo Namalogi';

  @override
  String get search_language => 'Sesha ngolimi noma ngombhalo wendabuko...';

  @override
  String get languages_available => 'Izilimi Ezitholakalayo';

  @override
  String get no_matching_languages => 'Azikho izilimi ezifanayo ezitholiwe';

  @override
  String get try_searching =>
      'Zama ukusesha ngeskripthi somdabu noma isipelingi sesiNgisi';

  @override
  String get partially_translated => 'Ihunyushwe ngokwengxenye';

  @override
  String get complete_translation => 'Qedela';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ulimi lusethwe ukuze lube $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Okuzungezile & Imvelo';

  @override
  String get surroundings_aqi => 'Inkomba Yekhwalithi Yomoya';

  @override
  String get surroundings_uv => 'I-UV Index';

  @override
  String get surroundings_temp => 'Izinga lokushisa';

  @override
  String get surroundings_humidity => 'Umswakama';

  @override
  String get surroundings_hydration_advice =>
      'Hlala unamanzi amaningi esimweni sezulu samanje.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Sesha Ukudla';

  @override
  String get food_quick_barcode => 'Skena ibhakhodi 👑';

  @override
  String get food_quick_water => 'Engeza Amanzi';

  @override
  String get food_quick_custom => 'Ukudla Ngokwezifiso';

  @override
  String get surroundings_good => 'Kuhle';

  @override
  String get surroundings_moderate => 'Kuphakathi';

  @override
  String get surroundings_unhealthy => 'Okungenampilo';

  @override
  String get notifications_title => 'Izaziso Nezaziso';

  @override
  String get notifications_empty => 'Azikho izaziso ezintsha';

  @override
  String get notifications_mark_read => 'Maka Konke njengokufundiwe';

  @override
  String get notifications_clear => 'Sula Konke';

  @override
  String get reminders => 'Izilungiselelo Zesikhumbuzi';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Isikhumbuzi sesidlo sasekuseni 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Sawubona! Isikhathi sesidlo sasekuseni esinomsoco e-$time .';
  }

  @override
  String get reminders_lunch_title => 'Isikhumbuzi sesidlo sasemini 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Yima kancane futhi ujabulele ukudla kwasemini okunokulinganisela, okunengqondo ngo- $time .';
  }

  @override
  String get reminders_dinner_title => 'Isikhumbuzi sesidlo sakusihlwa 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Isikhathi sesidlo sakusihlwa esilula, esanelisayo ngo-$time .';
  }

  @override
  String get reminders_water_title => 'I-Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Isikhathi sokuphuza ingilazi entsha yamanzi! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Isisindo samasonto onke ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Landela ngomkhondo amamethrikhi omzimba wakho wanjalo ngeviki ku-Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Umoya phansi ngesikhathi sokulala 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Khumula futhi ulungiselele ukulala okuzolile ( $time ).';
  }

  @override
  String get onboard_welcome => 'Siyakwamukela ku-Bloomi';

  @override
  String get onboard_sub =>
      'Umngane wakho wezempilo nokudla okunobungane, okungaxhunyiwe ku-inthanethi.';

  @override
  String get onboard_get_started => 'Qalisa';

  @override
  String get onboard_sign_in => 'Ngena ngemvume';

  @override
  String get onboard_skip => 'Yeqa';

  @override
  String get onboard_choose_goal =>
      'Iyini inhloso yakho eyinhloko yokuphila kahle?';

  @override
  String get onboard_goal_weight_loss => 'Ukuncipha Kwesisindo Emnene';

  @override
  String get onboard_goal_muscle => 'Ukuzuza Kwemisipha & Amandla';

  @override
  String get onboard_goal_energy => 'Amandla Ansuku zonke Nokuphila';

  @override
  String get onboard_goal_habits => 'Ukudla Okunempilo Engqondweni';

  @override
  String get onboard_about_you => 'Sitshele Ngawe';

  @override
  String get onboard_lifestyle => 'Umjikelezo Wakho Wansuku zonke';

  @override
  String get onboard_permissions_title => 'Izimvume Nokufinyelela Kwesistimu';

  @override
  String get onboard_permissions_sub =>
      'Nikeza ukufinyelela ezinyathelweni zokuvumelanisa, ukujima, nezikhumbuzi.';

  @override
  String get onboard_plan_ready_title =>
      'Uhlelo Lwakho Ngokwezifiso Lulungile!';

  @override
  String get onboard_plan_ready_sub =>
      'Sikwenzele umhlahlandlela omnene, owenziwe ngezifiso kanye nokuphila kahle ngenxa yakho.';

  @override
  String get onboard_enter_bloomi => 'Ngena eBloomi';

  @override
  String get insights_weekly_report => 'I-Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Usuku Olungcono Lokungaguquguquki: $day';
  }

  @override
  String get insights_streaks_badges => 'Ama-Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Kuvulwe ngo-$date';
  }

  @override
  String get insights_keep_going => 'Qhubeka nenqubekelaphambili enhle!';

  @override
  String get widgets_title => 'Amawijethi esikrini sasekhaya';

  @override
  String widgets_active_count(Object count) {
    return 'Amawijethi Asebenzayo: $count';
  }

  @override
  String get widgets_hub_title => 'I-Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Izinyathelo & Ukukhala Okusebenzayo';

  @override
  String get widgets_water_title => 'I-Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'I-Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Gqoka i-OS Smartwatch';

  @override
  String get wear_os_connected => 'Ixhumeke kokuthi Ukubuka';

  @override
  String get wear_os_sync => 'Vumelanisa Idatha Yokubuka';

  @override
  String get theme_title => 'Ukubukeka Netimu';

  @override
  String get theme_mode => 'Imodi yetimu';

  @override
  String get theme_light => 'Ukukhanya';

  @override
  String get theme_dark => 'Kumnyama';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Iphalethi yangemuva';

  @override
  String get units_title => 'Amayunithi Wokulinganisa';

  @override
  String get units_metric => 'Imethrikhi (kg, cm, ml)';

  @override
  String get units_imperial => 'I-Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ayikwazi ukulayisha ideshibhodi';

  @override
  String get home_health_permission_req =>
      'Kudingeka Imvume Yokuxhumana Kwezempilo';

  @override
  String get home_health_permission_desc =>
      'I-Bloomi idinga imvume ye-Health Connect ukuze idonse izinyathelo zangempela, ukushaya kwenhliziyo, nokuvumelanisa amawijethi asekhaya eselula ngesikhathi sangempela.';

  @override
  String get home_allow_health => 'Vumela i-Health Connect';

  @override
  String get home_ready_mindful_day => 'Ulungele usuku olukhumbulayo? ✨';

  @override
  String get home_quick_add => 'Engeza Ngokushesha';

  @override
  String get home_live_gps => 'I-GPS ebukhoma';

  @override
  String get home_calories_remaining_label => 'AMAKHALORI ASELE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kudliwe: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Thepha ukuze uthole i-Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Umgomo wansuku zonke ufinyelelwe 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ukuya kumgomo wansuku zonke';
  }

  @override
  String get home_details => 'Imininingwane';

  @override
  String get home_upgrade_plan_desc =>
      'Thuthukisa ukuze uvule okuhlosiwe komuntu siqu kwansuku zonke nohlelo lwe-AI';

  @override
  String get home_unlock => 'Vula 👑';

  @override
  String get home_quick_log_hint => 'Rekhoda ngokushesha okungenayo kwezempilo';

  @override
  String get food_serving_size => 'Usayizi Wokukhonza';

  @override
  String get food_serving_grams => 'Ukukhonza (g)';

  @override
  String get food_number_servings => 'Inombolo Yezinkonzo';

  @override
  String get food_calories_per_serving => 'Amakhalori ngokuphakela ngakunye';

  @override
  String get food_recipe_ingredients => 'Izithako';

  @override
  String get food_recipe_add_ingredient => 'Engeza Isithako';

  @override
  String get food_recipe_directions => 'Imiyalelo & Amanothi';

  @override
  String get food_recipe_total => 'Isamba Sokudla Kweresiphi';

  @override
  String get food_recipe_per_serving => 'Ngokusebenzisa Ukudla Okunempilo';

  @override
  String get food_recipe_saved_toast =>
      'Ukudla kwangokwezifiso kulondolozwe ngempumelelo!';

  @override
  String get food_barcode_found => 'Umkhiqizo Utholakele!';

  @override
  String get food_barcode_not_found_desc =>
      'Asikwazanga ukuthola le bhakhodi kusizindalwazi esivulekile. Ungakwengeza njengokudla kwangokwezifiso.';

  @override
  String get food_add_custom_btn => 'Engeza Ukudla Ngokwezifiso';

  @override
  String get food_scan_again => 'Skena futhi';

  @override
  String get food_review_items => 'Buyekeza Ukudla Okutholiwe';

  @override
  String get food_review_hint =>
      'Lungisa amanani noma susa noma iyiphi into engaziwa';

  @override
  String get food_log_selected => 'Ngena Ukudla Okukhethiwe';

  @override
  String get food_favourites_title => 'Izintandokazi Ukudla';

  @override
  String get food_recent_title => 'Ukudla Kwakamuva';

  @override
  String get food_no_favourites =>
      'Akukho ukudla okuyintandokazi okwamanje. Thepha inhliziyo kunoma yikuphi ukudla ukuze ulondoloze lapha.';

  @override
  String get food_no_recents => 'Akukho ukudla okufakwe kamuva okutholakele.';

  @override
  String get food_nutrition_details_title => 'Daily Nutrition Imininingwane';

  @override
  String get food_macro_protein_label => 'Ukuhlukana Kwamaprotheni';

  @override
  String get food_macro_carbs_label => 'Ukuhlukaniswa kwe-Carbs';

  @override
  String get food_macro_fat_label => 'Ukuhlukana Kwamafutha';

  @override
  String get food_macro_fiber_label => 'Ukuhlukaniswa kwe-Fiber';

  @override
  String get food_daily_target_comparison => 'Ukuqhathanisa Okuhlosiwe';

  @override
  String food_target_label(Object target) {
    return 'Ithagethi: $target';
  }

  @override
  String get food_edit_entry => 'Hlela Okufakiwe Kwedayari';

  @override
  String get food_delete_entry => 'Susa Okufakiwe';

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
    return '$current kokungu-$target ml';
  }

  @override
  String get water_intake_history => 'Izigodo Zamanzi Zanamuhla';

  @override
  String get water_no_logs_today =>
      'Awekho amanzi afakiwe okwamanje. Hydrate bese ucindezela inkinobho engeza ngokushesha!';

  @override
  String get water_adjust_goal => 'Lungisa Umgomo Wansuku zonke';

  @override
  String get health_connect_banner => 'Ixhumeke ku-Health Connect';

  @override
  String get health_vitals_summary => 'I-Daily Health Vitals';

  @override
  String get health_latest_heart_rate => 'Isilinganiso Senhliziyo Sakamuva';

  @override
  String get health_latest_bp => 'Umfutho Wegazi';

  @override
  String get health_latest_spo2 => 'I-Oxygen yegazi';

  @override
  String get health_latest_glucose => 'IGlucose yegazi';

  @override
  String get health_latest_weight => 'Isisindo';

  @override
  String get health_latest_sleep => 'Isikhathi Sokulala';

  @override
  String get health_add_manual => 'Engeza Ukulinganisa Mathupha';

  @override
  String get health_history_trends => 'Amathrendi Omlando';

  @override
  String get health_sync_success =>
      'Idatha yezempilo ivunyelaniswe ngempumelelo!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours amahora $mins amaminithi';
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
  String get health_devices_title => 'Amadivayisi Axhunyiwe Nokugqokekayo';

  @override
  String get health_devices_desc =>
      'Phatha amawashi ahlakaniphile abhanqiwe, izilandeleli zokufaneleka, nezinzwa zezempilo.';

  @override
  String get health_workout_editor_title => 'Hlela Ukujima';

  @override
  String get health_workout_name_label => 'Igama lokujima';

  @override
  String get health_workout_duration_label => 'Ubude besikhathi (amaminithi)';

  @override
  String get health_workout_calories_label => 'Amakhalori alinganiselwe (kcal)';

  @override
  String get health_workout_date_label => 'Idethi nesikhathi';

  @override
  String get plan_daily_wellness_roadmap =>
      'Umhlahlandlela Wakho Owenziwe Ngokwakho';

  @override
  String get plan_morning_routine => 'Umjikelezo Wasekuseni';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Umoya Wakusihlwa-Phansi';

  @override
  String get plan_coach_badge => 'Umqeqeshi we-Bloomi AI';

  @override
  String get plan_weekly_overview => 'Ukugxila Kwempilo Yezinsuku Eziyisi-7';

  @override
  String get plan_targets_title => 'Okuhlosiwe Kwezempilo Nezinjongo';

  @override
  String get plan_calorie_budget_label => 'Ibhajethi Yekhalori Yansuku zonke';

  @override
  String get plan_water_budget_label => 'Daily Water Target';

  @override
  String get plan_step_budget_label => 'Umgomo Wesinyathelo Wansuku zonke';

  @override
  String get plan_macro_split_label => 'Isilinganiso Semacronutrient';

  @override
  String get profile_personal_details => 'Imininingwane Yomuntu Siqu';

  @override
  String get profile_body_stats => 'Izilinganiso Zomzimba';

  @override
  String get profile_app_preferences =>
      'Izintandokazi nezilungiselelo zohlelo lokusebenza';

  @override
  String get profile_edit_name_hint => 'Igama lakho';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ubude ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Isisindo ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Ubudala';

  @override
  String get profile_gender_male => 'Owesilisa';

  @override
  String get profile_gender_female => 'Owesifazane';

  @override
  String get profile_gender_other => 'Okunye / Khetha ukungasho';

  @override
  String get profile_activity_sedentary =>
      'I-Sedentary (Kancane noma ukungazivocavoci)';

  @override
  String get profile_activity_light =>
      'Isebenza Kancane (izinsuku ezingu-1-3/isonto)';

  @override
  String get profile_activity_moderate =>
      'Isebenza Ngokumaphakathi (izinsuku ezi-3-5/isonto)';

  @override
  String get profile_activity_very =>
      'Isebenza Kakhulu (izinsuku ezingu-6-7/isonto)';

  @override
  String get settings_wear_os_header => 'Gqoka i-OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Faka ithayela le-Bloomi kanye nenkinga ewashini lakho le-Wear OS ukuze ubuke amakhalori, amanzi, nezinyathelo.';

  @override
  String get settings_widgets_header => 'Amawijethi e-Android asebenzayo';

  @override
  String get settings_widgets_desc =>
      'Phina amawijethi esikhathi sangempela esikrinini sasekhaya sedivayisi yakho ukuze uthole izibuyekezo ezisheshayo.';

  @override
  String get settings_about_header => 'Mayelana neBloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Yakha i-100';

  @override
  String get settings_about_credits =>
      'Iklanywe ngokunakekela ukuphila okunengqondo, okunempilo.';

  @override
  String get settings_terms_header => 'Imigomo Nemibandela';

  @override
  String get settings_privacy_header => 'Inqubomgomo Yobumfihlo';

  @override
  String get settings_delete_header => 'Susa i-akhawunti nedatha';

  @override
  String get settings_delete_warning =>
      'Lesi senzo asikwazi ukuhlehliswa. Konke ukudla kwakho, ukujima, okubalulekile, nephrofayela kuzosuswa unomphela.';

  @override
  String get settings_delete_confirm_btn => 'Susa Unomphela';

  @override
  String get onboard_welcome_headline => 'Siyakwamukela ku-Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Ukulandelela ukuphila kahle okuthambile okuklanyelwe ukuphila kwakho konke.';

  @override
  String get onboard_step_about => 'Mayelana Nawe';

  @override
  String get onboard_step_goals => 'Imigomo Yakho';

  @override
  String get onboard_step_lifestyle => 'Imikhuba Yansuku Zonke';

  @override
  String get onboard_step_permissions => 'Izimvume';

  @override
  String get onboard_step_plan => 'Ilungile!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Inzwa ye-Counter yesinyathelo';

  @override
  String get onboard_notif_perm => 'Izikhumbuzi Nezaziso Ezihlakaniphile';

  @override
  String get onboard_camera_perm => 'Ikhamera (Ibhakhodi neskena sokudla)';

  @override
  String get onboard_grant_permissions => 'Nikeza Izimvume';

  @override
  String get onboard_continue_dashboard => 'Vula Ideshibhodi';

  @override
  String get notif_channel_hydration_name => 'I-Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Izikhumbuzi zamanzi athambile usuku lonke';

  @override
  String get notif_channel_nutrition_name =>
      'Izikhumbuzo Zokudla Nokudla Okunomsoco';

  @override
  String get notif_channel_nutrition_desc =>
      'Izaziso zesikhumbuzo sasekuseni, sasemini nesakusihlwa';

  @override
  String get notif_channel_steps_name => 'Step Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Imigubho lapho ufinyelela impokophelo yezinyathelo zansuku zonke';

  @override
  String get notif_channel_vitals_name => 'Ukuhlolwa Kwezempilo Nokubalulekile';

  @override
  String get notif_channel_vitals_desc =>
      'Izikhumbuzi zokuphefumula phansi ngesisindo nesikhathi sokulala';

  @override
  String get notif_action_log_water => '💧 Ilogi +250ml';

  @override
  String get notif_action_snooze => 'Snuza 15m';

  @override
  String get notif_action_log_meal => '🥗 Ukudla Kwelogi';

  @override
  String get language => 'Ulimi';

  @override
  String get share => 'Yabelana';

  @override
  String common_days(Object count) {
    return '$count usuku oludlule';
  }
}
