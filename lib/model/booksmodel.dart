import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'booksmodel.g.dart';

List<BooksModel> booksmodelFromJson(String str) =>
    List<BooksModel>.from(json.decode(str).map((x) => BooksModel.fromJson(x)));

String booksmodelToJson(List<BooksModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class BooksModel {
  int id;
  String image;
  String title;
  String subtitle;
  String summary;
  String story;
  List<String> genre;
  double rating;

  BooksModel({
    required this.id,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.summary,
    required this.story,
    required this.genre,
    required this.rating,
  });

  BooksModel copyWith({
    int? id,
    String? image,
    String? title,
    String? subtitle,
    String? summary,
    String? story,
    List<String>? genre,
    double? rating,
  }) {
    return BooksModel(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
      story: story ?? this.story,
      genre: genre ?? this.genre,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'subtitle': subtitle,
      'summary': summary,
      'story': story,
      'genre': genre,
      'rating': rating,
    };
  }

  factory BooksModel.fromMap(Map<String, dynamic> map) {
    return BooksModel(
      id: map['id'] ?? '',
      image: map['image'] ?? '',
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      summary: map['summary'] ?? '',
      story: map['story'] ?? '',
      genre: List<String>.from(map['genre']),
      rating: map['rating']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory BooksModel.fromJson(String source) =>
      BooksModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BooksModel(id: $id,image: $image, title: $title, subtitle: $subtitle, summary: $summary, story: $story, genre: $genre, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BooksModel &&
        other.id == id &&
        other.image == image &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.summary == summary &&
        other.story == story &&
        listEquals(other.genre, genre) &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        title.hashCode ^
        subtitle.hashCode ^
        summary.hashCode ^
        story.hashCode ^
        genre.hashCode ^
        id.hashCode ^
        rating.hashCode;
  }

  static List<BooksModel> booksmodel = [
    BooksModel(
        id: 1,
        image: 'assets/tctir.png',
        title: 'The Classes That I Raised',
        subtitle: 'Geunseo',
        summary:
            "He was a F-rank Hunter, To top it off, he was an useless F-rank loser of a Hyung, who dragged down his incredible Dongsaeng,while he carelessly lived out his messed up life, he ultimately ended up taking his younger brother's life, he regressed back in time with his title, Perfect Upbringer",
        story: "He was a F-rank Hunter, To top it off, he was an useless F-rank loser of a Hyung, who dragged down his incredible Dongsaeng,while he carelessly lived out his messed up life, he ultimately ended up taking his younger brother's life, he regressed back in time with his title, Perfect Upbringer",
        rating: 4.1,
        genre: ['Action', 'Comedy', 'Fantasy']),
    BooksModel(
        id: 2,
        image: 'assets/tocf.jpg',
        title: "Trash Of The Count's Family",
        subtitle: 'Yoo Ryeo Han',
        summary: '',
        story: '',
        rating: 4.5,
        genre: ['Action', 'Drama', 'Shounen']),
    BooksModel(
        id: 3,
        image: 'assets/sssclass.jpg',
        title: 'SSS-Class Suicide Hunter',
        subtitle: 'Shin Noah',
        summary: '',
        story: '',
        rating: 4.5,
        genre: ['Action', 'Advanture', 'Comedy']),
    BooksModel(
        id: 4,
        image: 'assets/secondliferanker.png',
        title: 'Second Life Ranker',
        subtitle: 'Sadoyeon',
        story: '',
        summary: '',
        rating: 4.1,
        genre: ['Action', 'Mystery', 'Tragedy']),
  ];
}
