import 'dart:convert';

class MedicalRecordModel {
  final String userId;
  final int weight;
  final int height;
  final String genre;
  final int age;
  final int averageTimeSitting;
  final int painIntensity;
  final int frequencyPhysicalActivity;

  MedicalRecordModel({
    required this.userId,
    required this.weight,
    required this.height,
    required this.genre,
    required this.age,
    required this.averageTimeSitting,
    required this.painIntensity,
    required this.frequencyPhysicalActivity,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'weight': weight,
      'height': height,
      'genre': genre,
      'age': age,
      'averageTimeSitting': averageTimeSitting,
      'painIntensity': painIntensity,
      'frequencyPhysicalActivity': frequencyPhysicalActivity,
    };
  }

  factory MedicalRecordModel.fromMap(Map<String, dynamic> map) {
    return MedicalRecordModel(
      userId: map['userId'] ?? '',
      weight: map['weight'] ?? 0,
      height: map['height'] ?? 0,
      genre: map['genre'] ?? '',
      age: map['age'] ?? 0,
      averageTimeSitting: map['averageTimeSitting'] ?? 0,
      painIntensity: map['painIntensity'] ?? 0,
      frequencyPhysicalActivity: map['frequencyPhysicalActivity'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MedicalRecordModel.fromJson(String source) => MedicalRecordModel.fromMap(json.decode(source));
}
