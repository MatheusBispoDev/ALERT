import 'package:alert_app/modules/login/login_controller.dart';
import 'package:get/get.dart';

// Camada responsável por fazer a injeção de dependência para o Controller

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(loginService: Get.find()));
  }
  
}