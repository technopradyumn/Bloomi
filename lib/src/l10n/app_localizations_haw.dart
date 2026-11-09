// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hawaiian (`haw`).
class AppLocalizationsHaw extends AppLocalizations {
  AppLocalizationsHaw([String locale = 'haw']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Home';

  @override
  String get nav_today => 'I kēia lā';

  @override
  String get nav_plan => 'Hoʻolālā';

  @override
  String get nav_food => 'Meaʻai';

  @override
  String get nav_food_diary => 'Diary Meaʻai';

  @override
  String get nav_workout => 'moʻolelo hoʻomaʻamaʻa';

  @override
  String get nav_health => 'Ola kino';

  @override
  String get nav_profile => 'Pilikino';

  @override
  String get save => 'Mālama';

  @override
  String get cancel => 'Hoʻopau';

  @override
  String get delete => 'Holoi';

  @override
  String get edit => 'Hoʻoponopono';

  @override
  String get done => 'Pau';

  @override
  String get close => 'Pani';

  @override
  String get back => 'Ke kua';

  @override
  String get next => 'Aʻe';

  @override
  String get continue_btn => 'E hoʻomau';

  @override
  String get confirm => 'E hōʻoia';

  @override
  String get search => 'Huli';

  @override
  String get filter => 'Kānana';

  @override
  String get all => 'ʻO nā mea a pau';

  @override
  String get active => 'ʻeleu';

  @override
  String get today => 'I kēia lā';

  @override
  String get yesterday => 'I nehinei';

  @override
  String get tomorrow => 'ʻApōpō';

  @override
  String get add => 'Hoʻohui';

  @override
  String get remove => 'Wehe';

  @override
  String get refresh => 'Hōʻano hou';

  @override
  String get retry => 'E hoao hou';

  @override
  String get error => 'Kuhihewa';

  @override
  String get success => 'Pōmaikaʻi';

  @override
  String get loading => 'Ke hoʻouka nei...';

  @override
  String get no_data => 'ʻAʻohe ʻikepili i loaʻa';

  @override
  String get offline => 'Ke ano pahemo';

  @override
  String get offline_sub => 'E hoʻololi ʻia nā hoʻololi ke hoʻopili hou ʻia';

  @override
  String get undo => 'Wehe';

  @override
  String get portion => 'ʻāpana';

  @override
  String get quantity => 'Ka nui';

  @override
  String get unit => 'Unite';

  @override
  String get clear => 'Akaka';

  @override
  String get select => 'E koho';

  @override
  String get apply => 'E noi';

  @override
  String get reset => 'Hoʻoponopono hou';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'ʻAe';

  @override
  String get no => 'ʻAʻole';

  @override
  String get optional => 'Koho';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Polokina';

  @override
  String get carbs => 'ʻO nā kalapona';

  @override
  String get fat => 'momona';

  @override
  String get fiber => 'ʻO ka fiber';

  @override
  String get water => 'Wai';

  @override
  String get steps => 'ʻanuʻu';

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
  String get centimeters => 'knm';

  @override
  String get inches => 'i loko';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hola';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'E lawelawe ana';

  @override
  String get servings => 'Nā lawelawe';

  @override
  String get serving_size => 'Ka nui o ka lawelawe ʻana';

  @override
  String get per_100g => 'no 100g';

  @override
  String get india => 'ʻĪnia';

  @override
  String get asia => 'ʻAsia';

  @override
  String get europe => 'ʻEulopa';

  @override
  String get middle_east => 'Hikina Waena';

  @override
  String get africa => 'ʻApelika';

  @override
  String get americas => 'ʻAmelika';

  @override
  String get home_title => 'Home';

  @override
  String get home_greeting_morning => 'Aloha kakahiaka';

  @override
  String get home_greeting_afternoon => 'Aloha ahiahi';

  @override
  String get home_greeting_evening => 'Aloha ahiahi';

  @override
  String get home_streak_title => 'Pula Pua';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mau lā hala',
      one: '1 lā streak',
      zero: '0 mau lā streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Puhi';

  @override
  String get home_calories_budget => 'Puke Kalana';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal i koe';
  }

  @override
  String get home_water_title => 'Hoʻomaʻamaʻa i kēlā me kēia lā';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Kaʻanuʻu Walked';

  @override
  String get home_quick_actions => 'Nā Hana wikiwiki';

  @override
  String get home_log_meal => 'ʻAʻai lāʻau';

  @override
  String get home_log_water => 'Wai lāʻau';

  @override
  String get home_log_workout => 'Hoʻoikaika kino';

  @override
  String get home_log_weight => 'Loko Kaumaha';

