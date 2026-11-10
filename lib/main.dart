import 'dart:async';
import 'dart:ui';
import 'package:bloomi/app/app.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/features/settings/domain/repositories/settings_repository.dart';
import 'package:bloomi/services/notifications/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await initializeDateFormatting(null, null);
  } catch (_) {}

  // Global Flutter error handling to catch unhandled framework errors and prevent silent freezes
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint('Bloomi FlutterError: ${details.exceptionAsString()}');
  };

  // Global platform error handling for asynchronous exceptions
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint('Bloomi PlatformDispatcher Error: $error\n$stack');
    return true; // handled
  };

  // Ensure status bar text and icons are always crisp and dark on light theme
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  await setupServiceLocator();

  // Initialize notification channels and timezone on startup
  try {
    await sl<NotificationService>().initialize();
    unawaited(sl<SettingsRepository>().rescheduleAllReminders().catchError((Object e) {
      debugPrint('Startup reminder reschedule error: $e');
    }));
  } catch (e) {
    debugPrint('Notification startup init error: $e');
  }

  // Pre-seed offline food items in SQLite in background
  unawaited(sl<FoodRepository>().ensureSeeded().catchError((Object e) {
    debugPrint('Background food seed error: $e');
    return 0;
  }));

  // Check auth session asynchronously
  final authBloc = sl<AuthBloc>();
  authBloc.add(const AuthCheckSessionRequested());

  runApp(const BloomiApp());
}
