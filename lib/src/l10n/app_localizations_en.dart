// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Bloomi';

  @override
  String get nav_home => 'Home';

  @override
  String get nav_today => 'Today';

  @override
  String get nav_plan => 'Plan';

  @override
  String get nav_food => 'Food';

  @override
  String get nav_food_diary => 'Food Diary';

  @override
  String get nav_workout => 'Workout Log';

  @override
  String get nav_health => 'Health';

  @override
  String get nav_profile => 'Profile';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get done => 'Done';

  @override
  String get close => 'Close';

  @override
  String get back => 'Back';

  @override
  String get next => 'Next';

  @override
  String get continue_btn => 'Continue';

  @override
  String get confirm => 'Confirm';

  @override
  String get search => 'Search';

  @override
  String get filter => 'Filter';

  @override
  String get all => 'All';

  @override
  String get active => 'Active';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get refresh => 'Refresh';

  @override
  String get retry => 'Retry';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

  @override
  String get loading => 'Loading...';

  @override
  String get no_data => 'No data available';

  @override
  String get offline => 'Offline Mode';

  @override
  String get offline_sub => 'Changes will sync once reconnected';

  @override
  String get undo => 'Undo';

  @override
  String get portion => 'Portion';

  @override
  String get quantity => 'Quantity';

  @override
  String get unit => 'Unit';

  @override
  String get clear => 'Clear';

  @override
  String get select => 'Select';

  @override
  String get apply => 'Apply';

  @override
  String get reset => 'Reset';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get optional => 'Optional';

  @override
  String get calories => 'Calories';

  @override
  String get protein => 'Protein';

  @override
  String get carbs => 'Carbs';

  @override
  String get fat => 'Fat';

  @override
  String get fiber => 'Fiber';

  @override
  String get water => 'Water';

  @override
  String get steps => 'Steps';

  @override
  String get kcal => 'kcal';

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
  String get inches => 'in';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'hrs';

  @override
  String get minutes => 'mins';

  @override
  String get serving => 'Serving';

  @override
  String get servings => 'Servings';

  @override
  String get serving_size => 'Serving Size';

  @override
  String get per_100g => 'per 100g';

  @override
  String get india => 'India';

  @override
  String get asia => 'Asia';

  @override
  String get europe => 'Europe';

  @override
  String get middle_east => 'Middle East';

  @override
  String get africa => 'Africa';

  @override
  String get americas => 'Americas';

  @override
  String get home_title => 'Home';

  @override
  String get home_greeting_morning => 'Good Morning';

  @override
  String get home_greeting_afternoon => 'Good Afternoon';

  @override
  String get home_greeting_evening => 'Good Evening';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days streak',
      one: '1 day streak',
      zero: '0 days streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Burned';

  @override
  String get home_calories_budget => 'Calorie Budget';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal remaining';
  }

  @override
  String get home_water_title => 'Daily Hydration';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Steps Walked';

  @override
  String get home_quick_actions => 'Quick Actions';

  @override
  String get home_log_meal => 'Log Meal';

  @override
  String get home_log_water => 'Log Water';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Log Weight';

  @override
  String get home_insights_title => 'Today\'s Insights';

  @override
  String get home_quote =>
      'Small healthy choices create blooming transformations.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Surroundings & Air';

  @override
  String get home_notifications => 'Notifications';

  @override
  String get home_daily_score => 'Daily Wellness Score';

  @override
  String get home_view_all => 'View All';

  @override
  String get food_diary_title => 'Food Diary';

  @override
  String get food_breakfast => 'Breakfast';

  @override
  String get food_lunch => 'Lunch';

  @override
  String get food_dinner => 'Dinner';

  @override
  String get food_snacks => 'Snacks';

  @override
  String get food_add_food => 'Add Food';

  @override
  String get food_edit_food => 'Edit Food';

  @override
  String get food_add_breakfast => 'Add Breakfast';

  @override
  String get food_add_lunch => 'Add Lunch';

  @override
  String get food_add_dinner => 'Add Dinner';

  @override
  String get food_add_snack => 'Add Snack';

  @override
  String get food_total_calories => 'Total Calories';

  @override
  String get food_empty_meal => 'No foods logged for this meal yet';

  @override
  String get food_empty_diary => 'No meals logged for this day';

  @override
  String get food_log_first_meal => 'Tap + to log your first delicious meal';

  @override
  String get food_quick_add => 'Quick Add';

  @override
  String get food_search_hint => 'Search dishes, fruits, dal, roti...';

  @override
  String get food_custom_recipe => 'Custom Food & Recipe';

  @override
  String get food_scan_barcode => 'Scan Barcode';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Recent Foods';

  @override
  String get food_favourites => 'Favourites';

  @override
  String get food_macro_summary => 'Macronutrient Breakdown';

  @override
  String get food_delete_meal_confirm =>
      'Are you sure you want to remove this item?';

  @override
  String get food_item_deleted => 'Food item removed';

  @override
  String get food_remaining => 'remaining';

  @override
  String get food_consumed => 'consumed';

  @override
  String food_of_target(Object target) {
    return 'of $target kcal';
  }

  @override
  String get foodSearch_title => 'Search Foods';

  @override
  String get foodSearch_scan_barcode => 'Scan Barcode';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Create Custom Food';

  @override
  String get foodSearch_recent_searches => 'Recent Searches';

  @override
  String get foodSearch_popular => 'Popular Dishes';

  @override
  String get foodSearch_no_results => 'No foods matching your search';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align => 'Align barcode inside the camera frame';

  @override
  String get barcode_not_found => 'Product not found in database';

  @override
  String get barcode_premium_feature =>
      'Barcode scanning is available with Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Take a clear photo of your dish';

  @override
  String get camera_analysing => 'Analysing food plate...';

  @override
  String get camera_detected => 'Detected items';

  @override
  String get camera_flash => 'Toggle Flash';

  @override
  String get camera_retake => 'Retake Photo';

  @override
  String get camera_confirm_food => 'Confirm Items';

  @override
  String get customFood_title => 'Custom Food & Recipe';

  @override
  String get customFood_name_hint => 'Dish or ingredient name';

  @override
  String get customFood_calories_hint => 'Calories (kcal)';

  @override
  String get customFood_protein_hint => 'Protein (g)';

  @override
  String get customFood_carbs_hint => 'Carbs (g)';

  @override
  String get customFood_fat_hint => 'Fat (g)';

  @override
  String get customFood_save => 'Save Recipe';

  @override
  String get water_tracker_title => 'Water Tracker';

  @override
  String get water_daily_target => 'Daily Hydration Goal';

  @override
  String get water_logged_today => 'Logged Today';

  @override
  String get water_add_glass => '+250 ml Glass';

  @override
  String get water_add_bottle => '+500 ml Bottle';

  @override
  String get water_custom_amount => 'Custom Amount';

  @override
  String get water_reminder_tip =>
      'Drink water regularly throughout the day for steady energy.';

  @override
  String water_logged_toast(Object amount) {
    return 'Logged $amount ml of water 💧';
  }

  @override
  String get workout_title => 'Workout Log';

  @override
  String get workout_add_exercise => 'Add Workout';

  @override
  String get workout_cardio => 'Cardio';

  @override
  String get workout_strength => 'Strength';

  @override
  String get workout_yoga => 'Yoga & Flexibility';

  @override
  String get workout_duration => 'Duration';

  @override
  String get workout_intensity => 'Intensity';

  @override
  String get workout_calories_burned => 'Calories Burned';

  @override
  String get workout_empty => 'No workouts logged today';

  @override
  String get workout_save_success => 'Workout saved successfully!';

  @override
  String get workout_type => 'Workout Type';

  @override
  String get workout_notes => 'Notes & Reflections';

  @override
  String get health_overview_title => 'Health & Vitals';

  @override
  String get health_heart_rate => 'Heart Rate';

  @override
  String get health_blood_oxygen => 'Blood Oxygen (SpO2)';

  @override
  String get health_blood_pressure => 'Blood Pressure';

  @override
  String get health_blood_glucose => 'Blood Glucose';

  @override
  String get health_body_temperature => 'Body Temperature';

  @override
  String get health_sleep_tracking => 'Sleep Tracking';

  @override
  String get health_weight_tracking => 'Weight & Body Composition';

  @override
  String get health_waist_hip => 'Waist-to-Hip Ratio';

  @override
  String get health_devices_hub => 'Devices & Smartwatch Hub';

  @override
  String get health_sync_now => 'Sync Health Data';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'Last synced: $time';
  }

  @override
  String get health_manual_entry => 'Manual Health Entry';

  @override
  String get health_metric_detail => 'Metric Details';

  @override
  String get health_connected_sensors => 'Connected Health Sensors';

  @override
  String get plan_title => 'Daily Plan';

  @override
  String get plan_weekly_title => 'Weekly Wellness Plan';

  @override
  String get plan_calorie_target => 'Calorie Target';

  @override
  String get plan_water_target => 'Hydration Target';

  @override
  String get plan_step_target => 'Step Target';

  @override
  String get plan_sleep_target => 'Sleep Target';

  @override
  String get plan_meal_suggestions => 'Meal Suggestions';

  @override
  String get plan_healthy_habits => 'Healthy Habits & Tips';

  @override
  String get plan_coach_advice => 'Bloomi AI Coach Recommendations';

  @override
  String get plan_generated_title => 'Personalized Daily Schedule';

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_edit => 'Edit Profile';

  @override
  String get profile_name => 'Name';

  @override
  String get profile_age => 'Age';

  @override
  String get profile_gender => 'Gender';

  @override
  String get profile_height => 'Height';

  @override
  String get profile_weight => 'Weight';

  @override
  String get profile_goal => 'Primary Goal';

  @override
  String get profile_activity_level => 'Activity Level';

  @override
  String get profile_stats => 'My Wellness Stats';

  @override
  String get profile_saved => 'Profile updated successfully';

  @override
  String get profile_bmi => 'Body Mass Index (BMI)';

  @override
  String get profile_membership => 'Membership';

  @override
  String get settings => 'Settings';

  @override
  String get preferences_habits => 'PREFERENCES & HABITS';

  @override
  String get appearance_theme => 'Appearance & Theme';

  @override
  String get appearance_theme_sub =>
      'Dark, Light, System Mode & App Background Options';

  @override
  String get permissions => 'Permissions & System Access';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Notifications & Camera';

  @override
  String get reminders_notifications => 'Reminders & Notifications';

  @override
  String get reminders_sub =>
      'Meal times, water, weight check-in & bedtime reminders';

  @override
  String get units_of_measurement => 'Units of Measurement';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) or Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'App Language';

  @override
  String get language_sub =>
      'English, हिन्दी (Hindi), Hinglish & 195+ global languages';

  @override
  String get home_screen_widgets => 'Home Screen Widgets';

  @override
  String get widgets_sub =>
      'Live Android widgets: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch App';

  @override
  String get wear_os_sub =>
      'Smartwatch companion, tiles, complications & live vitals';

  @override
  String get goals_wellness => 'GOALS & WELLNESS INSIGHTS';

  @override
  String get nutrition_targets => 'Nutrition Targets & Macro Split';

  @override
  String get nutrition_targets_sub =>
      'Calorie target, protein, carbs, fat & water goal';

  @override
  String get weekly_recap => 'Weekly Wellness Recap';

  @override
  String get weekly_recap_sub =>
      '7-day calorie average, macro ratio & best day';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Active blossom streaks, badges & achievements';

  @override
  String get connected_devices => 'CONNECTED DEVICES & ECOSYSTEM';

  @override
  String get devices_hub => 'Devices & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Surroundings & Weather';

  @override
  String get surroundings_sub =>
      'Air quality (AQI), UV index & weather hydration tips';

  @override
  String get bloomi_pro => 'Bloomi Pro Subscription';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 home screen widgets & vitals tracking';

  @override
  String get about_security => 'ABOUT & SECURITY';

  @override
  String get about_bloomi => 'About Bloomi';

  @override
  String get about_bloomi_sub => 'Build specifications, version, attributions';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get privacy_policy_sub => 'Offline-first, on-device data architecture';

  @override
  String get terms_conditions => 'Terms & Conditions';

  @override
  String get terms_conditions_sub => 'Terms of service and wellness guidelines';

  @override
  String get delete_account => 'Delete Account & Data';

  @override
  String get delete_account_sub =>
      'Irreversibly erase local SQLite data and cloud backups';

  @override
  String get healthy_habits => 'Build gentle, lasting wellness habits';

  @override
  String get all_logs => 'My Tracked Data & Logs';

  @override
  String get search_language => 'Search by language or native script...';

  @override
  String get languages_available => 'Languages Available';

  @override
  String get no_matching_languages => 'No matching languages found';

  @override
  String get try_searching =>
      'Try searching by native script or English spelling';

  @override
  String get partially_translated => 'Partially translated';

  @override
  String get complete_translation => 'Complete';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Language set to $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'Surroundings & Environment';

  @override
  String get surroundings_aqi => 'Air Quality Index';

  @override
  String get surroundings_uv => 'UV Index';

  @override
  String get surroundings_temp => 'Temperature';

  @override
  String get surroundings_humidity => 'Humidity';

  @override
  String get surroundings_hydration_advice =>
      'Stay well hydrated in current weather conditions.';

  @override
  String get surroundings_refresh => 'Refresh Weather';

  @override
  String get food_quick_search => 'Search Food';

  @override
  String get food_quick_barcode => 'Scan Barcode 👑';

  @override
  String get food_quick_water => 'Add Water';

  @override
  String get food_quick_custom => 'Custom Food';

  @override
  String get surroundings_good => 'Good';

  @override
  String get surroundings_moderate => 'Moderate';

  @override
  String get surroundings_unhealthy => 'Unhealthy';

  @override
  String get notifications_title => 'Notifications & Alerts';

  @override
  String get notifications_empty => 'No new notifications';

  @override
  String get notifications_mark_read => 'Mark All as Read';

  @override
  String get notifications_clear => 'Clear All';

  @override
  String get reminders => 'Reminder Settings';

  @override
  String get notifications => 'Notifications';

  @override
  String get reminders_breakfast_title => 'Breakfast Reminder 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Good morning! Time for a nourishing breakfast at $time.';
  }

  @override
  String get reminders_lunch_title => 'Lunch Reminder 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Pause and enjoy a balanced, mindful lunch at $time.';
  }

  @override
  String get reminders_dinner_title => 'Dinner Reminder 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Time for a light, satisfying dinner at $time.';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Time to drink a fresh glass of water! ($time)';
  }

  @override
  String get reminders_weight_title => 'Weekly Weigh-in ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Track your weekly body metrics on Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Bedtime Wind-down 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Unwind and prepare for a restful sleep ($time).';
  }

  @override
  String get onboard_welcome => 'Welcome to Bloomi';

  @override
  String get onboard_sub =>
      'Your friendly, offline-first health and nutrition companion.';

  @override
  String get onboard_get_started => 'Get Started';

  @override
  String get onboard_sign_in => 'Sign In';

  @override
  String get onboard_skip => 'Skip';

  @override
  String get onboard_choose_goal => 'What is your primary wellness goal?';

  @override
  String get onboard_goal_weight_loss => 'Gentle Weight Loss';

  @override
  String get onboard_goal_muscle => 'Muscle Gain & Strength';

  @override
  String get onboard_goal_energy => 'Daily Energy & Vitality';

  @override
  String get onboard_goal_habits => 'Healthy Mindful Eating';

  @override
  String get onboard_about_you => 'Tell Us About Yourself';

  @override
  String get onboard_lifestyle => 'Your Daily Routine';

  @override
  String get onboard_permissions_title => 'Permissions & System Access';

  @override
  String get onboard_permissions_sub =>
      'Grant access to sync steps, workouts, and reminders.';

  @override
  String get onboard_plan_ready_title => 'Your Custom Plan is Ready!';

  @override
  String get onboard_plan_ready_sub =>
      'We crafted a gentle, personalized nutrition and wellness roadmap just for you.';

  @override
  String get onboard_enter_bloomi => 'Enter Bloomi';

  @override
  String get insights_weekly_report => 'Weekly Wellness Recap';

  @override
  String insights_best_day(Object day) {
    return 'Best Consistency Day: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Unlocked on $date';
  }

  @override
  String get insights_keep_going => 'Keep up the fantastic progress!';

  @override
  String get widgets_title => 'Home Screen Widgets';

  @override
  String widgets_active_count(Object count) {
    return 'Active Widgets: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Hydration Quick Log';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'Connected to Watch';

  @override
  String get wear_os_sync => 'Sync Watch Data';

  @override
  String get theme_title => 'Appearance & Theme';

  @override
  String get theme_mode => 'Theme Mode';

  @override
  String get theme_light => 'Light';

  @override
  String get theme_dark => 'Dark';

  @override
  String get theme_system => 'System Default';

  @override
  String get theme_background_palette => 'Background Palette';

  @override
  String get units_title => 'Units of Measurement';

  @override
  String get units_metric => 'Metric (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Unable to load dashboard';

  @override
  String get home_health_permission_req => 'Health Connect Permission Required';

  @override
  String get home_health_permission_desc =>
      'Bloomi requires Health Connect permission to pull real steps, heart rate, and sync mobile home widgets in real time.';

  @override
  String get home_allow_health => 'Allow Health Connect';

  @override
  String get home_ready_mindful_day => 'Ready for a mindful day? ✨';

  @override
  String get home_quick_add => 'Quick Add';

  @override
  String get home_live_gps => 'Live GPS';

  @override
  String get home_calories_remaining_label => 'CALORIES REMAINING';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Eaten: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Daily goal reached 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml to daily goal';
  }

  @override
  String get home_details => 'Details';

  @override
  String get home_upgrade_plan_desc =>
      'Upgrade to unlock personalized daily targets & AI plan';

  @override
  String get home_unlock => 'Unlock 👑';

  @override
  String get home_quick_log_hint => 'Quickly record a wellness entry';

  @override
  String get food_serving_size => 'Serving Size';

  @override
  String get food_serving_grams => 'Serving (g)';

  @override
  String get food_number_servings => 'Number of Servings';

  @override
  String get food_calories_per_serving => 'Calories per serving';

  @override
  String get food_recipe_ingredients => 'Ingredients';

  @override
  String get food_recipe_add_ingredient => 'Add Ingredient';

  @override
  String get food_recipe_directions => 'Instructions & Notes';

  @override
  String get food_recipe_total => 'Total Recipe Nutrition';

  @override
  String get food_recipe_per_serving => 'Per Serving Nutrition';

  @override
  String get food_recipe_saved_toast => 'Custom food saved successfully!';

  @override
  String get food_barcode_found => 'Product Found!';

  @override
  String get food_barcode_not_found_desc =>
      'We could not find this barcode in the open database. You can add it as a custom food.';

  @override
  String get food_add_custom_btn => 'Add Custom Food';

  @override
  String get food_scan_again => 'Scan Again';

  @override
  String get food_review_items => 'Review Detected Foods';

  @override
  String get food_review_hint =>
      'Adjust quantities or remove any unrecognized item';

  @override
  String get food_log_selected => 'Log Selected Foods';

  @override
  String get food_favourites_title => 'Favourite Foods';

  @override
  String get food_recent_title => 'Recent Foods';

  @override
  String get food_no_favourites =>
      'No favourite foods yet. Tap heart on any food to save here.';

  @override
  String get food_no_recents => 'No recently logged foods found.';

  @override
  String get food_nutrition_details_title => 'Daily Nutrition Details';

  @override
  String get food_macro_protein_label => 'Protein Breakdown';

  @override
  String get food_macro_carbs_label => 'Carbs Breakdown';

  @override
  String get food_macro_fat_label => 'Fat Breakdown';

  @override
  String get food_macro_fiber_label => 'Fiber Breakdown';

  @override
  String get food_daily_target_comparison => 'Target Comparison';

  @override
  String food_target_label(Object target) {
    return 'Target: $target';
  }

  @override
  String get food_edit_entry => 'Edit Diary Entry';

  @override
  String get food_delete_entry => 'Delete Entry';

  @override
  String food_grams_short(Object grams) {
    return '${grams}g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current of $target ml';
  }

  @override
  String get water_intake_history => 'Today\'s Water Logs';

  @override
  String get water_no_logs_today =>
      'No water logged yet today. Hydrate and tap a quick add button!';

  @override
  String get water_adjust_goal => 'Adjust Daily Goal';

  @override
  String get health_connect_banner => 'Connected to Health Connect';

  @override
  String get health_vitals_summary => 'Daily Health Vitals';

  @override
  String get health_latest_heart_rate => 'Latest Heart Rate';

  @override
  String get health_latest_bp => 'Blood Pressure';

  @override
  String get health_latest_spo2 => 'Blood Oxygen';

  @override
  String get health_latest_glucose => 'Blood Glucose';

  @override
  String get health_latest_weight => 'Weight';

  @override
  String get health_latest_sleep => 'Sleep Duration';

  @override
  String get health_add_manual => 'Add Manual Measurement';

  @override
  String get health_history_trends => 'Historical Trends';

  @override
  String get health_sync_success => 'Health data synced successfully!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours hrs $mins mins';
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
    return '$pct%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic/$diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val mg/dL';
  }

  @override
  String get health_devices_title => 'Connected Devices & Wearables';

  @override
  String get health_devices_desc =>
      'Manage paired smartwatches, fitness trackers, and health sensors.';

  @override
  String get health_workout_editor_title => 'Edit Workout';

  @override
  String get health_workout_name_label => 'Workout Name';

  @override
  String get health_workout_duration_label => 'Duration (minutes)';

  @override
  String get health_workout_calories_label => 'Estimated Calories (kcal)';

  @override
  String get health_workout_date_label => 'Date and Time';

  @override
  String get plan_daily_wellness_roadmap => 'Your Personalized Roadmap';

  @override
  String get plan_morning_routine => 'Morning Routine';

  @override
  String get plan_afternoon_routine => 'Midday Wellness';

  @override
  String get plan_evening_routine => 'Evening Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => '7-Day Wellness Focus';

  @override
  String get plan_targets_title => 'Wellness Targets & Goals';

  @override
  String get plan_calorie_budget_label => 'Daily Calorie Budget';

  @override
  String get plan_water_budget_label => 'Daily Water Target';

  @override
  String get plan_step_budget_label => 'Daily Step Goal';

  @override
  String get plan_macro_split_label => 'Macronutrient Ratio';

  @override
  String get profile_personal_details => 'Personal Details';

  @override
  String get profile_body_stats => 'Body Measurements';

  @override
  String get profile_app_preferences => 'Preferences & App Settings';

  @override
  String get profile_edit_name_hint => 'Your name';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Height ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Weight ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Age';

  @override
  String get profile_gender_male => 'Male';

  @override
  String get profile_gender_female => 'Female';

  @override
  String get profile_gender_other => 'Other / Prefer not to say';

  @override
  String get profile_activity_sedentary => 'Sedentary (Little to no exercise)';

  @override
  String get profile_activity_light => 'Lightly Active (1-3 days/week)';

  @override
  String get profile_activity_moderate => 'Moderately Active (3-5 days/week)';

  @override
  String get profile_activity_very => 'Very Active (6-7 days/week)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'Install the Bloomi tile and complication on your Wear OS watch to glance at calories, water, and steps.';

  @override
  String get settings_widgets_header => 'Interactive Android Widgets';

  @override
  String get settings_widgets_desc =>
      'Pin real-time widgets on your device home screen for instant updates.';

  @override
  String get settings_about_header => 'About Bloomi';

  @override
  String get settings_about_version => 'Version 1.0.0';

  @override
  String get settings_about_build => 'Build 100';

  @override
  String get settings_about_credits =>
      'Crafted with care for mindful, healthy living.';

  @override
  String get settings_terms_header => 'Terms and Conditions';

  @override
  String get settings_privacy_header => 'Privacy Policy';

  @override
  String get settings_delete_header => 'Delete Account & Data';

  @override
  String get settings_delete_warning =>
      'This action cannot be undone. All your meals, workouts, vitals, and profile will be permanently deleted.';

  @override
  String get settings_delete_confirm_btn => 'Permanently Delete';

  @override
  String get onboard_welcome_headline => 'Welcome to Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Gentle, mindful wellness tracking designed around your life.';

  @override
  String get onboard_step_about => 'About You';

  @override
  String get onboard_step_goals => 'Your Goals';

  @override
  String get onboard_step_lifestyle => 'Daily Habits';

  @override
  String get onboard_step_permissions => 'Permissions';

  @override
  String get onboard_step_plan => 'Ready!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Step Counter Sensor';

  @override
  String get onboard_notif_perm => 'Mindful Reminders & Notifications';

  @override
  String get onboard_camera_perm => 'Camera (Barcode & Food Scanner)';

  @override
  String get onboard_grant_permissions => 'Grant Permissions';

  @override
  String get onboard_continue_dashboard => 'Open Dashboard';

  @override
  String get notif_channel_hydration_name => 'Hydration Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Gentle water reminders throughout the day';

  @override
  String get notif_channel_nutrition_name => 'Meal & Nutrition Reminders';

  @override
  String get notif_channel_nutrition_desc =>
      'Breakfast, lunch, and dinner reminder alerts';

  @override
  String get notif_channel_steps_name => 'Step Milestones';

  @override
  String get notif_channel_steps_desc =>
      'Celebrations when reaching daily step targets';

  @override
  String get notif_channel_vitals_name => 'Health & Vitals Checks';

  @override
  String get notif_channel_vitals_desc =>
      'Weight and bedtime wind-down reminders';

  @override
  String get notif_action_log_water => '💧 Log +250ml';

  @override
  String get notif_action_snooze => 'Snooze 15m';

  @override
  String get notif_action_log_meal => '🥗 Log Meal';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}

