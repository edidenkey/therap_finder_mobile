import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type_item.freezed.dart';

@freezed
class PaymentTypeItem with _$PaymentTypeItem {
  const PaymentTypeItem._();

  const factory PaymentTypeItem({
    required String label,
    required String message,
    required String value,
  }) = _PaymentTypeItem;
}
