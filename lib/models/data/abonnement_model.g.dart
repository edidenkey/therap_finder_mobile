// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abonnement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbonnementModel _$$_AbonnementModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'description',
      'duree',
      'tarif',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'name',
      'description',
      'duree',
      'tarif',
      'created_at',
      'updated_at'
    ],
  );
  return _$_AbonnementModel(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    duree: json['duree'] as String,
    tarif: json['tarif'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_AbonnementModelToJson(_$_AbonnementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'duree': instance.duree,
      'tarif': instance.tarif,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
