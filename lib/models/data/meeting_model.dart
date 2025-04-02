import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_object_model.dart';
import 'service_model.dart';

part 'meeting_model.freezed.dart';

part 'meeting_model.g.dart';

@freezed
class MeetingModel with _$MeetingModel {
  const MeetingModel._();

  const factory MeetingModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'code', required: true, disallowNullValue: true) required String code,
    @JsonKey(name: 'status', required: true, disallowNullValue: true) required String status,
    @JsonKey(name: 'date_meeting', required: true, disallowNullValue: true) required DateTime date,
    @JsonKey(name: 'client_id', required: true, disallowNullValue: true) required int clientId,
    @JsonKey(name: 'service_id', required: true, disallowNullValue: true) required int serviceId,
    @JsonKey(name: 'client', disallowNullValue: true) UserObjectModel? client,
    @JsonKey(name: 'service', disallowNullValue: true) ServiceModel? service,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _MeetingModel;

  factory MeetingModel.fromJson(Map<String, dynamic> json) => _$MeetingModelFromJson(json);
}
