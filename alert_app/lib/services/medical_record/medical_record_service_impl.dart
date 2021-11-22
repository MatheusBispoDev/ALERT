import 'package:alert_app/models/medical_record.dart';
import 'package:alert_app/repositories/medical_record/medical_record_repository.dart';
import 'medical_record_service.dart';

class MedicalRecordServiceImpl implements MedicalRecordService {
  MedicalRecordRepository _medicalRecordRepository;

  MedicalRecordServiceImpl({
    required MedicalRecordRepository medicalRecordRepository,
  }) : _medicalRecordRepository = medicalRecordRepository;

  @override
  Future<MedicalRecordModel> getMedicalRecord(String userId) =>
      _medicalRecordRepository.getMedicalRecord(userId);

  @override
  Future<void> salveMedicalRecord(String userId, MedicalRecordModel medicalRecord) =>
      _medicalRecordRepository.salveMedicalRecord(userId, medicalRecord);
}
