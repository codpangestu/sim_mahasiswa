import '../entities/app_user.dart';
import '../repositories/auth_repository.dart';

class Login {
  Login(this._repository);

  final AuthRepository _repository;

  Future<AppUser> call({required String email, required String password}) {
    final normalized = email.trim().toLowerCase();

    if (!normalized.contains('@')) {
      throw ArgumentError('Masukkan email yang valid.');
    }

    if (password.length < 8) {
      throw ArgumentError('Password minimal 8 karakter.');
    }

    return _repository.login(email: normalized, password: password);
  }
}
