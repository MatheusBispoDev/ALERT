import 'package:alert_app/models/medical_record.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './medical_record_repository.dart';

class MedicalRecordRepositoryImpl implements MedicalRecordRepository {
  @override
  Future<MedicalRecordModel> getMedicalRecord(String userId) async {
    try {
      var medicalCollection = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('medical_record')
          .get();

      MedicalRecordModel? medicalRecord;

      for (var med in medicalCollection.docs) {
        medicalRecord = MedicalRecordModel.fromMap(med.data());
      }

      return medicalRecord!;
    } on Exception catch (e, s) {
      print(e);
      print(s);
      print('Erro ao pegar ficha técnica');
      rethrow;
    }
  }

  @override
  Future<void> salveMedicalRecord(
      String userId, MedicalRecordModel medicalRecord) async {
    try {
      var medicalCollection = FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .collection('medical_record');

      medicalCollection.add(medicalRecord.toMap());
    } on Exception catch (e, s) {
      print(e);
      print(s);
      print('Erro ao salvar ficha técnica');
      rethrow;
    }
  }
}
