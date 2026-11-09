// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tsonga (`ts`).
class AppLocalizationsTs extends AppLocalizations {
  AppLocalizationsTs([String locale = 'ts']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ekaya';

  @override
  String get nav_today => 'Namuntlha';

  @override
  String get nav_plan => 'Hlela';

  @override
  String get nav_food => 'Swakudya';

  @override
  String get nav_food_diary => 'Diary ya Swakudya';

  @override
  String get nav_workout => 'Log ya ku Titoloveta';

  @override
  String get nav_health => 'Rihanyo';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Hlayisa';

  @override
  String get cancel => 'Khansela';

  @override
  String get delete => 'Susa';

  @override
  String get edit => 'Hlela';

  @override
  String get done => 'Swi endliwile';

  @override
  String get close => 'Pfala';

  @override
  String get back => 'Ku tlhelela endzhaku';

  @override
  String get next => 'Endzhaku ka sweswo';

  @override
  String get continue_btn => 'Yana emahlweni';

  @override
  String get confirm => 'Tiyisisa';

  @override
  String get search => 'Ku lavisisa';

  @override
  String get filter => 'Sefa';

  @override
  String get all => 'Hinkwaswo';

  @override
  String get active => 'Ku tirha';

  @override
  String get today => 'Namuntlha';

  @override
  String get yesterday => 'Tolo';

  @override
  String get tomorrow => 'Mundzuku';

  @override
  String get add => 'Ku engetela';

  @override
  String get remove => 'Susa';

  @override
  String get refresh => 'Pfuxeta';

  @override
  String get retry => 'Ringeta nakambe';

  @override
  String get error => 'Xihoxo';

  @override
  String get success => 'Ku humelela';

  @override
  String get loading => 'Ku layicha...';

  @override
  String get no_data => 'Ku hava data leyi kumekaka';

  @override
  String get offline => 'Mode ya le handle ka inthanete';

  @override
  String get offline_sub =>
      'Ku cinca ku ta fambisana loko ku hlanganisiwile nakambe';

  @override
  String get undo => 'Ku tlherisela endzhaku';

  @override
  String get portion => 'Xiphemu';

  @override
  String get quantity => 'Nhlayo ya swilo';

  @override
  String get unit => 'Yuniti';

  @override
  String get clear => 'Swi le rivaleni';

  @override
  String get select => 'Hlawula';

  @override
  String get apply => 'Endla xikombelo';

  @override
  String get reset => 'Seta nakambe';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ina';

  @override
  String get no => 'E-e';

  @override
  String get optional => 'Hi ku hlawula';

  @override
  String get calories => 'Tikhilojulu';

  @override
  String get protein => 'Tiphrotheyini';

  @override
  String get carbs => 'Tikhabohaydreti';

  @override
  String get fat => 'Mafurha';

  @override
  String get fiber => 'Fibre ya xirhendzevutani';

  @override
  String get water => 'Mati';

  @override
  String get steps => 'Magoza';

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
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Ku tirhela';

  @override
  String get servings => 'Ku phamela';

  @override
  String get serving_size => 'Vukulu bya ku Phamela';

  @override
  String get per_100g => 'hi 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Yuropa';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Matiko ya Amerika';

  @override
  String get home_title => 'Ekaya';

  @override
  String get home_greeting_morning => 'Mixo lowunene';

  @override
  String get home_greeting_afternoon => 'Madyambu lamanene';

  @override
  String get home_greeting_evening => 'Madyambu Lamanene';

  @override
  String get home_streak_title => 'Xirhendzevutana xa Swiluva';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count masiku ya ku landzelelana',
      one: '1 siku ra ku landzelelana',
      zero: '0 masiku ya streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ku hisiwa';

  @override
  String get home_calories_budget => 'Mpimanyeto wa Tikhalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal leyi saleke';
  }

  @override
  String get home_water_title => 'Ku Humesiwa ka Mati ya Siku na Siku';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Magoza Ma Famba';

  @override
  String get home_quick_actions => 'Swiendlo swa Xihatla';

  @override
  String get home_log_meal => 'Swakudya swa Log';

  @override
  String get home_log_water => 'Mati ya Tihunyi';

  @override
  String get home_log_workout => 'Ku Titoloveta ka Log';

  @override
  String get home_log_weight => 'Ndzilo wa Log';

  @override
  String get home_insights_title => 'Vutivi bya Namuntlha';

  @override
  String get home_quote =>
      'Swihlawulekisi leswintsongo swa rihanyo swi tumbuluxa ku cinca loku hlukaka.';

  @override
  String get home_ai_coach_tip => 'Muleteri wa Bloomi AI';

  @override
  String get home_surroundings => 'Ndhawu leyi nga ekusuhi & Moya';

  @override
  String get home_notifications => 'Switiviso';

  @override
  String get home_daily_score => 'Xibalo xa Vuhlayiseki bya Siku na Siku';

