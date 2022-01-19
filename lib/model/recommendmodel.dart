import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'recommendmodel.g.dart';

@JsonSerializable()
class RecommendModel {
  int? id;
  String? reccomendName;

  RecommendModel({
    this.id,
    this.reccomendName,
  });

  RecommendModel copyWith({
    int? id,
    String? reccomendName,
  }) {
    return RecommendModel(
      id: id ?? this.id,
      reccomendName: reccomendName ?? this.reccomendName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'reccomendName': reccomendName,
    };
  }

  factory RecommendModel.fromMap(Map<String, dynamic> map) {
    return RecommendModel(
      id: map['id']?.toInt(),
      reccomendName: map['reccomendName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RecommendModel.fromJson(String source) =>
      RecommendModel.fromMap(json.decode(source));

  @override
  String toString() => 'RecommendModel(id: $id, reccomendName: $reccomendName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RecommendModel &&
        other.id == id &&
        other.reccomendName == reccomendName;
  }

  @override
  int get hashCode => id.hashCode ^ reccomendName.hashCode;
}
