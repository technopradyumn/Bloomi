// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maori (`mi`).
class AppLocalizationsMi extends AppLocalizations {
  AppLocalizationsMi([String locale = 'mi']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Kainga';

  @override
  String get nav_today => 'I tenei ra';

  @override
  String get nav_plan => 'Mahere';

  @override
  String get nav_food => 'Kai';

  @override
  String get nav_food_diary => 'Pukapuka Kai';

  @override
  String get nav_workout => 'Rangitaki Mahi';

  @override
  String get nav_health => 'Hauora';

  @override
  String get nav_profile => 'Kōtaha';

  @override
  String get save => 'Tiaki';

  @override
  String get cancel => 'Whakakore';

  @override
  String get delete => 'Mukua';

  @override
  String get edit => 'Whakatikatika';

  @override
  String get done => 'Kua oti';

  @override
  String get close => 'Katia';

  @override
  String get back => 'Whakamuri';

  @override
  String get next => 'Whai muri';

  @override
  String get continue_btn => 'Haere tonu';

  @override
  String get confirm => 'Whakaū';

  @override
  String get search => 'Rapu';

  @override
  String get filter => 'Tātari';

  @override
  String get all => 'Katoa';

  @override
  String get active => 'Hohe';

  @override
  String get today => 'I tenei ra';

  @override
  String get yesterday => 'Inanahi';

  @override
  String get tomorrow => 'Apopo';

  @override
  String get add => 'Tāpiri';

  @override
  String get remove => 'Tango';

  @override
  String get refresh => 'Tāmata';

  @override
  String get retry => 'Ngana ano';

  @override
  String get error => 'Hapa';

  @override
  String get success => 'Angitu';

  @override
  String get loading => 'Uta ana...';

  @override
  String get no_data => 'Karekau he raraunga e waatea ana';

  @override
  String get offline => 'Aratau Tuimotu';

  @override
  String get offline_sub => 'Ka tukutahi nga huringa ina hono ano';

  @override
  String get undo => 'Wetekina';

  @override
  String get portion => 'Wahi';

  @override
  String get quantity => 'Te nui';

  @override
  String get unit => 'Waeine';

  @override
  String get clear => 'Maamaa';

  @override
  String get select => 'Tīpakohia';

  @override
  String get apply => 'Tonoa';

  @override
  String get reset => 'Tautuhi Anō';

  @override
  String get ok => 'pai';

  @override
  String get yes => 'Ae';

  @override
  String get no => 'Kao';

  @override
  String get optional => 'Kōwhiringa';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Pūmua';

  @override
  String get carbs => 'Waaroa';

  @override
  String get fat => 'Ngako';

  @override
  String get fiber => 'muka';

  @override
  String get water => 'Wai';

  @override
  String get steps => 'Nga hikoinga';

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
  String get inches => 'i roto';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'haora';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Te mahi';

  @override
  String get servings => 'Nga mahi';

  @override
  String get serving_size => 'Rahi Mahi';

  @override
  String get per_100g => 'ia 100g';

  @override
  String get india => 'Inia';

  @override
  String get asia => 'Ahia';

  @override
  String get europe => 'Uropi';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Āwherika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Kainga';

  @override
  String get home_greeting_morning => 'Ataata pai';

  @override
  String get home_greeting_afternoon => 'Kia pai te ahiahi';

  @override
  String get home_greeting_evening => 'Kia pai te ahiahi';

  @override
  String get home_streak_title => 'Puawai Puawai';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nga ra e whai ana',
      one: '1 ra streak',
      zero: '0 nga ra o muri',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Kua tahuna';

  @override
  String get home_calories_budget => 'Putea Calorie';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal e toe ana';
  }

  @override
  String get home_water_title => 'Te Waiwai o ia ra';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Ka hikoi nga hikoinga';

  @override
  String get home_quick_actions => 'Nga Mahi Tere';

  @override
  String get home_log_meal => 'Kai Rangitaki';

  @override
  String get home_log_water => 'Wai Rangi';

  @override
  String get home_log_workout => 'Mahi Takiuru';

  @override
  String get home_log_weight => 'Taumaha Rangitaki';

  @override
  String get home_insights_title => 'Nga Maramatanga o tenei ra';

