import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/features/insights/domain/entities/insights_entity.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StreaksBadgesPage extends StatefulWidget {
  const StreaksBadgesPage({super.key});

  @override
  State<StreaksBadgesPage> createState() => _StreaksBadgesPageState();
}

class _StreaksBadgesPageState extends State<StreaksBadgesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await sl<InsightsRepository>().evaluateAndUnlockMilestones();
      if (mounted) setState(() {});
    });
  }

  void _showBadgeDialog(BuildContext context, BadgeEntity badge) {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: context.appSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(badge.icon, style: const TextStyle(fontSize: 56)),
              const SizedBox(height: 10),
              Text(
                badge.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Baloo 2',
                  color: context.appInk,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                badge.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: context.appSlate),
              ),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: badge.isUnlocked
                      ? AppColors.mint.withValues(alpha: 0.3)
                      : context.appSlate.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  badge.isUnlocked
                      ? 'Unlocked on ${DateFormat('d MMM yyyy').format(badge.unlockedAt ?? DateTime.now())}'
                      : 'Locked • Keep logging to unlock!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: badge.isUnlocked ? context.appInk : context.appSlate,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Center(
            child: TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text('Awesome!', style: TextStyle(fontWeight: FontWeight.bold, color: context.appInk)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Streaks & Milestones',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Baloo 2',
            color: context.appInk,
          ),
        ),
        backgroundColor: context.appSurface,
        foregroundColor: context.appInk,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          // Dynamic Mascot Streak Card
          FutureBuilder<int>(
            future: sl<InsightsRepository>().getCurrentStreak(),
            builder: (context, snapshot) {
              final streak = snapshot.data ?? 0;
              final streakTitle = streak > 0
                  ? '$streak-Day Bloom Streak! 🔥'
                  : 'Start Your Bloom Streak! 🌱';
              final streakSubtitle = streak > 0
                  ? 'You have logged meals and water consistently. Keep blooming at your own gentle pace.'
                  : 'Log today\'s water or a meal to begin your mindful consistency journey.';

              return Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Row(
                  children: [
                    MascotWidget(
                      state: streak > 0 ? MascotState.cheer : MascotState.wave,
                      size: 80,
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            streakTitle,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Baloo 2',
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            streakSubtitle,
                            style: TextStyle(fontSize: 13, color: context.appSlate),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: AppSpacing.lg),

          Text(
            'ACHIEVEMENT BADGES',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: context.appSlate,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),

          StreamBuilder<List<BadgeEntity>>(
            stream: sl<InsightsRepository>().watchBadges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting && !snapshot.hasData) {
                return const Center(child: CircularProgressIndicator(color: AppColors.mint));
              }
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }
              final badges = snapshot.data ?? [];

              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 215,
                ),
                itemCount: badges.length,
                itemBuilder: (context, index) {
                  final badge = badges[index];
                  return InkWell(
                    onTap: () => _showBadgeDialog(context, badge),
                    borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: context.appSurface,
                        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                        border: badge.isUnlocked
                            ? Border.all(color: AppColors.mint, width: 1.5)
                            : Border.all(color: context.appSlate.withValues(alpha: 0.15)),
                        boxShadow: context.appCardShadow,
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 155,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Opacity(
                                opacity: badge.isUnlocked ? 1.0 : 0.35,
                                child: Text(badge.icon, style: const TextStyle(fontSize: 40)),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                badge.title,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Baloo 2',
                                  color: badge.isUnlocked ? context.appInk : context.appSlate,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                badge.description,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 11, color: context.appSlate),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: badge.isUnlocked
                                      ? AppColors.mint.withValues(alpha: 0.2)
                                      : context.appBackground,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  badge.isUnlocked ? 'Unlocked ✨' : 'Locked 🔒',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: badge.isUnlocked ? context.appInk : context.appSlate,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
