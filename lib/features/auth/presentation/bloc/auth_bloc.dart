import '../../../../core.dart';
import '../../domain/usecases/check_auth_status_usecase.dart';
import '../../domain/usecases/get_current_user_usecase.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckAuthStatusUseCase checkAuthStatusUseCase;
  final GetCurrentUserUseCase getCurrentUserUseCase;
  final LoginUseCase loginUseCase;
  final LogoutUseCase logoutUseCase;

  AuthBloc({
    required this.checkAuthStatusUseCase,
    required this.getCurrentUserUseCase,
    required this.loginUseCase,
    required this.logoutUseCase,
  }) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        checkRequested: () async {
          emit(const AuthState.loading());

          try {
            final isLoggedIn = await checkAuthStatusUseCase();

            if (isLoggedIn) {
              final user = await getCurrentUserUseCase();

              if (user != null) {
                emit(AuthState.authenticated(user));
              } else {
                emit(const AuthState.unauthenticated());
              }
            } else {
              emit(const AuthState.unauthenticated());
            }
          } catch (e) {
            emit(AuthState.error(e.toString()));
          }
        },

        loginRequested: (String email, String password) async {
          emit(const AuthState.loading());

          try {
            final user = await loginUseCase(email: email, password: password);

            emit(AuthState.authenticated(user));
          } catch (e) {
            emit(AuthState.error(e.toString()));
          }
        },

        logoutRequested: () async {
          emit(const AuthState.loading());

          try {
            await logoutUseCase();

            emit(const AuthState.unauthenticated());
          } catch (e) {
            emit(AuthState.error(e.toString()));
          }
        },
      );
    });
  }
}