  @override
  String get home_view_all => 'Vona Hinkwaswo';

  @override
  String get food_diary_title => 'Diary ya Swakudya';

  @override
  String get food_breakfast => 'Swakudya swa nimixo';

  @override
  String get food_lunch => 'Swakudya swa ninhlikanhi';

  @override
  String get food_dinner => 'Swakudya swa nimadyambu';

  @override
  String get food_snacks => 'Swakudya swo olova';

  @override
  String get food_add_food => 'Engeta Swakudya';

  @override
  String get food_edit_food => 'Hlela Swakudya';

  @override
  String get food_add_breakfast => 'Engetelani Swakudya swa nimixo';

  @override
  String get food_add_lunch => 'Engetelani Swakudya swa ninhlikanhi';

  @override
  String get food_add_dinner => 'Engetelani Swakudya swa Madyambu';

  @override
  String get food_add_snack => 'Ku engetela Snack';

  @override
  String get food_total_calories => 'Nhlayo Hinkwayo ya Tikhilojulu';

  @override
  String get food_empty_meal =>
      'Ku hava swakudya leswi logiweke eka swakudya leswi ku fikela sweswi';

  @override
  String get food_empty_diary =>
      'Ku hava swakudya leswi logiweke swa siku leri';

  @override
  String get food_log_first_meal =>
      'Thepha + ku log swakudya swa wena swo sungula swo nandziha';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint => 'Ku lavisisa swakudya, mihandzu, dal, roti...';

  @override
  String get food_custom_recipe => 'Swakudya swa Custom & Recipe';

  @override
  String get food_scan_barcode => 'Scan Barcode ya Xirhendzevutani';

  @override
  String get food_camera_scan => 'Xikeni xa Swakudya xa AI';

  @override
  String get food_recent => 'Swakudya Swa Sweswinyana';

  @override
  String get food_favourites => 'Swilo leswi rhandzekaka';

  @override
  String get food_macro_summary => 'Ku hambanisiwa ka swakudya leswikulu';

  @override
  String get food_delete_meal_confirm =>
      'Xana wa tiyiseka leswaku u lava ku susa nchumu lowu?';

  @override
  String get food_item_deleted => 'Nchumu wa swakudya wu susiwile';

  @override
  String get food_remaining => 'ku sala';

  @override
  String get food_consumed => 'ku dyiwa';

  @override
  String food_of_target(Object target) {
    return 'ya $target kcal';
  }

  @override
  String get foodSearch_title => 'Ku Lavisisa Swakudya';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode ya Xirhendzevutani';

  @override
  String get foodSearch_take_photo => 'Snap Swakudya Xifaniso';

  @override
  String get foodSearch_custom_food => 'Endla Swakudya swa Custom';

  @override
  String get foodSearch_recent_searches => 'Ku Lavisisa Ka Sweswinyana';

  @override
  String get foodSearch_popular => 'Swibya leswi dumeke';

  @override
  String get foodSearch_no_results =>
      'Ku hava swakudya leswi fambisanaka ni ku lavisisa ka wena';

  @override
  String get barcode_title => 'Xikeni xa Barcode';

  @override
  String get barcode_align => 'Lulamisa barcode endzeni ka furemu ya khamera';

  @override
  String get barcode_not_found => 'Xiendliwa a xi kumeki eka database';

  @override
  String get barcode_premium_feature =>
      'Ku skena ka tibarcode ku kumeka hi Bloomi Pro';

  @override
  String get camera_title => 'Xikeni xa Swakudya xa AI';

  @override
  String get camera_tap_hint =>
      'Teka xifaniso lexi nga erivaleni xa swakudya swa wena';

  @override
  String get camera_analysing => 'Ku xopaxopa swakudya swa plate...';

  @override
  String get camera_detected => 'Swilo leswi kumiweke';

  @override
  String get camera_flash => 'Ku cinca-cinca Flash';

  @override
  String get camera_retake => 'Teka Xifaniso Hi Vuntshwa';

  @override
  String get camera_confirm_food => 'Tiyisisa Swilo';

  @override
  String get customFood_title => 'Swakudya swa Custom & Recipe';

  @override
  String get customFood_name_hint => 'Vito ra xibya kumbe xiaki';

  @override
  String get customFood_calories_hint => 'Tikhilojulu (kcal) .';

  @override
  String get customFood_protein_hint => 'Tiphrotheyini (g) .';

  @override
  String get customFood_carbs_hint => 'Tikhabohaydreti (g) .';

  @override
  String get customFood_fat_hint => 'Mafurha (g) .';

  @override
  String get customFood_save => 'Hlayisa Ricepe';

  @override
  String get water_tracker_title => 'Xilandzeri xa Mati';

  @override
  String get water_daily_target => 'Pakani ya Siku na Siku ya Hydration';

  @override
  String get water_logged_today => 'Logged Namuntlha';

