// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryObjectModel _$$_CategoryObjectModelFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'discipline_id', 'therapeute_id', 'discipline'],
    disallowNullValues: const [
      'id',
      'discipline_id',
      'therapeute_id',
      'discipline'
    ],
  );
  return _$_CategoryObjectModel(
    id: json['id'] as int,
    categoryId: json['discipline_id'] as int,
    therapeuteId: json['therapeute_id'] as int,
    category:
        CategoryModel.fromJson(json['discipline'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_CategoryObjectModelToJson(
        _$_CategoryObjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discipline_id': instance.categoryId,
      'therapeute_id': instance.therapeuteId,
      'discipline': instance.category,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
