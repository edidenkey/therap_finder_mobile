// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'code',
      'client_id',
      'product_id',
      'quantity',
      'status',
      'product',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'code',
      'client_id',
      'product_id',
      'quantity',
      'status',
      'product',
      'created_at',
      'updated_at'
    ],
  );
  return _$_OrderModel(
    id: json['id'] as int,
    code: json['code'] as String,
    clientId: json['client_id'] as int,
    productId: json['product_id'] as int,
    quantity: json['quantity'] as int,
    status: json['status'] as int,
    product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'client_id': instance.clientId,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'status': instance.status,
      'product': instance.product,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
