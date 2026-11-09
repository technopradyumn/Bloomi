// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get app_name => 'Բլումի';

  @override
  String get nav_home => 'Տուն';

  @override
  String get nav_today => 'Այսօր';

  @override
  String get nav_plan => 'Պլանավորել';

  @override
  String get nav_food => 'Սնունդ';

  @override
  String get nav_food_diary => 'Սննդի օրագիր';

  @override
  String get nav_workout => 'Մարզումների մատյան';

  @override
  String get nav_health => 'Առողջություն';

  @override
  String get nav_profile => 'Անձնագիր';

  @override
  String get save => 'Պահպանել';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get delete => 'Ջնջել';

  @override
  String get edit => 'Խմբագրել';

  @override
  String get done => 'Պատրաստ է';

  @override
  String get close => 'Փակել';

  @override
  String get back => 'Ետ';

  @override
  String get next => 'Հաջորդը';

  @override
  String get continue_btn => 'Շարունակեք';

  @override
  String get confirm => 'Հաստատել';

  @override
  String get search => 'Որոնել';

  @override
  String get filter => 'Զտել';

  @override
  String get all => 'Բոլորը';

  @override
  String get active => 'Ակտիվ';

  @override
  String get today => 'Այսօր';

  @override
  String get yesterday => 'Երեկ';

  @override
  String get tomorrow => 'Վաղը';

  @override
  String get add => 'Ավելացնել';

  @override
  String get remove => 'Հեռացնել';

  @override
  String get refresh => 'Թարմացնել';

  @override
  String get retry => 'Կրկին փորձեք';

  @override
  String get error => 'Սխալ';

  @override
  String get success => 'Հաջողություն';

  @override
  String get loading => 'Բեռնվում է...';

  @override
  String get no_data => 'Տվյալներ չկան';

  @override
  String get offline => 'Անցանց ռեժիմ';

  @override
  String get offline_sub =>
      'Փոփոխությունները կհամաժամացվեն նորից միանալուց հետո';

  @override
  String get undo => 'Հետադարձել';

  @override
  String get portion => 'բաժին';

  @override
  String get quantity => 'Քանակ';

  @override
  String get unit => 'Միավոր';

  @override
  String get clear => 'Պարզ';

  @override
  String get select => 'Ընտրել';

  @override
  String get apply => 'Կիրառել';

  @override
  String get reset => 'Վերակայել';

  @override
  String get ok => 'Լավ';

  @override
  String get yes => 'Այո՛';

  @override
  String get no => 'Ոչ';

  @override
  String get optional => 'Ընտրովի';

  @override
  String get calories => 'Կալորիաներ';

  @override
  String get protein => 'Սպիտակուցներ';

  @override
  String get carbs => 'Ածխաջրեր';

  @override
  String get fat => 'Ճարպ';

  @override
  String get fiber => 'Մանրաթել';

  @override
  String get water => 'Ջուր';

  @override
  String get steps => 'Քայլեր';

  @override
  String get kcal => 'կկալ';

  @override
  String get grams => 'է';

  @override
  String get milliliters => 'մլ';

  @override
  String get kilograms => 'կգ';

  @override
  String get pounds => 'ֆունտ';

  @override
  String get centimeters => 'սմ';

  @override
  String get inches => 'մեջ';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ժ';

  @override
  String get minutes => 'րոպե';

  @override
  String get serving => 'Մատուցում';

  @override
  String get servings => 'Ծառայություններ';

  @override
  String get serving_size => 'Ծառայության չափը';

  @override
  String get per_100g => '100 գ-ի դիմաց';

  @override
  String get india => 'Հնդկաստան';

  @override
  String get asia => 'Ասիա';

  @override
  String get europe => 'Եվրոպա';

  @override
  String get middle_east => 'Մերձավոր Արևելք';

  @override
  String get africa => 'Աֆրիկա';

  @override
  String get americas => 'Ամերիկաներ';

  @override
  String get home_title => 'Տուն';

  @override
  String get home_greeting_morning => 'Բարի լույս';

  @override
  String get home_greeting_afternoon => 'Բարի կեսօր';

  @override
  String get home_greeting_evening => 'Բարի երեկո';

  @override
  String get home_streak_title => 'Բլոսոմ Շերտ';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count օրվա շարան',
      one: '1 օրվա շղթա',
      zero: '0 օրվա շղթա',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Այրվել է';

  @override
  String get home_calories_budget => 'Կալորիականության բյուջե';

  @override
  String home_calories_remaining(Object kcal) {
    return 'Մնացած $kcal կկալ';
  }

  @override
  String get home_water_title => 'Ամենօրյա խոնավեցում';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target մլ';
  }

  @override
  String get home_steps_title => 'Քայլեր Քայլեցին';

  @override
  String get home_quick_actions => 'Արագ գործողություններ';

  @override
  String get home_log_meal => 'Մատյան կերակուր';

  @override
  String get home_log_water => 'Գերան ջուր';

  @override
  String get home_log_workout => 'Մատյան մարզում';

  @override
  String get home_log_weight => 'Մատյան Քաշը';

  @override
  String get home_insights_title => 'Այսօրվա Insights';

  @override
  String get home_quote =>
      'Փոքր առողջ ընտրությունները ծաղկող փոխակերպումներ են ստեղծում:';

  @override
  String get home_ai_coach_tip => 'Bloomi AI մարզիչ';

  @override
  String get home_surroundings => 'Շրջապատը և օդը';

  @override
  String get home_notifications => 'Ծանուցումներ';

  @override
  String get home_daily_score => 'Առողջության օրական միավոր';

  @override
  String get home_view_all => 'Դիտել բոլորը';

  @override
  String get food_diary_title => 'Սննդի օրագիր';

  @override
  String get food_breakfast => 'Նախաճաշ';

  @override
  String get food_lunch => 'Ճաշ';

  @override
  String get food_dinner => 'Ընթրիք';

  @override
  String get food_snacks => 'Նախուտեստներ';

  @override
  String get food_add_food => 'Ավելացնել սնունդ';

  @override
  String get food_edit_food => 'Խմբագրել սնունդը';

  @override
  String get food_add_breakfast => 'Ավելացնել նախաճաշ';

  @override
  String get food_add_lunch => 'Ավելացնել ճաշ';

  @override
  String get food_add_dinner => 'Ավելացնել ընթրիք';

  @override
  String get food_add_snack => 'Ավելացնել խորտիկ';

  @override
  String get food_total_calories => 'Ընդհանուր կալորիաներ';

  @override
  String get food_empty_meal => 'Այս ճաշի համար մթերքներ դեռ չեն գրանցվել';

  @override
  String get food_empty_diary => 'Այս օրվա համար գրանցված սնունդ չկա';

  @override
  String get food_log_first_meal =>
      'Հպեք +՝ ձեր առաջին համեղ կերակուրը գրանցելու համար';

  @override
  String get food_quick_add => 'Արագ Ավելացնել';

  @override
  String get food_search_hint => 'Որոնեք ուտեստներ, մրգեր, դալ, ռոտի...';

  @override
  String get food_custom_recipe => 'Պատվերով սնունդ և բաղադրատոմս';

  @override
  String get food_scan_barcode => 'Սկանավորեք շտրիխ կոդը';

  @override
  String get food_camera_scan => 'AI սննդի սկաներ';

  @override
  String get food_recent => 'Վերջին մթերքներ';

  @override
  String get food_favourites => 'Ֆավորիտներ';

  @override
  String get food_macro_summary => 'Մակրոսնուցիչների բաշխում';

  @override
  String get food_delete_meal_confirm =>
      'Իսկապե՞ս ուզում եք հեռացնել այս տարրը:';

  @override
  String get food_item_deleted => 'Սննդամթերքը հեռացվել է';

  @override
  String get food_remaining => 'մնացածը';

  @override
  String get food_consumed => 'սպառված';

  @override
  String food_of_target(Object target) {
    return '$target կկալից';
  }

  @override
  String get foodSearch_title => 'Որոնել սննդամթերք';

  @override
  String get foodSearch_scan_barcode => 'Սկանավորեք շտրիխ կոդը';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Ստեղծեք անհատական սնունդ';

  @override
  String get foodSearch_recent_searches => 'Վերջին որոնումները';

  @override
  String get foodSearch_popular => 'Հանրաճանաչ ուտեստներ';

  @override
  String get foodSearch_no_results => 'Ձեր որոնմանը համապատասխան մթերքներ չկան';

  @override
  String get barcode_title => 'Շտրիխ կոդի սկաներ';

  @override
  String get barcode_align =>
      'Հավասարեցրեք շտրիխ կոդը տեսախցիկի շրջանակի ներսում';

  @override
  String get barcode_not_found => 'Ապրանքը չի գտնվել տվյալների բազայում';

  @override
  String get barcode_premium_feature =>
      'Շտրիխ կոդի սկանավորումը հասանելի է Bloomi Pro-ի միջոցով';

  @override
  String get camera_title => 'AI սննդի սկաներ';

  @override
  String get camera_tap_hint => 'Վերցրեք ձեր ճաշատեսակի հստակ լուսանկարը';

  @override
  String get camera_analysing => 'Սննդի ափսեի վերլուծություն...';

  @override
  String get camera_detected => 'Հայտնաբերված իրեր';

  @override
  String get camera_flash => 'Միացնել Ֆլեշը';

  @override
  String get camera_retake => 'Կրկին լուսանկարել';

  @override
  String get camera_confirm_food => 'Հաստատեք տարրերը';

  @override
  String get customFood_title => 'Պատվերով սնունդ և բաղադրատոմս';

  @override
  String get customFood_name_hint => 'Ճաշատեսակի կամ բաղադրիչի անվանումը';

  @override
  String get customFood_calories_hint => 'Կալորիաներ (կկալ)';

  @override
  String get customFood_protein_hint => 'Սպիտակուց (գ)';

  @override
  String get customFood_carbs_hint => 'Ածխաջրեր (գ)';

  @override
  String get customFood_fat_hint => 'Ճարպեր (գ)';

  @override
  String get customFood_save => 'Պահպանել բաղադրատոմսը';

  @override
  String get water_tracker_title => 'Ջրի հետագծող';

  @override
  String get water_daily_target => 'Ամենօրյա խոնավացման նպատակ';

  @override
  String get water_logged_today => 'Գրանցվել է այսօր';

  @override
  String get water_add_glass => '+250 մլ Ապակի';

  @override
  String get water_add_bottle => '+500 մլ Շիշ';

  @override
  String get water_custom_amount => 'Պատվերով Գումար';

  @override
  String get water_reminder_tip =>
      'Օրվա ընթացքում կանոնավոր կերպով ջուր խմեք՝ կայուն էներգիա ստանալու համար:';

  @override
  String water_logged_toast(Object amount) {
    return 'Մուտքագրված $amount մլ ջուր 💧';
  }

  @override
  String get workout_title => 'Մարզումների մատյան';

  @override
  String get workout_add_exercise => 'Ավելացնել մարզվելը';

  @override
  String get workout_cardio => 'Կարդիո';

  @override
  String get workout_strength => 'Ուժ';

  @override
  String get workout_yoga => 'Յոգա և ճկունություն';

  @override
  String get workout_duration => 'Տևողությունը';

  @override
  String get workout_intensity => 'Ինտենսիվություն';

  @override
  String get workout_calories_burned => 'Այրված կալորիաներ';

  @override
  String get workout_empty => 'Այսօր գրանցված մարզումներ չկան';

  @override
  String get workout_save_success => 'Մարզումը հաջողությամբ պահպանվեց:';

  @override
  String get workout_type => 'Մարզման տեսակը';

  @override
  String get workout_notes => 'Նշումներ և մտորումներ';

  @override
  String get health_overview_title => 'Առողջություն և կենսական նշանակություն';

  @override
  String get health_heart_rate => 'Սրտի հաճախականությունը';

  @override
  String get health_blood_oxygen => 'Արյան թթվածին (SpO2)';

  @override
  String get health_blood_pressure => 'Արյան ճնշում';

  @override
  String get health_blood_glucose => 'Արյան գլյուկոզա';

  @override
  String get health_body_temperature => 'Մարմնի ջերմաստիճան';

  @override
  String get health_sleep_tracking => 'Քնի հետևում';

  @override
  String get health_weight_tracking => 'Քաշը և մարմնի կազմը';

  @override
  String get health_waist_hip => 'Գոտկատեղի և կոնքերի հարաբերակցությունը';

  @override
  String get health_devices_hub => 'Սարքեր և Smartwatch Hub';

  @override
  String get health_sync_now => 'Համաժամեցրեք առողջության տվյալները';

  @override
  String health_last_synced(Object time) {
    return 'Վերջին համաժամացումը՝ $time';
  }

  @override
  String get health_manual_entry => 'Ձեռնարկ առողջության մուտքագրում';

  @override
  String get health_metric_detail => 'Մետրային մանրամասներ';

  @override
  String get health_connected_sensors => 'Միացված առողջության տվիչներ';

  @override
  String get plan_title => 'Ամենօրյա պլան';

  @override
  String get plan_weekly_title => 'Առողջության շաբաթական պլան';

  @override
  String get plan_calorie_target => 'Կալորիականության թիրախ';

  @override
  String get plan_water_target => 'Խոնավեցման թիրախ';

  @override
  String get plan_step_target => 'Քայլի թիրախ';

  @override
  String get plan_sleep_target => 'Քնի թիրախ';

  @override
  String get plan_meal_suggestions => 'Սննդի առաջարկներ';

  @override
  String get plan_healthy_habits => 'Առողջ սովորություններ և խորհուրդներ';

  @override
  String get plan_coach_advice => 'Bloomi AI մարզիչի առաջարկություններ';

  @override
  String get plan_generated_title => 'Անհատականացված ամենօրյա ժամանակացույց';

  @override
  String get profile_title => 'Անձնագիր';

  @override
  String get profile_edit => 'Խմբագրել պրոֆիլը';

  @override
  String get profile_name => 'Անուն';

  @override
  String get profile_age => 'Տարիքը';

  @override
  String get profile_gender => 'Սեռ';

  @override
  String get profile_height => 'Բարձրություն';

  @override
  String get profile_weight => 'Քաշը';

  @override
  String get profile_goal => 'Առաջնային նպատակ';

  @override
  String get profile_activity_level => 'Գործունեության մակարդակ';

  @override
  String get profile_stats => 'Իմ առողջության վիճակագրությունը';

  @override
  String get profile_saved => 'Պրոֆիլը հաջողությամբ թարմացվեց';

  @override
  String get profile_bmi => 'Մարմնի զանգվածի ինդեքս (BMI)';

  @override
  String get profile_membership => 'Անդամակցություն';

  @override
  String get settings => 'Կարգավորումներ';

  @override
  String get preferences_habits => 'ՆԱԽԱՊԱՏՎՈՒԹՅՈՒՆՆԵՐ ԵՎ ՍՈՎՈՐՈՒԹՅՈՒՆՆԵՐ';

  @override
  String get appearance_theme => 'Արտաքին տեսք և թեմա';

  @override
  String get appearance_theme_sub =>
      'Մութ, լուսավոր, համակարգի ռեժիմ և հավելվածի ֆոնային ընտրանքներ';

  @override
  String get permissions => 'Թույլտվություններ և համակարգի մուտք';

  @override
  String get permissions_sub =>
      'Health Connect, քայլ սենսորներ, GPS, ծանուցումներ և տեսախցիկ';

  @override
  String get reminders_notifications => 'Հիշեցումներ և ծանուցումներ';

  @override
  String get reminders_sub =>
      'Սննդի ժամեր, ջուր, քաշի գրանցում և քնելուց առաջ հիշեցումներ';

  @override
  String get units_of_measurement => 'Չափման միավորներ';

  @override
  String get units_sub =>
      'Մետրային (կգ, սմ, մլ, կմ) կամ կայսերական (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Հավելվածի լեզուն';

  @override
  String get language_sub =>
      'Անգլերեն, हिन्दी (հինդի), հինգլերեն և 195+ համաշխարհային լեզուներ';

  @override
  String get home_screen_widgets => 'Հիմնական էկրանի վիդջեթներ';

  @override
  String get widgets_sub =>
      'Կենդանի Android վիջեթներ՝ Hub, Steps, Water, Nutrition և Mascot';

  @override
  String get wear_os_watch_app => 'Wear OS Watch հավելվածը';

  @override
  String get wear_os_sub =>
      'Խելացի ժամացույցի ուղեկից, սալիկներ, բարդություններ և կենդանի կենսական նյութեր';

  @override
  String get goals_wellness => 'ՆՊԱՏԱԿՆԵՐ ԵՎ ԱՌՈՂՋՈՒԹՅԱՆ ԽՆԴԻՐՆԵՐ';

  @override
  String get nutrition_targets => 'Սնուցման թիրախներ և մակրո բաժանում';

  @override
  String get nutrition_targets_sub =>
      'Կալորիականության թիրախ, սպիտակուցներ, ածխաջրեր, ճարպեր և ջուր';

  @override
  String get weekly_recap => 'Առողջության շաբաթական ամփոփում';

  @override
  String get weekly_recap_sub =>
      '7-օրյա միջին կալորիականություն, մակրո հարաբերակցություն և լավագույն օր';

  @override
  String get streaks_milestones => 'Շերտեր և նշաձողեր';

  @override
  String get streaks_sub => 'Ակտիվ ծաղկման գծեր, կրծքանշաններ և ձեռքբերումներ';

  @override
  String get connected_devices => 'ՄԻԱՑՎԱԾ ՍԱՐՔԵՐ ԵՎ ԷԿՈՀԱՄԱԿԱՐԳ';

  @override
  String get devices_hub => 'Սարքեր և Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Շրջակայքը և եղանակը';

  @override
  String get surroundings_sub =>
      'Օդի որակ (AQI), ուլտրամանուշակագույն ինդեքս և եղանակի խոնավացման խորհուրդներ';

  @override
  String get bloomi_pro => 'Bloomi Pro բաժանորդագրություն';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 հիմնական էկրանի վիդջեթներ և կենսական տարրերի հետևում';

  @override
  String get about_security => 'ՄԱՍԻՆ ԵՎ ԱՆՎՏԱՆԳՈՒԹՅԱՆ';

  @override
  String get about_bloomi => 'Bloomi-ի մասին';

  @override
  String get about_bloomi_sub =>
      'Կառուցման բնութագրերը, տարբերակը, վերագրումները';

  @override
  String get privacy_policy => 'Գաղտնիության քաղաքականություն';

  @override
  String get privacy_policy_sub =>
      'Անցանց, սարքի վրա տվյալների ճարտարապետություն';

  @override
  String get terms_conditions => 'Պայմաններ և դրույթներ';

  @override
  String get terms_conditions_sub =>
      'Ծառայության պայմանները և առողջության ուղեցույցները';

  @override
  String get delete_account => 'Ջնջել հաշիվը և տվյալները';

  @override
  String get delete_account_sub =>
      'Անդառնալիորեն ջնջեք տեղական SQLite տվյալները և ամպային կրկնօրինակները';

  @override
  String get healthy_habits =>
      'Կառուցեք նուրբ, կայուն առողջական սովորություններ';

  @override
  String get all_logs => 'Իմ հետևված տվյալները և գրանցամատյանները';

  @override
  String get search_language => 'Որոնել ըստ լեզվի կամ բնագրի...';

  @override
  String get languages_available => 'Հասանելի լեզուներ';

  @override
  String get no_matching_languages => 'Համապատասխան լեզու չի գտնվել';

  @override
  String get try_searching =>
      'Փորձեք որոնել մայրենի գրագրությամբ կամ անգլերեն ուղղագրությամբ';

  @override
  String get partially_translated => 'Մասամբ թարգմանված';

  @override
  String get complete_translation => 'Ամբողջական';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Լեզուն սահմանվել է $name ($nativeName)';
  }

  @override
  String get surroundings_title => 'Շրջապատը և շրջակա միջավայրը';

  @override
  String get surroundings_aqi => 'Օդի որակի ինդեքս';

  @override
  String get surroundings_uv => 'Ուլտրամանուշակագույն ճառագայթման ինդեքս';

  @override
  String get surroundings_temp => 'Ջերմաստիճանը';

  @override
  String get surroundings_humidity => 'Խոնավություն';

  @override
  String get surroundings_hydration_advice =>
      'Եղեք լավ խոնավացված ընթացիկ եղանակային պայմաններում:';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Որոնել սնունդ';

  @override
  String get food_quick_barcode => 'Սկանավորեք շտրիխ կոդը 👑';

  @override
  String get food_quick_water => 'Ջուր ավելացնել';

  @override
  String get food_quick_custom => 'Պատվերով սնունդ';

  @override
  String get surroundings_good => 'Լավ';

  @override
  String get surroundings_moderate => 'Չափավոր';

  @override
  String get surroundings_unhealthy => 'Անառողջ';

  @override
  String get notifications_title => 'Ծանուցումներ և ծանուցումներ';

  @override
  String get notifications_empty => 'Նոր ծանուցումներ չկան';

  @override
  String get notifications_mark_read => 'Նշել բոլորը որպես կարդացված';

  @override
  String get notifications_clear => 'Մաքրել բոլորը';

  @override
  String get reminders => 'Հիշեցման կարգավորումներ';

  @override
  String get notifications => 'Push ծանուցումներ';

  @override
  String get reminders_breakfast_title => 'Նախաճաշի հիշեցում 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Բարի լույս։ $time-ին սնուցող նախաճաշի ժամանակն է:';
  }

  @override
  String get reminders_lunch_title => 'Ճաշի հիշեցում 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Դադարեցրեք և վայելեք հավասարակշռված, ուշադիր ճաշ $time-ում:';
  }

  @override
  String get reminders_dinner_title => 'Ընթրիքի հիշեցում 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Թեթև, բավարարող ընթրիքի ժամանակն է $time-ին:';
  }

  @override
  String get reminders_water_title => 'Խոնավեցնող Նեդջ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ժամանակն է խմել մի բաժակ թարմ ջուր: ($time)';
  }

  @override
  String get reminders_weight_title => 'Շաբաթական կշռում ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Հետևեք ձեր մարմնի շաբաթական ցուցանիշներին Bloomi-ում ($time):';
  }

  @override
  String get reminders_sleep_title => 'Քնելուց առաջ Քամին 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Լիցքաթափվեք և պատրաստվեք հանգիստ քնի ($time):';
  }

  @override
  String get onboard_welcome => 'Բարի գալուստ Bloomi';

  @override
  String get onboard_sub =>
      'Ձեր ընկերական, անցանց առաջին առողջությունը և սնուցման ուղեկիցը:';

  @override
  String get onboard_get_started => 'Սկսեք';

  @override
  String get onboard_sign_in => 'Մուտք գործեք';

  @override
  String get onboard_skip => 'Բաց թողնել';

  @override
  String get onboard_choose_goal => 'Ո՞րն է ձեր առողջության հիմնական նպատակը:';

  @override
  String get onboard_goal_weight_loss => 'Նուրբ քաշի կորուստ';

  @override
  String get onboard_goal_muscle => 'Մկանների ձեռքբերում և ուժ';

  @override
  String get onboard_goal_energy => 'Ամենօրյա էներգիա և կենսունակություն';

  @override
  String get onboard_goal_habits => 'Առողջ գիտակցված ուտում';

  @override
  String get onboard_about_you => 'Ասա մեզ քո մասին';

  @override
  String get onboard_lifestyle => 'Ձեր առօրյան';

  @override
  String get onboard_permissions_title => 'Թույլտվություններ և համակարգի մուտք';

  @override
  String get onboard_permissions_sub =>
      'Թույլ տվեք համաժամացման քայլերի, մարզումների և հիշեցումների հասանելիություն:';

  @override
  String get onboard_plan_ready_title => 'Ձեր անհատական ​​պլանը պատրաստ է:';

  @override
  String get onboard_plan_ready_sub =>
      'Մենք պատրաստել ենք նուրբ, անհատականացված սննդի և առողջության ճանապարհային քարտեզ հենց ձեզ համար:';

  @override
  String get onboard_enter_bloomi => 'Մտեք Bloomi';

  @override
  String get insights_weekly_report => 'Առողջության շաբաթական ամփոփում';

  @override
  String insights_best_day(Object day) {
    return 'Լավագույն հետևողականության օր՝ $day';
  }

  @override
  String get insights_streaks_badges => 'Շերտեր և նշաձողեր';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ապակողպված է $date-ին';
  }

  @override
  String get insights_keep_going => 'Շարունակեք ֆանտաստիկ առաջընթացը:';

  @override
  String get widgets_title => 'Հիմնական էկրանի վիդջեթներ';

  @override
  String widgets_active_count(Object count) {
    return 'Ակտիվ վիդջեթներ՝ $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Քայլեր և ակտիվ օղակ';

  @override
  String get widgets_water_title => 'Խոնավեցման արագ գրանցամատյան';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Հագեք OS Smartwatch';

  @override
  String get wear_os_connected => 'Միացված է Watch-ին';

  @override
  String get wear_os_sync => 'Համաժամեցրեք ժամացույցի տվյալները';

  @override
  String get theme_title => 'Արտաքին տեսք և թեմա';

  @override
  String get theme_mode => 'Թեմայի ռեժիմ';

  @override
  String get theme_light => 'Լուսավոր';

  @override
  String get theme_dark => 'Մուգ';

  @override
  String get theme_system => 'Համակարգային';

  @override
  String get theme_background_palette => 'Ֆոնային պալիտրա';

  @override
  String get units_title => 'Չափման միավորներ';

  @override
  String get units_metric => 'Մետրիկ (կգ, սմ, մլ)';

  @override
  String get units_imperial => 'Կայսերական (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Չհաջողվեց բեռնել վահանակը';

  @override
  String get home_health_permission_req =>
      'Պահանջվում է Health Connect թույլտվություն';

  @override
  String get home_health_permission_desc =>
      'Bloomi-ին անհրաժեշտ է Health Connect-ի թույլտվություն՝ իրական քայլերի, սրտի զարկերի և շարժական տան վիջեթները իրական ժամանակում համաժամացնելու համար:';

  @override
  String get home_allow_health => 'Թույլատրել Health Connect-ը';

  @override
  String get home_ready_mindful_day => 'Պատրա՞ստ եք մտավոր օրվա համար: ✨';

  @override
  String get home_quick_add => 'Արագ Ավելացնել';

  @override
  String get home_live_gps => 'Ուղիղ GPS';

  @override
  String get home_calories_remaining_label => 'ՄՆԱՑՎԱԾ ԿԱԼՈՐԻԱՆԵՐ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Կերված՝ $consumed / $target կկալ';
  }

  @override
  String get home_tap_water_tracker => 'Ծորակ ջրի հետագծման համար 💧';

  @override
  String get home_water_goal_reached => 'Ամենօրյա նպատակին հասավ 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining մլ օրական նպատակին';
  }

  @override
  String get home_details => 'Մանրամասներ';

  @override
  String get home_upgrade_plan_desc =>
      'Թարմացրեք՝ անհատականացված ամենօրյա թիրախները և AI պլանը բացելու համար';

  @override
  String get home_unlock => 'Բացել 👑';

  @override
  String get home_quick_log_hint => 'Արագ գրանցեք առողջության մուտքը';

  @override
  String get food_serving_size => 'Ծառայության չափը';

  @override
  String get food_serving_grams => 'Ծառայություն (գ)';

  @override
  String get food_number_servings => 'Ծառայությունների քանակը';

  @override
  String get food_calories_per_serving => 'Կալորիաներ մեկ ծառայության համար';

  @override
  String get food_recipe_ingredients => 'Բաղադրիչներ';

  @override
  String get food_recipe_add_ingredient => 'Ավելացնել բաղադրիչ';

  @override
  String get food_recipe_directions => 'Հրահանգներ և նշումներ';

  @override
  String get food_recipe_total => 'Ընդհանուր բաղադրատոմսով սնուցում';

  @override
  String get food_recipe_per_serving => 'Սնուցման համար';

  @override
  String get food_recipe_saved_toast =>
      'Պատվերով սնունդը հաջողությամբ պահպանվեց:';

  @override
  String get food_barcode_found => 'Ապրանքը գտնվեց:';

  @override
  String get food_barcode_not_found_desc =>
      'Մենք չկարողացանք գտնել այս շտրիխ կոդը բաց տվյալների բազայում: Դուք կարող եք այն ավելացնել որպես մթերք:';

  @override
  String get food_add_custom_btn => 'Ավելացնել մաքսային սնունդ';

  @override
  String get food_scan_again => 'Կրկին սկանավորեք';

  @override
  String get food_review_items => 'Վերանայեք հայտնաբերված մթերքները';

  @override
  String get food_review_hint =>
      'Կարգավորել քանակները կամ հեռացնել ցանկացած չճանաչված իր';

  @override
  String get food_log_selected => 'Մուտքագրեք ընտրված մթերքները';

  @override
  String get food_favourites_title => 'Սիրված ուտելիքներ';

  @override
  String get food_recent_title => 'Վերջին մթերքներ';

  @override
  String get food_no_favourites =>
      'Սիրված ուտելիքներ դեռ չկան: Հպեք սրտի ցանկացած սննդի վրա՝ այստեղ պահելու համար:';

  @override
  String get food_no_recents => 'Վերջերս գրանցված մթերքներ չեն գտնվել:';

  @override
  String get food_nutrition_details_title => 'Ամենօրյա սնուցման մանրամասները';

  @override
  String get food_macro_protein_label => 'Սպիտակուցների խզում';

  @override
  String get food_macro_carbs_label => 'Ածխաջրերի խզում';

  @override
  String get food_macro_fat_label => 'Ճարպի կոտրում';

  @override
  String get food_macro_fiber_label => 'Մանրաթելերի խզում';

  @override
  String get food_daily_target_comparison => 'Թիրախների համեմատություն';

  @override
  String food_target_label(Object target) {
    return 'Թիրախ՝ $target';
  }

  @override
  String get food_edit_entry => 'Խմբագրել օրագրի մուտքը';

  @override
  String get food_delete_entry => 'Ջնջել մուտքը';

  @override
  String food_grams_short(Object grams) {
    return '$grams գ';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal կկալ';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current $target մլ-ից';
  }

  @override
  String get water_intake_history => 'Այսօրվա ջրային գերանները';

  @override
  String get water_no_logs_today =>
      'Այսօր դեռ ջուր չկա: Խոնավացրեք և սեղմեք արագ ավելացնելու կոճակը:';

  @override
  String get water_adjust_goal => 'Կարգավորել ամենօրյա նպատակը';

  @override
  String get health_connect_banner => 'Միացված է Health Connect-ին';

  @override
  String get health_vitals_summary =>
      'Առողջության ամենօրյա կենսական նշանակություն';

  @override
  String get health_latest_heart_rate => 'Վերջին սրտի ռիթմը';

  @override
  String get health_latest_bp => 'Արյան ճնշում';

  @override
  String get health_latest_spo2 => 'Արյան թթվածին';

  @override
  String get health_latest_glucose => 'Արյան գլյուկոզա';

  @override
  String get health_latest_weight => 'Քաշը';

  @override
  String get health_latest_sleep => 'Քնի տեւողությունը';

  @override
  String get health_add_manual => 'Ավելացնել ձեռքով չափում';

  @override
  String get health_history_trends => 'Պատմական միտումներ';

  @override
  String get health_sync_success =>
      'Առողջության տվյալները հաջողությամբ համաժամացվեցին:';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ժամ $mins րոպե';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val կգ';
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
    return '$systolic / $diastolic մմ Hg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '$val մգ/դլ';
  }

  @override
  String get health_devices_title => 'Միացված սարքեր և կրելի սարքեր';

  @override
  String get health_devices_desc =>
      'Կառավարեք զուգակցված խելացի ժամացույցները, ֆիթնես թրեյքերները և առողջության սենսորները:';

  @override
  String get health_workout_editor_title => 'Խմբագրել մարզվելը';

  @override
  String get health_workout_name_label => 'Մարզման անվանումը';

  @override
  String get health_workout_duration_label => 'Տևողությունը (րոպե)';

  @override
  String get health_workout_calories_label => 'Մոտավոր կալորիաներ (կկալ)';

  @override
  String get health_workout_date_label => 'Ամսաթիվ և ժամ';

  @override
  String get plan_daily_wellness_roadmap =>
      'Ձեր անհատականացված ճանապարհային քարտեզը';

  @override
  String get plan_morning_routine => 'Առավոտյան ռեժիմ';

  @override
  String get plan_afternoon_routine => 'Կեսօր Առողջություն';

  @override
  String get plan_evening_routine => 'Երեկոյան Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI մարզիչ';

  @override
  String get plan_weekly_overview => '7-օրյա առողջության կենտրոնացում';

  @override
  String get plan_targets_title => 'Առողջության նպատակներ և նպատակներ';

  @override
  String get plan_calorie_budget_label => 'Օրական կալորիականության բյուջե';

  @override
  String get plan_water_budget_label => 'Ամենօրյա ջրի թիրախ';

  @override
  String get plan_step_budget_label => 'Ամենօրյա քայլ նպատակ';

  @override
  String get plan_macro_split_label => 'Macronutrient հարաբերակցությունը';

  @override
  String get profile_personal_details => 'Անձնական տվյալներ';

  @override
  String get profile_body_stats => 'Մարմնի չափումներ';

  @override
  String get profile_app_preferences =>
      'Նախապատվություններ և հավելվածների կարգավորումներ';

  @override
  String get profile_edit_name_hint => 'Ձեր անունը';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Բարձրություն ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Քաշը ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Տարիքը';

  @override
  String get profile_gender_male => 'Արական';

  @override
  String get profile_gender_female => 'Իգական';

  @override
  String get profile_gender_other => 'Այլ / Նախընտրում եմ չասել';

  @override
  String get profile_activity_sedentary =>
      'Նստակյաց (քիչ, առանց վարժությունների)';

  @override
  String get profile_activity_light => 'Թեթև ակտիվ (1-3 օր/շաբաթ)';

  @override
  String get profile_activity_moderate => 'Չափավոր ակտիվ (3-5 օր/շաբաթ)';

  @override
  String get profile_activity_very => 'Շատ ակտիվ (6-7 օր/շաբաթ)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion հավելվածը';

  @override
  String get settings_wear_os_desc =>
      'Տեղադրեք Bloomi սալիկն ու բարդույթը ձեր Wear OS ժամացույցի վրա՝ դիտելու կալորիաները, ջուրը և քայլերը:';

  @override
  String get settings_widgets_header => 'Android-ի ինտերակտիվ վիդջեթներ';

  @override
  String get settings_widgets_desc =>
      'Ամրացրեք իրական ժամանակի վիջեթները ձեր սարքի հիմնական էկրանին՝ ակնթարթային թարմացումների համար:';

  @override
  String get settings_about_header => 'Bloomi-ի մասին';

  @override
  String get settings_about_version => 'Տարբերակ';

  @override
  String get settings_about_build => 'Կառուցել 100';

  @override
  String get settings_about_credits =>
      'Ստեղծված է ուշադիր, առողջ ապրելակերպի համար:';

  @override
  String get settings_terms_header => 'Պայմաններ և դրույթներ';

  @override
  String get settings_privacy_header => 'Գաղտնիության քաղաքականություն';

  @override
  String get settings_delete_header => 'Ջնջել հաշիվը և տվյալները';

  @override
  String get settings_delete_warning =>
      'Այս գործողությունը հնարավոր չէ հետարկել: Ձեր բոլոր կերակուրները, մարզումները, կենսական նյութերը և պրոֆիլը ընդմիշտ կջնջվեն:';

  @override
  String get settings_delete_confirm_btn => 'Ընդմիշտ ջնջել';

  @override
  String get onboard_welcome_headline => 'Բարի գալուստ Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Նուրբ, ուշադիր առողջության հետագծում, որը նախատեսված է ձեր կյանքի շուրջ:';

  @override
  String get onboard_step_about => 'Ձեր մասին';

  @override
  String get onboard_step_goals => 'Ձեր նպատակները';

  @override
  String get onboard_step_lifestyle => 'Ամենօրյա սովորություններ';

  @override
  String get onboard_step_permissions => 'Թույլտվություններ';

  @override
  String get onboard_step_plan => 'Պատրաստ.';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Քայլերի հաշվիչ սենսոր';

  @override
  String get onboard_notif_perm => 'Ուշադիր հիշեցումներ և ծանուցումներ';

  @override
  String get onboard_camera_perm => 'Տեսախցիկ (շտրիխ կոդ և սննդի սկաներ)';

  @override
  String get onboard_grant_permissions => 'Տրամադրել թույլտվություններ';

  @override
  String get onboard_continue_dashboard => 'Բացեք վահանակը';

  @override
  String get notif_channel_hydration_name => 'Խոնավեցնող ազդակներ';

  @override
  String get notif_channel_hydration_desc =>
      'Նուրբ ջրի հիշեցումներ ամբողջ օրվա ընթացքում';

  @override
  String get notif_channel_nutrition_name => 'Սննդի և սնուցման հիշեցումներ';

  @override
  String get notif_channel_nutrition_desc =>
      'Նախաճաշի, ճաշի և ընթրիքի հիշեցման ահազանգեր';

  @override
  String get notif_channel_steps_name => 'Քայլի նշաձողեր';

  @override
  String get notif_channel_steps_desc =>
      'Տոներ, երբ հասնում եք ամենօրյա քայլերի թիրախներին';

  @override
  String get notif_channel_vitals_name =>
      'Առողջության և կենսական նշանակության ստուգումներ';

  @override
  String get notif_channel_vitals_desc =>
      'Քաշի և քնելու ժամանակի մասին հիշեցումներ';

  @override
  String get notif_action_log_water => '💧 Գրան +250մլ';

  @override
  String get notif_action_snooze => 'Ննջել 15 մ';

  @override
  String get notif_action_log_meal => '🥗 Ընթրիք';

  @override
  String get language => 'Լեզու';

  @override
  String get share => 'Կիսվել';

  @override
  String common_days(Object count) {
    return '$countօր առաջ';
  }
}
