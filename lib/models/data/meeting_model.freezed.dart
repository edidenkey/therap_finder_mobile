// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetingModel _$MeetingModelFromJson(Map<String, dynamic> json) {
  return _MeetingModel.fromJson(json);
}

/// @nodoc
mixin _$MeetingModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'code', required: true, disallowNullValue: true)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', required: true, disallowNullValue: true)
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_meeting', required: true, disallowNullValue: true)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_id', required: true, disallowNullValue: true)
  int get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client', disallowNullValue: true)
  UserObjectModel? get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'service', disallowNullValue: true)
  ServiceModel? get service => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingModelCopyWith<MeetingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingModelCopyWith<$Res> {
  factory $MeetingModelCopyWith(
          MeetingModel value, $Res Function(MeetingModel) then) =
      _$MeetingModelCopyWithImpl<$Res, MeetingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'code', required: true, disallowNullValue: true)
          String code,
      @JsonKey(name: 'status', required: true, disallowNullValue: true)
          String status,
      @JsonKey(name: 'date_meeting', required: true, disallowNullValue: true)
          DateTime date,
      @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
          int clientId,
      @JsonKey(name: 'service_id', required: true, disallowNullValue: true)
          int serviceId,
      @JsonKey(name: 'client', disallowNullValue: true)
          UserObjectModel? client,
      @JsonKey(name: 'service', disallowNullValue: true)
          ServiceModel? service,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  $UserObjectModelCopyWith<$Res>? get client;
  $ServiceModelCopyWith<$Res>? get service;
}

/// @nodoc
class _$MeetingModelCopyWithImpl<$Res, $Val extends MeetingModel>
    implements $MeetingModelCopyWith<$Res> {
  _$MeetingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? status = null,
    Object? date = null,
    Object? clientId = null,
    Object? serviceId = null,
    Object? client = freezed,
    Object? service = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as UserObjectModel?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserObjectModelCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $UserObjectModelCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceModelCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MeetingModelCopyWith<$Res>
    implements $MeetingModelCopyWith<$Res> {
  factory _$$_MeetingModelCopyWith(
          _$_MeetingModel value, $Res Function(_$_MeetingModel) then) =
      __$$_MeetingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'code', required: true, disallowNullValue: true)
          String code,
      @JsonKey(name: 'status', required: true, disallowNullValue: true)
          String status,
      @JsonKey(name: 'date_meeting', required: true, disallowNullValue: true)
          DateTime date,
      @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
          int clientId,
      @JsonKey(name: 'service_id', required: true, disallowNullValue: true)
          int serviceId,
      @JsonKey(name: 'client', disallowNullValue: true)
          UserObjectModel? client,
      @JsonKey(name: 'service', disallowNullValue: true)
          ServiceModel? service,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  @override
  $UserObjectModelCopyWith<$Res>? get client;
  @override
  $ServiceModelCopyWith<$Res>? get service;
}

/// @nodoc
class __$$_MeetingModelCopyWithImpl<$Res>
    extends _$MeetingModelCopyWithImpl<$Res, _$_MeetingModel>
    implements _$$_MeetingModelCopyWith<$Res> {
  __$$_MeetingModelCopyWithImpl(
      _$_MeetingModel _value, $Res Function(_$_MeetingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? status = null,
    Object? date = null,
    Object? clientId = null,
    Object? serviceId = null,
    Object? client = freezed,
    Object? service = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_MeetingModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as UserObjectModel?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetingModel extends _MeetingModel {
  const _$_MeetingModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'code', required: true, disallowNullValue: true)
          required this.code,
      @JsonKey(name: 'status', required: true, disallowNullValue: true)
          required this.status,
      @JsonKey(name: 'date_meeting', required: true, disallowNullValue: true)
          required this.date,
      @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
          required this.clientId,
      @JsonKey(name: 'service_id', required: true, disallowNullValue: true)
          required this.serviceId,
      @JsonKey(name: 'client', disallowNullValue: true)
          this.client,
      @JsonKey(name: 'service', disallowNullValue: true)
          this.service,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : super._();

  factory _$_MeetingModel.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'code', required: true, disallowNullValue: true)
  final String code;
  @override
  @JsonKey(name: 'status', required: true, disallowNullValue: true)
  final String status;
  @override
  @JsonKey(name: 'date_meeting', required: true, disallowNullValue: true)
  final DateTime date;
  @override
  @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
  final int clientId;
  @override
  @JsonKey(name: 'service_id', required: true, disallowNullValue: true)
  final int serviceId;
  @override
  @JsonKey(name: 'client', disallowNullValue: true)
  final UserObjectModel? client;
  @override
  @JsonKey(name: 'service', disallowNullValue: true)
  final ServiceModel? service;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MeetingModel(id: $id, code: $code, status: $status, date: $date, clientId: $clientId, serviceId: $serviceId, client: $client, service: $service, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetingModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, status, date, clientId,
      serviceId, client, service, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetingModelCopyWith<_$_MeetingModel> get copyWith =>
      __$$_MeetingModelCopyWithImpl<_$_MeetingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingModelToJson(
      this,
    );
  }
}

abstract class _MeetingModel extends MeetingModel {
  const factory _MeetingModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'code', required: true, disallowNullValue: true)
          required final String code,
      @JsonKey(name: 'status', required: true, disallowNullValue: true)
          required final String status,
      @JsonKey(name: 'date_meeting', required: true, disallowNullValue: true)
          required final DateTime date,
      @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
          required final int clientId,
      @JsonKey(name: 'service_id', required: true, disallowNullValue: true)
          required final int serviceId,
      @JsonKey(name: 'client', disallowNullValue: true)
          final UserObjectModel? client,
      @JsonKey(name: 'service', disallowNullValue: true)
          final ServiceModel? service,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_MeetingModel;
  const _MeetingModel._() : super._();

  factory _MeetingModel.fromJson(Map<String, dynamic> json) =
      _$_MeetingModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'code', required: true, disallowNullValue: true)
  String get code;
  @override
  @JsonKey(name: 'status', required: true, disallowNullValue: true)
  String get status;
  @override
  @JsonKey(name: 'date_meeting', required: true, disallowNullValue: true)
  DateTime get date;
  @override
  @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
  int get clientId;
  @override
  @JsonKey(name: 'service_id', required: true, disallowNullValue: true)
  int get serviceId;
  @override
  @JsonKey(name: 'client', disallowNullValue: true)
  UserObjectModel? get client;
  @override
  @JsonKey(name: 'service', disallowNullValue: true)
  ServiceModel? get service;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_MeetingModelCopyWith<_$_MeetingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
