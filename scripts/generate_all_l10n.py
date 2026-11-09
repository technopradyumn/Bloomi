import os
import re
import json

def load_en():
    with open('assets/l10n/en.json', 'r', encoding='utf-8') as f:
        return json.load(f)

def load_language_codes():
    with open('lib/core/localization/app_languages.dart', 'r', encoding='utf-8') as f:
        content = f.read()
    pattern = re.compile(r"AppLanguage\(\s*code:\s*'([^']+)',\s*name:\s*'([^']+)'", re.DOTALL)
    matches = pattern.findall(content)
    return matches

def main():
    en = load_en()
    langs = load_language_codes()

    # Load legacy 14 languages from app_localizations.dart if it has old map
    legacy_map = {}
    if os.path.exists('lib/core/localization/app_localizations.dart'):
        with open('lib/core/localization/app_localizations.dart', 'r', encoding='utf-8') as f:
            c = f.read()
        lang_blocks = re.findall(r"'([a-zA-Z-]+)':\s*\{([^}]+)\}", c)
        for l_code, block in lang_blocks:
            pairs = re.findall(r"'([^']+)':\s*'([^']+)'", block)
            legacy_map[l_code.lower()] = dict(pairs)

    core_dicts = {
        "hi": {
            "app_name": "Bloomi", "nav_home": "होम", "nav_today": "आज", "nav_plan": "योजना",
            "nav_food": "आहार", "nav_food_diary": "फूड डायरी", "nav_workout": "कसरत", "nav_health": "स्वास्थ्य",
            "nav_profile": "प्रोफ़ाइल", "save": "सहेजें", "cancel": "रद्द करें", "delete": "हटाएं",
            "edit": "संपादित करें", "done": "पूर्ण", "close": "बंद करें", "back": "वापस",
            "next": "अगला", "continue_btn": "जारी रखें", "confirm": "पुष्टि करें", "search": "खोजें",
            "filter": "फ़िल्टर", "all": "सभी", "active": "सक्रिय", "today": "आज", "yesterday": "कल",
            "tomorrow": "कल", "add": "जोड़ें", "remove": "हटाएं", "refresh": "रीफ़्रेश", "retry": "पुनः प्रयास करें",
            "error": "त्रुटि", "success": "सफलता", "loading": "लोड हो रहा है...", "no_data": "कोई डेटा नहीं",
            "offline": "ऑफ़लाइन मोड", "offline_sub": "पुनः कनेक्ट होने पर सिंक होगा", "undo": "पूर्ववत करें",
            "calories": "कैलोरी", "protein": "प्रोटीन", "carbs": "कार्ब्स", "fat": "वसा", "fiber": "फाइबर",
            "water": "पानी", "steps": "कदम", "kcal": "किलो कैलोरी", "grams": "ग्राम", "milliliters": "मिलीलीटर",
            "kilograms": "किलोग्राम", "home_title": "होम", "home_greeting_morning": "शुभ प्रभात",
            "home_greeting_afternoon": "शुभ दोपहर", "home_greeting_evening": "शुभ संध्या",
            "home_streak_title": "ब्लॉसम स्ट्रीक",
            "home_streak_days": "{count, plural, =0{0 दिन स्ट्रीक} =1{1 दिन स्ट्रीक} other{{count} दिन स्ट्रीक}}",
            "home_calories_burned": "बर्न कैलोरी", "home_calories_budget": "कैलोरी बजट",
            "home_calories_remaining": "{kcal} किलो कैलोरी शेष", "home_water_title": "दैनिक जल सेवन",
            "home_water_goal": "{current} / {target} मिलीलीटर", "home_steps_title": "चले गए कदम",
            "home_quick_actions": "त्वरित क्रियाएं", "home_log_meal": "भोजन जोड़ें", "home_log_water": "पानी दर्ज करें",
            "home_log_workout": "कसरत दर्ज करें", "home_log_weight": "वजन दर्ज करें", "home_insights_title": "आज के विचार",
            "home_quote": "छोटे स्वस्थ निर्णय सुंदर बदलाव लाते हैं।", "home_ai_coach_tip": "Bloomi AI कोच",
            "home_surroundings": "आस-पास और वायु", "home_notifications": "सूचनाएं", "home_daily_score": "दैनिक स्वास्थ्य स्कोर",
            "home_view_all": "सभी देखें", "home_unable_load": "डैशबोर्ड लोड करने में असमर्थ",
            "home_ready_mindful_day": "एक सचेत दिन के लिए तैयार? ✨", "home_quick_add": "त्वरित जोड़ें",
            "home_live_gps": "लाइव जीपीएस", "home_calories_remaining_label": "कैलोरी शेष",
            "home_eaten_target": "खाया: {consumed} / {target} किलो कैलोरी", "home_tap_water_tracker": "जल ट्रैकर खोलें 💧",
            "home_water_goal_reached": "दैनिक लक्ष्य प्राप्त हुआ! 🎉", "home_water_to_daily_goal": "लक्ष्य तक {remaining} मिली शेष",
            "home_details": "विवरण", "food_diary_title": "फूड डायरी", "food_breakfast": "नाश्ता", "food_lunch": "दोपहर का भोजन",
            "food_dinner": "रात का भोजन", "food_snacks": "नाश्ता / स्नैक्स", "food_add_food": "भोजन जोड़ें",
            "food_edit_food": "भोजन संपादित करें", "food_total_calories": "कुल कैलोरी", "water_tracker_title": "जल ट्रैकर",
            "water_daily_target": "दैनिक जल लक्ष्य", "water_logged_today": "आज दर्ज किया गया",
            "water_add_glass": "+250 मिली गिलास", "water_add_bottle": "+500 मिली बोतल",
            "workout_title": "कसरत लॉग", "health_overview_title": "स्वास्थ्य और वाइटल्स", "plan_title": "दैनिक योजना",
            "profile_title": "प्रोफ़ाइल", "settings": "सेटिंग्स", "preferences_habits": "प्राथमिकताएं और आदतें",
            "appearance_theme": "दिखावट और थीम", "reminders_notifications": "रिमाइंडर और सूचनाएं",
            "units_of_measurement": "माप की इकाइयां", "app_language": "ऐप भाषा", "search_language": "भाषा खोजें...",
            "languages_available": "उपलब्ध भाषाएं", "partially_translated": "आंशिक रूप से अनुवादित",
            "complete_translation": "पूर्ण", "language_changed_toast": "भाषा बदलकर {name} ({nativeName}) कर दी गई"
        },
        "hinglish": {
            "app_name": "Bloomi", "nav_home": "Home", "nav_today": "Aaj", "nav_plan": "Plan",
            "nav_food": "Khaana", "nav_food_diary": "Food Diary", "nav_workout": "Workout",
            "nav_health": "Health", "nav_profile": "Profile", "save": "Save karein", "cancel": "Cancel",
            "delete": "Delete", "edit": "Edit", "done": "Done", "close": "Close", "back": "Back",
            "next": "Aage", "continue_btn": "Aage badhein", "confirm": "Confirm karein", "search": "Search karein",
            "filter": "Filter", "all": "Sabhi", "active": "Active", "today": "Aaj", "yesterday": "Kal",
            "tomorrow": "Kal", "add": "Add karein", "remove": "Hataayein", "refresh": "Refresh", "retry": "Try again",
            "error": "Error", "success": "Success", "loading": "Load ho raha hai...", "no_data": "Koi data nahi mila",
            "offline": "Offline Mode", "offline_sub": "Internet aate hi data sync ho jaayega", "undo": "Undo",
            "calories": "Calories", "protein": "Protein", "carbs": "Carbs", "fat": "Fat", "fiber": "Fiber",
            "water": "Paani", "steps": "Steps", "kcal": "kcal", "home_title": "Home",
            "home_greeting_morning": "Good Morning!", "home_greeting_afternoon": "Good Afternoon!",
            "home_greeting_evening": "Good Evening!", "home_streak_title": "Blossom Streak",
            "home_streak_days": "{count, plural, =0{0 din streak} =1{1 din streak} other{{count} din streak}}",
            "home_calories_burned": "Burned Calories", "home_calories_budget": "Calorie Budget",
            "home_calories_remaining": "{kcal} kcal bachi hain", "home_water_title": "Rozana Paani",
            "home_water_goal": "{current} / {target} ml", "home_steps_title": "Chale gaye Steps",
            "home_quick_actions": "Quick Actions", "home_log_meal": "Meal log karein",
            "home_log_water": "Paani log karein", "home_log_workout": "Workout log karein",
            "home_log_weight": "Weight log karein", "home_insights_title": "Aaj ke Tips",
            "home_quote": "Chhote healthy habits hi real change laate hain.", "home_ai_coach_tip": "Bloomi AI Coach",
            "home_surroundings": "Surroundings & Air", "home_notifications": "Notifications",
            "home_daily_score": "Daily Wellness Score", "home_view_all": "View All",
            "home_unable_load": "Dashboard load nahi hua", "home_ready_mindful_day": "Ready for a mindful day? ✨",
            "home_quick_add": "Quick Add", "home_live_gps": "Live GPS", "home_calories_remaining_label": "CALORIES REMAINING",
            "home_eaten_target": "Khaya: {consumed} / {target} kcal", "home_tap_water_tracker": "Water Tracker kholein 💧",
            "home_water_goal_reached": "Daily water goal pura hua! 🎉", "home_water_to_daily_goal": "{remaining} ml goal tak bacha hai",
            "home_details": "Details", "food_diary_title": "Food Diary", "food_breakfast": "Breakfast",
            "food_lunch": "Lunch", "food_dinner": "Dinner", "food_snacks": "Snacks", "food_add_food": "Khaana add karein",
            "food_edit_food": "Food edit karein", "food_total_calories": "Total Calories",
            "search_language": "Language search karein...", "languages_available": "Languages Available",
            "partially_translated": "Partially translated", "complete_translation": "Complete",
            "language_changed_toast": "Language set to {name} ({nativeName})", "water_tracker_title": "Water Tracker",
            "water_daily_target": "Daily Water Goal", "water_logged_today": "Aaj itna paani piya",
            "water_add_glass": "+250 ml Glass", "water_add_bottle": "+500 ml Bottle", "workout_title": "Workout Log",
            "health_overview_title": "Health & Vitals", "plan_title": "Daily Plan", "profile_title": "Profile",
            "settings": "Settings", "preferences_habits": "Preferences & Habits", "appearance_theme": "Appearance & Theme",
            "reminders_notifications": "Reminders & Notifications", "units_of_measurement": "Units of Measurement",
            "app_language": "App Language"
        },
        "es": {
            "app_name": "Bloomi", "nav_home": "Inicio", "nav_today": "Hoy", "nav_plan": "Plan",
            "nav_food": "Comida", "nav_food_diary": "Diario de Comidas", "nav_workout": "Entrenamientos",
            "nav_health": "Salud", "nav_profile": "Perfil", "save": "Guardar", "cancel": "Cancelar",
            "delete": "Eliminar", "edit": "Editar", "done": "Hecho", "close": "Cerrar", "back": "Atrás",
            "next": "Siguiente", "continue_btn": "Continuar", "confirm": "Confirmar", "search": "Buscar",
            "filter": "Filtrar", "all": "Todos", "active": "Activo", "today": "Hoy", "yesterday": "Ayer",
            "tomorrow": "Mañana", "add": "Añadir", "remove": "Quitar", "refresh": "Actualizar",
            "retry": "Reintentar", "error": "Error", "success": "Éxito", "loading": "Cargando...",
            "no_data": "Sin datos disponibles", "offline": "Modo sin conexión",
            "offline_sub": "Los cambios se sincronizarán al reconectar", "undo": "Deshacer",
            "calories": "Calorías", "protein": "Proteína", "carbs": "Carbohidratos", "fat": "Grasa",
            "fiber": "Fibra", "water": "Agua", "steps": "Pasos", "kcal": "kcal", "home_title": "Inicio",
            "home_greeting_morning": "Buenos Días", "home_greeting_afternoon": "Buenas Tardes",
            "home_greeting_evening": "Buenas Noches", "home_streak_title": "Racha Blossom",
            "home_streak_days": "{count, plural, =0{0 días de racha} =1{1 día de racha} other{{count} días de racha}}",
            "home_calories_burned": "Quemadas", "home_calories_budget": "Presupuesto Calórico",
            "home_calories_remaining": "{kcal} kcal restantes", "home_water_title": "Hidratación Diaria",
            "home_water_goal": "{current} / {target} ml", "home_steps_title": "Pasos Caminados",
            "home_quick_actions": "Acciones Rápidas", "home_log_meal": "Registrar Comida",
            "home_log_water": "Registrar Agua", "home_log_workout": "Registrar Ejercicio",
            "home_log_weight": "Registrar Peso", "home_insights_title": "Consejos de Hoy",
            "home_quote": "Las pequeñas decisiones saludables crean grandes transformaciones.",
            "home_ai_coach_tip": "Entrenador AI Bloomi", "home_surroundings": "Entorno y Aire",
            "home_notifications": "Notificaciones", "home_daily_score": "Puntuación de Bienestar",
            "home_view_all": "Ver Todo", "home_unable_load": "No se puede cargar el panel",
            "home_ready_mindful_day": "¿Listo para un día consciente? ✨", "home_quick_add": "Añadido Rápido",
            "home_live_gps": "GPS en Vivo", "home_calories_remaining_label": "CALORÍAS RESTANTES",
            "home_eaten_target": "Consumido: {consumed} / {target} kcal", "home_tap_water_tracker": "Toca para Control de Agua 💧",
            "home_water_goal_reached": "¡Meta diaria alcanzada! 🎉", "home_water_to_daily_goal": "{remaining} ml para la meta diaria",
            "home_details": "Detalles", "food_diary_title": "Diario de Comidas", "food_breakfast": "Desayuno",
            "food_lunch": "Almuerzo", "food_dinner": "Cena", "food_snacks": "Snacks", "food_add_food": "Añadir Comida",
            "food_edit_food": "Editar Comida", "food_total_calories": "Calorías Totales",
            "water_tracker_title": "Control de Agua", "workout_title": "Registro de Ejercicio",
            "health_overview_title": "Salud y Constantes", "plan_title": "Plan Diario", "profile_title": "Perfil",
            "settings": "Ajustes", "preferences_habits": "PREFERENCIAS Y HÁBITOS", "appearance_theme": "Apariencia y Tema",
            "reminders_notifications": "Recordatorios y Notificaciones", "units_of_measurement": "Unidades de Medida",
            "app_language": "Idioma de la Aplicación", "search_language": "Buscar idioma...",
            "languages_available": "Idiomas Disponibles", "partially_translated": "Parcialmente traducido",
            "complete_translation": "Completo", "language_changed_toast": "Idioma configurado a {name} ({nativeName})"
        },
        "ar": {
            "app_name": "Bloomi", "nav_home": "الرئيسية", "nav_today": "اليوم", "nav_plan": "الخطة",
            "nav_food": "الطعام", "nav_food_diary": "سجل الوجبات", "nav_workout": "سجل التمارين",
            "nav_health": "الصحة", "nav_profile": "الملف الشخصي", "save": "حفظ", "cancel": "إلغاء",
            "delete": "حذف", "edit": "تعديل", "done": "تم", "close": "إغلاق", "back": "رجوع",
            "next": "التالي", "continue_btn": "متابعة", "confirm": "تأكيد", "search": "بحث",
            "filter": "تصفية", "all": "الكل", "active": "نشط", "today": "اليوم", "yesterday": "أمس",
            "tomorrow": "غداً", "add": "إضافة", "remove": "إزالة", "refresh": "تحديث",
            "retry": "إعادة المحاولة", "error": "خطأ", "success": "نجاح", "loading": "جار التحميل...",
            "no_data": "لا تتوفر بيانات", "offline": "وضع عدم الاتصال",
            "offline_sub": "ستتم مزامنة التغييرات فور الاتصال", "undo": "تراجع", "calories": "السعرات",
            "protein": "البروتين", "carbs": "الكربوهيدرات", "fat": "الدهون", "fiber": "الألياف",
            "water": "الماء", "steps": "الخطوات", "kcal": "سعرة حرارية", "home_title": "الرئيسية",
            "home_greeting_morning": "صباح الخير", "home_greeting_afternoon": "مساء الخير",
            "home_greeting_evening": "مساء الخير", "home_streak_title": "سلسلة بلومي",
            "home_streak_days": "{count, plural, =0{0 أيام} =1{يوم واحد} other{{count} يوم}}",
            "home_calories_burned": "السعرات المحروقة", "home_calories_budget": "ميزانية السعرات",
            "home_calories_remaining": "{kcal} سعرة حرارية متبقية", "home_water_title": "الترطيب اليومي",
            "home_water_goal": "{current} / {target} مل", "home_steps_title": "الخطوات المنجزة",
            "home_quick_actions": "إجراءات سريعة", "home_log_meal": "تسجيل وجبة",
            "home_log_water": "تسجيل ماء", "home_log_workout": "تسجيل تمرين",
            "home_log_weight": "تسجيل وزن", "home_insights_title": "رؤى اليوم",
            "home_quote": "القرارات الصحية الصغيرة تصنع تحولات مذهلة.", "home_ai_coach_tip": "مدرب بلومي الذكي",
            "home_surroundings": "البيئة والجو", "home_notifications": "الإشعارات",
            "home_unable_load": "تعذر تحميل لوحة التحكم", "home_ready_mindful_day": "مستعد ليوم صحي متوازن؟ ✨",
            "home_quick_add": "إضافة سريعة", "home_live_gps": "نظام تحديد المواقع المباشر",
            "home_calories_remaining_label": "السعرات المتبقية",
            "home_eaten_target": "المستهلك: {consumed} / {target} سعرة حرارية",
            "home_tap_water_tracker": "اضغط لمتتبع الماء 💧", "home_water_goal_reached": "تم تحقيق الهدف اليومي! 🎉",
            "home_water_to_daily_goal": "{remaining} مل للوصول للهدف", "home_details": "التفاصيل",
            "food_diary_title": "سجل الوجبات", "food_breakfast": "الإفطار", "food_lunch": "الغداء",
            "food_dinner": "العشاء", "food_snacks": "وجبات خفيفة", "food_add_food": "إضافة طعام",
            "food_edit_food": "تعديل طعام", "food_total_calories": "إجمالي السعرات",
            "search_language": "ابحث عن لغة...", "languages_available": "اللغات المتاحة",
            "partially_translated": "مترجم جزئياً", "complete_translation": "مكتمل",
            "language_changed_toast": "تم ضبط اللغة إلى {name} ({nativeName})",
            "water_tracker_title": "متتبع شرب الماء", "workout_title": "سجل التمارين",
            "settings": "الإعدادات", "preferences_habits": "التفضيلات والعادات",
            "appearance_theme": "المظهر والسمة", "reminders_notifications": "التذكيرات والإشعارات",
            "units_of_measurement": "وحدات القياس", "app_language": "لغة التطبيق"
        },
        "zh-cn": {
            "app_name": "Bloomi", "nav_home": "首页", "nav_today": "今天", "nav_plan": "计划",
            "nav_food": "饮食", "nav_food_diary": "饮食日记", "nav_workout": "运动记录",
            "nav_health": "健康", "nav_profile": "个人资料", "save": "保存", "cancel": "取消",
            "delete": "删除", "edit": "编辑", "done": "完成", "close": "关闭", "back": "返回",
            "next": "下一步", "continue_btn": "继续", "confirm": "确认", "search": "搜索",
            "filter": "筛选", "all": "全部", "active": "活跃", "today": "今天", "yesterday": "昨天",
            "tomorrow": "明天", "add": "添加", "remove": "移除", "refresh": "刷新", "retry": "重试",
            "error": "错误", "success": "成功", "loading": "加载中...", "no_data": "暂无数据",
            "offline": "离线模式", "offline_sub": "重新联网后将自动同步", "calories": "卡路里",
            "protein": "蛋白质", "carbs": "碳水化合物", "fat": "脂肪", "fiber": "膳食纤维",
            "water": "水", "steps": "步数", "kcal": "千卡", "home_title": "首页",
            "home_greeting_morning": "早上好", "home_greeting_afternoon": "下午好",
            "home_greeting_evening": "晚上好", "home_streak_title": "绽放连续打卡",
            "home_streak_days": "{count, plural, =0{0天连续打卡} =1{1天连续打卡} other{{count}天连续打卡}}",
            "home_calories_burned": "已消耗", "home_calories_budget": "卡路里预算",
            "home_calories_remaining": "剩余 {kcal} 千卡", "home_water_title": "每日饮水",
            "home_water_goal": "{current} / {target} 毫升", "home_steps_title": "行走步数",
            "home_quick_actions": "快捷操作", "home_log_meal": "记录饮食", "home_log_water": "记录饮水",
            "home_log_workout": "记录运动", "home_log_weight": "记录体重", "home_insights_title": "今日洞察",
            "home_quote": "每一个健康的微小选择，都在悄悄改变人生。", "home_ai_coach_tip": "Bloomi AI健康教练",
            "home_surroundings": "环境与空气", "home_notifications": "通知", "home_daily_score": "每日健康评分",
            "home_view_all": "查看全部", "home_unable_load": "无法加载仪表盘",
            "home_ready_mindful_day": "开启充满活力的一天吧！✨", "home_quick_add": "快捷添加",
            "home_live_gps": "实时定位", "home_calories_remaining_label": "剩余卡路里",
            "home_eaten_target": "已摄入: {consumed} / {target} 千卡", "home_tap_water_tracker": "点击进入饮水记录 💧",
            "home_water_goal_reached": "已达成今日饮水目标！🎉", "home_water_to_daily_goal": "距离今日目标还差 {remaining} 毫升",
            "home_details": "详情", "food_diary_title": "饮食日记", "food_breakfast": "早餐",
            "food_lunch": "午餐", "food_dinner": "晚餐", "food_snacks": "加餐", "food_add_food": "添加食物",
            "food_edit_food": "编辑食物", "food_total_calories": "总卡路里", "search_language": "搜索语言...",
            "languages_available": "可用语言", "partially_translated": "部分翻译", "complete_translation": "已完成",
            "language_changed_toast": "已将语言设置为 {name} ({nativeName})", "water_tracker_title": "饮水追踪",
            "workout_title": "运动记录", "health_overview_title": "健康与体征", "plan_title": "每日计划",
            "profile_title": "个人资料", "settings": "设置", "preferences_habits": "偏好与习惯",
            "appearance_theme": "外观与主题", "reminders_notifications": "提醒与通知",
            "units_of_measurement": "计量单位", "app_language": "应用语言"
        },
        "ja": {
            "app_name": "Bloomi", "nav_home": "ホーム", "nav_today": "今日", "nav_plan": "プラン",
            "nav_food": "食事", "nav_food_diary": "食事日記", "nav_workout": "ワークアウト",
            "nav_health": "健康", "nav_profile": "プロフィール", "save": "保存", "cancel": "キャンセル",
            "delete": "削除", "edit": "編集", "done": "完了", "close": "閉じる", "back": "戻る",
            "next": "次へ", "continue_btn": "続ける", "confirm": "確認", "search": "検索",
            "filter": "フィルター", "all": "すべて", "active": "アクティブ", "today": "今日",
            "yesterday": "昨日", "tomorrow": "明日", "add": "追加", "remove": "削除",
            "refresh": "更新", "retry": "再試行", "error": "エラー", "success": "成功",
            "loading": "読み込み中...", "no_data": "データがありません", "offline": "オフラインモード",
            "offline_sub": "再接続時に自動的に同期されます", "calories": "カロリー",
            "protein": "タンパク質", "carbs": "炭水化物", "fat": "脂質", "fiber": "食物繊維",
            "water": "水分", "steps": "歩数", "kcal": "kcal", "home_title": "ホーム",
            "home_greeting_morning": "おはようございます", "home_greeting_afternoon": "こんにちは",
            "home_greeting_evening": "こんばんは", "home_streak_title": "ブロッサム連続記録",
            "home_streak_days": "{count, plural, =0{0日連続} =1{1日連続} other{{count}日連続}}",
            "home_calories_burned": "消費カロリー", "home_calories_budget": "カロリー目標",
            "home_calories_remaining": "残り {kcal} kcal", "home_water_title": "水分補給",
            "home_water_goal": "{current} / {target} ml", "home_steps_title": "歩数",
            "home_quick_actions": "クイックアクション", "home_log_meal": "食事を記録",
            "home_log_water": "水分を記録", "home_log_workout": "運動を記録",
            "home_log_weight": "体重を記録", "home_insights_title": "今日のアドバイス",
            "home_quote": "小さな健康習慣が大きな変化を生み出します。", "home_ai_coach_tip": "Bloomi AIコーチ",
            "home_surroundings": "環境と空気", "home_notifications": "通知", "home_daily_score": "ウェルネススコア",
            "home_view_all": "すべて表示", "home_unable_load": "ダッシュボードを読み込めません",
            "home_ready_mindful_day": "今日も心地よい一日を！✨", "home_quick_add": "クイック追加",
            "home_live_gps": "リアルタイムGPS", "home_calories_remaining_label": "残りのカロリー",
            "home_eaten_target": "摂取済み: {consumed} / {target} kcal", "home_tap_water_tracker": "水分トラッカーを開く 💧",
            "home_water_goal_reached": "目標水分量達成！🎉", "home_water_to_daily_goal": "目標まであと {remaining} ml",
            "home_details": "詳細", "food_diary_title": "食事日記", "food_breakfast": "朝食",
            "food_lunch": "昼食", "food_dinner": "夕食", "food_snacks": "間食", "food_add_food": "食事を追加",
            "food_edit_food": "食事を編集", "food_total_calories": "合計カロリー", "search_language": "言語を検索...",
            "languages_available": "利用可能な言語", "partially_translated": "一部翻訳済み",
            "complete_translation": "完了", "language_changed_toast": "言語を{name}（{nativeName}）に設定しました",
            "water_tracker_title": "水分記録", "workout_title": "ワークアウト記録",
            "health_overview_title": "健康＆バイタル", "plan_title": "デイリープラン",
            "profile_title": "プロフィール", "settings": "設定", "preferences_habits": "環境設定と習慣",
            "appearance_theme": "テーマと外観", "reminders_notifications": "リマインダーと通知",
            "units_of_measurement": "測定単位", "app_language": "アプリ言語"
        },
        "ru": {
            "app_name": "Bloomi", "nav_home": "Главная", "nav_today": "Сегодня", "nav_plan": "План",
            "nav_food": "Питание", "nav_food_diary": "Дневник питания", "nav_workout": "Тренировки",
            "nav_health": "Здоровье", "nav_profile": "Профиль", "save": "Сохранить", "cancel": "Отмена",
            "delete": "Удалить", "edit": "Изменить", "done": "Готово", "close": "Закрыть", "back": "Назад",
            "next": "Далее", "continue_btn": "Продолжить", "confirm": "Подтвердить", "search": "Поиск",
            "filter": "Фильтр", "all": "Все", "active": "Активно", "today": "Сегодня", "yesterday": "Вчера",
            "tomorrow": "Завтра", "add": "Добавить", "remove": "Удалить", "refresh": "Обновить",
            "retry": "Повторить", "error": "Ошибка", "success": "Успешно", "loading": "Загрузка...",
            "no_data": "Нет данных", "offline": "Автономный режим",
            "offline_sub": "Данные синхронизируются при подключении", "calories": "Калории",
            "protein": "Белки", "carbs": "Углеводы", "fat": "Жиры", "fiber": "Клетчатка",
            "water": "Вода", "steps": "Шаги", "kcal": "ккал", "home_title": "Главная",
            "home_greeting_morning": "Доброе утро", "home_greeting_afternoon": "Добрый день",
            "home_greeting_evening": "Добрый вечер", "home_streak_title": "Серия Bloomi",
            "home_streak_days": "{count, plural, =0{0 дней} =1{1 день} few{{count} дня} many{{count} дней} other{{count} дней}}",
            "home_calories_burned": "Сожжено", "home_calories_budget": "Дневная норма",
            "home_calories_remaining": "Осталось {kcal} ккал", "home_water_title": "Баланс воды",
            "home_water_goal": "{current} / {target} мл", "home_steps_title": "Пройдено шагов",
            "home_quick_actions": "Быстрые действия", "home_log_meal": "Записать прием пищи",
            "home_log_water": "Записать воду", "home_log_workout": "Записать тренировку",
            "home_log_weight": "Записать вес", "home_insights_title": "Советы на сегодня",
            "home_quote": "Маленькие здоровые привычки ведут к большим переменам.", "home_ai_coach_tip": "AI-тренер Bloomi",
            "home_surroundings": "Окружающая среда", "home_notifications": "Уведомления",
            "home_daily_score": "Индекс здоровья", "home_view_all": "Смотреть все",
            "home_unable_load": "Не удалось загрузить панель", "home_ready_mindful_day": "Готовы к новому дню? ✨",
            "home_quick_add": "Быстрое добавление", "home_live_gps": "GPS в реальном времени",
            "home_calories_remaining_label": "ОСТАЛОСЬ КАЛОРИЙ", "home_eaten_target": "Съедено: {consumed} / {target} ккал",
            "home_tap_water_tracker": "Нажмите для трекера воды 💧", "home_water_goal_reached": "Цель по воде достигнута! 🎉",
            "home_water_to_daily_goal": "Осталось {remaining} мл до цели", "home_details": "Детали",
            "food_diary_title": "Дневник питания", "food_breakfast": "Завтрак", "food_lunch": "Обед",
            "food_dinner": "Ужин", "food_snacks": "Перекусы", "food_add_food": "Добавить блюдо",
            "food_edit_food": "Изменить блюдо", "food_total_calories": "Всего калорий",
            "search_language": "Поиск языка...", "languages_available": "Доступные языки",
            "partially_translated": "Частичный перевод", "complete_translation": "Полный",
            "language_changed_toast": "Язык изменен на {name} ({nativeName})",
            "water_tracker_title": "Трекер воды", "workout_title": "Журнал тренировок",
            "health_overview_title": "Здоровье и показатели", "plan_title": "Дневной план",
            "profile_title": "Профиль", "settings": "Настройки", "preferences_habits": "ПРЕДПОЧТЕНИЯ И ПРИВЫЧКИ",
            "appearance_theme": "Внешний вид и тема", "reminders_notifications": "Напоминания и уведомления",
            "units_of_measurement": "Единицы измерения", "app_language": "Язык приложения"
        }
    }

    core_dicts["zh-tw"] = dict(core_dicts["zh-cn"])

    # Merge legacy into core_dicts
    for k, v in legacy_map.items():
        if k not in core_dicts:
            core_dicts[k] = {}
        core_dicts[k].update(v)

    os.makedirs('assets/l10n', exist_ok=True)
    manifest = {}

    for code, name in langs:
        clean_code = code.lower()
        file_path = f"assets/l10n/{clean_code}.json"
        
        lang_data = {}
        base_code = clean_code.split('-')[0]
        
        if clean_code in core_dicts:
            source = core_dicts[clean_code]
            for key in en.keys():
                lang_data[key] = source.get(key, en[key])
        elif base_code in core_dicts:
            source = core_dicts[base_code]
            for key in en.keys():
                lang_data[key] = source.get(key, en[key])
        else:
            for key in en.keys():
                lang_data[key] = en[key]

        translated_count = sum(1 for k, v in lang_data.items() if v != en[k]) if clean_code != 'en' else len(en)
        is_complete = clean_code == 'en' or translated_count >= 35
        status = "complete" if is_complete else "partial"

        with open(file_path, 'w', encoding='utf-8') as f:
            json.dump(lang_data, f, ensure_ascii=False, indent=2)

        manifest[clean_code] = {
            "code": code,
            "name": name,
            "status": status,
            "translatedCount": translated_count,
            "totalCount": len(en)
        }

    with open('assets/l10n/manifest.json', 'w', encoding='utf-8') as f:
        json.dump(manifest, f, ensure_ascii=False, indent=2)

    complete_c = sum(1 for m in manifest.values() if m['status'] == 'complete')
    partial_c = sum(1 for m in manifest.values() if m['status'] == 'partial')
    print(f"Generated {len(manifest)} JSON files in assets/l10n/.")
    print(f"Manifest written: {complete_c} complete, {partial_c} partial.")

if __name__ == '__main__':
    main()
