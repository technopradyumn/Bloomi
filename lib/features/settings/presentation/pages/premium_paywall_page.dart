import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PremiumPaywallPage extends StatefulWidget {
  const PremiumPaywallPage({super.key});

  @override
  State<PremiumPaywallPage> createState() => _PremiumPaywallPageState();
}

class _PremiumPaywallPageState extends State<PremiumPaywallPage> {
  String _selectedPlanId = 'bloomi_premium_yearly';
  bool _isLoading = false;
  Map<String, ProductDetails> _storeProducts = {};

  final availablePlans = const [
    (
      id: 'bloomi_premium_7days_trial',
      name: '7-Day Free Trial',
      price: '\$2.99 / month after 7 days',
      title: '7-Day Free Trial',
      savingsNote: 'Try Free'
    ),
    (
      id: 'bloomi_premium_monthly',
      name: 'Monthly Plan',
      price: '\$2.99 / month',
      title: 'Monthly Plan',
      savingsNote: null
    ),
    (
      id: 'bloomi_premium_6months',
      name: '6 Months Plan',
      price: '\$11.99 / 6 months (\$2.00/mo)',
      title: '6 Months Plan',
      savingsNote: 'Save 33%'
    ),
    (
      id: 'bloomi_premium_yearly',
      name: 'Yearly Plan',
      price: '\$19.99 / year (\$1.66/mo)',
      title: 'Yearly Plan',
      savingsNote: 'Save 44% - Best Value'
    ),
  ];

  String get _buttonLabel {
    if (_isLoading) return 'Processing...';
    if (_selectedPlanId.contains('7days')) return 'Start 7-Day Free Trial';
    return 'Subscribe Now';
  }

  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const LoadSettingsEvent());
    _fetchStoreProducts();
  }

  Future<void> _fetchStoreProducts() async {
    try {
      final billingService = sl<BillingService>();
      final products = await billingService
          .loadProducts(BillingService.defaultProductIds);
      if (mounted && products.isNotEmpty) {
        setState(() {
          _storeProducts = {for (final p in products) p.id: p};
        });
      }
    } catch (_) {}
  }

  Future<void> _handlePurchase() async {
    setState(() => _isLoading = true);
    context.read<SettingsBloc>().add(PurchasePremiumEvent(_selectedPlanId));
    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (mounted) {
      setState(() => _isLoading = false);
      BloomiToast.show(context, message: 'Welcome to Bloomi Premium! 🌸✨');
    }
  }

  Future<void> _handleRestore() async {
    setState(() => _isLoading = true);
    context.read<SettingsBloc>().add(const RestorePurchasesEvent());
    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (mounted) {
      setState(() => _isLoading = false);
      BloomiToast.show(context, message: 'Purchases restored successfully! 🌿');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Bloomi Premium',
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
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          final isPremium = state is SettingsLoaded && state.isPremium;

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              Center(
                child: Column(
                  children: [
                    const MascotWidget(state: MascotState.cheer, size: 90),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      'Bloom Without Limits',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Baloo 2',
                        color: context.appInk,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'Empower your mindful wellness with unlimited AI vision scans, full lab micronutrients, and watch tiles.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13, color: context.appSlate, height: 1.4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  children: [
                    _buildPerkRow(
                      Icons.auto_awesome_rounded,
                      'Unlimited AI Photo Meal Scans',
                      'Scan meals freely without daily limits (Free is 5/day).',
                      AppColors.mint,
                    ),
                    const Divider(height: 16),
                    _buildPerkRow(
                      Icons.biotech_rounded,
                      'Full Lab Micronutrients & RDA',
                      'Track vitamins, minerals, and micronutrient balance.',
                      AppColors.butter,
                    ),
                    const Divider(height: 16),
                    _buildPerkRow(
                      Icons.watch_rounded,
                      'Wear OS Tiles & Home Screen Widgets',
                      'Live pastel progress right on your wrist and phone display.',
                      AppColors.sky,
                    ),
                    const Divider(height: 16),
                    _buildPerkRow(
                      Icons.palette_rounded,
                      'Custom Pastel Themes & Outfits',
                      'Unlock cheerful seasonal wardrobe themes for your mascot.',
                      AppColors.lilac,
                    ),
                    const Divider(height: 16),
                    _buildPerkRow(
                      Icons.shield_rounded,
                      'Support 100% Offline-First Privacy',
                      'Zero trackers, zero remote ads, zero server profiling.',
                      AppColors.peach,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              if (!isPremium) ...[
                Text(
                  'SELECT YOUR PLAN',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: context.appSlate,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                ...availablePlans.map((plan) {
                  final isSelected = plan.id == _selectedPlanId;
                  final storeProduct = _storeProducts[plan.id];
                  final displayPrice = storeProduct?.price ?? plan.price;

                  return GestureDetector(
                    onTap: () => setState(() => _selectedPlanId = plan.id),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                      padding: const EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        color: context.appSurface,
                        borderRadius:
                            BorderRadius.circular(AppSpacing.cardRadius),
                        border: Border.all(
                          color: isSelected
                              ? AppColors.mint
                              : context.appDivider,
                          width: isSelected ? 2 : 1,
                        ),
                        boxShadow: context.appCardShadow,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            isSelected
                                ? Icons.check_circle_rounded
                                : Icons.radio_button_unchecked_rounded,
                            color:
                                isSelected ? AppColors.mint : context.appSlate,
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      plan.title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: context.appInk),
                                    ),
                                    if (plan.savingsNote != null) ...[
                                      const SizedBox(width: 8),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: AppColors.mint.withAlpha(51),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Text(
                                          plan.savingsNote!,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: context.appInk),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                                const SizedBox(height: 2),
                                Text(displayPrice,
                                    style: TextStyle(
                                        fontSize: 13, color: context.appSlate)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                const SizedBox(height: AppSpacing.md),
                PillButton(
                  label: _buttonLabel,
                  icon: Icons.star_rounded,
                  isLoading: _isLoading,
                  onPressed: _isLoading ? null : _handlePurchase,
                ),
                const SizedBox(height: AppSpacing.sm),
                Center(
                  child: TextButton(
                    onPressed: _isLoading ? null : _handleRestore,
                    child: Text('Restore Purchases',
                        style: TextStyle(color: context.appSlate)),
                  ),
                ),
              ] else ...[
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: AppColors.mint.withAlpha(51),
                    borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.verified_rounded,
                          color: context.appInk, size: 28),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: Text(
                          'You are currently enjoying Bloomi Premium! All features and unlimited scans are active.',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: context.appInk,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: AppSpacing.md),
            ],
          );
        },
      ),
    );
  }

  Widget _buildPerkRow(
      IconData icon, String title, String subtitle, Color color) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withAlpha(89),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: context.appInk, size: 20),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: context.appInk),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 12, color: context.appSlate),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
