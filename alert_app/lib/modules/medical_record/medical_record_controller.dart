import 'package:alert_app/application/auth/auth_service.dart';
import 'package:alert_app/application/ui/loader/loader_mixin.dart';
import 'package:alert_app/application/ui/messages/messages_mixin.dart';
import 'package:alert_app/models/medical_record.dart';
import 'package:alert_app/services/medical_record/medical_record_service.dart';
import 'package:get/get.dart';

class MedicalRecordController extends GetxController
    with LoaderMixin, MessagesMixin {
  MedicalRecordController(
      {required MedicalRecordService medicalRecordService,
      required AuthService authService})
      : _medicalRecordService = medicalRecordService,
        _authService = authService;

  final MedicalRecordService _medicalRecordService;
  final AuthService _authService;

  var loading = false.obs;
  var message = Rxn<MessageModel>();
  var medical = Rxn<MedicalRecordModel>();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    // Pega o argumento que veio do MovieCard
    try {
      loading(true);
      var user = _authService.user;
      if (user != null) {
        final medicalRecordData = await _medicalRecordService
            .getMedicalRecord(_authService.user!.uid);

        medical.value = medicalRecordData;
      }

      loading(false);
    } on Exception catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(MessageModel.error(
          title: 'Error', message: 'Error ao buscar detalhe do filme'));
    }
  }
}
