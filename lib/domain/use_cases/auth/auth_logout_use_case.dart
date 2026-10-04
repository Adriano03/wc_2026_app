import 'package:wc_2026_app/core/result.dart';
import 'package:wc_2026_app/data/repositories/auth_session/auth_session_repository.dart';

class AuthLogoutUseCase({required final AuthSessionRepository _authSessionRepository}) {
  Future<Result<void>> logout() => _authSessionRepository.delete();
}
