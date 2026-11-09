// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sundanese (`su`).
class AppLocalizationsSu extends AppLocalizations {
  AppLocalizationsSu([String locale = 'su']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Imah';

  @override
  String get nav_today => 'Kiwari';

  @override
  String get nav_plan => 'Rencana';

  @override
  String get nav_food => 'Dahareun';

  @override
  String get nav_food_diary => 'Diary dahareun';

  @override
  String get nav_workout => 'Latihan Log';

  @override
  String get nav_health => 'Kaséhatan';

  @override
  String get nav_profile => 'Propil';

  @override
  String get save => 'Simpen';

  @override
  String get cancel => 'Ngabolaykeun';

  @override
  String get delete => 'Hapus';

  @override
  String get edit => 'Édit';

  @override
  String get done => 'Réngsé';

  @override
  String get close => 'Tutup';

  @override
  String get back => 'Balik deui';

  @override
  String get next => 'Salajengna';

  @override
  String get continue_btn => 'Teraskeun';

  @override
  String get confirm => 'Konpirmasi';

  @override
  String get search => 'Pilarian';

  @override
  String get filter => 'Nyaring';

  @override
  String get all => 'Sadayana';

  @override
  String get active => 'Aktif';

  @override
  String get today => 'Kiwari';

  @override
  String get yesterday => 'Kamari';

  @override
  String get tomorrow => 'isukan';

  @override
  String get add => 'Tambihan';

  @override
  String get remove => 'Cabut';

  @override
  String get refresh => 'Nyegerkeun';

  @override
  String get retry => 'Coba deui';

  @override
  String get error => 'Kasalahan';

  @override
  String get success => 'Kasuksésan';

  @override
  String get loading => 'Ngamuat...';

  @override
  String get no_data => 'Taya data sadia';

  @override
  String get offline => 'Modeu Offline';

  @override
  String get offline_sub =>
      'Parobihan bakal nyingkronkeun saatos dihubungkeun deui';

  @override
  String get undo => 'Ngabolaykeun';

  @override
  String get portion => 'Porsi';

  @override
  String get quantity => 'kuantitas';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Jelas';

  @override
  String get select => 'Pilih';

  @override
  String get apply => 'Larapkeun';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OKÉ';

  @override
  String get yes => 'Sumuhun';

  @override
  String get no => 'No';

  @override
  String get optional => 'Pilihan';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Protéin';

  @override
  String get carbs => 'Karbohidrat';

  @override
  String get fat => 'gajih';

  @override
  String get fiber => 'Serat';

  @override
  String get water => 'Cai';

  @override
  String get steps => 'Léngkah';

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
  String get inches => 'di';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'tabuh';

  @override
  String get minutes => 'mnt';

  @override
  String get serving => 'Ngalayanan';

  @override
  String get servings => 'Porsi';

  @override
  String get serving_size => 'Ukuran porsi';

  @override
  String get per_100g => 'per 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Éropa';

  @override
  String get middle_east => 'Wétan Tengah';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amérika';

  @override
  String get home_title => 'Imah';

  @override
  String get home_greeting_morning => 'Wilujeng enjing';

  @override
  String get home_greeting_afternoon => 'Wilujeng Siang';

  @override
  String get home_greeting_evening => 'Wilujeng sonten';

  @override
  String get home_streak_title => 'Galur kembangan';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poé streak',
      one: '1 dinten streak',
      zero: '0 dinten tilas',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Diduruk';

  @override
  String get home_calories_budget => 'Anggaran kalori';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal sésana';
  }

  @override
  String get home_water_title => 'Hidrasi poean';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Léngkah Leumpang';

  @override
  String get home_quick_actions => 'Aksi Gancang';

  @override
  String get home_log_meal => 'Log Dahareun';

  @override
  String get home_log_water => 'Log Cai';

  @override
  String get home_log_workout => 'Latihan Log';

  @override
  String get home_log_weight => 'Log Beurat';

