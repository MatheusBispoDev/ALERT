import 'package:alert_app/models/medical_record.dart';

abstract class MedicalRecordService {
  Future<MedicalRecordModel> getMedicalRecord(String userId);
  Future<void> salveMedicalRecord(String userId, MedicalRecordModel medicalRecord);
}