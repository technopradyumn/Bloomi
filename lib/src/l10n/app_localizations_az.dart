// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Ev';

  @override
  String get nav_today => 'Bu gün';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Qida';

  @override
  String get nav_food_diary => 'Qida gündəliyi';

  @override
  String get nav_workout => 'Məşq jurnalı';

  @override
  String get nav_health => 'Sağlamlıq';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Saxla';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get delete => 'Sil';

  @override
  String get edit => 'Redaktə et';

  @override
  String get done => 'Bitdi';

  @override
  String get close => 'Bağlayın';

  @override
  String get back => 'Geri';

  @override
  String get next => 'Sonrakı';

  @override
  String get continue_btn => 'Davam et';

  @override
  String get confirm => 'Təsdiq edin';

  @override
  String get search => 'Axtar';

  @override
  String get filter => 'Filtr';

  @override
  String get all => 'Hamısı';

  @override
  String get active => 'Aktiv';

  @override
  String get today => 'Bu gün';

  @override
  String get yesterday => 'Dünən';

  @override
  String get tomorrow => 'Sabah';

  @override
  String get add => 'Əlavə et';

  @override
  String get remove => 'Sil';

  @override
  String get refresh => 'Yeniləyin';

  @override
  String get retry => 'Yenidən cəhd edin';

  @override
  String get error => 'Xəta';

  @override
  String get success => 'Uğur';

  @override
  String get loading => 'Yüklənir...';

  @override
  String get no_data => 'Məlumat yoxdur';

  @override
  String get offline => 'Oflayn rejim';

  @override
  String get offline_sub =>
      'Yenidən qoşulduqdan sonra dəyişikliklər sinxronlaşdırılacaq';

  @override
  String get undo => 'Geri al';

  @override
  String get portion => 'Porsiya';

  @override
  String get quantity => 'Kəmiyyət';

  @override
  String get unit => 'Vahid';

  @override
  String get clear => 'Təmiz';

  @override
  String get select => 'seçin';

  @override
  String get apply => 'Müraciət edin';

  @override
  String get reset => 'Sıfırlayın';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Bəli';

  @override
  String get no => 'yox';

  @override
  String get optional => 'Könüllü';

  @override
  String get calories => 'Kalori';

  @override
  String get protein => 'Zülal';

  @override
  String get carbs => 'Karbohidratlar';

  @override
  String get fat => 'Yağ';

  @override
  String get fiber => 'Lif';

  @override
  String get water => 'Su';

  @override
  String get steps => 'Addımlar';

  @override
  String get kcal => 'kkal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kq';

  @override
  String get pounds => 'lbs';

  @override
  String get centimeters => 'sm';

  @override
  String get inches => 'in';

  @override
  String get bpm => 'döyüntü/dəq';

  @override
  String get hours => 'saat';

  @override
  String get minutes => 'dəq';

  @override
  String get serving => 'Xidmət edir';

  @override
  String get servings => 'Porsiyalar';

  @override
  String get serving_size => 'Xidmət Ölçüsü';

  @override
  String get per_100g => '100 q';

  @override
  String get india => 'Hindistan';

  @override
  String get asia => 'Asiya';

  @override
  String get europe => 'Avropa';

  @override
  String get middle_east => 'Yaxın Şərq';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Ev';

  @override
  String get home_greeting_morning => 'Sabahiniz xeyir';

  @override
  String get home_greeting_afternoon => 'Günortanız xeyir';

  @override
  String get home_greeting_evening => 'Axşamınız Xeyir';

  @override
  String get home_streak_title => 'Çiçək zolağı';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün ardıcıllığı',
      one: '1 günlük zolaq',
      zero: '0 günlük seriya',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Yandı';

  @override
  String get home_calories_budget => 'Kalori Büdcəsi';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kkal qalır';
  }

  @override
  String get home_water_title => 'Gündəlik Nəmləndirmə';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Addımlar Getdi';

  @override
  String get home_quick_actions => 'Sürətli hərəkətlər';

  @override
  String get home_log_meal => 'Günlük Yemək';

  @override
  String get home_log_water => 'Giriş Suyu';

  @override
  String get home_log_workout => 'Proqramı qeyd edin';

  @override
  String get home_log_weight => 'Log Çəki';

  @override
  String get home_insights_title => 'Bugünkü İnsights';

  @override
  String get home_quote =>
      'Kiçik sağlam seçimlər çiçəklənən dəyişikliklər yaradır.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI məşqçisi';

  @override
  String get home_surroundings => 'Ətraf və Hava';

  @override
  String get home_notifications => 'Bildirişlər';

  @override
  String get home_daily_score => 'Gündəlik Sağlamlıq Hesabı';

  @override
  String get home_view_all => 'Hamısına Baxın';

  @override
  String get food_diary_title => 'Qida gündəliyi';

  @override
  String get food_breakfast => 'Səhər yeməyi';

  @override
  String get food_lunch => 'Nahar';

  @override
  String get food_dinner => 'Şam yeməyi';

  @override
  String get food_snacks => 'Qəlyanaltılar';

  @override
  String get food_add_food => 'Yemək əlavə edin';

  @override
  String get food_edit_food => 'Yeməyi redaktə edin';

  @override
  String get food_add_breakfast => 'Səhər yeməyi əlavə edin';

  @override
  String get food_add_lunch => 'Nahar əlavə edin';

  @override
  String get food_add_dinner => 'Şam yeməyi əlavə edin';

  @override
  String get food_add_snack => 'Snack əlavə edin';

  @override
  String get food_total_calories => 'Ümumi Kalori';

  @override
  String get food_empty_meal =>
      'Bu yemək üçün hələ heç bir qida daxil edilməyib';

  @override
  String get food_empty_diary => 'Bu gün üçün heç bir yemək qeydə alınmayıb';

  @override
  String get food_log_first_meal =>
      'İlk dadlı yeməyinizi qeyd etmək üçün + üzərinə klikləyin';

  @override
  String get food_quick_add => 'Tez əlavə edin';

  @override
  String get food_search_hint => 'Yeməklər, meyvələr, dal, roti axtarın...';

  @override
  String get food_custom_recipe => 'Xüsusi Qida və Resept';

  @override
  String get food_scan_barcode => 'Barkodu skan edin';

  @override
  String get food_camera_scan => 'AI Qida Skaneri';

  @override
  String get food_recent => 'Son Qidalar';

  @override
  String get food_favourites => 'Sevimlilər';

  @override
  String get food_macro_summary => 'Makronutrientlərin Parçalanması';

  @override
  String get food_delete_meal_confirm =>
      'Bu elementi silmək istədiyinizə əminsiniz?';

  @override
  String get food_item_deleted => 'Qida maddəsi çıxarıldı';

  @override
  String get food_remaining => 'qalan';

  @override
  String get food_consumed => 'istehlak olunur';

  @override
  String food_of_target(Object target) {
    return '$target kkal';
  }

  @override
  String get foodSearch_title => 'Qidaları axtarın';

  @override
  String get foodSearch_scan_barcode => 'Barkodu skan edin';

  @override
  String get foodSearch_take_photo => 'Snap Food Foto';

  @override
  String get foodSearch_custom_food => 'Xüsusi Yemək yaradın';

  @override
  String get foodSearch_recent_searches => 'Son Axtarışlar';

  @override
  String get foodSearch_popular => 'Populyar yeməklər';

  @override
  String get foodSearch_no_results => 'Axtarışınıza uyğun qida yoxdur';

  @override
  String get barcode_title => 'Barkod skaneri';

  @override
  String get barcode_align =>
      'Barkodu kamera çərçivəsinin içərisinə uyğunlaşdırın';

  @override
  String get barcode_not_found => 'Məhsul verilənlər bazasında tapılmadı';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro ilə barkod skan etmək mümkündür';

  @override
  String get camera_title => 'AI Qida Skaneri';

  @override
  String get camera_tap_hint => 'Yeməyinizin aydın şəklini çəkin';

  @override
  String get camera_analysing => 'Yemək boşqabı təhlil edilir...';

  @override
  String get camera_detected => 'Aşkar edilmiş elementlər';

  @override
  String get camera_flash => 'Flaşı dəyişdirin';

  @override
  String get camera_retake => 'Şəkili yenidən çəkin';

  @override
  String get camera_confirm_food => 'Elementləri təsdiqləyin';

  @override
  String get customFood_title => 'Xüsusi Qida və Resept';

  @override
  String get customFood_name_hint => 'Yemək və ya tərkib hissəsi adı';

  @override
  String get customFood_calories_hint => 'Kalori (kkal)';

  @override
  String get customFood_protein_hint => 'Zülal (q)';

  @override
  String get customFood_carbs_hint => 'Karbohidratlar (q)';

  @override
  String get customFood_fat_hint => 'Yağ (q)';

  @override
  String get customFood_save => 'Resepti yadda saxla';

  @override
  String get water_tracker_title => 'Su İzləyicisi';

  @override
  String get water_daily_target => 'Gündəlik Nəmləndirmə Məqsədi';

  @override
  String get water_logged_today => 'Bu gün daxil olub';

  @override
  String get water_add_glass => '+250 ml şüşə';

  @override
  String get water_add_bottle => '+500 ml şüşə';

  @override
  String get water_custom_amount => 'Fərdi Məbləğ';

  @override
  String get water_reminder_tip =>
      'Davamlı enerji üçün gün ərzində müntəzəm olaraq su için.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml su qeyd etdi 💧';
  }

  @override
  String get workout_title => 'Məşq jurnalı';

  @override
  String get workout_add_exercise => 'Məşq əlavə edin';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Güc';

  @override
  String get workout_yoga => 'Yoqa və Elastiklik';

  @override
  String get workout_duration => 'Müddət';

  @override
  String get workout_intensity => 'İntensivlik';

  @override
  String get workout_calories_burned => 'Yandırılan Kalori';

  @override
  String get workout_empty => 'Bu gün heç bir məşq daxil edilməyib';

  @override
  String get workout_save_success => 'Məşq uğurla yadda saxlanıldı!';

  @override
  String get workout_type => 'Məşq növü';

  @override
  String get workout_notes => 'Qeydlər və Reflekslər';

  @override
  String get health_overview_title => 'Sağlamlıq və Vitals';

  @override
  String get health_heart_rate => 'Ürək dərəcəsi';

  @override
  String get health_blood_oxygen => 'Qan oksigeni (SpO2)';

  @override
  String get health_blood_pressure => 'Qan təzyiqi';

  @override
  String get health_blood_glucose => 'Qan qlükoza';

  @override
  String get health_body_temperature => 'Bədən istiliyi';

  @override
  String get health_sleep_tracking => 'Yuxunun İzlənməsi';

  @override
  String get health_weight_tracking => 'Çəki və Bədən Tərkibi';

  @override
  String get health_waist_hip => 'Beldən Kalçaya nisbəti';

  @override
  String get health_devices_hub => 'Cihazlar və Ağıllı Saat Qovşağı';

  @override
  String get health_sync_now => 'Sağlamlıq Məlumatlarını Sinxronlaşdırın';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Son sinxronizasiya: $time';
  }

  @override
  String get health_manual_entry => 'Manual Sağlamlıq Girişi';

  @override
  String get health_metric_detail => 'Metrik Təfərrüatlar';

  @override
  String get health_connected_sensors => 'Qoşulmuş Sağlamlıq Sensorları';

  @override
  String get plan_title => 'Gündəlik Plan';

  @override
  String get plan_weekly_title => 'Həftəlik Sağlamlıq Planı';

  @override
  String get plan_calorie_target => 'Kalori hədəfi';

  @override
  String get plan_water_target => 'Nəmləndirmə Hədəfi';

  @override
  String get plan_step_target => 'Addım Hədəf';

  @override
  String get plan_sleep_target => 'Yuxu Hədəfi';

  @override
  String get plan_meal_suggestions => 'Yemək Təklifləri';

  @override
  String get plan_healthy_habits => 'Sağlam Vərdişlər və Məsləhətlər';

  @override
  String get plan_coach_advice => 'Bloomi AI Məşqçi Tövsiyələri';

  @override
  String get plan_generated_title => 'Fərdi Gündəlik Cədvəl';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profili redaktə edin';

  @override
  String get profile_name => 'ad';

  @override
  String get profile_age => 'Yaş';

  @override
  String get profile_gender => 'Cins';

  @override
  String get profile_height => 'Hündürlük';

  @override
  String get profile_weight => 'Çəki';

  @override
  String get profile_goal => 'Əsas Məqsəd';

  @override
  String get profile_activity_level => 'Fəaliyyət səviyyəsi';

  @override
  String get profile_stats => 'Sağlamlıq statistikam';

  @override
  String get profile_saved => 'Profil uğurla yeniləndi';

  @override
  String get profile_bmi => 'Bədən Kütləsi İndeksi (BMI)';

  @override
  String get profile_membership => 'Üzvlük';

  @override
  String get settings => 'Parametrlər';

  @override
  String get preferences_habits => 'SEÇİMLƏR VƏ vərdişlər';

  @override
  String get appearance_theme => 'Görünüş və Mövzu';

  @override
  String get appearance_theme_sub =>
      'Qaranlıq, İşıq, Sistem Rejimi və Proqram Fon Seçimləri';

  @override
  String get permissions => 'İcazələr və Sistem Girişi';

  @override
  String get permissions_sub =>
      'Health Connect, Addım Sensorları, GPS, Bildirişlər və Kamera';

  @override
  String get reminders_notifications => 'Xatırlatmalar və Bildirişlər';

  @override
  String get reminders_sub =>
      'Yemək vaxtları, su, çəki yoxlaması və yuxu vaxtı xatırlatmaları';

  @override
  String get units_of_measurement => 'Ölçü vahidləri';

  @override
  String get units_sub =>
      'Metrik (kq, sm, ml, km) və ya İmperator (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Proqram dili';

  @override
  String get language_sub =>
      'İngilis, हिन्दी (Hindi), Hinglish və 195+ qlobal dil';

  @override
  String get home_screen_widgets => 'Əsas ekran vidjetləri';

  @override
  String get widgets_sub =>
      'Canlı Android vidjetləri: Mərkəz, Addımlar, Su, Qidalanma və Maskot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch Tətbiqi';

  @override
  String get wear_os_sub =>
      'Ağıllı saat yoldaşı, plitələr, fəsadlar və canlı həyati elementlər';

  @override
  String get goals_wellness => 'MƏQSƏDLƏR VƏ SAĞLIQ BAKIŞLARI';

  @override
  String get nutrition_targets => 'Qidalanma Hədəfləri və Makro Bölmə';

  @override
  String get nutrition_targets_sub =>
      'Kalori hədəfi, protein, karbohidratlar, yağ və su hədəfi';

  @override
  String get weekly_recap => 'Həftəlik Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7 günlük ortalama kalori, makro nisbət və ən yaxşı gün';

  @override
  String get streaks_milestones => 'Zolaqlar və Mərhələlər';

  @override
  String get streaks_sub => 'Aktiv çiçək zolaqları, nişanlar və nailiyyətlər';

  @override
  String get connected_devices => 'BAĞLI CİHAZLAR VƏ EKOSİSTEM';

  @override
  String get devices_hub => 'Cihazlar və Ağıllı Saat Qovşağı';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ətraf və Hava';

  @override
  String get surroundings_sub =>
      'Hava keyfiyyəti (AQI), UV indeksi və hava nəmləndirici məsləhətlər';

  @override
  String get bloomi_pro => 'Bloomi Pro Abunəliyi';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 ev ekranı vidceti və həyati proseslərin izlənməsi';

  @override
  String get about_security => 'HAQQINDA & TƏHLÜKƏSİZLİK';

  @override
  String get about_bloomi => 'Bloomi haqqında';

  @override
  String get about_bloomi_sub => 'Xüsusiyyətləri, versiyanı, atributları qurun';

  @override
  String get privacy_policy => 'Məxfilik Siyasəti';

  @override
  String get privacy_policy_sub => 'Oflayn-ilk, cihazda data arxitekturası';

  @override
  String get terms_conditions => 'Qaydalar və Şərtlər';

  @override
  String get terms_conditions_sub => 'Xidmət şərtləri və sağlamlıq qaydaları';

  @override
  String get delete_account => 'Hesabı və Məlumatı Sil';

  @override
  String get delete_account_sub =>
      'Yerli SQLite məlumatlarını və bulud ehtiyat nüsxələrini geri dönməz şəkildə silin';

  @override
  String get healthy_habits => 'Zərif, davamlı sağlamlıq vərdişləri yaradın';

  @override
  String get all_logs => 'İzlənən Məlumatlarım və Qeydlərim';

  @override
  String get search_language => 'Dil və ya yerli yazı ilə axtar...';

  @override
  String get languages_available => 'Dillər mövcuddur';

  @override
  String get no_matching_languages => 'Uyğun dil tapılmadı';

  @override
  String get try_searching =>
      'Doğma skript və ya ingilis yazısı ilə axtarmağa çalışın';

  @override
  String get partially_translated => 'Qismən tərcümə olunub';

  @override
  String get complete_translation => 'Tamamlayın';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Dil $name ( $nativeName ) olaraq ayarlandı';
  }

  @override
  String get surroundings_title => 'Ətraf və Ətraf Mühit';

  @override
  String get surroundings_aqi => 'Hava Keyfiyyəti İndeksi';

  @override
  String get surroundings_uv => 'UV indeksi';

  @override
  String get surroundings_temp => 'Temperatur';

  @override
  String get surroundings_humidity => 'Rütubət';

  @override
  String get surroundings_hydration_advice =>
      'Mövcud hava şəraitində yaxşı nəmləndirici qalın.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Qida axtar';

  @override
  String get food_quick_barcode => 'Barkodu skan edin 👑';

  @override
  String get food_quick_water => 'Su əlavə edin';

  @override
  String get food_quick_custom => 'Xüsusi Qida';

  @override
  String get surroundings_good => 'yaxşı';

  @override
  String get surroundings_moderate => 'Orta';

  @override
  String get surroundings_unhealthy => 'Sağlam olmayan';

  @override
  String get notifications_title => 'Bildirişlər və Xəbərdarlıqlar';

  @override
  String get notifications_empty => 'Yeni bildiriş yoxdur';

  @override
  String get notifications_mark_read => 'Hamısını Oxunmuş kimi qeyd edin';

  @override
  String get notifications_clear => 'Hamısını Sil';

  @override
  String get reminders => 'Xatırlatma Parametrləri';

  @override
  String get notifications => 'Push Bildirişləri';

  @override
  String get reminders_breakfast_title => 'Səhər yeməyi xatırlatma 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Sabahınız xeyir! $time da qidalandırıcı səhər yeməyi vaxtıdır.';
  }

  @override
  String get reminders_lunch_title => 'Nahar Xatırlatma 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pauza edin və $time-da balanslı, diqqətli nahardan həzz alın.';
  }

  @override
  String get reminders_dinner_title => 'Şam yeməyi xatırlatma 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time -da yüngül, doyumlu nahar vaxtıdır.';
  }

  @override
  String get reminders_water_title => 'Nəmləndirici 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Bir stəkan təzə su içməyin vaxtıdır! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Həftəlik Çəki ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi-də həftəlik bədən ölçülərinizi izləyin ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Yuxu vaxtı istirahət 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Dincəlin və rahat yuxuya hazırlaşın ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomi xoş gəlmisiniz';

  @override
  String get onboard_sub =>
      'Sizin mehriban, oflayn-ilk sağlamlıq və qidalanma yoldaşınız.';

  @override
  String get onboard_get_started => 'Başlayın';

  @override
  String get onboard_sign_in => 'Daxil ol';

  @override
  String get onboard_skip => 'Keç';

  @override
  String get onboard_choose_goal => 'Əsas sağlamlıq məqsədiniz nədir?';

  @override
  String get onboard_goal_weight_loss => 'Zərif çəki itkisi';

  @override
  String get onboard_goal_muscle => 'Əzələ artımı və gücü';

  @override
  String get onboard_goal_energy => 'Gündəlik Enerji və Canlılıq';

  @override
  String get onboard_goal_habits => 'Sağlam Zehinli Qidalanma';

  @override
  String get onboard_about_you => 'Bizə Özünüz Haqqında Deyin';

  @override
  String get onboard_lifestyle => 'Gündəlik işiniz';

  @override
  String get onboard_permissions_title => 'İcazələr və Sistem Girişi';

  @override
  String get onboard_permissions_sub =>
      'Sinxronizasiya addımlarına, məşqlərə və xatırlatmalara giriş icazəsi verin.';

  @override
  String get onboard_plan_ready_title => 'Fərdi Planınız Hazırdır!';

  @override
  String get onboard_plan_ready_sub =>
      'Biz yalnız sizin üçün zərif, fərdiləşdirilmiş qidalanma və sağlamlıq yol xəritəsi hazırladıq.';

  @override
  String get onboard_enter_bloomi => 'Bloomi daxil edin';

  @override
  String get insights_weekly_report => 'Həftəlik Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Ən yaxşı ardıcıllıq günü: $day';
  }

  @override
  String get insights_streaks_badges => 'Zolaqlar və Mərhələlər';

  @override
  String insights_unlocked_on(Object date) {
    return '$date tarixində kiliddən çıxarılıb';
  }

  @override
  String get insights_keep_going => 'Fantastik irəliləyişə davam edin!';

  @override
  String get widgets_title => 'Əsas ekran vidjetləri';

  @override
  String widgets_active_count(Object count) {
    return 'Aktiv vidjetlər: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Sağlamlıq Mərkəzi';

  @override
  String get widgets_steps_title => 'Addımlar və Aktiv Zəng';

  @override
  String get widgets_water_title => 'Nəmləndirmə Sürətli Qeyd';

  @override
  String get widgets_mascot_title => 'Bloomi maskot yoldaşı';

  @override
  String get wear_os_title => 'OS Smartwatch taxın';

  @override
  String get wear_os_connected => 'Saata qoşuldu';

  @override
  String get wear_os_sync => 'Saat məlumatlarını sinxronlaşdırın';

  @override
  String get theme_title => 'Görünüş və Mövzu';

  @override
  String get theme_mode => 'Mövzu rejimi';

  @override
  String get theme_light => 'İşıq';

  @override
  String get theme_dark => 'Qaranlıq';

  @override
  String get theme_system => 'Sistem';

  @override
  String get theme_background_palette => 'Fon palitrası';

  @override
  String get units_title => 'Ölçü vahidləri';

  @override
  String get units_metric => 'Metrik (kq, sm, ml)';

  @override
  String get units_imperial => 'İmperator (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'İdarə panelini yükləmək mümkün deyil';

  @override
  String get home_health_permission_req =>
      'Health Connect İcazəsi Tələb olunur';

  @override
  String get home_health_permission_desc =>
      'Bloomi real vaxtda real addımlar, ürək döyüntüləri və mobil ev vidcetlərini sinxronlaşdırmaq üçün Health Connect icazəsi tələb edir.';

  @override
  String get home_allow_health => 'Sağlamlıq Bağlantısına icazə verin';

  @override
  String get home_ready_mindful_day => 'Diqqətli bir günə hazırsınız? ✨';

  @override
  String get home_quick_add => 'Tez əlavə edin';

  @override
  String get home_live_gps => 'Canlı GPS';

  @override
  String get home_calories_remaining_label => 'KALORİYƏ QALIR';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Yemək: $consumed / $target kkal';
  }

  @override
  String get home_tap_water_tracker => 'Su İzləyicisi üçün toxunun 💧';

  @override
  String get home_water_goal_reached => 'Gündəlik hədəfə çatdı 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Gündəlik hədəfə $remaining ml';
  }

  @override
  String get home_details => 'Təfərrüatlar';

  @override
  String get home_upgrade_plan_desc =>
      'Fərdiləşdirilmiş gündəlik hədəfləri və AI planını açmaq üçün təkmilləşdirin';

  @override
  String get home_unlock => 'Kilidi aç 👑';

  @override
  String get home_quick_log_hint => 'Sağlamlıq girişini tez qeyd edin';

  @override
  String get food_serving_size => 'Xidmət Ölçüsü';

  @override
  String get food_serving_grams => 'Xidmət (g)';

  @override
  String get food_number_servings => 'Porsiyaların sayı';

  @override
  String get food_calories_per_serving => 'Xidmət başına kalori';

  @override
  String get food_recipe_ingredients => 'Tərkibi';

  @override
  String get food_recipe_add_ingredient => 'Tərkibi əlavə edin';

  @override
  String get food_recipe_directions => 'Təlimatlar və Qeydlər';

  @override
  String get food_recipe_total => 'Ümumi Resept Qidalanma';

  @override
  String get food_recipe_per_serving => 'Xidmət başına Qidalanma';

  @override
  String get food_recipe_saved_toast => 'Fərdi yemək uğurla yadda saxlanıldı!';

  @override
  String get food_barcode_found => 'Məhsul tapıldı!';

  @override
  String get food_barcode_not_found_desc =>
      'Bu barkodu açıq verilənlər bazasında tapa bilmədik. İstədiyiniz yemək kimi əlavə edə bilərsiniz.';

  @override
  String get food_add_custom_btn => 'Xüsusi Yemək əlavə edin';

  @override
  String get food_scan_again => 'Yenidən Skan edin';

  @override
  String get food_review_items => 'Aşkar edilmiş qidaları nəzərdən keçirin';

  @override
  String get food_review_hint =>
      'Kəmiyyətləri tənzimləyin və ya hər hansı tanınmamış elementi çıxarın';

  @override
  String get food_log_selected => 'Seçilmiş Qidaları qeyd edin';

  @override
  String get food_favourites_title => 'Sevimli Qidalar';

  @override
  String get food_recent_title => 'Son Qidalar';

  @override
  String get food_no_favourites =>
      'Hələ sevimli yemək yoxdur. Burada qənaət etmək üçün istənilən yeməyə ürəklə vurun.';

  @override
  String get food_no_recents =>
      'Bu yaxınlarda daxil edilmiş qidalar tapılmadı.';

  @override
  String get food_nutrition_details_title => 'Gündəlik Qidalanma Təfərrüatları';

  @override
  String get food_macro_protein_label => 'Protein parçalanması';

  @override
  String get food_macro_carbs_label => 'Karbohidratların Parçalanması';

  @override
  String get food_macro_fat_label => 'Yağların parçalanması';

  @override
  String get food_macro_fiber_label => 'Lif parçalanması';

  @override
  String get food_daily_target_comparison => 'Hədəf müqayisəsi';

  @override
  String food_target_label(Object target) {
    return 'Hədəf: $target';
  }

  @override
  String get food_edit_entry => 'Gündəlik girişini redaktə edin';

  @override
  String get food_delete_entry => 'Girişi Sil';

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
    return '$current/$target ml';
  }

  @override
  String get water_intake_history => 'Bugünkü Su Günlükləri';

  @override
  String get water_no_logs_today =>
      'Bu gün hələ su çəkilməyib. Nəmləndirin və sürətli əlavə et düyməsini vurun!';

  @override
  String get water_adjust_goal => 'Gündəlik Məqsədi tənzimləyin';

  @override
  String get health_connect_banner => 'Health Connect-ə qoşulub';

  @override
  String get health_vitals_summary => 'Gündəlik Sağlamlıq';

  @override
  String get health_latest_heart_rate => 'Ən son Ürək dərəcəsi';

  @override
  String get health_latest_bp => 'Qan təzyiqi';

  @override
  String get health_latest_spo2 => 'Qan oksigen';

  @override
  String get health_latest_glucose => 'Qan qlükoza';

  @override
  String get health_latest_weight => 'Çəki';

  @override
  String get health_latest_sleep => 'Yuxu müddəti';

  @override
  String get health_add_manual => 'Manual Ölçmə əlavə edin';

  @override
  String get health_history_trends => 'Tarixi Trendlər';

  @override
  String get health_sync_success =>
      'Sağlamlıq datası uğurla sinxronlaşdırıldı!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours saat $mins dəq';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kq';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm vuruş/dəq';
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
    return '$val mq/dL';
  }

  @override
  String get health_devices_title => 'Qoşulmuş Cihazlar və Geyinilə bilənlər';

  @override
  String get health_devices_desc =>
      'Cütlənmiş ağıllı saatları, fitnes izləyicilərini və sağlamlıq sensorlarını idarə edin.';

  @override
  String get health_workout_editor_title => 'Məşqi redaktə edin';

  @override
  String get health_workout_name_label => 'Məşq Adı';

  @override
  String get health_workout_duration_label => 'Müddət (dəqiqə)';

  @override
  String get health_workout_calories_label => 'Təxmini Kalori (kkal)';

  @override
  String get health_workout_date_label => 'Tarix və Saat';

  @override
  String get plan_daily_wellness_roadmap => 'Fərdi Yol Xəritəniz';

  @override
  String get plan_morning_routine => 'Səhər Rejimi';

  @override
  String get plan_afternoon_routine => 'Günorta Sağlamlığı';

  @override
  String get plan_evening_routine => 'Axşam';

  @override
  String get plan_coach_badge => 'Bloomi AI məşqçisi';

  @override
  String get plan_weekly_overview => '7 Günlük Sağlamlığa Fokus';

  @override
  String get plan_targets_title => 'Sağlamlıq Hədəfləri və Məqsədləri';

  @override
  String get plan_calorie_budget_label => 'Gündəlik Kalori Büdcəsi';

  @override
  String get plan_water_budget_label => 'Gündəlik Su Hədəfi';

  @override
  String get plan_step_budget_label => 'Gündəlik Addım Məqsədi';

  @override
  String get plan_macro_split_label => 'Makronutrient nisbəti';

  @override
  String get profile_personal_details => 'Şəxsi Təfərrüatlar';

  @override
  String get profile_body_stats => 'Bədən Ölçüləri';

  @override
  String get profile_app_preferences => 'Üstünlüklər və Tətbiq Parametrləri';

  @override
  String get profile_edit_name_hint => 'Adınız';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Hündürlük ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Çəki ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Yaş';

  @override
  String get profile_gender_male => 'Kişi';

  @override
  String get profile_gender_female => 'Qadın';

  @override
  String get profile_gender_other => 'Digər / Deməməyi üstün tuturam';

  @override
  String get profile_activity_sedentary => 'Oturaq (az məşq etmə)';

  @override
  String get profile_activity_light => 'Yüngül aktiv (həftədə 1-3 gün)';

  @override
  String get profile_activity_moderate =>
      'Orta dərəcədə aktiv (həftədə 3-5 gün)';

  @override
  String get profile_activity_very => 'Çox Aktiv (həftədə 6-7 gün)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion Tətbiqi';

  @override
  String get settings_wear_os_desc =>
      'Kalori, su və addımlara nəzər salmaq üçün Wear OS saatınıza Bloomi kafel və mürəkkəbliyi quraşdırın.';

  @override
  String get settings_widgets_header => 'İnteraktiv Android Vidjetləri';

  @override
  String get settings_widgets_desc =>
      'Ani yeniləmələr üçün real vaxt vidjetlərini cihazınızın əsas ekranına bərkidin.';

  @override
  String get settings_about_header => 'Bloomi haqqında';

  @override
  String get settings_about_version => 'Versiya';

  @override
  String get settings_about_build => '100 qurun';

  @override
  String get settings_about_credits =>
      'Ağıllı, sağlam həyat üçün qayğı ilə hazırlanmışdır.';

  @override
  String get settings_terms_header => 'Qaydalar və Şərtlər';

  @override
  String get settings_privacy_header => 'Məxfilik Siyasəti';

  @override
  String get settings_delete_header => 'Hesabı və Məlumatı Sil';

  @override
  String get settings_delete_warning =>
      'Bu əməliyyat geri qaytarıla bilməz. Bütün yeməkləriniz, məşqləriniz, vitallarınız və profiliniz həmişəlik silinəcək.';

  @override
  String get settings_delete_confirm_btn => 'Həmişə Sil';

  @override
  String get onboard_welcome_headline => 'Bloomi ✨-a xoş gəlmisiniz';

  @override
  String get onboard_welcome_tagline =>
      'Həyatınız ətrafında hazırlanmış incə, diqqətli sağlamlıq izləmə.';

  @override
  String get onboard_step_about => 'Sənin haqqında';

  @override
  String get onboard_step_goals => 'Məqsədləriniz';

  @override
  String get onboard_step_lifestyle => 'Gündəlik vərdişlər';

  @override
  String get onboard_step_permissions => 'İcazələr';

  @override
  String get onboard_step_plan => 'Hazır!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Addım sayğac sensoru';

  @override
  String get onboard_notif_perm => 'Diqqətli Xatırlatmalar və Bildirişlər';

  @override
  String get onboard_camera_perm => 'Kamera (Barkod və Qida Skaneri)';

  @override
  String get onboard_grant_permissions => 'İcazələr verin';

  @override
  String get onboard_continue_dashboard => 'İdarə Panelini açın';

  @override
  String get notif_channel_hydration_name => 'Nəmləndirici dürtülər';

  @override
  String get notif_channel_hydration_desc =>
      'Gün ərzində zərif su xatırlatmaları';

  @override
  String get notif_channel_nutrition_name =>
      'Yemək və Qidalanma Xatırlatmaları';

  @override
  String get notif_channel_nutrition_desc =>
      'Səhər yeməyi, nahar və şam yeməyi xatırlatma siqnalları';

  @override
  String get notif_channel_steps_name => 'Addım Mərhələləri';

  @override
  String get notif_channel_steps_desc =>
      'Gündəlik addım hədəflərinə çatdıqda qeyd etmələr';

  @override
  String get notif_channel_vitals_name => 'Sağlamlıq və Həyat Yoxlamaları';

  @override
  String get notif_channel_vitals_desc => 'Çəki və yatmaq vaxtı xatırlatmaları';

  @override
  String get notif_action_log_water => '💧 Giriş +250ml';

  @override
  String get notif_action_snooze => 'Mürgülə 15 m';

  @override
  String get notif_action_log_meal => '🥗 Gündəlik Yemək';

  @override
  String get language => 'Dil';

  @override
  String get share => 'Paylaşın';

  @override
  String common_days(Object count) {
    return '${count}g əvvəl';
  }
}
