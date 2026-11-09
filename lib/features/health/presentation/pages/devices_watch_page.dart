import 'package:bloomi/app/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/health/domain/entities/health_overview_entity.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:flutter/material.dart';

class DevicesWatchPage extends StatefulWidget {
  const DevicesWatchPage({super.key});

  @override
  State<DevicesWatchPage> createState() => _DevicesWatchPageState();
}

class _DevicesWatchPageState extends State<DevicesWatchPage> {
  HealthConnectAvailabilityStatus _status = HealthConnectAvailabilityStatus.available;
  bool _hasPermissions = false;
  bool _isLoading = true;
  String _preferredSource = 'auto';

  @override
  void initState() {
    super.initState();
    _checkStatus();
  }

  Future<void> _checkStatus() async {
    final repo = sl<HealthRepository>();
    final status = await repo.getAvailability();
    final hasPerm = await repo.hasPermissions();
    final prefSource = await repo.getPreferredHealthSource();

    if (mounted) {
      setState(() {
        _status = status;
        _hasPermissions = hasPerm;
        _preferredSource = prefSource;
        _isLoading = false;
      });
    }
  }

  Future<void> _requestPermissions() async {
    final repo = sl<HealthRepository>();
    final granted = await repo.requestPermissions();
    if (mounted) {
      setState(() => _hasPermissions = granted);
      BloomiToast.show(
        context,
        message: granted
            ? 'Health Connect permissions granted! 🌟'
            : 'Permissions updated. You can adjust them anytime in Settings.',
      );
    }
  }

  Future<void> _updatePreferredSource(String source) async {
    setState(() => _preferredSource = source);
    await sl<HealthRepository>().setPreferredHealthSource(source);
    if (mounted) {
      final name = source == 'auto'
          ? 'Auto (Recommended)'
          : (source == 'watch' ? 'Smartwatch' : 'Phone');
      BloomiToast.show(
        context,
        message: 'Preferred data source set to $name ⌚',
      );
    }
  }

