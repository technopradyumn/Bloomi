// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

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
  String health_last_synced(Object time) {
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
  String get surroundings_refresh => 'Update Environmental Data';

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
  String get notifications => 'Push Notifications';

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
  String get theme_system => 'System';

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
  String get settings_about_version => 'Version';

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