  @override
  String get home_insights_title => 'Insights Dinten';

  @override
  String get home_quote =>
      'Pilihan sehat leutik nyiptakeun transformasi mekar.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Palatih';

  @override
  String get home_surroundings => 'Sakuliling & Hawa';

  @override
  String get home_notifications => 'Bewara';

  @override
  String get home_daily_score => 'Poéan Wellness Score';

  @override
  String get home_view_all => 'Témbongkeun Sadaya';

  @override
  String get food_diary_title => 'Diary dahareun';

  @override
  String get food_breakfast => 'Sarapan';

  @override
  String get food_lunch => 'Dahar beurang';

  @override
  String get food_dinner => 'dahar peuting';

  @override
  String get food_snacks => 'Jajanan';

  @override
  String get food_add_food => 'Tambahkeun Dahareun';

  @override
  String get food_edit_food => 'Edit Dahareun';

  @override
  String get food_add_breakfast => 'Tambahkeun Sarapan';

  @override
  String get food_add_lunch => 'Tambahkeun Dahar beurang';

  @override
  String get food_add_dinner => 'Tambahkeun Dinner';

  @override
  String get food_add_snack => 'Tambahkeun Snack';

  @override
  String get food_total_calories => 'Total Kalori';

  @override
  String get food_empty_meal =>
      'Henteu aya tuangeun anu dilebetkeun kana tuangeun ieu';

  @override
  String get food_empty_diary =>
      'Teu aya tuangeun anu dilebetkeun kanggo dinten ieu';

  @override
  String get food_log_first_meal =>
      'Ketok + pikeun asup kana tuangeun nikmat munggaran anjeun';

  @override
  String get food_quick_add => 'Tambah Gancang';

  @override
  String get food_search_hint => 'Pilarian masakan, bungbuahan, dal, roti ...';

  @override
  String get food_custom_recipe => 'Dahareun Adat & Resep';

  @override
  String get food_scan_barcode => 'Nyeken Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Kadaharan panganyarna';

  @override
  String get food_favourites => 'Paporit';

  @override
  String get food_macro_summary => 'Ngarecah Macronutrient';

  @override
  String get food_delete_meal_confirm =>
      'Naha anjeun yakin hoyong mupus item ieu?';

  @override
  String get food_item_deleted => 'Item dahareun dipiceun';

  @override
  String get food_remaining => 'sésana';

  @override
  String get food_consumed => 'dihakan';

  @override
  String food_of_target(Object target) {
    return 'tina $target kcal';
  }

  @override
  String get foodSearch_title => 'Pilarian Kadaharan';

  @override
  String get foodSearch_scan_barcode => 'Nyeken Barcode';

  @override
  String get foodSearch_take_photo => 'Poto Dahareun Snap';

  @override
  String get foodSearch_custom_food => 'Jieun Dahareun Adat';

  @override
  String get foodSearch_recent_searches => 'Pilarian panganyarna';

  @override
  String get foodSearch_popular => 'Masakan populér';

  @override
  String get foodSearch_no_results => 'Taya pangan cocog pilarian Anjeun';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Align barkod di jero pigura kaméra';

  @override
  String get barcode_not_found => 'Produk teu kapanggih dina database';

  @override
  String get barcode_premium_feature =>
      'Scanning barkod sayogi sareng Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Candak poto anu jelas tina piring anjeun';

  @override
  String get camera_analysing => 'Nganalisis piring dahareun...';

  @override
  String get camera_detected => 'Barang dideteksi';

  @override
  String get camera_flash => 'Togél Flash';

  @override
  String get camera_retake => 'Nyokot deui Poto';

  @override
  String get camera_confirm_food => 'Konfirmasi Item';

  @override
  String get customFood_title => 'Dahareun Adat & Resep';

  @override
  String get customFood_name_hint => 'Piring atawa ngaran bahan';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Protéin (g)';

