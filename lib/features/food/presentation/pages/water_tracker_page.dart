import 'dart:async';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/features/home/data/local/home_local_data_source.dart';
import 'package:bloomi/features/home/domain/repositories/home_repository.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class WaterTrackerPage extends StatefulWidget {
  const WaterTrackerPage({super.key});

  @override
  State<WaterTrackerPage> createState() => _WaterTrackerPageState();
}

class _WaterTrackerPageState extends State<WaterTrackerPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..forward();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeLocalSource = sl<HomeLocalDataSource>();
    final homeRepo = sl<HomeRepository>();
    final now = DateTime.now();

    final waterStream = homeLocalSource.watchWaterForDate(now);
    final targetsStream = homeLocalSource.watchLatestTargets();
    final db = sl<AppDatabase>();

    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);

    final currentUid = sl<AuthRepository>().currentUserId;
    final logsStream = (db.select(db.waterLogs)
          ..where((t) =>
              t.userId.equals(currentUid) &
              t.date.isBiggerOrEqualValue(startOfDay) &
              t.date.isSmallerOrEqualValue(endOfDay) &
              t.deleted.equals(false))
          ..orderBy([(t) => drift.OrderingTerm(expression: t.createdAt, mode: drift.OrderingMode.desc)]))
        .watch();

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        backgroundColor: context.appSurface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: context.appInk),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/home');
            }
          },
        ),
        title: Text(
          'Water Tracker',
          style: TextStyle(
            fontFamily: 'Baloo 2',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: context.appInk,
          ),
        ),
      ),
      body: StreamBuilder<int>(
        stream: waterStream,
        builder: (context, waterSnap) {
          final consumedMl = waterSnap.data ?? 0;

          return StreamBuilder<Target?>(
            stream: targetsStream,
            builder: (context, targetSnap) {
              final targetMl = targetSnap.data?.waterMl ?? 2200.0;
              final progress = targetMl > 0 ? (consumedMl / targetMl).clamp(0.0, 1.2) : 0.0;
              final remaining = (targetMl - consumedMl).clamp(0, targetMl.toInt());

              return SingleChildScrollView(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // 1. Animated Bottle & Fluid Level
                    Center(
                      child: AnimatedBuilder(
                        animation: _animController,
                        builder: (context, child) {
                          final animatedProgress = progress * _animController.value;
                          return _AnimatedWaterBottle(
                            progress: animatedProgress,
                            consumedMl: consumedMl,
                            targetMl: targetMl.toInt(),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),

                    // Progress Status Text
                    Center(
                      child: Text(
                        remaining == 0
                            ? 'Goal Achieved! You are well hydrated! 💧🎉'
                            : '$remaining ml remaining to reach your daily goal',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: context.isDarkMode ? const Color(0xFF48CAE4) : const Color(0xFF0077B6),
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),

                    // 2. Quick Add Buttons Card
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
                          Text(
                            'Quick Add',
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),
                          Row(
                            children: [
                              Expanded(
                                child: _buildQuickPill(context, '+150 ml', 'Small glass', 150, homeRepo),
                              ),
                              const SizedBox(width: AppSpacing.sm),
                              Expanded(
                                child: _buildQuickPill(context, '+250 ml', 'Full glass', 250, homeRepo),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Row(
                            children: [
                              Expanded(
                                child: _buildQuickPill(context, '+500 ml', 'Bottle', 500, homeRepo),
                              ),
                              const SizedBox(width: AppSpacing.sm),
                              Expanded(
                                child: _buildQuickPill(context, '+750 ml', 'Large flask', 750, homeRepo),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSpacing.md),
                          PillButton(
                            label: 'Custom Amount...',
                            variant: PillButtonVariant.secondary,
                            height: 44,
                            onPressed: () => _showCustomWaterDialog(context, homeRepo),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),

                    // 3. Today's Water Logs History
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
                          Text(
                            "Today's Water Entries",
                            style: TextStyle(
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          StreamBuilder<List<WaterLog>>(
                            stream: logsStream,
                            builder: (context, logsSnap) {
                              final logs = logsSnap.data ?? [];
                              if (logs.isEmpty) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Center(
                                    child: Text(
                                      'No water logged yet today.',
                                      style: TextStyle(color: context.appSlate, fontSize: 13),
                                    ),
                                  ),
                                );
                              }

                              return ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: logs.length,
                                separatorBuilder: (context, index) => Divider(height: 1, color: context.appBorderColor),
                                itemBuilder: (context, index) {
                                  final entry = logs[index];
                                  final timeStr = DateFormat('h:mm a').format(entry.date);

                                  return ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: AppColors.sky.withAlpha(120),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(Icons.water_drop_rounded, color: context.isDarkMode ? const Color(0xFF48CAE4) : const Color(0xFF0077B6), size: 18),
                                    ),
                                    title: Text(
                                      '${entry.ml} ml',
                                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: context.appInk),
                                    ),
                                    subtitle: Text(timeStr, style: TextStyle(color: context.appSlate, fontSize: 12)),
                                    trailing: IconButton(
                                      icon: Icon(Icons.delete_outline_rounded, color: context.appSlate, size: 20),
                                      onPressed: () async {
                                        await (db.update(db.waterLogs)..where((t) => t.id.equals(entry.id))).write(
                                          WaterLogsCompanion(
                                            deleted: const drift.Value(true),
                                            updatedAt: drift.Value(DateTime.now()),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildQuickPill(BuildContext context, String title, String subtitle, int ml, HomeRepository repo) {
    final isDark = context.isDarkMode;
    return InkWell(
      onTap: () async {
        await repo.logWater(ml: ml);
        unawaited(_animController.forward(from: 0.0));
        if (!mounted) return;
        BloomiToast.show(this.context, message: 'Added $ml ml water 💧');
      },
      borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.sky.withAlpha(isDark ? 80 : 100),
          borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Baloo 2',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: isDark ? const Color(0xFF48CAE4) : const Color(0xFF0077B6),
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 11, color: context.appSlate),
            ),
          ],
        ),
      ),
    );
  }

  void _showCustomWaterDialog(BuildContext context, HomeRepository repo) {
    final ctrl = TextEditingController(text: '300');
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: context.appSurface,
        title: Text('Add Custom Water', style: TextStyle(fontFamily: 'Baloo 2', fontWeight: FontWeight.w700, color: context.appInk)),
        content: TextField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          autofocus: true,
          style: TextStyle(color: context.appInk),
          decoration: const InputDecoration(labelText: 'Volume in ml', suffixText: 'ml'),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: context.appMint,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () async {
              final val = int.tryParse(ctrl.text) ?? 0;
              if (val > 0) {
                await repo.logWater(ml: val);
                unawaited(_animController.forward(from: 0.0));
                if (ctx.mounted) Navigator.pop(ctx);
                if (context.mounted) {
                  BloomiToast.show(context, message: 'Added $val ml water 💧');
                }
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}

class _AnimatedWaterBottle extends StatefulWidget {
  const _AnimatedWaterBottle({
    required this.progress,
    required this.consumedMl,
    required this.targetMl,
  });

  final double progress;
  final int consumedMl;
  final int targetMl;

  @override
  State<_AnimatedWaterBottle> createState() => _AnimatedWaterBottleState();
}

class _AnimatedWaterBottleState extends State<_AnimatedWaterBottle>
    with SingleTickerProviderStateMixin {
  late AnimationController _waveController;

  @override
  void initState() {
    super.initState();
    _waveController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    )..repeat();
  }

  @override
  void dispose() {
    _waveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const width = 140.0;
    const height = 240.0;
    final fillFraction = widget.progress.clamp(0.0, 1.0);
    final isDark = context.isDarkMode;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: context.appSurface,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
          bottom: Radius.circular(40),
        ),
        border: Border.all(
          color: isDark ? const Color(0xFF0077B6) : const Color(0xFF90E0EF),
          width: 4,
        ),
        boxShadow: context.appCardShadow,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(26),
          bottom: Radius.circular(36),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Water fill animation with fluid waves
            AnimatedBuilder(
              animation: _waveController,
              builder: (context, _) {
                return CustomPaint(
                  size: const Size(width, height),
                  painter: _BottleFluidPainter(
                    fillFraction: fillFraction,
                    wavePhase: _waveController.value * 2 * 3.14159,
                    isDark: isDark,
                  ),
                );
              },
            ),
            // Text Overlay
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.water_drop_rounded,
                    color: isDark ? const Color(0xFF90E0EF) : const Color(0xFF0077B6),
                    size: 28,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${widget.consumedMl}',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                      color: context.appInk,
                      height: 1.0,
                    ),
                  ),
                  Text(
                    'of ${widget.targetMl} ml',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: isDark ? context.appSurface.withAlpha(190) : context.appSurface.withAlpha(200),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      '${(widget.progress * 100).toInt()}%',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w800,
                        fontSize: 11,
                        color: isDark ? const Color(0xFF90E0EF) : const Color(0xFF0077B6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottleFluidPainter extends CustomPainter {
  final double fillFraction;
  final double wavePhase;
  final bool isDark;

  _BottleFluidPainter({
    required this.fillFraction,
    required this.wavePhase,
    required this.isDark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (fillFraction <= 0) return;

    final waterHeight = size.height * fillFraction;
    final waterY = size.height - waterHeight;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, waterY);

    for (double x = 0; x <= size.width; x += 1) {
      final y = waterY + 4 * (1.0 - (waterHeight / size.height) * 0.5) * (fillFraction > 0.02 ? 1 : 0) *
          (0.6 * (wavePhase + x * 0.08).abs() % 1.0 * 2 - 1);
      path.lineTo(x, y);
    }
    path.lineTo(size.width, size.height);
    path.close();

    final colors = isDark
        ? [const Color(0xFF0077B6), const Color(0xFF00B4D8)]
        : [const Color(0xFF00B4D8), const Color(0xFF90E0EF)];

    final paint = Paint()
      ..shader = LinearGradient(
        colors: colors,
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ).createShader(Rect.fromLTWH(0, waterY, size.width, waterHeight));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _BottleFluidPainter oldDelegate) =>
      oldDelegate.fillFraction != fillFraction ||
      oldDelegate.wavePhase != wavePhase ||
      oldDelegate.isDark != isDark;
}

