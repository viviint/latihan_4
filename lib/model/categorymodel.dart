import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'categorymodel.g.dart';

@JsonSerializable()
class Category {
  int? id;
  String? categoryName;
  Category({
    this.id,
    this.categoryName,
  });

  Category copyWith({
    int? id,
    String? categoryName,
  }) {
    return Category(
      id: id ?? this.id,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'categoryName': categoryName,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id']?.toInt(),
      categoryName: map['categoryName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) => Category.fromMap(json.decode(source));

  @override
  String toString() => 'Category(id: $id, categoryName: $categoryName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Category &&
      other.id == id &&
      other.categoryName == categoryName;
  }

  @override
  int get hashCode => id.hashCode ^ categoryName.hashCode;
}
