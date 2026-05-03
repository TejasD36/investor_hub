import '../../../../core.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [theme.colorScheme.primary, theme.colorScheme.primary.withValues(alpha: 0.75)]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: Text(
                      'TI',
                      style: theme.textTheme.titleLarge?.copyWith(color: theme.colorScheme.primary, fontWeight: FontWeight.w700),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    'Tejas Investor',
                    style: theme.textTheme.titleLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
                  ),

                  const SizedBox(height: 4),

                  Text('investor@hub.com', style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white.withValues(alpha: 0.9))),
                ],
              ),
            ),

            const SizedBox(height: 12),
            ListTile(
              leading: const Icon(Icons.star_border_rounded, size: 25),
              title: const Text('My Interests'),
              onTap: () {
                Navigator.pop(context);
                context.pushNamed(AppRoute.myInterests.name);
              },
            ),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, themeState) {
                final isDark = themeState.themeMode == ThemeMode.dark;

                return SwitchListTile(
                  secondary: Icon(isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
                  title: const Text('Dark Mode'),
                  value: isDark,
                  onChanged: (value) {
                    context.read<ThemeCubit>().setTheme(value ? ThemeMode.dark : ThemeMode.light);
                  },
                );
              },
            ),

            const Divider(),

            const Spacer(),
            ListTile(
              leading: Icon(Icons.logout, color: theme.colorScheme.error),
              title: Text(
                'Logout',
                style: TextStyle(color: theme.colorScheme.error, fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);

                context.read<AuthBloc>().add(const AuthEvent.logoutRequested());

                context.goNamed(AppRoute.login.name);
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