  @override
  String get home_insights_title => 'Nā Manaʻo o kēia lā';

  @override
  String get home_quote => 'ʻO nā koho olakino liʻiliʻi e hana i nā loli pua.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Kumu';

  @override
  String get home_surroundings => 'Ka puni & ea';

  @override
  String get home_notifications => 'Hoolaha';

  @override
  String get home_daily_score => 'Helu Ola Ola';

  @override
  String get home_view_all => 'Nānā i nā mea a pau';

  @override
  String get food_diary_title => 'Diary Meaʻai';

  @override
  String get food_breakfast => 'ʻAina kakahiaka';

  @override
  String get food_lunch => 'ʻAina awakea';

  @override
  String get food_dinner => 'ʻAina ahiahi';

  @override
  String get food_snacks => 'Nā meaʻai ʻai';

  @override
  String get food_add_food => 'Pākuʻi Meaʻai';

  @override
  String get food_edit_food => 'Hoʻoponopono Meaʻai';

  @override
  String get food_add_breakfast => 'Hoʻohui i ka ʻaina kakahiaka';

  @override
  String get food_add_lunch => 'Hoʻohui i ka ʻaina awakea';

  @override
  String get food_add_dinner => 'Hoʻohui i ka ʻaina ahiahi';

  @override
  String get food_add_snack => 'Pākuʻi Pāʻai';

  @override
  String get food_total_calories => 'Huina Kalori';

  @override
  String get food_empty_meal => 'ʻAʻohe meaʻai i hoʻopaʻa ʻia no kēia ʻai';

  @override
  String get food_empty_diary => 'ʻAʻohe meaʻai i kākau ʻia no kēia lā';

  @override
  String get food_log_first_meal =>
      'Kaomi + no ka hoʻopaʻa inoa ʻana i kāu ʻai ʻono mua';

  @override
  String get food_quick_add => 'Hoʻohui wikiwiki';

  @override
  String get food_search_hint => 'Huli i nā kīʻaha, huaʻai, dal, roti...';

  @override
  String get food_custom_recipe => 'Meaʻai maʻamau a me ka meaʻai';

  @override
  String get food_scan_barcode => 'E nānā i ka Barcode';

  @override
  String get food_camera_scan => 'ʻAi ʻAi ʻAi';

  @override
  String get food_recent => 'Nā Meaʻai Hou';

  @override
  String get food_favourites => 'Nā punahele';

  @override
  String get food_macro_summary => 'Hoʻokaʻawale ʻo Macronutrient';

  @override
  String get food_delete_meal_confirm => 'Makemake ʻoe e wehe i kēia mea?';

  @override
  String get food_item_deleted => 'Wehe ʻia ka meaʻai';

  @override
  String get food_remaining => 'koe';

  @override
  String get food_consumed => 'ʻai ʻia';

  @override
  String food_of_target(Object target) {
    return 'o $target kcal';
  }

  @override
  String get foodSearch_title => 'Huli Meaʻai';

  @override
  String get foodSearch_scan_barcode => 'E nānā i ka Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Hana i ka meaʻai maʻamau';

  @override
  String get foodSearch_recent_searches => 'Huli Hou';

  @override
  String get foodSearch_popular => 'Na Mea Ai Kaulana';

  @override
  String get foodSearch_no_results => 'ʻAʻohe meaʻai kūpono i kāu hulina';

  @override
  String get barcode_title => 'ʻO ka mākaʻikaʻi barcode';

  @override
  String get barcode_align =>
      'E hoʻopololei i ka barcode i loko o ka pahu pahupaʻikiʻi';

  @override
  String get barcode_not_found => 'ʻAʻole ʻike ʻia ka huahana ma ka waihona';

  @override
  String get barcode_premium_feature =>
      'Loaʻa ka nānā ʻana i ka barcode me Bloomi Pro';

  @override
  String get camera_title => 'ʻAi ʻAi ʻAi';

  @override
  String get camera_tap_hint => 'E paʻi kiʻi maopopo o kāu kīʻaha';

  @override
  String get camera_analysing => 'Ke kālailai ʻana i ka pā ʻai...';

  @override
  String get camera_detected => 'ʻIke ʻia nā mea';

  @override
  String get camera_flash => 'Hoʻololi i ka Flash';

  @override
  String get camera_retake => 'Lawe hou i ke kiʻi';

  @override
  String get camera_confirm_food => 'E hōʻoia i nā mea';

  @override
  String get customFood_title => 'Meaʻai maʻamau a me ka meaʻai';

  @override
  String get customFood_name_hint => 'Ka inoa kīʻaha a mea ʻai paha';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Pākē (g)';

