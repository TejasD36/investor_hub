import '../../../../core.dart';
import '../models/session_model.dart';
import '../models/user_model.dart';

class AuthLocalDataSource {
  static const String _sessionKey = 'current_session';

  final Box<SessionModel> _sessionBox = Hive.box<SessionModel>(HiveBoxes.sessionBox);

  /// =============================
  /// MOCK LOGIN
  /// =============================
  ///
  /// Mock Credentials:
  /// Email: investor@hub.com
  /// Password: 123456
  ///
  Future<UserModel> login({required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 2));

    if (email == 'investor@hub.com' && password == '123456') {
      final user = UserModel(id: 'user_001', email: email, fullName: 'Tejas Investor', role: 'Investor');

      final session = SessionModel(isLoggedIn: true, user: user);

      await _sessionBox.put(_sessionKey, session);

      return user;
    }

    throw Exception('Invalid email or password');
  }

  Future<bool> isLoggedIn() async {
    final session = _sessionBox.get(_sessionKey);

    return session?.isLoggedIn ?? false;
  }

  Future<UserModel?> getCurrentUser() async {
    final session = _sessionBox.get(_sessionKey);

    return session?.user;
  }

  Future<SessionModel?> getCurrentSession() async {
    return _sessionBox.get(_sessionKey);
  }

  Future<void> logout() async {
    await _sessionBox.delete(_sessionKey);
  }

  Future<void> clearSession() async {
    await _sessionBox.clear();
  }
}
