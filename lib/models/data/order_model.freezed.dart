// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'code', required: true, disallowNullValue: true)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id', required: true, disallowNullValue: true)
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity', required: true, disallowNullValue: true)
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', required: true, disallowNullValue: true)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'product', required: true, disallowNullValue: true)
  ProductModel get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'code', required: true, disallowNullValue: true)
          String code,
      @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
          int clientId,
      @JsonKey(name: 'product_id', required: true, disallowNullValue: true)
          int productId,
      @JsonKey(name: 'quantity', required: true, disallowNullValue: true)
          int quantity,
      @JsonKey(name: 'status', required: true, disallowNullValue: true)
          int status,
      @JsonKey(name: 'product', required: true, disallowNullValue: true)
          ProductModel product,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? clientId = null,
    Object? productId = null,
    Object? quantity = null,
    Object? status = null,
    Object? product = null,
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
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
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
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'code', required: true, disallowNullValue: true)
          String code,
      @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
          int clientId,
      @JsonKey(name: 'product_id', required: true, disallowNullValue: true)
          int productId,
      @JsonKey(name: 'quantity', required: true, disallowNullValue: true)
          int quantity,
      @JsonKey(name: 'status', required: true, disallowNullValue: true)
          int status,
      @JsonKey(name: 'product', required: true, disallowNullValue: true)
          ProductModel product,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          DateTime updatedAt});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? clientId = null,
    Object? productId = null,
    Object? quantity = null,
    Object? status = null,
    Object? product = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_OrderModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
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
class _$_OrderModel extends _OrderModel {
  const _$_OrderModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'code', required: true, disallowNullValue: true)
          required this.code,
      @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
          required this.clientId,
      @JsonKey(name: 'product_id', required: true, disallowNullValue: true)
          required this.productId,
      @JsonKey(name: 'quantity', required: true, disallowNullValue: true)
          required this.quantity,
      @JsonKey(name: 'status', required: true, disallowNullValue: true)
          required this.status,
      @JsonKey(name: 'product', required: true, disallowNullValue: true)
          required this.product,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required this.createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required this.updatedAt})
      : super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'code', required: true, disallowNullValue: true)
  final String code;
  @override
  @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
  final int clientId;
  @override
  @JsonKey(name: 'product_id', required: true, disallowNullValue: true)
  final int productId;
  @override
  @JsonKey(name: 'quantity', required: true, disallowNullValue: true)
  final int quantity;
  @override
  @JsonKey(name: 'status', required: true, disallowNullValue: true)
  final int status;
  @override
  @JsonKey(name: 'product', required: true, disallowNullValue: true)
  final ProductModel product;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'OrderModel(id: $id, code: $code, clientId: $clientId, productId: $productId, quantity: $quantity, status: $status, product: $product, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, clientId, productId,
      quantity, status, product, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'code', required: true, disallowNullValue: true)
          required final String code,
      @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
          required final int clientId,
      @JsonKey(name: 'product_id', required: true, disallowNullValue: true)
          required final int productId,
      @JsonKey(name: 'quantity', required: true, disallowNullValue: true)
          required final int quantity,
      @JsonKey(name: 'status', required: true, disallowNullValue: true)
          required final int status,
      @JsonKey(name: 'product', required: true, disallowNullValue: true)
          required final ProductModel product,
      @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
          required final DateTime updatedAt}) = _$_OrderModel;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'code', required: true, disallowNullValue: true)
  String get code;
  @override
  @JsonKey(name: 'client_id', required: true, disallowNullValue: true)
  int get clientId;
  @override
  @JsonKey(name: 'product_id', required: true, disallowNullValue: true)
  int get productId;
  @override
  @JsonKey(name: 'quantity', required: true, disallowNullValue: true)
  int get quantity;
  @override
  @JsonKey(name: 'status', required: true, disallowNullValue: true)
  int get status;
  @override
  @JsonKey(name: 'product', required: true, disallowNullValue: true)
  ProductModel get product;
  @override
  @JsonKey(name: 'created_at', required: true, disallowNullValue: true)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', required: true, disallowNullValue: true)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
