// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Igbo (`ig`).
class AppLocalizationsIg extends AppLocalizations {
  AppLocalizationsIg([String locale = 'ig']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ụlọ';

  @override
  String get nav_today => 'Taa';

  @override
  String get nav_plan => 'Atụmatụ';

  @override
  String get nav_food => 'Nri';

  @override
  String get nav_food_diary => 'Akwụkwọ ndekọ nri';

  @override
  String get nav_workout => 'Ndekọ mgbatị ahụ';

  @override
  String get nav_health => 'Ahụike';

  @override
  String get nav_profile => 'Profaịlụ';

  @override
  String get save => 'Chekwa';

  @override
  String get cancel => 'Kagbuo';

  @override
  String get delete => 'Hichapụ';

  @override
  String get edit => 'Dezie';

  @override
  String get done => 'Emechaala';

  @override
  String get close => 'Mechie';

  @override
  String get back => 'Azu';

  @override
  String get next => 'Na-esote';

  @override
  String get continue_btn => 'Gaa n\'ihu';

  @override
  String get confirm => 'Kwenye';

  @override
  String get search => 'Chọọ';

  @override
  String get filter => 'Iyo';

  @override
  String get all => 'Ha niile';

  @override
  String get active => 'Na-arụ ọrụ';

  @override
  String get today => 'Taa';

  @override
  String get yesterday => 'Ụnyaahụ';

  @override
  String get tomorrow => 'Echi';

  @override
  String get add => 'Tinye';

  @override
  String get remove => 'Wepu';

  @override
  String get refresh => 'Weghachite ume';

  @override
  String get retry => 'Gbalịa ọzọ';

  @override
  String get error => 'Njehie';

  @override
  String get success => 'Ihe ịga nke ọma';

  @override
  String get loading => 'Na-ebu...';

  @override
  String get no_data => 'Enweghị data dị';

  @override
  String get offline => 'Ụdị anọghị n\'ịntanetị';

  @override
  String get offline_sub => 'Mgbanwe ga-emekọrịta ozugbo emegharịrị';

  @override
  String get undo => 'Megharịa';

  @override
  String get portion => 'Akụkụ';

  @override
  String get quantity => 'Ọnụọgụ';

  @override
  String get unit => 'Nkeji';

  @override
  String get clear => 'Kpochapụ';

  @override
  String get select => 'Họrọ';

  @override
  String get apply => 'Tinye';

  @override
  String get reset => 'Tọgharia';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ee';

  @override
  String get no => 'Mba';

  @override
  String get optional => 'Nhọrọ';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Abụba';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Mmiri';

  @override
  String get steps => 'Nzọụkwụ';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'n\'arọ';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'n\'ime';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'elekere';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Na-eje ozi';

  @override
  String get servings => 'Ozi';

  @override
  String get serving_size => 'Nha ije ozi';

  @override
  String get per_100g => 'kwa 100 g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Ụlọ';

  @override
  String get home_greeting_morning => 'Ụtụtụ ọma';

  @override
  String get home_greeting_afternoon => 'Ututu oma';

  @override
  String get home_greeting_evening => 'Anyasị ọma';

  @override
  String get home_streak_title => 'Okooko osisi';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ogologo ụbọchị _PH_0__',
      one: '1 ụbọchị ogologo',
      zero: '0 ụbọchị ogologo',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ọkụ';

  @override
  String get home_calories_budget => 'Ego mmefu calorie';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal fọdụrụ';
  }

  @override
  String get home_water_title => 'Mmiri mmiri kwa ụbọchị';

  @override
  String home_water_goal(Object current, Object target) {
    return '_PH_0__ / _PH_1__ ml';
  }

  @override
  String get home_steps_title => 'Nzọụkwụ jere';

  @override
  String get home_quick_actions => 'Omume ngwa ngwa';

  @override
  String get home_log_meal => 'Nri ndekọ';

  @override
  String get home_log_water => 'Log mmiri';

  @override
  String get home_log_workout => 'Banye mgbatị ahụ';

  @override
  String get home_log_weight => 'Ndekọ ibu';

  @override
  String get home_insights_title => 'Nghọta nke taa';

  @override
  String get home_quote => 'Nhọrọ obere ahụike na-emepụta mgbanwe na-eto eto.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI nchịkwa';

  @override
  String get home_surroundings => 'Gburugburu & Ikuku';

