import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Dedicated Units of Measurement Settings Screen.
class UnitsPage extends StatefulWidget {
  const UnitsPage({super.key});

  @override
  State<UnitsPage> createState() => _UnitsPageState();
}

class _UnitsPageState extends State<UnitsPage> {
  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const LoadSettingsEvent());
  }

  void _saveUnits(String units) {
    context.read<SettingsBloc>().add(UpdateUnitsEvent(units));
    BloomiToast.show(
      context,
      message: units == 'metric'
          ? 'Units updated to Metric (kg, cm, ml, km)'
          : 'Units updated to Imperial (lbs, ft/in, fl oz, miles)',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          context.tr('units_of_measurement'),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Baloo 2',
            fontSize: 22,
            color: context.appInk,
          ),
        ),
        backgroundColor: context.appSurface,
        foregroundColor: context.appInk,
        elevation: 0,
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          if (state is SettingsLoading) {
            return const Center(child: CircularProgressIndicator(color: AppColors.mint));
          }

          final units = state is SettingsLoaded ? state.units : 'metric';

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              // Header Card
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Row(
                  children: [
                    const MascotWidget(state: MascotState.happy, size: 68),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose Your System',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Baloo 2',
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Select how weight, height, hydration, and distance are displayed throughout Bloomi.',
                            style: TextStyle(fontSize: 12, color: context.appSlate, height: 1.35),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Metric System Option
              _buildUnitCard(
                context: context,
                title: context.tr('units_metric'),
                subtitle: 'Kilograms (kg), Centimeters (cm), Milliliters (ml), Kilometers (km)',
                icon: CupertinoIcons.gauge,
                isSelected: units == 'metric',
                color: AppColors.mint,
                onTap: () => _saveUnits('metric'),
              ),
              const SizedBox(height: AppSpacing.md),

              // Imperial System Option
              _buildUnitCard(
                context: context,
                title: context.tr('units_imperial'),
                subtitle: 'Pounds (lbs), Feet & Inches (ft/in), Fluid Ounces (fl oz), Miles (mi)',
                icon: CupertinoIcons.chart_bar,
                isSelected: units == 'imperial',
                color: AppColors.peach,
                onTap: () => _saveUnits('imperial'),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Measurement Conversion Breakdown
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CONVERSION BREAKDOWN',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                        color: context.appSlate,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    _buildConversionRow(context, context.tr('profile_weight'), units == 'metric' ? 'Kilograms (kg)' : 'Pounds (lbs)'),
                    const Divider(height: 16),
                    _buildConversionRow(context, context.tr('profile_height'), units == 'metric' ? 'Centimeters (cm)' : 'Feet & Inches (ft/in)'),
                    const Divider(height: 16),
                    _buildConversionRow(context, context.tr('water'), units == 'metric' ? 'Milliliters (ml)' : 'Fluid Ounces (fl oz)'),
                    const Divider(height: 16),
                    _buildConversionRow(context, 'Distance', units == 'metric' ? 'Kilometers (km)' : 'Miles (mi)'),
                    const Divider(height: 16),
                    _buildConversionRow(context, context.tr('calories'), 'Kilocalories (kcal)'),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
            ],
          );
        },
      ),
    );
  }

  Widget _buildUnitCard({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required bool isSelected,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: context.appSurface,
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          border: Border.all(
            color: isSelected ? AppColors.mint : context.appBorderColor,
            width: 2,
          ),
          boxShadow: context.appCardShadow,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color.withAlpha(context.isDarkMode ? 80 : 50),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: context.appInk, size: 22),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Baloo 2',
                      color: context.appInk,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 12, color: context.appSlate, height: 1.3),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Icon(
              isSelected ? CupertinoIcons.checkmark_circle_fill : CupertinoIcons.circle,
              color: isSelected ? AppColors.mint : context.appSlate,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConversionRow(BuildContext context, String metricName, String activeUnit) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          metricName,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: context.appInk),
        ),
        Text(
          activeUnit,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.mint),
        ),
      ],
    );
  }
}

