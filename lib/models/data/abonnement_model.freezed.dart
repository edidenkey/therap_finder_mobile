// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abonnement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbonnementModel _$AbonnementModelFromJson(Map<String, dynamic> json) {
  return _AbonnementModel.fromJson(json);
}

/// @nodoc
mixin _$AbonnementModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description', required: true, disallowNullValue: true)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'duree', required: true, disallowNullValue: true)
  String get duree => throw _privateConstructorUsedError;
  @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
  int get tarif => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbonnementModelCopyWith<AbonnementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbonnementModelCopyWith<$Res> {
  factory $AbonnementModelCopyWith(
          AbonnementModel value, $Res Function(AbonnementModel) then) =
      _$AbonnementModelCopyWithImpl<$Res, AbonnementModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          String description,
      @JsonKey(name: 'duree', required: true, disallowNullValue: true)
          String duree,
      @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
          int tarif,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});
}

/// @nodoc
class _$AbonnementModelCopyWithImpl<$Res, $Val extends AbonnementModel>
    implements $AbonnementModelCopyWith<$Res> {
  _$AbonnementModelCopyWithImpl(this._value, this._then);

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
    Object? duree = null,
    Object? tarif = null,
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
      duree: null == duree
          ? _value.duree
          : duree // ignore: cast_nullable_to_non_nullable
              as String,
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as int,
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
}

/// @nodoc
abstract class _$$_AbonnementModelCopyWith<$Res>
    implements $AbonnementModelCopyWith<$Res> {
  factory _$$_AbonnementModelCopyWith(
          _$_AbonnementModel value, $Res Function(_$_AbonnementModel) then) =
      __$$_AbonnementModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          String description,
      @JsonKey(name: 'duree', required: true, disallowNullValue: true)
          String duree,
      @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
          int tarif,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});
}

/// @nodoc
class __$$_AbonnementModelCopyWithImpl<$Res>
    extends _$AbonnementModelCopyWithImpl<$Res, _$_AbonnementModel>
    implements _$$_AbonnementModelCopyWith<$Res> {
  __$$_AbonnementModelCopyWithImpl(
      _$_AbonnementModel _value, $Res Function(_$_AbonnementModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? duree = null,
    Object? tarif = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_AbonnementModel(
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
      duree: null == duree
          ? _value.duree
          : duree // ignore: cast_nullable_to_non_nullable
              as String,
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_AbonnementModel extends _AbonnementModel {
  const _$_AbonnementModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          required this.name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          required this.description,
      @JsonKey(name: 'duree', required: true, disallowNullValue: true)
          required this.duree,
      @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
          required this.tarif,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : super._();

  factory _$_AbonnementModel.fromJson(Map<String, dynamic> json) =>
      _$$_AbonnementModelFromJson(json);

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
  @JsonKey(name: 'duree', required: true, disallowNullValue: true)
  final String duree;
  @override
  @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
  final int tarif;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AbonnementModel(id: $id, name: $name, description: $description, duree: $duree, tarif: $tarif, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbonnementModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duree, duree) || other.duree == duree) &&
            (identical(other.tarif, tarif) || other.tarif == tarif) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, duree, tarif, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbonnementModelCopyWith<_$_AbonnementModel> get copyWith =>
      __$$_AbonnementModelCopyWithImpl<_$_AbonnementModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbonnementModelToJson(
      this,
    );
  }
}

abstract class _AbonnementModel extends AbonnementModel {
  const factory _AbonnementModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          required final String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          required final String description,
      @JsonKey(name: 'duree', required: true, disallowNullValue: true)
          required final String duree,
      @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
          required final int tarif,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_AbonnementModel;
  const _AbonnementModel._() : super._();

  factory _AbonnementModel.fromJson(Map<String, dynamic> json) =
      _$_AbonnementModel.fromJson;

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
  @JsonKey(name: 'duree', required: true, disallowNullValue: true)
  String get duree;
  @override
  @JsonKey(name: 'tarif', required: true, disallowNullValue: true)
  int get tarif;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AbonnementModelCopyWith<_$_AbonnementModel> get copyWith =>
      throw _privateConstructorUsedError;
}
