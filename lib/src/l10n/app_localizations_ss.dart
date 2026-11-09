// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swati (`ss`).
class AppLocalizationsSs extends AppLocalizations {
  AppLocalizationsSs([String locale = 'ss']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ekhaya';

  @override
  String get nav_today => 'Namuhla';

  @override
  String get nav_plan => 'Hlela';

  @override
  String get nav_food => 'Kudla';

  @override
  String get nav_food_diary => 'Idayari Yekudla';

  @override
  String get nav_workout => 'Ilogi Yekutivocavoca';

  @override
  String get nav_health => 'Imphilo';

  @override
  String get nav_profile => 'Iphrofayili';

  @override
  String get save => 'Gcina';

  @override
  String get cancel => 'Khansela';

  @override
  String get delete => 'Cisha';

  @override
  String get edit => 'Hlela';

  @override
  String get done => 'Kwentiwe';

  @override
  String get close => 'Vala';

  @override
  String get back => 'Emuva';

  @override
  String get next => 'Lokulandzelako';

  @override
  String get continue_btn => 'Chubeka';

  @override
  String get confirm => 'Cinisekisa';

  @override
  String get search => 'Sesha';

  @override
  String get filter => 'Hlunga';

  @override
  String get all => 'Konkhe';

  @override
  String get active => 'Kuyasebenta';

  @override
  String get today => 'Namuhla';

  @override
  String get yesterday => 'Itolo';

  @override
  String get tomorrow => 'Kusasa';

  @override
  String get add => 'Ngeta';

  @override
  String get remove => 'Susa';

  @override
  String get refresh => 'Vuselela';

  @override
  String get retry => 'Phindza uzame';

  @override
  String get error => 'Liphutsa';

  @override
  String get success => 'Imphumelelo';

  @override
  String get loading => 'Kulayisha...';

  @override
  String get no_data => 'Kute imininingwane letfolakalako';

  @override
  String get offline => 'Imodi lengasebenti ku-inthanethi';

  @override
  String get offline_sub =>
      'Tingucuko titawuvumelanisa uma setiphindze tixhumeke';

  @override
  String get undo => 'Hlehlisa';

  @override
  String get portion => 'Incenye';

  @override
  String get quantity => 'Linani';

  @override
  String get unit => 'Iyunithi';

  @override
  String get clear => 'Susa';

  @override
  String get select => 'Khetsa';

  @override
  String get apply => 'Faka sicelo';

  @override
  String get reset => 'Setha kabusha';

  @override
  String get ok => 'Kulungile';

  @override
  String get yes => 'Yebo';

  @override
  String get no => 'Cha';

  @override
  String get optional => 'Kungakhetfwa';

  @override
  String get calories => 'Emakhalori';

  @override
  String get protein => 'Emaprotheyini';

  @override
  String get carbs => 'Ema-carbs';

  @override
  String get fat => 'Emafutsa';

  @override
  String get fiber => 'Ifayibha';

  @override
  String get water => 'Emanti';

  @override
  String get steps => 'Tinyatselo';

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
  String get inches => 'ku';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'emahora';

  @override
  String get minutes => 'imizuzu';

  @override
  String get serving => 'Kukhonta';

  @override
  String get servings => 'Emasevisi';

  @override
  String get serving_size => 'Usayizi wekukhonta';

  @override
  String get per_100g => 'nge 100g';

  @override
  String get india => 'INdiya';

  @override
  String get asia => 'E-Asia';

  @override
  String get europe => 'Yurophu';

  @override
  String get middle_east => 'Emphumalanga Lesekhatsi';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Emave aseMelika';

  @override
  String get home_title => 'Ekhaya';

  @override
  String get home_greeting_morning => 'Kusile';

  @override
  String get home_greeting_afternoon => 'Sawubona ntambama';

  @override
  String get home_greeting_evening => 'Kusihlwa lokuhle';

  @override
  String get home_streak_title => 'Umgca Wembali';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count emalanga lalandzelanako',
      one: 'Lilanga linye',
      zero: '0 emalanga lalandzelanako',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Kushiswe';

  @override
  String get home_calories_budget => 'Sabelomali Semakhalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '_PH_0__ kcal lesele';
  }

  @override
  String get home_water_title => 'Kugcwalisa Emanti Emalanga';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Tinyatselo Letihambiwe';

  @override
  String get home_quick_actions => 'Tento Letisheshako';

  @override
  String get home_log_meal => 'Kudla kweLog';

  @override
  String get home_log_water => 'Emanti Etigodvo';

  @override
  String get home_log_workout => 'Log Kujima';

  @override
  String get home_log_weight => 'Sisindvo selogi';

  @override
  String get home_insights_title => 'Kucondza kwalamuhla';

  @override
  String get home_quote =>
      'Kukhetsa lokuncane lokunemphilo kwenta tingucuko letiqhakazako.';

  @override
  String get home_ai_coach_tip => 'Umceceshi we-Bloomi AI';

