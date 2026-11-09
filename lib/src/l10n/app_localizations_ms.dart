// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Rumah';

  @override
  String get nav_today => 'Hari ini';

  @override
  String get nav_plan => 'Rancang';

  @override
  String get nav_food => 'Makanan';

  @override
  String get nav_food_diary => 'Diari Makanan';

  @override
  String get nav_workout => 'Log Latihan';

  @override
  String get nav_health => 'Kesihatan';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Jimat';

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Padam';

  @override
  String get edit => 'Sunting';

  @override
  String get done => 'Selesai';

  @override
  String get close => 'tutup';

  @override
  String get back => 'belakang';

  @override
  String get next => 'Seterusnya';

  @override
  String get continue_btn => 'teruskan';

  @override
  String get confirm => 'sahkan';

  @override
  String get search => 'Cari';

  @override
  String get filter => 'Penapis';

  @override
  String get all => 'Semua';

  @override
  String get active => 'Aktif';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Semalam';

  @override
  String get tomorrow => 'Esok';

  @override
  String get add => 'Tambah';

  @override
  String get remove => 'Alih keluar';

  @override
  String get refresh => 'Segarkan semula';

  @override
  String get retry => 'Cuba semula';

  @override
  String get error => 'ralat';

  @override
  String get success => 'Kejayaan';

  @override
  String get loading => 'Memuatkan...';

  @override
  String get no_data => 'Tiada data tersedia';

  @override
  String get offline => 'Mod Luar Talian';

  @override
  String get offline_sub =>
      'Perubahan akan disegerakkan setelah disambungkan semula';

  @override
  String get undo => 'Buat asal';

  @override
  String get portion => 'Bahagian';

  @override
  String get quantity => 'Kuantiti';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Jelas';

  @override
  String get select => 'Pilih';

  @override
  String get apply => 'Mohon';

  @override
  String get reset => 'Tetapkan semula';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'ya';

  @override
  String get no => 'Tidak';

  @override
  String get optional => 'Pilihan';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Karbohidrat';

  @override
  String get fat => 'gemuk';

  @override
  String get fiber => 'Serat';

  @override
  String get water => 'air';

  @override
  String get steps => 'Langkah';

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
  String get inches => 'dalam';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'jam';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Melayan';

  @override
  String get servings => 'Hidangan';

  @override
  String get serving_size => 'Saiz Hidangan';

  @override
  String get per_100g => 'setiap 100g';

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
  String get home_title => 'Rumah';

  @override
  String get home_greeting_morning => 'Selamat Pagi';

  @override
  String get home_greeting_afternoon => 'Selamat Petang';

  @override
  String get home_greeting_evening => 'Selamat Petang';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari berturut-turut',
      one: '1 hari berturut-turut',
      zero: '0 hari berturut-turut',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Terbakar';

  @override
  String get home_calories_budget => 'Bajet Kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Baki $kcal kcal';
  }

  @override
  String get home_water_title => 'Penghidratan Harian';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Langkah Berjalan';

  @override
  String get home_quick_actions => 'Tindakan Pantas';

  @override
  String get home_log_meal => 'Makanan Log';

  @override
  String get home_log_water => 'Air Balak';

  @override
  String get home_log_workout => 'Log Senaman';

  @override
  String get home_log_weight => 'Berat Log';

  @override
  String get home_insights_title => 'Wawasan Hari Ini';

  @override
  String get home_quote =>
      'Pilihan kecil yang sihat mencipta transformasi yang mekar.';

  @override
  String get home_ai_coach_tip => 'Jurulatih AI Bloomi';

  @override
  String get home_surroundings => 'Persekitaran & Udara';

  @override
  String get home_notifications => 'Pemberitahuan';

  @override
  String get home_daily_score => 'Skor Kesihatan Harian';

  @override
  String get home_view_all => 'Lihat Semua';

  @override
  String get food_diary_title => 'Diari Makanan';

  @override
  String get food_breakfast => 'Sarapan pagi';

  @override
  String get food_lunch => 'Makan tengah hari';

  @override
  String get food_dinner => 'makan malam';

  @override
  String get food_snacks => 'Makanan ringan';

  @override
  String get food_add_food => 'Tambah Makanan';

  @override
  String get food_edit_food => 'Edit Makanan';

  @override
  String get food_add_breakfast => 'Tambah Sarapan';

  @override
  String get food_add_lunch => 'Tambah Makan Tengahari';

  @override
  String get food_add_dinner => 'Tambah Makan Malam';

  @override
  String get food_add_snack => 'Tambah Snek';

  @override
  String get food_total_calories => 'Jumlah Kalori';

  @override
  String get food_empty_meal =>
      'Belum ada makanan yang dilog untuk hidangan ini';

  @override
  String get food_empty_diary => 'Tiada makanan dilog untuk hari ini';

  @override
  String get food_log_first_meal =>
      'Ketik + untuk mencatat hidangan lazat pertama anda';

  @override
  String get food_quick_add => 'Tambah Pantas';

  @override
  String get food_search_hint => 'Cari hidangan, buah-buahan, dal, roti...';

  @override
  String get food_custom_recipe => 'Makanan & Resipi Tersuai';

  @override
  String get food_scan_barcode => 'Imbas Kod Bar';

  @override
  String get food_camera_scan => 'Pengimbas Makanan AI';

  @override
  String get food_recent => 'Makanan Terkini';

  @override
  String get food_favourites => 'Kegemaran';

  @override
  String get food_macro_summary => 'Pecahan Makronutrien';

  @override
  String get food_delete_meal_confirm =>
      'Adakah anda pasti mahu mengalih keluar item ini?';

  @override
  String get food_item_deleted => 'Item makanan dikeluarkan';

  @override
  String get food_remaining => 'yang tinggal';

  @override
  String get food_consumed => 'dimakan';

  @override
  String food_of_target(Object target) {
    return 'daripada $target kcal';
  }

  @override
  String get foodSearch_title => 'Cari Makanan';

  @override
  String get foodSearch_scan_barcode => 'Imbas Kod Bar';

  @override
  String get foodSearch_take_photo => 'Snap Foto Makanan';

  @override
  String get foodSearch_custom_food => 'Cipta Makanan Tersuai';

  @override
  String get foodSearch_recent_searches => 'Carian Terkini';

  @override
  String get foodSearch_popular => 'Hidangan Popular';

  @override
  String get foodSearch_no_results =>
      'Tiada makanan yang sepadan dengan carian anda';

  @override
  String get barcode_title => 'Pengimbas Kod Bar';

  @override
  String get barcode_align => 'Jajarkan kod bar di dalam bingkai kamera';

  @override
  String get barcode_not_found => 'Produk tidak ditemui dalam pangkalan data';

  @override
  String get barcode_premium_feature =>
      'Pengimbasan kod bar tersedia dengan Bloomi Pro';

  @override
  String get camera_title => 'Pengimbas Makanan AI';

  @override
  String get camera_tap_hint => 'Ambil gambar hidangan anda dengan jelas';

  @override
  String get camera_analysing => 'Menganalisis pinggan makanan...';

  @override
  String get camera_detected => 'Item yang dikesan';

  @override
  String get camera_flash => 'Togol Flash';

  @override
  String get camera_retake => 'Ambil Semula Foto';

  @override
  String get camera_confirm_food => 'Sahkan Item';

  @override
  String get customFood_title => 'Makanan & Resipi Tersuai';

  @override
  String get customFood_name_hint => 'Hidangan atau nama bahan';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidrat (g)';

  @override
  String get customFood_fat_hint => 'Lemak (g)';

  @override
  String get customFood_save => 'Simpan Resipi';

  @override
  String get water_tracker_title => 'Penjejak Air';

  @override
  String get water_daily_target => 'Matlamat Penghidratan Harian';

  @override
  String get water_logged_today => 'Dilog Hari Ini';

  @override
  String get water_add_glass => '+250 ml Kaca';

  @override
  String get water_add_bottle => '+500 ml Botol';

  @override
  String get water_custom_amount => 'Amaun Tersuai';

  @override
  String get water_reminder_tip =>
      'Minum air secara teratur sepanjang hari untuk tenaga yang stabil.';

  @override
  String water_logged_toast(Object amount) {
    return 'Dilog $amount ml air 💧';
  }

  @override
  String get workout_title => 'Log Latihan';

  @override
  String get workout_add_exercise => 'Tambah Senaman';

  @override
  String get workout_cardio => 'kardio';

  @override
  String get workout_strength => 'kekuatan';

  @override
  String get workout_yoga => 'Yoga & Fleksibiliti';

  @override
  String get workout_duration => 'Tempoh';

  @override
  String get workout_intensity => 'Intensiti';

  @override
  String get workout_calories_burned => 'Kalori Terbakar';

  @override
  String get workout_empty => 'Tiada latihan dilog hari ini';

  @override
  String get workout_save_success => 'Latihan berjaya disimpan!';

  @override
  String get workout_type => 'Jenis Latihan';

  @override
  String get workout_notes => 'Nota & Renungan';

  @override
  String get health_overview_title => 'Kesihatan & Vital';

  @override
  String get health_heart_rate => 'Kadar Jantung';

  @override
  String get health_blood_oxygen => 'Oksigen Darah (SpO2)';

  @override
  String get health_blood_pressure => 'Tekanan Darah';

  @override
  String get health_blood_glucose => 'Glukosa Darah';

  @override
  String get health_body_temperature => 'Suhu Badan';

  @override
  String get health_sleep_tracking => 'Penjejakan Tidur';

  @override
  String get health_weight_tracking => 'Berat & Komposisi Badan';

  @override
  String get health_waist_hip => 'Nisbah Pinggang-ke-Pinggul';

  @override
  String get health_devices_hub => 'Hab Peranti & Jam Pintar';

  @override
  String get health_sync_now => 'Segerakkan Data Kesihatan';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Terakhir disegerakkan: $time';
  }

  @override
  String get health_manual_entry => 'Kemasukan Kesihatan Manual';

  @override
  String get health_metric_detail => 'Butiran Metrik';

  @override
  String get health_connected_sensors => 'Penderia Kesihatan Bersambung';

  @override
  String get plan_title => 'Rancangan Harian';

  @override
  String get plan_weekly_title => 'Rancangan Kesihatan Mingguan';

  @override
  String get plan_calorie_target => 'Sasaran Kalori';

  @override
  String get plan_water_target => 'Sasaran Penghidratan';

  @override
  String get plan_step_target => 'Sasaran Langkah';

  @override
  String get plan_sleep_target => 'Sasaran Tidur';

  @override
  String get plan_meal_suggestions => 'Cadangan Hidangan';

  @override
  String get plan_healthy_habits => 'Tabiat & Petua Sihat';

  @override
  String get plan_coach_advice => 'Saranan Jurulatih Bloomi AI';

  @override
  String get plan_generated_title => 'Jadual Harian Diperibadikan';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Edit Profil';

  @override
  String get profile_name => 'Nama';

  @override
  String get profile_age => 'Umur';

  @override
  String get profile_gender => 'Jantina';

  @override
  String get profile_height => 'Ketinggian';

  @override
  String get profile_weight => 'Berat badan';

  @override
  String get profile_goal => 'Matlamat Utama';

  @override
  String get profile_activity_level => 'Tahap Aktiviti';

  @override
  String get profile_stats => 'Statistik Kesihatan Saya';

  @override
  String get profile_saved => 'Profil berjaya dikemas kini';

  @override
  String get profile_bmi => 'Indeks Jisim Badan (BMI)';

  @override
  String get profile_membership => 'Keahlian';

  @override
  String get settings => 'tetapan';

  @override
  String get preferences_habits => 'KEPERCAYAAN & TABIAT';

  @override
  String get appearance_theme => 'Penampilan & Tema';

  @override
  String get appearance_theme_sub =>
      'Gelap, Terang, Mod Sistem & Pilihan Latar Belakang Apl';

  @override
  String get permissions => 'Kebenaran & Akses Sistem';

  @override
  String get permissions_sub =>
      'Sambungan Kesihatan, Penderia Langkah, GPS, Pemberitahuan & Kamera';

  @override
  String get reminders_notifications => 'Peringatan & Pemberitahuan';

  @override
  String get reminders_sub =>
      'Masa makan, air, daftar masuk berat & peringatan waktu tidur';

  @override
  String get units_of_measurement => 'Unit Pengukuran';

  @override
  String get units_sub =>
      'Metrik (kg, cm, ml, km) atau Imperial (lbs, kaki/in, f oz)';

  @override
  String get app_language => 'Bahasa Apl';

  @override
  String get language_sub =>
      'Inggeris, हिन्दी (Hindi), Hinglish & 195+ bahasa global';

  @override
  String get home_screen_widgets => 'Widget Skrin Utama';

  @override
  String get widgets_sub =>
      'Widget Android langsung: Hab, Langkah, Air, Pemakanan & Maskot';

  @override
  String get wear_os_watch_app => 'Apl Jam Tangan Wear OS';

  @override
  String get wear_os_sub =>
      'Jam tangan pintar, jubin, komplikasi & vital hidup';

  @override
  String get goals_wellness => 'MATLAMAT & WAWASAN KESEHATAN';

  @override
  String get nutrition_targets => 'Sasaran Pemakanan & Pembahagian Makro';

  @override
  String get nutrition_targets_sub =>
      'Sasaran kalori, protein, karbohidrat, lemak & matlamat air';

  @override
  String get weekly_recap => 'Rekap Kesihatan Mingguan';

  @override
  String get weekly_recap_sub =>
      'Purata kalori 7 hari, nisbah makro & hari terbaik';

  @override
  String get streaks_milestones => 'Coretan & Pencapaian';

  @override
  String get streaks_sub => 'Garisan mekar aktif, lencana & pencapaian';

  @override
  String get connected_devices => 'PERANTI & EKOSISTEM YANG BERSAMBUNG';

  @override
  String get devices_hub => 'Hab Peranti & Jam Pintar';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Persekitaran & Cuaca';

  @override
  String get surroundings_sub =>
      'Kualiti udara (AQI), indeks UV & petua penghidratan cuaca';

  @override
  String get bloomi_pro => 'Langganan Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget skrin utama & penjejakan vitals';

  @override
  String get about_security => 'TENTANG & KESELAMATAN';

  @override
  String get about_bloomi => 'Tentang Bloomi';

  @override
  String get about_bloomi_sub => 'Bina spesifikasi, versi, atribusi';

  @override
  String get privacy_policy => 'Dasar Privasi';

  @override
  String get privacy_policy_sub =>
      'Seni bina data pada peranti diutamakan di luar talian';

  @override
  String get terms_conditions => 'Terma & Syarat';

  @override
  String get terms_conditions_sub =>
      'Syarat perkhidmatan dan garis panduan kesihatan';

  @override
  String get delete_account => 'Padam Akaun & Data';

  @override
  String get delete_account_sub =>
      'Padamkan data SQLite tempatan dan sandaran awan secara tidak dapat dipulihkan';

  @override
  String get healthy_habits =>
      'Bina tabiat kesihatan yang lembut dan berkekalan';

  @override
  String get all_logs => 'Data & Log Saya yang Dijejaki';

  @override
  String get search_language => 'Cari mengikut bahasa atau skrip asli...';

  @override
  String get languages_available => 'Bahasa Tersedia';

  @override
  String get no_matching_languages => 'Tiada bahasa yang sepadan ditemui';

  @override
  String get try_searching =>
      'Cuba cari mengikut skrip asli atau ejaan bahasa Inggeris';

  @override
  String get partially_translated => 'Sebahagian diterjemahkan';

  @override
  String get complete_translation => 'lengkap';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Bahasa ditetapkan kepada $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Persekitaran & Persekitaran';

  @override
  String get surroundings_aqi => 'Indeks Kualiti Udara';

  @override
  String get surroundings_uv => 'Indeks UV';

  @override
  String get surroundings_temp => 'Suhu';

  @override
  String get surroundings_humidity => 'Kelembapan';

  @override
  String get surroundings_hydration_advice =>
      'Kekal terhidrat dengan baik dalam keadaan cuaca semasa.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Cari Makanan';

  @override
  String get food_quick_barcode => 'Imbas Kod Bar 👑';

  @override
  String get food_quick_water => 'Tambah Air';

  @override
  String get food_quick_custom => 'Makanan Tersuai';

  @override
  String get surroundings_good => 'bagus';

  @override
  String get surroundings_moderate => 'Sederhana';

  @override
  String get surroundings_unhealthy => 'tak sihat';

  @override
  String get notifications_title => 'Pemberitahuan & Makluman';

  @override
  String get notifications_empty => 'Tiada pemberitahuan baharu';

  @override
  String get notifications_mark_read => 'Tandai Semua sebagai Dibaca';

  @override
  String get notifications_clear => 'Kosongkan Semua';

  @override
  String get reminders => 'Tetapan Peringatan';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Peringatan Sarapan 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'selamat pagi! Masa untuk sarapan berkhasiat di $time .';
  }

  @override
  String get reminders_lunch_title => 'Peringatan makan tengah hari 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Jeda dan nikmati makan tengah hari yang seimbang dan penuh perhatian di $time .';
  }

  @override
  String get reminders_dinner_title => 'Peringatan Makan Malam 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Masa untuk makan malam yang ringan dan memuaskan di $time .';
  }

  @override
  String get reminders_water_title => 'Nudge Penghidratan 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Masa untuk minum segelas air segar! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Timbangan Mingguan ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Jejaki metrik badan mingguan anda di Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Rehat Sebelum Tidur 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Bersantai dan bersedia untuk tidur yang lena ( $time ).';
  }

  @override
  String get onboard_welcome => 'Selamat datang ke Bloomi';

  @override
  String get onboard_sub =>
      'Rakan kesihatan dan pemakanan anda yang mesra, diutamakan di luar talian.';

  @override
  String get onboard_get_started => 'Mulakan';

  @override
  String get onboard_sign_in => 'Log Masuk';

  @override
  String get onboard_skip => 'Langkau';

  @override
  String get onboard_choose_goal => 'Apakah matlamat kesihatan utama anda?';

  @override
  String get onboard_goal_weight_loss => 'Berat Badan Lembut';

  @override
  String get onboard_goal_muscle => 'Pertambahan & Kekuatan Otot';

  @override
  String get onboard_goal_energy => 'Tenaga & Tenaga Harian';

  @override
  String get onboard_goal_habits => 'Pemakanan Berfikiran Sihat';

  @override
  String get onboard_about_you => 'Beritahu Kami Tentang Diri Anda';

  @override
  String get onboard_lifestyle => 'Rutin Harian Anda';

  @override
  String get onboard_permissions_title => 'Kebenaran & Akses Sistem';

  @override
  String get onboard_permissions_sub =>
      'Berikan akses kepada langkah penyegerakan, senaman dan peringatan.';

  @override
  String get onboard_plan_ready_title => 'Pelan Tersuai Anda Sedia!';

  @override
  String get onboard_plan_ready_sub =>
      'Kami mencipta peta jalan pemakanan dan kesihatan yang lembut dan diperibadikan hanya untuk anda.';

  @override
  String get onboard_enter_bloomi => 'Masuk Bloomi';

  @override
  String get insights_weekly_report => 'Rekap Kesihatan Mingguan';

  @override
  String insights_best_day(Object day) {
    return 'Hari Konsisten Terbaik: $day';
  }

  @override
  String get insights_streaks_badges => 'Coretan & Pencapaian';

  @override
  String insights_unlocked_on(Object date) {
    return 'Dibuka kunci pada $date';
  }

  @override
  String get insights_keep_going => 'Teruskan kemajuan yang hebat!';

  @override
  String get widgets_title => 'Widget Skrin Utama';

  @override
  String widgets_active_count(Object count) {
    return 'Widget Aktif: $count';
  }

  @override
  String get widgets_hub_title => 'Hab Kesihatan Bloomi';

  @override
  String get widgets_steps_title => 'Langkah & Cincin Aktif';

  @override
  String get widgets_water_title => 'Log Cepat Penghidratan';

  @override
  String get widgets_mascot_title => 'Rakan Maskot Bloomi';

  @override
  String get wear_os_title => 'Pakai Jam Pintar OS';

  @override
  String get wear_os_connected => 'Disambungkan ke Tonton';

  @override
  String get wear_os_sync => 'Segerakkan Data Tontonan';

  @override
  String get theme_title => 'Penampilan & Tema';

  @override
  String get theme_mode => 'Mod Tema';

  @override
  String get theme_light => 'Cahaya';

  @override
  String get theme_dark => 'Gelap';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Palet Latar Belakang';

  @override
  String get units_title => 'Unit Pengukuran';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, f oz)';

  @override
  String get home_unable_load => 'Tidak dapat memuatkan papan pemuka';

  @override
  String get home_health_permission_req =>
      'Kebenaran Sambungan Kesihatan Diperlukan';

  @override
  String get home_health_permission_desc =>
      'Bloomi memerlukan kebenaran Health Connect untuk menarik langkah sebenar, kadar denyutan jantung dan menyegerakkan widget rumah mudah alih dalam masa nyata.';

  @override
  String get home_allow_health => 'Benarkan Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Bersedia untuk hari yang penuh perhatian? ✨';

  @override
  String get home_quick_add => 'Tambah Pantas';

  @override
  String get home_live_gps => 'GPS langsung';

  @override
  String get home_calories_remaining_label => 'KALORI YANG TINGGAL';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Dimakan: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Ketik untuk Penjejak Air 💧';

  @override
  String get home_water_goal_reached => 'Matlamat harian tercapai 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml kepada matlamat harian';
  }

  @override
  String get home_details => 'Butiran';

  @override
  String get home_upgrade_plan_desc =>
      'Tingkatkan untuk membuka kunci sasaran harian & pelan AI yang diperibadikan';

  @override
  String get home_unlock => 'Buka kunci 👑';

  @override
  String get home_quick_log_hint => 'Rakam catatan kesihatan dengan cepat';

  @override
  String get food_serving_size => 'Saiz Hidangan';

  @override
  String get food_serving_grams => 'Hidangan (g)';

  @override
  String get food_number_servings => 'Bilangan Hidangan';

  @override
  String get food_calories_per_serving => 'Kalori setiap hidangan';

  @override
  String get food_recipe_ingredients => 'bahan-bahan';

  @override
  String get food_recipe_add_ingredient => 'Masukkan Bahan';

  @override
  String get food_recipe_directions => 'Arahan & Nota';

  @override
  String get food_recipe_total => 'Jumlah Pemakanan Resipi';

  @override
  String get food_recipe_per_serving => 'Pemakanan Per Hidangan';

  @override
  String get food_recipe_saved_toast => 'Makanan tersuai berjaya disimpan!';

  @override
  String get food_barcode_found => 'Produk Ditemui!';

  @override
  String get food_barcode_not_found_desc =>
      'Kami tidak dapat mencari kod bar ini dalam pangkalan data terbuka. Anda boleh menambahnya sebagai makanan tersuai.';

  @override
  String get food_add_custom_btn => 'Tambah Makanan Tersuai';

  @override
  String get food_scan_again => 'Imbas Lagi';

  @override
  String get food_review_items => 'Semak Makanan yang Dikesan';

  @override
  String get food_review_hint =>
      'Laraskan kuantiti atau alih keluar sebarang item yang tidak dikenali';

  @override
  String get food_log_selected => 'Log Makanan Terpilih';

  @override
  String get food_favourites_title => 'Makanan Kegemaran';

  @override
  String get food_recent_title => 'Makanan Terkini';

  @override
  String get food_no_favourites =>
      'Belum ada makanan kegemaran. Sentuh hati pada mana-mana makanan untuk disimpan di sini.';

  @override
  String get food_no_recents =>
      'Tiada makanan yang direkod baru-baru ini ditemui.';

  @override
  String get food_nutrition_details_title => 'Butiran Pemakanan Harian';

  @override
  String get food_macro_protein_label => 'Pecahan Protein';

  @override
  String get food_macro_carbs_label => 'Pecahan Karbohidrat';

  @override
  String get food_macro_fat_label => 'Pecahan Lemak';

  @override
  String get food_macro_fiber_label => 'Pecahan Serat';

  @override
  String get food_daily_target_comparison => 'Perbandingan Sasaran';

  @override
  String food_target_label(Object target) {
    return 'Sasaran: $target';
  }

  @override
  String get food_edit_entry => 'Edit Entri Diari';

  @override
  String get food_delete_entry => 'Padam Entri';

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
    return '$current daripada $target ml';
  }

  @override
  String get water_intake_history => 'Log Air Hari Ini';

  @override
  String get water_no_logs_today =>
      'Belum ada air yang dibalak hari ini. Hidrat dan ketik butang tambah pantas!';

  @override
  String get water_adjust_goal => 'Laraskan Matlamat Harian';

  @override
  String get health_connect_banner => 'Disambungkan ke Health Connect';

  @override
  String get health_vitals_summary => 'Penting Kesihatan Harian';

  @override
  String get health_latest_heart_rate => 'Kadar Jantung Terkini';

  @override
  String get health_latest_bp => 'Tekanan Darah';

  @override
  String get health_latest_spo2 => 'Oksigen Darah';

  @override
  String get health_latest_glucose => 'Glukosa Darah';

  @override
  String get health_latest_weight => 'Berat badan';

  @override
  String get health_latest_sleep => 'Tempoh Tidur';

  @override
  String get health_add_manual => 'Tambah Pengukuran Manual';

  @override
  String get health_history_trends => 'Trend Sejarah';

  @override
  String get health_sync_success => 'Data kesihatan berjaya disegerakkan!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours jam $mins min';
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
  String get health_devices_title => 'Peranti & Barang Boleh Dipakai';

  @override
  String get health_devices_desc =>
      'Urus jam tangan pintar berpasangan, penjejak kecergasan dan penderia kesihatan.';

  @override
  String get health_workout_editor_title => 'Edit Latihan';

  @override
  String get health_workout_name_label => 'Nama Senaman';

  @override
  String get health_workout_duration_label => 'Tempoh (minit)';

  @override
  String get health_workout_calories_label => 'Anggaran Kalori (kcal)';

  @override
  String get health_workout_date_label => 'Tarikh dan Masa';

  @override
  String get plan_daily_wellness_roadmap => 'Pelan Hala Tuju Anda';

  @override
  String get plan_morning_routine => 'Rutin Pagi';

  @override
  String get plan_afternoon_routine => 'Kesejahteraan Tengah Hari';

  @override
  String get plan_evening_routine => 'Wind-Down Petang';

  @override
  String get plan_coach_badge => 'Jurulatih AI Bloomi';

  @override
  String get plan_weekly_overview => 'Fokus Kesejahteraan 7 Hari';

  @override
  String get plan_targets_title => 'Sasaran & Matlamat Kesihatan';

  @override
  String get plan_calorie_budget_label => 'Belanjawan Kalori Harian';

  @override
  String get plan_water_budget_label => 'Sasaran Air Harian';

  @override
  String get plan_step_budget_label => 'Matlamat Langkah Harian';

  @override
  String get plan_macro_split_label => 'Nisbah Makronutrien';

  @override
  String get profile_personal_details => 'Butiran Peribadi';

  @override
  String get profile_body_stats => 'Ukuran Badan';

  @override
  String get profile_app_preferences => 'Keutamaan & Tetapan Apl';

  @override
  String get profile_edit_name_hint => 'nama awak';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Tinggi ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Berat ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Umur';

  @override
  String get profile_gender_male => 'jantan';

  @override
  String get profile_gender_female => 'perempuan';

  @override
  String get profile_gender_other =>
      'Lain-lain / Lebih suka untuk tidak mengatakan';

  @override
  String get profile_activity_sedentary =>
      'Sedentari (Sedikit atau tidak bersenam)';

  @override
  String get profile_activity_light => 'Aktif Ringan (1-3 hari/minggu)';

  @override
  String get profile_activity_moderate => 'Sederhana Aktif (3-5 hari/minggu)';

  @override
  String get profile_activity_very => 'Sangat Aktif (6-7 hari/minggu)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Pasang jubin Bloomi dan komplikasi pada jam tangan Wear OS anda untuk melihat kalori, air dan langkah.';

  @override
  String get settings_widgets_header => 'Widget Android Interaktif';

  @override
  String get settings_widgets_desc =>
      'Sematkan widget masa nyata pada skrin utama peranti anda untuk kemas kini segera.';

  @override
  String get settings_about_header => 'Tentang Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Bina 100';

  @override
  String get settings_about_credits =>
      'Dicipta dengan penuh perhatian untuk kehidupan yang sihat.';

  @override
  String get settings_terms_header => 'Terma dan Syarat';

  @override
  String get settings_privacy_header => 'Dasar Privasi';

  @override
  String get settings_delete_header => 'Padam Akaun & Data';

  @override
  String get settings_delete_warning =>
      'Tindakan ini tidak boleh dibuat asal. Semua makanan, senaman, vital dan profil anda akan dipadamkan secara kekal.';

  @override
  String get settings_delete_confirm_btn => 'Padam Kekal';

  @override
  String get onboard_welcome_headline => 'Selamat datang ke Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Penjejakan kesihatan yang lembut dan penuh perhatian direka bentuk sepanjang hidup anda.';

  @override
  String get onboard_step_about => 'Tentang Awak';

  @override
  String get onboard_step_goals => 'Matlamat Anda';

  @override
  String get onboard_step_lifestyle => 'Tabiat Harian';

  @override
  String get onboard_step_permissions => 'kebenaran';

  @override
  String get onboard_step_plan => 'sedia!';

  @override
  String get onboard_health_connect_perm => 'Akses Sambungan Kesihatan';

  @override
  String get onboard_step_sensors_perm => 'Penderia Pembilang Langkah';

  @override
  String get onboard_notif_perm => 'Peringatan & Pemberitahuan Berhati-hati';

  @override
  String get onboard_camera_perm => 'Kamera (Kod Bar & Pengimbas Makanan)';

  @override
  String get onboard_grant_permissions => 'Berikan Kebenaran';

  @override
  String get onboard_continue_dashboard => 'Buka Papan Pemuka';

  @override
  String get notif_channel_hydration_name => 'Nudges Penghidratan';

  @override
  String get notif_channel_hydration_desc =>
      'Peringatan air lembut sepanjang hari';

  @override
  String get notif_channel_nutrition_name => 'Peringatan Makanan & Pemakanan';

  @override
  String get notif_channel_nutrition_desc =>
      'Makluman peringatan sarapan, makan tengah hari dan makan malam';

  @override
  String get notif_channel_steps_name => 'Langkah Pencapaian';

  @override
  String get notif_channel_steps_desc =>
      'Perayaan apabila mencapai sasaran langkah harian';

  @override
  String get notif_channel_vitals_name => 'Pemeriksaan Kesihatan & Vitals';

  @override
  String get notif_channel_vitals_desc =>
      'Peringatan penurunan berat badan dan waktu tidur';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Tunda 15m';

  @override
  String get notif_action_log_meal => '🥗 Makanan Log';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
