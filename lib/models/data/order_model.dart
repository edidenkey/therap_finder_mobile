import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model.dart';

part 'order_model.freezed.dart';

part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();

  const factory OrderModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'code', required: true, disallowNullValue: true) required String code,
    @JsonKey(name: 'client_id', required: true, disallowNullValue: true) required int clientId,
    @JsonKey(name: 'product_id', required: true, disallowNullValue: true) required int productId,
    @JsonKey(name: 'quantity', required: true, disallowNullValue: true) required int quantity,
    @JsonKey(name: 'status', required: true, disallowNullValue: true) required int status,
    @JsonKey(name: 'product', required: true, disallowNullValue: true) required ProductModel product,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}
