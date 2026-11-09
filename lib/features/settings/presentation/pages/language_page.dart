import 'package:bloomi/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:bloomi/core/localization/app_languages.dart';
import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/core/widgets/bloomi_overlays.dart';
import 'package:bloomi/core/widgets/mascot/mascot_state.dart';
import 'package:bloomi/core/widgets/mascot/mascot_widget.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Dedicated Language Settings Screen with Search & 150+ Languages.
class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  String _selectedFilter = 'All';

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
    context.read<SettingsBloc>().add(const LoadSettingsEvent());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _saveLanguage(AppLanguage lang) {
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

  List<AppLanguage> _filterLanguages() {
    final query = _searchQuery.trim().toLowerCase();
    return AppLanguage.supportedLanguages.where((lang) {
      // 1. Filter by region category if active
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

      // 2. Filter by search query in English and Native script
      if (query.isEmpty) return true;
      return lang.name.toLowerCase().contains(query) ||
          lang.nativeName.toLowerCase().contains(query) ||
          lang.code.toLowerCase().contains(query) ||
          lang.region.toLowerCase().contains(query);
    }).toList();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appBackground,
      appBar: AppBar(
        title: Text(
          context.tr('app_language'),
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

          final currentLangCode = state is SettingsLoaded ? state.language : 'en';
          final filteredLanguages = _filterLanguages();

          return Column(
            children: [
              // Search & Filter Header Container
              Container(
                color: context.appSurface,
                padding: const EdgeInsets.fromLTRB(AppSpacing.md, AppSpacing.xs, AppSpacing.md, AppSpacing.xs),
                child: Column(
                  children: [
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
                        fillColor: context.isDarkMode
                            ? AppColors.darkSurface
                            : const Color(0xFFF1F5F9),
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
                    const SizedBox(height: 2),

                    // Filter Chips Bar
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: _filters.map((filter) {
                          final isSelected = _selectedFilter == filter;
                          return Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: FilterChip(
                              label: Text(
                                filter == 'All' ? '${context.tr('all')} (195+)' : context.tr(filter.toLowerCase().replaceAll(' ', '_')),
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
                  ],
                ),
              ),

              // Results count bar
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: 6),
                color: context.isDarkMode ? const Color(0xFF131822) : const Color(0xFFF8FAFC),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${filteredLanguages.length} ${context.tr('languages_available')}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: context.appSlate,
                      ),
                    ),
                    if (currentLangCode.isNotEmpty) ...[
                      const SizedBox(height: 2),
                      Text(
                        '${context.tr('active')}: ${_getLanguageDisplayName(currentLangCode)}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          color: context.isDarkMode ? AppColors.darkMint : AppColors.mintDark,
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              // Language List
              Expanded(
                child: filteredLanguages.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const MascotWidget(state: MascotState.thinking, size: 70),
                            const SizedBox(height: 12),
                            Text(
                              context.tr('no_matching_languages'),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(AppSpacing.md),
                        itemCount: filteredLanguages.length,
                        separatorBuilder: (context, index) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final lang = filteredLanguages[index];
                          final isSelected = currentLangCode.toLowerCase() == lang.code.toLowerCase();
                          final badgeColor = _badgeColorForIndex(index);

                          return InkWell(
                            onTap: () => _saveLanguage(lang),
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                              decoration: BoxDecoration(
                                color: context.appSurface,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: isSelected
                                      ? (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark)
                                      : context.appBorderColor,
                                  width: isSelected ? 2 : 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color: badgeColor.withAlpha(context.isDarkMode ? 70 : 45),
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
                                            Text(
                                              lang.region,
                                              style: TextStyle(fontSize: 11, color: context.appSlate),
                                            ),
                                            if (lang.isRTL) ...[
                                              const SizedBox(width: 6),
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
                                        ? (context.isDarkMode ? AppColors.darkMint : AppColors.mintDark)
                                        : context.appSlate.withAlpha(90),
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _getLanguageDisplayName(String code) {
    final match = AppLanguage.supportedLanguages.firstWhere(
      (l) => l.code.toLowerCase() == code.toLowerCase(),
      orElse: () => AppLanguage(code: code, name: code, nativeName: code, region: '', badge: code.toUpperCase()),
    );
    return '${match.name} (${match.nativeName})';
  }
}
