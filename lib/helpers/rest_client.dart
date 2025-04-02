import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:theraplib_mobile/models/index.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  static const String _checks = '/checks';
  static const String _catgerories = '/disciplines';
  static const String _clients = '/clients';
  static const String _payInformations = '/information-pays';
  static const String _meetings = '/meetings';
  static const String _orders = '/orders';
  static const String _products = '/products';
  static const String _services = '/services';
  static const String _therapeutes = '/therapeutes';
  static const String _users = '/users';

  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //-------------------------------------------- Checks
  @POST('$_checks/email')
  @FormUrlEncoded()
  Future<ApiResponse> checkEmailUnique({
    @Field('email') required String email,
  });

  //-------------------------------------------- Auth
  @POST('/register')
  @FormUrlEncoded()
  Future<ApiResponse> register({
    @Field('email') required String email,
    @Field('password') required String password,
    @Field('password_confirmation') required String confirmPassword,
    @Field('first_name') required String firstname,
    @Field('last_name') required String lastname,
    @Field('phone') required String phone,
    @Field('street') required String street,
    @Field('postal_code') required String postalCode,
    @Field('country') required String country,
    @Field('region') required String region,
    @Field('department') required String department,
  });

  @POST('/login')
  @FormUrlEncoded()
  Future<ApiResponse> login({
    @Field('email') required String email,
    @Field('password') required String password,
  });

  @GET('/logout')
  Future<ApiResponse> logout();

  //-------------------------------------------- Users
  @GET('$_users/me')
  Future<ApiResponse> getMe();

  @PUT('$_users/me')
  @FormUrlEncoded()
  Future<ApiResponse> updateMe({
    @Field('email') required String email,
    @Field('first_name') required String firstname,
    @Field('last_name') required String lastname,
    @Field('phone') required String phone,
    @Field('street') required String street,
    @Field('postal_code') required String postalCode,
    @Field('country') required String country,
    @Field('region') required String region,
    @Field('department') required String department,
  });

  @POST('$_users/me/location')
  @FormUrlEncoded()
  Future<ApiResponse> updateMeLocation({
    @Field('lat') required double latitude,
    @Field('lon') required double longitude,
  });

  @DELETE('$_users/me/profile-image')
  Future<ApiResponse> removeMeProfilePhoto();

  @POST('$_users/me/password')
  @FormUrlEncoded()
  Future<ApiResponse> updateMePassword({
    @Field('old_password') required String oldPassword,
    @Field('new_password') required String newPassword,
    @Field('new_password_confirmation') required String confirmNewPassword,
  });

  //-------------------------------------------- Pay Informations
  @GET('$_payInformations/me')
  Future<ApiResponse> getPayInformations();

  // @POST('$_payInformations/me')
  // @FormUrlEncoded()
  // Future<ApiResponse> addPayInformation({
  //   @Field('type') required String type,
  //   @Field('value') required String value,
  // });

  // @PUT('$_payInformations/me/{id}')
  // @FormUrlEncoded()
  // Future<ApiResponse> editPayInformation({
  //   @Path('id') required int payInformationId,
  //   @Field('value') required String payInformationValue,
  // });

  @DELETE('$_payInformations/me/{id}')
  @FormUrlEncoded()
  Future<ApiResponse> deletePayInformation({
    @Path('id') required int payInformationId,
  });

  //-------------------------------------------- Categories
  @GET(_catgerories)
  Future<ApiResponse> getAllCategories();

  // Clients
  @GET('$_clients/{id}')
  Future<ApiResponse> getClientById({
    @Path('id') required int id,
  });

  //-------------------------------------------- Meetings
  @GET('$_meetings/me')
  Future<ApiResponse> getMeMeetings();

  @POST(_meetings)
  @FormUrlEncoded()
  Future<ApiResponse> createMeeting({
    @Field('date_meeting') required DateTime date,
    @Field('service_id') required int serviceId,
    @Field('client_id') required int clientId,
  });

  @PUT('$_meetings/{id}')
  @FormUrlEncoded()
  Future<ApiResponse> updateMeeting({
    @Path('id') required int meetingId,
    @Field('status') String? status,
    @Field('date_meeting') DateTime? date,
  });

  //-------------------------------------------- Orders
  @GET('$_orders/me')
  Future<ApiResponse> getMeOrders();

  @POST(_orders)
  @FormUrlEncoded()
  Future<ApiResponse> createOder({
    @Field('orders') required List<Map<String, dynamic>> orders,
  });

  //-------------------------------------------- Products
  @GET(_products)
  Future<ApiResponse> getAllProducts();

  @GET('$_products/category/{category_id}')
  Future<ApiResponse> getProductsByCategoryId({
    @Path('category_id') required int categoryId,
  });

  @GET('$_products/therapeute/{therapeute_id}')
  Future<ApiResponse> getProductsByTherapeuteId({
    @Path('therapeute_id') required int therapeuteId,
  });

  //-------------------------------------------- Services
  @GET(_services)
  Future<ApiResponse> getAllServices();

  @GET('$_services/therapeute/{therapeute_id}')
  Future<ApiResponse> getServicesByTherapeuteId({
    @Path('therapeute_id') required int therapeuteId,
  });

  //-------------------------------------------- Therapeutes
  @GET(_therapeutes)
  Future<ApiResponse> getAllTherapeutes({
    @Query('discipline_id') int? categoryId,
  });

  @GET('$_therapeutes/stats/{id}')
  Future<ApiResponse> getTherapeuteStats({
    @Path('id') required int id,
  });

  @GET('$_therapeutes/near/{lon}/{lat}')
  Future<ApiResponse> getNearestTherapeutes({
    @Path('lon') required double longitude,
    @Path('lat') required double latitude,
    @Query('discipline_id') int? categoryId,
  });

  @GET('$_therapeutes/{id}')
  Future<ApiResponse> getTherapeuteById({
    @Path('id') required int id,
  });
}
