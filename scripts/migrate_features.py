import re

def migrate_file(filepath, replacements):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Add import if missing and if context.tr will be used
    if 'app_localizations.dart' not in content:
        # Find first import
        content = "import 'package:bloomi/core/localization/app_localizations.dart';\n" + content

    for target, repl in replacements:
        if target in content:
            content = content.replace(target, repl)
        else:
            print(f"Warning: target not found in {filepath}: {target[:50]}...")

    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)
    print(f"Migrated {filepath}")

def run():
    # 1. home_dashboard_page.dart
    migrate_file('lib/features/home/presentation/pages/home_dashboard_page.dart', [
        ("'Unable to load dashboard'", "context.tr('home_unable_load')"),
        ("'Health Connect Permission Required'", "context.tr('home_health_permission_req')"),
        ("'Bloomi requires Health Connect permission to pull real steps, heart rate, and sync mobile home widgets in real time.'", "context.tr('home_health_permission_desc')"),
        ("const Text('Allow Health Connect', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700))", "Text(context.tr('home_allow_health'), style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700))"),
        ("'Ready for a mindful day? ✨'", "context.tr('home_ready_mindful_day')"),
        ("tooltip: 'Quick Add',", "tooltip: context.tr('home_quick_add'),"),
        ("tooltip: 'Notifications',", "tooltip: context.tr('notifications'),"),
        ("'Live GPS'", "context.tr('home_live_gps')"),
        ("'CALORIES REMAINING'", "context.tr('home_calories_remaining_label')"),
        ("'Eaten: ${data.consumedCalories.toInt()} / ${data.targetCalories.toInt()} kcal'", "context.tr('home_eaten_target', {'consumed': data.consumedCalories.toInt(), 'target': data.targetCalories.toInt()})"),
        ("'Hydration'", "context.tr('water')"),
        ("'Tap for Water Tracker 💧'", "context.tr('home_tap_water_tracker')"),
        ("goalReached\n                    ? 'Daily goal reached 🎉'\n                    : '$remainingMl ml to daily goal'", "goalReached ? context.tr('home_water_goal_reached') : context.tr('home_water_to_daily_goal', {'remaining': remainingMl})"),
        ("'Activity & Vitals'", "context.tr('health_overview_title')"),
        ("Text(\n                        'Details',", "Text(\n                        context.tr('home_details'),"),
        ("\"Today's Target Plan\"", "context.tr('plan_title')"),
        ("\"Today's Target Plan 🔒\"", "context.tr('plan_title') + ' 🔒'"),
        ("'Upgrade to unlock personalized daily targets & AI plan'", "context.tr('home_upgrade_plan_desc')"),
        ("'Unlock 👑'", "context.tr('home_unlock')"),
    ])

if __name__ == '__main__':
    run()

