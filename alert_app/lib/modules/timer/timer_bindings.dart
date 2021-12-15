import 'package:get/get.dart';
import 'timer_controller.dart';

class TimerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TimerController(), fenix: true);
  }
}
