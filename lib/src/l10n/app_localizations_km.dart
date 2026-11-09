// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get app_name => 'ប្លូមី';

  @override
  String get nav_home => 'ផ្ទះ';

  @override
  String get nav_today => 'ថ្ងៃនេះ';

  @override
  String get nav_plan => 'ផែនការ';

  @override
  String get nav_food => 'អាហារ';

  @override
  String get nav_food_diary => 'កំណត់ហេតុប្រចាំថ្ងៃអាហារ';

  @override
  String get nav_workout => 'កំណត់ហេតុហាត់ប្រាណ';

  @override
  String get nav_health => 'សុខភាព';

  @override
  String get nav_profile => 'ប្រវត្តិរូប';

  @override
  String get save => 'រក្សាទុក';

  @override
  String get cancel => 'បោះបង់';

  @override
  String get delete => 'លុប';

  @override
  String get edit => 'កែសម្រួល';

  @override
  String get done => 'រួចរាល់';

  @override
  String get close => 'បិទ';

  @override
  String get back => 'ត្រឡប់មកវិញ';

  @override
  String get next => 'បន្ទាប់';

  @override
  String get continue_btn => 'បន្ត';

  @override
  String get confirm => 'បញ្ជាក់';

  @override
  String get search => 'ស្វែងរក';

  @override
  String get filter => 'តម្រង';

  @override
  String get all => 'ទាំងអស់។';

  @override
  String get active => 'សកម្ម';

  @override
  String get today => 'ថ្ងៃនេះ';

  @override
  String get yesterday => 'ម្សិលមិញ';

  @override
  String get tomorrow => 'ថ្ងៃស្អែក';

  @override
  String get add => 'បន្ថែម';

  @override
  String get remove => 'ដកចេញ';

  @override
  String get refresh => 'ធ្វើឱ្យស្រស់';

  @override
  String get retry => 'ព្យាយាមម្តងទៀត';

  @override
  String get error => 'កំហុស';

  @override
  String get success => 'ជោគជ័យ';

  @override
  String get loading => 'កំពុង​ផ្ទុក...';

  @override
  String get no_data => 'មិនមានទិន្នន័យទេ។';

  @override
  String get offline => 'របៀបក្រៅបណ្តាញ';

  @override
  String get offline_sub => 'ការផ្លាស់ប្តូរនឹងធ្វើសមកាលកម្មនៅពេលភ្ជាប់ឡើងវិញ';

  @override
  String get undo => 'មិនធ្វើវិញ';

  @override
  String get portion => 'ផ្នែក';

  @override
  String get quantity => 'បរិមាណ';

  @override
  String get unit => 'ឯកតា';

  @override
  String get clear => 'ច្បាស់';

  @override
  String get select => 'ជ្រើសរើស';

  @override
  String get apply => 'អនុវត្ត';

  @override
  String get reset => 'កំណត់ឡើងវិញ';

  @override
  String get ok => 'យល់ព្រម';

  @override
  String get yes => 'បាទ';

  @override
  String get no => 'ទេ';

  @override
  String get optional => 'ស្រេចចិត្ត';

  @override
  String get calories => 'កាឡូរី';

  @override
  String get protein => 'ប្រូតេអ៊ីន';

  @override
  String get carbs => 'កាបូអ៊ីដ្រាត';

  @override
  String get fat => 'ខ្លាញ់';

  @override
  String get fiber => 'ជាតិសរសៃ';

  @override
  String get water => 'ទឹក។';

  @override
  String get steps => 'ជំហាន';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'មីលីលីត្រ';

  @override
  String get kilograms => 'គីឡូក្រាម';

  @override
  String get pounds => 'ផោន';

  @override
  String get centimeters => 'សង់ទីម៉ែត្រ';

  @override
  String get inches => 'នៅក្នុង';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ម៉ោង';

  @override
  String get minutes => 'នាទី';

  @override
  String get serving => 'បម្រើ';

  @override
  String get servings => 'ការបម្រើ';

  @override
  String get serving_size => 'ទំហំបម្រើ';

  @override
  String get per_100g => 'ក្នុង 100 ក្រាម។';

  @override
  String get india => 'ប្រទេសឥណ្ឌា';

  @override
  String get asia => 'អាស៊ី';

  @override
  String get europe => 'អឺរ៉ុប';

  @override
  String get middle_east => 'មជ្ឈិមបូព៌ា';

  @override
  String get africa => 'អាហ្រ្វិក';

  @override
  String get americas => 'អាមេរិក';

  @override
  String get home_title => 'ផ្ទះ';

  @override
  String get home_greeting_morning => 'អរុណសួស្តី';

  @override
  String get home_greeting_afternoon => 'អរុណសួស្តី';

  @override
  String get home_greeting_evening => 'រាត្រីសួស្តី';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ថ្ងៃជាប់គ្នា។',
      one: 'ស្ទ្រីម 1 ថ្ងៃ។',
      zero: '0 ថ្ងៃ។',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'ដុត';

  @override
  String get home_calories_budget => 'ថវិកាកាឡូរី';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal នៅសល់';
  }

  @override
  String get home_water_title => 'ជាតិទឹកប្រចាំថ្ងៃ';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target មីលីលីត្រ';
  }

  @override
  String get home_steps_title => 'ជំហានបានដើរ';

  @override
  String get home_quick_actions => 'សកម្មភាពរហ័ស';

  @override
  String get home_log_meal => 'អាហារកំណត់ហេតុ';

  @override
  String get home_log_water => 'កំណត់ហេតុទឹក។';

  @override
  String get home_log_workout => 'កំណត់ហេតុហាត់ប្រាណ';

  @override
  String get home_log_weight => 'ទំងន់កំណត់ហេតុ';

  @override
  String get home_insights_title => 'ការយល់ដឹងថ្ងៃនេះ';

  @override
  String get home_quote =>
      'ជម្រើសតូចៗដែលមានសុខភាពល្អ បង្កើតការផ្លាស់ប្តូររីកដុះដាល។';

  @override
  String get home_ai_coach_tip => 'គ្រូបង្វឹក Bloomi AI';

  @override
  String get home_surroundings => 'ជុំវិញ និងខ្យល់';

  @override
  String get home_notifications => 'ការជូនដំណឹង';

  @override
  String get home_daily_score => 'ពិន្ទុសុខភាពប្រចាំថ្ងៃ';

  @override
  String get home_view_all => 'មើលទាំងអស់។';

  @override
  String get food_diary_title => 'កំណត់ហេតុប្រចាំថ្ងៃអាហារ';

  @override
  String get food_breakfast => 'អាហារពេលព្រឹក';

  @override
  String get food_lunch => 'អាហារថ្ងៃត្រង់';

  @override
  String get food_dinner => 'អាហារពេលល្ងាច';

  @override
  String get food_snacks => 'អាហារសម្រន់';

  @override
  String get food_add_food => 'បន្ថែមអាហារ';

  @override
  String get food_edit_food => 'កែសម្រួលអាហារ';

  @override
  String get food_add_breakfast => 'បន្ថែមអាហារពេលព្រឹក';

  @override
  String get food_add_lunch => 'បន្ថែមអាហារថ្ងៃត្រង់';

  @override
  String get food_add_dinner => 'បន្ថែមអាហារពេលល្ងាច';

  @override
  String get food_add_snack => 'បន្ថែមអាហារសម្រន់';

  @override
  String get food_total_calories => 'កាឡូរីសរុប';

  @override
  String get food_empty_meal =>
      'មិន​ទាន់​មាន​អាហារ​ដែល​បាន​កត់ត្រា​ទុក​សម្រាប់​អាហារ​នេះ​នៅ​ឡើយ​ទេ។';

  @override
  String get food_empty_diary =>
      'គ្មានអាហារត្រូវបានកត់ត្រាទុកសម្រាប់ថ្ងៃនេះទេ។';

  @override
  String get food_log_first_meal =>
      'ប៉ះ + ដើម្បីកត់ត្រាអាហារឆ្ងាញ់ដំបូងរបស់អ្នក។';

  @override
  String get food_quick_add => 'បន្ថែមរហ័ស';

  @override
  String get food_search_hint => 'ស្វែងរកមុខម្ហូប ផ្លែឈើ ដាល់ រ៉ូទី...';

  @override
  String get food_custom_recipe => 'អាហារ និងរូបមន្តផ្ទាល់ខ្លួន';

  @override
  String get food_scan_barcode => 'ស្កេនបាកូដ';

  @override
  String get food_camera_scan => 'ម៉ាស៊ីនស្កេនអាហារ AI';

  @override
  String get food_recent => 'អាហារថ្មីៗ';

  @override
  String get food_favourites => 'ចំណូលចិត្ត';

  @override
  String get food_macro_summary => 'ការបំបែកម៉ាក្រូសារធាតុចិញ្ចឹម';

  @override
  String get food_delete_meal_confirm => 'តើអ្នកប្រាកដថាចង់លុបធាតុនេះទេ?';

  @override
  String get food_item_deleted => 'ធាតុអាហារត្រូវបានដកចេញ';

  @override
  String get food_remaining => 'នៅសល់';

  @override
  String get food_consumed => 'ប្រើប្រាស់';

  @override
  String food_of_target(Object target) {
    return 'នៃ $target kcal';
  }

  @override
  String get foodSearch_title => 'ស្វែងរកអាហារ';

  @override
  String get foodSearch_scan_barcode => 'ស្កេនបាកូដ';

  @override
  String get foodSearch_take_photo => 'រូបថតរបស់ Snap Food';

  @override
  String get foodSearch_custom_food => 'បង្កើតអាហារផ្ទាល់ខ្លួន';

  @override
  String get foodSearch_recent_searches => 'ការស្វែងរកថ្មីៗ';

  @override
  String get foodSearch_popular => 'មុខម្ហូបពេញនិយម';

  @override
  String get foodSearch_no_results =>
      'គ្មានអាហារដែលត្រូវនឹងការស្វែងរករបស់អ្នកទេ។';

  @override
  String get barcode_title => 'ម៉ាស៊ីនស្កេនបាកូដ';

  @override
  String get barcode_align => 'តម្រឹមបាកូដនៅខាងក្នុងស៊ុមកាមេរ៉ា';

  @override
  String get barcode_not_found => 'រកមិនឃើញផលិតផលនៅក្នុងមូលដ្ឋានទិន្នន័យទេ។';

  @override
  String get barcode_premium_feature => 'ការស្កេនបាកូដមានជាមួយ Bloomi Pro';

  @override
  String get camera_title => 'ម៉ាស៊ីនស្កេនអាហារ AI';

  @override
  String get camera_tap_hint => 'ថតរូបម្ហូបរបស់អ្នកឱ្យច្បាស់';

  @override
  String get camera_analysing => 'ការវិភាគលើចានអាហារ...';

  @override
  String get camera_detected => 'ធាតុដែលបានរកឃើញ';

  @override
  String get camera_flash => 'បិទ/បើក Flash';

  @override
  String get camera_retake => 'ថតរូបឡើងវិញ';

  @override
  String get camera_confirm_food => 'បញ្ជាក់ធាតុ';

  @override
  String get customFood_title => 'អាហារ និងរូបមន្តផ្ទាល់ខ្លួន';

  @override
  String get customFood_name_hint => 'ឈ្មោះម្ហូបឬគ្រឿងផ្សំ';

  @override
  String get customFood_calories_hint => 'កាឡូរី (kcal)';

  @override
  String get customFood_protein_hint => 'ប្រូតេអ៊ីន (ក្រាម)';

  @override
  String get customFood_carbs_hint => 'កាបូអ៊ីដ្រាត (ក្រាម)';

  @override
  String get customFood_fat_hint => 'ខ្លាញ់ (ក្រាម)';

  @override
  String get customFood_save => 'រក្សាទុករូបមន្ត';

  @override
  String get water_tracker_title => 'កម្មវិធីតាមដានទឹក។';

  @override
  String get water_daily_target => 'គោលដៅជាតិទឹកប្រចាំថ្ងៃ';

  @override
  String get water_logged_today => 'ចុះឈ្មោះថ្ងៃនេះ';

  @override
  String get water_add_glass => 'កញ្ចក់ 250 មីលីលីត្រ';

  @override
  String get water_add_bottle => '+ ដប 500 មីលីលីត្រ';

  @override
  String get water_custom_amount => 'ចំនួនទឹកប្រាក់ផ្ទាល់ខ្លួន';

  @override
  String get water_reminder_tip =>
      'ផឹកទឹកឱ្យបានទៀងទាត់ពេញមួយថ្ងៃដើម្បីទទួលបានថាមពលថេរ។';

  @override
  String water_logged_toast(Object amount) {
    return 'ចូល $amount មីលីលីត្រនៃទឹក 💧';
  }

  @override
  String get workout_title => 'កំណត់ហេតុហាត់ប្រាណ';

  @override
  String get workout_add_exercise => 'បន្ថែមការហាត់ប្រាណ';

  @override
  String get workout_cardio => 'ខាឌីអូ';

  @override
  String get workout_strength => 'កម្លាំង';

  @override
  String get workout_yoga => 'យូហ្គា & ភាពបត់បែន';

  @override
  String get workout_duration => 'រយៈពេល';

  @override
  String get workout_intensity => 'អាំងតង់ស៊ីតេ';

  @override
  String get workout_calories_burned => 'កាឡូរីដុត';

  @override
  String get workout_empty => 'គ្មាន​ការ​ហាត់​ប្រាណ​បាន​ចូល​ក្នុង​ថ្ងៃ​នេះ​ទេ។';

  @override
  String get workout_save_success => 'ការហាត់ប្រាណត្រូវបានរក្សាទុកដោយជោគជ័យ!';

  @override
  String get workout_type => 'ប្រភេទលំហាត់ប្រាណ';

  @override
  String get workout_notes => 'ចំណាំ & ការឆ្លុះបញ្ចាំង';

  @override
  String get health_overview_title => 'សុខភាព & វីតាល់';

  @override
  String get health_heart_rate => 'អត្រាបេះដូង';

  @override
  String get health_blood_oxygen => 'អុកស៊ីសែនក្នុងឈាម (SpO2)';

  @override
  String get health_blood_pressure => 'សម្ពាធឈាម';

  @override
  String get health_blood_glucose => 'គ្លុយកូសក្នុងឈាម';

  @override
  String get health_body_temperature => 'សីតុណ្ហភាពរាងកាយ';

  @override
  String get health_sleep_tracking => 'ការតាមដានការគេង';

  @override
  String get health_weight_tracking => 'ទំងន់និងសមាសភាពរាងកាយ';

  @override
  String get health_waist_hip => 'សមាមាត្រចង្កេះទៅត្រគាក';

  @override
  String get health_devices_hub => 'ឧបករណ៍ និង Smartwatch Hub';

  @override
  String get health_sync_now => 'ធ្វើសមកាលកម្មទិន្នន័យសុខភាព';

  @override
  String health_last_synced(Object time) {
    return 'ធ្វើសមកាលកម្មចុងក្រោយ៖ $time';
  }

  @override
  String get health_manual_entry => 'ការបញ្ចូលសុខភាពដោយដៃ';

  @override
  String get health_metric_detail => 'ព័ត៌មានលម្អិតម៉ែត្រ';

  @override
  String get health_connected_sensors => 'ឧបករណ៍ចាប់សញ្ញាសុខភាពដែលបានភ្ជាប់';

  @override
  String get plan_title => 'ផែនការប្រចាំថ្ងៃ';

  @override
  String get plan_weekly_title => 'ផែនការសុខភាពប្រចាំសប្តាហ៍';

  @override
  String get plan_calorie_target => 'គោលដៅកាឡូរី';

  @override
  String get plan_water_target => 'គោលដៅជាតិសំណើម';

  @override
  String get plan_step_target => 'គោលដៅជំហាន';

  @override
  String get plan_sleep_target => 'គោលដៅនៃការគេង';

  @override
  String get plan_meal_suggestions => 'ការណែនាំអាហារ';

  @override
  String get plan_healthy_habits => 'ទម្លាប់ និងគន្លឹះសុខភាព';

  @override
  String get plan_coach_advice => 'ការណែនាំអំពីគ្រូបង្វឹក Bloomi AI';

  @override
  String get plan_generated_title => 'កាលវិភាគប្រចាំថ្ងៃផ្ទាល់ខ្លួន';

  @override
  String get profile_title => 'ប្រវត្តិរូប';

  @override
  String get profile_edit => 'កែសម្រួលប្រវត្តិរូប';

  @override
  String get profile_name => 'ឈ្មោះ';

  @override
  String get profile_age => 'អាយុ';

  @override
  String get profile_gender => 'ភេទ';

  @override
  String get profile_height => 'កម្ពស់';

  @override
  String get profile_weight => 'ទម្ងន់';

  @override
  String get profile_goal => 'គោលដៅចម្បង';

  @override
  String get profile_activity_level => 'កម្រិតសកម្មភាព';

  @override
  String get profile_stats => 'ស្ថិតិសុខភាពរបស់ខ្ញុំ';

  @override
  String get profile_saved => 'បានធ្វើបច្ចុប្បន្នភាពទម្រង់ដោយជោគជ័យ';

  @override
  String get profile_bmi => 'សន្ទស្សន៍ម៉ាសរាងកាយ (BMI)';

  @override
  String get profile_membership => 'សមាជិកភាព';

  @override
  String get settings => 'ការកំណត់';

  @override
  String get preferences_habits => 'ចំណូលចិត្ត & ទម្លាប់';

  @override
  String get appearance_theme => 'រូបរាង & ស្បែក';

  @override
  String get appearance_theme_sub =>
      'ងងឹត ពន្លឺ របៀបប្រព័ន្ធ និងជម្រើសផ្ទៃខាងក្រោយកម្មវិធី';

  @override
  String get permissions => 'ការអនុញ្ញាត និងការចូលប្រើប្រព័ន្ធ';

  @override
  String get permissions_sub =>
      'ការភ្ជាប់សុខភាព, ឧបករណ៍ចាប់សញ្ញាជំហាន, GPS, ការជូនដំណឹង និងកាមេរ៉ា';

  @override
  String get reminders_notifications => 'ការរំលឹក និងការជូនដំណឹង';

  @override
  String get reminders_sub =>
      'ម៉ោងអាហារ ទឹក ពិនិត្យទម្ងន់ និងការរំលឹកពេលចូលគេង';

  @override
  String get units_of_measurement => 'ឯកតារង្វាស់';

  @override
  String get units_sub =>
      'Metric (kg, cm, ml, km) ឬ Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'ភាសាកម្មវិធី';

  @override
  String get language_sub =>
      'ភាសាអង់គ្លេស हिन्दी (ហិណ្ឌូ) ភាសាហ៊ីងលីស និង 195+ ភាសាសកល';

  @override
  String get home_screen_widgets => 'ធាតុក្រាហ្វិកអេក្រង់ដើម';

  @override
  String get widgets_sub =>
      'ធាតុក្រាហ្វិក Android ផ្ទាល់៖ Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'កម្មវិធីនាឡិកា Wear OS';

  @override
  String get wear_os_sub =>
      'ដៃគូ Smartwatch, ក្រឡាក្បឿង, ភាពស្មុគស្មាញ និងជីវិតរស់នៅ';

  @override
  String get goals_wellness => 'គោលដៅ និងការយល់ដឹងអំពីសុខភាព';

  @override
  String get nutrition_targets => 'គោលដៅអាហារូបត្ថម្ភ & ការបែងចែកម៉ាក្រូ';

  @override
  String get nutrition_targets_sub =>
      'គោលដៅកាឡូរី ប្រូតេអ៊ីន កាបូអ៊ីដ្រាត ខ្លាញ់ និងគោលដៅទឹក។';

  @override
  String get weekly_recap => 'សង្ខេបអំពីសុខភាពប្រចាំសប្តាហ៍';

  @override
  String get weekly_recap_sub =>
      'កាឡូរីជាមធ្យម 7 ថ្ងៃ សមាមាត្រម៉ាក្រូ និងថ្ងៃល្អបំផុត';

  @override
  String get streaks_milestones => 'កម្រិត & ចំណុចសំខាន់';

  @override
  String get streaks_sub => 'ស្ទ្រីមផ្កាសកម្ម ផ្លាកសញ្ញា និងសមិទ្ធិផល';

  @override
  String get connected_devices => 'ឧបករណ៍ និងប្រព័ន្ធអេកូដែលបានភ្ជាប់';

  @override
  String get devices_hub => 'ឧបករណ៍ និង Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'តំបន់ជុំវិញ និងអាកាសធាតុ';

  @override
  String get surroundings_sub =>
      'គុណភាពខ្យល់ (AQI) សន្ទស្សន៍កាំរស្មីយូវី និងព័ត៌មានជំនួយសំណើមអាកាសធាតុ';

  @override
  String get bloomi_pro => 'ការជាវ Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach ធាតុក្រាហ្វិកអេក្រង់ដើមចំនួន 5 និងការតាមដានសំខាន់';

  @override
  String get about_security => 'អំពី & សុវត្ថិភាព';

  @override
  String get about_bloomi => 'អំពី Bloomi';

  @override
  String get about_bloomi_sub => 'បង្កើតការបញ្ជាក់ កំណែ គុណលក្ខណៈ';

  @override
  String get privacy_policy => 'គោលការណ៍ឯកជនភាព';

  @override
  String get privacy_policy_sub =>
      'ក្រៅបណ្តាញ - ទីមួយ ស្ថាបត្យកម្មទិន្នន័យនៅលើឧបករណ៍';

  @override
  String get terms_conditions => 'លក្ខខណ្ឌ';

  @override
  String get terms_conditions_sub => 'លក្ខខណ្ឌនៃសេវាកម្ម និងការណែនាំអំពីសុខភាព';

  @override
  String get delete_account => 'លុបគណនី និងទិន្នន័យ';

  @override
  String get delete_account_sub =>
      'លុប​ទិន្នន័យ SQLite មូលដ្ឋាន និង​ការ​បម្រុង​ទុក​ពពក​ដោយ​មិន​ចេះ​ចប់';

  @override
  String get healthy_habits => 'បង្កើតទម្លាប់សុភាពរាបសារយូរអង្វែង';

  @override
  String get all_logs => 'ទិន្នន័យ និងកំណត់ហេតុដែលបានតាមដានរបស់ខ្ញុំ';

  @override
  String get search_language => 'ស្វែងរកតាមភាសា ឬអក្សរដើម...';

  @override
  String get languages_available => 'ភាសាដែលអាចប្រើបាន';

  @override
  String get no_matching_languages => 'រកមិនឃើញភាសាដែលត្រូវគ្នាទេ។';

  @override
  String get try_searching =>
      'សាកល្បងស្វែងរកដោយអក្សរដើម ឬអក្ខរាវិរុទ្ធភាសាអង់គ្លេស';

  @override
  String get partially_translated => 'បកប្រែដោយផ្នែក';

  @override
  String get complete_translation => 'បញ្ចប់';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'កំណត់ភាសាទៅជា $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'ជុំវិញ និងបរិស្ថាន';

  @override
  String get surroundings_aqi => 'សន្ទស្សន៍គុណភាពខ្យល់';

  @override
  String get surroundings_uv => 'សន្ទស្សន៍កាំរស្មីយូវី';

  @override
  String get surroundings_temp => 'សីតុណ្ហភាព';

  @override
  String get surroundings_humidity => 'សំណើម';

  @override
  String get surroundings_hydration_advice =>
      'រក្សាជាតិទឹកឱ្យបានល្អក្នុងលក្ខខណ្ឌអាកាសធាតុបច្ចុប្បន្ន។';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'ស្វែងរកអាហារ';

  @override
  String get food_quick_barcode => 'ស្កែនបាកូដ 👑';

  @override
  String get food_quick_water => 'បន្ថែមទឹក។';

  @override
  String get food_quick_custom => 'អាហារផ្ទាល់ខ្លួន';

  @override
  String get surroundings_good => 'ល្អ';

  @override
  String get surroundings_moderate => 'មធ្យម';

  @override
  String get surroundings_unhealthy => 'មិនមានសុខភាពល្អ';

  @override
  String get notifications_title => 'ការជូនដំណឹង និងការជូនដំណឹង';

  @override
  String get notifications_empty => 'មិនមានការជូនដំណឹងថ្មីទេ។';

  @override
  String get notifications_mark_read => 'សម្គាល់ទាំងអស់ថាបានអាន';

  @override
  String get notifications_clear => 'ជម្រះទាំងអស់។';

  @override
  String get reminders => 'ការកំណត់ការរំលឹក';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'ការរំលឹកអាហារពេលព្រឹក 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'អរុណសួស្តី! ពេលវេលាសម្រាប់អាហារពេលព្រឹកដែលផ្តល់អាហារបំប៉ននៅ $time ។';
  }

  @override
  String get reminders_lunch_title => 'ការរំលឹកអាហារថ្ងៃត្រង់🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'ផ្អាក និងរីករាយជាមួយអាហារថ្ងៃត្រង់ប្រកបដោយតុល្យភាព និងគិតគូរនៅ $time ។';
  }

  @override
  String get reminders_dinner_title => 'រំលឹកអាហារពេលល្ងាច🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'ដល់ម៉ោងញ៉ាំអាហារពេលល្ងាចដែលពេញចិត្តនៅ $time ។';
  }

  @override
  String get reminders_water_title => 'ផ្តល់សំណើម 💧';

  @override
  String reminders_water_body(Object time) {
    return 'ដល់ពេលផឹកទឹកមួយកែវហើយ! ( $time )';
  }

  @override
  String get reminders_weight_title => 'ការថ្លឹងទម្ងន់ប្រចាំសប្តាហ៍⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'តាមដានការវាស់វែងរាងកាយប្រចាំសប្តាហ៍របស់អ្នកនៅលើ Bloomi ( $time ) ។';
  }

  @override
  String get reminders_sleep_title => 'គេងមិនលក់ 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'សម្រាក និងរៀបចំសម្រាប់ការគេងឱ្យស្រួល ( $time ) ។';
  }

  @override
  String get onboard_welcome => 'សូមស្វាគមន៍មកកាន់ Bloomi';

  @override
  String get onboard_sub =>
      'ដៃគូសុខភាព និងអាហារូបត្ថម្ភដំបូងគេ ក្រៅបណ្តាញដែលរួសរាយរាក់ទាក់។';

  @override
  String get onboard_get_started => 'ចាប់ផ្តើម';

  @override
  String get onboard_sign_in => 'ចូល';

  @override
  String get onboard_skip => 'រំលង';

  @override
  String get onboard_choose_goal => 'តើអ្វីជាគោលដៅសុខភាពចម្បងរបស់អ្នក?';

  @override
  String get onboard_goal_weight_loss => 'ការសម្រកទម្ងន់ដោយសុភាពរាបសា';

  @override
  String get onboard_goal_muscle => 'បង្កើនសាច់ដុំ និងកម្លាំង';

  @override
  String get onboard_goal_energy => 'ថាមពល និងថាមពលប្រចាំថ្ងៃ';

  @override
  String get onboard_goal_habits => 'អាហារបំប៉នសុខភាព';

  @override
  String get onboard_about_you => 'ប្រាប់យើងអំពីខ្លួនអ្នក';

  @override
  String get onboard_lifestyle => 'ទម្លាប់ប្រចាំថ្ងៃរបស់អ្នក។';

  @override
  String get onboard_permissions_title => 'ការអនុញ្ញាត និងការចូលប្រើប្រព័ន្ធ';

  @override
  String get onboard_permissions_sub =>
      'ផ្តល់សិទ្ធិចូលដំណើរការដើម្បីធ្វើសមកាលកម្មជំហាន ការហាត់ប្រាណ និងការរំលឹក។';

  @override
  String get onboard_plan_ready_title => 'ផែនការផ្ទាល់ខ្លួនរបស់អ្នករួចរាល់ហើយ!';

  @override
  String get onboard_plan_ready_sub =>
      'យើងបង្កើតផែនទីបង្ហាញផ្លូវអាហារូបត្ថម្ភ និងសុខភាពផ្ទាល់ខ្លួនដ៏ទន់ភ្លន់ សម្រាប់អ្នក។';

  @override
  String get onboard_enter_bloomi => 'បញ្ចូល Bloomi';

  @override
  String get insights_weekly_report => 'សង្ខេបអំពីសុខភាពប្រចាំសប្តាហ៍';

  @override
  String insights_best_day(Object day) {
    return 'ថ្ងៃនៃភាពស៊ីសង្វាក់គ្នាល្អបំផុត៖ $day';
  }

  @override
  String get insights_streaks_badges => 'កម្រិត & ចំណុចសំខាន់';

  @override
  String insights_unlocked_on(Object date) {
    return 'បានដោះសោនៅលើ $date';
  }

  @override
  String get insights_keep_going => 'បន្តដំណើរទៅមុខដ៏អស្ចារ្យ!';

  @override
  String get widgets_title => 'ធាតុក្រាហ្វិកអេក្រង់ដើម';

  @override
  String widgets_active_count(Object count) {
    return 'ធាតុក្រាហ្វិកសកម្ម៖ $count';
  }

  @override
  String get widgets_hub_title => 'មជ្ឈមណ្ឌលសុខភាព Bloomi';

  @override
  String get widgets_steps_title => 'ជំហាន & ចិញ្ចៀនសកម្ម';

  @override
  String get widgets_water_title => 'កំណត់ហេតុរហ័សនៃជាតិទឹក';

  @override
  String get widgets_mascot_title => 'ដៃគូ Bloomi Mascot';

  @override
  String get wear_os_title => 'Wear OS Smartwatch';

  @override
  String get wear_os_connected => 'បានភ្ជាប់ទៅមើល';

  @override
  String get wear_os_sync => 'ធ្វើសមកាលកម្មទិន្នន័យនាឡិកា';

  @override
  String get theme_title => 'រូបរាង & ស្បែក';

  @override
  String get theme_mode => 'របៀបស្បែក';

  @override
  String get theme_light => 'ពន្លឺ';

  @override
  String get theme_dark => 'ងងឹត';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'ក្ដារលាយផ្ទៃខាងក្រោយ';

  @override
  String get units_title => 'ឯកតារង្វាស់';

  @override
  String get units_metric => 'ម៉ែត្រ (គីឡូក្រាម, សង់ទីម៉ែត្រ, មីលីលីត្រ)';

  @override
  String get units_imperial => 'អធិរាជ (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'មិនអាចផ្ទុកផ្ទាំងគ្រប់គ្រងបានទេ។';

  @override
  String get home_health_permission_req =>
      'តម្រូវឱ្យមានការអនុញ្ញាតឱ្យភ្ជាប់សុខភាព';

  @override
  String get home_health_permission_desc =>
      'Bloomi ទាមទារការអនុញ្ញាតពី Health Connect ដើម្បីទាញជំហានពិត អត្រាបេះដូង និងធ្វើសមកាលកម្មធាតុក្រាហ្វិកផ្ទះចល័តក្នុងពេលជាក់ស្តែង។';

  @override
  String get home_allow_health => 'អនុញ្ញាតឱ្យទំនាក់ទំនងសុខភាព';

  @override
  String get home_ready_mindful_day =>
      'ត្រៀម​ខ្លួន​សម្រាប់​ថ្ងៃ​ដ៏​មាន​គំនិត​ហើយ​ឬ​នៅ? ✨';

  @override
  String get home_quick_add => 'បន្ថែមរហ័ស';

  @override
  String get home_live_gps => 'GPS ផ្ទាល់';

  @override
  String get home_calories_remaining_label => 'កាឡូរីដែលនៅសល់';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'ទទួលទាន៖ $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'ប៉ះសម្រាប់កម្មវិធីតាមដានទឹក 💧';

  @override
  String get home_water_goal_reached => 'សម្រេចគោលដៅប្រចាំថ្ងៃ 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml ដល់គោលដៅប្រចាំថ្ងៃ';
  }

  @override
  String get home_details => 'ព័ត៌មានលម្អិត';

  @override
  String get home_upgrade_plan_desc =>
      'ធ្វើឱ្យប្រសើរឡើងដើម្បីដោះសោគោលដៅប្រចាំថ្ងៃផ្ទាល់ខ្លួន និងផែនការ AI';

  @override
  String get home_unlock => 'ដោះសោ👑';

  @override
  String get home_quick_log_hint => 'កត់ត្រាការចូលសុខភាពឱ្យបានរហ័ស';

  @override
  String get food_serving_size => 'ទំហំបម្រើ';

  @override
  String get food_serving_grams => 'ការបម្រើ (g)';

  @override
  String get food_number_servings => 'ចំនួននៃការបម្រើ';

  @override
  String get food_calories_per_serving => 'កាឡូរីក្នុងមួយបម្រើ';

  @override
  String get food_recipe_ingredients => 'គ្រឿងផ្សំ';

  @override
  String get food_recipe_add_ingredient => 'បន្ថែមគ្រឿងផ្សំ';

  @override
  String get food_recipe_directions => 'សេចក្តីណែនាំ និងកំណត់ចំណាំ';

  @override
  String get food_recipe_total => 'រូបមន្តអាហារូបត្ថម្ភសរុប';

  @override
  String get food_recipe_per_serving => 'ក្នុងមួយអាហារបំប៉ន';

  @override
  String get food_recipe_saved_toast =>
      'អាហារផ្ទាល់ខ្លួនត្រូវបានរក្សាទុកដោយជោគជ័យ!';

  @override
  String get food_barcode_found => 'រកឃើញផលិតផលហើយ!';

  @override
  String get food_barcode_not_found_desc =>
      'យើង​មិន​អាច​រក​ឃើញ​បាកូដ​នេះ​នៅ​ក្នុង​មូលដ្ឋាន​ទិន្នន័យ​ដែល​បាន​បើក​ទេ។ អ្នកអាចបន្ថែមវាជាអាហារផ្ទាល់ខ្លួន។';

  @override
  String get food_add_custom_btn => 'បន្ថែមអាហារផ្ទាល់ខ្លួន';

  @override
  String get food_scan_again => 'ស្កេនម្តងទៀត';

  @override
  String get food_review_items => 'ពិនិត្យមើលអាហារដែលបានរកឃើញ';

  @override
  String get food_review_hint => 'កែតម្រូវបរិមាណ ឬលុបធាតុដែលមិនទទួលស្គាល់';

  @override
  String get food_log_selected => 'កត់ត្រាអាហារដែលបានជ្រើសរើស';

  @override
  String get food_favourites_title => 'អាហារដែលចូលចិត្ត';

  @override
  String get food_recent_title => 'អាហារថ្មីៗ';

  @override
  String get food_no_favourites =>
      'មិនទាន់មានអាហារដែលចូលចិត្តនៅឡើយ។ ប៉ះបេះដូងលើអាហារណាមួយដើម្បីរក្សាទុកនៅទីនេះ។';

  @override
  String get food_no_recents => 'រកមិនឃើញអាហារដែលបានចូលថ្មីៗនេះទេ។';

  @override
  String get food_nutrition_details_title =>
      'ព័ត៌មានលម្អិតអំពីអាហាររូបត្ថម្ភប្រចាំថ្ងៃ';

  @override
  String get food_macro_protein_label => 'ការបំបែកប្រូតេអ៊ីន';

  @override
  String get food_macro_carbs_label => 'ការបំបែកកាបូអ៊ីដ្រាត';

  @override
  String get food_macro_fat_label => 'ការបំបែកខ្លាញ់';

  @override
  String get food_macro_fiber_label => 'ការបំបែកជាតិសរសៃ';

  @override
  String get food_daily_target_comparison => 'ការប្រៀបធៀបគោលដៅ';

  @override
  String food_target_label(Object target) {
    return 'គោលដៅ៖ $target';
  }

  @override
  String get food_edit_entry => 'កែសម្រួលធាតុកំណត់ហេតុប្រចាំថ្ងៃ';

  @override
  String get food_delete_entry => 'លុបធាតុ';

  @override
  String food_grams_short(Object grams) {
    return '$grams ក្រាម។';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current នៃ $target មីលីលីត្រ';
  }

  @override
  String get water_intake_history => 'កំណត់ហេតុទឹកថ្ងៃនេះ';

  @override
  String get water_no_logs_today =>
      'ថ្ងៃនេះមិនទាន់មានទឹកចូលនៅឡើយ។ ស្រោចទឹក ហើយចុចប៊ូតុងបន្ថែមរហ័ស!';

  @override
  String get water_adjust_goal => 'កែតម្រូវគោលដៅប្រចាំថ្ងៃ';

  @override
  String get health_connect_banner => 'បានភ្ជាប់ទៅ Health Connect';

  @override
  String get health_vitals_summary => 'វីតាល់សុខភាពប្រចាំថ្ងៃ';

  @override
  String get health_latest_heart_rate => 'អត្រាបេះដូងចុងក្រោយ';

  @override
  String get health_latest_bp => 'សម្ពាធឈាម';

  @override
  String get health_latest_spo2 => 'ឈាមអុកស៊ីសែន';

  @override
  String get health_latest_glucose => 'គ្លុយកូសក្នុងឈាម';

  @override
  String get health_latest_weight => 'ទម្ងន់';

  @override
  String get health_latest_sleep => 'រយៈពេលនៃការគេង';

  @override
  String get health_add_manual => 'បន្ថែមការវាស់វែងដោយដៃ';

  @override
  String get health_history_trends => 'និន្នាការប្រវត្តិសាស្ត្រ';

  @override
  String get health_sync_success =>
      'ទិន្នន័យសុខភាពត្រូវបានធ្វើសមកាលកម្មដោយជោគជ័យ!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ម៉ោង $mins នាទី';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val គីឡូក្រាម';
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
  String get health_devices_title => 'ឧបករណ៍ និងឧបករណ៍ពាក់ដែលបានភ្ជាប់';

  @override
  String get health_devices_desc =>
      'គ្រប់គ្រងនាឡិកាឆ្លាតវៃដែលបានផ្គូផ្គង ឧបករណ៍តាមដានសុខភាព និងឧបករណ៍ចាប់សញ្ញាសុខភាព។';

  @override
  String get health_workout_editor_title => 'កែសម្រួលការហាត់ប្រាណ';

  @override
  String get health_workout_name_label => 'ឈ្មោះលំហាត់';

  @override
  String get health_workout_duration_label => 'រយៈពេល (នាទី)';

  @override
  String get health_workout_calories_label => 'កាឡូរីប៉ាន់ស្មាន (kcal)';

  @override
  String get health_workout_date_label => 'កាលបរិច្ឆេទ និងពេលវេលា';

  @override
  String get plan_daily_wellness_roadmap =>
      'ផែនទីបង្ហាញផ្លូវផ្ទាល់ខ្លួនរបស់អ្នក។';

  @override
  String get plan_morning_routine => 'ទម្លាប់ពេលព្រឹក';

  @override
  String get plan_afternoon_routine => 'សុខភាពពេលថ្ងៃត្រង់';

  @override
  String get plan_evening_routine => 'ខ្យល់បក់ពេលរាត្រី';

  @override
  String get plan_coach_badge => 'គ្រូបង្វឹក Bloomi AI';

  @override
  String get plan_weekly_overview => 'ការផ្តោតអារម្មណ៍សុខភាព 7 ថ្ងៃ។';

  @override
  String get plan_targets_title => 'គោលដៅ និងគោលដៅសុខភាព';

  @override
  String get plan_calorie_budget_label => 'ថវិកាកាឡូរីប្រចាំថ្ងៃ';

  @override
  String get plan_water_budget_label => 'គោលដៅទឹកប្រចាំថ្ងៃ';

  @override
  String get plan_step_budget_label => 'គោលដៅជំហានប្រចាំថ្ងៃ';

  @override
  String get plan_macro_split_label => 'សមាមាត្រ Macronutrient';

  @override
  String get profile_personal_details => 'ព័ត៌មានលម្អិតផ្ទាល់ខ្លួន';

  @override
  String get profile_body_stats => 'ការវាស់វែងរាងកាយ';

  @override
  String get profile_app_preferences => 'ចំណូលចិត្ត និងការកំណត់កម្មវិធី';

  @override
  String get profile_edit_name_hint => 'ឈ្មោះរបស់អ្នក។';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'កម្ពស់ ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'ទម្ងន់ ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'អាយុ';

  @override
  String get profile_gender_male => 'ប្រុស';

  @override
  String get profile_gender_female => 'ស្រី';

  @override
  String get profile_gender_other => 'ផ្សេងទៀត / ចូលចិត្តមិននិយាយ';

  @override
  String get profile_activity_sedentary =>
      'សម្រាកលំហែកាយ (តិចទៅមិនបាច់ហាត់ប្រាណ)';

  @override
  String get profile_activity_light => 'សកម្មស្រាល (1-3 ថ្ងៃ/សប្តាហ៍)';

  @override
  String get profile_activity_moderate => 'សកម្មល្មម (3-5 ថ្ងៃ/សប្តាហ៍)';

  @override
  String get profile_activity_very => 'សកម្មខ្លាំង (6-7 ថ្ងៃ/សប្តាហ៍)';

  @override
  String get settings_wear_os_header => 'កម្មវិធីដៃគូ Wear OS';

  @override
  String get settings_wear_os_desc =>
      'ដំឡើងក្បឿង Bloomi និងភាពស្មុគស្មាញនៅលើនាឡិកា Wear OS របស់អ្នក ដើម្បីមើលកាឡូរី ទឹក និងជំហាន។';

  @override
  String get settings_widgets_header => 'ធាតុក្រាហ្វិក Android អន្តរកម្ម';

  @override
  String get settings_widgets_desc =>
      'ខ្ទាស់ធាតុក្រាហ្វិកតាមពេលវេលាជាក់ស្តែងនៅលើអេក្រង់ដើមឧបករណ៍របស់អ្នកសម្រាប់ការអាប់ដេតភ្លាមៗ។';

  @override
  String get settings_about_header => 'អំពី Bloomi';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'កសាង 100';

  @override
  String get settings_about_credits =>
      'ផលិតដោយយកចិត្តទុកដាក់ សម្រាប់ការរស់នៅប្រកបដោយសុខភាពល្អ។';

  @override
  String get settings_terms_header => 'លក្ខខណ្ឌ';

  @override
  String get settings_privacy_header => 'គោលការណ៍ឯកជនភាព';

  @override
  String get settings_delete_header => 'លុបគណនី និងទិន្នន័យ';

  @override
  String get settings_delete_warning =>
      'សកម្មភាពនេះមិនអាចត្រឡប់វិញបានទេ។ រាល់អាហារ ការហាត់ប្រាណ វីតាល់ និងកម្រងព័ត៌មានរបស់អ្នកនឹងត្រូវបានលុបជាអចិន្ត្រៃយ៍។';

  @override
  String get settings_delete_confirm_btn => 'លុបជាអចិន្ត្រៃយ៍';

  @override
  String get onboard_welcome_headline => 'សូមស្វាគមន៍មកកាន់ Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'ការតាមដានសុខុមាលភាពប្រកបដោយការគិតប្រកបដោយភាពទន់ភ្លន់ ត្រូវបានរចនាឡើងជុំវិញជីវិតរបស់អ្នក។';

  @override
  String get onboard_step_about => 'អំពីអ្នក។';

  @override
  String get onboard_step_goals => 'គោលដៅរបស់អ្នក។';

  @override
  String get onboard_step_lifestyle => 'ទម្លាប់ប្រចាំថ្ងៃ';

  @override
  String get onboard_step_permissions => 'ការអនុញ្ញាត';

  @override
  String get onboard_step_plan => 'រួចរាល់ហើយ!';

  @override
  String get onboard_health_connect_perm => 'ការចូលប្រើការតភ្ជាប់សុខភាព';

  @override
  String get onboard_step_sensors_perm => 'ឧបករណ៍ចាប់សញ្ញាជំហាន';

  @override
  String get onboard_notif_perm => 'ការ​រំលឹក​និង​ការ​ជូន​ដំណឹង';

  @override
  String get onboard_camera_perm => 'កាមេរ៉ា (បារកូដ និងម៉ាស៊ីនស្កេនអាហារ)';

  @override
  String get onboard_grant_permissions => 'ផ្តល់ការអនុញ្ញាត';

  @override
  String get onboard_continue_dashboard => 'បើកផ្ទាំងគ្រប់គ្រង';

  @override
  String get notif_channel_hydration_name => 'ការផ្តល់ជាតិទឹក';

  @override
  String get notif_channel_hydration_desc => 'ការរំលឹកទឹកដ៏ទន់ភ្លន់ពេញមួយថ្ងៃ';

  @override
  String get notif_channel_nutrition_name =>
      'ការរំលឹកអំពីអាហារ និងអាហារូបត្ថម្ភ';

  @override
  String get notif_channel_nutrition_desc =>
      'ការជូនដំណឹងអំពីអាហារពេលព្រឹក អាហារថ្ងៃត្រង់ និងអាហារពេលល្ងាច';

  @override
  String get notif_channel_steps_name => 'ជំហានសំខាន់';

  @override
  String get notif_channel_steps_desc =>
      'ការប្រារព្ធពិធីនៅពេលឈានដល់គោលដៅជំហានប្រចាំថ្ងៃ';

  @override
  String get notif_channel_vitals_name => 'ការពិនិត្យសុខភាព និងវីតាល់';

  @override
  String get notif_channel_vitals_desc => 'ការរំលឹកទម្ងន់ និងពេលគេងពេលយប់';

  @override
  String get notif_action_log_water => '💧 ចំណុះ 250ml';

  @override
  String get notif_action_snooze => 'ផ្អាក 15 ម។';

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