  @override
  String get home_surroundings => 'Tindzawo letitungeletile & Umoya';

  @override
  String get home_notifications => 'Titfunywa';

  @override
  String get home_daily_score => 'Emaphuzu ekuphila kahle onkhe malanga';

  @override
  String get home_view_all => 'Buka Konkhe';

  @override
  String get food_diary_title => 'Idayari Yekudla';

  @override
  String get food_breakfast => 'Sidlo sasekuseni';

  @override
  String get food_lunch => 'Sidlo sasemini';

  @override
  String get food_dinner => 'Kudla kwakusihlwa';

  @override
  String get food_snacks => 'Tidlo letilula';

  @override
  String get food_add_food => 'Ngeta Kudla';

  @override
  String get food_edit_food => 'Hlela Kudla';

  @override
  String get food_add_breakfast => 'Ngeta Sidlo sasekuseni';

  @override
  String get food_add_lunch => 'Ngeta Sidlo Sasemini';

  @override
  String get food_add_dinner => 'Ngeta Sidlo Sakusihlwa';

  @override
  String get food_add_snack => 'Ngeta Snack';

  @override
  String get food_total_calories => 'Linani selilonkhe lemakhalori';

  @override
  String get food_empty_meal => 'Kute kudla lokuloshiwe kwalesidlo';

  @override
  String get food_empty_diary => 'Kute kudla lokuloshiwe kwalolusuku';

  @override
  String get food_log_first_meal =>
      'Thepha + kute uloge kudla kwakho kwekucala lokumnandzi';

  @override
  String get food_quick_add => 'Ngeta ngekushesha';

  @override
  String get food_search_hint => 'Sesha titja, titselo, i-dal, i-roti...';

  @override
  String get food_custom_recipe => 'Kudla Nendlela Yekupheka';

  @override
  String get food_scan_barcode => 'Skena ibhakhodi';

  @override
  String get food_camera_scan => 'Sikena Sekudla se-AI';

  @override
  String get food_recent => 'Kudla Kwamuva';

  @override
  String get food_favourites => 'Titsandvwako';

  @override
  String get food_macro_summary => 'Kuhlukaniswa kwemanutrients lamakhulu';

  @override
  String get food_delete_meal_confirm =>
      'Ucinisekile yini kutsi ufuna kususa lentfo?';

  @override
  String get food_item_deleted => 'Intfo yekudla isusiwe';

  @override
  String get food_remaining => 'lokusele';

  @override
  String get food_consumed => 'kudliwe';

  @override
  String food_of_target(Object target) {
    return 'we-_PH_0__ emakhilo';
  }

  @override
  String get foodSearch_title => 'Sesha Kudla';

  @override
  String get foodSearch_scan_barcode => 'Skena ibhakhodi';

  @override
  String get foodSearch_take_photo => 'Snap Sitfombe Sekudla';

  @override
  String get foodSearch_custom_food => 'Dala Kudla Lokwentiwe';

  @override
  String get foodSearch_recent_searches => 'Kusesha kwamuva';

  @override
  String get foodSearch_popular => 'Tidlo Letitsandvwako';

  @override
  String get foodSearch_no_results =>
      'Kute kudla lokuhambisana nekuphenya kwakho';

  @override
  String get barcode_title => 'Sikena sebhakhodi';

  @override
  String get barcode_align =>
      'Lungisa ibhakhodi ngekhatsi kweluhlaka lwekhamera';

  @override
  String get barcode_not_found => 'Umkhicito awutfolakali ku-database';

  @override
  String get barcode_premium_feature =>
      'Kuskena ibhakhodi kuyatfolakala nge Bloomi Pro .';

  @override
  String get camera_title => 'Sikena Sekudla se-AI';

  @override
  String get camera_tap_hint => 'Tfola sitfombe lesicacile sesidlo sakho';

  @override
  String get camera_analysing => 'Kuhlatiya ipuleti lekudla...';

  @override
  String get camera_detected => 'Tintfo letitfolakele';

  @override
  String get camera_flash => 'Gucula i-Flash';

  @override
  String get camera_retake => 'Phindza utsatse Sitfombe';

  @override
  String get camera_confirm_food => 'Cinisekisa tintfo';

  @override
  String get customFood_title => 'Kudla Nendlela Yekupheka';

  @override
  String get customFood_name_hint => 'Sidlo noma ligama lesitsako';

  @override
  String get customFood_calories_hint => 'Emakhalori (kcal)';

  @override
  String get customFood_protein_hint => 'Iphrotheni (g)';

  @override
  String get customFood_carbs_hint => 'Emakhabhobho (g)';

  @override
  String get customFood_fat_hint => 'Emafutsa (g)';

  @override
  String get customFood_save => 'Gcina iresiphi';

  @override
  String get water_tracker_title => 'Umlandzeleli wemanti';

  @override
  String get water_daily_target => 'Umgomo Wekugcwalisa Emanti Onkhe Nsuku';

