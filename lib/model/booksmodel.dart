import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'booksmodel.g.dart';

@JsonSerializable()
class BooksModel {
  String image;
  String title;
  String subtitle;

  BooksModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  BooksModel copyWith({
    String? image,
    String? title,
    String? subtitle,
  }) {
    return BooksModel(
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'subtitle': subtitle,
    };
  }

  factory BooksModel.fromMap(Map<String, dynamic> map) {
    return BooksModel(
      image: map['image'],
      title: map['title'],
      subtitle: map['subtitle'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BooksModel.fromJson(String source) =>
      BooksModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'BooksModel(image: $image, title: $title, subtitle: $subtitle)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BooksModel &&
        other.image == image &&
        other.title == title &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode ^ subtitle.hashCode;
}
