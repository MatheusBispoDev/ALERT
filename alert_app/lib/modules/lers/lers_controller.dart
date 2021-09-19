import 'package:alert_app/application/ui/loader/loader_mixin.dart';
import 'package:alert_app/application/ui/messages/messages_mixin.dart';
import 'package:alert_app/models/lers_model.dart';
import 'package:alert_app/services/lers/lers_service.dart';
import 'package:get/get.dart';

class LersController extends GetxController with LoaderMixin, MessagesMixin {
  final LersService _lersService;
  final lers = <LersModel>[].obs;
  var message = Rxn<MessageModel>();

  LersController({required LersService lersService})
      : _lersService = lersService;

  @override
  void onInit() {
    super.onInit();
    messageListener(message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final lersData = await _lersService.getLers();
      lers.assignAll(lersData);
    } catch (e, s) {
      print(e);
      print(s);
      message(
          MessageModel.error(title: 'Error', message: 'Error ao buscar lers'));
    }
  }
}
