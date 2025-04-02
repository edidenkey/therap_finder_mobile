// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'username',
      'email',
      'phone',
      'first_name',
      'last_name',
      'street',
      'postal_code',
      'country',
      'region',
      'department',
      'lat',
      'lon',
      'userable_type',
      'userable_id',
      'role',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'username',
      'email',
      'phone',
      'first_name',
      'last_name',
      'street',
      'postal_code',
      'country',
      'region',
      'department',
      'lat',
      'lon',
      'userable_type',
      'userable_id',
      'userable',
      'images',
      'abonnement',
      'role',
      'created_at',
      'updated_at'
    ],
  );
  return _$_UserModel(
    id: json['id'] as int,
    username: json['username'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    firstname: json['first_name'] as String,
    lastname: json['last_name'] as String,
    street: json['street'] as String,
    postalCode: json['postal_code'] as String,
    country: json['country'] as String,
    region: json['region'] as String,
    department: json['department'] as String,
    latitude: (json['lat'] as num).toDouble(),
    longitude: (json['lon'] as num).toDouble(),
    userObjectType: json['userable_type'] as String,
    userObjectId: json['userable_id'] as int,
    userable: json['userable'] == null
        ? null
        : UserObjectModel.fromJson(json['userable'] as Map<String, dynamic>),
    images: (json['images'] as List<dynamic>?)
        ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    abonnementObjects: (json['abonnement'] as List<dynamic>?)
        ?.map((e) => AbonnementObjectModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    role: json['role'] as String,
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'username': instance.username,
    'email': instance.email,
    'phone': instance.phone,
    'first_name': instance.firstname,
    'last_name': instance.lastname,
    'street': instance.street,
    'postal_code': instance.postalCode,
    'country': instance.country,
    'region': instance.region,
    'department': instance.department,
    'lat': instance.latitude,
    'lon': instance.longitude,
    'userable_type': instance.userObjectType,
    'userable_id': instance.userObjectId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userable', instance.userable);
  writeNotNull('images', instance.images);
  writeNotNull('abonnement', instance.abonnementObjects);
  val['role'] = instance.role;
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}
