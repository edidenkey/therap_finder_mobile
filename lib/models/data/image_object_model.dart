import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_model.dart';

part 'image_object_model.freezed.dart';

part 'image_object_model.g.dart';

@freezed
class ImageObjectModel with _$ImageObjectModel {
  const ImageObjectModel._();

  const factory ImageObjectModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'type', required: true, disallowNullValue: true) required String type,
    @JsonKey(name: 'product_id', disallowNullValue: true) int? productId,
    @JsonKey(name: 'image', required: true, disallowNullValue: true) required ImageModel image,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _ImageObjectModel;

  factory ImageObjectModel.fromJson(Map<String, dynamic> json) => _$ImageObjectModelFromJson(json);
}