  @override
  String get customFood_carbs_hint => 'Nā kaʻa (g)';

  @override
  String get customFood_fat_hint => 'Ka momona (g)';

  @override
  String get customFood_save => 'E mālama i ka meaʻai';

  @override
  String get water_tracker_title => 'Waiwai';

  @override
  String get water_daily_target => 'Pahuhopu Hydration i kēlā me kēia lā';

  @override
  String get water_logged_today => 'Hoʻopaʻa ʻia i kēia lā';

  @override
  String get water_add_glass => '+250 ml Ke aniani';

  @override
  String get water_add_bottle => '+500 ml ʻOmole';

  @override
  String get water_custom_amount => 'Ka nui maʻamau';

  @override
  String get water_reminder_tip =>
      'E inu mau i ka wai a puni ka lā no ka ikehu mau.';

  @override
  String water_logged_toast(Object amount) {
    return 'Hoʻopaʻa ʻia $amount ml o ka wai 💧';
  }

  @override
  String get workout_title => 'moʻolelo hoʻomaʻamaʻa';

  @override
  String get workout_add_exercise => 'Hoʻohui i ka hana ʻana';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Ka ikaika';

  @override
  String get workout_yoga => 'Yoga a me ka hikiwawe';

  @override
  String get workout_duration => 'Ka lōʻihi';

  @override
  String get workout_intensity => 'Ka ikaika';

  @override
  String get workout_calories_burned => 'Puhi ʻia nā Kalori';

  @override
  String get workout_empty => 'ʻAʻohe hana i hoʻopaʻa ʻia i kēia lā';

  @override
  String get workout_save_success => 'Mālama ʻia ka hoʻomaʻamaʻa ʻana!';

  @override
  String get workout_type => 'ʻAno hoʻomaʻamaʻa';

  @override
  String get workout_notes => 'Nā memo a me nā noʻonoʻo';

  @override
  String get health_overview_title => 'Ola & Pono';

  @override
  String get health_heart_rate => 'Ka Puuwai';

  @override
  String get health_blood_oxygen => 'Koko Oxygen (SpO2)';

  @override
  String get health_blood_pressure => 'Ke Koko';

  @override
  String get health_blood_glucose => 'ʻO ke koko koko';

  @override
  String get health_body_temperature => 'Ka Mahana Kino';

  @override
  String get health_sleep_tracking => 'Hoʻomoe moe';

  @override
  String get health_weight_tracking => 'Kaumaha & Hoʻohui kino';

  @override
  String get health_waist_hip => 'Pūhaka-a-Hip Ratio';

  @override
  String get health_devices_hub => 'Nā hāmeʻa & Smartwatch Hub';