  @override
  String get water_logged_today => 'Kulogiwe Namuhla';

  @override
  String get water_add_glass => '+250 ml wengilazi';

  @override
  String get water_add_bottle => '+500 ml Libhodlela';

  @override
  String get water_custom_amount => 'Inani lelikhetsiwe';

  @override
  String get water_reminder_tip =>
      'Natsa emanti njalo lilanga lonkhe kute utfole emandla lacinile.';

  @override
  String water_logged_toast(Object amount) {
    return 'Kubhaliwe $amount ml wemanti 💧';
  }

  @override
  String get workout_title => 'Ilogi Yekutivocavoca';

  @override
  String get workout_add_exercise => 'Ngeta Umsebenti';

  @override
  String get workout_cardio => 'Inhlitiyo';

  @override
  String get workout_strength => 'Emandla';

  @override
  String get workout_yoga => 'I-Yoga & Kugucugucuka';

  @override
  String get workout_duration => 'Sikhatsi';

  @override
  String get workout_intensity => 'Kucina';

  @override
  String get workout_calories_burned => 'Emakhalori Lashisiwe';

  @override
  String get workout_empty => 'Kute kusebenta lokulogiwe namuhla';

  @override
  String get workout_save_success => 'Umsebenti ugcinwe ngemphumelelo!';

  @override
  String get workout_type => 'Luhlobo Lwekutivocavoca';

  @override
  String get workout_notes => 'Emanothi & Ticabango';

  @override
  String get health_overview_title => 'Imphilo & Tintfo letibalulekile';

  @override
  String get health_heart_rate => 'Lizinga Lenhlitiyo';

  @override
  String get health_blood_oxygen => 'I-oksijini yengati (SpO2)';

  @override
  String get health_blood_pressure => 'Umfutfo wengati';

  @override
  String get health_blood_glucose => 'Shukela Wengati';

  @override
  String get health_body_temperature => 'Lizinga lekushisa lemtimba';

  @override
  String get health_sleep_tracking => 'Kulandzelela kulala';

  @override
  String get health_weight_tracking => 'Sisindvo & Kubunjwa Kwemtimba';

  @override
  String get health_waist_hip => 'Silinganiso selukhalo kuya enkhabeni';

  @override
  String get health_devices_hub =>
      'Emadivayisi & Sikhungo Sewashi Lelihlakaniphile';