  @override
  String get home_notifications => 'Amamọkwa';

  @override
  String get home_daily_score => 'Akara ịdị mma kwa ụbọchị';

  @override
  String get home_view_all => 'Lelee All';

  @override
  String get food_diary_title => 'Akwụkwọ ndekọ nri';

  @override
  String get food_breakfast => 'Nri ụtụtụ';

  @override
  String get food_lunch => 'Nri ehihie';

  @override
  String get food_dinner => 'Nri abalị';

  @override
  String get food_snacks => 'Nri nri';

  @override
  String get food_add_food => 'Tinye nri';

  @override
  String get food_edit_food => 'Dezie nri';

  @override
  String get food_add_breakfast => 'Tinye nri ụtụtụ';

  @override
  String get food_add_lunch => 'Tinye nri ehihie';

  @override
  String get food_add_dinner => 'Tinye nri abalị';

  @override
  String get food_add_snack => 'Tinye Nri';

  @override
  String get food_total_calories => 'Mgbakọta kalori';

  @override
  String get food_empty_meal => 'Enweghị nri edebanyela maka nri a';

  @override
  String get food_empty_diary => 'Enweghị nri edebanye aha maka ụbọchị a';

  @override
  String get food_log_first_meal => 'Kpatụ + ka ịbanye nri mbụ gị dị ụtọ';

  @override
  String get food_quick_add => 'Tinye ngwa ngwa';

  @override
  String get food_search_hint => 'Chọọ efere, mkpụrụ osisi, dal, roti...';

  @override
  String get food_custom_recipe => 'Nri Omenala & Ntụziaka';

  @override
  String get food_scan_barcode => 'Nyochaa koodu nzuzo';

  @override
  String get food_camera_scan => 'Ihe nyocha nri AI';

  @override
  String get food_recent => 'Nri nso nso a';

  @override
  String get food_favourites => 'ọkacha mmasị';

  @override
  String get food_macro_summary => 'Mmebi nke Macronutrients';

  @override
  String get food_delete_meal_confirm => 'Ị ji n\'aka na ịchọrọ iwepụ ihe a?';

  @override
  String get food_item_deleted => 'Ewepụrụ ihe oriri';

  @override
  String get food_remaining => 'fọdụrụnụ';

  @override
  String get food_consumed => 'eripịa';

  @override
  String food_of_target(Object target) {
    return 'nke $target kcal';
  }

  @override
  String get foodSearch_title => 'Chọọ nri';

  @override
  String get foodSearch_scan_barcode => 'Nyochaa koodu nzuzo';

  @override
  String get foodSearch_take_photo => 'Foto nri Snap';

  @override
  String get foodSearch_custom_food => 'Mepụta nri omenala';

  @override
  String get foodSearch_recent_searches => 'Ọchụchọ na nso nso a';

  @override
  String get foodSearch_popular => 'Efere ewu ewu';

  @override
  String get foodSearch_no_results => 'Ọnweghị nri dabara na nchọ gị';

  @override
  String get barcode_title => 'Ihe nyocha Barcode';

  @override
  String get barcode_align => 'Hazie koodu mgbochi n\'ime etiti igwefoto';

  @override
  String get barcode_not_found => 'Achọghị ngwaahịa na nchekwa data';

  @override
  String get barcode_premium_feature => 'Nyocha koodu Barcode dị na Bloomi Pro';

  @override
  String get camera_title => 'Ihe nyocha nri AI';

  @override
  String get camera_tap_hint => 'Were foto doro anya nke efere gị';

  @override
  String get camera_analysing => 'Na-enyocha efere nri...';

  @override
  String get camera_detected => 'Ihe achọpụtara';

  @override
  String get camera_flash => 'Gbanwee Flash';

  @override
  String get camera_retake => 'Weghachite Foto';

  @override
  String get camera_confirm_food => 'Kwenye ihe';

  @override
  String get customFood_title => 'Nri Omenala & Ntụziaka';

  @override
  String get customFood_name_hint => 'Aha efere ma ọ bụ ngwa nri';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Abụba (g)';

  @override
  String get customFood_save => 'Chekwa Ntụziaka';

  @override
  String get water_tracker_title => 'Mmiri Tracker';

  @override
  String get water_daily_target => 'Ebumnuche hydration kwa ụbọchị';

  @override
  String get water_logged_today => 'Abanye taa';