/// The translations for English, as used in India (`en_IN`).
class AppLocalizationsEnIn extends AppLocalizationsEn {
  AppLocalizationsEnIn() : super('en_IN');

  @override
  String get app_name => 'ब्लूमी';

  @override
  String get nav_home => 'घर';

  @override
  String get nav_today => 'Aaj';

  @override
  String get nav_plan => 'योजना';

  @override
  String get nav_food => 'Khaana';

  @override
  String get nav_food_diary => 'भोजन डायरी';

  @override
  String get nav_workout => 'Workout';

  @override
  String get nav_health => 'स्वास्थ्य';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get save => 'Save karein';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get edit => 'संपादित करें';

  @override
  String get done => 'हो गया';

  @override
  String get close => 'बंद करें';

  @override
  String get back => 'वापस';

  @override
  String get next => 'Aage';

  @override
  String get continue_btn => 'Aage badhein';

  @override
  String get confirm => 'Confirm karein';

  @override
  String get search => 'Search karein';

  @override
  String get filter => 'फ़िल्टर करें';

  @override
  String get all => 'Sabhi';

  @override
  String get active => 'सक्रिय';

  @override
  String get today => 'Aaj';

  @override
  String get yesterday => 'Kal';

  @override
  String get tomorrow => 'Kal';

