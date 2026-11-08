import 'dart:async';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/food/domain/entities/barcode_product_entity.dart';
import 'package:bloomi/features/food/domain/entities/nutrient_snapshot_entity.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScanPage extends StatefulWidget {
  final bool isEmbedded;
  final String? mealType;
  final bool isActive;

  const BarcodeScanPage({
    super.key,
    this.isEmbedded = false,
    this.mealType,
    this.isActive = true,
  });

  @override
  State<BarcodeScanPage> createState() => _BarcodeScanPageState();
}

class _BarcodeScanPageState extends State<BarcodeScanPage> {
  final TextEditingController _barcodeCtrl = TextEditingController();
  late final MobileScannerController _scannerController;
  bool _isLoading = false;
  bool _isFlashOn = false;
  String? _lastScannedBarcode;
  BarcodeProductEntity? _foundProduct;
  String? _errorMessage;
  bool _isPremium = false;
  StreamSubscription<bool>? _premiumSub;

  // Portion adjustments
  double _servings = 1.0;
  late TextEditingController _kcalCtrl;
  late TextEditingController _proteinCtrl;
  late TextEditingController _carbsCtrl;
  late TextEditingController _fatCtrl;

  @override
  void initState() {
    super.initState();
    _checkPremium();
    _premiumSub = sl<BillingService>().onPremiumChanged.listen((val) {
      if (mounted) {
        setState(() => _isPremium = val);
        if (val && widget.isActive) {
          _scannerController.start();
        } else {
          _scannerController.stop();
        }
      }
    });
    _scannerController = MobileScannerController(
      autoStart: widget.isActive,
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
      torchEnabled: false,
    );
    _kcalCtrl = TextEditingController();
    _proteinCtrl = TextEditingController();
    _carbsCtrl = TextEditingController();
    _fatCtrl = TextEditingController();
  }

  Future<void> _checkPremium() async {
    final prem = await sl<BillingService>().isPremium();
    if (mounted) {
      setState(() => _isPremium = prem);
      if (!prem) {
        unawaited(_scannerController.stop());
      }
    }
  }

