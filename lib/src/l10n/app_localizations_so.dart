// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Guriga';

  @override
  String get nav_today => 'Maanta';

  @override
  String get nav_plan => 'Qorshe';

  @override
  String get nav_food => 'Cunto';

  @override
  String get nav_food_diary => 'Xusuus-qorka cuntada';

  @override
  String get nav_workout => 'Log Workout';

  @override
  String get nav_health => 'Caafimaadka';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Badbaadin';

  @override
  String get cancel => 'Jooji';

  @override
  String get delete => 'Tirtir';

  @override
  String get edit => 'Wax ka beddel';

  @override
  String get done => 'La sameeyay';

  @override
  String get close => 'Xir';

  @override
  String get back => 'Dib u noqo';

  @override
  String get next => 'Xiga';

  @override
  String get continue_btn => 'Sii wad';

  @override
  String get confirm => 'Xaqiiji';

  @override
  String get search => 'Raadi';

  @override
  String get filter => 'Shaandhayso';

  @override
  String get all => 'Dhammaan';

  @override
  String get active => 'Firfircoon';

  @override
  String get today => 'Maanta';

  @override
  String get yesterday => 'Shalay';

  @override
  String get tomorrow => 'Berrito';

  @override
  String get add => 'Ku dar';

  @override
  String get remove => 'Ka saar';

  @override
  String get refresh => 'Dib u cusboonaysii';

  @override
  String get retry => 'Isku day';

  @override
  String get error => 'Khalad';

  @override
  String get success => 'Guul';

  @override
  String get loading => 'Soodejinaya...';

  @override
  String get no_data => 'Wax xog ah lagama hayo';

  @override
  String get offline => 'Qaabka khadka tooska ah';

  @override
  String get offline_sub =>
      'Isbeddellada ayaa iswaafajin doona marka dib loo xidho';

  @override
  String get undo => 'Ka noqo';

  @override
  String get portion => 'Qayb';

  @override
  String get quantity => 'Tirada';

  @override
  String get unit => 'Unug';

  @override
  String get clear => 'Cad';

  @override
  String get select => 'Dooro';

  @override
  String get apply => 'Codso';

  @override
  String get reset => 'Dib u dajin';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Haa';

  @override
  String get no => 'Maya';

  @override
  String get optional => 'Ikhtiyaari';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Kaarboon';

  @override
  String get fat => 'Baruur';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Biyo';

  @override
  String get steps => 'Talaabooyinka';

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
  String get inches => 'gudaha';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'saac';

  @override
  String get minutes => 'daqiiqo';

  @override
  String get serving => 'U adeegida';

  @override
  String get servings => 'U adeegid';

  @override
  String get serving_size => 'Cabirka Adeegga';

  @override
  String get per_100g => '100 g';

  @override
  String get india => 'Hindiya';

  @override
  String get asia => 'Aasiya';

  @override
  String get europe => 'Yurub';

  @override
  String get middle_east => 'Bariga Dhexe';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Ameerika';

  @override
  String get home_title => 'Guriga';

  @override
  String get home_greeting_morning => 'Subax Wacan';

  @override
  String get home_greeting_afternoon => 'Galab Wacan';

  @override
  String get home_greeting_evening => 'Fiid Wanaagsan';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '_PH_0__ maalmo xiriir ah',
      one: '1 maalin xiriir ah',
      zero: '0 maalmood oo xiriir ah',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Gubatay';

  @override
  String get home_calories_budget => 'Miisaaniyadda kalooriga';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal haray';
  }

  @override
  String get home_water_title => 'Fuuq-celinta maalinlaha ah';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / _PH_1__ ml';
  }

  @override
  String get home_steps_title => 'Tallaabooyinka La Lugeeyay';

  @override
  String get home_quick_actions => 'Tallaabooyinka Degdegga ah';

  @override
  String get home_log_meal => 'Cuntada Log';

  @override
  String get home_log_water => 'Log Biyaha';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Miisaanka';

  @override
  String get home_insights_title => 'Aragtida Maanta';

  @override
  String get home_quote =>
      'Doorashooyin yaryar oo caafimaad qaba ayaa abuura isbeddel ubaxeed.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Tababaraha';

  @override
  String get home_surroundings => 'Hareeraha & Hawada';

  @override
  String get home_notifications => 'Ogeysiisyada';

  @override
  String get home_daily_score => 'Dhibcaha Fayodhowrka Maalinlaha ah';

  @override
  String get home_view_all => 'Daawo Dhammaan';

  @override
  String get food_diary_title => 'Xusuus-qorka cuntada';

  @override
  String get food_breakfast => 'Quraacda';

  @override
  String get food_lunch => 'Qado';

  @override
  String get food_dinner => 'Casho';

  @override
  String get food_snacks => 'Cunto fudud';

  @override
  String get food_add_food => 'Ku dar Cunto';

  @override
  String get food_edit_food => 'Wax ka beddel Cunnada';

  @override
  String get food_add_breakfast => 'Ku dar Quraac';

  @override
  String get food_add_lunch => 'Ku dar Qado';

  @override
  String get food_add_dinner => 'Casho ku dar';

  @override
  String get food_add_snack => 'Ku dar Cunto fudud';

  @override
  String get food_total_calories => 'Wadarta Calories';

  @override
  String get food_empty_meal => 'Weli cunto looma diiwaan gelin cuntadan';

  @override
  String get food_empty_diary => 'Cunto lama diiwaan gelin maalintan';

  @override
  String get food_log_first_meal =>
      'Taabo + si aad u gasho cuntadaada macaan ee ugu horeysa';

  @override
  String get food_quick_add => 'Dhakhso ku dar';

  @override
  String get food_search_hint => 'Raadi suxuunta, miraha, daloolka, roti...';

  @override
  String get food_custom_recipe => 'Cunnada Gaarka ah & Cuntada';

  @override
  String get food_scan_barcode => 'Iskaan Barcode';

  @override
  String get food_camera_scan => 'Sawir-qaade Cunnada AI';

  @override
  String get food_recent => 'Cuntooyinkii dhawaa';

  @override
  String get food_favourites => 'Kuwa ugu jecel';

  @override
  String get food_macro_summary => 'Burburinta Macronutrients';

  @override
  String get food_delete_meal_confirm =>
      'Ma hubtaa inaad doonayso inaad ka saarto shaygan?';

  @override
  String get food_item_deleted => 'Shayga cuntada waa la saaray';

  @override
  String get food_remaining => 'haray';

  @override
  String get food_consumed => 'la cunay';

  @override
  String food_of_target(Object target) {
    return 'ee $target kcal';
  }

  @override
  String get foodSearch_title => 'Raadi Cuntooyinka';

  @override
  String get foodSearch_scan_barcode => 'Iskaan Barcode';

  @override
  String get foodSearch_take_photo => 'Sawirka Cunnada Degdegga ah';

  @override
  String get foodSearch_custom_food => 'Abuur Cunto Gaar ah';

  @override
  String get foodSearch_recent_searches => 'Raadintii dhawaa';

  @override
  String get foodSearch_popular => 'Suxuunta caanka ah';

  @override
  String get foodSearch_no_results =>
      'Ma jiraan cuntooyin ku habboon raadintaada';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Ku toosi barcode gudaha qaabka kamarada';

  @override
  String get barcode_not_found => 'Alaabta lagama helin kaydka xogta';

  @override
  String get barcode_premium_feature =>
      'Baadhitaanka Barcode ayaa la heli karaa Bloomi Pro';

  @override
  String get camera_title => 'Sawir-qaade Cunnada AI';

  @override
  String get camera_tap_hint => 'Sawir cad ka qaad saxankaada';

  @override
  String get camera_analysing => 'Falanqaynta saxanka cuntada';

  @override
  String get camera_detected => 'Alaabta la ogaaday';

  @override
  String get camera_flash => 'Bedel Flash';

  @override
  String get camera_retake => 'Dib u qaad Sawirka';

  @override
  String get camera_confirm_food => 'Xaqiiji walxaha';

  @override
  String get customFood_title => 'Cunnada Gaarka ah & Cuntada';

  @override
  String get customFood_name_hint => 'Saxanka ama magaca ka kooban';

  @override
  String get customFood_calories_hint => 'Calories (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Karboor (g)';

  @override
  String get customFood_fat_hint => 'Dufan (g)';

  @override
  String get customFood_save => 'Kaydi Recipe';

  @override
  String get water_tracker_title => 'Biyo-raaciyaha';

  @override
  String get water_daily_target => 'Hadafka Fayadhowrka Maalinlaha ah';

  @override
  String get water_logged_today => 'La Galay Maanta';

  @override
  String get water_add_glass => '+ 250 ml oo galaas ah';

  @override
  String get water_add_bottle => '+ 500 ml Dhalo';

  @override
  String get water_custom_amount => 'Qadarka gaarka ah';

  @override
  String get water_reminder_tip =>
      'Biyaha si joogto ah u cab maalintii oo dhan si aad u hesho tamar joogto ah.';

  @override
  String water_logged_toast(Object amount) {
    return 'Gallay $amount ml oo biyo ah 💧';
  }

  @override
  String get workout_title => 'Log Workout';

  @override
  String get workout_add_exercise => 'Ku dar Jimicsiga';

  @override
  String get workout_cardio => 'Wadnaha';

  @override
  String get workout_strength => 'Xoog';

  @override
  String get workout_yoga => 'Yoga & Dabacsanaan';

  @override
  String get workout_duration => 'Muddada';

  @override
  String get workout_intensity => 'xoojinta';

  @override
  String get workout_calories_burned => 'Calories gubtay';

  @override
  String get workout_empty => 'Ma jiro jimicsi la soo galay maanta';

  @override
  String get workout_save_success =>
      'Jimicsiga waa la badbaadiyay si guul leh!';

  @override
  String get workout_type => 'Nooca Jimicsiga';

  @override
  String get workout_notes => 'Xusuusin & Milicsi';

  @override
  String get health_overview_title => 'Caafimaadka & Muhiimada';

  @override
  String get health_heart_rate => 'Heerka Wadnaha';

  @override
  String get health_blood_oxygen => 'Ogsajiinta dhiigga (SpO2)';

  @override
  String get health_blood_pressure => 'Dhiig karka';

  @override
  String get health_blood_glucose => 'Gulukooska dhiigga';

  @override
  String get health_body_temperature => 'Heerkulka Jirka';

  @override
  String get health_sleep_tracking => 'Dabagalka hurdada';

  @override
  String get health_weight_tracking => 'Miisaanka & Halabuurka Jirka';

  @override
  String get health_waist_hip => 'Saamiga dhexda-ilaa-miska';

  @override
  String get health_devices_hub => 'Qalabka & Smartwatch Hub';

  @override
  String get health_sync_now => 'Isku xidh xogta caafimaadka';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Markii ugu dambeysay ee la isku dhejiyay: _PH_0__';
  }

  @override
  String get health_manual_entry => 'Galitaanka Caafimaadka ee Buugga';

  @override
  String get health_metric_detail => 'Faahfaahinta Metric';

  @override
  String get health_connected_sensors =>
      'Dareemayaasha Caafimaadka ee ku xiran';

  @override
  String get plan_title => 'Qorshaha maalinlaha ah';

  @override
  String get plan_weekly_title => 'Qorshaha Fayo-dhowrka toddobaadlaha ah';

  @override
  String get plan_calorie_target => 'Bartilmaameedka kalooriga';

  @override
  String get plan_water_target => 'Bartilmaameedka fuuq-baxa';

  @override
  String get plan_step_target => 'Talaabada Bartilmaameedka';

  @override
  String get plan_sleep_target => 'Bartilmaameedka hurdada';

  @override
  String get plan_meal_suggestions => 'Soo jeedinta cuntada';

  @override
  String get plan_healthy_habits => 'Caadooyinka Caafimaadka Fiican & Talooyin';

  @override
  String get plan_coach_advice => 'Talooyinka Tababaraha Bloomi AI';

  @override
  String get plan_generated_title =>
      'Jadwalka maalinlaha ah ee shakhsi ahaaneed';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Wax ka beddel xogta';

  @override
  String get profile_name => 'Magaca';

  @override
  String get profile_age => 'Da\'da';

  @override
  String get profile_gender => 'Jinsiga';

  @override
  String get profile_height => 'Dhererka';

  @override
  String get profile_weight => 'Miisaanka';

  @override
  String get profile_goal => 'Hadafka Koowaad';

  @override
  String get profile_activity_level => 'Heerka Hawsha';

  @override
  String get profile_stats => 'Istaatistikada Caafimaadkayga';

  @override
  String get profile_saved => 'Xogta si guul leh ayaa loo cusboonaysiiyay';

  @override
  String get profile_bmi => 'Tilmaanta Tirada Jirka (BMI)';

  @override
  String get profile_membership => 'Xubinimada';

  @override
  String get settings => 'Dejinta';

  @override
  String get preferences_habits => 'Dookhyada & Caadooyinka';

  @override
  String get appearance_theme => 'Muuqaalka & Dulucda';

  @override
  String get appearance_theme_sub =>
      'Madow, Iftiin, Qaabka Nidaamka & Xulashada asalka App';

  @override
  String get permissions => 'Ogolaanshaha & Helitaanka Nidaamka';

  @override
  String get permissions_sub =>
      'Isku xirka Caafimaadka, Dareemayaasha Tallaabada, GPS, Ogeysiisyada & Kamarada';

  @override
  String get reminders_notifications => 'Xusuusin & Ogeysiisyo';

  @override
  String get reminders_sub =>
      'Waqtiyada cuntada, biyaha, hubinta miisaanka iyo xasuusinta wakhtiga jiifka';

  @override
  String get units_of_measurement => 'Unugyada Cabbirka';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) ama Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Luuqada App-ka';

  @override
  String get language_sub =>
      'Ingiriisi, हिन्दी (Hindi), Hinglish & 195+ luqadaha caalamiga ah';

  @override
  String get home_screen_widgets => 'Qalabka Shaashada Guriga';

  @override
  String get widgets_sub =>
      'Widgets-ka tooska ah ee Android: Hub, Talaabooyinka, Biyaha, Nafaqada & Mascot';

  @override
  String get wear_os_watch_app => 'Xiro OS Watch App';

  @override
  String get wear_os_sub =>
      'Saaxiibka Smartwatch, foornada, dhibaatooyinka & waxyaabaha muhiimka ah ee nool';

  @override
  String get goals_wellness => 'Himilooyinka & Fayo-qabka';

  @override
  String get nutrition_targets =>
      'Bartilmaameedyada Nafaqada & Kala Qaybsanaanta Macro';

  @override
  String get nutrition_targets_sub =>
      'Bartilmaameedka kalooriga, borotiinka, karbohaydraytyada, baruurta & yoolka biyaha';

  @override
  String get weekly_recap => 'Soo koobida Fayodhawrka Todobaadlaha';

  @override
  String get weekly_recap_sub =>
      'Celceliska kaloriyada 7-maalmood, saamiga macro & maalinta ugu fiican';

  @override
  String get streaks_milestones => 'Diritaannada & Horumarrada';

  @override
  String get streaks_sub =>
      'Xariijimaha ubaxa ee firfircoon, calaamadaha & guulaha';

  @override
  String get connected_devices => 'AALADAHA KU XIDHNOW & ECOSYSTEM';

  @override
  String get devices_hub => 'Qalabka & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Connect Health, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Hareeraha & Cimilada';

  @override
  String get surroundings_sub =>
      'Tayada hawada (AQI), UV index & talooyinka fuuq-celinta cimilada';

  @override
  String get bloomi_pro => 'Isdiiwaangelinta Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Tababaraha Qorshaha AI, 5 widgets shaashadda guriga & raadraaca muhiimka ah';

  @override
  String get about_security => 'KU SAABSAN & AMNIGA';

  @override
  String get about_bloomi => 'Ku saabsan Bloomi';

  @override
  String get about_bloomi_sub => 'Dhis tilmaamo, nooca, sifooyinka';

  @override
  String get privacy_policy => 'Siyaasadda Qarsoonnimada';

  @override
  String get privacy_policy_sub =>
      'Offline-koowaad, qaab dhismeedka xogta qalabka';

  @override
  String get terms_conditions => 'Shuruudaha & Shuruudaha';

  @override
  String get terms_conditions_sub =>
      'Shuruudaha adeegga iyo tilmaamaha fayoqabka';

  @override
  String get delete_account => 'Tirtir Koontada & Xogta';

  @override
  String get delete_account_sub =>
      'Si aan ka noqosho lahayn u tirtir xogta SQLite ee deegaanka iyo kaydinta daruuraha';

  @override
  String get healthy_habits => 'Dhis caadooyin roon oo waara';

  @override
  String get all_logs => 'Xogta aan La Raacay & Diiwaanka';

  @override
  String get search_language => 'Ku raadi luqad ama far hooyo...';

  @override
  String get languages_available => 'Luuqadaha la heli karo';

  @override
  String get no_matching_languages => 'Lama helin luqado u dhigma';

  @override
  String get try_searching =>
      'Isku day inaad ku raadiso far hooyo ama higgaad Ingiriisi';

  @override
  String get partially_translated => 'Qayb ahaan la turjumay';

  @override
  String get complete_translation => 'Dhameystiran';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Luuqada loo dejiyay _PH_0__ ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Hareeraha & Deegaanka';

  @override
  String get surroundings_aqi => 'Tusmada Tayada Hawada';

  @override
  String get surroundings_uv => 'Tusmada UV';

  @override
  String get surroundings_temp => 'Heerkulka';

  @override
  String get surroundings_humidity => 'Qoyaanka';

  @override
  String get surroundings_hydration_advice =>
      'Si fiican u waraabi xaaladaha cimilada hadda jirta.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Raadi Cuntada';

  @override
  String get food_quick_barcode => 'Iskaan Barcode 👑';

  @override
  String get food_quick_water => 'Ku dar Biyo';

  @override
  String get food_quick_custom => 'Cunto Caadi ah';

  @override
  String get surroundings_good => 'Wacan';

  @override
  String get surroundings_moderate => 'Dhexdhexaad';

  @override
  String get surroundings_unhealthy => 'Caafimaad darro';

  @override
  String get notifications_title => 'Ogeysiisyada & Digniinaha';

  @override
  String get notifications_empty => 'Ma jiro wargelin cusub';

  @override
  String get notifications_mark_read =>
      'Ku calaamadee dhammaan sida loo akhriyo';

  @override
  String get notifications_clear => 'Nadiifi Dhammaan';

  @override
  String get reminders => 'Dejinta Xusuusinta';

  @override
  String get notifications => 'Ogeysiisyada';

  @override
  String get reminders_breakfast_title => 'Xusuusinta Quraacda 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Subax wanaagsan! Waqtiga quraacda nafaqada leh $time .';
  }

  @override
  String get reminders_lunch_title => 'Xusuusin Qado 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Hakad oo ku raaxayso qadada dheellitiran, ee maskaxda ku haysa $time .';
  }

  @override
  String get reminders_dinner_title => 'Xusuusin Casho 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Wakhtiga iftiinka, casho qancisa $time .';
  }

  @override
  String get reminders_water_title => 'Nadiifinta fuuq-baxa 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Waqti aad cabto koob biyo cusub ah! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Miisaanka Todobaadlaha ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Raadraac cabbirka jirkaaga toddobaadlaha ah Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title =>
      'Waqtiga jiifka dabayshu hoos u dhacday 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Dabool oo u diyaari hurdo nasasho leh ( $time ).';
  }

  @override
  String get onboard_welcome => 'Ku soo dhawoow Bloomi';

  @override
  String get onboard_sub => 'Saaxiibkaaga, caafimaadka iyo nafaqeynta kowaad.';

  @override
  String get onboard_get_started => 'Bilow';

  @override
  String get onboard_sign_in => 'Soo gal';

  @override
  String get onboard_skip => 'Ka bood';

  @override
  String get onboard_choose_goal =>
      'Waa maxay yoolkaaga fayoobi ee aasaasiga ah?';

  @override
  String get onboard_goal_weight_loss => 'Miisaanka dabacsan';

  @override
  String get onboard_goal_muscle => 'Koritaanka Murqaha & Xoogga';

  @override
  String get onboard_goal_energy => 'Tamarta Maalinlaha ah & Muhiimadda';

  @override
  String get onboard_goal_habits => 'Cunista Maskaxda Caafimaadka qabta';

  @override
  String get onboard_about_you => 'Naftaada noo sheeg';

  @override
  String get onboard_lifestyle => 'Jadwalkaaga Maalinlaha ah';

  @override
  String get onboard_permissions_title => 'Ogolaanshaha & Helitaanka Nidaamka';

  @override
  String get onboard_permissions_sub =>
      'U oggolow marin u helka tillaabooyinka isku xidhka, jimicsiga, iyo xusuusinta.';

  @override
  String get onboard_plan_ready_title => 'Qorshahaaga gaarka ah waa diyaar!';

  @override
  String get onboard_plan_ready_sub =>
      'Waxaanu kuu samaynay khariidad nafaqayn oo shakhsi ah iyo khariidad fayoobi adiga oo keliya.';

  @override
  String get onboard_enter_bloomi => 'Gali Bloomi';

  @override
  String get insights_weekly_report => 'Soo koobida Fayodhawrka Todobaadlaha';

  @override
  String insights_best_day(Object day) {
    return 'Maalinta Joogteynta ugu Fiican: _PH_0__';
  }

  @override
  String get insights_streaks_badges => 'Diritaannada & Horumarrada';

  @override
  String insights_unlocked_on(Object date) {
    return 'Furmay _PH_0__';
  }

  @override
  String get insights_keep_going => 'Sii wad horumarka cajiibka ah!';

  @override
  String get widgets_title => 'Qalabka Shaashada Guriga';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets firfircoon: _PH_0__';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Talaabooyinka & giraanta Firfircoon';

  @override
  String get widgets_water_title => 'Diiwaanka Degdegga ah ee Fuuq-baxa';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Xiro OS Smartwatch';

  @override
  String get wear_os_connected => 'Ku xidhan Watch';

  @override
  String get wear_os_sync => 'Isku xidh xogta daawashada';

  @override
  String get theme_title => 'Muuqaalka & Dulucda';

  @override
  String get theme_mode => 'Qaabka Mawduuca';

  @override
  String get theme_light => 'Iftiin';

  @override
  String get theme_dark => 'Madow';

  @override
  String get theme_system => 'Nidaamka Default';

  @override
  String get theme_background_palette => 'Palette Background';

  @override
  String get units_title => 'Unugyada Cabbirka';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, gudaha, fl oz)';

  @override
  String get home_unable_load => 'Aan awoodin in la shubo dashboard-ka';

  @override
  String get home_health_permission_req =>
      'Ogolaanshaha isku xirka caafimaadka ayaa loo baahan yahay';

  @override
  String get home_health_permission_desc =>
      'Bloomi waxay u baahan tahay ogolaansho Connection Health si ay u jiidato tillaabooyinka dhabta ah, garaaca wadnaha, iyo isku xidhka aaladaha guriga mobilada wakhtiga dhabta ah.';

  @override
  String get home_allow_health => 'Allow ku xidhidh caafimaad';

  @override
  String get home_ready_mindful_day => 'Diyaar ma u tahay maalin xusuus leh? ✨';

  @override
  String get home_quick_add => 'Dhakhso ku dar';

  @override
  String get home_live_gps => 'GPS-ka tooska ah';

  @override
  String get home_calories_remaining_label => 'kalooriyada haray';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'La cunay: _PH_0__ / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Taabo Biyo-raaciyaha Biyaha 💧';

  @override
  String get home_water_goal_reached =>
      'Hadafka maalinlaha ah ayaa la gaarey 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '_PH_0__ ml ilaa yoolka maalinlaha ah';
  }

  @override
  String get home_details => 'Faahfaahin';

  @override
  String get home_upgrade_plan_desc =>
      'Kor u qaad si aad u furto bartilmaameedyada maalinlaha ah iyo qorshaha AI';

  @override
  String get home_unlock => 'Fur 👑';

  @override
  String get home_quick_log_hint => 'Degdeg u duub galitaanka fayoqabka';

  @override
  String get food_serving_size => 'Cabirka Adeegga';

  @override
  String get food_serving_grams => 'u adeegaya (g)';

  @override
  String get food_number_servings => 'Tirada Adeegyada';

  @override
  String get food_calories_per_serving => 'Calories halkii adeeg';

  @override
  String get food_recipe_ingredients => 'Maaddooyinka';

  @override
  String get food_recipe_add_ingredient => 'Ku dar walxo';

  @override
  String get food_recipe_directions => 'Tilmaamaha & Qoraallada';

  @override
  String get food_recipe_total => 'Wadarta Cuntada Cuntada';

  @override
  String get food_recipe_per_serving => 'Adeegga Nafaqada';

  @override
  String get food_recipe_saved_toast =>
      'Cunto gaar ah ayaa loo badbaadiyay si guul leh!';

  @override
  String get food_barcode_found => 'Alaabta La Helay!';

  @override
  String get food_barcode_not_found_desc =>
      'Waanu ka heli waynay barcode-kan kaydka xogta furan. Waxaad ku dari kartaa sidii cunto caadi ah.';

  @override
  String get food_add_custom_btn => 'Kudar Cunto Caadi ah';

  @override
  String get food_scan_again => 'Mar labaad baadh';

  @override
  String get food_review_items => 'Dib u eeg Cuntooyinka La Ogaaday';

  @override
  String get food_review_hint =>
      'Hagaajin tirada ama ka saar shay kasta oo aan la aqoonsan';

  @override
  String get food_log_selected => 'Log Foods Selected';

  @override
  String get food_favourites_title => 'Cuntooyinka la jecel yahay';

  @override
  String get food_recent_title => 'Cuntooyinkii dhawaa';

  @override
  String get food_no_favourites =>
      'Weli ma jiraan cuntooyin aad jeceshahay. Taabo cunto kasta si aad halkan u kaydsato.';

  @override
  String get food_no_recents => 'Cuntooyin dhawaan la qoray lama helin';

  @override
  String get food_nutrition_details_title =>
      'Faahfaahinta Nafaqada Maalinlaha ah';

  @override
  String get food_macro_protein_label => 'Burburinta borotiinka';

  @override
  String get food_macro_carbs_label => 'Burburka karbohaydraytyada';

  @override
  String get food_macro_fat_label => 'Burburka Baruurta';

  @override
  String get food_macro_fiber_label => 'Burburka Fiberka';

  @override
  String get food_daily_target_comparison => 'Barbardhigga Bartilmaameedka';

  @override
  String food_target_label(Object target) {
    return 'Bartilmaameedka: _PH_0__';
  }

  @override
  String get food_edit_entry => 'Wax ka beddel Gelitaanka Xusuus-qorka';

  @override
  String get food_delete_entry => 'Tirtir Gelitaanka';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '_PH_0__ kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '_PH_0__ ee $target ml';
  }

  @override
  String get water_intake_history => 'Diiwaanka Biyaha ee Maanta';

  @override
  String get water_no_logs_today =>
      'Wali biyo ma galin maanta. Wareeji oo taabo badhan ku dar degdeg ah!';

  @override
  String get water_adjust_goal => 'Hagaaji yoolka maalinlaha ah';

  @override
  String get health_connect_banner => 'Ku Xidhiidhka Caafimaadka';

  @override
  String get health_vitals_summary => 'Muhiimada Caafimaadka Maalinlaha ah';

  @override
  String get health_latest_heart_rate => 'Heerka Wadnaha ee ugu dambeeyay';

  @override
  String get health_latest_bp => 'Dhiig karka';

  @override
  String get health_latest_spo2 => 'Ogsajiinta dhiiga';

  @override
  String get health_latest_glucose => 'Gulukooska dhiigga';

  @override
  String get health_latest_weight => 'Miisaanka';

  @override
  String get health_latest_sleep => 'Muddada hurdada';

  @override
  String get health_add_manual => 'Ku dar Cabbirka Manual';

  @override
  String get health_history_trends => 'Isbeddellada Taariikhiga ah';

  @override
  String get health_sync_success =>
      'Xogta caafimaadka si guul leh ayaa loo habeeyey!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '_PH_0__ saac _PH_1__ daqiiqo';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '_PH_0__ kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '_PH_0__ bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '_PH_0__ %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '_PH_0__ / _PH_1__ mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '_PH_0__ mg/dL';
  }

  @override
  String get health_devices_title => 'Aalado ku xidhan & Wearables';

  @override
  String get health_devices_desc =>
      'Maamul saacadaha smartwatch ee lammaane ah, raad-raacayaasha jir dhiska, iyo dareemayaasha caafimaadka.';

  @override
  String get health_workout_editor_title => 'Wax ka beddel jimicsiga';

  @override
  String get health_workout_name_label => 'Magaca Jimicsiga';

  @override
  String get health_workout_duration_label => 'Mudada (daqiiqado)';

  @override
  String get health_workout_calories_label => 'Kalooriyada la qiyaasay (kcal)';

  @override
  String get health_workout_date_label => 'Taariikhda iyo Waqtiga';

  @override
  String get plan_daily_wellness_roadmap => 'Khariidaddaada shaqsiyeed';

  @override
  String get plan_morning_routine => 'Subaxdii caadiga ahayd';

  @override
  String get plan_afternoon_routine => 'Fayoobida duhurkii';

  @override
  String get plan_evening_routine => 'Fiidkii Dabayl-hoos';

  @override
  String get plan_coach_badge => 'Bloomi AI Tababaraha';

  @override
  String get plan_weekly_overview => '7-Maalin Feejignaanta Fayo-dhowrka';

  @override
  String get plan_targets_title => 'Bartilmaameedyada Fayoqabka & Yoolalka';

  @override
  String get plan_calorie_budget_label =>
      'Miisaaniyadda kalooriga maalinlaha ah';

  @override
  String get plan_water_budget_label => 'Bartilmaameedka Biyaha Maalinlaha ah';

  @override
  String get plan_step_budget_label => 'Hadafka Talabada Maalinlaha ah';

  @override
  String get plan_macro_split_label => 'Qiyaasta Maroojin';

  @override
  String get profile_personal_details => 'Faahfaahinta Shaqsiyeed';

  @override
  String get profile_body_stats => 'Cabbiraadda Jirka';

  @override
  String get profile_app_preferences => 'Dookhyada & Dejinta Appka';

  @override
  String get profile_edit_name_hint => 'Magacaaga';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Dhererka ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Miisaanka ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Da\'da';

  @override
  String get profile_gender_male => 'Lab';

  @override
  String get profile_gender_female => 'Dheddig';

  @override
  String get profile_gender_other => 'Mid kale / doorbidi lahaa inaan la odhan';

  @override
  String get profile_activity_sedentary =>
      'Fadhiid (Jimicsi yar oo aan lahayn)';

  @override
  String get profile_activity_light =>
      'Dhaqdhaqaaq yar (1-3 maalmood/toddobaadkii)';

  @override
  String get profile_activity_moderate =>
      'Dhaqdhaqaaq dhexdhexaad ah (3-5 maalmood/toddobaadkii)';

  @override
  String get profile_activity_very =>
      'Aad u firfircoon (6-7 maalmood/toddobaadkii)';

  @override
  String get settings_wear_os_header => 'Xiro App Companion App';

  @override
  String get settings_wear_os_desc =>
      'Ku rakib foornada Bloomi iyo dhibka saacaddaada Wear OS si aad u eegto kalooriyooyinka, biyaha, iyo tallaabooyinka.';

  @override
  String get settings_widgets_header =>
      'Widgets-ka Android-ka ah ee is-dhexgalka';

  @override
  String get settings_widgets_desc =>
      'Ku dheji widgets-ka-waqtiga-dhabta ah shaashadda guriga ee qalabka si aad u hesho cusboonaysiinta degdega ah.';

  @override
  String get settings_about_header => 'Ku saabsan Bloomi';

  @override
  String get settings_about_version => 'Nooca 1.0.0';

  @override
  String get settings_about_build => 'Dhis 100';

  @override
  String get settings_about_credits =>
      'Lagu farsameeyay daryeelka si miyir leh, nolol caafimaad leh.';

  @override
  String get settings_terms_header => 'Shuruudaha iyo Shuruudaha';

  @override
  String get settings_privacy_header => 'Siyaasadda Qarsoonnimada';

  @override
  String get settings_delete_header => 'Tirtir Koontada & Xogta';

  @override
  String get settings_delete_warning =>
      'Tallaabadan lama noqon karo. Dhammaan cuntooyinkaaga, jimicsigaaga, waxyaabaha muhiimka ah, iyo astaanta guud waa la tirtiri doonaa si joogto ah.';

  @override
  String get settings_delete_confirm_btn => 'Si joogto ah u tirtir';

  @override
  String get onboard_welcome_headline => 'Ku soo dhawoow Bloomi✨';

  @override
  String get onboard_welcome_tagline =>
      'Dabagalka fayoqabka ee naxariista leh, ee maskaxda ku haysa ee loogu talagalay hareeraha noloshaada.';

  @override
  String get onboard_step_about => 'Ku saabsan adiga';

  @override
  String get onboard_step_goals => 'Yoolalkaaga';

  @override
  String get onboard_step_lifestyle => 'Caadooyinka maalmeed';

  @override
  String get onboard_step_permissions => 'Ogolaanshaha';

  @override
  String get onboard_step_plan => 'Diyaar ah!';

  @override
  String get onboard_health_connect_perm =>
      'Helitaanka Isku Xidhka Caafimaadka';

  @override
  String get onboard_step_sensors_perm => 'Talaabada Counter Sensor';

  @override
  String get onboard_notif_perm => 'Xusuusin Maskax leh & Ogeysiisyo';

  @override
  String get onboard_camera_perm => 'Kamarada (Barcode & Scaner Food)';

  @override
  String get onboard_grant_permissions => 'Ogolaanshaha deeqda';

  @override
  String get onboard_continue_dashboard => 'Fur Dashboard-ka';

  @override
  String get notif_channel_hydration_name => 'Nadiifinta fuuq-baxa';

  @override
  String get notif_channel_hydration_desc =>
      'Xusuusinta biyaha dabacsan maalintii oo dhan';

  @override
  String get notif_channel_nutrition_name => 'Xusuusinta Cuntada & Nafaqada';

  @override
  String get notif_channel_nutrition_desc =>
      'Ogeysiisyada xusuusinta quraacda, qadada, iyo cashada';

  @override
  String get notif_channel_steps_name => 'Tallaabooyinka Horumarka';

  @override
  String get notif_channel_steps_desc =>
      'Dabaaldegga marka la gaaro yoolalka maalinlaha ah ee tillaabooyinka';

  @override
  String get notif_channel_vitals_name => 'Caafimaadka & Hubinta Muhiimka ah';

  @override
  String get notif_channel_vitals_desc =>
      'Miisaanka iyo wakhtiga jiifka xasuusinta dabayl hoos u dhaca';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Hudheel 15m';

  @override
  String get notif_action_log_meal => '🥗 Cuntada Log';

  @override
  String get language => 'Luuqad';

  @override
  String get share => 'La wadaag';

  @override
  String common_days(Object count) {
    return '_PH_0__ d kahor';
  }
}