  @override
  String get home_quote =>
      'Ko nga whiringa hauora iti e hanga ana i nga huringa pua.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Kaiako';

  @override
  String get home_surroundings => 'Te Taiao me te Hau';

  @override
  String get home_notifications => 'Whakamōhiotanga';

  @override
  String get home_daily_score => 'Te Tohu Ora o ia ra';

  @override
  String get home_view_all => 'Tiro Katoa';

  @override
  String get food_diary_title => 'Pukapuka Kai';

  @override
  String get food_breakfast => 'Parakuihi';

  @override
  String get food_lunch => 'Tina';

  @override
  String get food_dinner => 'Kai hakari';

  @override
  String get food_snacks => 'Paramanawa';

  @override
  String get food_add_food => 'Tāpiri Kai';

  @override
  String get food_edit_food => 'Whakatika Kai';

  @override
  String get food_add_breakfast => 'Tāpiri Parakuihi';

  @override
  String get food_add_lunch => 'Tāpiri Tina';

  @override
  String get food_add_dinner => 'Tāpiri Tina';

  @override
  String get food_add_snack => 'Tāpiri Paramanawa';

  @override
  String get food_total_calories => 'Tapeke Calories';

  @override
  String get food_empty_meal => 'Karekau ano nga kai i tuhia mo tenei kai';

  @override
  String get food_empty_diary => 'Karekau he kai i tuhia mo tenei ra';

  @override
  String get food_log_first_meal => 'Tap + ki te takiuru i to kai reka tuatahi';

  @override
  String get food_quick_add => 'Tāpiri Tere';

  @override
  String get food_search_hint => 'Rapu rīhi, huarākau, dal, roti...';

  @override
  String get food_custom_recipe => 'Ritenga Kai & Recipe';

  @override
  String get food_scan_barcode => 'Matawai Waehere Pae';

  @override
  String get food_camera_scan => 'Matawai Kai AI';

  @override
  String get food_recent => 'Nga Kai Hou';

  @override
  String get food_favourites => 'Makau';

  @override
  String get food_macro_summary => 'Te Wehenga Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Kei te tino hiahia koe ki te tango i tenei mea?';

  @override
  String get food_item_deleted => 'Kua tangohia te kai';

  @override
  String get food_remaining => 'toe';

  @override
  String get food_consumed => 'pau';

  @override
  String food_of_target(Object target) {
    return 'o $target kcal';
  }

  @override
  String get foodSearch_title => 'Rapu Kai';

  @override
  String get foodSearch_scan_barcode => 'Matawai Waehere Pae';

  @override
  String get foodSearch_take_photo => 'Hopu Kai Whakaahua';

  @override
  String get foodSearch_custom_food => 'Waihanga Kai Ritenga';

  @override
  String get foodSearch_recent_searches => 'Nga Rapu Hou';

  @override
  String get foodSearch_popular => 'Rihi rongonui';

  @override
  String get foodSearch_no_results => 'Karekau he kai e rite ana ki to rapunga';

  @override
  String get barcode_title => 'Matawai Waehere Pae';

  @override
  String get barcode_align => 'Tiarohia te waeherepae ki roto i te anga kamera';

  @override
  String get barcode_not_found =>
      'Karekau te hua i kitea i roto i te patengi raraunga';

  @override
  String get barcode_premium_feature =>
      'Kei te waatea te matawai paewaehere me Bloomi Pro';

  @override
  String get camera_title => 'Matawai Kai AI';

  @override
  String get camera_tap_hint => 'Tangohia he whakaahua marama o to rihi';

  @override
  String get camera_analysing => 'Te tātari pereti kai...';

  @override
  String get camera_detected => 'Kua kitea nga taonga';

  @override
  String get camera_flash => 'Takahuri Flash';

  @override
  String get camera_retake => 'Tangohia Anō te Whakaahua';

  @override
  String get camera_confirm_food => 'Whakaū i nga mea';

  @override
  String get customFood_title => 'Ritenga Kai & Recipe';

  @override
  String get customFood_name_hint => 'Rihi, ingoa whakauru ranei';

  @override
  String get customFood_calories_hint => 'Calories (kcal)';

