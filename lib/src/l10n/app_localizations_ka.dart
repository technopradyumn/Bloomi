// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get app_name => 'ბლუმი';

  @override
  String get nav_home => 'მთავარი';

  @override
  String get nav_today => 'დღეს';

  @override
  String get nav_plan => 'დაგეგმეთ';

  @override
  String get nav_food => 'საჭმელი';

  @override
  String get nav_food_diary => 'კვების დღიური';

  @override
  String get nav_workout => 'ვარჯიშის ჟურნალი';

  @override
  String get nav_health => 'ჯანმრთელობა';

  @override
  String get nav_profile => 'პროფილი';

  @override
  String get save => 'შენახვა';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get delete => 'წაშლა';

  @override
  String get edit => 'რედაქტირება';

  @override
  String get done => 'მზად არის';

  @override
  String get close => 'დახურვა';

  @override
  String get back => 'უკან';

  @override
  String get next => 'შემდეგი';

  @override
  String get continue_btn => 'განაგრძეთ';

  @override
  String get confirm => 'დაადასტურეთ';

  @override
  String get search => 'ძებნა';

  @override
  String get filter => 'ფილტრი';

  @override
  String get all => 'ყველა';

  @override
  String get active => 'აქტიური';

  @override
  String get today => 'დღეს';

  @override
  String get yesterday => 'გუშინ';

  @override
  String get tomorrow => 'ხვალ';

  @override
  String get add => 'დამატება';

  @override
  String get remove => 'ამოღება';

  @override
  String get refresh => 'განაახლეთ';

  @override
  String get retry => 'ხელახლა სცადეთ';

  @override
  String get error => 'შეცდომა';

  @override
  String get success => 'წარმატებები';

  @override
  String get loading => 'იტვირთება...';

  @override
  String get no_data => 'მონაცემები არ არის ხელმისაწვდომი';

  @override
  String get offline => 'ხაზგარეშე რეჟიმი';

  @override
  String get offline_sub =>
      'ცვლილებები სინქრონიზდება ხელახლა დაკავშირების შემდეგ';

  @override
  String get undo => 'დაბრუნება';

  @override
  String get portion => 'პორცია';

  @override
  String get quantity => 'რაოდენობა';

  @override
  String get unit => 'ერთეული';

  @override
  String get clear => 'წმინდა';

  @override
  String get select => 'აირჩიეთ';

  @override
  String get apply => 'გამოყენება';

  @override
  String get reset => 'გასუფთავება';

  @override
  String get ok => 'კარგი';

  @override
  String get yes => 'დიახ';

  @override
  String get no => 'არა';

  @override
  String get optional => 'სურვილისამებრ';

  @override
  String get calories => 'კალორიები';

  @override
  String get protein => 'პროტეინი';

  @override
  String get carbs => 'ნახშირწყლები';

  @override
  String get fat => 'მსუქანი';

  @override
  String get fiber => 'ბოჭკოვანი';

  @override
  String get water => 'წყალი';

  @override
  String get steps => 'ნაბიჯები';

  @override
  String get kcal => 'კკალ';

  @override
  String get grams => 'გ';

  @override
  String get milliliters => 'მლ';

  @override
  String get kilograms => 'კგ';

  @override
  String get pounds => 'ფუნტი';

  @override
  String get centimeters => 'სმ';

  @override
  String get inches => 'in';

  @override
  String get bpm => 'წუთში';

  @override
  String get hours => 'სთ';

  @override
  String get minutes => 'წთ';

  @override
  String get serving => 'ემსახურება';

  @override
  String get servings => 'სერვირება';

  @override
  String get serving_size => 'სერვისის ზომა';

  @override
  String get per_100g => '100გრ-ზე';

  @override
  String get india => 'ინდოეთი';

  @override
  String get asia => 'აზია';

  @override
  String get europe => 'ევროპა';

  @override
  String get middle_east => 'ახლო აღმოსავლეთი';

  @override
  String get africa => 'აფრიკა';

  @override
  String get americas => 'ამერიკა';

  @override
  String get home_title => 'მთავარი';

  @override
  String get home_greeting_morning => 'დილა მშვიდობისა';

  @override
  String get home_greeting_afternoon => 'შუადღე მშვიდობისა';

  @override
  String get home_greeting_evening => 'საღამო მშვიდობისა';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დღის სერია',
      one: '1 დღიანი სერია',
      zero: '0 დღიანი სერია',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'დამწვარი';

  @override
  String get home_calories_budget => 'კალორიული ბიუჯეტი';

  @override
  String home_calories_remaining(Object kcal) {
    return 'დარჩენილია $kcal კკალ';
  }

  @override
  String get home_water_title => 'ყოველდღიური დატენიანება';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target მლ';
  }

  @override
  String get home_steps_title => 'ნაბიჯები დადიოდა';

  @override
  String get home_quick_actions => 'სწრაფი მოქმედებები';

  @override
  String get home_log_meal => 'ლოგის კვება';

  @override
  String get home_log_water => 'ლოგის წყალი';

  @override
  String get home_log_workout => 'ჟურნალის ვარჯიში';

  @override
  String get home_log_weight => 'ჟურნალის წონა';

  @override
  String get home_insights_title => 'დღევანდელი Insights';

  @override
  String get home_quote =>
      'მცირე ჯანსაღი არჩევანი ქმნის აყვავებულ გარდაქმნებს.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI მწვრთნელი';

  @override
  String get home_surroundings => 'გარემო და ჰაერი';

  @override
  String get home_notifications => 'შეტყობინებები';

  @override
  String get home_daily_score => 'ყოველდღიური ველნეს ქულა';

  @override
  String get home_view_all => 'ყველას ნახვა';

  @override
  String get food_diary_title => 'კვების დღიური';

  @override
  String get food_breakfast => 'საუზმე';

  @override
  String get food_lunch => 'სადილი';

  @override
  String get food_dinner => 'ვახშამი';

  @override
  String get food_snacks => 'საჭმელები';

  @override
  String get food_add_food => 'დაამატეთ საკვები';

  @override
  String get food_edit_food => 'კვების რედაქტირება';

  @override
  String get food_add_breakfast => 'დაამატეთ საუზმე';

  @override
  String get food_add_lunch => 'დაამატეთ სადილი';

  @override
  String get food_add_dinner => 'დაამატეთ ვახშამი';

  @override
  String get food_add_snack => 'საჭმლის დამატება';

  @override
  String get food_total_calories => 'სულ კალორიები';

  @override
  String get food_empty_meal => 'ამ კერძისთვის ჯერ არ არის შესული საკვები';

  @override
  String get food_empty_diary =>
      'ამ დღისთვის არანაირი კვება არ არის დარეგისტრირებული';

  @override
  String get food_log_first_meal =>
      'შეეხეთ +-ს თქვენი პირველი გემრიელი კერძის დასაწერად';

  @override
  String get food_quick_add => 'სწრაფი დამატება';

  @override
  String get food_search_hint => 'მოძებნეთ კერძები, ხილი, დალი, როტი...';

  @override
  String get food_custom_recipe => 'მორგებული საკვები და რეცეპტი';

  @override
  String get food_scan_barcode => 'შტრიხკოდის სკანირება';

  @override
  String get food_camera_scan => 'AI საკვების სკანერი';

  @override
  String get food_recent => 'უახლესი საკვები';

  @override
  String get food_favourites => 'რჩეულები';

  @override
  String get food_macro_summary => 'მაკროელემენტების დაშლა';

  @override
  String get food_delete_meal_confirm =>
      'დარწმუნებული ხართ, რომ გსურთ ამ ელემენტის წაშლა?';

  @override
  String get food_item_deleted => 'საკვები ნივთი ამოღებულია';

  @override
  String get food_remaining => 'დარჩენილი';

  @override
  String get food_consumed => 'მოხმარებული';

  @override
  String food_of_target(Object target) {
    return '$target კკალ-დან';
  }

  @override
  String get foodSearch_title => 'მოძებნეთ საკვები';

  @override
  String get foodSearch_scan_barcode => 'შტრიხკოდის სკანირება';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'შექმენით საბაჟო საკვები';

  @override
  String get foodSearch_recent_searches => 'ბოლო ძიებები';

  @override
  String get foodSearch_popular => 'პოპულარული კერძები';

  @override
  String get foodSearch_no_results =>
      'არ არის საკვები, რომელიც შეესაბამება თქვენს ძიებას';

  @override
  String get barcode_title => 'შტრიხკოდების სკანერი';

  @override
  String get barcode_align => 'გაასწორეთ შტრიხკოდი კამერის ჩარჩოში';

  @override
  String get barcode_not_found => 'პროდუქტი არ მოიძებნა მონაცემთა ბაზაში';

  @override
  String get barcode_premium_feature =>
      'შტრიხკოდების სკანირება ხელმისაწვდომია Bloomi Pro-ით';

  @override
  String get camera_title => 'AI საკვების სკანერი';

  @override
  String get camera_tap_hint => 'გადაიღეთ თქვენი კერძის ნათელი ფოტო';

  @override
  String get camera_analysing => 'მიმდინარეობს საჭმლის თეფშის ანალიზი...';

  @override
  String get camera_detected => 'აღმოჩენილი ნივთები';

  @override
  String get camera_flash => 'Flash-ის გადართვა';

  @override
  String get camera_retake => 'გადაიღეთ ფოტო';

  @override
  String get camera_confirm_food => 'დაადასტურეთ ნივთები';

  @override
  String get customFood_title => 'მორგებული საკვები და რეცეპტი';

  @override
  String get customFood_name_hint => 'კერძის ან ინგრედიენტის სახელი';

  @override
  String get customFood_calories_hint => 'კალორია (კკალ)';

  @override
  String get customFood_protein_hint => 'ცილა (გ)';

  @override
  String get customFood_carbs_hint => 'ნახშირწყლები (გ)';

  @override
  String get customFood_fat_hint => 'ცხიმი (გ)';

  @override
  String get customFood_save => 'რეცეპტის შენახვა';

  @override
  String get water_tracker_title => 'წყლის ტრეკერი';

  @override
  String get water_daily_target => 'ყოველდღიური ჰიდრატაციის მიზანი';

  @override
  String get water_logged_today => 'შესულია დღეს';

  @override
  String get water_add_glass => '+250 მლ მინა';

  @override
  String get water_add_bottle => '+500 მლ ბოთლი';

  @override
  String get water_custom_amount => 'მორგებული თანხა';

  @override
  String get water_reminder_tip =>
      'დალიეთ წყალი რეგულარულად მთელი დღის განმავლობაში სტაბილური ენერგიისთვის.';

  @override
  String water_logged_toast(Object amount) {
    return 'შემოსული $amount მლ წყალი 💧';
  }

  @override
  String get workout_title => 'ვარჯიშის ჟურნალი';

  @override
  String get workout_add_exercise => 'ვარჯიშის დამატება';

  @override
  String get workout_cardio => 'კარდიო';

  @override
  String get workout_strength => 'სიძლიერე';

  @override
  String get workout_yoga => 'იოგა და მოქნილობა';

  @override
  String get workout_duration => 'ხანგრძლივობა';

  @override
  String get workout_intensity => 'ინტენსივობა';

  @override
  String get workout_calories_burned => 'დამწვარი კალორიები';

  @override
  String get workout_empty => 'დღეს არცერთი ვარჯიში არ არის დარეგისტრირებული';

  @override
  String get workout_save_success => 'ვარჯიში წარმატებით შენახულია!';

  @override
  String get workout_type => 'ვარჯიშის ტიპი';

  @override
  String get workout_notes => 'შენიშვნები და ანარეკლები';

  @override
  String get health_overview_title => 'ჯანმრთელობა და სასიცოცხლო მნიშვნელობები';

  @override
  String get health_heart_rate => 'გულისცემა';

  @override
  String get health_blood_oxygen => 'სისხლის ჟანგბადი (SpO2)';

  @override
  String get health_blood_pressure => 'არტერიული წნევა';

  @override
  String get health_blood_glucose => 'სისხლში გლუკოზა';

  @override
  String get health_body_temperature => 'სხეულის ტემპერატურა';

  @override
  String get health_sleep_tracking => 'ძილის თვალყურის დევნება';

  @override
  String get health_weight_tracking => 'წონა და სხეულის შემადგენლობა';

  @override
  String get health_waist_hip => 'წელის-თეძოს თანაფარდობა';

  @override
  String get health_devices_hub => 'მოწყობილობები და Smartwatch Hub';

  @override
  String get health_sync_now => 'ჯანმრთელობის მონაცემების სინქრონიზაცია';

  @override
  String health_last_synced(Object time) {
    return 'ბოლო სინქრონიზაცია: $time';
  }

  @override
  String get health_manual_entry => 'სახელმძღვანელო ჯანმრთელობის ჩანაწერი';

  @override
  String get health_metric_detail => 'მეტრული დეტალები';

  @override
  String get health_connected_sensors => 'დაკავშირებული ჯანმრთელობის სენსორები';

  @override
  String get plan_title => 'ყოველდღიური გეგმა';

  @override
  String get plan_weekly_title => 'ყოველკვირეული ველნეს გეგმა';

  @override
  String get plan_calorie_target => 'კალორიული სამიზნე';

  @override
  String get plan_water_target => 'ჰიდრატაციის სამიზნე';

  @override
  String get plan_step_target => 'ნაბიჯის მიზანი';

  @override
  String get plan_sleep_target => 'ძილის სამიზნე';

  @override
  String get plan_meal_suggestions => 'კვების წინადადებები';

  @override
  String get plan_healthy_habits => 'ჯანსაღი ჩვევები და რჩევები';

  @override
  String get plan_coach_advice => 'Bloomi AI მწვრთნელის რეკომენდაციები';

  @override
  String get plan_generated_title => 'პერსონალიზებული ყოველდღიური განრიგი';

  @override
  String get profile_title => 'პროფილი';

  @override
  String get profile_edit => 'პროფილის რედაქტირება';

  @override
  String get profile_name => 'სახელი';

  @override
  String get profile_age => 'ასაკი';

  @override
  String get profile_gender => 'სქესი';

  @override
  String get profile_height => 'სიმაღლე';

  @override
  String get profile_weight => 'წონა';

  @override
  String get profile_goal => 'პირველადი მიზანი';

  @override
  String get profile_activity_level => 'აქტივობის დონე';

  @override
  String get profile_stats => 'ჩემი ჯანმრთელობის სტატისტიკა';

  @override
  String get profile_saved => 'პროფილი წარმატებით განახლდა';

  @override
  String get profile_bmi => 'სხეულის მასის ინდექსი (BMI)';

  @override
  String get profile_membership => 'წევრობა';

  @override
  String get settings => 'პარამეტრები';

  @override
  String get preferences_habits => 'პრეფერენციები და ჩვევები';

  @override
  String get appearance_theme => 'გარეგნობა და თემა';

  @override
  String get appearance_theme_sub =>
      'მუქი, მსუბუქი, სისტემის რეჟიმი და აპლიკაციის ფონის პარამეტრები';

  @override
  String get permissions => 'ნებართვები და სისტემაში წვდომა';

  @override
  String get permissions_sub =>
      'Health Connect, ნაბიჯის სენსორები, GPS, შეტყობინებები და კამერა';

  @override
  String get reminders_notifications => 'შეხსენებები და შეტყობინებები';

  @override
  String get reminders_sub =>
      'კვების დრო, წყალი, წონის შემოწმება და ძილის წინ შეხსენებები';

  @override
  String get units_of_measurement => 'საზომი ერთეულები';

  @override
  String get units_sub =>
      'მეტრული (კგ, სმ, მლ, კმ) ან იმპერიული (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'აპლიკაციის ენა';

  @override
  String get language_sub =>
      'ინგლისური, हिन्दी (ჰინდი), ჰინგლიში და 195+ გლობალური ენა';

  @override
  String get home_screen_widgets => 'მთავარი ეკრანის ვიჯეტები';

  @override
  String get widgets_sub =>
      'ცოცხალი Android ვიჯეტები: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'ატარეთ OS Watch აპი';

  @override
  String get wear_os_sub =>
      'Smartwatch კომპანიონი, ფილები, გართულებები და ცოცხალი ელემენტები';

  @override
  String get goals_wellness => 'მიზნები და კეთილდღეობა';

  @override
  String get nutrition_targets => 'კვების მიზნები და მაკრო გაყოფა';

  @override
  String get nutrition_targets_sub =>
      'კალორიული სამიზნე, ცილები, ნახშირწყლები, ცხიმები და წყალი';

  @override
  String get weekly_recap => 'ყოველკვირეული ველნესის მიმოხილვა';

  @override
  String get weekly_recap_sub =>
      '7 დღის საშუალო კალორიული შემცველობა, მაკრო თანაფარდობა და საუკეთესო დღე';

  @override
  String get streaks_milestones => 'ზოლები და ეტაპები';

  @override
  String get streaks_sub =>
      'აქტიური ყვავილობის ზოლები, სამკერდე ნიშნები და მიღწევები';

  @override
  String get connected_devices => 'დაკავშირებული მოწყობილობები და ეკოსისტემა';

  @override
  String get devices_hub => 'მოწყობილობები და Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'შემოგარენი და ამინდი';

  @override
  String get surroundings_sub =>
      'ჰაერის ხარისხი (AQI), UV ინდექსი და ამინდის დამატენიანებელი რჩევები';

  @override
  String get bloomi_pro => 'Bloomi Pro გამოწერა';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, საწყისი ეკრანის 5 ვიჯეტი და სასიცოცხლო მნიშვნელობის თვალთვალი';

  @override
  String get about_security => 'და უსაფრთხოების შესახებ';

  @override
  String get about_bloomi => 'ბლუმის შესახებ';

  @override
  String get about_bloomi_sub => 'აგების სპეციფიკაციები, ვერსია, ატრიბუტები';

  @override
  String get privacy_policy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get privacy_policy_sub =>
      'ოფლაინ-პირველი, მოწყობილობაზე მონაცემთა არქიტექტურა';

  @override
  String get terms_conditions => 'წესები და პირობები';

  @override
  String get terms_conditions_sub =>
      'მომსახურების პირობები და ველნესი მითითებები';

  @override
  String get delete_account => 'ანგარიშისა და მონაცემების წაშლა';

  @override
  String get delete_account_sub =>
      'შეუქცევადად წაშალეთ ადგილობრივი SQLite მონაცემები და ღრუბლოვანი სარეზერვო ასლები';

  @override
  String get healthy_habits => 'შექმენით ნაზი, ხანგრძლივი ჯანმრთელობის ჩვევები';

  @override
  String get all_logs => 'ჩემი თვალთვალის მონაცემები და ჟურნალები';

  @override
  String get search_language =>
      'ძიება ენის ან მშობლიური დამწერლობის მიხედვით...';

  @override
  String get languages_available => 'ხელმისაწვდომი ენები';

  @override
  String get no_matching_languages => 'შესატყვისი ენები ვერ მოიძებნა';

  @override
  String get try_searching =>
      'სცადეთ მოძებნოთ მშობლიური დამწერლობა ან ინგლისური მართლწერა';

  @override
  String get partially_translated => 'ნაწილობრივ ნათარგმნი';

  @override
  String get complete_translation => 'სრული';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ენა დაყენებულია $name-ზე ($nativeName)';
  }

  @override
  String get surroundings_title => 'გარემო და გარემო';

  @override
  String get surroundings_aqi => 'ჰაერის ხარისხის ინდექსი';

  @override
  String get surroundings_uv => 'UV ინდექსი';

  @override
  String get surroundings_temp => 'ტემპერატურა';

  @override
  String get surroundings_humidity => 'ტენიანობა';

  @override
  String get surroundings_hydration_advice =>
      'იყავით კარგად დატენიანებული მიმდინარე ამინდის პირობებში.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'მოძებნეთ საკვები';

  @override
  String get food_quick_barcode => 'შტრიხკოდის სკანირება 👑';

  @override
  String get food_quick_water => 'დაამატეთ წყალი';

  @override
  String get food_quick_custom => 'მორგებული საკვები';

  @override
  String get surroundings_good => 'კარგი';

  @override
  String get surroundings_moderate => 'ზომიერი';

  @override
  String get surroundings_unhealthy => 'არაჯანსაღი';

  @override
  String get notifications_title => 'შეტყობინებები და გაფრთხილებები';

  @override
  String get notifications_empty => 'ახალი შეტყობინებები არ არის';

  @override
  String get notifications_mark_read => 'ყველა წაკითხულად მონიშვნა';

  @override
  String get notifications_clear => 'ყველას გასუფთავება';

  @override
  String get reminders => 'შეხსენების პარამეტრები';

  @override
  String get notifications => 'შეტყობინებები';

  @override
  String get reminders_breakfast_title => 'საუზმის შეხსენება 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'დილა მშვიდობისა! დროა მკვებავი საუზმისთვის $time-ზე.';
  }

  @override
  String get reminders_lunch_title => 'ლანჩის შეხსენება 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'შეაჩერეთ და ისიამოვნეთ დაბალანსებული, ყურადღებიანი ლანჩით $time-ზე.';
  }

  @override
  String get reminders_dinner_title => 'სადილის შეხსენება 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'მსუბუქი, დამაკმაყოფილებელი ვახშმის დრო $time-ზე.';
  }

  @override
  String get reminders_water_title => 'დამატენიანებელი ნუჯი 💧';

  @override
  String reminders_water_body(Object time) {
    return 'დროა დალიოთ ერთი ჭიქა წყალი! ($time)';
  }

  @override
  String get reminders_weight_title => 'ყოველკვირეული აწონვა ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'თვალყური ადევნეთ თქვენი სხეულის ყოველკვირეულ მეტრებს Bloomi-ზე ($time).';
  }

  @override
  String get reminders_sleep_title => 'ძილის წინ Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'განიტვირთეთ და მოემზადეთ მშვიდი ძილისთვის ($time).';
  }

  @override
  String get onboard_welcome => 'კეთილი იყოს თქვენი მობრძანება Bloomi-ში';

  @override
  String get onboard_sub =>
      'თქვენი მეგობრული, ოფლაინ-პირველი ჯანმრთელობისა და კვების თანამგზავრი.';

  @override
  String get onboard_get_started => 'დაიწყეთ';

  @override
  String get onboard_sign_in => 'შესვლა';

  @override
  String get onboard_skip => 'გამოტოვება';

  @override
  String get onboard_choose_goal =>
      'რა არის თქვენი მთავარი კეთილდღეობის მიზანი?';

  @override
  String get onboard_goal_weight_loss => 'ნაზი წონის დაკლება';

  @override
  String get onboard_goal_muscle => 'კუნთების მომატება და ძალა';

  @override
  String get onboard_goal_energy =>
      'ყოველდღიური ენერგია და სიცოცხლისუნარიანობა';

  @override
  String get onboard_goal_habits => 'ჯანსაღი გონებამახვილური კვება';

  @override
  String get onboard_about_you => 'გვითხარი შენს შესახებ';

  @override
  String get onboard_lifestyle => 'თქვენი ყოველდღიური რუტინა';

  @override
  String get onboard_permissions_title => 'ნებართვები და სისტემაში წვდომა';

  @override
  String get onboard_permissions_sub =>
      'მიეცით წვდომა სინქრონიზაციის ნაბიჯებზე, ვარჯიშებსა და შეხსენებებზე.';

  @override
  String get onboard_plan_ready_title => 'თქვენი მორგებული გეგმა მზად არის!';

  @override
  String get onboard_plan_ready_sub =>
      'ჩვენ შევქმენით ნაზი, პერსონალიზებული კვების და კეთილდღეობის საგზაო რუკა მხოლოდ თქვენთვის.';

  @override
  String get onboard_enter_bloomi => 'შედი ბლუმი';

  @override
  String get insights_weekly_report => 'ყოველკვირეული ველნესის მიმოხილვა';

  @override
  String insights_best_day(Object day) {
    return 'საუკეთესო თანმიმდევრულობის დღე: $day';
  }

  @override
  String get insights_streaks_badges => 'ზოლები და ეტაპები';

  @override
  String insights_unlocked_on(Object date) {
    return 'განბლოკილია $date-ზე';
  }

  @override
  String get insights_keep_going => 'გააგრძელე ფანტასტიკური პროგრესი!';

  @override
  String get widgets_title => 'საწყისი ეკრანის ვიჯეტები';

  @override
  String widgets_active_count(Object count) {
    return 'აქტიური ვიჯეტები: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'ნაბიჯები და აქტიური ბეჭედი';

  @override
  String get widgets_water_title => 'ჰიდრატაციის სწრაფი ჟურნალი';

  @override
  String get widgets_mascot_title => 'ბლუმის თილისმა კომპანიონი';

  @override
  String get wear_os_title => 'ატარეთ OS Smartwatch';

  @override
  String get wear_os_connected => 'დაკავშირებულია Watch-თან';

  @override
  String get wear_os_sync => 'საათის მონაცემების სინქრონიზაცია';

  @override
  String get theme_title => 'გარეგნობა და თემა';

  @override
  String get theme_mode => 'თემის რეჟიმი';

  @override
  String get theme_light => 'ნათელი';

  @override
  String get theme_dark => 'ბნელი';

  @override
  String get theme_system => 'სისტემა';

  @override
  String get theme_background_palette => 'ფონის პალიტრა';

  @override
  String get units_title => 'საზომი ერთეულები';

  @override
  String get units_metric => 'მეტრიკა (კგ, სმ, მლ)';

  @override
  String get units_imperial => 'იმპერიული (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'დაფის ჩატვირთვა შეუძლებელია';

  @override
  String get home_health_permission_req => 'საჭიროა Health Connect-ის ნებართვა';

  @override
  String get home_health_permission_desc =>
      'Bloomi მოითხოვს Health Connect-ის ნებართვას რეალური ნაბიჯების, გულისცემის და მობილური სახლის ვიჯეტების რეალურ დროში სინქრონიზაციისთვის.';

  @override
  String get home_allow_health => 'Health Connect-ის დაშვება';

  @override
  String get home_ready_mindful_day => 'მზად ხართ გააზრებული დღისთვის? ✨';

  @override
  String get home_quick_add => 'სწრაფი დამატება';

  @override
  String get home_live_gps => 'ცოცხალი GPS';

  @override
  String get home_calories_remaining_label => 'დარჩენილი კალორია';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'შეჭამეს: $consumed / $target კკალ';
  }

  @override
  String get home_tap_water_tracker => 'ონკანი წყლის ტრეკერისთვის 💧';

  @override
  String get home_water_goal_reached => 'ყოველდღიური მიზანი მიღწეულია 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining მლ დღიურ მიზნამდე';
  }

  @override
  String get home_details => 'დეტალები';

  @override
  String get home_upgrade_plan_desc =>
      'განაახლეთ პერსონალიზებული ყოველდღიური მიზნების და AI გეგმის განბლოკვის მიზნით';

  @override
  String get home_unlock => 'განბლოკვა 👑';

  @override
  String get home_quick_log_hint => 'სწრაფად ჩაწერეთ ჯანმრთელობის ჩანაწერი';

  @override
  String get food_serving_size => 'სერვისის ზომა';

  @override
  String get food_serving_grams => 'სერვირება (გ)';

  @override
  String get food_number_servings => 'სერვირების რაოდენობა';

  @override
  String get food_calories_per_serving => 'კალორია თითო პორციაზე';

  @override
  String get food_recipe_ingredients => 'ინგრედიენტები';

  @override
  String get food_recipe_add_ingredient => 'დაამატეთ ინგრედიენტი';

  @override
  String get food_recipe_directions => 'ინსტრუქციები და შენიშვნები';

  @override
  String get food_recipe_total => 'სულ რეცეპტი კვების';

  @override
  String get food_recipe_per_serving => 'თითო ემსახურება კვების';

  @override
  String get food_recipe_saved_toast =>
      'მორგებული საკვები წარმატებით შენახულია!';

  @override
  String get food_barcode_found => 'პროდუქტი ნაპოვნია!';

  @override
  String get food_barcode_not_found_desc =>
      'ჩვენ ვერ ვიპოვეთ ეს შტრიხკოდი ღია მონაცემთა ბაზაში. შეგიძლიათ დაამატოთ ის, როგორც მორგებული საკვები.';

  @override
  String get food_add_custom_btn => 'დაამატეთ მორგებული საკვები';

  @override
  String get food_scan_again => 'ხელახლა სკანირება';

  @override
  String get food_review_items => 'გადახედეთ აღმოჩენილ საკვებს';

  @override
  String get food_review_hint =>
      'დაარეგულირეთ რაოდენობა ან ამოიღეთ ნებისმიერი ამოუცნობი ნივთი';

  @override
  String get food_log_selected => 'შესვლა შერჩეული საკვები';

  @override
  String get food_favourites_title => 'საყვარელი საჭმელები';

  @override
  String get food_recent_title => 'უახლესი საკვები';

  @override
  String get food_no_favourites =>
      'საყვარელი საკვები ჯერ არ არის. შეეხეთ ნებისმიერ საკვებს, რომ შეინახოთ აქ.';

  @override
  String get food_no_recents => 'ახლახან შესული საკვები ვერ მოიძებნა.';

  @override
  String get food_nutrition_details_title => 'ყოველდღიური კვების დეტალები';

  @override
  String get food_macro_protein_label => 'ცილის დაშლა';

  @override
  String get food_macro_carbs_label => 'ნახშირწყლების დაშლა';

  @override
  String get food_macro_fat_label => 'ცხიმის დაშლა';

  @override
  String get food_macro_fiber_label => 'ბოჭკოების დაშლა';

  @override
  String get food_daily_target_comparison => 'სამიზნე შედარება';

  @override
  String food_target_label(Object target) {
    return 'სამიზნე: $target';
  }

  @override
  String get food_edit_entry => 'დღიურის ჩანაწერის რედაქტირება';

  @override
  String get food_delete_entry => 'ჩანაწერის წაშლა';

  @override
  String food_grams_short(Object grams) {
    return '$grams გ';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal კკალ';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current $target მლ-დან';
  }

  @override
  String get water_intake_history => 'დღევანდელი წყლის მორები';

  @override
  String get water_no_logs_today =>
      'დღეს წყალი ჯერ არ არის შემოსული. დაატენიანეთ და შეეხეთ სწრაფი დამატების ღილაკს!';

  @override
  String get water_adjust_goal => 'ყოველდღიური მიზნის კორექტირება';

  @override
  String get health_connect_banner => 'დაკავშირებულია Health Connect-თან';

  @override
  String get health_vitals_summary =>
      'ყოველდღიური ჯანმრთელობის სასიცოცხლო მნიშვნელობები';

  @override
  String get health_latest_heart_rate => 'უახლესი გულისცემა';

  @override
  String get health_latest_bp => 'არტერიული წნევა';

  @override
  String get health_latest_spo2 => 'სისხლის ჟანგბადი';

  @override
  String get health_latest_glucose => 'სისხლში გლუკოზა';

  @override
  String get health_latest_weight => 'წონა';

  @override
  String get health_latest_sleep => 'ძილის ხანგრძლივობა';

  @override
  String get health_add_manual => 'დაამატეთ ხელით გაზომვა';

  @override
  String get health_history_trends => 'ისტორიული ტენდენციები';

  @override
  String get health_sync_success =>
      'ჯანმრთელობის მონაცემები წარმატებით სინქრონიზებულია!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours სთ $mins წთ';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val კგ';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm წუთში';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct %';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic მმ Hg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val მგ/დლ';
  }

  @override
  String get health_devices_title => 'დაკავშირებული მოწყობილობები და Wearables';

  @override
  String get health_devices_desc =>
      'მართეთ დაწყვილებული ჭკვიანი საათები, ფიტნეს ტრეკერები და ჯანმრთელობის სენსორები.';

  @override
  String get health_workout_editor_title => 'ვარჯიშის რედაქტირება';

  @override
  String get health_workout_name_label => 'ვარჯიშის სახელი';

  @override
  String get health_workout_duration_label => 'ხანგრძლივობა (წუთები)';

  @override
  String get health_workout_calories_label => 'სავარაუდო კალორიები (კკალ)';

  @override
  String get health_workout_date_label => 'თარიღი და დრო';

  @override
  String get plan_daily_wellness_roadmap =>
      'თქვენი პერსონალიზებული საგზაო რუკა';

  @override
  String get plan_morning_routine => 'დილის რუტინა';

  @override
  String get plan_afternoon_routine => 'შუადღის ველნესი';

  @override
  String get plan_evening_routine => 'საღამოს Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI მწვრთნელი';

  @override
  String get plan_weekly_overview => '7-დღიანი ველნესი ფოკუსი';

  @override
  String get plan_targets_title => 'ჯანმრთელობის მიზნები და მიზნები';

  @override
  String get plan_calorie_budget_label => 'ყოველდღიური კალორიული ბიუჯეტი';

  @override
  String get plan_water_budget_label => 'ყოველდღიური წყლის სამიზნე';

  @override
  String get plan_step_budget_label => 'ყოველდღიური ნაბიჯის მიზანი';

  @override
  String get plan_macro_split_label => 'მაკროელემენტების თანაფარდობა';

  @override
  String get profile_personal_details => 'პირადი დეტალები';

  @override
  String get profile_body_stats => 'სხეულის გაზომვები';

  @override
  String get profile_app_preferences => 'პრეფერენციები და აპის პარამეტრები';

  @override
  String get profile_edit_name_hint => 'შენი სახელი';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'სიმაღლე ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'წონა ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'ასაკი';

  @override
  String get profile_gender_male => 'მამრობითი';

  @override
  String get profile_gender_female => 'ქალი';

  @override
  String get profile_gender_other => 'სხვა / მირჩევნია არ თქვა';

  @override
  String get profile_activity_sedentary => 'მჯდომარე (მცირე ვარჯიში)';

  @override
  String get profile_activity_light => 'მსუბუქად აქტიური (1-3 დღე/კვირაში)';

  @override
  String get profile_activity_moderate => 'ზომიერად აქტიური (3-5 დღე/კვირაში)';

  @override
  String get profile_activity_very => 'ძალიან აქტიური (6-7 დღე/კვირაში)';

  @override
  String get settings_wear_os_header => 'ატარეთ OS Companion აპლიკაცია';

  @override
  String get settings_wear_os_desc =>
      'დააინსტალირეთ Bloomi ფილა და კომპლექსი თქვენს Wear OS საათზე, რათა გადახედოთ კალორიებს, წყალს და ნაბიჯებს.';

  @override
  String get settings_widgets_header => 'ინტერაქტიული Android ვიჯეტები';

  @override
  String get settings_widgets_desc =>
      'ჩაამაგრეთ რეალურ დროში ვიჯეტები თქვენი მოწყობილობის მთავარ ეკრანზე მყისიერი განახლებისთვის.';

  @override
  String get settings_about_header => 'ბლუმის შესახებ';

  @override
  String get settings_about_version => 'ვერსია';

  @override
  String get settings_about_build => 'აშენება 100';

  @override
  String get settings_about_credits =>
      'შექმნილია ზრუნვით, ჯანსაღი ცხოვრებისათვის.';

  @override
  String get settings_terms_header => 'წესები და პირობები';

  @override
  String get settings_privacy_header => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get settings_delete_header => 'ანგარიშისა და მონაცემების წაშლა';

  @override
  String get settings_delete_warning =>
      'ამ მოქმედების გაუქმება შეუძლებელია. თქვენი ყველა კვება, ვარჯიში, სიცოცხლისუნარიანობა და პროფილი სამუდამოდ წაიშლება.';

  @override
  String get settings_delete_confirm_btn => 'სამუდამოდ წაშლა';

  @override
  String get onboard_welcome_headline =>
      'კეთილი იყოს თქვენი მობრძანება Bloomi-ში ✨';

  @override
  String get onboard_welcome_tagline =>
      'ნაზი, ყურადღებიანი ველნესი თვალყურის დევნება, რომელიც შექმნილია თქვენს ცხოვრებაში.';

  @override
  String get onboard_step_about => 'თქვენს შესახებ';

  @override
  String get onboard_step_goals => 'შენი მიზნები';

  @override
  String get onboard_step_lifestyle => 'ყოველდღიური ჩვევები';

  @override
  String get onboard_step_permissions => 'ნებართვები';

  @override
  String get onboard_step_plan => 'მზადაა!';

  @override
  String get onboard_health_connect_perm => 'Health Connect წვდომა';

  @override
  String get onboard_step_sensors_perm => 'ნაბიჯის მრიცხველის სენსორი';

  @override
  String get onboard_notif_perm => 'ყურადღებიანი შეხსენებები და შეტყობინებები';

  @override
  String get onboard_camera_perm => 'კამერა (შტრიხკოდის და საკვების სკანერი)';

  @override
  String get onboard_grant_permissions => 'ნებართვების გაცემა';

  @override
  String get onboard_continue_dashboard => 'გახსენით დაფა';

  @override
  String get notif_channel_hydration_name => 'დამატენიანებელი სტიმულები';

  @override
  String get notif_channel_hydration_desc =>
      'ნაზი წყლის შეხსენება მთელი დღის განმავლობაში';

  @override
  String get notif_channel_nutrition_name => 'კვების და კვების შეხსენებები';

  @override
  String get notif_channel_nutrition_desc =>
      'საუზმის, ლანჩისა და ვახშმის შეხსენების გაფრთხილებები';

  @override
  String get notif_channel_steps_name => 'ნაბიჯის ეტაპები';

  @override
  String get notif_channel_steps_desc =>
      'დღესასწაულები ყოველდღიური ნაბიჯების მიზნების მიღწევისას';

  @override
  String get notif_channel_vitals_name =>
      'ჯანმრთელობისა და სასიცოცხლო მნიშვნელობის შემოწმებები';

  @override
  String get notif_channel_vitals_desc => 'წონის და ძილის წინ შეხსენებები';

  @override
  String get notif_action_log_water => '💧 ლოგი +250მლ';

  @override
  String get notif_action_snooze => 'ჩაჩუმება 15 მ';

  @override
  String get notif_action_log_meal => '🥗 ლოგის კვება';

  @override
  String get language => 'ენა';

  @override
  String get share => 'გაზიარება';

  @override
  String common_days(Object count) {
    return '$count დღის წინ';
  }
}
