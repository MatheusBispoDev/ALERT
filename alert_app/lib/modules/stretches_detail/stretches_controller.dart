import 'package:alert_app/application/ui/loader/loader_mixin.dart';
import 'package:alert_app/application/ui/messages/messages_mixin.dart';
import 'package:get/get.dart';

class StrechesDetailController extends GetxController
    with LoaderMixin, MessagesMixin {
  var loading = false.obs;
  var message = Rxn<MessageModel>();
  StrechesDetailController();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);

    //lers.value = Get.arguments;
  }
}
