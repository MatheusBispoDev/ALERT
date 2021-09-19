import 'package:alert_app/repositories/login/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './login_service.dart';

// Service -> Responsável pela regra de negócio para o Repository, aqui são feitas as validações de acesso aos dados externos
// Caso não tenha regras de negócio, deve somente chamar o Repository


class LoginServiceImpl implements LoginService {
  final LoginRepository _loginRepository;

  const LoginServiceImpl({required LoginRepository loginRepository})
      : _loginRepository = loginRepository;

  @override
  Future<UserCredential> login() => _loginRepository.login();

  @override
  Future<void> logout() => _loginRepository.logout();
}
