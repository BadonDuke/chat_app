// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PixelfordImage _$PixelfordImageFromJson(Map<String, dynamic> json) =>
    PixelfordImage(
      id: json['id'] as String,
      author: json['author'] as String,
      urlFullSize: json['download_url'] as String,
    );

Map<String, dynamic> _$PixelfordImageToJson(PixelfordImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'download_url': instance.urlFullSize,
    };
