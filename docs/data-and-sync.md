# 7. Data model and calculators


All user-created rows have id (UUID), createdAt, updatedAt and deleted (tombstone flag, used for sync). Tables in Drift:


| Table | Notes |
| --- | --- |
| user_profile | name, gender, birth date, height, units, diet type, allergies, language |
| targets | calories, protein, carbs, fat, fibre, water, steps, sleep, target weight |
| food_items | Seed data, read-only. Name, Hindi name, category, per-100g values: kcal, protein, carbs, fat, fibre, sugar, sodium, micronutrients as JSON, source, meal-type tags, diet tags |
| food_units | food_id, unit name (g, ml, katori, bowl, cup, glass, piece, roti, tbsp, tsp), grams per unit. Example: 1 roti (medium) is about 35 g |
| custom_foods | User-created foods and recipes |
| meal_logs | date, meal type, food reference, quantity, unit, total grams, computed nutrients snapshot, source (manual or photo) |
| water_logs | date, ml |
| body_entries | type (weight, waist, bp_sys, bp_dia, glucose, temperature), value, unit, measured at, source |
| workout_logs | type, duration, calories, source |
| plan_checklist | date, item, done |
| reminders | type, time, enabled |
| achievements and streaks | badge id, unlocked at, streak counters |
| scan_queue | Pending photos. Local only, never synced |
| weather_cache | Last weather and air quality. Local only |
| sync_state | Last sync time, Drive file ids, last error. Local only |



Always store a nutrient snapshot inside each meal log, so old logs never change if the food database is updated later.


Calculators (unit-test all of these)

- BMR (Mifflin-St Jeor): male = 10 x kg + 6.25 x cm - 5 x age + 5. Female = same minus 161 instead of plus 5. Other = average of the two.
- Daily energy = BMR x activity factor: sedentary 1.2, light 1.375, moderate 1.55, very active 1.725, athlete 1.9.
- Goal adjustment: lose gently -300 kcal, lose standard -500 kcal, maintain 0, gain +250 or +400. Never go below 1200 kcal (female or other) or 1500 kcal (male). Suggested weight change must not exceed about 0.5 kg per week.
- Protein: 1.0 g per kg default, 1.2 when losing weight, 1.4 when gaining muscle.
- Fat: 25 percent of calories. Carbs: the remainder. Fibre: 14 g per 1000 kcal.
- Water: 33 ml per kg, plus 250 to 500 ml on hot days (from weather).
- Default steps 8000, sleep 8 hours. All targets are editable in S38.
- BMI = kg / (m x m). Show the number with a gentle note that BMI is only a rough guide. No judgemental labels.

All defaults are general wellness estimates and the UI must say so.


# 8. Google Drive sync specification


Principles: local database wins for speed, Drive is the backup and the way to move between phones. Only the user's App Data folder is used (scope drive.appdata). Nothing else in their Drive is touched or visible to the app.


Files in the App Data folder


| File | Content |
| --- | --- |
| manifest.json | schema version, device id list, last sync time |
| profile.json | profile, targets, settings, reminders |
| logs-YYYY-MM.json | One file per month: meal logs, water logs, body entries, workouts, checklist, achievements |



Not uploaded: Health Connect data (it is re-read from Health Connect), photos, scan queue, caches.


When to sync: on app start (if signed in and online), 10 seconds after the last change (debounced), when connectivity returns, and on Sync now in S45. Never block the UI. Show a small sync status chip (synced, syncing, offline, error).


Merge rules: every record has updatedAt and deleted. When the same id exists on both sides, the newer updatedAt wins. Deleted rows stay as tombstones for 30 days, then are removed. Monthly files are downloaded only when their local version differs (use file modified time or a version counter in the manifest). Unit-test the merge with conflict, delete-vs-edit and clock-skew cases.


First sign-in logic: after Google sign-in, look in the App Data folder for manifest.json. If found, this is a returning user: go to S03 Restoring, download everything, then Home (skip onboarding). If not found, this is a new user: run onboarding, then write the first backup.


Failure handling: if Drive is full, unauthorized or the network drops, keep working locally, retry with exponential backoff, and show a calm message in S45. Never lose local data.


Delete account: delete all files in the App Data folder, wipe the local database and caches, sign out, and revoke the app's access token.
