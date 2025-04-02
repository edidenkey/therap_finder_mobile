import 'package:freezed_annotation/freezed_annotation.dart';

import 'abonnement_object_model.dart';
import 'image_model.dart';
import 'user_object_model.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'username', required: true, disallowNullValue: true) required String username,
    @JsonKey(name: 'email', required: true, disallowNullValue: true) required String email,
    @JsonKey(name: 'phone', required: true, disallowNullValue: true) required String phone,
    @JsonKey(name: 'first_name', required: true, disallowNullValue: true) required String firstname,
    @JsonKey(name: 'last_name', required: true, disallowNullValue: true) required String lastname,
    @JsonKey(name: 'street', required: true, disallowNullValue: true) required String street,
    @JsonKey(name: 'postal_code', required: true, disallowNullValue: true) required String postalCode,
    @JsonKey(name: 'country', required: true, disallowNullValue: true) required String country,
    @JsonKey(name: 'region', required: true, disallowNullValue: true) required String region,
    @JsonKey(name: 'department', required: true, disallowNullValue: true) required String department,
    @JsonKey(name: 'lat', required: true, disallowNullValue: true) required double latitude,
    @JsonKey(name: 'lon', required: true, disallowNullValue: true) required double longitude,
    @JsonKey(name: 'userable_type', required: true, disallowNullValue: true) required String userObjectType,
    @JsonKey(name: 'userable_id', required: true, disallowNullValue: true) required int userObjectId,
    @JsonKey(name: 'userable', disallowNullValue: true) UserObjectModel? userable,
    @JsonKey(name: 'images', disallowNullValue: true) List<ImageModel>? images,
    @JsonKey(name: 'abonnement', disallowNullValue: true) List<AbonnementObjectModel>? abonnementObjects,
    @JsonKey(name: 'role', required: true, disallowNullValue: true) required String role,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
