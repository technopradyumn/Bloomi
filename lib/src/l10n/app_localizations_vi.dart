// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Trang chủ';

  @override
  String get nav_today => 'hôm nay';

  @override
  String get nav_plan => 'Kế hoạch';

  @override
  String get nav_food => 'Thức ăn';

  @override
  String get nav_food_diary => 'Nhật ký ẩm thực';

  @override
  String get nav_workout => 'Nhật ký tập luyện';

  @override
  String get nav_health => 'sức khỏe';

  @override
  String get nav_profile => 'Hồ sơ';

  @override
  String get save => 'Lưu';

  @override
  String get cancel => 'Hủy bỏ';

  @override
  String get delete => 'Xóa';

  @override
  String get edit => 'Chỉnh sửa';

  @override
  String get done => 'Xong';

  @override
  String get close => 'Đóng';

  @override
  String get back => 'Quay lại';

  @override
  String get next => 'Tiếp theo';

  @override
  String get continue_btn => 'Tiếp tục';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get filter => 'Lọc';

  @override
  String get all => 'Tất cả';

  @override
  String get active => 'Đang hoạt động';

  @override
  String get today => 'hôm nay';

  @override
  String get yesterday => 'Hôm qua';

  @override
  String get tomorrow => 'Ngày mai';

  @override
  String get add => 'Thêm';

  @override
  String get remove => 'Xóa';

  @override
  String get refresh => 'Làm mới';

  @override
  String get retry => 'Thử lại';

  @override
  String get error => 'Lỗi';

  @override
  String get success => 'thành công';

  @override
  String get loading => 'Đang tải...';

  @override
  String get no_data => 'Không có sẵn dữ liệu';

  @override
  String get offline => 'Chế độ ngoại tuyến';

  @override
  String get offline_sub =>
      'Các thay đổi sẽ đồng bộ hóa sau khi được kết nối lại';

  @override
  String get undo => 'Hoàn tác';

  @override
  String get portion => 'Phần';

  @override
  String get quantity => 'số lượng';

  @override
  String get unit => 'Đơn vị';

  @override
  String get clear => 'Xóa';

  @override
  String get select => 'chọn';

  @override
  String get apply => 'Áp dụng';

  @override
  String get reset => 'Đặt lại';

  @override
  String get ok => 'được rồi';

  @override
  String get yes => 'Có';

  @override
  String get no => 'Không';

  @override
  String get optional => 'Tùy chọn';

  @override
  String get calories => 'Calo';

  @override
  String get protein => 'chất đạm';

  @override
  String get carbs => 'Carb';

  @override
  String get fat => 'Chất béo';

  @override
  String get fiber => 'Chất xơ';

  @override
  String get water => 'Nước';

  @override
  String get steps => 'bước';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'pound';

  @override
  String get centimeters => 'cmt';

  @override
  String get inches => 'trong';

  @override
  String get bpm => 'nhịp đập mỗi phút';

  @override
  String get hours => 'giờ';

  @override
  String get minutes => 'phút';

  @override
  String get serving => 'Phục vụ';

  @override
  String get servings => 'Khẩu phần';

  @override
  String get serving_size => 'Kích thước phục vụ';

  @override
  String get per_100g => 'mỗi 100g';

  @override
  String get india => 'Ấn Độ';

  @override
  String get asia => 'Châu Á';

  @override
  String get europe => 'Châu Âu';

  @override
  String get middle_east => 'Trung Đông';

  @override
  String get africa => 'Châu Phi';

  @override
  String get americas => 'Châu Mỹ';

  @override
  String get home_title => 'Trang chủ';

  @override
  String get home_greeting_morning => 'Chào buổi sáng';

  @override
  String get home_greeting_afternoon => 'Chào buổi chiều';

  @override
  String get home_greeting_evening => 'Chào buổi tối';

  @override
  String get home_streak_title => 'Vệt hoa';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'chuỗi $count ngày',
      one: 'chuỗi 1 ngày',
      zero: 'chuỗi 0 ngày',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'bị đốt cháy';

  @override
  String get home_calories_budget => 'Ngân sách calo';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal còn lại';
  }

  @override
  String get home_water_title => 'Hydrat hóa hàng ngày';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Số bước đã đi';

  @override
  String get home_quick_actions => 'Thao tác nhanh';

  @override
  String get home_log_meal => 'Đăng nhập bữa ăn';

  @override
  String get home_log_water => 'Nước đăng nhập';

  @override
  String get home_log_workout => 'Đăng nhập bài tập';

  @override
  String get home_log_weight => 'Trọng lượng đăng nhập';

  @override
  String get home_insights_title => 'Thông tin chi tiết ngày nay';

  @override
  String get home_quote =>
      'Những lựa chọn nhỏ lành mạnh sẽ tạo ra những biến đổi nở rộ.';

  @override
  String get home_ai_coach_tip => 'Huấn luyện viên AI của Bloomi';

  @override
  String get home_surroundings => 'Môi trường xung quanh & Không khí';

  @override
  String get home_notifications => 'Thông báo';

  @override
  String get home_daily_score => 'Điểm sức khỏe hàng ngày';

  @override
  String get home_view_all => 'Xem tất cả';

  @override
  String get food_diary_title => 'Nhật ký ẩm thực';

  @override
  String get food_breakfast => 'Bữa sáng';

  @override
  String get food_lunch => 'Bữa trưa';

  @override
  String get food_dinner => 'Bữa tối';

  @override
  String get food_snacks => 'Đồ ăn nhẹ';

  @override
  String get food_add_food => 'Thêm thức ăn';

  @override
  String get food_edit_food => 'Chỉnh sửa món ăn';

  @override
  String get food_add_breakfast => 'Thêm bữa sáng';

  @override
  String get food_add_lunch => 'Thêm bữa trưa';

  @override
  String get food_add_dinner => 'Thêm bữa tối';

  @override
  String get food_add_snack => 'Thêm đồ ăn nhẹ';

  @override
  String get food_total_calories => 'Tổng lượng calo';

  @override
  String get food_empty_meal =>
      'Chưa có món ăn nào được ghi lại cho bữa ăn này';

  @override
  String get food_empty_diary => 'Không có bữa ăn nào được ghi vào ngày này';

  @override
  String get food_log_first_meal =>
      'Nhấn + để ghi lại bữa ăn ngon đầu tiên của bạn';

  @override
  String get food_quick_add => 'Thêm nhanh';

  @override
  String get food_search_hint => 'Tìm kiếm món ăn, trái cây, dal, roti...';

  @override
  String get food_custom_recipe => 'Thực phẩm & Công thức tùy chỉnh';

  @override
  String get food_scan_barcode => 'Quét mã vạch';

  @override
  String get food_camera_scan => 'Máy quét thực phẩm AI';

  @override
  String get food_recent => 'Thực phẩm gần đây';

  @override
  String get food_favourites => 'Yêu thích';

  @override
  String get food_macro_summary => 'Phân tích dinh dưỡng đa lượng';

  @override
  String get food_delete_meal_confirm =>
      'Bạn có chắc chắn muốn xóa mục này không?';

  @override
  String get food_item_deleted => 'Mặt hàng thực phẩm đã bị loại bỏ';

  @override
  String get food_remaining => 'còn lại';

  @override
  String get food_consumed => 'tiêu thụ';

  @override
  String food_of_target(Object target) {
    return 'của $target kcal';
  }

  @override
  String get foodSearch_title => 'Tìm kiếm Thực phẩm';

  @override
  String get foodSearch_scan_barcode => 'Quét mã vạch';

  @override
  String get foodSearch_take_photo => 'Chụp ảnh đồ ăn';

  @override
  String get foodSearch_custom_food => 'Tạo món ăn tùy chỉnh';

  @override
  String get foodSearch_recent_searches => 'Tìm kiếm gần đây';

  @override
  String get foodSearch_popular => 'Món ăn phổ biến';

  @override
  String get foodSearch_no_results =>
      'Không có thực phẩm phù hợp với tìm kiếm của bạn';

  @override
  String get barcode_title => 'Máy quét mã vạch';

  @override
  String get barcode_align => 'Căn chỉnh mã vạch bên trong khung camera';

  @override
  String get barcode_not_found => 'Không tìm thấy sản phẩm trong cơ sở dữ liệu';

  @override
  String get barcode_premium_feature => 'Quét mã vạch có sẵn với Bloomi Pro';

  @override
  String get camera_title => 'Máy quét thực phẩm AI';

  @override
  String get camera_tap_hint => 'Chụp ảnh rõ ràng món ăn của bạn';

  @override
  String get camera_analysing => 'Phân tích đĩa thức ăn...';

  @override
  String get camera_detected => 'Các mục được phát hiện';

  @override
  String get camera_flash => 'Chuyển đổi đèn flash';

  @override
  String get camera_retake => 'Chụp lại ảnh';

  @override
  String get camera_confirm_food => 'Xác nhận mục';

  @override
  String get customFood_title => 'Thực phẩm & Công thức tùy chỉnh';

  @override
  String get customFood_name_hint => 'Tên món ăn hoặc nguyên liệu';

  @override
  String get customFood_calories_hint => 'Lượng calo (kcal)';

  @override
  String get customFood_protein_hint => 'Chất đạm (g)';

  @override
  String get customFood_carbs_hint => 'Carb (g)';

  @override
  String get customFood_fat_hint => 'Chất béo (g)';

  @override
  String get customFood_save => 'Lưu công thức';

  @override
  String get water_tracker_title => 'Theo dõi nước';

  @override
  String get water_daily_target => 'Mục tiêu bù nước hàng ngày';

  @override
  String get water_logged_today => 'Đăng nhập hôm nay';

  @override
  String get water_add_glass => '+Thủy tinh 250ml';

  @override
  String get water_add_bottle => '+Chai 500ml';

  @override
  String get water_custom_amount => 'Số tiền tùy chỉnh';

  @override
  String get water_reminder_tip =>
      'Uống nước thường xuyên trong ngày để có năng lượng ổn định.';

  @override
  String water_logged_toast(Object amount) {
    return 'Đã ghi $amount ml nước 💧';
  }

  @override
  String get workout_title => 'Nhật ký tập luyện';

  @override
  String get workout_add_exercise => 'Thêm bài tập';

  @override
  String get workout_cardio => 'tim mạch';

  @override
  String get workout_strength => 'sức mạnh';

  @override
  String get workout_yoga => 'Yoga & Tính linh hoạt';

  @override
  String get workout_duration => 'Thời lượng';

  @override
  String get workout_intensity => 'Cường độ';

  @override
  String get workout_calories_burned => 'Lượng calo bị đốt cháy';

  @override
  String get workout_empty => 'Không có bài tập nào được ghi lại ngày hôm nay';

  @override
  String get workout_save_success => 'Đã lưu bài tập thành công!';

  @override
  String get workout_type => 'Loại bài tập';

  @override
  String get workout_notes => 'Ghi chú & Suy ngẫm';

  @override
  String get health_overview_title => 'Sức khỏe & Sức sống';

  @override
  String get health_heart_rate => 'Nhịp tim';

  @override
  String get health_blood_oxygen => 'Oxy trong máu (SpO2)';

  @override
  String get health_blood_pressure => 'Huyết áp';

  @override
  String get health_blood_glucose => 'Đường huyết';

  @override
  String get health_body_temperature => 'Nhiệt độ cơ thể';

  @override
  String get health_sleep_tracking => 'Theo dõi giấc ngủ';

  @override
  String get health_weight_tracking => 'Trọng lượng & Thành phần Cơ thể';

  @override
  String get health_waist_hip => 'Tỷ lệ eo-hông';

  @override
  String get health_devices_hub => 'Thiết bị & Trung tâm Smartwatch';

  @override
  String get health_sync_now => 'Đồng bộ hóa dữ liệu sức khỏe';

  @override
  String health_last_synced(Object time) {
    return 'Đồng bộ hóa lần cuối: $time';
  }

  @override
  String get health_manual_entry => 'Nhập sức khỏe thủ công';

  @override
  String get health_metric_detail => 'Chi tiết số liệu';

  @override
  String get health_connected_sensors => 'Cảm biến sức khỏe được kết nối';

  @override
  String get plan_title => 'Kế hoạch hàng ngày';

  @override
  String get plan_weekly_title => 'Kế hoạch chăm sóc sức khỏe hàng tuần';

  @override
  String get plan_calorie_target => 'Mục tiêu calo';

  @override
  String get plan_water_target => 'Mục tiêu hydrat hóa';

  @override
  String get plan_step_target => 'Bước mục tiêu';

  @override
  String get plan_sleep_target => 'Mục tiêu ngủ';

  @override
  String get plan_meal_suggestions => 'Gợi ý bữa ăn';

  @override
  String get plan_healthy_habits => 'Thói quen & Lời khuyên lành mạnh';

  @override
  String get plan_coach_advice => 'Đề xuất của Huấn luyện viên AI của Bloomi';

  @override
  String get plan_generated_title => 'Lịch trình hàng ngày được cá nhân hóa';

  @override
  String get profile_title => 'Hồ sơ';

  @override
  String get profile_edit => 'Chỉnh sửa hồ sơ';

  @override
  String get profile_name => 'Tên';

  @override
  String get profile_age => 'Tuổi';

  @override
  String get profile_gender => 'Giới tính';

  @override
  String get profile_height => 'Chiều cao';

  @override
  String get profile_weight => 'cân nặng';

  @override
  String get profile_goal => 'Mục tiêu chính';

  @override
  String get profile_activity_level => 'Cấp độ hoạt động';

  @override
  String get profile_stats => 'Chỉ số sức khỏe của tôi';

  @override
  String get profile_saved => 'Hồ sơ được cập nhật thành công';

  @override
  String get profile_bmi => 'Chỉ số khối cơ thể (BMI)';

  @override
  String get profile_membership => 'Tư cách thành viên';

  @override
  String get settings => 'Cài đặt';

  @override
  String get preferences_habits => 'SỞ THÍCH & THÓI QUEN';

  @override
  String get appearance_theme => 'Ngoại hình & Chủ đề';

  @override
  String get appearance_theme_sub =>
      'Tùy chọn nền tối, sáng, hệ thống và ứng dụng';

  @override
  String get permissions => 'Quyền & quyền truy cập hệ thống';

  @override
  String get permissions_sub =>
      'Health Connect, Cảm biến bước đi, GPS, Thông báo & Camera';

  @override
  String get reminders_notifications => 'Nhắc nhở & Thông báo';

  @override
  String get reminders_sub =>
      'Nhắc nhở giờ ăn, nước, kiểm tra cân nặng và giờ đi ngủ';

  @override
  String get units_of_measurement => 'Đơn vị đo lường';

  @override
  String get units_sub =>
      'Hệ mét (kg, cm, ml, km) hoặc hệ Anh (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Ngôn ngữ ứng dụng';

  @override
  String get language_sub =>
      'Tiếng Anh, हिन्दी (Hindi), Hinglish và hơn 195 ngôn ngữ toàn cầu';

  @override
  String get home_screen_widgets => 'Tiện ích màn hình chính';

  @override
  String get widgets_sub =>
      'Các tiện ích Android trực tiếp: Hub, Bậc thang, Nước, Dinh dưỡng & Linh vật';

  @override
  String get wear_os_watch_app => 'Ứng dụng đồng hồ Wear OS';

  @override
  String get wear_os_sub =>
      'Đồng hành với đồng hồ thông minh, các ô, chức năng và chỉ số sống';

  @override
  String get goals_wellness => 'MỤC TIÊU & SỨC KHỎE TÌM HIỂU';

  @override
  String get nutrition_targets => 'Mục tiêu dinh dưỡng & Phân chia vĩ mô';

  @override
  String get nutrition_targets_sub =>
      'Mục tiêu về lượng calo, protein, carbs, chất béo và nước';

  @override
  String get weekly_recap => 'Tóm tắt sức khỏe hàng tuần';

  @override
  String get weekly_recap_sub =>
      'Lượng calo trung bình trong 7 ngày, tỷ lệ vĩ mô và ngày tốt nhất';

  @override
  String get streaks_milestones => 'Chuỗi & cột mốc quan trọng';

  @override
  String get streaks_sub => 'Các vệt hoa hoạt động, huy hiệu và thành tích';

  @override
  String get connected_devices => 'THIẾT BỊ KẾT NỐI & HỆ SINH THÁI';

  @override
  String get devices_hub => 'Thiết bị & Trung tâm Smartwatch';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Môi trường xung quanh & Thời tiết';

  @override
  String get surroundings_sub =>
      'Chất lượng không khí (AQI), chỉ số UV và mẹo bổ sung nước theo thời tiết';

  @override
  String get bloomi_pro => 'Đăng ký Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 tiện ích trên màn hình chính và theo dõi sức sống';

  @override
  String get about_security => 'GIỚI THIỆU & BẢO MẬT';

  @override
  String get about_bloomi => 'Giới thiệu về Bloomi';

  @override
  String get about_bloomi_sub =>
      'Xây dựng thông số kỹ thuật, phiên bản, thuộc tính';

  @override
  String get privacy_policy => 'Chính sách bảo mật';

  @override
  String get privacy_policy_sub =>
      'Kiến trúc dữ liệu ngoại tuyến trên thiết bị';

  @override
  String get terms_conditions => 'Điều khoản & Điều kiện';

  @override
  String get terms_conditions_sub =>
      'Điều khoản dịch vụ và hướng dẫn chăm sóc sức khỏe';

  @override
  String get delete_account => 'Xóa tài khoản & dữ liệu';

  @override
  String get delete_account_sub =>
      'Xóa vĩnh viễn dữ liệu SQLite cục bộ và bản sao lưu đám mây';

  @override
  String get healthy_habits =>
      'Xây dựng thói quen chăm sóc sức khỏe nhẹ nhàng, lâu dài';

  @override
  String get all_logs => 'Dữ liệu & nhật ký được theo dõi của tôi';

  @override
  String get search_language => 'Tìm kiếm theo ngôn ngữ hoặc chữ viết gốc...';

  @override
  String get languages_available => 'Ngôn ngữ có sẵn';

  @override
  String get no_matching_languages => 'Không tìm thấy ngôn ngữ phù hợp';

  @override
  String get try_searching =>
      'Hãy thử tìm kiếm bằng chữ viết gốc hoặc chính tả tiếng Anh';

  @override
  String get partially_translated => 'Đã dịch một phần';

  @override
  String get complete_translation => 'Hoàn thành';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Ngôn ngữ được đặt thành $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Môi trường xung quanh & Môi trường';

  @override
  String get surroundings_aqi => 'Chỉ số chất lượng không khí';

  @override
  String get surroundings_uv => 'Chỉ số UV';

  @override
  String get surroundings_temp => 'Nhiệt độ';

  @override
  String get surroundings_humidity => 'Độ ẩm';

  @override
  String get surroundings_hydration_advice =>
      'Giữ nước tốt trong điều kiện thời tiết hiện tại.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Tìm kiếm món ăn';

  @override
  String get food_quick_barcode => 'Quét mã vạch 👑';

  @override
  String get food_quick_water => 'Thêm nước';

  @override
  String get food_quick_custom => 'Thực phẩm tùy chỉnh';

  @override
  String get surroundings_good => 'Tốt';

  @override
  String get surroundings_moderate => 'Trung bình';

  @override
  String get surroundings_unhealthy => 'Không tốt cho sức khỏe';

  @override
  String get notifications_title => 'Thông báo & Cảnh báo';

  @override
  String get notifications_empty => 'Không có thông báo mới';

  @override
  String get notifications_mark_read => 'Đánh dấu tất cả là đã đọc';

  @override
  String get notifications_clear => 'Xóa tất cả';

  @override
  String get reminders => 'Cài đặt lời nhắc';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Nhắc nhở bữa sáng 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Chào buổi sáng! Đã đến lúc thưởng thức bữa sáng bổ dưỡng tại $time .';
  }

  @override
  String get reminders_lunch_title => 'Lời nhắc bữa trưa 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Hãy tạm dừng và thưởng thức bữa trưa cân bằng, chánh niệm tại $time .';
  }

  @override
  String get reminders_dinner_title => 'Lời nhắc bữa tối 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Đã đến lúc thưởng thức bữa tối nhẹ nhàng, thỏa mãn tại $time .';
  }

  @override
  String get reminders_water_title => 'Thúc đẩy dưỡng ẩm 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Đã đến lúc uống một ly nước ngọt! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Cân đo hàng tuần ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Theo dõi số liệu cơ thể hàng tuần của bạn trên Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Thư giãn trước khi đi ngủ 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Thư giãn và chuẩn bị cho một giấc ngủ ngon ( $time ).';
  }

  @override
  String get onboard_welcome => 'Chào mừng đến với Bloomi';

  @override
  String get onboard_sub =>
      'Người bạn đồng hành thân thiện với sức khỏe và dinh dưỡng ngoại tuyến đầu tiên của bạn.';

  @override
  String get onboard_get_started => 'Bắt đầu';

  @override
  String get onboard_sign_in => 'Đăng nhập';

  @override
  String get onboard_skip => 'Bỏ qua';

  @override
  String get onboard_choose_goal =>
      'Mục tiêu chăm sóc sức khỏe chính của bạn là gì?';

  @override
  String get onboard_goal_weight_loss => 'Giảm cân nhẹ nhàng';

  @override
  String get onboard_goal_muscle => 'Tăng cơ & sức mạnh';

  @override
  String get onboard_goal_energy => 'Năng lượng & Sức sống hàng ngày';

  @override
  String get onboard_goal_habits => 'Ăn uống lành mạnh có chánh niệm';

  @override
  String get onboard_about_you => 'Hãy cho chúng tôi biết về bản thân bạn';

  @override
  String get onboard_lifestyle => 'Thói quen hàng ngày của bạn';

  @override
  String get onboard_permissions_title => 'Quyền & quyền truy cập hệ thống';

  @override
  String get onboard_permissions_sub =>
      'Cấp quyền truy cập để đồng bộ hóa các bước, bài tập và lời nhắc.';

  @override
  String get onboard_plan_ready_title =>
      'Kế hoạch tùy chỉnh của bạn đã sẵn sàng!';

  @override
  String get onboard_plan_ready_sub =>
      'Chúng tôi đã xây dựng lộ trình dinh dưỡng và sức khỏe nhẹ nhàng, được cá nhân hóa dành riêng cho bạn.';

  @override
  String get onboard_enter_bloomi => 'Nhập Bloomi';

  @override
  String get insights_weekly_report => 'Tóm tắt sức khỏe hàng tuần';

  @override
  String insights_best_day(Object day) {
    return 'Ngày nhất quán tốt nhất: $day';
  }

  @override
  String get insights_streaks_badges => 'Chuỗi & cột mốc quan trọng';

  @override
  String insights_unlocked_on(Object date) {
    return 'Đã mở khóa vào $date';
  }

  @override
  String get insights_keep_going => 'Hãy tiếp tục tiến bộ tuyệt vời!';

  @override
  String get widgets_title => 'Tiện ích màn hình chính';

  @override
  String widgets_active_count(Object count) {
    return 'Tiện ích đang hoạt động: $count';
  }

  @override
  String get widgets_hub_title => 'Trung tâm chăm sóc sức khỏe Bloomi';

  @override
  String get widgets_steps_title => 'Bước & Vòng hoạt động';

  @override
  String get widgets_water_title => 'Nhật ký nhanh hydrat hóa';

  @override
  String get widgets_mascot_title => 'Linh vật đồng hành Bloomi';

  @override
  String get wear_os_title => 'Đeo đồng hồ thông minh hệ điều hành';

  @override
  String get wear_os_connected => 'Đã kết nối với đồng hồ';

  @override
  String get wear_os_sync => 'Đồng bộ hóa dữ liệu đồng hồ';

  @override
  String get theme_title => 'Ngoại hình & Chủ đề';

  @override
  String get theme_mode => 'Chế độ chủ đề';

  @override
  String get theme_light => 'Ánh sáng';

  @override
  String get theme_dark => 'Tối';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Bảng nền';

  @override
  String get units_title => 'Đơn vị đo lường';

  @override
  String get units_metric => 'Hệ mét (kg, cm, ml)';

  @override
  String get units_imperial => 'Đế quốc (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Không thể tải trang tổng quan';

  @override
  String get home_health_permission_req => 'Cần có quyền của Health Connect';

  @override
  String get home_health_permission_desc =>
      'Bloomi yêu cầu quyền Health Connect để lấy số bước thực, nhịp tim và đồng bộ hóa các tiện ích trong nhà di động trong thời gian thực.';

  @override
  String get home_allow_health => 'Cho phép kết nối sức khỏe';

  @override
  String get home_ready_mindful_day => 'Sẵn sàng cho một ngày chánh niệm? ✨';

  @override
  String get home_quick_add => 'Thêm nhanh';

  @override
  String get home_live_gps => 'GPS trực tiếp';

  @override
  String get home_calories_remaining_label => 'calo còn lại';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Đã ăn: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Nhấn để theo dõi nước 💧';

  @override
  String get home_water_goal_reached => 'Đã đạt được mục tiêu hàng ngày 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml cho mục tiêu hàng ngày';
  }

  @override
  String get home_details => 'Chi tiết';

  @override
  String get home_upgrade_plan_desc =>
      'Nâng cấp để mở khóa các mục tiêu hàng ngày và kế hoạch AI được cá nhân hóa';

  @override
  String get home_unlock => 'Mở khóa 👑';

  @override
  String get home_quick_log_hint =>
      'Nhanh chóng ghi lại một mục chăm sóc sức khỏe';

  @override
  String get food_serving_size => 'Kích thước phục vụ';

  @override
  String get food_serving_grams => 'Phục vụ (g)';

  @override
  String get food_number_servings => 'Số lượng phần ăn';

  @override
  String get food_calories_per_serving => 'Lượng calo mỗi khẩu phần';

  @override
  String get food_recipe_ingredients => 'thành phần';

  @override
  String get food_recipe_add_ingredient => 'Thêm thành phần';

  @override
  String get food_recipe_directions => 'Hướng dẫn & Ghi chú';

  @override
  String get food_recipe_total => 'Tổng công thức dinh dưỡng';

  @override
  String get food_recipe_per_serving => 'Mỗi khẩu phần dinh dưỡng';

  @override
  String get food_recipe_saved_toast => 'Đã lưu thành công món ăn tùy chỉnh!';

  @override
  String get food_barcode_found => 'Đã tìm thấy sản phẩm!';

  @override
  String get food_barcode_not_found_desc =>
      'Chúng tôi không thể tìm thấy mã vạch này trong cơ sở dữ liệu mở. Bạn có thể thêm nó như một món ăn tùy chỉnh.';

  @override
  String get food_add_custom_btn => 'Thêm thực phẩm tùy chỉnh';

  @override
  String get food_scan_again => 'Quét lại';

  @override
  String get food_review_items => 'Xem lại thực phẩm được phát hiện';

  @override
  String get food_review_hint =>
      'Điều chỉnh số lượng hoặc xóa bất kỳ mục nào không được nhận dạng';

  @override
  String get food_log_selected => 'Ghi nhật ký thực phẩm đã chọn';

  @override
  String get food_favourites_title => 'Món ăn yêu thích';

  @override
  String get food_recent_title => 'Thực phẩm gần đây';

  @override
  String get food_no_favourites =>
      'Chưa có món ăn yêu thích. Nhấn vào trái tim trên bất kỳ thực phẩm nào để lưu ở đây.';

  @override
  String get food_no_recents =>
      'Không tìm thấy thực phẩm được đăng nhập gần đây.';

  @override
  String get food_nutrition_details_title => 'Chi tiết dinh dưỡng hàng ngày';

  @override
  String get food_macro_protein_label => 'Phân hủy protein';

  @override
  String get food_macro_carbs_label => 'Phân tích carbohydrate';

  @override
  String get food_macro_fat_label => 'Phân hủy chất béo';

  @override
  String get food_macro_fiber_label => 'Phân hủy chất xơ';

  @override
  String get food_daily_target_comparison => 'So sánh mục tiêu';

  @override
  String food_target_label(Object target) {
    return 'Mục tiêu: $target';
  }

  @override
  String get food_edit_entry => 'Chỉnh sửa mục nhật ký';

  @override
  String get food_delete_entry => 'Xóa mục nhập';

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
    return '$current trong số $target ml';
  }

  @override
  String get water_intake_history => 'Nhật ký nước ngày nay';

  @override
  String get water_no_logs_today =>
      'Hôm nay chưa có nước đăng nhập. Hydrat hóa và nhấn vào nút thêm nhanh!';

  @override
  String get water_adjust_goal => 'Điều chỉnh mục tiêu hàng ngày';

  @override
  String get health_connect_banner => 'Đã kết nối với Health Connect';

  @override
  String get health_vitals_summary => 'Sức khỏe quan trọng hàng ngày';

  @override
  String get health_latest_heart_rate => 'Nhịp tim mới nhất';

  @override
  String get health_latest_bp => 'Huyết áp';

  @override
  String get health_latest_spo2 => 'Oxy trong máu';

  @override
  String get health_latest_glucose => 'Đường huyết';

  @override
  String get health_latest_weight => 'cân nặng';

  @override
  String get health_latest_sleep => 'Thời lượng ngủ';

  @override
  String get health_add_manual => 'Thêm phép đo thủ công';

  @override
  String get health_history_trends => 'Xu hướng lịch sử';

  @override
  String get health_sync_success =>
      'Dữ liệu sức khỏe được đồng bộ hóa thành công!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours giờ $mins phút';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm nhịp/phút';
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
      'Thiết bị được kết nối và thiết bị đeo được';

  @override
  String get health_devices_desc =>
      'Quản lý đồng hồ thông minh được ghép nối, thiết bị theo dõi thể dục và cảm biến sức khỏe.';

  @override
  String get health_workout_editor_title => 'Chỉnh sửa bài tập';

  @override
  String get health_workout_name_label => 'Tên bài tập';

  @override
  String get health_workout_duration_label => 'Thời lượng (phút)';

  @override
  String get health_workout_calories_label => 'Lượng calo ước tính (kcal)';

  @override
  String get health_workout_date_label => 'Ngày và giờ';

  @override
  String get plan_daily_wellness_roadmap => 'Lộ trình được cá nhân hóa của bạn';

  @override
  String get plan_morning_routine => 'Thói quen buổi sáng';

  @override
  String get plan_afternoon_routine => 'Sức khỏe buổi trưa';

  @override
  String get plan_evening_routine => 'Buổi tối thư giãn';

  @override
  String get plan_coach_badge => 'Huấn luyện viên AI của Bloomi';

  @override
  String get plan_weekly_overview => 'Trọng tâm chăm sóc sức khỏe 7 ngày';

  @override
  String get plan_targets_title => 'Mục tiêu & Mục tiêu Sức khỏe';

  @override
  String get plan_calorie_budget_label => 'Ngân sách calo hàng ngày';

  @override
  String get plan_water_budget_label => 'Mục tiêu nước hàng ngày';

  @override
  String get plan_step_budget_label => 'Mục tiêu số bước hàng ngày';

  @override
  String get plan_macro_split_label => 'Tỷ lệ dinh dưỡng đa lượng';

  @override
  String get profile_personal_details => 'Thông tin cá nhân';

  @override
  String get profile_body_stats => 'Số đo cơ thể';

  @override
  String get profile_app_preferences => 'Tùy chọn & Cài đặt ứng dụng';

  @override
  String get profile_edit_name_hint => 'Tên của bạn';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Chiều cao ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Trọng lượng ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'Tuổi';

  @override
  String get profile_gender_male => 'Nam';

  @override
  String get profile_gender_female => 'Nữ';

  @override
  String get profile_gender_other => 'Khác / Không muốn nói';

  @override
  String get profile_activity_sedentary =>
      'Ít vận động (Ít hoặc không tập thể dục)';

  @override
  String get profile_activity_light => 'Hoạt động nhẹ (1-3 ngày/tuần)';

  @override
  String get profile_activity_moderate => 'Hoạt động vừa phải (3-5 ngày/tuần)';

  @override
  String get profile_activity_very => 'Rất năng động (6-7 ngày/tuần)';

  @override
  String get settings_wear_os_header => 'Ứng dụng đồng hành Wear OS';

  @override
  String get settings_wear_os_desc =>
      'Cài đặt ô Bloomi và tổ hợp trên đồng hồ Wear OS của bạn để xem lượng calo, nước và số bước.';

  @override
  String get settings_widgets_header => 'Widget Android tương tác';

  @override
  String get settings_widgets_desc =>
      'Ghim các tiện ích thời gian thực trên màn hình chính của thiết bị để cập nhật tức thì.';

  @override
  String get settings_about_header => 'Giới thiệu về Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Xây dựng 100';

  @override
  String get settings_about_credits =>
      'Được chế tạo với sự quan tâm cho cuộc sống chánh niệm, lành mạnh.';

  @override
  String get settings_terms_header => 'Điều khoản và Điều kiện';

  @override
  String get settings_privacy_header => 'Chính sách bảo mật';

  @override
  String get settings_delete_header => 'Xóa tài khoản & dữ liệu';

  @override
  String get settings_delete_warning =>
      'Không thể hoàn tác hành động này. Tất cả các bữa ăn, bài tập, sức sống và hồ sơ của bạn sẽ bị xóa vĩnh viễn.';

  @override
  String get settings_delete_confirm_btn => 'Xóa vĩnh viễn';

  @override
  String get onboard_welcome_headline => 'Chào mừng đến với Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Theo dõi sức khỏe nhẹ nhàng, có chánh niệm được thiết kế xung quanh cuộc sống của bạn.';

  @override
  String get onboard_step_about => 'Giới thiệu về bạn';

  @override
  String get onboard_step_goals => 'Mục tiêu của bạn';

  @override
  String get onboard_step_lifestyle => 'Thói quen hàng ngày';

  @override
  String get onboard_step_permissions => 'Quyền';

  @override
  String get onboard_step_plan => 'Sẵn sàng!';

  @override
  String get onboard_health_connect_perm => 'Quyền truy cập kết nối sức khỏe';

  @override
  String get onboard_step_sensors_perm => 'Cảm biến bộ đếm bước';

  @override
  String get onboard_notif_perm => 'Nhắc nhở và thông báo chánh niệm';

  @override
  String get onboard_camera_perm => 'Camera (Máy quét mã vạch & thực phẩm)';

  @override
  String get onboard_grant_permissions => 'Cấp quyền';

  @override
  String get onboard_continue_dashboard => 'Mở trang tổng quan';

  @override
  String get notif_channel_hydration_name => 'Thúc đẩy hydrat hóa';

  @override
  String get notif_channel_hydration_desc =>
      'Nhắc nhở uống nước nhẹ nhàng suốt cả ngày';

  @override
  String get notif_channel_nutrition_name => 'Nhắc nhở bữa ăn & dinh dưỡng';

  @override
  String get notif_channel_nutrition_desc =>
      'Cảnh báo nhắc nhở bữa sáng, bữa trưa và bữa tối';

  @override
  String get notif_channel_steps_name => 'Bước quan trọng';

  @override
  String get notif_channel_steps_desc =>
      'Ăn mừng khi đạt mục tiêu số bước hàng ngày';

  @override
  String get notif_channel_vitals_name => 'Kiểm tra sức khỏe & sức sống';

  @override
  String get notif_channel_vitals_desc => 'Lời nhắc giảm cân và giờ đi ngủ';

  @override
  String get notif_action_log_water => '💧 Nhật ký +250ml';

  @override
  String get notif_action_snooze => 'Báo lại 15m';

  @override
  String get notif_action_log_meal => '🥗 Bữa ăn đăng nhập';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
