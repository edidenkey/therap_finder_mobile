import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_object_model.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'name', required: true, disallowNullValue: true) required String name,
    @JsonKey(name: 'description', required: true, disallowNullValue: true) required String description,
    @JsonKey(name: 'prix', required: true, disallowNullValue: true) required int price,
    @JsonKey(name: 'stock', required: true, disallowNullValue: true) required int stock,
    @JsonKey(name: 'categorie_id', required: true, disallowNullValue: true) required int categorieId,
    @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true) required int therapeuteId,
    @JsonKey(name: 'images', disallowNullValue: true) List<ImageObjectModel>? images,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