  @override
  String get customFood_protein_hint => 'Pūmua (g)';

  @override
  String get customFood_carbs_hint => 'Waaroa (g)';

  @override
  String get customFood_fat_hint => 'Ngako (g)';

  @override
  String get customFood_save => 'Tiaki Recipe';

  @override
  String get water_tracker_title => 'Aroturuki wai';

  @override
  String get water_daily_target => 'Whāinga Waiwai ia rā';

  @override
  String get water_logged_today => 'Kua takiuru i tenei ra';

  @override
  String get water_add_glass => '+250 ml Karaehe';

  @override
  String get water_add_bottle => '+500 ml Pounamu';

  @override
  String get water_custom_amount => 'Rahi Ritenga';

  @override
  String get water_reminder_tip =>
      'Inu wai i nga wa katoa puta noa i te ra mo te kaha tonu.';

  @override
  String water_logged_toast(Object amount) {
    return 'Kua tuhia $amount ml wai 💧';
  }

  @override
  String get workout_title => 'Rangitaki Mahi';

  @override
  String get workout_add_exercise => 'Tāpiri Mahi Mahi';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Te kaha';

  @override
  String get workout_yoga => 'Yoga me te ngawari';

  @override
  String get workout_duration => 'Roanga';

  @override
  String get workout_intensity => 'Te kaha';

  @override
  String get workout_calories_burned => 'Calories Tahu';

  @override
  String get workout_empty => 'Karekau he mahi whakangungu i te ra nei';

  @override
  String get workout_save_success => 'I ora pai te mahi whakangungu!';

  @override
  String get workout_type => 'Momo Mahi';

  @override
  String get workout_notes => 'Notes & Whakaaroaro';

  @override
  String get health_overview_title => 'Hauora me nga mea ora';

  @override
  String get health_heart_rate => 'Tere Manawa';

  @override
  String get health_blood_oxygen => 'Haora Toto (SpO2)';

  @override
  String get health_blood_pressure => 'Toto Toto';

  @override
  String get health_blood_glucose => 'Te huka toto';

  @override
  String get health_body_temperature => 'Te Mahana Tinana';

  @override
  String get health_sleep_tracking => 'Aroturuki Moe';

  @override
  String get health_weight_tracking => 'Te Taumaha me te Whakaritenga Tinana';

  @override
  String get health_waist_hip => 'Waist-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Pūrere & Smartwatch Hub';

  @override
  String get health_sync_now => 'Tukutahi Raraunga Hauora';

  @override
  String health_last_synced(Object time) {
    return 'Tukutahi whakamutunga: $time';
  }

  @override
  String get health_manual_entry => 'Te Whakauru Hauora a-ringa';

  @override
  String get health_metric_detail => 'Nga Taipitopito Inenga';

  @override
  String get health_connected_sensors => 'Pūoko Hauora Hononga';

  @override
  String get plan_title => 'Mahere o ia ra';

  @override
  String get plan_weekly_title => 'Mahere Ora o ia wiki';

  @override
  String get plan_calorie_target => 'Whainga Calorie';

  @override
  String get plan_water_target => 'Whainga Whakawai';

  @override
  String get plan_step_target => 'Wāhanga Wāhanga';

  @override
  String get plan_sleep_target => 'Moe Moe';

  @override
  String get plan_meal_suggestions => 'Nga Tohu Kai';

  @override
  String get plan_healthy_habits => 'Tikanga Hauora & Tohutohu';

  @override
  String get plan_coach_advice => 'Nga Tohutohu Kaiako Bloomi AI';

  @override
  String get plan_generated_title => 'Whakaritea Apiti o ia ra';

  @override
  String get profile_title => 'Kōtaha';

  @override
  String get profile_edit => 'Whakatika Kōtaha';

  @override
  String get profile_name => 'Ingoa';

  @override
  String get profile_age => 'Te tau';

  @override
  String get profile_gender => 'Ira tangata';

  @override
  String get profile_height => 'Teitei';

  @override
  String get profile_weight => 'Taumaha';

  @override
  String get profile_goal => 'Whāinga Tuatahi';

  @override
  String get profile_activity_level => 'Taumata Mahi';

  @override
  String get profile_stats => 'Taku Tauanga Ora';

