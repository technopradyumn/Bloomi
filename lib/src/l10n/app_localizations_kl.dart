// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kalaallisut Greenlandic (`kl`).
class AppLocalizationsKl extends AppLocalizations {
  AppLocalizationsKl([String locale = 'kl']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Angerlarsimaffik';

  @override
  String get nav_today => 'Ullumikkut';

  @override
  String get nav_plan => 'Pilersaarut';

  @override
  String get nav_food => 'Nerisassat';

  @override
  String get nav_food_diary => 'Nerisassat Ullorsiutiat';

  @override
  String get nav_workout => 'Timersorneq Log';

  @override
  String get nav_health => 'Peqqinneq';

  @override
  String get nav_profile => 'Profili';

  @override
  String get save => 'Annaakkit';

  @override
  String get cancel => 'Unitsigit';

  @override
  String get delete => 'Piiuk';

  @override
  String get edit => 'Aaqqissuussineq';

  @override
  String get done => 'Piareerpoq';

  @override
  String get close => 'Qanittoq';

  @override
  String get back => 'Taarsiullugu';

  @override
  String get next => 'Tullia';

  @override
  String get continue_btn => 'Ingerlaqqigit';

  @override
  String get confirm => 'Uppernarsaruk';

  @override
  String get search => 'Ujaasineq';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'Tamarmik';

  @override
  String get active => 'Aktiv';

  @override
  String get today => 'Ullumikkut';

  @override
  String get yesterday => 'Ippassaq';

  @override
  String get tomorrow => 'Aqagu';

  @override
  String get add => 'Ilanngussaq';

  @override
  String get remove => 'Peerlugu';

  @override
  String get refresh => 'Nutarterineq';

  @override
  String get retry => 'Misilittariaqarpat';

  @override
  String get error => 'Kukkuneq';

  @override
  String get success => 'Angusaqarluarneq';

  @override
  String get loading => 'Ikkussineq...';

  @override
  String get no_data => 'Paasissutissat pissarsiarineqarsinnaanngillat';

  @override
  String get offline => 'Offline-imik atuineq';

  @override
  String get offline_sub =>
      'Allanngortiterinerit synkroniseqartassapput attaveqaqqittoqarpat';

  @override
  String get undo => 'Utertitsineq';

  @override
  String get portion => 'Immikkoortoq';

  @override
  String get quantity => 'Amerlassuseq';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Erseqqissoq';

  @override
  String get select => 'Toqqaruk';

  @override
  String get apply => 'Qinnuteqarit';

  @override
  String get reset => 'Nutarterineq';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Aap';

  @override
  String get no => 'Naamik';

  @override
  String get optional => 'Toqqagassaq';

  @override
  String get calories => 'Kaloriit';

  @override
  String get protein => 'Proteini';

  @override
  String get carbs => 'Kulhydratit';

  @override
  String get fat => 'Fedt';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Imeq';

  @override
  String get steps => 'Trinsit';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'pund';

  @override
  String get centimeters => 'cm.-iupput';

  @override
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'kl';

  @override
  String get minutes => '10.00.00';

  @override
  String get serving => 'Kiffartuussineq';

  @override
  String get servings => 'Serverit';

  @override
  String get serving_size => 'Servering Annertussuseq';

  @override
  String get per_100g => '100g-imut ataatsimut';

  @override
  String get india => 'Indiami';

  @override
  String get asia => 'Aasiaat';

  @override
  String get europe => 'Europami';

  @override
  String get middle_east => 'Mellemøsten';

  @override
  String get africa => 'Afrikami';

  @override
  String get americas => 'Amerikami';

  @override
  String get home_title => 'Angerlarsimaffik';

  @override
  String get home_greeting_morning => 'Ullaakkut';

  @override
  String get home_greeting_afternoon => 'Ulloq nuannersoq';

  @override
  String get home_greeting_evening => 'Unnuk nuannersoq';

  @override
  String get home_streak_title => 'Naasut streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ullut ingerlaneranni',
      one: '1 ulloq streak',
      zero: '0 ullut streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Ikuallanneqarpoq';

  @override
  String get home_calories_budget => 'Kaloriinik aningaasartuutit';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal-it sinneruttut';
  }

  @override
  String get home_water_title => 'Ulluinnarni Hydraterneq';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Trin Pisuppoq';

  @override
  String get home_quick_actions => 'Suliassat sukkasuumik';

  @override
  String get home_log_meal => 'Log Nerisassaq';

  @override
  String get home_log_water => 'Log Imeq';

  @override
  String get home_log_workout => 'Log Timersorneq';

  @override
  String get home_log_weight => 'Log Oqimaassuseq';

  @override
  String get home_insights_title => 'Ullumikkut Paasissutissat';

  @override
  String get home_quote =>
      'Peqqissumik toqqakkat mikisut allanngortitsinernik pilersitsisarput.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI-mik sungiusaasuq';

