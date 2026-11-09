// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Rumah';

  @override
  String get nav_today => 'Hari ini';

  @override
  String get nav_plan => 'Rencana';

  @override
  String get nav_food => 'Makanan';

  @override
  String get nav_food_diary => 'Buku Harian Makanan';

  @override
  String get nav_workout => 'Catatan Latihan';

  @override
  String get nav_health => 'Kesehatan';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Simpan';

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Hapus';

  @override
  String get edit => 'Ubah';

  @override
  String get done => 'Selesai';

  @override
  String get close => 'Tutup';

  @override
  String get back => 'Kembali';

  @override
  String get next => 'Selanjutnya';

  @override
  String get continue_btn => 'Lanjutkan';

  @override
  String get confirm => 'Konfirmasikan';

  @override
  String get search => 'Cari';

  @override
  String get filter => 'Menyaring';

  @override
  String get all => 'Semua';

  @override
  String get active => 'Aktif';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Kemarin';

  @override
  String get tomorrow => 'Besok';

  @override
  String get add => 'Tambahkan';

  @override
  String get remove => 'Hapus';

  @override
  String get refresh => 'Segarkan';

  @override
  String get retry => 'Coba lagi';

  @override
  String get error => 'Kesalahan';

  @override
  String get success => 'Sukses';

  @override
  String get loading => 'Memuat...';

  @override
  String get no_data => 'Tidak ada data yang tersedia';

  @override
  String get offline => 'Modus Luar Talian';

  @override
  String get offline_sub =>
      'Perubahan akan disinkronkan setelah tersambung kembali';

  @override
  String get undo => 'Urungkan';

  @override
  String get portion => 'Porsi';

  @override
  String get quantity => 'Kuantitas';

  @override
  String get unit => 'Satuan';

  @override
  String get clear => 'Jelas';

  @override
  String get select => 'Pilih';

  @override
  String get apply => 'Terapkan';

  @override
  String get reset => 'Setel ulang';

  @override
  String get ok => 'OKE';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Tidak';

  @override
  String get optional => 'Opsional';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Karbohidrat';

  @override
  String get fat => 'Gemuk';

  @override
  String get fiber => 'Serat';

  @override
  String get water => 'Air';

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
  String get pounds => 'pon';

  @override
  String get centimeters => 'cm';

  @override
  String get inches => 'di';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'jam';

  @override
  String get minutes => 'menit';

  @override
  String get serving => 'Melayani';

  @override
  String get servings => 'Porsi';

  @override
  String get serving_size => 'Ukuran Porsi';

  @override
  String get per_100g => 'per 100 gram';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Eropa';

  @override
  String get middle_east => 'Timur Tengah';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Rumah';

  @override
  String get home_greeting_morning => 'Selamat pagi';

  @override
  String get home_greeting_afternoon => 'Selamat sore';

  @override
  String get home_greeting_evening => 'Selamat malam';

  @override
  String get home_streak_title => 'Garis Mekar';

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
  String get home_calories_budget => 'Anggaran Kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal sisa kkal';
  }

  @override
  String get home_water_title => 'Hidrasi Harian';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / ${target}ml';
  }

  @override
  String get home_steps_title => 'Langkah Berjalan';

  @override
  String get home_quick_actions => 'Tindakan Cepat';

  @override
  String get home_log_meal => 'Log Makan';

  @override
  String get home_log_water => 'Log Air';

  @override
  String get home_log_workout => 'Log Latihan';

  @override
  String get home_log_weight => 'Berat Log';

  @override
  String get home_insights_title => 'Wawasan Hari Ini';

  @override
  String get home_quote =>
      'Pilihan kecil yang sehat menciptakan transformasi yang berkembang.';

  @override
  String get home_ai_coach_tip => 'Pelatih AI Bloomi';

  @override
  String get home_surroundings => 'Lingkungan & Udara';

  @override
  String get home_notifications => 'Notifikasi';

  @override
  String get home_daily_score => 'Skor Kesehatan Harian';

  @override
  String get home_view_all => 'Lihat Semua';

  @override
  String get food_diary_title => 'Buku Harian Makanan';

  @override
  String get food_breakfast => 'Sarapan';

  @override
  String get food_lunch => 'Makan siang';

  @override
  String get food_dinner => 'Makan malam';

  @override
  String get food_snacks => 'Makanan ringan';

  @override
  String get food_add_food => 'Tambahkan Makanan';

  @override
  String get food_edit_food => 'Sunting Makanan';

  @override
  String get food_add_breakfast => 'Tambahkan Sarapan';

  @override
  String get food_add_lunch => 'Tambahkan Makan Siang';

  @override
  String get food_add_dinner => 'Tambahkan Makan Malam';

  @override
  String get food_add_snack => 'Tambahkan Camilan';

  @override
  String get food_total_calories => 'Jumlah Kalori';

  @override
  String get food_empty_meal =>
      'Belum ada makanan yang dicatat untuk makanan ini';

  @override
  String get food_empty_diary =>
      'Tidak ada makanan yang dicatat untuk hari ini';

  @override
  String get food_log_first_meal =>
      'Ketuk + untuk mencatat makanan lezat pertama Anda';

  @override
  String get food_quick_add => 'Tambah Cepat';

  @override
  String get food_search_hint => 'Cari piring, buah-buahan, dal, roti...';

  @override
  String get food_custom_recipe => 'Makanan & Resep Khusus';

  @override
  String get food_scan_barcode => 'Pindai Kode Batang';

  @override
  String get food_camera_scan => 'Pemindai Makanan AI';

  @override
  String get food_recent => 'Makanan Terbaru';

  @override
  String get food_favourites => 'Favorit';

  @override
  String get food_macro_summary => 'Kerusakan Makronutrien';

  @override
  String get food_delete_meal_confirm =>
      'Apakah Anda yakin ingin menghapus item ini?';

  @override
  String get food_item_deleted => 'Item makanan dihapus';

  @override
  String get food_remaining => 'tersisa';

  @override
  String get food_consumed => 'dikonsumsi';

  @override
  String food_of_target(Object target) {
    return 'dari $target kkal';
  }

  @override
  String get foodSearch_title => 'Cari Makanan';

  @override
  String get foodSearch_scan_barcode => 'Pindai Kode Batang';

  @override
  String get foodSearch_take_photo => 'Jepret Foto Makanan';

  @override
  String get foodSearch_custom_food => 'Buat Makanan Khusus';

  @override
  String get foodSearch_recent_searches => 'Pencarian Terbaru';

  @override
  String get foodSearch_popular => 'Hidangan Populer';

  @override
  String get foodSearch_no_results =>
      'Tidak ada makanan yang cocok dengan pencarian Anda';

  @override
  String get barcode_title => 'Pemindai Kode Batang';

  @override
  String get barcode_align => 'Sejajarkan kode batang di dalam bingkai kamera';

  @override
  String get barcode_not_found => 'Produk tidak ditemukan di database';

  @override
  String get barcode_premium_feature =>
      'Pemindaian kode batang tersedia dengan Bloomi Pro';

  @override
  String get camera_title => 'Pemindai Makanan AI';

  @override
  String get camera_tap_hint => 'Ambil foto hidangan Anda dengan jelas';

  @override
  String get camera_analysing => 'Menganalisis piring makanan...';

  @override
  String get camera_detected => 'Item terdeteksi';

  @override
  String get camera_flash => 'Alihkan Flash';

  @override
  String get camera_retake => 'Ambil Ulang Foto';

  @override
  String get camera_confirm_food => 'Konfirmasi Barang';

  @override
  String get customFood_title => 'Makanan & Resep Khusus';

  @override
  String get customFood_name_hint => 'Nama hidangan atau bahan';

  @override
  String get customFood_calories_hint => 'Kalori (kkal)';

  @override
  String get customFood_protein_hint => 'Protein (gram)';

  @override
  String get customFood_carbs_hint => 'Karbohidrat (g)';

  @override
  String get customFood_fat_hint => 'Lemak (g)';

  @override
  String get customFood_save => 'Simpan Resep';

  @override
  String get water_tracker_title => 'Pelacak Air';

  @override
  String get water_daily_target => 'Sasaran Hidrasi Harian';

  @override
  String get water_logged_today => 'Dicatat Hari Ini';

  @override
  String get water_add_glass => '+250 ml Gelas';

  @override
  String get water_add_bottle => '+ Botol 500 ml';

  @override
  String get water_custom_amount => 'Jumlah Khusus';

  @override
  String get water_reminder_tip =>
      'Minumlah air secara teratur sepanjang hari untuk mendapatkan energi yang stabil.';

  @override
  String water_logged_toast(Object amount) {
    return 'Tercatat $amount ml air 💧';
  }

  @override
  String get workout_title => 'Catatan Latihan';

  @override
  String get workout_add_exercise => 'Tambahkan Latihan';

  @override
  String get workout_cardio => 'kardio';

  @override
  String get workout_strength => 'Kekuatan';

  @override
  String get workout_yoga => 'Yoga & Fleksibilitas';

  @override
  String get workout_duration => 'Durasi';

  @override
  String get workout_intensity => 'Intensitas';

  @override
  String get workout_calories_burned => 'Kalori Terbakar';

  @override
  String get workout_empty => 'Tidak ada latihan yang dicatat hari ini';

  @override
  String get workout_save_success => 'Latihan berhasil disimpan!';

  @override
  String get workout_type => 'Jenis Latihan';

  @override
  String get workout_notes => 'Catatan & Refleksi';

  @override
  String get health_overview_title => 'Kesehatan & Vital';

  @override
  String get health_heart_rate => 'Detak Jantung';

  @override
  String get health_blood_oxygen => 'Oksigen Darah (SpO2)';

  @override
  String get health_blood_pressure => 'Tekanan Darah';

  @override
  String get health_blood_glucose => 'Glukosa Darah';

  @override
  String get health_body_temperature => 'Suhu Tubuh';

  @override
  String get health_sleep_tracking => 'Pelacakan Tidur';

  @override
  String get health_weight_tracking => 'Berat & Komposisi Tubuh';

  @override
  String get health_waist_hip => 'Rasio Pinggang-Pinggul';

  @override
  String get health_devices_hub => 'Perangkat & Pusat Jam Tangan Pintar';

  @override
  String get health_sync_now => 'Sinkronkan Data Kesehatan';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Terakhir disinkronkan: $time';
  }

  @override
  String get health_manual_entry => 'Entri Kesehatan Manual';

  @override
  String get health_metric_detail => 'Detail Metrik';

  @override
  String get health_connected_sensors => 'Sensor Kesehatan yang Terhubung';

  @override
  String get plan_title => 'Paket Harian';

  @override
  String get plan_weekly_title => 'Rencana Kesehatan Mingguan';

  @override
  String get plan_calorie_target => 'Sasaran Kalori';

  @override
  String get plan_water_target => 'Target Hidrasi';

  @override
  String get plan_step_target => 'Sasaran Langkah';

  @override
  String get plan_sleep_target => 'Sasaran Tidur';

  @override
  String get plan_meal_suggestions => 'Saran Makanan';

  @override
  String get plan_healthy_habits => 'Kebiasaan & Tips Sehat';

  @override
  String get plan_coach_advice => 'Rekomendasi Pelatih Bloomi AI';

  @override
  String get plan_generated_title => 'Jadwal Harian yang Dipersonalisasi';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Sunting Profil';

  @override
  String get profile_name => 'Nama';

  @override
  String get profile_age => 'Usia';

  @override
  String get profile_gender => 'Jenis Kelamin';

  @override
  String get profile_height => 'Tinggi';

  @override
  String get profile_weight => 'Berat';

  @override
  String get profile_goal => 'Tujuan Utama';

  @override
  String get profile_activity_level => 'Tingkat Aktivitas';

  @override
  String get profile_stats => 'Statistik Kesehatan Saya';

  @override
  String get profile_saved => 'Profil berhasil diperbarui';

  @override
  String get profile_bmi => 'Indeks Massa Tubuh (BMI)';

  @override
  String get profile_membership => 'Keanggotaan';

  @override
  String get settings => 'Pengaturan';

  @override
  String get preferences_habits => 'PREFERENSI & KEBIASAAN';

  @override
  String get appearance_theme => 'Penampilan & Tema';

  @override
  String get appearance_theme_sub =>
      'Gelap, Terang, Mode Sistem & Opsi Latar Belakang Aplikasi';

  @override
  String get permissions => 'Izin & Akses Sistem';

  @override
  String get permissions_sub =>
      'Health Connect, Sensor Langkah, GPS, Notifikasi & Kamera';

  @override
  String get reminders_notifications => 'Pengingat & Pemberitahuan';

  @override
  String get reminders_sub =>
      'Waktu makan, air, check-in berat badan & pengingat waktu tidur';

  @override
  String get units_of_measurement => 'Satuan Pengukuran';

  @override
  String get units_sub =>
      'Metrik (kg, cm, ml, km) atau Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Bahasa Aplikasi';

  @override
  String get language_sub =>
      'Inggris, हिन्दी (Hindi), Hinglish & 195+ bahasa global';

  @override
  String get home_screen_widgets => 'Widget Layar Utama';

  @override
  String get widgets_sub =>
      'Widget Android langsung: Hub, Langkah, Air, Nutrisi & Maskot';

  @override
  String get wear_os_watch_app => 'Aplikasi Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Pendamping jam tangan pintar, ubin, komplikasi & tanda vital langsung';

  @override
  String get goals_wellness => 'TUJUAN & WAWASAN KESEHATAN';

  @override
  String get nutrition_targets => 'Target Gizi & Pembagian Makro';

  @override
  String get nutrition_targets_sub =>
      'Target kalori, target protein, karbohidrat, lemak & air';

  @override
  String get weekly_recap => 'Rekap Kesehatan Mingguan';

  @override
  String get weekly_recap_sub =>
      'Rata-rata kalori 7 hari, rasio makro & hari terbaik';

  @override
  String get streaks_milestones => 'Garis & Tonggak Pencapaian';

  @override
  String get streaks_sub => 'Goresan bunga aktif, lencana & pencapaian';

  @override
  String get connected_devices => 'PERANGKAT & EKOSISTEM YANG TERHUBUNG';

  @override
  String get devices_hub => 'Perangkat & Pusat Jam Tangan Pintar';

  @override
  String get devices_hub_sub =>
      'Sambungan Kesehatan, Jam Tangan Galaxy, Jam Tangan Pixel, Garmin';

  @override
  String get surroundings_weather => 'Lingkungan & Cuaca';

  @override
  String get surroundings_sub =>
      'Kualitas udara (AQI), indeks UV & tip hidrasi cuaca';

  @override
  String get bloomi_pro => 'Berlangganan Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget layar beranda & pelacakan tanda vital';

  @override
  String get about_security => 'TENTANG & KEAMANAN';

  @override
  String get about_bloomi => 'Tentang Bloomi';

  @override
  String get about_bloomi_sub => 'Spesifikasi build, versi, atribusi';

  @override
  String get privacy_policy => 'Kebijakan Privasi';

  @override
  String get privacy_policy_sub =>
      'Arsitektur data di perangkat yang mengutamakan offline';

  @override
  String get terms_conditions => 'Syarat & Ketentuan';

  @override
  String get terms_conditions_sub => 'Ketentuan layanan dan pedoman kesehatan';

  @override
  String get delete_account => 'Hapus Akun & Data';

  @override
  String get delete_account_sub =>
      'Menghapus data SQLite lokal dan cadangan cloud secara permanen';

  @override
  String get healthy_habits =>
      'Bangun kebiasaan kesehatan yang lembut dan bertahan lama';

  @override
  String get all_logs => 'Data & Log Saya yang Dilacak';

  @override
  String get search_language =>
      'Telusuri berdasarkan bahasa atau skrip asli...';

  @override
  String get languages_available => 'Bahasa Tersedia';

  @override
  String get no_matching_languages => 'Tidak ditemukan bahasa yang cocok';

  @override
  String get try_searching =>
      'Coba telusuri berdasarkan skrip asli atau ejaan bahasa Inggris';

  @override
  String get partially_translated => 'Diterjemahkan sebagian';

  @override
  String get complete_translation => 'Lengkap';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Bahasa disetel ke $name ( $nativeName )';
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
  String get surroundings_humidity => 'Kelembaban';

  @override
  String get surroundings_hydration_advice =>
      'Tetap terhidrasi dengan baik dalam kondisi cuaca saat ini.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Cari Makanan';

  @override
  String get food_quick_barcode => 'Pindai Kode Batang 👑';

  @override
  String get food_quick_water => 'Tambahkan Air';

  @override
  String get food_quick_custom => 'Makanan Khusus';

  @override
  String get surroundings_good => 'Bagus';

  @override
  String get surroundings_moderate => 'Sedang';

  @override
  String get surroundings_unhealthy => 'Tidak sehat';

  @override
  String get notifications_title => 'Pemberitahuan & Peringatan';

  @override
  String get notifications_empty => 'Tidak ada notifikasi baru';

  @override
  String get notifications_mark_read => 'Tandai Semua sebagai Telah Dibaca';

  @override
  String get notifications_clear => 'Hapus Semua';

  @override
  String get reminders => 'Pengaturan Pengingat';

  @override
  String get notifications => 'Notifikasi Push';

  @override
  String get reminders_breakfast_title => 'Pengingat Sarapan 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Selamat pagi! Saatnya sarapan bergizi di $time .';
  }

  @override
  String get reminders_lunch_title => 'Pengingat Makan Siang 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Berhenti sejenak dan nikmati makan siang yang seimbang dan penuh perhatian di $time .';
  }

  @override
  String get reminders_dinner_title => 'Pengingat Makan Malam 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Saatnya makan malam ringan dan memuaskan di $time .';
  }

  @override
  String get reminders_water_title => 'Dorongan Hidrasi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Saatnya minum segelas air segar! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Penimbangan Mingguan ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Lacak metrik tubuh mingguan Anda di Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Istirahat Sebelum Tidur 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Bersantai dan bersiap untuk tidur nyenyak ( $time ).';
  }

  @override
  String get onboard_welcome => 'Selamat datang di Bloomi';

  @override
  String get onboard_sub =>
      'Pendamping kesehatan dan nutrisi Anda yang ramah dan mengutamakan offline.';

  @override
  String get onboard_get_started => 'Memulai';

  @override
  String get onboard_sign_in => 'Masuk';

  @override
  String get onboard_skip => 'Lewati';

  @override
  String get onboard_choose_goal => 'Apa tujuan kesehatan utama Anda?';

  @override
  String get onboard_goal_weight_loss => 'Penurunan Berat Badan yang Lembut';

  @override
  String get onboard_goal_muscle => 'Penguatan & Kekuatan Otot';

  @override
  String get onboard_goal_energy => 'Energi & Vitalitas Harian';

  @override
  String get onboard_goal_habits => 'Makan Sehat dengan Penuh Perhatian';

  @override
  String get onboard_about_you => 'Beritahu Kami Tentang Diri Anda';

  @override
  String get onboard_lifestyle => 'Rutinitas Harian Anda';

  @override
  String get onboard_permissions_title => 'Izin & Akses Sistem';

  @override
  String get onboard_permissions_sub =>
      'Berikan akses untuk menyinkronkan langkah, olahraga, dan pengingat.';

  @override
  String get onboard_plan_ready_title => 'Paket Kustom Anda Sudah Siap!';

  @override
  String get onboard_plan_ready_sub =>
      'Kami menyusun peta jalan nutrisi dan kesehatan yang lembut dan dipersonalisasi hanya untuk Anda.';

  @override
  String get onboard_enter_bloomi => 'Masukkan Bloomi';

  @override
  String get insights_weekly_report => 'Rekap Kesehatan Mingguan';

  @override
  String insights_best_day(Object day) {
    return 'Hari Konsistensi Terbaik: $day';
  }

  @override
  String get insights_streaks_badges => 'Garis & Tonggak Pencapaian';

  @override
  String insights_unlocked_on(Object date) {
    return 'Tidak terkunci pada $date';
  }

  @override
  String get insights_keep_going => 'Pertahankan kemajuan luar biasa ini!';

  @override
  String get widgets_title => 'Widget Layar Beranda';

  @override
  String widgets_active_count(Object count) {
    return 'Widget Aktif: $count';
  }

  @override
  String get widgets_hub_title => 'Pusat Kesehatan Bloomi';

  @override
  String get widgets_steps_title => 'Langkah & Dering Aktif';

  @override
  String get widgets_water_title => 'Log Cepat Hidrasi';

  @override
  String get widgets_mascot_title => 'Pendamping Maskot Bloomi';

  @override
  String get wear_os_title => 'Pakai jam tangan pintar OS';

  @override
  String get wear_os_connected => 'Terhubung ke Jam Tangan';

  @override
  String get wear_os_sync => 'Sinkronkan Data Tontonan';

  @override
  String get theme_title => 'Penampilan & Tema';

  @override
  String get theme_mode => 'Mode Tema';

  @override
  String get theme_light => 'Terang';

  @override
  String get theme_dark => 'Gelap';

  @override
  String get theme_system => 'Sistem';

  @override
  String get theme_background_palette => 'Palet Latar Belakang';

  @override
  String get units_title => 'Satuan Pengukuran';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Tidak dapat memuat dasbor';

  @override
  String get home_health_permission_req => 'Izin Koneksi Kesehatan Diperlukan';

  @override
  String get home_health_permission_desc =>
      'Bloomi memerlukan izin Health Connect untuk melakukan langkah nyata, detak jantung, dan menyinkronkan widget rumah seluler secara real time.';

  @override
  String get home_allow_health => 'Izinkan Health Connect';

  @override
  String get home_ready_mindful_day =>
      'Siap untuk hari yang penuh perhatian? ✨';

  @override
  String get home_quick_add => 'Tambah Cepat';

  @override
  String get home_live_gps => 'GPS langsung';

  @override
  String get home_calories_remaining_label => 'SISA KALORI';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Dimakan: $consumed / $target kkal';
  }

  @override
  String get home_tap_water_tracker => 'Ketuk untuk Pelacak Air 💧';

  @override
  String get home_water_goal_reached => 'Target harian tercapai 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ke sasaran harian';
  }

  @override
  String get home_details => 'Detail';

  @override
  String get home_upgrade_plan_desc =>
      'Tingkatkan untuk membuka target harian & paket AI yang dipersonalisasi';

  @override
  String get home_unlock => 'Buka kunci 👑';

  @override
  String get home_quick_log_hint => 'Catat entri kesehatan dengan cepat';

  @override
  String get food_serving_size => 'Ukuran Porsi';

  @override
  String get food_serving_grams => 'Penyajian (g)';

  @override
  String get food_number_servings => 'Jumlah Porsi';

  @override
  String get food_calories_per_serving => 'Kalori per porsi';

  @override
  String get food_recipe_ingredients => 'Bahan';

  @override
  String get food_recipe_add_ingredient => 'Tambahkan Bahan';

  @override
  String get food_recipe_directions => 'Instruksi & Catatan';

  @override
  String get food_recipe_total => 'Nutrisi Resep Total';

  @override
  String get food_recipe_per_serving => 'Per Porsi Nutrisi';

  @override
  String get food_recipe_saved_toast => 'Makanan khusus berhasil disimpan!';

  @override
  String get food_barcode_found => 'Produk Ditemukan!';

  @override
  String get food_barcode_not_found_desc =>
      'Kami tidak dapat menemukan kode batang ini di database terbuka. Anda bisa menambahkannya sebagai makanan khusus.';

  @override
  String get food_add_custom_btn => 'Tambahkan Makanan Khusus';

  @override
  String get food_scan_again => 'Pindai Lagi';

  @override
  String get food_review_items => 'Tinjau Makanan yang Terdeteksi';

  @override
  String get food_review_hint =>
      'Sesuaikan jumlah atau hapus item yang tidak dikenal';

  @override
  String get food_log_selected => 'Catat Makanan yang Dipilih';

  @override
  String get food_favourites_title => 'Makanan Favorit';

  @override
  String get food_recent_title => 'Makanan Terbaru';

  @override
  String get food_no_favourites =>
      'Belum ada makanan favorit. Ketuk hati pada makanan apa pun untuk disimpan di sini.';

  @override
  String get food_no_recents =>
      'Tidak ditemukan makanan yang dicatat baru-baru ini.';

  @override
  String get food_nutrition_details_title => 'Detail Nutrisi Harian';

  @override
  String get food_macro_protein_label => 'Pemecahan Protein';

  @override
  String get food_macro_carbs_label => 'Pemecahan Karbohidrat';

  @override
  String get food_macro_fat_label => 'Pemecahan Lemak';

  @override
  String get food_macro_fiber_label => 'Kerusakan Serat';

  @override
  String get food_daily_target_comparison => 'Perbandingan Sasaran';

  @override
  String food_target_label(Object target) {
    return 'Sasaran: $target';
  }

  @override
  String get food_edit_entry => 'Edit Entri Buku Harian';

  @override
  String get food_delete_entry => 'Hapus Entri';

  @override
  String food_grams_short(Object grams) {
    return '$grams gram';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kkal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current dari ${target}ml';
  }

  @override
  String get water_intake_history => 'Log Air Hari Ini';

  @override
  String get water_no_logs_today =>
      'Belum ada air yang tergenang hari ini. Hidrasi dan ketuk tombol tambah cepat!';

  @override
  String get water_adjust_goal => 'Sesuaikan Tujuan Harian';

  @override
  String get health_connect_banner => 'Terhubung ke Health Connect';

  @override
  String get health_vitals_summary => 'Vital Kesehatan Harian';

  @override
  String get health_latest_heart_rate => 'Denyut Jantung Terbaru';

  @override
  String get health_latest_bp => 'Tekanan Darah';

  @override
  String get health_latest_spo2 => 'Oksigen Darah';

  @override
  String get health_latest_glucose => 'Glukosa Darah';

  @override
  String get health_latest_weight => 'Berat';

  @override
  String get health_latest_sleep => 'Durasi Tidur';

  @override
  String get health_add_manual => 'Tambahkan Pengukuran Manual';

  @override
  String get health_history_trends => 'Tren Sejarah';

  @override
  String get health_sync_success => 'Data kesehatan berhasil disinkronkan!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours jam $mins menit';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '${val}kg';
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
  String get health_devices_title =>
      'Perangkat & Perangkat yang Dapat Dipakai yang Terhubung';

  @override
  String get health_devices_desc =>
      'Kelola jam tangan pintar, pelacak kebugaran, dan sensor kesehatan yang dipasangkan.';

  @override
  String get health_workout_editor_title => 'Sunting Latihan';

  @override
  String get health_workout_name_label => 'Nama Latihan';

  @override
  String get health_workout_duration_label => 'Durasi (menit)';

  @override
  String get health_workout_calories_label => 'Perkiraan Kalori (kkal)';

  @override
  String get health_workout_date_label => 'Tanggal dan Waktu';

  @override
  String get plan_daily_wellness_roadmap => 'Peta Jalan Pribadi Anda';

  @override
  String get plan_morning_routine => 'Rutinitas Pagi';

  @override
  String get plan_afternoon_routine => 'Kesehatan Tengah Hari';

  @override
  String get plan_evening_routine => 'Istirahat Sore';

  @override
  String get plan_coach_badge => 'Pelatih AI Bloomi';

  @override
  String get plan_weekly_overview => 'Fokus Kesehatan 7 Hari';

  @override
  String get plan_targets_title => 'Target & Sasaran Kesehatan';

  @override
  String get plan_calorie_budget_label => 'Anggaran Kalori Harian';

  @override
  String get plan_water_budget_label => 'Target Air Harian';

  @override
  String get plan_step_budget_label => 'Sasaran Langkah Harian';

  @override
  String get plan_macro_split_label => 'Rasio Makronutrien';

  @override
  String get profile_personal_details => 'Detail Pribadi';

  @override
  String get profile_body_stats => 'Pengukuran Tubuh';

  @override
  String get profile_app_preferences => 'Preferensi & Pengaturan Aplikasi';

  @override
  String get profile_edit_name_hint => 'Namamu';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Tinggi ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Berat ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Usia';

  @override
  String get profile_gender_male => 'Laki-laki';

  @override
  String get profile_gender_female => 'Perempuan';

  @override
  String get profile_gender_other =>
      'Lainnya / Memilih untuk tidak mengatakannya';

  @override
  String get profile_activity_sedentary =>
      'Menetap (Sedikit atau tidak berolahraga)';

  @override
  String get profile_activity_light => 'Ringan Aktif (1-3 hari/minggu)';

  @override
  String get profile_activity_moderate => 'Cukup Aktif (3-5 hari/minggu)';

  @override
  String get profile_activity_very => 'Sangat Aktif (6-7 hari/minggu)';

  @override
  String get settings_wear_os_header => 'Pakai Aplikasi Pendamping OS';

  @override
  String get settings_wear_os_desc =>
      'Instal ubin Bloomi dan komplikasi di jam tangan Wear OS Anda untuk melihat sekilas kalori, air, dan langkah.';

  @override
  String get settings_widgets_header => 'Widget Android Interaktif';

  @override
  String get settings_widgets_desc =>
      'Sematkan widget real-time di layar beranda perangkat Anda untuk pembaruan instan.';

  @override
  String get settings_about_header => 'Tentang Bloomi';

  @override
  String get settings_about_version => 'Versi';

  @override
  String get settings_about_build => 'Bangun 100';

  @override
  String get settings_about_credits =>
      'Dibuat dengan hati-hati untuk hidup penuh perhatian dan sehat.';

  @override
  String get settings_terms_header => 'Syarat dan Ketentuan';

  @override
  String get settings_privacy_header => 'Kebijakan Privasi';

  @override
  String get settings_delete_header => 'Hapus Akun & Data';

  @override
  String get settings_delete_warning =>
      'Tindakan ini tidak dapat dibatalkan. Semua makanan, olahraga, tanda-tanda vital, dan profil Anda akan dihapus secara permanen.';

  @override
  String get settings_delete_confirm_btn => 'Hapus Secara Permanen';

  @override
  String get onboard_welcome_headline => 'Selamat datang di Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Pelacakan kesehatan yang lembut dan penuh perhatian dirancang sepanjang hidup Anda.';

  @override
  String get onboard_step_about => 'Tentang Anda';

  @override
  String get onboard_step_goals => 'Tujuan Anda';

  @override
  String get onboard_step_lifestyle => 'Kebiasaan Sehari-hari';

  @override
  String get onboard_step_permissions => 'Izin';

  @override
  String get onboard_step_plan => 'Siap!';

  @override
  String get onboard_health_connect_perm => 'Akses Sambungan Kesehatan';

  @override
  String get onboard_step_sensors_perm => 'Sensor Penghitung Langkah';

  @override
  String get onboard_notif_perm =>
      'Pengingat & Pemberitahuan yang Penuh Perhatian';

  @override
  String get onboard_camera_perm => 'Kamera (Barcode & Pemindai Makanan)';

  @override
  String get onboard_grant_permissions => 'Berikan Izin';

  @override
  String get onboard_continue_dashboard => 'Buka Dasbor';

  @override
  String get notif_channel_hydration_name => 'Dorongan Hidrasi';

  @override
  String get notif_channel_hydration_desc =>
      'Pengingat air lembut sepanjang hari';

  @override
  String get notif_channel_nutrition_name => 'Pengingat Makanan & Nutrisi';

  @override
  String get notif_channel_nutrition_desc =>
      'Peringatan pengingat sarapan, makan siang, dan makan malam';

  @override
  String get notif_channel_steps_name => 'Langkah Milestone';

  @override
  String get notif_channel_steps_desc =>
      'Perayaan ketika mencapai target langkah harian';

  @override
  String get notif_channel_vitals_name => 'Pemeriksaan Kesehatan & Vital';

  @override
  String get notif_channel_vitals_desc =>
      'Pengingat penurunan berat badan dan waktu tidur';

  @override
  String get notif_action_log_water => '💧 Masuk +250ml';

  @override
  String get notif_action_snooze => 'Tunda 15m';

  @override
  String get notif_action_log_meal => '🥗 Catat Makanan';

  @override
  String get language => 'Bahasa';

  @override
  String get share => 'Bagikan';

  @override
  String common_days(Object count) {
    return '${count}h yang lalu';
  }
}
