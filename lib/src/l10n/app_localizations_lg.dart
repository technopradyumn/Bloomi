// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ganda Luganda (`lg`).
class AppLocalizationsLg extends AppLocalizations {
  AppLocalizationsLg([String locale = 'lg']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Awaka';

  @override
  String get nav_today => 'Leero';

  @override
  String get nav_plan => 'Enteekateeka';

  @override
  String get nav_food => 'Emmere';

  @override
  String get nav_food_diary => 'Emmere Diary';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Ebyobulamu';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Teeka';

  @override
  String get cancel => 'Sazaamu';

  @override
  String get delete => 'Okusazaamu';

  @override
  String get edit => 'Edit';

  @override
  String get done => 'Kikoleddwa';

  @override
  String get close => 'Ggalawo';

  @override
  String get back => 'Okudda emabega';

  @override
  String get next => 'Ekiddako';

  @override
  String get continue_btn => 'Weeyongereyo';

  @override
  String get confirm => 'Kakasa nti';

  @override
  String get search => 'Noonya';

  @override
  String get filter => 'Okusengejja';

  @override
  String get all => 'Byonna';

  @override
  String get active => 'Active';

  @override
  String get today => 'Leero';

  @override
  String get yesterday => 'Eggulo';

  @override
  String get tomorrow => 'Enkya';

  @override
  String get add => 'Okwongerako';

  @override
  String get remove => 'Ggyawo';

  @override
  String get refresh => 'Okuzza obuggya';

  @override
  String get retry => 'Ddamu gezaako';

  @override
  String get error => 'Ensobi';

  @override
  String get success => 'Obuwanguzi';

  @override
  String get loading => 'Okutikka...';

  @override
  String get no_data => 'Tewali data eriwo';

  @override
  String get offline => 'Omutindo ogutali ku mutimbagano';

  @override
  String get offline_sub =>
      'Enkyukakyuka zijja kukwatagana nga zizzeemu okuyungibwa';

  @override
  String get undo => 'Okuzzaawo';

  @override
  String get portion => 'Ekitundu';

  @override
  String get quantity => 'Omuwendo';

  @override
  String get unit => 'Ekitundu';

  @override
  String get clear => 'Kitegeerekeka bulungi';

  @override
  String get select => 'Londa';

  @override
  String get apply => 'Okusaba';

  @override
  String get reset => 'Okuddamu okuteekawo';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yee';

  @override
  String get no => 'Nedda';

  @override
  String get optional => 'Okwesalirawo';

  @override
  String get calories => 'Kalori ezirimu';

  @override
  String get protein => 'Ebirungo ebizimba omubiri';

  @override
  String get carbs => 'Ebirungo ebiyitibwa carbs';

  @override
  String get fat => 'Amasavu';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Amazzi';

  @override
  String get steps => 'Emitendera';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kkiro';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'mu';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ssaawa';

  @override
  String get minutes => 'eddakiika';

  @override
  String get serving => 'Okuweereza';

  @override
  String get servings => 'Okugabula';

  @override
  String get serving_size => 'Sayizi y’okugabula';

  @override
  String get per_100g => 'buli 100g';

  @override
  String get india => 'Buyindi';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Bulaaya';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Awaka';

  @override
  String get home_greeting_morning => 'Amakya amalungi';

  @override
  String get home_greeting_afternoon => 'Akawungeezi akalungi';

  @override
  String get home_greeting_evening => 'Akawungeezi akalungi';

  @override
  String get home_streak_title => 'Omuguwa gw’ebimuli';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ennaku ez\'omuddiring\'anwa',
      one: '1 day streak',
      zero: 'Ennaku 0 ez\'omuddiring\'anwa',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ayokeddwa';

  @override
  String get home_calories_budget => 'Embalirira ya Kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal esigaddewo';
  }

  @override
  String get home_water_title => 'Okunywa Amazzi buli lunaku';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Emitendera gyatambulira';

  @override
  String get home_quick_actions => 'Ebikolwa eby’amangu';

  @override
  String get home_log_meal => 'Emmere ya Log';

  @override
  String get home_log_water => 'Amazzi g’Enku';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Obuzito bw’Ekikondo';

  @override
  String get home_insights_title => 'Ebigambo bya leero';

  @override
  String get home_quote =>
      'Okulonda okutono okulamu kuleeta enkyukakyuka ezifuumuuka.';

  @override
  String get home_ai_coach_tip => 'Omutendesi wa Bloomi AI';

  @override
  String get home_surroundings => 'Ebitwetoolodde & Empewo';

