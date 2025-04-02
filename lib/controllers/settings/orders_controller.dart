import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class OrdersController extends GetxController {
  static OrdersController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  List<OrderModel> orders = [];
  final RxBool isLoading = false.obs;
  final RxBool hasError = false.obs;

  void fetchData() async {
    isLoading.value = true;
    await _getDetails();
  }

  Future<void> refreshData() async {
    await _getDetails();
  }

  Future<void> _getDetails() async {
    try {
      ApiResponse response = await _restClient.getMeOrders();
      final ordersJson = (response.data as List).cast<Map<String, dynamic>>();
      orders = ordersJson.map(OrderModel.fromJson).toList();
      hasError.value = false;
    } on DioError catch (_) {
      hasError.value = true;
    } finally {
      isLoading.value = false;
    }
  }
}
