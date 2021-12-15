import 'package:alert_app/modules/stretches_detail/stretches_detail_controller.dart';
import 'package:get/get.dart';

class StretchesDetailBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(StrechesDetailController());
  }
}
