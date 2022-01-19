// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booksmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) => BooksModel(
      image: json['image'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
    );

Map<String, dynamic> _$BooksModelToJson(BooksModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'subtitle': instance.subtitle,
    };
