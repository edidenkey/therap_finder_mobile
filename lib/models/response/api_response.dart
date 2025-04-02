import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

part 'api_response.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  const ApiResponse._();

  const factory ApiResponse({
    @JsonKey(name: 'status', disallowNullValue: true) String? status,
    @JsonKey(name: 'token', disallowNullValue: true) String? token,
    @JsonKey(name: 'data') dynamic data,
    @JsonKey(name: 'message', disallowNullValue: true) String? errorMessage,
    @JsonKey(name: 'errors', disallowNullValue: true) dynamic errorDetails,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
}
