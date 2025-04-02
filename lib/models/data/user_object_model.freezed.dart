// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserObjectModel _$UserObjectModelFromJson(Map<String, dynamic> json) {
  return _UserObjectModel.fromJson(json);
}

/// @nodoc
mixin _$UserObjectModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'note', disallowNullValue: true)
  int? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_profil', required: true, disallowNullValue: true)
  String get descriptionProfil => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_services')
  String? get descriptionServices => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance', includeIfNull: true)
  double? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'user', disallowNullValue: true)
  UserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'discipline_user', disallowNullValue: true)
  List<CategoryObjectModel>? get categoryObjects =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'service', disallowNullValue: true)
  List<ServiceModel>? get services => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserObjectModelCopyWith<UserObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserObjectModelCopyWith<$Res> {
  factory $UserObjectModelCopyWith(
          UserObjectModel value, $Res Function(UserObjectModel) then) =
      _$UserObjectModelCopyWithImpl<$Res, UserObjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'note', disallowNullValue: true)
          int? note,
      @JsonKey(name: 'description_profil', required: true, disallowNullValue: true)
          String descriptionProfil,
      @JsonKey(name: 'description_services')
          String? descriptionServices,
      @JsonKey(name: 'distance', includeIfNull: true)
          double? distance,
      @JsonKey(name: 'user', disallowNullValue: true)
          UserModel? user,
      @JsonKey(name: 'discipline_user', disallowNullValue: true)
          List<CategoryObjectModel>? categoryObjects,
      @JsonKey(name: 'service', disallowNullValue: true)
          List<ServiceModel>? services,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserObjectModelCopyWithImpl<$Res, $Val extends UserObjectModel>
    implements $UserObjectModelCopyWith<$Res> {
  _$UserObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? note = freezed,
    Object? descriptionProfil = null,
    Object? descriptionServices = freezed,
    Object? distance = freezed,
    Object? user = freezed,
    Object? categoryObjects = freezed,
    Object? services = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as int?,
      descriptionProfil: null == descriptionProfil
          ? _value.descriptionProfil
          : descriptionProfil // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionServices: freezed == descriptionServices
          ? _value.descriptionServices
          : descriptionServices // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      categoryObjects: freezed == categoryObjects
          ? _value.categoryObjects
          : categoryObjects // ignore: cast_nullable_to_non_nullable
              as List<CategoryObjectModel>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>?,
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
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserObjectModelCopyWith<$Res>
    implements $UserObjectModelCopyWith<$Res> {
  factory _$$_UserObjectModelCopyWith(
          _$_UserObjectModel value, $Res Function(_$_UserObjectModel) then) =
      __$$_UserObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'note', disallowNullValue: true)
          int? note,
      @JsonKey(name: 'description_profil', required: true, disallowNullValue: true)
          String descriptionProfil,
      @JsonKey(name: 'description_services')
          String? descriptionServices,
      @JsonKey(name: 'distance', includeIfNull: true)
          double? distance,
      @JsonKey(name: 'user', disallowNullValue: true)
          UserModel? user,
      @JsonKey(name: 'discipline_user', disallowNullValue: true)
          List<CategoryObjectModel>? categoryObjects,
      @JsonKey(name: 'service', disallowNullValue: true)
          List<ServiceModel>? services,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserObjectModelCopyWithImpl<$Res>
    extends _$UserObjectModelCopyWithImpl<$Res, _$_UserObjectModel>
    implements _$$_UserObjectModelCopyWith<$Res> {
  __$$_UserObjectModelCopyWithImpl(
      _$_UserObjectModel _value, $Res Function(_$_UserObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? note = freezed,
    Object? descriptionProfil = null,
    Object? descriptionServices = freezed,
    Object? distance = freezed,
    Object? user = freezed,
    Object? categoryObjects = freezed,
    Object? services = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_UserObjectModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as int?,
      descriptionProfil: null == descriptionProfil
          ? _value.descriptionProfil
          : descriptionProfil // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionServices: freezed == descriptionServices
          ? _value.descriptionServices
          : descriptionServices // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      categoryObjects: freezed == categoryObjects
          ? _value._categoryObjects
          : categoryObjects // ignore: cast_nullable_to_non_nullable
              as List<CategoryObjectModel>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>?,
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
class _$_UserObjectModel extends _UserObjectModel {
  const _$_UserObjectModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'note', disallowNullValue: true)
          this.note,
      @JsonKey(name: 'description_profil', required: true, disallowNullValue: true)
          required this.descriptionProfil,
      @JsonKey(name: 'description_services')
          this.descriptionServices,
      @JsonKey(name: 'distance', includeIfNull: true)
          this.distance,
      @JsonKey(name: 'user', disallowNullValue: true)
          this.user,
      @JsonKey(name: 'discipline_user', disallowNullValue: true)
          final List<CategoryObjectModel>? categoryObjects,
      @JsonKey(name: 'service', disallowNullValue: true)
          final List<ServiceModel>? services,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : _categoryObjects = categoryObjects,
        _services = services,
        super._();

  factory _$_UserObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserObjectModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'note', disallowNullValue: true)
  final int? note;
  @override
  @JsonKey(name: 'description_profil', required: true, disallowNullValue: true)
  final String descriptionProfil;
  @override
  @JsonKey(name: 'description_services')
  final String? descriptionServices;
  @override
  @JsonKey(name: 'distance', includeIfNull: true)
  final double? distance;
  @override
  @JsonKey(name: 'user', disallowNullValue: true)
  final UserModel? user;
  final List<CategoryObjectModel>? _categoryObjects;
  @override
  @JsonKey(name: 'discipline_user', disallowNullValue: true)
  List<CategoryObjectModel>? get categoryObjects {
    final value = _categoryObjects;
    if (value == null) return null;
    if (_categoryObjects is EqualUnmodifiableListView) return _categoryObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ServiceModel>? _services;
  @override
  @JsonKey(name: 'service', disallowNullValue: true)
  List<ServiceModel>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserObjectModel(id: $id, note: $note, descriptionProfil: $descriptionProfil, descriptionServices: $descriptionServices, distance: $distance, user: $user, categoryObjects: $categoryObjects, services: $services, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserObjectModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.descriptionProfil, descriptionProfil) ||
                other.descriptionProfil == descriptionProfil) &&
            (identical(other.descriptionServices, descriptionServices) ||
                other.descriptionServices == descriptionServices) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._categoryObjects, _categoryObjects) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      note,
      descriptionProfil,
      descriptionServices,
      distance,
      user,
      const DeepCollectionEquality().hash(_categoryObjects),
      const DeepCollectionEquality().hash(_services),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserObjectModelCopyWith<_$_UserObjectModel> get copyWith =>
      __$$_UserObjectModelCopyWithImpl<_$_UserObjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserObjectModelToJson(
      this,
    );
  }
}