  @override
  String get add => 'Add karein';

  @override
  String get remove => 'Hataayein';

  @override
  String get refresh => 'ताज़ा करें';

  @override
  String get retry => 'Try again';

  @override
  String get error => 'त्रुटि';

  @override
  String get success => 'सफलता';

  @override
  String get loading => 'Load ho raha hai...';

  @override
  String get no_data => 'Koi data nahi mila';

  @override
  String get offline => 'ऑफलाइन मोड';

  @override
  String get offline_sub => 'Internet aate hi data sync ho jaayega';

  @override
  String get undo => 'पूर्ववत करें';

  @override
  String get portion => 'भाग';

  @override
  String get quantity => 'मात्रा';

  @override
  String get unit => 'इकाई';

  @override
  String get clear => 'स्पष्ट';

  @override
  String get select => 'चयन करें';

  @override
  String get apply => 'आवेदन करें';

  @override
  String get reset => 'रीसेट करें';

  @override
  String get ok => 'ठीक है';

  @override
  String get yes => 'हाँ';

  @override
  String get no => 'नहीं';

  @override
  String get optional => 'वैकल्पिक';

  @override
  String get calories => 'कैलोरी';

  @override
  String get protein => 'प्रोटीन';

  @override
  String get carbs => 'कार्ब्स';

