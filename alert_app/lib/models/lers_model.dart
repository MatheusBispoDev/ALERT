import 'dart:convert';

class LersModel {
  final int id;
  final String name;
  final String description;
  final String symptoms;
  final String treatments;
  final String prevention;
  final String image;
  final List<int> categorys;

  LersModel({
    required this.id,
    required this.name,
    required this.description,
    required this.symptoms,
    required this.treatments,
    required this.prevention,
    required this.image,
    required this.categorys,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'symptoms': symptoms,
      'treatments': treatments,
      'prevention': prevention,
      'image': image,
      'categorys': categorys,
    };
  }

  factory LersModel.fromMap(Map<String, dynamic> map) {
    return LersModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      symptoms: map['symptoms'],
      treatments: map['treatments'],
      prevention: map['prevention'],
      image: map['image'],
      categorys: List<int>.from(map['categorys']),
    );
  }

  String toJson() => json.encode(toMap());

  factory LersModel.fromJson(String source) => LersModel.fromMap(json.decode(source));
}
