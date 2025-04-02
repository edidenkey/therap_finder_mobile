import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_item.freezed.dart';

@freezed
class StatItem with _$StatItem {
  const StatItem._();

  const factory StatItem({
    required double stat,
    required String title,
    required IconData icon,
    required void Function() onPressed,
  }) = _StatItem;
}