  @override
  String get home_notifications => 'Ebimanyisibwa';

  @override
  String get home_daily_score =>
      'Obubonero bw\'obulamu obulungi obwa buli lunaku';

  @override
  String get home_view_all => 'Laba Byonna';

  @override
  String get food_diary_title => 'Emmere Diary';

  @override
  String get food_breakfast => 'Ekyenkya';

  @override
  String get food_lunch => 'Ekyemisana';

  @override
  String get food_dinner => 'Ekyeggulo';

  @override
  String get food_snacks => 'Emmere ey’akawoowo';

  @override
  String get food_add_food => 'Okwongerako Emmere';

  @override
  String get food_edit_food => 'Edit Emmere';

  @override
  String get food_add_breakfast => 'Okwongerako Ekyenkya';

  @override
  String get food_add_lunch => 'Okwongerako Ekyemisana';

  @override
  String get food_add_dinner => 'Okwongerako Ekyeggulo';

  @override
  String get food_add_snack => 'Okwongerako Snack';

  @override
  String get food_total_calories => 'Omugatte gwa Kalori';

  @override
  String get food_empty_meal =>
      'Tewali mmere ewandiikiddwa ku mmere eno n’okutuusa kati';

  @override
  String get food_empty_diary => 'Tewali mmere ewandiikiddwa ku lunaku luno';

  @override
  String get food_log_first_meal =>
      'Koona ku + okuwandiika emmere yo esooka ewooma';

  @override
  String get food_quick_add => 'Okwongerako amangu';

  @override
  String get food_search_hint => 'Noonya amasowaani, ebibala, dal, roti...';

  @override
  String get food_custom_recipe => 'Emmere & Enkola ya Custom';

  @override
  String get food_scan_barcode => 'Sikaani Barcode';

  @override
  String get food_camera_scan => 'Ekyuma ekikebera emmere ekya AI';

  @override
  String get food_recent => 'Emmere Eyaakafuluma';

  @override
  String get food_favourites => 'Ebisinga okwagalibwa';

  @override
  String get food_macro_summary => 'Okumenya kw’ebiriisa ebinene';

  @override
  String get food_delete_meal_confirm =>
      'Okakasa nti oyagala kuggyawo kintu kino?';

  @override
  String get food_item_deleted => 'Ekintu ky’emmere kiggiddwawo';

  @override
  String get food_remaining => 'ebisigaddewo';

  @override
  String get food_consumed => 'ekozesebwa';

  @override
  String food_of_target(Object target) {
    return 'wa $target kcal';
  }

  @override
  String get foodSearch_title => 'Noonya Emmere';

  @override
  String get foodSearch_scan_barcode => 'Sikaani Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Emmere Ekifaananyi';

  @override
  String get foodSearch_custom_food => 'Tonda Emmere eya Custom';

  @override
  String get foodSearch_recent_searches => 'Okunoonya Okusembyeyo';

  @override
  String get foodSearch_popular => 'Essowaani Emanyiddwa ennyo';

  @override
  String get foodSearch_no_results => 'Tewali mmere ekwatagana n’okunoonya kwo';

  @override
  String get barcode_title => 'Sikaani ya Barcode';

  @override
  String get barcode_align => 'Laganya bbaakoodi munda mu fuleemu ya kkamera';

  @override
  String get barcode_not_found => 'Ekintu tekizuuliddwa mu database';

  @override
  String get barcode_premium_feature => 'Okusika barcode kuliko ne Bloomi Pro';

  @override
  String get camera_title => 'Ekyuma ekikebera emmere ekya AI';

  @override
  String get camera_tap_hint =>
      'Kuba ekifaananyi ekitegeerekeka obulungi ku ssowaani yo';

  @override
  String get camera_analysing => 'Okwekenenya essowaani y\'emmere...';

  @override
  String get camera_detected => 'Ebintu ebizuuliddwa';

  @override
  String get camera_flash => 'Okukyusakyusa Flash';

  @override
  String get camera_retake => 'Ddamu Okukwata Ekifaananyi';

  @override
  String get camera_confirm_food => 'Kakasa Ebintu';

  @override
  String get customFood_title => 'Emmere & Enkola ya Custom';

  @override
  String get customFood_name_hint => 'Erinnya ly’essowaani oba ekirungo';

  @override
  String get customFood_calories_hint => 'Kalori (kcal) .';

  @override
  String get customFood_protein_hint => 'Ebirungo ebizimba omubiri (g) .';

  @override
  String get customFood_carbs_hint => 'Ebirungo ebizimba omubiri (g) .';

