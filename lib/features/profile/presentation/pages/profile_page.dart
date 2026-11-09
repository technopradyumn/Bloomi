import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:bloomi/features/profile/domain/repositories/profile_repository.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isPremium = false;
  double? _latestWeight;
  Target? _target;

  @override
  void initState() {
    super.initState();
    _checkPremium();
    _loadHealthStats();
  }

  Future<void> _checkPremium() async {
    try {
      final prem = await sl<BillingService>().isPremium();
      if (mounted) {
        setState(() {
          _isPremium = prem;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _isPremium = true);
    }
  }

  Future<void> _loadHealthStats() async {
    try {
      final db = sl<AppDatabase>();
      final weightEntry = await (db.select(db.bodyEntries)
            ..where((b) => b.type.equals('weight') & b.deleted.equals(false))
            ..orderBy([(b) => drift.OrderingTerm.desc(b.measuredAt)])
            ..limit(1))
          .getSingleOrNull();

      final target = await sl<PlanRepository>().getTargets();

      if (mounted) {
        setState(() {
          _latestWeight = weightEntry?.value;
          _target = target;
        });
      }
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user;

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: context.appSurface,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.settings, color: context.appInk),
            tooltip: context.tr('settings'),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: StreamBuilder<UserProfile?>(
        stream: sl<ProfileRepository>().watchProfile(),
        builder: (context, profileSnapshot) {
          final profile = profileSnapshot.data;
          return StreamBuilder<Target?>(
            stream: sl<ProfileRepository>().watchTargets(),
            builder: (context, targetSnapshot) {
              final target = targetSnapshot.data ?? _target;
              return StreamBuilder<BodyEntry?>(
                stream: sl<ProfileRepository>().watchLatestWeight(),
                builder: (context, weightSnapshot) {
                  final latestWeightEntry = weightSnapshot.data;
                  return StreamBuilder<BodyEntry?>(
                    stream: sl<ProfileRepository>().watchLatestWaist(),
                    builder: (context, waistSnapshot) {
                      final waistEntry = waistSnapshot.data;
                      return StreamBuilder<BodyEntry?>(
                        stream: sl<ProfileRepository>().watchLatestHip(),
                        builder: (context, hipSnapshot) {
                          final hipEntry = hipSnapshot.data;
                          final displayName =
                              profile?.name ?? user?.displayName ?? 'Bloomi Friend';
                          final email = user?.email ?? 'Offline Account';

                          final heightCm = profile?.heightCm ?? 165.0;
                          final weight = latestWeightEntry?.value ??
                              _latestWeight ??
                              target?.targetWeightKg ??
                              65.0;
                          final targetWeight = target?.targetWeightKg ?? 60.0;
                          final isMale = (profile?.gender?.toLowerCase() ?? '') == 'male';
                          final defaultCalories = isMale ? 2000.0 : 1700.0;
                          final calories = target?.calories ?? defaultCalories;
                          final dietType = profile?.dietType ?? 'Vegetarian';

                          final heightM = heightCm / 100.0;
                          final bmi = heightM > 0 ? (weight / (heightM * heightM)) : 22.0;

                          String bmiCategory;
                          Color bmiColor;
                          if (bmi < 18.5) {
                            bmiCategory = 'Underweight';
                            bmiColor = AppColors.sky;
                          } else if (bmi < 25.0) {
                            bmiCategory = 'Healthy weight';
                            bmiColor = AppColors.mint;
                          } else if (bmi < 30.0) {
                            bmiCategory = 'Overweight';
                            bmiColor = AppColors.peach;
                          } else {
                            bmiCategory = 'High';
                            bmiColor = Theme.of(context).colorScheme.error;
                          }

                          // Calculate Waist-to-Hip Ratio (WHR)
                          double? whr;
                          String? whrCategory;
                          Color? whrColor;
                          if (waistEntry != null &&
                              hipEntry != null &&
                              hipEntry.value > 0) {
                            whr = waistEntry.value / hipEntry.value;
                            if (isMale) {
                              if (whr < 0.90) {
                                whrCategory = 'Low Risk (Healthy)';
                                whrColor = AppColors.mint;
                              } else if (whr <= 0.95) {
                                whrCategory = 'Moderate Risk';
                                whrColor = AppColors.peach;
                              } else {
                                whrCategory = 'High Risk';
                                whrColor = Theme.of(context).colorScheme.error;
                              }
                            } else {
                              if (whr < 0.80) {
                                whrCategory = 'Low Risk (Healthy)';
                                whrColor = AppColors.mint;
                              } else if (whr <= 0.85) {
                                whrCategory = 'Moderate Risk';
                                whrColor = AppColors.peach;
                              } else {
                                whrCategory = 'High Risk';
                                whrColor = Theme.of(context).colorScheme.error;
                              }
                            }
                          }

                          final weightDateStr = latestWeightEntry != null
                              ? DateFormat('MMM d, h:mm a').format(latestWeightEntry.measuredAt)
                              : 'Target: ${targetWeight.toStringAsFixed(1)} kg';

                          final waistDateStr = waistEntry != null
                              ? DateFormat('MMM d, h:mm a').format(waistEntry.measuredAt)
                              : 'Not logged yet';

                          final hipDateStr = hipEntry != null
                              ? DateFormat('MMM d, h:mm a').format(hipEntry.measuredAt)
                              : 'Not logged yet';

                          return ListView(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.md,
                              vertical: AppSpacing.md,
                            ),
                            children: [
                              // User Identity Card
                              _buildUserHeaderCard(
                                displayName: displayName,
                                email: email,
                              ),
                              const SizedBox(height: AppSpacing.md),

                              // Premium Banner
                              if (!_isPremium) ...[
                                _buildPremiumBanner(),
                                const SizedBox(height: AppSpacing.md),
                              ],

                              // Health & Body Snapshot Header
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Color.alphaBlend(AppColors.mint.withOpacity(0.25), context.appSurface),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Icon(CupertinoIcons.heart_fill, size: 16, color: AppColors.mintDark),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'HEALTH & BODY OVERVIEW',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: context.appSlate,
                                      letterSpacing: 0.6,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.sm),

                              Row(
                                children: [
                                  Expanded(
                                    child: _buildHealthCard(
                                      title: 'Weight',
                                      value: '${weight.toStringAsFixed(1)} kg',
                                      subtitle: weightDateStr,
                                      icon: CupertinoIcons.gauge,
                                      color: AppColors.mint,
                                      onTap: () => context.push('/health/weight'),
                                    ),
                                  ),
                                  const SizedBox(width: AppSpacing.sm),
                                  Expanded(
                                    child: _buildHealthCard(
                                      title: 'Live BMI',
                                      value: bmi.toStringAsFixed(1),
                                      subtitle: bmiCategory,
                                      icon: CupertinoIcons.waveform_path_ecg,
                                      color: AppColors.lilac,
                                      badgeColor: bmiColor,
                                      onTap: () => context.push('/profile/edit-body'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.sm),

                              // Waist & Hip Measurements
                              Row(
                                children: [
                                  Expanded(
                                    child: _buildHealthCard(
                                      title: 'Waist',
                                      value: waistEntry != null
                                          ? '${waistEntry.value.toStringAsFixed(1)} ${waistEntry.unit}'
                                          : '-- cm',
                                      subtitle: waistDateStr,
                                      icon: CupertinoIcons.chart_bar_alt_fill,
                                      color: AppColors.sky,
                                      onTap: () => context.push('/health/manual-body?type=circumference'),
                                    ),
                                  ),
                                  const SizedBox(width: AppSpacing.sm),
                                  Expanded(
                                    child: _buildHealthCard(
                                      title: 'Hip',
                                      value: hipEntry != null
                                          ? '${hipEntry.value.toStringAsFixed(1)} ${hipEntry.unit}'
                                          : '-- cm',
                                      subtitle: hipDateStr,
                                      icon: CupertinoIcons.chart_bar_circle,
                                      color: AppColors.butter,
                                      onTap: () => context.push('/health/manual-body?type=circumference'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.sm),

                              // Waist-to-Hip Ratio (WHR) Card
                              if (whr != null) ...[
                                InkWell(
                                  onTap: () => context.push('/health/manual-body?type=circumference'),
                                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                                  child: Container(
                                    padding: const EdgeInsets.all(AppSpacing.md),
                                    decoration: BoxDecoration(
                                      color: Color.alphaBlend(AppColors.mint.withAlpha(45), context.appSurface),
                                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                                      border: Border.all(color: AppColors.mint, width: 1.5),
                                      boxShadow: context.appCardShadow,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: context.appSurface,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: const Icon(CupertinoIcons.arrow_up_down_circle_fill, color: AppColors.mintDark, size: 22),
                                        ),
                                        const SizedBox(width: AppSpacing.sm),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Waist-to-Hip Ratio (WHR)',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: context.appSlate,
                                                ),
                                              ),
                                              const SizedBox(height: 2),
                                              Row(
                                                children: [
                                                  Text(
                                                    whr.toStringAsFixed(2),
                                                    style: TextStyle(
                                                      fontFamily: 'Baloo 2',
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 18,
                                                      color: context.appInk,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Container(
                                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                    decoration: BoxDecoration(
                                                      color: whrColor?.withAlpha(50) ?? Colors.transparent,
                                                      borderRadius: BorderRadius.circular(6),
                                                      border: Border.all(color: whrColor ?? Colors.transparent),
                                                    ),
                                                    child: Text(
                                                      whrCategory ?? '',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.w700,
                                                        color: whrColor ?? context.appInk,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Icon(CupertinoIcons.chevron_right, color: context.appSlate, size: 16),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.sm),
                              ],

                              Row(
                                children: [
                                  Expanded(
                                    child: _buildHealthCard(
                                      title: 'Daily Calories',
                                      value: '${calories.round()} kcal',
                                      subtitle: 'Target intake',
                                      icon: CupertinoIcons.flame_fill,
                                      color: AppColors.peach,
                                      onTap: () => context.push('/plan/goals'),
                                    ),
                                  ),
                                  const SizedBox(width: AppSpacing.sm),
                                  Expanded(
                                    child: _buildHealthCard(
                                      title: 'Diet & Food',
                                      value: dietType,
                                      subtitle: '${heightCm.round()} cm height',
                                      icon: CupertinoIcons.cart_fill,
                                      color: AppColors.butter,
                                      onTap: () => context.push('/profile/edit-lifestyle'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.lg),

                              // DATA LOGS & HISTORY (Direct log entries access)
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Color.alphaBlend(AppColors.sky.withOpacity(0.25), context.appSurface),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Icon(CupertinoIcons.clock_fill, size: 16, color: Colors.blue),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'MY TRACKED DATA & LOGS',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: context.appSlate,
                                      letterSpacing: 0.6,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Open your personal history, view detailed records & log entries directly.',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: context.appSlate),
                              ),
                              const SizedBox(height: AppSpacing.sm),

                              // 1. Food Log
                              _buildDataLogCard(
                                icon: CupertinoIcons.bag_fill,
                                color: AppColors.mint,
                                title: 'Food & Meals Log',
                                subtitle: 'Breakfast, lunch, dinner & daily macro nutrition',
                                trailingLabel: 'Food Diary',
                                onTap: () => context.push('/food'),
                              ),

                              // 2. Water Log
                              _buildDataLogCard(
                                icon: CupertinoIcons.drop_fill,
                                color: AppColors.sky,
                                title: 'Water & Hydration Tracker',
                                subtitle: 'Logged water glasses, volume & daily target',
                                trailingLabel: 'Water Log',
                                onTap: () => context.push('/food/water'),
                              ),

                              // 3. Weight & Body Metrics Log
                              _buildDataLogCard(
                                icon: CupertinoIcons.gauge,
                                color: AppColors.butter,
                                title: 'Weight & Body Composition',
                                subtitle: 'Weigh-in logs, BMI timeline & progress charts',
                                trailingLabel: 'Weight Log',
                                onTap: () => context.push('/health/weight'),
                              ),

                              // 4. Waist, Hip & Body Measurements Log
                              _buildDataLogCard(
                                icon: CupertinoIcons.chart_bar_alt_fill,
                                color: AppColors.mint,
                                title: 'Waist, Hip & Body Values',
                                subtitle: 'Circumference, blood pressure, glucose & temperature',
                                trailingLabel: 'Body Log',
                                onTap: () => context.push('/health/manual-body?type=circumference'),
                              ),

                              // 5. Sleep Log
                              _buildDataLogCard(
                                icon: CupertinoIcons.moon_fill,
                                color: AppColors.lilac,
                                title: 'Sleep & Night Recovery',
                                subtitle: 'Sleep duration, quality score & rest metrics',
                                trailingLabel: 'Sleep Log',
                                onTap: () => context.push('/health/sleep'),
                              ),

                              // 6. Activity & Steps Log
                              _buildDataLogCard(
                                icon: CupertinoIcons.flame_fill,
                                color: AppColors.peach,
                                title: 'Steps, Walking & Activity',
                                subtitle: 'Pedometer steps, active calorie burn & workouts',
                                trailingLabel: 'Activity Log',
                                onTap: () => context.push('/health/workout'),
                              ),

                              // 7. Surroundings Log
                              _buildDataLogCard(
                                icon: CupertinoIcons.sun_max_fill,
                                color: AppColors.sky,
                                title: 'Surroundings & Air Quality',
                                subtitle: 'Local AQI, UV index & weather hydration tips',
                                trailingLabel: 'Environment',
                                onTap: () => context.push('/surroundings'),
                              ),

                              const SizedBox(height: AppSpacing.xxl),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildUserHeaderCard({
    required String displayName,
    required String email,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
        border: Border.all(color: context.appBorderColor),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 34,
                backgroundColor: Color.alphaBlend(AppColors.mint.withOpacity(0.25), context.appSurface),
                child: const MascotWidget(
                  state: MascotState.happy,
                  size: 52,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayName,
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: context.appInk,
                      ),
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: context.appSlate),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: Color.alphaBlend(AppColors.mint.withOpacity(0.20), context.appSurface),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '🌸 Bloomi Member',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.alphaBlend(AppColors.mint.withOpacity(0.20), context.appSurface),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(CupertinoIcons.pencil, color: context.appInk, size: 18),
                ),
                tooltip: context.tr('profile_edit'),
                onPressed: () async {
                  await context.push('/profile/edit');
                  await _loadHealthStats();
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Color.alphaBlend(context.appBorderColor.withOpacity(0.4), context.appSurface),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Text('🌸', style: TextStyle(fontSize: 16)),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Keep blooming, $displayName! Track each metric daily for optimal wellness.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: context.appInk,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHealthCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
    Color? badgeColor,
    required VoidCallback onTap,
  }) {
    final solidBg = Color.alphaBlend(color.withOpacity(0.18), context.appSurface);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: solidBg,
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          border: Border.all(color: color, width: 1.5),
          boxShadow: context.appCardShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: context.appSurface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: context.appInk, size: 16),
                ),
                if (badgeColor != null)
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: badgeColor,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: context.appSlate,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: TextStyle(
                fontFamily: 'Baloo 2',
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: context.appInk,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 11,
                color: context.appSlate,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDataLogCard({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required String trailingLabel,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
        border: Border.all(color: context.appBorderColor),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: 4),
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Color.alphaBlend(color.withOpacity(0.20), context.appSurface),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: context.appInk, size: 22),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: context.appInk,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: context.appSlate),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Color.alphaBlend(color.withOpacity(0.18), context.appSurface),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                trailingLabel,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: context.appInk,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Icon(CupertinoIcons.chevron_right, color: context.appSlate),
          ],
        ),
        onTap: onTap,
      ),
    );
  }

  Widget _buildPremiumBanner() {
    return InkWell(
      onTap: () async {
        await context.push('/settings/premium');
        await _checkPremium();
      },
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: Color.alphaBlend(AppColors.butter.withOpacity(0.35), context.appSurface),
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          border: Border.all(color: AppColors.butter, width: 1.5),
        ),
        child: Row(
          children: [
            const Text('👑', style: TextStyle(fontSize: 26)),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Unlock Bloomi Premium',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: context.appInk,
                    ),
                  ),
                  Text(
                    'AI Coach, comprehensive home widgets & cloud backup',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: context.appSlate),
                  ),
                ],
              ),
            ),
            Icon(CupertinoIcons.chevron_right, color: context.appInk),
          ],
        ),
      ),
    );
  }
}
