import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/services/food/photo_scan_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhotoAnalysingPage extends StatefulWidget {
  final String? imagePath;

  const PhotoAnalysingPage({super.key, this.imagePath});

  @override
  State<PhotoAnalysingPage> createState() => _PhotoAnalysingPageState();
}

class _PhotoAnalysingPageState extends State<PhotoAnalysingPage> {
  String _statusMessage = 'Examining your delicious meal...';
  bool _isOfflineQueued = false;
  String? _errorMessage;
  bool _isDone = false;

  @override
  void initState() {
    super.initState();
    _startAnalysis();
  }

  Future<void> _startAnalysis() async {
    final path = widget.imagePath ?? 'sample_meal.jpg';
    final service = sl<PhotoScanService>();

    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (!mounted) return;
    setState(() => _statusMessage = 'Estimating portions and nutrients...');

    final result = await service.analyzePhoto(path);

    if (!mounted) return;

    if (result.isOfflineQueued) {
      setState(() {
        _isOfflineQueued = true;
        _isDone = true;
        _statusMessage = 'Saved to offline scan queue';
      });
    } else if (result.isSuccess) {
      setState(() {
        _isDone = true;
        _statusMessage = 'Meal analyzed successfully!';
      });
      await Future<void>.delayed(const Duration(milliseconds: 500));
      if (mounted) {
        context.pushReplacement(
          '/food/review',
          extra: {
            'items': result.items,
            'remainingScans': result.remainingScans,
          },
        );
      }
    } else {
      setState(() {
        _isDone = true;
        _errorMessage = result.errorMessage ?? 'Could not identify meal items.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.screenSide),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MascotWidget(
                  state: _errorMessage != null
                      ? MascotState.gentleSad
                      : _isDone
                          ? MascotState.happy
                          : MascotState.thinking,
                  size: 140,
                ),
                const SizedBox(height: AppSpacing.xl),
                Text(
                  _errorMessage != null ? 'Scan Notice' : 'Analyzing Meal',
                  style: TextStyle(
                    fontFamily: 'Baloo 2',
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: context.appInk,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  _errorMessage ?? _statusMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15,
                    color: context.appSlate,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
                if (!_isDone) ...[
                  const SizedBox(
                    width: 48,
                    height: 48,
                    child: CircularProgressIndicator(
                      color: AppColors.mint,
                      strokeWidth: 3.5,
                    ),
                  ),
                ] else if (_isOfflineQueued) ...[
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      color: AppColors.sky.withAlpha(50),
                      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                      border: Border.all(color: AppColors.sky.withAlpha(120)),
                    ),
                    child: Text(
                      'You are offline. Bloomi queued your photo to automatically analyze and notify you once back online.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13, color: context.appInk),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  PillButton(
                    label: 'Return to Diary',
                    onPressed: () => context.go('/food'),
                  ),
                ] else if (_errorMessage != null) ...[
                  PillButton(
                    label: 'Try Again',
                    onPressed: () {
                      setState(() {
                        _isDone = false;
                        _errorMessage = null;
                        _statusMessage = 'Retrying scan...';
                      });
                      _startAnalysis();
                    },
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancel and log manually'),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

