// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get app_name => 'Μπλούμι';

  @override
  String get nav_home => 'Σπίτι';

  @override
  String get nav_today => 'Σήμερα';

  @override
  String get nav_plan => 'Σχέδιο';

  @override
  String get nav_food => 'Φαγητό';

  @override
  String get nav_food_diary => 'Ημερολόγιο τροφίμων';

  @override
  String get nav_workout => 'Μητρώο προπόνησης';

  @override
  String get nav_health => 'Υγεία';

  @override
  String get nav_profile => 'Προφίλ';

  @override
  String get save => 'Εκτός';

  @override
  String get cancel => 'Ματαίωση';

  @override
  String get delete => 'Διαγράφω';

  @override
  String get edit => 'Εκδίδω';

  @override
  String get done => 'Γινώμενος';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get back => 'Πίσω';

  @override
  String get next => 'Επόμενο';

  @override
  String get continue_btn => 'Συνέχεια';

  @override
  String get confirm => 'Επιβεβαίωση';

  @override
  String get search => 'Ερευνα';

  @override
  String get filter => 'Φίλτρο';

  @override
  String get all => 'Ολοι';

  @override
  String get active => 'Ενεργός';

  @override
  String get today => 'Σήμερα';

  @override
  String get yesterday => 'Χθες';

  @override
  String get tomorrow => 'Αύριο';

  @override
  String get add => 'Προσθήκη';

  @override
  String get remove => 'Αφαίρεση';

  @override
  String get refresh => 'Ανανέωση';

  @override
  String get retry => 'Επανάληψη';

  @override
  String get error => 'Σφάλμα';

  @override
  String get success => 'Επιτυχία';

  @override
  String get loading => 'Φόρτωση...';

  @override
  String get no_data => 'Δεν υπάρχουν διαθέσιμα δεδομένα';

  @override
  String get offline => 'Λειτουργία εκτός σύνδεσης';

  @override
  String get offline_sub => 'Οι αλλαγές θα συγχρονιστούν μόλις επανασυνδεθούν';

  @override
  String get undo => 'Ξεκάνω';

  @override
  String get portion => 'Μερίδα';

  @override
  String get quantity => 'Ποσότητα';

  @override
  String get unit => 'Μονάδα';

  @override
  String get clear => 'Καθαρό';

  @override
  String get select => 'Επιλέξτε';

  @override
  String get apply => 'Εφαρμόζω';

  @override
  String get reset => 'Επαναφορά';

  @override
  String get ok => 'ΕΝΤΑΞΕΙ';

  @override
  String get yes => 'Ναι';

  @override
  String get no => 'Όχι';

  @override
  String get optional => 'Προαιρετικό';

  @override
  String get calories => 'Θερμίδες';

  @override
  String get protein => 'Πρωτεΐνη';

  @override
  String get carbs => 'Υδατάνθρακες';

  @override
  String get fat => 'Λίπος';

  @override
  String get fiber => 'Ίνα';

  @override
  String get water => 'Νερό';

  @override
  String get steps => 'Βήματα';

  @override
  String get kcal => 'kcal';

  @override
  String get grams => 'ζ';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'κιλά';

  @override
  String get pounds => 'λίβρες';

  @override
  String get centimeters => 'εκ';

  @override
  String get inches => 'σε';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'ώρες';

  @override
  String get minutes => 'λεπτά';

  @override
  String get serving => 'Σερβίρισμα';

  @override
  String get servings => 'μερίδες';

  @override
  String get serving_size => 'Μέγεθος σερβιρίσματος';

  @override
  String get per_100g => 'ανά 100 γρ';

  @override
  String get india => 'Ινδία';

  @override
  String get asia => 'Ασία';

  @override
  String get europe => 'Ευρώπη';

  @override
  String get middle_east => 'Μέση Ανατολή';

  @override
  String get africa => 'Αφρική';

  @override
  String get americas => 'Αμερικής';

  @override
  String get home_title => 'Σπίτι';

  @override
  String get home_greeting_morning => 'Καλημέρα';

  @override
  String get home_greeting_afternoon => 'Καλό απόγευμα';

  @override
  String get home_greeting_evening => 'Καλησπέρα';

  @override
  String get home_streak_title => 'Blossom Streak';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Σερί $count ημερών',
      one: 'Σερί 1 ημέρας',
      zero: 'Σερί 0 ημερών',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Καμένο';

  @override
  String get home_calories_budget => 'Προϋπολογισμός θερμίδων';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal που απομένουν';
  }

  @override
  String get home_water_title => 'Καθημερινή Ενυδάτωση';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Βήματα περπάτησαν';

  @override
  String get home_quick_actions => 'Γρήγορες Ενέργειες';

  @override
  String get home_log_meal => 'Γεύμα κορμού';

  @override
  String get home_log_water => 'Νερό κορμού';

  @override
  String get home_log_workout => 'Log Workout';

  @override
  String get home_log_weight => 'Βάρος καταγραφής';

  @override
  String get home_insights_title => 'Σημερινά Insights';

  @override
  String get home_quote =>
      'Μικρές υγιεινές επιλογές δημιουργούν ανθισμένες μεταμορφώσεις.';

  @override
  String get home_ai_coach_tip => 'Bloomi AI Coach';

  @override
  String get home_surroundings => 'Περιβάλλων & Αέρας';

  @override
  String get home_notifications => 'Ειδοποιήσεις';

  @override
  String get home_daily_score => 'Ημερήσια βαθμολογία ευεξίας';

  @override
  String get home_view_all => 'Προβολή όλων';

  @override
  String get food_diary_title => 'Ημερολόγιο τροφίμων';

  @override
  String get food_breakfast => 'Πρωινό';

  @override
  String get food_lunch => 'Γεύμα';

  @override
  String get food_dinner => 'Δείπνο';

  @override
  String get food_snacks => 'Σνακ';

  @override
  String get food_add_food => 'Προσθέστε φαγητό';

  @override
  String get food_edit_food => 'Επεξεργασία φαγητού';

  @override
  String get food_add_breakfast => 'Προσθέστε Πρωινό';

  @override
  String get food_add_lunch => 'Προσθέστε μεσημεριανό γεύμα';

  @override
  String get food_add_dinner => 'Προσθήκη δείπνου';

  @override
  String get food_add_snack => 'Προσθήκη Σνακ';

  @override
  String get food_total_calories => 'Συνολικές θερμίδες';

  @override
  String get food_empty_meal =>
      'Δεν έχουν καταγραφεί τρόφιμα για αυτό το γεύμα ακόμα';

  @override
  String get food_empty_diary => 'Δεν καταγράφηκαν γεύματα για αυτήν την ημέρα';

  @override
  String get food_log_first_meal =>
      'Πατήστε + για να καταγράψετε το πρώτο σας νόστιμο γεύμα';

  @override
  String get food_quick_add => 'Γρήγορη προσθήκη';

  @override
  String get food_search_hint => 'Αναζήτηση πιάτων, φρούτων, ντάλ, ροτ...';

  @override
  String get food_custom_recipe => 'Προσαρμοσμένο φαγητό και συνταγή';

  @override
  String get food_scan_barcode => 'Σάρωση γραμμικού κώδικα';

  @override
  String get food_camera_scan => 'AI Food Scanner';

  @override
  String get food_recent => 'Πρόσφατα τρόφιμα';

  @override
  String get food_favourites => 'Αγαπημένα';

  @override
  String get food_macro_summary => 'Ανάλυση μακροθρεπτικών συστατικών';

  @override
  String get food_delete_meal_confirm =>
      'Είστε βέβαιοι ότι θέλετε να καταργήσετε αυτό το στοιχείο;';

  @override
  String get food_item_deleted => 'Το τρόφιμο καταργήθηκε';

  @override
  String get food_remaining => 'που απομένουν';

  @override
  String get food_consumed => 'καταναλώνεται';

  @override
  String food_of_target(Object target) {
    return 'των $target kcal';
  }

  @override
  String get foodSearch_title => 'Αναζήτηση τροφίμων';

  @override
  String get foodSearch_scan_barcode => 'Σάρωση γραμμικού κώδικα';

  @override
  String get foodSearch_take_photo => 'Snap Food Photo';

  @override
  String get foodSearch_custom_food => 'Δημιουργήστε προσαρμοσμένο φαγητό';

  @override
  String get foodSearch_recent_searches => 'Πρόσφατες αναζητήσεις';

  @override
  String get foodSearch_popular => 'Δημοφιλή πιάτα';

  @override
  String get foodSearch_no_results =>
      'Δεν υπάρχουν τρόφιμα που να ταιριάζουν με την αναζήτησή σας';

  @override
  String get barcode_title => 'Barcode Scanner';

  @override
  String get barcode_align =>
      'Ευθυγραμμίστε τον γραμμωτό κώδικα μέσα στο πλαίσιο της κάμερας';

  @override
  String get barcode_not_found => 'Το προϊόν δεν βρέθηκε στη βάση δεδομένων';

  @override
  String get barcode_premium_feature =>
      'Η σάρωση γραμμωτού κώδικα είναι διαθέσιμη με το Bloomi Pro';

  @override
  String get camera_title => 'AI Food Scanner';

  @override
  String get camera_tap_hint => 'Τραβήξτε μια καθαρή φωτογραφία του πιάτου σας';

  @override
  String get camera_analysing => 'Ανάλυση πιάτου φαγητού...';

  @override
  String get camera_detected => 'Αντικείμενα που εντοπίστηκαν';

  @override
  String get camera_flash => 'Εναλλαγή Flash';

  @override
  String get camera_retake => 'Επαναλάβετε τη φωτογραφία';

  @override
  String get camera_confirm_food => 'Επιβεβαίωση αντικειμένων';

  @override
  String get customFood_title => 'Προσαρμοσμένο φαγητό και συνταγή';

  @override
  String get customFood_name_hint => 'Όνομα πιάτου ή συστατικού';

  @override
  String get customFood_calories_hint => 'Θερμίδες (kcal)';

  @override
  String get customFood_protein_hint => 'Πρωτεΐνη (g)';

  @override
  String get customFood_carbs_hint => 'Υδατάνθρακες (g)';

  @override
  String get customFood_fat_hint => 'Λίπος (g)';

  @override
  String get customFood_save => 'Αποθήκευση συνταγής';

  @override
  String get water_tracker_title => 'Ιχνηλάτης νερού';

  @override
  String get water_daily_target => 'Καθημερινός στόχος ενυδάτωσης';

  @override
  String get water_logged_today => 'Εγγράφηκε σήμερα';

  @override
  String get water_add_glass => '+250 ml Ποτήρι';

  @override
  String get water_add_bottle => 'Φιάλη +500 ml';

  @override
  String get water_custom_amount => 'Προσαρμοσμένο ποσό';

  @override
  String get water_reminder_tip =>
      'Πίνετε νερό τακτικά όλη την ημέρα για σταθερή ενέργεια.';

  @override
  String water_logged_toast(Object amount) {
    return 'Καταγράφηκε $amount ml νερού 💧';
  }

  @override
  String get workout_title => 'Μητρώο προπόνησης';

  @override
  String get workout_add_exercise => 'Προσθήκη προπόνησης';

  @override
  String get workout_cardio => 'Καρδιο';

  @override
  String get workout_strength => 'Δύναμη';

  @override
  String get workout_yoga => 'Γιόγκα & Ευελιξία';

  @override
  String get workout_duration => 'Διάρκεια';

  @override
  String get workout_intensity => 'Ένταση';

  @override
  String get workout_calories_burned => 'Θερμίδες που καίγονται';

  @override
  String get workout_empty => 'Δεν καταγράφηκαν προπονήσεις σήμερα';

  @override
  String get workout_save_success => 'Η προπόνηση αποθηκεύτηκε με επιτυχία!';

  @override
  String get workout_type => 'Τύπος προπόνησης';

  @override
  String get workout_notes => 'Σημειώσεις & Σκέψεις';

  @override
  String get health_overview_title => 'Υγεία & Ζωτικά';

  @override
  String get health_heart_rate => 'Καρδιακός ρυθμός';

  @override
  String get health_blood_oxygen => 'Οξυγόνο αίματος (SpO2)';

  @override
  String get health_blood_pressure => 'Αρτηριακή Πίεση';

  @override
  String get health_blood_glucose => 'Γλυκόζη αίματος';

  @override
  String get health_body_temperature => 'Θερμοκρασία σώματος';

  @override
  String get health_sleep_tracking => 'Παρακολούθηση ύπνου';

  @override
  String get health_weight_tracking => 'Βάρος & Σύνθεση Σώματος';

  @override
  String get health_waist_hip => 'Αναλογία μέσης-ισχίου';

  @override
  String get health_devices_hub => 'Συσκευές & Smartwatch Hub';

  @override
  String get health_sync_now => 'Συγχρονισμός δεδομένων υγείας';

  @override
  String health_last_synced(Object time) {
    return 'Τελευταίος συγχρονισμός: $time';
  }

  @override
  String get health_manual_entry => 'Εγχειρίδιο καταχώρισης υγείας';

  @override
  String get health_metric_detail => 'Μετρικές λεπτομέρειες';

  @override
  String get health_connected_sensors => 'Συνδεδεμένοι αισθητήρες υγείας';

  @override
  String get plan_title => 'Καθημερινό Πρόγραμμα';

  @override
  String get plan_weekly_title => 'Εβδομαδιαίο πρόγραμμα ευεξίας';

  @override
  String get plan_calorie_target => 'Στόχος θερμίδων';

  @override
  String get plan_water_target => 'Στόχος ενυδάτωσης';

  @override
  String get plan_step_target => 'Βήμα Στόχος';

  @override
  String get plan_sleep_target => 'Στόχος ύπνου';

  @override
  String get plan_meal_suggestions => 'Προτάσεις για γεύματα';

  @override
  String get plan_healthy_habits => 'Υγιεινές συνήθειες και συμβουλές';

  @override
  String get plan_coach_advice => 'Συστάσεις προπονητών Bloomi AI';

  @override
  String get plan_generated_title => 'Εξατομικευμένο ημερήσιο πρόγραμμα';

  @override
  String get profile_title => 'Προφίλ';

  @override
  String get profile_edit => 'Επεξεργασία προφίλ';

  @override
  String get profile_name => 'Όνομα';

  @override
  String get profile_age => 'Ηλικία';

  @override
  String get profile_gender => 'Φύλο';

  @override
  String get profile_height => 'Ύψος';

  @override
  String get profile_weight => 'Βάρος';

  @override
  String get profile_goal => 'Πρωταρχικός στόχος';

  @override
  String get profile_activity_level => 'Επίπεδο Δραστηριότητας';

  @override
  String get profile_stats => 'Τα στατιστικά ευεξίας μου';

  @override
  String get profile_saved => 'Το προφίλ ενημερώθηκε με επιτυχία';

  @override
  String get profile_bmi => 'Δείκτης Μάζας Σώματος (ΔΜΣ)';

  @override
  String get profile_membership => 'Συνδρομή';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get preferences_habits => 'ΠΡΟΤΙΜΗΣΕΙΣ & ΣΥΝΗΘΕΙΕΣ';

  @override
  String get appearance_theme => 'Εμφάνιση & Θέμα';

  @override
  String get appearance_theme_sub =>
      'Επιλογές φόντου Dark, Light, System Mode & App';

  @override
  String get permissions => 'Δικαιώματα και πρόσβαση στο σύστημα';

  @override
  String get permissions_sub =>
      'Health Connect, Step Sensors, GPS, Ειδοποιήσεις & Κάμερα';

  @override
  String get reminders_notifications => 'Υπενθυμίσεις & Ειδοποιήσεις';

  @override
  String get reminders_sub =>
      'Ώρες γευμάτων, νερό, έλεγχος βάρους και υπενθυμίσεις ώρας ύπνου';

  @override
  String get units_of_measurement => 'Μονάδες Μέτρησης';

  @override
  String get units_sub =>
      'Μετρικό (kg, cm, ml, km) ή Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Γλώσσα εφαρμογής';

  @override
  String get language_sub =>
      'Αγγλικά, हिन्दी (Χίντι), Hinglish & 195+ παγκόσμιες γλώσσες';

  @override
  String get home_screen_widgets => 'Γραφικά στοιχεία αρχικής οθόνης';

  @override
  String get widgets_sub =>
      'Ζωντανά γραφικά στοιχεία Android: Hub, Steps, Water, Nutrition & Mascot';

  @override
  String get wear_os_watch_app => 'Εφαρμογή Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Συνοδευτικό έξυπνο ρολόι, πλακάκια, επιπλοκές και ζωντανά ζωτικά στοιχεία';

  @override
  String get goals_wellness => 'ΣΤΟΧΟΙ & ΕΝΔΕΙΞΕΙΣ ΕΥΕΙΑΣ';

  @override
  String get nutrition_targets => 'Διατροφικοί Στόχοι & Μακροδιαίρεση';

  @override
  String get nutrition_targets_sub =>
      'Στόχος θερμίδων, πρωτεΐνη, υδατάνθρακες, λίπος και νερό';

  @override
  String get weekly_recap => 'Εβδομαδιαία Ανακεφαλαίωση Ευεξίας';

  @override
  String get weekly_recap_sub =>
      'Μέσος όρος θερμίδων 7 ημερών, αναλογία μακροεντολών & καλύτερη ημέρα';

  @override
  String get streaks_milestones => 'Streaks & Milestones';

  @override
  String get streaks_sub => 'Ενεργές ραβδώσεις, κονκάρδες και επιτεύγματα';

  @override
  String get connected_devices => 'ΣΥΝΔΕΔΕΜΕΝΕΣ ΣΥΣΚΕΥΕΣ & ΟΙΚΟΣΥΣΤΗΜΑ';

  @override
  String get devices_hub => 'Συσκευές & Smartwatch Hub';

  @override
  String get devices_hub_sub =>
      'Health Connect, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Περιβάλλον & Καιρός';

  @override
  String get surroundings_sub =>
      'Ποιότητα αέρα (AQI), δείκτης UV & συμβουλές ενυδάτωσης καιρού';

  @override
  String get bloomi_pro => 'Συνδρομή Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 γραφικά στοιχεία αρχικής οθόνης και παρακολούθηση ζωτικών στοιχείων';

  @override
  String get about_security => 'ΠΕΡΙ ΚΑΙ ΑΣΦΑΛΕΙΑ';

  @override
  String get about_bloomi => 'Σχετικά με την Bloomi';

  @override
  String get about_bloomi_sub => 'Προδιαγραφές κατασκευής, έκδοση, αναφορές';

  @override
  String get privacy_policy => 'Πολιτική Απορρήτου';

  @override
  String get privacy_policy_sub =>
      'Αρχιτεκτονική δεδομένων εκτός σύνδεσης, στη συσκευή';

  @override
  String get terms_conditions => 'Όροι & Προϋποθέσεις';

  @override
  String get terms_conditions_sub => 'Όροι υπηρεσίας και οδηγίες ευεξίας';

  @override
  String get delete_account => 'Διαγραφή λογαριασμού & δεδομένων';

  @override
  String get delete_account_sub =>
      'Διαγράψτε αμετάκλητα τοπικά δεδομένα SQLite και αντίγραφα ασφαλείας cloud';

  @override
  String get healthy_habits => 'Δημιουργήστε ήπιες, διαρκείς συνήθειες ευεξίας';

  @override
  String get all_logs =>
      'Τα παρακολουθούμενα δεδομένα και τα αρχεία καταγραφής μου';

  @override
  String get search_language => 'Αναζήτηση κατά γλώσσα ή εγγενή γραφή...';

  @override
  String get languages_available => 'Διαθέσιμες γλώσσες';

  @override
  String get no_matching_languages => 'Δεν βρέθηκαν γλώσσες που να ταιριάζουν';

  @override
  String get try_searching =>
      'Δοκιμάστε να κάνετε αναζήτηση με εγγενή γραφή ή αγγλική ορθογραφία';

  @override
  String get partially_translated => 'Μερικώς μεταφρασμένο';

  @override
  String get complete_translation => 'Ολοκληρώθηκε';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Η γλώσσα ορίστηκε σε $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Περιβάλλον & Περιβάλλον';

  @override
  String get surroundings_aqi => 'Δείκτης Ποιότητας Αέρα';

  @override
  String get surroundings_uv => 'Δείκτης UV';

  @override
  String get surroundings_temp => 'Θερμοκρασία';

  @override
  String get surroundings_humidity => 'Υγρασία';

  @override
  String get surroundings_hydration_advice =>
      'Μείνετε καλά ενυδατωμένοι στις τρέχουσες καιρικές συνθήκες.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Αναζήτηση τροφίμων';

  @override
  String get food_quick_barcode => 'Σάρωση γραμμικού κώδικα 👑';

  @override
  String get food_quick_water => 'Προσθέστε Νερό';

  @override
  String get food_quick_custom => 'Προσαρμοσμένο φαγητό';

  @override
  String get surroundings_good => 'Καλό';

  @override
  String get surroundings_moderate => 'Μέτρια';

  @override
  String get surroundings_unhealthy => 'Ανθυγιεινό';

  @override
  String get notifications_title => 'Ειδοποιήσεις & Ειδοποιήσεις';

  @override
  String get notifications_empty => 'Δεν υπάρχουν νέες ειδοποιήσεις';

  @override
  String get notifications_mark_read => 'Επισήμανση όλων ως αναγνωσμένων';

  @override
  String get notifications_clear => 'Εκκαθάριση όλων';

  @override
  String get reminders => 'Ρυθμίσεις υπενθύμισης';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Υπενθύμιση πρωινού 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Καλημέρα! Ώρα για ένα θρεπτικό πρωινό στις $time .';
  }

  @override
  String get reminders_lunch_title => 'Υπενθύμιση γεύματος 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Κάντε παύση και απολαύστε ένα ισορροπημένο, προσεκτικό μεσημεριανό γεύμα στις $time .';
  }

  @override
  String get reminders_dinner_title => 'Υπενθύμιση δείπνου 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'Ώρα για ένα ελαφρύ, χορταστικό δείπνο στο $time .';
  }

  @override
  String get reminders_water_title => 'Hydration Nudge 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Ώρα να πιείτε ένα ποτήρι φρέσκο νερό! ( $time )';
  }

  @override
  String get reminders_weight_title => 'Εβδομαδιαία ζύγιση ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Παρακολουθήστε τις εβδομαδιαίες μετρήσεις του σώματός σας στο Bloomi ( $time ).';
  }

  @override
  String get reminders_sleep_title => 'Wind-down Ώρα για ύπνο 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Χαλαρώστε και προετοιμαστείτε για έναν ξεκούραστο ύπνο ( $time ).';
  }

  @override
  String get onboard_welcome => 'Καλώς ήρθατε στο Bloomi';

  @override
  String get onboard_sub =>
      'Ο φιλικός σας σύντροφος για την υγεία και τη διατροφή εκτός σύνδεσης.';

  @override
  String get onboard_get_started => 'Ξεκινήστε';

  @override
  String get onboard_sign_in => 'Είσοδος';

  @override
  String get onboard_skip => 'Παράλειψη';

  @override
  String get onboard_choose_goal =>
      'Ποιος είναι ο πρωταρχικός σας στόχος ευεξίας;';

  @override
  String get onboard_goal_weight_loss => 'Ήπια απώλεια βάρους';

  @override
  String get onboard_goal_muscle => 'Μυϊκή Αύξηση & Δύναμη';

  @override
  String get onboard_goal_energy => 'Καθημερινή Ενέργεια & Ζωτικότητα';

  @override
  String get onboard_goal_habits => 'Υγιεινή Ενσυνείδητη Διατροφή';

  @override
  String get onboard_about_you => 'Πείτε μας για τον εαυτό σας';

  @override
  String get onboard_lifestyle => 'Η καθημερινή σας ρουτίνα';

  @override
  String get onboard_permissions_title => 'Δικαιώματα και πρόσβαση στο σύστημα';

  @override
  String get onboard_permissions_sub =>
      'Παραχωρήστε πρόσβαση σε βήματα συγχρονισμού, προπονήσεις και υπενθυμίσεις.';

  @override
  String get onboard_plan_ready_title =>
      'Το προσαρμοσμένο σας σχέδιο είναι έτοιμο!';

  @override
  String get onboard_plan_ready_sub =>
      'Δημιουργήσαμε έναν ήπιο, εξατομικευμένο οδικό χάρτη διατροφής και ευεξίας μόνο για εσάς.';

  @override
  String get onboard_enter_bloomi => 'Μπείτε στο Bloomi';

  @override
  String get insights_weekly_report => 'Εβδομαδιαία Ανακεφαλαίωση Ευεξίας';

  @override
  String insights_best_day(Object day) {
    return 'Καλύτερη Ημέρα Συνέπειας: $day';
  }

  @override
  String get insights_streaks_badges => 'Streaks & Milestones';

  @override
  String insights_unlocked_on(Object date) {
    return 'Ξεκλείδωτο στις $date';
  }

  @override
  String get insights_keep_going => 'Συνεχίστε τη φανταστική πρόοδο!';

  @override
  String get widgets_title => 'Γραφικά στοιχεία αρχικής οθόνης';

  @override
  String widgets_active_count(Object count) {
    return 'Ενεργά γραφικά στοιχεία: $count';
  }

  @override
  String get widgets_hub_title => 'Bloomi Wellness Hub';

  @override
  String get widgets_steps_title => 'Steps & Active Ring';

  @override
  String get widgets_water_title => 'Γρήγορη καταγραφή ενυδάτωσης';

  @override
  String get widgets_mascot_title => 'Bloomi Mascot Companion';

  @override
  String get wear_os_title => 'Φορέστε Smartwatch OS';

  @override
  String get wear_os_connected => 'Συνδέθηκε με το ρολόι';

  @override
  String get wear_os_sync => 'Συγχρονισμός δεδομένων ρολογιού';

  @override
  String get theme_title => 'Εμφάνιση & Θέμα';

  @override
  String get theme_mode => 'Λειτουργία θέματος';

  @override
  String get theme_light => 'Φως';

  @override
  String get theme_dark => 'Σκοτάδι';

  @override
  String get theme_system => 'Σύστημα';

  @override
  String get theme_background_palette => 'Παλέτα φόντου';

  @override
  String get units_title => 'Μονάδες Μέτρησης';

  @override
  String get units_metric => 'Μετρική (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load =>
      'Δεν είναι δυνατή η φόρτωση του πίνακα ελέγχου';

  @override
  String get home_health_permission_req => 'Απαιτείται άδεια Health Connect';

  @override
  String get home_health_permission_desc =>
      'Το Bloomi απαιτεί άδεια Health Connect για να τραβήξει πραγματικά βήματα, καρδιακούς παλμούς και να συγχρονίσει widget για κινητά σπίτια σε πραγματικό χρόνο.';

  @override
  String get home_allow_health => 'Επιτρέψτε το Health Connect';

  @override
  String get home_ready_mindful_day => 'Έτοιμοι για μια συνειδητή μέρα; ✨';

  @override
  String get home_quick_add => 'Γρήγορη προσθήκη';

  @override
  String get home_live_gps => 'Ζωντανό GPS';

  @override
  String get home_calories_remaining_label => 'ΘΕΡΜΙΔΕΣ ΠΟΥ ΥΠΟΜΕΝΟΥΝ';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Καταναλώθηκε: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Tap for Water Tracker 💧';

  @override
  String get home_water_goal_reached => 'Ο ημερήσιος στόχος επιτεύχθηκε 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml στον ημερήσιο στόχο';
  }

  @override
  String get home_details => 'Λεπτομέρειες';

  @override
  String get home_upgrade_plan_desc =>
      'Αναβαθμίστε για να ξεκλειδώσετε εξατομικευμένους καθημερινούς στόχους και σχέδιο AI';

  @override
  String get home_unlock => 'Ξεκλείδωμα 👑';

  @override
  String get home_quick_log_hint => 'Καταγράψτε γρήγορα μια καταχώριση ευεξίας';

  @override
  String get food_serving_size => 'Μέγεθος σερβιρίσματος';

  @override
  String get food_serving_grams => 'Σερβίρισμα (g)';

  @override
  String get food_number_servings => 'Αριθμός Μερίδων';

  @override
  String get food_calories_per_serving => 'Θερμίδες ανά μερίδα';

  @override
  String get food_recipe_ingredients => 'Συστατικά';

  @override
  String get food_recipe_add_ingredient => 'Προσθέστε Συστατικό';

  @override
  String get food_recipe_directions => 'Οδηγίες & Σημειώσεις';

  @override
  String get food_recipe_total => 'Ολική Διατροφή Συνταγών';

  @override
  String get food_recipe_per_serving => 'Διατροφή ανά μερίδα';

  @override
  String get food_recipe_saved_toast =>
      'Το προσαρμοσμένο φαγητό αποθηκεύτηκε με επιτυχία!';

  @override
  String get food_barcode_found => 'Το προϊόν βρέθηκε!';

  @override
  String get food_barcode_not_found_desc =>
      'Δεν μπορέσαμε να βρούμε αυτόν τον γραμμωτό κώδικα στην ανοιχτή βάση δεδομένων. Μπορείτε να το προσθέσετε ως προσαρμοσμένο φαγητό.';

  @override
  String get food_add_custom_btn => 'Προσθέστε προσαρμοσμένο φαγητό';

  @override
  String get food_scan_again => 'Σάρωση ξανά';

  @override
  String get food_review_items => 'Ελέγξτε τα ανιχνευμένα τρόφιμα';

  @override
  String get food_review_hint =>
      'Προσαρμόστε τις ποσότητες ή αφαιρέστε οποιοδήποτε μη αναγνωρισμένο στοιχείο';

  @override
  String get food_log_selected => 'Καταγραφή επιλεγμένων τροφίμων';

  @override
  String get food_favourites_title => 'Αγαπημένα φαγητά';

  @override
  String get food_recent_title => 'Πρόσφατα τρόφιμα';

  @override
  String get food_no_favourites =>
      'Δεν υπάρχουν ακόμα αγαπημένα φαγητά. Πατήστε καρδιά σε οποιοδήποτε φαγητό για αποθήκευση εδώ.';

  @override
  String get food_no_recents => 'Δεν βρέθηκαν πρόσφατα καταχωρημένα τρόφιμα.';

  @override
  String get food_nutrition_details_title => 'Στοιχεία Καθημερινής Διατροφής';

  @override
  String get food_macro_protein_label => 'Διάσπαση Πρωτεϊνών';

  @override
  String get food_macro_carbs_label => 'Διάσπαση υδατανθράκων';

  @override
  String get food_macro_fat_label => 'Διάσπαση λίπους';

  @override
  String get food_macro_fiber_label => 'Διάσπαση ινών';

  @override
  String get food_daily_target_comparison => 'Σύγκριση στόχων';

  @override
  String food_target_label(Object target) {
    return 'Στόχος: $target';
  }

  @override
  String get food_edit_entry => 'Επεξεργασία καταχώρισης ημερολογίου';

  @override
  String get food_delete_entry => 'Διαγραφή Καταχώρισης';

  @override
  String food_grams_short(Object grams) {
    return '$grams g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '$kcal kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current από $target ml';
  }

  @override
  String get water_intake_history => 'Οι σημερινοί κορμοί νερού';

  @override
  String get water_no_logs_today =>
      'Δεν έχει καταγραφεί νερό ακόμη σήμερα. Ενυδατώστε και πατήστε ένα κουμπί γρήγορης προσθήκης!';

  @override
  String get water_adjust_goal => 'Προσαρμογή ημερήσιου στόχου';

  @override
  String get health_connect_banner => 'Συνδέθηκε στο Health Connect';

  @override
  String get health_vitals_summary =>
      'Καθημερινά ζωτικά στοιχεία για την υγεία';

  @override
  String get health_latest_heart_rate => 'Τελευταίος καρδιακός ρυθμός';

  @override
  String get health_latest_bp => 'Αρτηριακή Πίεση';

  @override
  String get health_latest_spo2 => 'Οξυγόνο αίματος';

  @override
  String get health_latest_glucose => 'Γλυκόζη αίματος';

  @override
  String get health_latest_weight => 'Βάρος';

  @override
  String get health_latest_sleep => 'Διάρκεια ύπνου';

  @override
  String get health_add_manual => 'Προσθήκη χειροκίνητης μέτρησης';

  @override
  String get health_history_trends => 'Ιστορικές Τάσεις';

  @override
  String get health_sync_success =>
      'Τα δεδομένα υγείας συγχρονίστηκαν με επιτυχία!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours ώρες $mins λεπτά';
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
  String get health_devices_title =>
      'Συνδεδεμένες συσκευές και φορητές συσκευές';

  @override
  String get health_devices_desc =>
      'Διαχειριστείτε συζευγμένα έξυπνα ρολόγια, ιχνηλάτες φυσικής κατάστασης και αισθητήρες υγείας.';

  @override
  String get health_workout_editor_title => 'Επεξεργασία προπόνησης';

  @override
  String get health_workout_name_label => 'Όνομα προπόνησης';

  @override
  String get health_workout_duration_label => 'Διάρκεια (λεπτά)';

  @override
  String get health_workout_calories_label => 'Εκτιμώμενες θερμίδες (kcal)';

  @override
  String get health_workout_date_label => 'Ημερομηνία και ώρα';

  @override
  String get plan_daily_wellness_roadmap =>
      'Ο εξατομικευμένος οδικός σας χάρτης';

  @override
  String get plan_morning_routine => 'Πρωινή ρουτίνα';

  @override
  String get plan_afternoon_routine => 'Μεσημεριανή ευεξία';

  @override
  String get plan_evening_routine => 'Βραδινό Wind-Down';

  @override
  String get plan_coach_badge => 'Bloomi AI Coach';

  @override
  String get plan_weekly_overview => 'Εστίαση ευεξίας 7 ημερών';

  @override
  String get plan_targets_title => 'Στόχοι & Στόχοι Ευεξίας';

  @override
  String get plan_calorie_budget_label => 'Ημερήσιος προϋπολογισμός θερμίδων';

  @override
  String get plan_water_budget_label => 'Ημερήσιος στόχος νερού';

  @override
  String get plan_step_budget_label => 'Στόχος Ημερήσιου Βήματος';

  @override
  String get plan_macro_split_label => 'Αναλογία μακροθρεπτικών συστατικών';

  @override
  String get profile_personal_details => 'Προσωπικά Στοιχεία';

  @override
  String get profile_body_stats => 'Μετρήσεις Σώματος';

  @override
  String get profile_app_preferences => 'Προτιμήσεις & Ρυθμίσεις εφαρμογών';

  @override
  String get profile_edit_name_hint => 'Το όνομά σου';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Ύψος ( $unit )';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Βάρος ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Ηλικία';

  @override
  String get profile_gender_male => 'Αρσενικό';

  @override
  String get profile_gender_female => 'Θηλυκό';

  @override
  String get profile_gender_other => 'Άλλα / Προτιμήστε να μην πω';

  @override
  String get profile_activity_sedentary =>
      'Καθιστική άσκηση (λίγη έως καθόλου άσκηση)';

  @override
  String get profile_activity_light => 'Ελαφρώς ενεργό (1-3 ημέρες/εβδομάδα)';

  @override
  String get profile_activity_moderate => 'Μέτρια ενεργό (3-5 ημέρες/εβδομάδα)';

  @override
  String get profile_activity_very => 'Πολύ δραστήριο (6-7 ημέρες/εβδομάδα)';

  @override
  String get settings_wear_os_header => 'Εφαρμογή Wear OS Companion';

  @override
  String get settings_wear_os_desc =>
      'Εγκαταστήστε το πλακίδιο Bloomi και το complication στο ρολόι Wear OS για να δείτε τις θερμίδες, το νερό και τα βήματα.';

  @override
  String get settings_widgets_header => 'Διαδραστικά γραφικά στοιχεία Android';

  @override
  String get settings_widgets_desc =>
      'Καρφιτσώστε γραφικά στοιχεία σε πραγματικό χρόνο στην αρχική οθόνη της συσκευής σας για άμεσες ενημερώσεις.';

  @override
  String get settings_about_header => 'Σχετικά με την Bloomi';

  @override
  String get settings_about_version => 'Εκδοχή';

  @override
  String get settings_about_build => 'Κατασκευή 100';

  @override
  String get settings_about_credits =>
      'Φτιαγμένο με φροντίδα για προσεκτική, υγιεινή ζωή.';

  @override
  String get settings_terms_header => 'Όροι και Προϋποθέσεις';

  @override
  String get settings_privacy_header => 'Πολιτική Απορρήτου';

  @override
  String get settings_delete_header => 'Διαγραφή λογαριασμού & δεδομένων';

  @override
  String get settings_delete_warning =>
      'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Όλα τα γεύματα, οι προπονήσεις, τα ζωτικά και το προφίλ σας θα διαγραφούν οριστικά.';

  @override
  String get settings_delete_confirm_btn => 'Οριστική διαγραφή';

  @override
  String get onboard_welcome_headline => 'Καλώς ήρθατε στο Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Απαλή, προσεκτική παρακολούθηση ευεξίας σχεδιασμένη γύρω από τη ζωή σας.';

  @override
  String get onboard_step_about => 'Σχετικά με εσάς';

  @override
  String get onboard_step_goals => 'Οι στόχοι σας';

  @override
  String get onboard_step_lifestyle => 'Καθημερινές Συνήθειες';

  @override
  String get onboard_step_permissions => 'Άδειες';

  @override
  String get onboard_step_plan => 'Έτοιμοι!';

  @override
  String get onboard_health_connect_perm => 'Health Connect Access';

  @override
  String get onboard_step_sensors_perm => 'Αισθητήρας μετρητή βημάτων';

  @override
  String get onboard_notif_perm => 'Ενσυνείδητες υπενθυμίσεις και ειδοποιήσεις';

  @override
  String get onboard_camera_perm =>
      'Κάμερα (γραμμωτός κώδικας και σαρωτής φαγητού)';

  @override
  String get onboard_grant_permissions => 'Εκχώρηση αδειών';

  @override
  String get onboard_continue_dashboard => 'Ανοίξτε τον πίνακα ελέγχου';

  @override
  String get notif_channel_hydration_name => 'Ενυδάτωση Nudges';

  @override
  String get notif_channel_hydration_desc =>
      'Απαλές υπενθυμίσεις νερού όλη την ημέρα';

  @override
  String get notif_channel_nutrition_name =>
      'Υπενθυμίσεις Γευμάτων & Διατροφής';

  @override
  String get notif_channel_nutrition_desc =>
      'Ειδοποιήσεις υπενθύμισης πρωινού, μεσημεριανού και βραδινού γεύματος';

  @override
  String get notif_channel_steps_name => 'Βήμα ορόσημα';

  @override
  String get notif_channel_steps_desc =>
      'Γιορτές για την επίτευξη καθημερινών στόχων βημάτων';

  @override
  String get notif_channel_vitals_name => 'Έλεγχοι υγείας και ζωτικής σημασίας';

  @override
  String get notif_channel_vitals_desc =>
      'Υπενθυμίσεις για το βάρος και την ώρα του ύπνου';

  @override
  String get notif_action_log_water => '💧 Κορμός +250ml';

  @override
  String get notif_action_snooze => 'Αναβολή 15μ';

  @override
  String get notif_action_log_meal => '🥗 Γεύμα κορμού';

  @override
  String get language => 'Γλώσσα';

  @override
  String get share => 'Μερίδιο';

  @override
  String common_days(Object count) {
    return 'πριν από ${count}d';
  }
}
