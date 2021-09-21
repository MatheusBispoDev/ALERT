import 'package:alert_app/application/ui/loader/loader_mixin.dart';
import 'package:alert_app/application/ui/messages/messages_mixin.dart';
import 'package:alert_app/models/lers_model.dart';
import 'package:get/get.dart';

class LersDetailController extends GetxController with LoaderMixin, MessagesMixin {
  var loading = false.obs;
  var message = Rxn<MessageModel>();
  var lers = Rxn<LersModel>();

  LersDetailController();

      @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  @override
  void onReady() {
    super.onReady();
    loading(true);
    
    lers = Get.arguments;    
    loading(false);
  }
}