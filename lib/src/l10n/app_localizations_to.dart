// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tonga (`to`).
class AppLocalizationsTo extends AppLocalizations {
  AppLocalizationsTo([String locale = 'to']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => '\'Api';

  @override
  String get nav_today => 'Ko e \'aho ni';

  @override
  String get nav_plan => 'Palani';

  @override
  String get nav_food => 'Meʻakai';

  @override
  String get nav_food_diary => 'Tohi Tohi Meʻakai';

  @override
  String get nav_workout => 'Tohi Fakamalohisino';

  @override
  String get nav_health => 'Mo\'ui Lelei';

  @override
  String get nav_profile => 'Fakamatala';

  @override
  String get save => 'Fakahaofi';

  @override
  String get cancel => 'Kaniseli';

  @override
  String get delete => 'Tamateʻi';

  @override
  String get edit => 'Fakatonutonu';

  @override
  String get done => 'Osi';

  @override
  String get close => 'Tāpuni';

  @override
  String get back => 'Foki';

  @override
  String get next => 'Hoko';

  @override
  String get continue_btn => 'Hokohoko atu';

  @override
  String get confirm => 'Fakapapau\'i';

  @override
  String get search => 'Fekumi';

  @override
  String get filter => 'Sivi';

  @override
  String get all => 'Katoa';

  @override
  String get active => 'Ngaue';

  @override
  String get today => 'Ko e \'aho ni';

  @override
  String get yesterday => '\'Aneafi';

  @override
  String get tomorrow => '\'Apongipongi';

  @override
  String get add => 'Tānaki';

  @override
  String get remove => 'Toʻo';

  @override
  String get refresh => 'Fakafo\'ou';

  @override
  String get retry => 'Toe feinga';

  @override
  String get error => 'Hala';

  @override
  String get success => 'Lavame\'a';

  @override
  String get loading => 'Uta...';

  @override
  String get no_data => '\'Oku \'ikai ha fakamatala \'e ma\'u';

  @override
  String get offline => 'Mode \'Offline';

  @override
  String get offline_sub =>
      '\'E sync \'a e ngaahi liliu \'i he taimi \'e toe fehokotaki ai';

  @override
  String get undo => 'Fakafoki';

  @override
  String get portion => 'Konga';

  @override
  String get quantity => 'Lahi';

  @override
  String get unit => 'ʻIuniti';

  @override
  String get clear => 'Mahino';

  @override
  String get select => 'Fili';

  @override
  String get apply => 'Fakaʻaongaʻi';

  @override
  String get reset => 'Toe fakafoki';

  @override
  String get ok => 'Sai';

  @override
  String get yes => 'ʻIo';

  @override
  String get no => 'ʻIkai';

  @override
  String get optional => 'Fili';

  @override
  String get calories => 'Kaloli';

  @override
  String get protein => 'Polotini';

  @override
  String get carbs => 'Kapi';

  @override
  String get fat => 'Ngako';

  @override
  String get fiber => 'Fio';

  @override
  String get water => 'Vai';

  @override
  String get steps => 'Ngaahi sitepu';

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
  String get inches => 'ʻi he';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'houa';

  @override
  String get minutes => 'miniti';

  @override
  String get serving => 'Ngāue';

  @override
  String get servings => 'Ngaahi sevesi';

  @override
  String get serving_size => 'Lahi ʻo e Sevesi';

  @override
  String get per_100g => 'ki he 100g';

  @override
  String get india => 'ʻInitia';

  @override
  String get asia => 'ʻĒsia';

  @override
  String get europe => 'ʻIulope';

  @override
  String get middle_east => 'Hahake Lotoloto';

  @override
  String get africa => 'ʻAfilika';

  @override
  String get americas => 'ʻAmelika';

  @override
  String get home_title => '\'Api';

  @override
  String get home_greeting_morning => 'Pongipongi lelei';

  @override
  String get home_greeting_afternoon => 'Malo e lelei';

  @override
  String get home_greeting_evening => 'Efiafi lelei';

  @override
  String get home_streak_title => 'Streak \'o e matala\'i\'akau';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count \'aho hokohoko',
      one: '\'aho \'e 1 hokohoko',
      zero: '0 \'aho hokohoko',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Vela';

  @override
  String get home_calories_budget => 'Patiseti Kaloli';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal \'oku toe';
  }

  @override
  String get home_water_title => 'Faka\'aho \'a e Vai';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Sitepu Lue';

  @override
  String get home_quick_actions => 'Ngaahi Ngaue Vave';

  @override
  String get home_log_meal => 'Meʻakai ʻAkau';

  @override
  String get home_log_water => 'Vai Log';

  @override
  String get home_log_workout => 'Fakamālohisino Log';

  @override
  String get home_log_weight => 'Mamafa \'o e \'akau';

  @override
  String get home_insights_title => 'Ngaahi Fakakaukau \'o e \'Aho ni';

  @override
  String get home_quote =>
      'ʻOku fakatupu ʻe he fanga kiʻi fili moʻui leleí ha ngaahi liliu ʻoku fisifisimuʻa.';

  @override
  String get home_ai_coach_tip => 'Faiako Bloomi AI';

  @override
  String get home_surroundings => 'Ngaahi \'Atakai & \'Ea';

  @override
  String get home_notifications => 'Ngaahi Fakatokanga';