  @override
  String get health_sync_now => 'Hoʻopili i ka ʻikepili olakino';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Hana ʻia hope: $time';
  }

  @override
  String get health_manual_entry => 'Komo Ola Ola';

  @override
  String get health_metric_detail => 'Nā kikoʻī metric';

  @override
  String get health_connected_sensors => 'Hoʻohui Ola Ola';

  @override
  String get plan_title => 'Hoʻolālā i kēlā me kēia lā';

  @override
  String get plan_weekly_title => 'Hoʻolālā Ola o kēlā me kēia pule';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Pahu Waiwai';

  @override
  String get plan_step_target => 'Pākuʻi ʻanuʻu';

  @override
  String get plan_sleep_target => 'Pahu moe';

  @override
  String get plan_meal_suggestions => 'Manaʻo ʻai';

  @override
  String get plan_healthy_habits => 'Nā Maʻa Ola & Manaʻo';

  @override
  String get plan_coach_advice => 'Nā Manaʻo Hoʻolaha ʻo Bloomi AI';

  @override
  String get plan_generated_title => 'Hoʻolālā Pilikino i kēlā me kēia lā';

  @override
  String get profile_title => 'Pilikino';

  @override
  String get profile_edit => 'Hoʻoponopono i ka moʻolelo';

  @override
  String get profile_name => 'inoa';

  @override
  String get profile_age => 'makahiki';

  @override
  String get profile_gender => 'kāne kāne';

  @override
  String get profile_height => 'Kiʻekiʻe';

  @override
  String get profile_weight => 'Kaumaha';

  @override
  String get profile_goal => 'Pahuhopu Kumu';

  @override
  String get profile_activity_level => 'Papa Hana';

  @override
  String get profile_stats => 'ʻO kaʻu helu ola kino';

  @override
  String get profile_saved => 'Ua hōʻano hou ʻia ka moʻolelo';

  @override
  String get profile_bmi => 'Helu Kino (BMI)';

  @override
  String get profile_membership => 'Lahui';

  @override
  String get settings => 'Nā hoʻonohonoho';

  @override
  String get preferences_habits => 'MAKEMAKE & MAU';

  @override
  String get appearance_theme => 'Nānā a me ke kumuhana';

  @override
  String get appearance_theme_sub =>
      'Pōʻeleʻele, Māmā, ʻAno Pūnaehana & Nā Koho Kākoʻo App';

  @override
  String get permissions => 'Nā ʻae a me ke komo pūnaewele';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'Hoʻomanaʻo & Hoʻolaha';

  @override
  String get reminders_sub =>
      'ʻO ka manawa ʻai, ka wai, ka nānā ʻana i ke kaumaha a me ka hoʻomanaʻo ʻana i ka wā moe';

  @override
  String get units_of_measurement => 'Unite o Ana';

  @override
  String get units_sub =>
      'Metric (kg, knm, ml, km) a i ʻole Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Language';

  @override
  String get language_sub =>
      'English, हिन्दी (Hindi), Hinglish & 195+ mau ʻōlelo honua';

  @override
  String get home_screen_widgets => 'Nā ʻōkuhi pale home';

  @override
  String get widgets_sub =>
      'Nā widget Android ola: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'ʻO ka hoa Smartwatch, nā tile, nā pilikia a me nā mea ola';

  @override
  String get goals_wellness => 'NA PAHUNUI & NUI';

  @override
  String get nutrition_targets => 'Nā Pahu Nutrition & Māhele Macro';

  @override
  String get nutrition_targets_sub =>
      'Calorie target, protein, carbs, fat & water goal';

  @override
  String get weekly_recap => 'ʻO ka hoʻoponopono olakino olakino';

  @override
  String get weekly_recap_sub =>
      '7-lā calorie awelika, macro ratio & lā maikaʻi loa';

  @override
  String get streaks_milestones => 'Nā kaha a me nā Milestone';

  @override
  String get streaks_sub => 'ʻO nā streaks blossom streaks, badges & hoʻokō';

  @override
  String get connected_devices => 'NĀ LĀKĀ ILI & ECOSYSTEM';

  @override
  String get devices_hub => 'Nā hāmeʻa & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ka puni a me ka lewa';

  @override
  String get surroundings_sub =>
      'ʻO ka maikaʻi o ka ea (AQI), ka helu UV a me nā ʻōlelo aʻoaʻo hoʻomaʻemaʻe ʻana i ka wā';

  @override
  String get bloomi_pro => 'Kakau inoa Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'ʻO AI Plan Coach, 5 mau hāmeʻa home a me nā mea hoʻoikaika kino';

  @override
  String get about_security => 'NO KA & PALU';

  @override
  String get about_bloomi => 'No Bloomi';

  @override
  String get about_bloomi_sub => 'E kūkulu i nā kikoʻī, ka mana, nā ʻano';

  @override
  String get privacy_policy => 'Kulekele pilikino';

  @override
  String get privacy_policy_sub =>
      'Pahemo-mua, hoʻolālā ʻikepili ma ka polokalamu';

  @override
  String get terms_conditions => 'Nā Kūlana a me nā Kūlana';

  @override
  String get terms_conditions_sub =>
      'Nā ʻōlelo aʻoaʻo o ka lawelawe a me ke olakino';

  @override
  String get delete_account => 'Holoi moʻokāki & ʻikepili';

  @override
  String get delete_account_sub =>
      'Holoi hiki ʻole ke hoʻololi i ka ʻikepili SQLite kūloko a me nā waihona kapuaʻi';

  @override
  String get healthy_habits => 'E kūkulu i nā ʻano olakino maikaʻi a mau loa';

  @override
  String get all_logs => 'ʻO kaʻu ʻikepili i mālama ʻia a me nā moʻolelo';

  @override
  String get search_language =>
      'Huli ma ka ʻōlelo a i ʻole ka palapala ʻōiwi...';

  @override
  String get languages_available => 'Loaʻa nā ʻōlelo';

  @override
  String get no_matching_languages => 'ʻAʻohe ʻōlelo i ʻike ʻia';

  @override
  String get try_searching =>
      'E hoʻāʻo e ʻimi ma ka palapala ʻōiwi a i ʻole ka ʻōlelo Pelekania';

  @override
  String get partially_translated => 'Unuhi hapa';

  @override
  String get complete_translation => 'Hoʻopiha';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Hoʻonoho ʻia ka ʻōlelo iā $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Kapuni & Kaiapuni';

  @override
  String get surroundings_aqi => 'Hōʻikeʻike maikaʻi o ka ea';

  @override
  String get surroundings_uv => 'Papa kuhikuhi UV';

  @override
  String get surroundings_temp => 'Mahana';

  @override
  String get surroundings_humidity => 'Ka haʻahaʻa';

  @override
  String get surroundings_hydration_advice =>
      'Noho maikaʻi i ka wai i nā kūlana o kēia manawa.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Huli Meaʻai';

  @override
  String get food_quick_barcode => 'E ʻimi i ka Barcode 👑';

  @override
  String get food_quick_water => 'Hoʻohui i ka wai';

  @override
  String get food_quick_custom => 'Meaʻai Kuʻuna';

  @override
  String get surroundings_good => 'Maikaʻi';

  @override
  String get surroundings_moderate => 'Kaumaha';

  @override
  String get surroundings_unhealthy => 'kino kino';

  @override
  String get notifications_title => 'Hoʻolaha a me nā ʻōlelo hoʻolaha';

  @override
  String get notifications_empty => 'ʻAʻohe hoʻolaha hou';

  @override
  String get notifications_mark_read => 'E kaha i na mea a pau i heluheluia';

  @override
  String get notifications_clear => 'Holoi a pau';

  @override
  String get reminders => 'Hoʻonohonoho hoʻomanaʻo';

  @override
  String get notifications => 'Hoolaha';

  @override
  String get reminders_breakfast_title => 'Hoʻomanaʻo kakahiaka 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Aloha kakahiaka! He manawa no ka ʻaina kakahiaka ma $time .';
  }

  @override
  String get reminders_lunch_title => 'Hoʻomanaʻo ʻaina awakea 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Hoʻomaha a hauʻoli i ka ʻaina awakea me ke kaulike ma $time .';
  }

  @override
  String get reminders_dinner_title => 'Hoʻomanaʻo ʻaina ahiahi 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'ʻO ka manawa no ka ʻaina ahiahi māmā ma $time .';
  }

  @override
  String get reminders_water_title => 'ʻO ka hoʻoheheʻe wai 💧';

  @override
  String reminders_water_body(Object time) {
    return 'ʻO ka manawa e inu ai i kahi kīʻaha wai hou! ( $time )';
  }

  @override
  String get reminders_weight_title =>
      'Ke kaupaona ʻana i kēlā me kēia pule ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'E hahai i kāu helu kino o kēlā me kēia pule ma Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Hiki i ka wā moe 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'E hoʻomaha a hoʻomākaukau no ka hiamoe hoʻomaha ( $time ).';
  }

  @override
  String get onboard_welcome => 'Welina mai iā Bloomi';

  @override
  String get onboard_sub =>
      'ʻO kou hoa aloha, hoʻopahemo-mua i ke olakino a me ka meaʻai.';

  @override
  String get onboard_get_started => 'E hoʻomaka';

  @override
  String get onboard_sign_in => 'E komo';

  @override
  String get onboard_skip => 'Holoi';

  @override
  String get onboard_choose_goal => 'He aha kāu pahuhopu ola kino?';

  @override
  String get onboard_goal_weight_loss => 'Hoʻemi Paona Māmā';

  @override
  String get onboard_goal_muscle => 'Loaʻa i ka ʻiʻo a me ka ikaika';

  @override
  String get onboard_goal_energy =>
      'ʻO ka ikaika a me ke ola o kēlā me kēia lā';

  @override
  String get onboard_goal_habits => 'ʻAi Noʻonoʻo Ola';

  @override
  String get onboard_about_you => 'E haʻi mai iā mākou e pili ana iā ʻoe iho';

  @override
  String get onboard_lifestyle => 'ʻO kāu hana maʻamau i kēlā me kēia lā';

  @override
  String get onboard_permissions_title => 'Nā ʻae a me ke komo pūnaewele';

  @override
  String get onboard_permissions_sub =>
      'Hāʻawi i ke komo i nā ʻanuʻu sync, nā hoʻomaʻamaʻa, a me nā hoʻomanaʻo.';

  @override
  String get onboard_plan_ready_title => 'Ua mākaukau kāu hoʻolālā maʻamau!';

  @override
  String get onboard_plan_ready_sub =>
      'Ua hana mākou i kahi palapala ʻai meaʻai maʻalahi, pilikino a me ka maikaʻi no ʻoe wale nō.';

  @override
  String get onboard_enter_bloomi => 'Komo Bloomi';

  @override
  String get insights_weekly_report => 'ʻO ka hoʻoponopono olakino olakino';

  @override
  String insights_best_day(Object day) {
    return 'Lā Kūlike Loa: $day';
  }

  @override
  String get insights_streaks_badges => 'Nā kaha a me nā Milestone';

  @override
  String insights_unlocked_on(Object date) {
    return 'Wehe ʻia ma $date';
  }

  @override
  String get insights_keep_going => 'E hoʻomau i ka holomua maikaʻi!';

  @override
  String get widgets_title => 'Nā ʻōkuhi pale home';

  @override
  String widgets_active_count(Object count) {
    return 'Nā Widget ʻeleu: $count';
  }

  @override
  String get widgets_hub_title => 'ʻO Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Nā ʻanuʻu a me ke apo ʻeleu';

  @override
  String get widgets_water_title => 'Hoʻopaʻa Waiwai wikiwiki';

  @override
  String get widgets_mascot_title => 'ʻO Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'E hoʻohana i ka OS Smartwatch';

  @override
  String get wear_os_connected => 'Hoʻopili ʻia i ka Nānā';

  @override
  String get wear_os_sync => 'Hoʻopili i ka ʻikepili kiaʻi';

  @override
  String get theme_title => 'Nānā a me ke kumuhana';

  @override
  String get theme_mode => 'Ke ʻano kumuhana';

  @override
  String get theme_light => 'Māmā';

  @override
  String get theme_dark => 'Poʻeleʻele';

  @override
  String get theme_system => 'Pūnaehana Default';

  @override
  String get theme_background_palette => 'Paleka ʻaoʻao';

  @override
  String get units_title => 'Unite o Ana';

  @override
  String get units_metric => 'Metric (kg, knm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'ʻAʻole hiki ke hoʻouka i ka dashboard';

  @override
  String get home_health_permission_req => 'Pono ka ʻae Hoʻohui Ola';

  @override
  String get home_health_permission_desc =>
      'Pono ʻo Bloomi i ka ʻae ʻana i ka Health Connect e huki i nā ʻanuʻu maoli, ka puʻuwai puʻuwai, a me ka hoʻonohonoho ʻana i nā widget home kelepona i ka manawa maoli.';

  @override
  String get home_allow_health => 'E ʻae iā Health Connect';

  @override
  String get home_ready_mindful_day => 'Mākaukau no ka lā noʻonoʻo? ✨';

  @override
  String get home_quick_add => 'Hoʻohui wikiwiki';

  @override
  String get home_live_gps => 'GPS ola';

  @override
  String get home_calories_remaining_label => 'KALORI KOE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'ʻAi ʻia: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Paʻi no ka mea mālama wai 💧';

  @override
  String get home_water_goal_reached =>
      'Ua hiki i ka pahuhopu i kēlā me kēia lā 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml i ka pahu hopu o kēlā me kēia lā';
  }

  @override
  String get home_details => 'Nā kikoʻī';

  @override
  String get home_upgrade_plan_desc =>
      'Hoʻonui e wehe i nā pahuhopu i kēlā me kēia lā a me ka hoʻolālā AI';

  @override
  String get home_unlock => 'Wehe i ka 👑';

  @override
  String get home_quick_log_hint => 'E hoʻopaʻa koke i kahi komo olakino';

  @override
  String get food_serving_size => 'Ka nui o ka lawelawe ʻana';

  @override
  String get food_serving_grams => 'Lawelawe (g)';

  @override
  String get food_number_servings => 'Ka helu o na lawelawe';

  @override
  String get food_calories_per_serving => 'Calories no ka lawelawe';

  @override
  String get food_recipe_ingredients => 'Nā mea hoʻohui';

  @override
  String get food_recipe_add_ingredient => 'Hoʻohui i ka mea hoʻohui';

  @override
  String get food_recipe_directions => 'ʻŌlelo aʻo a me nā memo';

  @override
  String get food_recipe_total => 'Ka nui o ka meaʻai meaʻai';

  @override
  String get food_recipe_per_serving => 'No ka lawelawe ʻana i ka meaʻai';

  @override
  String get food_recipe_saved_toast => 'Mālama ʻia ka meaʻai maʻamau!';

  @override
  String get food_barcode_found => 'Huahana Loaʻa!';

  @override
  String get food_barcode_not_found_desc =>
      'ʻAʻole hiki iā mākou ke loaʻa kēia barcode ma ka waihona hāmama. Hiki iā ʻoe ke hoʻohui iā ia ma ke ʻano he meaʻai maʻamau.';

  @override
  String get food_add_custom_btn => 'Hoʻohui i nā meaʻai maʻamau';

  @override
  String get food_scan_again => 'Nānā Hou';

  @override
  String get food_review_items => 'Nānā i nā meaʻai i ʻike ʻia';

  @override
  String get food_review_hint =>
      'Hoʻoponopono i ka nui a i ʻole wehe i kekahi mea ʻike ʻole ʻia';

  @override
  String get food_log_selected => 'Log Nā meaʻai i wae ʻia';

  @override
  String get food_favourites_title => 'Nā meaʻai punahele';

  @override
  String get food_recent_title => 'Nā Meaʻai Hou';

  @override
  String get food_no_favourites =>
      'ʻAʻohe meaʻai punahele i kēia manawa. E kaomi i ka naʻau i kekahi meaʻai e mālama ai ma ʻaneʻi.';

  @override
  String get food_no_recents => 'ʻAʻohe meaʻai i hoʻopaʻa inoa hou ʻia.';

  @override
  String get food_nutrition_details_title => 'Nā kikoʻī ʻai i kēlā me kēia lā';

  @override
  String get food_macro_protein_label => 'Haʻihaʻi Protein';

  @override
  String get food_macro_carbs_label => 'Hoʻokaʻawale ʻia nā Carbs';

  @override
  String get food_macro_fat_label => 'ʻAhaʻi momona';

  @override
  String get food_macro_fiber_label => 'Haʻihaʻi pulu';

  @override
  String get food_daily_target_comparison => 'Hoʻohālikelike Pahu';

  @override
  String food_target_label(Object target) {
    return 'Pahuhopu: $target';
  }

  @override
  String get food_edit_entry => 'Hoʻoponopono i ke komo ʻana i ka Diary';

  @override
  String get food_delete_entry => 'Holoi Komo';

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
  String get water_intake_history => 'Nā Loko Wai o kēia lā';

  @override
  String get water_no_logs_today =>
      'ʻAʻohe wai i hoʻopaʻa ʻia i kēia lā. Hydrate a paʻi i kahi pihi hoʻohui wikiwiki!';

  @override
  String get water_adjust_goal =>
      'Hoʻoponopono i ka pahuhopu o kēlā me kēia lā';

  @override
  String get health_connect_banner => 'Hoʻopili ʻia me Health Connect';

  @override
  String get health_vitals_summary => 'Nā Mea Ola Ola i kēlā me kēia lā';

  @override
  String get health_latest_heart_rate => 'Ka Puuwai Puuwai Hou loa';

  @override
  String get health_latest_bp => 'Ke Koko';

  @override
  String get health_latest_spo2 => 'Koko Oxygen';

  @override
  String get health_latest_glucose => 'ʻO ke koko koko';

  @override
  String get health_latest_weight => 'Kaumaha';

  @override
  String get health_latest_sleep => 'Ka lōʻihi o ka hiamoe';

  @override
  String get health_add_manual => 'Hoʻohui i ke ana lima';

  @override
  String get health_history_trends => 'Nā Kau Moʻolelo';

  @override
  String get health_sync_success => 'Ua holo pono ka ʻikepili olakino!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours hola $mins min';
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
  String get health_devices_title => 'Nā mea hoʻopili a me nā mea komo';

  @override
  String get health_devices_desc =>
      'Hoʻoponopono i nā wati akamai i hui pū ʻia, nā mea hoʻomaʻamaʻa kino, a me nā mea ʻike olakino.';

  @override
  String get health_workout_editor_title => 'Hoʻoponopono Workout';

  @override
  String get health_workout_name_label => 'Ka inoa hana';

  @override
  String get health_workout_duration_label => 'Ka lōʻihi (mau minuke)';

  @override
  String get health_workout_calories_label => 'Kaloka i manaʻo ʻia (kcal)';

  @override
  String get health_workout_date_label => 'La a me ka manawa';

  @override
  String get plan_daily_wellness_roadmap => 'ʻO kāu palapala alanui pilikino';

  @override
  String get plan_morning_routine => 'Kakahiaka';

  @override
  String get plan_afternoon_routine => 'Aloha awakea';

  @override
  String get plan_evening_routine => 'Makani-Iho ahiahi';

  @override
  String get plan_coach_badge => 'Bloomi AI Kumu';

  @override
  String get plan_weekly_overview => '7-La La Ola Ola';

  @override
  String get plan_targets_title => 'Nā Pahuhopu Ola';

  @override
  String get plan_calorie_budget_label =>
      'ʻO ke kālā Calorie o kēlā me kēia lā';

  @override
  String get plan_water_budget_label => 'Pahu Wai i kēlā me kēia lā';

  @override
  String get plan_step_budget_label => 'Pahuhopu o kēlā me kēia lā';

  @override
  String get plan_macro_split_label => 'Pākuʻi Macronutrient';

  @override
  String get profile_personal_details => 'Nā kikoʻī pilikino';

  @override
  String get profile_body_stats => 'Ana kino';

  @override
  String get profile_app_preferences => 'Nā Koho & Nā Koho App';

  @override
  String get profile_edit_name_hint => 'Kou inoa';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Kiʻekiʻe ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Kaumaha ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'makahiki';

  @override
  String get profile_gender_male => 'Kane';

  @override
  String get profile_gender_female => 'Wahine';

  @override
  String get profile_gender_other =>
      'ʻO nā mea ʻē aʻe / makemake ʻole e ʻōlelo';

  @override
  String get profile_activity_sedentary =>
      'Noho noho (Liʻiliʻi a ʻaʻole hoʻoikaika kino)';

  @override
  String get profile_activity_light => 'Hoʻoikaika māmā (1-3 lā / pule)';

  @override
  String get profile_activity_moderate =>
      'Hoʻoikaika maʻalahi (3-5 mau lā / pule)';

  @override
  String get profile_activity_very => 'Hoʻoikaika loa (6-7 lā / pule)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'E hoʻouka i ka tile Bloomi a me ka hoʻopiʻi ma kāu wati Wear OS e nānā i nā calorie, ka wai, a me nā ʻanuʻu.';

  @override
  String get settings_widgets_header => 'Nā hāmeʻa Android pāʻani';

  @override
  String get settings_widgets_desc =>
      'E hoʻopaʻa i nā widget manawa maoli ma ka pale home o kāu kelepona no ka hoʻonui koke.';

  @override
  String get settings_about_header => 'No Bloomi';

  @override
  String get settings_about_version => 'Helu 1.0.0';

  @override
  String get settings_about_build => 'Kukulu 100';

  @override
  String get settings_about_credits =>
      'Hana ʻia me ka mālama no ka noʻonoʻo, ola olakino.';

  @override
  String get settings_terms_header => 'Nā Kūlana a me nā Kūlana';

  @override
  String get settings_privacy_header => 'Kulekele pilikino';

  @override
  String get settings_delete_header => 'Holoi moʻokāki & ʻikepili';

  @override
  String get settings_delete_warning =>
      'ʻAʻole hiki ke hoʻopau ʻia kēia hana. E holoi mau ʻia kāu mau meaʻai a pau, nā hoʻomaʻamaʻa, nā mea ola a me nā ʻaoʻao.';

  @override
  String get settings_delete_confirm_btn => 'Holoi mau';

  @override
  String get onboard_welcome_headline => 'Welina mai iā Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Hoʻolālā maikaʻi a noʻonoʻo noʻonoʻo a puni kou ola.';

  @override
  String get onboard_step_about => 'E pili ana iā ʻoe';

  @override
  String get onboard_step_goals => 'Kou Pahuhopu';

  @override
  String get onboard_step_lifestyle => 'Nā Hana o kēlā me kēia lā';

  @override
  String get onboard_step_permissions => 'Nā ʻae';

  @override
  String get onboard_step_plan => 'Mākaukau!';

  @override
  String get onboard_health_connect_perm => 'Hoʻohui Ola';

  @override
  String get onboard_step_sensors_perm => 'Kaʻanuʻu Counter Sensor';

  @override
  String get onboard_notif_perm => 'Hoʻomanaʻo noʻonoʻo & Hoʻolaha';

  @override
  String get onboard_camera_perm => 'Paʻi kiʻi kiʻi (Barcode a me ka meaʻai)';

  @override
  String get onboard_grant_permissions => 'Hāʻawi i nā ʻae';

  @override
  String get onboard_continue_dashboard => 'E wehe i ka papa kuhikuhi';

  @override
  String get notif_channel_hydration_name => 'Nā Nudges Waiwai';

  @override
  String get notif_channel_hydration_desc => 'Hoʻomanaʻo wai mālie i ka lā';

  @override
  String get notif_channel_nutrition_name => 'Mea Hoʻomanaʻo Meaʻai & Meaʻai';

  @override
  String get notif_channel_nutrition_desc =>
      'ʻO ka ʻaina kakahiaka, ka ʻaina awakea, a me ka ʻaina ahiahi';

  @override
  String get notif_channel_steps_name => 'KaʻAnuʻu Milestones';

  @override
  String get notif_channel_steps_desc =>
      'ʻO nā hoʻolauleʻa i ka wā e hiki ai i nā pahuhopu i kēlā me kēia lā';

  @override
  String get notif_channel_vitals_name => 'Nānā Ola & Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Nā hoʻomanaʻo hoʻomanaʻo ʻana i ke kaumaha a me ka wā moe';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 ʻAi lāʻau';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
