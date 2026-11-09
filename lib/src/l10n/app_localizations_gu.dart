// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get app_name => 'બ્લૂમી';

  @override
  String get nav_home => 'ઘર';

  @override
  String get nav_today => 'આજે';

  @override
  String get nav_plan => 'યોજના';

  @override
  String get nav_food => 'ખોરાક';

  @override
  String get nav_food_diary => 'ફૂડ ડાયરી';

  @override
  String get nav_workout => 'વર્કઆઉટ લોગ';

  @override
  String get nav_health => 'આરોગ્ય';

  @override
  String get nav_profile => 'પ્રોફાઇલ';

  @override
  String get save => 'સાચવો';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get edit => 'સંપાદિત કરો';

  @override
  String get done => 'થઈ ગયું';

  @override
  String get close => 'બંધ કરો';

  @override
  String get back => 'પાછળ';

  @override
  String get next => 'આગળ';

  @override
  String get continue_btn => 'ચાલુ રાખો';

  @override
  String get confirm => 'પુષ્ટિ કરો';

  @override
  String get search => 'શોધો';

  @override
  String get filter => 'ફિલ્ટર કરો';

  @override
  String get all => 'બધા';

  @override
  String get active => 'સક્રિય';

  @override
  String get today => 'આજે';

  @override
  String get yesterday => 'ગઈકાલે';

  @override
  String get tomorrow => 'કાલે';

  @override
  String get add => 'ઉમેરો';

  @override
  String get remove => 'દૂર કરો';

  @override
  String get refresh => 'તાજું કરો';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get error => 'ભૂલ';

  @override
  String get success => 'સફળતા';

  @override
  String get loading => 'લોડ કરી રહ્યું છે...';

  @override
  String get no_data => 'કોઈ ડેટા ઉપલબ્ધ નથી';

  @override
  String get offline => 'ઑફલાઇન મોડ';

  @override
  String get offline_sub => 'એકવાર ફરીથી કનેક્ટ થયા પછી ફેરફારો સમન્વયિત થશે';

  @override
  String get undo => 'પહેલા જેવું કરો';

  @override
  String get portion => 'ભાગ';

  @override
  String get quantity => 'જથ્થો';

  @override
  String get unit => 'એકમ';

  @override
  String get clear => 'સાફ કરો';

  @override
  String get select => 'પસંદ કરો';

  @override
  String get apply => 'લાગુ કરો';

  @override
  String get reset => 'રીસેટ';

  @override
  String get ok => 'બરાબર';

  @override
  String get yes => 'હા';

  @override
  String get no => 'ના';

  @override
  String get optional => 'વૈકલ્પિક';

  @override
  String get calories => 'કેલરી';

  @override
  String get protein => 'પ્રોટીન';

  @override
  String get carbs => 'કાર્બ્સ';

  @override
  String get fat => 'ચરબી';

  @override
  String get fiber => 'ફાઇબર';

  @override
  String get water => 'પાણી';

  @override
  String get steps => 'પગલાં';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'મિલી';

  @override
  String get kilograms => 'કિલો';

  @override
  String get pounds => 'એલબીએસ';

  @override
  String get centimeters => 'સેમી';

  @override
  String get inches => 'માં';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'કલાક';

  @override
  String get minutes => 'મિનિટ';

  @override
  String get serving => 'સેવા આપતા';

  @override
  String get servings => 'સર્વિંગ્સ';

  @override
  String get serving_size => 'સેવા આપતા કદ';

  @override
  String get per_100g => '100 ગ્રામ દીઠ';

  @override
  String get india => 'ભારત';

  @override
  String get asia => 'એશિયા';

  @override
  String get europe => 'યુરોપ';

  @override
  String get middle_east => 'મધ્ય પૂર્વ';

  @override
  String get africa => 'આફ્રિકા';

  @override
  String get americas => 'અમેરિકા';

  @override
  String get home_title => 'ઘર';

  @override
  String get home_greeting_morning => 'શુભ સવાર';

  @override
  String get home_greeting_afternoon => 'શુભ બપોર';

  @override
  String get home_greeting_evening => 'શુભ સાંજ';

  @override
  String get home_streak_title => 'બ્લોસમ સ્ટ્રીક';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count દિવસનો દોર',
      one: '1 દિવસનો દોર',
      zero: '0 દિવસનો દોર',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'બળી ગઈ';

  @override
  String get home_calories_budget => 'કેલરી બજેટ';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal બાકી';
  }

  @override
  String get home_water_title => 'દૈનિક હાઇડ્રેશન';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target મિલી';
  }

  @override
  String get home_steps_title => 'પગલાંઓ ચાલ્યા';

  @override
  String get home_quick_actions => 'ઝડપી ક્રિયાઓ';

  @override
  String get home_log_meal => 'લોગ ભોજન';

  @override
  String get home_log_water => 'લોગ વોટર';

  @override
  String get home_log_workout => 'લોગ વર્કઆઉટ';

  @override
  String get home_log_weight => 'લોગ વજન';

  @override
  String get home_insights_title => 'આજની આંતરદૃષ્ટિ';

  @override
  String get home_quote => 'નાની તંદુરસ્ત પસંદગીઓ મોર પરિવર્તનો બનાવે છે.';

  @override
  String get home_ai_coach_tip => 'બ્લૂમી એઆઈ કોચ';

  @override
  String get home_surroundings => 'આસપાસના અને હવા';

  @override
  String get home_notifications => 'નોટિફિકેશન';

  @override
  String get home_daily_score => 'દૈનિક વેલનેસ સ્કોર';

  @override
  String get home_view_all => 'બધા જુઓ';

  @override
  String get food_diary_title => 'ફૂડ ડાયરી';

  @override
  String get food_breakfast => 'નાસ્તો';

  @override
  String get food_lunch => 'લંચ';

  @override
  String get food_dinner => 'રાત્રિભોજન';

  @override
  String get food_snacks => 'નાસ્તો';

  @override
  String get food_add_food => 'ખોરાક ઉમેરો';

  @override
  String get food_edit_food => 'ખોરાક સંપાદિત કરો';

  @override
  String get food_add_breakfast => 'નાસ્તો ઉમેરો';

  @override
  String get food_add_lunch => 'લંચ ઉમેરો';

  @override
  String get food_add_dinner => 'રાત્રિભોજન ઉમેરો';

  @override
  String get food_add_snack => 'નાસ્તો ઉમેરો';

  @override
  String get food_total_calories => 'કુલ કેલરી';

  @override
  String get food_empty_meal => 'આ ભોજન માટે હજુ સુધી કોઈ ખોરાક લૉગ કરેલ નથી';

  @override
  String get food_empty_diary => 'આ દિવસ માટે કોઈ ભોજન લૉગ કરેલ નથી';

  @override
  String get food_log_first_meal =>
      'તમારા પ્રથમ સ્વાદિષ્ટ ભોજનને લૉગ કરવા માટે + પર ટૅપ કરો';

  @override
  String get food_quick_add => 'ઝડપી ઉમેરો';

  @override
  String get food_search_hint => 'વાનગીઓ, ફળો, દાળ, રોટલી શોધો...';

  @override
  String get food_custom_recipe => 'કસ્ટમ ફૂડ અને રેસીપી';

  @override
  String get food_scan_barcode => 'બારકોડ સ્કેન કરો';

  @override
  String get food_camera_scan => 'AI ફૂડ સ્કેનર';

  @override
  String get food_recent => 'તાજેતરના ખોરાક';

  @override
  String get food_favourites => 'મનપસંદ';

  @override
  String get food_macro_summary => 'મેક્રોન્યુટ્રિઅન્ટ બ્રેકડાઉન';

  @override
  String get food_delete_meal_confirm =>
      'શું તમે ખરેખર આ આઇટમ દૂર કરવા માંગો છો?';

  @override
  String get food_item_deleted => 'ખાદ્ય પદાર્થ કાઢી નાખ્યો';

  @override
  String get food_remaining => 'બાકી';

  @override
  String get food_consumed => 'વપરાશ';

  @override
  String food_of_target(Object target) {
    return '$target kcal';
  }

  @override
  String get foodSearch_title => 'ખોરાક શોધો';

  @override
  String get foodSearch_scan_barcode => 'બારકોડ સ્કેન કરો';

  @override
  String get foodSearch_take_photo => 'સ્નેપ ફૂડ ફોટો';

  @override
  String get foodSearch_custom_food => 'કસ્ટમ ફૂડ બનાવો';

  @override
  String get foodSearch_recent_searches => 'તાજેતરની શોધો';

  @override
  String get foodSearch_popular => 'લોકપ્રિય વાનગીઓ';

  @override
  String get foodSearch_no_results => 'તમારી શોધ સાથે મેળ ખાતો કોઈ ખોરાક નથી';

  @override
  String get barcode_title => 'બારકોડ સ્કેનર';

  @override
  String get barcode_align => 'કેમેરા ફ્રેમની અંદર બારકોડ સંરેખિત કરો';

  @override
  String get barcode_not_found => 'ડેટાબેઝમાં ઉત્પાદન મળ્યું નથી';

  @override
  String get barcode_premium_feature =>
      'બ્લૂમી પ્રો સાથે બારકોડ સ્કેનિંગ ઉપલબ્ધ છે';

  @override
  String get camera_title => 'AI ફૂડ સ્કેનર';

  @override
  String get camera_tap_hint => 'તમારી વાનગીનો સ્પષ્ટ ફોટો લો';

  @override
  String get camera_analysing => 'ફૂડ પ્લેટનું વિશ્લેષણ કરી રહ્યું છે...';

  @override
  String get camera_detected => 'શોધાયેલ વસ્તુઓ';

  @override
  String get camera_flash => 'ફ્લેશ ટૉગલ કરો';

  @override
  String get camera_retake => 'ફોટો ફરીથી લો';

  @override
  String get camera_confirm_food => 'આઇટમ્સની પુષ્ટિ કરો';

  @override
  String get customFood_title => 'કસ્ટમ ફૂડ અને રેસીપી';

  @override
  String get customFood_name_hint => 'વાનગી અથવા ઘટકનું નામ';

  @override
  String get customFood_calories_hint => 'કેલરી (kcal)';

  @override
  String get customFood_protein_hint => 'પ્રોટીન (જી)';

  @override
  String get customFood_carbs_hint => 'કાર્બોહાઇડ્રેટ્સ (જી)';

  @override
  String get customFood_fat_hint => 'ચરબી (જી)';

  @override
  String get customFood_save => 'સેવ રેસીપી';

  @override
  String get water_tracker_title => 'પાણી ટ્રેકર';

  @override
  String get water_daily_target => 'દૈનિક હાઇડ્રેશન ધ્યેય';

  @override
  String get water_logged_today => 'આજે લૉગ કર્યું';

  @override
  String get water_add_glass => '+250 મિલી ગ્લાસ';

  @override
  String get water_add_bottle => '+500 મિલી બોટલ';

  @override
  String get water_custom_amount => 'કસ્ટમ રકમ';

  @override
  String get water_reminder_tip =>
      'સ્થિર ઉર્જા માટે દિવસભર નિયમિતપણે પાણી પીવો.';

  @override
  String water_logged_toast(Object amount) {
    return 'લોગ થયેલ $amount ml પાણી 💧';
  }

  @override
  String get workout_title => 'વર્કઆઉટ લોગ';

  @override
  String get workout_add_exercise => 'વર્કઆઉટ ઉમેરો';

  @override
  String get workout_cardio => 'કાર્ડિયો';

  @override
  String get workout_strength => 'તાકાત';

  @override
  String get workout_yoga => 'યોગ અને સુગમતા';

  @override
  String get workout_duration => 'અવધિ';

  @override
  String get workout_intensity => 'તીવ્રતા';

  @override
  String get workout_calories_burned => 'કેલરી બળી';

  @override
  String get workout_empty => 'આજે કોઈ વર્કઆઉટ લોગ થયેલ નથી';

  @override
  String get workout_save_success => 'વર્કઆઉટ સફળતાપૂર્વક સાચવ્યું!';

  @override
  String get workout_type => 'વર્કઆઉટ પ્રકાર';

  @override
  String get workout_notes => 'નોંધો અને પ્રતિબિંબ';

  @override
  String get health_overview_title => 'આરોગ્ય અને મહત્વપૂર્ણ';

  @override
  String get health_heart_rate => 'હાર્ટ રેટ';

  @override
  String get health_blood_oxygen => 'બ્લડ ઓક્સિજન (SpO2)';

  @override
  String get health_blood_pressure => 'બ્લડ પ્રેશર';

  @override
  String get health_blood_glucose => 'બ્લડ ગ્લુકોઝ';

  @override
  String get health_body_temperature => 'શરીરનું તાપમાન';

  @override
  String get health_sleep_tracking => 'સ્લીપ ટ્રેકિંગ';

  @override
  String get health_weight_tracking => 'વજન અને શારીરિક રચના';

  @override
  String get health_waist_hip => 'કમર-થી-હિપ ગુણોત્તર';

  @override
  String get health_devices_hub => 'ઉપકરણો અને સ્માર્ટવોચ હબ';

  @override
  String get health_sync_now => 'આરોગ્ય ડેટા સમન્વયિત કરો';

  @override
  String health_last_synced(Object time) {
    return 'છેલ્લે સમન્વયિત: $time';
  }

  @override
  String get health_manual_entry => 'મેન્યુઅલ હેલ્થ એન્ટ્રી';

  @override
  String get health_metric_detail => 'મેટ્રિક વિગતો';

  @override
  String get health_connected_sensors => 'કનેક્ટેડ હેલ્થ સેન્સર્સ';

  @override
  String get plan_title => 'દૈનિક યોજના';

  @override
  String get plan_weekly_title => 'સાપ્તાહિક સુખાકારી યોજના';

  @override
  String get plan_calorie_target => 'કેલરી લક્ષ્ય';

  @override
  String get plan_water_target => 'હાઇડ્રેશન લક્ષ્ય';

  @override
  String get plan_step_target => 'પગલું લક્ષ્ય';

  @override
  String get plan_sleep_target => 'સ્લીપ ટાર્ગેટ';

  @override
  String get plan_meal_suggestions => 'ભોજન સૂચનો';

  @override
  String get plan_healthy_habits => 'સ્વસ્થ આદતો અને ટિપ્સ';

  @override
  String get plan_coach_advice => 'બ્લૂમી એઆઈ કોચની ભલામણો';

  @override
  String get plan_generated_title => 'વ્યક્તિગત દૈનિક શેડ્યૂલ';

  @override
  String get profile_title => 'પ્રોફાઇલ';

  @override
  String get profile_edit => 'પ્રોફાઇલ સંપાદિત કરો';

  @override
  String get profile_name => 'નામ';

  @override
  String get profile_age => 'ઉંમર';

  @override
  String get profile_gender => 'જાતિ';

  @override
  String get profile_height => 'ઊંચાઈ';

  @override
  String get profile_weight => 'વજન';

  @override
  String get profile_goal => 'પ્રાથમિક ધ્યેય';

  @override
  String get profile_activity_level => 'પ્રવૃત્તિ સ્તર';

  @override
  String get profile_stats => 'મારા સુખાકારી આંકડા';

  @override
  String get profile_saved => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઈ';

  @override
  String get profile_bmi => 'બોડી માસ ઇન્ડેક્સ (BMI)';

  @override
  String get profile_membership => 'સભ્યપદ';

  @override
  String get settings => 'સેટિંગ્સ';

  @override
  String get preferences_habits => 'પસંદગીઓ અને આદતો';

  @override
  String get appearance_theme => 'દેખાવ અને થીમ';

  @override
  String get appearance_theme_sub =>
      'ડાર્ક, લાઇટ, સિસ્ટમ મોડ અને એપ બેકગ્રાઉન્ડ વિકલ્પો';

  @override
  String get permissions => 'પરવાનગીઓ અને સિસ્ટમ ઍક્સેસ';

  @override
  String get permissions_sub =>
      'હેલ્થ કનેક્ટ, સ્ટેપ સેન્સર્સ, જીપીએસ, નોટિફિકેશન અને કેમેરા';

  @override
  String get reminders_notifications => 'રીમાઇન્ડર્સ અને સૂચનાઓ';

  @override
  String get reminders_sub =>
      'ભોજનનો સમય, પાણી, વજન ચેક-ઇન અને સૂવાના સમયના રીમાઇન્ડર્સ';

  @override
  String get units_of_measurement => 'માપનના એકમો';

  @override
  String get units_sub =>
      'મેટ્રિક (kg, cm, ml, km) અથવા ઇમ્પિરિયલ (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'એપ્લિકેશન ભાષા';

  @override
  String get language_sub =>
      'અંગ્રેજી, હિન્દી (હિન્દી), હિંગ્લિશ અને 195+ વૈશ્વિક ભાષાઓ';

  @override
  String get home_screen_widgets => 'હોમ સ્ક્રીન વિજેટ્સ';

  @override
  String get widgets_sub =>
      'લાઇવ એન્ડ્રોઇડ વિજેટ્સ: હબ, સ્ટેપ્સ, વોટર, ન્યુટ્રીશન અને માસ્કોટ';

  @override
  String get wear_os_watch_app => 'OS વોચ એપ પહેરો';

  @override
  String get wear_os_sub =>
      'સ્માર્ટવોચ સાથી, ટાઇલ્સ, જટિલતાઓ અને જીવંત મહત્વપૂર્ણ';

  @override
  String get goals_wellness => 'લક્ષ્યો અને સુખાકારીની આંતરદૃષ્ટિ';

  @override
  String get nutrition_targets => 'પોષણ લક્ષ્યાંકો અને મેક્રો વિભાજન';

  @override
  String get nutrition_targets_sub =>
      'કેલરી લક્ષ્ય, પ્રોટીન, કાર્બોહાઇડ્રેટ્સ, ચરબી અને પાણીનું લક્ષ્ય';

  @override
  String get weekly_recap => 'સાપ્તાહિક વેલનેસ રીકેપ';

  @override
  String get weekly_recap_sub =>
      '7-દિવસની કેલરી સરેરાશ, મેક્રો રેશિયો અને શ્રેષ્ઠ દિવસ';

  @override
  String get streaks_milestones => 'સ્ટ્રીક્સ અને માઇલસ્ટોન્સ';

  @override
  String get streaks_sub => 'સક્રિય બ્લોસમ સ્ટ્રીક્સ, બેજ અને સિદ્ધિઓ';

  @override
  String get connected_devices => 'કનેક્ટેડ ઉપકરણો અને ઇકોસિસ્ટમ';

  @override
  String get devices_hub => 'ઉપકરણો અને સ્માર્ટવોચ હબ';

  @override
  String get devices_hub_sub =>
      'હેલ્થ કનેક્ટ, ગેલેક્સી વોચ, પિક્સેલ વોચ, ગાર્મિન';

  @override
  String get surroundings_weather => 'આસપાસના અને હવામાન';

  @override
  String get surroundings_sub =>
      'હવાની ગુણવત્તા (AQI), યુવી ઇન્ડેક્સ અને હવામાન હાઇડ્રેશન ટીપ્સ';

  @override
  String get bloomi_pro => 'બ્લૂમી પ્રો સબ્સ્ક્રિપ્શન';

  @override
  String get bloomi_pro_sub =>
      'એઆઈ પ્લાન કોચ, 5 હોમ સ્ક્રીન વિજેટ્સ અને મહત્વપૂર્ણ ટ્રેકિંગ';

  @override
  String get about_security => 'વિશે અને સુરક્ષા';

  @override
  String get about_bloomi => 'બ્લૂમી વિશે';

  @override
  String get about_bloomi_sub => 'વિશિષ્ટતાઓ, સંસ્કરણ, વિશેષતાઓ બનાવો';

  @override
  String get privacy_policy => 'ગોપનીયતા નીતિ';

  @override
  String get privacy_policy_sub => 'ઑફલાઇન-પ્રથમ, ઑન-ડિવાઈસ ડેટા આર્કિટેક્ચર';

  @override
  String get terms_conditions => 'નિયમો અને શરતો';

  @override
  String get terms_conditions_sub => 'સેવાની શરતો અને સુખાકારી માર્ગદર્શિકા';

  @override
  String get delete_account => 'એકાઉન્ટ અને ડેટા કાઢી નાખો';

  @override
  String get delete_account_sub =>
      'સ્થાનિક SQLite ડેટા અને ક્લાઉડ બેકઅપ્સને ઉલટાવી શકાય તેવું ભૂંસી નાખો';

  @override
  String get healthy_habits => 'સૌમ્ય, કાયમી સુખાકારીની આદતો બનાવો';

  @override
  String get all_logs => 'મારો ટ્રેક કરેલ ડેટા અને લોગ્સ';

  @override
  String get search_language => 'ભાષા અથવા મૂળ લિપિ દ્વારા શોધો...';

  @override
  String get languages_available => 'ભાષાઓ ઉપલબ્ધ છે';

  @override
  String get no_matching_languages => 'કોઈ મેળ ખાતી ભાષાઓ મળી નથી';

  @override
  String get try_searching =>
      'મૂળ લિપિ અથવા અંગ્રેજી જોડણી દ્વારા શોધવાનો પ્રયાસ કરો';

  @override
  String get partially_translated => 'આંશિક રીતે અનુવાદિત';

  @override
  String get complete_translation => 'પૂર્ણ';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'ભાષા $name ( $nativeName ) પર સેટ છે';
  }

  @override
  String get surroundings_title => 'આસપાસના અને પર્યાવરણ';

  @override
  String get surroundings_aqi => 'હવા ગુણવત્તા સૂચકાંક';

  @override
  String get surroundings_uv => 'યુવી ઇન્ડેક્સ';

  @override
  String get surroundings_temp => 'તાપમાન';

  @override
  String get surroundings_humidity => 'ભેજ';

  @override
  String get surroundings_hydration_advice =>
      'વર્તમાન હવામાન પરિસ્થિતિઓમાં સારી રીતે હાઇડ્રેટેડ રહો.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'ખોરાક શોધો';

  @override
  String get food_quick_barcode => 'બારકોડ સ્કેન કરો 👑';

  @override
  String get food_quick_water => 'પાણી ઉમેરો';

  @override
  String get food_quick_custom => 'કસ્ટમ ફૂડ';

  @override
  String get surroundings_good => 'સારું';

  @override
  String get surroundings_moderate => 'મધ્યમ';

  @override
  String get surroundings_unhealthy => 'બિનઆરોગ્યપ્રદ';

  @override
  String get notifications_title => 'સૂચનાઓ અને ચેતવણીઓ';

  @override
  String get notifications_empty => 'કોઈ નવી સૂચનાઓ નથી';

  @override
  String get notifications_mark_read => 'બધાને વાંચેલા તરીકે ચિહ્નિત કરો';

  @override
  String get notifications_clear => 'બધા સાફ કરો';

  @override
  String get reminders => 'રીમાઇન્ડર સેટિંગ્સ';

  @override
  String get notifications => 'પુશ નોટિફિકેશન';

  @override
  String get reminders_breakfast_title => 'બ્રેકફાસ્ટ રીમાઇન્ડર 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'સુપ્રભાત! $time વાગ્યે પૌષ્ટિક નાસ્તો કરવાનો સમય.';
  }

  @override
  String get reminders_lunch_title => 'લંચ રીમાઇન્ડર 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'થોભો અને $time ખાતે સંતુલિત, માઇન્ડફુલ લંચનો આનંદ લો.';
  }

  @override
  String get reminders_dinner_title => 'રાત્રિભોજન રીમાઇન્ડર 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return '$time વાગ્યે હળવા, સંતોષકારક રાત્રિભોજનનો સમય.';
  }

  @override
  String get reminders_water_title => 'હાઇડ્રેશન નજ 💧';

  @override
  String reminders_water_body(Object time) {
    return 'તાજા ગ્લાસ પાણી પીવાનો સમય! ( $time )';
  }

  @override
  String get reminders_weight_title => 'સાપ્તાહિક વજન ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'બ્લૂમી ( $time ) પર તમારા સાપ્તાહિક બોડી મેટ્રિક્સને ટ્રૅક કરો.';
  }

  @override
  String get reminders_sleep_title => 'સૂવાનો સમય વિન્ડ-ડાઉન 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'આરામ કરો અને શાંત ઊંઘ માટે તૈયારી કરો ( $time ).';
  }

  @override
  String get onboard_welcome => 'બ્લૂમીમાં આપનું સ્વાગત છે';

  @override
  String get onboard_sub =>
      'તમારા મૈત્રીપૂર્ણ, ઑફલાઇન-પ્રથમ સ્વાસ્થ્ય અને પોષણ સાથી.';

  @override
  String get onboard_get_started => 'પ્રારંભ કરો';

  @override
  String get onboard_sign_in => 'સાઇન ઇન કરો';

  @override
  String get onboard_skip => 'છોડો';

  @override
  String get onboard_choose_goal => 'તમારું પ્રાથમિક સુખાકારી લક્ષ્ય શું છે?';

  @override
  String get onboard_goal_weight_loss => 'સૌમ્ય વજન નુકશાન';

  @override
  String get onboard_goal_muscle => 'મસલ ગેઇન અને સ્ટ્રેન્થ';

  @override
  String get onboard_goal_energy => 'દૈનિક ઊર્જા અને જીવનશક્તિ';

  @override
  String get onboard_goal_habits => 'સ્વસ્થ માઇન્ડફુલ આહાર';

  @override
  String get onboard_about_you => 'તમારા વિશે અમને કહો';

  @override
  String get onboard_lifestyle => 'તમારી દિનચર્યા';

  @override
  String get onboard_permissions_title => 'પરવાનગીઓ અને સિસ્ટમ ઍક્સેસ';

  @override
  String get onboard_permissions_sub =>
      'સમન્વયન પગલાં, વર્કઆઉટ્સ અને રીમાઇન્ડર્સની ઍક્સેસ આપો.';

  @override
  String get onboard_plan_ready_title => 'તમારો કસ્ટમ પ્લાન તૈયાર છે!';

  @override
  String get onboard_plan_ready_sub =>
      'અમે ફક્ત તમારા માટે જ સૌમ્ય, વ્યક્તિગત પોષણ અને વેલનેસ રોડમેપ તૈયાર કર્યો છે.';

  @override
  String get onboard_enter_bloomi => 'બ્લૂમી દાખલ કરો';

  @override
  String get insights_weekly_report => 'સાપ્તાહિક વેલનેસ રીકેપ';

  @override
  String insights_best_day(Object day) {
    return 'શ્રેષ્ઠ સુસંગતતા દિવસ: $day';
  }

  @override
  String get insights_streaks_badges => 'સ્ટ્રીક્સ અને માઇલસ્ટોન્સ';

  @override
  String insights_unlocked_on(Object date) {
    return '$date ના રોજ અનલૉક કર્યું';
  }

  @override
  String get insights_keep_going => 'અદ્ભુત પ્રગતિ ચાલુ રાખો!';

  @override
  String get widgets_title => 'હોમ સ્ક્રીન વિજેટ્સ';

  @override
  String widgets_active_count(Object count) {
    return 'સક્રિય વિજેટ્સ: $count';
  }

  @override
  String get widgets_hub_title => 'બ્લૂમી વેલનેસ હબ';

  @override
  String get widgets_steps_title => 'પગલાં અને સક્રિય રિંગ';

  @override
  String get widgets_water_title => 'હાઇડ્રેશન ઝડપી લોગ';

  @override
  String get widgets_mascot_title => 'બ્લૂમી માસ્કોટ કમ્પેનિયન';

  @override
  String get wear_os_title => 'OS સ્માર્ટવોચ પહેરો';

  @override
  String get wear_os_connected => 'ઘડિયાળ સાથે જોડાયેલ છે';

  @override
  String get wear_os_sync => 'ઘડિયાળનો ડેટા સમન્વયિત કરો';

  @override
  String get theme_title => 'દેખાવ અને થીમ';

  @override
  String get theme_mode => 'થીમ મોડ';

  @override
  String get theme_light => 'લાઇટ';

  @override
  String get theme_dark => 'ડાર્ક';

  @override
  String get theme_system => 'સિસ્ટમ';

  @override
  String get theme_background_palette => 'પૃષ્ઠભૂમિ પેલેટ';

  @override
  String get units_title => 'માપનના એકમો';

  @override
  String get units_metric => 'મેટ્રિક (કિલો, સેમી, મિલી)';

  @override
  String get units_imperial => 'શાહી (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'ડેશબોર્ડ લોડ કરવામાં અસમર્થ';

  @override
  String get home_health_permission_req => 'હેલ્થ કનેક્ટ પરવાનગી જરૂરી છે';

  @override
  String get home_health_permission_desc =>
      'બ્લૂમીને વાસ્તવિક પગલાઓ, ધબકારા વધારવા અને મોબાઇલ હોમ વિજેટ્સને રીઅલ ટાઇમમાં સમન્વયિત કરવા માટે હેલ્થ કનેક્ટ પરવાનગીની જરૂર છે.';

  @override
  String get home_allow_health => 'હેલ્થ કનેક્ટને મંજૂરી આપો';

  @override
  String get home_ready_mindful_day => 'માઇન્ડફુલ દિવસ માટે તૈયાર છો? ✨';

  @override
  String get home_quick_add => 'ઝડપી ઉમેરો';

  @override
  String get home_live_gps => 'જીવંત જીપીએસ';

  @override
  String get home_calories_remaining_label => 'કેલરી બાકી છે';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'ખાધું: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'વોટર ટ્રેકર માટે ટેપ કરો 💧';

  @override
  String get home_water_goal_reached => 'દૈનિક લક્ષ્ય 🎉 પહોંચી ગયું';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return 'દૈનિક ધ્યેય માટે $remaining મિલી';
  }

  @override
  String get home_details => 'વિગતો';

  @override
  String get home_upgrade_plan_desc =>
      'વ્યક્તિગત દૈનિક લક્ષ્યો અને AI પ્લાનને અનલૉક કરવા માટે અપગ્રેડ કરો';

  @override
  String get home_unlock => 'અનલૉક કરો 👑';

  @override
  String get home_quick_log_hint => 'વેલનેસ એન્ટ્રી ઝડપથી રેકોર્ડ કરો';

  @override
  String get food_serving_size => 'સેવા આપતા કદ';

  @override
  String get food_serving_grams => 'સર્વિંગ (જી)';

  @override
  String get food_number_servings => 'સર્વિંગ્સની સંખ્યા';

  @override
  String get food_calories_per_serving => 'સેવા આપતા દીઠ કેલરી';

  @override
  String get food_recipe_ingredients => 'ઘટકો';

  @override
  String get food_recipe_add_ingredient => 'ઘટક ઉમેરો';

  @override
  String get food_recipe_directions => 'સૂચનાઓ અને નોંધો';

  @override
  String get food_recipe_total => 'કુલ રેસીપી પોષણ';

  @override
  String get food_recipe_per_serving => 'સેવા આપતા પોષણ દીઠ';

  @override
  String get food_recipe_saved_toast => 'કસ્ટમ ખોરાક સફળતાપૂર્વક સાચવ્યો!';

  @override
  String get food_barcode_found => 'ઉત્પાદન મળ્યું!';

  @override
  String get food_barcode_not_found_desc =>
      'અમે ખુલ્લા ડેટાબેઝમાં આ બારકોડ શોધી શક્યા નથી. તમે તેને કસ્ટમ ફૂડ તરીકે ઉમેરી શકો છો.';

  @override
  String get food_add_custom_btn => 'કસ્ટમ ફૂડ ઉમેરો';

  @override
  String get food_scan_again => 'ફરીથી સ્કેન કરો';

  @override
  String get food_review_items => 'શોધાયેલ ખોરાકની સમીક્ષા કરો';

  @override
  String get food_review_hint =>
      'જથ્થાને સમાયોજિત કરો અથવા કોઈપણ અજાણી વસ્તુને દૂર કરો';

  @override
  String get food_log_selected => 'પસંદ કરેલ ખોરાક લોગ કરો';

  @override
  String get food_favourites_title => 'મનપસંદ ખોરાક';

  @override
  String get food_recent_title => 'તાજેતરના ખોરાક';

  @override
  String get food_no_favourites =>
      'હજી સુધી કોઈ મનપસંદ ખોરાક નથી. અહીં સાચવવા માટે કોઈપણ ખોરાક પર હૃદયને ટેપ કરો.';

  @override
  String get food_no_recents => 'તાજેતરમાં લૉગ કરેલા કોઈ ખોરાક મળ્યા નથી.';

  @override
  String get food_nutrition_details_title => 'દૈનિક પોષણ વિગતો';

  @override
  String get food_macro_protein_label => 'પ્રોટીન બ્રેકડાઉન';

  @override
  String get food_macro_carbs_label => 'કાર્બ્સ બ્રેકડાઉન';

  @override
  String get food_macro_fat_label => 'ફેટ બ્રેકડાઉન';

  @override
  String get food_macro_fiber_label => 'ફાઇબર બ્રેકડાઉન';

  @override
  String get food_daily_target_comparison => 'લક્ષ્ય સરખામણી';

  @override
  String food_target_label(Object target) {
    return 'લક્ષ્ય: $target';
  }

  @override
  String get food_edit_entry => 'ડાયરી એન્ટ્રી સંપાદિત કરો';

  @override
  String get food_delete_entry => 'એન્ટ્રી કાઢી નાખો';

  @override
  String food_grams_short(Object grams) {
    return '$grams જી';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$target મિલી માંથી $current';
  }

  @override
  String get water_intake_history => 'આજના વોટર લોગ્સ';

  @override
  String get water_no_logs_today =>
      'આજે પણ પાણી ભરાયા નથી. હાઇડ્રેટ કરો અને ઝડપી ઉમેરો બટનને ટેપ કરો!';

  @override
  String get water_adjust_goal => 'દૈનિક ધ્યેયને સમાયોજિત કરો';

  @override
  String get health_connect_banner => 'હેલ્થ કનેક્ટ સાથે જોડાયેલ છે';

  @override
  String get health_vitals_summary => 'દૈનિક આરોગ્ય મહત્વપૂર્ણ';

  @override
  String get health_latest_heart_rate => 'નવીનતમ હાર્ટ રેટ';

  @override
  String get health_latest_bp => 'બ્લડ પ્રેશર';

  @override
  String get health_latest_spo2 => 'બ્લડ ઓક્સિજન';

  @override
  String get health_latest_glucose => 'બ્લડ ગ્લુકોઝ';

  @override
  String get health_latest_weight => 'વજન';

  @override
  String get health_latest_sleep => 'ઊંઘની અવધિ';

  @override
  String get health_add_manual => 'મેન્યુઅલ માપન ઉમેરો';

  @override
  String get health_history_trends => 'ઐતિહાસિક પ્રવાહો';

  @override
  String get health_sync_success => 'આરોગ્ય ડેટા સફળતાપૂર્વક સમન્વયિત થયો!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours કલાક $mins મિનિટ';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '$val કિગ્રા';
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
  String get health_devices_title => 'કનેક્ટેડ ઉપકરણો અને વેરેબલ';

  @override
  String get health_devices_desc =>
      'જોડી બનાવેલી સ્માર્ટ ઘડિયાળો, ફિટનેસ ટ્રેકર્સ અને હેલ્થ સેન્સર્સનું સંચાલન કરો.';

  @override
  String get health_workout_editor_title => 'વર્કઆઉટ સંપાદિત કરો';

  @override
  String get health_workout_name_label => 'વર્કઆઉટ નામ';

  @override
  String get health_workout_duration_label => 'અવધિ (મિનિટ)';

  @override
  String get health_workout_calories_label => 'અંદાજિત કેલરી (kcal)';

  @override
  String get health_workout_date_label => 'તારીખ અને સમય';

  @override
  String get plan_daily_wellness_roadmap => 'તમારો વ્યક્તિગત રોડમેપ';

  @override
  String get plan_morning_routine => 'મોર્નિંગ રૂટિન';

  @override
  String get plan_afternoon_routine => 'મધ્યાહન સુખાકારી';

  @override
  String get plan_evening_routine => 'સાંજે વિન્ડ-ડાઉન';

  @override
  String get plan_coach_badge => 'બ્લૂમી એઆઈ કોચ';

  @override
  String get plan_weekly_overview => '7-દિવસ વેલનેસ ફોકસ';

  @override
  String get plan_targets_title => 'સુખાકારી લક્ષ્યો અને લક્ષ્યો';

  @override
  String get plan_calorie_budget_label => 'દૈનિક કેલરી બજેટ';

  @override
  String get plan_water_budget_label => 'દૈનિક પાણીનો લક્ષ્યાંક';

  @override
  String get plan_step_budget_label => 'દૈનિક પગલું ધ્યેય';

  @override
  String get plan_macro_split_label => 'મેક્રોન્યુટ્રિઅન્ટ રેશિયો';

  @override
  String get profile_personal_details => 'વ્યક્તિગત વિગતો';

  @override
  String get profile_body_stats => 'શારીરિક માપ';

  @override
  String get profile_app_preferences => 'પસંદગીઓ અને એપ્લિકેશન સેટિંગ્સ';

  @override
  String get profile_edit_name_hint => 'તમારું નામ';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'ઊંચાઈ ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'વજન ( $unit )';
  }

  @override
  String get profile_edit_age_hint => 'ઉંમર';

  @override
  String get profile_gender_male => 'પુરુષ';

  @override
  String get profile_gender_female => 'સ્ત્રી';

  @override
  String get profile_gender_other => 'અન્ય / ન કહેવાનું પસંદ કરો';

  @override
  String get profile_activity_sedentary => 'બેઠાડુ (થોડુંથી કોઈ કસરત નહીં)';

  @override
  String get profile_activity_light => 'થોડું સક્રિય (1-3 દિવસ/અઠવાડિયું)';

  @override
  String get profile_activity_moderate => 'સાધારણ સક્રિય (3-5 દિવસ/અઠવાડિયા)';

  @override
  String get profile_activity_very => 'ખૂબ સક્રિય (6-7 દિવસ/અઠવાડિયું)';

  @override
  String get settings_wear_os_header => 'Wear OS Companion App';

  @override
  String get settings_wear_os_desc =>
      'તમારી Wear OS ઘડિયાળ પર બ્લૂમી ટાઇલ અને જટિલતા કેલરી, પાણી અને પગલાંઓ જોવા માટે ઇન્સ્ટોલ કરો.';

  @override
  String get settings_widgets_header => 'ઇન્ટરેક્ટિવ એન્ડ્રોઇડ વિજેટ્સ';

  @override
  String get settings_widgets_desc =>
      'ત્વરિત અપડેટ્સ માટે તમારા ઉપકરણ હોમ સ્ક્રીન પર રીઅલ-ટાઇમ વિજેટ્સ પિન કરો.';

  @override
  String get settings_about_header => 'બ્લૂમી વિશે';

  @override
  String get settings_about_version => 'વર્ઝન';

  @override
  String get settings_about_build => '100 બનાવો';

  @override
  String get settings_about_credits =>
      'માઇન્ડફુલ, સ્વસ્થ જીવન જીવવા માટે કાળજી સાથે રચાયેલ છે.';

  @override
  String get settings_terms_header => 'નિયમો અને શરતો';

  @override
  String get settings_privacy_header => 'ગોપનીયતા નીતિ';

  @override
  String get settings_delete_header => 'એકાઉન્ટ અને ડેટા કાઢી નાખો';

  @override
  String get settings_delete_warning =>
      'આ ક્રિયા પૂર્વવત્ કરી શકાતી નથી. તમારા બધા ભોજન, વર્કઆઉટ્સ, મહત્વપૂર્ણ અને પ્રોફાઇલ કાયમ માટે કાઢી નાખવામાં આવશે.';

  @override
  String get settings_delete_confirm_btn => 'કાયમ માટે કાઢી નાખો';

  @override
  String get onboard_welcome_headline => 'Bloomi ✨ માં આપનું સ્વાગત છે';

  @override
  String get onboard_welcome_tagline =>
      'તમારા જીવનની આસપાસ રચાયેલ સૌમ્ય, માઇન્ડફુલ વેલનેસ ટ્રેકિંગ.';

  @override
  String get onboard_step_about => 'તમારા વિશે';

  @override
  String get onboard_step_goals => 'તમારા ગોલ';

  @override
  String get onboard_step_lifestyle => 'દૈનિક આદતો';

  @override
  String get onboard_step_permissions => 'પરવાનગીઓ';

  @override
  String get onboard_step_plan => 'તૈયાર!';

  @override
  String get onboard_health_connect_perm => 'હેલ્થ કનેક્ટ એક્સેસ';

  @override
  String get onboard_step_sensors_perm => 'સ્ટેપ કાઉન્ટર સેન્સર';

  @override
  String get onboard_notif_perm => 'માઇન્ડફુલ રીમાઇન્ડર્સ અને સૂચનાઓ';

  @override
  String get onboard_camera_perm => 'કેમેરા (બારકોડ અને ફૂડ સ્કેનર)';

  @override
  String get onboard_grant_permissions => 'પરવાનગીઓ આપો';

  @override
  String get onboard_continue_dashboard => 'ડેશબોર્ડ ખોલો';

  @override
  String get notif_channel_hydration_name => 'હાઇડ્રેશન નજ';

  @override
  String get notif_channel_hydration_desc => 'દિવસભર હળવા પાણીના રીમાઇન્ડર્સ';

  @override
  String get notif_channel_nutrition_name => 'ભોજન અને પોષણ રીમાઇન્ડર્સ';

  @override
  String get notif_channel_nutrition_desc =>
      'બ્રેકફાસ્ટ, લંચ અને ડિનર રિમાઇન્ડર ચેતવણીઓ';

  @override
  String get notif_channel_steps_name => 'સ્ટેપ માઇલસ્ટોન્સ';

  @override
  String get notif_channel_steps_desc =>
      'દૈનિક પગલાના લક્ષ્યો સુધી પહોંચવા પર ઉજવણી';

  @override
  String get notif_channel_vitals_name => 'આરોગ્ય અને મહત્વપૂર્ણ તપાસ';

  @override
  String get notif_channel_vitals_desc =>
      'વજન અને સૂવાના સમયે વિન્ડ-ડાઉન રીમાઇન્ડર્સ';

  @override
  String get notif_action_log_water => '💧 લોગ +250ml';

  @override
  String get notif_action_snooze => 'સ્નૂઝ 15 મી';

  @override
  String get notif_action_log_meal => '🥗 લોગ ભોજન';

  @override
  String get language => 'ભાષા';

  @override
  String get share => 'શેર કરો';

  @override
  String common_days(Object count) {
    return '$count દિવસ પહેલા';
  }
}