  @override
  String get home_daily_score => 'Maaka Faka\'aho \'o e Mo\'ui Lelei';

  @override
  String get home_view_all => 'Vakai kotoa';

  @override
  String get food_diary_title => 'Tohi Tohi Meʻakai';

  @override
  String get food_breakfast => 'Kai pongipongi';

  @override
  String get food_lunch => 'Kai hoʻatā';

  @override
  String get food_dinner => 'Kai efiafi';

  @override
  String get food_snacks => 'Me\'atokoni ma\'ama\'a';

  @override
  String get food_add_food => 'Tānaki Meʻakai';

  @override
  String get food_edit_food => 'Fakatonutonu Me\'akai';

  @override
  String get food_add_breakfast => 'Tānaki atu ʻa e Kai Pongipongi';

  @override
  String get food_add_lunch => 'Tānaki atu ki he Kai Hoʻatā';

  @override
  String get food_add_dinner => 'Tānaki atu ʻa e Kai Efiafí';

  @override
  String get food_add_snack => 'Tānaki atu ha meʻatokoni maʻamaʻa';

  @override
  String get food_total_calories => 'Fakakatoa \'o e Kaloli';

  @override
  String get food_empty_meal =>
      '\'Oku te\'eki ke \'iai ha me\'akai kuo logged ki he me\'atokoni ko \'eni';

  @override
  String get food_empty_diary => '\'Ikai ha me\'akai \'oku log ki he \'aho ni';

  @override
  String get food_log_first_meal =>
      'Lomiʻi + ke log hoʻo fuofua meʻakai fakafiefia .';

  @override
  String get food_quick_add => 'Tānaki vave';

  @override
  String get food_search_hint =>
      'Fekumi ki he ngaahi ipu, fua\'i\'akau, dal, roti...';

  @override
  String get food_custom_recipe => 'Me\'akai & Founga ngaohi \'o e me\'akai';

  @override
  String get food_scan_barcode => 'Sikani Pakouti';

  @override
  String get food_camera_scan => 'AI Sikani Me\'akai';

  @override
  String get food_recent => 'Ngaahi Meʻakai Kimuí ni mai';

  @override
  String get food_favourites => 'Ngaahi manakoa';

  @override
  String get food_macro_summary => 'Fakamovetevete \'o e me\'akai lahi';

  @override
  String get food_delete_meal_confirm =>
      '\'Oku ke fakapapau\'i \'oku ke fie to\'o \'a e me\'a ko \'eni?';

  @override
  String get food_item_deleted => 'Kuo to\'o \'a e me\'akai';

  @override
  String get food_remaining => 'toenga';

  @override
  String get food_consumed => 'kuo fakamoleki';

  @override
  String food_of_target(Object target) {
    return '\'o e $target kikalo';
  }

  @override
  String get foodSearch_title => 'Fekumi ki he ngaahi meʻakai';

  @override
  String get foodSearch_scan_barcode => 'Sikani Pakouti';

  @override
  String get foodSearch_take_photo => 'Snap \'Ata \'o e Me\'akai';

  @override
  String get foodSearch_custom_food => 'Fa\'u ha me\'akai fakafo\'ituitui';

  @override
  String get foodSearch_recent_searches => 'Ngaahi Fekumi kimuí ni mai';

  @override
  String get foodSearch_popular => 'Ngaahi Meʻakai Manakoa';

  @override
  String get foodSearch_no_results =>
      '\'Ikai ha me\'akai \'oku fe\'unga mo ho\'o fekumi';

  @override
  String get barcode_title => 'Sikani Pakouti';

  @override
  String get barcode_align =>
      'Fakatonutonu \'a e barcode \'i loto \'i he fakava\'e \'o e me\'a-faka\'ata';

  @override
  String get barcode_not_found => 'Koloa \'oku \'ikai ke ma\'u \'i he database';

  @override
  String get barcode_premium_feature =>
      '\'Oku ma\'u \'a e sikani \'o e Barcode \'i he Bloomi Pro .';

  @override
  String get camera_title => 'AI Sikani Me\'akai';

  @override
  String get camera_tap_hint => 'To\'o ha \'ata mahino \'o ho\'o ipu .';

  @override
  String get camera_analysing => '\'Analaiso \'o e peleti me\'akai...';

  @override
  String get camera_detected => 'Ngaahi me\'a kuo \'ilo\'i';

  @override
  String get camera_flash => 'Fetongi ʻa e Flash';

  @override
  String get camera_retake => 'Toe To\'o \'a e \'Ata';

  @override
  String get camera_confirm_food => 'Fakapapauʻi ʻa e Ngaahi Meʻá';

  @override
  String get customFood_title => 'Me\'akai & Founga ngaohi \'o e me\'akai';

  @override
  String get customFood_name_hint => 'Hingoa ʻo e ipu pe meʻakai';

  @override
  String get customFood_calories_hint => 'Kaloli (kcal)';

  @override
  String get customFood_protein_hint => 'Polotini (g)';

  @override
  String get customFood_carbs_hint => 'Kapo (g)';

  @override
  String get customFood_fat_hint => 'Ngako (g)';

  @override
  String get customFood_save => 'Tauhi e Founga Ngaohi';

  @override
  String get water_tracker_title => 'Muimui Vai';

  @override
  String get water_daily_target => 'Taumu\'a Faka\'aho \'o e Hydration';

  @override
  String get water_logged_today => 'Logged he \'aho ni';

