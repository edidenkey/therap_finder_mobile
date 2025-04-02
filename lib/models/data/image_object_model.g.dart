// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageObjectModel _$$_ImageObjectModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'type', 'image', 'created_at', 'updated_at'],
    disallowNullValues: const [
      'id',
      'type',
      'product_id',
      'image',
      'created_at',
      'updated_at'
    ],
  );
  return _$_ImageObjectModel(
    id: json['id'] as int,
    type: json['type'] as String,
    productId: json['product_id'] as int?,
    image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_ImageObjectModelToJson(_$_ImageObjectModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  val['image'] = instance.image;
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}
