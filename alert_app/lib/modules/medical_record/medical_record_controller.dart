import 'package:alert_app/application/auth/auth_service.dart';
import 'package:alert_app/application/ui/loader/loader_mixin.dart';
import 'package:alert_app/application/ui/messages/messages_mixin.dart';
import 'package:alert_app/models/medical_record.dart';
import 'package:alert_app/services/medical_record/medical_record_service.dart';
import 'package:flutter/cupertino.dart';
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
  final TextEditingController textControllerWeight = TextEditingController();
  final TextEditingController textControllerHeight = TextEditingController();
  final TextEditingController textControllerGenre = TextEditingController();
  final TextEditingController textControllerAge = TextEditingController();
  final TextEditingController textControllerAverageTimeSitting =
      TextEditingController();
  final TextEditingController textControllerPainIntensity =
      TextEditingController();
  final TextEditingController textControllerFrequencyPhysicalActivity =
      TextEditingController();

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
      await getMedicalRecord();

      loading(false);
    } on Exception catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(MessageModel.error(
          title: 'Error', message: 'Error ao buscar detalhe do filme'));
    }
  }

  Future<void> getMedicalRecord() async {
    try {
      var user = _authService.user;
      if (user != null) {
        final medicalRecordData =
            await _medicalRecordService.getMedicalRecord(user.uid);

        medical.value = medicalRecordData;
      }
    } on Exception catch (e, s) {
      print('MedicalRecordController: $e');
      print('MedicalRecordController: $s');
    }
  }

  Future<void> saveMedicalRecord() async {
    try {
      var user = _authService.user;
      if (user != null) {
        MedicalRecordModel medicalRecord = fillMedicalRecordSave();
        _medicalRecordService.salveMedicalRecord(user.uid, medicalRecord);

        getMedicalRecord();
      }
    } on Exception catch (e, s) {
      print('MedicalRecordController: $e');
      print('MedicalRecordController: $s');
    }
  }

  bool canSave() {
    if (textControllerWeight.text.isEmpty &&
        textControllerHeight.text.isEmpty &&
        textControllerGenre.text.isEmpty &&
        textControllerAge.text.isEmpty &&
        textControllerAverageTimeSitting.text.isEmpty &&
        textControllerPainIntensity.text.isEmpty &&
        textControllerFrequencyPhysicalActivity.text.isEmpty) {
      print('Campos estão vazios, preencha os campos');
      return false;
    }
    return true;
  }

  MedicalRecordModel fillMedicalRecordSave() {
    if (canSave()) {
      var user = _authService.user;
      return MedicalRecordModel(
        userId: user!.uid,
        weight: int.parse(textControllerWeight.text),
        height: int.parse(textControllerHeight.text),
        genre: textControllerGenre.text,
        age: int.parse(textControllerAge.text),
        averageTimeSitting: int.parse(textControllerAverageTimeSitting.text),
        painIntensity: int.parse(textControllerPainIntensity.text),
        frequencyPhysicalActivity:
            int.parse(textControllerFrequencyPhysicalActivity.text),
      );
    }
    return MedicalRecordModel(
      userId: '',
      weight: 0,
      height: 0,
      genre: '',
      age: 0,
      averageTimeSitting: 0,
      painIntensity: 0,
      frequencyPhysicalActivity: 0,
    );
  }
}
