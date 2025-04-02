import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_object_model.dart';

part 'service_model.freezed.dart';

part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const ServiceModel._();

  const factory ServiceModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'name', required: true, disallowNullValue: true) required String name,
    @JsonKey(name: 'description', required: true, disallowNullValue: true) required String description,
    @JsonKey(name: 'tarif', required: true, disallowNullValue: true) required int tarif,
    @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true) required int therapeuteId,
    @JsonKey(name: 'therapeute', disallowNullValue: true) UserObjectModel? therapeute,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) => _$ServiceModelFromJson(json);
}
