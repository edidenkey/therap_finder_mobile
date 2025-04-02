// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username', required: true, disallowNullValue: true)
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', required: true, disallowNullValue: true)
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone', required: true, disallowNullValue: true)
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name', required: true, disallowNullValue: true)
  String get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', required: true, disallowNullValue: true)
  String get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: 'street', required: true, disallowNullValue: true)
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code', required: true, disallowNullValue: true)
  String get postalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'country', required: true, disallowNullValue: true)
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'region', required: true, disallowNullValue: true)
  String get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'department', required: true, disallowNullValue: true)
  String get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat', required: true, disallowNullValue: true)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon', required: true, disallowNullValue: true)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'userable_type', required: true, disallowNullValue: true)
  String get userObjectType => throw _privateConstructorUsedError;
  @JsonKey(name: 'userable_id', required: true, disallowNullValue: true)
  int get userObjectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userable', disallowNullValue: true)
  UserObjectModel? get userable => throw _privateConstructorUsedError;
  @JsonKey(name: 'images', disallowNullValue: true)
  List<ImageModel>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'abonnement', disallowNullValue: true)
  List<AbonnementObjectModel>? get abonnementObjects =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'role', required: true, disallowNullValue: true)
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'username', required: true, disallowNullValue: true)
          String username,
      @JsonKey(name: 'email', required: true, disallowNullValue: true)
          String email,
      @JsonKey(name: 'phone', required: true, disallowNullValue: true)
          String phone,
      @JsonKey(name: 'first_name', required: true, disallowNullValue: true)
          String firstname,
      @JsonKey(name: 'last_name', required: true, disallowNullValue: true)
          String lastname,
      @JsonKey(name: 'street', required: true, disallowNullValue: true)
          String street,
      @JsonKey(name: 'postal_code', required: true, disallowNullValue: true)
          String postalCode,
      @JsonKey(name: 'country', required: true, disallowNullValue: true)
          String country,
      @JsonKey(name: 'region', required: true, disallowNullValue: true)
          String region,
      @JsonKey(name: 'department', required: true, disallowNullValue: true)
          String department,
      @JsonKey(name: 'lat', required: true, disallowNullValue: true)
          double latitude,
      @JsonKey(name: 'lon', required: true, disallowNullValue: true)
          double longitude,
      @JsonKey(name: 'userable_type', required: true, disallowNullValue: true)
          String userObjectType,
      @JsonKey(name: 'userable_id', required: true, disallowNullValue: true)
          int userObjectId,
      @JsonKey(name: 'userable', disallowNullValue: true)
          UserObjectModel? userable,
      @JsonKey(name: 'images', disallowNullValue: true)
          List<ImageModel>? images,
      @JsonKey(name: 'abonnement', disallowNullValue: true)
          List<AbonnementObjectModel>? abonnementObjects,
      @JsonKey(name: 'role', required: true, disallowNullValue: true)
          String role,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  $UserObjectModelCopyWith<$Res>? get userable;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? street = null,
    Object? postalCode = null,
    Object? country = null,
    Object? region = null,
    Object? department = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? userObjectType = null,
    Object? userObjectId = null,
    Object? userable = freezed,
    Object? images = freezed,
    Object? abonnementObjects = freezed,
    Object? role = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      userObjectType: null == userObjectType
          ? _value.userObjectType
          : userObjectType // ignore: cast_nullable_to_non_nullable
              as String,
      userObjectId: null == userObjectId
          ? _value.userObjectId
          : userObjectId // ignore: cast_nullable_to_non_nullable
              as int,
      userable: freezed == userable
          ? _value.userable
          : userable // ignore: cast_nullable_to_non_nullable
              as UserObjectModel?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      abonnementObjects: freezed == abonnementObjects
          ? _value.abonnementObjects
          : abonnementObjects // ignore: cast_nullable_to_non_nullable
              as List<AbonnementObjectModel>?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
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
  $UserObjectModelCopyWith<$Res>? get userable {
    if (_value.userable == null) {
      return null;
    }

    return $UserObjectModelCopyWith<$Res>(_value.userable!, (value) {
      return _then(_value.copyWith(userable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'username', required: true, disallowNullValue: true)
          String username,
      @JsonKey(name: 'email', required: true, disallowNullValue: true)
          String email,
      @JsonKey(name: 'phone', required: true, disallowNullValue: true)
          String phone,
      @JsonKey(name: 'first_name', required: true, disallowNullValue: true)
          String firstname,
      @JsonKey(name: 'last_name', required: true, disallowNullValue: true)
          String lastname,
      @JsonKey(name: 'street', required: true, disallowNullValue: true)
          String street,
      @JsonKey(name: 'postal_code', required: true, disallowNullValue: true)
          String postalCode,
      @JsonKey(name: 'country', required: true, disallowNullValue: true)
          String country,
      @JsonKey(name: 'region', required: true, disallowNullValue: true)
          String region,
      @JsonKey(name: 'department', required: true, disallowNullValue: true)
          String department,
      @JsonKey(name: 'lat', required: true, disallowNullValue: true)
          double latitude,
      @JsonKey(name: 'lon', required: true, disallowNullValue: true)
          double longitude,
      @JsonKey(name: 'userable_type', required: true, disallowNullValue: true)
          String userObjectType,
      @JsonKey(name: 'userable_id', required: true, disallowNullValue: true)
          int userObjectId,
      @JsonKey(name: 'userable', disallowNullValue: true)
          UserObjectModel? userable,
      @JsonKey(name: 'images', disallowNullValue: true)
          List<ImageModel>? images,
      @JsonKey(name: 'abonnement', disallowNullValue: true)
          List<AbonnementObjectModel>? abonnementObjects,
      @JsonKey(name: 'role', required: true, disallowNullValue: true)
          String role,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  @override
  $UserObjectModelCopyWith<$Res>? get userable;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? street = null,
    Object? postalCode = null,
    Object? country = null,
    Object? region = null,
    Object? department = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? userObjectType = null,
    Object? userObjectId = null,
    Object? userable = freezed,
    Object? images = freezed,
    Object? abonnementObjects = freezed,
    Object? role = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      userObjectType: null == userObjectType
          ? _value.userObjectType
          : userObjectType // ignore: cast_nullable_to_non_nullable
              as String,
      userObjectId: null == userObjectId
          ? _value.userObjectId
          : userObjectId // ignore: cast_nullable_to_non_nullable
              as int,
      userable: freezed == userable
          ? _value.userable
          : userable // ignore: cast_nullable_to_non_nullable
              as UserObjectModel?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      abonnementObjects: freezed == abonnementObjects
          ? _value._abonnementObjects
          : abonnementObjects // ignore: cast_nullable_to_non_nullable
              as List<AbonnementObjectModel>?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_UserModel extends _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'username', required: true, disallowNullValue: true)
          required this.username,
      @JsonKey(name: 'email', required: true, disallowNullValue: true)
          required this.email,
      @JsonKey(name: 'phone', required: true, disallowNullValue: true)
          required this.phone,
      @JsonKey(name: 'first_name', required: true, disallowNullValue: true)
          required this.firstname,
      @JsonKey(name: 'last_name', required: true, disallowNullValue: true)
          required this.lastname,
      @JsonKey(name: 'street', required: true, disallowNullValue: true)
          required this.street,
      @JsonKey(name: 'postal_code', required: true, disallowNullValue: true)
          required this.postalCode,
      @JsonKey(name: 'country', required: true, disallowNullValue: true)
          required this.country,
      @JsonKey(name: 'region', required: true, disallowNullValue: true)
          required this.region,
      @JsonKey(name: 'department', required: true, disallowNullValue: true)
          required this.department,
      @JsonKey(name: 'lat', required: true, disallowNullValue: true)
          required this.latitude,
      @JsonKey(name: 'lon', required: true, disallowNullValue: true)
          required this.longitude,
      @JsonKey(name: 'userable_type', required: true, disallowNullValue: true)
          required this.userObjectType,
      @JsonKey(name: 'userable_id', required: true, disallowNullValue: true)
          required this.userObjectId,
      @JsonKey(name: 'userable', disallowNullValue: true)
          this.userable,
      @JsonKey(name: 'images', disallowNullValue: true)
          final List<ImageModel>? images,
      @JsonKey(name: 'abonnement', disallowNullValue: true)
          final List<AbonnementObjectModel>? abonnementObjects,
      @JsonKey(name: 'role', required: true, disallowNullValue: true)
          required this.role,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : _images = images,
        _abonnementObjects = abonnementObjects,
        super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'username', required: true, disallowNullValue: true)
  final String username;
  @override
  @JsonKey(name: 'email', required: true, disallowNullValue: true)
  final String email;
  @override
  @JsonKey(name: 'phone', required: true, disallowNullValue: true)
  final String phone;
  @override
  @JsonKey(name: 'first_name', required: true, disallowNullValue: true)
  final String firstname;
  @override
  @JsonKey(name: 'last_name', required: true, disallowNullValue: true)
  final String lastname;
  @override
  @JsonKey(name: 'street', required: true, disallowNullValue: true)
  final String street;
  @override
  @JsonKey(name: 'postal_code', required: true, disallowNullValue: true)
  final String postalCode;
  @override
  @JsonKey(name: 'country', required: true, disallowNullValue: true)
  final String country;
  @override
  @JsonKey(name: 'region', required: true, disallowNullValue: true)
  final String region;
  @override
  @JsonKey(name: 'department', required: true, disallowNullValue: true)
  final String department;
  @override
  @JsonKey(name: 'lat', required: true, disallowNullValue: true)
  final double latitude;
  @override
  @JsonKey(name: 'lon', required: true, disallowNullValue: true)
  final double longitude;
  @override
  @JsonKey(name: 'userable_type', required: true, disallowNullValue: true)
  final String userObjectType;
  @override
  @JsonKey(name: 'userable_id', required: true, disallowNullValue: true)
  final int userObjectId;
  @override
  @JsonKey(name: 'userable', disallowNullValue: true)
  final UserObjectModel? userable;
  final List<ImageModel>? _images;
  @override
  @JsonKey(name: 'images', disallowNullValue: true)
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AbonnementObjectModel>? _abonnementObjects;
  @override
  @JsonKey(name: 'abonnement', disallowNullValue: true)
  List<AbonnementObjectModel>? get abonnementObjects {
    final value = _abonnementObjects;
    if (value == null) return null;
    if (_abonnementObjects is EqualUnmodifiableListView)
      return _abonnementObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'role', required: true, disallowNullValue: true)
  final String role;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, email: $email, phone: $phone, firstname: $firstname, lastname: $lastname, street: $street, postalCode: $postalCode, country: $country, region: $region, department: $department, latitude: $latitude, longitude: $longitude, userObjectType: $userObjectType, userObjectId: $userObjectId, userable: $userable, images: $images, abonnementObjects: $abonnementObjects, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.userObjectType, userObjectType) ||
                other.userObjectType == userObjectType) &&
            (identical(other.userObjectId, userObjectId) ||
                other.userObjectId == userObjectId) &&
            (identical(other.userable, userable) ||
                other.userable == userable) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._abonnementObjects, _abonnementObjects) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        username,
        email,
        phone,
        firstname,
        lastname,
        street,
        postalCode,
        country,
        region,
        department,
        latitude,
        longitude,
        userObjectType,
        userObjectId,
        userable,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_abonnementObjects),
        role,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'username', required: true, disallowNullValue: true)
          required final String username,
      @JsonKey(name: 'email', required: true, disallowNullValue: true)
          required final String email,
      @JsonKey(name: 'phone', required: true, disallowNullValue: true)
          required final String phone,
      @JsonKey(name: 'first_name', required: true, disallowNullValue: true)
          required final String firstname,
      @JsonKey(name: 'last_name', required: true, disallowNullValue: true)
          required final String lastname,
      @JsonKey(name: 'street', required: true, disallowNullValue: true)
          required final String street,
      @JsonKey(name: 'postal_code', required: true, disallowNullValue: true)
          required final String postalCode,
      @JsonKey(name: 'country', required: true, disallowNullValue: true)
          required final String country,
      @JsonKey(name: 'region', required: true, disallowNullValue: true)
          required final String region,
      @JsonKey(name: 'department', required: true, disallowNullValue: true)
          required final String department,
      @JsonKey(name: 'lat', required: true, disallowNullValue: true)
          required final double latitude,
      @JsonKey(name: 'lon', required: true, disallowNullValue: true)
          required final double longitude,
      @JsonKey(name: 'userable_type', required: true, disallowNullValue: true)
          required final String userObjectType,
      @JsonKey(name: 'userable_id', required: true, disallowNullValue: true)
          required final int userObjectId,
      @JsonKey(name: 'userable', disallowNullValue: true)
          final UserObjectModel? userable,
      @JsonKey(name: 'images', disallowNullValue: true)
          final List<ImageModel>? images,
      @JsonKey(name: 'abonnement', disallowNullValue: true)
          final List<AbonnementObjectModel>? abonnementObjects,
      @JsonKey(name: 'role', required: true, disallowNullValue: true)
          required final String role,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_UserModel;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'username', required: true, disallowNullValue: true)
  String get username;
  @override
  @JsonKey(name: 'email', required: true, disallowNullValue: true)
  String get email;
  @override
  @JsonKey(name: 'phone', required: true, disallowNullValue: true)
  String get phone;
  @override
  @JsonKey(name: 'first_name', required: true, disallowNullValue: true)
  String get firstname;
  @override
  @JsonKey(name: 'last_name', required: true, disallowNullValue: true)
  String get lastname;
  @override
  @JsonKey(name: 'street', required: true, disallowNullValue: true)
  String get street;
  @override
  @JsonKey(name: 'postal_code', required: true, disallowNullValue: true)
  String get postalCode;
  @override
  @JsonKey(name: 'country', required: true, disallowNullValue: true)
  String get country;
  @override
  @JsonKey(name: 'region', required: true, disallowNullValue: true)
  String get region;
  @override
  @JsonKey(name: 'department', required: true, disallowNullValue: true)
  String get department;
  @override
  @JsonKey(name: 'lat', required: true, disallowNullValue: true)
  double get latitude;
  @override
  @JsonKey(name: 'lon', required: true, disallowNullValue: true)
  double get longitude;
  @override
  @JsonKey(name: 'userable_type', required: true, disallowNullValue: true)
  String get userObjectType;
  @override
  @JsonKey(name: 'userable_id', required: true, disallowNullValue: true)
  int get userObjectId;
  @override
  @JsonKey(name: 'userable', disallowNullValue: true)
  UserObjectModel? get userable;
  @override
  @JsonKey(name: 'images', disallowNullValue: true)
  List<ImageModel>? get images;
  @override
  @JsonKey(name: 'abonnement', disallowNullValue: true)
  List<AbonnementObjectModel>? get abonnementObjects;
  @override
  @JsonKey(name: 'role', required: true, disallowNullValue: true)
  String get role;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
