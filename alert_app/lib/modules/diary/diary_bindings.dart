import 'package:get/get.dart';
import './diary_controller.dart';

class DiaryBindings implements Bindings {
    @override
    void dependencies() {
        Get.lazyPut(() => DiaryController());
    }
}