import os
import re

def safe_replace(filepath, replacements):
    if not os.path.exists(filepath):
        print(f"Skipping non-existent: {filepath}")
        return
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Ensure app_localizations.dart import is present
    if 'app_localizations.dart' not in content:
        content = "import 'package:bloomi/core/localization/app_localizations.dart';\n" + content

    changed = False
    for target, repl in replacements:
        if target in content:
            content = content.replace(target, repl)
            changed = True
        else:
            # Maybe already replaced or minor formatting
            pass

    if changed:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Successfully migrated: {filepath}")
    else:
        print(f"No changes in: {filepath}")

def main():
    # 1. Quick Add Sheet
    safe_replace('lib/features/home/presentation/widgets/quick_add_sheet.dart', [
        ("title: Text(\n          'Quick Log',", "title: Text(\n          context.tr('home_quick_actions'),"),
        ("tooltip: 'Back',", "tooltip: context.tr('back'),"),
        ("'Mindful, instant logging for food, water, and movement.'", "context.tr('home_quick_log_hint')"),
        ("title: 'Search Food',", "title: context.tr('foodSearch_title'),"),
        ("title: 'Scan Barcode 👑',", "title: '${context.tr('barcode_title')} 👑',"),
        ("title: 'Add Water',", "title: context.tr('home_log_water'),"),
        ("title: 'Custom Food',", "title: context.tr('customFood_title'),"),
    ])

    # 2. Notifications Page
    safe_replace('lib/features/home/presentation/pages/notifications_page.dart', [
        ("title: Text(\n                _isSelectionMode ? '${_selectedIds.length} Selected' : 'Notifications',",
         "title: Text(\n                _isSelectionMode ? '${_selectedIds.length} ${context.tr('select')}' : context.tr('notifications'),"),
        ("child: Text(\n                      'Select All',", "child: Text(\n                      context.tr('all'),"),
        ("tooltip: 'Permanent Delete',", "tooltip: context.tr('delete'),"),
        ("label: Text(\n                      'Reminder Settings',", "label: Text(\n                      context.tr('reminders'),"),
    ])

    # 3. Units Page
    safe_replace('lib/features/settings/presentation/pages/units_page.dart', [
        ("title: Text(\n          'Units of Measurement',", "title: Text(\n          context.tr('units_of_measurement'),"),
        ("title: 'Metric System',", "title: context.tr('units_metric'),"),
        ("title: 'Imperial System',", "title: context.tr('units_imperial'),"),
        ("_buildConversionRow(context, 'Weight',", "_buildConversionRow(context, context.tr('profile_weight'),"),
        ("_buildConversionRow(context, 'Height',", "_buildConversionRow(context, context.tr('profile_height'),"),
        ("_buildConversionRow(context, 'Hydration',", "_buildConversionRow(context, context.tr('water'),"),
        ("_buildConversionRow(context, 'Energy',", "_buildConversionRow(context, context.tr('calories'),"),
    ])

    # 4. Units & Language Page
    safe_replace('lib/features/settings/presentation/pages/units_language_page.dart', [
        ("title: const Text('Units & Language Settings'),", "title: Text(context.tr('settings')),"),
        ("const Text('Measurement System',", "Text(context.tr('units_of_measurement'),"),
        ("const Text('Display Language',", "Text(context.tr('app_language'),"),
    ])

    # 5. Theme Settings Page
    safe_replace('lib/features/settings/presentation/pages/theme_settings_page.dart', [
        ("title: const Text(\n          'Appearance & Theme',", "title: Text(\n          context.tr('appearance_theme'),"),
        ("title: 'Theme Mode',", "title: context.tr('theme_mode'),"),
        ("title: 'Light',", "title: context.tr('theme_light'),"),
        ("title: 'Dark',", "title: context.tr('theme_dark'),"),
        ("title: 'System Default',", "title: context.tr('theme_system'),"),
        ("title: 'Background Palette',", "title: context.tr('theme_background_palette'),"),
    ])

    # 6. Reminders Settings Page
    safe_replace('lib/features/settings/presentation/pages/reminders_settings_page.dart', [
        ("title: const Text('Reminders & Notifications'),", "title: Text(context.tr('reminders_notifications')),"),
        ("const Text('Meal Reminders',", "Text(context.tr('reminders_breakfast_title'),"),
        ("const Text('Hydration Reminders',", "Text(context.tr('reminders_water_title'),"),
        ("const Text('Weigh-in Reminders',", "Text(context.tr('reminders_weight_title'),"),
    ])

    # 7. About & Help Page
    safe_replace('lib/features/settings/presentation/pages/about_help_page.dart', [
        ("title: const Text('About Bloomi'),", "title: Text(context.tr('about_bloomi')),"),
        ("const Text('Version 1.0.0',", "Text(context.tr('settings_about_version'),"),
        ("const Text('Privacy Policy',", "Text(context.tr('privacy_policy'),"),
        ("const Text('Terms & Conditions',", "Text(context.tr('terms_conditions'),"),
    ])

    # 8. Privacy Policy Page
    safe_replace('lib/features/settings/presentation/pages/privacy_policy_page.dart', [
        ("title: const Text('Privacy Policy'),", "title: Text(context.tr('privacy_policy')),"),
    ])

    # 9. Terms Conditions Page
    safe_replace('lib/features/settings/presentation/pages/terms_conditions_page.dart', [
        ("title: const Text('Terms & Conditions'),", "title: Text(context.tr('terms_conditions')),"),
    ])

    # 10. Delete Account Page
    safe_replace('lib/features/settings/presentation/pages/delete_account_page.dart', [
        ("title: const Text('Delete Account & Data'),", "title: Text(context.tr('delete_account')),"),
        ("const Text('Delete My Account',", "Text(context.tr('delete_account')),"),
        ("const Text('Cancel',", "Text(context.tr('cancel'),"),
    ])

    # 11. Wear OS Page
    safe_replace('lib/features/settings/presentation/pages/wear_os_page.dart', [
        ("title: Text('Wear OS Watch App',", "title: Text(context.tr('wear_os_watch_app'),"),
        ("const Text('Connected Watch',", "Text(context.tr('wear_os_connected'),"),
        ("const Text('Sync Watch Data',", "Text(context.tr('wear_os_sync'),"),
    ])

    # 12. Widgets Page
    safe_replace('lib/features/settings/presentation/pages/widgets_page.dart', [
        ("title: Text('Home Screen Widgets',", "title: Text(context.tr('home_screen_widgets'),"),
        ("const Text('Bloomi Wellness Hub',", "Text(context.tr('widgets_hub_title'),"),
        ("const Text('Steps & Active Ring',", "Text(context.tr('widgets_steps_title'),"),
        ("const Text('Hydration Quick Log',", "Text(context.tr('widgets_water_title'),"),
    ])

    # 13. Surroundings Page
    safe_replace('lib/features/surroundings/presentation/pages/surroundings_page.dart', [
        ("title: Text(\n          'Surroundings & Weather',", "title: Text(\n          context.tr('surroundings_title'),"),
        ("tooltip: 'Refresh Weather',", "tooltip: context.tr('surroundings_refresh'),"),
        ("const Text('Air Quality Index',", "Text(context.tr('surroundings_aqi'),"),
        ("const Text('UV Index',", "Text(context.tr('surroundings_uv'),"),
    ])

    # 14. Food Diary Page
    safe_replace('lib/features/food/presentation/pages/food_diary_page.dart', [
        ("title: Text(\n              'Food Diary',", "title: Text(\n              context.tr('food_diary_title'),"),
        ("tooltip: 'Daily Nutrition Details',", "tooltip: context.tr('food_nutrition_details_title'),"),
        ("tooltip: 'Favourites & Recent',", "tooltip: context.tr('food_favourites'),"),
        ("'Daily Calorie Budget'", "context.tr('home_calories_budget')"),
        ("'${remaining.toInt()} kcal remaining'", "context.tr('home_calories_remaining', {'kcal': remaining.toInt()})"),
        ("'No foods logged yet. Tap + to add.'", "context.tr('food_empty_meal')"),
        ("PopupMenuItem(value: 'delete', child: Text('Delete'))", "PopupMenuItem(value: 'delete', child: Text(context.tr('delete')))"),
        ("child: Text('Edit / View Details')", "child: Text(context.tr('food_edit_entry'))"),
        ("child: Text('Delete')", "child: Text(context.tr('delete'))"),
        ("'Meal Suggestions'", "context.tr('plan_meal_suggestions')"),
        ("tooltip: 'Shuffle Suggestions',", "tooltip: context.tr('refresh'),"),
        ("child: const Text(\n                    'View',", "child: Text(\n                    context.tr('home_details'),"),
    ])

    # 15. Water Tracker Page
    safe_replace('lib/features/food/presentation/pages/water_tracker_page.dart', [
        ("title: Text(\n          'Water Tracker',", "title: Text(\n          context.tr('water_tracker_title'),"),
        ("title: Text('Add Custom Water',", "title: Text(context.tr('water_custom_amount'),"),
        ("child: const Text('Cancel')", "child: Text(context.tr('cancel'))"),
        ("child: const Text('Add')", "child: Text(context.tr('add'))"),
    ])

    # 16. Health Overview Page
    safe_replace('lib/features/health/presentation/pages/health_overview_page.dart', [
        ("title: Text(\n          'Health & Vitals',", "title: Text(\n          context.tr('health_overview_title'),"),
        ("tooltip: 'Devices & Health Connect',", "tooltip: context.tr('health_devices_hub'),"),
        ("tooltip: 'Log Body Metric',", "tooltip: context.tr('health_add_manual'),"),
        ("child: const Text('View All',", "child: Text(context.tr('home_view_all'),"),
        ("tooltip: 'Edit Workout',", "tooltip: context.tr('edit'),"),
        ("tooltip: 'Delete Workout',", "tooltip: context.tr('delete'),"),
        ("title: const Text('Delete Workout?'),", "title: Text('${context.tr('delete')}?'),"),
        ("child: const Text('Cancel'),", "child: Text(context.tr('cancel')),"),
        ("child: const Text('Delete'),", "child: Text(context.tr('delete')),"),
    ])

    # 17. Workout Log Page
    safe_replace('lib/features/health/presentation/pages/workout_log_page.dart', [
        ("title: const Text('Delete Workout?'),", "title: Text('${context.tr('delete')}?'),"),
        ("child: const Text('Cancel'),", "child: Text(context.tr('cancel')),"),
        ("child: const Text('Delete'),", "child: Text(context.tr('delete')),"),
        ("title: Text(\n          'Workout Log',", "title: Text(\n          context.tr('workout_title'),"),
        ("tooltip: 'Log Workout',", "tooltip: context.tr('workout_add_exercise'),"),
        ("label: const Text('Add Workout'),", "label: Text(context.tr('workout_add_exercise')),"),
        ("tooltip: 'Edit Workout',", "tooltip: context.tr('edit'),"),
        ("tooltip: 'Delete Workout',", "tooltip: context.tr('delete'),"),
    ])

    # 18. Daily Plan Page
    safe_replace('lib/features/plan/presentation/pages/daily_plan_page.dart', [
        ("title: Text(\n          'Daily Plan',", "title: Text(\n          context.tr('plan_title'),"),
        ("tooltip: 'Plan Goals & Targets',", "tooltip: context.tr('plan_targets_title'),"),
        ("'Your Personalized Roadmap'", "context.tr('plan_daily_wellness_roadmap')"),
        ("'Morning Routine'", "context.tr('plan_morning_routine')"),
        ("'Midday Wellness'", "context.tr('plan_afternoon_routine')"),
        ("'Evening Wind-Down'", "context.tr('plan_evening_routine')"),
        ("'Bloomi AI Coach'", "context.tr('plan_coach_badge')"),
    ])

    # 19. Profile Page
    safe_replace('lib/features/profile/presentation/pages/profile_page.dart', [
        ("title: Text(\n          'Profile',", "title: Text(\n          context.tr('profile_title'),"),
        ("tooltip: 'All Settings',", "tooltip: context.tr('settings'),"),
        ("tooltip: 'Edit Profile Information',", "tooltip: context.tr('profile_edit'),"),
    ])

    # 20. Edit Profile Page
    safe_replace('lib/features/profile/presentation/pages/edit_profile_page.dart', [
        ("title: const Text('Edit Profile'),", "title: Text(context.tr('profile_edit')),"),
        ("const Text('Save Profile',", "Text(context.tr('save'),"),
        ("const Text('Cancel',", "Text(context.tr('cancel'),"),
    ])

    # 21. Barcode Scan Page
    safe_replace('lib/features/food/presentation/pages/barcode_scan_page.dart', [
        ("title: Text(\n          'Barcode Scanner',", "title: Text(\n          context.tr('barcode_title'),"),
        ("child: const Text('Cancel')", "child: Text(context.tr('cancel'))"),
        ("child: const Text('Add to Diary')", "child: Text(context.tr('food_add_food'))"),
    ])

    # 22. Food Search Page
    safe_replace('lib/features/food/presentation/pages/food_search_page.dart', [
        ("title: Text(\n          'Search Foods',", "title: Text(\n          context.tr('foodSearch_title'),"),
        ("hintText: 'Search dishes, fruits, dal, roti...',", "hintText: context.tr('food_search_hint'),"),
    ])

    # 23. Custom Food Recipe Page
    safe_replace('lib/features/food/presentation/pages/custom_food_recipe_page.dart', [
        ("title: const Text('Custom Food & Recipe'),", "title: Text(context.tr('customFood_title')),"),
        ("const Text('Save Recipe',", "Text(context.tr('customFood_save'),"),
    ])

    # 24. Weekly Report Page
    safe_replace('lib/features/insights/presentation/pages/weekly_report_page.dart', [
        ("title: const Text('Weekly Wellness Recap'),", "title: Text(context.tr('insights_weekly_report')),"),
    ])

    # 25. Streaks Badges Page
    safe_replace('lib/features/insights/presentation/pages/streaks_badges_page.dart', [
        ("title: const Text('Streaks & Milestones'),", "title: Text(context.tr('insights_streaks_badges')),"),
    ])

    # 26. Onboarding Flow Page & Sub-pages
    safe_replace('lib/features/onboarding/presentation/pages/intro_slides_page.dart', [
        ("const Text('Get Started',", "Text(context.tr('onboard_get_started'),"),
        ("const Text('Skip',", "Text(context.tr('onboard_skip'),"),
    ])

    safe_replace('lib/features/onboarding/presentation/pages/about_you_page.dart', [
        ("const Text('About You',", "Text(context.tr('onboard_about_you'),"),
        ("const Text('Continue',", "Text(context.tr('continue_btn'),"),
    ])

    safe_replace('lib/features/onboarding/presentation/pages/permissions_page.dart', [
        ("const Text('Permissions & System Access',", "Text(context.tr('permissions'),"),
        ("const Text('Continue',", "Text(context.tr('continue_btn'),"),
    ])

    safe_replace('lib/features/onboarding/presentation/pages/plan_ready_page.dart', [
        ("const Text('Your Custom Plan is Ready!',", "Text(context.tr('onboard_plan_ready_title'),"),
        ("const Text('Enter Bloomi',", "Text(context.tr('onboard_enter_bloomi'),"),
    ])

    safe_replace('lib/features/auth/presentation/pages/sign_in_page.dart', [
        ("const Text('Welcome to Bloomi',", "Text(context.tr('onboard_welcome'),"),
        ("const Text('Sign In',", "Text(context.tr('onboard_sign_in'),"),
        ("const Text('Skip for now',", "Text(context.tr('onboard_skip'),"),
    ])

if __name__ == '__main__':
    main()