  @override
  String get water_add_glass => '+250 ml Sio\'ata';

  @override
  String get water_add_bottle => '+500 ml hina';

  @override
  String get water_custom_amount => 'Lahi Faka-Kasitomu';

  @override
  String get water_reminder_tip =>
      'Inu maʻu pē ʻa e vaí ʻi he ʻahó kotoa ki ha ivi tuʻumaʻu.';

  @override
  String water_logged_toast(Object amount) {
    return 'Na\'e faka\'ilonga\'i $amount ml \'o e vai 💧 .';
  }

  @override
  String get workout_title => 'Tohi Fakamalohisino';

  @override
  String get workout_add_exercise => 'Tānaki atu ʻa e fakamalohisino';

  @override
  String get workout_cardio => 'Katio';

  @override
  String get workout_strength => 'Mālohi .';

  @override
  String get workout_yoga => 'Yoga & Fe\'unu\'aki';

  @override
  String get workout_duration => 'Loloa';

  @override
  String get workout_intensity => 'Mālohi';

  @override
  String get workout_calories_burned => 'Kaloli vela';

  @override
  String get workout_empty =>
      '\'Ikai ha ngaahi fakamalohisino kuo \'osi \'i he \'aho ni';

  @override
  String get workout_save_success => 'Workout fakahaofi lavame\'a!';

  @override
  String get workout_type => 'Fa\'ahinga fakamalohisino';

  @override
  String get workout_notes => 'Ngaahi Nouti & Fakakaukau';

  @override
  String get health_overview_title => 'Mo\'ui Lelei & Ngaahi Me\'a Mahu\'inga';

  @override
  String get health_heart_rate => 'Tu\'unga \'o e Loto';

  @override
  String get health_blood_oxygen => 'ʻOkisiseni ʻi he Totó (SpO2)';

  @override
  String get health_blood_pressure => 'Toto Māʻolunga';

  @override
  String get health_blood_glucose => 'Kulukose ʻi he Totó';

  @override
  String get health_body_temperature => 'Mafana \'o e Sino';

  @override
  String get health_sleep_tracking => 'Muimui\'i \'o e mohe';

  @override
  String get health_weight_tracking => 'Mamafa & Fa\'unga \'o e Sino';

  @override
  String get health_waist_hip => 'Ko e kongaloto-ki-he-Hip';

  @override
  String get health_devices_hub => 'Ngaahi me\'angaue & Hub \'o e Smartwatch';

