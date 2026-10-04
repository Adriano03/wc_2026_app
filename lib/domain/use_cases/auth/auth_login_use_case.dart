import 'package:wc_2026_app/core/result.dart';
import 'package:wc_2026_app/data/repositories/auth/auth_repository.dart';
import 'package:wc_2026_app/data/repositories/auth_session/auth_session_repository.dart';
import 'package:wc_2026_app/domain/models/auth_session.dart';

class AuthLoginUseCase({
  required final AuthRepository _authRepository,
  required final AuthSessionRepository _authSessionRepository,
}) {
  Future<Result<AuthSessionUser>> login({required String email, required String password}) async {
    final authenticated = await _authRepository.login(email: email, password: password);
    switch (authenticated) {
      case Ok<AuthSession>(value: final session):
        final saved = await _authSessionRepository.save(session);
        return switch (saved) {
          Ok<void>() => Result.ok(session.user),
          Error<void>(:final error) => Result.error(error),
        };

      case Error<AuthSession>(:final error):
        return Result.error(error);
    }
  }
}
