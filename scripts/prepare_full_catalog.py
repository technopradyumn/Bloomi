import json

def expand_en_catalog():
    with open('assets/l10n/en.json', 'r', encoding='utf-8') as f:
        en = json.load(f)

    additional_keys = {
        # Home
        "home_unable_load": "Unable to load dashboard",
        "home_health_permission_req": "Health Connect Permission Required",
        "home_health_permission_desc": "Bloomi requires Health Connect permission to pull real steps, heart rate, and sync mobile home widgets in real time.",
        "home_allow_health": "Allow Health Connect",
        "home_ready_mindful_day": "Ready for a mindful day? ✨",
        "home_quick_add": "Quick Add",
        "home_live_gps": "Live GPS",
        "home_calories_remaining_label": "CALORIES REMAINING",
        "home_eaten_target": "Eaten: {consumed} / {target} kcal",
        "home_tap_water_tracker": "Tap for Water Tracker 💧",
        "home_water_goal_reached": "Daily goal reached 🎉",
        "home_water_to_daily_goal": "{remaining} ml to daily goal",
        "home_details": "Details",
        "home_upgrade_plan_desc": "Upgrade to unlock personalized daily targets & AI plan",
        "home_unlock": "Unlock 👑",
        "home_quick_log_hint": "Quickly record a wellness entry",

        # Food & Diary
        "food_serving_size": "Serving Size",
        "food_serving_grams": "Serving (g)",
        "food_number_servings": "Number of Servings",
        "food_calories_per_serving": "Calories per serving",
        "food_recipe_ingredients": "Ingredients",
        "food_recipe_add_ingredient": "Add Ingredient",
        "food_recipe_directions": "Instructions & Notes",
        "food_recipe_total": "Total Recipe Nutrition",
        "food_recipe_per_serving": "Per Serving Nutrition",
        "food_recipe_saved_toast": "Custom food saved successfully!",
        "food_barcode_found": "Product Found!",
        "food_barcode_not_found_desc": "We could not find this barcode in the open database. You can add it as a custom food.",
        "food_add_custom_btn": "Add Custom Food",
        "food_scan_again": "Scan Again",
        "food_review_items": "Review Detected Foods",
        "food_review_hint": "Adjust quantities or remove any unrecognized item",
        "food_log_selected": "Log Selected Foods",
        "food_favourites_title": "Favourite Foods",
        "food_recent_title": "Recent Foods",
        "food_no_favourites": "No favourite foods yet. Tap heart on any food to save here.",
        "food_no_recents": "No recently logged foods found.",
        "food_nutrition_details_title": "Daily Nutrition Details",
        "food_macro_protein_label": "Protein Breakdown",
        "food_macro_carbs_label": "Carbs Breakdown",
        "food_macro_fat_label": "Fat Breakdown",
        "food_macro_fiber_label": "Fiber Breakdown",
        "food_daily_target_comparison": "Target Comparison",
        "food_target_label": "Target: {target}",
        "food_edit_entry": "Edit Diary Entry",
        "food_delete_entry": "Delete Entry",
        "food_grams_short": "{grams}g",
        "food_kcal_short": "{kcal} kcal",

        # Water
        "water_progress": "{current} of {target} ml",
        "water_intake_history": "Today's Water Logs",
        "water_no_logs_today": "No water logged yet today. Hydrate and tap a quick add button!",
        "water_adjust_goal": "Adjust Daily Goal",

        # Health & Vitals
        "health_connect_banner": "Connected to Health Connect",
        "health_vitals_summary": "Daily Health Vitals",
        "health_latest_heart_rate": "Latest Heart Rate",
        "health_latest_bp": "Blood Pressure",
        "health_latest_spo2": "Blood Oxygen",
        "health_latest_glucose": "Blood Glucose",
        "health_latest_weight": "Weight",
        "health_latest_sleep": "Sleep Duration",
        "health_add_manual": "Add Manual Measurement",
        "health_history_trends": "Historical Trends",
        "health_sync_success": "Health data synced successfully!",
        "health_metric_sleep_hours": "{hours} hrs {mins} mins",
        "health_metric_weight_val": "{val} kg",
        "health_metric_hr_val": "{bpm} bpm",
        "health_metric_spo2_val": "{pct}%",
        "health_metric_bp_val": "{systolic}/{diastolic} mmHg",
        "health_metric_glucose_val": "{val} mg/dL",
        "health_devices_title": "Connected Devices & Wearables",
        "health_devices_desc": "Manage paired smartwatches, fitness trackers, and health sensors.",
        "health_workout_editor_title": "Edit Workout",
        "health_workout_name_label": "Workout Name",
        "health_workout_duration_label": "Duration (minutes)",
        "health_workout_calories_label": "Estimated Calories (kcal)",
        "health_workout_date_label": "Date and Time",

        # Plan
        "plan_daily_wellness_roadmap": "Your Personalized Roadmap",
        "plan_morning_routine": "Morning Routine",
        "plan_afternoon_routine": "Midday Wellness",
        "plan_evening_routine": "Evening Wind-Down",
        "plan_coach_badge": "Bloomi AI Coach",
        "plan_weekly_overview": "7-Day Wellness Focus",
        "plan_targets_title": "Wellness Targets & Goals",
        "plan_calorie_budget_label": "Daily Calorie Budget",
        "plan_water_budget_label": "Daily Water Target",
        "plan_step_budget_label": "Daily Step Goal",
        "plan_macro_split_label": "Macronutrient Ratio",

        # Profile
        "profile_personal_details": "Personal Details",
        "profile_body_stats": "Body Measurements",
        "profile_app_preferences": "Preferences & App Settings",
        "profile_edit_name_hint": "Your name",
        "profile_edit_height_hint": "Height ({unit})",
        "profile_edit_weight_hint": "Weight ({unit})",
        "profile_edit_age_hint": "Age",
        "profile_gender_male": "Male",
        "profile_gender_female": "Female",
        "profile_gender_other": "Other / Prefer not to say",
        "profile_activity_sedentary": "Sedentary (Little to no exercise)",
        "profile_activity_light": "Lightly Active (1-3 days/week)",
        "profile_activity_moderate": "Moderately Active (3-5 days/week)",
        "profile_activity_very": "Very Active (6-7 days/week)",

        # Settings
        "settings_wear_os_header": "Wear OS Companion App",
        "settings_wear_os_desc": "Install the Bloomi tile and complication on your Wear OS watch to glance at calories, water, and steps.",
        "settings_widgets_header": "Interactive Android Widgets",
        "settings_widgets_desc": "Pin real-time widgets on your device home screen for instant updates.",
        "settings_about_header": "About Bloomi",
        "settings_about_version": "Version 1.0.0",
        "settings_about_build": "Build 100",
        "settings_about_credits": "Crafted with care for mindful, healthy living.",
        "settings_terms_header": "Terms and Conditions",
        "settings_privacy_header": "Privacy Policy",
        "settings_delete_header": "Delete Account & Data",
        "settings_delete_warning": "This action cannot be undone. All your meals, workouts, vitals, and profile will be permanently deleted.",
        "settings_delete_confirm_btn": "Permanently Delete",

        # Onboarding
        "onboard_welcome_headline": "Welcome to Bloomi ✨",
        "onboard_welcome_tagline": "Gentle, mindful wellness tracking designed around your life.",
        "onboard_step_about": "About You",
        "onboard_step_goals": "Your Goals",
        "onboard_step_lifestyle": "Daily Habits",
        "onboard_step_permissions": "Permissions",
        "onboard_step_plan": "Ready!",
        "onboard_health_connect_perm": "Health Connect Access",
        "onboard_step_sensors_perm": "Step Counter Sensor",
        "onboard_notif_perm": "Mindful Reminders & Notifications",
        "onboard_camera_perm": "Camera (Barcode & Food Scanner)",
        "onboard_grant_permissions": "Grant Permissions",
        "onboard_continue_dashboard": "Open Dashboard",

        # Notifications
        "notif_channel_hydration_name": "Hydration Nudges",
        "notif_channel_hydration_desc": "Gentle water reminders throughout the day",
        "notif_channel_nutrition_name": "Meal & Nutrition Reminders",
        "notif_channel_nutrition_desc": "Breakfast, lunch, and dinner reminder alerts",
        "notif_channel_steps_name": "Step Milestones",
        "notif_channel_steps_desc": "Celebrations when reaching daily step targets",
        "notif_channel_vitals_name": "Health & Vitals Checks",
        "notif_channel_vitals_desc": "Weight and bedtime wind-down reminders",
        "notif_action_log_water": "💧 Log +250ml",
        "notif_action_snooze": "Snooze 15m",
        "notif_action_log_meal": "🥗 Log Meal"
    }

    en.update(additional_keys)
    with open('assets/l10n/en.json', 'w', encoding='utf-8') as f:
        json.dump(en, f, ensure_ascii=False, indent=2)

    arb = {"@@locale": "en"}
    arb.update(en)
    with open('assets/l10n/app_en.arb', 'w', encoding='utf-8') as f:
        json.dump(arb, f, ensure_ascii=False, indent=2)

    print(f"Expanded English master dictionary to {len(en)} keys.")

if __name__ == '__main__':
    expand_en_catalog()

