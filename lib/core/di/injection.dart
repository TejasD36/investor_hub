import '../../core.dart';
import '../../features/auth/data/datasources/auth_local_datasource.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/check_auth_status_usecase.dart';
import '../../features/auth/domain/usecases/get_current_user_usecase.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';
import '../../features/auth/domain/usecases/logout_usecase.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/deals/data/datasources/deals_local_datasource.dart';
import '../../features/deals/data/repositories/deals_repository_impl.dart';
import '../../features/deals/domain/repositories/deals_repository.dart';
import '../../features/deals/domain/usecases/fetch_deals_usecase.dart';
import '../../features/deals/domain/usecases/filter_deals_usecase.dart';
import '../../features/deals/domain/usecases/search_deals_usecase.dart';
import '../../features/deals/presentation/bloc/deals_bloc.dart';
import '../../features/interests/data/datasources/interests_local_datasource.dart';
import '../../features/interests/data/repositories/interests_repository_impl.dart';
import '../../features/interests/domain/repositories/interests_repository.dart';
import '../../features/interests/domain/usecases/add_interest_usecase.dart';
import '../../features/interests/domain/usecases/load_interests_usecase.dart';
import '../../features/interests/domain/usecases/remove_interest_usecase.dart';
import '../../features/interests/presentation/bloc/interests_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerFactory<ThemeCubit>(() => ThemeCubit());

  sl.registerLazySingleton<AuthLocalDataSource>(() => AuthLocalDataSource());
  sl.registerLazySingleton<DealsLocalDataSource>(() => DealsLocalDataSource());
  sl.registerLazySingleton<InterestsLocalDataSource>(() => InterestsLocalDataSource());

  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl<AuthLocalDataSource>()));
  sl.registerLazySingleton<DealsRepository>(() => DealsRepositoryImpl(sl<DealsLocalDataSource>()));
  sl.registerLazySingleton<InterestsRepository>(() => InterestsRepositoryImpl(sl<InterestsLocalDataSource>()));

  sl.registerLazySingleton(() => CheckAuthStatusUseCase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => LoginUseCase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => GetCurrentUserUseCase(sl<AuthRepository>()));
  sl.registerLazySingleton(() => LogoutUseCase(sl<AuthRepository>()));

  sl.registerLazySingleton(() => FetchDealsUseCase(sl<DealsRepository>()));
  sl.registerLazySingleton(() => SearchDealsUseCase(sl<DealsRepository>()));
  sl.registerLazySingleton(() => FilterDealsUseCase(sl<DealsRepository>()));

  sl.registerLazySingleton(() => LoadInterestsUseCase(sl<InterestsRepository>()));
  sl.registerLazySingleton(() => AddInterestUseCase(sl<InterestsRepository>()));
  sl.registerLazySingleton(() => RemoveInterestUseCase(sl<InterestsRepository>()));

  sl.registerFactory<AuthBloc>(
    () => AuthBloc(checkAuthStatusUseCase: sl(), getCurrentUserUseCase: sl(), loginUseCase: sl(), logoutUseCase: sl()),
  );
  sl.registerFactory<DealsBloc>(() => DealsBloc(fetchDealsUseCase: sl(), searchDealsUseCase: sl(), filterDealsUseCase: sl()));
  sl.registerFactory<InterestsBloc>(() => InterestsBloc(loadInterestsUseCase: sl(), addInterestUseCase: sl(), removeInterestUseCase: sl()));
}