  @override
  String get home_surroundings => 'Eqqaani & Luft';

  @override
  String get home_notifications => 'Nalunaaruteqarneq';

  @override
  String get home_daily_score => 'Ulluinnarni Peqqissutsimut Point';

  @override
  String get home_view_all => 'Tamaasa takukkit';

  @override
  String get food_diary_title => 'Nerisassat Ullorsiutiat';

  @override
  String get food_breakfast => 'Ullaakkorsiorneq';

  @override
  String get food_lunch => 'Ullup-qeqqanut';

  @override
  String get food_dinner => 'Unnukkorsiorneq';

  @override
  String get food_snacks => 'Nerisassat';

  @override
  String get food_add_food => 'Add Nerisassat';

  @override
  String get food_edit_food => 'Edit Nerisassat';

  @override
  String get food_add_breakfast => 'Ilanngukkit Morgenmad';

  @override
  String get food_add_lunch => 'Ullup-qeqqanut ilanngukkit';

  @override
  String get food_add_dinner => 'Add Unnukkorsiorneq';

  @override
  String get food_add_snack => 'Snack ilanngukkit';

  @override
  String get food_total_calories => 'Katillugit Kaloriit';

  @override
  String get food_empty_meal =>
      'Nerisassat tassunga suli nerisassat nalunaarsorneqarsimanngillat';

  @override
  String get food_empty_diary =>
      'Ulloq manna nerisassanik nalunaarsortoqanngilaq';

  @override
  String get food_log_first_meal =>
      '+ tooruk nerisassat mamartut siulliit nalunaarsorniarlugit';

  @override
  String get food_quick_add => 'Sukkanniut ilanngussaq';

  @override
  String get food_search_hint => 'Nerisassat, paarnaq, dal, roti...';

  @override
  String get food_custom_recipe => 'Nerisassat & Nerisassiorneq';

  @override
  String get food_scan_barcode => 'Scan Stregkode';

  @override
  String get food_camera_scan => 'AI Nerisassanik Skanner';

  @override
  String get food_recent => 'Nerisassat kingulliit';

  @override
  String get food_favourites => 'Favoritit';

  @override
  String get food_macro_summary => 'Makronutrientinik agguaassineq';

  @override
  String get food_delete_meal_confirm =>
      'Qularnanngilaq atortoq una peerniarlugu?';

  @override
  String get food_item_deleted => 'Nerisassaq peerneqarpoq';

  @override
  String get food_remaining => 'sinnerusoq';

  @override
  String get food_consumed => 'atuineq';

  @override
  String food_of_target(Object target) {
    return '$target kcal-inik annertussusilik';
  }

  @override
  String get foodSearch_title => 'Ujartuineq Nerisassat';

  @override
  String get foodSearch_scan_barcode => 'Scan Stregkode';

  @override
  String get foodSearch_take_photo => 'Snap Nerisassat Assilisaq';

  @override
  String get foodSearch_custom_food => 'Nerisassanik Pilersitsineq';

  @override
  String get foodSearch_recent_searches => 'Kingullermik Ujaasinerit';

  @override
  String get foodSearch_popular => 'Nerisassat nuannarineqarluartut';

  @override
  String get foodSearch_no_results =>
      'Nerisassat ujaasinernut naleqquttut peqanngillat';

  @override
  String get barcode_title => 'Stregkode-mik scanneri';

  @override
  String get barcode_align =>
      'Kamerap qalipaataata iluani stregkode-mik naleqqussaaneq';

  @override
  String get barcode_not_found =>
      'Nioqqutissaq paasissutissaavimmi nassaarineqanngilaq';

  @override
  String get barcode_premium_feature =>
      'Stregkode-mik scannerneq Bloomi Pro atorlugu atorneqarsinnaavoq';

  @override
  String get camera_title => 'AI Nerisassanik Skanner';

  @override
  String get camera_tap_hint => 'Nerisassat ersarissumik assilisassiariuk';

  @override
  String get camera_analysing => 'Nerisassanik plademik misissuineq...';

  @override
  String get camera_detected => 'Nioqqutissat paasineqarsimasut';

  @override
  String get camera_flash => 'Flash-imik allanngortitsigit';

  @override
  String get camera_retake => 'Assilisaq Retake';

  @override
  String get camera_confirm_food => 'Uppernarsaruk Nioqqutissat';

  @override
  String get customFood_title => 'Nerisassat & Nerisassiorneq';

  @override
  String get customFood_name_hint => 'Nerisassaq imaluunniit atortussap aqqa';

  @override
  String get customFood_calories_hint => 'Kaloriit (kcal)';

  @override
  String get customFood_protein_hint => 'Proteini (g)';

  @override
  String get customFood_carbs_hint => 'Kulhydratit (g)';

  @override
  String get customFood_fat_hint => 'Fedt (g)';

  @override
  String get customFood_save => 'Save Recept';

  @override
  String get water_tracker_title => 'Imermik malinnaasoq';

