import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/app/router/app_router.dart';
import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/localization/app_languages.dart';
import 'package:bloomi/core/localization/app_localizations.dart';
import 'package:bloomi/core/theme/app_theme.dart';
import 'package:bloomi/core/theme/app_theme_mode.dart';
import 'package:bloomi/core/theme/theme_cubit.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:bloomi/services/widget/widget_sync_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:upgrader/upgrader.dart';

class BloomiApp extends StatefulWidget {
  const BloomiApp({super.key});

  @override
  State<BloomiApp> createState() => _BloomiAppState();
}

class _BloomiAppState extends State<BloomiApp> with WidgetsBindingObserver {
  late final AuthBloc _authBloc;
  late final ThemeCubit _themeCubit;
  late final SettingsBloc _settingsBloc;
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _authBloc = sl<AuthBloc>();
    _themeCubit = sl<ThemeCubit>();
    _settingsBloc = sl<SettingsBloc>()..add(const LoadSettingsEvent());
    _router = createRouter(_authBloc);
    // Auto-update native widgets with real SQLite & Health data on launch and listen in real time
    sl<WidgetSyncService>().startLiveListening();
    sl<WidgetSyncService>().syncToNativeWidgets();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Whenever app is reopened or resumed from background,
      // verify that the user's account still exists.
      _authBloc.add(const AuthCheckSessionRequested());
      // Auto-update native widgets with real SQLite & Health data on resume
      sl<WidgetSyncService>().syncToNativeWidgets();
    }
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    // Real-time update native widgets when system dark/light mode toggles on device
    if (_themeCubit.state.themeMode == AppThemeMode.system) {
      sl<WidgetSyncService>().syncToNativeWidgets();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Locale _resolveLocale(String langCode) {
    if (langCode.contains('-')) {
      final parts = langCode.split('-');
      return Locale(parts[0], parts.length > 1 ? parts[1] : null);
    }
    return Locale(langCode);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>.value(value: _authBloc),
        BlocProvider<ThemeCubit>.value(value: _themeCubit),
        BlocProvider<SettingsBloc>.value(value: _settingsBloc),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          final isDark = themeState.themeMode == AppThemeMode.dark ||
              (themeState.themeMode == AppThemeMode.system &&
                  MediaQuery.platformBrightnessOf(context) == Brightness.dark);
          final currentScaffoldBg = isDark
              ? themeState.backgroundOption.darkScaffoldBg(AppColors.darkBackground)
              : themeState.backgroundOption.lightScaffoldBg(AppColors.background);

          return BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, settingsState) {
              final languageCode = settingsState is SettingsLoaded
                  ? settingsState.language
                  : 'en';
              final isRTL = AppLanguage.isRtlCode(languageCode);

              return AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
                  statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
                  systemNavigationBarColor: currentScaffoldBg,
                  systemNavigationBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
                ),
                child: MaterialApp.router(
                  title: 'Bloomi',
                  debugShowCheckedModeBanner: false,
                  theme: AppTheme.getLightTheme(themeState.backgroundOption),
                  darkTheme: AppTheme.getDarkTheme(themeState.backgroundOption),
                  themeMode: themeState.flutterThemeMode,
                  routerConfig: _router,
                  locale: _resolveLocale(languageCode),
                  supportedLocales: AppLanguage.supportedLanguages.map((l) {
                    if (l.code.contains('-')) {
                      final parts = l.code.split('-');
                      return Locale(parts[0], parts[1]);
                    }
                    return Locale(l.code);
                  }).toList(),
                  localizationsDelegates: const [
                    BloomiLocalizationsDelegate(),
                    FallbackMaterialLocalizationsDelegate(),
                    FallbackCupertinoLocalizationsDelegate(),
                    GlobalWidgetsLocalizations.delegate,
                  ],
                  builder: (context, child) {
                    final directedChild = Directionality(
                      textDirection: isRTL ? TextDirection.rtl : TextDirection.ltr,
                      child: child ?? const SizedBox.shrink(),
                    );
                    return UpgradeAlert(
                      upgrader: Upgrader(),
                      child: directedChild,
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