  Future<void> _openHealthConnectPrioritySettings() async {
    final opened = await sl<HealthRepository>().openHealthConnectSettings();
    if (!opened && mounted) {
      BloomiToast.show(
        context,
        message: 'Open device Settings > Apps > Health Connect to adjust app priorities.',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Devices & Watch',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: AppColors.mint))
          : ListView(
              padding: const EdgeInsets.all(AppSpacing.md),
              children: [
                // Health Connect Status Card
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
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: _getStatusColor().withAlpha(60),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(_getStatusIcon(), color: context.appInk, size: 24),
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Google Health Connect',
                                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: context.appInk),
                                ),
                                Text(
                                  _getStatusLabel(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: _getStatusColor(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Text(
                        _getStatusDescription(),
                        style: TextStyle(fontSize: 12, color: context.appSlate, height: 1.4),
                      ),
                      const SizedBox(height: AppSpacing.md),

                      // Action Button
                      if (_status == HealthConnectAvailabilityStatus.notInstalled)
                        PillButton(
                          label: 'Install Health Connect',
                          icon: CupertinoIcons.arrow_down_to_line,
                          variant: PillButtonVariant.primary,
                          onPressed: () => sl<HealthRepository>().installHealthConnect(),
                        )
                      else if (!_hasPermissions)
                        PillButton(
                          label: 'Grant Health Permissions',
                          icon: CupertinoIcons.lock_open_fill,
                          variant: PillButtonVariant.primary,
                          onPressed: _requestPermissions,
                        )
                      else
                        PillButton(
                          label: 'Permissions Active',
                          icon: CupertinoIcons.checkmark_circle_fill,
                          variant: PillButtonVariant.secondary,
                          onPressed: _requestPermissions,
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

                // Preferred Data Source Card
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
                          Icon(CupertinoIcons.slider_horizontal_3, color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E), size: 22),
                          const SizedBox(width: 8),
                          Text(
                            'Preferred Data Source',
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: context.appInk,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Select which device to prioritize for steps, distance, and calories when multiple devices record at once:',
                        style: TextStyle(fontSize: 12, color: context.appSlate, height: 1.4),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      _buildSourceOption(
                        id: 'auto',
                        title: 'Auto (Recommended)',
                        subtitle: 'Prioritizes smartwatch for each time window; falls back to phone when off-wrist. Never double-counts.',
                        icon: CupertinoIcons.arrow_2_circlepath,
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      _buildSourceOption(
                        id: 'watch',
                        title: 'Watch Only',
                        subtitle: 'Only records activity from your paired smartwatch or fitness tracker.',
                        icon: CupertinoIcons.radiowaves_right,
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      _buildSourceOption(
                        id: 'phone',
                        title: 'Phone Only',
                        subtitle: 'Only records steps and activities tracked directly by phone sensors.',
                        icon: CupertinoIcons.device_phone_portrait,
                      ),
                      const SizedBox(height: AppSpacing.md),
                      InkWell(
                        onTap: _openHealthConnectPrioritySettings,
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          decoration: BoxDecoration(
                            color: AppColors.mint.withAlpha(40),
                            borderRadius: const BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color: AppColors.mint.withAlpha(120)),
                          ),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.arrow_up_right_square, size: 18, color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E)),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Health Connect App Priority Settings',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E),
                                  ),
                                ),
                              ),
                              Icon(CupertinoIcons.chevron_right, size: 18, color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

                // Supported Data Types List
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Synced Health Metrics',
                        style: TextStyle(
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      const _DataPillRow(items: [
                        'Daily Steps',
                        'Heart Rate (BPM)',
                        'Sleep Sessions',
                        'Blood Oxygen (SpO2)',
                        'Active Calories',
                        'Distance (km)',
                        'Workouts',
                        'Blood Pressure',
                      ]),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

                // Brand-wise Watch Connection Help
                Text(
                  'Watch Connection Guides',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: context.appInk,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Each watch app syncs to Health Connect using its own toggle switch:',
                  style: TextStyle(fontSize: 12, color: context.appSlate),
                ),
                const SizedBox(height: AppSpacing.sm),

                _buildBrandAccordion(
                  'Samsung Galaxy Watch (Samsung Health)',
                  '1. Open Samsung Health on your phone.\n'
                      '2. Tap the three dots (⋮) or Settings in the top-right.\n'
                      '3. Tap "Health Connect".\n'
                      '4. Enable "Allow all" or toggle Steps, Heart Rate, and Sleep.\n'
                      '5. Samsung Health will now sync seamlessly with Bloomi.',
                  CupertinoIcons.radiowaves_right,
                  AppColors.mint,
                ),
                _buildBrandAccordion(
                  'Google Pixel Watch (Fitbit)',
                  '1. Open the Fitbit app on your phone.\n'
                      '2. Tap your profile icon in the top left.\n'
                      '3. Under Settings, select "Health Connect".\n'
                      '4. Turn on "Sync with Health Connect".\n'
                      '5. Bloomi automatically receives your latest watch stats.',
                  CupertinoIcons.radiowaves_right,
                  AppColors.peach,
                ),
                _buildBrandAccordion(
                  'Garmin Watch (Garmin Connect)',
                  '1. Open Garmin Connect app.\n'
                      '2. Open the side menu -> Settings -> Connected Apps.\n'
                      '3. Tap "Health Connect".\n'
                      '4. Turn on all permissions for activities and metrics.',
                  CupertinoIcons.rosette,
                  AppColors.sky,
                ),
                _buildBrandAccordion(
                  'Amazfit & Zepp',
                  '1. Open the Zepp app on your phone.\n'
                      '2. Go to Profile -> Add Accounts.\n'
                      '3. Tap "Health Connect" and toggle the sync switch on.',
                  CupertinoIcons.circle,
                  AppColors.butter,
                ),
                _buildBrandAccordion(
                  'OnePlus & OHealth',
                  '1. Open OHealth app on your phone.\n'
                      '2. Go to Profile -> Manage Data -> Health Connect.\n'
                      '3. Enable data sharing to read steps, sleep, and workouts.',
                  CupertinoIcons.radiowaves_right,
                  AppColors.lilac,
                ),
                const SizedBox(height: AppSpacing.md),

                // Local Privacy Assurance Banner
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: AppColors.mint.withAlpha(50),
                    borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
                    border: Border.all(color: AppColors.mint.withAlpha(120)),
                  ),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.shield, color: context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E), size: 24),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Your health metrics are stored locally on your device and inside your private Google Drive backup. We never sell, transmit, or share your biometric data.',
                          style: TextStyle(fontSize: 11, color: context.appInk, height: 1.4),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
              ],
            ),
    );
  }

  Widget _buildBrandAccordion(String brand, String steps, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
      ),
      child: ExpansionTile(
        shape: const Border(),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon, color: context.appInk, size: 18),
        ),
        title: Text(
          brand,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: context.appInk),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Text(
              steps,
              style: TextStyle(fontSize: 12, color: context.appSlate, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    final isDark = context.isDarkMode;
    switch (_status) {
      case HealthConnectAvailabilityStatus.available:
        return isDark ? const Color(0xFF14B8A6) : const Color(0xFF0F766E);
      case HealthConnectAvailabilityStatus.updateRequired:
        return isDark ? const Color(0xFFF59E0B) : const Color(0xFFD97706);
      case HealthConnectAvailabilityStatus.notInstalled:
        return AppColors.peach;
      case HealthConnectAvailabilityStatus.unsupportedPlatform:
        return context.appSlate;
    }
  }

  IconData _getStatusIcon() {
    switch (_status) {
      case HealthConnectAvailabilityStatus.available:
        return CupertinoIcons.shield_fill;
      case HealthConnectAvailabilityStatus.updateRequired:
        return CupertinoIcons.arrow_down_circle_fill;
      case HealthConnectAvailabilityStatus.notInstalled:
        return CupertinoIcons.arrow_down_to_line;
      case HealthConnectAvailabilityStatus.unsupportedPlatform:
        return CupertinoIcons.radiowaves_right;
    }
  }

  String _getStatusLabel() {
    switch (_status) {
      case HealthConnectAvailabilityStatus.available:
        return _hasPermissions ? 'Active & Connected' : 'Installed (Permissions Required)';
      case HealthConnectAvailabilityStatus.updateRequired:
        return 'Update Required';
      case HealthConnectAvailabilityStatus.notInstalled:
        return 'Not Installed';
      case HealthConnectAvailabilityStatus.unsupportedPlatform:
        return 'Phone Sensors Fallback';
    }
  }

  String _getStatusDescription() {
    switch (_status) {
      case HealthConnectAvailabilityStatus.available:
        return 'Google Health Connect is available on your Android device to securely sync steps, heart rate, sleep, and workouts from your smartwatch.';
      case HealthConnectAvailabilityStatus.updateRequired:
        return 'Your Google Health Connect provider requires an update from the Play Store to sync data with Bloomi.';
      case HealthConnectAvailabilityStatus.notInstalled:
        return 'Health Connect allows your watch apps (Samsung Health, Fitbit, Garmin) to securely share wellness data with Bloomi.';
      case HealthConnectAvailabilityStatus.unsupportedPlatform:
        return 'Bloomi is reading step and movement data from your phone sensors while running outside of Health Connect.';
    }
  }

  Widget _buildSourceOption({
    required String id,
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    final isSelected = _preferredSource.toLowerCase() == id;
    return InkWell(
      onTap: () => _updatePreferredSource(id),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mint.withAlpha(35) : context.appSurface,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: isSelected
                ? (context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E))
                : context.appBorderColor,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected
                  ? (context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E))
                  : context.appSlate,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: isSelected
                          ? (context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E))
                          : context.appInk,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 11,
                      color: context.appSlate,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              isSelected ? CupertinoIcons.circle_filled : CupertinoIcons.circle,
              color: isSelected
                  ? (context.isDarkMode ? const Color(0xFF14B8A6) : const Color(0xFF0F766E))
                  : context.appSlate.withAlpha(120),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _DataPillRow extends StatelessWidget {
  final List<String> items;

  const _DataPillRow({required this.items});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: items.map((item) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: context.appBackground,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(color: context.appBorderColor),
          ),
          child: Text(
            item,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: context.appSlate),
          ),
        );
      }).toList(),
    );
  }
}
