import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  final _controller = ServicesController.instance;
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.fetchData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _resetSearch() {
    FocusManager.instance.primaryFocus?.unfocus();
    _controller.searchQuery.value = '';
    _searchController.clear();
  }

  Future<void> _onRefresh() async {
    await _controller.getDetails();
    _resetSearch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text('Services'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(closeOverlays: true),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SearchInputField(
                controller: _searchController,
                hintText: 'Rechercher un service',
                onChanged: _controller.updateSearchQuery,
                onPrefixIconPressed: _resetSearch,
              ),
            ),
            const Divider(height: 0),
            Expanded(
              child: Obx(
                () => AnimatedCrossFade(
                  crossFadeState: _controller.isLoading.value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 300),
                  firstChild: const Loader(),
                  secondChild: _controller.hasError.value
                      ? UnexpectedErrorState(
                          padding: const EdgeInsets.all(20),
                          onPressed: _controller.fetchData,
                        )
                      : _controller.services.isEmpty
                          ? EmptyPageStateBuilder(
                              padding: const EdgeInsets.all(20),
                              imageAsset: SvgPicture.asset('assets/images/services.svg'),
                              title: 'Aucun service',
                              description: "Vous n'avez pas de service pour le moment. Veuillez réessayer plus tard.",
                              actionText: 'Actualiser',
                              onPressed: _controller.fetchData,
                            )
                          : AnimatedCrossFade(
                              crossFadeState: _controller.searchedServices.isEmpty
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                              duration: const Duration(milliseconds: 300),
                              firstChild: const SingleChildScrollView(
                                padding: EdgeInsets.all(20),
                                child: EmptySearchState(message: 'Aucun service trouvé.'),
                              ),
                              secondChild: _ServiceList(
                                onRefresh: _onRefresh,
                                services: _controller.searchedServices,
                              ),
                            ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceList extends StatelessWidget {
  const _ServiceList({
    Key? key,
    required this.onRefresh,
    required this.services,
  }) : super(key: key);

  final Future Function() onRefresh;
  final List<ServiceModel> services;

  @override
  Widget build(BuildContext context) {
    return services.isEmpty
        ? const SizedBox.shrink()
        : PullToRefresh(
            onRefresh: onRefresh,
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: services.length,
              itemBuilder: (context, index) => ServiceCard(service: services[index]),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
            ),
          );
  }
}
