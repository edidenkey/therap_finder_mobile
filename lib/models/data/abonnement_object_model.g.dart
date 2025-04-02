// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abonnement_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbonnementObjectModel _$$_AbonnementObjectModelFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'statut',
      'date_debut',
      'date_fin',
      'abonnement_id',
      'user_id',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'statut',
      'date_debut',
      'date_fin',
      'abonnement_id',
      'user_id',
      'abonnement',
      'created_at',
      'updated_at'
    ],
  );
  return _$_AbonnementObjectModel(
    id: json['id'] as int,
    statut: json['statut'] as String,
    dateDebut: DateTime.parse(json['date_debut'] as String),
    dateFin: DateTime.parse(json['date_fin'] as String),
    abonnementId: json['abonnement_id'] as int,
    userId: json['user_id'] as int,
    abonnement: json['abonnement'] == null
        ? null
        : AbonnementModel.fromJson(json['abonnement'] as Map<String, dynamic>),
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_AbonnementObjectModelToJson(
    _$_AbonnementObjectModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'statut': instance.statut,
    'date_debut': instance.dateDebut.toIso8601String(),
    'date_fin': instance.dateFin.toIso8601String(),
    'abonnement_id': instance.abonnementId,
    'user_id': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('abonnement', instance.abonnement);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}
