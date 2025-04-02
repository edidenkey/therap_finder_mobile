// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_status_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeetingStatusItem {
  String get title => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeetingStatusItemCopyWith<MeetingStatusItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingStatusItemCopyWith<$Res> {
  factory $MeetingStatusItemCopyWith(
          MeetingStatusItem value, $Res Function(MeetingStatusItem) then) =
      _$MeetingStatusItemCopyWithImpl<$Res, MeetingStatusItem>;
  @useResult
  $Res call({String title, String? value, Color? color});
}

/// @nodoc
class _$MeetingStatusItemCopyWithImpl<$Res, $Val extends MeetingStatusItem>
    implements $MeetingStatusItemCopyWith<$Res> {
  _$MeetingStatusItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeetingStatusItemCopyWith<$Res>
    implements $MeetingStatusItemCopyWith<$Res> {
  factory _$$_MeetingStatusItemCopyWith(_$_MeetingStatusItem value,
          $Res Function(_$_MeetingStatusItem) then) =
      __$$_MeetingStatusItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? value, Color? color});
}

/// @nodoc
class __$$_MeetingStatusItemCopyWithImpl<$Res>
    extends _$MeetingStatusItemCopyWithImpl<$Res, _$_MeetingStatusItem>
    implements _$$_MeetingStatusItemCopyWith<$Res> {
  __$$_MeetingStatusItemCopyWithImpl(
      _$_MeetingStatusItem _value, $Res Function(_$_MeetingStatusItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_MeetingStatusItem(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_MeetingStatusItem extends _MeetingStatusItem {
  const _$_MeetingStatusItem({required this.title, this.value, this.color})
      : super._();

  @override
  final String title;
  @override
  final String? value;
  @override
  final Color? color;

  @override
  String toString() {
    return 'MeetingStatusItem(title: $title, value: $value, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetingStatusItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, value, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetingStatusItemCopyWith<_$_MeetingStatusItem> get copyWith =>
      __$$_MeetingStatusItemCopyWithImpl<_$_MeetingStatusItem>(
          this, _$identity);
}

abstract class _MeetingStatusItem extends MeetingStatusItem {
  const factory _MeetingStatusItem(
      {required final String title,
      final String? value,
      final Color? color}) = _$_MeetingStatusItem;
  const _MeetingStatusItem._() : super._();

  @override
  String get title;
  @override
  String? get value;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_MeetingStatusItemCopyWith<_$_MeetingStatusItem> get copyWith =>
      throw _privateConstructorUsedError;
}
