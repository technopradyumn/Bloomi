import 'package:bloomi/core/database/app_database.dart';
import 'package:bloomi/core/network/api_client.dart';
import 'package:bloomi/features/auth/data/local/auth_local_data_source.dart';
import 'package:bloomi/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:bloomi/features/auth/domain/repositories/auth_repository.dart';
import 'package:bloomi/features/auth/domain/usecases/auth_usecases.dart';
import 'package:bloomi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloomi/features/food/data/local/food_local_data_source.dart';
import 'package:bloomi/features/food/data/network/food_remote_data_source.dart';
import 'package:bloomi/features/food/data/repositories/food_repository_impl.dart';
import 'package:bloomi/features/food/domain/repositories/food_repository.dart';
import 'package:bloomi/features/food/domain/usecases/food_usecases.dart';
import 'package:bloomi/features/food/presentation/bloc/food_bloc.dart';
import 'package:bloomi/features/health/data/local/health_local_data_source.dart';
import 'package:bloomi/features/health/data/network/health_remote_data_source.dart';
import 'package:bloomi/features/health/data/repositories/health_repository_impl.dart';
import 'package:bloomi/features/health/domain/repositories/health_repository.dart';
import 'package:bloomi/features/health/presentation/bloc/health_bloc.dart';
import 'package:bloomi/features/home/data/local/home_local_data_source.dart';
import 'package:bloomi/features/home/data/repositories/home_repository_impl.dart';
import 'package:bloomi/features/home/domain/repositories/home_repository.dart';
import 'package:bloomi/features/home/domain/usecases/home_usecases.dart';
import 'package:bloomi/features/home/presentation/bloc/home_dashboard_bloc.dart';
import 'package:bloomi/features/insights/data/local/insights_local_data_source.dart';
import 'package:bloomi/features/insights/data/repositories/insights_repository_impl.dart';
import 'package:bloomi/features/insights/domain/repositories/insights_repository.dart';
import 'package:bloomi/features/insights/presentation/bloc/insights_bloc.dart';
import 'package:bloomi/features/onboarding/data/local/onboarding_local_data_source.dart';
import 'package:bloomi/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:bloomi/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:bloomi/features/onboarding/domain/usecases/onboarding_usecases.dart';
import 'package:bloomi/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:bloomi/features/plan/data/local/plan_local_data_source.dart';
import 'package:bloomi/features/plan/data/repositories/plan_repository_impl.dart';
import 'package:bloomi/features/plan/domain/repositories/plan_repository.dart';
import 'package:bloomi/features/plan/presentation/bloc/plan_bloc.dart';
import 'package:bloomi/features/profile/data/local/profile_local_data_source.dart';
import 'package:bloomi/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:bloomi/features/profile/domain/repositories/profile_repository.dart';
import 'package:bloomi/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:bloomi/features/settings/data/local/settings_local_data_source.dart';
import 'package:bloomi/features/settings/data/repositories/settings_repository_impl.dart';
import 'package:bloomi/features/settings/domain/repositories/settings_repository.dart';
import 'package:bloomi/features/settings/domain/usecases/settings_usecases.dart';
import 'package:bloomi/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:bloomi/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:bloomi/features/surroundings/data/local/surroundings_local_data_source.dart';
import 'package:bloomi/features/surroundings/data/network/surroundings_remote_data_source.dart';
import 'package:bloomi/features/surroundings/data/repositories/surroundings_repository_impl.dart';
import 'package:bloomi/features/surroundings/domain/repositories/surroundings_repository.dart';
import 'package:bloomi/features/surroundings/presentation/bloc/surroundings_bloc.dart';
import 'package:bloomi/core/theme/theme_cubit.dart';
import 'package:bloomi/services/billing/billing_service.dart';
import 'package:bloomi/services/food/barcode_service.dart';
import 'package:bloomi/services/health/health_service.dart';
import 'package:bloomi/services/notifications/notification_service.dart';
import 'package:bloomi/services/widget/widget_sync_service.dart';
import 'package:bloomi/services/widgets/widget_bridge_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // 1. Core & External
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => prefs);

  sl.registerLazySingleton<ThemeCubit>(() => ThemeCubit(sl()));

  final db = AppDatabase();
  sl.registerLazySingleton<AppDatabase>(() => db);

  sl.registerLazySingleton<ApiClient>(() => ApiClient());

  // 2. Services
  sl.registerLazySingleton<NotificationService>(() => NotificationService());
  sl.registerLazySingleton<BillingService>(() => BillingService());
  sl.registerLazySingleton<WidgetSyncService>(() => WidgetSyncService());
  sl.registerLazySingleton<WidgetBridgeService>(() => WidgetBridgeService());
  sl.registerLazySingleton<BarcodeService>(() => BarcodeService(sl()));
  sl.registerLazySingleton<HealthService>(() => HealthService());

  // 3. Feature: Auth
  sl.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
        localDataSource: sl(),
        db: sl(),
      ));
  sl.registerLazySingleton<CheckAuthSessionUseCase>(
      () => CheckAuthSessionUseCase(sl()));
  sl.registerLazySingleton<SignInUseCase>(
      () => SignInUseCase(sl()));
  sl.registerLazySingleton<SignOutUseCase>(() => SignOutUseCase(sl()));
  sl.registerLazySingleton<SetOnboardingCompletedUseCase>(
      () => SetOnboardingCompletedUseCase(sl()));
  sl.registerLazySingleton<SetUnder18UseCase>(() => SetUnder18UseCase(sl()));
  sl.registerLazySingleton<AuthBloc>(() => AuthBloc(
        checkAuthSession: sl(),
        signIn: sl(),
        signOut: sl(),
        setOnboardingCompleted: sl(),
        setUnder18: sl(),
        authRepository: sl(),
      ));

  // 4. Feature: Splash
  sl.registerFactory<SplashBloc>(() => SplashBloc(authRepository: sl()));

  // 5. Feature: Onboarding
  sl.registerLazySingleton<OnboardingLocalDataSource>(
      () => OnboardingLocalDataSourceImpl(sl(), userIdProvider: () => sl<AuthRepository>().currentUserId));
  sl.registerLazySingleton<OnboardingRepository>(
      () => OnboardingRepositoryImpl(localDataSource: sl(), authRepository: sl()));
  sl.registerLazySingleton<SaveOnboardingProfileUseCase>(
      () => SaveOnboardingProfileUseCase(sl()));
  sl.registerFactory<OnboardingBloc>(() => OnboardingBloc(
        onboardingRepository: sl(),
      ));

  // 6. Feature: Home
  sl.registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl(sl(), userIdProvider: () => sl<AuthRepository>().currentUserId));
  sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(localDataSource: sl()));
  sl.registerLazySingleton<WatchHomeDashboardUseCase>(
      () => WatchHomeDashboardUseCase(sl()));
  sl.registerLazySingleton<LogQuickWaterUseCase>(
      () => LogQuickWaterUseCase(sl()));
  sl.registerLazySingleton<LogQuickBodyEntryUseCase>(
      () => LogQuickBodyEntryUseCase(sl()));
  sl.registerLazySingleton<LogQuickWorkoutUseCase>(
      () => LogQuickWorkoutUseCase(sl()));
  sl.registerFactory<HomeDashboardBloc>(() => HomeDashboardBloc(
        watchHomeDashboard: sl(),
        logQuickWater: sl(),
        logQuickBodyEntry: sl(),
        logQuickWorkout: sl(),
      ));

  // 7. Feature: Food
  sl.registerLazySingleton<FoodLocalDataSource>(() => FoodLocalDataSourceImpl(
        sl(),
        prefs: sl(),
        userIdProvider: () => sl<AuthRepository>().currentUserId,
      ));
  sl.registerLazySingleton<FoodRemoteDataSource>(
      () => FoodRemoteDataSourceImpl(apiClient: sl()));
  sl.registerLazySingleton<FoodRepository>(() => FoodRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
      ));
  sl.registerLazySingleton<WatchFoodDiaryUseCase>(
      () => WatchFoodDiaryUseCase(sl()));
  sl.registerLazySingleton<SearchFoodUseCase>(
      () => SearchFoodUseCase(sl()));
  sl.registerLazySingleton<LogMealUseCase>(
      () => LogMealUseCase(sl()));
  sl.registerLazySingleton<DeleteMealUseCase>(
      () => DeleteMealUseCase(sl()));
  sl.registerLazySingleton<RestoreMealUseCase>(
      () => RestoreMealUseCase(sl()));
  sl.registerLazySingleton<CopyMealUseCase>(
      () => CopyMealUseCase(sl()));
  sl.registerLazySingleton<CreateCustomFoodUseCase>(
      () => CreateCustomFoodUseCase(sl()));
  sl.registerLazySingleton<EnsureFoodsSeededUseCase>(
      () => EnsureFoodsSeededUseCase(sl()));
  sl.registerLazySingleton<LookupBarcodeUseCase>(
      () => LookupBarcodeUseCase(sl()));
  sl.registerLazySingleton<ScanFoodPhotoUseCase>(
      () => ScanFoodPhotoUseCase(sl()));
  sl.registerFactory<FoodBloc>(() => FoodBloc(
        watchFoodDiary: sl(),
        searchFood: sl(),
        deleteMeal: sl(),
        restoreMeal: sl(),
        copyMeal: sl(),
        foodRepository: sl(),
      ));

  // 8. Feature: Health
  sl.registerLazySingleton<HealthLocalDataSource>(
      () => HealthLocalDataSourceImpl(sl(), userIdProvider: () => sl<AuthRepository>().currentUserId, prefs: sl()));
  sl.registerLazySingleton<HealthRemoteDataSource>(
      () => HealthRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<HealthRepository>(() => HealthRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
        userIdProvider: () => sl<AuthRepository>().currentUserId,
      ));
  sl.registerFactory<HealthBloc>(() => HealthBloc(repository: sl()));

  // 9. Feature: Plan
  sl.registerLazySingleton<PlanLocalDataSource>(
      () => PlanLocalDataSourceImpl(sl(), userIdProvider: () => sl<AuthRepository>().currentUserId));
  sl.registerLazySingleton<PlanRepository>(
      () => PlanRepositoryImpl(sl()));
  sl.registerFactory<PlanBloc>(() => PlanBloc(repository: sl()));

  // 10. Feature: Insights
  sl.registerLazySingleton<InsightsLocalDataSource>(
      () => InsightsLocalDataSourceImpl(sl(), userIdProvider: () => sl<AuthRepository>().currentUserId));
  sl.registerLazySingleton<InsightsRepository>(
      () => InsightsRepositoryImpl(localDataSource: sl(), planRepo: sl()));
  sl.registerFactory<InsightsBloc>(() => InsightsBloc(repository: sl()));

  // 11. Feature: Surroundings
  sl.registerLazySingleton<SurroundingsLocalDataSource>(
      () => SurroundingsLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<SurroundingsRemoteDataSource>(
      () => SurroundingsRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<SurroundingsRepository>(
      () => SurroundingsRepositoryImpl(
            localDataSource: sl(),
            remoteDataSource: sl(),
            prefs: sl(),
          ));
  sl.registerFactory<SurroundingsBloc>(
      () => SurroundingsBloc(repository: sl()));

  // 12. Feature: Profile
  sl.registerLazySingleton<ProfileLocalDataSource>(
      () => ProfileLocalDataSourceImpl(sl(), userIdProvider: () => sl<AuthRepository>().currentUserId));
  sl.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(sl()));
  sl.registerFactory<ProfileBloc>(() => ProfileBloc(repository: sl()));

  // 13. Feature: Settings
  sl.registerLazySingleton<SettingsLocalDataSource>(
      () => SettingsLocalDataSourceImpl(
            db: sl(),
            notificationService: sl(),
            widgetBridgeService: sl(),
            billingService: sl(),
            authRepository: sl(),
            userIdProvider: () => sl<AuthRepository>().currentUserId,
            prefs: sl<SharedPreferences>(),
          ));
  sl.registerLazySingleton<SettingsRepository>(
      () => SettingsRepositoryImpl(localDataSource: sl()));
  sl.registerLazySingleton<GetRemindersUseCase>(
      () => GetRemindersUseCase(sl()));
  sl.registerLazySingleton<WatchRemindersUseCase>(
      () => WatchRemindersUseCase(sl()));
  sl.registerLazySingleton<ToggleReminderUseCase>(
      () => ToggleReminderUseCase(sl()));
  sl.registerLazySingleton<UpdateReminderTimeUseCase>(
      () => UpdateReminderTimeUseCase(sl()));
  sl.registerLazySingleton<SeedDefaultRemindersUseCase>(
      () => SeedDefaultRemindersUseCase(sl()));
  sl.registerLazySingleton<GetUnitsAndLanguageUseCase>(
      () => GetUnitsAndLanguageUseCase(sl()));
  sl.registerLazySingleton<UpdateUnitsUseCase>(() => UpdateUnitsUseCase(sl()));
  sl.registerLazySingleton<UpdateLanguageUseCase>(
      () => UpdateLanguageUseCase(sl()));
  sl.registerLazySingleton<ExportDataUseCase>(() => ExportDataUseCase(sl()));
  sl.registerLazySingleton<DeleteAccountUseCase>(
      () => DeleteAccountUseCase(sl()));
  sl.registerLazySingleton<CheckPremiumUseCase>(
      () => CheckPremiumUseCase(sl()));
  sl.registerLazySingleton<PurchasePlanUseCase>(
      () => PurchasePlanUseCase(sl()));
  sl.registerLazySingleton<RestorePurchasesUseCase>(
      () => RestorePurchasesUseCase(sl()));
  sl.registerLazySingleton<SyncWidgetsUseCase>(() => SyncWidgetsUseCase(sl()));
  sl.registerFactory<SettingsBloc>(() => SettingsBloc(
        getRemindersUseCase: sl(),
        watchRemindersUseCase: sl(),
        toggleReminderUseCase: sl(),
        updateReminderTimeUseCase: sl(),
        seedDefaultRemindersUseCase: sl(),
        getUnitsAndLanguageUseCase: sl(),
        updateUnitsUseCase: sl(),
        updateLanguageUseCase: sl(),
        exportDataUseCase: sl(),
        deleteAccountUseCase: sl(),
        checkPremiumUseCase: sl(),
        purchasePlanUseCase: sl(),
        restorePurchasesUseCase: sl(),
        syncWidgetsUseCase: sl(),
      ));
}