  @override
  String get water_add_glass => '+250 ml Nghilazi';

  @override
  String get water_add_bottle => '+500 ml Bodlhela';

  @override
  String get water_custom_amount => 'Mali ya Xihlawuhlawu';

  @override
  String get water_reminder_tip =>
      'Nwa mati nkarhi na nkarhi siku hinkwaro leswaku u kuma matimba lama tiyeke.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml ya mati 💧';
  }

  @override
  String get workout_title => 'Log ya ku Titoloveta';

  @override
  String get workout_add_exercise => 'Engetelani Ku Titoloveta';

  @override
  String get workout_cardio => 'Cardio ya mbilu';

  @override
  String get workout_strength => 'Matimba';

  @override
  String get workout_yoga => 'Yoga & Ku cinca-cinca';

  @override
  String get workout_duration => 'Nkarhi wo leha';

  @override
  String get workout_intensity => 'Ku nonoka';

  @override
  String get workout_calories_burned => 'Tikhilojulu Leti Hisiweke';

  @override
  String get workout_empty => 'Ku hava ti workouts leti logged namuntlha';

  @override
  String get workout_save_success =>
      'Ku titoloveta ku hlayisiwile hi ndlela leyi humelelaka!';

  @override
  String get workout_type => 'Muxaka wa ku Titoloveta';

  @override
  String get workout_notes => 'Tinhlamuselo & Switsundzuxo';

  @override
  String get health_overview_title => 'Rihanyo & Swilo swa nkoka';

  @override
  String get health_heart_rate => 'Ku Ba ka Mbilu';

  @override
  String get health_blood_oxygen => 'Okisijini ya Ngati (SpO2) .';

  @override
  String get health_blood_pressure => 'Ntshikelelo wa Ngati';

  @override
  String get health_blood_glucose => 'Glucose ya Ngati';

  @override
  String get health_body_temperature => 'Ku Hisisa ka Miri';

  @override
  String get health_sleep_tracking => 'Ku Landzelerisa Vurhongo';

  @override
  String get health_weight_tracking => 'Ndzilo & Xivumbeko xa Miri';

  @override
  String get health_waist_hip => 'Xiringaniso xa le matsolweni na xirhendze';

  @override
  String get health_devices_hub => 'Switirhisiwa & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Data ya Rihanyo';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Ku hetelela ku fambisana: $time';
  }

  @override
  String get health_manual_entry => 'Ku Nghena ka Rihanyo hi voko';

  @override
  String get health_metric_detail => 'Vuxokoxoko bya Metric';

  @override
  String get health_connected_sensors =>
      'Switwi swa Rihanyo leswi Hlanganisiweke';

  @override
  String get plan_title => 'Pulani ya Siku na Siku';

  @override
  String get plan_weekly_title => 'Pulani ya Vuhlayiseki bya Vhiki na Vhiki';

  @override
  String get plan_calorie_target => 'Xikongomiso xa Khalori';

  @override
  String get plan_water_target => 'Xikongomelo xa Hydration';

  @override
  String get plan_step_target => 'Goza Xikongomiso';

  @override
  String get plan_sleep_target => 'Xikongomiso xa Vurhongo';

  @override
  String get plan_meal_suggestions => 'Swiringanyeto Swa Swakudya';

  @override
  String get plan_healthy_habits => 'Mikhuva & Switsundzuxo swa Rihanyo';

  @override
  String get plan_coach_advice => 'Switsundzuxo swa Muleteri wa Bloomi AI';

  @override
  String get plan_generated_title =>
      'Xiyimiso xa Siku na Siku lexi endleriweke Munhu';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Hlela Profayile';

  @override
  String get profile_name => 'Vito';

  @override
  String get profile_age => 'Malembe';

  @override
  String get profile_gender => 'Rimbewu';

  @override
  String get profile_height => 'Ku leha';

  @override
  String get profile_weight => 'Ndzilo wa ntiko';

  @override
  String get profile_goal => 'Pakani Leyikulu';

  @override
  String get profile_activity_level => 'Xiyimo xa Ntirho';

  @override
  String get profile_stats => 'Switatimende swa Mina swa Vuhlayiseki';

  @override
  String get profile_saved =>
      'Profile yi pfuxetiwile hi ndlela leyi humelelaka';

  @override
  String get profile_bmi => 'Xikombiso xa Vukulu bya Miri (BMI) .';

  @override
  String get profile_membership => 'Vuxirho';

  @override
  String get settings => 'Switirhisiwa';

  @override
  String get preferences_habits => 'SWIVUMBEKO & MIKHONGELO';

  @override
  String get appearance_theme => 'Ku languteka & Nhlokomhaka';

  @override
  String get appearance_theme_sub =>
      'Munyama, Ku Vonakala, Mode ya Sisiteme & Swihlawulekisi swa Ndzandzelelano wa App';

  @override
  String get permissions => 'Mpfumelelo & Mfikelelo wa Sisiteme';

  @override
  String get permissions_sub =>
      'Health Connect, Switwi swa Magoza, GPS, Switiviso & Khamera';

  @override
  String get reminders_notifications => 'Switsundzuxo & Switiviso';

  @override
  String get reminders_sub =>
      'Minkarhi ya swakudya, mati, ku nghena ka ntiko & switsundzuxo swa nkarhi wo etlela';

  @override
  String get units_of_measurement => 'Tiyuniti ta ku Pima';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) kumbe Imperial (lbs, ft/in, fl oz) .';

  @override
  String get app_language => 'Ririmi ra App';

  @override
  String get language_sub =>
      'Xinghezi, हिन्दी (Xihindi), Xinghezi & 195+ tindzimi ta misava hinkwayo';

  @override
  String get home_screen_widgets => 'Switirhisiwa swa Xikirini xa le Kaya';

  @override
  String get widgets_sub =>
      'Switirhisiwa swa Android leswi hanyaka: Hub, Magoza, Mati, Swakudya & Mascot';

  @override
  String get wear_os_watch_app => 'Ambala OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch companion, ti tiles, swiphiqo & swilo swa nkoka leswi hanyaka';

  @override
  String get goals_wellness => 'TIPAKO & VUTLHOKOVETSERI BYA VUHLAYISEKI';

  @override
  String get nutrition_targets => 'Swikongomiso swa Swakudya & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Xikongomiso xa tikhalori, tiphrotheyini, tikhabohaydreti, mafurha & pakani ya mati';

  @override
  String get weekly_recap => 'Recap ya Vuhlayiseki bya Vhiki na Vhiki';

  @override
  String get weekly_recap_sub =>
      '7-day calorie average, macro ratio & siku lerinene';

  @override
  String get streaks_milestones => 'Streaks & Swiendlakalo swa nkoka';

  @override
  String get streaks_sub => 'Active blossom streaks, tibeji & ku humelela';

  @override
  String get connected_devices => 'SWILO SWI HLANGANILE & ECOSYSTEM';

  @override
  String get devices_hub => 'Switirhisiwa & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Xihlanganisi xa Rihanyo, Xihlambanyo xa Galaxy, Xihlambanyo xa Pixel, Garmin';

  @override
  String get surroundings_weather => 'Ndhawu leyi nga ekusuhi & Maxelo';

  @override
  String get surroundings_sub =>
      'Khwalithi ya moya (AQI), UV index & switsundzuxo swa hydration ya maxelo';

  @override
  String get bloomi_pro => 'Xikhokhelo xa Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 switirhisiwa swa xikirini xa le kaya & ku landzelerisa swilo swa nkoka';

  @override
  String get about_security => 'MAYELANA & VUHLAYISEKI';

  @override
  String get about_bloomi => 'Malunghana na Bloomi';

  @override
  String get about_bloomi_sub =>
      'Ku aka swihlawulekisi, vuhundzuluxeri, swihlawulekisi';

  @override
  String get privacy_policy => 'Pholisi ya Vuhlayiseki bya Swihundla';

  @override
  String get privacy_policy_sub =>
      'Offline-ku sungula, eka xitirhisiwa xa data architecture';

  @override
  String get terms_conditions => 'Mimpimanyeto na Swipimelo';

  @override
  String get terms_conditions_sub =>
      'Mimpimanyeto ya vukorhokeri na swiletelo swa vuhlayiseki';

  @override
  String get delete_account => 'Susa akhawunti & Data';

  @override
  String get delete_account_sub =>
      'Hi ndlela leyi nga hundzukiki sula datha ya SQLite ya laha kaya na ti-backup ta le mapapa';

  @override
  String get healthy_habits =>
      'Aka mikhuva yo olova, leyi nga heriki ya vuhlayiseki';

  @override
  String get all_logs => 'Data & Tilog ta mina leti Landzeleriweke';

  @override
  String get search_language =>
      'Ku lavisisa hi ririmi kumbe tsalwa ra rixaka...';

  @override
  String get languages_available => 'Tindzimi Leti Nga Kona';

  @override
  String get no_matching_languages =>
      'Ku hava tindzimi leti fambelanaka leti kumiweke';

  @override
  String get try_searching =>
      'Ringeta ku lavisisa hi matsalelo ya rixaka kumbe mapeletelo ya Xinghezi';

  @override
  String get partially_translated => 'Xiphemu xin’wana xi hundzuluxeriwe';

  @override
  String get complete_translation => 'Ku hetiseka';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ririmi ri vekiwile eka $name ( $nativeName ) .';
  }

  @override
  String get surroundings_title => 'Ndhawu leyi nga ekusuhi & Ntivo-mbango';

  @override
  String get surroundings_aqi => 'Xikombiso xa Khwalithi ya Moya';

  @override
  String get surroundings_uv => 'Xikombiso xa UV';

  @override
  String get surroundings_temp => 'Ku hisa ka misava';

  @override
  String get surroundings_humidity => 'Ku kufumela';

  @override
  String get surroundings_hydration_advice =>
      'Tshama u ri na mati lamanene eka swiyimo swa maxelo swa sweswi.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Ku Lavisisa Swakudya';

  @override
  String get food_quick_barcode => 'Skena Barcode 👑';

  @override
  String get food_quick_water => 'Engeta Mati';

  @override
  String get food_quick_custom => 'Swakudya swa Custom';

  @override
  String get surroundings_good => 'Swi kahle';

  @override
  String get surroundings_moderate => 'Ku ringanela';

  @override
  String get surroundings_unhealthy => 'A swi nga ri na rihanyo';

  @override
  String get notifications_title => 'Switiviso & Switsundzuxo';

  @override
  String get notifications_empty => 'Ku hava switiviso leswintshwa';

  @override
  String get notifications_mark_read => 'Maka Hinkwaswo tanihi leswi Hlayaka';

  @override
  String get notifications_clear => 'Hlawula Hinkwaswo';

  @override
  String get reminders => 'Switirhisiwa swa Xitsundzuxo';

  @override
  String get notifications => 'Switiviso';

  @override
  String get reminders_breakfast_title =>
      'Xitsundzuxo xa swakudya swa nimixo 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Mixo lowunene! Nkarhi wa swakudya swa nimixo leswi nga ni rihanyo eka $time .';
  }

  @override
  String get reminders_lunch_title =>
      'Xitsundzuxo xa swakudya swa ninhlikanhi 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Yimanyana u tiphina hi swakudya swa ninhlikanhi leswi ringaniseriweke, leswi nga ni mianakanyo eka $time .';
  }

  @override
  String get reminders_dinner_title =>
      'Xitsundzuxo xa swakudya swa nimadyambu 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Nkarhi wa swakudya swa nimadyambu swo olova, leswi enerisaka eka $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Nkarhi wo nwa nghilazi ya mati yo tenga! ( $time ) .';
  }

  @override
  String get reminders_weight_title => 'Ku pima ka vhiki na vhiki ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Landzelela timetriki ta wena ta miri wa vhiki na vhiki eka Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Nkarhi wo etlela Moya-ehansi 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Pfuxeta u tilulamisela vurhongo byo wisa ( $time ).';
  }

  @override
  String get onboard_welcome => 'Mi amukeriwile eka Bloomi';

  @override
  String get onboard_sub =>
      'Munghana wa wena wa xinghana, wa le handle ka inthanete-ku sungula wa rihanyo na swakudya.';

  @override
  String get onboard_get_started => 'Sungula';

  @override
  String get onboard_sign_in => 'Nghena eka';

  @override
  String get onboard_skip => 'Tlula';

  @override
  String get onboard_choose_goal =>
      'Hi yihi pakani ya wena leyikulu ya vuhlayiseki?';

  @override
  String get onboard_goal_weight_loss => 'Ku hunguta Miri hi ku olova';

  @override
  String get onboard_goal_muscle => 'Ku Vuyeriwa ka Misiha & Matimba';

  @override
  String get onboard_goal_energy => 'Eneji ya Siku na Siku & Vitality';

  @override
  String get onboard_goal_habits => 'Ku Dya Hi Miehleketo Hi Rihanyo';

  @override
  String get onboard_about_you => 'Hi Byele Hi Wena';

  @override
  String get onboard_lifestyle => 'Xiyimiso Xa Wena Xa Siku Na Siku';

  @override
  String get onboard_permissions_title => 'Mpfumelelo & Mfikelelo wa Sisiteme';

  @override
  String get onboard_permissions_sub =>
      'Nyika mfikelelo eka magoza yo fambisana, ku titoloveta, na switsundzuxo.';

  @override
  String get onboard_plan_ready_title =>
      'Pulani ya wena ya Custom yi Lunghekile!';

  @override
  String get onboard_plan_ready_sub =>
      'Hi endle mepe wa ndlela wo olova, lowu endleriweke wena ntsena wa swakudya na vuhlayiseki.';

  @override
  String get onboard_enter_bloomi => 'Nghena eka Bloomi';

  @override
  String get insights_weekly_report =>
      'Recap ya Vuhlayiseki bya Vhiki na Vhiki';

  @override
  String insights_best_day(Object day) {
    return 'Siku ra ku nga cinci lokunene: $day .';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Swiendlakalo swa nkoka';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ku pfuriwile eka $date .';
  }

  @override
  String get insights_keep_going =>
      'Yana emahlweni u endla nhluvuko lowu hlamarisaka!';

  @override
  String get widgets_title => 'Switirhisiwa swa Xikirini xa le Kaya';

  @override
  String widgets_active_count(Object count) {
    return 'Switirhisiwa leswi tirhaka: $count .';
  }

  @override
  String get widgets_hub_title => 'Bloomi Ndzawulo ya Vuhlayiseki bya Rihanyo';

  @override
  String get widgets_steps_title => 'Magoza & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Mukulobye';

  @override
  String get wear_os_title => 'Ambala Smartwatch ya OS';

  @override
  String get wear_os_connected => 'Ku hlanganisiwa na Watch';

  @override
  String get wear_os_sync => 'Sync Data ya Watch';

  @override
  String get theme_title => 'Ku languteka & Nhlokomhaka';

  @override
  String get theme_mode => 'Mode ya Nhlokomhaka';

  @override
  String get theme_light => 'Ku vonakala';

  @override
  String get theme_dark => 'Munyama';

  @override
  String get theme_system => 'Xiyimiso xa Sisiteme';

  @override
  String get theme_background_palette => 'Phalete ya le ndzhaku';

  @override
  String get units_title => 'Tiyuniti ta ku Pima';

  @override
  String get units_metric => 'Metric (kg, cm, ml) .';

  @override
  String get units_imperial => 'Imperial (lbs, eka, fl oz) .';

  @override
  String get home_unable_load => 'A swi koteki ku layicha dashboard';

  @override
  String get home_health_permission_req =>
      'Mpfumelelo wa Health Connect Wa Laveka';

  @override
  String get home_health_permission_desc =>
      'Bloomi yi lava mpfumelelo wa Health Connect ku koka magoza ya xiviri, ku ba ka mbilu, na ku fambisana na switirhisiwa swa le kaya ra tiselfoni hi nkarhi wa xiviri.';

  @override
  String get home_allow_health => 'Pfumelela Ku Hlanganisa Rihanyo';

  @override
  String get home_ready_mindful_day =>
      'Xana u lunghekele siku leri nga ni mianakanyo? ✨';

  @override
  String get home_quick_add => 'Quick Add';

  @override
  String get home_live_gps => 'GPS leyi hanyaka';

  @override
  String get home_calories_remaining_label => 'TIKHOLORI TA SALA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ku dyiwa: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Pompi ya Water Tracker 💧';

  @override
  String get home_water_goal_reached =>
      'Pakani ya siku na siku yi fikeleriwile 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ku ya eka pakani ya siku na siku';
  }

  @override
  String get home_details => 'Vuxokoxoko';

  @override
  String get home_upgrade_plan_desc =>
      'Hluvukisa ku pfula swikongomelo swa siku na siku leswi endleriweke munhu hi xiyexe & pulani ya AI';

  @override
  String get home_unlock => 'Pfula 👑';

  @override
  String get home_quick_log_hint =>
      'Hi ku hatlisa rhekhoda ku nghena ka vuhlayiseki';

  @override
  String get food_serving_size => 'Vukulu bya ku Phamela';

  @override
  String get food_serving_grams => 'Ku tirhela (g) .';

  @override
  String get food_number_servings => 'Nhlayo ya Switirhisiwa';

  @override
  String get food_calories_per_serving => 'Tikhilojulu hi xiphemu xin’we';

  @override
  String get food_recipe_ingredients => 'Swilo leswi tirhisiwaka';

  @override
  String get food_recipe_add_ingredient => 'Engetelani Xiaki';

  @override
  String get food_recipe_directions => 'Swiletelo & Tinhlamuselo';

  @override
  String get food_recipe_total => 'Total Recipe Swakudya swa swakudya';

  @override
  String get food_recipe_per_serving => 'Hi Ku Phamela Swakudya';

  @override
  String get food_recipe_saved_toast =>
      'Swakudya swa ntolovelo swi hlayisiwile hi ndlela leyi humelelaka!';

  @override
  String get food_barcode_found => 'Xiendliwa Xi Kumekile!';

  @override
  String get food_barcode_not_found_desc =>
      'A hi swi kotanga ku kuma barkhodi leyi eka database leyi pfulekeke. U nga yi engetela tanihi swakudya swa ntolovelo.';

  @override
  String get food_add_custom_btn => 'Engetela Swakudya swa Custom';

  @override
  String get food_scan_again => 'Scan Nakambe';

  @override
  String get food_review_items => 'Kambisisa Swakudya Leswi Kumiweke';

  @override
  String get food_review_hint =>
      'Lulamisa nhlayo kutani u susa nchumu wihi na wihi lowu nga tiviwiki';

  @override
  String get food_log_selected => 'Log Swakudya Leswi Hlawuriweke';

  @override
  String get food_favourites_title => 'Swakudya Leswi Rhandziwaka';

  @override
  String get food_recent_title => 'Swakudya Swa Sweswinyana';

  @override
  String get food_no_favourites =>
      'Ku hava swakudya leswi rhandzekaka ku fikela sweswi. Khoma mbilu eka swakudya swihi na swihi ku hlayisa laha.';

  @override
  String get food_no_recents =>
      'Ku hava swakudya leswi tsemiweke sweswinyana leswi kumiweke.';

  @override
  String get food_nutrition_details_title =>
      'Vuxokoxoko bya Swakudya swa Siku na Siku';

  @override
  String get food_macro_protein_label => 'Ku Pfuxetiwa Ka Tiproteyini';

  @override
  String get food_macro_carbs_label => 'Ku tshoveka ka tikhabohaydreti';

  @override
  String get food_macro_fat_label => 'Ku Pfuxetiwa ka Mafurha';

  @override
  String get food_macro_fiber_label => 'Ku tshoveka ka Fibre';

  @override
  String get food_daily_target_comparison => 'Ku pimanisiwa ka Swikongomiso';

  @override
  String food_target_label(Object target) {
    return 'Xikongomelo: $target .';
  }

  @override
  String get food_edit_entry => 'Hlela Nyingiso wa Diary';

  @override
  String get food_delete_entry => 'Susa Nyingiso';

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
  String get water_intake_history => 'Swihlahla swa Mati swa Namuntlha';

  @override
  String get water_no_logs_today =>
      'Ku hava mati lama tsemiweke ku fikela namuntlha. Hydrate u tlhela u khoma button yo engetela hi ku hatlisa!';

  @override
  String get water_adjust_goal => 'Lulamisa Pakani ya Siku na Siku';

  @override
  String get health_connect_banner => 'Ku hlanganisiwa na Health Connect';

  @override
  String get health_vitals_summary =>
      'Swilo swa nkoka swa Rihanyo ra Siku na Siku';

  @override
  String get health_latest_heart_rate => 'Ku Ba ka Mbilu ka Sweswinyana';

  @override
  String get health_latest_bp => 'Ntshikelelo wa Ngati';

  @override
  String get health_latest_spo2 => 'Okisijini ya Ngati';

  @override
  String get health_latest_glucose => 'Glucose ya Ngati';

  @override
  String get health_latest_weight => 'Ndzilo wa ntiko';

  @override
  String get health_latest_sleep => 'Nkarhi Wa Vurhongo';

  @override
  String get health_add_manual => 'Engetelani Ku pima hi voko';

  @override
  String get health_history_trends => 'Mikhuva ya Matimu';

  @override
  String get health_sync_success =>
      'Data ya rihanyo yi hlanganisiwile hi ndlela leyi humelelaka!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours tiawara $mins timinete';
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
    return '$pct % .';
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
  String get health_devices_title =>
      'Switirhisiwa leswi Hlanganisiweke & Swiambalo';

  @override
  String get health_devices_desc =>
      'Lawula ti-smartwatch leti hlanganisiweke hi ti-pair, swilandzelerisi swa ku ringanela, na switwi swa rihanyo.';

  @override
  String get health_workout_editor_title => 'Hlela Ku Titoloveta';

  @override
  String get health_workout_name_label => 'Vito ra ku Titoloveta';

  @override
  String get health_workout_duration_label => 'Nkarhi (timinete) .';

  @override
  String get health_workout_calories_label =>
      'Tikhilojulu leti ringanyetiweke (kcal) .';

  @override
  String get health_workout_date_label => 'Siku na Nkarhi';

  @override
  String get plan_daily_wellness_roadmap =>
      'Mepe wa Wena wa Ndlela lowu endleriweke Munhu';

  @override
  String get plan_morning_routine => 'Xiyimiso Xa Mixo';

  @override
  String get plan_afternoon_routine => 'Vuhlayiseki bya ninhlikanhi';

  @override
  String get plan_evening_routine => 'Madyambu Moya-Ehansi';

  @override
  String get plan_coach_badge => 'Muleteri wa Bloomi AI';

  @override
  String get plan_weekly_overview =>
      'Ku kongomisa eka Vuhlayiseki bya Masiku ya 7';

  @override
  String get plan_targets_title => 'Swikongomelo & Tipakani ta Vuhlayiseki';

  @override
  String get plan_calorie_budget_label =>
      'Mpimanyeto wa Tikhalori ta Siku na Siku';

  @override
  String get plan_water_budget_label => 'Xikongomiso xa Mati xa Siku na Siku';

  @override
  String get plan_step_budget_label => 'Pakani ya Goza ra Siku na Siku';

  @override
  String get plan_macro_split_label => 'Nhlayo ya swakudya leswikulu';

  @override
  String get profile_personal_details => 'Vuxokoxoko bya Munhu';

  @override
  String get profile_body_stats => 'Mimpimo Ya Miri';

  @override
  String get profile_app_preferences => 'Swihlawulekisi & Switirhisiwa swa App';

  @override
  String get profile_edit_name_hint => 'Vito ra wena';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ku leha ( $unit ) .';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ndzilo ( $unit ) .';
  }

  @override
  String get profile_edit_age_hint => 'Malembe';

  @override
  String get profile_gender_male => 'Wa xinuna';

  @override
  String get profile_gender_female => 'Wa xisati';

  @override
  String get profile_gender_other => 'Swin\'wana / Swi tsakela ku nga vuli';

  @override
  String get profile_activity_sedentary =>
      'Ku tshama ehansi (Ku endla vutiolori switsongo ku ya eka ku nga endli vutiolori) .';

  @override
  String get profile_activity_light =>
      'Ku tirha hi ku olova (1-3 wa masiku/vhiki) .';

  @override
  String get profile_activity_moderate =>
      'Ku tirha hi xiringaniso (3-5 wa masiku/vhiki) .';

  @override
  String get profile_activity_very => 'Swi tirha swinene (6-7 wa masiku/vhiki)';

  @override
  String get settings_wear_os_header => 'Ambala OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Nghenisa tile ya Bloomi na xiphiqo eka wachi ya wena ya Wear OS ku languta tikhilojulu, mati, na magoza.';

  @override
  String get settings_widgets_header =>
      'Switirhisiwa swa Android leswi tirhisanaka';

  @override
  String get settings_widgets_desc =>
      'Pin switirhisiwa swa nkarhi wa xiviri eka xikirini xa le kaya xa xitirhisiwa xa wena leswaku u kuma ku pfuxetiwa ka xihatla.';

  @override
  String get settings_about_header => 'Malunghana na Bloomi';

  @override
  String get settings_about_version => 'Vuhundzuluxeri bya 1.0.0';

  @override
  String get settings_about_build => 'Aka 100';

  @override
  String get settings_about_credits =>
      'Yi endliwe hi vukheta leswaku yi hanya hi mianakanyo, leyi hanyeke kahle.';

  @override
  String get settings_terms_header => 'Mimpimanyeto na Swipimelo';

  @override
  String get settings_privacy_header => 'Pholisi ya Vuhlayiseki bya Swihundla';

  @override
  String get settings_delete_header => 'Susa akhawunti & Data';

  @override
  String get settings_delete_warning =>
      'Xiendlo lexi a xi nge tlheriseriwi endzhaku. Swakudya swa wena hinkwaswo, ku titoloveta, swilo swa nkoka ni xivumbeko xa wena swi ta susiwa hilaha ku nga heriki.';

  @override
  String get settings_delete_confirm_btn => 'Susa hi laha ku nga heriki';

  @override
  String get onboard_welcome_headline => 'Mi amukeriwile eka Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Ku landzelerisa ka vuhlayiseki byo olova, hi miehleketo loku endleriweke ku rhendzela vutomi bya wena.';

  @override
  String get onboard_step_about => 'Malunghana na Wena';

  @override
  String get onboard_step_goals => 'Tipakani ta Wena';

  @override
  String get onboard_step_lifestyle => 'Mikhuva ya Siku na Siku';

  @override
  String get onboard_step_permissions => 'Mpfumelelo';

  @override
  String get onboard_step_plan => 'Swi lunghekile!';

  @override
  String get onboard_health_connect_perm =>
      'Mfikelelo wa Vuhlanganisi bya Rihanyo';

  @override
  String get onboard_step_sensors_perm => 'Sensor ya Xibalo xa Goza';

  @override
  String get onboard_notif_perm => 'Switsundzuxo & Switiviso swa Miehleketo';

  @override
  String get onboard_camera_perm => 'Khamera (Barcode & Xikeni xa Swakudya) .';

  @override
  String get onboard_grant_permissions => 'Nyika Mpfumelelo';

  @override
  String get onboard_continue_dashboard => 'Pfula Dashboard';

  @override
  String get notif_channel_hydration_name => 'Swikhomela-ndhawu swa Hydration';

  @override
  String get notif_channel_hydration_desc =>
      'Switsundzuxo swa mati yo olova siku hinkwaro';

  @override
  String get notif_channel_nutrition_name =>
      'Switsundzuxo swa Swakudya & Swakudya';

  @override
  String get notif_channel_nutrition_desc =>
      'Switsundzuxo swa xitsundzuxo xa swakudya swa nimixo, swa ninhlikanhi ni swa nimadyambu';

  @override
  String get notif_channel_steps_name => 'Swiendlakalo swa nkoka swa magoza';

  @override
  String get notif_channel_steps_desc =>
      'Minkhuvo loko u fikelela swikongomelo swa magoza ya siku na siku';

  @override
  String get notif_channel_vitals_name =>
      'Ku Kamberiwa ka Rihanyo & Swilo swa Nkoka';

  @override
  String get notif_channel_vitals_desc =>
      'Switsundzuxo swa ku hunguta ku tika na ku etlela';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Ku etlela 15m';

  @override
  String get notif_action_log_meal => '🥗 Swakudya swa Log';

  @override
  String get language => 'Ririmi';

  @override
  String get share => 'Avelana';

  @override
  String common_days(Object count) {
    return '$count d leyi hundzeke';
  }
}
