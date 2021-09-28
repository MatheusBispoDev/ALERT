import 'dart:convert';

class Stretches {
  final String id;
  final String name;
  final String description;
  final List<int> categorys;
  final String video;
  final bool isFavorite;

  Stretches({
    required this.id,
    required this.description,
    required this.name,
    required this.categorys,
    required this.video,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'categorys': categorys,
      'video': video,
      'isFavorite': isFavorite,
    };
  }

  factory Stretches.fromMap(Map<String, dynamic> map) {
    return Stretches(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      categorys: List<int>.from(map['categorys']),
      video: map['video'],
      isFavorite: map['isFavorite'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Stretches.fromJson(String source) =>
      Stretches.fromMap(json.decode(source));
}
