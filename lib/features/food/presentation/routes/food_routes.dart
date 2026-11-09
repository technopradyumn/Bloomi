import 'package:flutter/material.dart';
import 'package:bloomi/app/di/injection.dart';
import 'package:bloomi/features/food/presentation/bloc/food_bloc.dart';
import 'package:bloomi/features/food/presentation/pages/add_food_hub_page.dart';
import 'package:bloomi/features/food/presentation/pages/barcode_scan_page.dart';
import 'package:bloomi/features/food/presentation/pages/camera_capture_page.dart';
import 'package:bloomi/features/food/presentation/pages/custom_food_recipe_page.dart';
import 'package:bloomi/features/food/presentation/pages/daily_nutrition_detail_page.dart';
import 'package:bloomi/features/food/presentation/pages/favourites_recent_page.dart';
import 'package:bloomi/features/food/presentation/pages/food_detail_page.dart';
import 'package:bloomi/features/food/presentation/pages/food_diary_page.dart';
import 'package:bloomi/features/food/presentation/pages/food_search_page.dart';
import 'package:bloomi/features/food/presentation/pages/photo_analysing_page.dart';
import 'package:bloomi/features/food/presentation/pages/scan_result_review_page.dart';
import 'package:bloomi/features/food/presentation/pages/water_tracker_page.dart';
import 'package:bloomi/services/food/photo_scan_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> foodRoutes = [
  GoRoute(
    path: '/food',
    builder: (context, state) => BlocProvider<FoodBloc>(
      create: (_) => sl<FoodBloc>(),
      child: const FoodDiaryPage(),
    ),
    routes: [
      GoRoute(
        path: 'diary',
        redirect: (context, state) => '/food',
      ),
      GoRoute(
        path: 'add',
        builder: (context, state) => BlocProvider<FoodBloc>(
          create: (_) => sl<FoodBloc>(),
          child: AddFoodHubPage(
            initialMealType:
                state.uri.queryParameters['mealType'] ?? 'lunch',
          ),
        ),
      ),
      GoRoute(
        path: 'search',
        builder: (context, state) => BlocProvider<FoodBloc>(
          create: (_) => sl<FoodBloc>(),
          child: FoodSearchPage(
            mealType:
                state.uri.queryParameters['mealType'] ?? 'lunch',
          ),
        ),
      ),
      GoRoute(
        path: 'detail',
        builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return BlocProvider<FoodBloc>(
            create: (_) => sl<FoodBloc>(),
            child: FoodDetailPage(
              foodId: id,
              mealEntryId: state.uri.queryParameters['mealEntryId'],
              isEditMode: state.uri.queryParameters['isEdit'] == 'true',
              initialMealType:
                  state.uri.queryParameters['mealType'] ?? 'lunch',
              fallbackName: state.uri.queryParameters['name'],
              fallbackKcal: double.tryParse(state.uri.queryParameters['kcal'] ?? ''),
              fallbackProtein: double.tryParse(state.uri.queryParameters['p'] ?? ''),
              fallbackCarbs: double.tryParse(state.uri.queryParameters['c'] ?? ''),
              fallbackFat: double.tryParse(state.uri.queryParameters['f'] ?? ''),
              fallbackFibre: double.tryParse(state.uri.queryParameters['fib'] ?? ''),
              fallbackIsCustom: state.uri.queryParameters['isCustom'] == 'true',
              fallbackServingGrams: double.tryParse(state.uri.queryParameters['servingGrams'] ?? '') ?? 100.0,
              savedQuantity: double.tryParse(state.uri.queryParameters['quantity'] ?? ''),
              savedUnit: state.uri.queryParameters['unit'],
              savedTotalGrams: double.tryParse(state.uri.queryParameters['grams'] ?? ''),
            ),
          );
        },
      ),
      GoRoute(
        path: 'detail/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? state.uri.queryParameters['id'] ?? '';
          return BlocProvider<FoodBloc>(
            create: (_) => sl<FoodBloc>(),
            child: FoodDetailPage(
              foodId: id,
              mealEntryId: state.uri.queryParameters['mealEntryId'],
              isEditMode: state.uri.queryParameters['isEdit'] == 'true',
              initialMealType:
                  state.uri.queryParameters['mealType'] ?? 'lunch',
              fallbackName: state.uri.queryParameters['name'],
              fallbackKcal: double.tryParse(state.uri.queryParameters['kcal'] ?? ''),
              fallbackProtein: double.tryParse(state.uri.queryParameters['p'] ?? ''),
              fallbackCarbs: double.tryParse(state.uri.queryParameters['c'] ?? ''),
              fallbackFat: double.tryParse(state.uri.queryParameters['f'] ?? ''),
              fallbackFibre: double.tryParse(state.uri.queryParameters['fib'] ?? ''),
              fallbackIsCustom: state.uri.queryParameters['isCustom'] == 'true',
              fallbackServingGrams: double.tryParse(state.uri.queryParameters['servingGrams'] ?? '') ?? 100.0,
              savedQuantity: double.tryParse(state.uri.queryParameters['quantity'] ?? ''),
              savedUnit: state.uri.queryParameters['unit'],
              savedTotalGrams: double.tryParse(state.uri.queryParameters['grams'] ?? ''),
            ),
          );
        },
      ),
      GoRoute(
        path: 'camera',
        builder: (context, state) => CameraCapturePage(
          mealType: state.uri.queryParameters['mealType'] ?? 'lunch',
        ),
      ),
      GoRoute(
        path: 'analysing',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          return PhotoAnalysingPage(
            imagePath: extra?['imagePath'] as String?,
          );
        },
      ),
      GoRoute(
        path: 'scan-review',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final items =
              extra?['items'] as List<ScannedFoodItem>? ?? const [];
          final remaining =
              extra?['remainingScans'] as int? ?? 4;
          return ScanResultReviewPage(
            initialItems: items,
            remainingScans: remaining,
          );
        },
      ),
      GoRoute(
        path: 'review',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final items =
              extra?['items'] as List<ScannedFoodItem>? ?? const [];
          final remaining =
              extra?['remainingScans'] as int? ?? 4;
          return ScanResultReviewPage(
            initialItems: items,
            remainingScans: remaining,
          );
        },
      ),
      GoRoute(
        path: 'custom',
        builder: (context, state) => BlocProvider<FoodBloc>(
          create: (_) => sl<FoodBloc>(),
          child: const CustomFoodRecipePage(),
        ),
      ),
      GoRoute(
        path: 'custom-recipe',
        builder: (context, state) => BlocProvider<FoodBloc>(
          create: (_) => sl<FoodBloc>(),
          child: const CustomFoodRecipePage(),
        ),
      ),
      GoRoute(
        path: 'favourites',
        builder: (context, state) => BlocProvider<FoodBloc>(
          create: (_) => sl<FoodBloc>(),
          child: const FavouritesRecentPage(),
        ),
      ),
      GoRoute(
        path: 'nutrition-detail',
        builder: (context, state) => BlocProvider<FoodBloc>(
          create: (_) => sl<FoodBloc>(),
          child: const DailyNutritionDetailPage(),
        ),
      ),
      GoRoute(
        path: 'water',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: BlocProvider<FoodBloc>(
            create: (_) => sl<FoodBloc>(),
            child: const WaterTrackerPage(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
              ),
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
        ),
      ),
      GoRoute(
        path: 'barcode',
        builder: (context, state) => BarcodeScanPage(
          mealType: state.uri.queryParameters['mealType'] ?? 'snack',
        ),
      ),
    ],
  ),
];