  @override
  String get health_sync_now => 'Vumelanisa Idatha Yetemphilo';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Kuvumelaniswa kwekugcina: $time';
  }

  @override
  String get health_manual_entry => 'Kufaka Imphilo Ngesandla';

  @override
  String get health_metric_detail => 'Imininingwane Yemethrikhi';

  @override
  String get health_connected_sensors => 'Tinzwa Temphilo Letihlangene';

  @override
  String get plan_title => 'Luhlelo Lwamalanga Onkhe';

  @override
  String get plan_weekly_title => 'Luhlelo Lwekuphila Kahle Lweliviki';

  @override
  String get plan_calorie_target => 'Lihlosi Lemakhalori';

  @override
  String get plan_water_target => 'Lihloso Lekukhipha Emanti';

  @override
  String get plan_step_target => 'Sinyatselo Lesihlosiwe';

  @override
  String get plan_sleep_target => 'Lihloso Lekulala';

  @override
  String get plan_meal_suggestions => 'Tiphakamiso Tekudla';

  @override
  String get plan_healthy_habits => 'Imikhuba Lephilile & Tiluleko';

  @override
  String get plan_coach_advice => 'Tincomo teMceceshi we-Bloomi AI';

  @override
  String get plan_generated_title =>
      'Luhlelo Lwemalanga Onkhe Lolwentelwe Wena';

  @override
  String get profile_title => 'Iphrofayili';

  @override
  String get profile_edit => 'Hlela iphrofayili';

  @override
  String get profile_name => 'Ligama';

  @override
  String get profile_age => 'Iminyaka';

  @override
  String get profile_gender => 'Bulili';

  @override
  String get profile_height => 'Kuphakama';

  @override
  String get profile_weight => 'Sisindvo';

  @override
  String get profile_goal => 'Umgomo Loyinhloko';

  @override
  String get profile_activity_level => 'Lizinga Lemsebenti';

  @override
  String get profile_stats => 'Tibalo temphilo yami';

  @override
  String get profile_saved => 'Iphrofayili ivuselelwe ngemphumelelo';

  @override
  String get profile_bmi => 'Inkomba Yesisindvo Semtimba (BMI)';

  @override
  String get profile_membership => 'Bulunga';

  @override
  String get settings => 'Tilungiselelo';

  @override
  String get preferences_habits => 'LOKUTSANDZAKO NEMIKHUBA';

  @override
  String get appearance_theme => 'Kubukeka & Ingcikitsi';

  @override
  String get appearance_theme_sub =>
      'Kumnyama, Kukhanya, Imodi Yeluhlelo & Tinkhetho Temlandvo We-app';

  @override
  String get permissions => 'Timvume & Kufinyelela Luhlelo';

  @override
  String get permissions_sub =>
      'Kuxhumana Kwemphilo, Tinzwa Tesinyatselo, I-GPS, Titfunywa & Ikhamera';

  @override
  String get reminders_notifications => 'Tikhumbuto & Tatiso';

  @override
  String get reminders_sub =>
      'Tikhatsi tekudla, emanti, kuhlola sisindvo & tikhumbuto tesikhatsi sekulala';

  @override
  String get units_of_measurement => 'Emayunithi Ekukala';

  @override
  String get units_sub =>
      'Imethrikhi (kg, cm, ml, km) noma iMbuso (emaphawundi, tinyawo/in, i-fl oz)';

  @override
  String get app_language => 'Lulwimi Lwe-app';

  @override
  String get language_sub =>
      'Siswati, हिन्दी (SiHindi), SiNgisi & 195+ tilwimi temhlaba wonkhe';

  @override
  String get home_screen_widgets => 'Emawijethi eSikrini sasekhaya';

  @override
  String get widgets_sub =>
      'Emawijethi e-Android labukhoma: I-Hub, Tinyatselo, Emanti, Umsoco & I-Mascot';

  @override
  String get wear_os_watch_app => 'Gcoka i-OS Watch App';

  @override
  String get wear_os_sub =>
      'Umngane we-Smartwatch, emathayela, tinkinga & tintfo letibalulekile letiphilako';

  @override
  String get goals_wellness => 'TINHLOSO & KUCONDZA KWEMPHILO';

  @override
  String get nutrition_targets => 'Tinhloso teMsoco & Kuhlukaniswa Lokukhulu';

  @override
  String get nutrition_targets_sub =>
      'Lizinga le-calorie, emaprotheyini, ema-carbs, emafutsa kanye nemgomo wemanti';

  @override
  String get weekly_recap => 'Kuphindzaphindza Imphilo Yeliviki';

  @override
  String get weekly_recap_sub =>
      'Silinganiso semakhalori emalanga langu-7, silinganiso se-macro & lilanga lelihle kakhulu';

  @override
  String get streaks_milestones => 'Imigca & Tigaba';

  @override
  String get streaks_sub =>
      'Imigca yetimbali lesebentako, emabheji & imiphumela';

  @override
  String get connected_devices => 'TINHLELO LETIXHUNYEKILE KANYE NE-ECOSYSTEM';

  @override
  String get devices_hub => 'Emadivayisi & Sikhungo Sewashi Lelihlakaniphile';

  @override
  String get devices_hub_sub =>
      'Kuxhumana Kwemphilo, Liwashi le-Galaxy, Liwashi le-Pixel, i-Garmin';

  @override
  String get surroundings_weather => 'Tindzawo letitungeletile & Simo selitulu';

  @override
  String get surroundings_sub =>
      'Lizinga lemoya (i-AQI), inkomba ye-UV & emacebiso ekufaka emanti esimeni selitulu';

  @override
  String get bloomi_pro => 'Kubhalisa kwe-Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Umceceshi weLuhlelo lwe-AI, emawijethi langu-5 esikrinini sasekhaya & kulandzelela tintfo letibalulekile';

  @override
  String get about_security => 'MAYELANA & KUVIKELEKA';

  @override
  String get about_bloomi => 'Mayelana neBloomi';

  @override
  String get about_bloomi_sub =>
      'Yakha tintfo letichaziwe, inguqulo, tiphawulo';

  @override
  String get privacy_policy => 'Inchubomgomo Yetimfihlo';

  @override
  String get privacy_policy_sub =>
      'Kwakhiwa kwemininingwane ngaphandle kwe-inthanethi, kudivayisi';

  @override
  String get terms_conditions => 'Imigomo nemibandzela';

  @override
  String get terms_conditions_sub =>
      'Imigomo yekusebenta kanye nemihlahlandlela yemphilo';

  @override
  String get delete_account => 'Cisha i-akhawunti nemininingwane';

  @override
  String get delete_account_sub =>
      'Susa ngendlela lengagucuki idatha yendzawo ye-SQLite kanye netipele temafu';

  @override
  String get healthy_habits =>
      'Yakha imikhuba lemnene, lehlala njalo yekuphila kahle';

  @override
  String get all_logs => 'Idatha yami lelandzelwako & Emalogi';

  @override
  String get search_language => 'Sesha ngelulwimi noma ngembhalo wemdzabu...';

  @override
  String get languages_available => 'Tilwimi Letitfolakalako';

  @override
  String get no_matching_languages => 'Kute tilwimi letifananako letitfolakele';

  @override
  String get try_searching =>
      'Yetama kusesha ngeskripthi semdzabu noma ngesilulumagama sesiNgisi';

  @override
  String get partially_translated => 'Kuhunyushwe kancane';

  @override
  String get complete_translation => 'Gcwalisa';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Lulwimi lusethwe ku $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'Tindzawo letitungeletile & Imvelo';

  @override
  String get surroundings_aqi => 'Inkomba Yelizinga Lemoya';

  @override
  String get surroundings_uv => 'Inkomba ye-UV';

  @override
  String get surroundings_temp => 'Lizinga lekushisa';

  @override
  String get surroundings_humidity => 'Umswakama';

  @override
  String get surroundings_hydration_advice =>
      'Hlala unemanti kahle etimeni tesimo selitulu letikhona nyalo.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Sesha Kudla';

  @override
  String get food_quick_barcode => 'Skena iBhakhodi 👑';

  @override
  String get food_quick_water => 'Faka Emanti';

  @override
  String get food_quick_custom => 'Kudla Kwekwemkhuba';

  @override
  String get surroundings_good => 'Kuhle';

  @override
  String get surroundings_moderate => 'Silinganiselwe';

  @override
  String get surroundings_unhealthy => 'Akuphilile';

  @override
  String get notifications_title => 'Titfunywa & Tecwayiso';

  @override
  String get notifications_empty => 'Kute tatiso letinsha';

  @override
  String get notifications_mark_read => 'Maka Konkhe ngekutsi Kufundvwe';

  @override
  String get notifications_clear => 'Susa konkhe';

  @override
  String get reminders => 'Tilungiselelo Tesikhumbuto';

  @override
  String get notifications => 'Titfunywa';

  @override
  String get reminders_breakfast_title => 'Sikhumbuto sekudla kwasekuseni 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Sawubona! Sikhatsi sekudla kwasekuseni lokunemsoco ku $time .';
  }

  @override
  String get reminders_lunch_title => 'Sikhumbuto sekudla kwasemini 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Yema bese ujabulela kudla kwasemini lokulinganiselako, lokunengcondvo ku $time .';
  }

  @override
  String get reminders_dinner_title => 'Sikhumbuto sekudla kwakusihlwa 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Sikhatsi sekudla kwakusihlwa lokulula, lokwenetisako ku $time .';
  }

  @override
  String get reminders_water_title => 'I-Nudge Yekugcwalisa Emanti 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Sikhatsi sekunatsa ingilazi yemanti lasha! (_PH_0__)';
  }

  @override
  String get reminders_weight_title => 'Kukala ngeliviki onkhe ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Landzela emamethrikhi akho emtimba ngeliviki ku-Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Sikhatsi sekulala Umoya-phansi 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Khululeka bese ulungiselela kulala lokuphumulako ( $time ).';
  }

  @override
  String get onboard_welcome => 'Siyakwemukela ku Bloomi';

  @override
  String get onboard_sub =>
      'Umngane wakho lonebungani, longasebenti ku-inthanethi-kucala kutemphilo kanye nekudla.';

  @override
  String get onboard_get_started => 'Cala';

  @override
  String get onboard_sign_in => 'Ngena ngemvume';

  @override
  String get onboard_skip => 'Yeqa';

  @override
  String get onboard_choose_goal =>
      'Ngumuphi umgomo wakho lomkhulu wekuphila kahle?';

  @override
  String get onboard_goal_weight_loss =>
      'Kulahlekelwa Sisindvo Ngendlela Lemnene';

  @override
  String get onboard_goal_muscle => 'Inzuzo Yemisipha & Emandla';

  @override
  String get onboard_goal_energy => 'Emandla Nekuphila Kwamalanga Onkhe';

  @override
  String get onboard_goal_habits => 'Kudla Ngengcondvo Lenemphilo';

  @override
  String get onboard_about_you => 'Sitjele Ngawe';

  @override
  String get onboard_lifestyle => 'Indlela Yakho Yemalanga Onkhe';

  @override
  String get onboard_permissions_title => 'Timvume & Kufinyelela Luhlelo';

  @override
  String get onboard_permissions_sub =>
      'Niketa kufinyelela etinyatselweni tekuvumelanisa, kutivocavoca, kanye netikhumbuto.';

  @override
  String get onboard_plan_ready_title => 'Luhlelo Lwakho Lwemkhuba Lulungile!';

  @override
  String get onboard_plan_ready_sub =>
      'Sikwentele umsoco lomnene, lowenta wena kanye nendlela yekuphila kahle.';

  @override
  String get onboard_enter_bloomi => 'Faka iBloomi';

  @override
  String get insights_weekly_report => 'Kuphindzaphindza Imphilo Yeliviki';

  @override
  String insights_best_day(Object day) {
    return 'Lilanga Lekungagucugucuki Lelihamba Embili: $day';
  }

  @override
  String get insights_streaks_badges => 'Imigca & Tigaba';

  @override
  String insights_unlocked_on(Object date) {
    return 'Kuvulwe ku $date';
  }

  @override
  String get insights_keep_going =>
      'Chubekani nenchubekelembili lemangalisako!';

  @override
  String get widgets_title => 'Emawijethi eSikrini sasekhaya';

  @override
  String widgets_active_count(Object count) {
    return 'Emawijethi lasebentako: $count';
  }

  @override
  String get widgets_hub_title => 'I-Bloomi Yemphilo';

  @override
  String get widgets_steps_title => 'Tinyatselo & Indandatho Lesebentako';

  @override
  String get widgets_water_title => 'Ilogi Lesheshako Yekugcwalisa Emanti';

  @override
  String get widgets_mascot_title => 'Umngane weMascot weBloomi';

  @override
  String get wear_os_title => 'Gcoka iwashi lelihlakaniphile le-OS';

  @override
  String get wear_os_connected => 'Kuxhumeke ku-Watch';

  @override
  String get wear_os_sync => 'Vumelanisa Idatha Yekubuka';

  @override
  String get theme_title => 'Kubukeka & Ingcikitsi';

  @override
  String get theme_mode => 'Imodi Yengcikitsi';

  @override
  String get theme_light => 'Kukhanya';

  @override
  String get theme_dark => 'Kumnyama';

  @override
  String get theme_system => 'Luhlelo lolujwayelekile';

  @override
  String get theme_background_palette => 'Iphalethi Yemlandvo';

  @override
  String get units_title => 'Emayunithi Ekukala';

  @override
  String get units_metric => 'Imethrikhi (kg, emasentimitha, emamililitha)';

  @override
  String get units_imperial => 'Bukhosi (emaphawundi, ku, fl oz)';

  @override
  String get home_unable_load => 'Ayikhoni kulayisha ideshibhodi';

  @override
  String get home_health_permission_req =>
      'Imvume Yekuxhumana Yetemphilo Iyadzingeka';

  @override
  String get home_health_permission_desc =>
      'Bloomi udzinga imvume ye-Health Connect yekudvonsa tinyatselo mbamba, lizinga lenhlitiyo, kanye nekuvumelanisa emawijethi asekhaya lelihambako ngesikhatsi sangempela.';

  @override
  String get home_allow_health => 'Vumela Kuxhumana Kwemphilo';

  @override
  String get home_ready_mindful_day => 'Ukulungele lilanga lekucabanga? ✨';

  @override
  String get home_quick_add => 'Ngeta ngekushesha';

  @override
  String get home_live_gps => 'I-GPS lebukhoma';

  @override
  String get home_calories_remaining_label => 'EMAKHOLORI LASELE';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Kudliwa: _PH_0__ / $target kcal';
  }

  @override
  String get home_tap_water_tracker =>
      'Thepha kute utfole Umlandzeleli Wemanti 💧';

  @override
  String get home_water_goal_reached =>
      'Umgomo wemalanga onkhe ufinyelelwa 🎉 .';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml kuya emgomeni wemalanga onkhe';
  }

  @override
  String get home_details => 'Imininingwane';

  @override
  String get home_upgrade_plan_desc =>
      'Tfutfukisa kute uvule lokuhlosiwe kwamalanga onkhe lokwentiwe ngekwemuntfu & luhlelo lwe-AI';

  @override
  String get home_unlock => 'Vula 👑';

  @override
  String get home_quick_log_hint => 'Rekhoda ngekushesha lokungena kwemphilo';

  @override
  String get food_serving_size => 'Usayizi wekukhonta';

  @override
  String get food_serving_grams => 'Kukhonta (g)';

  @override
  String get food_number_servings => 'Inombolo Yekukhonta';

  @override
  String get food_calories_per_serving => 'Emakhalori ngekukhonta';

  @override
  String get food_recipe_ingredients => 'Titsako';

  @override
  String get food_recipe_add_ingredient => 'Faka Titsako';

  @override
  String get food_recipe_directions => 'Tiyaleto & Emanothi';

  @override
  String get food_recipe_total => 'Umsoco weresiphi yonkhe';

  @override
  String get food_recipe_per_serving => 'Ngekuphakela Umsoco';

  @override
  String get food_recipe_saved_toast =>
      'Kudla ngekwemkhuba kugcinwe ngemphumelelo!';

  @override
  String get food_barcode_found => 'Umkhicito Utfolakele!';

  @override
  String get food_barcode_not_found_desc =>
      'Asizange siyitfole lebhakhodi ku-database levulekile. Ungafaka njengekudla kwelisiko.';

  @override
  String get food_add_custom_btn => 'Ngeta Kudla Lokwentiwe';

  @override
  String get food_scan_again => 'Skena Futsi';

  @override
  String get food_review_items => 'Buyeketa Kudla Lokutfolakele';

  @override
  String get food_review_hint =>
      'Lungisa linani nobe ususe nobe nguyiphi intfo lengabonakali';

  @override
  String get food_log_selected => 'Log Kudla Lokukhetsiwe';

  @override
  String get food_favourites_title => 'Kudla Lokutsandvwako';

  @override
  String get food_recent_title => 'Kudla Kwamuva';

  @override
  String get food_no_favourites =>
      'Kute kudla lokutsandzako kwanyalo. Thepha inhlitiyo kunobe ngukuphi kudla lokulondvolota lapha.';

  @override
  String get food_no_recents => 'Kute kudla lokusanda kubhalwa lokutfolakele.';

  @override
  String get food_nutrition_details_title =>
      'Imininingwane Yekudla Kwamalanga Onkhe';

  @override
  String get food_macro_protein_label => 'Kuphuka kwemaprotheyini';

  @override
  String get food_macro_carbs_label => 'Kuphuka kwema Carbs';

  @override
  String get food_macro_fat_label => 'Kuhlukaniswa kwemafutsa';

  @override
  String get food_macro_fiber_label => 'Kuphuka kwe Fibre';

  @override
  String get food_daily_target_comparison => 'Kucatsanisa Lokuhlosiwe';

  @override
  String food_target_label(Object target) {
    return 'Lihlosi: $target';
  }

  @override
  String get food_edit_entry => 'Hlela lokubhalwe kudayari';

  @override
  String get food_delete_entry => 'Cisha lokufakiwe';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal emakhilo';
  }

  @override
  String water_progress(Object current, Object target) {
    return '_PH_0__ we $target ml';
  }

  @override
  String get water_intake_history => 'Tigodvo Temanti Talamuhla';

  @override
  String get water_no_logs_today =>
      'Kute emanti labhalwe lamuhla. Hydrate bese uthepha inkinobho yekwengeta lesheshako!';

  @override
  String get water_adjust_goal => 'Lungisa Umgomo Wamalanga Onkhe';

  @override
  String get health_connect_banner => 'Kuxhumeke ku-Connect yeMphilo';

  @override
  String get health_vitals_summary =>
      'Tintfo letibalulekile temphilo nsuku zonke';

  @override
  String get health_latest_heart_rate => 'Lizinga Lenhlitiyo lakamuva';

  @override
  String get health_latest_bp => 'Umfutfo wengati';

  @override
  String get health_latest_spo2 => 'I-oksijini yengati';

  @override
  String get health_latest_glucose => 'Shukela Wengati';

  @override
  String get health_latest_weight => 'Sisindvo';

  @override
  String get health_latest_sleep => 'Sikhatsi Sekulala';

  @override
  String get health_add_manual => 'Ngeta Kukala Ngesandla';

  @override
  String get health_history_trends => 'Imikhuba Yemlandvo';

  @override
  String get health_sync_success =>
      'Idatha yetemphilo ivumelaniswe ngemphumelelo!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours emahora $mins imizuzu';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '_PH_0__ kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm i-bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
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
  String get health_devices_title =>
      'Emadivayisi Laxhunyiwe & Tintfo Letigcokwako';

  @override
  String get health_devices_desc =>
      'Lawula ema-smartwatch labhanjiwe, tintfo tekulandzelela umtimba, kanye netinzwa tetemphilo.';

  @override
  String get health_workout_editor_title => 'Hlela Umsebenti';

  @override
  String get health_workout_name_label => 'Ligama Lekutivocavoca';

  @override
  String get health_workout_duration_label => 'Sikhatsi (imizuzu)';

  @override
  String get health_workout_calories_label =>
      'Emakhalori lalinganiselwe (kcal)';

  @override
  String get health_workout_date_label => 'Lusuku neSikhatsi';

  @override
  String get plan_daily_wellness_roadmap =>
      'Imephu Yakho Yemgwaco Leyentiwe Wena';

  @override
  String get plan_morning_routine => 'Inhlalayenta yasekuseni';

  @override
  String get plan_afternoon_routine => 'Kuphila kahle emini';

  @override
  String get plan_evening_routine => 'Umoya Wasebusuku';

  @override
  String get plan_coach_badge => 'Umceceshi we-Bloomi AI';

  @override
  String get plan_weekly_overview => 'Kugcila Ekuphileni Kwemalanga Langu-7';

  @override
  String get plan_targets_title => 'Tinhloso & Tinjongo Temphilo';

  @override
  String get plan_calorie_budget_label =>
      'Sabelomali Semakhalori Emalanga Onkhe';

  @override
  String get plan_water_budget_label => 'Lihloso Lemanti Emalanga Onkhe';

  @override
  String get plan_step_budget_label => 'Umgomo Wesinyatselo Semalanga Onkhe';

  @override
  String get plan_macro_split_label => 'Silinganiso sekudla lokukhulu';

  @override
  String get profile_personal_details => 'Imininingwane Yemuntfu';

  @override
  String get profile_body_stats => 'Tilinganiso Temtimba';

  @override
  String get profile_app_preferences => 'Lokukhetsako & Emasethingi e-app';

  @override
  String get profile_edit_name_hint => 'Libito lakho';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Kuphakama ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Sisindvo (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Iminyaka';

  @override
  String get profile_gender_male => 'Indvodza';

  @override
  String get profile_gender_female => 'Lowesikati';

  @override
  String get profile_gender_other => 'Lokunye / Ngikhetsa kungasho';

  @override
  String get profile_activity_sedentary =>
      'Kuhlala phansi (Kuvivinya umtimba kancane noma ungavivinyi)';

  @override
  String get profile_activity_light =>
      'Kusebenta kancane (emalanga langu-1-3/liviki)';

  @override
  String get profile_activity_moderate =>
      'Kusebenta ngesilinganiso (emalanga langu-3-5/liviki)';

  @override
  String get profile_activity_very =>
      'Kusebenta kakhulu (emalanga langu-6-7/liviki)';

  @override
  String get settings_wear_os_header => 'Gcoka i-OS lehambisana ne-app';

  @override
  String get settings_wear_os_desc =>
      'Faka tile ye-Bloomi kanye nenkinga ewashini lakho le-Wear OS kute ubuke ema-calories, emanti, kanye netinyatselo.';

  @override
  String get settings_widgets_header => 'Emawijethi e-Android lasebentisanako';

  @override
  String get settings_widgets_desc =>
      'Khipha emawijethi esikhatsi sangempela esikrinini sasekhaya sedivayisi yakho kute utfole tibuyeketo letisheshako.';

  @override
  String get settings_about_header => 'Mayelana neBloomi';

  @override
  String get settings_about_version => 'Inguqulo 1.0.0';

  @override
  String get settings_about_build => 'Yakha 100';

  @override
  String get settings_about_credits =>
      'Yakhiwe ngekunakekelwa kwekuphila lokunengcondvo, lokunemphilo.';

  @override
  String get settings_terms_header => 'Imigomo nemibandzela';

  @override
  String get settings_privacy_header => 'Inchubomgomo Yetimfihlo';

  @override
  String get settings_delete_header => 'Cisha i-akhawunti nemininingwane';

  @override
  String get settings_delete_warning =>
      'Lesento angeke sihlehliswe. Konkhe kudla kwakho, kusebenta, tintfo letibalulekile, kanye nephrofayili kutawususwa unomphela.';

  @override
  String get settings_delete_confirm_btn => 'Cisha unomphela';

  @override
  String get onboard_welcome_headline => 'Siyakwemukela ku Bloomi ✨ .';

  @override
  String get onboard_welcome_tagline =>
      'Kulandzela imphilo lemnene, lenengcondvo leyentiwe eceleni kwemphilo yakho.';

  @override
  String get onboard_step_about => 'Ngawe';

  @override
  String get onboard_step_goals => 'Imigomo yakho';

  @override
  String get onboard_step_lifestyle => 'Imikhuba Yemalanga Onkhe';

  @override
  String get onboard_step_permissions => 'Timvume';

  @override
  String get onboard_step_plan => 'Sekulungele!';

  @override
  String get onboard_health_connect_perm =>
      'Kufinyelela Kwekuxhumana Kwemphilo';

  @override
  String get onboard_step_sensors_perm => 'Inzwa Yekubala Sinyatselo';

  @override
  String get onboard_notif_perm => 'Tikhumbuto Netatiso Leticabangako';

  @override
  String get onboard_camera_perm => 'Ikhamera (Ibhakhodi Nesikena Sekudla)';

  @override
  String get onboard_grant_permissions => 'Niketa Timvume';

  @override
  String get onboard_continue_dashboard => 'Vula iDeshibhodi';

  @override
  String get notif_channel_hydration_name => 'Kugcwalisa Emanti';

  @override
  String get notif_channel_hydration_desc =>
      'Tikhumbuto temanti lamnene lilanga lonkhe';

  @override
  String get notif_channel_nutrition_name => 'Tikhumbuto Tekudla Nekudla';

  @override
  String get notif_channel_nutrition_desc =>
      'Tecwayiso tesikhumbuto sekudla kwasekuseni, kwasemini, nekudla kwakusihlwa';

  @override
  String get notif_channel_steps_name => 'Tinyatselo Letibalulekile';

  @override
  String get notif_channel_steps_desc =>
      'Imigubho uma kufinyelelwa etinhlosweni tetinyatselo tamalanga onkhe';

  @override
  String get notif_channel_vitals_name =>
      'Kuhlolwa kwemphilo netintfo letibalulekile';

  @override
  String get notif_channel_vitals_desc =>
      'Sisindvo kanye netikhumbuto tesikhatsi sekulala';

  @override
  String get notif_action_log_water => '💧 Logi +250ml';

  @override
  String get notif_action_snooze => 'Kuphumula 15m';

  @override
  String get notif_action_log_meal => '🥗 Kudla Kwemalogi';

  @override
  String get language => 'Lulwimi';

  @override
  String get share => 'Yabelana';

  @override
  String common_days(Object count) {
    return '$count d lendlulile';
  }
}
