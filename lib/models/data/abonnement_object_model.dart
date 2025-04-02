import 'package:freezed_annotation/freezed_annotation.dart';

import 'abonnement_model.dart';

part 'abonnement_object_model.freezed.dart';

part 'abonnement_object_model.g.dart';

@freezed
class AbonnementObjectModel with _$AbonnementObjectModel {
  const AbonnementObjectModel._();

  const factory AbonnementObjectModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'statut', required: true, disallowNullValue: true) required String statut,
    @JsonKey(name: 'date_debut', required: true, disallowNullValue: true) required DateTime dateDebut, // Date
    @JsonKey(name: 'date_fin', required: true, disallowNullValue: true) required DateTime dateFin, // Date
    @JsonKey(name: 'abonnement_id', required: true, disallowNullValue: true) required int abonnementId,
    @JsonKey(name: 'user_id', required: true, disallowNullValue: true) required int userId,
    @JsonKey(name: 'abonnement', disallowNullValue: true) AbonnementModel? abonnement,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _AbonnementObjectModel;

  factory AbonnementObjectModel.fromJson(Map<String, dynamic> json) => _$AbonnementObjectModelFromJson(json);
}
