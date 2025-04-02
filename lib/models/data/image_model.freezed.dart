// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  String get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path', required: true, disallowNullValue: true)
  String get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageable_type', required: true, disallowNullValue: true)
  String get imageObjectType => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageable_id', required: true, disallowNullValue: true)
  int get imageObjectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          String filename,
      @JsonKey(name: 'image_path', required: true, disallowNullValue: true)
          String filePath,
      @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
          int userId,
      @JsonKey(name: 'imageable_type', required: true, disallowNullValue: true)
          String imageObjectType,
      @JsonKey(name: 'imageable_id', required: true, disallowNullValue: true)
          int imageObjectId,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filename = null,
    Object? filePath = null,
    Object? userId = null,
    Object? imageObjectType = null,
    Object? imageObjectId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      imageObjectType: null == imageObjectType
          ? _value.imageObjectType
          : imageObjectType // ignore: cast_nullable_to_non_nullable
              as String,
      imageObjectId: null == imageObjectId
          ? _value.imageObjectId
          : imageObjectId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ImageModelCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$_ImageModelCopyWith(
          _$_ImageModel value, $Res Function(_$_ImageModel) then) =
      __$$_ImageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          String filename,
      @JsonKey(name: 'image_path', required: true, disallowNullValue: true)
          String filePath,
      @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
          int userId,
      @JsonKey(name: 'imageable_type', required: true, disallowNullValue: true)
          String imageObjectType,
      @JsonKey(name: 'imageable_id', required: true, disallowNullValue: true)
          int imageObjectId,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});
}

/// @nodoc
class __$$_ImageModelCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$_ImageModel>
    implements _$$_ImageModelCopyWith<$Res> {
  __$$_ImageModelCopyWithImpl(
      _$_ImageModel _value, $Res Function(_$_ImageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filename = null,
    Object? filePath = null,
    Object? userId = null,
    Object? imageObjectType = null,
    Object? imageObjectId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_ImageModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      imageObjectType: null == imageObjectType
          ? _value.imageObjectType
          : imageObjectType // ignore: cast_nullable_to_non_nullable
              as String,
      imageObjectId: null == imageObjectId
          ? _value.imageObjectId
          : imageObjectId // ignore: cast_nullable_to_non_nullable
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
class _$_ImageModel extends _ImageModel {
  const _$_ImageModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          required this.filename,
      @JsonKey(name: 'image_path', required: true, disallowNullValue: true)
          required this.filePath,
      @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
          required this.userId,
      @JsonKey(name: 'imageable_type', required: true, disallowNullValue: true)
          required this.imageObjectType,
      @JsonKey(name: 'imageable_id', required: true, disallowNullValue: true)
          required this.imageObjectId,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : super._();

  factory _$_ImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  final String filename;
  @override
  @JsonKey(name: 'image_path', required: true, disallowNullValue: true)
  final String filePath;
  @override
  @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
  final int userId;
  @override
  @JsonKey(name: 'imageable_type', required: true, disallowNullValue: true)
  final String imageObjectType;
  @override
  @JsonKey(name: 'imageable_id', required: true, disallowNullValue: true)
  final int imageObjectId;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ImageModel(id: $id, filename: $filename, filePath: $filePath, userId: $userId, imageObjectType: $imageObjectType, imageObjectId: $imageObjectId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.imageObjectType, imageObjectType) ||
                other.imageObjectType == imageObjectType) &&
            (identical(other.imageObjectId, imageObjectId) ||
                other.imageObjectId == imageObjectId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, filename, filePath, userId,
      imageObjectType, imageObjectId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageModelCopyWith<_$_ImageModel> get copyWith =>
      __$$_ImageModelCopyWithImpl<_$_ImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageModelToJson(
      this,
    );
  }
}

abstract class _ImageModel extends ImageModel {
  const factory _ImageModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          required final String filename,
      @JsonKey(name: 'image_path', required: true, disallowNullValue: true)
          required final String filePath,
      @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
          required final int userId,
      @JsonKey(name: 'imageable_type', required: true, disallowNullValue: true)
          required final String imageObjectType,
      @JsonKey(name: 'imageable_id', required: true, disallowNullValue: true)
          required final int imageObjectId,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_ImageModel;
  const _ImageModel._() : super._();

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$_ImageModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  String get filename;
  @override
  @JsonKey(name: 'image_path', required: true, disallowNullValue: true)
  String get filePath;
  @override
  @JsonKey(name: 'user_id', required: true, disallowNullValue: true)
  int get userId;
  @override
  @JsonKey(name: 'imageable_type', required: true, disallowNullValue: true)
  String get imageObjectType;
  @override
  @JsonKey(name: 'imageable_id', required: true, disallowNullValue: true)
  int get imageObjectId;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ImageModelCopyWith<_$_ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
