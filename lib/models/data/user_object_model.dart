import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_object_model.dart';
import 'service_model.dart';
import 'user_model.dart';

part 'user_object_model.freezed.dart';

part 'user_object_model.g.dart';

@freezed
class UserObjectModel with _$UserObjectModel {
  const UserObjectModel._();

  const factory UserObjectModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'note', disallowNullValue: true) int? note,
    @JsonKey(name: 'description_profil', required: true, disallowNullValue: true) required String descriptionProfil,
    @JsonKey(name: 'description_services') String? descriptionServices,
    @JsonKey(name: 'distance', includeIfNull: true) double? distance,
    @JsonKey(name: 'user', disallowNullValue: true) UserModel? user,
    @JsonKey(name: 'discipline_user', disallowNullValue: true) List<CategoryObjectModel>? categoryObjects,
    @JsonKey(name: 'service', disallowNullValue: true) List<ServiceModel>? services,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _UserObjectModel;

  factory UserObjectModel.fromJson(Map<String, dynamic> json) => _$UserObjectModelFromJson(json);
}
