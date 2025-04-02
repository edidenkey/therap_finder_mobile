import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:theraplib_mobile/constants/index.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  final _controller = DoctorsController.instance;
  final _searchController = TextEditingController();

  final String? _categoryName = Get.parameters['categoryName'];

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
        title: Text(_categoryName != null ? _categoryName! : 'Therapeutes'),
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
              child: Obx(
                () => SearchInputField(
                  controller: _searchController,
                  suffixIcon: Icons.my_location_outlined,
                  suffixIconColor: _controller.shouldUseCurrentLocation.value ? AppThemes.lightPalette : Colors.black45,
                  hintText: 'Rechercher un therapeute',
                  onChanged: _controller.updateSearchQuery,
                  onPrefixIconPressed: _resetSearch,
                  onSuffixIconPressed: () async {
                    if (await _controller.toggleLocation()) _resetSearch();
                  },
                ),
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
                      : _controller.doctors.isEmpty
                          ? EmptyPageStateBuilder(
                              padding: const EdgeInsets.all(20),
                              imageAsset: SvgPicture.asset('assets/images/doctors.svg'),
                              title: 'Aucun therapeute',
                              description: "Il n'y a pas de therapeute pour le moment. Veuillez réessayer plus tard.",
                              actionText: 'Actualiser',
                              onPressed: _controller.fetchData,
                            )
                          : AnimatedCrossFade(
                              crossFadeState: _controller.searchedDoctors.isEmpty
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                              duration: const Duration(milliseconds: 300),
                              firstChild: const SingleChildScrollView(
                                padding: EdgeInsets.all(20),
                                child: EmptySearchState(message: 'Aucun therapeute trouvé.'),
                              ),
                              secondChild: _DoctorList(
                                controller: _controller,
                                onRefresh: _onRefresh,
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

class _DoctorList extends StatelessWidget {
  const _DoctorList({
    Key? key,
    required this.controller,
    required this.onRefresh,
  }) : super(key: key);

  final DoctorsController controller;
  final Future Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return controller.searchedDoctors.isEmpty
        ? const SizedBox.shrink()
        : PullToRefresh(
            onRefresh: onRefresh,
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.searchedDoctors.length,
              itemBuilder: (context, index) => Obx(
                () => DoctorCard(
                  doctor: controller.searchedDoctors[index],
                  showDistance: controller.shouldUseCurrentLocation.value,
                  onTap: () => controller.showDoctorDetail(controller.searchedDoctors[index]),
                ),
              ),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
            ),
          );
  }
}
