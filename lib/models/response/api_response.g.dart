// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse _$$_ApiResponseFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['status', 'token', 'message', 'errors'],
  );
  return _$_ApiResponse(
    status: json['status'] as String?,
    token: json['token'] as String?,
    data: json['data'],
    errorMessage: json['message'] as String?,
    errorDetails: json['errors'],
  );
}

Map<String, dynamic> _$$_ApiResponseToJson(_$_ApiResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('token', instance.token);
  val['data'] = instance.data;
  writeNotNull('message', instance.errorMessage);
  writeNotNull('errors', instance.errorDetails);
  return val;
}
