package com.bloomi.app.bloomi

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.content.res.Configuration
import android.graphics.Color
import android.widget.RemoteViews

open class BloomiBaseWidgetProvider : AppWidgetProvider() {

    override fun onUpdate(context: Context, appWidgetManager: AppWidgetManager, appWidgetIds: IntArray) {
        for (appWidgetId in appWidgetIds) {
            updateWidget(context, appWidgetManager, appWidgetId)
        }
    }

    override fun onReceive(context: Context, intent: Intent) {
        super.onReceive(context, intent)
        val action = intent.action
        if (action == Intent.ACTION_CONFIGURATION_CHANGED ||
            action == Intent.ACTION_SCREEN_ON ||
            action == AppWidgetManager.ACTION_APPWIDGET_UPDATE) {
            updateAllRegisteredWidgets(context)
        }
    }

    open fun updateWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
        BloomiAppWidgetProvider.updateAppWidget(context, appWidgetManager, appWidgetId)
    }

    companion object {
        const val PREFS_NAME = "bloomi_widget_prefs"
        const val KEY_CALORIES = "widget_calories"
        const val KEY_CALORIES_SUB = "widget_calories_sub"
        const val KEY_WATER = "widget_water"
        const val KEY_STEPS_KM = "widget_steps_km"
        const val KEY_STREAK = "widget_streak"
        const val KEY_STEPS_RAW = "widget_steps_raw"
        const val KEY_DISTANCE_RAW = "widget_distance_raw"
        const val KEY_CARBS = "widget_carbs"
        const val KEY_PROTEIN = "widget_protein"
        const val KEY_FAT = "widget_fat"
        const val KEY_BPM = "widget_bpm"

        fun getLaunchIntent(context: Context): PendingIntent {
            val intent = Intent(context, MainActivity::class.java).apply {
                flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP
            }
            return PendingIntent.getActivity(
                context,
                0,
                intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
        }

        fun resolveIsDark(context: Context, prefs: SharedPreferences): Boolean {
            val themeMode = prefs.getString("theme_mode", "system") ?: "system"
            val isSystemNight = (context.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES
            return when (themeMode.lowercase()) {
                "dark" -> true
                "light" -> false
                else -> isSystemNight
            }
        }

        fun getWidgetColors(context: Context, prefs: SharedPreferences): WidgetThemeColors {
            val isDark = resolveIsDark(context, prefs)

            val primaryText: Int
            val secondaryText: Int

            if (isDark) {
                primaryText = Color.parseColor("#F8FAFC")
                secondaryText = Color.parseColor("#94A3B8")
            } else {
                primaryText = Color.parseColor("#1F2A37")
                secondaryText = Color.parseColor("#64748B")
            }

            return WidgetThemeColors(
                isDark = isDark,
                primaryText = primaryText,
                secondaryText = secondaryText
            )
        }

        fun updateAllRegisteredWidgets(context: Context) {
            val appWidgetManager = AppWidgetManager.getInstance(context)

            // 1. Overview
            val overviewComp = ComponentName(context, BloomiAppWidgetProvider::class.java)
            for (id in appWidgetManager.getAppWidgetIds(overviewComp)) {
                BloomiAppWidgetProvider.updateAppWidget(context, appWidgetManager, id)
            }

            // 2. Steps
            val stepsComp = ComponentName(context, BloomiStepsWidgetProvider::class.java)
            for (id in appWidgetManager.getAppWidgetIds(stepsComp)) {
                BloomiStepsWidgetProvider.updateStepsWidget(context, appWidgetManager, id)
            }

            // 3. Water
            val waterComp = ComponentName(context, BloomiWaterWidgetProvider::class.java)
            for (id in appWidgetManager.getAppWidgetIds(waterComp)) {
                BloomiWaterWidgetProvider.updateWaterWidget(context, appWidgetManager, id)
            }

            // 4. Nutrition
            val nutritionComp = ComponentName(context, BloomiNutritionWidgetProvider::class.java)
            for (id in appWidgetManager.getAppWidgetIds(nutritionComp)) {
                BloomiNutritionWidgetProvider.updateNutritionWidget(context, appWidgetManager, id)
            }

            // 5. Mascot
            val mascotComp = ComponentName(context, BloomiMascotWidgetProvider::class.java)
            for (id in appWidgetManager.getAppWidgetIds(mascotComp)) {
                BloomiMascotWidgetProvider.updateMascotWidget(context, appWidgetManager, id)
            }
        }
    }
}

data class WidgetThemeColors(
    val isDark: Boolean,
    val primaryText: Int,
    val secondaryText: Int
)

class BloomiAppWidgetProvider : BloomiBaseWidgetProvider() {
    override fun updateWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
        updateAppWidget(context, appWidgetManager, appWidgetId)
    }

    companion object {
        fun updateAppWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
            val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            val colors = getWidgetColors(context, prefs)

            // Surroundings
            val weatherTempCond = prefs.getString("weather_temp_cond", "28°C · Pleasant") ?: "28°C · Pleasant"
            val hubLocation = prefs.getString("hub_location", "Local Area") ?: "Local Area"
            val aqiBadge = prefs.getString("aqi_badge", "AQI 42") ?: "AQI 42"
            val uvBadge = prefs.getString("uv_badge", "UV 3") ?: "UV 3"

            // Steps section
            val hubStepsVal = prefs.getString("hub_steps_val", "0") ?: "0"
            val hubStepsGoal = prefs.getString("hub_steps_goal", "/ 10000 goal") ?: "/ 10000 goal"
            val hubStepsProgress = prefs.getInt("hub_steps_progress", 0)

            // Water section
            val hubWaterVal = prefs.getString("hub_water_val", "0 ml") ?: "0 ml"
            val hubWaterGoal = prefs.getString("hub_water_goal", "/ 2500 ml goal") ?: "/ 2500 ml goal"
            val hubWaterProgress = prefs.getInt("hub_water_progress", 0)

            // Nutrients & calories section
            val hubCaloriesVal = prefs.getString("hub_calories_val", "0 / 2000 kcal") ?: "0 / 2000 kcal"
            val hubCaloriesProgress = prefs.getInt("hub_calories_progress", 0)
            val hubProtein = prefs.getString("hub_protein", "0g") ?: "0g"
            val hubCarbs = prefs.getString("hub_carbs", "0g") ?: "0g"
            val hubFat = prefs.getString("hub_fat", "0g") ?: "0g"
            val hubFibre = prefs.getString("hub_fibre", "0g") ?: "0g"

            val views = RemoteViews(context.packageName, R.layout.bloomi_widget_layout).apply {
                setTextViewText(R.id.widget_weather_temp_cond, weatherTempCond)
                setInt(R.id.widget_weather_temp_cond, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_location, hubLocation)
                setInt(R.id.widget_location, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_aqi_badge, aqiBadge)
                setTextViewText(R.id.widget_uv_badge, uvBadge)

                setTextViewText(R.id.widget_hub_steps_val, hubStepsVal)
                setInt(R.id.widget_hub_steps_val, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_hub_steps_goal, hubStepsGoal)
                setInt(R.id.widget_hub_steps_goal, "setTextColor", colors.secondaryText)
                setProgressBar(R.id.widget_hub_steps_progress, 100, hubStepsProgress, false)

                setTextViewText(R.id.widget_hub_water_val, hubWaterVal)
                setInt(R.id.widget_hub_water_val, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_hub_water_goal, hubWaterGoal)
                setInt(R.id.widget_hub_water_goal, "setTextColor", colors.secondaryText)
                setProgressBar(R.id.widget_hub_water_progress, 100, hubWaterProgress, false)

                setTextViewText(R.id.widget_hub_calories_val, hubCaloriesVal)
                setInt(R.id.widget_hub_calories_val, "setTextColor", colors.primaryText)
                setProgressBar(R.id.widget_hub_calories_progress, 100, hubCaloriesProgress, false)

                setTextViewText(R.id.widget_hub_protein_val, hubProtein)
                setInt(R.id.widget_hub_protein_val, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_hub_carbs_val, hubCarbs)
                setInt(R.id.widget_hub_carbs_val, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_hub_fat_val, hubFat)
                setInt(R.id.widget_hub_fat_val, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_hub_fibre_val, hubFibre)
                setInt(R.id.widget_hub_fibre_val, "setTextColor", colors.secondaryText)

                setOnClickPendingIntent(R.id.widget_root, getLaunchIntent(context))
            }

            appWidgetManager.updateAppWidget(appWidgetId, views)
        }

        fun updateAllWidgets(context: Context) {
            updateAllRegisteredWidgets(context)
        }
    }
}

