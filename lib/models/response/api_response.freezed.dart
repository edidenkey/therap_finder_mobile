// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiResponse {
  @JsonKey(name: 'status', disallowNullValue: true)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'token', disallowNullValue: true)
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message', disallowNullValue: true)
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors', disallowNullValue: true)
  dynamic get errorDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res, ApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status', disallowNullValue: true) String? status,
      @JsonKey(name: 'token', disallowNullValue: true) String? token,
      @JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'message', disallowNullValue: true) String? errorMessage,
      @JsonKey(name: 'errors', disallowNullValue: true) dynamic errorDetails});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res, $Val extends ApiResponse>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? token = freezed,
    Object? data = freezed,
    Object? errorMessage = freezed,
    Object? errorDetails = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDetails: freezed == errorDetails
          ? _value.errorDetails
          : errorDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiResponseCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$$_ApiResponseCopyWith(
          _$_ApiResponse value, $Res Function(_$_ApiResponse) then) =
      __$$_ApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status', disallowNullValue: true) String? status,
      @JsonKey(name: 'token', disallowNullValue: true) String? token,
      @JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'message', disallowNullValue: true) String? errorMessage,
      @JsonKey(name: 'errors', disallowNullValue: true) dynamic errorDetails});
}

/// @nodoc
class __$$_ApiResponseCopyWithImpl<$Res>
    extends _$ApiResponseCopyWithImpl<$Res, _$_ApiResponse>
    implements _$$_ApiResponseCopyWith<$Res> {
  __$$_ApiResponseCopyWithImpl(
      _$_ApiResponse _value, $Res Function(_$_ApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? token = freezed,
    Object? data = freezed,
    Object? errorMessage = freezed,
    Object? errorDetails = freezed,
  }) {
    return _then(_$_ApiResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDetails: freezed == errorDetails
          ? _value.errorDetails
          : errorDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponse extends _ApiResponse {
  const _$_ApiResponse(
      {@JsonKey(name: 'status', disallowNullValue: true) this.status,
      @JsonKey(name: 'token', disallowNullValue: true) this.token,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'message', disallowNullValue: true) this.errorMessage,
      @JsonKey(name: 'errors', disallowNullValue: true) this.errorDetails})
      : super._();

  factory _$_ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseFromJson(json);

  @override
  @JsonKey(name: 'status', disallowNullValue: true)
  final String? status;
  @override
  @JsonKey(name: 'token', disallowNullValue: true)
  final String? token;
  @override
  @JsonKey(name: 'data')
  final dynamic data;
  @override
  @JsonKey(name: 'message', disallowNullValue: true)
  final String? errorMessage;
  @override
  @JsonKey(name: 'errors', disallowNullValue: true)
  final dynamic errorDetails;

  @override
  String toString() {
    return 'ApiResponse(status: $status, token: $token, data: $data, errorMessage: $errorMessage, errorDetails: $errorDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.errorDetails, errorDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      token,
      const DeepCollectionEquality().hash(data),
      errorMessage,
      const DeepCollectionEquality().hash(errorDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCopyWith<_$_ApiResponse> get copyWith =>
      __$$_ApiResponseCopyWithImpl<_$_ApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseToJson(
      this,
    );
  }
}

abstract class _ApiResponse extends ApiResponse {
  const factory _ApiResponse(
      {@JsonKey(name: 'status', disallowNullValue: true)
          final String? status,
      @JsonKey(name: 'token', disallowNullValue: true)
          final String? token,
      @JsonKey(name: 'data')
          final dynamic data,
      @JsonKey(name: 'message', disallowNullValue: true)
          final String? errorMessage,
      @JsonKey(name: 'errors', disallowNullValue: true)
          final dynamic errorDetails}) = _$_ApiResponse;
  const _ApiResponse._() : super._();

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$_ApiResponse.fromJson;

  @override
  @JsonKey(name: 'status', disallowNullValue: true)
  String? get status;
  @override
  @JsonKey(name: 'token', disallowNullValue: true)
  String? get token;
  @override
  @JsonKey(name: 'data')
  dynamic get data;
  @override
  @JsonKey(name: 'message', disallowNullValue: true)
  String? get errorMessage;
  @override
  @JsonKey(name: 'errors', disallowNullValue: true)
  dynamic get errorDetails;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCopyWith<_$_ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