  @override
  String get profile_saved => 'I momoho te whakahōu kōtaha';

  @override
  String get profile_bmi => 'Taupū Papatipu Tinana (BMI)';

  @override
  String get profile_membership => 'Te mema';

  @override
  String get settings => 'Tautuhinga';

  @override
  String get preferences_habits => 'WHAKAMAHI me nga tikanga';

  @override
  String get appearance_theme => 'Te ahua me te kaupapa';

  @override
  String get appearance_theme_sub =>
      'Pouri, Maama, Aratau Pūnaha & Kōwhiringa Papamuri Taupānga';

  @override
  String get permissions => 'Whakaaetanga me te Whakaaetanga Pūnaha';

  @override
  String get permissions_sub =>
      'Tūhono Hauora, Pūoko Takahanga, GPS, Whakamōhiotanga & Kāmera';

  @override
  String get reminders_notifications => 'Whakamaumahara & Whakamōhiotanga';

  @override
  String get reminders_sub =>
      'Nga wa kai, te wai, te urunga taumaha me nga whakamaharatanga mo te moe';

  @override
  String get units_of_measurement => 'Waeine ine';

  @override
  String get units_sub =>
      'Ineine (kg, cm, ml, km) ranei Imperial (pauna, ft/in, fl oz)';

  @override
  String get app_language => 'Reo Taupānga';

  @override
  String get language_sub =>
      'Ingarihi, हिन्दी (Hindi), Hinglish & 195+ reo o te ao';

  @override
  String get home_screen_widgets => 'Wāhitau Mata Kāinga';

  @override
  String get widgets_sub =>
      'Nga widget Android ora: Hub, Hipanga, Wai, Kai me te Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Ko te hoa mahi Smartwatch, nga taera, nga raruraru me nga mea ora';

  @override
  String get goals_wellness => 'NGA WHAI WHAKAMAHI ME TE WHAKAMAHI';

  @override
  String get nutrition_targets => 'Nga Whainga Kai me te Wehenga Tonotono';

  @override
  String get nutrition_targets_sub =>
      'Te whainga Calorie, te pūmua, te warowaiha, te ngako me te wai';

  @override
  String get weekly_recap => 'He Recap Waiora ia wiki';

  @override
  String get weekly_recap_sub =>
      '7-ra te tau toharite o te calorie, te ōwehenga tonotono me te ra pai';

  @override
  String get streaks_milestones => 'Nga Tirohanga me nga Milestones';

  @override
  String get streaks_sub =>
      'Nga puāwaitanga kaha, tohu me nga whakatutukitanga';

  @override
  String get connected_devices => 'NGĀ PŪrere HĀNOA me te ECOSYSTEM';

  @override
  String get devices_hub => 'Pūrere & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Hono Hauora, Mataara Tupuni, Mataara Pika, Garmin';

  @override
  String get surroundings_weather => 'Te Taiao me te Huarere';

  @override
  String get surroundings_sub =>
      'Te kounga o te rangi (AQI), te taurangi UV me nga tohutohu whakamakuku huarere';

  @override
  String get bloomi_pro => 'Ohaurunga Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Kaiako Mahere AI, e 5 nga taputapu mata o te kaainga me te whai i nga mea nui';

  @override
  String get about_security => 'MO TE WHAKAMAHI';

  @override
  String get about_bloomi => 'Mo Bloomi';

  @override
  String get about_bloomi_sub => 'Hangaia nga whakaritenga, putanga, tohu';

  @override
  String get privacy_policy => 'Kaupapahere Tūmataiti';

  @override
  String get privacy_policy_sub =>
      'Tuimotu-tuatahi, hoahoanga raraunga i runga i te taputapu';

  @override
  String get terms_conditions => 'Nga Ture me nga Tikanga';

  @override
  String get terms_conditions_sub =>
      'Nga tikanga o te ratonga me nga aratohu oranga';

  @override
  String get delete_account => 'Muku Pūkete & Raraunga';

  @override
  String get delete_account_sub =>
      'Muku korekore i nga raraunga SQLite rohe me nga taapiri kapua';

  @override
  String get healthy_habits => 'Hangaia nga tikanga oranga ngawari, pumau tonu';

