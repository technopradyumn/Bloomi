// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Uy';

  @override
  String get nav_today => 'Bugun';

  @override
  String get nav_plan => 'Reja';

  @override
  String get nav_food => 'Oziq-ovqat';

  @override
  String get nav_food_diary => 'Oziq-ovqat kundaligi';

  @override
  String get nav_workout => 'Mashqlar jurnali';

  @override
  String get nav_health => 'Salomatlik';

  @override
  String get nav_profile => 'Profil';

  @override
  String get save => 'Saqlash';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get delete => 'Oʻchirish';

  @override
  String get edit => 'Tahrirlash';

  @override
  String get done => 'Bajarildi';

  @override
  String get close => 'Yopish';

  @override
  String get back => 'Orqaga';

  @override
  String get next => 'Keyingi';

  @override
  String get continue_btn => 'Davom eting';

  @override
  String get confirm => 'Tasdiqlang';

  @override
  String get search => 'Qidiruv';

  @override
  String get filter => 'Filtr';

  @override
  String get all => 'Hammasi';

  @override
  String get active => 'Faol';

  @override
  String get today => 'Bugun';

  @override
  String get yesterday => 'Kecha';

  @override
  String get tomorrow => 'Ertaga';

  @override
  String get add => 'Qo\'shish';

  @override
  String get remove => 'O\'chirish';

  @override
  String get refresh => 'Yangilash';

  @override
  String get retry => 'Qayta urinish';

  @override
  String get error => 'Xato';

  @override
  String get success => 'Muvaffaqiyat';

  @override
  String get loading => 'Yuklanmoqda...';

  @override
  String get no_data => 'Maʼlumotlar mavjud emas';

  @override
  String get offline => 'Oflayn rejim';

  @override
  String get offline_sub =>
      'O\'zgarishlar qayta ulangandan keyin sinxronlanadi';

  @override
  String get undo => 'Bekor qilish';

  @override
  String get portion => 'Porsiya';

  @override
  String get quantity => 'Miqdori';

  @override
  String get unit => 'Birlik';

  @override
  String get clear => 'Toza';

  @override
  String get select => 'Tanlang';

  @override
  String get apply => 'Murojaat qiling';

  @override
  String get reset => 'Qayta tiklash';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Ha';

  @override
  String get no => 'Yo\'q';

  @override
  String get optional => 'Ixtiyoriy';

  @override
  String get calories => 'Kaloriya';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Uglevodlar';

  @override
  String get fat => 'Yog \'';

  @override
  String get fiber => 'Elyaf';

  @override
  String get water => 'Suv';

  @override
  String get steps => 'Qadamlar';

  @override
  String get kcal => 'kkal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'funt';

  @override
  String get centimeters => 'sm';

  @override
  String get inches => 'ichida';

  @override
  String get bpm => 'zarba/daq';

  @override
  String get hours => 'soat';

  @override
  String get minutes => 'min';

  @override
  String get serving => 'Xizmat qilish';

  @override
  String get servings => 'Porsiya';

  @override
  String get serving_size => 'Xizmat hajmi';

  @override
  String get per_100g => '100 g uchun';

  @override
  String get india => 'Hindiston';

  @override
  String get asia => 'Osiyo';

  @override
  String get europe => 'Yevropa';

  @override
  String get middle_east => 'Yaqin Sharq';

  @override
  String get africa => 'Afrika';

  @override
  String get americas => 'Amerika';

  @override
  String get home_title => 'Uy';

  @override
  String get home_greeting_morning => 'Xayrli tong';

  @override
  String get home_greeting_afternoon => 'Xayrli kun';

  @override
  String get home_greeting_evening => 'Xayrli kech';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kunlik ketma-ketlik',
      one: '1 kunlik chiziq',
      zero: '0 kunlik chiziq',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Kuygan';

  @override
  String get home_calories_budget => 'Kaloriya byudjeti';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kkal qoldi';
  }

  @override
  String get home_water_title => 'Kundalik hidratsiya';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Bosilgan qadamlar';

  @override
  String get home_quick_actions => 'Tezkor harakatlar';

  @override
  String get home_log_meal => 'Kundalik ovqat';

  @override
  String get home_log_water => 'Log suvi';

  @override
  String get home_log_workout => 'Jismoniy mashqlar jurnali';

  @override
  String get home_log_weight => 'Log vazni';

  @override
  String get home_insights_title => 'Bugungi tushunchalar';

  @override
  String get home_quote =>
      'Kichkina sog\'lom tanlovlar gullaydigan o\'zgarishlarni yaratadi.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI murabbiyi';

  @override
  String get home_surroundings => 'Atrof va havo';

  @override
  String get home_notifications => 'Bildirishnomalar';

  @override
  String get home_daily_score => 'Kundalik salomatlik reytingi';

  @override
  String get home_view_all => 'Hammasini ko‘rish';

  @override
  String get food_diary_title => 'Oziq-ovqat kundaligi';

  @override
  String get food_breakfast => 'Nonushta';

  @override
  String get food_lunch => 'Tushlik';

  @override
  String get food_dinner => 'Kechki ovqat';

  @override
  String get food_snacks => 'Aperatiflar';

  @override
  String get food_add_food => 'Oziq-ovqat qo\'shing';

  @override
  String get food_edit_food => 'Ovqatni tahrirlash';

  @override
  String get food_add_breakfast => 'Nonushta qo\'shing';

  @override
  String get food_add_lunch => 'Tushlik qo\'shing';

  @override
  String get food_add_dinner => 'Kechki ovqat qo\'shing';

  @override
  String get food_add_snack => 'Snack qo\'shing';

  @override
  String get food_total_calories => 'Umumiy kaloriyalar';

  @override
  String get food_empty_meal =>
      'Bu taom uchun hali hech qanday ovqat qayd etilmagan';

  @override
  String get food_empty_diary =>
      'Bu kun uchun hech qanday ovqat qayd etilmagan';

  @override
  String get food_log_first_meal =>
      'Birinchi mazali taomingizni qayd qilish uchun + tugmasini bosing';

  @override
  String get food_quick_add => 'Tez qo\'shish';

  @override
  String get food_search_hint => 'Idishlarni, mevalarni, dal, roti...';

  @override
  String get food_custom_recipe => 'Maxsus ovqat va retsept';

  @override
  String get food_scan_barcode => 'Shtrix-kodni skanerlash';

  @override
  String get food_camera_scan => 'AI oziq-ovqat skaneri';

  @override
  String get food_recent => 'Oxirgi ovqatlar';

  @override
  String get food_favourites => 'Sevimlilar';

  @override
  String get food_macro_summary => 'Makronutrientlarning parchalanishi';

  @override
  String get food_delete_meal_confirm =>
      'Haqiqatan ham bu elementni olib tashlamoqchimisiz?';

  @override
  String get food_item_deleted => 'Oziq-ovqat mahsuloti olib tashlandi';

  @override
  String get food_remaining => 'qolgan';

  @override
  String get food_consumed => 'iste\'mol qilingan';

  @override
  String food_of_target(Object target) {
    return '$target kkal';
  }

  @override
  String get foodSearch_title => 'Oziq-ovqatlarni qidirish';

  @override
  String get foodSearch_scan_barcode => 'Shtrix-kodni skanerlash';

  @override
  String get foodSearch_take_photo => 'Taom surati';

  @override
  String get foodSearch_custom_food => 'Maxsus ovqat yaratish';

  @override
  String get foodSearch_recent_searches => 'Oxirgi qidiruvlar';

  @override
  String get foodSearch_popular => 'Ommabop taomlar';

  @override
  String get foodSearch_no_results => 'Qidiruvingizga mos ovqat topilmadi';

  @override
  String get barcode_title => 'Shtrix-kod skaneri';

  @override
  String get barcode_align => 'Shtrix-kodni kamera ramkasi ichiga tekislang';

  @override
  String get barcode_not_found => 'Mahsulot ma\'lumotlar bazasida topilmadi';

  @override
  String get barcode_premium_feature =>
      'Bloomi Pro bilan shtrix-kodni skanerlash mumkin';

  @override
  String get camera_title => 'AI oziq-ovqat skaneri';

  @override
  String get camera_tap_hint => 'Taomingizni aniq suratga oling';

  @override
  String get camera_analysing => 'Ovqat tarelkasi tahlil qilinmoqda...';

  @override
  String get camera_detected => 'Aniqlangan elementlar';

  @override
  String get camera_flash => 'Flash-ni almashtirish';

  @override
  String get camera_retake => 'Suratni qayta olish';

  @override
  String get camera_confirm_food => 'Elementlarni tasdiqlang';

  @override
  String get customFood_title => 'Maxsus ovqat va retsept';

  @override
  String get customFood_name_hint => 'Taom yoki ingredient nomi';

  @override
  String get customFood_calories_hint => 'Kaloriya (kkal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Uglevodlar (g)';

  @override
  String get customFood_fat_hint => 'Yog \'(g)';

  @override
  String get customFood_save => 'Retseptni saqlash';

  @override
  String get water_tracker_title => 'Suv kuzatuvchisi';

  @override
  String get water_daily_target => 'Kundalik hidratsiya maqsadi';

  @override
  String get water_logged_today => 'Bugun ro\'yxatdan o\'tgan';

  @override
  String get water_add_glass => '+250 ml stakan';

  @override
  String get water_add_bottle => '+500 ml shisha';

  @override
  String get water_custom_amount => 'Maxsus miqdor';

  @override
  String get water_reminder_tip =>
      'Barqaror energiya uchun kun davomida muntazam ravishda suv iching.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml suv 💧 qayd etildi';
  }

  @override
  String get workout_title => 'Mashqlar jurnali';

  @override
  String get workout_add_exercise => 'Mashq qo\'shing';

  @override
  String get workout_cardio => 'Kardio';

  @override
  String get workout_strength => 'Kuch';

  @override
  String get workout_yoga => 'Yoga va moslashuvchanlik';

  @override
  String get workout_duration => 'Davomiyligi';

  @override
  String get workout_intensity => 'Intensivlik';

  @override
  String get workout_calories_burned => 'Yoqib yuborilgan kaloriyalar';

  @override
  String get workout_empty => 'Bugun hech qanday mashq qayd etilmagan';

  @override
  String get workout_save_success => 'Mashq muvaffaqiyatli saqlandi!';

  @override
  String get workout_type => 'Mashq turi';

  @override
  String get workout_notes => 'Eslatmalar va mulohazalar';

  @override
  String get health_overview_title => 'Salomatlik va hayotiy moddalar';

  @override
  String get health_heart_rate => 'Yurak urishi';

  @override
  String get health_blood_oxygen => 'Qon kislorodi (SpO2)';

  @override
  String get health_blood_pressure => 'Qon bosimi';

  @override
  String get health_blood_glucose => 'Qon glyukoza';

  @override
  String get health_body_temperature => 'Tana harorati';

  @override
  String get health_sleep_tracking => 'Uyquni kuzatish';

  @override
  String get health_weight_tracking => 'Og\'irligi va tana tarkibi';

  @override
  String get health_waist_hip => 'Belning songa nisbati';

  @override
  String get health_devices_hub => 'Qurilmalar va Smartwatch Hub';

  @override
  String get health_sync_now => 'Salomatlik ma\'lumotlarini sinxronlash';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Oxirgi sinxronlangan: $time';
  }

  @override
  String get health_manual_entry => 'Qo\'lda salomatlik kiritish';

  @override
  String get health_metric_detail => 'Metrik tafsilotlar';

  @override
  String get health_connected_sensors => 'Ulangan sog\'liq sensorlari';

  @override
  String get plan_title => 'Kundalik reja';

  @override
  String get plan_weekly_title => 'Haftalik salomatlik rejasi';

  @override
  String get plan_calorie_target => 'Kaloriya maqsadi';

  @override
  String get plan_water_target => 'Hidratsiya maqsadi';

  @override
  String get plan_step_target => 'Bosqichli maqsad';

  @override
  String get plan_sleep_target => 'Uyqu maqsadi';

  @override
  String get plan_meal_suggestions => 'Ovqatlanish bo\'yicha tavsiyalar';

  @override
  String get plan_healthy_habits => 'Sog\'lom odatlar va maslahatlar';

  @override
  String get plan_coach_advice => 'Bloomi AI murabbiyi tavsiyalari';

  @override
  String get plan_generated_title => 'Shaxsiylashtirilgan kunlik jadval';

  @override
  String get profile_title => 'Profil';

  @override
  String get profile_edit => 'Profilni tahrirlash';

  @override
  String get profile_name => 'Ism';

  @override
  String get profile_age => 'Yosh';

  @override
  String get profile_gender => 'Jins';

  @override
  String get profile_height => 'Balandligi';

  @override
  String get profile_weight => 'Og\'irligi';

  @override
  String get profile_goal => 'Asosiy maqsad';

  @override
  String get profile_activity_level => 'Faoliyat darajasi';

  @override
  String get profile_stats => 'Mening salomatlik statistikam';

  @override
  String get profile_saved => 'Profil muvaffaqiyatli yangilandi';

  @override
  String get profile_bmi => 'Tana massasi indeksi (BMI)';

  @override
  String get profile_membership => 'Aʼzolik';

  @override
  String get settings => 'Sozlamalar';

  @override
  String get preferences_habits => 'ISLOVLAR VA odatlar';

  @override
  String get appearance_theme => 'Tashqi ko\'rinish va mavzu';

  @override
  String get appearance_theme_sub =>
      'Toʻq, yorugʻlik, tizim rejimi va ilovalar foni parametrlari';

  @override
  String get permissions => 'Ruxsatlar va tizimga kirish';

  @override
  String get permissions_sub =>
      'Health Connect, qadam sensorlari, GPS, bildirishnomalar va kamera';

  @override
  String get reminders_notifications => 'Eslatmalar va bildirishnomalar';

  @override
  String get reminders_sub =>
      'Ovqatlanish vaqti, suv, vaznni tekshirish va uxlash vaqti haqida eslatmalar';

  @override
  String get units_of_measurement => 'O\'lchov birliklari';

  @override
  String get units_sub =>
      'Metrik (kg, sm, ml, km) yoki Imperial (lbs, ft/dyuym, fl oz)';

  @override
  String get app_language => 'Ilova tili';

  @override
  String get language_sub =>
      'Ingliz, हिन्दी (Hind), Hinglish va 195 dan ortiq global tillar';

  @override
  String get home_screen_widgets => 'Bosh ekran vidjetlari';

  @override
  String get widgets_sub =>
      'Jonli Android vidjetlari: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch ilovasi';

  @override
  String get wear_os_sub =>
      'Smartwatch hamrohi, plitkalar, asoratlar va jonli hayot';

  @override
  String get goals_wellness => 'MAQSADLAR VA SALOVATLIK TA\'SIRLARI';

  @override
  String get nutrition_targets => 'Oziqlanish maqsadlari va makro bo\'linish';

  @override
  String get nutrition_targets_sub =>
      'Kaloriya maqsadi, oqsil, uglevodlar, yog \'va suv';

  @override
  String get weekly_recap => 'Haftalik salomatlik xulosasi';

  @override
  String get weekly_recap_sub =>
      '7 kunlik o\'rtacha kaloriya, makro nisbat va eng yaxshi kun';

  @override
  String get streaks_milestones => 'Chiziqlar va bosqichlar';

  @override
  String get streaks_sub => 'Faol gullash chiziqlari, nishonlar va yutuqlar';

  @override
  String get connected_devices => 'ULANGAN QURILMALAR VA EKOTIZIM';

  @override
  String get devices_hub => 'Qurilmalar va Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Atrof va ob-havo';

  @override
  String get surroundings_sub =>
      'Havo sifati (AQI), UV indeksi va havo namligi bo\'yicha maslahatlar';

  @override
  String get bloomi_pro => 'Bloomi Pro obunasi';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 bosh ekran vidjeti va hayotiy jarayonlarni kuzatish';

  @override
  String get about_security => 'HAQIDA VA XAVFSIZLIK';

  @override
  String get about_bloomi => 'Bloomi haqida';

  @override
  String get about_bloomi_sub =>
      'Qurilish spetsifikatsiyalari, versiyasi, atributlari';

  @override
  String get privacy_policy => 'Maxfiylik siyosati';

  @override
  String get privacy_policy_sub =>
      'Oflayn - birinchi navbatda, qurilmadagi ma\'lumotlar arxitekturasi';

  @override
  String get terms_conditions => 'Foydalanish shartlari';

  @override
  String get terms_conditions_sub =>
      'Xizmat ko\'rsatish shartlari va sog\'lomlashtirish bo\'yicha ko\'rsatmalar';

  @override
  String get delete_account => 'Hisob va ma\'lumotlarni o\'chirish';

  @override
  String get delete_account_sub =>
      'Mahalliy SQLite ma\'lumotlari va bulutli zaxira nusxalarini qaytarib bo\'lmaydigan tarzda o\'chirib tashlang';

  @override
  String get healthy_habits => 'Yumshoq, doimiy salomatlik odatlarini yarating';

  @override
  String get all_logs => 'Mening kuzatilgan ma\'lumotlarim va jurnallarim';

  @override
  String get search_language => 'Til yoki ona tili boʻyicha qidirish...';

  @override
  String get languages_available => 'Mavjud tillar';

  @override
  String get no_matching_languages => 'Hech qanday mos til topilmadi';

  @override
  String get try_searching =>
      'Mahalliy skript yoki inglizcha imlo bo\'yicha qidirib ko\'ring';

  @override
  String get partially_translated => 'Qisman tarjima qilingan';

  @override
  String get complete_translation => 'Bajarildi';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Til oʻrnatildi: $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Atrof va atrof-muhit';

  @override
  String get surroundings_aqi => 'Havo sifati indeksi';

  @override
  String get surroundings_uv => 'UV indeksi';

  @override
  String get surroundings_temp => 'Harorat';

  @override
  String get surroundings_humidity => 'Namlik';

  @override
  String get surroundings_hydration_advice =>
      'Hozirgi ob-havo sharoitida yaxshi namlangan holda turing.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Oziq-ovqatlarni qidirish';

  @override
  String get food_quick_barcode => 'Shtrix-kodni skanerlash 👑';

  @override
  String get food_quick_water => 'Suv qo\'shing';

  @override
  String get food_quick_custom => 'Maxsus ovqat';

  @override
  String get surroundings_good => 'Yaxshi';

  @override
  String get surroundings_moderate => 'Oʻrtacha';

  @override
  String get surroundings_unhealthy => 'Nosog\'lom';

  @override
  String get notifications_title => 'Bildirishnomalar va ogohlantirishlar';

  @override
  String get notifications_empty => 'Yangi bildirishnomalar yo\'q';

  @override
  String get notifications_mark_read => 'Hammasini o\'qilgan deb belgilang';

  @override
  String get notifications_clear => 'Hammasini tozalash';

  @override
  String get reminders => 'Eslatma sozlamalari';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Nonushta haqida eslatma 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Xayrli tong! $time da to\'yimli nonushta vaqti.';
  }

  @override
  String get reminders_lunch_title => 'Tushlik haqida eslatma 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pauza qiling va $time da muvozanatli, aqlli tushlikdan zavqlaning.';
  }

  @override
  String get reminders_dinner_title => 'Kechki ovqat haqida eslatma 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time da engil va qoniqarli kechki ovqat vaqti keldi.';
  }

  @override
  String get reminders_water_title => 'Hidratatsiya 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Bir stakan yangi suv ichish vaqti keldi! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Haftalik tortish ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomida haftalik tana ko\'rsatkichlaringizni kuzatib boring ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Uxlash vaqti 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Dam oling va tinch uyquga tayyorlaning ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bloomiga xush kelibsiz';

  @override
  String get onboard_sub =>
      'Sizning do\'stona, oflayn-birinchi sog\'liq va ovqatlanish hamrohingiz.';

  @override
  String get onboard_get_started => 'Boshlash';

  @override
  String get onboard_sign_in => 'Kirish';

  @override
  String get onboard_skip => 'Oʻtkazib yuborish';

  @override
  String get onboard_choose_goal =>
      'Sizning asosiy salomatlik maqsadingiz nima?';

  @override
  String get onboard_goal_weight_loss => 'Yumshoq vazn yo\'qotish';

  @override
  String get onboard_goal_muscle => 'Mushaklar kuchayishi va kuchayishi';

  @override
  String get onboard_goal_energy => 'Kundalik energiya va hayotiylik';

  @override
  String get onboard_goal_habits => 'Sog\'lom aqlli ovqatlanish';

  @override
  String get onboard_about_you => 'O\'zingiz haqingizda bizga xabar bering';

  @override
  String get onboard_lifestyle => 'Sizning kundalik tartibingiz';

  @override
  String get onboard_permissions_title => 'Ruxsatlar va tizimga kirish';

  @override
  String get onboard_permissions_sub =>
      'Qadamlar, mashqlar va eslatmalarni sinxronlashtirishga ruxsat bering.';

  @override
  String get onboard_plan_ready_title => 'Shaxsiy rejangiz tayyor!';

  @override
  String get onboard_plan_ready_sub =>
      'Biz faqat siz uchun yumshoq, moslashtirilgan ovqatlanish va salomatlik yo\'l xaritasini ishlab chiqdik.';

  @override
  String get onboard_enter_bloomi => 'Bloomiga kiring';

  @override
  String get insights_weekly_report => 'Haftalik salomatlik xulosasi';

  @override
  String insights_best_day(Object day) {
    return 'Eng yaxshi izchillik kuni: $day';
  }

  @override
  String get insights_streaks_badges => 'Chiziqlar va bosqichlar';

  @override
  String insights_unlocked_on(Object date) {
    return '$date kuni qulfdan chiqarilgan';
  }

  @override
  String get insights_keep_going => 'Ajoyib taraqqiyotda davom eting!';

  @override
  String get widgets_title => 'Bosh ekran vidjetlari';

  @override
  String widgets_active_count(Object count) {
    return 'Faol vidjetlar: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi salomatlik markazi';

  @override
  String get widgets_steps_title => 'Qadamlar va faol qo\'ng\'iroq';

  @override
  String get widgets_water_title => 'Hydration Tezkor jurnali';

  @override
  String get widgets_mascot_title => 'Bloomi maskot hamrohi';

  @override
  String get wear_os_title => 'OS Smartwatch kiying';

  @override
  String get wear_os_connected => 'Watch xizmatiga ulangan';

  @override
  String get wear_os_sync => 'Tomosha maʼlumotlarini sinxronlash';

  @override
  String get theme_title => 'Tashqi ko\'rinish va mavzu';

  @override
  String get theme_mode => 'Mavzu rejimi';

  @override
  String get theme_light => 'Nur';

  @override
  String get theme_dark => 'Qorong\'i';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Fon palitrasi';

  @override
  String get units_title => 'O\'lchov birliklari';

  @override
  String get units_metric => 'Metrik (kg, sm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Boshqaruv panelini yuklab bo‘lmadi';

  @override
  String get home_health_permission_req =>
      'Health Connect ruxsati talab qilinadi';

  @override
  String get home_health_permission_desc =>
      'Bloomi real vaqtda haqiqiy qadamlar, yurak urish tezligi va mobil uy vidjetlarini sinxronlash uchun Health Connect ruxsatini talab qiladi.';

  @override
  String get home_allow_health => 'Health Connectga ruxsat bering';

  @override
  String get home_ready_mindful_day => 'Ehtiyotkor kunga tayyormisiz? ✨';

  @override
  String get home_quick_add => 'Tez qo\'shish';

  @override
  String get home_live_gps => 'Jonli GPS';

  @override
  String get home_calories_remaining_label => 'QOLGAN KALORİYALAR';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Ovqatlangan: $consumed / $target kkal';
  }

  @override
  String get home_tap_water_tracker => 'Suv kuzatuvchisi 💧 uchun bosing';

  @override
  String get home_water_goal_reached => 'Kunlik maqsadga erishildi 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'Kunlik maqsadga $remaining ml';
  }

  @override
  String get home_details => 'Tafsilotlar';

  @override
  String get home_upgrade_plan_desc =>
      'Shaxsiylashtirilgan kundalik maqsadlar va AI rejasini ochish uchun yangilang';

  @override
  String get home_unlock => 'Qulfni ochish 👑';

  @override
  String get home_quick_log_hint =>
      'Sog\'lomlashtirish yozuvini tezda yozib oling';

  @override
  String get food_serving_size => 'Xizmat hajmi';

  @override
  String get food_serving_grams => 'Xizmat qilish (g)';

  @override
  String get food_number_servings => 'Porsiya soni';

  @override
  String get food_calories_per_serving => 'Har bir xizmat uchun kaloriya';

  @override
  String get food_recipe_ingredients => 'Ingredientlar';

  @override
  String get food_recipe_add_ingredient => 'Ingredient qo\'shing';

  @override
  String get food_recipe_directions => 'Ko\'rsatmalar va eslatmalar';

  @override
  String get food_recipe_total => 'Umumiy ovqatlanish retsepti';

  @override
  String get food_recipe_per_serving => 'Har bir xizmat uchun ovqatlanish';

  @override
  String get food_recipe_saved_toast => 'Maxsus taom muvaffaqiyatli saqlandi!';

  @override
  String get food_barcode_found => 'Mahsulot topildi!';

  @override
  String get food_barcode_not_found_desc =>
      'Ushbu shtrix kodni ochiq ma\'lumotlar bazasida topa olmadik. Siz uni maxsus taom sifatida qo\'shishingiz mumkin.';

  @override
  String get food_add_custom_btn => 'Maxsus ovqat qo\'shing';

  @override
  String get food_scan_again => 'Qayta skanerlash';

  @override
  String get food_review_items => 'Aniqlangan ovqatlarni ko\'rib chiqing';

  @override
  String get food_review_hint =>
      'Miqdorlarni sozlang yoki tanib bo\'lmaydigan narsalarni olib tashlang';

  @override
  String get food_log_selected => 'Tanlangan ovqatlarni qayd qiling';

  @override
  String get food_favourites_title => 'Sevimli taomlar';

  @override
  String get food_recent_title => 'Oxirgi ovqatlar';

  @override
  String get food_no_favourites =>
      'Sevimli taomlar hali yo\'q. Bu yerda saqlash uchun istalgan taomga yurakni bosing.';

  @override
  String get food_no_recents => 'Yaqinda qayd etilgan ovqatlar topilmadi.';

  @override
  String get food_nutrition_details_title =>
      'Kundalik ovqatlanish tafsilotlari';

  @override
  String get food_macro_protein_label => 'Proteinning parchalanishi';

  @override
  String get food_macro_carbs_label => 'Uglevodlarni taqsimlash';

  @override
  String get food_macro_fat_label => 'Yog\'larning parchalanishi';

  @override
  String get food_macro_fiber_label => 'Elyafning parchalanishi';

  @override
  String get food_daily_target_comparison => 'Maqsadli taqqoslash';

  @override
  String food_target_label(Object target) {
    return 'Maqsad: $target';
  }

  @override
  String get food_edit_entry => 'Kundalik yozuvini tahrirlash';

  @override
  String get food_delete_entry => 'Yozuvni o\'chirish';

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
    return '$current / $target ml';
  }

  @override
  String get water_intake_history => 'Bugungi suv jurnallari';

  @override
  String get water_no_logs_today =>
      'Bugungacha suv yo\'q. Hidratlang va tez qo\'shish tugmasini bosing!';

  @override
  String get water_adjust_goal => 'Kundalik maqsadni sozlang';

  @override
  String get health_connect_banner => 'Health Connect xizmatiga ulangan';

  @override
  String get health_vitals_summary => 'Kundalik sog\'liq uchun muhim';

  @override
  String get health_latest_heart_rate => 'Oxirgi yurak urishi';

  @override
  String get health_latest_bp => 'Qon bosimi';

  @override
  String get health_latest_spo2 => 'Qon kislorodi';

  @override
  String get health_latest_glucose => 'Qon glyukoza';

  @override
  String get health_latest_weight => 'Og\'irligi';

  @override
  String get health_latest_sleep => 'Uyqu davomiyligi';

  @override
  String get health_add_manual => 'Qo\'lda o\'lchashni qo\'shing';

  @override
  String get health_history_trends => 'Tarixiy tendentsiyalar';

  @override
  String get health_sync_success =>
      'Salomatlik maʼlumotlari muvaffaqiyatli sinxronlandi!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours soat $mins daqiqa';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm zarba/daq';
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
      'Ulangan qurilmalar va taqiladigan qurilmalar';

  @override
  String get health_devices_desc =>
      'Ulangan aqlli soatlar, fitnes-trekerlar va salomatlik sensorlarini boshqaring.';

  @override
  String get health_workout_editor_title => 'Mashqni tahrirlash';

  @override
  String get health_workout_name_label => 'Mashq nomi';

  @override
  String get health_workout_duration_label => 'Davomiyligi (daqiqa)';

  @override
  String get health_workout_calories_label => 'Hisoblangan kaloriyalar (kkal)';

  @override
  String get health_workout_date_label => 'Sana va vaqt';

  @override
  String get plan_daily_wellness_roadmap =>
      'Shaxsiylashtirilgan yoʻl xaritangiz';

  @override
  String get plan_morning_routine => 'Ertalabki tartib';

  @override
  String get plan_afternoon_routine => 'Tushdagi salomatlik';

  @override
  String get plan_evening_routine => 'Kechki dam olish';

  @override
  String get plan_coach_badge => 'Bloomi AI murabbiyi';

  @override
  String get plan_weekly_overview => '7 kunlik salomatlik markazi';

  @override
  String get plan_targets_title => 'Salomatlik maqsadlari va maqsadlari';

  @override
  String get plan_calorie_budget_label => 'Kundalik kaloriya byudjeti';

  @override
  String get plan_water_budget_label => 'Kundalik suv maqsadi';

  @override
  String get plan_step_budget_label => 'Kundalik qadam maqsadi';

  @override
  String get plan_macro_split_label => 'Makronutrient nisbati';

  @override
  String get profile_personal_details => 'Shaxsiy ma\'lumotlar';

  @override
  String get profile_body_stats => 'Tana o\'lchovlari';

  @override
  String get profile_app_preferences => 'Afzalliklar va ilova sozlamalari';

  @override
  String get profile_edit_name_hint => 'Sizning ismingiz';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Balandligi ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Og\'irligi ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Yosh';

  @override
  String get profile_gender_male => 'Erkak';

  @override
  String get profile_gender_female => 'Ayol';

  @override
  String get profile_gender_other => 'Boshqa / Aytmaslikni afzal ko\'ring';

  @override
  String get profile_activity_sedentary =>
      'Sedentary (ozgina yoki umuman mashq qilmaydi)';

  @override
  String get profile_activity_light => 'Yengil faol (haftasiga 1-3 kun)';

  @override
  String get profile_activity_moderate => 'O\'rtacha faol (haftasiga 3-5 kun)';

  @override
  String get profile_activity_very => 'Juda faol (haftasiga 6-7 kun)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion ilovasi';

  @override
  String get settings_wear_os_desc =>
      'Kaloriya, suv va qadamlarga qarash uchun Wear OS soatingizga Bloomi plitasini va murakkablikni o\'rnating.';

  @override
  String get settings_widgets_header => 'Interaktiv Android vidjetlari';

  @override
  String get settings_widgets_desc =>
      'Tezkor yangilanishlar uchun real vaqtda vidjetlarni qurilmangizning bosh ekraniga mahkamlang.';

  @override
  String get settings_about_header => 'Bloomi haqida';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '100 quring';

  @override
  String get settings_about_credits =>
      'Ehtiyotkorlik bilan, sog\'lom turmush tarzi uchun yaratilgan.';

  @override
  String get settings_terms_header => 'Foydalanish shartlari';

  @override
  String get settings_privacy_header => 'Maxfiylik siyosati';

  @override
  String get settings_delete_header => 'Hisob va ma\'lumotlarni o\'chirish';

  @override
  String get settings_delete_warning =>
      'Bu amalni ortga qaytarib bo‘lmaydi. Barcha ovqatlaringiz, mashqlaringiz, hayotiy maʼlumotlaringiz va profilingiz butunlay oʻchirib tashlanadi.';

  @override
  String get settings_delete_confirm_btn => 'Doimiy o\'chirish';

  @override
  String get onboard_welcome_headline => 'Bloomi ✨ ga xush kelibsiz';

  @override
  String get onboard_welcome_tagline =>
      'Sizning hayotingiz atrofida yaratilgan yumshoq, ehtiyotkorlik bilan salomatlikni kuzatish.';

  @override
  String get onboard_step_about => 'Siz haqingizda';

  @override
  String get onboard_step_goals => 'Maqsadlaringiz';

  @override
  String get onboard_step_lifestyle => 'Kundalik odatlar';

  @override
  String get onboard_step_permissions => 'Ruxsatlar';

  @override
  String get onboard_step_plan => 'Tayyor!';

  @override
  String get onboard_health_connect_perm => 'Health Connect kirish';

  @override
  String get onboard_step_sensors_perm => 'Qadam hisoblagich sensori';

  @override
  String get onboard_notif_perm => 'Eslatmalar va bildirishnomalar';

  @override
  String get onboard_camera_perm => 'Kamera (shtrix-kod va oziq-ovqat skaneri)';

  @override
  String get onboard_grant_permissions => 'Ruxsat berish';

  @override
  String get onboard_continue_dashboard => 'Boshqaruv panelini oching';

  @override
  String get notif_channel_hydration_name =>
      'Hidratsiyaga qarshi qo\'shimchalar';

  @override
  String get notif_channel_hydration_desc =>
      'Kun davomida yumshoq suv haqida eslatmalar';

  @override
  String get notif_channel_nutrition_name =>
      'Ovqatlanish va ovqatlanish haqida eslatmalar';

  @override
  String get notif_channel_nutrition_desc =>
      'Nonushta, tushlik va kechki ovqat haqida eslatma';

  @override
  String get notif_channel_steps_name => 'Qadam bosqichlari';

  @override
  String get notif_channel_steps_desc =>
      'Kundalik qadam maqsadlariga erishilganda bayramlar';

  @override
  String get notif_channel_vitals_name => 'Salomatlik va hayotni tekshirish';

  @override
  String get notif_channel_vitals_desc =>
      'Og\'irlik va uxlash vaqti haqida eslatmalar';

  @override
  String get notif_action_log_water => '💧 Jurnal +250ml';

  @override
  String get notif_action_snooze => 'Kechiktirish 15 m';

  @override
  String get notif_action_log_meal => '🥗 Kundalik taom';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
