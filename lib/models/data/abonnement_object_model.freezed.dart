// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abonnement_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbonnementObjectModel _$AbonnementObjectModelFromJson(
    Map<String, dynamic> json) {
  return _AbonnementObjectModel.fromJson(json);
}

/// @nodoc
mixin _$AbonnementObjectModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'statut', required: true, disallowNullValue: true)
  String get statut => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_debut', required: true, disallowNullValue: true)
  DateTime get dateDebut => throw _privateConstructorUsedError; // Date
  @JsonKey(name: 'date_fin', required: true, disallowNullValue: true)
  DateTime get dateFin => throw _privateConstructorUsedError; // Date
  @JsonKey(name: 'abonnement_id', required: true, disallowNullValue: true)
  int get abonnementId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'abonnement', disallowNullValue: true)
  AbonnementModel? get abonnement => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbonnementObjectModelCopyWith<AbonnementObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbonnementObjectModelCopyWith<$Res> {
  factory $AbonnementObjectModelCopyWith(AbonnementObjectModel value,
          $Res Function(AbonnementObjectModel) then) =
      _$AbonnementObjectModelCopyWithImpl<$Res, AbonnementObjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'statut', required: true, disallowNullValue: true)
          String statut,
      @JsonKey(name: 'date_debut', required: true, disallowNullValue: true)
          DateTime dateDebut,
      @JsonKey(name: 'date_fin', required: true, disallowNullValue: true)
          DateTime dateFin,
      @JsonKey(name: 'abonnement_id', required: true, disallowNullValue: true)
          int abonnementId,
      @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
          int userId,
      @JsonKey(name: 'abonnement', disallowNullValue: true)
          AbonnementModel? abonnement,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  $AbonnementModelCopyWith<$Res>? get abonnement;
}

