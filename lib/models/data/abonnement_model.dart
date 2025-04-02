import 'package:freezed_annotation/freezed_annotation.dart';

part 'abonnement_model.freezed.dart';

part 'abonnement_model.g.dart';

@freezed
class AbonnementModel with _$AbonnementModel {
  const AbonnementModel._();

  const factory AbonnementModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'name', required: true, disallowNullValue: true) required String name,
    @JsonKey(name: 'description', required: true, disallowNullValue: true) required String description,
    @JsonKey(name: 'duree', required: true, disallowNullValue: true) required String duree,
    @JsonKey(name: 'tarif', required: true, disallowNullValue: true) required int tarif,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _AbonnementModel;

  factory AbonnementModel.fromJson(Map<String, dynamic> json) => _$AbonnementModelFromJson(json);
}
