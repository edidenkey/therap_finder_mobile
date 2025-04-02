import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final _appService = AppService.instance;

  // Client User
  List<UserObjectModel> doctors = [];
  List<CategoryModel> categories = [];
  final RxBool isLoading = false.obs;
  final RxBool hasError = false.obs;

  // Therapeute User
  int productsCount = 0;
  int servicesCount = 0;
  int ordersCount = 0;
  int pendingMeetingsCount = 0;
  AbonnementObjectModel? currentAbonnement;
  List<MeetingModel> upcomingMeetings = [];

  void fetchData() async {
    isLoading.value = true;
    await _getDetails();
  }

  Future<void> refreshData() async {
    await Future.wait([
      _appService.refreshUser(),
      _getDetails(),
    ]);
  }

  Future<void> _getDetails() async {
    try {
      if (AppUtils.isClient) {
        await _getClientData();
      } else {
        await _getTherapeuteData();
      }
      hasError.value = false;
    } on DioError {
      hasError.value = true;
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> _getClientData() async {
    List<ApiResponse> responses = await Future.wait([
      _appService.restClient.getAllCategories(),
      _appService.restClient.getAllTherapeutes(),
    ]);
    // Categories
    final categoriesJson = (responses[0].data as List).cast<Map<String, dynamic>>();
    categories = categoriesJson.map(CategoryModel.fromJson).toList();
    categories.sort((a, b) => AppUtils.removeDiacritics(a.name).compareTo(AppUtils.removeDiacritics(b.name)));
    // Doctors
    final doctorsJson = (responses[1].data as List).cast<Map<String, dynamic>>();
    doctors = doctorsJson.map(UserObjectModel.fromJson).toList();
  }

  Future<void> _getTherapeuteData() async {
    ApiResponse response = await _appService.restClient.getTherapeuteStats(id: AppUtils.user!.userObjectId);
    final dataJson = response.data as Map<String, dynamic>;
    productsCount = dataJson['products_count'];
    servicesCount = dataJson['services_count'];
    ordersCount = dataJson['orders_count'];
    pendingMeetingsCount = dataJson['pending_meetings_count'];
    // Abonnement
    final currentAbonnementJson = dataJson['user_current_abonement'] as Map<String, dynamic>?;
    currentAbonnement = currentAbonnementJson != null ? AbonnementObjectModel.fromJson(currentAbonnementJson) : null;
    // Meetings
    final upcomingMeetingsJson = (dataJson['upcoming_meetings'] as List).cast<Map<String, dynamic>>();
    upcomingMeetings = upcomingMeetingsJson.map(MeetingModel.fromJson).toList();
  }

  void gotoDoctorsPage([CategoryModel? category]) async {
    if (category != null) {
      Get.toNamed(AppPages.kDoctors, parameters: {
        'categoryId': category.id.toString(),
        'categoryName': category.name,
      });
    } else {
      Get.toNamed(AppPages.kDoctors);
    }
  }
}
