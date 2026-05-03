import '../../core.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/deals/data/models/deal_model.dart';
import '../../features/deals/presentation/screens/dashboard_screen.dart';
import '../../features/deals/presentation/screens/deal_details_screen.dart';
import '../../features/interests/presentation/screens/my_interests_screen.dart';

class AppRouter {
  static GoRouter createRouter({required List<NavigatorObserver> observers}) {
    return GoRouter(
      navigatorKey: NavigationService.navigatorKey,
      initialLocation: AppRoute.splash.path,
      debugLogDiagnostics: kDebugMode,
      observers: observers,
      routes: [
        GoRoute(path: AppRoute.splash.path, name: AppRoute.splash.name, builder: (_, _) => const SplashScreen()),

        GoRoute(path: AppRoute.login.path, name: AppRoute.login.name, builder: (_, _) => const LoginScreen()),

        GoRoute(path: AppRoute.dashboard.path, name: AppRoute.dashboard.name, builder: (_, _) => const DashboardScreen()),

        GoRoute(
          path: AppRoute.dealDetails.path,
          name: AppRoute.dealDetails.name,
          builder: (context, state) {
            final deal = state.extra as DealModel;

            return DealDetailsScreen(deal: deal);
          },
        ),
        GoRoute(path: AppRoute.myInterests.path, name: AppRoute.myInterests.name, builder: (_, _) => const MyInterestsScreen()),
      ],
    );
  }
}
