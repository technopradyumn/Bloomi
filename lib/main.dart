import 'dart:async';
import 'package:bloomi/app/app.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Ensure status bar text and icons are always crisp and dark on light theme
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  await setupServiceLocator();

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