class BloomiStepsWidgetProvider : BloomiBaseWidgetProvider() {
    override fun updateWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
        updateStepsWidget(context, appWidgetManager, appWidgetId)
    }

    companion object {
        fun updateStepsWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
            val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            val colors = getWidgetColors(context, prefs)

            val stepsCount = prefs.getString("steps_count", "0") ?: "0"
            val stepsTarget = prefs.getString("steps_target", "/ 10000 target") ?: "/ 10000 target"
            val stepsPercent = prefs.getString("steps_percent", "0%") ?: "0%"
            val stepsProgress = prefs.getInt("steps_progress", 0)
            val stepsDistance = prefs.getString("steps_distance", "📏 0.0 km") ?: "📏 0.0 km"
            val stepsCalories = prefs.getString("steps_calories", "🔥 0 kcal") ?: "🔥 0 kcal"

            val views = RemoteViews(context.packageName, R.layout.bloomi_widget_steps).apply {
                setTextViewText(R.id.widget_steps_title, "Step Counter")
                setInt(R.id.widget_steps_title, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_steps_count, stepsCount)
                setInt(R.id.widget_steps_count, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_steps_target, stepsTarget)
                setInt(R.id.widget_steps_target, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_steps_percent, stepsPercent)

                setProgressBar(R.id.widget_steps_progress, 100, stepsProgress, false)

                setTextViewText(R.id.widget_steps_distance, stepsDistance)
                setInt(R.id.widget_steps_distance, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_steps_calories, stepsCalories)
                setInt(R.id.widget_steps_calories, "setTextColor", colors.secondaryText)

                setOnClickPendingIntent(R.id.widget_steps_root, getLaunchIntent(context))
            }
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}

