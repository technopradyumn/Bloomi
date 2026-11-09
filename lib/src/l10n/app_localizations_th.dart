// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get app_name => 'บลูมี';

  @override
  String get nav_home => 'บ้าน';

  @override
  String get nav_today => 'วันนี้';

  @override
  String get nav_plan => 'แผน';

  @override
  String get nav_food => 'อาหาร';

  @override
  String get nav_food_diary => 'ไดอารี่อาหาร';

  @override
  String get nav_workout => 'บันทึกการออกกำลังกาย';

  @override
  String get nav_health => 'สุขภาพ';

  @override
  String get nav_profile => 'โปรไฟล์';

  @override
  String get save => 'บันทึก';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get edit => 'แก้ไข';

  @override
  String get done => 'เสร็จแล้ว';

  @override
  String get close => 'ปิด';

  @override
  String get back => 'กลับ';

  @override
  String get next => 'ถัดไป';

  @override
  String get continue_btn => 'ดำเนินการต่อ';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get search => 'ค้นหา';

  @override
  String get filter => 'ตัวกรอง';

  @override
  String get all => 'ทั้งหมด';

  @override
  String get active => 'ใช้งานอยู่';

  @override
  String get today => 'วันนี้';

  @override
  String get yesterday => 'เมื่อวาน';

  @override
  String get tomorrow => 'พรุ่งนี้';

  @override
  String get add => 'เพิ่ม';

  @override
  String get remove => 'ลบ';

  @override
  String get refresh => 'รีเฟรช';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get error => 'เกิดข้อผิดพลาด';

  @override
  String get success => 'ความสำเร็จ';

  @override
  String get loading => 'กำลังโหลด...';

  @override
  String get no_data => 'ไม่มีข้อมูล';

  @override
  String get offline => 'โหมดออฟไลน์';

  @override
  String get offline_sub => 'การเปลี่ยนแปลงจะซิงค์เมื่อเชื่อมต่อใหม่แล้ว';

  @override
  String get undo => 'เลิกทำ';

  @override
  String get portion => 'ส่วน';

  @override
  String get quantity => 'ปริมาณ';

  @override
  String get unit => 'หน่วย';

  @override
  String get clear => 'ชัดเจน';

  @override
  String get select => 'เลือก';

  @override
  String get apply => 'สมัคร';

  @override
  String get reset => 'รีเซ็ต';

  @override
  String get ok => 'ตกลง';

  @override
  String get yes => 'ใช่';

  @override
  String get no => 'ไม่';

  @override
  String get optional => 'ไม่จำเป็น';

  @override
  String get calories => 'แคลอรี่';

  @override
  String get protein => 'โปรตีน';

  @override
  String get carbs => 'คาร์โบไฮเดรต';

  @override
  String get fat => 'อ้วน';

  @override
  String get fiber => 'ไฟเบอร์';

  @override
  String get water => 'น้ำ';

  @override
  String get steps => 'ขั้นตอน';

  @override
  String get kcal => 'กิโลแคลอรี';

  @override
  String get grams => 'ก';

  @override
  String get milliliters => 'มล';

  @override
  String get kilograms => 'กก';

  @override
  String get pounds => 'ปอนด์';

  @override
  String get centimeters => 'ซม';

  @override
  String get inches => 'ใน';

  @override
  String get bpm => 'ครั้งต่อนาที';

  @override
  String get hours => 'ชม';

  @override
  String get minutes => 'นาที';

  @override
  String get serving => 'เสิร์ฟ';

  @override
  String get servings => 'เสิร์ฟ';

  @override
  String get serving_size => 'ขนาดหน่วยบริโภค';

  @override
  String get per_100g => 'ต่อ 100 กรัม';

  @override
  String get india => 'อินเดีย';

  @override
  String get asia => 'เอเชีย';

  @override
  String get europe => 'ยุโรป';

  @override
  String get middle_east => 'ตะวันออกกลาง';

  @override
  String get africa => 'แอฟริกา';

  @override
  String get americas => 'อเมริกา';

  @override
  String get home_title => 'บ้าน';

  @override
  String get home_greeting_morning => 'สวัสดีตอนเช้า';

  @override
  String get home_greeting_afternoon => 'สวัสดีตอนบ่าย';

  @override
  String get home_greeting_evening => 'สวัสดีตอนเย็น';

  @override
  String get home_streak_title => 'ดอกริ้ว';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วันติดต่อกัน',
      one: 'ต่อเนื่อง 1 วัน',
      zero: '0 วันติดต่อกัน',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'เผา';

  @override
  String get home_calories_budget => 'งบประมาณแคลอรี่';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal กิโลแคลอรีที่เหลืออยู่';
  }

  @override
  String get home_water_title => 'การให้ความชุ่มชื้นในแต่ละวัน';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target มล';
  }

  @override
  String get home_steps_title => 'ก้าวเดิน';

  @override
  String get home_quick_actions => 'การดำเนินการด่วน';

  @override
  String get home_log_meal => 'บันทึกมื้ออาหาร';

  @override
  String get home_log_water => 'เข้าสู่ระบบน้ำ';

  @override
  String get home_log_workout => 'เข้าสู่ระบบการออกกำลังกาย';

  @override
  String get home_log_weight => 'บันทึกน้ำหนัก';

  @override
  String get home_insights_title => 'ข้อมูลเชิงลึกประจำวันนี้';

  @override
  String get home_quote =>
      'ตัวเลือกเล็กๆ น้อยๆ ที่ดีต่อสุขภาพทำให้เกิดการเปลี่ยนแปลงที่กำลังเบ่งบาน';

  @override
  String get home_ai_coach_tip => 'โค้ช AI ของ Bloomi';

  @override
  String get home_surroundings => 'สิ่งแวดล้อมและอากาศ';

  @override
  String get home_notifications => 'การแจ้งเตือน';

  @override
  String get home_daily_score => 'คะแนนสุขภาพรายวัน';

  @override
  String get home_view_all => 'ดูทั้งหมด';

  @override
  String get food_diary_title => 'ไดอารี่อาหาร';

  @override
  String get food_breakfast => 'อาหารเช้า';

  @override
  String get food_lunch => 'อาหารกลางวัน';

  @override
  String get food_dinner => 'อาหารเย็น';

  @override
  String get food_snacks => 'ของว่าง';

  @override
  String get food_add_food => 'เพิ่มอาหาร';

  @override
  String get food_edit_food => 'แก้ไขอาหาร';

  @override
  String get food_add_breakfast => 'เพิ่มอาหารเช้า';

  @override
  String get food_add_lunch => 'เพิ่มอาหารกลางวัน';

  @override
  String get food_add_dinner => 'เพิ่มอาหารเย็น';

  @override
  String get food_add_snack => 'เพิ่มสแน็ค';

  @override
  String get food_total_calories => 'แคลอรี่ทั้งหมด';

  @override
  String get food_empty_meal => 'ยังไม่มีอาหารบันทึกไว้สำหรับมื้อนี้';

  @override
  String get food_empty_diary => 'ไม่มีการบันทึกมื้ออาหารสำหรับวันนี้';

  @override
  String get food_log_first_meal => 'แตะ + เพื่อบันทึกมื้ออร่อยมื้อแรกของคุณ';

  @override
  String get food_quick_add => 'เพิ่มด่วน';

  @override
  String get food_search_hint => 'ค้นหาอาหาร ผลไม้ ดาล โรตี...';

  @override
  String get food_custom_recipe => 'อาหารตามสั่งและสูตรอาหาร';

  @override
  String get food_scan_barcode => 'สแกนบาร์โค้ด';

  @override
  String get food_camera_scan => 'เครื่องสแกนอาหาร AI';

  @override
  String get food_recent => 'อาหารล่าสุด';

  @override
  String get food_favourites => 'รายการโปรด';

  @override
  String get food_macro_summary => 'การสลายตัวของธาตุอาหารหลัก';

  @override
  String get food_delete_meal_confirm => 'คุณแน่ใจหรือไม่ว่าต้องการลบรายการนี้';

  @override
  String get food_item_deleted => 'รายการอาหารถูกลบออก';

  @override
  String get food_remaining => 'ที่เหลืออยู่';

  @override
  String get food_consumed => 'บริโภค';

  @override
  String food_of_target(Object target) {
    return 'ของ $target กิโลแคลอรี';
  }

  @override
  String get foodSearch_title => 'ค้นหาอาหาร';

  @override
  String get foodSearch_scan_barcode => 'สแกนบาร์โค้ด';

  @override
  String get foodSearch_take_photo => 'ถ่ายรูปอาหาร';

  @override
  String get foodSearch_custom_food => 'สร้างอาหารที่กำหนดเอง';

  @override
  String get foodSearch_recent_searches => 'การค้นหาล่าสุด';

  @override
  String get foodSearch_popular => 'เมนูยอดนิยม';

  @override
  String get foodSearch_no_results => 'ไม่มีอาหารที่ตรงกับการค้นหาของคุณ';

  @override
  String get barcode_title => 'เครื่องสแกนบาร์โค้ด';

  @override
  String get barcode_align => 'จัดแนวบาร์โค้ดภายในกรอบกล้อง';

  @override
  String get barcode_not_found => 'ไม่พบผลิตภัณฑ์ในฐานข้อมูล';

  @override
  String get barcode_premium_feature => 'การสแกนบาร์โค้ดใช้ได้กับ Bloomi Pro';

  @override
  String get camera_title => 'เครื่องสแกนอาหาร AI';

  @override
  String get camera_tap_hint => 'ถ่ายภาพอาหารของคุณให้ชัดเจน';

  @override
  String get camera_analysing => 'วิเคราะห์จานอาหาร...';

  @override
  String get camera_detected => 'รายการที่ตรวจพบ';

  @override
  String get camera_flash => 'สลับแฟลช';

  @override
  String get camera_retake => 'ถ่ายภาพใหม่';

  @override
  String get camera_confirm_food => 'ยืนยันรายการ';

  @override
  String get customFood_title => 'อาหารตามสั่งและสูตรอาหาร';

  @override
  String get customFood_name_hint => 'ชื่ออาหารหรือส่วนผสม';

  @override
  String get customFood_calories_hint => 'แคลอรี่ (กิโลแคลอรี)';

  @override
  String get customFood_protein_hint => 'โปรตีน (กรัม)';

  @override
  String get customFood_carbs_hint => 'คาร์โบไฮเดรต (กรัม)';

  @override
  String get customFood_fat_hint => 'ไขมัน (กรัม)';

  @override
  String get customFood_save => 'บันทึกสูตร';

  @override
  String get water_tracker_title => 'เครื่องติดตามน้ำ';

  @override
  String get water_daily_target => 'เป้าหมายการให้ความชุ่มชื้นรายวัน';

  @override
  String get water_logged_today => 'เข้าสู่ระบบวันนี้';

  @override
  String get water_add_glass => 'แก้ว +250 มล';

  @override
  String get water_add_bottle => 'ขวด +500 มล';

  @override
  String get water_custom_amount => 'จำนวนเงินที่กำหนดเอง';

  @override
  String get water_reminder_tip =>
      'ดื่มน้ำเป็นประจำตลอดทั้งวันเพื่อพลังงานที่มั่นคง';

  @override
  String water_logged_toast(Object amount) {
    return 'น้ำที่บันทึกไว้ $amount มล. หยดน้ำ ความชื้น';
  }

  @override
  String get workout_title => 'บันทึกการออกกำลังกาย';

  @override
  String get workout_add_exercise => 'เพิ่มการออกกำลังกาย';

  @override
  String get workout_cardio => 'คาร์ดิโอ';

  @override
  String get workout_strength => 'ความแข็งแกร่ง';

  @override
  String get workout_yoga => 'โยคะและความยืดหยุ่น';

  @override
  String get workout_duration => 'ระยะเวลา';

  @override
  String get workout_intensity => 'ความเข้ม';

  @override
  String get workout_calories_burned => 'แคลอรี่ที่ถูกเผา';

  @override
  String get workout_empty => 'วันนี้ไม่มีการบันทึกการออกกำลังกาย';

  @override
  String get workout_save_success => 'บันทึกการออกกำลังกายเรียบร้อยแล้ว!';

  @override
  String get workout_type => 'ประเภทการออกกำลังกาย';

  @override
  String get workout_notes => 'หมายเหตุและภาพสะท้อน';

  @override
  String get health_overview_title => 'สุขภาพและความสำคัญ';

  @override
  String get health_heart_rate => 'อัตราการเต้นของหัวใจ';

  @override
  String get health_blood_oxygen => 'ออกซิเจนในเลือด (SpO2)';

  @override
  String get health_blood_pressure => 'ความดันโลหิต';

  @override
  String get health_blood_glucose => 'กลูโคสในเลือด';

  @override
  String get health_body_temperature => 'อุณหภูมิร่างกาย';

  @override
  String get health_sleep_tracking => 'ติดตามการนอนหลับ';

  @override
  String get health_weight_tracking => 'น้ำหนักและส่วนประกอบของร่างกาย';

  @override
  String get health_waist_hip => 'อัตราส่วนเอวต่อสะโพก';

  @override
  String get health_devices_hub => 'อุปกรณ์และศูนย์กลางสมาร์ทวอทช์';

  @override
  String get health_sync_now => 'ซิงค์ข้อมูลสุขภาพ';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'ซิงค์ครั้งล่าสุด: $time';
  }

  @override
  String get health_manual_entry => 'รายการสุขภาพด้วยตนเอง';

  @override
  String get health_metric_detail => 'รายละเอียดเมตริก';

  @override
  String get health_connected_sensors => 'เซ็นเซอร์สุขภาพที่เชื่อมต่อ';

  @override
  String get plan_title => 'แผนรายวัน';

  @override
  String get plan_weekly_title => 'แผนสุขภาพรายสัปดาห์';

  @override
  String get plan_calorie_target => 'เป้าหมายแคลอรี่';

  @override
  String get plan_water_target => 'เป้าหมายความชุ่มชื้น';

  @override
  String get plan_step_target => 'เป้าหมายก้าว';

  @override
  String get plan_sleep_target => 'เป้าหมายการนอนหลับ';

  @override
  String get plan_meal_suggestions => 'ข้อเสนอแนะมื้ออาหาร';

  @override
  String get plan_healthy_habits => 'นิสัยและเคล็ดลับเพื่อสุขภาพ';

  @override
  String get plan_coach_advice => 'คำแนะนำโค้ช Bloomi AI';

  @override
  String get plan_generated_title => 'ตารางรายวันส่วนบุคคล';

  @override
  String get profile_title => 'โปรไฟล์';

  @override
  String get profile_edit => 'แก้ไขโปรไฟล์';

  @override
  String get profile_name => 'ชื่อ';

  @override
  String get profile_age => 'อายุ';

  @override
  String get profile_gender => 'เพศ';

  @override
  String get profile_height => 'ส่วนสูง';

  @override
  String get profile_weight => 'น้ำหนัก';

  @override
  String get profile_goal => 'เป้าหมายหลัก';

  @override
  String get profile_activity_level => 'ระดับกิจกรรม';

  @override
  String get profile_stats => 'สถิติสุขภาพของฉัน';

  @override
  String get profile_saved => 'อัปเดตโปรไฟล์สำเร็จแล้ว';

  @override
  String get profile_bmi => 'ดัชนีมวลกาย (BMI)';

  @override
  String get profile_membership => 'สมาชิกภาพ';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get preferences_habits => 'การตั้งค่าและนิสัย';

  @override
  String get appearance_theme => 'ลักษณะและธีม';

  @override
  String get appearance_theme_sub =>
      'ตัวเลือกความมืด สว่าง โหมดระบบ และพื้นหลังของแอป';

  @override
  String get permissions => 'สิทธิ์และการเข้าถึงระบบ';

  @override
  String get permissions_sub =>
      'Health Connect, เซ็นเซอร์ก้าว, GPS, การแจ้งเตือนและกล้อง';

  @override
  String get reminders_notifications => 'การแจ้งเตือนและการแจ้งเตือน';

  @override
  String get reminders_sub =>
      'เวลาอาหาร น้ำ น้ำหนักเช็คอิน และการแจ้งเตือนเวลาเข้านอน';

  @override
  String get units_of_measurement => 'หน่วยวัด';

  @override
  String get units_sub =>
      'หน่วยเมตริก (กก. ซม. มล. กม.) หรือหน่วยอิมพีเรียล (ปอนด์ ฟุต/นิ้ว ออนซ์)';

  @override
  String get app_language => 'ภาษาของแอป';

  @override
  String get language_sub =>
      'อังกฤษ, हिन्दी (ฮินดี), ฮิงลิช และภาษาทั่วโลกมากกว่า 195 ภาษา';

  @override
  String get home_screen_widgets => 'วิดเจ็ตบนหน้าจอหลัก';

  @override
  String get widgets_sub =>
      'วิดเจ็ต Android แบบสด: ฮับ ขั้นตอน น้ำ โภชนาการ และมาสคอต';

  @override
  String get wear_os_watch_app => 'สวมแอป OS Watch';

  @override
  String get wear_os_sub =>
      'สหายสมาร์ทวอทช์ ไทล์ ภาวะแทรกซ้อน และสิ่งมีชีวิตที่สำคัญ';

  @override
  String get goals_wellness => 'เป้าหมายและข้อมูลเชิงลึกด้านสุขภาพ';

  @override
  String get nutrition_targets => 'เป้าหมายทางโภชนาการและการแบ่งมาโคร';

  @override
  String get nutrition_targets_sub =>
      'เป้าหมายแคลอรี่ โปรตีน คาร์โบไฮเดรต ไขมัน และน้ำ';

  @override
  String get weekly_recap => 'สรุปสุขภาพประจำสัปดาห์';

  @override
  String get weekly_recap_sub =>
      'แคลอรี่เฉลี่ย 7 วัน อัตราส่วนมาโคร และวันที่ดีที่สุด';

  @override
  String get streaks_milestones => 'ลายเส้นและเหตุการณ์สำคัญ';

  @override
  String get streaks_sub => 'ลายดอกที่บานสะพรั่ง ตราสัญลักษณ์ และความสำเร็จ';

  @override
  String get connected_devices => 'อุปกรณ์ที่เชื่อมต่อและระบบนิเวศ';

  @override
  String get devices_hub => 'อุปกรณ์และศูนย์กลางสมาร์ทวอทช์';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'สภาพแวดล้อมและสภาพอากาศ';

  @override
  String get surroundings_sub =>
      'คุณภาพอากาศ (AQI) ดัชนีรังสียูวี และเคล็ดลับการให้น้ำในสภาพอากาศ';

  @override
  String get bloomi_pro => 'การสมัครสมาชิก Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach วิดเจ็ตบนหน้าจอหลัก 5 รายการ และการติดตามชีพจร';

  @override
  String get about_security => 'เกี่ยวกับและความปลอดภัย';

  @override
  String get about_bloomi => 'เกี่ยวกับ บลูมี';

  @override
  String get about_bloomi_sub =>
      'ข้อมูลจำเพาะของบิลด์ เวอร์ชัน การระบุแหล่งที่มา';

  @override
  String get privacy_policy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get privacy_policy_sub =>
      'สถาปัตยกรรมข้อมูลบนอุปกรณ์แบบออฟไลน์เป็นหลัก';

  @override
  String get terms_conditions => 'ข้อกำหนดและเงื่อนไข';

  @override
  String get terms_conditions_sub =>
      'เงื่อนไขการให้บริการและแนวปฏิบัติด้านสุขภาพ';

  @override
  String get delete_account => 'ลบบัญชีและข้อมูล';

  @override
  String get delete_account_sub =>
      'ลบข้อมูล SQLite ในเครื่องและการสำรองข้อมูลบนคลาวด์อย่างถาวร';

  @override
  String get healthy_habits => 'สร้างนิสัยด้านสุขภาพที่อ่อนโยนและยั่งยืน';

  @override
  String get all_logs => 'ข้อมูลและบันทึกที่ติดตามของฉัน';

  @override
  String get search_language => 'ค้นหาตามภาษาหรือสคริปต์ท้องถิ่น...';

  @override
  String get languages_available => 'ภาษาที่ใช้ได้';

  @override
  String get no_matching_languages => 'ไม่พบภาษาที่ตรงกัน';

  @override
  String get try_searching => 'ลองค้นหาด้วยอักษรพื้นเมืองหรือการสะกดภาษาอังกฤษ';

  @override
  String get partially_translated => 'แปลบางส่วนแล้ว';

  @override
  String get complete_translation => 'เสร็จสมบูรณ์';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ตั้งค่าภาษาเป็น $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'สิ่งแวดล้อมและสิ่งแวดล้อม';

  @override
  String get surroundings_aqi => 'ดัชนีคุณภาพอากาศ';

  @override
  String get surroundings_uv => 'ดัชนีรังสียูวี';

  @override
  String get surroundings_temp => 'อุณหภูมิ';

  @override
  String get surroundings_humidity => 'ความชื้น';

  @override
  String get surroundings_hydration_advice =>
      'รักษาความชุ่มชื้นอย่างดีในสภาพอากาศปัจจุบัน';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'ค้นหาอาหาร';

  @override
  String get food_quick_barcode => 'สแกนบาร์โค้ด 👑';

  @override
  String get food_quick_water => 'เพิ่มน้ำ';

  @override
  String get food_quick_custom => 'อาหารตามสั่ง';

  @override
  String get surroundings_good => 'ดี';

  @override
  String get surroundings_moderate => 'ปานกลาง';

  @override
  String get surroundings_unhealthy => 'ไม่แข็งแรง';

  @override
  String get notifications_title => 'การแจ้งเตือนและการแจ้งเตือน';

  @override
  String get notifications_empty => 'ไม่มีการแจ้งเตือนใหม่';

  @override
  String get notifications_mark_read => 'ทำเครื่องหมายทั้งหมดว่าอ่านแล้ว';

  @override
  String get notifications_clear => 'ล้างทั้งหมด';

  @override
  String get reminders => 'การตั้งค่าการเตือนความจำ';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'คำเตือนเรื่องอาหารเช้า 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'สวัสดีตอนเช้า! ได้เวลาอาหารเช้าบำรุงสุขภาพที่ $time .';
  }

  @override
  String get reminders_lunch_title => 'คำเตือนเรื่องอาหารกลางวัน 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'หยุดพักและเพลิดเพลินไปกับอาหารกลางวันที่มีสติและสมดุลที่ $time';
  }

  @override
  String get reminders_dinner_title => 'คำเตือนมื้อเย็น 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'ได้เวลาดินเนอร์เบาๆ สบายๆ ที่ $time .';
  }

  @override
  String get reminders_water_title => 'เติมความชุ่มชื้น 💧';

  @override
  String reminders_water_body(Object time) {
    return 'ได้เวลาดื่มน้ำสะอาดสักแก้วแล้ว! ( $time )';
  }

  @override
  String get reminders_weight_title => 'การชั่งน้ำหนักรายสัปดาห์ ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ติดตามการวัดร่างกายรายสัปดาห์ของคุณบน Bloomi ( $time )';
  }

  @override
  String get reminders_sleep_title => 'พักผ่อนก่อนนอน 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'ผ่อนคลายและเตรียมตัวนอนหลับพักผ่อนให้เต็มที่ ( $time )';
  }

  @override
  String get onboard_welcome => 'ยินดีต้อนรับสู่บลูมี';

  @override
  String get onboard_sub =>
      'เพื่อนคู่หูด้านสุขภาพและโภชนาการที่เป็นมิตรและออฟไลน์เป็นอันดับแรกของคุณ';

  @override
  String get onboard_get_started => 'เริ่มต้นเลย';

  @override
  String get onboard_sign_in => 'เข้าสู่ระบบ';

  @override
  String get onboard_skip => 'ข้าม';

  @override
  String get onboard_choose_goal => 'เป้าหมายด้านสุขภาพหลักของคุณคืออะไร?';

  @override
  String get onboard_goal_weight_loss => 'ลดน้ำหนักอย่างอ่อนโยน';

  @override
  String get onboard_goal_muscle => 'เพิ่มกล้ามเนื้อและความแข็งแรง';

  @override
  String get onboard_goal_energy => 'พลังงานและความมีชีวิตชีวาในแต่ละวัน';

  @override
  String get onboard_goal_habits => 'การรับประทานอาหารเพื่อสุขภาพอย่างมีสติ';

  @override
  String get onboard_about_you => 'บอกเราเกี่ยวกับตัวคุณ';

  @override
  String get onboard_lifestyle => 'กิจวัตรประจำวันของคุณ';

  @override
  String get onboard_permissions_title => 'สิทธิ์และการเข้าถึงระบบ';

  @override
  String get onboard_permissions_sub =>
      'ให้สิทธิ์การเข้าถึงขั้นตอนการซิงค์ การออกกำลังกาย และการเตือนความจำ';

  @override
  String get onboard_plan_ready_title => 'แผนแบบกำหนดเองของคุณพร้อมแล้ว!';

  @override
  String get onboard_plan_ready_sub =>
      'เราจัดทำแผนงานด้านโภชนาการและสุขภาพที่ดีเฉพาะตัวสำหรับคุณโดยเฉพาะ';

  @override
  String get onboard_enter_bloomi => 'เข้ามาบลูมี';

  @override
  String get insights_weekly_report => 'สรุปสุขภาพประจำสัปดาห์';

  @override
  String insights_best_day(Object day) {
    return 'วันที่สม่ำเสมอดีที่สุด: $day';
  }

  @override
  String get insights_streaks_badges => 'ลายเส้นและเหตุการณ์สำคัญ';

  @override
  String insights_unlocked_on(Object date) {
    return 'ปลดล็อคเมื่อ $date';
  }

  @override
  String get insights_keep_going => 'ติดตามความก้าวหน้าที่ยอดเยี่ยม!';

  @override
  String get widgets_title => 'วิดเจ็ตบนหน้าจอหลัก';

  @override
  String widgets_active_count(Object count) {
    return 'วิดเจ็ตที่ใช้งานอยู่: $count';
  }

  @override
  String get widgets_hub_title => 'ศูนย์สุขภาพ Bloomi';

  @override
  String get widgets_steps_title => 'ขั้นตอนและเสียงเรียกเข้าที่ใช้งานอยู่';

  @override
  String get widgets_water_title => 'บันทึกด่วนไฮเดรชั่น';

  @override
  String get widgets_mascot_title => 'สหายมาสคอตบลูมิ';

  @override
  String get wear_os_title => 'สวม OS สมาร์ทวอทช์';

  @override
  String get wear_os_connected => 'เชื่อมต่อกับนาฬิกาแล้ว';

  @override
  String get wear_os_sync => 'ซิงค์ข้อมูลนาฬิกา';

  @override
  String get theme_title => 'ลักษณะและธีม';

  @override
  String get theme_mode => 'โหมดธีม';

  @override
  String get theme_light => 'เบา';

  @override
  String get theme_dark => 'มืด';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'จานสีพื้นหลัง';

  @override
  String get units_title => 'หน่วยวัด';

  @override
  String get units_metric => 'เมตริก (กก. ซม. มล.)';

  @override
  String get units_imperial => 'อิมพีเรียล (ปอนด์, นิ้ว, ออนซ์)';

  @override
  String get home_unable_load => 'ไม่สามารถโหลดแดชบอร์ดได้';

  @override
  String get home_health_permission_req => 'ต้องได้รับอนุญาตจาก Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi ต้องได้รับอนุญาตจาก Health Connect เพื่อดึงจำนวนก้าวจริง อัตราการเต้นของหัวใจ และซิงค์วิดเจ็ตโฮมบนมือถือแบบเรียลไทม์';

  @override
  String get home_allow_health => 'อนุญาตการเชื่อมต่อด้านสุขภาพ';

  @override
  String get home_ready_mindful_day => 'พร้อมสำหรับวันแห่งสติหรือยัง? ✨';

  @override
  String get home_quick_add => 'เพิ่มด่วน';

  @override
  String get home_live_gps => 'จีพีเอสสด';

  @override
  String get home_calories_remaining_label => 'แคลอรี่ที่เหลืออยู่';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'รับประทาน: $consumed / $target กิโลแคลอรี';
  }

  @override
  String get home_tap_water_tracker => 'แตะเพื่อติดตามน้ำ 💧';

  @override
  String get home_water_goal_reached => 'บรรลุเป้าหมายรายวันแล้ว 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining มล. ถึงเป้าหมายรายวัน';
  }

  @override
  String get home_details => 'รายละเอียด';

  @override
  String get home_upgrade_plan_desc =>
      'อัปเกรดเพื่อปลดล็อกเป้าหมายรายวันและแผน AI ส่วนบุคคล';

  @override
  String get home_unlock => 'ปลดล็อค 👑';

  @override
  String get home_quick_log_hint => 'บันทึกรายการสุขภาพอย่างรวดเร็ว';

  @override
  String get food_serving_size => 'ขนาดหน่วยบริโภค';

  @override
  String get food_serving_grams => 'หนึ่งหน่วยบริโภค (ก.)';

  @override
  String get food_number_servings => 'จำนวนเสิร์ฟ';

  @override
  String get food_calories_per_serving => 'แคลอรี่ต่อมื้อ';

  @override
  String get food_recipe_ingredients => 'ส่วนผสม';

  @override
  String get food_recipe_add_ingredient => 'เพิ่มส่วนผสม';

  @override
  String get food_recipe_directions => 'คำแนะนำและหมายเหตุ';

  @override
  String get food_recipe_total => 'โภชนาการสูตรอาหารรวม';

  @override
  String get food_recipe_per_serving => 'ต่อการให้บริการโภชนาการ';

  @override
  String get food_recipe_saved_toast => 'บันทึกอาหารแบบกำหนดเองสำเร็จแล้ว!';

  @override
  String get food_barcode_found => 'พบสินค้าแล้ว!';

  @override
  String get food_barcode_not_found_desc =>
      'เราไม่พบบาร์โค้ดนี้ในฐานข้อมูลที่เปิดอยู่ คุณสามารถเพิ่มเป็นอาหารที่กำหนดเองได้';

  @override
  String get food_add_custom_btn => 'เพิ่มอาหารตามสั่ง';

  @override
  String get food_scan_again => 'สแกนอีกครั้ง';

  @override
  String get food_review_items => 'ตรวจสอบอาหารที่ตรวจพบ';

  @override
  String get food_review_hint => 'ปรับปริมาณหรือลบรายการที่ไม่รู้จักออก';

  @override
  String get food_log_selected => 'บันทึกอาหารที่เลือก';

  @override
  String get food_favourites_title => 'อาหารที่ชอบ';

  @override
  String get food_recent_title => 'อาหารล่าสุด';

  @override
  String get food_no_favourites =>
      'ยังไม่มีอาหารโปรดเลย แตะหัวใจกับอาหารเพื่อบันทึกที่นี่';

  @override
  String get food_no_recents => 'ไม่พบอาหารที่บันทึกไว้เมื่อเร็วๆ นี้';

  @override
  String get food_nutrition_details_title => 'รายละเอียดโภชนาการรายวัน';

  @override
  String get food_macro_protein_label => 'การสลายตัวของโปรตีน';

  @override
  String get food_macro_carbs_label => 'การสลายตัวของคาร์โบไฮเดรต';

  @override
  String get food_macro_fat_label => 'สลายไขมัน';

  @override
  String get food_macro_fiber_label => 'การสลายตัวของไฟเบอร์';

  @override
  String get food_daily_target_comparison => 'การเปรียบเทียบเป้าหมาย';

  @override
  String food_target_label(Object target) {
    return 'เป้าหมาย: $target';
  }

  @override
  String get food_edit_entry => 'แก้ไขรายการไดอารี่';

  @override
  String get food_delete_entry => 'ลบรายการ';

  @override
  String food_grams_short(Object grams) {
    return '$grams ก';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal กิโลแคลอรี';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current จาก $target มล';
  }

  @override
  String get water_intake_history => 'บันทึกน้ำวันนี้';

  @override
  String get water_no_logs_today =>
      'วันนี้น้ำยังไม่ท่วม เติมน้ำแล้วแตะปุ่มเพิ่มด่วน!';

  @override
  String get water_adjust_goal => 'ปรับเป้าหมายรายวัน';

  @override
  String get health_connect_banner => 'เชื่อมต่อกับ Health Connect แล้ว';

  @override
  String get health_vitals_summary => 'ข้อมูลสำคัญด้านสุขภาพรายวัน';

  @override
  String get health_latest_heart_rate => 'อัตราการเต้นของหัวใจล่าสุด';

  @override
  String get health_latest_bp => 'ความดันโลหิต';

  @override
  String get health_latest_spo2 => 'ออกซิเจนในเลือด';

  @override
  String get health_latest_glucose => 'กลูโคสในเลือด';

  @override
  String get health_latest_weight => 'น้ำหนัก';

  @override
  String get health_latest_sleep => 'ระยะเวลาการนอนหลับ';

  @override
  String get health_add_manual => 'เพิ่มการวัดด้วยตนเอง';

  @override
  String get health_history_trends => 'แนวโน้มทางประวัติศาสตร์';

  @override
  String get health_sync_success => 'ซิงค์ข้อมูลสุขภาพเรียบร้อยแล้ว!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ชม. $mins นาที';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val กก';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm ครั้งต่อนาที';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic มิลลิเมตรปรอท';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val มก./เดซิลิตร';
  }

  @override
  String get health_devices_title => 'อุปกรณ์ที่เชื่อมต่อและอุปกรณ์สวมใส่';

  @override
  String get health_devices_desc =>
      'จัดการสมาร์ทวอทช์ที่จับคู่ไว้ ตัวติดตามฟิตเนส และเซ็นเซอร์สุขภาพ';

  @override
  String get health_workout_editor_title => 'แก้ไขการออกกำลังกาย';

  @override
  String get health_workout_name_label => 'ชื่อการออกกำลังกาย';

  @override
  String get health_workout_duration_label => 'ระยะเวลา (นาที)';

  @override
  String get health_workout_calories_label => 'แคลอรี่โดยประมาณ (kcal)';

  @override
  String get health_workout_date_label => 'วันที่และเวลา';

  @override
  String get plan_daily_wellness_roadmap => 'แผนงานส่วนบุคคลของคุณ';

  @override
  String get plan_morning_routine => 'กิจวัตรยามเช้า';

  @override
  String get plan_afternoon_routine => 'สุขภาพดีเที่ยงวัน';

  @override
  String get plan_evening_routine => 'ยามเย็น';

  @override
  String get plan_coach_badge => 'โค้ช AI ของ Bloomi';

  @override
  String get plan_weekly_overview => 'มุ่งเน้นด้านสุขภาพ 7 วัน';

  @override
  String get plan_targets_title => 'เป้าหมายและเป้าหมายด้านสุขภาพ';

  @override
  String get plan_calorie_budget_label => 'งบประมาณแคลอรี่รายวัน';

  @override
  String get plan_water_budget_label => 'เป้าหมายน้ำรายวัน';

  @override
  String get plan_step_budget_label => 'เป้าหมายก้าวรายวัน';

  @override
  String get plan_macro_split_label => 'อัตราส่วนสารอาหารหลัก';

  @override
  String get profile_personal_details => 'รายละเอียดส่วนบุคคล';

  @override
  String get profile_body_stats => 'การวัดร่างกาย';

  @override
  String get profile_app_preferences => 'การตั้งค่าและการตั้งค่าแอพ';

  @override
  String get profile_edit_name_hint => 'ชื่อของคุณ';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ส่วนสูง ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'น้ำหนัก ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'อายุ';

  @override
  String get profile_gender_male => 'ชาย';

  @override
  String get profile_gender_female => 'หญิง';

  @override
  String get profile_gender_other => 'อื่นๆ/ไม่อยากบอก';

  @override
  String get profile_activity_sedentary =>
      'อยู่ประจำที่ (น้อยหรือไม่มีการออกกำลังกาย)';

  @override
  String get profile_activity_light => 'ใช้งานน้อย (1-3 วัน/สัปดาห์)';

  @override
  String get profile_activity_moderate => 'ใช้งานปานกลาง (3-5 วัน/สัปดาห์)';

  @override
  String get profile_activity_very => 'กระตือรือร้นมาก (6-7 วัน/สัปดาห์)';

  @override
  String get settings_wear_os_header => 'สวมแอปสหาย OS';

  @override
  String get settings_wear_os_desc =>
      'ติดตั้งไทล์ Bloomi และความซับซ้อนบนนาฬิกา Wear OS ของคุณเพื่อดูแคลอรี่ น้ำ และจำนวนก้าว';

  @override
  String get settings_widgets_header => 'วิดเจ็ต Android แบบโต้ตอบ';

  @override
  String get settings_widgets_desc =>
      'ปักหมุดวิดเจ็ตแบบเรียลไทม์บนหน้าจอหลักของอุปกรณ์ของคุณเพื่อรับการอัปเดตทันที';

  @override
  String get settings_about_header => 'เกี่ยวกับ บลูมี';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'สร้าง 100';

  @override
  String get settings_about_credits =>
      'สร้างขึ้นด้วยความใส่ใจเพื่อการมีสติและการใช้ชีวิตอย่างมีสุขภาพที่ดี';

  @override
  String get settings_terms_header => 'ข้อกำหนดและเงื่อนไข';

  @override
  String get settings_privacy_header => 'นโยบายความเป็นส่วนตัว';

  @override
  String get settings_delete_header => 'ลบบัญชีและข้อมูล';

  @override
  String get settings_delete_warning =>
      'การดำเนินการนี้ไม่สามารถยกเลิกได้ มื้ออาหาร การออกกำลังกาย ข้อมูลสำคัญ และโปรไฟล์ทั้งหมดของคุณจะถูกลบอย่างถาวร';

  @override
  String get settings_delete_confirm_btn => 'ลบอย่างถาวร';

  @override
  String get onboard_welcome_headline => 'ยินดีต้อนรับสู่บลูมิ ✨';

  @override
  String get onboard_welcome_tagline =>
      'การติดตามสุขภาพที่อ่อนโยนและมีสติซึ่งออกแบบมาเพื่อชีวิตของคุณ';

  @override
  String get onboard_step_about => 'เกี่ยวกับคุณ';

  @override
  String get onboard_step_goals => 'เป้าหมายของคุณ';

  @override
  String get onboard_step_lifestyle => 'นิสัยประจำวัน';

  @override
  String get onboard_step_permissions => 'สิทธิ์';

  @override
  String get onboard_step_plan => 'พร้อม!';

  @override
  String get onboard_health_connect_perm => 'การเข้าถึง Health Connect';

  @override
  String get onboard_step_sensors_perm => 'เซ็นเซอร์นับก้าว';

  @override
  String get onboard_notif_perm => 'การแจ้งเตือนและการแจ้งเตือนอย่างมีสติ';

  @override
  String get onboard_camera_perm => 'กล้อง (บาร์โค้ดและเครื่องสแกนอาหาร)';

  @override
  String get onboard_grant_permissions => 'ให้สิทธิ์';

  @override
  String get onboard_continue_dashboard => 'เปิดแดชบอร์ด';

  @override
  String get notif_channel_hydration_name => 'การกระตุ้นความชุ่มชื้น';

  @override
  String get notif_channel_hydration_desc =>
      'เตือนให้ดื่มน้ำอย่างอ่อนโยนตลอดทั้งวัน';

  @override
  String get notif_channel_nutrition_name => 'การแจ้งเตือนมื้ออาหารและโภชนาการ';

  @override
  String get notif_channel_nutrition_desc =>
      'การแจ้งเตือนอาหารเช้า กลางวัน และเย็น';

  @override
  String get notif_channel_steps_name => 'เหตุการณ์สำคัญขั้นตอน';

  @override
  String get notif_channel_steps_desc =>
      'การเฉลิมฉลองเมื่อบรรลุเป้าหมายก้าวรายวัน';

  @override
  String get notif_channel_vitals_name => 'การตรวจสุขภาพและที่สำคัญ';

  @override
  String get notif_channel_vitals_desc => 'การแจ้งเตือนน้ำหนักและเวลานอนลง';

  @override
  String get notif_action_log_water => '💧 ล็อก +250ml';

  @override
  String get notif_action_snooze => 'งีบหลับ 15ม';

  @override
  String get notif_action_log_meal => '🥗 บันทึกมื้ออาหาร';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
