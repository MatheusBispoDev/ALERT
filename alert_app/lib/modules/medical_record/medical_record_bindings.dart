import 'package:alert_app/repositories/medical_record/medical_record_repository.dart';
import 'package:alert_app/repositories/medical_record/medical_record_repository_impl.dart';
import 'package:alert_app/services/medical_record/medical_record_service.dart';
import 'package:alert_app/services/medical_record/medical_record_service_impl.dart';
import 'package:get/get.dart';
import 'medical_record_controller.dart';

class MedicalRecordBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicalRecordRepository>(() => MedicalRecordRepositoryImpl());

    Get.lazyPut<MedicalRecordService>(
        () => MedicalRecordServiceImpl(medicalRecordRepository: Get.find()));

    Get.lazyPut(
      () => MedicalRecordController(
        authService: Get.find(),
        medicalRecordService: Get.find(),
      ),
    );
  }
}
