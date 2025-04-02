// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageObjectModel _$ImageObjectModelFromJson(Map<String, dynamic> json) {
  return _ImageObjectModel.fromJson(json);
}

/// @nodoc
mixin _$ImageObjectModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', required: true, disallowNullValue: true)
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id', disallowNullValue: true)
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', required: true, disallowNullValue: true)
  ImageModel get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageObjectModelCopyWith<ImageObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageObjectModelCopyWith<$Res> {
  factory $ImageObjectModelCopyWith(
          ImageObjectModel value, $Res Function(ImageObjectModel) then) =
      _$ImageObjectModelCopyWithImpl<$Res, ImageObjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'type', required: true, disallowNullValue: true)
          String type,
      @JsonKey(name: 'product_id', disallowNullValue: true)
          int? productId,
      @JsonKey(name: 'image', required: true, disallowNullValue: true)
          ImageModel image,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class _$ImageObjectModelCopyWithImpl<$Res, $Val extends ImageObjectModel>
    implements $ImageObjectModelCopyWith<$Res> {
  _$ImageObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? productId = freezed,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
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
  $ImageModelCopyWith<$Res> get image {
    return $ImageModelCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImageObjectModelCopyWith<$Res>
    implements $ImageObjectModelCopyWith<$Res> {
  factory _$$_ImageObjectModelCopyWith(
          _$_ImageObjectModel value, $Res Function(_$_ImageObjectModel) then) =
      __$$_ImageObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'type', required: true, disallowNullValue: true)
          String type,
      @JsonKey(name: 'product_id', disallowNullValue: true)
          int? productId,
      @JsonKey(name: 'image', required: true, disallowNullValue: true)
          ImageModel image,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  @override
  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class __$$_ImageObjectModelCopyWithImpl<$Res>
    extends _$ImageObjectModelCopyWithImpl<$Res, _$_ImageObjectModel>
    implements _$$_ImageObjectModelCopyWith<$Res> {
  __$$_ImageObjectModelCopyWithImpl(
      _$_ImageObjectModel _value, $Res Function(_$_ImageObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? productId = freezed,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_ImageObjectModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
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
class _$_ImageObjectModel extends _ImageObjectModel {
  const _$_ImageObjectModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'type', required: true, disallowNullValue: true)
          required this.type,
      @JsonKey(name: 'product_id', disallowNullValue: true)
          this.productId,
      @JsonKey(name: 'image', required: true, disallowNullValue: true)
          required this.image,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : super._();

  factory _$_ImageObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageObjectModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'type', required: true, disallowNullValue: true)
  final String type;
  @override
  @JsonKey(name: 'product_id', disallowNullValue: true)
  final int? productId;
  @override
  @JsonKey(name: 'image', required: true, disallowNullValue: true)
  final ImageModel image;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ImageObjectModel(id: $id, type: $type, productId: $productId, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageObjectModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, productId, image, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageObjectModelCopyWith<_$_ImageObjectModel> get copyWith =>
      __$$_ImageObjectModelCopyWithImpl<_$_ImageObjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageObjectModelToJson(
      this,
    );
  }
}

abstract class _ImageObjectModel extends ImageObjectModel {
  const factory _ImageObjectModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'type', required: true, disallowNullValue: true)
          required final String type,
      @JsonKey(name: 'product_id', disallowNullValue: true)
          final int? productId,
      @JsonKey(name: 'image', required: true, disallowNullValue: true)
          required final ImageModel image,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_ImageObjectModel;
  const _ImageObjectModel._() : super._();

  factory _ImageObjectModel.fromJson(Map<String, dynamic> json) =
      _$_ImageObjectModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'type', required: true, disallowNullValue: true)
  String get type;
  @override
  @JsonKey(name: 'product_id', disallowNullValue: true)
  int? get productId;
  @override
  @JsonKey(name: 'image', required: true, disallowNullValue: true)
  ImageModel get image;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ImageObjectModelCopyWith<_$_ImageObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}
