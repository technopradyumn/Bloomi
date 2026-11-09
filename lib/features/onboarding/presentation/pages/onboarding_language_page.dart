import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/localization/app_languages.dart';
import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/core/services/country_detection_service.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/core/widgets/metric_animations/floating_onboarding_illustration.dart';
import 'package:bloomi/core/widgets/pill_button.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// Dedicated Onboarding Language Step & Modal Sheet with automatic country detection
/// that prioritizes and highlights the user's country and native languages on top.
class OnboardingLanguagePage extends StatefulWidget {
  final bool isStandalone;
  final bool isBottomSheet;
  final VoidCallback? onNext;
  final VoidCallback? onBack;

  const OnboardingLanguagePage({
    super.key,
    this.isStandalone = false,
    this.isBottomSheet = false,
    this.onNext,
    this.onBack,
  });

  /// Opens the language selector as a sleek modal bottom sheet from anywhere (e.g. Intro Slides)
  static Future<void> showLanguageSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return Container(
          height: MediaQuery.of(ctx).size.height * 0.88,
          decoration: BoxDecoration(
            color: ctx.appBackground,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: 44,
                height: 5,
                decoration: BoxDecoration(
                  color: ctx.appDivider,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              Expanded(
                child: OnboardingLanguagePage(
                  isBottomSheet: true,
                  onNext: () => Navigator.of(ctx).pop(),
                  onBack: () => Navigator.of(ctx).pop(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  State<OnboardingLanguagePage> createState() => _OnboardingLanguagePageState();
}

class _OnboardingLanguagePageState extends State<OnboardingLanguagePage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  String _selectedFilter = 'All';

  late DetectedCountry _detectedCountry;
  List<AppLanguage> _countryLanguages = [];
  bool _isDetecting = false;

  final List<String> _filters = [
    'All',
    'India',
    'Asia',
    'Europe',
    'Middle East',
    'Africa',
    'Americas',
  ];

  @override
  void initState() {
    super.initState();
    // 1. Immediately obtain cached or platform-detected country (synchronous, 0ms latency)
    _detectedCountry = CountryDetectionService.getCachedOrInitialCountry();
    _countryLanguages = AppLanguage.getLanguagesForCountry(
      _detectedCountry.name,
      _detectedCountry.code,
    );

    // 2. Perform async IP geocode detection to refine in background
    _detectCountryAsync();
  }

  Future<void> _detectCountryAsync() async {
    setState(() => _isDetecting = true);
    try {
      final country = await CountryDetectionService.detectCountry();
      if (mounted) {
        setState(() {
          _detectedCountry = country;
          _countryLanguages = AppLanguage.getLanguagesForCountry(
            country.name,
            country.code,
          );
          _isDetecting = false;
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() => _isDetecting = false);
      }
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _selectLanguage(AppLanguage lang) {
    context.read<SettingsBloc>().add(UpdateLanguageEvent(lang.code));
    BloomiToast.show(
      context,
      message: context.tr('language_changed_toast', {
        'name': lang.name,
        'nativeName': lang.nativeName,
      }),
      icon: CupertinoIcons.globe,
    );
  }

  void _handleContinue() {
    if (widget.isBottomSheet) {
      Navigator.of(context).pop();
      return;
    }

    if (widget.onNext != null) {
      widget.onNext!();
    } else {
      context.go('/onboarding/about-you');
    }
  }

  void _handleBack() {
    if (widget.isBottomSheet) {
      Navigator.of(context).pop();
      return;
    }

    if (widget.onBack != null) {
      widget.onBack!();
    } else {
      context.go('/onboarding/intro');
    }
  }

  Color _badgeColorForIndex(int index) {
    const palette = [
      AppColors.mint,
      AppColors.sky,
      AppColors.peach,
      AppColors.lilac,
      AppColors.butter,
      AppColors.softOrange,
    ];
    return palette[index % palette.length];
  }

  List<AppLanguage> _filterAllLanguages() {
    final query = _searchQuery.trim().toLowerCase();
    return AppLanguage.supportedLanguages.where((lang) {
      if (_selectedFilter != 'All') {
        if (_selectedFilter == 'India') {
          if (!lang.region.toLowerCase().contains('india')) return false;
        } else if (_selectedFilter == 'Asia') {
          if (!lang.region.toLowerCase().contains('asia') &&
              !lang.region.toLowerCase().contains('china') &&
              !lang.region.toLowerCase().contains('japan') &&
              !lang.region.toLowerCase().contains('korea') &&
              !lang.region.toLowerCase().contains('philippines') &&
              !lang.region.toLowerCase().contains('vietnam') &&
              !lang.region.toLowerCase().contains('indonesia') &&
              !lang.region.toLowerCase().contains('thailand') &&
              !lang.region.toLowerCase().contains('myanmar') &&
              !lang.region.toLowerCase().contains('singapore')) {
            return false;
          }
        } else if (_selectedFilter == 'Europe') {
          if (!lang.region.toLowerCase().contains('europe') &&
              !lang.region.toLowerCase().contains('spain') &&
              !lang.region.toLowerCase().contains('france') &&
              !lang.region.toLowerCase().contains('germany') &&
              !lang.region.toLowerCase().contains('italy') &&
              !lang.region.toLowerCase().contains('uk') &&
              !lang.region.toLowerCase().contains('poland') &&
              !lang.region.toLowerCase().contains('russia') &&
              !lang.region.toLowerCase().contains('sweden') &&
              !lang.region.toLowerCase().contains('norway') &&
              !lang.region.toLowerCase().contains('denmark') &&
              !lang.region.toLowerCase().contains('finland') &&
              !lang.region.toLowerCase().contains('greece') &&
              !lang.region.toLowerCase().contains('netherlands') &&
              !lang.region.toLowerCase().contains('switzerland') &&
              !lang.region.toLowerCase().contains('ireland')) {
            return false;
          }
        } else if (_selectedFilter == 'Middle East') {
          if (!lang.region.toLowerCase().contains('middle east') &&
              !lang.region.toLowerCase().contains('iran') &&
              !lang.region.toLowerCase().contains('israel') &&
              !lang.region.toLowerCase().contains('turkey') &&
              !lang.region.toLowerCase().contains('afghanistan') &&
              !lang.region.toLowerCase().contains('kurdistan') &&
              !lang.region.toLowerCase().contains('kazakhstan') &&
              !lang.region.toLowerCase().contains('uzbekistan')) {
            return false;
          }
        } else if (_selectedFilter == 'Africa') {
          if (!lang.region.toLowerCase().contains('africa') &&
              !lang.region.toLowerCase().contains('nigeria') &&
              !lang.region.toLowerCase().contains('kenya') &&
              !lang.region.toLowerCase().contains('ethiopia') &&
              !lang.region.toLowerCase().contains('south africa') &&
              !lang.region.toLowerCase().contains('congo') &&
              !lang.region.toLowerCase().contains('tanzania') &&
              !lang.region.toLowerCase().contains('ghana')) {
            return false;
          }
        } else if (_selectedFilter == 'Americas') {
          if (!lang.region.toLowerCase().contains('america') &&
              !lang.region.toLowerCase().contains('united states') &&
              !lang.region.toLowerCase().contains('canada') &&
              !lang.region.toLowerCase().contains('brazil') &&
              !lang.region.toLowerCase().contains('mexico') &&
              !lang.region.toLowerCase().contains('peru') &&
              !lang.region.toLowerCase().contains('bolivia') &&
              !lang.region.toLowerCase().contains('paraguay') &&
              !lang.region.toLowerCase().contains('haiti')) {
            return false;
          }
        }
      }

      if (query.isEmpty) return true;
      return lang.name.toLowerCase().contains(query) ||
          lang.nativeName.toLowerCase().contains(query) ||
          lang.code.toLowerCase().contains(query) ||
          lang.region.toLowerCase().contains(query);
    }).toList();
  }

  Widget _buildLanguageTile({
    required AppLanguage lang,
    required bool isSelected,
    required int index,
  }) {
    final badgeColor = _badgeColorForIndex(index);
    final isDark = context.isDarkMode;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: context.appSurface,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () => _selectLanguage(lang),
          borderRadius: BorderRadius.circular(16),
          splashColor: AppColors.mint.withAlpha(40),
          highlightColor: AppColors.mint.withAlpha(20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isSelected
                    ? (isDark ? AppColors.darkMint : AppColors.mintDark)
                    : context.appBorderColor,
                width: isSelected ? 2 : 1,
              ),
            ),
            child: Row(
              children: [
                // Badge circle
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: badgeColor.withAlpha(isDark ? 70 : 45),
                    shape: BoxShape.circle,
                    border: Border.all(color: badgeColor.withAlpha(100)),
                  ),
                  child: Center(
                    child: Text(
                      lang.badge,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: context.appInk,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              lang.nativeName,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: context.appInk,
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '(${lang.name})',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: context.appSlate,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              lang.region,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 11,
                                color: context.appSlate,
                              ),
                            ),
                          ),
                          if (lang.isRTL) ...[
                            const SizedBox(width: 4),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                              decoration: BoxDecoration(
                                color: AppColors.softOrange.withAlpha(40),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                'RTL',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.softOrange,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  isSelected ? CupertinoIcons.checkmark_circle_fill : CupertinoIcons.circle,
                  color: isSelected
                      ? (isDark ? AppColors.darkMint : AppColors.mintDark)
                      : context.appSlate.withAlpha(90),
                  size: 22,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final currentLangCode = state is SettingsLoaded ? state.language : 'en';
        final filteredLanguages = _filterAllLanguages();

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            _handleBack();
          },
          child: Scaffold(
            backgroundColor: context.appBackground,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  widget.isBottomSheet ? CupertinoIcons.xmark : CupertinoIcons.arrow_left,
                  color: context.appInk,
                ),
                onPressed: _handleBack,
              ),
              title: widget.isBottomSheet
                  ? Text(
                      context.tr('app_language'),
                      style: TextStyle(
                        fontFamily: 'Baloo 2',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: context.appInk,
                      ),
                    )
                  : null,
              actions: [
                if (!widget.isBottomSheet && !widget.isStandalone) ...[
                  TextButton(
                    onPressed: _handleContinue,
                    child: Text(
                      context.tr('onboard_skip'),
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: context.appSlate,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                ],
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenSide,
                        vertical: AppSpacing.xs,
                      ),
                      physics: const BouncingScrollPhysics(),
                      children: [
                        if (!widget.isBottomSheet && !widget.isStandalone) ...[
                          Text(
                            'STEP 1 OF 6',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              letterSpacing: 1.2,
                              color: context.appSlate,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                context.tr('choose_language'),
                                style: TextStyle(
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                  color: context.appInk,
                                ),
                              ),
                              const FloatingIllustration(
                                child: MascotWidget(
                                  state: MascotState.happy,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            context.tr('choose_language_desc'),
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: context.appSlate,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),
                        ],

                        // ====================================================
                        // 1. DETECTED COUNTRY SECTION SHOWN PROMINENTLY ON TOP
                        // ====================================================
                        Container(
                          padding: const EdgeInsets.all(AppSpacing.md),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: context.isDarkMode
                                  ? [const Color(0xFF1B2A26), const Color(0xFF13201C)]
                                  : [const Color(0xFFE8F7F0), const Color(0xFFDEF3EA)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
                            border: Border.all(
                              color: AppColors.mint.withAlpha(context.isDarkMode ? 80 : 120),
                              width: 1.5,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.mint.withAlpha(context.isDarkMode ? 20 : 35),
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    _detectedCountry.flag,
                                    style: const TextStyle(fontSize: 26),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '${context.tr('detected_country')}: ',
                                              style: TextStyle(
                                                fontFamily: 'Nunito',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: context.appSlate,
                                              ),
                                            ),
                                            Text(
                                              '${_detectedCountry.name} (${_detectedCountry.code})',
                                              style: TextStyle(
                                                fontFamily: 'Nunito',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800,
                                                color: context.appInk,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 2),
                                        Text(
                                          context.tr('suggested_for_country', {'country': _detectedCountry.name}),
                                          style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            color: context.isDarkMode
                                                ? AppColors.darkMint
                                                : AppColors.mintDark,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (_isDetecting)
                                    const SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: AppColors.mint,
                                      ),
                                    )
                                  else
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                                      decoration: BoxDecoration(
                                        color: AppColors.mint.withAlpha(context.isDarkMode ? 60 : 40),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(CupertinoIcons.location_solid, size: 10, color: AppColors.mintDark),
                                          const SizedBox(width: 3),
                                          Text(
                                            context.tr('auto_detected'),
                                            style: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.mintDark,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              // Country-specific suggested languages grid / list
                              ..._countryLanguages.take(6).map((lang) {
                                final isSelected = currentLangCode.toLowerCase() == lang.code.toLowerCase();
                                return _buildLanguageTile(
                                  lang: lang,
                                  isSelected: isSelected,
                                  index: _countryLanguages.indexOf(lang),
                                );
                              }),
                            ],
                          ),
                        ),

                        const SizedBox(height: AppSpacing.lg),

                        // ====================================================
                        // 2. ALL OTHER LANGUAGES SEARCH & FILTER
                        // ====================================================
                        Text(
                          '${context.tr('all_languages')} (${AppLanguage.supportedLanguages.length}+)',
                          style: TextStyle(
                            fontFamily: 'Baloo 2',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: context.appInk,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xs),

                        // Search Bar
                        TextField(
                          controller: _searchController,
                          onChanged: (val) => setState(() => _searchQuery = val),
                          style: TextStyle(fontSize: 14, color: context.appInk),
                          decoration: InputDecoration(
                            hintText: context.tr('search_language'),
                            hintStyle: TextStyle(fontSize: 13, color: context.appSlate),
                            prefixIcon: Icon(CupertinoIcons.search, color: context.appSlate),
                            suffixIcon: _searchQuery.isNotEmpty
                                ? IconButton(
                                    icon: Icon(CupertinoIcons.clear_thick, color: context.appSlate),
                                    onPressed: () {
                                      _searchController.clear();
                                      setState(() => _searchQuery = '');
                                    },
                                  )
                                : null,
                            filled: true,
                            fillColor: context.appSurface,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(color: context.appBorderColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(color: context.appBorderColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(color: AppColors.mint, width: 2),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Filter Chips Bar
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            children: _filters.map((filter) {
                              final isSelected = _selectedFilter == filter;
                              return Padding(
                                padding: const EdgeInsets.only(right: 6),
                                child: FilterChip(
                                  label: Text(
                                    filter == 'All'
                                        ? '${context.tr('all')} (150+)'
                                        : context.tr(filter.toLowerCase().replaceAll(' ', '_')),
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                                      color: isSelected ? Colors.white : context.appInk,
                                    ),
                                  ),
                                  selected: isSelected,
                                  selectedColor: AppColors.mintDark,
                                  backgroundColor: context.isDarkMode
                                      ? AppColors.darkSurface
                                      : const Color(0xFFE2E8F0),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  side: BorderSide(
                                    color: isSelected ? AppColors.mintDark : context.appBorderColor,
                                  ),
                                  onSelected: (_) => setState(() => _selectedFilter = filter),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),

                        // Languages List
                        if (filteredLanguages.isEmpty)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: AppSpacing.xl),
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const MascotWidget(state: MascotState.thinking, size: 64),
                                  const SizedBox(height: 10),
                                  Text(
                                    context.tr('no_matching_languages'),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: context.appInk,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    context.tr('try_searching'),
                                    style: TextStyle(fontSize: 12, color: context.appSlate),
                                  ),
                                ],
                              ),
                            ),
                          )
                        else
                          ...filteredLanguages.map((lang) {
                            final isSelected = currentLangCode.toLowerCase() == lang.code.toLowerCase();
                            return _buildLanguageTile(
                              lang: lang,
                              isSelected: isSelected,
                              index: filteredLanguages.indexOf(lang),
                            );
                          }),

                        const SizedBox(height: AppSpacing.xl),
                      ],
                    ),
                  ),

                  // ====================================================
                  // 3. PINNED BOTTOM ACTION BUTTON
                  // ====================================================
                  Container(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.screenSide,
                      AppSpacing.sm,
                      AppSpacing.screenSide,
                      AppSpacing.md,
                    ),
                    decoration: BoxDecoration(
                      color: context.appBackground,
                      boxShadow: context.appCardShadow,
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 440),
                      child: PillButton(
                        label: widget.isBottomSheet
                            ? context.tr('done')
                            : context.tr('continue_to_about_you'),
                        icon: widget.isBottomSheet
                            ? CupertinoIcons.checkmark
                            : CupertinoIcons.arrow_right,
                        fullWidth: true,
                        height: 52,
                        onPressed: _handleContinue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

