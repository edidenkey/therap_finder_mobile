// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', required: true, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description', required: true, disallowNullValue: true)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'prix', required: true, disallowNullValue: true)
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock', required: true, disallowNullValue: true)
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'categorie_id', required: true, disallowNullValue: true)
  int get categorieId => throw _privateConstructorUsedError;
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  int get therapeuteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'images', disallowNullValue: true)
  List<ImageObjectModel>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          String description,
      @JsonKey(name: 'prix', required: true, disallowNullValue: true)
          int price,
      @JsonKey(name: 'stock', required: true, disallowNullValue: true)
          int stock,
      @JsonKey(name: 'categorie_id', required: true, disallowNullValue: true)
          int categorieId,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          int therapeuteId,
      @JsonKey(name: 'images', disallowNullValue: true)
          List<ImageObjectModel>? images,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

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
    Object? price = null,
    Object? stock = null,
    Object? categorieId = null,
    Object? therapeuteId = null,
    Object? images = freezed,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      categorieId: null == categorieId
          ? _value.categorieId
          : categorieId // ignore: cast_nullable_to_non_nullable
              as int,
      therapeuteId: null == therapeuteId
          ? _value.therapeuteId
          : therapeuteId // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageObjectModel>?,
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
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          String description,
      @JsonKey(name: 'prix', required: true, disallowNullValue: true)
          int price,
      @JsonKey(name: 'stock', required: true, disallowNullValue: true)
          int stock,
      @JsonKey(name: 'categorie_id', required: true, disallowNullValue: true)
          int categorieId,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          int therapeuteId,
      @JsonKey(name: 'images', disallowNullValue: true)
          List<ImageObjectModel>? images,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? stock = null,
    Object? categorieId = null,
    Object? therapeuteId = null,
    Object? images = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_ProductModel(
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      categorieId: null == categorieId
          ? _value.categorieId
          : categorieId // ignore: cast_nullable_to_non_nullable
              as int,
      therapeuteId: null == therapeuteId
          ? _value.therapeuteId
          : therapeuteId // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageObjectModel>?,
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
class _$_ProductModel extends _ProductModel {
  const _$_ProductModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          required this.name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          required this.description,
      @JsonKey(name: 'prix', required: true, disallowNullValue: true)
          required this.price,
      @JsonKey(name: 'stock', required: true, disallowNullValue: true)
          required this.stock,
      @JsonKey(name: 'categorie_id', required: true, disallowNullValue: true)
          required this.categorieId,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          required this.therapeuteId,
      @JsonKey(name: 'images', disallowNullValue: true)
          final List<ImageObjectModel>? images,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : _images = images,
        super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

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
  @JsonKey(name: 'prix', required: true, disallowNullValue: true)
  final int price;
  @override
  @JsonKey(name: 'stock', required: true, disallowNullValue: true)
  final int stock;
  @override
  @JsonKey(name: 'categorie_id', required: true, disallowNullValue: true)
  final int categorieId;
  @override
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  final int therapeuteId;
  final List<ImageObjectModel>? _images;
  @override
  @JsonKey(name: 'images', disallowNullValue: true)
  List<ImageObjectModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
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
    return 'ProductModel(id: $id, name: $name, description: $description, price: $price, stock: $stock, categorieId: $categorieId, therapeuteId: $therapeuteId, images: $images, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.categorieId, categorieId) ||
                other.categorieId == categorieId) &&
            (identical(other.therapeuteId, therapeuteId) ||
                other.therapeuteId == therapeuteId) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
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
      name,
      description,
      price,
      stock,
      categorieId,
      therapeuteId,
      const DeepCollectionEquality().hash(_images),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'name', required: true, disallowNullValue: true)
          required final String name,
      @JsonKey(name: 'description', required: true, disallowNullValue: true)
          required final String description,
      @JsonKey(name: 'prix', required: true, disallowNullValue: true)
          required final int price,
      @JsonKey(name: 'stock', required: true, disallowNullValue: true)
          required final int stock,
      @JsonKey(name: 'categorie_id', required: true, disallowNullValue: true)
          required final int categorieId,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          required final int therapeuteId,
      @JsonKey(name: 'images', disallowNullValue: true)
          final List<ImageObjectModel>? images,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_ProductModel;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

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
  @JsonKey(name: 'prix', required: true, disallowNullValue: true)
  int get price;
  @override
  @JsonKey(name: 'stock', required: true, disallowNullValue: true)
  int get stock;
  @override
  @JsonKey(name: 'categorie_id', required: true, disallowNullValue: true)
  int get categorieId;
  @override
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  int get therapeuteId;
  @override
  @JsonKey(name: 'images', disallowNullValue: true)
  List<ImageObjectModel>? get images;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
