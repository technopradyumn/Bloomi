import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Dedicated Language Settings Screen.
class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const LoadSettingsEvent());
  }

  void _saveLanguage(String lang) {
    context.read<SettingsBloc>().add(UpdateLanguageEvent(lang));
    final name = lang == 'hi'
        ? 'हिन्दी (Hindi)'
        : lang == 'hinglish'
            ? 'Hinglish'
            : 'English';
    BloomiToast.show(context, message: 'Language updated to $name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          'App Language',
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

          final language = state is SettingsLoaded ? state.language : 'en';

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
                    const MascotWidget(state: MascotState.wave, size: 68),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Feel at Home',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Baloo 2',
                              color: context.appInk,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Select your preferred language for meal logging, recipes, and daily guidance.',
                            style: TextStyle(fontSize: 12, color: context.appSlate, height: 1.35),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // English Option
              _buildLanguageCard(
                context: context,
                languageName: 'English',
                nativeScript: 'English (Default)',
                badge: 'EN',
                description: 'Full app interface and comprehensive global food items',
                isSelected: language == 'en',
                color: AppColors.sky,
                onTap: () => _saveLanguage('en'),
              ),
              const SizedBox(height: AppSpacing.md),

              // Hindi Option
              _buildLanguageCard(
                context: context,
                languageName: 'हिन्दी',
                nativeScript: 'Hindi',
                badge: 'HI',
                description: 'भारतीय भोजन सामग्री और पोषण विवरण के साथ सम्पूर्ण हिन्दी इंटरफेस',
                isSelected: language == 'hi',
                color: AppColors.peach,
                onTap: () => _saveLanguage('hi'),
              ),
              const SizedBox(height: AppSpacing.md),

              // Hinglish Option
              _buildLanguageCard(
                context: context,
                languageName: 'Hinglish',
                nativeScript: 'Conversational Mix',
                badge: 'MIX',
                description: 'Desi meals, simple Hindi words written in English alphabet',
                isSelected: language == 'hinglish',
                color: AppColors.butter,
                onTap: () => _saveLanguage('hinglish'),
              ),
              const SizedBox(height: AppSpacing.xl),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLanguageCard({
    required BuildContext context,
    required String languageName,
    required String nativeScript,
    required String badge,
    required String description,
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
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: color.withAlpha(context.isDarkMode ? 80 : 65),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  badge,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: context.appInk,
                  ),
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        languageName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Baloo 2',
                          color: context.appInk,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '($nativeScript)',
                        style: TextStyle(fontSize: 12, color: context.appSlate),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: TextStyle(fontSize: 12, color: context.appSlate, height: 1.3),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Icon(
              isSelected ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
              color: isSelected ? AppColors.mint : context.appSlate,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}