/// @nodoc
class _$AbonnementObjectModelCopyWithImpl<$Res,
        $Val extends AbonnementObjectModel>
    implements $AbonnementObjectModelCopyWith<$Res> {
  _$AbonnementObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statut = null,
    Object? dateDebut = null,
    Object? dateFin = null,
    Object? abonnementId = null,
    Object? userId = null,
    Object? abonnement = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statut: null == statut
          ? _value.statut
          : statut // ignore: cast_nullable_to_non_nullable
              as String,
      dateDebut: null == dateDebut
          ? _value.dateDebut
          : dateDebut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateFin: null == dateFin
          ? _value.dateFin
          : dateFin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      abonnementId: null == abonnementId
          ? _value.abonnementId
          : abonnementId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      abonnement: freezed == abonnement
          ? _value.abonnement
          : abonnement // ignore: cast_nullable_to_non_nullable
              as AbonnementModel?,
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
  $AbonnementModelCopyWith<$Res>? get abonnement {
    if (_value.abonnement == null) {
      return null;
    }

    return $AbonnementModelCopyWith<$Res>(_value.abonnement!, (value) {
      return _then(_value.copyWith(abonnement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AbonnementObjectModelCopyWith<$Res>
    implements $AbonnementObjectModelCopyWith<$Res> {
  factory _$$_AbonnementObjectModelCopyWith(_$_AbonnementObjectModel value,
          $Res Function(_$_AbonnementObjectModel) then) =
      __$$_AbonnementObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'statut', required: true, disallowNullValue: true)
          String statut,
      @JsonKey(name: 'date_debut', required: true, disallowNullValue: true)
          DateTime dateDebut,
      @JsonKey(name: 'date_fin', required: true, disallowNullValue: true)
          DateTime dateFin,
      @JsonKey(name: 'abonnement_id', required: true, disallowNullValue: true)
          int abonnementId,
      @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
          int userId,
      @JsonKey(name: 'abonnement', disallowNullValue: true)
          AbonnementModel? abonnement,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  @override
  $AbonnementModelCopyWith<$Res>? get abonnement;
}

/// @nodoc
class __$$_AbonnementObjectModelCopyWithImpl<$Res>
    extends _$AbonnementObjectModelCopyWithImpl<$Res, _$_AbonnementObjectModel>
    implements _$$_AbonnementObjectModelCopyWith<$Res> {
  __$$_AbonnementObjectModelCopyWithImpl(_$_AbonnementObjectModel _value,
      $Res Function(_$_AbonnementObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statut = null,
    Object? dateDebut = null,
    Object? dateFin = null,
    Object? abonnementId = null,
    Object? userId = null,
    Object? abonnement = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_AbonnementObjectModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statut: null == statut
          ? _value.statut
          : statut // ignore: cast_nullable_to_non_nullable
              as String,
      dateDebut: null == dateDebut
          ? _value.dateDebut
          : dateDebut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateFin: null == dateFin
          ? _value.dateFin
          : dateFin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      abonnementId: null == abonnementId
          ? _value.abonnementId
          : abonnementId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      abonnement: freezed == abonnement
          ? _value.abonnement
          : abonnement // ignore: cast_nullable_to_non_nullable
              as AbonnementModel?,
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
class _$_AbonnementObjectModel extends _AbonnementObjectModel {
  const _$_AbonnementObjectModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'statut', required: true, disallowNullValue: true)
          required this.statut,
      @JsonKey(name: 'date_debut', required: true, disallowNullValue: true)
          required this.dateDebut,
      @JsonKey(name: 'date_fin', required: true, disallowNullValue: true)
          required this.dateFin,
      @JsonKey(name: 'abonnement_id', required: true, disallowNullValue: true)
          required this.abonnementId,
      @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
          required this.userId,
      @JsonKey(name: 'abonnement', disallowNullValue: true)
          this.abonnement,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : super._();

  factory _$_AbonnementObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_AbonnementObjectModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'statut', required: true, disallowNullValue: true)
  final String statut;
  @override
  @JsonKey(name: 'date_debut', required: true, disallowNullValue: true)
  final DateTime dateDebut;
// Date
  @override
  @JsonKey(name: 'date_fin', required: true, disallowNullValue: true)
  final DateTime dateFin;
// Date
  @override
  @JsonKey(name: 'abonnement_id', required: true, disallowNullValue: true)
  final int abonnementId;
  @override
  @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
  final int userId;
  @override
  @JsonKey(name: 'abonnement', disallowNullValue: true)
  final AbonnementModel? abonnement;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AbonnementObjectModel(id: $id, statut: $statut, dateDebut: $dateDebut, dateFin: $dateFin, abonnementId: $abonnementId, userId: $userId, abonnement: $abonnement, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbonnementObjectModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statut, statut) || other.statut == statut) &&
            (identical(other.dateDebut, dateDebut) ||
                other.dateDebut == dateDebut) &&
            (identical(other.dateFin, dateFin) || other.dateFin == dateFin) &&
            (identical(other.abonnementId, abonnementId) ||
                other.abonnementId == abonnementId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.abonnement, abonnement) ||
                other.abonnement == abonnement) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, statut, dateDebut, dateFin,
      abonnementId, userId, abonnement, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbonnementObjectModelCopyWith<_$_AbonnementObjectModel> get copyWith =>
      __$$_AbonnementObjectModelCopyWithImpl<_$_AbonnementObjectModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbonnementObjectModelToJson(
      this,
    );
  }
}

abstract class _AbonnementObjectModel extends AbonnementObjectModel {
  const factory _AbonnementObjectModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'statut', required: true, disallowNullValue: true)
          required final String statut,
      @JsonKey(name: 'date_debut', required: true, disallowNullValue: true)
          required final DateTime dateDebut,
      @JsonKey(name: 'date_fin', required: true, disallowNullValue: true)
          required final DateTime dateFin,
      @JsonKey(name: 'abonnement_id', required: true, disallowNullValue: true)
          required final int abonnementId,
      @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
          required final int userId,
      @JsonKey(name: 'abonnement', disallowNullValue: true)
          final AbonnementModel? abonnement,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_AbonnementObjectModel;
  const _AbonnementObjectModel._() : super._();

  factory _AbonnementObjectModel.fromJson(Map<String, dynamic> json) =
      _$_AbonnementObjectModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'statut', required: true, disallowNullValue: true)
  String get statut;
  @override
  @JsonKey(name: 'date_debut', required: true, disallowNullValue: true)
  DateTime get dateDebut;
  @override // Date
  @JsonKey(name: 'date_fin', required: true, disallowNullValue: true)
  DateTime get dateFin;
  @override // Date
  @JsonKey(name: 'abonnement_id', required: true, disallowNullValue: true)
  int get abonnementId;
  @override
  @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
  int get userId;
  @override
  @JsonKey(name: 'abonnement', disallowNullValue: true)
  AbonnementModel? get abonnement;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AbonnementObjectModelCopyWith<_$_AbonnementObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}
