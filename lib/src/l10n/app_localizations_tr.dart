// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ana Sayfa';

  @override
  String get nav_today => 'Bugün';

  @override
  String get nav_plan => 'Planı';

  @override
  String get nav_food => 'Gıda';

  @override
  String get nav_food_diary => 'Yemek Günlüğü';

  @override
  String get nav_workout => 'Egzersiz Günlüğü';

  @override
  String get nav_health => 'Sağlık';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Kaydet';

  @override
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

  @override
  String get edit => 'Düzenle';

  @override
  String get done => 'Bitti';

  @override
  String get close => 'Kapat';

  @override
  String get back => 'Geri';

  @override
  String get next => 'Sonraki';

  @override
  String get continue_btn => 'Devam et';

  @override
  String get confirm => 'Onayla';

  @override
  String get search => 'Ara';

  @override
  String get filter => 'Filtre';

  @override
  String get all => 'Hepsi';

  @override
  String get active => 'Aktif';

  @override
  String get today => 'Bugün';

  @override
  String get yesterday => 'Dün';

  @override
  String get tomorrow => 'Yarın';

  @override
  String get add => 'Ekle';

  @override
  String get remove => 'Kaldır';

  @override
  String get refresh => 'Yenile';

  @override
  String get retry => 'Yeniden dene';

  @override
  String get error => 'Hata';

  @override
  String get success => 'Başarı';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get no_data => 'Veri yok';

  @override
  String get offline => 'Çevrimdışı Mod';

  @override
  String get offline_sub =>
      'Değişiklikler yeniden bağlanıldığında senkronize edilecek';

  @override
  String get undo => 'Geri al';

  @override
  String get portion => 'Porsiyon';

  @override
  String get quantity => 'miktar';

  @override
  String get unit => 'Birim';

  @override
  String get clear => 'Temizle';

  @override
  String get select => 'Seç';

  @override
  String get apply => 'Uygula';

  @override
  String get reset => 'Sıfırla';

  @override
  String get ok => 'tamam';

  @override
  String get yes => 'Evet';

  @override
  String get no => 'Hayır';

  @override
  String get optional => 'İsteğe bağlı';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'proteini';

  @override
  String get carbs => 'Karbonhidratlar';

  @override
  String get fat => 'Şişman';

  @override
  String get fiber => 'Elyaf';

  @override
  String get water => 'Su';

  @override
  String get steps => 'Adımlar';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kilo';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'santimetre';

  @override
  String get inches => 'içinde';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'saat';

  @override
  String get minutes => 'dakika';

  @override
  String get serving => 'Servis';

  @override
  String get servings => 'Porsiyon';

  @override
  String get serving_size => 'Porsiyon Boyutu';

  @override
  String get per_100g => '100g başına';

  @override
  String get india => 'Hindistan';

  @override
  String get asia => 'Asya';

  @override
  String get europe => 'Avrupa';

  @override
  String get middle_east => 'Orta Doğu';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Ana Sayfa';

  @override
  String get home_greeting_morning => 'Günaydın';

  @override
  String get home_greeting_afternoon => 'İyi günler';

  @override
  String get home_greeting_evening => 'İyi akşamlar';

  @override
  String get home_streak_title => 'Çiçek Çizgisi';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün seri',
      one: '1 günlük seri',
      zero: '0 günlük seri',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Yanmış';

  @override
  String get home_calories_budget => 'Kalori Bütçesi';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal kaldı';
  }

  @override
  String get home_water_title => 'Günlük Nemlendirme';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Yürünen Adımlar';

  @override
  String get home_quick_actions => 'Hızlı Eylemler';

  @override
  String get home_log_meal => 'Günlük Yemek';

  @override
  String get home_log_water => 'Günlük Su';

  @override
  String get home_log_workout => 'Günlük Egzersizi';

  @override
  String get home_log_weight => 'Günlük Ağırlığı';

  @override
  String get home_insights_title => 'Bugünün Analizleri';

  @override
  String get home_quote =>
      'Küçük sağlıklı seçimler çiçek açan dönüşümler yaratır.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Koçu';

  @override
  String get home_surroundings => 'Çevre ve Hava';

  @override
  String get home_notifications => 'Bildirimler';

  @override
  String get home_daily_score => 'Günlük Sağlık Skoru';

  @override
  String get home_view_all => 'Tümünü Görüntüle';

  @override
  String get food_diary_title => 'Yemek Günlüğü';

  @override
  String get food_breakfast => 'Kahvaltı';

  @override
  String get food_lunch => 'Öğle yemeği';

  @override
  String get food_dinner => 'Akşam Yemeği';

  @override
  String get food_snacks => 'Atıştırmalıklar';

  @override
  String get food_add_food => 'Yiyecek Ekle';

  @override
  String get food_edit_food => 'Yiyecekleri Düzenle';

  @override
  String get food_add_breakfast => 'Kahvaltı Ekle';

  @override
  String get food_add_lunch => 'Öğle Yemeği Ekle';

  @override
  String get food_add_dinner => 'Akşam Yemeği Ekle';

  @override
  String get food_add_snack => 'Atıştırmalık Ekle';

  @override
  String get food_total_calories => 'Toplam Kalori';

  @override
  String get food_empty_meal => 'Bu yemek için henüz kayıtlı yiyecek yok';

  @override
  String get food_empty_diary => 'Bu gün için kayıtlı yemek yok';

  @override
  String get food_log_first_meal =>
      'İlk lezzetli yemeğinizi kaydetmek için +\'ya dokunun';

  @override
  String get food_quick_add => 'Hızlı Ekle';

  @override
  String get food_search_hint =>
      'Yemekleri, meyveleri, dalları, etleri arayın...';

  @override
  String get food_custom_recipe => 'Özel Yemek ve Tarif';

  @override
  String get food_scan_barcode => 'Barkodu Tara';

  @override
  String get food_camera_scan => 'AI Gıda Tarayıcısı';

  @override
  String get food_recent => 'En Yeni Yiyecekler';

  @override
  String get food_favourites => 'Favoriler';

  @override
  String get food_macro_summary => 'Makrobesin Dağılımı';

  @override
  String get food_delete_meal_confirm =>
      'Bu öğeyi kaldırmak istediğinizden emin misiniz?';

  @override
  String get food_item_deleted => 'Yiyecek öğesi kaldırıldı';

  @override
  String get food_remaining => 'kalan';

  @override
  String get food_consumed => 'tüketilen';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'Yiyecek Ara';

  @override
  String get foodSearch_scan_barcode => 'Barkodu Tara';

  @override
  String get foodSearch_take_photo => 'Snap Yemek Fotoğrafı';

  @override
  String get foodSearch_custom_food => 'Özel Yiyecek Yaratın';

  @override
  String get foodSearch_recent_searches => 'Son Aramalar';

  @override
  String get foodSearch_popular => 'Popüler Yemekler';

  @override
  String get foodSearch_no_results => 'Aramanızla eşleşen yiyecek yok';

  @override
  String get barcode_title => 'Barkod Tarayıcı';

  @override
  String get barcode_align => 'Barkodu kamera çerçevesinin içine hizalayın';

  @override
  String get barcode_not_found => 'Ürün veritabanında bulunamadı';

  @override
  String get barcode_premium_feature =>
      'Barkod tarama Bloomi Pro\'da mevcuttur';

  @override
  String get camera_title => 'AI Gıda Tarayıcı';

  @override
  String get camera_tap_hint => 'Yemeğinizin net bir fotoğrafını çekin';

  @override
  String get camera_analysing => 'Yemek tabağı analiz ediliyor...';

  @override
  String get camera_detected => 'Algılanan öğeler';

  @override
  String get camera_flash => 'Flash\'ı değiştir';

  @override
  String get camera_retake => 'Fotoğrafı Yeniden Çek';

  @override
  String get camera_confirm_food => 'Öğeleri Onayla';

  @override
  String get customFood_title => 'Özel Yemek ve Tarif';

  @override
  String get customFood_name_hint => 'Yemeğin veya malzemenin adı';

  @override
  String get customFood_calories_hint => 'Kalori (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Karbonhidrat (g)';

  @override
  String get customFood_fat_hint => 'Yağ (g)';

  @override
  String get customFood_save => 'Tarifi Kaydet';

  @override
  String get water_tracker_title => 'Su Takip Cihazı';

  @override
  String get water_daily_target => 'Günlük Sıvı Alımı Hedefi';

  @override
  String get water_logged_today => 'Bugün Giriş Yapıldı';

  @override
  String get water_add_glass => '+250 ml Cam';

  @override
  String get water_add_bottle => '+500 ml Şişe';

  @override
  String get water_custom_amount => 'Özel Tutar';

  @override
  String get water_reminder_tip =>
      'Sabit enerji için gün boyunca düzenli olarak su içirin.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml su kaydedildi 💧';
  }

  @override
  String get workout_title => 'Egzersiz Günlüğü';

  @override
  String get workout_add_exercise => 'Antrenman Ekle';

  @override
  String get workout_cardio => 'Kardiyo';

  @override
  String get workout_strength => 'Güç';

  @override
  String get workout_yoga => 'Yoga ve Esneklik';

  @override
  String get workout_duration => 'Süre';

  @override
  String get workout_intensity => 'Yoğunluk';

  @override
  String get workout_calories_burned => 'Yakılan Kaloriler';

  @override
  String get workout_empty => 'Bugün kayıtlı antrenman yok';

  @override
  String get workout_save_success => 'Antrenman başarıyla kaydedildi!';

  @override
  String get workout_type => 'Antrenman Türü';

  @override
  String get workout_notes => 'Notlar ve Düşünceler';

  @override
  String get health_overview_title => 'Sağlık ve Hayati Bilgiler';

  @override
  String get health_heart_rate => 'Kalp Atış Hızı';

  @override
  String get health_blood_oxygen => 'Kan Oksijeni (SpO2)';

  @override
  String get health_blood_pressure => 'Kan Basıncı';

  @override
  String get health_blood_glucose => 'Kan Şekeri';

  @override
  String get health_body_temperature => 'Vücut Sıcaklığı';

  @override
  String get health_sleep_tracking => 'Uyku Takibi';

  @override
  String get health_weight_tracking => 'Ağırlık ve Vücut Kompozisyonu';

  @override
  String get health_waist_hip => 'Bel-Kalça Oranı';

  @override
  String get health_devices_hub => 'Cihazlar ve Akıllı Saat Merkezi';

  @override
  String get health_sync_now => 'Sağlık Verilerini Senkronize Et';

  @override
  String health_last_synced(Object time) {
    return 'Son senkronizasyon: $time';
  }

  @override
  String get health_manual_entry => 'Manuel Sağlık Girişi';

  @override
  String get health_metric_detail => 'Metrik Ayrıntıları';

  @override
  String get health_connected_sensors => 'Bağlı Sağlık Sensörleri';

  @override
  String get plan_title => 'Günlük Plan';

  @override
  String get plan_weekly_title => 'Haftalık Sağlık Planı';

  @override
  String get plan_calorie_target => 'Kalori Hedefi';

  @override
  String get plan_water_target => 'Hidrasyon Hedefi';

  @override
  String get plan_step_target => 'Adım Hedefi';

  @override
  String get plan_sleep_target => 'Uyku Hedefi';

  @override
  String get plan_meal_suggestions => 'Yemek Önerileri';

  @override
  String get plan_healthy_habits => 'Sağlıklı Alışkanlıklar ve İpuçları';

  @override
  String get plan_coach_advice => 'Bloomi AI Koç Önerileri';

  @override
  String get plan_generated_title => 'Kişiselleştirilmiş Günlük Program';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profili Düzenle';

  @override
  String get profile_name => 'İsim';

  @override
  String get profile_age => 'Yaş';

  @override
  String get profile_gender => 'Cinsiyet';

  @override
  String get profile_height => 'Yükseklik';

  @override
  String get profile_weight => 'Ağırlık';

  @override
  String get profile_goal => 'Birincil Hedef';

  @override
  String get profile_activity_level => 'Etkinlik Düzeyi';

  @override
  String get profile_stats => 'Sağlık İstatistiklerim';

  @override
  String get profile_saved => 'Profil başarıyla güncellendi';

  @override
  String get profile_bmi => 'Vücut Kitle İndeksi (BMI)';

  @override
  String get profile_membership => 'Üyelik';

  @override
  String get settings => 'Ayarlar';

  @override
  String get preferences_habits => 'TERCİHLER VE ALIŞKANLIKLAR';

  @override
  String get appearance_theme => 'Görünüm ve Tema';

  @override
  String get appearance_theme_sub =>
      'Koyu, Açık, Sistem Modu ve Uygulama Arka Plan Seçenekleri';

  @override
  String get permissions => 'İzinler ve Sistem Erişimi';

  @override
  String get permissions_sub =>
      'Health Connect, Adım Sensörleri, GPS, Bildirimler ve Kamera';

  @override
  String get reminders_notifications => 'Hatırlatıcılar ve Bildirimler';

  @override
  String get reminders_sub =>
      'Yemek saatleri, su, kilo kontrolü ve yatma zamanı hatırlatıcıları';

  @override
  String get units_of_measurement => 'Ölçü Birimleri';

  @override
  String get units_sub =>
      'Metrik (kg, cm, ml, km) veya İngiliz (lbs, ft/inç, fl oz)';

  @override
  String get app_language => 'Uygulama Dili';

  @override
  String get language_sub =>
      'İngilizce, हिन्दी (Hintçe), Hinglish ve 195\'ten fazla küresel dil';

  @override
  String get home_screen_widgets => 'Ana Ekran Widget\'ları';

  @override
  String get widgets_sub =>
      'Canlı Android widget\'ları: Merkez, Adımlar, Su, Beslenme ve Maskot';

  @override
  String get wear_os_watch_app =>
      'İşletim Sistemi İzleme Uygulamasını Kullanın';

  @override
  String get wear_os_sub =>
      'Smartwatch arkadaşı, kutucuklar, komplikasyonlar ve canlı hayati bilgiler';

  @override
  String get goals_wellness => 'HEDEFLER VE SAĞLIK ANLAYIŞLARI';

  @override
  String get nutrition_targets => 'Beslenme Hedefleri ve Makro Bölünme';

  @override
  String get nutrition_targets_sub =>
      'Kalori hedefi, protein, karbonhidrat, yağ ve su hedefi';

  @override
  String get weekly_recap => 'Haftalık Sağlıklı Yaşam Özeti';

  @override
  String get weekly_recap_sub =>
      '7 günlük kalori ortalaması, makro oran ve en iyi gün';

  @override
  String get streaks_milestones => 'Çizgiler ve Kilometre Taşları';

  @override
  String get streaks_sub => 'Aktif çiçek serileri, rozetler ve başarılar';

  @override
  String get connected_devices => 'BAĞLI CİHAZLAR VE EKOSİSTEM';

  @override
  String get devices_hub => 'Cihazlar ve Akıllı Saat Merkezi';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Çevre ve Hava Durumu';

  @override
  String get surroundings_sub =>
      'Hava kalitesi (AQI), UV indeksi ve hava koşullarında nemlendirme ipuçları';

  @override
  String get bloomi_pro => 'Bloomi Pro Aboneliği';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 ana ekran widget\'ı ve hayati önem taşıyan izleme';

  @override
  String get about_security => 'HAKKINDA & GÜVENLİK';

  @override
  String get about_bloomi => 'Bloomi hakkında';

  @override
  String get about_bloomi_sub => 'Yapı özellikleri, sürümü, nitelikleri';

  @override
  String get privacy_policy => 'Gizlilik Politikası';

  @override
  String get privacy_policy_sub =>
      'Çevrimdışı öncelikli, cihaz içi veri mimarisi';

  @override
  String get terms_conditions => 'Şartlar ve Koşullar';

  @override
  String get terms_conditions_sub =>
      'Hizmet şartları ve sağlıklı yaşam kuralları';

  @override
  String get delete_account => 'Hesabı ve Verileri Sil';

  @override
  String get delete_account_sub =>
      'Yerel SQLite verilerini ve bulut yedeklerini geri döndürülemez şekilde silin';

  @override
  String get healthy_habits =>
      'Nazik, kalıcı sağlıklı yaşam alışkanlıkları oluşturun';

  @override
  String get all_logs => 'Takip Edilen Verilerim ve Günlüklerim';

  @override
  String get search_language => 'Dile veya yerel alfabeye göre arayın...';

  @override
  String get languages_available => 'Mevcut Diller';

  @override
  String get no_matching_languages => 'Eşleşen dil bulunamadı';

  @override
  String get try_searching =>
      'Yerel alfabeye veya İngilizce yazımına göre aramayı deneyin';

  @override
  String get partially_translated => 'Kısmen tercüme edildi';

  @override
  String get complete_translation => 'Tamamlandı';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Dil $name ( $nativeName ) olarak ayarlandı';
  }

  @override
  String get surroundings_title => 'Çevre ve Çevre';

  @override
  String get surroundings_aqi => 'Hava Kalitesi İndeksi';

  @override
  String get surroundings_uv => 'UV İndeksi';

  @override
  String get surroundings_temp => 'Sıcaklık';

  @override
  String get surroundings_humidity => 'Nem';

  @override
  String get surroundings_hydration_advice =>
      'Mevcut hava koşullarında iyi nemlendirilmiş kalın.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Yiyecek Ara';

  @override
  String get food_quick_barcode => 'Barkodu Tara 👑';

  @override
  String get food_quick_water => 'Su Ekle';

  @override
  String get food_quick_custom => 'Özel Gıda';

  @override
  String get surroundings_good => 'iyi';

  @override
  String get surroundings_moderate => 'Orta';

  @override
  String get surroundings_unhealthy => 'Sağlıksız';

  @override
  String get notifications_title => 'Bildirimler ve Uyarılar';

  @override
  String get notifications_empty => 'Yeni bildirim yok';

  @override
  String get notifications_mark_read => 'Tümünü Okundu Olarak İşaretle';

  @override
  String get notifications_clear => 'Tümünü Temizle';

  @override
  String get reminders => 'Hatırlatıcı Ayarları';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Kahvaltı Hatırlatma 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Günaydın! $time \'da besleyici bir kahvaltı zamanı.';
  }

  @override
  String get reminders_lunch_title => 'Öğle Yemeği Hatırlatma 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Durun ve $time adresinde dengeli, bilinçli bir öğle yemeğinin tadını çıkarın.';
  }

  @override
  String get reminders_dinner_title => 'Akşam Yemeği Hatırlatma 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time adresinde hafif ve doyurucu bir akşam yemeği zamanı.';
  }

  @override
  String get reminders_water_title => 'Nemlendirici Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Bir bardak taze su içmenin vakti geldi! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Haftalık Tartı ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi\'de haftalık vücut ölçümlerinizi takip edin ($time).';
  }

  @override
  String get reminders_sleep_title => 'Uyku Zamanı Yavaşlaması 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Gevşeyin ve dinlendirici bir uykuya hazırlanın ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi\'ye hoş geldiniz';

  @override
  String get onboard_sub =>
      'Dost canlısı, çevrimdışı öncelikli sağlık ve beslenme arkadaşınız.';

  @override
  String get onboard_get_started => 'Başlayın';

  @override
  String get onboard_sign_in => 'Oturum aç';

  @override
  String get onboard_skip => 'Atla';

  @override
  String get onboard_choose_goal => 'Temel sağlıklı yaşam hedefiniz nedir?';

  @override
  String get onboard_goal_weight_loss => 'Nazik Kilo Kaybı';

  @override
  String get onboard_goal_muscle => 'Kas Kazanımı ve Gücü';

  @override
  String get onboard_goal_energy => 'Günlük Enerji ve Canlılık';

  @override
  String get onboard_goal_habits => 'Sağlıklı Dikkatli Beslenme';

  @override
  String get onboard_about_you => 'Bize Kendinizden Bahsedin';

  @override
  String get onboard_lifestyle => 'Günlük Rutininiz';

  @override
  String get onboard_permissions_title => 'İzinler ve Sistem Erişimi';

  @override
  String get onboard_permissions_sub =>
      'Adımları, antrenmanları ve hatırlatıcıları senkronize etmek için erişim izni verin.';

  @override
  String get onboard_plan_ready_title => 'Özel Planınız Hazır!';

  @override
  String get onboard_plan_ready_sub =>
      'Sizin için nazik, kişiselleştirilmiş bir beslenme ve sağlıklı yaşam yol haritası hazırladık.';

  @override
  String get onboard_enter_bloomi => 'Bloomi\'ye girin';

  @override
  String get insights_weekly_report => 'Haftalık Sağlıklı Yaşam Özeti';

  @override
  String insights_best_day(Object day) {
    return 'En İyi Tutarlılık Günü: $day';
  }

  @override
  String get insights_streaks_badges => 'Çizgiler ve Kilometre Taşları';

  @override
  String insights_unlocked_on(Object date) {
    return '$date tarihinde kilit açıldı';
  }

  @override
  String get insights_keep_going => 'Muhteşem ilerlemeye devam edin!';

  @override
  String get widgets_title => 'Ana Ekran Widget\'ları';

  @override
  String widgets_active_count(Object count) {
    return 'Aktif Widget\'lar: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Sağlıklı Yaşam Merkezi';

  @override
  String get widgets_steps_title => 'Adımlar ve Aktif Zil Sesi';

  @override
  String get widgets_water_title => 'Hidrasyon Hızlı Günlüğü';

  @override
  String get widgets_mascot_title => 'Bloomi Maskot Arkadaşı';

  @override
  String get wear_os_title => 'İşletim Sistemi Akıllı Saatini Giyin';

  @override
  String get wear_os_connected => 'Watch\'a bağlanıldı';

  @override
  String get wear_os_sync => 'İzleme Verilerini Senkronize Et';

  @override
  String get theme_title => 'Görünüm ve Tema';

  @override
  String get theme_mode => 'Tema Modu';

  @override
  String get theme_light => 'Işık';

  @override
  String get theme_dark => 'Karanlık';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Arka Plan Paleti';

  @override
  String get units_title => 'Ölçü Birimleri';

  @override
  String get units_metric => 'Metrik (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Kontrol paneli yüklenemiyor';

  @override
  String get home_health_permission_req => 'Sağlık Bağlantısı İzni Gerekli';

  @override
  String get home_health_permission_desc =>
      'Bloomi\'nin gerçek adımları, kalp atış hızını almak ve mobil ev widget\'larını gerçek zamanlı olarak senkronize etmek için Health Connect iznine ihtiyacı var.';

  @override
  String get home_allow_health => 'Health Connect\'e izin ver';

  @override
  String get home_ready_mindful_day =>
      'Farkındalık dolu bir güne hazır mısınız? ✨';

  @override
  String get home_quick_add => 'Hızlı Ekle';

  @override
  String get home_live_gps => 'Canlı GPS';

  @override
  String get home_calories_remaining_label => 'KALAN KALORİ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Yenilen: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Su Takipçisi için dokunun 💧';

  @override
  String get home_water_goal_reached => 'Günlük hedefe ulaşıldı 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Günlük hedefe $remaining ml';
  }

  @override
  String get home_details => 'Ayrıntılar';

  @override
  String get home_upgrade_plan_desc =>
      'Kişiselleştirilmiş günlük hedeflerin ve yapay zeka planının kilidini açmak için yükseltme yapın';

  @override
  String get home_unlock => 'Kilidini aç 👑';

  @override
  String get home_quick_log_hint =>
      'Sağlıklı yaşam girişini hızlı bir şekilde kaydedin';

  @override
  String get food_serving_size => 'Porsiyon Boyutu';

  @override
  String get food_serving_grams => 'Servis (g)';

  @override
  String get food_number_servings => 'Porsiyon Sayısı';

  @override
  String get food_calories_per_serving => 'Porsiyon başına kalori';

  @override
  String get food_recipe_ingredients => 'Malzemeler';

  @override
  String get food_recipe_add_ingredient => 'İçerik Ekle';

  @override
  String get food_recipe_directions => 'Talimatlar ve Notlar';

  @override
  String get food_recipe_total => 'Toplam Tarif Beslenmesi';

  @override
  String get food_recipe_per_serving => 'Porsiyon Başına Besin Değeri';

  @override
  String get food_recipe_saved_toast => 'Özel yiyecekler başarıyla kaydedildi!';

  @override
  String get food_barcode_found => 'Ürün Bulundu!';

  @override
  String get food_barcode_not_found_desc =>
      'Bu barkodu açık veritabanında bulamadık. Özel bir yiyecek olarak ekleyebilirsiniz.';

  @override
  String get food_add_custom_btn => 'Özel Yiyecek Ekle';

  @override
  String get food_scan_again => 'Tekrar Tara';

  @override
  String get food_review_items => 'Algılanan Gıdaları İnceleyin';

  @override
  String get food_review_hint =>
      'Miktarları ayarlayın veya tanınmayan öğeleri kaldırın';

  @override
  String get food_log_selected => 'Seçili Yiyecekleri Günlüğe Kaydet';

  @override
  String get food_favourites_title => 'Favori Yiyecekler';

  @override
  String get food_recent_title => 'En Yeni Yiyecekler';

  @override
  String get food_no_favourites =>
      'Henüz favori yiyecek yok. Buraya kaydetmek için herhangi bir yiyeceğin üzerindeki kalbe dokunun.';

  @override
  String get food_no_recents =>
      'Yakın zamanda giriş yapılmış yiyecek bulunamadı.';

  @override
  String get food_nutrition_details_title => 'Günlük Beslenme Detayları';

  @override
  String get food_macro_protein_label => 'Protein Dağılımı';

  @override
  String get food_macro_carbs_label => 'Karbonhidrat Dağılımı';

  @override
  String get food_macro_fat_label => 'Yağ Dağılımı';

  @override
  String get food_macro_fiber_label => 'Lif Dağılımı';

  @override
  String get food_daily_target_comparison => 'Hedef Karşılaştırma';

  @override
  String food_target_label(Object target) {
    return 'Hedef: $target';
  }

  @override
  String get food_edit_entry => 'Günlük Girişini Düzenle';

  @override
  String get food_delete_entry => 'Girişi Sil';

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
  String get water_intake_history => 'Bugünün Su Kayıtları';

  @override
  String get water_no_logs_today =>
      'Bugün henüz su girişi yapılmadı. Nemlendirin ve hızlı ekleme düğmesine dokunun!';

  @override
  String get water_adjust_goal => 'Günlük Hedefi Ayarla';

  @override
  String get health_connect_banner => 'Health Connect\'e bağlanıldı';

  @override
  String get health_vitals_summary => 'Günlük Sağlık Verileri';

  @override
  String get health_latest_heart_rate => 'En Son Kalp Atış Hızı';

  @override
  String get health_latest_bp => 'Kan Basıncı';

  @override
  String get health_latest_spo2 => 'Kan Oksijen';

  @override
  String get health_latest_glucose => 'Kan Şekeri';

  @override
  String get health_latest_weight => 'Ağırlık';

  @override
  String get health_latest_sleep => 'Uyku Süresi';

  @override
  String get health_add_manual => 'Manuel Ölçüm Ekle';

  @override
  String get health_history_trends => 'Tarihsel Eğilimler';

  @override
  String get health_sync_success =>
      'Sağlık verileri başarıyla senkronize edildi!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours saat $mins dakika';
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
    return '%$pct';
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
  String get health_devices_title => 'Bağlı Cihazlar ve Giyilebilir Cihazlar';

  @override
  String get health_devices_desc =>
      'Eşleştirilmiş akıllı saatleri, fitness takipçilerini ve sağlık sensörlerini yönetin.';

  @override
  String get health_workout_editor_title => 'Antrenmanı Düzenle';

  @override
  String get health_workout_name_label => 'Antrenman Adı';

  @override
  String get health_workout_duration_label => 'Süre (dakika)';

  @override
  String get health_workout_calories_label => 'Tahmini Kalori (kcal)';

  @override
  String get health_workout_date_label => 'Tarih ve Saat';

  @override
  String get plan_daily_wellness_roadmap => 'Kişiselleştirilmiş Yol Haritanız';

  @override
  String get plan_morning_routine => 'Sabah Rutini';

  @override
  String get plan_afternoon_routine => 'Öğle Sağlığı';

  @override
  String get plan_evening_routine => 'Akşam Rüzgarı';

  @override
  String get plan_coach_badge => 'Bloomi AI Koçu';

  @override
  String get plan_weekly_overview => '7 Günlük Sağlıklı Yaşam Odaklılığı';

  @override
  String get plan_targets_title => 'Sağlıklı Yaşam Hedefleri ve Hedefleri';

  @override
  String get plan_calorie_budget_label => 'Günlük Kalori Bütçesi';

  @override
  String get plan_water_budget_label => 'Günlük Su Hedefi';

  @override
  String get plan_step_budget_label => 'Günlük Adım Hedefi';

  @override
  String get plan_macro_split_label => 'Makro Besin Oranı';

  @override
  String get profile_personal_details => 'Kişisel Detaylar';

  @override
  String get profile_body_stats => 'Vücut Ölçüleri';

  @override
  String get profile_app_preferences => 'Tercihler ve Uygulama Ayarları';

  @override
  String get profile_edit_name_hint => 'Adınız';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Yükseklik ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Ağırlık ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Yaş';

  @override
  String get profile_gender_male => 'Erkek';

  @override
  String get profile_gender_female => 'Kadın';

  @override
  String get profile_gender_other => 'Diğer / Söylememeyi tercih ederim';

  @override
  String get profile_activity_sedentary =>
      'Hareketsiz (Çok az veya hiç egzersiz yapmama)';

  @override
  String get profile_activity_light => 'Hafif Aktif (1-3 gün/hafta)';

  @override
  String get profile_activity_moderate =>
      'Orta Derecede Aktif (haftada 3-5 gün)';

  @override
  String get profile_activity_very => 'Çok Aktif (6-7 gün/haftada)';

  @override
  String get settings_wear_os_header =>
      'İşletim Sistemi Yardımcı Uygulamasını Giyin';

  @override
  String get settings_wear_os_desc =>
      'Kalorilere, suya ve adımlara göz atmak için Bloomi döşemesini ve komplikasyonunu Wear OS saatinize yükleyin.';

  @override
  String get settings_widgets_header => 'Etkileşimli Android Widget\'ları';

  @override
  String get settings_widgets_desc =>
      'Anında güncellemeler için gerçek zamanlı widget\'ları cihazınızın ana ekranına sabitleyin.';

  @override
  String get settings_about_header => 'Bloomi hakkında';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '100\'ü oluştur';

  @override
  String get settings_about_credits =>
      'Bilinçli ve sağlıklı yaşam için özenle hazırlandı.';

  @override
  String get settings_terms_header => 'Şartlar ve Koşullar';

  @override
  String get settings_privacy_header => 'Gizlilik Politikası';

  @override
  String get settings_delete_header => 'Hesabı ve Verileri Sil';

  @override
  String get settings_delete_warning =>
      'Bu eylem geri alınamaz. Tüm öğünleriniz, antrenmanlarınız, hayati bilgileriniz ve profiliniz kalıcı olarak silinecek.';

  @override
  String get settings_delete_confirm_btn => 'Kalıcı Olarak Sil';

  @override
  String get onboard_welcome_headline => 'Bloomi\'ye hoş geldiniz ✨';

  @override
  String get onboard_welcome_tagline =>
      'Hayatınıza göre tasarlanmış nazik, dikkatli sağlıklı yaşam takibi.';

  @override
  String get onboard_step_about => 'Hakkınızda';

  @override
  String get onboard_step_goals => 'Hedefleriniz';

  @override
  String get onboard_step_lifestyle => 'Günlük Alışkanlıklar';

  @override
  String get onboard_step_permissions => 'İzinler';

  @override
  String get onboard_step_plan => 'Hazır!';

  @override
  String get onboard_health_connect_perm => 'Sağlık Bağlantı Erişimi';

  @override
  String get onboard_step_sensors_perm => 'Adım Sayacı Sensörü';

  @override
  String get onboard_notif_perm => 'Dikkatli Hatırlatmalar ve Bildirimler';

  @override
  String get onboard_camera_perm => 'Kamera (Barkod ve Gıda Tarayıcı)';

  @override
  String get onboard_grant_permissions => 'İzin Verme';

  @override
  String get onboard_continue_dashboard => 'Kontrol Panelini Aç';

  @override
  String get notif_channel_hydration_name => 'Hidrasyon Dürtüleri';

  @override
  String get notif_channel_hydration_desc =>
      'Gün boyunca nazik su hatırlatmaları';

  @override
  String get notif_channel_nutrition_name =>
      'Yemek ve Beslenme Hatırlatıcıları';

  @override
  String get notif_channel_nutrition_desc =>
      'Kahvaltı, öğle yemeği ve akşam yemeği hatırlatma uyarıları';

  @override
  String get notif_channel_steps_name => 'Adım Kilometre Taşları';

  @override
  String get notif_channel_steps_desc =>
      'Günlük adım hedeflerine ulaşıldığında kutlamalar';

  @override
  String get notif_channel_vitals_name => 'Sağlık ve Hayati Kontroller';

  @override
  String get notif_channel_vitals_desc =>
      'Ağırlık ve uyku zamanı hatırlatmaları';

  @override
  String get notif_action_log_water => '💧 Günlük +250ml';

  @override
  String get notif_action_snooze => '15 dk ertele';

  @override
  String get notif_action_log_meal => '🥗 Günlük Yemek';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
