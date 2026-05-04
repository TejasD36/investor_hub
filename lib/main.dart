import 'core.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/deals/presentation/bloc/deals_bloc.dart';
import 'features/interests/presentation/bloc/interests_bloc.dart';
import 'features/interests/presentation/bloc/interests_event.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.init();

  /// Dependency Injection
  await initDependencies();

  /// Bloc Observer
  Bloc.observer = SimpleBlocObserver();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<AuthBloc>()),
        BlocProvider(create: (_) => sl<DealsBloc>()),
        BlocProvider(create: (_) => sl<InterestsBloc>()..add(const InterestsEvent.loadInterests())),
        BlocProvider(create: (_) => sl<ThemeCubit>()),
      ],
      child: const App(),
    ),
  );
}