  @override
  String get customFood_carbs_hint => 'Karbohidrat (g)';

  @override
  String get customFood_fat_hint => 'Gajih (g)';

  @override
  String get customFood_save => 'Simpen Resep';

  @override
  String get water_tracker_title => 'Panlacak cai';

  @override
  String get water_daily_target => 'Goal Hidrasi poean';

  @override
  String get water_logged_today => 'Diasupkeun Dinten';

  @override
  String get water_add_glass => '+250 ml Kaca';

  @override
  String get water_add_bottle => '+ 500 ml Botol';

  @override
  String get water_custom_amount => 'Jumlah custom';

  @override
  String get water_reminder_tip =>
      'Inuman cai rutin sapopoe pikeun énergi anu ajeg.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml cai 💧';
  }

  @override
  String get workout_title => 'Latihan Log';

  @override
  String get workout_add_exercise => 'Tambahkeun Latihan';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Kakuatan';

  @override
  String get workout_yoga => 'Yoga & Fleksibilitas';

  @override
  String get workout_duration => 'Lilana';

  @override
  String get workout_intensity => 'Inténsitas';

  @override
  String get workout_calories_burned => 'Kalori kaduruk';

  @override
  String get workout_empty => 'Taya workouts asup kiwari';

  @override
  String get workout_save_success => 'Latihan suksés disimpen!';

  @override
  String get workout_type => 'Jenis Latihan';

  @override
  String get workout_notes => 'Catetan & Refleksi';

  @override
  String get health_overview_title => 'Kaséhatan & Vital';

  @override
  String get health_heart_rate => 'Laju Jantung';

  @override
  String get health_blood_oxygen => 'Oksigén getih (SpO2)';

  @override
  String get health_blood_pressure => 'Tekanan Darah';

  @override
  String get health_blood_glucose => 'Glukosa getih';

  @override
  String get health_body_temperature => 'Suhu awak';

  @override
  String get health_sleep_tracking => 'Nyukcruk saré';

  @override
  String get health_weight_tracking => 'Beurat & Komposisi Awak';

  @override
  String get health_waist_hip => 'Rasio cangkéng-to-Hip';

  @override
  String get health_devices_hub => 'Alat & Smartwatch Hub';

  @override
  String get health_sync_now => 'Nyingkronkeun Data Kaséhatan';

  @override
  String health_last_synced(Object time) {
    return 'Panungtungan disingkronkeun: $time';
  }

  @override
  String get health_manual_entry => 'Éntri Kaséhatan Manual';

  @override
  String get health_metric_detail => 'Rincian métrik';

  @override
  String get health_connected_sensors => 'Sénsor Kaséhatan disambungkeun';

  @override
  String get plan_title => 'Plan poean';

  @override
  String get plan_weekly_title => 'Rencana Kaséhatan Mingguan';

  @override
  String get plan_calorie_target => 'Target kalori';

  @override
  String get plan_water_target => 'Target Hidrasi';

  @override
  String get plan_step_target => 'Lengkah Target';

  @override
  String get plan_sleep_target => 'Sasaran Saré';

  @override
  String get plan_meal_suggestions => 'Saran Dahar';

  @override
  String get plan_healthy_habits => 'Kabiasaan Sehat & Tips';

  @override
  String get plan_coach_advice => 'Bloomi AI Palatih Rekomendasi';

  @override
  String get plan_generated_title => 'Pribadi Jadwal Daily';

  @override
  String get profile_title => 'Propil';

  @override
  String get profile_edit => 'Édit Propil';

  @override
  String get profile_name => 'Ngaran';

  @override
  String get profile_age => 'Umur';

  @override
  String get profile_gender => 'Génder';

  @override
  String get profile_height => 'Jangkungna';

  @override
  String get profile_weight => 'Beurat';

  @override
  String get profile_goal => 'Tujuan primér';

  @override
  String get profile_activity_level => 'Tingkat Kagiatan';

  @override
  String get profile_stats => 'Statistik Kabugaran kuring';

  @override
  String get profile_saved => 'Propil suksés diropéa';

  @override
  String get profile_bmi => 'Indéks Massa Awak (BMI)';

  @override
  String get profile_membership => 'kaanggotaan';

  @override
  String get settings => 'Setélan';

  @override
  String get preferences_habits => 'PREFERENSI & kabiasaan';

  @override
  String get appearance_theme => 'Penampilan & Téma';

  @override
  String get appearance_theme_sub =>
      'Poék, Cahaya, Modeu Sistem & Pilihan Latar Aplikasi';

  @override
  String get permissions => 'Idin & Aksés Sistim';

  @override
  String get permissions_sub =>
      'Sambungkeun Kaséhatan, Sénsor Lengkah, GPS, Bewara & Kaméra';

  @override
  String get reminders_notifications => 'Panginget & Bewara';

  @override
  String get reminders_sub =>
      'Waktu tuang, cai, pariksa beurat & panginget waktos sare';

  @override
  String get units_of_measurement => 'Hijian Ukur';

  @override
  String get units_sub =>
      'Métrik (kg, cm, ml, km) atanapi Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Basa Aplikasi';

  @override
  String get language_sub =>
      'Inggris, हिन्दी (Hindi), Hinglish & 195+ basa global';

  @override
  String get home_screen_widgets => 'Widget Layar Utama';

  @override
  String get widgets_sub =>
      'Widget Android Live: Hub, Léngkah, Cai, Gizi & Maskot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch pendamping, ubin, komplikasi & vital hirup';

  @override
  String get goals_wellness => 'TUJUAN & WELLNESS WAWASAN';

  @override
  String get nutrition_targets => 'Sasaran Gizi & Split Makro';

  @override
  String get nutrition_targets_sub =>
      'Target kalori, protéin, karbohidrat, lemak & tujuan cai';

  @override
  String get weekly_recap => 'Recap Kabugaran Mingguan';

  @override
  String get weekly_recap_sub =>
      'Rata-rata kalori 7 dinten, rasio makro & dinten pangsaéna';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Goresan mekar aktif, lencana & prestasi';

  @override
  String get connected_devices => 'Alat disambungkeun & EKOSISTEM';

  @override
  String get devices_hub => 'Alat & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Kaséhatan Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Sakuliling & Cuaca';

  @override
  String get surroundings_sub =>
      'Kualitas hawa (AQI), indéks UV & tip hidrasi cuaca';

  @override
  String get bloomi_pro => 'Langganan Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widget layar utama & tracking vitals';

  @override
  String get about_security => 'Ngeunaan & Kaamanan';

  @override
  String get about_bloomi => 'Ngeunaan Bloomi';

  @override
  String get about_bloomi_sub => 'Ngawangun spésifikasi, versi, attributions';

  @override
  String get privacy_policy => 'Kawijakan Privasi';

  @override
  String get privacy_policy_sub => 'Offline-heula, arsitéktur data dina alat';

  @override
  String get terms_conditions => 'Sarat & Kaayaan';

  @override
  String get terms_conditions_sub => 'Sarat jasa jeung tungtunan wellness';

  @override
  String get delete_account => 'Hapus Akun & Data';

  @override
  String get delete_account_sub =>
      'Hapus data SQLite lokal sareng cadangan awan sacara teu tiasa dibalikkeun';

  @override
  String get healthy_habits => 'Ngawangun hipu, kabiasaan wellness langgeng';

  @override
  String get all_logs => 'Data & Log Kuring Dilacak';

  @override
  String get search_language => 'Pilarian dumasar basa atanapi aksara asli...';

  @override
  String get languages_available => 'Basa sadia';

  @override
  String get no_matching_languages => 'Teu aya basa anu cocog';

  @override
  String get try_searching =>
      'Coba milarian ku aksara asli atanapi éjahan Inggris';

  @override
  String get partially_translated => 'Sawaréh ditarjamahkeun';

  @override
  String get complete_translation => 'Lengkep';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Basa disetel ka $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Sakuliling & Lingkungan';

  @override
  String get surroundings_aqi => 'Indéks Kualitas Udara';

  @override
  String get surroundings_uv => 'Indéks UV';

  @override
  String get surroundings_temp => 'Suhu';

  @override
  String get surroundings_humidity => 'Kalembaban';

  @override
  String get surroundings_hydration_advice =>
      'Tetep hidrasi saé dina kaayaan cuaca ayeuna.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Pilarian Dahareun';

  @override
  String get food_quick_barcode => 'Nyeken Barcode 👑';

  @override
  String get food_quick_water => 'Tambahkeun Cai';

  @override
  String get food_quick_custom => 'Dahareun Adat';

  @override
  String get surroundings_good => 'Alus';

  @override
  String get surroundings_moderate => 'Sedeng';

  @override
  String get surroundings_unhealthy => 'Teu damang';

  @override
  String get notifications_title => 'Bewara & Bewara';

  @override
  String get notifications_empty => 'Taya bewara anyar';

  @override
  String get notifications_mark_read => 'Cirian Sadayana Dibaca';

  @override
  String get notifications_clear => 'Hapus Sadayana';

  @override
  String get reminders => 'Setélan panginget';

  @override
  String get notifications => 'Bewara';

  @override
  String get reminders_breakfast_title => 'Pangeling-ngeling Sarapan 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Wilujeng enjing! Waktosna kanggo sarapan bergizi di $time.';
  }

  @override
  String get reminders_lunch_title => 'Panginget dahar beurang 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Ngareureuhkeun teras nikmati tuang siang anu saimbang sareng émut di $time.';
  }

  @override
  String get reminders_dinner_title => 'Pangeling-ngeling Dinner 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Waktosna kanggo tuangeun anu terang sareng nyugemakeun di $time.';
  }

  @override
  String get reminders_water_title => 'Nudge Hidrasi 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Waktosna nginum sagelas cai seger! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Timbangan mingguan ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Lacak métrik awak mingguan anjeun dina Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Angin Sare 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Bersantai sareng nyiapkeun sare anu nyenyak ( $time ).';
  }

  @override
  String get onboard_welcome => 'Wilujeng sumping di Bloomi';

  @override
  String get onboard_sub =>
      'Babaturan anjeun anu ramah, offline-mimiti kaséhatan sareng nutrisi.';

  @override
  String get onboard_get_started => 'Mimitian';

  @override
  String get onboard_sign_in => 'Asup';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal => 'Naon tujuan kaséhatan primér anjeun?';

  @override
  String get onboard_goal_weight_loss => 'Leungitna Leungitna Beurat';

  @override
  String get onboard_goal_muscle => 'Otot Gain & Kakuatan';

  @override
  String get onboard_goal_energy => 'Énergi poean & vitalitas';

  @override
  String get onboard_goal_habits => 'Dahar Pikiran Sehat';

  @override
  String get onboard_about_you => 'Nyaritakeun Kami Ngeunaan Diri Anjeun';

  @override
  String get onboard_lifestyle => 'Rutinitas Poéan Anjeun';

  @override
  String get onboard_permissions_title => 'Idin & Aksés Sistim';

  @override
  String get onboard_permissions_sub =>
      'Pasihan aksés pikeun nyingkronkeun léngkah, latihan, sareng panginget.';

  @override
  String get onboard_plan_ready_title => 'Rencana Adat Anjeun Siap!';

  @override
  String get onboard_plan_ready_sub =>
      'Kami nyiptakeun peta jalan nutrisi sareng kabugaran anu lembut, khusus pikeun anjeun.';

  @override
  String get onboard_enter_bloomi => 'Lebetkeun Bloomi';

  @override
  String get insights_weekly_report => 'Recap Kabugaran Mingguan';

  @override
  String insights_best_day(Object day) {
    return 'Poé Konsistensi Pangalusna: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Henteu dikonci dina $date';
  }

  @override
  String get insights_keep_going => 'Teruskeun kamajuan anu luar biasa!';

  @override
  String get widgets_title => 'Widget Layar Utama';

  @override
  String widgets_active_count(Object count) {
    return 'Widget aktip: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Léngkah & Ring aktip';

  @override
  String get widgets_water_title => 'Hidrasi Gancang Log';

  @override
  String get widgets_mascot_title => 'Bloomi maskot Companion';

  @override
  String get wear_os_title => 'Ngagem OS Smartwatch';

  @override
  String get wear_os_connected => 'Nyambung ka Lalajo';

  @override
  String get wear_os_sync => 'Nyingkronkeun Data Watch';

  @override
  String get theme_title => 'Penampilan & Téma';

  @override
  String get theme_mode => 'Mode Téma';

  @override
  String get theme_light => 'Caang';

  @override
  String get theme_dark => 'Poek';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Palét Latar';

  @override
  String get units_title => 'Hijian Ukur';

  @override
  String get units_metric => 'Métrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Teu tiasa ngamuat dasbor';

  @override
  String get home_health_permission_req => 'Kaséhatan Connect Idin Diperlukeun';

  @override
  String get home_health_permission_desc =>
      'Bloomi ngabutuhkeun idin Health Connect pikeun narik léngkah nyata, denyut jantung, sareng nyingkronkeun widget bumi sélulér sacara real waktos.';

  @override
  String get home_allow_health => 'Ngidinan Kaséhatan Connect';

  @override
  String get home_ready_mindful_day => 'Siap pikeun dinten mindful? ✨';

  @override
  String get home_quick_add => 'Tambah Gancang';

  @override
  String get home_live_gps => 'GPS hirup';

  @override
  String get home_calories_remaining_label => 'KALORI SÉSA';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Didahar: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Ketok pikeun Tracker Cai 💧';

  @override
  String get home_water_goal_reached => 'Tujuan poean ngahontal 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml pikeun tujuan poean';
  }

  @override
  String get home_details => 'Rincian';

  @override
  String get home_upgrade_plan_desc =>
      'Ningkatkeun pikeun muka konci target harian pribadi & rencana AI';

  @override
  String get home_unlock => 'Buka konci 👑';

  @override
  String get home_quick_log_hint => 'Gancang ngarekam entri wellness';

  @override
  String get food_serving_size => 'Ukuran porsi';

  @override
  String get food_serving_grams => 'porsi (g)';

  @override
  String get food_number_servings => 'Jumlah porsi';

  @override
  String get food_calories_per_serving => 'Kalori per porsi';

  @override
  String get food_recipe_ingredients => 'bahan';

  @override
  String get food_recipe_add_ingredient => 'Tambahkeun Bahan';

  @override
  String get food_recipe_directions => 'Parentah & Catetan';

  @override
  String get food_recipe_total => 'Total Gizi Resep';

  @override
  String get food_recipe_per_serving => 'Per porsi Gizi';

  @override
  String get food_recipe_saved_toast => 'dahareun custom disimpen suksés!';

  @override
  String get food_barcode_found => 'Produk Kapanggih!';

  @override
  String get food_barcode_not_found_desc =>
      'Urang teu bisa manggihan barkod ieu dina database kabuka. Anjeun tiasa nambihanana salaku tuangeun khusus.';

  @override
  String get food_add_custom_btn => 'Tambahkeun Dahareun Adat';

  @override
  String get food_scan_again => 'Scan deui';

  @override
  String get food_review_items => 'Review Detéksi Pangan';

  @override
  String get food_review_hint =>
      'Saluyukeun kuantitas atanapi cabut barang anu teu dipikanyaho';

  @override
  String get food_log_selected => 'Log Kadaharan Dipilih';

  @override
  String get food_favourites_title => 'Kadaharan Paporit';

  @override
  String get food_recent_title => 'Kadaharan panganyarna';

  @override
  String get food_no_favourites =>
      'Henteu aya tuangeun karesep. Ketok manah kana dahareun naon waé pikeun disimpen di dieu.';

  @override
  String get food_no_recents => 'Euweuh pangan nu anyar asup kapanggih.';

  @override
  String get food_nutrition_details_title => 'Rincian Gizi poean';

  @override
  String get food_macro_protein_label => 'Ngarecah Protéin';

  @override
  String get food_macro_carbs_label => 'Ngarecah Carbs';

  @override
  String get food_macro_fat_label => 'Ngarecah gajih';

  @override
  String get food_macro_fiber_label => 'Serat Ngarecah';

  @override
  String get food_daily_target_comparison => 'Target Babandingan';

  @override
  String food_target_label(Object target) {
    return 'Sasaran: $target';
  }

  @override
  String get food_edit_entry => 'Éntri Diary Edit';

  @override
  String get food_delete_entry => 'Hapus Éntri';

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
    return '$current tina $target ml';
  }

  @override
  String get water_intake_history => 'Log Cai kiwari';

  @override
  String get water_no_logs_today =>
      'Henteu aya cai anu asup ayeuna. Hidrasi sareng ketok tombol tambihan gancang!';

  @override
  String get water_adjust_goal => 'Saluyukeun Goal Daily';

  @override
  String get health_connect_banner => 'Nyambung ka Kaséhatan Connect';

  @override
  String get health_vitals_summary => 'Vitals Kaséhatan poean';

  @override
  String get health_latest_heart_rate => 'Laju Heart panganyarna';

  @override
  String get health_latest_bp => 'Tekanan Darah';

  @override
  String get health_latest_spo2 => 'Oksigén getih';

  @override
  String get health_latest_glucose => 'Glukosa getih';

  @override
  String get health_latest_weight => 'Beurat';

  @override
  String get health_latest_sleep => 'Durasi Saré';

  @override
  String get health_add_manual => 'Tambahkeun Pangukuran Manual';

  @override
  String get health_history_trends => 'Tren sajarah';

  @override
  String get health_sync_success => 'Data kaséhatan suksés disingkronkeun!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours jam $mins mnt';
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
  String get health_devices_title => 'Alat disambungkeun & Wearables';

  @override
  String get health_devices_desc =>
      'Atur jam tangan pinter anu dipasangkeun, pelacak kabugaran, sareng sénsor kaséhatan.';

  @override
  String get health_workout_editor_title => 'Édit Latihan';

  @override
  String get health_workout_name_label => 'Ngaran Latihan';

  @override
  String get health_workout_duration_label => 'Durasi (menit)';

  @override
  String get health_workout_calories_label => 'Estimasi Kalori (kcal)';

  @override
  String get health_workout_date_label => 'Tanggal jeung Waktos';

  @override
  String get plan_daily_wellness_roadmap => 'Roadmap Pribadi Anjeun';

  @override
  String get plan_morning_routine => 'Rutinitas isuk';

  @override
  String get plan_afternoon_routine => 'Lohor Wellness';

  @override
  String get plan_evening_routine => 'Malem Angin-Turun';

  @override
  String get plan_coach_badge => 'Bloomi AI Palatih';

  @override
  String get plan_weekly_overview => '7-Poé Wellness Pokus';

  @override
  String get plan_targets_title => 'Sasaran & Tujuan Kabugaran';

  @override
  String get plan_calorie_budget_label => 'Anggaran Kalori Poéan';

  @override
  String get plan_water_budget_label => 'Target Cai poean';

  @override
  String get plan_step_budget_label => 'Goal Lengkah poean';

  @override
  String get plan_macro_split_label => 'Babandingan Macronutrient';

  @override
  String get profile_personal_details => 'Rincian Pribadi';

  @override
  String get profile_body_stats => 'Pangukuran awak';

  @override
  String get profile_app_preferences => 'Préferénsi & Setélan Aplikasi';

  @override
  String get profile_edit_name_hint => 'Ngaran anjeun';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Jangkungna ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Beurat ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Umur';

  @override
  String get profile_gender_male => 'Jalu';

  @override
  String get profile_gender_female => 'Awéwé';

  @override
  String get profile_gender_other => 'Lain / Resep teu ngomong';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (Saeutik nepi ka teu latihan)';

  @override
  String get profile_activity_light => 'Enteng Aktif (1-3 dinten / minggu)';

  @override
  String get profile_activity_moderate => 'Sedeng Aktif (3-5 dinten / minggu)';

  @override
  String get profile_activity_very => 'Aktif pisan (6-7 dinten / minggu)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Pasang ubin Bloomi sareng komplikasi dina jam tangan Wear OS anjeun pikeun ningali kalori, cai, sareng léngkah.';

  @override
  String get settings_widgets_header => 'Widget Android Interaktif';

  @override
  String get settings_widgets_desc =>
      'Pin widget real-time dina layar utama alat Anjeun pikeun apdet instan.';

  @override
  String get settings_about_header => 'Ngeunaan Bloomi';

  @override
  String get settings_about_version => 'Vérsi 1.0.0';

  @override
  String get settings_about_build => 'Ngawangun 100';

  @override
  String get settings_about_credits =>
      'Dijieun kalayan ati-ati pikeun hirup sehat.';

  @override
  String get settings_terms_header => 'Sarat jeung Kaayaan';

  @override
  String get settings_privacy_header => 'Kawijakan Privasi';

  @override
  String get settings_delete_header => 'Hapus Akun & Data';

  @override
  String get settings_delete_warning =>
      'Peta ieu teu bisa dibolaykeun. Sadaya tuangeun, latihan, vital sareng profil anjeun bakal dihapus permanén.';

  @override
  String get settings_delete_confirm_btn => 'Pupus permanén';

  @override
  String get onboard_welcome_headline => 'Wilujeng sumping di Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Pelacak kabugaran anu lembut, émut dirancang pikeun kahirupan anjeun.';

  @override
  String get onboard_step_about => 'Ngeunaan Anjeun';

  @override
  String get onboard_step_goals => 'Goals Anjeun';

  @override
  String get onboard_step_lifestyle => 'Kabiasaan sapopoé';

  @override
  String get onboard_step_permissions => 'idin';

  @override
  String get onboard_step_plan => 'Siap!';

  @override
  String get onboard_health_connect_perm => 'Kaséhatan Connect Aksés';

  @override
  String get onboard_step_sensors_perm => 'Léngkah Counter Sénsor';

  @override
  String get onboard_notif_perm => 'Panginget & Bewara Mindful';

  @override
  String get onboard_camera_perm => 'Kaméra (Barcode & Panyeken Dahareun)';

  @override
  String get onboard_grant_permissions => 'Pasihan Idin';

  @override
  String get onboard_continue_dashboard => 'Buka Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hidrasi Nudges';

  @override
  String get notif_channel_hydration_desc => 'Panginget cai hipu sapopoe';

  @override
  String get notif_channel_nutrition_name => 'Panginget Dahareun & Gizi';

  @override
  String get notif_channel_nutrition_desc =>
      'Panginget sarapan, tuang siang sareng tuangeun tuangeun';

  @override
  String get notif_channel_steps_name => 'Lengkah Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Perayaan nalika ngahontal target léngkah sapopoé';

  @override
  String get notif_channel_vitals_name => 'Kaséhatan & Vital Cék';

  @override
  String get notif_channel_vitals_desc =>
      'Beurat jeung waktu sare panginget angin-handap';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Tunda 15m';

  @override
  String get notif_action_log_meal => '🥗 Hidangan Log';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