class BloomiWaterWidgetProvider : BloomiBaseWidgetProvider() {
    override fun updateWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
        updateWaterWidget(context, appWidgetManager, appWidgetId)
    }

    companion object {
        fun updateWaterWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
            val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            val colors = getWidgetColors(context, prefs)

            val waterAmount = prefs.getString("water_amount", "0") ?: "0"
            val waterTarget = prefs.getString("water_target", "ml / 2500 ml") ?: "ml / 2500 ml"
            val waterPercent = prefs.getString("water_percent", "0%") ?: "0%"
            val waterProgress = prefs.getInt("water_progress", 0)
            val waterGlasses = prefs.getString("water_glasses", "🥛 0 / 10 glasses") ?: "🥛 0 / 10 glasses"
            val waterRemaining = prefs.getString("water_remaining", "2500 ml left") ?: "2500 ml left"

            val views = RemoteViews(context.packageName, R.layout.bloomi_widget_water).apply {
                setTextViewText(R.id.widget_water_title, "Hydration Tracker")
                setInt(R.id.widget_water_title, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_water_amount, waterAmount)
                setInt(R.id.widget_water_amount, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_water_target, waterTarget)
                setInt(R.id.widget_water_target, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_water_percent, waterPercent)

                setProgressBar(R.id.widget_water_progress, 100, waterProgress, false)

                setTextViewText(R.id.widget_water_glasses, waterGlasses)
                setInt(R.id.widget_water_glasses, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_water_remaining, waterRemaining)
                setInt(R.id.widget_water_remaining, "setTextColor", colors.secondaryText)

                setOnClickPendingIntent(R.id.widget_water_root, getLaunchIntent(context))
            }
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}

class BloomiNutritionWidgetProvider : BloomiBaseWidgetProvider() {
    override fun updateWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
        updateNutritionWidget(context, appWidgetManager, appWidgetId)
    }

    companion object {
        fun updateNutritionWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
            val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            val colors = getWidgetColors(context, prefs)

            val calories = prefs.getString(KEY_CALORIES, "0 kcal") ?: "0 kcal"
            val carbs = prefs.getString(KEY_CARBS, "🍞 0g") ?: "🍞 0g"
            val protein = prefs.getString(KEY_PROTEIN, "🍗 0g") ?: "🍗 0g"
            val fat = prefs.getString(KEY_FAT, "🥑 0g") ?: "🥑 0g"

            val views = RemoteViews(context.packageName, R.layout.bloomi_widget_nutrition).apply {
                setTextViewText(R.id.widget_nutrition_calories, calories)
                setInt(R.id.widget_nutrition_calories, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_nutrition_target, "/ 2,000 target")
                setInt(R.id.widget_nutrition_target, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_nutrition_remaining, "Remaining")
                setInt(R.id.widget_nutrition_remaining, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_carbs_val, carbs)
                setInt(R.id.widget_carbs_val, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_protein_val, protein)
                setInt(R.id.widget_protein_val, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_fat_val, fat)
                setInt(R.id.widget_fat_val, "setTextColor", colors.secondaryText)

                setOnClickPendingIntent(R.id.widget_nutrition_root, getLaunchIntent(context))
            }
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}

class BloomiMascotWidgetProvider : BloomiBaseWidgetProvider() {
    override fun updateWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
        updateMascotWidget(context, appWidgetManager, appWidgetId)
    }

    companion object {
        fun updateMascotWidget(context: Context, appWidgetManager: AppWidgetManager, appWidgetId: Int) {
            val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            val colors = getWidgetColors(context, prefs)

            val streak = prefs.getString(KEY_STREAK, "🌱 Day 1") ?: "🌱 Day 1"

            val views = RemoteViews(context.packageName, R.layout.bloomi_widget_mascot).apply {
                setTextViewText(R.id.widget_mascot_status, "Cheerful & Happy! ✨")
                setInt(R.id.widget_mascot_status, "setTextColor", colors.primaryText)

                setTextViewText(R.id.widget_mascot_quote, "Take gentle steps today. You are doing wonderfully!")
                setInt(R.id.widget_mascot_quote, "setTextColor", colors.secondaryText)

                setTextViewText(R.id.widget_mascot_streak, streak)

                setOnClickPendingIntent(R.id.widget_mascot_root, getLaunchIntent(context))
            }
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}
