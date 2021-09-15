import 'package:alert_app/application/auth/auth_service.dart';
import 'package:alert_app/repositories/login/login_repository.dart';
import 'package:alert_app/repositories/login/login_repository_impl.dart';
import 'package:alert_app/services/login/login_service.dart';
import 'package:alert_app/services/login/login_service_impl.dart';
import 'package:get/get.dart';

// Camada responsável por instanciar todos os objetos necessários no aplicativo

class ApplicationBindings extends Bindings {
  @override
  void dependencies() {
    // Cria a instância quando for necessário, porém não destroi ela
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    // Cria a instância quando for necessário e depois destroi
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()),
        fenix: true);
    // Cria a instância para ficar verificando se o usuário já está logado ou não no app
    Get.put(AuthService()).init();
  }
}
