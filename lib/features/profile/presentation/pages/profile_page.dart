import 'dart:math' as math;
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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animController;
  late final Animation<double> _waveAnim;
  bool _isPremium = false;
  double? _latestWeight;
  Target? _target;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);

    _waveAnim = CurvedAnimation(
      parent: _animController,
      curve: Curves.easeInOut,
    );

    _checkPremium();
    _loadHealthStats();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
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
    } catch (_) {
      // Non-critical background fetch failure fallback
    }
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.settings_rounded, color: context.appInk),
            tooltip: 'Settings',
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

                  return Stack(
            children: [
              // Ambient Moving Pastel Animation Backdrop
              AnimatedBuilder(
                animation: _waveAnim,
                builder: (context, child) {
                  final t = _waveAnim.value;
                  return Positioned(
                    top: -60 + (t * 20),
                    right: -40 + (math.sin(t * math.pi) * 20),
                    child: Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            AppColors.butter.withAlpha(70),
                            AppColors.mint.withAlpha(40),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              AnimatedBuilder(
                animation: _waveAnim,
                builder: (context, child) {
                  final t = _waveAnim.value;
                  return Positioned(
                    top: 180 + (math.cos(t * math.pi) * 15),
                    left: -50 + (t * 15),
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            AppColors.peach.withAlpha(60),
                            AppColors.lilac.withAlpha(30),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),

              // Content List
              ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
                children: [
                  // User Header Card
                  _buildUserHeaderCard(
                    displayName: displayName,
                    email: email,
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // Upgrade Banner (if not premium)
                  if (!_isPremium) ...[
                    _buildPremiumBanner(),
                    const SizedBox(height: AppSpacing.md),
                  ],

                  // Health & Wellness Quick Snapshot (2x2 Grid)
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppColors.mint.withAlpha(70),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.favorite_rounded,
                            size: 16, color: context.appInk),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'HEALTH & BODY SNAPSHOT',
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
                          subtitle: 'Target: ${targetWeight.toStringAsFixed(1)} kg',
                          icon: Icons.monitor_weight_rounded,
                          color: AppColors.mint,
                          onTap: () => context.push('/profile/edit-body'),
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: _buildHealthCard(
                          title: 'Live BMI',
                          value: bmi.toStringAsFixed(1),
                          subtitle: bmiCategory,
                          icon: Icons.speed_rounded,
                          color: AppColors.lilac,
                          badgeColor: bmiColor,
                          onTap: () => context.push('/profile/edit-body'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      Expanded(
                        child: _buildHealthCard(
                          title: 'Daily Calories',
                          value: '${calories.round()} kcal',
                          subtitle: 'Target intake',
                          icon: Icons.local_fire_department_rounded,
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
                          icon: Icons.restaurant_rounded,
                          color: AppColors.butter,
                          onTap: () => context.push('/profile/edit-lifestyle'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.lg),

                  // Wellness & Goals
                  Text(
                    'GOALS & WELLNESS INSIGHTS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: context.appSlate,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  _buildColoredTile(
                    icon: Icons.track_changes_rounded,
                    color: AppColors.mint,
                    title: 'Nutrition Targets & Macro Split',
                    subtitle: 'Calorie target, protein, carbs, fat & water goal',
                    onTap: () => context.push('/plan/goals'),
                  ),
                  _buildColoredTile(
                    icon: Icons.calendar_view_week_rounded,
                    color: AppColors.sky,
                    title: 'Weekly Wellness Recap',
                    subtitle: '7-day calorie average, macro ratio & best day',
                    onTap: () => context.push('/insights/weekly-report'),
                  ),
                  _buildColoredTile(
                    icon: Icons.emoji_events_rounded,
                    color: AppColors.butter,
                    title: 'Streaks & Milestones',
                    subtitle: 'Active blossom streaks, badges & achievements',
                    onTap: () => context.push('/insights/streaks'),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // App Settings & Device Ecosystem
                  Text(
                    'APP & DEVICE ECOSYSTEM',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: context.appSlate,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  _buildColoredTile(
                    icon: Icons.devices_other_rounded,
                    color: AppColors.lilac,
                    title: 'Devices & Smartwatch Hub',
                    subtitle: 'Health Connect, Galaxy Watch, Pixel Watch & Garmin',
                    onTap: () => context.push('/health/devices'),
                  ),
                  _buildColoredTile(
                    icon: Icons.tune_rounded,
                    color: AppColors.mint,
                    title: 'Preferences & Reminders',
                    subtitle: 'Notification schedule, units & language',
                    onTap: () => context.push('/settings'),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                ],
              ),
            ],
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
      ),
      child: Column(
        children: [
          Row(
            children: [
              AnimatedBuilder(
                animation: _waveAnim,
                builder: (context, child) {
                  final scale = 1.0 + (_waveAnim.value * 0.04);
                  return Transform.scale(
                    scale: scale,
                    child: CircleAvatar(
                      radius: 34,
                      backgroundColor: AppColors.mint.withAlpha(70),
                      child: const MascotWidget(
                        state: MascotState.happy,
                        size: 52,
                      ),
                    ),
                  );
                },
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
                        fontSize: 19,
                        color: context.appInk,
                      ),
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 13, color: context.appSlate),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: AppColors.mint.withAlpha(60),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '🌸 Bloomi Member',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: context.appInk,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.mint.withAlpha(40),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.edit_rounded, color: context.appInk, size: 18),
                ),
                tooltip: 'Edit Profile & Settings',
                onPressed: () async {
                  await context.push('/profile/edit');
                  await _loadHealthStats();
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: context.appBackground,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Text('🌸', style: TextStyle(fontSize: 16)),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Keep blooming, $displayName! Healthy habits build great days.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
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
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: color.withAlpha(50),
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          border: Border.all(color: color.withAlpha(80), width: 1.2),
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
                    width: 8,
                    height: 8,
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
                fontSize: 11,
                fontWeight: FontWeight.w600,
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
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColoredTile({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        boxShadow: context.appCardShadow,
      ),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color.withAlpha(context.isDarkMode ? 80 : 60),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: context.appInk, size: 22),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: context.appInk,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: context.appSlate),
        ),
        trailing: Icon(Icons.chevron_right_rounded, color: context.appSlate),
        onTap: onTap,
      ),
    );
  }

  Widget _buildPremiumBanner() {
    final isDark = context.isDarkMode;
    return InkWell(
      onTap: () async {
        await context.push('/settings/premium');
        await _checkPremium();
      },
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.butter.withAlpha(isDark ? 80 : 140),
              AppColors.peach.withAlpha(isDark ? 80 : 140),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        ),
        child: Row(
          children: [
            const Text('🌸', style: TextStyle(fontSize: 26)),
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
                    'Vitals & sleep tracking, daily target plan & widgets',
                    style: TextStyle(fontSize: 12, color: context.appInk),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded, color: context.appInk),
          ],
        ),
      ),
    );
  }
}
