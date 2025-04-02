// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatItem {
  double get stat => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  void Function() get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatItemCopyWith<StatItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatItemCopyWith<$Res> {
  factory $StatItemCopyWith(StatItem value, $Res Function(StatItem) then) =
      _$StatItemCopyWithImpl<$Res, StatItem>;
  @useResult
  $Res call(
      {double stat, String title, IconData icon, void Function() onPressed});
}

/// @nodoc
class _$StatItemCopyWithImpl<$Res, $Val extends StatItem>
    implements $StatItemCopyWith<$Res> {
  _$StatItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stat = null,
    Object? title = null,
    Object? icon = null,
    Object? onPressed = null,
  }) {
    return _then(_value.copyWith(
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatItemCopyWith<$Res> implements $StatItemCopyWith<$Res> {
  factory _$$_StatItemCopyWith(
          _$_StatItem value, $Res Function(_$_StatItem) then) =
      __$$_StatItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double stat, String title, IconData icon, void Function() onPressed});
}

/// @nodoc
class __$$_StatItemCopyWithImpl<$Res>
    extends _$StatItemCopyWithImpl<$Res, _$_StatItem>
    implements _$$_StatItemCopyWith<$Res> {
  __$$_StatItemCopyWithImpl(
      _$_StatItem _value, $Res Function(_$_StatItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stat = null,
    Object? title = null,
    Object? icon = null,
    Object? onPressed = null,
  }) {
    return _then(_$_StatItem(
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$_StatItem extends _StatItem {
  const _$_StatItem(
      {required this.stat,
      required this.title,
      required this.icon,
      required this.onPressed})
      : super._();

  @override
  final double stat;
  @override
  final String title;
  @override
  final IconData icon;
  @override
  final void Function() onPressed;

  @override
  String toString() {
    return 'StatItem(stat: $stat, title: $title, icon: $icon, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatItem &&
            (identical(other.stat, stat) || other.stat == stat) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stat, title, icon, onPressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatItemCopyWith<_$_StatItem> get copyWith =>
      __$$_StatItemCopyWithImpl<_$_StatItem>(this, _$identity);
}

abstract class _StatItem extends StatItem {
  const factory _StatItem(
      {required final double stat,
      required final String title,
      required final IconData icon,
      required final void Function() onPressed}) = _$_StatItem;
  const _StatItem._() : super._();

  @override
  double get stat;
  @override
  String get title;
  @override
  IconData get icon;
  @override
  void Function() get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$_StatItemCopyWith<_$_StatItem> get copyWith =>
      throw _privateConstructorUsedError;
}
