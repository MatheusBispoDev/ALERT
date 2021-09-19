import 'package:alert_app/modules/lers/lers_controller.dart';
import 'package:get/get.dart';

class LersBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LersController(lersService: Get.find()));
  }
}