  @override
  String get water_add_glass => '+ 250 ml nke iko';

  @override
  String get water_add_bottle => '+ 500 ml nke mmiri ara ehi';

  @override
  String get water_custom_amount => 'Ego omenala';

  @override
  String get water_reminder_tip =>
      'Na-a drinkụ mmiri mgbe niile n\'ụbọchị maka ike na-adịgide adịgide.';

  @override
  String water_logged_toast(Object amount) {
    return 'Etinyere $amount ml mmiri 💧';
  }

  @override
  String get workout_title => 'Ndekọ mgbatị ahụ';

  @override
  String get workout_add_exercise => 'Tinye mgbatị ahụ';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Ike';

  @override
  String get workout_yoga => 'Yoga & Mgbanwe';

  @override
  String get workout_duration => 'Ogologo oge';

  @override
  String get workout_intensity => 'Ike ike';

  @override
  String get workout_calories_burned => 'Kalori gbara ọkụ';

  @override
  String get workout_empty => 'Enweghị mgbatị ahụ abanyela taa';

  @override
  String get workout_save_success => 'A zọpụtara mgbatị ahụ nke ọma!';

  @override
  String get workout_type => 'Ụdị mgbatị ahụ';

  @override
  String get workout_notes => 'ndetu & Ntughari uche';

  @override
  String get health_overview_title => 'Ahụike & Ihe dị mkpa';

  @override
  String get health_heart_rate => 'Ọnụọgụgụ obi';

  @override
  String get health_blood_oxygen => 'Oxygen ọbara (SpO2)';

  @override
  String get health_blood_pressure => 'Ọbara Ọbara';

  @override
  String get health_blood_glucose => 'Ọbara glucose';

  @override
  String get health_body_temperature => 'Okpomọkụ ahụ';

  @override
  String get health_sleep_tracking => 'Ndepụta ụra';

  @override
  String get health_weight_tracking => 'Ibu & Ngwakọta ahụ';

  @override
  String get health_waist_hip => 'Ratio n\'úkwù ruo n\'úkwù';

  @override
  String get health_devices_hub => 'Ngwa & Smartwatch Hub';

