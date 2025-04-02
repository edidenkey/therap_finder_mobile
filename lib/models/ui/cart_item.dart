import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/product_model.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const CartItem._();

  const factory CartItem({
    required ProductModel product,
    required int quantity,
  }) = _CartItem;
}