  @override
  String get fat => 'मोटा';

  @override
  String get fiber => 'रेशा';

  @override
  String get water => 'Paani';

  @override
  String get steps => 'कदम';

  @override
  String get kcal => 'किलो कैलोरी';

  @override
  String get grams => 'जी';

  @override
  String get milliliters => 'एमएल';

  @override
  String get kilograms => 'किग्रा';

  @override
  String get pounds => 'एलबीएस';

  @override
  String get centimeters => 'सेमी';

  @override
  String get inches => 'में';

  @override
  String get bpm => 'बीपीएम';

  @override
  String get hours => 'घंटे';

  @override
  String get minutes => 'मिनट';

  @override
  String get serving => 'सेवा करना';

  @override
  String get servings => 'सर्विंग';

  @override
  String get serving_size => 'परोसने का आकार';

  @override
  String get per_100g => 'प्रति 100 ग्राम';

  @override
  String get india => 'भारत';

  @override
  String get asia => 'एशिया';

  @override
  String get europe => 'यूरोप';

  @override
  String get middle_east => 'मध्य पूर्व';

  @override
  String get africa => 'अफ़्रीका';

  @override
  String get americas => 'अमेरिका';

  @override
  String get home_title => 'घर';

  @override
  String get home_greeting_morning => 'Good Morning!';

  @override
  String get home_greeting_afternoon => 'Good Afternoon!';

  @override
  String get home_greeting_evening => 'Good Evening!';

  @override
  String get home_streak_title => 'खिलने वाली लकीर';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count din streak',
      one: '1 din streak',
      zero: '0 din streak',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Burned Calories';

