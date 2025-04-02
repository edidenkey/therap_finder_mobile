import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';

part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const ImageModel._();

  const factory ImageModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'name', required: true, disallowNullValue: true) required String filename,
    @JsonKey(name: 'image_path', required: true, disallowNullValue: true) required String filePath,
    @JsonKey(name: 'user_id', required: true, disallowNullValue: true) required int userId,
    @JsonKey(name: 'imageable_type', required: true, disallowNullValue: true) required String imageObjectType,
    @JsonKey(name: 'imageable_id', required: true, disallowNullValue: true) required int imageObjectId,
    @JsonKey(name: 'created_at', required: true, disallowNullValue: true) required DateTime createdAt,
    @JsonKey(name: 'updated_at', required: true, disallowNullValue: true) required DateTime updatedAt,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);
}
