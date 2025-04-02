// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description', required: true, disallowNullValue: true)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
  int get tarif => throw _privateConstructorUsedError;
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  int get therapeuteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'therapeute', disallowNullValue: true)
  UserObjectModel? get therapeute => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          String description,
      @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
          int tarif,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          int therapeuteId,
      @JsonKey(name: 'therapeute', disallowNullValue: true)
          UserObjectModel? therapeute,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  $UserObjectModelCopyWith<$Res>? get therapeute;
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? tarif = null,
    Object? therapeuteId = null,
    Object? therapeute = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as int,
      therapeuteId: null == therapeuteId
          ? _value.therapeuteId
          : therapeuteId // ignore: cast_nullable_to_non_nullable
              as int,
      therapeute: freezed == therapeute
          ? _value.therapeute
          : therapeute // ignore: cast_nullable_to_non_nullable
              as UserObjectModel?,
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
  $UserObjectModelCopyWith<$Res>? get therapeute {
    if (_value.therapeute == null) {
      return null;
    }

    return $UserObjectModelCopyWith<$Res>(_value.therapeute!, (value) {
      return _then(_value.copyWith(therapeute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$_ServiceModelCopyWith(
          _$_ServiceModel value, $Res Function(_$_ServiceModel) then) =
      __$$_ServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          String description,
      @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
          int tarif,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          int therapeuteId,
      @JsonKey(name: 'therapeute', disallowNullValue: true)
          UserObjectModel? therapeute,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  @override
  $UserObjectModelCopyWith<$Res>? get therapeute;
}

/// @nodoc
class __$$_ServiceModelCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res, _$_ServiceModel>
    implements _$$_ServiceModelCopyWith<$Res> {
  __$$_ServiceModelCopyWithImpl(
      _$_ServiceModel _value, $Res Function(_$_ServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? tarif = null,
    Object? therapeuteId = null,
    Object? therapeute = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_ServiceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as int,
      therapeuteId: null == therapeuteId
          ? _value.therapeuteId
          : therapeuteId // ignore: cast_nullable_to_non_nullable
              as int,
      therapeute: freezed == therapeute
          ? _value.therapeute
          : therapeute // ignore: cast_nullable_to_non_nullable
              as UserObjectModel?,
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
class _$_ServiceModel extends _ServiceModel {
  const _$_ServiceModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          required this.name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          required this.description,
      @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
          required this.tarif,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          required this.therapeuteId,
      @JsonKey(name: 'therapeute', disallowNullValue: true)
          this.therapeute,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : super._();

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  final String name;
  @override
  @JsonKey(name: 'description', required: true, disallowNullValue: true)
  final String description;
  @override
  @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
  final int tarif;
  @override
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  final int therapeuteId;
  @override
  @JsonKey(name: 'therapeute', disallowNullValue: true)
  final UserObjectModel? therapeute;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ServiceModel(id: $id, name: $name, description: $description, tarif: $tarif, therapeuteId: $therapeuteId, therapeute: $therapeute, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tarif, tarif) || other.tarif == tarif) &&
            (identical(other.therapeuteId, therapeuteId) ||
                other.therapeuteId == therapeuteId) &&
            (identical(other.therapeute, therapeute) ||
                other.therapeute == therapeute) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, tarif,
      therapeuteId, therapeute, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      __$$_ServiceModelCopyWithImpl<_$_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceModelToJson(
      this,
    );
  }
}

abstract class _ServiceModel extends ServiceModel {
  const factory _ServiceModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          required final String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          required final String description,
      @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
          required final int tarif,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          required final int therapeuteId,
      @JsonKey(name: 'therapeute', disallowNullValue: true)
          final UserObjectModel? therapeute,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_ServiceModel;
  const _ServiceModel._() : super._();

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  String get name;
  @override
  @JsonKey(name: 'description', required: true, disallowNullValue: true)
  String get description;
  @override
  @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
  int get tarif;
  @override
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  int get therapeuteId;
  @override
  @JsonKey(name: 'therapeute', disallowNullValue: true)
  UserObjectModel? get therapeute;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