  @override
  String get all_logs => 'Taku Raraunga Whaiwhai me nga Rangitaki';

  @override
  String get search_language => 'Rapua ma te reo, ma te tuhi maori ranei...';

  @override
  String get languages_available => 'Reo Wātea';

  @override
  String get no_matching_languages => 'Kaore i kitea nga reo rite';

  @override
  String get try_searching =>
      'Whakamātauria te rapu mā te tuhi māori me te takikupu Ingarihi';

  @override
  String get partially_translated => 'Kua whakamaoritia tetahi waahanga';

  @override
  String get complete_translation => 'Kua oti';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Kua tautuhia te reo ki $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Te Taiao me te Taiao';

  @override
  String get surroundings_aqi => 'Taurangi Kounga Hau';

  @override
  String get surroundings_uv => 'Taurangi UV';

  @override
  String get surroundings_temp => 'Te pāmahana';

  @override
  String get surroundings_humidity => 'Te haumākū';

  @override
  String get surroundings_hydration_advice =>
      'Kia pai te whakamakuku i nga ahuatanga o te rangi o naianei.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Rapu Kai';

  @override
  String get food_quick_barcode => 'Matawai Waehere Pae 👑';

  @override
  String get food_quick_water => 'Tāpiri wai';

  @override
  String get food_quick_custom => 'Kai Ritenga';

  @override
  String get surroundings_good => 'Pai';

  @override
  String get surroundings_moderate => 'Whakaōrite';

  @override
  String get surroundings_unhealthy => 'Kore hauora';

  @override
  String get notifications_title => 'Whakamōhiotanga & Matohi';

  @override
  String get notifications_empty => 'Kaore he panui hou';

  @override
  String get notifications_mark_read => 'Tohu Katoa hei Panui';

  @override
  String get notifications_clear => 'Ūkui Katoa';

  @override
  String get reminders => 'Tautuhinga Whakamaumahara';

  @override
  String get notifications => 'Whakamōhiotanga';

