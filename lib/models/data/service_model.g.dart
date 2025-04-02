// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'description',
      'tarif',
      'therapeute_id',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'name',
      'description',
      'tarif',
      'therapeute_id',
      'therapeute',
      'created_at',
      'updated_at'
    ],
  );
  return _$_ServiceModel(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    tarif: json['tarif'] as int,
    therapeuteId: json['therapeute_id'] as int,
    therapeute: json['therapeute'] == null
        ? null
        : UserObjectModel.fromJson(json['therapeute'] as Map<String, dynamic>),
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
    'tarif': instance.tarif,
    'therapeute_id': instance.therapeuteId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('therapeute', instance.therapeute);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}
