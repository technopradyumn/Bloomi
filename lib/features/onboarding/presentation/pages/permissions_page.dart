import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/utils/app_settings_helper.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/metric_animations/floating_onboarding_illustration.dart';
import 'package:bloomi/core/widgets/metric_animations/health_metric_animations.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/services/health/health_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionsPage extends StatefulWidget {
  final bool isStandalone;
  final VoidCallback? onNext;
  final VoidCallback? onBack;

  const PermissionsPage({
    super.key,
    this.isStandalone = false,
    this.onNext,
    this.onBack,
  });

  @override
  State<PermissionsPage> createState() => _PermissionsPageState();
}

class _PermissionsPageState extends State<PermissionsPage>
    with WidgetsBindingObserver {
  bool _healthConnectAllowed = false;
  bool _cameraAllowed = false;
  bool _locationAllowed = false;
  bool _microphoneAllowed = false;
  bool _notificationsAllowed = false;
  bool _activityRecognitionAllowed = false;
  bool _isRequestingHealth = false;
  bool _isRequestingAll = false;
  HealthConnectAvailability _healthAvailability =
      HealthConnectAvailability.available;

  int get _grantedCount {
    int count = 0;
    if (_healthConnectAllowed) count++;
    if (_cameraAllowed) count++;
    if (_locationAllowed) count++;
    if (_microphoneAllowed) count++;
    if (_notificationsAllowed) count++;
    if (_activityRecognitionAllowed) count++;
    return count;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkInitialPermissions();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkInitialPermissions();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> _checkInitialPermissions() async {
    HealthConnectAvailability healthAvail = _healthAvailability;
    bool hasHealth = _healthConnectAllowed;
    bool isCamGranted = _cameraAllowed;
    bool isLocGranted = _locationAllowed;
    bool isMicGranted = _microphoneAllowed;
    bool isNotifGranted = _notificationsAllowed;
    bool isActGranted = _activityRecognitionAllowed;

    try {
      healthAvail = await sl<HealthService>().checkHealthConnectAvailability();
    } catch (_) {}

    try {
      hasHealth = await sl<HealthService>().hasPermissions();
    } catch (_) {}

    try {
      final camStatus = await Permission.camera.status;
      isCamGranted = camStatus.isGranted;
    } catch (_) {}

    try {
      final locStatus = await Permission.locationWhenInUse.status;
      isLocGranted = locStatus.isGranted;
    } catch (_) {}

    try {
      final micStatus = await Permission.microphone.status;
      isMicGranted = micStatus.isGranted;
    } catch (_) {}

    try {
      final notifStatus = await Permission.notification.status;
      isNotifGranted = notifStatus.isGranted;
    } catch (_) {}

    try {
      final actStatus = await Permission.activityRecognition.status;
      isActGranted = actStatus.isGranted;
    } catch (_) {}

    if (mounted) {
      setState(() {
        _healthAvailability = healthAvail;
        _healthConnectAllowed = hasHealth;
        _cameraAllowed = isCamGranted;
        _locationAllowed = isLocGranted;
        _microphoneAllowed = isMicGranted;
        _notificationsAllowed = isNotifGranted;
        _activityRecognitionAllowed = isActGranted;
      });

      // If Health Connect is supported and not yet allowed, prompt automatically on first arrival
      if (!hasHealth &&
          healthAvail != HealthConnectAvailability.unsupportedPlatform &&
          !widget.isStandalone) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && !_healthConnectAllowed && !_isRequestingHealth) {
            _toggleHealthConnect(true);
          }
        });
      }
    }
  }

  void _handleBack() {
    if (widget.isStandalone) {
      context.pop();
      return;
    }
    if (widget.onBack != null) {
      widget.onBack!();
    } else {
      context.go('/onboarding/lifestyle');
    }
  }

  void _handleContinue() async {
    if (!_healthConnectAllowed && _healthAvailability != HealthConnectAvailability.unsupportedPlatform) {
      BloomiToast.show(
        context,
        message: 'Google Health Connect permission is mandatory to continue onboarding.',
        icon: CupertinoIcons.lock_fill,
      );
      await _toggleHealthConnect(true);
      return;
    }

    if (widget.isStandalone) {
      context.pop();
      return;
    }
    if (widget.onNext != null) {
      widget.onNext!();
    } else {
      context.go('/onboarding/plan-ready');
    }
  }

  Future<void> _toggleHealthConnect(bool val) async {
    if (!val) {
      BloomiToast.show(
        context,
        message: 'Google Health Connect is mandatory to track real health data and sync widgets.',
        icon: CupertinoIcons.lock_fill,
      );
      return;
    }
    setState(() => _isRequestingHealth = true);
    try {
      final availability =
          await sl<HealthService>().checkHealthConnectAvailability();
      _healthAvailability = availability;

      if (availability == HealthConnectAvailability.unsupportedPlatform) {
        setState(() => _isRequestingHealth = false);
        if (!mounted) return;
        await BloomiDialog.show<void>(
          context,
          title: 'Health Connect Not Supported',
          content:
              'Health Connect is not available on this device version. Bloomi will automatically count your daily steps using your phone built-in motion sensor.',
          confirmLabel: 'Understood',
          onConfirm: () {},
        );
        return;
      }

      if (availability == HealthConnectAvailability.notInstalled ||
          availability == HealthConnectAvailability.updateRequired) {
        setState(() => _isRequestingHealth = false);
        if (!mounted) return;
        await BloomiDialog.show<void>(
          context,
          title: 'Health Connect Not Installed',
          content:
              'Health Connect allows syncing steps, heart rate, and sleep. Would you like to install or update Health Connect from the Google Play Store?',
          confirmLabel: 'Install Health Connect',
          cancelLabel: 'Use Device Sensor',
          onConfirm: () async {
            await sl<HealthService>().installHealthConnect();
          },
        );
        return;
      }

      final granted = await sl<HealthService>().requestPermissions();
      if (mounted) {
        setState(() {
          _healthConnectAllowed = granted;
          _isRequestingHealth = false;
        });
        if (granted) {
          BloomiToast.show(context, message: 'Health Connect connected! ✨');
          try {
            await sl<HealthRepository>().getLatestBundle(forceRefresh: true);
          } catch (_) {}
        } else {
          await BloomiDialog.show<void>(
            context,
            title: 'Health Connect Permission',
            content:
                'Health Connect permission was not granted. Would you like to open Health Connect system settings to allow access?',
            confirmLabel: 'Open Health Settings',
            cancelLabel: 'Cancel',
            onConfirm: () async {
              await AppSettingsHelper.openHealthConnectSettings();
            },
          );
        }
      }
    } catch (_) {
      if (mounted) {
        setState(() => _isRequestingHealth = false);
      }
    }
  }

  Future<void> _toggleMicrophone(bool val) async {
    if (!val) {
      setState(() => _microphoneAllowed = false);
      return;
    }
    final status = await Permission.microphone.request();
    if (mounted) {
      setState(() => _microphoneAllowed = status.isGranted);
      if (status.isGranted) {
        BloomiToast.show(context, message: 'Microphone enabled for voice meal logging! 🎙️');
      } else if (status.isPermanentlyDenied) {
        await BloomiDialog.show<void>(
          context,
          title: 'Microphone Permission Required',
          content:
              'Microphone permission is needed to speak and log your meals with voice input. Please enable microphone access in settings.',
          confirmLabel: 'Open Settings',
          cancelLabel: 'Cancel',
          onConfirm: () async {
            await AppSettingsHelper.openAppPermissionSettings();
          },
        );
      }
    }
  }

  Future<void> _grantAllPermissions() async {
    setState(() => _isRequestingAll = true);
    try {
      try {
        await sl<HealthService>().requestPermissions();
      } catch (_) {}
      try {
        await Permission.sensors.request();
      } catch (_) {}
      try {
        await Permission.camera.request();
      } catch (_) {}
      try {
        await Permission.locationWhenInUse.request();
      } catch (_) {}
      try {
        await Permission.microphone.request();
      } catch (_) {}
      try {
        await Permission.notification.request();
      } catch (_) {}
      try {
        await Permission.activityRecognition.request();
      } catch (_) {}

      await _checkInitialPermissions();
      if (mounted) {
        BloomiToast.show(context, message: 'Permissions updated! ✨');
      }
    } finally {
      if (mounted) setState(() => _isRequestingAll = false);
    }
  }

  Future<void> _toggleActivity(bool val) async {
    if (!val) {
      setState(() => _activityRecognitionAllowed = false);
      return;
    }
    final status = await Permission.activityRecognition.request();
    if (mounted) {
      setState(() => _activityRecognitionAllowed = status.isGranted);
      if (status.isGranted) {
        BloomiToast.show(context, message: 'Motion sensor step counting enabled! 🚶');
      } else if (status.isPermanentlyDenied) {
        await BloomiDialog.show<void>(
          context,
          title: 'Physical Activity Permission',
          content:
              'Physical activity permission is needed to count your steps using your phone hardware sensor. Please enable it in system settings.',
          confirmLabel: 'Open Settings',
          cancelLabel: 'Cancel',
          onConfirm: () async {
            await AppSettingsHelper.openAppPermissionSettings();
          },
        );
      }
    }
  }

  Future<void> _toggleLocation(bool val) async {
    if (!val) {
      setState(() => _locationAllowed = false);
      return;
    }
    final status = await Permission.locationWhenInUse.request();
    if (mounted) {
      setState(() => _locationAllowed = status.isGranted);
      if (status.isGranted) {
        BloomiToast.show(context, message: 'Live surroundings & location enabled! 🌤️');
      } else if (status.isPermanentlyDenied) {
        await BloomiDialog.show<void>(
          context,
          title: 'Location Settings Required',
          content:
              'Location permission is permanently denied. Please open Location settings to allow location access for real-time weather and air quality.',
          confirmLabel: 'Open Location Settings',
          cancelLabel: 'Cancel',
          onConfirm: () async {
            await AppSettingsHelper.openLocationSettings();
          },
        );
      }
    }
  }

  Future<void> _toggleNotifications(bool val) async {
    if (!val) {
      setState(() => _notificationsAllowed = false);
      return;
    }
    final status = await Permission.notification.request();
    if (mounted) {
      setState(() => _notificationsAllowed = status.isGranted);
      if (status.isGranted) {
        BloomiToast.show(context, message: 'Gentle reminders enabled! 🔔');
      } else if (status.isPermanentlyDenied) {
        await BloomiDialog.show<void>(
          context,
          title: 'Notification Settings',
          content:
              'Notifications are disabled. Would you like to open system notification settings to enable gentle reminders?',
          confirmLabel: 'Open Notification Settings',
          cancelLabel: 'Cancel',
          onConfirm: () async {
            await AppSettingsHelper.openNotificationSettings();
          },
        );
      }
    }
  }

  Future<void> _toggleCamera(bool val) async {
    if (!val) {
      setState(() => _cameraAllowed = false);
      return;
    }
    final status = await Permission.camera.request();
    if (mounted) {
      setState(() => _cameraAllowed = status.isGranted);
      if (status.isGranted) {
        BloomiToast.show(context, message: 'Camera meal scanner enabled! 📷');
      } else if (status.isPermanentlyDenied) {
        await BloomiDialog.show<void>(
          context,
          title: 'Camera Permission Required',
          content:
              'Camera permission is needed to scan meals and barcodes. Please allow camera access in device settings.',
          confirmLabel: 'Open Settings',
          cancelLabel: 'Cancel',
          onConfirm: () async {
            await AppSettingsHelper.openAppPermissionSettings();
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        _handleBack();
      },
      child: Scaffold(
        backgroundColor: context.appBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(CupertinoIcons.arrow_left, color: context.appInk),
            onPressed: _handleBack,
          ),
          title: widget.isStandalone
              ? Text(
                  'Permissions & System Access',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: context.appInk,
                  ),
                )
              : null,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.screenSide,
                    vertical: AppSpacing.sm,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 440),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!widget.isStandalone) ...[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: AppSpacing.md),
                              child: FloatingIllustration(
                                distance: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    color: AppColors.sky.withAlpha(context.isDarkMode ? 60 : 40),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.sky.withAlpha(50),
                                        blurRadius: 16,
                                      ),
                                    ],
                                  ),
                                  child: const HealthMetricAnimation(
                                    metricType: 'heart_rate',
                                    size: 48,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'STEP 5 OF 5',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              letterSpacing: 1.2,
                              color: context.appSlate,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Permissions & Connect',
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Enable integrations to unlock live tracking, gentle reminders, meal scanning, and local air quality.',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: context.appSlate,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.lg),
                        ] else ...[
                          Container(
                            padding: const EdgeInsets.all(AppSpacing.md),
                            decoration: BoxDecoration(
                              color: AppColors.mint.withAlpha(context.isDarkMode ? 60 : 40),
                              borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                              border: Border.all(color: AppColors.mint.withAlpha(100)),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.shield_fill,
                                  color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                                  size: 22,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    'Bloomi never sells or uploads your sensitive data. All permissions operate locally and offline on your device.',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: context.isDarkMode ? const Color(0xFF99F6E4) : const Color(0xFF134E4A),
                                      height: 1.35,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),
                        ],

                        // Status & Quick Action Row
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                          decoration: BoxDecoration(
                            color: context.appSurface,
                            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                            boxShadow: context.appCardShadow,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '$_grantedCount of 7 Allowed',
                                      style: TextStyle(
                                        fontFamily: 'Baloo 2',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: context.appInk,
                                      ),
                                    ),
                                    Text(
                                      'Enable all for full features or configure below',
                                      style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: context.appSlate,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton.icon(
                                icon: _isRequestingAll
                                    ? SizedBox(
                                        width: 14,
                                        height: 14,
                                        child: CircularProgressIndicator(strokeWidth: 2, color: context.appInk),
                                      )
                                    : Icon(CupertinoIcons.checkmark_seal_fill, size: 16, color: context.appInk),
                                label: Text(
                                  _grantedCount == 7 ? 'All Set' : 'Allow All',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: context.appInk,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.mint,
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                                ),
                                onPressed: _grantedCount == 7 || _isRequestingAll ? null : _grantAllPermissions,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AppSpacing.md),

                        // 1. Health Connect Card (Mandatory)
                        _buildPermissionCard(
                          icon: CupertinoIcons.shield_fill,
                          color: AppColors.mint,
                          title: 'Google Health Connect (Mandatory)',
                          subtitle: _healthAvailability ==
                                  HealthConnectAvailability.unsupportedPlatform
                              ? 'Unsupported on this device version. Bloomi automatically tracks your steps using the built-in motion sensor below.'
                              : 'Mandatory requirement: Syncs real steps, heart rate, sleep stages, and active workouts seamlessly with the app and mobile home screen widgets.',
                          statusBadge: _healthConnectAllowed
                              ? 'Connected'
                              : (_healthAvailability ==
                                      HealthConnectAvailability.unsupportedPlatform
                                  ? 'Unsupported'
                                  : 'Mandatory'),
                          isAllowed: _healthConnectAllowed,
                          isLoading: _isRequestingHealth,
                          onChanged: _toggleHealthConnect,
                        ),
                        const SizedBox(height: AppSpacing.md),

                        // 2. Camera & Food Scanner
                        _buildPermissionCard(
                          icon: CupertinoIcons.camera_fill,
                          color: AppColors.peach,
                          title: 'Camera & Food Scanner',
                          subtitle:
                              'Take photos of your meals for instant AI nutrient analysis and scan grocery barcodes.',
                          statusBadge: _cameraAllowed ? 'Allowed' : 'Not Allowed',
                          isAllowed: _cameraAllowed,
                          onChanged: _toggleCamera,
                        ),
                        const SizedBox(height: AppSpacing.md),

                        // 3. Live Location & Surroundings
                        _buildPermissionCard(
                          icon: CupertinoIcons.location_solid,
                          color: AppColors.sky,
                          title: 'Live Location & Weather',
                          subtitle:
                              'Required to display real-time air quality (AQI), weather, and seasonal hydration guidance for your village or city.',
                          statusBadge:
                              _locationAllowed ? 'Granted' : 'Not Granted',
                          isAllowed: _locationAllowed,
                          onChanged: _toggleLocation,
                        ),
                        const SizedBox(height: AppSpacing.md),

                        // 4. Microphone & Voice Logging
                        _buildPermissionCard(
                          icon: CupertinoIcons.mic_fill,
                          color: AppColors.butter,
                          title: 'Microphone & Voice Input',
                          subtitle:
                              'Speak naturally to log food items, meals, water, and notes with fast hands-free voice input.',
                          statusBadge: _microphoneAllowed ? 'Allowed' : 'Not Allowed',
                          isAllowed: _microphoneAllowed,
                          onChanged: _toggleMicrophone,
                        ),
                        const SizedBox(height: AppSpacing.md),

                        // 5. Notifications Card
                        _buildPermissionCard(
                          icon: CupertinoIcons.bell_fill,
                          color: AppColors.peach,
                          title: 'Gentle Reminders',
                          subtitle:
                              'Timely, kind nudges for meals, hydration, and wind-down time without annoying alerts.',
                          statusBadge:
                              _notificationsAllowed ? 'Enabled' : 'Disabled',
                          isAllowed: _notificationsAllowed,
                          onChanged: _toggleNotifications,
                        ),
                        const SizedBox(height: AppSpacing.md),

                        // 6. Physical Activity & Hardware Step Counter
                        _buildPermissionCard(
                          icon: CupertinoIcons.compass,
                          color: AppColors.mint,
                          title: 'Physical Activity & Step Counter',
                          subtitle:
                              'Counts your steps directly using your phone motion sensor. Crucial fallback on devices without Health Connect.',
                          statusBadge: _activityRecognitionAllowed
                              ? 'Active'
                              : 'Not Allowed',
                          isAllowed: _activityRecognitionAllowed,
                          onChanged: _toggleActivity,
                        ),
                        const SizedBox(height: AppSpacing.xl),
                      ],
                    ),
                  ),
                ),
              ),

              // PINNED BOTTOM BUTTON
              Container(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.screenSide,
                  AppSpacing.sm,
                  AppSpacing.screenSide,
                  AppSpacing.md,
                ),
                decoration: BoxDecoration(
                  color: context.appBackground,
                  boxShadow: context.appCardShadow,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 440),
                  child: PillButton(
                    label: widget.isStandalone
                        ? 'Done'
                        : 'Continue to Your Plan',
                    icon: widget.isStandalone
                        ? CupertinoIcons.checkmark
                        : CupertinoIcons.arrow_right,
                    fullWidth: true,
                    height: 52,
                    onPressed: _handleContinue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPermissionCard({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required String statusBadge,
    required bool isAllowed,
    bool isLoading = false,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: context.appInk, size: 22),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: context.appInk,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: isAllowed
                                ? (context.isDarkMode ? const Color(0xFF064E3B) : const Color(0xFFDCFCE7))
                                : (context.isDarkMode ? const Color(0xFF334155) : const Color(0xFFF3F4F6)),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: isAllowed
                                  ? (context.isDarkMode ? const Color(0xFF059669) : const Color(0xFF86EFAC))
                                  : (context.isDarkMode ? const Color(0xFF475569) : const Color(0xFFE5E7EB)),
                            ),
                          ),
                          child: Text(
                            statusBadge,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: isAllowed
                                  ? (context.isDarkMode ? const Color(0xFF6EE7B7) : const Color(0xFF166534))
                                  : context.appSlate,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 12,
                        color: context.appSlate,
                        height: 1.35,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              if (isLoading)
                const SizedBox(
                  width: 32,
                  height: 32,
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.mint),
                    ),
                  ),
                )
              else
                Switch.adaptive(
                  value: isAllowed,
                  activeThumbColor: AppColors.mint,
                  activeTrackColor: AppColors.mintLight,
                  onChanged: onChanged,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
