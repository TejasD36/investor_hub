import '../../../../core.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    context.read<AuthBloc>().add(const AuthEvent.checkRequested());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authenticated: (_) async {
              await Future.delayed(const Duration(seconds: 2));
              if (context.mounted) context.goNamed(AppRoute.dashboard.name);
            },
            unauthenticated: () async {
              await Future.delayed(const Duration(seconds: 2));

              if (context.mounted) context.goNamed(AppRoute.login.name);
            },
          );
        },
        child: Center(child: Image.asset('assets/images/auth_logo.png')),
      ),
    );
  }
}
