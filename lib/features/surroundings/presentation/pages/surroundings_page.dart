import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/utils/app_settings_helper.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/offline_banner.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/surroundings/domain/entities/surroundings_entity.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SurroundingsPage extends StatefulWidget {
  const SurroundingsPage({super.key});

  @override
  State<SurroundingsPage> createState() => _SurroundingsPageState();
}

class _SurroundingsPageState extends State<SurroundingsPage>
    with WidgetsBindingObserver {
  static bool _hasShownLocationReloadToast = false;
  SurroundingsEntity? _data;
  bool _isLoading = true;
  bool _isRefreshing = false;
  String? _error;

  bool _hasLocationPermission = false;
  bool _isLocationServiceEnabled = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkPermissionsAndLoad(forceRefresh: false, isUserInitiatedReload: false);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkPermissionsAndLoad(forceRefresh: true, isUserInitiatedReload: false);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> _checkAndShowLocationToastOnce() async {
    if (_hasShownLocationReloadToast) return;
    try {
      final prefs = sl.isRegistered<SharedPreferences>()
          ? sl<SharedPreferences>()
          : await SharedPreferences.getInstance();
      final alreadyShown =
          prefs.getBool('bloomi_has_shown_location_reload_toast') ?? false;
      if (alreadyShown) {
        _hasShownLocationReloadToast = true;
        return;
      }
      _hasShownLocationReloadToast = true;
      await prefs.setBool('bloomi_has_shown_location_reload_toast', true);
      if (mounted) {
        BloomiToast.show(
          context,
          message:
              'Location permission is disabled. Please enable it manually in Settings for local weather.',
        );
      }
    } catch (_) {}
  }

  Future<void> _checkPermissionsAndLoad({
    bool forceRefresh = false,
    bool isUserInitiatedReload = false,
  }) async {
    setState(() {
      if (forceRefresh) {
        _isRefreshing = true;
      } else {
        _isLoading = true;
      }
      _error = null;
    });

    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      final perm = await Geolocator.checkPermission();
      final isGranted = perm == LocationPermission.always ||
          perm == LocationPermission.whileInUse;

      if (mounted) {
        setState(() {
          _isLocationServiceEnabled = serviceEnabled;
          _hasLocationPermission = isGranted;
        });
      }

      // If permission is not granted or GPS is disabled, still attempt to load
      // cached / last-known surroundings data so the user isn't blocked by a blank screen
      if (!isGranted || !serviceEnabled) {
        if (isUserInitiatedReload && !isGranted) {
          await _checkAndShowLocationToastOnce();
        }
        final cachedData = await sl<SurroundingsRepository>()
            .getSurroundingsData(forceRefresh: false);
        if (mounted) {
          setState(() {
            _data = cachedData;
            _isLoading = false;
            _isRefreshing = false;
          });
        }
        return;
      }

      final res = await sl<SurroundingsRepository>()
          .getSurroundingsData(forceRefresh: forceRefresh);
      if (mounted) {
        setState(() {
          _data = res;
          _isLoading = false;
          _isRefreshing = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
          _isRefreshing = false;
        });
      }
    }
  }

  Future<void> _requestLocationPermission() async {
    final status = await Permission.locationWhenInUse.request();
    if (!mounted) return;
    if (status.isGranted) {
      BloomiToast.show(context, message: 'Location permission granted! ✨');
      await _checkPermissionsAndLoad(forceRefresh: true);
    } else if (status.isPermanentlyDenied) {
      if (!mounted) return;
      await BloomiDialog.show<void>(
        context,
        title: 'Location Settings Required',
        content:
            'Location permission is permanently denied. Please enable Location in your device settings to view live weather and air quality for your area.',
        confirmLabel: 'Open Settings',
        cancelLabel: 'Cancel',
        onConfirm: () async {
          await AppSettingsHelper.openLocationSettings();
        },
      );
    } else {
      if (!mounted) return;
      BloomiToast.show(
        context,
        message: 'Location access is required to display live surroundings.',
      );
    }
  }

  Future<void> _handleOpenLocationSettings() async {
    await AppSettingsHelper.openLocationSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          context.tr('surroundings_title'),
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: _isRefreshing
                ? SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: context.appInk,
                    ),
                  )
                : Icon(CupertinoIcons.arrow_clockwise, color: context.appInk),
            tooltip: context.tr('surroundings_refresh'),
            onPressed: _isRefreshing
                ? null
                : () => _checkPermissionsAndLoad(
                      forceRefresh: true,
                      isUserInitiatedReload: true,
                    ),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: AppColors.mint))
          : _data != null
              ? RefreshIndicator(
                  color: AppColors.mint,
                  onRefresh: () =>
                      _checkPermissionsAndLoad(forceRefresh: true),
                  child: _buildContent(_data!),
                )
              : !_hasLocationPermission
                  ? _buildPermissionRequiredView()
                  : !_isLocationServiceEnabled
                      ? _buildGpsDisabledView()
                      : _error != null
                          ? _buildErrorView()
                          : _buildLocationUnavailableView(),
    );
  }

  /// Permission status card when user has not granted location permission
  Widget _buildPermissionRequiredView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: AppColors.peach.withAlpha(50),
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.location_slash,
                size: 52,
                color: context.isDarkMode ? const Color(0xFFF87171) : const Color(0xFFDC2626),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              'Location Permission Required',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Baloo 2',
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: context.appInk,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              'Live surroundings, air quality (AQI), and UV index are paused because location permission is not granted. Please enable location permission to view conditions for your village, area, or city.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                color: context.appSlate,
                height: 1.4,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            PillButton(
              label: 'Allow Location Access',
              icon: CupertinoIcons.location_north_fill,
              variant: PillButtonVariant.primary,
              height: 50,
              onPressed: _requestLocationPermission,
            ),
          ],
        ),
      ),
    );
  }

  /// GPS Disabled card when location permission is allowed but phone GPS switch is OFF
  Widget _buildGpsDisabledView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: AppColors.butter.withAlpha(80),
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.location_slash,
                size: 52,
                color: context.isDarkMode ? const Color(0xFFFBBF24) : const Color(0xFFD97706),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              'Device Location (GPS) is Off',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Baloo 2',
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: context.appInk,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              'Please turn on GPS / Location in your phone settings to detect your surroundings and fetch real-time environmental data for your area.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                color: context.appSlate,
                height: 1.4,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            PillButton(
              label: 'Turn On Location (GPS)',
              icon: CupertinoIcons.settings,
              variant: PillButtonVariant.primary,
              height: 50,
              onPressed: _handleOpenLocationSettings,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.wifi_slash, size: 48, color: context.appSlate),
            const SizedBox(height: AppSpacing.md),
            const Text(
              'Could not load weather info',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            const SizedBox(height: 6),
            Text(
              'Check your internet connection and try again.',
              style: TextStyle(color: context.appSlate, fontSize: 13),
            ),
            const SizedBox(height: AppSpacing.lg),
            PillButton(
              label: 'Retry',
              variant: PillButtonVariant.primary,
              onPressed: () => _checkPermissionsAndLoad(forceRefresh: true),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationUnavailableView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: AppColors.butter.withAlpha(80),
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.scope,
                size: 52,
                color: context.isDarkMode ? const Color(0xFFFBBF24) : const Color(0xFFD97706),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              'Location Unavailable',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Baloo 2',
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: context.appInk,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              'Unable to detect your current location. Please verify your GPS signal and tap below to try again.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                color: context.appSlate,
                height: 1.4,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            PillButton(
              label: 'Detect Location',
              icon: CupertinoIcons.arrow_clockwise,
              variant: PillButtonVariant.primary,
              height: 50,
              onPressed: () => _checkPermissionsAndLoad(forceRefresh: true),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(SurroundingsEntity data) {
    final dateStr = DateFormat('h:mm a · MMM d').format(data.fetchedAt);

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        if (!_isLocationServiceEnabled || !_hasLocationPermission) ...[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: context.isDarkMode ? const Color(0xFF452B05) : AppColors.butter.withAlpha(120),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: context.isDarkMode ? const Color(0xFFB45309) : const Color(0xFFF59E0B).withAlpha(100), width: 1.5),
            ),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.location_slash,
                  size: 20,
                  color: context.isDarkMode ? const Color(0xFFFBBF24) : const Color(0xFFD97706),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    !_isLocationServiceEnabled
                        ? 'Location is turned off · Showing last known weather for ${data.locationDisplayName}'
                        : 'Location access paused · Showing last known conditions for ${data.locationDisplayName}',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: !_isLocationServiceEnabled
                      ? _handleOpenLocationSettings
                      : _requestLocationPermission,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    !_isLocationServiceEnabled ? 'Turn On' : 'Allow',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                      color: context.isDarkMode ? const Color(0xFFFDE68A) : const Color(0xFFB45309),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),
        ] else if (data.isFromCache) ...[
          OfflineBanner(
            message: 'Showing cached conditions from $dateStr',
          ),
          const SizedBox(height: AppSpacing.md),
        ],

        // Real Location Area Name Badge (No raw coordinates!)
        Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: 12),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            boxShadow: context.appCardShadow,
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.mint.withAlpha(50),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  CupertinoIcons.location_solid,
                  size: 20,
                  color: context.appInk,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Area',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: context.appSlate,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      data.locationDisplayName,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: context.appInk,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: (data.isFromCache ? AppColors.butter : AppColors.mint).withAlpha(60),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      data.isFromCache ? CupertinoIcons.clock_fill : CupertinoIcons.bolt,
                      size: 14,
                      color: context.appInk,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      data.isFromCache ? 'Saved Location' : 'Live GPS',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: context.appInk,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),

        // Hero Weather Card
        Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            boxShadow: context.appCardShadow,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data.temperatureC.round()}°C',
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w900,
                        fontSize: 52,
                        color: context.appInk,
                        height: 1.0,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      data.weatherDescription,
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: context.appInk,
                      ),
                    ),
                    Text(
                      'Feels like ${data.feelsLikeC.round()}°C',
                      style: TextStyle(
                        fontSize: 13,
                        color: context.appSlate,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  color: AppColors.butter,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  data.weatherIcon,
                  size: 46,
                  color: context.appInk,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),

        // Air Quality & Pollutants Detailed Card
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            boxShadow: context.appCardShadow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(CupertinoIcons.wind, color: AppColors.sky, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        'Air Quality Index (AQI)',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: context.appInk,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: data.aqiColor.withAlpha(50),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: data.aqiColor.withAlpha(120)),
                    ),
                    child: Text(
                      '${data.aqi} · ${data.aqiLabel}',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                        color: data.aqiColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: context.appBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('PM2.5',
                              style: TextStyle(fontSize: 11, color: context.appSlate)),
                          const SizedBox(height: 2),
                          Text(
                            '${data.pm25.toStringAsFixed(1)} µg/m³',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: context.appBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('PM10',
                              style: TextStyle(fontSize: 11, color: context.appSlate)),
                          const SizedBox(height: 2),
                          Text(
                            '${data.pm10.toStringAsFixed(1)} µg/m³',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),

        // Atmospheric 3-Column Metrics: UV, Humidity, Wind
        Row(
          children: [
            Expanded(
              child: _buildMetricTile(
                title: 'UV Index',
                value: data.uvIndex.toStringAsFixed(1),
                subtitle: data.uvLabel,
                icon: CupertinoIcons.sun_max,
                bgColor: AppColors.peach.withAlpha(50),
                borderColor: AppColors.peach,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: _buildMetricTile(
                title: 'Humidity',
                value: '${data.humidityPercent}%',
                subtitle: _getHumidityLabel(data.humidityPercent),
                icon: CupertinoIcons.drop,
                bgColor: AppColors.sky.withAlpha(50),
                borderColor: AppColors.sky,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: _buildMetricTile(
                title: 'Wind',
                value: '${data.windSpeedKmH.round()}',
                subtitle: 'km/h',
                icon: CupertinoIcons.wind,
                bgColor: AppColors.mint.withAlpha(50),
                borderColor: AppColors.mint,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),

        // Extra Water Callout if High Heat
        if (data.extraWaterMl > 0) ...[
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.sky.withAlpha(40),
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
              border: Border.all(color: AppColors.sky.withAlpha(120)),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: AppColors.sky, shape: BoxShape.circle),
                  child: Icon(CupertinoIcons.drop_fill,
                      color: context.appInk, size: 22),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Warm Weather: +${data.extraWaterMl} ml Target',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 14, color: context.appInk),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Hydration goal boosted automatically for your well-being today! 💧',
                        style: TextStyle(fontSize: 12, color: context.appSlate),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.md),
        ],

        // Mindful Environmental Guidance & Tips
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
            boxShadow: context.appCardShadow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(CupertinoIcons.lightbulb_fill, color: AppColors.mint, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Surroundings & Health Guidance',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: context.appInk,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              ...data.kindnessTips.map((tip) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('🌱 ', style: TextStyle(fontSize: 14)),
                        Expanded(
                          child: Text(
                            tip,
                            style: TextStyle(
                              fontSize: 13,
                              color: context.appInk,
                              height: 1.4,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.sm),

        // Non-medical advice disclaimer
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Text(
            'Informational environmental data via Open-Meteo & GPS. Not medical advice.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 11, color: context.appSlate, fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }

  Widget _buildMetricTile({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color bgColor,
    required Color borderColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
        border: Border.all(color: borderColor.withAlpha(100)),
      ),
      child: Column(
        children: [
          Icon(icon, size: 20, color: context.appInk),
          const SizedBox(height: 6),
          Text(
            title,
            style: TextStyle(
                fontSize: 11, color: context.appSlate, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Baloo 2',
              fontWeight: FontWeight.w800,
              fontSize: 18,
              color: context.appInk,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w700, color: context.appSlate),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  String _getHumidityLabel(int hum) {
    if (hum < 30) return 'Dry';
    if (hum <= 60) return 'Comfort';
    return 'Humid';
  }
}