  @override
  String get water_daily_target => 'Ullormut Hydraterineq Anguniagaq';

  @override
  String get water_logged_today => 'Ullumikkut Logged';

  @override
  String get water_add_glass => '+250 ml Igalaaq';

  @override
  String get water_add_bottle => '+500 ml Flaske';

  @override
  String get water_custom_amount => 'Aningaasat atuuttut';

  @override
  String get water_reminder_tip =>
      'Ulloq naallugu imeq imertaruk, nukissaq toqqissisimasumik pissarsiariniarlugu.';

  @override
  String water_logged_toast(Object amount) {
    return 'Log $amount ml imeq 💧';
  }

  @override
  String get workout_title => 'Timersorneq Log';

  @override
  String get workout_add_exercise => 'Timersorneq ilanngukkit';

  @override
  String get workout_cardio => 'Uummat';

  @override
  String get workout_strength => 'Nukittussuseq';

  @override
  String get workout_yoga => 'Yoga & Pisinnaassuseqarneq';

  @override
  String get workout_duration => 'Sivisussusaa';

  @override
  String get workout_intensity => 'Intensiteti';

  @override
  String get workout_calories_burned => 'Kaloriit Ikuallanneqarput';

  @override
  String get workout_empty => 'Ullumikkut sungiusartoqanngilaq';

  @override
  String get workout_save_success => 'Workout iluatsilluartumik annaaneqarpoq!';

  @override
  String get workout_type => 'Timersorneq Type';

  @override
  String get workout_notes => 'Oqaaseqaatit & Eqqarsaatit';

  @override
  String get health_overview_title => 'Peqqinneq & Inuunermi';

  @override
  String get health_heart_rate => 'Uummat Pulsi';

  @override
  String get health_blood_oxygen => 'Aqqani sulfidi (SpO2)';

  @override
  String get health_blood_pressure => 'Blodtryk';

  @override
  String get health_blood_glucose => 'Aqqani glukose';

  @override
  String get health_body_temperature => 'Timiup kissarnera';

  @override
  String get health_sleep_tracking => 'Sinnattumik malinnaaneq';

  @override
  String get health_weight_tracking =>
      'Oqimaaqatigiinneq & Timimik sananeqaateqarneq';

  @override
  String get health_waist_hip => 'Talje-til-Hip-Ratio';

  @override
  String get health_devices_hub => 'Atortut & Smartur Hub';

