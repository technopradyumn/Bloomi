// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get app_name => '布卢米';

  @override
  String get nav_home => '首页';

  @override
  String get nav_today => '今天';

  @override
  String get nav_plan => '计划';

  @override
  String get nav_food => '饮食';

  @override
  String get nav_food_diary => '饮食日记';

  @override
  String get nav_workout => '运动记录';

  @override
  String get nav_health => '健康';

  @override
  String get nav_profile => '个人资料';

  @override
  String get save => '保存';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get done => '完成';

  @override
  String get close => '关闭';

  @override
  String get back => '返回';

  @override
  String get next => '下一步';

  @override
  String get continue_btn => '继续';

  @override
  String get confirm => '确认';

  @override
  String get search => '搜索';

  @override
  String get filter => '筛选';

  @override
  String get all => '全部';

  @override
  String get active => '活跃';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get tomorrow => '明天';

  @override
  String get add => '添加';

  @override
  String get remove => '移除';

  @override
  String get refresh => '刷新';

  @override
  String get retry => '重试';

  @override
  String get error => '错误';

  @override
  String get success => '成功';

  @override
  String get loading => '加载中...';

  @override
  String get no_data => '暂无数据';

  @override
  String get offline => '离线模式';

  @override
  String get offline_sub => '重新联网后将自动同步';

  @override
  String get undo => '撤消';

  @override
  String get portion => '部分';

  @override
  String get quantity => '数量';

  @override
  String get unit => '单位';

  @override
  String get clear => '清除';

  @override
  String get select => '选择';

  @override
  String get apply => '申请';

  @override
  String get reset => '重置';

  @override
  String get ok => '好的';

  @override
  String get yes => '是的';

  @override
  String get no => '否';

  @override
  String get optional => '可选';

  @override
  String get calories => '卡路里';

  @override
  String get protein => '蛋白质';

  @override
  String get carbs => '碳水化合物';

  @override
  String get fat => '脂肪';

  @override
  String get fiber => '膳食纤维';

  @override
  String get water => '水';

  @override
  String get steps => '步数';

  @override
  String get kcal => '千卡';

  @override
  String get grams => '克';

  @override
  String get milliliters => '毫升';

  @override
  String get kilograms => '千克';

  @override
  String get pounds => '磅';

  @override
  String get centimeters => '厘米';

  @override
  String get inches => '在';

  @override
  String get bpm => '节拍数';

  @override
  String get hours => '小时';

  @override
  String get minutes => '分钟';

  @override
  String get serving => '服务';

  @override
  String get servings => '份量';

  @override
  String get serving_size => '份量';

  @override
  String get per_100g => '每100克';

  @override
  String get india => '印度';

  @override
  String get asia => '亚洲';

  @override
  String get europe => '欧洲';

  @override
  String get middle_east => '中东';

  @override
  String get africa => '非洲';

  @override
  String get americas => '美洲';

  @override
  String get home_title => '首页';

  @override
  String get home_greeting_morning => '早上好';

  @override
  String get home_greeting_afternoon => '下午好';

  @override
  String get home_greeting_evening => '晚上好';

  @override
  String get home_streak_title => '绽放连续打卡';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count天连续打卡',
      one: '1天连续打卡',
      zero: '0天连续打卡',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => '已消耗';

  @override
  String get home_calories_budget => '卡路里预算';

  @override
  String home_calories_remaining(Object kcal) {
    return '剩余 $kcal 千卡';
  }

  @override
  String get home_water_title => '每日饮水';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target 毫升';
  }

  @override
  String get home_steps_title => '行走步数';

  @override
  String get home_quick_actions => '快捷操作';

  @override
  String get home_log_meal => '记录饮食';

  @override
  String get home_log_water => '记录饮水';

  @override
  String get home_log_workout => '记录运动';

  @override
  String get home_log_weight => '记录体重';

  @override
  String get home_insights_title => '今日洞察';

  @override
  String get home_quote => '每一个健康的微小选择，都在悄悄改变人生。';

  @override
  String get home_ai_coach_tip => 'Bloomi AI健康教练';

  @override
  String get home_surroundings => '环境与空气';

  @override
  String get home_notifications => '通知';

  @override
  String get home_daily_score => '每日健康评分';

  @override
  String get home_view_all => '查看全部';

  @override
  String get food_diary_title => '饮食日记';

  @override
  String get food_breakfast => '早餐';

  @override
  String get food_lunch => '午餐';

  @override
  String get food_dinner => '晚餐';

  @override
  String get food_snacks => '加餐';

  @override
  String get food_add_food => '添加食物';

  @override
  String get food_edit_food => '编辑食物';

  @override
  String get food_add_breakfast => '添加早餐';

  @override
  String get food_add_lunch => '添加午餐';

  @override
  String get food_add_dinner => '添加晚餐';

  @override
  String get food_add_snack => '添加零食';

  @override
  String get food_total_calories => '总卡路里';

  @override
  String get food_empty_meal => '尚未记录这顿饭的食物';

  @override
  String get food_empty_diary => '没有记录这一天的膳食';

  @override
  String get food_log_first_meal => '点击+记录您的第一顿美味佳肴';

  @override
  String get food_quick_add => '快速添加';

  @override
  String get food_search_hint => '搜索菜肴、水果、木豆、烤肉...';

  @override
  String get food_custom_recipe => '定制食品和食谱';

  @override
  String get food_scan_barcode => '扫描条码';

  @override
  String get food_camera_scan => '人工智能食品扫描仪';

  @override
  String get food_recent => '最近吃的食物';

  @override
  String get food_favourites => '收藏夹';

  @override
  String get food_macro_summary => '宏量营养素分解';

  @override
  String get food_delete_meal_confirm => '您确定要删除该项目吗？';

  @override
  String get food_item_deleted => '食品已移除';

  @override
  String get food_remaining => '剩余';

  @override
  String get food_consumed => '消耗的';

  @override
  String food_of_target(Object target) {
    return '$target 千卡';
  }

  @override
  String get foodSearch_title => '搜索食品';

  @override
  String get foodSearch_scan_barcode => '扫描条码';

  @override
  String get foodSearch_take_photo => '拍摄食物照片';

  @override
  String get foodSearch_custom_food => '创建定制食品';

  @override
  String get foodSearch_recent_searches => '最近的搜索';

  @override
  String get foodSearch_popular => '热门菜肴';

  @override
  String get foodSearch_no_results => '没有符合您搜索的食物';

  @override
  String get barcode_title => '条码扫描仪';

  @override
  String get barcode_align => '将条形码对齐相机框架内';

  @override
  String get barcode_not_found => '在数据库中找不到产品';

  @override
  String get barcode_premium_feature => 'Bloomi Pro 提供条码扫描功能';

  @override
  String get camera_title => '人工智能食品扫描仪';

  @override
  String get camera_tap_hint => '为您的菜肴拍一张清晰的照片';

  @override
  String get camera_analysing => '正在分析餐盘...';

  @override
  String get camera_detected => '检测到的项目';

  @override
  String get camera_flash => '切换闪光灯';

  @override
  String get camera_retake => '重拍照片';

  @override
  String get camera_confirm_food => '确认项目';

  @override
  String get customFood_title => '定制食品和食谱';

  @override
  String get customFood_name_hint => '菜肴或配料名称';

  @override
  String get customFood_calories_hint => '卡路里（千卡）';

  @override
  String get customFood_protein_hint => '蛋白质（克）';

  @override
  String get customFood_carbs_hint => '碳水化合物（克）';

  @override
  String get customFood_fat_hint => '脂肪（克）';

  @override
  String get customFood_save => '保存食谱';

  @override
  String get water_tracker_title => '饮水追踪';

  @override
  String get water_daily_target => '每日补水目标';

  @override
  String get water_logged_today => '今天登录';

  @override
  String get water_add_glass => '+250 毫升玻璃杯';

  @override
  String get water_add_bottle => '+500毫升瓶';

  @override
  String get water_custom_amount => '定制金额';

  @override
  String get water_reminder_tip => '全天定期喝水以获得稳定的能量。';

  @override
  String water_logged_toast(Object amount) {
    return '记录 $amount 毫升水 💧';
  }

  @override
  String get workout_title => '运动记录';

  @override
  String get workout_add_exercise => '添加锻炼';

  @override
  String get workout_cardio => '有氧运动';

  @override
  String get workout_strength => '实力';

  @override
  String get workout_yoga => '瑜伽与灵活性';

  @override
  String get workout_duration => '持续时间';

  @override
  String get workout_intensity => '强度';

  @override
  String get workout_calories_burned => '燃烧的卡路里';

  @override
  String get workout_empty => '今天没有记录锻炼';

  @override
  String get workout_save_success => '锻炼保存成功！';

  @override
  String get workout_type => '锻炼类型';

  @override
  String get workout_notes => '笔记与思考';

  @override
  String get health_overview_title => '健康与体征';

  @override
  String get health_heart_rate => '心率';

  @override
  String get health_blood_oxygen => '血氧 (SpO2)';

  @override
  String get health_blood_pressure => '血压';

  @override
  String get health_blood_glucose => '血糖';

  @override
  String get health_body_temperature => '体温';

  @override
  String get health_sleep_tracking => '睡眠追踪';

  @override
  String get health_weight_tracking => '体重和身体成分';

  @override
  String get health_waist_hip => '腰臀比';

  @override
  String get health_devices_hub => '设备和智能手表中心';

  @override
  String get health_sync_now => '同步健康数据';

  @override
  String health_last_synced(Object time) {
    return '上次同步：$time';
  }

  @override
  String get health_manual_entry => '手动健康录入';

  @override
  String get health_metric_detail => '指标详细信息';

  @override
  String get health_connected_sensors => '互联健康传感器';

  @override
  String get plan_title => '每日计划';

  @override
  String get plan_weekly_title => '每周健康计划';

  @override
  String get plan_calorie_target => '卡路里目标';

  @override
  String get plan_water_target => '水合目标';

  @override
  String get plan_step_target => '步数目标';

  @override
  String get plan_sleep_target => '睡眠目标';

  @override
  String get plan_meal_suggestions => '膳食建议';

  @override
  String get plan_healthy_habits => '健康习惯和建议';

  @override
  String get plan_coach_advice => 'Bloomi AI 教练推荐';

  @override
  String get plan_generated_title => '个性化的日程安排';

  @override
  String get profile_title => '个人资料';

  @override
  String get profile_edit => '编辑个人资料';

  @override
  String get profile_name => '名称';

  @override
  String get profile_age => '年龄';

  @override
  String get profile_gender => '性别';

  @override
  String get profile_height => '身高';

  @override
  String get profile_weight => '重量';

  @override
  String get profile_goal => '主要目标';

  @override
  String get profile_activity_level => '活动水平';

  @override
  String get profile_stats => '我的健康统计';

  @override
  String get profile_saved => '个人资料更新成功';

  @override
  String get profile_bmi => '体重指数 (BMI)';

  @override
  String get profile_membership => '会员资格';

  @override
  String get settings => '设置';

  @override
  String get preferences_habits => '偏好与习惯';

  @override
  String get appearance_theme => '外观与主题';

  @override
  String get appearance_theme_sub => '深色、浅色、系统模式和应用程序背景选项';

  @override
  String get permissions => '权限和系统访问';

  @override
  String get permissions_sub => 'Health Connect、步数传感器、GPS、通知和摄像头';

  @override
  String get reminders_notifications => '提醒与通知';

  @override
  String get reminders_sub => '用餐时间、水、体重登记和就寝提醒';

  @override
  String get units_of_measurement => '计量单位';

  @override
  String get units_sub => '公制（公斤、厘米、毫升、公里）或英制（磅、英尺/英寸、液量盎司）';

  @override
  String get app_language => '应用语言';

  @override
  String get language_sub => '英语、हिन्दी（印地语）、印度英语和 195 多种全球语言';

  @override
  String get home_screen_widgets => '主屏幕小部件';

  @override
  String get widgets_sub => '实时 Android 小部件：中心、步骤、水、营养和吉祥物';

  @override
  String get wear_os_watch_app => 'Wear OS 手表应用';

  @override
  String get wear_os_sub => '智能手表伴侣、板块、复杂功能和实时生命体征';

  @override
  String get goals_wellness => '目标和健康见解';

  @override
  String get nutrition_targets => '营养目标和宏观分割';

  @override
  String get nutrition_targets_sub => '卡路里目标、蛋白质、碳水化合物、脂肪和水目标';

  @override
  String get weekly_recap => '每周健康回顾';

  @override
  String get weekly_recap_sub => '7 天平均卡路里、宏观比率和最佳一天';

  @override
  String get streaks_milestones => '连胜与里程碑';

  @override
  String get streaks_sub => '活跃的开花条纹、徽章和成就';

  @override
  String get connected_devices => '互联设备和生态系统';

  @override
  String get devices_hub => '设备和智能手表中心';

  @override
  String get devices_hub_sub =>
      'Health Connect、Galaxy Watch、Pixel Watch、Garmin';

  @override
  String get surroundings_weather => '周围环境和天气';

  @override
  String get surroundings_sub => '空气质量 (AQI)、紫外线指数和天气补水提示';

  @override
  String get bloomi_pro => 'Bloomi 专业版订阅';

  @override
  String get bloomi_pro_sub => 'AI 计划教练、5 个主屏幕小部件和生命体征跟踪';

  @override
  String get about_security => '关于和安全';

  @override
  String get about_bloomi => '关于布卢米';

  @override
  String get about_bloomi_sub => '构建规范、版本、属性';

  @override
  String get privacy_policy => '隐私政策';

  @override
  String get privacy_policy_sub => '离线优先的设备上数据架构';

  @override
  String get terms_conditions => '条款及条件';

  @override
  String get terms_conditions_sub => '服务条款和健康指南';

  @override
  String get delete_account => '删除帐户和数据';

  @override
  String get delete_account_sub => '不可逆地删除本地 SQLite 数据和云备份';

  @override
  String get healthy_habits => '养成温和、持久的健康习惯';

  @override
  String get all_logs => '我的跟踪数据和日志';

  @override
  String get search_language => '搜索语言...';

  @override
  String get languages_available => '可用语言';

  @override
  String get no_matching_languages => '未找到匹配的语言';

  @override
  String get try_searching => '尝试按母语文字或英文拼写进行搜索';

  @override
  String get partially_translated => '部分翻译';

  @override
  String get complete_translation => '已完成';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return '已将语言设置为 $name ($nativeName)';
  }

  @override
  String get surroundings_title => '周边环境';

  @override
  String get surroundings_aqi => '空气质量指数';

  @override
  String get surroundings_uv => '紫外线指数';

  @override
  String get surroundings_temp => '温度';

  @override
  String get surroundings_humidity => '湿度';

  @override
  String get surroundings_hydration_advice => '在当前天气条件下保持充足的水分。';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => '搜索食物';

  @override
  String get food_quick_barcode => '扫描条形码👑';

  @override
  String get food_quick_water => '加水';

  @override
  String get food_quick_custom => '定制食品';

  @override
  String get surroundings_good => '好';

  @override
  String get surroundings_moderate => '中等';

  @override
  String get surroundings_unhealthy => '不健康';

  @override
  String get notifications_title => '通知和提醒';

  @override
  String get notifications_empty => '没有新通知';

  @override
  String get notifications_mark_read => '全部标记为已读';

  @override
  String get notifications_clear => '全部清除';

  @override
  String get reminders => '提醒设置';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => '早餐提醒🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return '早上好！是时候在 $time 享用营养早餐了。';
  }

  @override
  String get reminders_lunch_title => '午餐提醒🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '暂停一下，在 $time 享用均衡、用心的午餐。';
  }

  @override
  String get reminders_dinner_title => '晚餐提醒🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '是时候在 $time 享用一顿清淡、令人满意的晚餐了。';
  }

  @override
  String get reminders_water_title => '补水助推💧';

  @override
  String reminders_water_body(Object time) {
    return '是时候喝一杯新鲜的水了！ ($time)';
  }

  @override
  String get reminders_weight_title => '每周称重⚖️';

  @override
  String reminders_weight_body(Object time) {
    return '在 Bloomi ($time) 上跟踪您每周的身体指标。';
  }

  @override
  String get reminders_sleep_title => '睡前放松🌙';

  @override
  String reminders_sleep_body(Object time) {
    return '放松身心，准备安宁的睡眠 ($time)。';
  }

  @override
  String get onboard_welcome => '欢迎来到布卢米';

  @override
  String get onboard_sub => '您友好的、线下优先的健康和营养伴侣。';

  @override
  String get onboard_get_started => '开始使用';

  @override
  String get onboard_sign_in => '登录';

  @override
  String get onboard_skip => '跳过';

  @override
  String get onboard_choose_goal => '您的主要健康目标是什么？';

  @override
  String get onboard_goal_weight_loss => '温和减肥';

  @override
  String get onboard_goal_muscle => '肌肉增益和力量';

  @override
  String get onboard_goal_energy => '每日能量与活力';

  @override
  String get onboard_goal_habits => '健康正念饮食';

  @override
  String get onboard_about_you => '告诉我们你自己';

  @override
  String get onboard_lifestyle => '你的日常生活';

  @override
  String get onboard_permissions_title => '权限和系统访问';

  @override
  String get onboard_permissions_sub => '授予对同步步骤、锻炼和提醒的访问权限。';

  @override
  String get onboard_plan_ready_title => '您的定制计划已准备就绪！';

  @override
  String get onboard_plan_ready_sub => '我们专门为您制定了温和、个性化的营养和健康路线图。';

  @override
  String get onboard_enter_bloomi => '布卢米登场';

  @override
  String get insights_weekly_report => '每周健康回顾';

  @override
  String insights_best_day(Object day) {
    return '最佳一致性日：$day';
  }

  @override
  String get insights_streaks_badges => '连胜与里程碑';

  @override
  String insights_unlocked_on(Object date) {
    return '于 $date 解锁';
  }

  @override
  String get insights_keep_going => '保持惊人的进步！';

  @override
  String get widgets_title => '主屏幕小部件';

  @override
  String widgets_active_count(Object count) {
    return '活动小部件：$count';
  }

  @override
  String get widgets_hub_title => '布卢米健康中心';

  @override
  String get widgets_steps_title => '台阶和活动环';

  @override
  String get widgets_water_title => '补水快速记录';

  @override
  String get widgets_mascot_title => '布卢米吉祥物伴侣';

  @override
  String get wear_os_title => 'Wear OS 智能手表';

  @override
  String get wear_os_connected => '连接到手表';

  @override
  String get wear_os_sync => '同步手表数据';

  @override
  String get theme_title => '外观与主题';

  @override
  String get theme_mode => '主题模式';

  @override
  String get theme_light => '光';

  @override
  String get theme_dark => '黑暗';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => '背景调色板';

  @override
  String get units_title => '测量单位';

  @override
  String get units_metric => '公制（公斤、厘米、毫升）';

  @override
  String get units_imperial => '英制（磅、英寸、液量盎司）';

  @override
  String get home_unable_load => '无法加载仪表盘';

  @override
  String get home_health_permission_req => '需要 Health Connect 许可';

  @override
  String get home_health_permission_desc =>
      'Bloomi 需要 Health Connect 权限才能实时提取真实步数、心率并同步移动家庭小部件。';

  @override
  String get home_allow_health => '允许 Health Connect';

  @override
  String get home_ready_mindful_day => '开启充满活力的一天吧！✨';

  @override
  String get home_quick_add => '快捷添加';

  @override
  String get home_live_gps => '实时定位';

  @override
  String get home_calories_remaining_label => '剩余卡路里';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return '已摄入: $consumed / $target 千卡';
  }

  @override
  String get home_tap_water_tracker => '点击进入饮水记录 💧';

  @override
  String get home_water_goal_reached => '已达成今日饮水目标！🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '距离今日目标还差 $remaining 毫升';
  }

  @override
  String get home_details => '详情';

  @override
  String get home_upgrade_plan_desc => '升级以解锁个性化每日目标和人工智能计划';

  @override
  String get home_unlock => '解锁👑';

  @override
  String get home_quick_log_hint => '快速记录健康条目';

  @override
  String get food_serving_size => '份量';

  @override
  String get food_serving_grams => '份量（克）';

  @override
  String get food_number_servings => '份数';

  @override
  String get food_calories_per_serving => '每份热量';

  @override
  String get food_recipe_ingredients => '成分';

  @override
  String get food_recipe_add_ingredient => '添加成分';

  @override
  String get food_recipe_directions => '说明和注意事项';

  @override
  String get food_recipe_total => '总食谱营养';

  @override
  String get food_recipe_per_serving => '每份营养';

  @override
  String get food_recipe_saved_toast => '自定义食物保存成功！';

  @override
  String get food_barcode_found => '产品找到了！';

  @override
  String get food_barcode_not_found_desc => '我们在开放数据库中找不到此条形码。您可以将其添加为定制食品。';

  @override
  String get food_add_custom_btn => '添加定制食品';

  @override
  String get food_scan_again => '再次扫描';

  @override
  String get food_review_items => '检查检测到的食品';

  @override
  String get food_review_hint => '调整数量或删除任何无法识别的项目';

  @override
  String get food_log_selected => '记录选定的食物';

  @override
  String get food_favourites_title => '最喜欢的食物';

  @override
  String get food_recent_title => '最近吃的食物';

  @override
  String get food_no_favourites => '还没有最喜欢的食物。点击任何食物上的心即可保存在这里。';

  @override
  String get food_no_recents => '未找到最近记录的食物。';

  @override
  String get food_nutrition_details_title => '每日营养详情';

  @override
  String get food_macro_protein_label => '蛋白质分解';

  @override
  String get food_macro_carbs_label => '碳水化合物分解';

  @override
  String get food_macro_fat_label => '脂肪分解';

  @override
  String get food_macro_fiber_label => '纤维分解';

  @override
  String get food_daily_target_comparison => '目标比较';

  @override
  String food_target_label(Object target) {
    return '目标：$target';
  }

  @override
  String get food_edit_entry => '编辑日记条目';

  @override
  String get food_delete_entry => '删除条目';

  @override
  String food_grams_short(Object grams) {
    return '$grams 克';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal 千卡';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current 共 $target 毫升';
  }

  @override
  String get water_intake_history => '今天的水日志';

  @override
  String get water_no_logs_today => '今天还没有积水。补水并点击快速添加按钮！';

  @override
  String get water_adjust_goal => '调整每日目标';

  @override
  String get health_connect_banner => '连接到 Health Connect';

  @override
  String get health_vitals_summary => '每日健康要点';

  @override
  String get health_latest_heart_rate => '最新心率';

  @override
  String get health_latest_bp => '血压';

  @override
  String get health_latest_spo2 => '血氧';

  @override
  String get health_latest_glucose => '血糖';

  @override
  String get health_latest_weight => '重量';

  @override
  String get health_latest_sleep => '睡眠时间';

  @override
  String get health_add_manual => '添加手动测量';

  @override
  String get health_history_trends => '历史趋势';

  @override
  String get health_sync_success => '健康数据同步成功！';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours 小时 $mins 分钟';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val 公斤';
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
    return '$systolic / $diastolic 毫米汞柱';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val 毫克/分升';
  }

  @override
  String get health_devices_title => '连接设备和可穿戴设备';

  @override
  String get health_devices_desc => '管理配对的智能手表、健身追踪器和健康传感器。';

  @override
  String get health_workout_editor_title => '编辑锻炼';

  @override
  String get health_workout_name_label => '锻炼名称';

  @override
  String get health_workout_duration_label => '持续时间（分钟）';

  @override
  String get health_workout_calories_label => '估计卡路里（千卡）';

  @override
  String get health_workout_date_label => '日期和时间';

  @override
  String get plan_daily_wellness_roadmap => '您的个性化路线图';

  @override
  String get plan_morning_routine => '早晨例行公事';

  @override
  String get plan_afternoon_routine => '午间健康';

  @override
  String get plan_evening_routine => '傍晚放松';

  @override
  String get plan_coach_badge => '布卢米人工智能教练';

  @override
  String get plan_weekly_overview => '7 天健康焦点';

  @override
  String get plan_targets_title => '健康目标';

  @override
  String get plan_calorie_budget_label => '每日卡路里预算';

  @override
  String get plan_water_budget_label => '每日饮水目标';

  @override
  String get plan_step_budget_label => '每日步数目标';

  @override
  String get plan_macro_split_label => '宏量营养素比例';

  @override
  String get profile_personal_details => '个人资料';

  @override
  String get profile_body_stats => '身体测量';

  @override
  String get profile_app_preferences => '首选项和应用程序设置';

  @override
  String get profile_edit_name_hint => '你的名字';

  @override
  String profile_edit_height_hint(Object unit) {
    return '高度 ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return '重量 ($unit)';
  }

  @override
  String get profile_edit_age_hint => '年龄';

  @override
  String get profile_gender_male => '男';

  @override
  String get profile_gender_female => '女';

  @override
  String get profile_gender_other => '其他/不想说';

  @override
  String get profile_activity_sedentary => '久坐（很少或没有运动）';

  @override
  String get profile_activity_light => '轻度活动（每周 1-3 天）';

  @override
  String get profile_activity_moderate => '中等活跃（每周 3-5 天）';

  @override
  String get profile_activity_very => '非常活跃（每周 6-7 天）';

  @override
  String get settings_wear_os_header => 'Wear OS 配套应用程序';

  @override
  String get settings_wear_os_desc =>
      '在您的 Wear OS 手表上安装 Bloomi 磁贴和复杂功能，即可查看卡路里、水和步数。';

  @override
  String get settings_widgets_header => '交互式 Android 小部件';

  @override
  String get settings_widgets_desc => '将实时小部件固定在设备主屏幕上以进行即时更新。';

  @override
  String get settings_about_header => '关于布卢米';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '建造 100';

  @override
  String get settings_about_credits => '精心打造，注重专注、健康的生活。';

  @override
  String get settings_terms_header => '条款和条件';

  @override
  String get settings_privacy_header => '隐私政策';

  @override
  String get settings_delete_header => '删除帐户和数据';

  @override
  String get settings_delete_warning => '此操作无法撤消。您的所有膳食、锻炼、生命体征和个人资料都将被永久删除。';

  @override
  String get settings_delete_confirm_btn => '永久删除';

  @override
  String get onboard_welcome_headline => '欢迎来到布卢米✨';

  @override
  String get onboard_welcome_tagline => '围绕您的生活而设计的温和、专注的健康追踪。';

  @override
  String get onboard_step_about => '关于你';

  @override
  String get onboard_step_goals => '你的目标';

  @override
  String get onboard_step_lifestyle => '日常习惯';

  @override
  String get onboard_step_permissions => '权限';

  @override
  String get onboard_step_plan => '准备好了！';

  @override
  String get onboard_health_connect_perm => '健康连接访问';

  @override
  String get onboard_step_sensors_perm => '计步器传感器';

  @override
  String get onboard_notif_perm => '贴心提醒和通知';

  @override
  String get onboard_camera_perm => '相机（条形码和食品扫描仪）';

  @override
  String get onboard_grant_permissions => '授予权限';

  @override
  String get onboard_continue_dashboard => '打开仪表板';

  @override
  String get notif_channel_hydration_name => '保湿助推';

  @override
  String get notif_channel_hydration_desc => '全天温和喝水提醒';

  @override
  String get notif_channel_nutrition_name => '膳食和营养提醒';

  @override
  String get notif_channel_nutrition_desc => '早餐、午餐和晚餐提醒提醒';

  @override
  String get notif_channel_steps_name => '步骤里程碑';

  @override
  String get notif_channel_steps_desc => '达到每日步数目标时庆祝';

  @override
  String get notif_channel_vitals_name => '健康与生命体征检查';

  @override
  String get notif_channel_vitals_desc => '体重和睡前放松提醒';

  @override
  String get notif_action_log_water => '💧原木+250ml';

  @override
  String get notif_action_snooze => '贪睡 15m';

  @override
  String get notif_action_log_meal => '🥗 记录膳食';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get app_name => '布卢米';

  @override
  String get nav_home => '首页';

  @override
  String get nav_today => '今天';

  @override
  String get nav_plan => '计划';

  @override
  String get nav_food => '饮食';

  @override
  String get nav_food_diary => '饮食日记';

  @override
  String get nav_workout => '运动记录';

  @override
  String get nav_health => '健康';

  @override
  String get nav_profile => '个人资料';

  @override
  String get save => '保存';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get done => '完成';

  @override
  String get close => '关闭';

  @override
  String get back => '返回';

  @override
  String get next => '下一步';

  @override
  String get continue_btn => '继续';

  @override
  String get confirm => '确认';

  @override
  String get search => '搜索';

  @override
  String get filter => '筛选';

  @override
  String get all => '全部';

  @override
  String get active => '活跃';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get tomorrow => '明天';

  @override
  String get add => '添加';

  @override
  String get remove => '移除';

  @override
  String get refresh => '刷新';

  @override
  String get retry => '重试';

  @override
  String get error => '错误';

  @override
  String get success => '成功';

  @override
  String get loading => '加载中...';

  @override
  String get no_data => '暂无数据';

  @override
  String get offline => '离线模式';

  @override
  String get offline_sub => '重新联网后将自动同步';

  @override
  String get undo => '撤消';

  @override
  String get portion => '部分';

  @override
  String get quantity => '数量';

  @override
  String get unit => '单位';

  @override
  String get clear => '清除';

  @override
  String get select => '选择';

  @override
  String get apply => '申请';

  @override
  String get reset => '重置';

  @override
  String get ok => '好的';

  @override
  String get yes => '是的';

  @override
  String get no => '否';

  @override
  String get optional => '可选';

  @override
  String get calories => '卡路里';

  @override
  String get protein => '蛋白质';

  @override
  String get carbs => '碳水化合物';

  @override
  String get fat => '脂肪';

  @override
  String get fiber => '膳食纤维';

  @override
  String get water => '水';

  @override
  String get steps => '步数';

  @override
  String get kcal => '千卡';

  @override
  String get grams => '克';

  @override
  String get milliliters => '毫升';

  @override
  String get kilograms => '千克';

  @override
  String get pounds => '磅';

  @override
  String get centimeters => '厘米';

  @override
  String get inches => '在';

  @override
  String get bpm => '节拍数';

  @override
  String get hours => '小时';

  @override
  String get minutes => '分钟';

  @override
  String get serving => '服务';

  @override
  String get servings => '份量';

  @override
  String get serving_size => '份量';

  @override
  String get per_100g => '每100克';

  @override
  String get india => '印度';

  @override
  String get asia => '亚洲';

  @override
  String get europe => '欧洲';

  @override
  String get middle_east => '中东';

  @override
  String get africa => '非洲';

  @override
  String get americas => '美洲';

  @override
  String get home_title => '首页';

  @override
  String get home_greeting_morning => '早上好';

  @override
  String get home_greeting_afternoon => '下午好';

  @override
  String get home_greeting_evening => '晚上好';

  @override
  String get home_streak_title => '绽放连续打卡';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count天连续打卡',
      one: '1天连续打卡',
      zero: '0天连续打卡',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => '已消耗';

  @override
  String get home_calories_budget => '卡路里预算';

  @override
  String home_calories_remaining(Object kcal) {
    return '剩余 $kcal 千卡';
  }

  @override
  String get home_water_title => '每日饮水';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target 毫升';
  }

  @override
  String get home_steps_title => '行走步数';

  @override
  String get home_quick_actions => '快捷操作';

  @override
  String get home_log_meal => '记录饮食';

  @override
  String get home_log_water => '记录饮水';

  @override
  String get home_log_workout => '记录运动';

  @override
  String get home_log_weight => '记录体重';

  @override
  String get home_insights_title => '今日洞察';

  @override
  String get home_quote => '每一个健康的微小选择，都在悄悄改变人生。';

  @override
  String get home_ai_coach_tip => 'Bloomi AI健康教练';

  @override
  String get home_surroundings => '环境与空气';

  @override
  String get home_notifications => '通知';

  @override
  String get home_daily_score => '每日健康评分';

  @override
  String get home_view_all => '查看全部';

  @override
  String get food_diary_title => '饮食日记';

  @override
  String get food_breakfast => '早餐';

  @override
  String get food_lunch => '午餐';

  @override
  String get food_dinner => '晚餐';

  @override
  String get food_snacks => '加餐';

  @override
  String get food_add_food => '添加食物';

  @override
  String get food_edit_food => '编辑食物';

  @override
  String get food_add_breakfast => '添加早餐';

  @override
  String get food_add_lunch => '添加午餐';

  @override
  String get food_add_dinner => '添加晚餐';

  @override
  String get food_add_snack => '添加零食';

  @override
  String get food_total_calories => '总卡路里';

  @override
  String get food_empty_meal => '尚未记录这顿饭的食物';

  @override
  String get food_empty_diary => '没有记录这一天的膳食';

  @override
  String get food_log_first_meal => '点击+记录您的第一顿美味佳肴';

  @override
  String get food_quick_add => '快速添加';

  @override
  String get food_search_hint => '搜索菜肴、水果、木豆、烤肉...';

  @override
  String get food_custom_recipe => '定制食品和食谱';

  @override
  String get food_scan_barcode => '扫描条码';

  @override
  String get food_camera_scan => '人工智能食品扫描仪';

  @override
  String get food_recent => '最近吃的食物';

  @override
  String get food_favourites => '收藏夹';

  @override
  String get food_macro_summary => '宏量营养素分解';

  @override
  String get food_delete_meal_confirm => '您确定要删除该项目吗？';

  @override
  String get food_item_deleted => '食品已移除';

  @override
  String get food_remaining => '剩余';

  @override
  String get food_consumed => '消耗的';

  @override
  String food_of_target(Object target) {
    return '$target 千卡';
  }

  @override
  String get foodSearch_title => '搜索食品';

  @override
  String get foodSearch_scan_barcode => '扫描条码';

  @override
  String get foodSearch_take_photo => '拍摄食物照片';

  @override
  String get foodSearch_custom_food => '创建定制食品';

  @override
  String get foodSearch_recent_searches => '最近的搜索';

  @override
  String get foodSearch_popular => '热门菜肴';

  @override
  String get foodSearch_no_results => '没有符合您搜索的食物';

  @override
  String get barcode_title => '条码扫描仪';

  @override
  String get barcode_align => '将条形码对齐相机框架内';

  @override
  String get barcode_not_found => '在数据库中找不到产品';

  @override
  String get barcode_premium_feature => 'Bloomi Pro 提供条码扫描功能';

  @override
  String get camera_title => '人工智能食品扫描仪';

  @override
  String get camera_tap_hint => '为您的菜肴拍一张清晰的照片';

  @override
  String get camera_analysing => '正在分析餐盘...';

  @override
  String get camera_detected => '检测到的项目';

  @override
  String get camera_flash => '切换闪光灯';

  @override
  String get camera_retake => '重拍照片';

  @override
  String get camera_confirm_food => '确认项目';

  @override
  String get customFood_title => '定制食品和食谱';

  @override
  String get customFood_name_hint => '菜肴或配料名称';

  @override
  String get customFood_calories_hint => '卡路里（千卡）';

  @override
  String get customFood_protein_hint => '蛋白质（克）';

  @override
  String get customFood_carbs_hint => '碳水化合物（克）';

  @override
  String get customFood_fat_hint => '脂肪（克）';

  @override
  String get customFood_save => '保存食谱';

  @override
  String get water_tracker_title => '饮水追踪';

  @override
  String get water_daily_target => '每日补水目标';

  @override
  String get water_logged_today => '今天登录';

  @override
  String get water_add_glass => '+250 毫升玻璃杯';

  @override
  String get water_add_bottle => '+500毫升瓶';

  @override
  String get water_custom_amount => '定制金额';

  @override
  String get water_reminder_tip => '全天定期喝水以获得稳定的能量。';

  @override
  String water_logged_toast(Object amount) {
    return '记录 $amount 毫升水 💧';
  }

  @override
  String get workout_title => '运动记录';

  @override
  String get workout_add_exercise => '添加锻炼';

  @override
  String get workout_cardio => '有氧运动';

  @override
  String get workout_strength => '实力';

  @override
  String get workout_yoga => '瑜伽与灵活性';

  @override
  String get workout_duration => '持续时间';

  @override
  String get workout_intensity => '强度';

  @override
  String get workout_calories_burned => '燃烧的卡路里';

  @override
  String get workout_empty => '今天没有记录锻炼';

  @override
  String get workout_save_success => '锻炼保存成功！';

  @override
  String get workout_type => '锻炼类型';

  @override
  String get workout_notes => '笔记与思考';

  @override
  String get health_overview_title => '健康与体征';

  @override
  String get health_heart_rate => '心率';

  @override
  String get health_blood_oxygen => '血氧 (SpO2)';

  @override
  String get health_blood_pressure => '血压';

  @override
  String get health_blood_glucose => '血糖';

  @override
  String get health_body_temperature => '体温';

  @override
  String get health_sleep_tracking => '睡眠追踪';

  @override
  String get health_weight_tracking => '体重和身体成分';

  @override
  String get health_waist_hip => '腰臀比';

  @override
  String get health_devices_hub => '设备和智能手表中心';

  @override
  String get health_sync_now => '同步健康数据';

  @override
  String health_last_synced(Object time) {
    return '上次同步：$time';
  }

  @override
  String get health_manual_entry => '手动健康录入';

  @override
  String get health_metric_detail => '指标详细信息';

  @override
  String get health_connected_sensors => '互联健康传感器';

  @override
  String get plan_title => '每日计划';

  @override
  String get plan_weekly_title => '每周健康计划';

  @override
  String get plan_calorie_target => '卡路里目标';

  @override
  String get plan_water_target => '水合目标';

  @override
  String get plan_step_target => '步数目标';

  @override
  String get plan_sleep_target => '睡眠目标';

  @override
  String get plan_meal_suggestions => '膳食建议';

  @override
  String get plan_healthy_habits => '健康习惯和建议';

  @override
  String get plan_coach_advice => 'Bloomi AI 教练推荐';

  @override
  String get plan_generated_title => '个性化的日程安排';

  @override
  String get profile_title => '个人资料';

  @override
  String get profile_edit => '编辑个人资料';

  @override
  String get profile_name => '名称';

  @override
  String get profile_age => '年龄';

  @override
  String get profile_gender => '性别';

  @override
  String get profile_height => '身高';

  @override
  String get profile_weight => '重量';

  @override
  String get profile_goal => '主要目标';

  @override
  String get profile_activity_level => '活动水平';

  @override
  String get profile_stats => '我的健康统计';

  @override
  String get profile_saved => '个人资料更新成功';

  @override
  String get profile_bmi => '体重指数 (BMI)';

  @override
  String get profile_membership => '会员资格';

  @override
  String get settings => '设置';

  @override
  String get preferences_habits => '偏好与习惯';

  @override
  String get appearance_theme => '外观与主题';

  @override
  String get appearance_theme_sub => '深色、浅色、系统模式和应用程序背景选项';

  @override
  String get permissions => '权限和系统访问';

  @override
  String get permissions_sub => 'Health Connect、步数传感器、GPS、通知和摄像头';

  @override
  String get reminders_notifications => '提醒与通知';

  @override
  String get reminders_sub => '用餐时间、水、体重登记和就寝提醒';

  @override
  String get units_of_measurement => '计量单位';

  @override
  String get units_sub => '公制（公斤、厘米、毫升、公里）或英制（磅、英尺/英寸、液量盎司）';

  @override
  String get app_language => '应用语言';

  @override
  String get language_sub => '英语、हिन्दी（印地语）、印度英语和 195 多种全球语言';

  @override
  String get home_screen_widgets => '主屏幕小部件';

  @override
  String get widgets_sub => '实时 Android 小部件：中心、步骤、水、营养和吉祥物';

  @override
  String get wear_os_watch_app => 'Wear OS 手表应用';

  @override
  String get wear_os_sub => '智能手表伴侣、板块、复杂功能和实时生命体征';

  @override
  String get goals_wellness => '目标和健康见解';

  @override
  String get nutrition_targets => '营养目标和宏观分割';

  @override
  String get nutrition_targets_sub => '卡路里目标、蛋白质、碳水化合物、脂肪和水目标';

  @override
  String get weekly_recap => '每周健康回顾';

  @override
  String get weekly_recap_sub => '7 天平均卡路里、宏观比率和最佳一天';

  @override
  String get streaks_milestones => '连胜与里程碑';

  @override
  String get streaks_sub => '活跃的开花条纹、徽章和成就';

  @override
  String get connected_devices => '互联设备和生态系统';

  @override
  String get devices_hub => '设备和智能手表中心';

  @override
  String get devices_hub_sub =>
      'Health Connect、Galaxy Watch、Pixel Watch、Garmin';

  @override
  String get surroundings_weather => '周围环境和天气';

  @override
  String get surroundings_sub => '空气质量 (AQI)、紫外线指数和天气补水提示';

  @override
  String get bloomi_pro => 'Bloomi 专业版订阅';

  @override
  String get bloomi_pro_sub => 'AI 计划教练、5 个主屏幕小部件和生命体征跟踪';

  @override
  String get about_security => '关于和安全';

  @override
  String get about_bloomi => '关于布卢米';

  @override
  String get about_bloomi_sub => '构建规范、版本、属性';

  @override
  String get privacy_policy => '隐私政策';

  @override
  String get privacy_policy_sub => '离线优先的设备上数据架构';

  @override
  String get terms_conditions => '条款及条件';

  @override
  String get terms_conditions_sub => '服务条款和健康指南';

  @override
  String get delete_account => '删除帐户和数据';

  @override
  String get delete_account_sub => '不可逆地删除本地 SQLite 数据和云备份';

  @override
  String get healthy_habits => '养成温和、持久的健康习惯';

  @override
  String get all_logs => '我的跟踪数据和日志';

  @override
  String get search_language => '搜索语言...';

  @override
  String get languages_available => '可用语言';

  @override
  String get no_matching_languages => '未找到匹配的语言';

  @override
  String get try_searching => '尝试按母语文字或英文拼写进行搜索';

  @override
  String get partially_translated => '部分翻译';

  @override
  String get complete_translation => '已完成';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return '已将语言设置为 $name ($nativeName)';
  }

  @override
  String get surroundings_title => '周边环境';

  @override
  String get surroundings_aqi => '空气质量指数';

  @override
  String get surroundings_uv => '紫外线指数';

  @override
  String get surroundings_temp => '温度';

  @override
  String get surroundings_humidity => '湿度';

  @override
  String get surroundings_hydration_advice => '在当前天气条件下保持充足的水分。';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => '搜索食物';

  @override
  String get food_quick_barcode => '扫描条形码👑';

  @override
  String get food_quick_water => '加水';

  @override
  String get food_quick_custom => '定制食品';

  @override
  String get surroundings_good => '好';

  @override
  String get surroundings_moderate => '中等';

  @override
  String get surroundings_unhealthy => '不健康';

  @override
  String get notifications_title => '通知和提醒';

  @override
  String get notifications_empty => '没有新通知';

  @override
  String get notifications_mark_read => '全部标记为已读';

  @override
  String get notifications_clear => '全部清除';

  @override
  String get reminders => '提醒设置';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => '早餐提醒🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return '早上好！是时候在 $time 享用营养早餐了。';
  }

  @override
  String get reminders_lunch_title => '午餐提醒🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '暂停一下，在 $time 享用均衡、用心的午餐。';
  }

  @override
  String get reminders_dinner_title => '晚餐提醒🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '是时候在 $time 享用一顿清淡、令人满意的晚餐了。';
  }

  @override
  String get reminders_water_title => '补水助推💧';

  @override
  String reminders_water_body(Object time) {
    return '是时候喝一杯新鲜的水了！ ($time)';
  }

  @override
  String get reminders_weight_title => '每周称重⚖️';

  @override
  String reminders_weight_body(Object time) {
    return '在 Bloomi ($time) 上跟踪您每周的身体指标。';
  }

  @override
  String get reminders_sleep_title => '睡前放松🌙';

  @override
  String reminders_sleep_body(Object time) {
    return '放松身心，准备安宁的睡眠 ($time)。';
  }

  @override
  String get onboard_welcome => '欢迎来到布卢米';

  @override
  String get onboard_sub => '您友好的、线下优先的健康和营养伴侣。';

  @override
  String get onboard_get_started => '开始使用';

  @override
  String get onboard_sign_in => '登录';

  @override
  String get onboard_skip => '跳过';

  @override
  String get onboard_choose_goal => '您的主要健康目标是什么？';

  @override
  String get onboard_goal_weight_loss => '温和减肥';

  @override
  String get onboard_goal_muscle => '肌肉增益和力量';

  @override
  String get onboard_goal_energy => '每日能量与活力';

  @override
  String get onboard_goal_habits => '健康正念饮食';

  @override
  String get onboard_about_you => '告诉我们你自己';

  @override
  String get onboard_lifestyle => '你的日常生活';

  @override
  String get onboard_permissions_title => '权限和系统访问';

  @override
  String get onboard_permissions_sub => '授予对同步步骤、锻炼和提醒的访问权限。';

  @override
  String get onboard_plan_ready_title => '您的定制计划已准备就绪！';

  @override
  String get onboard_plan_ready_sub => '我们专门为您制定了温和、个性化的营养和健康路线图。';

  @override
  String get onboard_enter_bloomi => '布卢米登场';

  @override
  String get insights_weekly_report => '每周健康回顾';

  @override
  String insights_best_day(Object day) {
    return '最佳一致性日：$day';
  }

  @override
  String get insights_streaks_badges => '连胜与里程碑';

  @override
  String insights_unlocked_on(Object date) {
    return '于 $date 解锁';
  }

  @override
  String get insights_keep_going => '保持惊人的进步！';

  @override
  String get widgets_title => '主屏幕小部件';

  @override
  String widgets_active_count(Object count) {
    return '活动小部件：$count';
  }

  @override
  String get widgets_hub_title => '布卢米健康中心';

  @override
  String get widgets_steps_title => '台阶和活动环';

  @override
  String get widgets_water_title => '补水快速记录';

  @override
  String get widgets_mascot_title => '布卢米吉祥物伴侣';

  @override
  String get wear_os_title => 'Wear OS 智能手表';

  @override
  String get wear_os_connected => '连接到手表';

  @override
  String get wear_os_sync => '同步手表数据';

  @override
  String get theme_title => '外观与主题';

  @override
  String get theme_mode => '主题模式';

  @override
  String get theme_light => '光';

  @override
  String get theme_dark => '黑暗';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => '背景调色板';

  @override
  String get units_title => '测量单位';

  @override
  String get units_metric => '公制（公斤、厘米、毫升）';

  @override
  String get units_imperial => '英制（磅、英寸、液量盎司）';

  @override
  String get home_unable_load => '无法加载仪表盘';

  @override
  String get home_health_permission_req => '需要 Health Connect 许可';

  @override
  String get home_health_permission_desc =>
      'Bloomi 需要 Health Connect 权限才能实时提取真实步数、心率并同步移动家庭小部件。';

  @override
  String get home_allow_health => '允许 Health Connect';

  @override
  String get home_ready_mindful_day => '开启充满活力的一天吧！✨';

  @override
  String get home_quick_add => '快捷添加';

  @override
  String get home_live_gps => '实时定位';

  @override
  String get home_calories_remaining_label => '剩余卡路里';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return '已摄入: $consumed / $target 千卡';
  }

  @override
  String get home_tap_water_tracker => '点击进入饮水记录 💧';

  @override
  String get home_water_goal_reached => '已达成今日饮水目标！🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '距离今日目标还差 $remaining 毫升';
  }

  @override
  String get home_details => '详情';

  @override
  String get home_upgrade_plan_desc => '升级以解锁个性化每日目标和人工智能计划';

  @override
  String get home_unlock => '解锁👑';

  @override
  String get home_quick_log_hint => '快速记录健康条目';

  @override
  String get food_serving_size => '份量';

  @override
  String get food_serving_grams => '份量（克）';

  @override
  String get food_number_servings => '份数';

  @override
  String get food_calories_per_serving => '每份热量';

  @override
  String get food_recipe_ingredients => '成分';

  @override
  String get food_recipe_add_ingredient => '添加成分';

  @override
  String get food_recipe_directions => '说明和注意事项';

  @override
  String get food_recipe_total => '总食谱营养';

  @override
  String get food_recipe_per_serving => '每份营养';

  @override
  String get food_recipe_saved_toast => '自定义食物保存成功！';

  @override
  String get food_barcode_found => '产品找到了！';

  @override
  String get food_barcode_not_found_desc => '我们在开放数据库中找不到此条形码。您可以将其添加为定制食品。';

  @override
  String get food_add_custom_btn => '添加定制食品';

  @override
  String get food_scan_again => '再次扫描';

  @override
  String get food_review_items => '检查检测到的食品';

  @override
  String get food_review_hint => '调整数量或删除任何无法识别的项目';

  @override
  String get food_log_selected => '记录选定的食物';

  @override
  String get food_favourites_title => '最喜欢的食物';

  @override
  String get food_recent_title => '最近吃的食物';

  @override
  String get food_no_favourites => '还没有最喜欢的食物。点击任何食物上的心即可保存在这里。';

  @override
  String get food_no_recents => '未找到最近记录的食物。';

  @override
  String get food_nutrition_details_title => '每日营养详情';

  @override
  String get food_macro_protein_label => '蛋白质分解';

  @override
  String get food_macro_carbs_label => '碳水化合物分解';

  @override
  String get food_macro_fat_label => '脂肪分解';

  @override
  String get food_macro_fiber_label => '纤维分解';

  @override
  String get food_daily_target_comparison => '目标比较';

  @override
  String food_target_label(Object target) {
    return '目标：$target';
  }

  @override
  String get food_edit_entry => '编辑日记条目';

  @override
  String get food_delete_entry => '删除条目';

  @override
  String food_grams_short(Object grams) {
    return '$grams 克';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal 千卡';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current 共 $target 毫升';
  }

  @override
  String get water_intake_history => '今天的水日志';

  @override
  String get water_no_logs_today => '今天还没有积水。补水并点击快速添加按钮！';

  @override
  String get water_adjust_goal => '调整每日目标';

  @override
  String get health_connect_banner => '连接到 Health Connect';

  @override
  String get health_vitals_summary => '每日健康要点';

  @override
  String get health_latest_heart_rate => '最新心率';

  @override
  String get health_latest_bp => '血压';

  @override
  String get health_latest_spo2 => '血氧';

  @override
  String get health_latest_glucose => '血糖';

  @override
  String get health_latest_weight => '重量';

  @override
  String get health_latest_sleep => '睡眠时间';

  @override
  String get health_add_manual => '添加手动测量';

  @override
  String get health_history_trends => '历史趋势';

  @override
  String get health_sync_success => '健康数据同步成功！';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours 小时 $mins 分钟';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val 公斤';
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
    return '$systolic / $diastolic 毫米汞柱';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val 毫克/分升';
  }

  @override
  String get health_devices_title => '连接设备和可穿戴设备';

  @override
  String get health_devices_desc => '管理配对的智能手表、健身追踪器和健康传感器。';

  @override
  String get health_workout_editor_title => '编辑锻炼';

  @override
  String get health_workout_name_label => '锻炼名称';

  @override
  String get health_workout_duration_label => '持续时间（分钟）';

  @override
  String get health_workout_calories_label => '估计卡路里（千卡）';

  @override
  String get health_workout_date_label => '日期和时间';

  @override
  String get plan_daily_wellness_roadmap => '您的个性化路线图';

  @override
  String get plan_morning_routine => '早晨例行公事';

  @override
  String get plan_afternoon_routine => '午间健康';

  @override
  String get plan_evening_routine => '傍晚放松';

  @override
  String get plan_coach_badge => '布卢米人工智能教练';

  @override
  String get plan_weekly_overview => '7 天健康焦点';

  @override
  String get plan_targets_title => '健康目标';

  @override
  String get plan_calorie_budget_label => '每日卡路里预算';

  @override
  String get plan_water_budget_label => '每日饮水目标';

  @override
  String get plan_step_budget_label => '每日步数目标';

  @override
  String get plan_macro_split_label => '宏量营养素比例';

  @override
  String get profile_personal_details => '个人资料';

  @override
  String get profile_body_stats => '身体测量';

  @override
  String get profile_app_preferences => '首选项和应用程序设置';

  @override
  String get profile_edit_name_hint => '你的名字';

  @override
  String profile_edit_height_hint(Object unit) {
    return '高度 ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return '重量 ($unit)';
  }

  @override
  String get profile_edit_age_hint => '年龄';

  @override
  String get profile_gender_male => '男';

  @override
  String get profile_gender_female => '女';

  @override
  String get profile_gender_other => '其他/不想说';

  @override
  String get profile_activity_sedentary => '久坐（很少或没有运动）';

  @override
  String get profile_activity_light => '轻度活动（每周 1-3 天）';

  @override
  String get profile_activity_moderate => '中等活跃（每周 3-5 天）';

  @override
  String get profile_activity_very => '非常活跃（每周 6-7 天）';

  @override
  String get settings_wear_os_header => 'Wear OS 配套应用程序';

  @override
  String get settings_wear_os_desc =>
      '在您的 Wear OS 手表上安装 Bloomi 磁贴和复杂功能，即可查看卡路里、水和步数。';

  @override
  String get settings_widgets_header => '交互式 Android 小部件';

  @override
  String get settings_widgets_desc => '将实时小部件固定在设备主屏幕上以进行即时更新。';

  @override
  String get settings_about_header => '关于布卢米';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '建造 100';

  @override
  String get settings_about_credits => '精心打造，注重专注、健康的生活。';

  @override
  String get settings_terms_header => '条款和条件';

  @override
  String get settings_privacy_header => '隐私政策';

  @override
  String get settings_delete_header => '删除帐户和数据';

  @override
  String get settings_delete_warning => '此操作无法撤消。您的所有膳食、锻炼、生命体征和个人资料都将被永久删除。';

  @override
  String get settings_delete_confirm_btn => '永久删除';

  @override
  String get onboard_welcome_headline => '欢迎来到布卢米✨';

  @override
  String get onboard_welcome_tagline => '围绕您的生活而设计的温和、专注的健康追踪。';

  @override
  String get onboard_step_about => '关于你';

  @override
  String get onboard_step_goals => '你的目标';

  @override
  String get onboard_step_lifestyle => '日常习惯';

  @override
  String get onboard_step_permissions => '权限';

  @override
  String get onboard_step_plan => '准备好了！';

  @override
  String get onboard_health_connect_perm => '健康连接访问';

  @override
  String get onboard_step_sensors_perm => '计步器传感器';

  @override
  String get onboard_notif_perm => '贴心提醒和通知';

  @override
  String get onboard_camera_perm => '相机（条形码和食品扫描仪）';

  @override
  String get onboard_grant_permissions => '授予权限';

  @override
  String get onboard_continue_dashboard => '打开仪表板';

  @override
  String get notif_channel_hydration_name => '保湿助推';

  @override
  String get notif_channel_hydration_desc => '全天温和喝水提醒';

  @override
  String get notif_channel_nutrition_name => '膳食和营养提醒';

  @override
  String get notif_channel_nutrition_desc => '早餐、午餐和晚餐提醒提醒';

  @override
  String get notif_channel_steps_name => '步骤里程碑';

  @override
  String get notif_channel_steps_desc => '达到每日步数目标时庆祝';

  @override
  String get notif_channel_vitals_name => '健康与生命体征检查';

  @override
  String get notif_channel_vitals_desc => '体重和睡前放松提醒';

  @override
  String get notif_action_log_water => '💧原木+250ml';

  @override
  String get notif_action_snooze => '贪睡 15m';

  @override
  String get notif_action_log_meal => '🥗 记录膳食';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get app_name => '布魯米';

  @override
  String get nav_home => '首页';

  @override
  String get nav_today => '今天';

  @override
  String get nav_plan => '计划';

  @override
  String get nav_food => '饮食';

  @override
  String get nav_food_diary => '饮食日记';

  @override
  String get nav_workout => '运动记录';

  @override
  String get nav_health => '健康';

  @override
  String get nav_profile => '个人资料';

  @override
  String get save => '保存';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get done => '完成';

  @override
  String get close => '关闭';

  @override
  String get back => '返回';

  @override
  String get next => '下一步';

  @override
  String get continue_btn => '继续';

  @override
  String get confirm => '确认';

  @override
  String get search => '搜索';

  @override
  String get filter => '筛选';

  @override
  String get all => '全部';

  @override
  String get active => '活跃';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get tomorrow => '明天';

  @override
  String get add => '添加';

  @override
  String get remove => '移除';

  @override
  String get refresh => '刷新';

  @override
  String get retry => '重试';

  @override
  String get error => '错误';

  @override
  String get success => '成功';

  @override
  String get loading => '加载中...';

  @override
  String get no_data => '暂无数据';

  @override
  String get offline => '离线模式';

  @override
  String get offline_sub => '重新联网后将自动同步';

  @override
  String get undo => '撤銷';

  @override
  String get portion => '部分';

  @override
  String get quantity => '數量';

  @override
  String get unit => '單位';

  @override
  String get clear => '清除';

  @override
  String get select => '選擇';

  @override
  String get apply => '申請';

  @override
  String get reset => '重置';

  @override
  String get ok => '好的';

  @override
  String get yes => '是的';

  @override
  String get no => '否';

  @override
  String get optional => '可選';

  @override
  String get calories => '卡路里';

  @override
  String get protein => '蛋白质';

  @override
  String get carbs => '碳水化合物';

  @override
  String get fat => '脂肪';

  @override
  String get fiber => '膳食纤维';

  @override
  String get water => '水';

  @override
  String get steps => '步数';

  @override
  String get kcal => '千卡';

  @override
  String get grams => '克';

  @override
  String get milliliters => '毫升';

  @override
  String get kilograms => '公斤';

  @override
  String get pounds => '磅';

  @override
  String get centimeters => '公分';

  @override
  String get inches => '在';

  @override
  String get bpm => '節拍數';

  @override
  String get hours => '小時';

  @override
  String get minutes => '分分鐘';

  @override
  String get serving => '服務';

  @override
  String get servings => '份量';

  @override
  String get serving_size => '份量';

  @override
  String get per_100g => '每100克';

  @override
  String get india => '印度';

  @override
  String get asia => '亞洲';

  @override
  String get europe => '歐洲';

  @override
  String get middle_east => '中東';

  @override
  String get africa => '非洲';

  @override
  String get americas => '美洲';

  @override
  String get home_title => '首页';

  @override
  String get home_greeting_morning => '早上好';

  @override
  String get home_greeting_afternoon => '下午好';

  @override
  String get home_greeting_evening => '晚上好';

  @override
  String get home_streak_title => '绽放连续打卡';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count天连续打卡',
      one: '1天连续打卡',
      zero: '0天连续打卡',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => '已消耗';

  @override
  String get home_calories_budget => '卡路里预算';

  @override
  String home_calories_remaining(Object kcal) {
    return '剩余 $kcal 千卡';
  }

  @override
  String get home_water_title => '每日饮水';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target 毫升';
  }

  @override
  String get home_steps_title => '行走步数';

  @override
  String get home_quick_actions => '快捷操作';

  @override
  String get home_log_meal => '记录饮食';

  @override
  String get home_log_water => '记录饮水';

  @override
  String get home_log_workout => '记录运动';

  @override
  String get home_log_weight => '记录体重';

  @override
  String get home_insights_title => '今日洞察';

  @override
  String get home_quote => '每一个健康的微小选择，都在悄悄改变人生。';

  @override
  String get home_ai_coach_tip => 'Bloomi AI健康教练';

  @override
  String get home_surroundings => '环境与空气';

  @override
  String get home_notifications => '通知';

  @override
  String get home_daily_score => '每日健康评分';

  @override
  String get home_view_all => '查看全部';

  @override
  String get food_diary_title => '饮食日记';

  @override
  String get food_breakfast => '早餐';

  @override
  String get food_lunch => '午餐';

  @override
  String get food_dinner => '晚餐';

  @override
  String get food_snacks => '加餐';

  @override
  String get food_add_food => '添加食物';

  @override
  String get food_edit_food => '编辑食物';

  @override
  String get food_add_breakfast => '添加早餐';

  @override
  String get food_add_lunch => '加入午餐';

  @override
  String get food_add_dinner => '添加晚餐';

  @override
  String get food_add_snack => '添加零食';

  @override
  String get food_total_calories => '总卡路里';

  @override
  String get food_empty_meal => '尚未記錄這頓飯的食物';

  @override
  String get food_empty_diary => '沒有記錄這一天的膳食';

  @override
  String get food_log_first_meal => '點擊+記錄您的第一頓美味佳餚';

  @override
  String get food_quick_add => '快速添加';

  @override
  String get food_search_hint => '搜尋菜餚、水果、木豆、烤肉...';

  @override
  String get food_custom_recipe => '客製化食品和食譜';

  @override
  String get food_scan_barcode => '掃描條碼';

  @override
  String get food_camera_scan => '人工智慧食品掃描儀';

  @override
  String get food_recent => '最近吃的食物';

  @override
  String get food_favourites => '收藏夾';

  @override
  String get food_macro_summary => '宏量營養素分解';

  @override
  String get food_delete_meal_confirm => '您確定要刪除該項目嗎？';

  @override
  String get food_item_deleted => '食品已移除';

  @override
  String get food_remaining => '剩餘';

  @override
  String get food_consumed => '消耗的';

  @override
  String food_of_target(Object target) {
    return '$target 千卡';
  }

  @override
  String get foodSearch_title => '搜尋食品';

  @override
  String get foodSearch_scan_barcode => '掃描條碼';

  @override
  String get foodSearch_take_photo => '拍攝食物照片';

  @override
  String get foodSearch_custom_food => '創建客製化食品';

  @override
  String get foodSearch_recent_searches => '最近的搜尋';

  @override
  String get foodSearch_popular => '熱門菜餚';

  @override
  String get foodSearch_no_results => '沒有符合您搜尋的食物';

  @override
  String get barcode_title => '條碼掃描儀';

  @override
  String get barcode_align => '將條碼對齊相機框架內';

  @override
  String get barcode_not_found => '在資料庫中找不到產品';

  @override
  String get barcode_premium_feature => 'Bloomi Pro 提供條碼掃描功能';

  @override
  String get camera_title => '人工智慧食品掃描儀';

  @override
  String get camera_tap_hint => '為您的菜餚拍一張清晰的照片';

  @override
  String get camera_analysing => '正在分析餐盤...';

  @override
  String get camera_detected => '偵測到的項目';

  @override
  String get camera_flash => '切換閃光燈';

  @override
  String get camera_retake => '重拍照片';

  @override
  String get camera_confirm_food => '確認項目';

  @override
  String get customFood_title => '客製化食品和食譜';

  @override
  String get customFood_name_hint => '菜餚或食材名稱';

  @override
  String get customFood_calories_hint => '卡路里（千卡）';

  @override
  String get customFood_protein_hint => '蛋白質（克）';

  @override
  String get customFood_carbs_hint => '碳水化合物（克）';

  @override
  String get customFood_fat_hint => '脂肪（克）';

  @override
  String get customFood_save => '保存食譜';

  @override
  String get water_tracker_title => '饮水追踪';

  @override
  String get water_daily_target => '每日補水目標';

  @override
  String get water_logged_today => '今天登入';

  @override
  String get water_add_glass => '+250 毫升玻璃杯';

  @override
  String get water_add_bottle => '+500毫升瓶';

  @override
  String get water_custom_amount => '客製化金額';

  @override
  String get water_reminder_tip => '全天定期喝水以獲得穩定的能量。';

  @override
  String water_logged_toast(Object amount) {
    return '記錄 $amount 毫升水 💧';
  }

  @override
  String get workout_title => '运动记录';

  @override
  String get workout_add_exercise => '添加鍛鍊';

  @override
  String get workout_cardio => '有氧運動';

  @override
  String get workout_strength => '實力';

  @override
  String get workout_yoga => '瑜珈與靈活性';

  @override
  String get workout_duration => '持續時間';

  @override
  String get workout_intensity => '強度';

  @override
  String get workout_calories_burned => '燃燒的卡路里';

  @override
  String get workout_empty => '今天沒有記錄鍛煉';

  @override
  String get workout_save_success => '鍛鍊保存成功！';

  @override
  String get workout_type => '鍛鍊類型';

  @override
  String get workout_notes => '筆記與思考';

  @override
  String get health_overview_title => '健康与体征';

  @override
  String get health_heart_rate => '心率';

  @override
  String get health_blood_oxygen => '血氧 (SpO2)';

  @override
  String get health_blood_pressure => '血壓';

  @override
  String get health_blood_glucose => '血糖';

  @override
  String get health_body_temperature => '體溫';

  @override
  String get health_sleep_tracking => '睡眠追蹤';

  @override
  String get health_weight_tracking => '體重和身體組成';

  @override
  String get health_waist_hip => '腰臀比';

  @override
  String get health_devices_hub => '設備和智慧手錶中心';

  @override
  String get health_sync_now => '同步健康數據';

  @override
  String health_last_synced(Object time) {
    return '上次同步：$time';
  }

  @override
  String get health_manual_entry => '手動健康錄入';

  @override
  String get health_metric_detail => '指標詳細信息';

  @override
  String get health_connected_sensors => '互聯健康感測器';

  @override
  String get plan_title => '每日计划';

  @override
  String get plan_weekly_title => '每週健康計劃';

  @override
  String get plan_calorie_target => '卡路里目標';

  @override
  String get plan_water_target => '水合目標';

  @override
  String get plan_step_target => '步數目標';

  @override
  String get plan_sleep_target => '睡眠目標';

  @override
  String get plan_meal_suggestions => '膳食建議';

  @override
  String get plan_healthy_habits => '健康習慣和建議';

  @override
  String get plan_coach_advice => 'Bloomi AI 教練推薦';

  @override
  String get plan_generated_title => '個性化的日程安排';

  @override
  String get profile_title => '个人资料';

  @override
  String get profile_edit => '編輯個人資料';

  @override
  String get profile_name => '名稱';

  @override
  String get profile_age => '年齡';

  @override
  String get profile_gender => '性別';

  @override
  String get profile_height => '身高';

  @override
  String get profile_weight => '重量';

  @override
  String get profile_goal => '主要目標';

  @override
  String get profile_activity_level => '活動水準';

  @override
  String get profile_stats => '我的健康統計';

  @override
  String get profile_saved => '個人資料更新成功';

  @override
  String get profile_bmi => '身體質量指數 (BMI)';

  @override
  String get profile_membership => '會員資格';

  @override
  String get settings => '设置';

  @override
  String get preferences_habits => '偏好与习惯';

  @override
  String get appearance_theme => '外观与主题';

  @override
  String get appearance_theme_sub => '深色、淺色、系統模式和應用程式背景選項';

  @override
  String get permissions => '權限和系統訪問';

  @override
  String get permissions_sub => 'Health Connect、步數感測器、GPS、通知和攝影機';

  @override
  String get reminders_notifications => '提醒与通知';

  @override
  String get reminders_sub => '用餐時間、水、體重登記和就寢提醒';

  @override
  String get units_of_measurement => '计量单位';

  @override
  String get units_sub => '公制（公斤、公分、毫升、公里）或英制（磅、英尺/英吋、液量盎司）';

  @override
  String get app_language => '应用语言';

  @override
  String get language_sub => '英語、हिन्दी（印地語）、印度英語和 195 多種全球語言';

  @override
  String get home_screen_widgets => '主螢幕小工具';

  @override
  String get widgets_sub => '即時 Android 小工具：中心、步驟、水、營養和吉祥物';

  @override
  String get wear_os_watch_app => 'Wear OS 手錶應用';

  @override
  String get wear_os_sub => '智慧手錶伴侶、板塊、複雜功能和即時生命體徵';

  @override
  String get goals_wellness => '目標和健康見解';

  @override
  String get nutrition_targets => '營養目標和宏觀分割';

  @override
  String get nutrition_targets_sub => '卡路里目標、蛋白質、碳水化合物、脂肪和水目標';

  @override
  String get weekly_recap => '每週健康回顧';

  @override
  String get weekly_recap_sub => '7 天平均卡路里、宏觀比率和最佳一天';

  @override
  String get streaks_milestones => '連勝與里程碑';

  @override
  String get streaks_sub => '活躍的開花條紋、徽章和成就';

  @override
  String get connected_devices => '互聯設備和生態系統';

  @override
  String get devices_hub => '設備和智慧手錶中心';

  @override
  String get devices_hub_sub =>
      'Health Connect、Galaxy Watch、Pixel Watch、Garmin';

  @override
  String get surroundings_weather => '周圍環境和天氣';

  @override
  String get surroundings_sub => '空氣品質 (AQI)、紫外線指數和天氣補水提示';

  @override
  String get bloomi_pro => 'Bloomi 專業版訂閱';

  @override
  String get bloomi_pro_sub => 'AI 計劃教練、5 個主螢幕小部件和生命體徵跟踪';

  @override
  String get about_security => '關於和安全';

  @override
  String get about_bloomi => '關於布魯米';

  @override
  String get about_bloomi_sub => '建構規範、版本、屬性';

  @override
  String get privacy_policy => '隱私權政策';

  @override
  String get privacy_policy_sub => '離線優先的設備上資料架構';

  @override
  String get terms_conditions => '條款及條件';

  @override
  String get terms_conditions_sub => '服務條款與健康指南';

  @override
  String get delete_account => '刪除帳戶和數據';

  @override
  String get delete_account_sub => '不可逆地刪除本機 SQLite 資料和雲端備份';

  @override
  String get healthy_habits => '養成溫和、持久的健康習慣';

  @override
  String get all_logs => '我的追蹤數據和日誌';

  @override
  String get search_language => '搜索语言...';

  @override
  String get languages_available => '可用语言';

  @override
  String get no_matching_languages => '未找到符合的語言';

  @override
  String get try_searching => '嘗試按母語文字或英文拼字進行搜索';

  @override
  String get partially_translated => '部分翻译';

  @override
  String get complete_translation => '已完成';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return '已将语言设置为 $name ($nativeName)';
  }

  @override
  String get surroundings_title => '週邊環境';

  @override
  String get surroundings_aqi => '空氣品質指數';

  @override
  String get surroundings_uv => '紫外線指數';

  @override
  String get surroundings_temp => '溫度';

  @override
  String get surroundings_humidity => '濕度';

  @override
  String get surroundings_hydration_advice => '在當前天氣條件下保持充足的水分。';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => '搜尋食物';

  @override
  String get food_quick_barcode => '掃描條碼👑';

  @override
  String get food_quick_water => '加水';

  @override
  String get food_quick_custom => '客製化食品';

  @override
  String get surroundings_good => '好';

  @override
  String get surroundings_moderate => '中等';

  @override
  String get surroundings_unhealthy => '不健康';

  @override
  String get notifications_title => '通知和提醒';

  @override
  String get notifications_empty => '沒有新通知';

  @override
  String get notifications_mark_read => '全部標記為已讀';

  @override
  String get notifications_clear => '全部清除';

  @override
  String get reminders => '提醒設定';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => '早餐提醒🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return '早安！是時候在 $time 享用營養早餐了。';
  }

  @override
  String get reminders_lunch_title => '午餐提醒🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '暫停一下，在 $time 享用平衡、用心的午餐。';
  }

  @override
  String get reminders_dinner_title => '晚餐提醒🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '是時候在 $time 享用一頓清淡、令人滿意的晚餐了。';
  }

  @override
  String get reminders_water_title => '補水助推💧';

  @override
  String reminders_water_body(Object time) {
    return '是時候喝一杯新鮮的水了！ ($time)';
  }

  @override
  String get reminders_weight_title => '每週稱重⚖️';

  @override
  String reminders_weight_body(Object time) {
    return '在 Bloomi ($time) 上追蹤您每週的身體指標。';
  }

  @override
  String get reminders_sleep_title => '睡前放鬆🌙';

  @override
  String reminders_sleep_body(Object time) {
    return '放鬆身心，準備安寧的睡眠 ($time)。';
  }

  @override
  String get onboard_welcome => '歡迎來到布魯米';

  @override
  String get onboard_sub => '您友好的、線下優先的健康和營養伴侶。';

  @override
  String get onboard_get_started => '開始使用';

  @override
  String get onboard_sign_in => '登入';

  @override
  String get onboard_skip => '跳過';

  @override
  String get onboard_choose_goal => '您的主要健康目標是什麼？';

  @override
  String get onboard_goal_weight_loss => '溫和減肥';

  @override
  String get onboard_goal_muscle => '肌肉增益和力量';

  @override
  String get onboard_goal_energy => '每日能量與活力';

  @override
  String get onboard_goal_habits => '健康正念飲食';

  @override
  String get onboard_about_you => '告訴我們你自己';

  @override
  String get onboard_lifestyle => '你的日常生活';

  @override
  String get onboard_permissions_title => '權限和系統訪問';

  @override
  String get onboard_permissions_sub => '授予對同步步驟、鍛鍊和提醒的存取權限。';

  @override
  String get onboard_plan_ready_title => '您的客製化計劃已準備就緒！';

  @override
  String get onboard_plan_ready_sub => '我們專門為您制定了溫和、個人化的營養和健康路線圖。';

  @override
  String get onboard_enter_bloomi => '布魯米登場';

  @override
  String get insights_weekly_report => '每週健康回顧';

  @override
  String insights_best_day(Object day) {
    return '最佳一致性日：$day';
  }

  @override
  String get insights_streaks_badges => '連勝與里程碑';

  @override
  String insights_unlocked_on(Object date) {
    return '於 $date 解鎖';
  }

  @override
  String get insights_keep_going => '保持驚人的進步！';

  @override
  String get widgets_title => '主螢幕小工具';

  @override
  String widgets_active_count(Object count) {
    return '活動小工具：$count';
  }

  @override
  String get widgets_hub_title => '布盧米健康中心';

  @override
  String get widgets_steps_title => '台階和活動環';

  @override
  String get widgets_water_title => '補水快速記錄';

  @override
  String get widgets_mascot_title => '布魯米吉祥物伴侶';

  @override
  String get wear_os_title => 'Wear OS 智慧型手錶';

  @override
  String get wear_os_connected => '連接到手錶';

  @override
  String get wear_os_sync => '同步手錶數據';

  @override
  String get theme_title => '外觀與主題';

  @override
  String get theme_mode => '主題模式';

  @override
  String get theme_light => '光';

  @override
  String get theme_dark => '黑暗';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => '背景調色板';

  @override
  String get units_title => '測量單位';

  @override
  String get units_metric => '公制（公斤、公分、毫升）';

  @override
  String get units_imperial => '英制（磅、英吋、液量盎司）';

  @override
  String get home_unable_load => '无法加载仪表盘';

  @override
  String get home_health_permission_req => '需要 Health Connect 許可';

  @override
  String get home_health_permission_desc =>
      'Bloomi 需要 Health Connect 權限才能即時提取真實步數、心率並同步移動家庭小工具。';

  @override
  String get home_allow_health => '允許 Health Connect';

  @override
  String get home_ready_mindful_day => '开启充满活力的一天吧！✨';

  @override
  String get home_quick_add => '快捷添加';

  @override
  String get home_live_gps => '实时定位';

  @override
  String get home_calories_remaining_label => '剩余卡路里';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return '已摄入: $consumed / $target 千卡';
  }

  @override
  String get home_tap_water_tracker => '点击进入饮水记录 💧';

  @override
  String get home_water_goal_reached => '已达成今日饮水目标！🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '距离今日目标还差 $remaining 毫升';
  }

  @override
  String get home_details => '详情';

  @override
  String get home_upgrade_plan_desc => '升級以解鎖個人化每日目標和人工智慧計劃';

  @override
  String get home_unlock => '解鎖👑';

  @override
  String get home_quick_log_hint => '快速記錄健康條目';

  @override
  String get food_serving_size => '份量';

  @override
  String get food_serving_grams => '份量（克）';

  @override
  String get food_number_servings => '份數';

  @override
  String get food_calories_per_serving => '每份熱量';

  @override
  String get food_recipe_ingredients => '成分';

  @override
  String get food_recipe_add_ingredient => '加入成分';

  @override
  String get food_recipe_directions => '說明和注意事項';

  @override
  String get food_recipe_total => '總食譜營養';

  @override
  String get food_recipe_per_serving => '每份營養';

  @override
  String get food_recipe_saved_toast => '自訂食物保存成功！';

  @override
  String get food_barcode_found => '產品找到了！';

  @override
  String get food_barcode_not_found_desc => '我們在開放資料庫中找不到此條碼。您可以將其添加為定制食品。';

  @override
  String get food_add_custom_btn => '添加客製化食品';

  @override
  String get food_scan_again => '再次掃描';

  @override
  String get food_review_items => '檢查檢測到的食品';

  @override
  String get food_review_hint => '調整數量或刪除任何無法識別的項目';

  @override
  String get food_log_selected => '記錄選定的食物';

  @override
  String get food_favourites_title => '最喜歡的食物';

  @override
  String get food_recent_title => '最近吃的食物';

  @override
  String get food_no_favourites => '還沒有最喜歡的食物。點擊任何食物上的心即可保存在這裡。';

  @override
  String get food_no_recents => '未找到最近記錄的食物。';

  @override
  String get food_nutrition_details_title => '每日營養詳情';

  @override
  String get food_macro_protein_label => '蛋白質分解';

  @override
  String get food_macro_carbs_label => '碳水化合物分解';

  @override
  String get food_macro_fat_label => '脂肪分解';

  @override
  String get food_macro_fiber_label => '纖維分解';

  @override
  String get food_daily_target_comparison => '目標比較';

  @override
  String food_target_label(Object target) {
    return '目標：$target';
  }

  @override
  String get food_edit_entry => '編輯日記條目';

  @override
  String get food_delete_entry => '刪除條目';

  @override
  String food_grams_short(Object grams) {
    return '$grams 克';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal 千卡';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current 共 $target 毫升';
  }

  @override
  String get water_intake_history => '今天的水日誌';

  @override
  String get water_no_logs_today => '今天還沒有積水。補水並點擊快速添加按鈕！';

  @override
  String get water_adjust_goal => '調整每日目標';

  @override
  String get health_connect_banner => '連接到 Health Connect';

  @override
  String get health_vitals_summary => '每日健康要點';

  @override
  String get health_latest_heart_rate => '最新心率';

  @override
  String get health_latest_bp => '血壓';

  @override
  String get health_latest_spo2 => '血氧';

  @override
  String get health_latest_glucose => '血糖';

  @override
  String get health_latest_weight => '重量';

  @override
  String get health_latest_sleep => '睡眠時間';

  @override
  String get health_add_manual => '新增手動測量';

  @override
  String get health_history_trends => '歷史趨勢';

  @override
  String get health_sync_success => '健康數據同步成功！';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours 小時 $mins 分鐘';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val 公斤';
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
    return '$systolic / $diastolic 毫米汞柱';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val 毫克/分升';
  }

  @override
  String get health_devices_title => '連接設備和穿戴式裝置';

  @override
  String get health_devices_desc => '管理配對的智慧手錶、健身追蹤器和健康感測器。';

  @override
  String get health_workout_editor_title => '編輯鍛鍊';

  @override
  String get health_workout_name_label => '鍛鍊名稱';

  @override
  String get health_workout_duration_label => '持續時間（分鐘）';

  @override
  String get health_workout_calories_label => '估計卡路里（千卡）';

  @override
  String get health_workout_date_label => '日期和時間';

  @override
  String get plan_daily_wellness_roadmap => '您的個人化路線圖';

  @override
  String get plan_morning_routine => '早晨例行公事';

  @override
  String get plan_afternoon_routine => '午間健康';

  @override
  String get plan_evening_routine => '傍晚放鬆';

  @override
  String get plan_coach_badge => '布盧米人工智慧教練';

  @override
  String get plan_weekly_overview => '7 天健康焦點';

  @override
  String get plan_targets_title => '健康目標';

  @override
  String get plan_calorie_budget_label => '每日卡路里預算';

  @override
  String get plan_water_budget_label => '每日飲水目標';

  @override
  String get plan_step_budget_label => '每日步數目標';

  @override
  String get plan_macro_split_label => '宏量營養素比例';

  @override
  String get profile_personal_details => '個人資料';

  @override
  String get profile_body_stats => '身體測量';

  @override
  String get profile_app_preferences => '首選項和應用程式設置';

  @override
  String get profile_edit_name_hint => '你的名字';

  @override
  String profile_edit_height_hint(Object unit) {
    return '高度 ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return '重 ($unit)';
  }

  @override
  String get profile_edit_age_hint => '年齡';

  @override
  String get profile_gender_male => '男';

  @override
  String get profile_gender_female => '女';

  @override
  String get profile_gender_other => '其他/不想說';

  @override
  String get profile_activity_sedentary => '久坐（很少或沒有運動）';

  @override
  String get profile_activity_light => '輕度活動（每週 1-3 天）';

  @override
  String get profile_activity_moderate => '中等活躍（每週 3-5 天）';

  @override
  String get profile_activity_very => '非常活躍（每週 6-7 天）';

  @override
  String get settings_wear_os_header => 'Wear OS 配對應用程式';

  @override
  String get settings_wear_os_desc =>
      '在您的 Wear OS 手錶上安裝 Bloomi 磁貼和複雜功能，即可查看卡路里、水和步數。';

  @override
  String get settings_widgets_header => '互動式 Android 小工具';

  @override
  String get settings_widgets_desc => '將即時小工具固定在裝置主螢幕上以進行即時更新。';

  @override
  String get settings_about_header => '關於布魯米';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '建造 100';

  @override
  String get settings_about_credits => '精心打造，注重專注、健康的生活。';

  @override
  String get settings_terms_header => '條款與條件';

  @override
  String get settings_privacy_header => '隱私權政策';

  @override
  String get settings_delete_header => '刪除帳戶和數據';

  @override
  String get settings_delete_warning => '此操作無法撤銷。您的所有膳食、運動、生命體徵和個人資料都將永久刪除。';

  @override
  String get settings_delete_confirm_btn => '永久刪除';

  @override
  String get onboard_welcome_headline => '歡迎來到布魯米✨';

  @override
  String get onboard_welcome_tagline => '圍繞您的生活而設計的溫和、專注的健康追蹤。';

  @override
  String get onboard_step_about => '關於你';

  @override
  String get onboard_step_goals => '你的目標';

  @override
  String get onboard_step_lifestyle => '日常習慣';

  @override
  String get onboard_step_permissions => '權限';

  @override
  String get onboard_step_plan => '準備好了！';

  @override
  String get onboard_health_connect_perm => '健康連接訪問';

  @override
  String get onboard_step_sensors_perm => '計步器感測器';

  @override
  String get onboard_notif_perm => '貼心提醒與通知';

  @override
  String get onboard_camera_perm => '相機（條碼和食品掃描器）';

  @override
  String get onboard_grant_permissions => '授予權限';

  @override
  String get onboard_continue_dashboard => '打開儀表板';

  @override
  String get notif_channel_hydration_name => '保濕助推';

  @override
  String get notif_channel_hydration_desc => '全天溫和喝水提醒';

  @override
  String get notif_channel_nutrition_name => '膳食和營養提醒';

  @override
  String get notif_channel_nutrition_desc => '早餐、午餐和晚餐提醒提醒';

  @override
  String get notif_channel_steps_name => '步驟里程碑';

  @override
  String get notif_channel_steps_desc => '達到每日步數目標時慶祝';

  @override
  String get notif_channel_vitals_name => '健康與生命徵象檢查';

  @override
  String get notif_channel_vitals_desc => '體重和睡前放鬆提醒';

  @override
  String get notif_action_log_water => '💧原木+250ml';

  @override
  String get notif_action_snooze => '貪睡 15m';

  @override
  String get notif_action_log_meal => '🥗 記錄膳食';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