  @override
  void didUpdateWidget(covariant BarcodeScanPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isActive != widget.isActive) {
      if (widget.isActive && _isPremium) {
        _scannerController.start();
      } else {
        _scannerController.stop();
      }
    }
  }

  @override
  void dispose() {
    _premiumSub?.cancel();
    _barcodeCtrl.dispose();
    _scannerController.dispose();
    _kcalCtrl.dispose();
    _proteinCtrl.dispose();
    _carbsCtrl.dispose();
    _fatCtrl.dispose();
    super.dispose();
  }

  void _populateNutrientControllers(BarcodeProductEntity product) {
    _kcalCtrl.text = product.kcalPer100g.toStringAsFixed(0);
    _proteinCtrl.text = product.proteinPer100g.toStringAsFixed(1);
    _carbsCtrl.text = product.carbsPer100g.toStringAsFixed(1);
    _fatCtrl.text = product.fatPer100g.toStringAsFixed(1);
  }

  Future<void> _searchBarcode(String barcode) async {
    if (barcode.trim().isEmpty) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _foundProduct = null;
    });

    final product = await sl<FoodRepository>().lookupBarcode(barcode.trim());

    if (!mounted) return;

    setState(() {
      _isLoading = false;
      if (product != null) {
        _foundProduct = product;
        _servings = 1.0;
        _populateNutrientControllers(product);
      } else {
        _errorMessage = 'Barcode "$barcode" not recognized in OpenFoodFacts.';
      }
    });
  }

  Future<void> _logProductToDiary() async {
    if (_foundProduct == null) return;

    final repo = sl<FoodRepository>();
    final kcal100 = double.tryParse(_kcalCtrl.text) ?? _foundProduct!.kcalPer100g;
    final p100 = double.tryParse(_proteinCtrl.text) ?? _foundProduct!.proteinPer100g;
    final c100 = double.tryParse(_carbsCtrl.text) ?? _foundProduct!.carbsPer100g;
    final f100 = double.tryParse(_fatCtrl.text) ?? _foundProduct!.fatPer100g;

    final grams = _foundProduct!.servingGrams * _servings;
    final factor = grams / 100.0;

    final snapshot = NutrientSnapshotEntity(
      calories: kcal100 * factor,
      protein: p100 * factor,
      carbs: c100 * factor,
      fat: f100 * factor,
      fibre: _foundProduct!.fibrePer100g * factor,
    );

    final targetMeal = widget.mealType ?? 'Snack';

    await repo.logMeal(
      mealType: targetMeal,
      foodName: '${_foundProduct!.name} (${_foundProduct!.brand})',
      foodReference: 'barcode_${_foundProduct!.barcode}',
      quantity: _servings,
      unit: _foundProduct!.servingSize,
      totalGrams: grams,
      nutrients: snapshot,
    );

    if (mounted) {
      BloomiToast.show(
        context,
        message: 'Logged "${_foundProduct!.name}" to $targetMeal! 🌿',
      );
      try {
        context.go('/food');
      } catch (_) {
        await Navigator.of(context).maybePop();
      }
    }
  }

  Widget _buildScannerInactivePlaceholder() {
    return Container(
      color: context.isDarkMode ? Colors.black : const Color(0xFF161616),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.qr_code_scanner_rounded, color: AppColors.mint, size: 48),
            SizedBox(height: 10),
            Text(
              'Barcode Scanner Standby',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Scanner activates when this tab is selected',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        // 1. Live Camera Barcode Scanner Viewfinder
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          child: Container(
            height: widget.isEmbedded ? 220 : 260,
            color: Colors.black,
            child: widget.isActive
                ? Stack(
                    alignment: Alignment.center,
                    children: [
                      MobileScanner(
                        controller: _scannerController,
                        onDetect: (BarcodeCapture capture) {
                          if (_isLoading) return;
                          for (final barcode in capture.barcodes) {
                            final code = barcode.rawValue;
                            if (code != null &&
                                code.isNotEmpty &&
                                code != _lastScannedBarcode) {
                              _lastScannedBarcode = code;
                              _barcodeCtrl.text = code;
                              HapticFeedback.mediumImpact();
                              _searchBarcode(code);
                              break;
                            }
                          }
                        },
                        errorBuilder: (context, error) {
                          return Container(
                            color: context.isDarkMode ? Colors.black : const Color(0xFF161616),
                            padding: const EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.videocam_off_rounded,
                                      color: Colors.white38, size: 40),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Camera permission required for barcode scanner',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextButton.icon(
                                        onPressed: () => context.push('/settings/permissions'),
                                        icon: const Icon(Icons.shield_outlined, size: 16),
                                        label: const Text('Manage Permissions',
                                            style: TextStyle(color: AppColors.mint)),
                                      ),
                                      const SizedBox(width: 8),
                                      TextButton.icon(
                                        onPressed: () => _scannerController.start(),
                                        icon: const Icon(Icons.refresh_rounded, size: 16),
                                        label: const Text('Retry',
                                            style: TextStyle(color: Colors.white70)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),

                      // Custom Framing Guide Box
                      IgnorePointer(
                        child: Container(
                          width: 220,
                          height: 110,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.mint, width: 2.5),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.mint.withValues(alpha: 0.25),
                                blurRadius: 10,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Flash toggle
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            _isFlashOn
                                ? Icons.flash_on_rounded
                                : Icons.flash_off_rounded,
                            color: _isFlashOn ? AppColors.butter : Colors.white,
                            size: 20,
                          ),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.black54,
                            padding: const EdgeInsets.all(8),
                          ),
                          onPressed: () {
                            _scannerController.toggleTorch();
                            setState(() => _isFlashOn = !_isFlashOn);
                          },
                          tooltip: 'Toggle Flashlight',
                        ),
                      ),

                      // Guidance pill
                      Positioned(
                        bottom: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.65),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.qr_code_scanner_rounded,
                                  color: AppColors.mint, size: 14),
                              SizedBox(width: 6),
                              Text(
                                'Align barcode inside frame',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : _buildScannerInactivePlaceholder(),
          ),
        ),
        const SizedBox(height: AppSpacing.md),

        // 2. Barcode Search / Manual Entry Field
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            boxShadow: context.appCardShadow,
          ),
          child: Row(
            children: [
              Icon(Icons.search_rounded, color: context.appSlate),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: _barcodeCtrl,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: context.appInk),
                  decoration: InputDecoration(
                    hintText: 'Enter barcode (e.g. 8901030364951)',
                    hintStyle: TextStyle(color: context.appSlate),
                    border: InputBorder.none,
                  ),
                  onSubmitted: _searchBarcode,
                ),
              ),
              if (_isLoading)
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                      strokeWidth: 2, color: AppColors.mint),
                )
              else
                IconButton(
                  icon: const Icon(Icons.arrow_forward_rounded,
                      color: AppColors.mint),
                  onPressed: () => _searchBarcode(_barcodeCtrl.text),
                ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),

        // 3. Error Banner
        if (_errorMessage != null) ...[
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.peach.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline_rounded,
                        color: context.appInk, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Product Not Found',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: context.appInk),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(_errorMessage!,
                    style: TextStyle(fontSize: 13, color: context.appInk)),
                const SizedBox(height: 12),
                PillButton(
                  label: 'Create Custom Food',
                  icon: Icons.add_rounded,
                  onPressed: () => context.push('/food/custom'),
                ),
              ],
            ),
          ),
        ],

        // 4. Found Product Review Card
        if (_foundProduct != null) ...[
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: context.appSurface,
              borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
              border: Border.all(color: AppColors.mint, width: 1.5),
              boxShadow: context.appCardShadow,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _foundProduct!.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Baloo 2',
                    color: context.appInk,
                  ),
                ),
                Text(
                  '${_foundProduct!.brand} • Serving: ${_foundProduct!.servingSize}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13, color: context.appSlate),
                ),
                Divider(height: 20, color: context.appBorderColor),

                // Servings Stepper
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Number of Servings:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: context.appInk),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                              Icons.remove_circle_outline_rounded,
                              color: context.appSlate),
                          onPressed: () {
                            if (_servings > 0.5) {
                              setState(() => _servings -= 0.5);
                            }
                          },
                        ),
                        Text(
                          _servings.toStringAsFixed(1),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16, color: context.appInk),
                        ),
                        IconButton(
                          icon: const Icon(
                              Icons.add_circle_outline_rounded,
                              color: AppColors.mint),
                          onPressed: () {
                            setState(() => _servings += 0.5);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Text(
                  'Nutrients per 100g (Editable)',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: context.appSlate),
                ),
                const SizedBox(height: 6),

                // Nutrient Inputs
                Row(
                  children: [
                    Expanded(
                        child: _buildNutrientField(
                            'Calories', _kcalCtrl, 'kcal')),
                    const SizedBox(width: 8),
                    Expanded(
                        child: _buildNutrientField(
                            'Protein', _proteinCtrl, 'g')),
                    const SizedBox(width: 8),
                    Expanded(
                        child: _buildNutrientField(
                            'Carbs', _carbsCtrl, 'g')),
                    const SizedBox(width: 8),
                    Expanded(
                        child:
                            _buildNutrientField('Fat', _fatCtrl, 'g')),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),

                PillButton(
                  label: 'Log to Food Diary',
                  icon: Icons.check_circle_rounded,
                  onPressed: _logProductToDiary,
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildNutrientField(
      String label, TextEditingController ctrl, String unit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(fontSize: 11, color: context.appSlate)),
        const SizedBox(height: 2),
        TextField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: context.appInk),
          decoration: InputDecoration(
            suffixText: unit,
            suffixStyle: TextStyle(color: context.appSlate, fontSize: 11),
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }

  Widget _buildPremiumPaywall() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: context.appSurface,
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            boxShadow: context.appCardShadow,
            border: Border.all(
              color: context.appSoftOrange.withAlpha(context.isDarkMode ? 100 : 70),
              width: 1.5,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: context.appSoftOrange.withAlpha(context.isDarkMode ? 40 : 25),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: context.appSoftOrange.withAlpha(context.isDarkMode ? 140 : 100),
                    width: 2,
                  ),
                ),
                child: Icon(
                  Icons.qr_code_scanner_rounded,
                  color: context.appSoftOrange,
                  size: 40,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.workspace_premium_rounded, color: context.appSoftOrange, size: 20),
                  const SizedBox(width: 6),
                  Text(
                    'Bloomi Premium Feature',
                    style: TextStyle(
                      fontFamily: 'Baloo 2',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: context.appSoftOrange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                'Barcode Scanner 🏷️',
                style: TextStyle(
                  fontFamily: 'Baloo 2',
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: context.appInk,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Instantly scan grocery and packaged food barcodes for rapid nutritional logging and automated tracking.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 13,
                  color: context.appSlate,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Container(
                padding: const EdgeInsets.all(AppSpacing.sm),
                decoration: BoxDecoration(
                  color: context.appBackground,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: context.appBorderColor),
                ),
                child: const Column(
                  children: [
                    _FeatureBenefitRow(icon: Icons.flash_on_rounded, text: 'Instant 1-second grocery barcode scanning'),
                    SizedBox(height: 6),
                    _FeatureBenefitRow(icon: Icons.pie_chart_rounded, text: 'Automatic calorie & macro calculation'),
                    SizedBox(height: 6),
                    _FeatureBenefitRow(icon: Icons.inventory_2_rounded, text: '1M+ verified food products database'),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              SizedBox(
                width: double.infinity,
                child: PillButton(
                  label: 'Unlock with Premium 👑',
                  variant: PillButtonVariant.primary,
                  onPressed: () => context.push('/settings/premium'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!_isPremium) {
      if (widget.isEmbedded) {
        return _buildPremiumPaywall();
      }
      return Scaffold(
        backgroundColor: context.appBackground,
        appBar: AppBar(
          title: Text(
            'Barcode Scanner',
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
        body: _buildPremiumPaywall(),
      );
    }

    if (widget.isEmbedded) {
      return _buildBody();
    }

    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Barcode Scanner',
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
      body: _buildBody(),
    );
  }
}

class _FeatureBenefitRow extends StatelessWidget {
  const _FeatureBenefitRow({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: context.appInk,
            ),
          ),
        ),
      ],
    );
  }
}