  @override
  String get health_sync_now => 'Sync Fakamatala Mo\'ui Lelei';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Fakafehokotaki fakamuimuitaha: $time';
  }

  @override
  String get health_manual_entry => 'Tohi Fakahinohino ki he Mo\'ui Lelei';

  @override
  String get health_metric_detail => 'Fakaikiiki \'o e Metric';

  @override
  String get health_connected_sensors =>
      'Sensors Mo\'ui Lelei \'oku Fehokotaki';

  @override
  String get plan_title => 'Palani Faka\'aho';

  @override
  String get plan_weekly_title => 'Palani Moʻui Lelei Fakauike';

  @override
  String get plan_calorie_target => 'Taketi Kaloli';

  @override
  String get plan_water_target => 'Taketi Fakavai';

  @override
  String get plan_step_target => 'Sitepu Taketi';

  @override
  String get plan_sleep_target => 'Taketi Mohe';

  @override
  String get plan_meal_suggestions => 'Ngaahi Fokotuʻu Meʻakai';

  @override
  String get plan_healthy_habits =>
      'Ngaahi To\'onga Mo\'ui Lelei & Ngaahi Tokoni';

  @override
  String get plan_coach_advice =>
      'Ngaahi Fokotu\'u \'a e Faiako \'o e Bloomi AI';

  @override
  String get plan_generated_title => 'Tepile Faka\'aho Fakafo\'ituitui';

  @override
  String get profile_title => 'Fakamatala';

  @override
  String get profile_edit => 'Fakatonutonu ʻa e fakamatala';

  @override
  String get profile_name => 'Hingoa';

  @override
  String get profile_age => 'Ta\'u motu\'a';

  @override
  String get profile_gender => 'Tangata mo e fefine';

  @override
  String get profile_height => 'Ma\'olunga';

  @override
  String get profile_weight => 'Mamafa';

  @override
  String get profile_goal => 'Taumuʻa Tefitó';

  @override
  String get profile_activity_level => 'Levolo ʻo e ʻEkitivitī';

  @override
  String get profile_stats => 'Ko \'eku Sitetisitika Mo\'ui Lelei';

  @override
  String get profile_saved => 'Kuo lavame\'a hono fakafo\'ou \'o e fakamatala';

  @override
  String get profile_bmi => 'Fakaʻilonga ʻo e Mamahi ʻo e Sinó (BMI)';

  @override
  String get profile_membership => 'Memipa';

  @override
  String get settings => 'Ngaahi fokotuʻutuʻu';

  @override
  String get preferences_habits => 'NGAAHI ME\'A \'OKU KE FIEMA\'U & TO\'ONGA';

  @override
  String get appearance_theme => 'Fōtunga & Kaveinga';

  @override
  String get appearance_theme_sub =>
      'Fakapo\'uli, Maama, Founga \'o e sisitemi & Ngaahi Fili \'o e App \'i he muimui\'i';

  @override
  String get permissions => 'Ngaahi Fakangofua & Hu ki he Sisitemi';

  @override
  String get permissions_sub =>
      'Fehokotaki\'anga mo\'ui lelei, Sensors sitepu, GPS, Ngaahi fakatokanga & Me\'a-faka\'ata';

  @override
  String get reminders_notifications => 'Ngaahi Fakamanatu & Fakatokanga';

  @override
  String get reminders_sub =>
      'Taimi kai, vai, mamafa \'o e sivi & fakamanatu taimi mohe';

  @override
  String get units_of_measurement => 'Ngaahi \'Iuniti \'o e Fua';

  @override
  String get units_sub =>
      'Metiki (kilo, cm, ml, km) pe \'Imipeli (pauni, fute/\'i, fl oz)';

  @override
  String get app_language => 'Lea App';

  @override
  String get language_sub =>
      'Faka-Pilitānia, हिन्दी (Hinitī), Faka-Hingili & 195+ ngaahi lea fakamāmani lahi';

  @override
  String get home_screen_widgets => 'Ngaahi Widget \'o e Screen \'o e \'Api';

  @override
  String get widgets_sub =>
      'Ngaahi me\'angaue Android mo\'ui: Hub, Ngaahi sitepu, Vai, Me\'akai & Mascot';

  @override
  String get wear_os_watch_app => 'Tui OS Sio App .';

  @override
  String get wear_os_sub =>
      'Smartwatch hoa, ngaahi taila, ngaahi faingata\'a & ngaahi me\'a mahu\'inga mo\'ui';

  @override
  String get goals_wellness =>
      'NGAAHI TAUMU\'A & NGAAHI \'ILO KI HE MO\'UI LELEI';

  @override
  String get nutrition_targets =>
      'Ngaahi Taumu\'a \'o e Me\'akai & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Taumu\'a \'o e kaloli, polotini, carbs, ngako & taumu\'a \'o e vai';

  @override
  String get weekly_recap => 'Recap Fakauike \'o e Mo\'ui Lelei';

  @override
  String get weekly_recap_sub =>
      '7-\'aho \'o e \'avalisi \'o e kaloli, macro \'o e \'aho & \'aho lelei taha';

  @override
  String get streaks_milestones => 'Ngaahi Laine & Ngaahi Mamaile';

  @override
  String get streaks_sub =>
      'Ngaahi laine \'o e matala\'i\'akau \'oku ngaue, ngaahi pine & ngaahi lavame\'a';

  @override
  String get connected_devices =>
      'NGAAHI ME\'ANGAUE \'OKU FEHOKOTAKI & \'EKOSISITEMI';

  @override
  String get devices_hub => 'Ngaahi me\'angaue & Hub \'o e Smartwatch';

  @override
  String get devices_hub_sub =>
      'Fehokotaki\'anga mo\'ui lelei, Matamata \'o e kaniva, Matamata Pixel, Garmin';

  @override
  String get surroundings_weather => 'Ngaahi \'Atakai & \'Ea';

  @override
  String get surroundings_sub =>
      'Ko e tu\'unga lelei \'o e \'ea (AQI), UV index & ngaahi tokoni ki he hydration \'o e \'ea';

  @override
  String get bloomi_pro => 'Bloomi Pro Lesisita';

  @override
  String get bloomi_pro_sub =>
      'AI Palani Faiako, 5 ngaahi me\'a \'o e screen \'i \'api & muimui\'i \'o e ngaahi me\'a mahu\'inga';

  @override
  String get about_security => 'FEKAU\'AKI & MALU';

  @override
  String get about_bloomi => 'Fekau\'aki mo Bloomi';

  @override
  String get about_bloomi_sub =>
      'Langa ha ngaahi fakaikiiki, version, ngaahi faka\'ilonga';

  @override
  String get privacy_policy => 'Tu\'utu\'uni Fakalukufua';

  @override
  String get privacy_policy_sub =>
      'Offline-\'uluaki, \'i he-device \'o e fakamatala \'o e \'atakai';

  @override
  String get terms_conditions => 'Ngaahi Tu\'utu\'uni & Ngaahi Tu\'unga';

  @override
  String get terms_conditions_sub =>
      'Ngaahi tu\'utu\'uni \'o e ngaue mo e ngaahi fakahinohino ki he mo\'ui lelei';

  @override
  String get delete_account => 'Tamate\'i \'a e \'akauni & fakamatala';

  @override
  String get delete_account_sub =>
      'Tamate\'i ta\'efakafoki \'a e fakamatala fakalotofonua SQLite mo e ngaahi backups \'o e \'ao .';

  @override
  String get healthy_habits =>
      'Langa ha ngaahi tō‘onga mo‘ui lelei anga-malū mo tu‘uloa .';

  @override
  String get all_logs => 'Ko \'eku ngaahi fakamatala muimui\'i & Ngaahi tohi';

  @override
  String get search_language => 'Fekumi \'i he lea pe tohi fakafonua...';

  @override
  String get languages_available => 'Ngaahi Lea ʻOku Maʻu';

  @override
  String get no_matching_languages =>
      'Naʻe ʻikai ke maʻu ha ngaahi lea ʻoku feʻunga';

  @override
  String get try_searching =>
      'Feinga ke kumi \'aki \'a e tohi fakafonua pe sipela faka-Pilitania .';

  @override
  String get partially_translated => 'Liliu fakakonga';

  @override
  String get complete_translation => 'Fakakakato';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lea kuo fokotuʻu ki he $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Ngaahi \'Atakai & \'Atakai';

  @override
  String get surroundings_aqi => 'Fakahokohoko ʻo e Tuʻunga ʻo e ʻEá';

  @override
  String get surroundings_uv => 'Fakahokohoko UV';

  @override
  String get surroundings_temp => 'Mafana \'o e \'ea';

  @override
  String get surroundings_humidity => 'Momoko';

  @override
  String get surroundings_hydration_advice =>
      'Nofo hydrated lelei \'i he ngaahi tu\'unga \'o e \'ea lolotonga.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Kumi Me\'akai .';

  @override
  String get food_quick_barcode => 'Sikani Pakouti 👑';

  @override
  String get food_quick_water => 'Tānaki atu Vai';

  @override
  String get food_quick_custom => 'Me\'akai Fakafonua';

  @override
  String get surroundings_good => 'Lelei';

  @override
  String get surroundings_moderate => 'Fakafuofua';

  @override
  String get surroundings_unhealthy => 'Ta\'emo\'ui lelei';

  @override
  String get notifications_title => 'Ngaahi Fakatokanga & Ngaahi Fakatokanga';

  @override
  String get notifications_empty => '\'Ikai ha ngaahi fakatokanga fo\'ou';

  @override
  String get notifications_mark_read => 'Fakaʻilongaʻi Kotoa ko e Lau .';

  @override
  String get notifications_clear => 'Fakamaʻa kotoa';

  @override
  String get reminders => 'Ngaahi Fakanofo Fakamanatu';

  @override
  String get notifications => 'Ngaahi Fakatokanga';

  @override
  String get reminders_breakfast_title => 'Fakamanatu Kai Pongipongi 🍳 .';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Pongipongi lelei! Taimi ki ha ma\'u me\'atokoni pongipongi fakatupu ivi \'i he $time .';
  }

  @override
  String get reminders_lunch_title => 'Fakamanatu Kai Ho\'ata 🥗 .';

  @override
  String reminders_lunch_body(Object time) {
    return 'Tu\'u pea fiefia \'i ha ma\'u me\'atokoni ho\'ata palanisi, fakakaukau \'i he $time .';
  }

  @override
  String get reminders_dinner_title => 'Fakamanatu Kai Efiafi 🍲 .';

  @override
  String reminders_dinner_body(Object time) {
    return 'Taimi ki ha ma\'u me\'atokoni efiafi ma\'ama\'a mo fakafiemalie \'i he $time .';
  }

  @override
  String get reminders_water_title => 'Faka\'ai\'ai \'o e vai 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Taimi ke inu ha ipu vai fo\'ou! ($time)';
  }

  @override
  String get reminders_weight_title => 'Fua Fakauike ⚖️ .';

  @override
  String reminders_weight_body(Object time) {
    return 'Muimui\'i ho\'o ngaahi me\'afua fakauike \'o e sino \'i he Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Taimi Mohe Matangi-ki lalo 🌙 .';

  @override
  String reminders_sleep_body(Object time) {
    return 'Fakafiemālieʻi mo teuteu ki ha mohe mālōlō ( $time ).';
  }

  @override
  String get onboard_welcome => 'Malo e lelei ki he Bloomi .';

  @override
  String get onboard_sub =>
      'Ko ho\'o anga fakakaume\'a, offline-\'uluaki mo\'ui lelei mo e hoa me\'akai.';

  @override
  String get onboard_get_started => 'Kamata';

  @override
  String get onboard_sign_in => 'Fakamoʻoni';

  @override
  String get onboard_skip => 'Fakalaka';

  @override
  String get onboard_choose_goal =>
      'Ko e hā hoʻo taumuʻa tefito ki he moʻui leleí?';

  @override
  String get onboard_goal_weight_loss => 'Mole Mamafa \'a e Mamafa';

  @override
  String get onboard_goal_muscle => 'Ma\'u \'a e uoua & Malohi';

  @override
  String get onboard_goal_energy => 'Malohi Faka\'aho & Mo\'ui';

  @override
  String get onboard_goal_habits => 'Kai Faka\'atamai Mo\'ui Lelei';

  @override
  String get onboard_about_you => 'Tala mai kiate kimautolu Fekauʻaki mo Koe .';

  @override
  String get onboard_lifestyle => 'Ko Hoʻo Founga Fakaʻahó .';

  @override
  String get onboard_permissions_title =>
      'Ngaahi Fakangofua & Hu ki he Sisitemi';

  @override
  String get onboard_permissions_sub =>
      'Foaki \'a e \'ata ki he ngaahi sitepu sync, workouts, mo e ngaahi fakamanatu.';

  @override
  String get onboard_plan_ready_title => 'Kuo Mateuteu Ho\'o Palani Custom!';

  @override
  String get onboard_plan_ready_sub =>
      'Na\'a mau fa\'u ha mape \'o e hala \'o e me\'akai mo e mo\'ui lelei \'oku malimali, fakafo\'ituitui ma\'au pe.';

  @override
  String get onboard_enter_bloomi => 'Fakahu Bloomi .';

  @override
  String get insights_weekly_report => 'Recap Fakauike \'o e Mo\'ui Lelei';

  @override
  String insights_best_day(Object day) {
    return '\'Aho Tu\'uma\'u Lelei Taha: $day';
  }

  @override
  String get insights_streaks_badges => 'Ngaahi Laine & Ngaahi Mamaile';

  @override
  String insights_unlocked_on(Object date) {
    return 'Fakaava \'i he $date';
  }

  @override
  String get insights_keep_going => 'Hokohoko atu e fakalakalaka fakaofo!';

  @override
  String get widgets_title => 'Ngaahi Widget \'o e Screen \'o e \'Api';

  @override
  String widgets_active_count(Object count) {
    return 'Ngaahi me\'a ngaue: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Mo\'ui Lelei Hub';

  @override
  String get widgets_steps_title => 'Ngaahi sitepu & Mama \'oku ngaue';

  @override
  String get widgets_water_title => 'Hydration Vave \'a e tohi';

  @override
  String get widgets_mascot_title => 'Hoa Masikoti Bloomi';

  @override
  String get wear_os_title => 'Tui \'a e uati \'atamai \'o e OS';

  @override
  String get wear_os_connected => 'Fehokotaki ki he Watch .';

  @override
  String get wear_os_sync => 'Fakatahataha\'i \'a e fakamatala \'o e sio';

  @override
  String get theme_title => 'Fōtunga & Kaveinga';

  @override
  String get theme_mode => 'Mode Kaveinga';

  @override
  String get theme_light => 'Maama';

  @override
  String get theme_dark => 'Fakapoʻuli';

  @override
  String get theme_system => 'Faka\'aonga\'i \'o e sisitemi';

  @override
  String get theme_background_palette => 'Paleti \'o e Muimui';

  @override
  String get units_title => 'Ngaahi \'Iuniti \'o e Fua';

  @override
  String get units_metric => 'Metiki (kilo, cm, ml)';

  @override
  String get units_imperial => 'ʻImipeli (pauni, ʻi, fl oz)';

  @override
  String get home_unable_load => '\'Oku \'ikai lava ke uta \'a e dashboard';

  @override
  String get home_health_permission_req =>
      'Fiema\'u \'a e Fakangofua ki he Fehokotaki\'anga Mo\'ui';

  @override
  String get home_health_permission_desc =>
      '\'Oku fie ma\'u \'e he Bloomi \'a e ngofua \'o e Health Connect ke to\'o \'a e ngaahi sitepu mo\'oni, tu\'unga \'o e loto, mo e sync \'a e ngaahi widgets \'o e \'api fe\'ave\'aki \'i he taimi mo\'oni.';

  @override
  String get home_allow_health =>
      'Faka\'ata \'a e Fehokotaki\'anga \'o e Mo\'ui';

  @override
  String get home_ready_mindful_day => 'Mateuteu ki ha \'aho fakakaukau? ✨';

  @override
  String get home_quick_add => 'Tānaki vave';

  @override
  String get home_live_gps => 'GPS mo\'ui';

  @override
  String get home_calories_remaining_label => 'NGAAHI KALOLI \'OKU TOE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kai: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap mo e Tracker Vai 💧 .';

  @override
  String get home_water_goal_reached => 'Taumu\'a faka\'aho kuo a\'usia 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ki he taumu\'a faka\'aho';
  }

  @override
  String get home_details => 'Fakaikiiki';

  @override
  String get home_upgrade_plan_desc =>
      'Fakalelei\'i ke fakaava \'a e ngaahi taumu\'a faka\'aho fakafo\'ituitui & palani AI';

  @override
  String get home_unlock => 'Fakaava 👑 .';

  @override
  String get home_quick_log_hint => 'Lekooti vave ha hū ki he moʻui leleí .';

  @override
  String get food_serving_size => 'Lahi ʻo e Sevesi';

  @override
  String get food_serving_grams => 'Ngaue (g)';

  @override
  String get food_number_servings => 'Fika ʻo e Ngaahi Sevesi';

  @override
  String get food_calories_per_serving => 'Kaloli ki he sevesi';

  @override
  String get food_recipe_ingredients => 'Ngaahi meʻakai';

  @override
  String get food_recipe_add_ingredient => 'Tānaki atu ʻa e meʻakai';

  @override
  String get food_recipe_directions =>
      'Ngaahi Fakahinohino & Ngaahi Fakatokanga';

  @override
  String get food_recipe_total => 'Fakakatoa \'o e me\'akai \'o e Recipe';

  @override
  String get food_recipe_per_serving => 'Fakame\'atokoni \'i he Sevesi';

  @override
  String get food_recipe_saved_toast =>
      'Me\'akai angamaheni kuo fakahaofi lavame\'a!';

  @override
  String get food_barcode_found => 'Kuo Maʻu ʻa e Koloá!';

  @override
  String get food_barcode_not_found_desc =>
      'Naʻe ʻikai ke mau lava ʻo maʻu ʻa e barcode ko ʻení ʻi he database ʻoku fakaava. Te ke lava ʻo tānaki atu ia ko ha meʻakai angamaheni.';

  @override
  String get food_add_custom_btn => 'Tānaki atu ha Meʻakai Fakaʻofoʻofa';

  @override
  String get food_scan_again => 'Toe sikani';

  @override
  String get food_review_items => 'Toe vakaiʻi ʻa e Ngaahi Meʻakai Kuo ʻIloʻí';

  @override
  String get food_review_hint =>
      'Fakatonutonu e ngaahi lahi pe toʻo ha meʻa ʻoku ʻikai ʻiloʻi .';

  @override
  String get food_log_selected => 'Log Ngaahi Me\'akai Fili';

  @override
  String get food_favourites_title => 'Ngaahi Meʻakai Manakoa';

  @override
  String get food_recent_title => 'Ngaahi Meʻakai Kimuí ni mai';

  @override
  String get food_no_favourites =>
      'Te\'eki ke \'iai ha ngaahi me\'akai manakoa. Tap loto ki ha fa\'ahinga me\'akai ke fakahaofi heni.';

  @override
  String get food_no_recents =>
      'Na\'e \'ikai ke ma\'u ha ngaahi me\'akai na\'e toki logged.';

  @override
  String get food_nutrition_details_title =>
      'Fakaikiiki \'o e Me\'akai Faka\'aho';

  @override
  String get food_macro_protein_label => 'Ko e Movetevete \'o e Polotini';

  @override
  String get food_macro_carbs_label => 'Movete \'a e Carbs';

  @override
  String get food_macro_fat_label => 'Movetevete \'o e Ngako';

  @override
  String get food_macro_fiber_label => 'Movetevete \'o e Fio';

  @override
  String get food_daily_target_comparison => 'Fakafehoanaki Taketi';

  @override
  String food_target_label(Object target) {
    return 'Taketi: $target';
  }

  @override
  String get food_edit_entry => 'Fakatonutonu \'a e Tohi \'o e Tohi';

  @override
  String get food_delete_entry => 'Tamateʻi ʻa e Hu';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kikalo';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current \'o e $target ml';
  }

  @override
  String get water_intake_history => 'Ngaahi Loka Vai \'o e \'aho ni';

  @override
  String get water_no_logs_today =>
      'Kuo te\'eki ke \'i ai ha vai \'oku logged he \'aho ni. Hydrate pea lomi\'i ha button tanaki atu vave!';

  @override
  String get water_adjust_goal => 'Fe‘unu‘aki ‘a e Taumu‘a Faka‘ahó';

  @override
  String get health_connect_banner => 'Fehokotaki ki he Mo\'ui Fehokotaki .';

  @override
  String get health_vitals_summary =>
      'Ngaahi Me\'a Mahu\'inga Faka\'aho ki he Mo\'ui Lelei';

  @override
  String get health_latest_heart_rate => 'Tu\'unga Fakamuimuitaha \'o e Loto';

  @override
  String get health_latest_bp => 'Toto Māʻolunga';

  @override
  String get health_latest_spo2 => 'ʻOkisiseni Toto';

  @override
  String get health_latest_glucose => 'Kulukose ʻi he Totó';

  @override
  String get health_latest_weight => 'Mamafa';

  @override
  String get health_latest_sleep => 'Loloa ʻo e Mohé';

  @override
  String get health_add_manual => 'Tānaki atu ʻa e Fua Tohi';

  @override
  String get health_history_trends => 'Ngaahi Alunga Fakahisitōlia';

  @override
  String get health_sync_success =>
      'Kuo synced lavame\'a \'a e fakamatala mo\'ui lelei!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours houa $mins miniti';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kilo';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm taimi';
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
  String get health_devices_title =>
      'Ngaahi me\'angaue fehokotaki & Ngaahi me\'a \'oku tui';

  @override
  String get health_devices_desc =>
      'Puleʻi ʻa e ngaahi smartwatches fakahoa, ngaahi meʻa muimuiʻi fakamalohisino, mo e ngaahi ongoʻi moʻui lelei.';

  @override
  String get health_workout_editor_title => 'Fakatonutonu e fakamalohisino';

  @override
  String get health_workout_name_label => 'Hingoa ʻo e fakamalohisino';

  @override
  String get health_workout_duration_label => 'Loloa (miniti)';

  @override
  String get health_workout_calories_label => 'Fakafuofua ki he Kaloli (kcal)';

  @override
  String get health_workout_date_label => '\'Aho mo e Taimi';

  @override
  String get plan_daily_wellness_roadmap =>
      'Ko ho\'o Mape Hala Fakafo\'ituitui .';

  @override
  String get plan_morning_routine => 'Ngaue Pongipongi';

  @override
  String get plan_afternoon_routine => 'Mo\'ui Lelei Ho\'ata';

  @override
  String get plan_evening_routine => 'Matangi-Hifo ʻo e Efiafí';

  @override
  String get plan_coach_badge => 'Faiako Bloomi AI';

  @override
  String get plan_weekly_overview => 'Tokanga ki he Mo\'ui Lelei \'aho \'e 7';

  @override
  String get plan_targets_title =>
      'Ngaahi Taumu\'a & Taumu\'a \'o e Mo\'ui Lelei';

  @override
  String get plan_calorie_budget_label => 'Patiseti Kaloli Faka\'aho';

  @override
  String get plan_water_budget_label => 'Taketi Vai Faka\'aho .';

  @override
  String get plan_step_budget_label => 'Taumuʻa Sitepu Fakaʻaho';

  @override
  String get plan_macro_split_label => 'Fakafuofua \'o e me\'akai lahi';

  @override
  String get profile_personal_details => 'Ngaahi Fakaikiiki Fakatāutaha';

  @override
  String get profile_body_stats => 'Ngaahi Fua \'o e Sino';

  @override
  String get profile_app_preferences =>
      'Ngaahi manako & Ngaahi tu\'unga \'o e App';

  @override
  String get profile_edit_name_hint => 'Ko ho hingoa .';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ma\'olunga ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Mamafa ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Ta\'u motu\'a';

  @override
  String get profile_gender_male => 'Tangata';

  @override
  String get profile_gender_female => 'Fefine';

  @override
  String get profile_gender_other => 'Kehe / Sai ange ke \'oua \'e lea .';

  @override
  String get profile_activity_sedentary =>
      'Nofo (Si\'isi\'i pe \'ikai ha fakamalohisino)';

  @override
  String get profile_activity_light =>
      'Ma\'ama\'a \'a e Ngaue (\'aho \'e 1-3/uike)';

  @override
  String get profile_activity_moderate =>
      'Fakafuofua \'a e Ngaue (\'aho \'e 3-5/uike)';

  @override
  String get profile_activity_very => 'Fu\'u Active (\'aho \'e 6-7/uike)';

  @override
  String get settings_wear_os_header => 'Tui OS Hoa App .';

  @override
  String get settings_wear_os_desc =>
      'Fokotu\'u \'a e tile Bloomi mo e faingata\'a \'i ho\'o uati Wear OS ke sio ki he calories, vai, mo e ngaahi sitepu.';

  @override
  String get settings_widgets_header => 'Ngaahi Widget Android fetu\'utaki';

  @override
  String get settings_widgets_desc =>
      'Pin taimi mo\'oni widgets \'i ho\'o device screen \'api ki he ngaahi fakafo\'ou vave.';

  @override
  String get settings_about_header => 'Fekau\'aki mo Bloomi';

  @override
  String get settings_about_version => 'Fakakaukau 1.0.0';

  @override
  String get settings_about_build => 'Langa 100 .';

  @override
  String get settings_about_credits =>
      'Naʻe ngaohi ʻaki ʻa e tokanga ki he moʻui fakaʻatamai mo moʻui leleí.';

  @override
  String get settings_terms_header =>
      'Ngaahi Tu\'utu\'uni mo e Ngaahi Tu\'unga';

  @override
  String get settings_privacy_header => 'Tu\'utu\'uni Fakalukufua';

  @override
  String get settings_delete_header => 'Tamate\'i \'a e \'akauni & fakamatala';

  @override
  String get settings_delete_warning =>
      'He ʻikai lava ke fakafoki ʻa e ngāue ko ʻení. Ko ho\'o me\'akai kotoa pe, fakamalohisino, ngaahi me\'a mahu\'inga, mo e fakamatala \'e tamate\'i tu\'uloa.';

  @override
  String get settings_delete_confirm_btn => 'Tamateʻi Tuʻuloa';

  @override
  String get onboard_welcome_headline => 'Malo e lelei ki he Bloomi ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'Malimali, fakakaukau wellness muimui\'i \'oku fa\'u \'o takatakai \'i ho\'o mo\'ui.';

  @override
  String get onboard_step_about => 'Fekau\'aki mo Koe';

  @override
  String get onboard_step_goals => 'Ko Hoʻo Ngaahi Taumuʻá .';

  @override
  String get onboard_step_lifestyle => 'Ngaahi Toʻonga Fakaʻaho';

  @override
  String get onboard_step_permissions => 'Ngaahi Ngofua';

  @override
  String get onboard_step_plan => 'Mateuteu!';

  @override
  String get onboard_health_connect_perm => 'Mo\'ui Lelei Fehokotaki \'a e Hu';

  @override
  String get onboard_step_sensors_perm => 'Sensor Lau Sitepu';

  @override
  String get onboard_notif_perm =>
      'Ngaahi Fakamanatu & Fakatokanga Faka\'atamai';

  @override
  String get onboard_camera_perm =>
      'Me\'a-faka\'ata (Barcode & Sikani Me\'akai)';

  @override
  String get onboard_grant_permissions => 'Foaki Ngaahi Ngofua';

  @override
  String get onboard_continue_dashboard => 'Fakaava \'a e Dashboard';

  @override
  String get notif_channel_hydration_name => 'Ngaahi faka\'ai\'ai \'o e vai';

  @override
  String get notif_channel_hydration_desc =>
      'Ngaahi fakamanatu vai malimali \'i he \'aho kotoa .';

  @override
  String get notif_channel_nutrition_name =>
      'Ngaahi Fakamanatu ki he Me\'atokoni & Me\'akai';

  @override
  String get notif_channel_nutrition_desc =>
      'Ngaahi fakatokanga fakamanatu ki he kai pongipongí, kai hoʻataá, mo e kai efiafí';

  @override
  String get notif_channel_steps_name => 'Ngaahi Mamaile ʻo e Sitepú';

  @override
  String get notif_channel_steps_desc =>
      'Ngaahi katoanga \'i he taimi \'oku a\'u ai ki he ngaahi taumu\'a sitepu faka\'aho .';

  @override
  String get notif_channel_vitals_name =>
      'Sivi Mo\'ui Lelei & Ngaahi Me\'a Mahu\'inga';

  @override
  String get notif_channel_vitals_desc =>
      'Mamafa mo e taimi mohe matangi-ki lalo fakamanatu .';

  @override
  String get notif_action_log_water => '💧 Loka +250ml';

  @override
  String get notif_action_snooze => 'Momohe 15m';

  @override
  String get notif_action_log_meal => '🥗 Meʻakai ʻAkau';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
