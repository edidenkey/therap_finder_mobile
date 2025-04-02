// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserObjectModel _$$_UserObjectModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'description_profil',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'note',
      'description_profil',
      'user',
      'discipline_user',
      'service',
      'created_at',
      'updated_at'
    ],
  );
  return _$_UserObjectModel(
    id: json['id'] as int,
    note: json['note'] as int?,
    descriptionProfil: json['description_profil'] as String,
    descriptionServices: json['description_services'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    user: json['user'] == null
        ? null
        : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    categoryObjects: (json['discipline_user'] as List<dynamic>?)
        ?.map((e) => CategoryObjectModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    services: (json['service'] as List<dynamic>?)
        ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_UserObjectModelToJson(_$_UserObjectModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  val['description_profil'] = instance.descriptionProfil;
  val['description_services'] = instance.descriptionServices;
  val['distance'] = instance.distance;
  writeNotNull('user', instance.user);
  writeNotNull('discipline_user', instance.categoryObjects);
  writeNotNull('service', instance.services);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}
