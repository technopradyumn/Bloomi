import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UnitsLanguagePage extends StatefulWidget {
  const UnitsLanguagePage({super.key});

  @override
  State<UnitsLanguagePage> createState() => _UnitsLanguagePageState();
}

class _UnitsLanguagePageState extends State<UnitsLanguagePage> {
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
          ? 'Units updated to Metric (kg, cm, ml)'
          : 'Units updated to Imperial (lbs, ft/in, fl oz)',
    );
  }

  void _saveLanguage(String lang) {
    context.read<SettingsBloc>().add(UpdateLanguageEvent(lang));
    final name = lang == 'hi'
        ? 'हिन्दी (Hindi)'
        : lang == 'hinglish'
            ? 'Hinglish'
            : 'English';
    BloomiToast.show(context, message: 'Language set to $name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'Units & Language',
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
          if (state is SettingsLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final units = state is SettingsLoaded ? state.units : 'metric';
          final language = state is SettingsLoaded ? state.language : 'en';

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: Row(
                  children: [
                    const MascotWidget(state: MascotState.thinking, size: 68),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Preferences',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Baloo 2',
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Choose the measurement units and language that feel most comfortable to you.',
                            style: TextStyle(
                              fontSize: 13,
                              color: context.appSlate,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Text(
                'MEASUREMENT SYSTEM',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: context.appSlate,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Container(
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: RadioGroup<String>(
                  groupValue: units,
                  onChanged: (val) {
                    if (val != null) _saveUnits(val);
                  },
                  child: Column(
                    children: [
                      RadioListTile<String>(
                        value: 'metric',
                        title: Text(
                          'Metric System',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: context.appInk,
                          ),
                        ),
                        subtitle: const Text(
                            'Kilograms (kg), Centimeters (cm), Milliliters (ml)'),
                        secondary: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.mint.withAlpha(51),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.straighten_rounded,
                              color: context.appInk, size: 20),
                        ),
                      ),
                      const Divider(height: 1, indent: 64),
                      RadioListTile<String>(
                        value: 'imperial',
                        title: Text(
                          'Imperial System',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: context.appInk,
                          ),
                        ),
                        subtitle: const Text(
                            'Pounds (lbs), Feet & Inches (ft/in), Fluid Ounces (fl oz)'),
                        secondary: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.butter.withAlpha(102),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.square_foot_rounded,
                              color: context.appInk, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Text(
                'APP LANGUAGE',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: context.appSlate,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Container(
                decoration: BoxDecoration(
                  color: context.appSurface,
                  borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                  boxShadow: context.appCardShadow,
                ),
                child: RadioGroup<String>(
                  groupValue: language,
                  onChanged: (val) {
                    if (val != null) _saveLanguage(val);
                  },
                  child: Column(
                    children: [
                      RadioListTile<String>(
                        value: 'en',
                        title: Text(
                          'English',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: context.appInk,
                          ),
                        ),
                        subtitle: const Text('Standard English interface'),
                        secondary: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.sky.withAlpha(102),
                            shape: BoxShape.circle,
                          ),
                          child: Text('EN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: context.appInk,
                              fontSize: 13)),
                        ),
                      ),
                      const Divider(height: 1, indent: 64),
                      RadioListTile<String>(
                        value: 'hi',
                        title: Text(
                          'हिन्दी (Hindi)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: context.appInk,
                          ),
                        ),
                        subtitle: const Text('पूर्ण हिन्दी इंटरफ़ेस'),
                        secondary: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.peach.withAlpha(102),
                            shape: BoxShape.circle,
                          ),
                          child: Text('हिं',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: context.appInk,
                              fontSize: 13)),
                        ),
                      ),
                      const Divider(height: 1, indent: 64),
                      RadioListTile<String>(
                        value: 'hinglish',
                        title: Text(
                          'Hinglish',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: context.appInk,
                          ),
                        ),
                      subtitle: const Text('Casual conversational Hindi in Latin script'),
                      secondary: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.lilac.withAlpha(102),
                          shape: BoxShape.circle,
                        ),
                        child: Text('HG',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: context.appInk,
                            fontSize: 13)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
        },
      ),
    );
  }
}