  @override
  String get customFood_fat_hint => 'Amasavu (g) .';

  @override
  String get customFood_save => 'Save Enkola y\'okufumba';

  @override
  String get water_tracker_title => 'Omulondozi w\'Amazzi';

  @override
  String get water_daily_target =>
      'Ekiruubirirwa ky’okunywa amazzi buli lunaku';

  @override
  String get water_logged_today => 'Logged Leero';

  @override
  String get water_add_glass => '+250 ml Egiraasi';

  @override
  String get water_add_bottle => '+500 ml Eccupa';

  @override
  String get water_custom_amount => 'Ssente za Custom';

  @override
  String get water_reminder_tip =>
      'Nywa amazzi buli kiseera olunaku lwonna okufuna amaanyi aganywevu.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml z\'amazzi 💧';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Okwongerako Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Amaanyi';

  @override
  String get workout_yoga => 'Yoga & Okukyukakyuka mu mbeera';

  @override
  String get workout_duration => 'Ebbanga lye limala';

  @override
  String get workout_intensity => 'Intensity (Obugumu).';

  @override
  String get workout_calories_burned => 'Calories Ezookebwa';

  @override
  String get workout_empty => 'Tewali workouts logged leero';

  @override
  String get workout_save_success => 'Workout yawonye bulungi!';

  @override
  String get workout_type => 'Ekika ky’okukola dduyiro';

  @override
  String get workout_notes => 'Ebiwandiiko & Ebifumiitiriza';

  @override
  String get health_overview_title => 'Ebyobulamu & Ebikulu';

  @override
  String get health_heart_rate => 'Omutima Okukuba';

  @override
  String get health_blood_oxygen => 'Oxygen mu musaayi (SpO2) .';

  @override
  String get health_blood_pressure => 'Puleesa y’omusaayi';

  @override
  String get health_blood_glucose => 'Glucose mu musaayi';

  @override
  String get health_body_temperature => 'Ebbugumu ly’omubiri';

  @override
  String get health_sleep_tracking => 'Okulondoola Otulo';

  @override
  String get health_weight_tracking => 'Obuzito & Ebitonde by\'omubiri';

  @override
  String get health_waist_hip => 'Omugerageranyo gw’ekiwato n’ekiwato';