abstract class _UserObjectModel extends UserObjectModel {
  const factory _UserObjectModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'note', disallowNullValue: true)
          final int? note,
      @JsonKey(name: 'description_profil', required: true, disallowNullValue: true)
          required final String descriptionProfil,
      @JsonKey(name: 'description_services')
          final String? descriptionServices,
      @JsonKey(name: 'distance', includeIfNull: true)
          final double? distance,
      @JsonKey(name: 'user', disallowNullValue: true)
          final UserModel? user,
      @JsonKey(name: 'discipline_user', disallowNullValue: true)
          final List<CategoryObjectModel>? categoryObjects,
      @JsonKey(name: 'service', disallowNullValue: true)
          final List<ServiceModel>? services,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_UserObjectModel;
  const _UserObjectModel._() : super._();

  factory _UserObjectModel.fromJson(Map<String, dynamic> json) =
      _$_UserObjectModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'note', disallowNullValue: true)
  int? get note;
  @override
  @JsonKey(name: 'description_profil', required: true, disallowNullValue: true)
  String get descriptionProfil;
  @override
  @JsonKey(name: 'description_services')
  String? get descriptionServices;
  @override
  @JsonKey(name: 'distance', includeIfNull: true)
  double? get distance;
  @override
  @JsonKey(name: 'user', disallowNullValue: true)
  UserModel? get user;
  @override
  @JsonKey(name: 'discipline_user', disallowNullValue: true)
  List<CategoryObjectModel>? get categoryObjects;
  @override
  @JsonKey(name: 'service', disallowNullValue: true)
  List<ServiceModel>? get services;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserObjectModelCopyWith<_$_UserObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}
