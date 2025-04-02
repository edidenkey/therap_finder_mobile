// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageModel _$$_ImageModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'image_path',
      'user_id',
      'imageable_type',
      'imageable_id',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'name',
      'image_path',
      'user_id',
      'imageable_type',
      'imageable_id',
      'created_at',
      'updated_at'
    ],
  );
  return _$_ImageModel(
    id: json['id'] as int,
    filename: json['name'] as String,
    filePath: json['image_path'] as String,
    userId: json['user_id'] as int,
    imageObjectType: json['imageable_type'] as String,
    imageObjectId: json['imageable_id'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_ImageModelToJson(_$_ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.filename,
      'image_path': instance.filePath,
      'user_id': instance.userId,
      'imageable_type': instance.imageObjectType,
      'imageable_id': instance.imageObjectId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
