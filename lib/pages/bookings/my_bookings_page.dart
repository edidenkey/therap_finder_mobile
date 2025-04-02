import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class MyBookingsPage extends StatefulWidget {
  const MyBookingsPage({
    Key? key,
    required this.scrollController,
    required this.navigate,
    required this.canPop,
  }) : super(key: key);

  final ScrollController scrollController;
  final void Function(int) navigate;
  final void Function(bool) canPop;

  @override
  State<MyBookingsPage> createState() => _MyBookingsPageState();
}

class _MyBookingsPageState extends State<MyBookingsPage> with AutomaticKeepAliveClientMixin<MyBookingsPage> {
  final _controller = MyBookingController.instance;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller.fetchData();
  }

  Future<void> _confirmUpdateMeetingStatus(int meetingId, String? status, String message) {
    return AppUtils.showConfirmationDialog(
      message: message,
      confirmText: 'Oui',
      cancelText: 'Non',
      onConfirm: () => _handleUpdateMeeting(meetingId: meetingId, status: status!),
      onCancel: () => Get.until((_) => !Get.isDialogOpen!),
    );
  }

  void _handleUpdateMeeting({required int meetingId, String? status, DateTime? date}) async {
    Get.until((_) => !Get.isDialogOpen!);
    await AppUtils.showLoadingOverlay(
      () => _updateMeeting(meetingId: meetingId, status: status, date: date),
    );
  }

  Future<void> _updateMeeting({required int meetingId, String? status, DateTime? date}) async {
    try {
      widget.canPop(false);
      await _controller.restClient.updateMeeting(meetingId: meetingId, status: status, date: date);
      AppUtils.showSnackBar(
        message: 'Rendez-vous mis à jour.',
        icon: Ionicons.information_circle,
      );
      Get.offAllNamed(AppPages.kDashboard, parameters: {'page-index': '2'});
    } on DioError catch (e) {
      // Unexpected error
      if (e.response != null && e.response!.statusCode! < 500) {
        AppUtils.showUnknownError();
      }
    } finally {
      widget.canPop(true);
    }
  }

  void _gotoBookingPage(MeetingModel meeting) {
    Get.toNamed(AppPages.kBooking, arguments: {'meeting': meeting});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text('Mes rendez-vous'),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Obx(
          () => AnimatedCrossFade(
            crossFadeState: _controller.isLoading.value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 300),
            firstChild: const Loader(),
            secondChild: _controller.hasError.value
                ? UnexpectedErrorState(
                    padding: const EdgeInsets.all(20),
                    scrollController: widget.scrollController,
                    onPressed: _controller.fetchData,
                  )
                : _controller.allMeetings.isEmpty
                    ? EmptyPageStateBuilder(
                        padding: const EdgeInsets.all(20),
                        scrollController: widget.scrollController,
                        imageAsset: SvgPicture.asset('assets/images/meetings.svg'),
                        title: 'Aucun rendez-vous',
                        description: "Il n'y a pas de rendez-vous pour le moment. Veuillez réessayer plus tard.",
                        actionText: 'Actualiser',
                        onPressed: _controller.fetchData,
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StatusesFilterRow(
                            items: AppUtils.meetingStatusItems,
                            selectedIndex: _controller.selectedFilterIndex.value,
                            changeIndex: _controller.changeFilterIndex,
                          ),
                          Expanded(
                            child: AnimatedCrossFade(
                              crossFadeState: _controller.filteredMeetings.isEmpty
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                              duration: const Duration(milliseconds: 300),
                              firstChild: SingleChildScrollView(
                                controller: widget.scrollController,
                                child: const EmptySearchState(message: 'Aucun rendez-vous trouvé'),
                              ),
                              secondChild: _controller.filteredMeetings.isEmpty
                                  ? const SizedBox.shrink()
                                  : PullToRefresh(
                                      onRefresh: _controller.getMeetings,
                                      child: ListView.separated(
                                        padding: const EdgeInsets.all(20),
                                        controller: widget.scrollController,
                                        shrinkWrap: true,
                                        physics: const AlwaysScrollableScrollPhysics(),
                                        itemCount: _controller.filteredMeetings.length,
                                        itemBuilder: (context, index) => BookingCard(
                                          meeting: _controller.filteredMeetings[index],
                                          onUpdate: _gotoBookingPage,
                                          onUpdateStatus: _confirmUpdateMeetingStatus,
                                        ),
                                        separatorBuilder: (context, index) => const SizedBox(height: 20),
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
          ),
        ),
      ),
    );
  }
}
