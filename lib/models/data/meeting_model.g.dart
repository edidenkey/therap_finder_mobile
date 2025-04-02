// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeetingModel _$$_MeetingModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'code',
      'status',
      'date_meeting',
      'client_id',
      'service_id',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'code',
      'status',
      'date_meeting',
      'client_id',
      'service_id',
      'client',
      'service',
      'created_at',
      'updated_at'
    ],
  );
  return _$_MeetingModel(
    id: json['id'] as int,
    code: json['code'] as String,
    status: json['status'] as String,
    date: DateTime.parse(json['date_meeting'] as String),
    clientId: json['client_id'] as int,
    serviceId: json['service_id'] as int,
    client: json['client'] == null
        ? null
        : UserObjectModel.fromJson(json['client'] as Map<String, dynamic>),
    service: json['service'] == null
        ? null
        : ServiceModel.fromJson(json['service'] as Map<String, dynamic>),
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_MeetingModelToJson(_$_MeetingModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'code': instance.code,
    'status': instance.status,
    'date_meeting': instance.date.toIso8601String(),
    'client_id': instance.clientId,
    'service_id': instance.serviceId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('client', instance.client);
  writeNotNull('service', instance.service);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}