  @override
  String get health_sync_now => 'Mekọrịta data ahụike';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Emekọrịtara ikpeazụ: _PH_0__';
  }

  @override
  String get health_manual_entry => 'Ntinye ahụike ntuziaka';

  @override
  String get health_metric_detail => 'Nkọwa metrik';

  @override
  String get health_connected_sensors => 'Ihe mmetụta ahụike ejikọrọ';

  @override
  String get plan_title => 'Atụmatụ kwa ụbọchị';

  @override
  String get plan_weekly_title => 'Atụmatụ ịdị mma kwa izu';

  @override
  String get plan_calorie_target => 'Kalori Target';

  @override
  String get plan_water_target => 'Ebumnuche hydration';

  @override
  String get plan_step_target => 'Ebumnuche Nzọụkwụ';

  @override
  String get plan_sleep_target => 'Ebumnuche ụra';

  @override
  String get plan_meal_suggestions => 'Aro nri';

  @override
  String get plan_healthy_habits => 'Àgwà ọma & Ndụmọdụ';

  @override
  String get plan_coach_advice => 'Ntụnye onye nchịkwa Bloomi AI';

  @override
  String get plan_generated_title => 'Nhazi kwa ụbọchị ahaziri onwe ya';

  @override
  String get profile_title => 'Profaịlụ';

  @override
  String get profile_edit => 'Dezie profaịlụ';

  @override
  String get profile_name => 'Aha';

  @override
  String get profile_age => 'Afọ';

  @override
  String get profile_gender => 'okike';

  @override
  String get profile_height => 'Ogologo';

  @override
  String get profile_weight => 'Ibu';

  @override
  String get profile_goal => 'Ebumnuche nke izizi';

  @override
  String get profile_activity_level => 'Ọkwa mmemme';

  @override
  String get profile_stats => 'Ọdịmma M Stats';

  @override
  String get profile_saved => 'Emelitere profaịlụ nke ọma';

  @override
  String get profile_bmi => 'Ndekọ oke ahụ (BMI)';

  @override
  String get profile_membership => 'Ndị otu';

  @override
  String get settings => 'Ntọala';

  @override
  String get preferences_habits => 'Mmasị & Omume';

  @override
  String get appearance_theme => 'Ọdịdị & Isiokwu';

  @override
  String get appearance_theme_sub =>
      'Ọchịchịrị, Ìhè, Ụdị Sistemu & Nhọrọ ndabere Ngwa';

  @override
  String get permissions => 'Ikikere & Nweta sistemu';

  @override
  String get permissions_sub =>
      'Jikọọ ahụike, ihe mmetụta nzọụkwụ, GPS, ọkwa na igwefoto';

  @override
  String get reminders_notifications => 'Ihe ncheta & ọkwa';

  @override
  String get reminders_sub => 'Oge nri, mmiri, nlele ibu na ncheta oge alakpu';

  @override
  String get units_of_measurement => 'Nkeji nha';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) ma ọ bụ Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Asụsụ ngwa';

  @override
  String get language_sub =>
      'Bekee, हिन्दी (Hindi), Hinglish & 195+ asụsụ zuru ụwa ọnụ';

  @override
  String get home_screen_widgets => 'Ngwa ihuenyo ụlọ';

  @override
  String get widgets_sub =>
      'Ngwa gam akporo dị ndụ: Hub, Nzọụkwụ, Mmiri, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Ngwa Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Ndị enyi Smartwatch, taịlị, nsogbu na ihe ndị dị ndụ';

  @override
  String get goals_wellness => 'Ebumnobi & EZIOKWU MMA';

  @override
  String get nutrition_targets => 'Ebumnuche Nri nri & Nkewa Macro';

  @override
  String get nutrition_targets_sub =>
      'Ebumnuche kalori, protein, carbohydrates, abụba na ebumnuche mmiri';

  @override
  String get weekly_recap => 'Ntụgharị ahụike kwa izu';

  @override
  String get weekly_recap_sub =>
      'Nkezi kalori nke ụbọchị 7, oke macro na ụbọchị kacha mma';

  @override
  String get streaks_milestones => 'Streaks & Mlestones';

  @override
  String get streaks_sub => 'Ogologo okooko osisi na-arụ ọrụ, baajị na mmezu';

  @override
  String get connected_devices => 'Ngwa ejikọrọ & ECOSYSTEM';

  @override
  String get devices_hub => 'Ngwa & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Njikọ ahụike, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Gburugburu & ihu igwe';

  @override
  String get surroundings_sub =>
      'Ịdị mma ikuku (AQI), ntụle UV & ndụmọdụ hydration ihu igwe';

  @override
  String get bloomi_pro => 'Ndebanye aha Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Onye nkuzi atụmatụ AI, wijetị ihuenyo ụlọ 5 & nsuso vitals';

  @override
  String get about_security => 'Banyere & Nchekwa';

  @override
  String get about_bloomi => 'Banyere Bloomi';

  @override
  String get about_bloomi_sub => 'Wulite nkọwapụta, ụdị, njirimara';

  @override
  String get privacy_policy => 'Amụma nzuzo';

  @override
  String get privacy_policy_sub =>
      'Na-anọghị n\'ịntanetị-nke mbụ, nhazi data ngwaọrụ';

  @override
  String get terms_conditions => 'Usoro & Ọnọdụ';

  @override
  String get terms_conditions_sub => 'Usoro ọrụ na ntuziaka ịdị mma';

  @override
  String get delete_account => 'Hichapụ Akaụntụ & Data';

  @override
  String get delete_account_sub =>
      'Hichapụ data SQLite mpaghara yana nkwado igwe ojii n\'enweghị mgbagha';

  @override
  String get healthy_habits => 'Zụlite àgwà ịdị nwayọọ, na-adịgide adịgide';

  @override
  String get all_logs => 'Data m esoro na ndekọ';

  @override
  String get search_language =>
      'Chọọ site n\'asụsụ ma ọ bụ mkpụrụedemede ala...';

  @override
  String get languages_available => 'Asụsụ dị';

  @override
  String get no_matching_languages => 'Ọnweghị asụsụ dabara adaba ahụghị';

  @override
  String get try_searching =>
      'Gbalịa chọgharịa site na edemede obodo ma ọ bụ nsụpe Bekee';

  @override
  String get partially_translated => 'Atụgharịrị n\'otu akụkụ';

  @override
  String get complete_translation => 'Zuru oke';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Asụsụ edobere ka ọ bụrụ _PH_0__ ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Gburugburu & gburugburu';

  @override
  String get surroundings_aqi => 'Ndekọ ogo ikuku';

  @override
  String get surroundings_uv => 'Ndekọ UV';

  @override
  String get surroundings_temp => 'Okpomọkụ';

  @override
  String get surroundings_humidity => 'iru mmiri';

  @override
  String get surroundings_hydration_advice =>
      'Nọgidenụ na-agba mmiri nke ọma n\'ọnọdụ ihu igwe dị ugbu a.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Chọọ nri';

  @override
  String get food_quick_barcode => 'Nyochaa Barcode 👑';

  @override
  String get food_quick_water => 'Tinye mmiri';

  @override
  String get food_quick_custom => 'Nri omenala';

  @override
  String get surroundings_good => 'Ọ dị mma';

  @override
  String get surroundings_moderate => 'Na-agafeghị oke';

  @override
  String get surroundings_unhealthy => 'Adịghị mma';

  @override
  String get notifications_title => 'Amamọkwa & Mkpu';

  @override
  String get notifications_empty => 'Enweghị ọkwa ọhụụ';

  @override
  String get notifications_mark_read => 'Kanye ihe niile ka ọ na-agụ';

  @override
  String get notifications_clear => 'Kpochapụ ihe niile';

  @override
  String get reminders => 'Ntọala ncheta';

  @override
  String get notifications => 'Amamọkwa';

  @override
  String get reminders_breakfast_title => 'Ncheta nri ụtụtụ 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ụtụtụ ọma! Oge maka nri ụtụtụ na-edozi ahụ na _PH_0__ .';
  }

  @override
  String get reminders_lunch_title => 'Ncheta nri ehihie 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Kwụsị ma nụ ụtọ nri ehihie dabara adaba na $time .';
  }

  @override
  String get reminders_dinner_title => 'Ncheta nri abalị 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Oge maka nri abalị na-enye afọ ojuju na $time .';
  }

  @override
  String get reminders_water_title => 'Mmiri mmiri na-ekpo ọkụ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Oge ịṅụ otu iko mmiri ọhụrụ! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Arọ kwa izu ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Soro metrik ahụ gị kwa izu na Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Oge ụra na-efe efe 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Wepụ ma jikere maka ụra zuru ike ( $time ).';
  }

  @override
  String get onboard_welcome => 'Nnọọ na Bloomi';

  @override
  String get onboard_sub =>
      'enyi gị enyi, ahụike na nri nri mbụ na-anọghị n\'ịntanetị.';

  @override
  String get onboard_get_started => 'Malite';

  @override
  String get onboard_sign_in => 'Banye';

  @override
  String get onboard_skip => 'Mafee';

  @override
  String get onboard_choose_goal => 'Gịnị bụ isi ebumnuche ahụike gị?';

  @override
  String get onboard_goal_weight_loss => 'Mbelata ịdị arọ dị nro';

  @override
  String get onboard_goal_muscle => 'Enweta Akwara & Ike';

  @override
  String get onboard_goal_energy => 'Ike kwa ụbọchị & Vitality';

  @override
  String get onboard_goal_habits => 'Iri Uche Dị Mma';

  @override
  String get onboard_about_you => 'Gwa anyị gbasara onwe gị';

  @override
  String get onboard_lifestyle => 'Usoro gị kwa ụbọchị';

  @override
  String get onboard_permissions_title => 'Ikikere & Nweta sistemu';

  @override
  String get onboard_permissions_sub =>
      'Nye ohere ịmekọrịta usoro, mgbatị ahụ na ncheta.';

  @override
  String get onboard_plan_ready_title => 'Atụmatụ omenala gị adịla njikere!';

  @override
  String get onboard_plan_ready_sub =>
      'Anyị haziri usoro nri dị nro, nke ahaziri iche na ịdị mma maka naanị gị.';

  @override
  String get onboard_enter_bloomi => 'Banye Bloomi';

  @override
  String get insights_weekly_report => 'Ntụgharị ahụike kwa izu';

  @override
  String insights_best_day(Object day) {
    return 'Ụbọchị Nkwekọrịta Kasị Mma: _PH_0__';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Mlestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Emeghere na _PH_0__';
  }

  @override
  String get insights_keep_going => 'Nọgide na-enwe ọganihu dị egwu!';

  @override
  String get widgets_title => 'Ngwa ihuenyo ụlọ';

  @override
  String widgets_active_count(Object count) {
    return 'Ngwa wijetị na-arụ ọrụ: _PH_0__';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Nzọụkwụ & mgbanaka na-arụ ọrụ';

  @override
  String get widgets_water_title => 'Ndekọ ngwa ngwa hydration';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Yiri OS Smartwatch';

  @override
  String get wear_os_connected => 'Ejikọrọ na Watch';

  @override
  String get wear_os_sync => 'Mekọrịta data nche';

  @override
  String get theme_title => 'Ọdịdị & Isiokwu';

  @override
  String get theme_mode => 'Usoro isiokwu';

  @override
  String get theme_light => 'Ìhè';

  @override
  String get theme_dark => 'Ọchịchịrị';

  @override
  String get theme_system => 'Sistemụ ndabara';

  @override
  String get theme_background_palette => 'Palette ndabere';

  @override
  String get units_title => 'Nkeji nha';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Enweghị ike ibunye dashboard';

  @override
  String get home_health_permission_req => 'Achọrọ ikike njikọ ahụike';

  @override
  String get home_health_permission_desc =>
      'Bloomi chọrọ ikike njikọ Health iji dọpụta ezigbo usoro, ọnụego obi, na mekọrịta wijetị ụlọ ekwentị ozugbo.';

  @override
  String get home_allow_health => 'Kwe ka Jikọọ ahụike';

  @override
  String get home_ready_mindful_day => 'Ị dịla njikere maka ụbọchị ncheta? ✨';

  @override
  String get home_quick_add => 'Tinye ngwa ngwa';

  @override
  String get home_live_gps => 'GPS dị ndụ';

  @override
  String get home_calories_remaining_label => 'Kalori fọdụrụnụ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Eriri: _PH_0__ / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Kpatụ maka Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Erutere ihe mgbaru ọsọ kwa ụbọchị 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '_PH_0__ ml maka ebumnuche kwa ụbọchị';
  }

  @override
  String get home_details => 'Nkọwa';

  @override
  String get home_upgrade_plan_desc =>
      'Nweta nkwalite iji kpọghee ebumnuche ahaziri iche kwa ụbọchị & atụmatụ AI';

  @override
  String get home_unlock => 'Mepee 👑';

  @override
  String get home_quick_log_hint => 'Dekọọ ntinye ahụike ngwa ngwa';

  @override
  String get food_serving_size => 'Nha ije ozi';

  @override
  String get food_serving_grams => 'Na-eje ozi (g)';

  @override
  String get food_number_servings => 'Ọnụọgụ nke ozi';

  @override
  String get food_calories_per_serving => 'Kalori kwa nri';

  @override
  String get food_recipe_ingredients => 'Efrata';

  @override
  String get food_recipe_add_ingredient => 'Tinye mgwakota agwa';

  @override
  String get food_recipe_directions => 'Ntuziaka & ndetu';

  @override
  String get food_recipe_total => 'Ngụkọta nri nri nri';

  @override
  String get food_recipe_per_serving => 'Kwa Ije Ozi Nri';

  @override
  String get food_recipe_saved_toast => 'A na-echekwa nri omenala nke ọma!';

  @override
  String get food_barcode_found => 'Achọtara ngwaahịa!';

  @override
  String get food_barcode_not_found_desc =>
      'Anyị enweghị ike ịhụ koodu mkpuchi a na nchekwa data mepere emepe. Ị nwere ike ịgbakwunye ya dị ka nri omenala.';

  @override
  String get food_add_custom_btn => 'Tinye nri omenala';

  @override
  String get food_scan_again => 'Nyochaa ọzọ';

  @override
  String get food_review_items => 'Nyochaa nri achọpụtara';

  @override
  String get food_review_hint =>
      'Hazie ọnụọgụ ma ọ bụ wepụ ihe ọ bụla a na-amatabeghị';

  @override
  String get food_log_selected => 'Debanye nri ahọpụtara';

  @override
  String get food_favourites_title => 'Nri ọkacha mmasị';

  @override
  String get food_recent_title => 'Nri nso nso a';

  @override
  String get food_no_favourites =>
      'Enweghị nri ọkacha mmasị ugbu a. Kpatụ nri ọ bụla iji chekwaa ebe a.';

  @override
  String get food_no_recents => 'Ọnweghị nri abanyela nso nso a.';

  @override
  String get food_nutrition_details_title => 'Nkọwa nri kwa ụbọchị';

  @override
  String get food_macro_protein_label => 'Protein ndakpọ';

  @override
  String get food_macro_carbs_label => 'Mbelata nke carbohydrates';

  @override
  String get food_macro_fat_label => 'Njiji abụba';

  @override
  String get food_macro_fiber_label => 'Mwepu eriri';

  @override
  String get food_daily_target_comparison => 'Ntụnyere ebumnuche';

  @override
  String food_target_label(Object target) {
    return 'Ebumnuche: _PH_0__';
  }

  @override
  String get food_edit_entry => 'Dezie ntinye akwụkwọ ndetu';

  @override
  String get food_delete_entry => 'Hichapụ ntinye';

  @override
  String food_grams_short(Object grams) {
    return '_PH_0__ g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '_PH_0__ kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '_PH_0__ nke _PH_1__ ml';
  }

  @override
  String get water_intake_history => 'Ndekọ mmiri nke taa';

  @override
  String get water_no_logs_today =>
      'Enweghị mmiri abatabeghị taa. Mepụta ma pịa bọtịnụ gbakwunye ngwa ngwa!';

  @override
  String get water_adjust_goal => 'Gbanwee ebumnuche kwa ụbọchị';

  @override
  String get health_connect_banner => 'Ejikọrọ na Njikọ ahụike';

  @override
  String get health_vitals_summary => 'Mkpa ahụike kwa ụbọchị';

  @override
  String get health_latest_heart_rate => 'Ọnụego Obi Kacha ọhụrụ';

  @override
  String get health_latest_bp => 'Ọbara Ọbara';

  @override
  String get health_latest_spo2 => 'Ọbara oxygen';

  @override
  String get health_latest_glucose => 'Ọbara glucose';

  @override
  String get health_latest_weight => 'Ibu';

  @override
  String get health_latest_sleep => 'Ogologo oge ihi ụra';

  @override
  String get health_add_manual => 'Tinye Ntụle aka';

  @override
  String get health_history_trends => 'Ọnọdụ akụkọ ihe mere eme';

  @override
  String get health_sync_success => 'Mekọrịtara data ahụike nke ọma!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '_PH_0__ elekere _PH_1__ nkeji';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '_PH_0__ n\'arọ';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '_PH_0__ bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '_PH_0__%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '_PH_0__ / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '_PH_0__ mg/dL';
  }

  @override
  String get health_devices_title => 'Ngwa ejikọrọ na ihe eji eyi';

  @override
  String get health_devices_desc =>
      'Jikwaa smartwatches jikọtara ọnụ, ndị na-ahụ maka ahụike na ihe mmetụta ahụike.';

  @override
  String get health_workout_editor_title => 'Dezie mgbatị ahụ';

  @override
  String get health_workout_name_label => 'Aha mgbatị ahụ';

  @override
  String get health_workout_duration_label => 'Ogologo oge (nkeji)';

  @override
  String get health_workout_calories_label => 'Kalori atụnyere (kcal)';

  @override
  String get health_workout_date_label => 'Ụbọchị na Oge';

  @override
  String get plan_daily_wellness_roadmap => 'Ụzọ ụzọ ahaziri onwe gị';

  @override
  String get plan_morning_routine => 'Usoro nke ụtụtụ';

  @override
  String get plan_afternoon_routine => 'Ịdị mma nke ehihie';

  @override
  String get plan_evening_routine => 'Ikuku mgbede';

  @override
  String get plan_coach_badge => 'Bloomi AI nchịkwa';

  @override
  String get plan_weekly_overview => 'Nleba anya ịdị mma nke ụbọchị 7';

  @override
  String get plan_targets_title => 'Ebumnuche ọdịmma & ebumnuche';

  @override
  String get plan_calorie_budget_label => 'Ego mmefu kalori kwa ụbọchị';

  @override
  String get plan_water_budget_label => 'Ebumnuche mmiri kwa ụbọchị';

  @override
  String get plan_step_budget_label => 'Ebumnuche nzọụkwụ kwa ụbọchị';

  @override
  String get plan_macro_split_label => 'Oke Macronutrient';

  @override
  String get profile_personal_details => 'Nkọwa nkeonwe';

  @override
  String get profile_body_stats => 'Nleba ahụ';

  @override
  String get profile_app_preferences => 'Mmasị & Ngwa Ntọala';

  @override
  String get profile_edit_name_hint => 'Aha gị';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ogologo ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Arọ ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Afọ';

  @override
  String get profile_gender_male => 'Nwoke';

  @override
  String get profile_gender_female => 'Nwanyị';

  @override
  String get profile_gender_other => 'Ndị ọzọ / Ọ masịrị ka ị ghara ikwu';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (obere na-enweghị mmega ahụ)';

  @override
  String get profile_activity_light => 'Na-arụ ọrụ obere (1-3 ụbọchị / izu)';

  @override
  String get profile_activity_moderate =>
      'Na-arụ ọrụ nke ọma (ụbọchị 3-5 kwa izu)';

  @override
  String get profile_activity_very => 'Na-arụsi ọrụ ike (ụbọchị 6-7 kwa izu)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Wụnye taịlị Bloomi na mgbagwoju anya na elekere Wear OS gị iji lelee kalori, mmiri na usoro.';

  @override
  String get settings_widgets_header => 'Ngwa gam akporo na-emekọrịta ihe';

  @override
  String get settings_widgets_desc =>
      'Tinye wijetị ozugbo na ihuenyo ụlọ ngwaọrụ gị maka mmelite ozugbo.';

  @override
  String get settings_about_header => 'Banyere Bloomi';

  @override
  String get settings_about_version => 'Ụdị 1.0.0';

  @override
  String get settings_about_build => 'Mee 100';

  @override
  String get settings_about_credits =>
      'Emebere ya site na nlebara anya maka ibi ndụ nwere ahụike, ahụike.';

  @override
  String get settings_terms_header => 'Usoro na ọnọdụ';

  @override
  String get settings_privacy_header => 'Amụma nzuzo';

  @override
  String get settings_delete_header => 'Hichapụ Akaụntụ & Data';

  @override
  String get settings_delete_warning =>
      'Enweghị ike imegharị ihe a. A ga-ehichapụ nri gị niile, mgbatị ahụ gị, ihe ndị dị mkpa na profaịlụ gị kpamkpam.';

  @override
  String get settings_delete_confirm_btn => 'Hichapụ na-adịgide adịgide';

  @override
  String get onboard_welcome_headline => 'Nnọọ na Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Nleba anya ahụike dị nro, nke echebere na ndụ gị.';

  @override
  String get onboard_step_about => 'Banyere Gị';

  @override
  String get onboard_step_goals => 'Ebumnuche gị';

  @override
  String get onboard_step_lifestyle => 'Omume kwa ụbọchị';

  @override
  String get onboard_step_permissions => 'Ikikere';

  @override
  String get onboard_step_plan => 'Njikere!';

  @override
  String get onboard_health_connect_perm => 'Nweta njikọ ahụike';

  @override
  String get onboard_step_sensors_perm => 'Sensọ Counter nzọụkwụ';

  @override
  String get onboard_notif_perm => 'Ihe ncheta & ọkwa';

  @override
  String get onboard_camera_perm => 'Igwefoto (Barcode & Ihe nyocha nri)';

  @override
  String get onboard_grant_permissions => 'Nnye ikike';

  @override
  String get onboard_continue_dashboard => 'Mepee dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Ihe ncheta mmiri dị nro n\'ụbọchị niile';

  @override
  String get notif_channel_nutrition_name => 'Ihe ncheta nri & nri';

  @override
  String get notif_channel_nutrition_desc =>
      'Ihe ncheta ncheta nri ụtụtụ, nri ehihie na nri abalị';

  @override
  String get notif_channel_steps_name => 'Nzọụkwụ dị ebube';

  @override
  String get notif_channel_steps_desc =>
      'Ememe mgbe a na-eru ebumnuche nzọụkwụ kwa ụbọchị';

  @override
  String get notif_channel_vitals_name => 'Nyocha ahụike & ihe dị mkpa';

  @override
  String get notif_channel_vitals_desc =>
      'Ihe ncheta na-agbadata ibu na oge alakpu';

  @override
  String get notif_action_log_water => 'Ọkụ + 250ml';

  @override
  String get notif_action_snooze => 'Nri 15m';

  @override
  String get notif_action_log_meal => '🥗 Nri Log';

  @override
  String get language => 'Asụsụ';

  @override
  String get share => 'Kekọrịta';

  @override
  String common_days(Object count) {
    return '_PH_0__ d gara aga';
  }
}
