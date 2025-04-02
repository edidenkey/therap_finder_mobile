import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_status_item.freezed.dart';

@freezed
class MeetingStatusItem with _$MeetingStatusItem {
  const MeetingStatusItem._();

  const factory MeetingStatusItem({
    required String title,
    String? value,
    Color? color,
  }) = _MeetingStatusItem;
}
