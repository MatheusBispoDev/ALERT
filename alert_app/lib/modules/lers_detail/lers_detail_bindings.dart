import 'package:get/get.dart';
import './lers_detail_controller.dart';

class LersDetailBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(LersDetailController());
    }
}