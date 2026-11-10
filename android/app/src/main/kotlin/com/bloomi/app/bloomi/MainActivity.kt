package com.bloomi.app.bloomi

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.net.Uri
import android.os.Build
import android.os.SystemClock
import android.provider.Settings
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale
import kotlin.math.max

class MainActivity : FlutterActivity(), SensorEventListener {
    private val settingsChannelName = "com.bloomi.app/settings"
    private val sensorChannelName = "com.bloomi.app/sensors"

    private var sensorManager: SensorManager? = null
    private var stepCounterSensor: Sensor? = null
    private var stepDetectorSensor: Sensor? = null

    private val prefsName = "bloomi_hardware_step_prefs"
    private val keyLastDate = "key_last_step_date"
    private val keyBaselineSteps = "key_baseline_steps"
    private val keyTotalBootSteps = "key_total_boot_steps"
    private val keyDetectorStepsToday = "key_detector_steps_today"
    private val keyStepsBeforeRebootToday = "key_steps_before_reboot_today"
    private val keyLastRecordedBootSteps = "key_last_recorded_boot_steps"

    private fun getPrefs(): SharedPreferences {
        return getSharedPreferences(prefsName, Context.MODE_PRIVATE)
    }

    private fun getTodayDateString(): String {
        return SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date())
    }

    private fun getMidnightMillis(): Long {
        return Calendar.getInstance().apply {
            set(Calendar.HOUR_OF_DAY, 0)
            set(Calendar.MINUTE, 0)
            set(Calendar.SECOND, 0)
            set(Calendar.MILLISECOND, 0)
        }.timeInMillis
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Initialize Android hardware step sensors
        sensorManager = getSystemService(Context.SENSOR_SERVICE) as? SensorManager
        stepCounterSensor = sensorManager?.getDefaultSensor(Sensor.TYPE_STEP_COUNTER)
        stepDetectorSensor = sensorManager?.getDefaultSensor(Sensor.TYPE_STEP_DETECTOR)

        stepCounterSensor?.let {
            sensorManager?.registerListener(this, it, SensorManager.SENSOR_DELAY_UI)
        }
        stepDetectorSensor?.let {
            sensorManager?.registerListener(this, it, SensorManager.SENSOR_DELAY_UI)
        }

        // Hardware sensor channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, sensorChannelName).setMethodCallHandler { call, result ->
            when (call.method) {
                "getTodaySteps" -> {
                    try {
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
                            sensorManager?.flush(this)
                        }
                    } catch (_: Exception) {}
                    result.success(calculateTodayHardwareSteps())
                }
                "isStepSensorAvailable" -> {
                    val available = (stepCounterSensor != null) || (stepDetectorSensor != null)
                    result.success(available)
                }
                else -> result.notImplemented()
            }
        }

        // Android Home Screen App Widget channel
        val widgetChannelName = "com.bloomi.app/widgets"
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, widgetChannelName).setMethodCallHandler { call, result ->
            when (call.method) {
                "updateWidgetData" -> {
                    try {
                        val themeMode = call.argument<String>("themeMode") ?: "system"
                        val appBackground = call.argument<String>("appBackground") ?: "pure"
                        val isDarkMode = call.argument<Boolean>("isDarkMode") ?: false

                        val calories = call.argument<String>("calories") ?: "0 kcal"
                        val caloriesSub = call.argument<String>("caloriesSub") ?: "remaining today"
                        val water = call.argument<String>("water") ?: "💧 0 ml"
                        val stepsKm = call.argument<String>("stepsKm") ?: "👟 0.0 km"
                        val streak = call.argument<String>("streak") ?: "🌱 Day 1"
                        val stepsRaw = call.argument<String>("stepsRaw") ?: "0 steps"
                        val distanceRaw = call.argument<String>("distanceRaw") ?: "0.0 km walked"
                        val carbs = call.argument<String>("carbs") ?: "🍞 0g"
                        val protein = call.argument<String>("protein") ?: "🍗 0g"
                        val fat = call.argument<String>("fat") ?: "🥑 0g"
                        val bpm = call.argument<String>("bpm") ?: "💓 72 bpm"
                        val waterTarget = call.argument<String>("waterTarget") ?: "/ 2,500 ml"
                        val waterRemaining = call.argument<String>("waterRemaining") ?: "remaining today"
                        val activeBurned = call.argument<String>("activeBurned") ?: "🔥 Active Energy"

                        // Detailed widget keys matching preview UI
                        val stepsCount = call.argument<String>("steps_count") ?: "0"
                        val stepsTarget = call.argument<String>("steps_target") ?: "/ 10000 target"
                        val stepsPercent = call.argument<String>("steps_percent") ?: "0%"
                        val stepsProgress = call.argument<Int>("steps_progress") ?: 0
                        val stepsDistance = call.argument<String>("steps_distance") ?: "📏 0.0 km"
                        val stepsCalories = call.argument<String>("steps_calories") ?: "🔥 0 kcal"

                        val waterAmount = call.argument<String>("water_amount") ?: "0"
                        val waterTargetStr = call.argument<String>("water_target") ?: "ml / 2500 ml"
                        val waterPercent = call.argument<String>("water_percent") ?: "0%"
                        val waterProgress = call.argument<Int>("water_progress") ?: 0
                        val waterGlasses = call.argument<String>("water_glasses") ?: "🥛 0 / 10 glasses"
                        val waterRemainingStr = call.argument<String>("water_remaining") ?: "2500 ml left"

                        val weatherTempCond = call.argument<String>("weather_temp_cond") ?: "28°C · Pleasant"
                        val hubLocation = call.argument<String>("hub_location") ?: "Local Area"
                        val aqiBadge = call.argument<String>("aqi_badge") ?: "AQI 42"
                        val uvBadge = call.argument<String>("uv_badge") ?: "UV 3"
                        val hubStepsVal = call.argument<String>("hub_steps_val") ?: "0"
                        val hubStepsGoal = call.argument<String>("hub_steps_goal") ?: "/ 10000 goal"
                        val hubStepsProgress = call.argument<Int>("hub_steps_progress") ?: 0
                        val hubWaterVal = call.argument<String>("hub_water_val") ?: "0 ml"
                        val hubWaterGoal = call.argument<String>("hub_water_goal") ?: "/ 2500 ml goal"
                        val hubWaterProgress = call.argument<Int>("hub_water_progress") ?: 0
                        val hubCaloriesVal = call.argument<String>("hub_calories_val") ?: "0 / 2000 kcal"
                        val hubCaloriesProgress = call.argument<Int>("hub_calories_progress") ?: 0
                        val hubProtein = call.argument<String>("hub_protein") ?: "0g"
                        val hubCarbs = call.argument<String>("hub_carbs") ?: "0g"
                        val hubFat = call.argument<String>("hub_fat") ?: "0g"
                        val hubFibre = call.argument<String>("hub_fibre") ?: "0g"

                        val prefs = getSharedPreferences(BloomiBaseWidgetProvider.PREFS_NAME, Context.MODE_PRIVATE)
                        prefs.edit()
                            .putString("theme_mode", themeMode)
                            .putString("app_background", appBackground)
                            .putBoolean("is_dark_mode", isDarkMode)
                            .putString(BloomiBaseWidgetProvider.KEY_CALORIES, calories)
                            .putString(BloomiBaseWidgetProvider.KEY_CALORIES_SUB, caloriesSub)
                            .putString(BloomiBaseWidgetProvider.KEY_WATER, water)
                            .putString(BloomiBaseWidgetProvider.KEY_STEPS_KM, stepsKm)
                            .putString(BloomiBaseWidgetProvider.KEY_STREAK, streak)
                            .putString(BloomiBaseWidgetProvider.KEY_STEPS_RAW, stepsRaw)
                            .putString(BloomiBaseWidgetProvider.KEY_DISTANCE_RAW, distanceRaw)
                            .putString(BloomiBaseWidgetProvider.KEY_CARBS, carbs)
                            .putString(BloomiBaseWidgetProvider.KEY_PROTEIN, protein)
                            .putString(BloomiBaseWidgetProvider.KEY_FAT, fat)
                            .putString(BloomiBaseWidgetProvider.KEY_BPM, bpm)
                            .putString("widget_water_target", waterTarget)
                            .putString("widget_water_remaining", waterRemaining)
                            .putString("widget_active_burned", activeBurned)
                            // Preview-matching UI keys
                            .putString("steps_count", stepsCount)
                            .putString("steps_target", stepsTarget)
                            .putString("steps_percent", stepsPercent)
                            .putInt("steps_progress", stepsProgress)
                            .putString("steps_distance", stepsDistance)
                            .putString("steps_calories", stepsCalories)
                            .putString("water_amount", waterAmount)
                            .putString("water_target", waterTargetStr)
                            .putString("water_percent", waterPercent)
                            .putInt("water_progress", waterProgress)
                            .putString("water_glasses", waterGlasses)
                            .putString("water_remaining", waterRemainingStr)
                            .putString("weather_temp_cond", weatherTempCond)
                            .putString("hub_location", hubLocation)
                            .putString("aqi_badge", aqiBadge)
                            .putString("uv_badge", uvBadge)
                            .putString("hub_steps_val", hubStepsVal)
                            .putString("hub_steps_goal", hubStepsGoal)
                            .putInt("hub_steps_progress", hubStepsProgress)
                            .putString("hub_water_val", hubWaterVal)
                            .putString("hub_water_goal", hubWaterGoal)
                            .putInt("hub_water_progress", hubWaterProgress)
                            .putString("hub_calories_val", hubCaloriesVal)
                            .putInt("hub_calories_progress", hubCaloriesProgress)
                            .putString("hub_protein", hubProtein)
                            .putString("hub_carbs", hubCarbs)
                            .putString("hub_fat", hubFat)
                            .putString("hub_fibre", hubFibre)
                            .apply()

                        BloomiBaseWidgetProvider.updateAllRegisteredWidgets(this)
                        result.success(true)
                    } catch (e: Exception) {
                        result.error("WIDGET_ERROR", e.localizedMessage, null)
                    }
                }
                "isPinSupported" -> {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                        val appWidgetManager = getSystemService(android.appwidget.AppWidgetManager::class.java)
                        result.success(appWidgetManager?.isRequestPinAppWidgetSupported == true)
                    } else {
                        result.success(false)
                    }
                }
                "pinWidget" -> {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                        val appWidgetManager = getSystemService(android.appwidget.AppWidgetManager::class.java)
                        if (appWidgetManager?.isRequestPinAppWidgetSupported == true) {
                            val widgetType = call.argument<String>("widgetType") ?: "overview"
                            val providerClass = when (widgetType.lowercase()) {
                                "steps", "activity" -> BloomiStepsWidgetProvider::class.java
                                "water", "hydration" -> BloomiWaterWidgetProvider::class.java
                                "nutrition", "macros" -> BloomiNutritionWidgetProvider::class.java
                                "mascot" -> BloomiMascotWidgetProvider::class.java
                                else -> BloomiAppWidgetProvider::class.java
                            }
                            val myProvider = ComponentName(this, providerClass)
                            appWidgetManager.requestPinAppWidget(myProvider, null, null)
                            result.success(true)
                        } else {
                            result.success(false)
                        }
                    } else {
                        result.success(false)
                    }
                }
                else -> result.notImplemented()
            }
        }

        // Settings intent channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, settingsChannelName).setMethodCallHandler { call, result ->
            when (call.method) {
                "openAppPermissionSettings" -> {
                    try {
                        val intent = Intent("android.intent.action.MANAGE_APP_PERMISSIONS").apply {
                            putExtra(Intent.EXTRA_PACKAGE_NAME, packageName)
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                        startActivity(intent)
                        result.success(true)
                    } catch (e: Exception) {
                        openAppDetailsFallback()
                        result.success(true)
                    }
                }
                "openNotificationSettings" -> {
                    try {
                        val intent = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                            Intent(Settings.ACTION_APP_NOTIFICATION_SETTINGS).apply {
                                putExtra(Settings.EXTRA_APP_PACKAGE, packageName)
                                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            }
                        } else {
                            Intent("android.settings.APP_NOTIFICATION_SETTINGS").apply {
                                putExtra("app_package", packageName)
                                putExtra("app_uid", applicationInfo.uid)
                                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            }
                        }
                        startActivity(intent)
                        result.success(true)
                    } catch (e: Exception) {
                        openAppDetailsFallback()
                        result.success(true)
                    }
                }
                "openBatteryOptimizationSettings" -> {
                    try {
                        val intent = Intent(Settings.ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS).apply {
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                        startActivity(intent)
                        result.success(true)
                    } catch (e: Exception) {
                        openAppDetailsFallback()
                        result.success(true)
                    }
                }
                "openLocationSettings" -> {
                    try {
                        val intent = Intent(Settings.ACTION_LOCATION_SOURCE_SETTINGS).apply {
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                        startActivity(intent)
                        result.success(true)
                    } catch (e: Exception) {
                        openAppDetailsFallback()
                        result.success(true)
                    }
                }
                "openHealthConnectSettings" -> {
                    try {
                        val intent = Intent("androidx.health.ACTION_HEALTH_CONNECT_SETTINGS").apply {
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                        startActivity(intent)
                        result.success(true)
                    } catch (e1: Exception) {
                        try {
                            val intent = packageManager.getLaunchIntentForPackage("com.google.android.apps.healthdata")
                            if (intent != null) {
                                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                startActivity(intent)
                                result.success(true)
                            } else {
                                openAppDetailsFallback()
                                result.success(true)
                            }
                        } catch (e2: Exception) {
                            openAppDetailsFallback()
                            result.success(true)
                        }
                    }
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun calculateTodayHardwareSteps(): Int {
        val prefs = getPrefs()
        val today = getTodayDateString()
        val lastDate = prefs.getString(keyLastDate, "") ?: ""

        val totalBootSteps = prefs.getInt(keyTotalBootSteps, 0)
        var baseline = prefs.getInt(keyBaselineSteps, 0)
        var stepsBeforeReboot = prefs.getInt(keyStepsBeforeRebootToday, 0)
        val detectorSteps = prefs.getInt(keyDetectorStepsToday, 0)

        if (today != lastDate) {
            val lastRecorded = prefs.getInt(keyLastRecordedBootSteps, 0)
            val bootTime = System.currentTimeMillis() - SystemClock.elapsedRealtime()
            val startOfToday = getMidnightMillis()

            if (bootTime >= startOfToday) {
                // Device was booted today: all boot steps belong to today
                baseline = 0
            } else if (lastRecorded > 0) {
                // Baseline is the last known boot count from previous day
                baseline = lastRecorded
            } else {
                baseline = totalBootSteps
            }
            stepsBeforeReboot = 0

            prefs.edit()
                .putString(keyLastDate, today)
                .putInt(keyBaselineSteps, baseline)
                .putInt(keyStepsBeforeRebootToday, 0)
                .putInt(keyDetectorStepsToday, 0)
                .apply()
        }

        if (stepCounterSensor != null && totalBootSteps > 0) {
            if (baseline == 0 && lastDate.isEmpty()) {
                // If it's the very first time reading and phone was booted before today,
                // set baseline to totalBootSteps so historical boot steps don't falsely show today
                val bootTime = System.currentTimeMillis() - SystemClock.elapsedRealtime()
                val startOfToday = getMidnightMillis()
                if (bootTime < startOfToday) {
                    baseline = totalBootSteps
                    prefs.edit()
                        .putString(keyLastDate, today)
                        .putInt(keyBaselineSteps, baseline)
                        .apply()
                }
            }
            if (totalBootSteps < baseline) {
                // Phone rebooted: accumulate previous count and rebase
                stepsBeforeReboot += max(0, baseline)
                baseline = 0
                prefs.edit()
                    .putInt(keyBaselineSteps, 0)
                    .putInt(keyStepsBeforeRebootToday, stepsBeforeReboot)
                    .apply()
            }
            val counterSteps = stepsBeforeReboot + max(0, totalBootSteps - baseline)
            val result = max(counterSteps, detectorSteps)
            return result.coerceIn(0, 100000)
        }

        return detectorSteps
    }

    override fun onSensorChanged(event: SensorEvent?) {
        if (event == null) return
        val prefs = getPrefs()
        val today = getTodayDateString()
        val lastDate = prefs.getString(keyLastDate, "") ?: ""

        if (event.sensor.type == Sensor.TYPE_STEP_COUNTER) {
            val totalBoot = event.values[0].toInt()
            var baseline = prefs.getInt(keyBaselineSteps, 0)
            var stepsBeforeReboot = prefs.getInt(keyStepsBeforeRebootToday, 0)
            val lastRecorded = prefs.getInt(keyLastRecordedBootSteps, 0)

            val editor = prefs.edit()
            editor.putInt(keyTotalBootSteps, totalBoot)
            editor.putInt(keyLastRecordedBootSteps, totalBoot)

            val bootTime = System.currentTimeMillis() - SystemClock.elapsedRealtime()
            val startOfToday = getMidnightMillis()

            if (today != lastDate) {
                if (bootTime >= startOfToday) {
                    baseline = 0
                } else if (lastRecorded > 0) {
                    baseline = lastRecorded
                } else {
                    baseline = totalBoot
                }
                stepsBeforeReboot = 0
                editor.putString(keyLastDate, today)
                editor.putInt(keyBaselineSteps, baseline)
                editor.putInt(keyStepsBeforeRebootToday, 0)
                editor.putInt(keyDetectorStepsToday, 0)
            } else if (totalBoot < baseline) {
                // Phone rebooted mid-day: preserve steps accumulated prior to reboot
                stepsBeforeReboot += max(0, lastRecorded - baseline)
                baseline = 0
                editor.putInt(keyBaselineSteps, 0)
                editor.putInt(keyStepsBeforeRebootToday, stepsBeforeReboot)
            } else if (baseline == 0 && totalBoot > 0 && lastDate.isEmpty()) {
                // First launch on device
                if (bootTime >= startOfToday) {
                    baseline = 0
                } else {
                    baseline = totalBoot
                }
                editor.putString(keyLastDate, today)
                editor.putInt(keyBaselineSteps, baseline)
            }
            editor.apply()
        } else if (event.sensor.type == Sensor.TYPE_STEP_DETECTOR) {
            var detectorSteps = prefs.getInt(keyDetectorStepsToday, 0)
            val editor = prefs.edit()
            if (today != lastDate) {
                detectorSteps = 1
                editor.putString(keyLastDate, today)
                editor.putInt(keyDetectorStepsToday, 1)
            } else {
                detectorSteps += 1
                editor.putInt(keyDetectorStepsToday, detectorSteps)
            }
            editor.apply()
        }
    }

    override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) {}

    override fun onDestroy() {
        super.onDestroy()
        sensorManager?.unregisterListener(this)
    }

    private fun openAppDetailsFallback() {
        try {
            val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS).apply {
                data = Uri.fromParts("package", packageName, null)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            startActivity(intent)
        } catch (_: Exception) {}
    }
}
