// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get app_name => 'ブルーミ';

  @override
  String get nav_home => 'ホーム';

  @override
  String get nav_today => '今日';

  @override
  String get nav_plan => 'プラン';

  @override
  String get nav_food => '食事';

  @override
  String get nav_food_diary => '食事日記';

  @override
  String get nav_workout => 'ワークアウト';

  @override
  String get nav_health => '健康';

  @override
  String get nav_profile => 'プロフィール';

  @override
  String get save => '保存';

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get edit => '編集';

  @override
  String get done => '完了';

  @override
  String get close => '閉じる';

  @override
  String get back => '戻る';

  @override
  String get next => '次へ';

  @override
  String get continue_btn => '続ける';

  @override
  String get confirm => '確認';

  @override
  String get search => '検索';

  @override
  String get filter => 'フィルター';

  @override
  String get all => 'すべて';

  @override
  String get active => 'アクティブ';

  @override
  String get today => '今日';

  @override
  String get yesterday => '昨日';

  @override
  String get tomorrow => '明日';

  @override
  String get add => '追加';

  @override
  String get remove => '削除';

  @override
  String get refresh => '更新';

  @override
  String get retry => '再試行';

  @override
  String get error => 'エラー';

  @override
  String get success => '成功';

  @override
  String get loading => '読み込み中...';

  @override
  String get no_data => 'データがありません';

  @override
  String get offline => 'オフラインモード';

  @override
  String get offline_sub => '再接続時に自動的に同期されます';

  @override
  String get undo => '元に戻す';

  @override
  String get portion => '一部';

  @override
  String get quantity => '数量';

  @override
  String get unit => 'ユニット';

  @override
  String get clear => 'クリア';

  @override
  String get select => '選択';

  @override
  String get apply => '適用';

  @override
  String get reset => 'リセット';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'はい';

  @override
  String get no => 'いいえ';

  @override
  String get optional => 'オプション';

  @override
  String get calories => 'カロリー';

  @override
  String get protein => 'タンパク質';

  @override
  String get carbs => '炭水化物';

  @override
  String get fat => '脂質';

  @override
  String get fiber => '食物繊維';

  @override
  String get water => '水分';

  @override
  String get steps => '歩数';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ミリリットル';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'ポンド';

  @override
  String get centimeters => 'センチメートル';

  @override
  String get inches => 'で';

  @override
  String get bpm => 'BPM';

  @override
  String get hours => '時間';

  @override
  String get minutes => '分';

  @override
  String get serving => '給仕';

  @override
  String get servings => '1食分';

  @override
  String get serving_size => '1回分の分量';

  @override
  String get per_100g => '100gあたり';

  @override
  String get india => 'インド';

  @override
  String get asia => 'アジア';

  @override
  String get europe => 'ヨーロッパ';

  @override
  String get middle_east => '中東';

  @override
  String get africa => 'アフリカ';

  @override
  String get americas => 'アメリカ大陸';

  @override
  String get home_title => 'ホーム';

  @override
  String get home_greeting_morning => 'おはようございます';

  @override
  String get home_greeting_afternoon => 'こんにちは';

  @override
  String get home_greeting_evening => 'こんばんは';

  @override
  String get home_streak_title => 'ブロッサム連続記録';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日連続',
      one: '1日連続',
      zero: '0日連続',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => '消費カロリー';

  @override
  String get home_calories_budget => 'カロリー目標';

  @override
  String home_calories_remaining(Object kcal) {
    return '残り $kcal kcal';
  }

  @override
  String get home_water_title => '水分補給';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => '歩数';

  @override
  String get home_quick_actions => 'クイックアクション';

  @override
  String get home_log_meal => '食事を記録';

  @override
  String get home_log_water => '水分を記録';

  @override
  String get home_log_workout => '運動を記録';

  @override
  String get home_log_weight => '体重を記録';

  @override
  String get home_insights_title => '今日のアドバイス';

  @override
  String get home_quote => '小さな健康習慣が大きな変化を生み出します。';

  @override
  String get home_ai_coach_tip => 'Bloomi AIコーチ';

  @override
  String get home_surroundings => '環境と空気';

  @override
  String get home_notifications => '通知';

  @override
  String get home_daily_score => 'ウェルネススコア';

  @override
  String get home_view_all => 'すべて表示';

  @override
  String get food_diary_title => '食事日記';

  @override
  String get food_breakfast => '朝食';

  @override
  String get food_lunch => '昼食';

  @override
  String get food_dinner => '夕食';

  @override
  String get food_snacks => '間食';

  @override
  String get food_add_food => '食事を追加';

  @override
  String get food_edit_food => '食事を編集';

  @override
  String get food_add_breakfast => '朝食の追加';

  @override
  String get food_add_lunch => 'ランチの追加';

  @override
  String get food_add_dinner => '夕食を追加';

  @override
  String get food_add_snack => 'スナックを追加';

  @override
  String get food_total_calories => '合計カロリー';

  @override
  String get food_empty_meal => 'この食事にはまだ食品が記録されていません';

  @override
  String get food_empty_diary => 'この日の食事は記録されていません';

  @override
  String get food_log_first_meal => '+ をタップして、初めてのおいしい食事を記録します';

  @override
  String get food_quick_add => 'クイック追加';

  @override
  String get food_search_hint => '料理、フルーツ、ダル、ロータスを検索します。';

  @override
  String get food_custom_recipe => 'カスタムフードとレシピ';

  @override
  String get food_scan_barcode => 'バーコードをスキャンする';

  @override
  String get food_camera_scan => 'AIフードスキャナー';

  @override
  String get food_recent => '最近の食べ物';

  @override
  String get food_favourites => 'お気に入り';

  @override
  String get food_macro_summary => '主要栄養素の内訳';

  @override
  String get food_delete_meal_confirm => 'この項目を削除してもよろしいですか?';

  @override
  String get food_item_deleted => '食品アイテムが削除されました';

  @override
  String get food_remaining => '残り';

  @override
  String get food_consumed => '消費された';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => '食品を探す';

  @override
  String get foodSearch_scan_barcode => 'バーコードをスキャンする';

  @override
  String get foodSearch_take_photo => '食べ物のスナップ写真';

  @override
  String get foodSearch_custom_food => 'カスタムフードの作成';

  @override
  String get foodSearch_recent_searches => '最近の検索';

  @override
  String get foodSearch_popular => '人気の料理';

  @override
  String get foodSearch_no_results => '検索に一致する食品はありません';

  @override
  String get barcode_title => 'バーコードスキャナー';

  @override
  String get barcode_align => 'バーコードをカメラフレーム内に揃えます';

  @override
  String get barcode_not_found => '製品がデータベースに見つかりません';

  @override
  String get barcode_premium_feature => 'Bloomi Proではバーコードスキャンが可能です';

  @override
  String get camera_title => 'AIフードスキャナー';

  @override
  String get camera_tap_hint => '料理の鮮明な写真を撮ります';

  @override
  String get camera_analysing => 'フードプレートを分析中...';

  @override
  String get camera_detected => '検出項目';

  @override
  String get camera_flash => 'フラッシュの切り替え';

  @override
  String get camera_retake => '写真を撮り直す';

  @override
  String get camera_confirm_food => '項目の確認';

  @override
  String get customFood_title => 'カスタムフードとレシピ';

  @override
  String get customFood_name_hint => '料理名または食材名';

  @override
  String get customFood_calories_hint => 'カロリー(kcal)';

  @override
  String get customFood_protein_hint => 'たんぱく質(g)';

  @override
  String get customFood_carbs_hint => '炭水化物 (g)';

  @override
  String get customFood_fat_hint => '脂肪(g)';

  @override
  String get customFood_save => 'レシピの保存';

  @override
  String get water_tracker_title => '水分記録';

  @override
  String get water_daily_target => '毎日の水分補給の目標';

  @override
  String get water_logged_today => '今日記録されました';

  @override
  String get water_add_glass => '+250mlグラス';

  @override
  String get water_add_bottle => '+500mlボトル';

  @override
  String get water_custom_amount => 'カスタム金額';

  @override
  String get water_reminder_tip => '安定したエネルギーを得るために、一日を通して定期的に水を飲みましょう。';

  @override
  String water_logged_toast(Object amount) {
    return '$amount ml の水を記録しました 💧';
  }

  @override
  String get workout_title => 'ワークアウト記録';

  @override
  String get workout_add_exercise => 'ワークアウトを追加';

  @override
  String get workout_cardio => '有酸素運動';

  @override
  String get workout_strength => '強さ';

  @override
  String get workout_yoga => 'ヨガと柔軟性';

  @override
  String get workout_duration => '期間';

  @override
  String get workout_intensity => '強度';

  @override
  String get workout_calories_burned => '消費カロリー';

  @override
  String get workout_empty => '今日はワークアウトが記録されていません';

  @override
  String get workout_save_success => 'ワークアウトが正常に保存されました。';

  @override
  String get workout_type => 'トレーニングの種類';

  @override
  String get workout_notes => 'メモと感想';

  @override
  String get health_overview_title => '健康＆バイタル';

  @override
  String get health_heart_rate => '心拍数';

  @override
  String get health_blood_oxygen => '血中酸素(SpO2)';

  @override
  String get health_blood_pressure => '血圧';

  @override
  String get health_blood_glucose => '血糖値';

  @override
  String get health_body_temperature => '体温';

  @override
  String get health_sleep_tracking => '睡眠追跡';

  @override
  String get health_weight_tracking => '体重と体組成';

  @override
  String get health_waist_hip => 'ウエスト対ヒップ比';

  @override
  String get health_devices_hub => 'デバイスとスマートウォッチ ハブ';

  @override
  String get health_sync_now => '健康データを同期する';

  @override
  String health_last_synced(Object time) {
    return '最終同期日: $time';
  }

  @override
  String get health_manual_entry => '健康状態の手動入力';

  @override
  String get health_metric_detail => 'メトリクスの詳細';

  @override
  String get health_connected_sensors => '接続されたヘルスセンサー';

  @override
  String get plan_title => 'デイリープラン';

  @override
  String get plan_weekly_title => 'ウィークリーウェルネスプラン';

  @override
  String get plan_calorie_target => 'カロリー目標';

  @override
  String get plan_water_target => '水分補給目標';

  @override
  String get plan_step_target => 'ステップターゲット';

  @override
  String get plan_sleep_target => '睡眠目標';

  @override
  String get plan_meal_suggestions => '食事の提案';

  @override
  String get plan_healthy_habits => '健康的な習慣とヒント';

  @override
  String get plan_coach_advice => 'Bloomi AI コーチの推奨事項';

  @override
  String get plan_generated_title => 'パーソナライズされた毎日のスケジュール';

  @override
  String get profile_title => 'プロフィール';

  @override
  String get profile_edit => 'プロフィールの編集';

  @override
  String get profile_name => '名前';

  @override
  String get profile_age => '年齢';

  @override
  String get profile_gender => '性別';

  @override
  String get profile_height => '高さ';

  @override
  String get profile_weight => '重量';

  @override
  String get profile_goal => '主な目標';

  @override
  String get profile_activity_level => '活動レベル';

  @override
  String get profile_stats => '私の健康統計';

  @override
  String get profile_saved => 'プロファイルが正常に更新されました';

  @override
  String get profile_bmi => 'ボディマス指数 (BMI)';

  @override
  String get profile_membership => 'メンバーシップ';

  @override
  String get settings => '設定';

  @override
  String get preferences_habits => '環境設定と習慣';

  @override
  String get appearance_theme => 'テーマと外観';

  @override
  String get appearance_theme_sub => 'ダーク、ライト、システム モード、アプリの背景オプション';

  @override
  String get permissions => '権限とシステムアクセス';

  @override
  String get permissions_sub => 'ヘルスコネクト、ステップセンサー、GPS、通知、カメラ';

  @override
  String get reminders_notifications => 'リマインダーと通知';

  @override
  String get reminders_sub => '食事の時間、水分、体重のチェックイン、就寝時間のリマインダー';

  @override
  String get units_of_measurement => '測定単位';

  @override
  String get units_sub => 'メートル法 (kg、cm、ml、km) または帝国単位 (ポンド、フィート/インチ、液量オンス)';

  @override
  String get app_language => 'アプリ言語';

  @override
  String get language_sub => '英語、हिन्दी (ヒンディー語)、ヒンディー語、195 以上の世界言語';

  @override
  String get home_screen_widgets => 'ホーム画面ウィジェット';

  @override
  String get widgets_sub => 'ライブ Android ウィジェット: ハブ、歩数、水、栄養、マスコット';

  @override
  String get wear_os_watch_app => 'Wear OS ウォッチアプリ';

  @override
  String get wear_os_sub => 'スマートウォッチ コンパニオン、タイル、コンプリケーション、ライブ バイタル';

  @override
  String get goals_wellness => '目標とウェルネスに関する洞察';

  @override
  String get nutrition_targets => '栄養目標とマクロ分割';

  @override
  String get nutrition_targets_sub => 'カロリー目標、タンパク質、炭水化物、脂肪、水分の目標';

  @override
  String get weekly_recap => '毎週のウェルネスのまとめ';

  @override
  String get weekly_recap_sub => '7日間のカロリー平均、マクロ比率、最高の日';

  @override
  String get streaks_milestones => '連続記録とマイルストーン';

  @override
  String get streaks_sub => 'アクティブな開花ストリーク、バッジ、実績';

  @override
  String get connected_devices => '接続されたデバイスとエコシステム';

  @override
  String get devices_hub => 'デバイスとスマートウォッチ ハブ';

  @override
  String get devices_hub_sub => 'ヘルスコネクト、Galaxy Watch、Pixel Watch、ガーミン';

  @override
  String get surroundings_weather => '周辺環境と天気';

  @override
  String get surroundings_sub => '空気の質 (AQI)、UV インデックス、天候に応じた水分補給のヒント';

  @override
  String get bloomi_pro => 'Bloomi プロのサブスクリプション';

  @override
  String get bloomi_pro_sub => 'AI プラン コーチ、5 つのホーム画面ウィジェットとバイタル トラッキング';

  @override
  String get about_security => '概要とセキュリティ';

  @override
  String get about_bloomi => 'ブルーミについて';

  @override
  String get about_bloomi_sub => 'ビルド仕様、バージョン、属性';

  @override
  String get privacy_policy => 'プライバシーポリシー';

  @override
  String get privacy_policy_sub => 'オフラインファーストのオンデバイスデータアーキテクチャ';

  @override
  String get terms_conditions => '利用規約';

  @override
  String get terms_conditions_sub => '利用規約とウェルネスガイドライン';

  @override
  String get delete_account => 'アカウントとデータの削除';

  @override
  String get delete_account_sub => 'ローカル SQLite データとクラウド バックアップを不可逆的に消去します';

  @override
  String get healthy_habits => '穏やかで持続的な健康習慣を築く';

  @override
  String get all_logs => '私の追跡データとログ';

  @override
  String get search_language => '言語を検索...';

  @override
  String get languages_available => '利用可能な言語';

  @override
  String get no_matching_languages => '一致する言語が見つかりませんでした';

  @override
  String get try_searching => 'ネイティブのスクリプトまたは英語のスペルで検索してみてください';

  @override
  String get partially_translated => '一部翻訳済み';

  @override
  String get complete_translation => '完了';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return '言語を$name（$nativeName）に設定しました';
  }

  @override
  String get surroundings_title => '周囲と環境';

  @override
  String get surroundings_aqi => '大気質指数';

  @override
  String get surroundings_uv => '紫外線指数';

  @override
  String get surroundings_temp => '温度';

  @override
  String get surroundings_humidity => '湿度';

  @override
  String get surroundings_hydration_advice => '現在の気象状況では十分な水分補給を行ってください。';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => '食べ物を探す';

  @override
  String get food_quick_barcode => 'バーコードをスキャンします 👑';

  @override
  String get food_quick_water => '水を加える';

  @override
  String get food_quick_custom => 'カスタムフード';

  @override
  String get surroundings_good => '良い';

  @override
  String get surroundings_moderate => '中等度';

  @override
  String get surroundings_unhealthy => '不健康';

  @override
  String get notifications_title => '通知とアラート';

  @override
  String get notifications_empty => '新しい通知はありません';

  @override
  String get notifications_mark_read => 'すべて既読としてマーク';

  @override
  String get notifications_clear => 'すべてクリア';

  @override
  String get reminders => 'リマインダー設定';

  @override
  String get notifications => 'プッシュ通知';

  @override
  String get reminders_breakfast_title => '朝食リマインダー 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'おはようございます！ $time で栄養たっぷりの朝食の時間です。';
  }

  @override
  String get reminders_lunch_title => 'ランチリマインダー🥗';

  @override
  String reminders_lunch_body(Object time) {
    return '$time でちょっと立ち止まって、バランスのとれたマインドフルなランチをお楽しみください。';
  }

  @override
  String get reminders_dinner_title => 'ディナーリマインダー🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time で軽くて満足のいくディナーの時間です。';
  }

  @override
  String get reminders_water_title => '水分補給ナッジ 💧';

  @override
  String reminders_water_body(Object time) {
    return '新鮮な水を一杯飲む時間です！ ( $time )';
  }

  @override
  String get reminders_weight_title => '毎週の体重測定 ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Bloomi ($time) で毎週の身体指標を追跡します。';
  }

  @override
  String get reminders_sleep_title => '就寝前のリラックス 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'リラックスして安らかな眠りに備えましょう ( $time )。';
  }

  @override
  String get onboard_welcome => 'ブルーミへようこそ';

  @override
  String get onboard_sub => 'フレンドリーでオフライン第一の健康と栄養の相棒。';

  @override
  String get onboard_get_started => '始めましょう';

  @override
  String get onboard_sign_in => 'サインイン';

  @override
  String get onboard_skip => 'スキップ';

  @override
  String get onboard_choose_goal => 'あなたの健康に関する主な目標は何ですか?';

  @override
  String get onboard_goal_weight_loss => '穏やかな減量';

  @override
  String get onboard_goal_muscle => '筋肉の増加と筋力';

  @override
  String get onboard_goal_energy => '毎日のエネルギーと活力';

  @override
  String get onboard_goal_habits => '健康的なマインドフルな食事';

  @override
  String get onboard_about_you => 'あなた自身について教えてください';

  @override
  String get onboard_lifestyle => 'あなたの毎日のルーティン';

  @override
  String get onboard_permissions_title => '権限とシステムアクセス';

  @override
  String get onboard_permissions_sub => '同期ステップ、ワークアウト、リマインダーへのアクセスを許可します。';

  @override
  String get onboard_plan_ready_title => 'カスタムプランの準備が完了しました。';

  @override
  String get onboard_plan_ready_sub =>
      '私たちはあなただけのために、優しくパーソナライズされた栄養と健康のロードマップを作成しました。';

  @override
  String get onboard_enter_bloomi => 'ブルーミに入る';

  @override
  String get insights_weekly_report => '毎週のウェルネスのまとめ';

  @override
  String insights_best_day(Object day) {
    return '最良の一貫性の日: $day';
  }

  @override
  String get insights_streaks_badges => '連続記録とマイルストーン';

  @override
  String insights_unlocked_on(Object date) {
    return '$date にロック解除されました';
  }

  @override
  String get insights_keep_going => 'これからも素晴らしい進歩を続けてください！';

  @override
  String get widgets_title => 'ホーム画面ウィジェット';

  @override
  String widgets_active_count(Object count) {
    return 'アクティブなウィジェット: $count';
  }

  @override
  String get widgets_hub_title => 'ブルーミ ウェルネス ハブ';

  @override
  String get widgets_steps_title => 'ステップとアクティブリング';

  @override
  String get widgets_water_title => '水分補給クイックログ';

  @override
  String get widgets_mascot_title => 'ブルーミ マスコット コンパニオン';

  @override
  String get wear_os_title => 'Wear OS スマートウォッチ';

  @override
  String get wear_os_connected => '時計に接続しました';

  @override
  String get wear_os_sync => '時計データを同期する';

  @override
  String get theme_title => '外観とテーマ';

  @override
  String get theme_mode => 'テーマモード';

  @override
  String get theme_light => 'ライト';

  @override
  String get theme_dark => 'ダーク';

  @override
  String get theme_system => 'システム';

  @override
  String get theme_background_palette => '背景パレット';

  @override
  String get units_title => '測定単位';

  @override
  String get units_metric => 'メートル法 (kg、cm、ml)';

  @override
  String get units_imperial => 'インペリアル (ポンド、インチ、液量オンス)';

  @override
  String get home_unable_load => 'ダッシュボードを読み込めません';

  @override
  String get home_health_permission_req => 'ヘルスコネクトの許可が必要です';

  @override
  String get home_health_permission_desc =>
      'Bloomi では、実際の歩数、心拍数を取得し、モバイル ホーム ウィジェットをリアルタイムで同期するには、ヘルスコネクトのアクセス許可が必要です。';

  @override
  String get home_allow_health => 'ヘルスコネクトを許可する';

  @override
  String get home_ready_mindful_day => '今日も心地よい一日を！✨';

  @override
  String get home_quick_add => 'クイック追加';

  @override
  String get home_live_gps => 'リアルタイムGPS';

  @override
  String get home_calories_remaining_label => '残りのカロリー';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return '摂取済み: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => '水分トラッカーを開く 💧';

  @override
  String get home_water_goal_reached => '目標水分量達成！🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '目標まであと $remaining ml';
  }

  @override
  String get home_details => '詳細';

  @override
  String get home_upgrade_plan_desc => 'アップグレードして、パーソナライズされた毎日の目標と AI 計画を解除します';

  @override
  String get home_unlock => 'ロックを解除します 👑';

  @override
  String get home_quick_log_hint => 'ウェルネスエントリーを素早く記録する';

  @override
  String get food_serving_size => '1回分の分量';

  @override
  String get food_serving_grams => '1回分(グラム)';

  @override
  String get food_number_servings => '分量';

  @override
  String get food_calories_per_serving => '1食分あたりのカロリー';

  @override
  String get food_recipe_ingredients => '成分';

  @override
  String get food_recipe_add_ingredient => '成分を追加する';

  @override
  String get food_recipe_directions => '説明書と注意事項';

  @override
  String get food_recipe_total => 'レシピのトータル栄養学';

  @override
  String get food_recipe_per_serving => '1食分あたりの栄養成分';

  @override
  String get food_recipe_saved_toast => 'カスタムフードが正常に保存されました!';

  @override
  String get food_barcode_found => '商品が見つかりました！';

  @override
  String get food_barcode_not_found_desc =>
      '公開されているデータベースではこのバーコードが見つかりませんでした。カスタムフードとして追加することもできます。';

  @override
  String get food_add_custom_btn => 'カスタムフードを追加する';

  @override
  String get food_scan_again => '再スキャン';

  @override
  String get food_review_items => '検出された食品を確認する';

  @override
  String get food_review_hint => '数量を調整するか、認識できないアイテムを削除します';

  @override
  String get food_log_selected => '選択した食品を記録する';

  @override
  String get food_favourites_title => '好きな食べ物';

  @override
  String get food_recent_title => '最近の食べ物';

  @override
  String get food_no_favourites => '好きな食べ物はまだありません。食べ物のハートをタップしてここに保存します。';

  @override
  String get food_no_recents => '最近記録された食べ物は見つかりませんでした。';

  @override
  String get food_nutrition_details_title => '毎日の栄養の詳細';

  @override
  String get food_macro_protein_label => 'タンパク質の分解';

  @override
  String get food_macro_carbs_label => '炭水化物の内訳';

  @override
  String get food_macro_fat_label => '脂肪の分解';

  @override
  String get food_macro_fiber_label => '繊維の分解';

  @override
  String get food_daily_target_comparison => 'ターゲットの比較';

  @override
  String food_target_label(Object target) {
    return 'ターゲット: $target';
  }

  @override
  String get food_edit_entry => '日記エントリの編集';

  @override
  String get food_delete_entry => 'エントリの削除';

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
    return '$current/$target ml';
  }

  @override
  String get water_intake_history => '今日の水の記録';

  @override
  String get water_no_logs_today =>
      '今日はまだ水は溜まっていません。水分補給して、簡単に追加ボタンをタップしてください。';

  @override
  String get water_adjust_goal => '毎日の目標を調整する';

  @override
  String get health_connect_banner => 'ヘルスコネクトに接続しました';

  @override
  String get health_vitals_summary => '毎日の健康に関する重要事項';

  @override
  String get health_latest_heart_rate => '最新の心拍数';

  @override
  String get health_latest_bp => '血圧';

  @override
  String get health_latest_spo2 => '血中酸素';

  @override
  String get health_latest_glucose => '血糖値';

  @override
  String get health_latest_weight => '重量';

  @override
  String get health_latest_sleep => '睡眠時間';

  @override
  String get health_add_manual => '手動測定の追加';

  @override
  String get health_history_trends => '歴史的傾向';

  @override
  String get health_sync_success => '健康データは正常に同期されました。';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours 時間 $mins 分';
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
  String get health_devices_title => '接続されたデバイスとウェアラブル';

  @override
  String get health_devices_desc =>
      'ペアリングされたスマートウォッチ、フィットネス トラッカー、ヘルス センサーを管理します。';

  @override
  String get health_workout_editor_title => 'ワークアウトの編集';

  @override
  String get health_workout_name_label => 'ワークアウト名';

  @override
  String get health_workout_duration_label => '継続時間 (分)';

  @override
  String get health_workout_calories_label => '推定カロリー（kcal）';

  @override
  String get health_workout_date_label => '日付と時刻';

  @override
  String get plan_daily_wellness_roadmap => 'パーソナライズされたロードマップ';

  @override
  String get plan_morning_routine => '朝のルーティン';

  @override
  String get plan_afternoon_routine => '真昼のウェルネス';

  @override
  String get plan_evening_routine => '夕方のリラックスタイム';

  @override
  String get plan_coach_badge => 'ブルーミAIコーチ';

  @override
  String get plan_weekly_overview => '7日間のウェルネスフォーカス';

  @override
  String get plan_targets_title => 'ウェルネスの目標と目標';

  @override
  String get plan_calorie_budget_label => '1 日のカロリー予算';

  @override
  String get plan_water_budget_label => '毎日の水分目標';

  @override
  String get plan_step_budget_label => '毎日の歩数目標';

  @override
  String get plan_macro_split_label => '主要栄養素の比率';

  @override
  String get profile_personal_details => '個人情報';

  @override
  String get profile_body_stats => '身体測定';

  @override
  String get profile_app_preferences => '環境設定とアプリの設定';

  @override
  String get profile_edit_name_hint => 'あなたの名前';

  @override
  String profile_edit_height_hint(Object unit) {
    return '身長 ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return '重量 ( $unit )';
  }

  @override
  String get profile_edit_age_hint => '年齢';

  @override
  String get profile_gender_male => '男性';

  @override
  String get profile_gender_female => '女性';

  @override
  String get profile_gender_other => 'その他 / 言わないほうがいい';

  @override
  String get profile_activity_sedentary => '座りっぱなし（運動がほとんどない）';

  @override
  String get profile_activity_light => '軽く活動的（週に 1 ～ 3 日）';

  @override
  String get profile_activity_moderate => '適度に活動的（週に 3 ～ 5 日）';

  @override
  String get profile_activity_very => '非常にアクティブ (週に 6 ～ 7 日)';

  @override
  String get settings_wear_os_header => 'Wear OS コンパニオン アプリ';

  @override
  String get settings_wear_os_desc =>
      'Wear OS ウォッチに Bloomi タイルとコンプリケーションをインストールすると、カロリー、水分、歩数を一目で確認できます。';

  @override
  String get settings_widgets_header => 'インタラクティブな Android ウィジェット';

  @override
  String get settings_widgets_desc =>
      'デバイスのホーム画面にリアルタイム ウィジェットをピン留めすると、すぐに更新できます。';

  @override
  String get settings_about_header => 'ブルーミについて';

  @override
  String get settings_about_version => 'バージョン';

  @override
  String get settings_about_build => 'ビルド100';

  @override
  String get settings_about_credits => 'マインドフルで健康的な生活のために細心の注意を払って作られています。';

  @override
  String get settings_terms_header => '利用規約';

  @override
  String get settings_privacy_header => 'プライバシーポリシー';

  @override
  String get settings_delete_header => 'アカウントとデータの削除';

  @override
  String get settings_delete_warning =>
      'この操作は元に戻すことができません。すべての食事、トレーニング、バイタル、プロフィールは完全に削除されます。';

  @override
  String get settings_delete_confirm_btn => '完全に削除';

  @override
  String get onboard_welcome_headline => 'ブルーミへようこそ✨';

  @override
  String get onboard_welcome_tagline => 'あなたの生活を中心に設計された、優しくマインドフルな健康追跡。';

  @override
  String get onboard_step_about => 'あなたについて';

  @override
  String get onboard_step_goals => 'あなたの目標';

  @override
  String get onboard_step_lifestyle => '毎日の習慣';

  @override
  String get onboard_step_permissions => '権限';

  @override
  String get onboard_step_plan => '準備完了！';

  @override
  String get onboard_health_connect_perm => 'ヘルスコネクトアクセス';

  @override
  String get onboard_step_sensors_perm => 'ステップカウンターセンサー';

  @override
  String get onboard_notif_perm => 'マインドフルなリマインダーと通知';

  @override
  String get onboard_camera_perm => 'カメラ（バーコード＆フードスキャナー）';

  @override
  String get onboard_grant_permissions => '権限の付与';

  @override
  String get onboard_continue_dashboard => 'ダッシュボードを開く';

  @override
  String get notif_channel_hydration_name => '水分補給のナッジ';

  @override
  String get notif_channel_hydration_desc => '一日を通して優しい水のリマインダー';

  @override
  String get notif_channel_nutrition_name => '食事と栄養に関するリマインダー';

  @override
  String get notif_channel_nutrition_desc => '朝食、昼食、夕食のリマインダーアラート';

  @override
  String get notif_channel_steps_name => 'ステップマイルストーン';

  @override
  String get notif_channel_steps_desc => '毎日の歩数目標を達成したときのお祝い';

  @override
  String get notif_channel_vitals_name => '健康とバイタルチェック';

  @override
  String get notif_channel_vitals_desc => '体重と就寝時間のリラックスリマインダー';

  @override
  String get notif_action_log_water => '💧 ログ+250ml';

  @override
  String get notif_action_snooze => 'スヌーズ 15 分';

  @override
  String get notif_action_log_meal => '🥗 ログミール';

  @override
  String get language => '言語';

  @override
  String get share => '共有';

  @override
  String common_days(Object count) {
    return '$count日前';
  }
}
