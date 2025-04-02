// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'description',
      'prix',
      'stock',
      'categorie_id',
      'therapeute_id',
      'created_at',
      'updated_at'
    ],
    disallowNullValues: const [
      'id',
      'name',
      'description',
      'prix',
      'stock',
      'categorie_id',
      'therapeute_id',
      'images',
      'created_at',
      'updated_at'
    ],
  );
  return _$_ProductModel(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    price: json['prix'] as int,
    stock: json['stock'] as int,
    categorieId: json['categorie_id'] as int,
    therapeuteId: json['therapeute_id'] as int,
    images: (json['images'] as List<dynamic>?)
        ?.map((e) => ImageObjectModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
    'prix': instance.price,
    'stock': instance.stock,
    'categorie_id': instance.categorieId,
    'therapeute_id': instance.therapeuteId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('images', instance.images);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}
