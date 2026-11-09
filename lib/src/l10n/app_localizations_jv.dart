// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ngarep';

  @override
  String get nav_today => 'Dina iki';

  @override
  String get nav_plan => 'rencana';

  @override
  String get nav_food => 'Panganan';

  @override
  String get nav_food_diary => 'Diary Panganan';

  @override
  String get nav_workout => 'Log Latihan';

  @override
  String get nav_health => 'kesehatan';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Simpen';

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Mbusak';

  @override
  String get edit => 'Sunting';

  @override
  String get done => 'Rampung';

  @override
  String get close => 'Nutup';

  @override
  String get back => 'Mbalik';

  @override
  String get next => 'Sabanjure';

  @override
  String get continue_btn => 'Terus';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get search => 'Nggoleki';

  @override
  String get filter => 'Nyaring';

  @override
  String get all => 'Kabeh';

  @override
  String get active => 'Aktif';

  @override
  String get today => 'Dina iki';

  @override
  String get yesterday => 'wingi';

  @override
  String get tomorrow => 'sesuk';

  @override
  String get add => 'Tambah';

  @override
  String get remove => 'Mbusak';

  @override
  String get refresh => 'Refresh';

  @override
  String get retry => 'Coba maneh';

  @override
  String get error => 'Kesalahan';

  @override
  String get success => 'Sukses';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'Ora ana data sing kasedhiya';

  @override
  String get offline => 'Mode Offline';

  @override
  String get offline_sub =>
      'Owah-owahan bakal diselarasake yen disambungake maneh';

  @override
  String get undo => 'batalaken';

  @override
  String get portion => 'porsi';

  @override
  String get quantity => 'Jumlah';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Cetha';

  @override
  String get select => 'Pilih';

  @override
  String get apply => 'nglamar';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'ya wis';

  @override
  String get no => 'Ora';

  @override
  String get optional => 'Opsional';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Karbohidrat';

  @override
  String get fat => 'lemu';

  @override
  String get fiber => 'Serat';

  @override
  String get water => 'banyu';

  @override
  String get steps => 'Langkah-langkah';

  @override
  String get kcal => 'kkal';

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
  String get inches => 'ing';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'jam';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'ngladeni';

  @override
  String get servings => 'porsi';

  @override
  String get serving_size => 'Ukuran porsi';

  @override
  String get per_100g => 'saben 100 g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Eropah';

  @override
  String get middle_east => 'Timur Tengah';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Ngarep';

  @override
  String get home_greeting_morning => 'Sugeng enjang';

  @override
  String get home_greeting_afternoon => 'sugeng sonten';

  @override
  String get home_greeting_evening => 'Sugeng sonten';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dina berturut-turut',
      one: '1 dina streak',
      zero: '0 dina streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Diobong';

  @override
  String get home_calories_budget => 'Anggaran kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Sisa $kcal kkal';
  }

  @override
  String get home_water_title => 'Hidrasi saben dina';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Mlaku-mlaku';

  @override
  String get home_quick_actions => 'Tumindak cepet';

  @override
  String get home_log_meal => 'Panganan Log';

  @override
  String get home_log_water => 'Banyu Log';

  @override
  String get home_log_workout => 'Latihan Log';

  @override
  String get home_log_weight => 'Bobot Log';

  @override
  String get home_insights_title => 'Wawasan Dina iki';

  @override
  String get home_quote => 'Pilihan sehat cilik nggawe transformasi mekar.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Pelatih';

  @override
  String get home_surroundings => 'Lingkungan & Udara';

  @override
  String get home_notifications => 'Kabar';

  @override
  String get home_daily_score => 'Skor Kesehatan Saben dina';

  @override
  String get home_view_all => 'Ndeleng Kabeh';

  @override
  String get food_diary_title => 'Diary Panganan';

  @override
  String get food_breakfast => 'sarapan';

  @override
  String get food_lunch => 'nedha awan';

  @override
  String get food_dinner => 'nedha bengi';

  @override
  String get food_snacks => 'jajanan';

  @override
  String get food_add_food => 'Tambah Panganan';

  @override
  String get food_edit_food => 'Sunting Panganan';

  @override
  String get food_add_breakfast => 'Tambah sarapan';

  @override
  String get food_add_lunch => 'Tambah Nedha awan';

  @override
  String get food_add_dinner => 'Tambah Nedha bengi';

  @override
  String get food_add_snack => 'Tambah Snack';

  @override
  String get food_total_calories => 'Total Kalori';

  @override
  String get food_empty_meal =>
      'Durung ana panganan sing dicathet kanggo panganan iki';

  @override
  String get food_empty_diary =>
      'Ora ana panganan sing dicathet kanggo dina iki';

  @override
  String get food_log_first_meal =>
      'Tutul + kanggo mlebu panganan sing enak pertama';

  @override
  String get food_quick_add => 'Tambah cepet';

  @override
  String get food_search_hint => 'Telusuri masakan, woh-wohan, dal, roti ...';

  @override
  String get food_custom_recipe => 'Panganan & Resep Kustom';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'Scanner Pangan AI';

  @override
  String get food_recent => 'Panganan Anyar';

  @override
  String get food_favourites => 'Favorit';

  @override
  String get food_macro_summary => 'Risak Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Apa sampeyan yakin pengin mbusak item iki?';

  @override
  String get food_item_deleted => 'Item panganan dibusak';

  @override
  String get food_remaining => 'isih';

  @override
  String get food_consumed => 'dikonsumsi';

  @override
  String food_of_target(Object target) {
    return 'saka $target kkal';
  }

  @override
  String get foodSearch_title => 'Telusuri Panganan';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Foto Snap Food';

  @override
  String get foodSearch_custom_food => 'Nggawe Panganan Custom';

  @override
  String get foodSearch_recent_searches => 'Panelusuran Anyar';

  @override
  String get foodSearch_popular => 'Masakan Popular';

  @override
  String get foodSearch_no_results =>
      'Ora ana panganan sing cocog karo telusuran sampeyan';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Selarasake barcode ing jero pigura kamera';

  @override
  String get barcode_not_found => 'Produk ora ditemokake ing database';

  @override
  String get barcode_premium_feature =>
      'Pemindaian barcode kasedhiya karo Bloomi Pro';

  @override
  String get camera_title => 'Scanner Pangan AI';

  @override
  String get camera_tap_hint => 'Njupuk foto sing cetha saka sajian sampeyan';

  @override
  String get camera_analysing => 'Analisis piring panganan ...';

  @override
  String get camera_detected => 'Item sing dideteksi';

  @override
  String get camera_flash => 'Ngalih Flash';

  @override
  String get camera_retake => 'Foto maneh';

  @override
  String get camera_confirm_food => 'Konfirmasi Item';

  @override
  String get customFood_title => 'Panganan & Resep Kustom';

  @override
  String get customFood_name_hint => 'Jeneng sajian utawa bahan';

  @override
  String get customFood_calories_hint => 'Kalori (kkal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidrat (g)';

  @override
  String get customFood_fat_hint => 'Lemak (g)';

  @override
  String get customFood_save => 'Simpen Resep';

  @override
  String get water_tracker_title => 'Water Tracker';

  @override
  String get water_daily_target => 'Sasaran Hidrasi Saben';

  @override
  String get water_logged_today => 'Log Dina iki';

  @override
  String get water_add_glass => '+250 ml Kaca';

  @override
  String get water_add_bottle => '+ 500 ml Botol';

  @override
  String get water_custom_amount => 'Jumlah Custom';

  @override
  String get water_reminder_tip =>
      'Ngombe banyu kanthi rutin sedina muput kanggo energi sing tetep.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml banyu 💧';
  }

  @override
  String get workout_title => 'Log Latihan';

  @override
  String get workout_add_exercise => 'Tambah Latihan';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'kekuwatan';

  @override
  String get workout_yoga => 'Yoga & Fleksibilitas';

  @override
  String get workout_duration => 'Duration';

  @override
  String get workout_intensity => 'Intensitas';

  @override
  String get workout_calories_burned => 'Kalori Dibakar';

  @override
  String get workout_empty => 'Ora ana latian sing mlebu dina iki';

  @override
  String get workout_save_success => 'Latihan kasil disimpen!';

  @override
  String get workout_type => 'Jenis Latihan';

  @override
  String get workout_notes => 'Cathetan & Refleksi';

  @override
  String get health_overview_title => 'Kesehatan & Vital';

  @override
  String get health_heart_rate => 'Denyut Jantung';

  @override
  String get health_blood_oxygen => 'Oksigen getih (SpO2)';

  @override
  String get health_blood_pressure => 'Tekanan getih';

  @override
  String get health_blood_glucose => 'Glukosa getih';

  @override
  String get health_body_temperature => 'Suhu awak';

  @override
  String get health_sleep_tracking => 'Nelusuri Turu';

  @override
  String get health_weight_tracking => 'Bobot & Komposisi Awak';

  @override
  String get health_waist_hip => 'Rasio Pinggang-kanggo-Pinggul';

  @override
  String get health_devices_hub => 'Piranti & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sinkronisasi Data Kesehatan';

  @override
  String health_last_synced(Object time) {
    return 'Terakhir diselarasake: $time';
  }

  @override
  String get health_manual_entry => 'Manual Kesehatan Entry';

  @override
  String get health_metric_detail => 'Rincian Metrik';

  @override
  String get health_connected_sensors => 'Sensor Kesehatan sing disambungake';

  @override
  String get plan_title => 'Rencana saben dina';

  @override
  String get plan_weekly_title => 'Rencana Kesehatan Mingguan';

  @override
  String get plan_calorie_target => 'Target kalori';

  @override
  String get plan_water_target => 'Sasaran Hidrasi';

  @override
  String get plan_step_target => 'Langkah Target';

  @override
  String get plan_sleep_target => 'Sasaran turu';

  @override
  String get plan_meal_suggestions => 'Saran dhaharan';

  @override
  String get plan_healthy_habits => 'Sifat & Tips Sehat';

  @override
  String get plan_coach_advice => 'Rekomendasi Pelatih Bloomi AI';

  @override
  String get plan_generated_title => 'Pribadi Jadwal Saben';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Sunting Profil';

  @override
  String get profile_name => 'jeneng';

  @override
  String get profile_age => 'Umur';

  @override
  String get profile_gender => 'jinis kelamin';

  @override
  String get profile_height => 'dhuwur';

  @override
  String get profile_weight => 'Bobot';

  @override
  String get profile_goal => 'Sasaran Utama';

  @override
  String get profile_activity_level => 'Tingkat Kegiatan';

  @override
  String get profile_stats => 'Statistik Kesehatanku';

  @override
  String get profile_saved => 'Profil kasil dianyari';

  @override
  String get profile_bmi => 'Indeks Massa Badan (BMI)';

  @override
  String get profile_membership => 'Keanggotaan';

  @override
  String get settings => 'Setelan';

  @override
  String get preferences_habits => 'PREFERENSI & KUALITAS';

  @override
  String get appearance_theme => 'Penampilan & Tema';

  @override
  String get appearance_theme_sub =>
      'Peteng, Cahya, Mode Sistem & Pilihan Latar Belakang Aplikasi';

  @override
  String get permissions => 'Idin & Akses Sistem';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifikasi & Kamera';

  @override
  String get reminders_notifications => 'Pangeling & Kabar';

  @override
  String get reminders_sub =>
      'Wektu mangan, banyu, check-in bobot & pangeling wektu turu';

  @override
  String get units_of_measurement => 'Unit pangukuran';

  @override
  String get units_sub =>
      'Metrik (kg, cm, ml, km) utawa Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Basa App';

  @override
  String get language_sub =>
      'Inggris, हिन्दी (Hindi), Hinglish & 195+ basa global';

  @override
  String get home_screen_widgets => 'Widget Layar Ngarep';

  @override
  String get widgets_sub =>
      'Widget Android Langsung: Hub, Langkah, Banyu, Nutrisi & Maskot';

  @override
  String get wear_os_watch_app => 'Aplikasi Watch OS Wear';

  @override
  String get wear_os_sub =>
      'Pendamping Smartwatch, ubin, komplikasi & vital langsung';

  @override
  String get goals_wellness => 'TUJUAN & KESEHATAN';

  @override
  String get nutrition_targets => 'Sasaran Nutrisi & Split Makro';

  @override
  String get nutrition_targets_sub =>
      'Target kalori, protein, karbohidrat, lemak & banyu';

  @override
  String get weekly_recap => 'Rekap Kesehatan Mingguan';

  @override
  String get weekly_recap_sub =>
      'Rata-rata kalori 7 dina, rasio makro & dina paling apik';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Aktif blossom streaks, lencana & prestasi';

  @override
  String get connected_devices => 'PERANGKAT & EKOSISTEM SAMBUNGAN';

  @override
  String get devices_hub => 'Piranti & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Lingkungan & Cuaca';

  @override
  String get surroundings_sub =>
      'Kualitas udara (AQI), indeks UV & tips hidrasi cuaca';

  @override
  String get bloomi_pro => 'Langganan Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'Pelatih Rencana AI, 5 widget layar ngarep & pelacakan vital';

  @override
  String get about_security => 'Babagan & KEAMANAN';

  @override
  String get about_bloomi => 'Babagan Bloomi';

  @override
  String get about_bloomi_sub => 'Spesifikasi mbangun, versi, atribusi';

  @override
  String get privacy_policy => 'Kebijakan Privasi';

  @override
  String get privacy_policy_sub => 'Offline-first, arsitektur data ing piranti';

  @override
  String get terms_conditions => 'Syarat & Ketentuan';

  @override
  String get terms_conditions_sub => 'Katentuan layanan lan pedoman kesehatan';

  @override
  String get delete_account => 'Mbusak Akun & Data';

  @override
  String get delete_account_sub =>
      'Mbusak data SQLite lokal lan serep awan sing ora bisa dibatalake';

  @override
  String get healthy_habits =>
      'Mbangun kabiasaan sehat sing lembut lan langgeng';

  @override
  String get all_logs => 'Data & Log sing Dilacak';

  @override
  String get search_language => 'Telusuri miturut basa utawa aksara asli...';

  @override
  String get languages_available => 'Basa kasedhiya';

  @override
  String get no_matching_languages => 'Ora ditemokake basa sing cocog';

  @override
  String get try_searching =>
      'Coba goleki nganggo aksara asli utawa ejaan Inggris';

  @override
  String get partially_translated => 'Diterjemahake sebagian';

  @override
  String get complete_translation => 'jangkep';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Basa disetel dadi $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Lingkungan & Lingkungan';

  @override
  String get surroundings_aqi => 'Indeks Kualitas Udara';

  @override
  String get surroundings_uv => 'Indeks UV';

  @override
  String get surroundings_temp => 'Suhu';

  @override
  String get surroundings_humidity => 'Kelembapan';

  @override
  String get surroundings_hydration_advice =>
      'Tetep terhidrasi kanthi apik ing kahanan cuaca saiki.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Golek Panganan';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Tambah banyu';

  @override
  String get food_quick_custom => 'Panganan adat';

  @override
  String get surroundings_good => 'apik';

  @override
  String get surroundings_moderate => 'Moderate';

  @override
  String get surroundings_unhealthy => 'ora sehat';

  @override
  String get notifications_title => 'Kabar & Tandha';

  @override
  String get notifications_empty => 'Ora ana kabar anyar';

  @override
  String get notifications_mark_read => 'Tandhani Kabeh minangka Waca';

  @override
  String get notifications_clear => 'Clear Kabeh';

  @override
  String get reminders => 'Setelan pangeling';

  @override
  String get notifications => 'Kabar';

  @override
  String get reminders_breakfast_title => 'Pangeling sarapan 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'sugeng enjang! Wektu kanggo sarapan nutrisi ing $time.';
  }

  @override
  String get reminders_lunch_title => 'Pangeling Nedha awan 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Ngaso lan nikmati nedha awan sing seimbang lan eling ing $time .';
  }

  @override
  String get reminders_dinner_title => 'Pangeling-eling 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Wektu kanggo nedha bengi sing entheng lan kepenak ing $time.';
  }

  @override
  String get reminders_water_title => 'Nudge Hidrasi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Wektu kanggo ngombe segelas banyu seger! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Timbangan mingguan ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Lacak metrik awak saben minggu ing Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Wayahe turu 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Ngaso lan nyiapake kanggo turu sing tenang ( $time ).';
  }

  @override
  String get onboard_welcome => 'Sugeng rawuh ing Bloomi';

  @override
  String get onboard_sub =>
      'Rekan kesehatan lan nutrisi sing grapyak lan offline.';

  @override
  String get onboard_get_started => 'Miwiti';

  @override
  String get onboard_sign_in => 'Mlebu';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal => 'Apa tujuan kesehatan utama sampeyan?';

  @override
  String get onboard_goal_weight_loss => 'Mundhut Bobot Lembut';

  @override
  String get onboard_goal_muscle => 'Otot Gain & Strength';

  @override
  String get onboard_goal_energy => 'Energi & Vitality Saben dina';

  @override
  String get onboard_goal_habits => 'Mangan Eling Sehat';

  @override
  String get onboard_about_you => 'Marang Kita Babagan Panjenengan';

  @override
  String get onboard_lifestyle => 'Rutinitas Saben dina';

  @override
  String get onboard_permissions_title => 'Idin & Akses Sistem';

  @override
  String get onboard_permissions_sub =>
      'Menehi akses menyang sinkronisasi langkah, latihan, lan pangeling.';

  @override
  String get onboard_plan_ready_title => 'Rencana Khusus Sampeyan Siap!';

  @override
  String get onboard_plan_ready_sub =>
      'Kita nggawe peta dalan nutrisi lan kesehatan sing lembut, khusus kanggo sampeyan.';

  @override
  String get onboard_enter_bloomi => 'Mlebu Bloomi';

  @override
  String get insights_weekly_report => 'Rekap Kesehatan Mingguan';

  @override
  String insights_best_day(Object day) {
    return 'Dina Konsistensi Paling Apik: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Mbukak kunci ing $date';
  }

  @override
  String get insights_keep_going => 'Tansah kemajuan sing luar biasa!';

  @override
  String get widgets_title => 'Widget Layar Ngarep';

  @override
  String widgets_active_count(Object count) {
    return 'Widget Aktif: $count';
  }

  @override
  String get widgets_hub_title => 'Pusat Kesehatan Bloomi';

  @override
  String get widgets_steps_title => 'Langkah & Ring Aktif';

  @override
  String get widgets_water_title => 'Log Cepet Hidrasi';

  @override
  String get widgets_mascot_title => 'Bloomi Maskot Companion';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'Disambungake menyang Watch';

  @override
  String get wear_os_sync => 'Sinkronisasi Data Watch';

  @override
  String get theme_title => 'Penampilan & Tema';

  @override
  String get theme_mode => 'Mode Tema';

  @override
  String get theme_light => 'cahya';

  @override
  String get theme_dark => 'peteng';

  @override
  String get theme_system => 'Sistem Default';

  @override
  String get theme_background_palette => 'Palet latar mburi';

  @override
  String get units_title => 'Unit pangukuran';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Ora bisa mbukak dasbor';

  @override
  String get home_health_permission_req => 'Health Connect Idin dibutuhake';

  @override
  String get home_health_permission_desc =>
      'Bloomi mbutuhake ijin Health Connect kanggo narik langkah nyata, detak jantung, lan nyelarasake widget omah seluler ing wektu nyata.';

  @override
  String get home_allow_health => 'Allow Health Connect';

  @override
  String get home_ready_mindful_day => 'Siap kanggo dina sing eling? ✨';

  @override
  String get home_quick_add => 'Tambah cepet';

  @override
  String get home_live_gps => 'GPS urip';

  @override
  String get home_calories_remaining_label => 'KALORI SISA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Dipangan: $consumed / $target kkal';
  }

  @override
  String get home_tap_water_tracker => 'Tutul kanggo Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Target saben dina tekan 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml kanggo gol saben dina';
  }

  @override
  String get home_details => 'Rincian';

  @override
  String get home_upgrade_plan_desc =>
      'Nganyarke kanggo mbukak kunci target saben dina sing dipersonalisasi & rencana AI';

  @override
  String get home_unlock => 'Mbukak kunci 👑';

  @override
  String get home_quick_log_hint => 'Rekam entri kesehatan kanthi cepet';

  @override
  String get food_serving_size => 'Ukuran porsi';

  @override
  String get food_serving_grams => 'porsi (g)';

  @override
  String get food_number_servings => 'Jumlah porsi';

  @override
  String get food_calories_per_serving => 'Kalori saben porsi';

  @override
  String get food_recipe_ingredients => 'bahan';

  @override
  String get food_recipe_add_ingredient => 'Tambah Bahan';

  @override
  String get food_recipe_directions => 'Pandhuan & Cathetan';

  @override
  String get food_recipe_total => 'Total Nutrisi Resep';

  @override
  String get food_recipe_per_serving => 'Per porsi Nutrisi';

  @override
  String get food_recipe_saved_toast =>
      'Panganan khusus disimpen kanthi sukses!';

  @override
  String get food_barcode_found => 'Produk Ditemokake!';

  @override
  String get food_barcode_not_found_desc =>
      'Kita ora bisa nemokake barcode iki ing database mbukak. Sampeyan bisa nambah minangka panganan adat.';

  @override
  String get food_add_custom_btn => 'Tambah Panganan Custom';

  @override
  String get food_scan_again => 'Scan maneh';

  @override
  String get food_review_items => 'Deleng Panganan sing Dideteksi';

  @override
  String get food_review_hint =>
      'Nyetel jumlah utawa mbusak item sing ora dingerteni';

  @override
  String get food_log_selected => 'Log Panganan sing Dipilih';

  @override
  String get food_favourites_title => 'Panganan Favorit';

  @override
  String get food_recent_title => 'Panganan Anyar';

  @override
  String get food_no_favourites =>
      'Durung ana panganan favorit. Tutul ati ing panganan apa wae kanggo disimpen ing kene.';

  @override
  String get food_no_recents => 'Ora ana panganan sing bubar mlebu.';

  @override
  String get food_nutrition_details_title => 'Rincian Nutrisi Saben dina';

  @override
  String get food_macro_protein_label => 'Pecah protein';

  @override
  String get food_macro_carbs_label => 'Pecahan Karbohidrat';

  @override
  String get food_macro_fat_label => 'Pecah Lemak';

  @override
  String get food_macro_fiber_label => 'Pecah Serat';

  @override
  String get food_daily_target_comparison => 'Perbandingan Target';

  @override
  String food_target_label(Object target) {
    return 'Sasaran: $target';
  }

  @override
  String get food_edit_entry => 'Sunting Entri Diary';

  @override
  String get food_delete_entry => 'Mbusak Entri';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kkal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current saka $target ml';
  }

  @override
  String get water_intake_history => 'Banyu Log Dina iki';

  @override
  String get water_no_logs_today =>
      'Dina iki durung ana banyu. Hydrate lan tutul tombol nambah cepet!';

  @override
  String get water_adjust_goal => 'Nyetel Sasaran Saben';

  @override
  String get health_connect_banner => 'Nyambung menyang Health Connect';

  @override
  String get health_vitals_summary => 'Vital Kesehatan Saben dina';

  @override
  String get health_latest_heart_rate => 'Denyut Jantung Paling Anyar';

  @override
  String get health_latest_bp => 'Tekanan getih';

  @override
  String get health_latest_spo2 => 'Oksigen getih';

  @override
  String get health_latest_glucose => 'Glukosa getih';

  @override
  String get health_latest_weight => 'Bobot';

  @override
  String get health_latest_sleep => 'Turu Duration';

  @override
  String get health_add_manual => 'Tambah Pangukuran Manual';

  @override
  String get health_history_trends => 'Trends Sajarah';

  @override
  String get health_sync_success =>
      'Data kesehatan disinkronake kanthi sukses!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours jam $mins menit';
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
  String get health_devices_title => 'Piranti sing disambungake & Wearables';

  @override
  String get health_devices_desc =>
      'Ngatur jam tangan pinter sing dipasangake, pelacak fitness, lan sensor kesehatan.';

  @override
  String get health_workout_editor_title => 'Sunting Latihan';

  @override
  String get health_workout_name_label => 'Jeneng Latihan';

  @override
  String get health_workout_duration_label => 'Duration (menit)';

  @override
  String get health_workout_calories_label => 'Perkiraan Kalori (kkal)';

  @override
  String get health_workout_date_label => 'Tanggal lan Wektu';

  @override
  String get plan_daily_wellness_roadmap => 'Roadmap Pribadi Panjenengan';

  @override
  String get plan_morning_routine => 'Rutinitas esuk';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Angin Sore';

  @override
  String get plan_coach_badge => 'Bloomi AI Pelatih';

  @override
  String get plan_weekly_overview => 'Fokus Kesehatan 7 Dina';

  @override
  String get plan_targets_title => 'Sasaran & Sasaran Kesehatan';

  @override
  String get plan_calorie_budget_label => 'Anggaran kalori saben dina';

  @override
  String get plan_water_budget_label => 'Target banyu saben dina';

  @override
  String get plan_step_budget_label => 'Sasaran Langkah Saben';

  @override
  String get plan_macro_split_label => 'Rasio Makronutrien';

  @override
  String get profile_personal_details => 'Rincian pribadi';

  @override
  String get profile_body_stats => 'Pangukuran awak';

  @override
  String get profile_app_preferences => 'Preferensi & Setelan Aplikasi';

  @override
  String get profile_edit_name_hint => 'jenengmu';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Dhuwur ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Bobot ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Umur';

  @override
  String get profile_gender_male => 'lanang';

  @override
  String get profile_gender_female => 'wadon';

  @override
  String get profile_gender_other => 'Liyane / Luwih seneng ora ngomong';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Sedikit utawa ora olahraga)';

  @override
  String get profile_activity_light => 'Aktif entheng (1-3 dina / minggu)';

  @override
  String get profile_activity_moderate => 'Aktif Aktif (3-5 dina / minggu)';

  @override
  String get profile_activity_very => 'Aktif banget (6-7 dina / minggu)';

  @override
  String get settings_wear_os_header => 'Aplikasi Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Pasang kothak Bloomi lan komplikasi ing jam tangan Wear OS kanggo ndeleng kalori, banyu, lan langkah.';

  @override
  String get settings_widgets_header => 'Widget Android Interaktif';

  @override
  String get settings_widgets_desc =>
      'Pin widget wektu nyata ing layar ngarep piranti kanggo nganyari cepet.';

  @override
  String get settings_about_header => 'Babagan Bloomi';

  @override
  String get settings_about_version => 'Versi 1.0.0';

  @override
  String get settings_about_build => 'Bangun 100';

  @override
  String get settings_about_credits => 'Digawe kanthi ati-ati, urip sehat.';

  @override
  String get settings_terms_header => 'Sarat lan Ketentuan';

  @override
  String get settings_privacy_header => 'Kebijakan Privasi';

  @override
  String get settings_delete_header => 'Mbusak Akun & Data';

  @override
  String get settings_delete_warning =>
      'Tumindak iki ora bisa dibatalake. Kabeh dhaharan, latian, vital, lan profil bakal dibusak kanthi permanen.';

  @override
  String get settings_delete_confirm_btn => 'Mbusak permanen';

  @override
  String get onboard_welcome_headline => 'Sugeng rawuh ing Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Pelacakan kesehatan sing lembut lan eling sing dirancang kanggo urip sampeyan.';

  @override
  String get onboard_step_about => 'Babagan Sampeyan';

  @override
  String get onboard_step_goals => 'Goals Panjenengan';

  @override
  String get onboard_step_lifestyle => 'Kebiasaan saben dina';

  @override
  String get onboard_step_permissions => 'Idin';

  @override
  String get onboard_step_plan => 'siyap!';

  @override
  String get onboard_health_connect_perm => 'Akses Sambungan Kesehatan';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Pangeling-eling & Notifikasi';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Scanner Pangan)';

  @override
  String get onboard_grant_permissions => 'Menehi Idin';

  @override
  String get onboard_continue_dashboard => 'Bukak Dashboard';

  @override
  String get notif_channel_hydration_name => 'Nudges Hidrasi';

  @override
  String get notif_channel_hydration_desc =>
      'Pangeling banyu sing lembut sedina muput';

  @override
  String get notif_channel_nutrition_name => 'Pangeling-eling Pangan & Nutrisi';

  @override
  String get notif_channel_nutrition_desc =>
      'Tandha pangeling sarapan, nedha awan lan nedha bengi';

  @override
  String get notif_channel_steps_name => 'Langkah Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Perayaan nalika nggayuh target langkah saben dina';

  @override
  String get notif_channel_vitals_name => 'Pemeriksaan Kesehatan & Vital';

  @override
  String get notif_channel_vitals_desc =>
      'Pangeling-eling bobot lan wektu turu';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Tundha 15m';

  @override
  String get notif_action_log_meal => '🥗 Panganan Log';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