  @override
  String get reminders_breakfast_title => 'Whakamaumahara parakuihi 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ata pai! Te wa mo te parakuihi kai i $time .';
  }

  @override
  String get reminders_lunch_title => 'Whakamaumahara Tina 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Tatari me te pai ki te tina taurite me te whakaaro nui i $time .';
  }

  @override
  String get reminders_dinner_title => 'Whakamaharatanga Tina 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Te wa mo te tina marama, makona i $time .';
  }

  @override
  String get reminders_water_title => 'Tute Whakahau 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Te wa ki te inu i te karaihe wai hou! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Taumaha ia wiki ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Aroturuki i to inenga tinana ia wiki ki Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Moenga-Maui 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Whakamatauria ka takatu mo te moe pai ( $time ).';
  }

  @override
  String get onboard_welcome => 'Nau mai ki Bloomi';

  @override
  String get onboard_sub =>
      'Ko to hoa pai, tuimotu-tuatahi mo te hauora me te kai kai.';

  @override
  String get onboard_get_started => 'Tīmatahia';

  @override
  String get onboard_sign_in => 'Waitohu Mai';

  @override
  String get onboard_skip => 'Tīpoka';

  @override
  String get onboard_choose_goal => 'He aha to whainga hauora tuatahi?';

  @override
  String get onboard_goal_weight_loss => 'Ngaronga Taumaha ngawari';

  @override
  String get onboard_goal_muscle => 'Te Uuaua me te Kaha';

  @override
  String get onboard_goal_energy => 'Te Pungao me te Ora o ia ra';

  @override
  String get onboard_goal_habits => 'Kai Hinengaro Ora';

  @override
  String get onboard_about_you => 'Korerohia mai mo koe ano';

  @override
  String get onboard_lifestyle => 'To Mahi Ia Ia';

  @override
  String get onboard_permissions_title =>
      'Whakaaetanga me te Whakaaetanga Pūnaha';

  @override
  String get onboard_permissions_sub =>
      'Whakaaetia te uru ki te tukutahi i nga hikoinga, nga whakangungu, me nga whakamaumahara.';

  @override
  String get onboard_plan_ready_title => 'Kua Reri To Mahere Ritenga!';

  @override
  String get onboard_plan_ready_sub =>
      'I waihangahia e matou he mapi huarahi mo te kai me te oranga pai mo koe anake.';

  @override
  String get onboard_enter_bloomi => 'Tomo Bloomi';

  @override
  String get insights_weekly_report => 'He Recap Waiora ia wiki';

  @override
  String insights_best_day(Object day) {
    return 'Ra Totonutanga Pai: $day';
  }

  @override
  String get insights_streaks_badges => 'Nga Tirohanga me nga Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Wewete i $date';
  }

  @override
  String get insights_keep_going =>
      'Kia mau ki te ahunga whakamua whakamiharo!';

  @override
  String get widgets_title => 'Wāhitau Mata Kāinga';

  @override
  String widgets_active_count(Object count) {
    return 'Ngā Waea Hohe: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Nga hikoinga me te Mowhiti Hohe';

  @override
  String get widgets_water_title => 'Rangitaki Tere Hydration';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Mau OS Smartwatch';

  @override
  String get wear_os_connected => 'Honoa ki te Matataki';

  @override
  String get wear_os_sync => 'Raraunga Matataki Tukutahi';

  @override
  String get theme_title => 'Te ahua me te kaupapa';

  @override
  String get theme_mode => 'Aratau Kaupapa';

  @override
  String get theme_light => 'Maama';

  @override
  String get theme_dark => 'pouri';

  @override
  String get theme_system => 'Pūnaha Taunoa';

  @override
  String get theme_background_palette => 'Papamuri Papamuri';

  @override
  String get units_title => 'Waeine ine';

  @override
  String get units_metric => 'Ineine (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Kaore e taea te uta papatohu';

  @override
  String get home_health_permission_req =>
      'Hauora Hono Whakaaetanga e hiahiatia ana';

  @override
  String get home_health_permission_desc =>
      'Me whakaae a Bloomi Hauora Hono ki te kumea nga hikoinga tuturu, te reiti o te ngakau, me te tukutahi i nga taputapu kaainga pūkoro i te waa tuuturu.';

  @override
  String get home_allow_health => 'Whakaaetia te Hononga Hauora';

  @override
  String get home_ready_mindful_day => 'Kua rite mo te ra mahara? ✨';

  @override
  String get home_quick_add => 'Tāpiri Tere';

  @override
  String get home_live_gps => 'GPS ora';

  @override
  String get home_calories_remaining_label => 'KARANGI TONU';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kai: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Paoa mo te Aroturuki Wai 💧';

  @override
  String get home_water_goal_reached => 'I tutuki te whainga o ia ra 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ki te whainga o ia ra';
  }

  @override
  String get home_details => 'Nga korero';

  @override
  String get home_upgrade_plan_desc =>
      'Whakapai ake ki te iriti i nga whaainga o ia ra me te mahere AI';

  @override
  String get home_unlock => 'Wewete 👑';

  @override
  String get home_quick_log_hint => 'Kia tere te tuhi i tetahi urunga oranga';

  @override
  String get food_serving_size => 'Rahi Mahi';

  @override
  String get food_serving_grams => 'Mahi (g)';

  @override
  String get food_number_servings => 'Te maha o nga mahi';

  @override
  String get food_calories_per_serving => 'Calories mo ia tohanga';

  @override
  String get food_recipe_ingredients => 'Nga kai';

  @override
  String get food_recipe_add_ingredient => 'Tāpiri Kai';

  @override
  String get food_recipe_directions => 'Tohutohu & Tuhipoka';

  @override
  String get food_recipe_total => 'Katoa Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast => 'I momoho te tiaki kai ritenga!';

  @override
  String get food_barcode_found => 'Kua kitea te hua!';

  @override
  String get food_barcode_not_found_desc =>
      'Kāore i kitea tēnei waeherepae i te pātengi raraunga tuwhera. Ka taea e koe te taapiri hei kai ritenga.';

  @override
  String get food_add_custom_btn => 'Tāpiri Kai Ritenga';

  @override
  String get food_scan_again => 'Matawai Anō';

  @override
  String get food_review_items => 'Te arotake i nga kai kua kitea';

  @override
  String get food_review_hint =>
      'Whakaritehia te rahinga tango ranei i tetahi mea kaore i te mohiotia';

  @override
  String get food_log_selected => 'Rangitaki Nga Kai kua tohua';

  @override
  String get food_favourites_title => 'Nga Kai Tino';

  @override
  String get food_recent_title => 'Nga Kai Hou';

  @override
  String get food_no_favourites =>
      'Kare ano he kai tino pai. Patohia te ngakau ki tetahi kai hei penapena i konei.';

  @override
  String get food_no_recents => 'Karekau i kitea nga kai kua rehitatia.';

  @override
  String get food_nutrition_details_title => 'Nga Taipitopito Nutrition Daily';

  @override
  String get food_macro_protein_label => 'Werohanga Pūmua';

  @override
  String get food_macro_carbs_label => 'Werohanga Waaro';

  @override
  String get food_macro_fat_label => 'Ngako Wehenga';

  @override
  String get food_macro_fiber_label => 'Werohanga muka';

  @override
  String get food_daily_target_comparison => 'Whakatauritenga Whainga';

  @override
  String food_target_label(Object target) {
    return 'Whāinga: $target';
  }

  @override
  String get food_edit_entry => 'Whakatikaina te Taurunga Diary';

  @override
  String get food_delete_entry => 'Mukua te urunga';

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
    return '$current o $target ml';
  }

  @override
  String get water_intake_history => 'Nga Rakau Wai o tenei ra';

  @override
  String get water_no_logs_today =>
      'Karekau he wai i taraka i tenei ra. Horoihia me te paato i te paatene taapiri tere!';

  @override
  String get water_adjust_goal => 'Whakaritea te Whainga o Ia ra';

  @override
  String get health_connect_banner => 'Honoa ki Health Connect';

  @override
  String get health_vitals_summary => 'Nga Taonga Hauora o ia ra';

  @override
  String get health_latest_heart_rate => 'Reanga Manawa Hou';

  @override
  String get health_latest_bp => 'Toto Toto';

  @override
  String get health_latest_spo2 => 'Toto hāora';

  @override
  String get health_latest_glucose => 'Te huka toto';

  @override
  String get health_latest_weight => 'Taumaha';

  @override
  String get health_latest_sleep => 'Moe Roa';

  @override
  String get health_add_manual => 'Tāpirihia te ine ā-ringa';

  @override
  String get health_history_trends => 'Nga Tikanga o mua';

  @override
  String get health_sync_success => 'I tutuki pai nga raraunga hauora!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours haora $mins min';
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
  String get health_devices_title => 'Ngā Pūrere Tūhono me ngā Wearables';

  @override
  String get health_devices_desc =>
      'Whakahaerehia nga maataki atamai takirua, nga kaitarai tinana, me nga pukoro hauora.';

  @override
  String get health_workout_editor_title => 'Whakatika Mahi';

  @override
  String get health_workout_name_label => 'Ingoa Mahi';

  @override
  String get health_workout_duration_label => 'Roa (meneti)';

  @override
  String get health_workout_calories_label => 'Calories Whakatau (kcal)';

  @override
  String get health_workout_date_label => 'Te Rā me te Wā';

  @override
  String get plan_daily_wellness_roadmap => 'To Mahere Arataki Whaiaro';

  @override
  String get plan_morning_routine => 'Mahinga o te Ata';

  @override
  String get plan_afternoon_routine => 'Te oranga o te po';

  @override
  String get plan_evening_routine => 'Te Hau-a- ahiahi';

  @override
  String get plan_coach_badge => 'Bloomi AI Kaiako';

  @override
  String get plan_weekly_overview => '7-Ra Te Arotahi Hauora';

  @override
  String get plan_targets_title => 'Nga Whainga Ora me nga Whainga';

  @override
  String get plan_calorie_budget_label => 'Putea Calorie o ia ra';

  @override
  String get plan_water_budget_label => 'Whainga Wai ia ra';

  @override
  String get plan_step_budget_label => 'Whāinga Hipanga Ia rā';

  @override
  String get plan_macro_split_label => 'Tauwehenga Macronutrient';

  @override
  String get profile_personal_details => 'Nga Taipitopito Whaiaro';

  @override
  String get profile_body_stats => 'Inenga tinana';

  @override
  String get profile_app_preferences => 'Manakohanga & Tautuhinga Taupānga';

  @override
  String get profile_edit_name_hint => 'To ingoa';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Teitei ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Taumaha ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Te tau';

  @override
  String get profile_gender_male => 'Tane';

  @override
  String get profile_gender_female => 'Wahine';

  @override
  String get profile_gender_other => 'Ētahi atu / Kaua e kii';

  @override
  String get profile_activity_sedentary => 'Nohonoho (He iti ki te kore mahi)';

  @override
  String get profile_activity_light => 'Kia kaha (1-3 ra/wiki)';

  @override
  String get profile_activity_moderate => 'Tino Hohe (3-5 ra/wiki)';

  @override
  String get profile_activity_very => 'Tino Hohe (6-7 ra/wiki)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Tāutahia te tāpa Bloomi me te pōauautanga ki runga i to mataaratanga Wear OS ki te titiro ki nga kaarai, wai me nga hikoi.';

  @override
  String get settings_widgets_header => 'Tauwhitiwhiti Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Whakapirihia nga widget wa-tūturu i runga i te mata o to taputapu mo nga whakahou tere.';

  @override
  String get settings_about_header => 'Mo Bloomi';

  @override
  String get settings_about_version => 'Putanga 1.0.0';

  @override
  String get settings_about_build => 'Hanga 100';

  @override
  String get settings_about_credits =>
      'He mea hanga ma te manaaki mo te noho whakaaro, te oranga hauora.';

  @override
  String get settings_terms_header => 'Nga Ture me nga Tikanga';

  @override
  String get settings_privacy_header => 'Kaupapahere Tūmataiti';

  @override
  String get settings_delete_header => 'Muku Pūkete & Raraunga';

  @override
  String get settings_delete_warning =>
      'Kaore e taea te whakakore i tenei mahi. Ko o kai katoa, ko nga mahi whakangungu, ko nga mea tino nui, me o korero ka mukua ake.';

  @override
  String get settings_delete_confirm_btn => 'Mukua Tuturu';

  @override
  String get onboard_welcome_headline => 'Nau mai ki Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Ko te whai oranga ngakau ngawari, i hangaia huri noa i to oranga.';

  @override
  String get onboard_step_about => 'Mō koe';

  @override
  String get onboard_step_goals => 'Ō Whainga';

  @override
  String get onboard_step_lifestyle => 'Nga Tikanga o Ia ra';

  @override
  String get onboard_step_permissions => 'Whakaaetanga';

  @override
  String get onboard_step_plan => 'Kua rite!';

  @override
  String get onboard_health_connect_perm => 'Hauora Hono Hononga';

  @override
  String get onboard_step_sensors_perm => 'Hipanga Kaitatau Pūoko';

  @override
  String get onboard_notif_perm => 'Whakamaumahara me te Whakamōhiotanga';

  @override
  String get onboard_camera_perm => 'Kāmera (Waehere Pae me te Matawai Kai)';

  @override
  String get onboard_grant_permissions => 'Tuku Whakaaetanga';

  @override
  String get onboard_continue_dashboard => 'Whakatuwhera Papatohu';

  @override
  String get notif_channel_hydration_name => 'Tutei Waiwai';

  @override
  String get notif_channel_hydration_desc =>
      'Nga whakamaumahara wai ngawari puta noa i te ra';

  @override
  String get notif_channel_nutrition_name => 'Kai me te Whakamaumahara Kai';

  @override
  String get notif_channel_nutrition_desc =>
      'He matohi whakamaumahara parakuihi, tina me te tina';

  @override
  String get notif_channel_steps_name => 'Hipanga Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Whakanuia ina eke ki nga taumata o ia ra';

  @override
  String get notif_channel_vitals_name => 'Nga Tirohanga Hauora me te Ora';

  @override
  String get notif_channel_vitals_desc =>
      'Ko nga whakamaumahara mo te taumaha me te moe mo te hau';

  @override
  String get notif_action_log_water => '💧 Rangitaki +250ml';

  @override
  String get notif_action_snooze => 'Moemoea 15m';

  @override
  String get notif_action_log_meal => '🥗 Kai Rangitaki';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
