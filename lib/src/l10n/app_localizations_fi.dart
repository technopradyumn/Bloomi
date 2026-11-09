// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Kotiin';

  @override
  String get nav_today => 'Tänään';

  @override
  String get nav_plan => 'Suunnittele';

  @override
  String get nav_food => 'Ruokaa';

  @override
  String get nav_food_diary => 'Ruokapäiväkirja';

  @override
  String get nav_workout => 'Harjoitusloki';

  @override
  String get nav_health => 'Terveys';

  @override
  String get nav_profile => 'Profiili';

  @override
  String get save => 'Tallentaa';

  @override
  String get cancel => 'Peruuttaa';

  @override
  String get delete => 'Poistaa';

  @override
  String get edit => 'Muokata';

  @override
  String get done => 'Tehty';

  @override
  String get close => 'Sulje';

  @override
  String get back => 'Takaisin';

  @override
  String get next => 'Seuraavaksi';

  @override
  String get continue_btn => 'Jatka';

  @override
  String get confirm => 'Vahvista';

  @override
  String get search => 'Haku';

  @override
  String get filter => 'Suodata';

  @override
  String get all => 'Kaikki';

  @override
  String get active => 'Aktiivinen';

  @override
  String get today => 'Tänään';

  @override
  String get yesterday => 'eilen';

  @override
  String get tomorrow => 'Huomenna';

  @override
  String get add => 'Lisää';

  @override
  String get remove => 'Poista';

  @override
  String get refresh => 'Päivitä';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get error => 'Virhe';

  @override
  String get success => 'Menestystä';

  @override
  String get loading => 'Ladataan...';

  @override
  String get no_data => 'Tietoja ei ole saatavilla';

  @override
  String get offline => 'Offline-tila';

  @override
  String get offline_sub =>
      'Muutokset synkronoidaan, kun yhteys muodostetaan uudelleen';

  @override
  String get undo => 'Kumoa';

  @override
  String get portion => 'Osa';

  @override
  String get quantity => 'Määrä';

  @override
  String get unit => 'Yksikkö';

  @override
  String get clear => 'Selkeä';

  @override
  String get select => 'Valitse';

  @override
  String get apply => 'Käytä';

  @override
  String get reset => 'Nollaa';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Kyllä';

  @override
  String get no => 'Ei';

  @override
  String get optional => 'Valinnainen';

  @override
  String get calories => 'Kalorit';

  @override
  String get protein => 'Proteiini';

  @override
  String get carbs => 'Hiilihydraatteja';

  @override
  String get fat => 'Lihava';

  @override
  String get fiber => 'Kuitu';

  @override
  String get water => 'Vesi';

  @override
  String get steps => 'Vaiheet';

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
  String get inches => 'sisään';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'tuntia';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Tarjoilu';

  @override
  String get servings => 'Annokset';

  @override
  String get serving_size => 'Tarjoilukoko';

  @override
  String get per_100g => 'per 100g';

  @override
  String get india => 'Intia';

  @override
  String get asia => 'Aasiassa';

  @override
  String get europe => 'Euroopassa';

  @override
  String get middle_east => 'Lähi-idässä';

  @override
  String get africa => 'Afrikka';

  @override
  String get americas => 'Amerikka';

  @override
  String get home_title => 'Kotiin';

  @override
  String get home_greeting_morning => 'Hyvää huomenta';

  @override
  String get home_greeting_afternoon => 'Hyvää iltapäivää';

  @override
  String get home_greeting_evening => 'Hyvää iltaa';

  @override
  String get home_streak_title => 'Kukkaputki';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivän sarja',
      one: '1 päivän putki',
      zero: '0 päivän sarja',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Poltettu';

  @override
  String get home_calories_budget => 'Kaloribudjetti';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal jäljellä';
  }

  @override
  String get home_water_title => 'Päivittäinen nesteytys';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Askelia kävelletty';

  @override
  String get home_quick_actions => 'Nopeat toiminnot';

  @override
  String get home_log_meal => 'Log Ateria';

  @override
  String get home_log_water => 'Log Vesi';

  @override
  String get home_log_workout => 'Loki harjoitus';

  @override
  String get home_log_weight => 'Tukin paino';

  @override
  String get home_insights_title => 'Tämän päivän oivalluksia';

  @override
  String get home_quote =>
      'Pienet terveelliset valinnat luovat kukoistavia muutoksia.';

  @override
  String get home_ai_coach_tip => 'Bloom AI valmentaja';

  @override
  String get home_surroundings => 'Ympäristö ja ilma';

  @override
  String get home_notifications => 'Ilmoitukset';

  @override
  String get home_daily_score => 'Päivittäiset hyvinvointipisteet';

  @override
  String get home_view_all => 'Näytä kaikki';

  @override
  String get food_diary_title => 'Ruokapäiväkirja';

  @override
  String get food_breakfast => 'Aamiainen';

  @override
  String get food_lunch => 'Lounas';

  @override
  String get food_dinner => 'Illallinen';

  @override
  String get food_snacks => 'Välipaloja';

  @override
  String get food_add_food => 'Lisää Ruoka';

  @override
  String get food_edit_food => 'Muokkaa ruokaa';

  @override
  String get food_add_breakfast => 'Lisää aamiainen';

  @override
  String get food_add_lunch => 'Lisää lounas';

  @override
  String get food_add_dinner => 'Lisää illallinen';

  @override
  String get food_add_snack => 'Lisää välipala';

  @override
  String get food_total_calories => 'Kalorit yhteensä';

  @override
  String get food_empty_meal => 'Tälle aterialle ei ole vielä kirjattu ruokia';

  @override
  String get food_empty_diary => 'Ei aterioita kirjattu tälle päivälle';

  @override
  String get food_log_first_meal =>
      'Napauta + kirjataksesi ensimmäinen herkullinen ateriasi';

  @override
  String get food_quick_add => 'Pikalisäys';

  @override
  String get food_search_hint => 'Etsi ruokia, hedelmiä, dalia, rotia...';

  @override
  String get food_custom_recipe => 'Räätälöity ruoka ja resepti';

  @override
  String get food_scan_barcode => 'Skannaa viivakoodi';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Viimeaikaiset ruoat';

  @override
  String get food_favourites => 'Suosikit';

  @override
  String get food_macro_summary => 'Makroravinteiden jakautuminen';

  @override
  String get food_delete_meal_confirm =>
      'Haluatko varmasti poistaa tämän kohteen?';

  @override
  String get food_item_deleted => 'Ruokatavara poistettu';

  @override
  String get food_remaining => 'jäljellä';

  @override
  String get food_consumed => 'kulutettu';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'Etsi elintarvikkeista';

  @override
  String get foodSearch_scan_barcode => 'Skannaa viivakoodi';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Luo mukautettua ruokaa';

  @override
  String get foodSearch_recent_searches => 'Viimeaikaiset haut';

  @override
  String get foodSearch_popular => 'Suosittuja ruokia';

  @override
  String get foodSearch_no_results => 'Ei hakuasi vastaavia ruokia';

  @override
  String get barcode_title => 'Viivakoodinlukija';

  @override
  String get barcode_align => 'Kohdista viivakoodi kameran kehyksen sisään';

  @override
  String get barcode_not_found => 'Tuotetta ei löydy tietokannasta';

  @override
  String get barcode_premium_feature =>
      'Viivakoodin skannaus on saatavilla Boomi Prolla';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Ota ruokalajistasi selkeä kuva';

  @override
  String get camera_analysing => 'Analysoidaan ruokalautasta...';

  @override
  String get camera_detected => 'Havaitut kohteet';

  @override
  String get camera_flash => 'Vaihda Flash';

  @override
  String get camera_retake => 'Ota valokuva uudelleen';

  @override
  String get camera_confirm_food => 'Vahvista kohteet';

  @override
  String get customFood_title => 'Räätälöity ruoka ja resepti';

  @override
  String get customFood_name_hint => 'Ruoan tai ainesosan nimi';

  @override
  String get customFood_calories_hint => 'Kalorit (kcal)';

  @override
  String get customFood_protein_hint => 'Proteiini (g)';

  @override
  String get customFood_carbs_hint => 'Hiilihydraatit (g)';

  @override
  String get customFood_fat_hint => 'rasva (g)';

  @override
  String get customFood_save => 'Tallenna resepti';

  @override
  String get water_tracker_title => 'Veden seurantalaite';

  @override
  String get water_daily_target => 'Päivittäinen nesteytystavoite';

  @override
  String get water_logged_today => 'Kirjattu tänään';

  @override
  String get water_add_glass => '+250 ml lasia';

  @override
  String get water_add_bottle => '+500 ml pullo';

  @override
  String get water_custom_amount => 'Mukautettu määrä';

  @override
  String get water_reminder_tip =>
      'Juo vettä säännöllisesti koko päivän ajan tasaisen energian saamiseksi.';

  @override
  String water_logged_toast(Object amount) {
    return 'Kirjattu $amount ml vettä 💧';
  }

  @override
  String get workout_title => 'Harjoitusloki';

  @override
  String get workout_add_exercise => 'Lisää harjoitus';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Vahvuus';

  @override
  String get workout_yoga => 'Jooga ja joustavuus';

  @override
  String get workout_duration => 'Kesto';

  @override
  String get workout_intensity => 'Intensiteetti';

  @override
  String get workout_calories_burned => 'Poltetut kalorit';

  @override
  String get workout_empty => 'Ei harjoituksia kirjattu tänään';

  @override
  String get workout_save_success => 'Harjoitus tallennettu onnistuneesti!';

  @override
  String get workout_type => 'Harjoitustyyppi';

  @override
  String get workout_notes => 'Muistiinpanot ja heijastukset';

  @override
  String get health_overview_title => 'Terveys & Vitals';

  @override
  String get health_heart_rate => 'Syke';

  @override
  String get health_blood_oxygen => 'Veren happi (SpO2)';

  @override
  String get health_blood_pressure => 'Verenpaine';

  @override
  String get health_blood_glucose => 'Verensokeri';

  @override
  String get health_body_temperature => 'Kehon lämpötila';

  @override
  String get health_sleep_tracking => 'Unen seuranta';

  @override
  String get health_weight_tracking => 'Paino ja kehon koostumus';

  @override
  String get health_waist_hip => 'Vyötärön ja lantion välinen suhde';

  @override
  String get health_devices_hub => 'Laitteet ja Smartwatch Hub';

  @override
  String get health_sync_now => 'Synkronoi terveystiedot';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Viimeksi synkronoitu: $time';
  }

  @override
  String get health_manual_entry => 'Manuaalinen terveysmerkintä';

  @override
  String get health_metric_detail => 'Mittarin tiedot';

  @override
  String get health_connected_sensors => 'Yhdistetyt terveysanturit';

  @override
  String get plan_title => 'Päiväsuunnitelma';

  @override
  String get plan_weekly_title => 'Viikoittainen hyvinvointisuunnitelma';

  @override
  String get plan_calorie_target => 'Kaloritavoite';

  @override
  String get plan_water_target => 'Nesteytystavoite';

  @override
  String get plan_step_target => 'Step Target';

  @override
  String get plan_sleep_target => 'Nukkumatavoite';

  @override
  String get plan_meal_suggestions => 'Ateriaehdotuksia';

  @override
  String get plan_healthy_habits => 'Terveellisiä tapoja ja vinkkejä';

  @override
  String get plan_coach_advice => 'Bloom AI Coach -suositukset';

  @override
  String get plan_generated_title => 'Henkilökohtainen päiväohjelma';

  @override
  String get profile_title => 'Profiili';

  @override
  String get profile_edit => 'Muokkaa profiilia';

  @override
  String get profile_name => 'Nimi';

  @override
  String get profile_age => 'Ikä';

  @override
  String get profile_gender => 'Sukupuoli';

  @override
  String get profile_height => 'Korkeus';

  @override
  String get profile_weight => 'Paino';

  @override
  String get profile_goal => 'Ensisijainen tavoite';

  @override
  String get profile_activity_level => 'Aktiviteettitaso';

  @override
  String get profile_stats => 'Omat hyvinvointitilastot';

  @override
  String get profile_saved => 'Profiilin päivitys onnistui';

  @override
  String get profile_bmi => 'Painoindeksi (BMI)';

  @override
  String get profile_membership => 'Jäsenyys';

  @override
  String get settings => 'Asetukset';

  @override
  String get preferences_habits => 'ASETUKSET & TAVAT';

  @override
  String get appearance_theme => 'Ulkonäkö ja teema';

  @override
  String get appearance_theme_sub =>
      'Tumma, vaalea, järjestelmätila ja sovelluksen taustaasetukset';

  @override
  String get permissions => 'Käyttöoikeudet ja järjestelmän käyttöoikeudet';

  @override
  String get permissions_sub =>
      'Health Connect, askelanturit, GPS, ilmoitukset ja kamera';

  @override
  String get reminders_notifications => 'Muistutukset ja ilmoitukset';

  @override
  String get reminders_sub =>
      'Ateriaajat, vesi, painon tarkistus ja nukkumaanmenoaikamuistutukset';

  @override
  String get units_of_measurement => 'Mittayksiköt';

  @override
  String get units_sub =>
      'Metrinen (kg, cm, ml, km) tai keisarillinen (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Sovelluksen kieli';

  @override
  String get language_sub =>
      'englanti, हिन्दी (hindi), hinglish ja yli 195 maailmanlaajuista kieltä';

  @override
  String get home_screen_widgets => 'Aloitusnäytön widgetit';

  @override
  String get widgets_sub =>
      'Live Android-widgetit: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Älykellokumppani, laatat, komplikaatiot ja live-vitaalit';

  @override
  String get goals_wellness => 'TAVOITTEET JA HYVINVOINTITIEDOT';

  @override
  String get nutrition_targets => 'Ravitsemustavoitteet ja makrojako';

  @override
  String get nutrition_targets_sub =>
      'Kaloritavoite, proteiini-, hiilihydraatti-, rasva- ja vesitavoite';

  @override
  String get weekly_recap => 'Viikoittainen hyvinvointikatsaus';

  @override
  String get weekly_recap_sub =>
      '7 päivän kalorien keskiarvo, makrosuhde ja paras päivä';

  @override
  String get streaks_milestones => 'Viivat & virstanpylväät';

  @override
  String get streaks_sub => 'Aktiiviset kukkivat juovat, merkit ja saavutukset';

  @override
  String get connected_devices => 'YHDISTETYT LAITTEET & EKOSYSTEEMI';

  @override
  String get devices_hub => 'Laitteet ja Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ympäristö & Sää';

  @override
  String get surroundings_sub =>
      'Ilmanlaatu (AQI), UV-indeksi ja sään kosteutusvinkit';

  @override
  String get bloomi_pro => 'Bloom Pro -tilaus';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 aloitusnäytön widgetiä ja elintoimintojen seuranta';

  @override
  String get about_security => 'TIETOJA JA TURVALLISUUS';

  @override
  String get about_bloomi => 'Tietoja Bloomista';

  @override
  String get about_bloomi_sub =>
      'Rakennuksen tekniset tiedot, versio, määritykset';

  @override
  String get privacy_policy => 'Tietosuojakäytäntö';

  @override
  String get privacy_policy_sub =>
      'Offline-ensin, laitteessa oleva tietoarkkitehtuuri';

  @override
  String get terms_conditions => 'Ehdot';

  @override
  String get terms_conditions_sub => 'Palveluehdot ja hyvinvointiohjeet';

  @override
  String get delete_account => 'Poista tili ja tiedot';

  @override
  String get delete_account_sub =>
      'Poista peruuttamattomasti paikalliset SQLite-tiedot ja pilvivarmuuskopiot';

  @override
  String get healthy_habits =>
      'Rakenna lempeitä, kestäviä hyvinvointitottumuksia';

  @override
  String get all_logs => 'Seuratut tiedot ja lokit';

  @override
  String get search_language => 'Hae kielen tai äidinkielen mukaan...';

  @override
  String get languages_available => 'Saatavilla olevat kielet';

  @override
  String get no_matching_languages => 'Vastaavia kieliä ei löytynyt';

  @override
  String get try_searching =>
      'Kokeile hakea äidinkielen tai englannin kielen oikeinkirjoituksen mukaan';

  @override
  String get partially_translated => 'Osittain käännetty';

  @override
  String get complete_translation => 'Täydellinen';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Kieleksi asetettu $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Ympäristö & ympäristö';

  @override
  String get surroundings_aqi => 'Ilmanlaatuindeksi';

  @override
  String get surroundings_uv => 'UV-indeksi';

  @override
  String get surroundings_temp => 'Lämpötila';

  @override
  String get surroundings_humidity => 'Kosteus';

  @override
  String get surroundings_hydration_advice =>
      'Pysy hyvin nesteytettynä nykyisissä sääolosuhteissa.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Etsi ruokaa';

  @override
  String get food_quick_barcode => 'Skannaa viivakoodi 👑';

  @override
  String get food_quick_water => 'Lisää vettä';

  @override
  String get food_quick_custom => 'Räätälöity ruoka';

  @override
  String get surroundings_good => 'Hyvä';

  @override
  String get surroundings_moderate => 'Kohtalainen';

  @override
  String get surroundings_unhealthy => 'Epäterveellistä';

  @override
  String get notifications_title => 'Ilmoitukset ja hälytykset';

  @override
  String get notifications_empty => 'Ei uusia ilmoituksia';

  @override
  String get notifications_mark_read => 'Merkitse kaikki luetuiksi';

  @override
  String get notifications_clear => 'Tyhjennä kaikki';

  @override
  String get reminders => 'Muistutusasetukset';

  @override
  String get notifications => 'Push-ilmoitukset';

  @override
  String get reminders_breakfast_title => 'Aamupalamuistutus 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Hyvää huomenta! On aika syödä ravitseva aamiainen klo $time.';
  }

  @override
  String get reminders_lunch_title => 'Lounasmuistutus 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pysähdy ja nauti tasapainoisesta, tietoisesta lounaasta klo $time.';
  }

  @override
  String get reminders_dinner_title => 'Illallismuistutus 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Aika kevyelle, tyydyttävälle illalliselle klo $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Aika juoda lasillinen raikasta vettä! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Viikoittainen punnitus ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Seuraa viikoittaisia kehon mittareitasi Bloomissa ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Nukkumaanmenoaika 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Rentoudu ja valmistaudu levolliseen uneen ( $time ).';
  }

  @override
  String get onboard_welcome => 'Tervetuloa Bloomille';

  @override
  String get onboard_sub =>
      'Ystävällinen, offline-tilassa ensimmäinen terveys- ja ravitsemuskumppanisi.';

  @override
  String get onboard_get_started => 'Aloita';

  @override
  String get onboard_sign_in => 'Kirjaudu sisään';

  @override
  String get onboard_skip => 'Ohita';

  @override
  String get onboard_choose_goal =>
      'Mikä on ensisijainen hyvinvointitavoitteesi?';

  @override
  String get onboard_goal_weight_loss => 'Hellävarainen painonpudotus';

  @override
  String get onboard_goal_muscle => 'Lihaslisäys ja -voima';

  @override
  String get onboard_goal_energy => 'Päivittäistä energiaa ja elinvoimaa';

  @override
  String get onboard_goal_habits => 'Terveellinen tietoinen syöminen';

  @override
  String get onboard_about_you => 'Kerro meille itsestäsi';

  @override
  String get onboard_lifestyle => 'Päivittäinen rutiini';

  @override
  String get onboard_permissions_title =>
      'Käyttöoikeudet ja järjestelmän käyttöoikeudet';

  @override
  String get onboard_permissions_sub =>
      'Myönnä käyttöoikeus synkronoida vaiheita, harjoituksia ja muistutuksia.';

  @override
  String get onboard_plan_ready_title => 'Mukautettu suunnitelmasi on valmis!';

  @override
  String get onboard_plan_ready_sub =>
      'Teimme sinulle lempeän, henkilökohtaisen ravitsemus- ja hyvinvointisuunnitelman.';

  @override
  String get onboard_enter_bloomi => 'Sisään Boomi';

  @override
  String get insights_weekly_report => 'Viikoittainen hyvinvointikatsaus';

  @override
  String insights_best_day(Object day) {
    return 'Paras yhtenäisyyspäivä: $day';
  }

  @override
  String get insights_streaks_badges => 'Viivat & virstanpylväät';

  @override
  String insights_unlocked_on(Object date) {
    return 'Avattu $date';
  }

  @override
  String get insights_keep_going => 'Jatka ihmeellistä kehitystä!';

  @override
  String get widgets_title => 'Aloitusnäytön widgetit';

  @override
  String widgets_active_count(Object count) {
    return 'Aktiiviset widgetit: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomin hyvinvointikeskus';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Nesteytys Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomin maskottikumppani';

  @override
  String get wear_os_title => 'Wear OS -älykello';

  @override
  String get wear_os_connected => 'Yhdistetty Watchiin';

  @override
  String get wear_os_sync => 'Synkronoi kellotiedot';

  @override
  String get theme_title => 'Ulkonäkö ja teema';

  @override
  String get theme_mode => 'Teematila';

  @override
  String get theme_light => 'Kevyt';

  @override
  String get theme_dark => 'Tumma';

  @override
  String get theme_system => 'Järjestelmä';

  @override
  String get theme_background_palette => 'Tausta paletti';

  @override
  String get units_title => 'Mittayksiköt';

  @override
  String get units_metric => 'Metri (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Kojelautaa ei voi ladata';

  @override
  String get home_health_permission_req => 'Health Connect -lupa vaaditaan';

  @override
  String get home_health_permission_desc =>
      'Boomi vaatii Health Connect -luvan oikeiden askelten, sykkeen ja mobiilikotiwidgetien synkronointia varten reaaliajassa.';

  @override
  String get home_allow_health => 'Salli Health Connect';

  @override
  String get home_ready_mindful_day => 'Oletko valmis tietoiseen päivään? ✨';

  @override
  String get home_quick_add => 'Pikalisäys';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'KALORIT JÄLJELLÄ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Syönyt: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Hana Water Trackerille 💧';

  @override
  String get home_water_goal_reached => 'Päivätavoite saavutettu 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml päivittäiseen tavoitteeseen';
  }

  @override
  String get home_details => 'Yksityiskohdat';

  @override
  String get home_upgrade_plan_desc =>
      'Päivitä avataksesi henkilökohtaiset päivittäiset tavoitteet ja tekoälysuunnitelma';

  @override
  String get home_unlock => 'Avaa lukitus 👑';

  @override
  String get home_quick_log_hint => 'Tallenna nopeasti hyvinvointimerkintä';

  @override
  String get food_serving_size => 'Tarjoilukoko';

  @override
  String get food_serving_grams => 'Serving (g)';

  @override
  String get food_number_servings => 'Number of Servings';

  @override
  String get food_calories_per_serving => 'Calories per serving';

  @override
  String get food_recipe_ingredients => 'Ainesosat';

  @override
  String get food_recipe_add_ingredient => 'Add Ingredient';

  @override
  String get food_recipe_directions => 'Instructions & Notes';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast =>
      'Räätälöity ruoka tallennettu onnistuneesti!';

  @override
  String get food_barcode_found => 'Product Found!';

  @override
  String get food_barcode_not_found_desc =>
      'Emme löytäneet tätä viivakoodia avoimesta tietokannasta. Voit lisätä sen räätälöitynä ruoana.';

  @override
  String get food_add_custom_btn => 'Lisää mukautettua ruokaa';

  @override
  String get food_scan_again => 'Scan Again';

  @override
  String get food_review_items => 'Review Detected Foods';

  @override
  String get food_review_hint =>
      'Säädä määriä tai poista tunnistamattomat tuotteet';

  @override
  String get food_log_selected => 'Log Selected Foods';

  @override
  String get food_favourites_title => 'Suosikkiruoat';

  @override
  String get food_recent_title => 'Viimeaikaiset ruoat';

  @override
  String get food_no_favourites =>
      'No favourite foods yet. Napauta sydäntä mitä tahansa ruokaa säästääksesi täällä.';

  @override
  String get food_no_recents => 'Äskettäin kirjattuja ruokia ei löytynyt.';

  @override
  String get food_nutrition_details_title => 'Päivittäiset ravitsemustiedot';

  @override
  String get food_macro_protein_label => 'Protein Breakdown';

  @override
  String get food_macro_carbs_label => 'Carbs Breakdown';

  @override
  String get food_macro_fat_label => 'Fat Breakdown';

  @override
  String get food_macro_fiber_label => 'Kuitujen jakautuminen';

  @override
  String get food_daily_target_comparison => 'Tavoitteiden vertailu';

  @override
  String food_target_label(Object target) {
    return 'Kohde: $target';
  }

  @override
  String get food_edit_entry => 'Muokkaa päiväkirjamerkintää';

  @override
  String get food_delete_entry => 'Poista merkintä';

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
    return '$current / $target ml';
  }

  @override
  String get water_intake_history => 'Tämän päivän vesilokit';

  @override
  String get water_no_logs_today =>
      'Vettä ei ole tullut vielä tänään. Kostuta ja napauta pikalisäyspainiketta!';

  @override
  String get water_adjust_goal => 'Säädä päivittäistä tavoitetta';

  @override
  String get health_connect_banner => 'Yhdistetty Health Connectiin';

  @override
  String get health_vitals_summary => 'Päivittäiset terveystiedot';

  @override
  String get health_latest_heart_rate => 'Viimeisin syke';

  @override
  String get health_latest_bp => 'Verenpaine';

  @override
  String get health_latest_spo2 => 'Veren happea';

  @override
  String get health_latest_glucose => 'Verensokeri';

  @override
  String get health_latest_weight => 'Paino';

  @override
  String get health_latest_sleep => 'Unen kesto';

  @override
  String get health_add_manual => 'Lisää manuaalinen mittaus';

  @override
  String get health_history_trends => 'Historialliset suuntaukset';

  @override
  String get health_sync_success => 'Terveystiedot synkronoitu onnistuneesti!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours tuntia $mins min';
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
    return '$val mg/dl';
  }

  @override
  String get health_devices_title =>
      'Yhdistetyt laitteet ja puettavat laitteet';

  @override
  String get health_devices_desc =>
      'Hallinnoi pariksi liitettyjä älykelloja, kuntoseurantalaitteita ja terveysantureita.';

  @override
  String get health_workout_editor_title => 'Muokkaa harjoitusta';

  @override
  String get health_workout_name_label => 'Harjoituksen nimi';

  @override
  String get health_workout_duration_label => 'Kesto (minuuttia)';

  @override
  String get health_workout_calories_label => 'Arvioidut kalorit (kcal)';

  @override
  String get health_workout_date_label => 'Päivämäärä ja aika';

  @override
  String get plan_daily_wellness_roadmap =>
      'Henkilökohtainen etenemissuunnitelmasi';

  @override
  String get plan_morning_routine => 'Aamun rutiini';

  @override
  String get plan_afternoon_routine => 'Keskipäivän hyvinvointi';

  @override
  String get plan_evening_routine => 'Illan rauhoittuminen';

  @override
  String get plan_coach_badge => 'Bloom AI valmentaja';

  @override
  String get plan_weekly_overview => '7 päivän hyvinvointifokus';

  @override
  String get plan_targets_title => 'Hyvinvointitavoitteet ja tavoitteet';

  @override
  String get plan_calorie_budget_label => 'Päivittäinen kaloribudjetti';

  @override
  String get plan_water_budget_label => 'Päivittäinen vesitavoite';

  @override
  String get plan_step_budget_label => 'Päivittäinen askeltavoite';

  @override
  String get plan_macro_split_label => 'Makroravinteiden suhde';

  @override
  String get profile_personal_details => 'Henkilökohtaiset tiedot';

  @override
  String get profile_body_stats => 'Kehon mitat';

  @override
  String get profile_app_preferences => 'Asetukset ja sovellusasetukset';

  @override
  String get profile_edit_name_hint => 'Sinun nimesi';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Korkeus ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Paino ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Ikä';

  @override
  String get profile_gender_male => 'Mies';

  @override
  String get profile_gender_female => 'Nainen';

  @override
  String get profile_gender_other => 'Muuta / En halua sanoa';

  @override
  String get profile_activity_sedentary =>
      'Istuva (vähän tai ei ollenkaan liikuntaa)';

  @override
  String get profile_activity_light =>
      'Kevyesti aktiivinen (1-3 päivää/viikko)';

  @override
  String get profile_activity_moderate =>
      'Keskinkertainen aktiivisuus (3-5 päivää/viikko)';

  @override
  String get profile_activity_very => 'Erittäin aktiivinen (6-7 päivää/viikko)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion -sovellus';

  @override
  String get settings_wear_os_desc =>
      'Asenna Boomi-laatta ja komplikaatio Wear OS -kelloasi katsoaksesi kaloreita, vettä ja askeleita.';

  @override
  String get settings_widgets_header => 'Interaktiiviset Android-widgetit';

  @override
  String get settings_widgets_desc =>
      'Kiinnitä reaaliaikaiset widgetit laitteesi aloitusnäyttöön saadaksesi välittömiä päivityksiä.';

  @override
  String get settings_about_header => 'Tietoja Bloomista';

  @override
  String get settings_about_version => 'Versio';

  @override
  String get settings_about_build => 'Rakenna 100';

  @override
  String get settings_about_credits =>
      'Valmistettu huolella tietoista, terveellistä elämää varten.';

  @override
  String get settings_terms_header => 'Ehdot';

  @override
  String get settings_privacy_header => 'Tietosuojakäytäntö';

  @override
  String get settings_delete_header => 'Poista tili ja tiedot';

  @override
  String get settings_delete_warning =>
      'Tätä toimintoa ei voi kumota. Kaikki ateriat, harjoitukset, elintärkeät tiedot ja profiilisi poistetaan pysyvästi.';

  @override
  String get settings_delete_confirm_btn => 'Poista pysyvästi';

  @override
  String get onboard_welcome_headline => 'Tervetuloa Bloomille ✨';

  @override
  String get onboard_welcome_tagline =>
      'Hellävarainen, tietoinen hyvinvointiseuranta, joka on suunniteltu elämäsi ympärille.';

  @override
  String get onboard_step_about => 'Tietoja sinusta';

  @override
  String get onboard_step_goals => 'Sinun tavoitteesi';

  @override
  String get onboard_step_lifestyle => 'Päivittäiset tavat';

  @override
  String get onboard_step_permissions => 'Käyttöoikeudet';

  @override
  String get onboard_step_plan => 'Valmis!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Askellaskurin anturi';

  @override
  String get onboard_notif_perm => 'Tietoiset muistutukset ja ilmoitukset';

  @override
  String get onboard_camera_perm => 'Kamera (viivakoodi- ja ruokaskanneri)';

  @override
  String get onboard_grant_permissions => 'Myönnä käyttöoikeudet';

  @override
  String get onboard_continue_dashboard => 'Avaa Dashboard';

  @override
  String get notif_channel_hydration_name => 'Nesteytys nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Hellävaraiset vesimuistutukset koko päivän ajan';

  @override
  String get notif_channel_nutrition_name =>
      'Ateria- ja ravitsemusmuistutukset';

  @override
  String get notif_channel_nutrition_desc =>
      'Aamiaisen, lounaan ja illallisen muistutushälytykset';

  @override
  String get notif_channel_steps_name => 'Vaiheen virstanpylväät';

  @override
  String get notif_channel_steps_desc =>
      'Juhlia päivittäisten askeltavoitteiden saavuttamisen yhteydessä';

  @override
  String get notif_channel_vitals_name =>
      'Terveys- ja elintoimintojen tarkastukset';

  @override
  String get notif_channel_vitals_desc =>
      'Muistutukset painon ja nukkumaanmenon lopettamisesta';

  @override
  String get notif_action_log_water => '💧 Tukki +250ml';

  @override
  String get notif_action_snooze => 'Torkku 15m';

  @override
  String get notif_action_log_meal => '🥗 Hirsiruoka';

  @override
  String get language => 'Kieli';

  @override
  String get share => 'Jakaa';

  @override
  String common_days(Object count) {
    return '$count p sitten';
  }
}
