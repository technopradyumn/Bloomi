// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get app_name => '블루미';

  @override
  String get nav_home => '홈';

  @override
  String get nav_today => '오늘';

  @override
  String get nav_plan => '계획';

  @override
  String get nav_food => '음식';

  @override
  String get nav_food_diary => '음식 일기';

  @override
  String get nav_workout => '운동 기록';

  @override
  String get nav_health => '건강';

  @override
  String get nav_profile => '프로필';

  @override
  String get save => '저장';

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get edit => '편집';

  @override
  String get done => '완료';

  @override
  String get close => '닫기';

  @override
  String get back => '뒤로';

  @override
  String get next => '다음';

  @override
  String get continue_btn => '계속';

  @override
  String get confirm => '확인';

  @override
  String get search => '검색';

  @override
  String get filter => '필터';

  @override
  String get all => '모두';

  @override
  String get active => '활성';

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';

  @override
  String get tomorrow => '내일';

  @override
  String get add => '추가';

  @override
  String get remove => '제거';

  @override
  String get refresh => '새로고침';

  @override
  String get retry => '재시도';

  @override
  String get error => '오류';

  @override
  String get success => '성공';

  @override
  String get loading => '로드 중...';

  @override
  String get no_data => '사용 가능한 데이터가 없습니다.';

  @override
  String get offline => '오프라인 모드';

  @override
  String get offline_sub => '다시 연결되면 변경사항이 동기화됩니다.';

  @override
  String get undo => '실행 취소';

  @override
  String get portion => '부분';

  @override
  String get quantity => '수량';

  @override
  String get unit => '단위';

  @override
  String get clear => '지우기';

  @override
  String get select => '선택';

  @override
  String get apply => '적용';

  @override
  String get reset => '재설정';

  @override
  String get ok => '알았어';

  @override
  String get yes => '예';

  @override
  String get no => '아니요';

  @override
  String get optional => '선택사항';

  @override
  String get calories => '칼로리';

  @override
  String get protein => '단백질';

  @override
  String get carbs => '탄수화물';

  @override
  String get fat => '지방';

  @override
  String get fiber => '섬유';

  @override
  String get water => '물';

  @override
  String get steps => '단계';

  @override
  String get kcal => '칼로리';

  @override
  String get grams => '지';

  @override
  String get milliliters => '밀리리터';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => '파운드';

  @override
  String get centimeters => '센티미터';

  @override
  String get inches => '안으로';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => '시간';

  @override
  String get minutes => '분';

  @override
  String get serving => '서빙';

  @override
  String get servings => '인분';

  @override
  String get serving_size => '서빙 크기';

  @override
  String get per_100g => '100g당';

  @override
  String get india => '인도';

  @override
  String get asia => '아시아';

  @override
  String get europe => '유럽';

  @override
  String get middle_east => '중동';

  @override
  String get africa => '아프리카';

  @override
  String get americas => '아메리카';

  @override
  String get home_title => '홈';

  @override
  String get home_greeting_morning => '좋은 아침';

  @override
  String get home_greeting_afternoon => '좋은 오후';

  @override
  String get home_greeting_evening => '안녕하세요';

  @override
  String get home_streak_title => '꽃줄기';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 연속',
      one: '1일 연속',
      zero: '0일 연속',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => '태워짐';

  @override
  String get home_calories_budget => '칼로리 예산';

  @override
  String home_calories_remaining(Object kcal) {
    return '${kcal}kcal 남음';
  }

  @override
  String get home_water_title => '매일 수분공급';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / ${target}ml';
  }

  @override
  String get home_steps_title => '걸은 걸음수';

  @override
  String get home_quick_actions => '빠른 작업';

  @override
  String get home_log_meal => '식사 기록';

  @override
  String get home_log_water => '통나무 물';

  @override
  String get home_log_workout => '운동 기록';

  @override
  String get home_log_weight => '로그 무게';

  @override
  String get home_insights_title => '오늘의 통찰';

  @override
  String get home_quote => '작은 건강한 선택이 꽃피는 변화를 만들어냅니다.';

  @override
  String get home_ai_coach_tip => '블루미 AI 코치';

  @override
  String get home_surroundings => '주변 및 공기';

  @override
  String get home_notifications => '알림';

  @override
  String get home_daily_score => '일일 웰빙 점수';

  @override
  String get home_view_all => '모두 보기';

  @override
  String get food_diary_title => '음식 일기';

  @override
  String get food_breakfast => '아침 식사';

  @override
  String get food_lunch => '점심';

  @override
  String get food_dinner => '저녁 식사';

  @override
  String get food_snacks => '스낵';

  @override
  String get food_add_food => '음식 추가';

  @override
  String get food_edit_food => '음식 편집';

  @override
  String get food_add_breakfast => '아침 식사 추가';

  @override
  String get food_add_lunch => '점심 추가';

  @override
  String get food_add_dinner => '저녁 식사 추가';

  @override
  String get food_add_snack => '간식 추가';

  @override
  String get food_total_calories => '총 칼로리';

  @override
  String get food_empty_meal => '아직 이 식사에 대해 기록된 음식이 없습니다.';

  @override
  String get food_empty_diary => '이 날에는 기록된 식사가 없습니다.';

  @override
  String get food_log_first_meal => '+를 탭하여 맛있는 첫 식사를 기록하세요.';

  @override
  String get food_quick_add => '빠른 추가';

  @override
  String get food_search_hint => '요리, 과일, 달, 로티 검색...';

  @override
  String get food_custom_recipe => '맞춤형 음식 및 레시피';

  @override
  String get food_scan_barcode => '바코드 스캔';

  @override
  String get food_camera_scan => 'AI 식품 스캐너';

  @override
  String get food_recent => '최근 음식';

  @override
  String get food_favourites => '즐겨찾기';

  @override
  String get food_macro_summary => '다량 영양소 분석';

  @override
  String get food_delete_meal_confirm => '이 항목을 제거하시겠습니까?';

  @override
  String get food_item_deleted => '음식 항목이 삭제되었습니다.';

  @override
  String get food_remaining => '남은';

  @override
  String get food_consumed => '소모됨';

  @override
  String food_of_target(Object target) {
    return '${target}kcal 중';
  }

  @override
  String get foodSearch_title => '음식 검색';

  @override
  String get foodSearch_scan_barcode => '바코드 스캔';

  @override
  String get foodSearch_take_photo => '스냅 음식 사진';

  @override
  String get foodSearch_custom_food => '맞춤형 음식 만들기';

  @override
  String get foodSearch_recent_searches => '최근 검색';

  @override
  String get foodSearch_popular => '인기 요리';

  @override
  String get foodSearch_no_results => '검색어와 일치하는 음식이 없습니다.';

  @override
  String get barcode_title => '바코드 스캐너';

  @override
  String get barcode_align => '카메라 프레임 내부에 바코드를 정렬하세요.';

  @override
  String get barcode_not_found => '데이터베이스에서 제품을 찾을 수 없습니다.';

  @override
  String get barcode_premium_feature => 'Bloomi Pro로 바코드 스캐닝 가능';

  @override
  String get camera_title => 'AI 식품 스캐너';

  @override
  String get camera_tap_hint => '요리 사진을 선명하게 찍으세요.';

  @override
  String get camera_analysing => '음식 접시 분석 중...';

  @override
  String get camera_detected => '감지된 항목';

  @override
  String get camera_flash => '플래시 전환';

  @override
  String get camera_retake => '사진 다시 찍기';

  @override
  String get camera_confirm_food => '품목 확인';

  @override
  String get customFood_title => '맞춤형 음식 및 레시피';

  @override
  String get customFood_name_hint => '요리 또는 재료 이름';

  @override
  String get customFood_calories_hint => '칼로리 (kcal)';

  @override
  String get customFood_protein_hint => '단백질(g)';

  @override
  String get customFood_carbs_hint => '탄수화물(g)';

  @override
  String get customFood_fat_hint => '지방(g)';

  @override
  String get customFood_save => '레시피 저장';

  @override
  String get water_tracker_title => '물 추적기';

  @override
  String get water_daily_target => '일일 수분 섭취 목표';

  @override
  String get water_logged_today => '오늘 기록됨';

  @override
  String get water_add_glass => '+250ml 유리';

  @override
  String get water_add_bottle => '+500ml 병';

  @override
  String get water_custom_amount => '맞춤 금액';

  @override
  String get water_reminder_tip => '꾸준한 에너지를 위해 하루 종일 정기적으로 물을 마시십시오.';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml의 물을 기록했습니다 💧';
  }

  @override
  String get workout_title => '운동 기록';

  @override
  String get workout_add_exercise => '운동 추가';

  @override
  String get workout_cardio => '심장강화';

  @override
  String get workout_strength => '힘';

  @override
  String get workout_yoga => '요가와 유연성';

  @override
  String get workout_duration => '기간';

  @override
  String get workout_intensity => '강도';

  @override
  String get workout_calories_burned => '칼로리 소모량';

  @override
  String get workout_empty => '오늘 기록된 운동이 없습니다.';

  @override
  String get workout_save_success => '운동이 성공적으로 저장되었습니다!';

  @override
  String get workout_type => '운동 유형';

  @override
  String get workout_notes => '메모 및 반성';

  @override
  String get health_overview_title => '건강 및 필수품';

  @override
  String get health_heart_rate => '심박수';

  @override
  String get health_blood_oxygen => '혈액 산소(SpO2)';

  @override
  String get health_blood_pressure => '혈압';

  @override
  String get health_blood_glucose => '혈당';

  @override
  String get health_body_temperature => '체온';

  @override
  String get health_sleep_tracking => '수면 추적';

  @override
  String get health_weight_tracking => '체중 및 신체 구성';

  @override
  String get health_waist_hip => '허리-엉덩이 비율';

  @override
  String get health_devices_hub => '장치 및 스마트워치 허브';

  @override
  String get health_sync_now => '건강 데이터 동기화';

  @override
  String health_last_synced(Object time) {
    return '마지막 동기화: $time';
  }

  @override
  String get health_manual_entry => '수동 건강 항목';

  @override
  String get health_metric_detail => '측정항목 세부정보';

  @override
  String get health_connected_sensors => '연결된 건강 센서';

  @override
  String get plan_title => '일일 계획';

  @override
  String get plan_weekly_title => '주간 웰니스 플랜';

  @override
  String get plan_calorie_target => '칼로리 목표';

  @override
  String get plan_water_target => '수분 공급 목표';

  @override
  String get plan_step_target => '단계 목표';

  @override
  String get plan_sleep_target => '수면 목표';

  @override
  String get plan_meal_suggestions => '식사 제안';

  @override
  String get plan_healthy_habits => '건강한 습관 및 팁';

  @override
  String get plan_coach_advice => 'Bloomi AI 코치 추천';

  @override
  String get plan_generated_title => '맞춤형 일일 일정';

  @override
  String get profile_title => '프로필';

  @override
  String get profile_edit => '프로필 편집';

  @override
  String get profile_name => '이름';

  @override
  String get profile_age => '나이';

  @override
  String get profile_gender => '성별';

  @override
  String get profile_height => '신장';

  @override
  String get profile_weight => '무게';

  @override
  String get profile_goal => '기본 목표';

  @override
  String get profile_activity_level => '활동 수준';

  @override
  String get profile_stats => '내 웰빙 통계';

  @override
  String get profile_saved => '프로필이 업데이트되었습니다.';

  @override
  String get profile_bmi => '체질량지수(BMI)';

  @override
  String get profile_membership => '회원';

  @override
  String get settings => '설정';

  @override
  String get preferences_habits => '선호사항 및 습관';

  @override
  String get appearance_theme => '외관 및 테마';

  @override
  String get appearance_theme_sub => '어둡게, 밝게, 시스템 모드 및 앱 배경 옵션';

  @override
  String get permissions => '권한 및 시스템 액세스';

  @override
  String get permissions_sub => '헬스 커넥트, 만보 센서, GPS, 알림 및 카메라';

  @override
  String get reminders_notifications => '미리 알림 및 알림';

  @override
  String get reminders_sub => '식사 시간, 물, 체중 확인 및 취침 시간 알림';

  @override
  String get units_of_measurement => '측정 단위';

  @override
  String get units_sub => '미터법(kg, cm, ml, km) 또는 영국식(lbs, ft/in, fl oz)';

  @override
  String get app_language => '앱 언어';

  @override
  String get language_sub => '영어, 힌디어(힌디어), 인도어 및 195개 이상의 글로벌 언어';

  @override
  String get home_screen_widgets => '홈 화면 위젯';

  @override
  String get widgets_sub => '라이브 Android 위젯: 허브, 걸음 수, 물, 영양 및 마스코트';

  @override
  String get wear_os_watch_app => 'Wear OS Watch 앱';

  @override
  String get wear_os_sub => '스마트워치 컴패니언, 타일, 컴플리케이션 및 라이브 바이탈';

  @override
  String get goals_wellness => '목표 및 웰빙 통찰력';

  @override
  String get nutrition_targets => '영양 목표 및 매크로 분할';

  @override
  String get nutrition_targets_sub => '칼로리 목표, 단백질, 탄수화물, 지방 및 수분 목표';

  @override
  String get weekly_recap => '주간 웰니스 요약';

  @override
  String get weekly_recap_sub => '7일 칼로리 평균, 매크로 비율 및 최적의 날';

  @override
  String get streaks_milestones => '연속 기록 및 마일스톤';

  @override
  String get streaks_sub => '활발한 꽃무늬, 배지, 업적';

  @override
  String get connected_devices => '연결된 장치 및 생태계';

  @override
  String get devices_hub => '장치 및 스마트워치 허브';

  @override
  String get devices_hub_sub => '헬스 커넥트, 갤럭시 워치, 픽셀 워치, 가민';

  @override
  String get surroundings_weather => '주변 환경 및 날씨';

  @override
  String get surroundings_sub => '공기 질(AQI), UV 지수 및 날씨 수분 공급 팁';

  @override
  String get bloomi_pro => 'Bloomi 프로 구독';

  @override
  String get bloomi_pro_sub => 'AI Plan Coach, 5개의 홈 화면 위젯 및 필수 정보 추적';

  @override
  String get about_security => '정보 및 보안';

  @override
  String get about_bloomi => '블루미 소개';

  @override
  String get about_bloomi_sub => '빌드 사양, 버전, 속성';

  @override
  String get privacy_policy => '개인 정보 보호 정책';

  @override
  String get privacy_policy_sub => '오프라인 우선, 온디바이스 데이터 아키텍처';

  @override
  String get terms_conditions => '이용약관';

  @override
  String get terms_conditions_sub => '서비스 약관 및 웰빙 가이드라인';

  @override
  String get delete_account => '계정 및 데이터 삭제';

  @override
  String get delete_account_sub => '로컬 SQLite 데이터 및 클라우드 백업을 되돌릴 수 없게 삭제합니다.';

  @override
  String get healthy_habits => '온화하고 지속적인 웰빙 습관을 기르세요';

  @override
  String get all_logs => '내 추적 데이터 및 로그';

  @override
  String get search_language => '언어 또는 네이티브 스크립트로 검색...';

  @override
  String get languages_available => '사용 가능한 언어';

  @override
  String get no_matching_languages => '일치하는 언어가 없습니다.';

  @override
  String get try_searching => '원어민 문자나 영어 철자로 검색해 보세요.';

  @override
  String get partially_translated => '부분적으로 번역됨';

  @override
  String get complete_translation => '완료';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return '언어가 $name( $nativeName )으로 설정되었습니다.';
  }

  @override
  String get surroundings_title => '주변환경';

  @override
  String get surroundings_aqi => '대기 질 지수';

  @override
  String get surroundings_uv => '자외선 지수';

  @override
  String get surroundings_temp => '온도';

  @override
  String get surroundings_humidity => '습도';

  @override
  String get surroundings_hydration_advice => '현재 기상 조건에서 수분을 충분히 섭취하십시오.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => '음식 검색';

  @override
  String get food_quick_barcode => '바코드 스캔 🌻';

  @override
  String get food_quick_water => '물 추가';

  @override
  String get food_quick_custom => '맞춤형 식품';

  @override
  String get surroundings_good => '좋음';

  @override
  String get surroundings_moderate => '보통';

  @override
  String get surroundings_unhealthy => '건강에 해로운';

  @override
  String get notifications_title => '알림 및 경고';

  @override
  String get notifications_empty => '새로운 알림 없음';

  @override
  String get notifications_mark_read => '모두 읽음으로 표시';

  @override
  String get notifications_clear => '모두 지우기';

  @override
  String get reminders => '알림 설정';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => '아침 식사 알림 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return '좋은 아침입니다! $time에서 영양가 있는 아침 식사를 할 시간입니다.';
  }

  @override
  String get reminders_lunch_title => '점심 알림 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time에서 잠시 멈추고 균형 잡힌 점심 식사를 즐겨보세요.';
  }

  @override
  String get reminders_dinner_title => '저녁 식사 알림 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time에서 가볍고 만족스러운 저녁 식사를 할 시간입니다.';
  }

  @override
  String get reminders_water_title => '수분 공급 넛지 💧';

  @override
  String reminders_water_body(Object time) {
    return '신선한 물 한 잔을 마실 시간입니다! ( $time )';
  }

  @override
  String get reminders_weight_title => '주간 체중 측정 ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi( $time )에서 주간 신체 수치를 추적하세요.';
  }

  @override
  String get reminders_sleep_title => '취침 준비 시간 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return '긴장을 풀고 편안한 잠을 잘 준비를 하세요( $time ).';
  }

  @override
  String get onboard_welcome => '블루미에 오신 것을 환영합니다';

  @override
  String get onboard_sub => '친절한 오프라인 우선 건강 및 영양 동반자.';

  @override
  String get onboard_get_started => '시작하기';

  @override
  String get onboard_sign_in => '로그인';

  @override
  String get onboard_skip => '건너뛰기';

  @override
  String get onboard_choose_goal => '귀하의 주요 웰빙 목표는 무엇입니까?';

  @override
  String get onboard_goal_weight_loss => '온화한 체중 감소';

  @override
  String get onboard_goal_muscle => '근육 증가 및 근력';

  @override
  String get onboard_goal_energy => '일일 에너지 및 활력';

  @override
  String get onboard_goal_habits => '건강한 마음챙김 식습관';

  @override
  String get onboard_about_you => '자신에 대해 알려주세요';

  @override
  String get onboard_lifestyle => '귀하의 일상';

  @override
  String get onboard_permissions_title => '권한 및 시스템 액세스';

  @override
  String get onboard_permissions_sub =>
      '걸음 수, 운동, 알림을 동기화할 수 있는 액세스 권한을 부여하세요.';

  @override
  String get onboard_plan_ready_title => '맞춤형 계획이 준비되었습니다!';

  @override
  String get onboard_plan_ready_sub =>
      '우리는 귀하를 위한 온화하고 맞춤화된 영양 및 웰니스 로드맵을 만들었습니다.';

  @override
  String get onboard_enter_bloomi => '블루미를 입력하세요';

  @override
  String get insights_weekly_report => '주간 웰니스 요약';

  @override
  String insights_best_day(Object day) {
    return '최고의 일관성 요일: $day';
  }

  @override
  String get insights_streaks_badges => '연속 기록 및 마일스톤';

  @override
  String insights_unlocked_on(Object date) {
    return '$date에 잠금 해제됨';
  }

  @override
  String get insights_keep_going => '환상적인 발전을 계속하세요!';

  @override
  String get widgets_title => '홈 화면 위젯';

  @override
  String widgets_active_count(Object count) {
    return '활성 위젯: $count';
  }

  @override
  String get widgets_hub_title => '블루미 웰니스 허브';

  @override
  String get widgets_steps_title => '걸음 수 및 활성 링';

  @override
  String get widgets_water_title => '수분 퀵로그';

  @override
  String get widgets_mascot_title => '블루미 마스코트 동반자';

  @override
  String get wear_os_title => 'OS 스마트워치 착용';

  @override
  String get wear_os_connected => '시계에 연결됨';

  @override
  String get wear_os_sync => '시계 데이터 동기화';

  @override
  String get theme_title => '외관 및 테마';

  @override
  String get theme_mode => '테마 모드';

  @override
  String get theme_light => '빛';

  @override
  String get theme_dark => '어둠';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => '배경 팔레트';

  @override
  String get units_title => '측정 단위';

  @override
  String get units_metric => '미터법(kg, cm, ml)';

  @override
  String get units_imperial => '영국식(lbs, in, fl oz)';

  @override
  String get home_unable_load => '대시보드를 로드할 수 없습니다.';

  @override
  String get home_health_permission_req => '헬스 커넥트 권한 필요';

  @override
  String get home_health_permission_desc =>
      'Bloomi에서 실제 걸음수, 심박수를 가져오고 모바일 홈 위젯을 실시간으로 동기화하려면 헬스 커넥트 권한이 필요합니다.';

  @override
  String get home_allow_health => '헬스 커넥트 허용';

  @override
  String get home_ready_mindful_day => '마음챙김 하루를 보낼 준비가 되셨나요? ✨';

  @override
  String get home_quick_add => '빠른 추가';

  @override
  String get home_live_gps => '실시간 GPS';

  @override
  String get home_calories_remaining_label => '남은 칼로리';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return '섭취량: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => '물 추적기를 탭하세요 💧';

  @override
  String get home_water_goal_reached => '일일 목표 달성 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '일일 목표까지 $remaining ml';
  }

  @override
  String get home_details => '세부정보';

  @override
  String get home_upgrade_plan_desc => '개인화된 일일 목표 및 AI 계획을 잠금 해제하려면 업그레이드하세요.';

  @override
  String get home_unlock => '잠금해제 😘';

  @override
  String get home_quick_log_hint => '웰니스 항목을 빠르게 기록하세요.';

  @override
  String get food_serving_size => '서빙 크기';

  @override
  String get food_serving_grams => '제공량(g)';

  @override
  String get food_number_servings => '제공량';

  @override
  String get food_calories_per_serving => '서빙 당 칼로리';

  @override
  String get food_recipe_ingredients => '성분';

  @override
  String get food_recipe_add_ingredient => '성분 추가';

  @override
  String get food_recipe_directions => '지침 및 참고 사항';

  @override
  String get food_recipe_total => '총 레시피 영양';

  @override
  String get food_recipe_per_serving => '1회 제공량당 영양';

  @override
  String get food_recipe_saved_toast => '맞춤 음식이 성공적으로 저장되었습니다!';

  @override
  String get food_barcode_found => '제품 발견!';

  @override
  String get food_barcode_not_found_desc =>
      '공개 데이터베이스에서 이 바코드를 찾을 수 없습니다. 맞춤형 식품으로 추가할 수 있습니다.';

  @override
  String get food_add_custom_btn => '맞춤 음식 추가';

  @override
  String get food_scan_again => '다시 스캔';

  @override
  String get food_review_items => '감지된 식품 검토';

  @override
  String get food_review_hint => '수량을 조정하거나 인식할 수 없는 항목을 제거하세요.';

  @override
  String get food_log_selected => '선택한 음식을 기록하세요';

  @override
  String get food_favourites_title => '좋아하는 음식';

  @override
  String get food_recent_title => '최근 음식';

  @override
  String get food_no_favourites => '아직 좋아하는 음식이 없습니다. 여기에 저장할 음식에 하트를 탭하세요.';

  @override
  String get food_no_recents => '최근에 기록된 음식이 없습니다.';

  @override
  String get food_nutrition_details_title => '일일 영양 정보';

  @override
  String get food_macro_protein_label => '단백질 분해';

  @override
  String get food_macro_carbs_label => '탄수화물 분해';

  @override
  String get food_macro_fat_label => '지방 분해';

  @override
  String get food_macro_fiber_label => '섬유질 분해';

  @override
  String get food_daily_target_comparison => '대상 비교';

  @override
  String food_target_label(Object target) {
    return '대상: $target';
  }

  @override
  String get food_edit_entry => '일기 항목 편집';

  @override
  String get food_delete_entry => '항목 삭제';

  @override
  String food_grams_short(Object grams) {
    return '${grams}g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal칼로리';
  }

  @override
  String water_progress(Object current, Object target) {
    return '${target}ml 중 $current';
  }

  @override
  String get water_intake_history => '오늘의 물 기록';

  @override
  String get water_no_logs_today =>
      '오늘은 아직 물이 기록되지 않았습니다. 수분을 공급하고 빠른 추가 버튼을 탭하세요!';

  @override
  String get water_adjust_goal => '일일 목표 조정';

  @override
  String get health_connect_banner => '헬스 커넥트에 연결됨';

  @override
  String get health_vitals_summary => '일일 건강 필수 사항';

  @override
  String get health_latest_heart_rate => '최신 심박수';

  @override
  String get health_latest_bp => '혈압';

  @override
  String get health_latest_spo2 => '혈액 산소';

  @override
  String get health_latest_glucose => '혈당';

  @override
  String get health_latest_weight => '무게';

  @override
  String get health_latest_sleep => '수면 시간';

  @override
  String get health_add_manual => '수동 측정 추가';

  @override
  String get health_history_trends => '역사적 동향';

  @override
  String get health_sync_success => '건강 데이터가 성공적으로 동기화되었습니다!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours시간 $mins분';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '${val}kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '${bpm}bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / ${diastolic}mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '${val}mg/dL';
  }

  @override
  String get health_devices_title => '연결된 장치 및 웨어러블';

  @override
  String get health_devices_desc => '페어링된 스마트워치, 피트니스 트래커, 건강 센서를 관리하세요.';

  @override
  String get health_workout_editor_title => '운동 편집';

  @override
  String get health_workout_name_label => '운동 이름';

  @override
  String get health_workout_duration_label => '기간(분)';

  @override
  String get health_workout_calories_label => '예상 칼로리(kcal)';

  @override
  String get health_workout_date_label => '날짜 및 시간';

  @override
  String get plan_daily_wellness_roadmap => '귀하의 맞춤형 로드맵';

  @override
  String get plan_morning_routine => '아침 루틴';

  @override
  String get plan_afternoon_routine => '정오 웰니스';

  @override
  String get plan_evening_routine => '저녁 준비';

  @override
  String get plan_coach_badge => '블루미 AI 코치';

  @override
  String get plan_weekly_overview => '7일 웰니스 포커스';

  @override
  String get plan_targets_title => '웰니스 목표 및 목표';

  @override
  String get plan_calorie_budget_label => '일일 칼로리 예산';

  @override
  String get plan_water_budget_label => '일일 물 목표';

  @override
  String get plan_step_budget_label => '일일 걸음 수 목표';

  @override
  String get plan_macro_split_label => '다량 영양소 비율';

  @override
  String get profile_personal_details => '개인정보';

  @override
  String get profile_body_stats => '신체 측정';

  @override
  String get profile_app_preferences => '환경설정 및 앱 설정';

  @override
  String get profile_edit_name_hint => '당신의 이름';

  @override
  String profile_edit_height_hint(Object unit) {
    return '높이( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return '무게( $unit )';
  }

  @override
  String get profile_edit_age_hint => '나이';

  @override
  String get profile_gender_male => '남성';

  @override
  String get profile_gender_female => '여성';

  @override
  String get profile_gender_other => '기타 / 답변하고 싶지 않음';

  @override
  String get profile_activity_sedentary => '주로 앉아서 생활함(운동이 거의 또는 전혀 없음)';

  @override
  String get profile_activity_light => '약간 활동적(1~3일/주)';

  @override
  String get profile_activity_moderate => '중간 정도 활동적(주 3~5일)';

  @override
  String get profile_activity_very => '매우 활동적(주 6~7일)';

  @override
  String get settings_wear_os_header => 'Wear OS 도우미 앱';

  @override
  String get settings_wear_os_desc =>
      'Wear OS 시계에 Bloomi 타일과 컴플리케이션을 설치하면 칼로리, 물, 걸음 수를 한눈에 확인할 수 있습니다.';

  @override
  String get settings_widgets_header => '대화형 Android 위젯';

  @override
  String get settings_widgets_desc => '즉각적인 업데이트를 위해 장치 홈 화면에 실시간 위젯을 고정하세요.';

  @override
  String get settings_about_header => '블루미 소개';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => '빌드 100';

  @override
  String get settings_about_credits => '주의 깊고 건강한 삶을 위해 세심하게 제작되었습니다.';

  @override
  String get settings_terms_header => '이용약관';

  @override
  String get settings_privacy_header => '개인 정보 보호 정책';

  @override
  String get settings_delete_header => '계정 및 데이터 삭제';

  @override
  String get settings_delete_warning =>
      '이 작업은 취소할 수 없습니다. 모든 식사, 운동, 필수 정보, 프로필이 영구적으로 삭제됩니다.';

  @override
  String get settings_delete_confirm_btn => '영구 삭제';

  @override
  String get onboard_welcome_headline => '블루미에 오신 것을 환영합니다 ✨';

  @override
  String get onboard_welcome_tagline => '당신의 삶을 중심으로 설계된 부드럽고 주의 깊은 웰니스 추적입니다.';

  @override
  String get onboard_step_about => '당신에 대해';

  @override
  String get onboard_step_goals => '당신의 목표';

  @override
  String get onboard_step_lifestyle => '일상 습관';

  @override
  String get onboard_step_permissions => '권한';

  @override
  String get onboard_step_plan => '준비됐어요!';

  @override
  String get onboard_health_connect_perm => '헬스 커넥트 액세스';

  @override
  String get onboard_step_sensors_perm => '만보기 센서';

  @override
  String get onboard_notif_perm => '주의 깊은 알림 및 알림';

  @override
  String get onboard_camera_perm => '카메라(바코드 및 식품 스캐너)';

  @override
  String get onboard_grant_permissions => '권한 부여';

  @override
  String get onboard_continue_dashboard => '대시보드 열기';

  @override
  String get notif_channel_hydration_name => '수분 공급 넛지';

  @override
  String get notif_channel_hydration_desc => '하루 종일 부드러운 물 알림';

  @override
  String get notif_channel_nutrition_name => '식사 및 영양 알림';

  @override
  String get notif_channel_nutrition_desc => '아침, 점심, 저녁 알림 알림';

  @override
  String get notif_channel_steps_name => '단계 이정표';

  @override
  String get notif_channel_steps_desc => '일일 걸음 수 목표 달성 시 축하 행사';

  @override
  String get notif_channel_vitals_name => '건강 및 활력 점검';

  @override
  String get notif_channel_vitals_desc => '체중 및 취침 시간 준비 알림';

  @override
  String get notif_action_log_water => '💧 로그 +250ml';

  @override
  String get notif_action_snooze => '15분 동안 스누즈';

  @override
  String get notif_action_log_meal => '🥗 로그 식사';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
