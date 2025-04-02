// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryObjectModel _$CategoryObjectModelFromJson(Map<String, dynamic> json) {
  return _CategoryObjectModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryObjectModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'discipline_id', required: true, disallowNullValue: true)
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  int get therapeuteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'discipline', required: true, disallowNullValue: true)
  CategoryModel get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryObjectModelCopyWith<CategoryObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryObjectModelCopyWith<$Res> {
  factory $CategoryObjectModelCopyWith(
          CategoryObjectModel value, $Res Function(CategoryObjectModel) then) =
      _$CategoryObjectModelCopyWithImpl<$Res, CategoryObjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'discipline_id', required: true, disallowNullValue: true)
          int categoryId,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          int therapeuteId,
      @JsonKey(name: 'discipline', required: true, disallowNullValue: true)
          CategoryModel category,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt});

  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryObjectModelCopyWithImpl<$Res, $Val extends CategoryObjectModel>
    implements $CategoryObjectModelCopyWith<$Res> {
  _$CategoryObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? therapeuteId = null,
    Object? category = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      therapeuteId: null == therapeuteId
          ? _value.therapeuteId
          : therapeuteId // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryObjectModelCopyWith<$Res>
    implements $CategoryObjectModelCopyWith<$Res> {
  factory _$$_CategoryObjectModelCopyWith(_$_CategoryObjectModel value,
          $Res Function(_$_CategoryObjectModel) then) =
      __$$_CategoryObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          int id,
      @JsonKey(name: 'discipline_id', required: true, disallowNullValue: true)
          int categoryId,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          int therapeuteId,
      @JsonKey(name: 'discipline', required: true, disallowNullValue: true)
          CategoryModel category,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt});

  @override
  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$_CategoryObjectModelCopyWithImpl<$Res>
    extends _$CategoryObjectModelCopyWithImpl<$Res, _$_CategoryObjectModel>
    implements _$$_CategoryObjectModelCopyWith<$Res> {
  __$$_CategoryObjectModelCopyWithImpl(_$_CategoryObjectModel _value,
      $Res Function(_$_CategoryObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? therapeuteId = null,
    Object? category = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_CategoryObjectModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      therapeuteId: null == therapeuteId
          ? _value.therapeuteId
          : therapeuteId // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryObjectModel extends _CategoryObjectModel {
  const _$_CategoryObjectModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required this.id,
      @JsonKey(name: 'discipline_id', required: true, disallowNullValue: true)
          required this.categoryId,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          required this.therapeuteId,
      @JsonKey(name: 'discipline', required: true, disallowNullValue: true)
          required this.category,
      @JsonKey(name: 'created_at')
          this.createdAt,
      @JsonKey(name: 'updated_at')
          this.updatedAt})
      : super._();

  factory _$_CategoryObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryObjectModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(name: 'discipline_id', required: true, disallowNullValue: true)
  final int categoryId;
  @override
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  final int therapeuteId;
  @override
  @JsonKey(name: 'discipline', required: true, disallowNullValue: true)
  final CategoryModel category;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CategoryObjectModel(id: $id, categoryId: $categoryId, therapeuteId: $therapeuteId, category: $category, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryObjectModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.therapeuteId, therapeuteId) ||
                other.therapeuteId == therapeuteId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, therapeuteId,
      category, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryObjectModelCopyWith<_$_CategoryObjectModel> get copyWith =>
      __$$_CategoryObjectModelCopyWithImpl<_$_CategoryObjectModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryObjectModelToJson(
      this,
    );
  }
}

abstract class _CategoryObjectModel extends CategoryObjectModel {
  const factory _CategoryObjectModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
          required final int id,
      @JsonKey(name: 'discipline_id', required: true, disallowNullValue: true)
          required final int categoryId,
      @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
          required final int therapeuteId,
      @JsonKey(name: 'discipline', required: true, disallowNullValue: true)
          required final CategoryModel category,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt}) = _$_CategoryObjectModel;
  const _CategoryObjectModel._() : super._();

  factory _CategoryObjectModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryObjectModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(name: 'discipline_id', required: true, disallowNullValue: true)
  int get categoryId;
  @override
  @JsonKey(name: 'therapeute_id', required: true, disallowNullValue: true)
  int get therapeuteId;
  @override
  @JsonKey(name: 'discipline', required: true, disallowNullValue: true)
  CategoryModel get category;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryObjectModelCopyWith<_$_CategoryObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}
