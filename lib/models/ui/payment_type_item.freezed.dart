// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentTypeItem {
  String get label => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentTypeItemCopyWith<PaymentTypeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeItemCopyWith<$Res> {
  factory $PaymentTypeItemCopyWith(
          PaymentTypeItem value, $Res Function(PaymentTypeItem) then) =
      _$PaymentTypeItemCopyWithImpl<$Res, PaymentTypeItem>;
  @useResult
  $Res call({String label, String message, String value});
}

/// @nodoc
class _$PaymentTypeItemCopyWithImpl<$Res, $Val extends PaymentTypeItem>
    implements $PaymentTypeItemCopyWith<$Res> {
  _$PaymentTypeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? message = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTypeItemCopyWith<$Res>
    implements $PaymentTypeItemCopyWith<$Res> {
  factory _$$_PaymentTypeItemCopyWith(
          _$_PaymentTypeItem value, $Res Function(_$_PaymentTypeItem) then) =
      __$$_PaymentTypeItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String message, String value});
}

/// @nodoc
class __$$_PaymentTypeItemCopyWithImpl<$Res>
    extends _$PaymentTypeItemCopyWithImpl<$Res, _$_PaymentTypeItem>
    implements _$$_PaymentTypeItemCopyWith<$Res> {
  __$$_PaymentTypeItemCopyWithImpl(
      _$_PaymentTypeItem _value, $Res Function(_$_PaymentTypeItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? message = null,
    Object? value = null,
  }) {
    return _then(_$_PaymentTypeItem(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentTypeItem extends _PaymentTypeItem {
  const _$_PaymentTypeItem(
      {required this.label, required this.message, required this.value})
      : super._();

  @override
  final String label;
  @override
  final String message;
  @override
  final String value;

  @override
  String toString() {
    return 'PaymentTypeItem(label: $label, message: $message, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTypeItem &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, message, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeItemCopyWith<_$_PaymentTypeItem> get copyWith =>
      __$$_PaymentTypeItemCopyWithImpl<_$_PaymentTypeItem>(this, _$identity);
}

abstract class _PaymentTypeItem extends PaymentTypeItem {
  const factory _PaymentTypeItem(
      {required final String label,
      required final String message,
      required final String value}) = _$_PaymentTypeItem;
  const _PaymentTypeItem._() : super._();

  @override
  String get label;
  @override
  String get message;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTypeItemCopyWith<_$_PaymentTypeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
