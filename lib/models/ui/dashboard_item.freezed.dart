// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardItem {
  Widget get page => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  NavigationDestination get navigation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardItemCopyWith<DashboardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardItemCopyWith<$Res> {
  factory $DashboardItemCopyWith(
          DashboardItem value, $Res Function(DashboardItem) then) =
      _$DashboardItemCopyWithImpl<$Res, DashboardItem>;
  @useResult
  $Res call(
      {Widget page,
      ScrollController scrollController,
      NavigationDestination navigation});
}

/// @nodoc
class _$DashboardItemCopyWithImpl<$Res, $Val extends DashboardItem>
    implements $DashboardItemCopyWith<$Res> {
  _$DashboardItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? scrollController = null,
    Object? navigation = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as NavigationDestination,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardItemCopyWith<$Res>
    implements $DashboardItemCopyWith<$Res> {
  factory _$$_DashboardItemCopyWith(
          _$_DashboardItem value, $Res Function(_$_DashboardItem) then) =
      __$$_DashboardItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Widget page,
      ScrollController scrollController,
      NavigationDestination navigation});
}

/// @nodoc
class __$$_DashboardItemCopyWithImpl<$Res>
    extends _$DashboardItemCopyWithImpl<$Res, _$_DashboardItem>
    implements _$$_DashboardItemCopyWith<$Res> {
  __$$_DashboardItemCopyWithImpl(
      _$_DashboardItem _value, $Res Function(_$_DashboardItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? scrollController = null,
    Object? navigation = null,
  }) {
    return _then(_$_DashboardItem(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as NavigationDestination,
    ));
  }
}

/// @nodoc

class _$_DashboardItem extends _DashboardItem {
  const _$_DashboardItem(
      {required this.page,
      required this.scrollController,
      required this.navigation})
      : super._();

  @override
  final Widget page;
  @override
  final ScrollController scrollController;
  @override
  final NavigationDestination navigation;

  @override
  String toString() {
    return 'DashboardItem(page: $page, scrollController: $scrollController, navigation: $navigation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardItem &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, scrollController, navigation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardItemCopyWith<_$_DashboardItem> get copyWith =>
      __$$_DashboardItemCopyWithImpl<_$_DashboardItem>(this, _$identity);
}

abstract class _DashboardItem extends DashboardItem {
  const factory _DashboardItem(
      {required final Widget page,
      required final ScrollController scrollController,
      required final NavigationDestination navigation}) = _$_DashboardItem;
  const _DashboardItem._() : super._();

  @override
  Widget get page;
  @override
  ScrollController get scrollController;
  @override
  NavigationDestination get navigation;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardItemCopyWith<_$_DashboardItem> get copyWith =>
      throw _privateConstructorUsedError;
}
