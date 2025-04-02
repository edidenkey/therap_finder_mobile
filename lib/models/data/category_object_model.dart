import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_model.dart';

part 'category_object_model.freezed.dart';

part 'category_object_model.g.dart';

@freezed
class CategoryObjectModel with _$CategoryObjectModel {
  const CategoryObjectModel._();

  const factory CategoryObjectModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true) required int id,
    @JsonKey(name: 'discipline_id', required: true, disallowNullValue: true) required int categoryId,
    @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true) required int therapeuteId,
    @JsonKey(name: 'discipline', required: true, disallowNullValue: true) required CategoryModel category,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CategoryObjectModel;

  factory CategoryObjectModel.fromJson(Map<String, dynamic> json) => _$CategoryObjectModelFromJson(json);
}
