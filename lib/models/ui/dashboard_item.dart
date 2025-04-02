import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_item.freezed.dart';

@freezed
class DashboardItem with _$DashboardItem {
  const DashboardItem._();

  const factory DashboardItem({
    required Widget page,
    required ScrollController scrollController,
    required NavigationDestination navigation,
  }) = _DashboardItem;
}