  @override
  String get health_devices_hub => 'Ebyuma & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Ebikwata ku Byobulamu';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Yasembyeyo okukwatagana: $time';
  }

  @override
  String get health_manual_entry => 'Okuyingira mu by’obulamu mu ngalo';

  @override
  String get health_metric_detail => 'Ebikwata ku Metric';

  @override
  String get health_connected_sensors => 'Sensulo z’Ebyobulamu eziyungiddwa';

  @override
  String get plan_title => 'Enteekateeka ya Buli lunaku';

  @override
  String get plan_weekly_title => 'Enteekateeka y’obulamu obulungi buli wiiki';

  @override
  String get plan_calorie_target => 'Ekiruubirirwa kya Kalori';

  @override
  String get plan_water_target => 'Ekiruubirirwa ky’okufukirira amazzi';

  @override
  String get plan_step_target => 'Omutendera Ekigendererwa';

  @override
  String get plan_sleep_target => 'Okwebaka Target';

  @override
  String get plan_meal_suggestions => 'Ebiteeso ku mmere';

  @override
  String get plan_healthy_habits => 'Emize & Amagezi Emilamu';

  @override
  String get plan_coach_advice => 'Ebiteeso by\'omutendesi wa Bloomi AI';

  @override
  String get plan_generated_title =>
      'Enteekateeka ya Buli lunaku ekoleddwa ku muntu yenna';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Edit Profile';

  @override
  String get profile_name => 'Erinnya';

  @override
  String get profile_age => 'Emyaka';

  @override
  String get profile_gender => 'Ekikula ky’abantu';

  @override
  String get profile_height => 'Obuwanvu';

  @override
  String get profile_weight => 'Obuzito';

  @override
  String get profile_goal => 'Ekigendererwa Ekikulu';

  @override
  String get profile_activity_level => 'Omutendera gw’emirimu';

  @override
  String get profile_stats => 'Ebibalo byange eby\'obulamu obulungi';

  @override
  String get profile_saved => 'Profile etereezeddwa bulungi';

  @override
  String get profile_bmi => 'Omuwendo gw’obuzito bw’omubiri (BMI) .';

  @override
  String get profile_membership => 'Obwammemba';

  @override
  String get settings => 'Ensengeka';

  @override
  String get preferences_habits => 'EBYOKUYIGA & EMIZO';

  @override
  String get appearance_theme => 'Endabika & Omulamwa';

  @override
  String get appearance_theme_sub =>
      'Enzikiza, Ekitangaala, Enkola Mode & App Background Options';

  @override
  String get permissions => 'Olukusa & Okuyingira mu Nkola';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Okumanyisa & Kamera';

  @override
  String get reminders_notifications => 'Okujjukiza & Okumanyisibwa';

  @override
  String get reminders_sub =>
      'Ebiseera by\'okulya, amazzi, okukebera obuzito & okujjukiza nga tonnagenda kwebaka';

  @override
  String get units_of_measurement => 'Yuniti z’okupima';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) oba Imperial (lbs, ffuuti/mu, fl oz) .';

  @override
  String get app_language => 'Olulimi lwa App';

  @override
  String get language_sub =>
      'Olungereza, हिन्दी (Hindi), Hinglish & 195+ ennimi z\'ensi yonna';

  @override
  String get home_screen_widgets => 'Ebikozesebwa ku Screen z\'Awaka';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Emitendera, Amazzi, Endya & Mascot';

  @override
  String get wear_os_watch_app => 'Yambala App ya OS Watch';

  @override
  String get wear_os_sub =>
      'Smartwatch companion, tiles, ebizibu & live vitals';

  @override
  String get goals_wellness => 'GOALS & WELLNESS INSIGHTS';

  @override
  String get nutrition_targets => 'Ebigendererwa by\'endya & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie target, protein, carbs, amasavu & amazzi ekiruubirirwa';

  @override
  String get weekly_recap => 'Okuddamu okukwata ku bulamu obulungi buli wiiki';

  @override
  String get weekly_recap_sub =>
      '7-ennaku calorie average, macro ratio & olunaku olusinga obulungi';

  @override
  String get streaks_milestones => 'Streaks & Ebikulu ebigenda mu maaso';

  @override
  String get streaks_sub => 'Active blossom streaks, badge & ebituukiddwaako';

  @override
  String get connected_devices => 'EBYUMBI EBIKUNGIDDWA & ECOSYSTEM';

  @override
  String get devices_hub => 'Ebyuma & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Essaawa ya Galaxy, Essaawa ya Pixel, Garmin';

  @override
  String get surroundings_weather => 'Ebitwetoolodde & Embeera y\'obudde';

  @override
  String get surroundings_sub =>
      'Omutindo gw’empewo (AQI), UV index & obukodyo bw’okufukirira amazzi mu mbeera y’obudde';

  @override
  String get bloomi_pro => 'Bloomi Pro Okwewandiisa';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 ebikozesebwa ku screen y\'awaka & okulondoola ebikulu';

  @override
  String get about_security => 'ABOUT & SECURITY';

  @override
  String get about_bloomi => 'Ebikwata ku Bloomi';

  @override
  String get about_bloomi_sub =>
      'Zimba ebikwata ku nsonga, enkyusa, ebikwata ku nsonga';

  @override
  String get privacy_policy => 'Enkola y’Ebyama';

  @override
  String get privacy_policy_sub => 'Offline-okusooka, enzimba ya data ku kyuma';

  @override
  String get terms_conditions => 'Ebiragiro n\'Obukwakkulizo';

  @override
  String get terms_conditions_sub =>
      'Ebiragiro by’obuweereza n’ebiragiro by’obulamu obulungi';

  @override
  String get delete_account => 'Sazaamu Akawunti & Data';

  @override
  String get delete_account_sub =>
      'Sangulawo mu ngeri etakyukakyuka data ya SQLite ey\'omu kitundu ne backups z\'ekire';

  @override
  String get healthy_habits =>
      'Zimba emize egy’obulamu obulungi emigonvu, egy’olubeerera';

  @override
  String get all_logs => 'Data Yange & Logs Eyalondoolebwa';

  @override
  String get search_language =>
      'Noonya okusinziira ku lulimi oba ennukuta enzaaliranwa...';

  @override
  String get languages_available => 'Ennimi Eziriwo';

  @override
  String get no_matching_languages => 'Tewali nnimi zikwatagana zizuuliddwa';

  @override
  String get try_searching =>
      'Gezaako okunoonya ng’okozesa ennukuta enzaaliranwa oba mu mpandiika y’Olungereza';

  @override
  String get partially_translated => 'Ekitundu kivvuunuddwa';

  @override
  String get complete_translation => 'Emaliriziddwa';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Olulimi oluteekeddwa ku $name ($nativeName ) .';
  }

  @override
  String get surroundings_title => 'Ebitwetoolodde & Obutonde bw\'ensi';

  @override
  String get surroundings_aqi => 'Omuwendo gw’omutindo gw’empewo';

  @override
  String get surroundings_uv => 'Omuwendo gwa UV';

  @override
  String get surroundings_temp => 'Ebbugumu';

  @override
  String get surroundings_humidity => 'Obunnyogovu';

  @override
  String get surroundings_hydration_advice =>
      'Sigala ng’olina amazzi amalungi mu mbeera y’obudde eriwo kati.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Noonya Emmere';

  @override
  String get food_quick_barcode => 'Sikaani Barcode 👑';

  @override
  String get food_quick_water => 'Teekamu Amazzi';

  @override
  String get food_quick_custom => 'Emmere ya Custom';

  @override
  String get surroundings_good => 'Kirungi';

  @override
  String get surroundings_moderate => 'Eky’ekigero';

  @override
  String get surroundings_unhealthy => 'Tebirina bulamu bulungi';

  @override
  String get notifications_title => 'Okumanyisibwa & Okulabula';

  @override
  String get notifications_empty => 'Tewali kutegeezebwa kupya';

  @override
  String get notifications_mark_read => 'Mark Byonna nga Soma';

  @override
  String get notifications_clear => 'Clear Byonna';

  @override
  String get reminders => 'Enteekateeka z’okujjukiza';

  @override
  String get notifications => 'Ebimanyisibwa';

  @override
  String get reminders_breakfast_title => 'Okujjukiza Ekyenkya 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Amakya amalungi! Ekiseera ky\'ekyenkya ekirimu ebiriisa ku $time .';
  }

  @override
  String get reminders_lunch_title => 'Okujjukiza Ekyemisana 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Yimirirako onyumirwe ekyemisana ekitebenkevu, eky\'ebirowoozo ku $time .';
  }

  @override
  String get reminders_dinner_title => 'Okujjukiza Ekyeggulo 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Ekiseera ky\'ekyeggulo ekitangaavu, ekimatiza ku $time .';
  }

  @override
  String get reminders_water_title => 'Ensigo y\'amazzi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ekiseera ky\'okunywa egiraasi y\'amazzi amayonjo! ( $time ) .';
  }

  @override
  String get reminders_weight_title => 'Okupima buli wiiki ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Olondoole ebipimo by’omubiri gwo buli wiiki ku Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Okwebaka Empewo-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Wummula era weetegeke otulo otuwummula ( $time ).';
  }

  @override
  String get onboard_welcome => 'Mwaniriziddwa mu Bloomi';

  @override
  String get onboard_sub =>
      'Munno ow’omukwano, offline-asooka ku bulamu n’endya munno.';

  @override
  String get onboard_get_started => 'Tandika';

  @override
  String get onboard_sign_in => 'Yingira mu';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal =>
      'Kiruubirirwa kyo ekikulu eky’obulamu obulungi kye ki?';

  @override
  String get onboard_goal_weight_loss => 'Okugejja mu ngeri ey’obwegendereza';

  @override
  String get onboard_goal_muscle => 'Muscle Gain & Amaanyi';

  @override
  String get onboard_goal_energy => 'Amaanyi & Obulamu bwa Buli lunaku';

  @override
  String get onboard_goal_habits => 'Okulya obulungi mu birowoozo';

  @override
  String get onboard_about_you => 'Tubuulire Ebikukwatako';

  @override
  String get onboard_lifestyle => 'Enkola Yo eya Buli lunaku';

  @override
  String get onboard_permissions_title => 'Olukusa & Okuyingira mu Nkola';

  @override
  String get onboard_permissions_sub =>
      'Wa olukusa okutuuka ku mitendera gy’okukwataganya, okukola dduyiro, n’okujjukiza.';

  @override
  String get onboard_plan_ready_title => 'Enteekateeka yo eya Custom ewedde!';

  @override
  String get onboard_plan_ready_sub =>
      'Twakola enteekateeka y’endya n’obulamu obulungi ennyangu, ey’obuntubulamu ku lulwo lwokka.';

  @override
  String get onboard_enter_bloomi => 'Yingira mu Bloomi';

  @override
  String get insights_weekly_report =>
      'Okuddamu okukwata ku bulamu obulungi buli wiiki';

  @override
  String insights_best_day(Object day) {
    return 'Olunaku lw\'obutakyukakyuka obusinga obulungi: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Ebikulu ebigenda mu maaso';

  @override
  String insights_unlocked_on(Object date) {
    return 'Esumuluddwa ku $date';
  }

  @override
  String get insights_keep_going =>
      'Mugende mu maaso n\'enkulaakulana ey\'ekitalo!';

  @override
  String get widgets_title => 'Ebikozesebwa ku Screen z\'Awaka';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets ezikola: $count';
  }

  @override
  String get widgets_hub_title => 'Ekifo ky\'obulamu obulungi ekya Bloomi';

  @override
  String get widgets_steps_title => 'Emitendera & Empeta ekola';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Omubeezi';

  @override
  String get wear_os_title => 'Yambala essaawa ya OS Smartwatch';

  @override
  String get wear_os_connected => 'Eyungiddwa ku Watch';

  @override
  String get wear_os_sync => 'Sync Data y\'okulaba';

  @override
  String get theme_title => 'Endabika & Omulamwa';

  @override
  String get theme_mode => 'Omulamwa Mode';

  @override
  String get theme_light => 'Ekitangaala';

  @override
  String get theme_dark => 'Ekizikiza';

  @override
  String get theme_system => 'Enkola Default';

  @override
  String get theme_background_palette => 'Paleti y’Ebyafaayo';

  @override
  String get units_title => 'Yuniti z’okupima';

  @override
  String get units_metric => 'Metiriki (kkiro, sentimita, mililita) .';

  @override
  String get units_imperial => 'Obwakabaka (lbs, mu, fl oz) .';

  @override
  String get home_unable_load => 'Tekisoboka kutikka daasiboodi';

  @override
  String get home_health_permission_req =>
      'Olukusa lwa Health Connect Lwetaagisa';

  @override
  String get home_health_permission_desc =>
      'Bloomi yeetaaga olukusa lwa Health Connect okusika emitendera egy’amazima, okukuba kw’omutima, n’okukwataganya widgets z’awaka ku ssimu mu kiseera ekituufu.';

  @override
  String get home_allow_health => 'Kiriza Ebyobulamu Okuyunga';

  @override
  String get home_ready_mindful_day => 'Mwetegese olunaku olw’okulowooza? ✨';

  @override
  String get home_quick_add => 'Okwongerako amangu';

  @override
  String get home_live_gps => 'GPS obutereevu';

  @override
  String get home_calories_remaining_label => 'CALORIES EZISIGADDEWO';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ebiriibwa: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached =>
      'Ekiruubirirwa kya buli lunaku kituuse 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml okutuuka ku kiruubirirwa kya buli lunaku';
  }

  @override
  String get home_details => 'Ebisingawo';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade okusumulula personalized buli lunaku targets & AI enteekateeka';

  @override
  String get home_unlock => 'Sumulula 👑';

  @override
  String get home_quick_log_hint =>
      'Yanguwa wandiika okuyingira kw’obulamu obulungi';

  @override
  String get food_serving_size => 'Sayizi y’okugabula';

  @override
  String get food_serving_grams => 'Okuweereza (g) .';

  @override
  String get food_number_servings => 'Omuwendo gw’Ebyokugabula';

  @override
  String get food_calories_per_serving => 'Calories buli kitundu';

  @override
  String get food_recipe_ingredients => 'Ebirungo';

  @override
  String get food_recipe_add_ingredient => 'Teekamu Ekirungo';

  @override
  String get food_recipe_directions => 'Ebiragiro & Ebiwandiiko';

  @override
  String get food_recipe_total => 'Total Recipe Endya';

  @override
  String get food_recipe_per_serving => 'Per Serving Endya';

  @override
  String get food_recipe_saved_toast =>
      'Emmere eya custom eterekeddwa bulungi!';

  @override
  String get food_barcode_found => 'Ekintu Kizuuliddwa!';

  @override
  String get food_barcode_not_found_desc =>
      'Tetwasobodde kusanga bbaakoodi eno mu database enzigule. Osobola okugigattako ng’emmere ey’ennono.';

  @override
  String get food_add_custom_btn => 'Okwongerako Emmere ya Custom';

  @override
  String get food_scan_again => 'Sikaani Ddamu';

  @override
  String get food_review_items => 'Weekenneenye Emmere Ezuuliddwa';

  @override
  String get food_review_hint =>
      'Teekateeka obungi oba ggyawo ekintu kyonna ekitamanyiddwa';

  @override
  String get food_log_selected => 'Log Emmere Erondeddwa';

  @override
  String get food_favourites_title => 'Emmere Esinga Okwagala';

  @override
  String get food_recent_title => 'Emmere Eyaakafuluma';

  @override
  String get food_no_favourites =>
      'Tewali mmere gye njagala nnyo n’okutuusa kati. Tap heart ku mmere yonna okutereka wano.';

  @override
  String get food_no_recents => 'Tewali mmere yaakatimba yazuulibwa.';

  @override
  String get food_nutrition_details_title => 'Ebikwata ku ndya ya buli lunaku';

  @override
  String get food_macro_protein_label => 'Okumenya kwa Protein';

  @override
  String get food_macro_carbs_label => 'Okumenya kwa Carbs';

  @override
  String get food_macro_fat_label => 'Okumenya Amasavu';

  @override
  String get food_macro_fiber_label => 'Okumenya kwa Fiber';

  @override
  String get food_daily_target_comparison => 'Okugeraageranya Ebiruubirirwa';

  @override
  String food_target_label(Object target) {
    return 'Ekigendererwa: $target';
  }

  @override
  String get food_edit_entry => 'Edit Okuwandiika mu Diary';

  @override
  String get food_delete_entry => 'Ssaako Okuyingira';

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
    return '$current ya $target ml';
  }

  @override
  String get water_intake_history => 'Ebikondo by\'amazzi ebya leero';

  @override
  String get water_no_logs_today =>
      'Tewali mazzi gatemeddwa n\'okutuusa kati leero. Hydrate era onyige ku button ey\'amangu ey\'okugattako!';

  @override
  String get water_adjust_goal => 'Teekateeka Ekiruubirirwa kya Buli lunaku';

  @override
  String get health_connect_banner => 'Eyungiddwa ku Health Connect';

  @override
  String get health_vitals_summary => 'Ebikulu mu bulamu obwa buli lunaku';

  @override
  String get health_latest_heart_rate => 'Okukuba kw\'omutima okusembyeyo';

  @override
  String get health_latest_bp => 'Puleesa y’omusaayi';

  @override
  String get health_latest_spo2 => 'Oxygen mu musaayi';

  @override
  String get health_latest_glucose => 'Glucose mu musaayi';

  @override
  String get health_latest_weight => 'Obuzito';

  @override
  String get health_latest_sleep => 'Ebbanga ly’Okwebaka';

  @override
  String get health_add_manual => 'Okwongerako Okupima mu ngalo';

  @override
  String get health_history_trends => 'Emitendera gy’Ebyafaayo';

  @override
  String get health_sync_success =>
      'Ebikwata ku by\'obulamu bikwataganye bulungi!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours essaawa $mins eddakiika';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kkiro';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct % 100. Omuntu w\'abantu.';
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
  String get health_devices_title => 'Ebyuma Ebiyungiddwa & Ebiyambalwa';

  @override
  String get health_devices_desc =>
      'Dukanya essaawa ez’amagezi ezigatta, ebilondoola omubiri, ne sensa z’ebyobulamu.';

  @override
  String get health_workout_editor_title => 'Edit Workout mu kukola emirimu';

  @override
  String get health_workout_name_label => 'Erinnya ly’okukola dduyiro';

  @override
  String get health_workout_duration_label => 'Ebbanga (eddakiika) .';

  @override
  String get health_workout_calories_label => 'Kalori ezibalirirwamu (kcal) .';

  @override
  String get health_workout_date_label => 'Olunaku n’Essaawa';

  @override
  String get plan_daily_wellness_roadmap => 'Enteekateeka Yo ey’Obuntu';

  @override
  String get plan_morning_routine => 'Enkola y’oku makya';

  @override
  String get plan_afternoon_routine => 'Obulamu obulungi mu ttuntu';

  @override
  String get plan_evening_routine => 'Empewo ey’akawungeezi-Down';

  @override
  String get plan_coach_badge => 'Omutendesi wa Bloomi AI';

  @override
  String get plan_weekly_overview =>
      'Essira liteekeddwa ku bulamu obulungi obw’ennaku 7';

  @override
  String get plan_targets_title =>
      'Ebiruubirirwa & Ebiruubirirwa by\'obulamu obulungi';

  @override
  String get plan_calorie_budget_label => 'Embalirira ya Kalori ya Buli lunaku';

  @override
  String get plan_water_budget_label =>
      'Ekiruubirirwa ky\'amazzi ekya buli lunaku';

  @override
  String get plan_step_budget_label =>
      'Ekiruubirirwa ky\'omutendera gwa buli lunaku';

  @override
  String get plan_macro_split_label => 'Omugerageranyo gw’ebiriisa ebinene';

  @override
  String get profile_personal_details => 'Ebikwata ku Muntu';

  @override
  String get profile_body_stats => 'Ebipimo by’Omubiri';

  @override
  String get profile_app_preferences =>
      'Ebintu by\'oyagala & Enteekateeka za App';

  @override
  String get profile_edit_name_hint => 'Erinnya lyo';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Obugulumivu ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Obuzito ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Emyaka';

  @override
  String get profile_gender_male => 'Omusajja';

  @override
  String get profile_gender_female => 'Omukazi';

  @override
  String get profile_gender_other => 'Ebirala / Okwagala obutagamba';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Dduyiro mutono oba nga tolina) .';

  @override
  String get profile_activity_light => 'Lightly Active (ennaku 1-3/wiiki)';

  @override
  String get profile_activity_moderate =>
      'Omulimu ogw’ekigero (ennaku 3-5/wiiki)';

  @override
  String get profile_activity_very => 'Active nnyo (ennaku 6-7/wiiki)';

  @override
  String get settings_wear_os_header => 'Yambala App ya OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Teeka tile ya Bloomi n’ebizibu ku ssaawa yo eya Wear OS okutunula ku kalori, amazzi n’emitendera.';

  @override
  String get settings_widgets_header => 'Widgets za Android ezikwatagana';

  @override
  String get settings_widgets_desc =>
      'Pin widgets mu kiseera ekituufu ku screen y’ekyuma kyo eky’awaka okusobola okutereeza amangu.';

  @override
  String get settings_about_header => 'Ebikwata ku Bloomi';

  @override
  String get settings_about_version => 'Enkyusa 1.0.0';

  @override
  String get settings_about_build => 'Zimba 100';

  @override
  String get settings_about_credits =>
      'Ekoleddwa n’obwegendereza ku bulamu obw’ebirowoozo, obulungi.';

  @override
  String get settings_terms_header => 'Ebiragiro n’Obukwakkulizo';

  @override
  String get settings_privacy_header => 'Enkola y’Ebyama';

  @override
  String get settings_delete_header => 'Sazaamu Akawunti & Data';

  @override
  String get settings_delete_warning =>
      'Ekikolwa kino tekiyinza kuddibwamu. Emmere yo yonna, workouts, vitals, ne profile yo bijja kusazibwamu enkalakkalira.';

  @override
  String get settings_delete_confirm_btn => 'Okusazaamu Enkalakkalira';

  @override
  String get onboard_welcome_headline => 'Mwaniriziddwa mu Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Gentle, mindful wellness tracking etegekeddwa okwetoloola obulamu bwo.';

  @override
  String get onboard_step_about => 'Ebikukwatako';

  @override
  String get onboard_step_goals => 'Ebiruubirirwa Byo';

  @override
  String get onboard_step_lifestyle => 'Emize gya Buli lunaku';

  @override
  String get onboard_step_permissions => 'Olukusa';

  @override
  String get onboard_step_plan => 'Mwetegefu!';

  @override
  String get onboard_health_connect_perm => 'Ebyobulamu Okuyunga Okutuuka ku';

  @override
  String get onboard_step_sensors_perm => 'Sensor y’Eddaala Counter';

  @override
  String get onboard_notif_perm => 'Okujjukiza & Okumanyisibwa mu birowoozo';

  @override
  String get onboard_camera_perm => 'Kkamera (Barcode & Sikaani y\'Emmere)';

  @override
  String get onboard_grant_permissions => 'Okuwa Olukusa';

  @override
  String get onboard_continue_dashboard => 'Ggulawo Dashboard';

  @override
  String get notif_channel_hydration_name => 'Ebiwujjo by’amazzi';

  @override
  String get notif_channel_hydration_desc =>
      'Okujjukiza amazzi amagonvu olunaku lwonna';

  @override
  String get notif_channel_nutrition_name => 'Emmere & Endya Ebijjukiza';

  @override
  String get notif_channel_nutrition_desc =>
      'Okulabula okujjukiza ekyenkya, ekyemisana n’ekyeggulo';

  @override
  String get notif_channel_steps_name => 'Emitendera egy’omugaso';

  @override
  String get notif_channel_steps_desc =>
      'Ebikujjuko nga otuuse ku biruubirirwa by’emitendera egya buli lunaku';

  @override
  String get notif_channel_vitals_name => 'Okukebera Ebyobulamu & Ebikulu';

  @override
  String get notif_channel_vitals_desc =>
      'Obuzito n’okujjukiza empewo-down nga tonnagenda kwebaka';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Emmere y\'emiti';

  @override
  String get language => 'Olulimi';

  @override
  String get share => 'Gabanako';

  @override
  String common_days(Object count) {
    return '$count d emabega';
  }
}