  @override
  String get health_sync_now => 'Peqqissutsimut paasissutissat synkroniseriuk';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Kingullermik synkroniseqartoq: $time';
  }

  @override
  String get health_manual_entry => 'Manual Peqqissutsimut Allagartaq';

  @override
  String get health_metric_detail => 'Metrikkimik kisitsisit';

  @override
  String get health_connected_sensors => 'Peqqissutsimut Sensorit Attaveqartut';

  @override
  String get plan_title => 'Ullormut Pilersaarut';

  @override
  String get plan_weekly_title =>
      'Sapaatip akunnerani Peqqissutsimut Pilersaarut';

  @override
  String get plan_calorie_target => 'Kaloriinik anguniagaq';

  @override
  String get plan_water_target => 'Hydrateringsmål';

  @override
  String get plan_step_target => 'Trin Siunertaq';

  @override
  String get plan_sleep_target => 'Sinnattoq Target';

  @override
  String get plan_meal_suggestions => 'Nerisassat siunnersuutaat';

  @override
  String get plan_healthy_habits => 'Peqqissumik ileqqut & Tips';

  @override
  String get plan_coach_advice => 'Bloomi AI-mik sungiusaasutut siunnersuutit';

  @override
  String get plan_generated_title =>
      'Ullormut pilersaarusiorneq nammineq piumassutsimik';

  @override
  String get profile_title => 'Profili';

  @override
  String get profile_edit => 'Profili allanngortiguk';

  @override
  String get profile_name => 'Aqqa';

  @override
  String get profile_age => 'Ukiut';

  @override
  String get profile_gender => 'Køn';

  @override
  String get profile_height => 'Højde';

  @override
  String get profile_weight => 'Oqimaaqatigiinneq';

  @override
  String get profile_goal => 'Anguniagaq pingaarneq';

  @override
  String get profile_activity_level => 'Suliassaqarfimmi Niveau';

  @override
  String get profile_stats => 'Uanga Peqqissutsimut Statistik';

  @override
  String get profile_saved => 'Profili iluatsilluartumik nutarterneqarpoq';

  @override
  String get profile_bmi => 'Timikkut oqimaassuseq (BMI)';

  @override
  String get profile_membership => 'Ilaasortanngorneq';

  @override
  String get settings => 'Inniminniinerit';

  @override
  String get preferences_habits => 'PISSARSIAT & PISSARSIARINEQ';

  @override
  String get appearance_theme => 'Isikkoq & Tema';

  @override
  String get appearance_theme_sub =>
      'Taartoq, Qaamasoq, Systemmodus & App-ip tunuliaqutaa toqqagassat';

  @override
  String get permissions => 'Akuersissutit & Systemimut isersinnaaneq';

  @override
  String get permissions_sub =>
      'Peqqissutsimut attaveqarneq, trinsensorit, GPS, nalunaarutit & Kamera';

  @override
  String get reminders_notifications =>
      'Eqqaatissiissutit & Nalunaarutiginninnerit';

  @override
  String get reminders_sub =>
      'Nerisaqarnerup piffissaa, imeq, oqimaassutsimik check-in & unnuinermut eqqaamasassanik';

  @override
  String get units_of_measurement => 'Mittarfiit Unitit';

  @override
  String get units_sub =>
      'Mittarfik (kg, cm, ml, km) imaluunniit imperial (pund, ft/in, fl oz)';

  @override
  String get app_language => 'App Oqaatsit';

  @override
  String get language_sub =>
      'Tuluttut, हिन्दी (hindi), hingliskisut & 195+ nunarsuarmi oqaatsit';

  @override
  String get home_screen_widgets => 'Angerlarsimaffimmi Widgetit';

  @override
  String get widgets_sub =>
      'Android-imik atortut: Hub, Trin, Imeq, Nerisassat & Maskot';

  @override
  String get wear_os_watch_app => 'OS-imik Ulloriarsiorneq App-imik atuineq';

  @override
  String get wear_os_sub =>
      'Smartwatch-imik ilaqutariit, fliser, ajornartorsiutit & inuunermi pingaaruteqartut';

  @override
  String get goals_wellness => 'ANGUNERSAAT & PISSARSIARSIORNERMUT PAASISSAQ';

  @override
  String get nutrition_targets => 'Nerisaqarnermut Anguniagassat & Makro Split';

  @override
  String get nutrition_targets_sub =>
      'Kaloriinik anguniagaq, proteini, kulhydratit, fedt & imermik anguniagaq';

  @override
  String get weekly_recap => 'Sapaatip akunnerani Wellness Recap';

  @override
  String get weekly_recap_sub =>
      'Ullut 7-it kaloriinik agguaqatigiissillugu, makro-ratio & ulloq pitsaanerpaaq';

  @override
  String get streaks_milestones => 'Streaks & Milestenit';

  @override
  String get streaks_sub => 'Aktiv blomsterstreaks, badges & angusat';

  @override
  String get connected_devices => 'ATTAVEQARTUT & EKOSYSTEM';

  @override
  String get devices_hub => 'Atortut & Smartur Hub';

  @override
  String get devices_hub_sub =>
      'Peqqissutsimut attaveqarneq, Galaxy-ur, Pixel-ur, Garmin';

  @override
  String get surroundings_weather => 'Eqqaani & Sila';

  @override
  String get surroundings_sub =>
      'Silaannaap pitsaassusaa (AQI), UV-indeksi & silap pissusaata allanngoriartorneranut siunnersuutit';

  @override
  String get bloomi_pro => 'Bloomi Pro-mik pisartagaqarneq';

  @override
  String get bloomi_pro_sub =>
      'AI-mik pilersaarummik sungiusaasuq, hjemmeskærmimi widgetit 5-it & pingaaruteqartunik malinnaaneq';

  @override
  String get about_security => 'PILLUGIT & ISULLANNEQ';

  @override
  String get about_bloomi => 'Bloomi pillugu';

  @override
  String get about_bloomi_sub =>
      'Immikkuualuttut sanaartorneq, saqqummersitsineq, tunniussineq';

  @override
  String get privacy_policy => 'Personvernpolitikki';

  @override
  String get privacy_policy_sub =>
      'Offline-siullermik, atortumi paasissutissanik sanaartorneq';

  @override
  String get terms_conditions => 'Atukkat & Piumasaqaatit';

  @override
  String get terms_conditions_sub =>
      'Sullissinermut piumasaqaatit aamma wellness-imut najoqqutassat';

  @override
  String get delete_account => 'Konto & Data-t piiakkit';

  @override
  String get delete_account_sub =>
      'Sumiiffinni SQLite-data-t aamma cloud-imi sillimmasiissutit utertinneqarsinnaanngitsumik piiarsinnaavatit';

  @override
  String get healthy_habits =>
      'Pilersitsigit sapinngisamik, piujuartumik wellness-imik ileqqut';

  @override
  String get all_logs => 'Uanga malinnaavigineqarsimasut Data & Logs';

  @override
  String get search_language =>
      'Oqaatsit imaluunniit nunap inoqqaavisa allattorsimaffiat malillugu ujarlerneq...';

  @override
  String get languages_available => 'Oqaatsit Atorneqarsinnaasut';

  @override
  String get no_matching_languages =>
      'Oqaatsit naleqquttut nassaarineqanngillat';

  @override
  String get try_searching =>
      'Nunap inoqqaavisa allattorsimaffiat imaluunniit tuluttut allattorsimaffik atorlugu ujarlerneq misilikkit';

  @override
  String get partially_translated => 'Ilaatigut nutserneqarsimasoq';

  @override
  String get complete_translation => 'Tamakkiisoq';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Oqaatsit $name-mut inissinneqarput ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Eqqaani & Avatangiisit';

  @override
  String get surroundings_aqi => 'Silaannaap pitsaassusaanik indeksi';

  @override
  String get surroundings_uv => 'UV-Indeksi';

  @override
  String get surroundings_temp => 'Kissarneq';

  @override
  String get surroundings_humidity => 'Imermik';

  @override
  String get surroundings_hydration_advice =>
      'Ullumikkut silap pissusaata allanngoriartornerani hydraterluartarit.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Ujartuineq Nerisassat';

  @override
  String get food_quick_barcode => 'Scan Stregkode 👑';

  @override
  String get food_quick_water => 'Imeq ilanngukkit';

  @override
  String get food_quick_custom => 'Nerisassat naleqquttut';

  @override
  String get surroundings_good => 'Pitsaasoq';

  @override
  String get surroundings_moderate => 'Nalinginnaasumik';

  @override
  String get surroundings_unhealthy => 'Peqqinnanngitsoq';

  @override
  String get notifications_title => 'Nalunaarutiginninnerit & Alertitsinerit';

  @override
  String get notifications_empty => 'Nutaanik nalunaaruteqartoqanngilaq';

  @override
  String get notifications_mark_read =>
      'Tamarmik Atuarsimasutut nalunaarutigiuk';

  @override
  String get notifications_clear => 'Tamarmik erseqqissarlugit';

  @override
  String get reminders => 'Eqqaatissiissut Inniminniinerit';

  @override
  String get notifications => 'Nalunaaruteqarneq';

  @override
  String get reminders_breakfast_title => 'Morgenmad Eqqaatissiissut 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Ullaakkut! Piffissanngorpoq $time -mi peqqissaartumik ullaakkorsiornissaq.';
  }

  @override
  String get reminders_lunch_title => 'Ullup-qeqqanut Eqqaatissiissut 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pause aamma $time -mi eqqissisimasumik, eqqarsaatersorluni nerisassiorneq nuannaarutigiuk.';
  }

  @override
  String get reminders_dinner_title => 'Unnukkorsiornermut Eqqaatissiissut 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Piffissanngorpoq unnukkorsiornissaq qaqutigoortoq, naammagisimaarnartoq $time -mi.';
  }

  @override
  String get reminders_water_title => 'Fukterings Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Piffissanngorpoq imermik nutaamik imigassartornissaq! ($time)';
  }

  @override
  String get reminders_weight_title => 'Sapaatip akunnerani Weigh-in ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Sapaatip akunnerani timimik misissuinerit Bloomimi ( $time ) malinnaavigisinnaavatit.';
  }

  @override
  String get reminders_sleep_title => 'Unnuinermi Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Eqqissisimallutit eqqissisimallutit sinilluarnissaq piareersarlugu ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomimut tikilluaqqusaagut';

  @override
  String get onboard_sub =>
      'Illit ikinngutaasoq, offline-siullertut peqqissutsimut nerisaqarnermullu inngiaqatitit.';

  @override
  String get onboard_get_started => 'Aallartitsigit';

  @override
  String get onboard_sign_in => 'Allatsigit';

  @override
  String get onboard_skip => 'Aallarit';

  @override
  String get onboard_choose_goal =>
      'Wellness-imik anguniagassat pingaarnerpaaq sunaava?';

  @override
  String get onboard_goal_weight_loss => 'Sakkukitsumik oqimaassuseq';

  @override
  String get onboard_goal_muscle => 'Muskel-inik pissarsineq & Nukissaq';

  @override
  String get onboard_goal_energy => 'Ulluinnarni Energi & Vitaliteti';

  @override
  String get onboard_goal_habits => 'Peqqissumik Eqqarsaatigalugu Nerisaqarneq';

  @override
  String get onboard_about_you => 'Nammineq Pillugu Oqaluttuaruk';

  @override
  String get onboard_lifestyle => 'Ulluinnarni Rutini';

  @override
  String get onboard_permissions_title =>
      'Akuersissutit & Systemimut isersinnaaneq';

  @override
  String get onboard_permissions_sub =>
      'Synkroniseringsstep-inut, timersornernut, aamma eqqaamasassanut isertitsigit.';

  @override
  String get onboard_plan_ready_title => 'Pilersaarut Piareersimavoq!';

  @override
  String get onboard_plan_ready_sub =>
      'Nerisaqarnermut peqqissutsimullu aqqutissiuussineq ajunngitsoq, nammineq piumassutsimik suliarisimavarput.';

  @override
  String get onboard_enter_bloomi => 'Bloomimut iserit';

  @override
  String get insights_weekly_report => 'Sapaatip akunnerani Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Ulloq pitsaanerpaamik ataqatigiissaarineq: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestenit';

  @override
  String insights_unlocked_on(Object date) {
    return '$date-mi ammarneqarpoq.';
  }

  @override
  String get insights_keep_going => 'Ineriartorneq fantastisk ingerlateqqiguk!';

  @override
  String get widgets_title => 'Angerlarsimaffimmi Widgetit';

  @override
  String widgets_active_count(Object count) {
    return 'Atortut atuuttut: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Peqqissutsimut Ingerlatsivik';

  @override
  String get widgets_steps_title => 'Trin & Aktiv Ring';

  @override
  String get widgets_water_title => 'Hydraterineq Sukkanniut Log';

  @override
  String get widgets_mascot_title => 'Bloomi Maskot-imik Inuussutissarsiorneq';

  @override
  String get wear_os_title => 'OS Smartur-imik atuineq';

  @override
  String get wear_os_connected => 'Watch-imut atassuteqarpoq';

  @override
  String get wear_os_sync => 'Synkronisering Uddata';

  @override
  String get theme_title => 'Isikkoq & Tema';

  @override
  String get theme_mode => 'Temamodus';

  @override
  String get theme_light => 'Qinngorneq';

  @override
  String get theme_dark => 'Taartoq';

  @override
  String get theme_system => 'Systemip atorneqarnera';

  @override
  String get theme_background_palette => 'Tungaviusumik palette';

  @override
  String get units_title => 'Mittarfiit Unitit';

  @override
  String get units_metric => 'Mittarfik (kg, cm, ml)';

  @override
  String get units_imperial => 'Naalagaaffik (pund, in, fl oz)';

  @override
  String get home_unable_load => 'Dashboardimik ikkussinnaanngilaq';

  @override
  String get home_health_permission_req =>
      'Peqqissutsimut attaveqarnermut akuersissut pisariaqarpoq';

  @override
  String get home_health_permission_desc =>
      'Bloomip Health Connect-imik akuersissummik piumasaqarpoq, iliuusissat ilumoortut, uummallunneq, aamma mobilhjemminut widgetit piffissaq eqqorlugu synkroniserisinnaallugit.';

  @override
  String get home_allow_health => 'Peqqissutsimut Attaveqarneq Akueriuk';

  @override
  String get home_ready_mindful_day =>
      'Ulloq eqqarsaatersorluni piareersimavit? ✨';

  @override
  String get home_quick_add => 'Sukkanniut ilanngussaq';

  @override
  String get home_live_gps => 'GPS-imik toqqaannartumik';

  @override
  String get home_calories_remaining_label => 'KALORIIT SINNERSUUT';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Nerineqartoq: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Imermik malinnaasoq 💧-mut toqqaruk';

  @override
  String get home_water_goal_reached => 'Ullormut anguniagaq anguneqarpoq 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ullormut anguniagaq';
  }

  @override
  String get home_details => 'Immikkuualuttut';

  @override
  String get home_upgrade_plan_desc =>
      'Ulluinnarni anguniakkanik nammineq piumassutsimik & AI-mik pilersaarut ammarniarlugu nutarterineq';

  @override
  String get home_unlock => 'Avammut 👑';

  @override
  String get home_quick_log_hint =>
      'Wellness-imik allaaserisaq sukkasuumik allattorlugu';

  @override
  String get food_serving_size => 'Servering Annertussuseq';

  @override
  String get food_serving_grams => 'Kiffartuussineq (g)';

  @override
  String get food_number_servings => 'Serverit amerlassusaat';

  @override
  String get food_calories_per_serving => 'Kaloriit portionimut ataatsimut';

  @override
  String get food_recipe_ingredients => 'Ingredienserit';

  @override
  String get food_recipe_add_ingredient => 'Ingrediens ilanngukkit';

  @override
  String get food_recipe_directions => 'Ilitsersuutit & Nalunaarutit';

  @override
  String get food_recipe_total => 'Total Recept Nerisassat';

  @override
  String get food_recipe_per_serving => 'Per Servering Nerisassat';

  @override
  String get food_recipe_saved_toast =>
      'Nerisassat naleqquttut iluatsilluartumik annaaneqarput!';

  @override
  String get food_barcode_found => 'Nioqqutissaq Nassaarineqarpoq!';

  @override
  String get food_barcode_not_found_desc =>
      'Stregkode taanna ammasumik paasissutissaavimmi nassaarisinnaasimanngilagut. Nerisassatut ilanngussinnaavat.';

  @override
  String get food_add_custom_btn => 'Nerisassat Custom-it ilanngukkit';

  @override
  String get food_scan_again => 'Scan-erlugu';

  @override
  String get food_review_items => 'Review Nerisassat Nassaarneqartut';

  @override
  String get food_review_hint =>
      'Amerlassutsit naleqqussarlugit imaluunniit tunniunneqanngitsut peerlugit';

  @override
  String get food_log_selected => 'Log Nerisassat Toqqakkat';

  @override
  String get food_favourites_title => 'Nerisassat nuannarinerpaasat';

  @override
  String get food_recent_title => 'Nerisassat kingulliit';

  @override
  String get food_no_favourites =>
      'Suli nerisassat nuannarinerpaasavut. Uani annaasaqarnissamut nerisassat suulluunniit pillugit uummat tooruk.';

  @override
  String get food_no_recents =>
      'Nerisassat kingullermik nalunaarsorneqarsimasut nassaarineqanngillat.';

  @override
  String get food_nutrition_details_title =>
      'Ulluinnarni Nerisaqarnermut Detaljer';

  @override
  String get food_macro_protein_label => 'Proteinimik avitseqatigiinneq';

  @override
  String get food_macro_carbs_label => 'Kulhydratit Avinneqarnerat';

  @override
  String get food_macro_fat_label => 'Fedt-imik avitseqatigiinneq';

  @override
  String get food_macro_fiber_label => 'Fiber-ip aserorneqarnera';

  @override
  String get food_daily_target_comparison => 'Target Naligiissitsineq';

  @override
  String food_target_label(Object target) {
    return 'Anguniagaq: $target';
  }

  @override
  String get food_edit_entry => 'Edit Ullorsiutit allattorsimaffiat';

  @override
  String get food_delete_entry => 'Allattoq piiaruk';

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
    return '$current aamma $target ml';
  }

  @override
  String get water_intake_history => 'Ullumikkut Imeq Logs';

  @override
  String get water_no_logs_today =>
      'Ullumikkut suli imeq nalunaarsorneqanngilaq. Hydratere aammalu quick add-knappi tooruk!';

  @override
  String get water_adjust_goal => 'Ullormut anguniagaq naleqqussarlugu';

  @override
  String get health_connect_banner => 'Peqqissutsimut attaveqartoq';

  @override
  String get health_vitals_summary => 'Ulluinnarni Peqqissutsimut Vitals';

  @override
  String get health_latest_heart_rate => 'Kingullermik Uummat pulsi';

  @override
  String get health_latest_bp => 'Blodtryk';

  @override
  String get health_latest_spo2 => 'Blod Sulligen';

  @override
  String get health_latest_glucose => 'Aqqani glukose';

  @override
  String get health_latest_weight => 'Oqimaaqatigiinneq';

  @override
  String get health_latest_sleep => 'Siniffiup Sivisussusaa';

  @override
  String get health_add_manual => 'Manuelt Måling ilanngullugu';

  @override
  String get health_history_trends => 'Oqaluttuarisaanermi pissutsit';

  @override
  String get health_sync_success =>
      'Peqqissutsimut paasissutissat iluatsilluartumik synkroniseerneqarput!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours nalunaaquttap ingerlanerani $mins minutsit';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm pissuseq';
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
    return '$val mg/dl';
  }

  @override
  String get health_devices_title => 'Atortut attaveqarfiusut & Wearables';

  @override
  String get health_devices_desc =>
      'Smartwatchit paarlattuanik, timersornermut malinnaaviit, aamma peqqissutsimut maluginiagassat aqukkit.';

  @override
  String get health_workout_editor_title => 'Edit Timersorneq';

  @override
  String get health_workout_name_label => 'Timersorneq Aqqa';

  @override
  String get health_workout_duration_label => 'Sivisussusaa (minutsit)';

  @override
  String get health_workout_calories_label =>
      'Naatsorsuutigineqartut kaloriit (kcal)';

  @override
  String get health_workout_date_label => 'Ulloq aamma nalunaaqutaq';

  @override
  String get plan_daily_wellness_roadmap => 'Illit Personlig Aqqutissiuussineq';

  @override
  String get plan_morning_routine => 'Ullaap tungaani Rutine';

  @override
  String get plan_afternoon_routine => 'Ullup qeqqanut Peqqinneq';

  @override
  String get plan_evening_routine => 'Unnukkut Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI-mik sungiusaasuq';

  @override
  String get plan_weekly_overview => 'Ullut 7-it Peqqissutsimut Fokus';

  @override
  String get plan_targets_title => 'Peqqissutsimut Anguniakkat & Anguniagassat';

  @override
  String get plan_calorie_budget_label => 'Ullormut Kaloriinik Budget';

  @override
  String get plan_water_budget_label => 'Ullormut Imeq Target';

  @override
  String get plan_step_budget_label => 'Ullormut Step Anguniagaq';

  @override
  String get plan_macro_split_label => 'Makronutrient-it annertussusaat';

  @override
  String get profile_personal_details => 'Inuttut paasissutissat';

  @override
  String get profile_body_stats => 'Timimik Mittarfeqarneq';

  @override
  String get profile_app_preferences =>
      'Piumasaqaatit & App-ip inissititerneqarnera';

  @override
  String get profile_edit_name_hint => 'Aqqatit';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Højde ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Oqimaassuseq (_PH_0__)';
  }

  @override
  String get profile_edit_age_hint => 'Ukiut';

  @override
  String get profile_gender_male => 'Angut';

  @override
  String get profile_gender_female => 'Arnaq';

  @override
  String get profile_gender_other => 'Allat / Oqannginnissaq piumasaraara';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Timersorneq annikitsumik imaluunniit annikitsumik)';

  @override
  String get profile_activity_light =>
      'Qinngasaartumik (ullut 1-3/sapaatip akunnerani)';

  @override
  String get profile_activity_moderate =>
      'Annertuumik Aktiv (ullut 3-5/sapaatip akunnerani)';

  @override
  String get profile_activity_very =>
      'Annertuumik aallaaveqartoq (ullut 6-7/sapaatip akunnerani)';

  @override
  String get settings_wear_os_header => 'OS-imik ilaasortaq App-imik atuineq';

  @override
  String get settings_wear_os_desc =>
      'Wear OS-imi ur-imut Bloomi-mik fliser aamma komplikation ikkukkit, kaloriit, imermik aamma trin-inik qiviarnissamut.';

  @override
  String get settings_widgets_header => 'Android-imut atortut atorsinnaasut';

  @override
  String get settings_widgets_desc =>
      'Piffissaq eqqorlugu widgetit atortup hjemmeskærmianut ikkukkit, piaartumik nutarterisoqarnissaanut.';

  @override
  String get settings_about_header => 'Bloomi pillugu';

  @override
  String get settings_about_version => 'Saqqummersitsineq 1.0.0';

  @override
  String get settings_about_build => '100-nik sanaartorneq';

  @override
  String get settings_about_credits =>
      'Eqqarsaatigilluarlugu, peqqissumik inuuneqarnissamut isumaginninnikkut suliarineqarsimavoq.';

  @override
  String get settings_terms_header => 'Piumasaqaatit aamma Piumasaqaatit';

  @override
  String get settings_privacy_header => 'Personvernpolitikki';

  @override
  String get settings_delete_header => 'Konto & Data-t piiakkit';

  @override
  String get settings_delete_warning =>
      'Suliaq taanna unitsinneqarsinnaanngilaq. Nerisassat, timersornerit, vitalit, aamma profilit tamarmik piujuartumik piiarneqassapput.';

  @override
  String get settings_delete_confirm_btn => 'Permanent-imik piiaaneq';

  @override
  String get onboard_welcome_headline => 'Bloomimut tikilluaqqusaavutit ✨';

  @override
  String get onboard_welcome_tagline =>
      'Sapinngisamik, eqqarsaatersorluni wellness-imik malinnaaneq inuunerpit eqqaani sananeqarsimasoq.';

  @override
  String get onboard_step_about => 'Illit pillugu';

  @override
  String get onboard_step_goals => 'Anguniakkatit';

  @override
  String get onboard_step_lifestyle => 'Ulluinnarni ileqqut';

  @override
  String get onboard_step_permissions => 'Akuersissutit';

  @override
  String get onboard_step_plan => 'Piareersimavugut!';

  @override
  String get onboard_health_connect_perm => 'Peqqissutsimut Attaveqarneq';

  @override
  String get onboard_step_sensors_perm => 'Trin-imik naatsorsuinermik Sensor';

  @override
  String get onboard_notif_perm =>
      'Mindful Eqqaatissiissutit & Nalunaarutiginninnerit';

  @override
  String get onboard_camera_perm => 'Kamera (Stregkode & Nerisassanik Scanner)';

  @override
  String get onboard_grant_permissions => 'Akuersissutinik tunniussineq';

  @override
  String get onboard_continue_dashboard => 'Avammut Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydraterineq Nukiit';

  @override
  String get notif_channel_hydration_desc =>
      'Ulloq naallugu imermik eqqaamasassanik';

  @override
  String get notif_channel_nutrition_name =>
      'Nerisassat & Nerisaqarnermut Eqqaatissiissutit';

  @override
  String get notif_channel_nutrition_desc =>
      'Ullaakkorsiornermut, ullup-qeqqanut, unnukkorsiornermullu eqqaamasassanik mianersoqqussut';

  @override
  String get notif_channel_steps_name => 'Trin Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Ulluinnarni step-target-it anguneqarneranni nalliuttorsiornerit';

  @override
  String get notif_channel_vitals_name => 'Peqqinneq & Vitals Misissuinerit';

  @override
  String get notif_channel_vitals_desc =>
      'Oqimaaqatigiissitsineq aamma unnuinermi wind-down-imik eqqaamasassanik';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Unnuineq 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Nerisassaq';

  @override
  String get language => 'Oqaatsit';

  @override
  String get share => 'Dere';

  @override
  String common_days(Object count) {
    return '$count d matuma siorna';
  }
}
