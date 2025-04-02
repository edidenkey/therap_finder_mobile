import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/app_service.dart';
import 'package:theraplib_mobile/widgets/index.dart';
import 'components/index.dart';

class TherapeuteHomePage extends StatefulWidget {
  const TherapeuteHomePage({
    Key? key,
    required this.scrollController,
    required this.navigate,
    required this.canPop,
  }) : super(key: key);

  final ScrollController scrollController;
  final void Function(int) navigate;
  final void Function(bool) canPop;

  @override
  State<TherapeuteHomePage> createState() => _TherapeuteHomePageState();
}

class _TherapeuteHomePageState extends State<TherapeuteHomePage>
    with AutomaticKeepAliveClientMixin<TherapeuteHomePage> {
  final _controller = HomeController.instance;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(AppConfigs.appName),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Obx(
              () => AnimatedCrossFade(
                crossFadeState: _controller.isLoading.value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 300),
                firstChild: const Loader(),
                secondChild: _controller.hasError.value
                    ? UnexpectedErrorState(
                        padding: const EdgeInsets.all(20),
                        scrollController: widget.scrollController,
                        onPressed: _controller.refreshData,
                      )
                    : PullToRefresh(
                        onRefresh: () async {
                          await _controller.refreshData();
                          setState(() {});
                        },
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.only(top: 10),
                          physics: const AlwaysScrollableScrollPhysics(),
                          controller: widget.scrollController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => AppService.instance.authUser.value != null &&
                                        AppService.instance.authUser.value!.latitude == 0 &&
                                        AppService.instance.authUser.value!.longitude == 0
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: AlertTile(
                                          message: 'Veuillez définir votre position.',
                                          icon: Icons.warning_rounded,
                                          color: Colors.amber,
                                          onTap: () => Get.toNamed(AppPages.kProfile),
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                              ),
                              _controller.currentAbonnement != null
                                  ? AccountDetailTile(
                                      title: 'Abonnement',
                                      subtitle: _controller.currentAbonnement!.abonnement!.name,
                                      icon: Ionicons.shield_checkmark_outline,
                                    )
                                  : const Padding(
                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      child: AlertTile(
                                        message: "Vous n'avez pas d'abonnement actif actuellement.",
                                        icon: Icons.warning_rounded,
                                        color: Colors.amber,
                                      ),
                                    ),
                              _StatsSection(controller: _controller, changeIndex: widget.navigate),
                              _UpcomingMeetingsSection(meetings: _controller.upcomingMeetings),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class _StatsSection extends StatelessWidget {
  const _StatsSection({
    Key? key,
    required this.controller,
    required this.changeIndex,
  }) : super(key: key);

  final HomeController controller;
  final void Function(int) changeIndex;

  List<StatItem> get _items => [
        StatItem(
          stat: controller.pendingMeetingsCount.toDouble(),
          title: 'Rendez-vous en attente',
          icon: Ionicons.calendar_number_outline,
          onPressed: () => changeIndex(2),
        ),
        StatItem(
          stat: controller.ordersCount.toDouble(),
          title: 'Achats',
          icon: Ionicons.cash_outline,
          onPressed: () => Get.toNamed(AppPages.kOrders),
        ),
        StatItem(
          stat: controller.servicesCount.toDouble(),
          title: 'Services',
          icon: Ionicons.medkit_outline,
          onPressed: () => Get.toNamed(AppPages.kServices),
        ),
        StatItem(
          stat: controller.productsCount.toDouble(),
          title: 'Produits',
          icon: Ionicons.storefront_outline,
          onPressed: () => changeIndex(1),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: context.isTablet ? 4 : 2,
      crossAxisSpacing: 18,
      mainAxisSpacing: 18,
      itemCount: _items.length,
      itemBuilder: (context, index) => StatTile(
        stat: _items[index].stat,
        title: _items[index].title,
        icon: _items[index].icon,
        onPressed: _items[index].onPressed,
      ),
    );
  }
}

class _UpcomingMeetingsSection extends StatelessWidget {
  const _UpcomingMeetingsSection({
    Key? key,
    required this.meetings,
  }) : super(key: key);

  final List<MeetingModel> meetings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rendez-vous à venir',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: meetings.isEmpty
                ? Text(
                    'Aucun rendez-vous à venir pour le moment.',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                        ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: meetings.length,
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                    itemBuilder: (BuildContext context, int index) => BookingCard(meeting: meetings[index]),
                  ),
          ),
        ],
      ),
    );
  }
}