  @override
  String get home_calories_budget => 'कैलोरी बजट';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal bachi hain';
  }

  @override
  String get home_water_title => 'Rozana Paani';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target मि.ली';
  }

  @override
  String get home_steps_title => 'Chale gaye Steps';

  @override
  String get home_quick_actions => 'त्वरित कार्रवाई';

  @override
  String get home_log_meal => 'Meal log karein';

  @override
  String get home_log_water => 'Paani log karein';

  @override
  String get home_log_workout => 'Workout log karein';

  @override
  String get home_log_weight => 'Weight log karein';

  @override
  String get home_insights_title => 'Aaj ke Tips';

  @override
  String get home_quote => 'Chhote healthy habits hi real change laate hain.';

  @override
  String get home_ai_coach_tip => 'ब्लूमी एआई कोच';

  @override
  String get home_surroundings => 'परिवेश एवं वायु';

  @override
  String get home_notifications => 'सूचनाएं';

  @override
  String get home_daily_score => 'दैनिक कल्याण स्कोर';

  @override
  String get home_view_all => 'सभी देखें';

  @override
  String get food_diary_title => 'भोजन डायरी';

  @override
  String get food_breakfast => 'नाश्ता';

  @override
  String get food_lunch => 'दोपहर का भोजन';

  @override
  String get food_dinner => 'रात का खाना';

  @override
  String get food_snacks => 'नाश्ता';

  @override
  String get food_add_food => 'Khaana add karein';

  @override
  String get food_edit_food => 'Food edit karein';

  @override
  String get food_add_breakfast => 'नाश्ता जोड़ें';

  @override
  String get food_add_lunch => 'दोपहर का भोजन जोड़ें';

  @override
  String get food_add_dinner => 'रात्रिभोज जोड़ें';

  @override
  String get food_add_snack => 'स्नैक जोड़ें';

  @override
  String get food_total_calories => 'कुल कैलोरी';

  @override
  String get food_empty_meal =>
      'इस भोजन के लिए अभी तक कोई खाद्य पदार्थ लॉग नहीं किया गया है';

  @override
  String get food_empty_diary => 'इस दिन के लिए कोई भोजन लॉग नहीं किया गया';

  @override
  String get food_log_first_meal =>
      'अपना पहला स्वादिष्ट भोजन लॉग करने के लिए + टैप करें';

  @override
  String get food_quick_add => 'शीघ्र जोड़ें';

  @override
  String get food_search_hint => 'व्यंजन, फल, दाल, रोटी खोजें...';

  @override
  String get food_custom_recipe => 'कस्टम भोजन और रेसिपी';

  @override
  String get food_scan_barcode => 'बारकोड स्कैन करें';

  @override
  String get food_camera_scan => 'एआई फूड स्कैनर';

  @override
  String get food_recent => 'हाल के खाद्य पदार्थ';

  @override
  String get food_favourites => 'पसंदीदा';

  @override
  String get food_macro_summary => 'मैक्रोन्यूट्रिएंट ब्रेकडाउन';

  @override
  String get food_delete_meal_confirm =>
      'क्या आप वाकई इस आइटम को हटाना चाहते हैं?';

  @override
  String get food_item_deleted => 'खाने का सामान हटा दिया गया';

  @override
  String get food_remaining => 'शेष';

  @override
  String get food_consumed => 'भस्म';

  @override
  String food_of_target(Object target) {
    return '$target किलो कैलोरी';
  }

  @override
  String get foodSearch_title => 'खाद्य पदार्थ खोजें';

  @override
  String get foodSearch_scan_barcode => 'बारकोड स्कैन करें';

  @override
  String get foodSearch_take_photo => 'स्नैप फूड फोटो';

  @override
  String get foodSearch_custom_food => 'कस्टम भोजन बनाएं';

  @override
  String get foodSearch_recent_searches => 'हाल की खोजें';

  @override
  String get foodSearch_popular => 'लोकप्रिय व्यंजन';

  @override
  String get foodSearch_no_results =>
      'आपकी खोज से मेल खाता कोई खाद्य पदार्थ नहीं';

  @override
  String get barcode_title => 'बारकोड स्कैनर';

  @override
  String get barcode_align => 'बारकोड को कैमरा फ्रेम के अंदर संरेखित करें';

  @override
  String get barcode_not_found => 'उत्पाद डेटाबेस में नहीं मिला';

  @override
  String get barcode_premium_feature =>
      'ब्लूमी प्रो के साथ बारकोड स्कैनिंग उपलब्ध है';

  @override
  String get camera_title => 'एआई फूड स्कैनर';

  @override
  String get camera_tap_hint => 'अपनी डिश की साफ़ फ़ोटो लें';

  @override
  String get camera_analysing => 'भोजन की थाली का विश्लेषण किया जा रहा है...';

  @override
  String get camera_detected => 'पता लगाया गया आइटम';

  @override
  String get camera_flash => 'फ़्लैश टॉगल करें';

  @override
  String get camera_retake => 'फ़ोटो दोबारा लें';

  @override
  String get camera_confirm_food => 'आइटम की पुष्टि करें';

  @override
  String get customFood_title => 'कस्टम भोजन और रेसिपी';

  @override
  String get customFood_name_hint => 'डिश या सामग्री का नाम';

  @override
  String get customFood_calories_hint => 'कैलोरी (किलो कैलोरी)';

  @override
  String get customFood_protein_hint => 'प्रोटीन (जी)';

  @override
  String get customFood_carbs_hint => 'कार्ब्स (जी)';

  @override
  String get customFood_fat_hint => 'वसा (जी)';

  @override
  String get customFood_save => 'नुस्खा सहेजें';

  @override
  String get water_tracker_title => 'जल ट्रैकर';

  @override
  String get water_daily_target => 'Daily Water Goal';

  @override
  String get water_logged_today => 'Aaj itna paani piya';

  @override
  String get water_add_glass => '+250 मिली ग्लास';

  @override
  String get water_add_bottle => '+500 मिलीलीटर की बोतल';

  @override
  String get water_custom_amount => 'कस्टम राशि';

  @override
  String get water_reminder_tip =>
      'स्थिर ऊर्जा के लिए पूरे दिन नियमित रूप से पानी पियें।';

  @override
  String water_logged_toast(Object amount) {
    return 'लॉग किया गया $amount ml पानी 💧';
  }

  @override
  String get workout_title => 'कसरत लॉग';

  @override
  String get workout_add_exercise => 'वर्कआउट जोड़ें';

  @override
  String get workout_cardio => 'कार्डियो';

  @override
  String get workout_strength => 'ताकत';

  @override
  String get workout_yoga => 'योग और लचीलापन';

  @override
  String get workout_duration => 'अवधि';

  @override
  String get workout_intensity => 'तीव्रता';

  @override
  String get workout_calories_burned => 'कैलोरी बर्न हुई';

  @override
  String get workout_empty => 'आज कोई वर्कआउट लॉग नहीं किया गया';

  @override
  String get workout_save_success => 'वर्कआउट सफलतापूर्वक सहेजा गया!';

  @override
  String get workout_type => 'कसरत का प्रकार';

  @override
  String get workout_notes => 'नोट्स और प्रतिबिंब';

  @override
  String get health_overview_title => 'स्वास्थ्य एवं जीवन';

  @override
  String get health_heart_rate => 'हृदय गति';

  @override
  String get health_blood_oxygen => 'रक्त ऑक्सीजन (SpO2)';

  @override
  String get health_blood_pressure => 'रक्तचाप';

  @override
  String get health_blood_glucose => 'रक्त ग्लूकोज';

  @override
  String get health_body_temperature => 'शरीर का तापमान';

  @override
  String get health_sleep_tracking => 'नींद की ट्रैकिंग';

  @override
  String get health_weight_tracking => 'वजन और शारीरिक संरचना';

  @override
  String get health_waist_hip => 'कमर से कूल्हे का अनुपात';

  @override
  String get health_devices_hub => 'डिवाइस और स्मार्टवॉच हब';

  @override
  String get health_sync_now => 'स्वास्थ्य डेटा सिंक करें';

  @override
  String health_last_synced(Object time, Object yeroo) {
    return 'अंतिम बार समन्वयित: $time';
  }

  @override
  String get health_manual_entry => 'मैनुअल स्वास्थ्य प्रविष्टि';

  @override
  String get health_metric_detail => 'मीट्रिक विवरण';

  @override
  String get health_connected_sensors => 'कनेक्टेड स्वास्थ्य सेंसर';

  @override
  String get plan_title => 'दैनिक योजना';

  @override
  String get plan_weekly_title => 'साप्ताहिक कल्याण योजना';

  @override
  String get plan_calorie_target => 'कैलोरी लक्ष्य';

  @override
  String get plan_water_target => 'जलयोजन लक्ष्य';

  @override
  String get plan_step_target => 'चरण लक्ष्य';

  @override
  String get plan_sleep_target => 'नींद का लक्ष्य';

  @override
  String get plan_meal_suggestions => 'भोजन संबंधी सुझाव';

  @override
  String get plan_healthy_habits => 'स्वस्थ आदतें और युक्तियाँ';

  @override
  String get plan_coach_advice => 'ब्लूमी एआई कोच सिफ़ारिशें';

  @override
  String get plan_generated_title => 'वैयक्तिकृत दैनिक कार्यक्रम';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_edit => 'प्रोफ़ाइल संपादित करें';

  @override
  String get profile_name => 'नाम';

  @override
  String get profile_age => 'उम्र';

  @override
  String get profile_gender => 'लिंग';

  @override
  String get profile_height => 'ऊंचाई';

  @override
  String get profile_weight => 'वज़न';

  @override
  String get profile_goal => 'प्राथमिक लक्ष्य';

  @override
  String get profile_activity_level => 'गतिविधि स्तर';

  @override
  String get profile_stats => 'मेरे कल्याण आँकड़े';

  @override
  String get profile_saved => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई';

  @override
  String get profile_bmi => 'बॉडी मास इंडेक्स (बीएमआई)';

  @override
  String get profile_membership => 'सदस्यता';

  @override
  String get settings => 'Settings';

  @override
  String get preferences_habits => 'Preferences & Habits';

  @override
  String get appearance_theme => 'उपस्थिति और थीम';

  @override
  String get appearance_theme_sub =>
      'डार्क, लाइट, सिस्टम मोड और ऐप बैकग्राउंड विकल्प';

  @override
  String get permissions => 'अनुमतियाँ एवं सिस्टम एक्सेस';

  @override
  String get permissions_sub =>
      'हेल्थ कनेक्ट, स्टेप सेंसर, जीपीएस, नोटिफिकेशन और कैमरा';

  @override
  String get reminders_notifications => 'अनुस्मारक एवं सूचनाएं';

  @override
  String get reminders_sub =>
      'भोजन का समय, पानी, वजन की जांच और सोने के समय के अनुस्मारक';

  @override
  String get units_of_measurement => 'माप की इकाइयाँ';

  @override
  String get units_sub =>
      'मीट्रिक (किलो, सेमी, एमएल, किमी) या इंपीरियल (एलबीएस, फीट/इंच, फ़्लूड आउंस)';

  @override
  String get app_language => 'ऐप भाषा';

  @override
  String get language_sub =>
      'अंग्रेजी, हिन्दी (हिन्दी), हिंग्लिश और 195+ वैश्विक भाषाएँ';

  @override
  String get home_screen_widgets => 'होम स्क्रीन विजेट';

  @override
  String get widgets_sub =>
      'लाइव एंड्रॉइड विजेट: हब, स्टेप्स, जल, पोषण और शुभंकर';

  @override
  String get wear_os_watch_app => 'ओएस वॉच ऐप पहनें';

  @override
  String get wear_os_sub =>
      'स्मार्टवॉच साथी, टाइल्स, जटिलताएँ और जीवन संबंधी महत्वपूर्ण बातें';

  @override
  String get goals_wellness => 'लक्ष्य और कल्याण अंतर्दृष्टि';

  @override
  String get nutrition_targets => 'पोषण लक्ष्य और मैक्रो स्प्लिट';

  @override
  String get nutrition_targets_sub =>
      'कैलोरी लक्ष्य, प्रोटीन, कार्बोहाइड्रेट, वसा और पानी लक्ष्य';

  @override
  String get weekly_recap => 'साप्ताहिक कल्याण पुनर्कथन';

  @override
  String get weekly_recap_sub =>
      '7 दिन का कैलोरी औसत, मैक्रो अनुपात और सर्वोत्तम दिन';

  @override
  String get streaks_milestones => 'धारियाँ और मील के पत्थर';

  @override
  String get streaks_sub => 'सक्रिय खिलने वाली धारियाँ, बैज और उपलब्धियाँ';

  @override
  String get connected_devices => 'कनेक्टेड डिवाइस और इकोसिस्टम';

  @override
  String get devices_hub => 'डिवाइस और स्मार्टवॉच हब';

  @override
  String get devices_hub_sub =>
      'हेल्थ कनेक्ट, गैलेक्सी वॉच, पिक्सेल वॉच, गार्मिन';

  @override
  String get surroundings_weather => 'परिवेश एवं मौसम';

  @override
  String get surroundings_sub =>
      'वायु गुणवत्ता (एक्यूआई), यूवी सूचकांक और मौसम जलयोजन युक्तियाँ';

  @override
  String get bloomi_pro => 'ब्लूमी प्रो सदस्यता';

  @override
  String get bloomi_pro_sub =>
      'एआई प्लान कोच, 5 होम स्क्रीन विजेट और महत्वपूर्ण ट्रैकिंग';

  @override
  String get about_security => 'सुरक्षा के बारे में';

  @override
  String get about_bloomi => 'ब्लूमी के बारे में';

  @override
  String get about_bloomi_sub =>
      'विशिष्टताओं, संस्करण, विशेषताओं का निर्माण करें';

  @override
  String get privacy_policy => 'गोपनीयता नीति';

  @override
  String get privacy_policy_sub => 'ऑफ़लाइन-प्रथम, ऑन-डिवाइस डेटा आर्किटेक्चर';

  @override
  String get terms_conditions => 'नियम एवं शर्तें';

  @override
  String get terms_conditions_sub => 'सेवा की शर्तें और कल्याण दिशानिर्देश';

  @override
  String get delete_account => 'खाता और डेटा हटाएँ';

  @override
  String get delete_account_sub =>
      'स्थानीय SQLite डेटा और क्लाउड बैकअप को अपरिवर्तनीय रूप से मिटा दें';

  @override
  String get healthy_habits => 'सौम्य, स्थायी स्वास्थ्य संबंधी आदतें बनाएँ';

  @override
  String get all_logs => 'मेरा ट्रैक किया गया डेटा और लॉग';

  @override
  String get search_language => 'Language search karein...';

  @override
  String get languages_available => 'भाषाएँ उपलब्ध हैं';

  @override
  String get no_matching_languages => 'कोई मेल खाती भाषा नहीं मिली';

  @override
  String get try_searching =>
      'मूल लिपि या अंग्रेजी वर्तनी से खोजने का प्रयास करें';

  @override
  String get partially_translated => 'आंशिक रूप से अनुवादित';

  @override
  String get complete_translation => 'पूर्ण';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'भाषा $name ( $nativeName ) पर सेट है';
  }

  @override
  String get surroundings_title => 'परिवेश एवं पर्यावरण';

  @override
  String get surroundings_aqi => 'वायु गुणवत्ता सूचकांक';

  @override
  String get surroundings_uv => 'यूवी सूचकांक';

  @override
  String get surroundings_temp => 'तापमान';

  @override
  String get surroundings_humidity => 'आर्द्रता';

  @override
  String get surroundings_hydration_advice =>
      'वर्तमान मौसम की स्थिति में अच्छी तरह से हाइड्रेटेड रहें।';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'भोजन खोजें';

  @override
  String get food_quick_barcode => 'बारकोड स्कैन करें 👑';

  @override
  String get food_quick_water => 'पानी डालें';

  @override
  String get food_quick_custom => 'कस्टम भोजन';

  @override
  String get surroundings_good => 'अच्छा';

  @override
  String get surroundings_moderate => 'मध्यम';

  @override
  String get surroundings_unhealthy => 'अस्वस्थ';

  @override
  String get notifications_title => 'सूचनाएं एवं अलर्ट';

  @override
  String get notifications_empty => 'कोई नई सूचना नहीं';

  @override
  String get notifications_mark_read =>
      'सभी को पढ़ा हुआ के रूप में चिह्नित करें';

  @override
  String get notifications_clear => 'सभी साफ़ करें';

  @override
  String get reminders => 'अनुस्मारक सेटिंग्स';

  @override
  String get notifications => 'सूचनाएं';

  @override
  String get reminders_breakfast_title => 'नाश्ता अनुस्मारक 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'सुप्रभात! $time पर पौष्टिक नाश्ते का समय।';
  }

  @override
  String get reminders_lunch_title => 'दोपहर के भोजन का अनुस्मारक 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'रुकें और $time पर संतुलित, ध्यानपूर्ण दोपहर के भोजन का आनंद लें।';
  }

  @override
  String get reminders_dinner_title => 'रात्रिभोज अनुस्मारक 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time पर हल्के, संतोषजनक रात्रिभोज का समय।';
  }

  @override
  String get reminders_water_title => 'हाइड्रेशन नज 💧';

  @override
  String reminders_water_body(Object time) {
    return 'एक ताज़ा गिलास पानी पीने का समय! ($time)';
  }

  @override
  String get reminders_weight_title => 'साप्ताहिक वज़न ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'ब्लूमी ($time) पर अपने साप्ताहिक बॉडी मेट्रिक्स को ट्रैक करें।';
  }

  @override
  String get reminders_sleep_title => 'सोने का समय विंड-डाउन 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'आराम करें और आरामदायक नींद के लिए तैयार हो जाएं ($time)।';
  }

  @override
  String get onboard_welcome => 'ब्लूमी में आपका स्वागत है';

  @override
  String get onboard_sub =>
      'आपका मिलनसार, ऑफ़लाइन-प्रथम स्वास्थ्य और पोषण साथी।';

  @override
  String get onboard_get_started => 'आरंभ करें';

  @override
  String get onboard_sign_in => 'साइन इन करें';

  @override
  String get onboard_skip => 'छोड़ें';

  @override
  String get onboard_choose_goal => 'आपका प्राथमिक कल्याण लक्ष्य क्या है?';

  @override
  String get onboard_goal_weight_loss => 'हल्के वज़न में कमी';

  @override
  String get onboard_goal_muscle => 'मांसपेशियों का लाभ और ताकत';

  @override
  String get onboard_goal_energy => 'दैनिक ऊर्जा एवं जीवन शक्ति';

  @override
  String get onboard_goal_habits => 'स्वस्थ मन से भोजन करना';

  @override
  String get onboard_about_you => 'हमें अपने बारे में बताएं';

  @override
  String get onboard_lifestyle => 'आपकी दैनिक दिनचर्या';

  @override
  String get onboard_permissions_title => 'अनुमतियाँ एवं सिस्टम एक्सेस';

  @override
  String get onboard_permissions_sub =>
      'सिंक चरणों, वर्कआउट और अनुस्मारक तक पहुंच प्रदान करें।';

  @override
  String get onboard_plan_ready_title => 'आपकी कस्टम योजना तैयार है!';

  @override
  String get onboard_plan_ready_sub =>
      'हमने सिर्फ आपके लिए एक सौम्य, वैयक्तिकृत पोषण और कल्याण रोडमैप तैयार किया है।';

  @override
  String get onboard_enter_bloomi => 'ब्लूमी दर्ज करें';

  @override
  String get insights_weekly_report => 'साप्ताहिक कल्याण पुनर्कथन';

  @override
  String insights_best_day(Object day) {
    return 'सर्वोत्तम संगति दिवस: $day';
  }

  @override
  String get insights_streaks_badges => 'धारियाँ और मील के पत्थर';

  @override
  String insights_unlocked_on(Object date) {
    return '$date पर अनलॉक किया गया';
  }

  @override
  String get insights_keep_going => 'शानदार प्रगति जारी रखें!';

  @override
  String get widgets_title => 'होम स्क्रीन विजेट';

  @override
  String widgets_active_count(Object count) {
    return 'सक्रिय विजेट: $count';
  }

  @override
  String get widgets_hub_title => 'ब्लूमी वेलनेस हब';

  @override
  String get widgets_steps_title => 'कदम और सक्रिय रिंग';

  @override
  String get widgets_water_title => 'हाइड्रेशन त्वरित लॉग';

  @override
  String get widgets_mascot_title => 'ब्लूमी शुभंकर साथी';

  @override
  String get wear_os_title => 'ओएस स्मार्टवॉच पहनें';

  @override
  String get wear_os_connected => 'वॉच से कनेक्ट किया गया';

  @override
  String get wear_os_sync => 'वॉच डेटा सिंक करें';

  @override
  String get theme_title => 'उपस्थिति और थीम';

  @override
  String get theme_mode => 'थीम मोड';

  @override
  String get theme_light => 'रोशनी';

  @override
  String get theme_dark => 'अंधेरा';

  @override
  String get theme_system => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get theme_background_palette => 'पृष्ठभूमि पैलेट';

  @override
  String get units_title => 'माप की इकाइयाँ';

  @override
  String get units_metric => 'मीट्रिक (किलो, सेमी, एमएल)';

  @override
  String get units_imperial => 'इंपीरियल (एलबीएस, इन, फ़्लूड आउंस)';

  @override
  String get home_unable_load => 'Dashboard load nahi hua';

  @override
  String get home_health_permission_req => 'स्वास्थ्य कनेक्ट अनुमति आवश्यक है';

  @override
  String get home_health_permission_desc =>
      'ब्लूमी को वास्तविक कदम, हृदय गति और वास्तविक समय में मोबाइल होम विजेट सिंक करने के लिए हेल्थ कनेक्ट अनुमति की आवश्यकता होती है।';

  @override
  String get home_allow_health => 'हेल्थ कनेक्ट की अनुमति दें';

  @override
  String get home_ready_mindful_day => 'एक जागरूक दिन के लिए तैयार हैं? ✨';

  @override
  String get home_quick_add => 'शीघ्र जोड़ें';

  @override
  String get home_live_gps => 'लाइव जीपीएस';

  @override
  String get home_calories_remaining_label => 'कैलोरी शेष';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Khaya: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Water Tracker kholein 💧';

  @override
  String get home_water_goal_reached => 'Daily water goal pura hua! 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml goal tak bacha hai';
  }

  @override
  String get home_details => 'विवरण';

  @override
  String get home_upgrade_plan_desc =>
      'वैयक्तिकृत दैनिक लक्ष्यों और एआई योजना को अनलॉक करने के लिए अपग्रेड करें';

  @override
  String get home_unlock => 'अनलॉक 👑';

  @override
  String get home_quick_log_hint =>
      'शीघ्रता से एक कल्याण प्रविष्टि रिकॉर्ड करें';

  @override
  String get food_serving_size => 'परोसने का आकार';

  @override
  String get food_serving_grams => 'परोसना (जी)';

  @override
  String get food_number_servings => 'सर्विंग्स की संख्या';

  @override
  String get food_calories_per_serving => 'प्रति सेवारत कैलोरी';

  @override
  String get food_recipe_ingredients => 'सामग्री';

  @override
  String get food_recipe_add_ingredient => 'सामग्री जोड़ें';

  @override
  String get food_recipe_directions => 'निर्देश एवं नोट्स';

  @override
  String get food_recipe_total => 'कुल नुस्खा पोषण';

  @override
  String get food_recipe_per_serving => 'प्रति सेवारत पोषण';

  @override
  String get food_recipe_saved_toast => 'कस्टम भोजन सफलतापूर्वक सहेजा गया!';

  @override
  String get food_barcode_found => 'उत्पाद मिला!';

  @override
  String get food_barcode_not_found_desc =>
      'हमें यह बारकोड खुले डेटाबेस में नहीं मिला. आप इसे कस्टम फूड के तौर पर शामिल कर सकते हैं.';

  @override
  String get food_add_custom_btn => 'कस्टम भोजन जोड़ें';

  @override
  String get food_scan_again => 'दोबारा स्कैन करें';

  @override
  String get food_review_items => 'पहचाने गए खाद्य पदार्थों की समीक्षा करें';

  @override
  String get food_review_hint =>
      'मात्रा समायोजित करें या किसी भी अपरिचित वस्तु को हटा दें';

  @override
  String get food_log_selected => 'चयनित खाद्य पदार्थों को लॉग करें';

  @override
  String get food_favourites_title => 'पसंदीदा भोजन';

  @override
  String get food_recent_title => 'हाल के खाद्य पदार्थ';

  @override
  String get food_no_favourites =>
      'अभी तक कोई पसंदीदा भोजन नहीं. यहां सहेजने के लिए किसी भी भोजन पर दिल से टैप करें।';

  @override
  String get food_no_recents =>
      'हाल ही में लॉग किया गया कोई खाद्य पदार्थ नहीं मिला.';

  @override
  String get food_nutrition_details_title => 'दैनिक पोषण विवरण';

  @override
  String get food_macro_protein_label => 'प्रोटीन का टूटना';

  @override
  String get food_macro_carbs_label => 'कार्ब्स का टूटना';

  @override
  String get food_macro_fat_label => 'वसा का टूटना';

  @override
  String get food_macro_fiber_label => 'फाइबर का टूटना';

  @override
  String get food_daily_target_comparison => 'लक्ष्य तुलना';

  @override
  String food_target_label(Object target) {
    return 'लक्ष्य: $target';
  }

  @override
  String get food_edit_entry => 'डायरी प्रविष्टि संपादित करें';

  @override
  String get food_delete_entry => 'प्रविष्टि हटाएँ';

  @override
  String food_grams_short(Object grams) {
    return '$grams जी';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal किलो कैलोरी';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current का $target मि.ली';
  }

  @override
  String get water_intake_history => 'आज का जल लॉग';

  @override
  String get water_no_logs_today =>
      'आज तक कोई जलजमाव नहीं हुआ। हाइड्रेट करें और त्वरित ऐड बटन टैप करें!';

  @override
  String get water_adjust_goal => 'दैनिक लक्ष्य समायोजित करें';

  @override
  String get health_connect_banner => 'हेल्थ कनेक्ट से जुड़ा';

  @override
  String get health_vitals_summary => 'दैनिक स्वास्थ्य वाइटल';

  @override
  String get health_latest_heart_rate => 'नवीनतम हृदय गति';

  @override
  String get health_latest_bp => 'रक्तचाप';

  @override
  String get health_latest_spo2 => 'रक्त ऑक्सीजन';

  @override
  String get health_latest_glucose => 'रक्त ग्लूकोज';

  @override
  String get health_latest_weight => 'वज़न';

  @override
  String get health_latest_sleep => 'नींद की अवधि';

  @override
  String get health_add_manual => 'मैन्युअल माप जोड़ें';

  @override
  String get health_history_trends => 'ऐतिहासिक रुझान';

  @override
  String get health_sync_success =>
      'स्वास्थ्य डेटा सफलतापूर्वक समन्वयित किया गया!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours बजे $mins मिनट';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val किग्रा';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm बीपीएम';
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
    return '$val मिलीग्राम/डीएल';
  }

  @override
  String get health_devices_title => 'कनेक्टेड डिवाइस और पहनने योग्य वस्तुएं';

  @override
  String get health_devices_desc =>
      'युग्मित स्मार्टवॉच, फिटनेस ट्रैकर और स्वास्थ्य सेंसर प्रबंधित करें।';

  @override
  String get health_workout_editor_title => 'वर्कआउट संपादित करें';

  @override
  String get health_workout_name_label => 'कसरत का नाम';

  @override
  String get health_workout_duration_label => 'अवधि (मिनट)';

  @override
  String get health_workout_calories_label => 'अनुमानित कैलोरी (किलो कैलोरी)';

  @override
  String get health_workout_date_label => 'दिनांक और समय';

  @override
  String get plan_daily_wellness_roadmap => 'आपका वैयक्तिकृत रोडमैप';

  @override
  String get plan_morning_routine => 'सुबह की दिनचर्या';

  @override
  String get plan_afternoon_routine => 'मध्याह्न कल्याण';

  @override
  String get plan_evening_routine => 'शाम की हवा-मंदी';

  @override
  String get plan_coach_badge => 'ब्लूमी एआई कोच';

  @override
  String get plan_weekly_overview => '7-दिवसीय कल्याण फोकस';

  @override
  String get plan_targets_title => 'कल्याण लक्ष्य एवं लक्ष्य';

  @override
  String get plan_calorie_budget_label => 'दैनिक कैलोरी बजट';

  @override
  String get plan_water_budget_label => 'दैनिक जल लक्ष्य';

  @override
  String get plan_step_budget_label => 'दैनिक कदम लक्ष्य';

  @override
  String get plan_macro_split_label => 'मैक्रोन्यूट्रिएंट अनुपात';

  @override
  String get profile_personal_details => 'व्यक्तिगत विवरण';

  @override
  String get profile_body_stats => 'शारीरिक माप';

  @override
  String get profile_app_preferences => 'प्राथमिकताएँ और ऐप सेटिंग्स';

  @override
  String get profile_edit_name_hint => 'आपका नाम';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ऊंचाई ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'वज़न ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'उम्र';

  @override
  String get profile_gender_male => 'पुरुष';

  @override
  String get profile_gender_female => 'स्त्री';

  @override
  String get profile_gender_other => 'अन्य/नहीं कहना पसंद करते हैं';

  @override
  String get profile_activity_sedentary =>
      'गतिहीन (बहुत कम या कोई व्यायाम नहीं)';

  @override
  String get profile_activity_light => 'हल्का सक्रिय (1-3 दिन/सप्ताह)';

  @override
  String get profile_activity_moderate =>
      'मध्यम रूप से सक्रिय (3-5 दिन/सप्ताह)';

  @override
  String get profile_activity_very => 'बहुत सक्रिय (6-7 दिन/सप्ताह)';

  @override
  String get settings_wear_os_header => 'ओएस कंपेनियन ऐप पहनें';

  @override
  String get settings_wear_os_desc =>
      'कैलोरी, पानी और चरणों पर नज़र डालने के लिए अपनी वेयर ओएस घड़ी पर ब्लूमी टाइल और जटिलता स्थापित करें।';

  @override
  String get settings_widgets_header => 'इंटरएक्टिव एंड्रॉइड विजेट';

  @override
  String get settings_widgets_desc =>
      'तत्काल अपडेट के लिए अपने डिवाइस की होम स्क्रीन पर रीयल-टाइम विजेट पिन करें।';

  @override
  String get settings_about_header => 'ब्लूमी के बारे में';

  @override
  String get settings_about_version => 'संस्करण 1.0.0';

  @override
  String get settings_about_build => '100 का निर्माण करें';

  @override
  String get settings_about_credits =>
      'सचेत, स्वस्थ जीवन की देखभाल के साथ तैयार किया गया।';

  @override
  String get settings_terms_header => 'नियम एवं शर्तें';

  @override
  String get settings_privacy_header => 'गोपनीयता नीति';

  @override
  String get settings_delete_header => 'खाता और डेटा हटाएँ';

  @override
  String get settings_delete_warning =>
      'इस क्रिया को पूर्ववत नहीं किया जा सकता. आपके सभी भोजन, वर्कआउट, ज़रूरी चीज़ें और प्रोफ़ाइल स्थायी रूप से हटा दी जाएंगी।';

  @override
  String get settings_delete_confirm_btn => 'स्थायी रूप से हटाएँ';

  @override
  String get onboard_welcome_headline => 'ब्लूमी में आपका स्वागत है ✨';

  @override
  String get onboard_welcome_tagline =>
      'आपके जीवन के लिए डिज़ाइन की गई सौम्य, सचेतन कल्याण ट्रैकिंग।';

  @override
  String get onboard_step_about => 'आपके बारे में';

  @override
  String get onboard_step_goals => 'आपके लक्ष्य';

  @override
  String get onboard_step_lifestyle => 'दैनिक आदतें';

  @override
  String get onboard_step_permissions => 'अनुमतियाँ';

  @override
  String get onboard_step_plan => 'तैयार!';

  @override
  String get onboard_health_connect_perm => 'हेल्थ कनेक्ट एक्सेस';

  @override
  String get onboard_step_sensors_perm => 'स्टेप काउंटर सेंसर';

  @override
  String get onboard_notif_perm => 'सचेतन अनुस्मारक एवं सूचनाएं';

  @override
  String get onboard_camera_perm => 'कैमरा (बारकोड एवं खाद्य स्कैनर)';

  @override
  String get onboard_grant_permissions => 'अनुमतियाँ प्रदान करें';

  @override
  String get onboard_continue_dashboard => 'डैशबोर्ड खोलें';

  @override
  String get notif_channel_hydration_name => 'हाइड्रेशन नजेस';

  @override
  String get notif_channel_hydration_desc => 'पूरे दिन हल्का पानी अनुस्मारक';

  @override
  String get notif_channel_nutrition_name => 'भोजन एवं पोषण अनुस्मारक';

  @override
  String get notif_channel_nutrition_desc =>
      'नाश्ता, दोपहर का भोजन और रात का खाना अनुस्मारक अलर्ट';

  @override
  String get notif_channel_steps_name => 'चरण मील के पत्थर';

  @override
  String get notif_channel_steps_desc => 'दैनिक कदम लक्ष्य तक पहुँचने पर उत्सव';

  @override
  String get notif_channel_vitals_name => 'स्वास्थ्य एवं जीवन जांच';

  @override
  String get notif_channel_vitals_desc =>
      'वजन और सोते समय वाइंड-डाउन अनुस्मारक';

  @override
  String get notif_action_log_water => '💧 लॉग +250 मि.ली';

  @override
  String get notif_action_snooze => 'स्नूज़ 15मी';

  @override
  String get notif_action_log_meal => '🥗 लॉग भोजन';
}
