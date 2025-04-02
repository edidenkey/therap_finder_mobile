import 'package:get/get.dart';

import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class MyBookingController extends GetxController {
  static MyBookingController get instance => Get.find();

  final restClient = AppService.instance.restClient;
  final RxList<MeetingModel> allMeetings = <MeetingModel>[].obs;
  final RxList<MeetingModel> filteredMeetings = <MeetingModel>[].obs;
  final RxBool isLoading = false.obs;
  final RxBool hasError = false.obs;
  final RxInt selectedFilterIndex = 0.obs;

  void fetchData() {
    isLoading.value = true;
    getMeetings();
  }

  void changeFilterIndex(int index) {
    if (isLoading.value || selectedFilterIndex.value == index) return;
    selectedFilterIndex.value = index;
    _filterMeetings(index);
  }

  void _filterMeetings(int index) {
    if (index == 0) {
      filteredMeetings.value = allMeetings.toList();
    } else {
      filteredMeetings.value =
          allMeetings.where((meeting) => meeting.status == AppUtils.meetingStatusItems[index].value).toList();
    }
  }

  Future<void> getMeetings() async {
    try {
      ApiResponse response = await restClient.getMeMeetings();
      final meetingsJsonList = (response.data as List).cast<Map<String, dynamic>>();
      allMeetings.value = meetingsJsonList.map(MeetingModel.fromJson).toList();
      hasError.value = false;
    } catch (_) {
      allMeetings.clear();
      hasError.value = true;
    } finally {
      _filterMeetings(selectedFilterIndex.value);
      isLoading.value = false;
    }
  }
}
