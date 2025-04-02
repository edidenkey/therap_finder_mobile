import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({
    Key? key,
    required this.scrollController,
    required this.navigate,
    required this.canPop,
  }) : super(key: key);

  final ScrollController scrollController;
  final void Function(int) navigate;
  final void Function(bool) canPop;

  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> with AutomaticKeepAliveClientMixin<ClientHomePage> {
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
                      : !AppUtils.isLoggedIn
                          ? const SizedBox.shrink()
                          : PullToRefresh(
                              onRefresh: () async {
                                await _controller.refreshData();
                                setState(() {});
                              },
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.only(top: 20),
                                physics: const AlwaysScrollableScrollPhysics(),
                                controller: widget.scrollController,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _PopularDoctorsSection(doctors: _controller.doctors.take(3).toList()),
                                    const SizedBox(height: 25),
                                    _CategoriesSection(
                                      categories: _controller.categories,
                                      onCategoryPressed: _controller.gotoDoctorsPage,
                                    ),
                                    const SizedBox(height: 18),
                                    _DoctorsSection(
                                      doctors: _controller.doctors,
                                      onShowMore: _controller.gotoDoctorsPage,
                                    ),
                                  ],
                                ),
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

class _PopularDoctorsSection extends StatelessWidget {
  const _PopularDoctorsSection({
    Key? key,
    required this.doctors,
  }) : super(key: key);

  final List<UserObjectModel> doctors;

  @override
  Widget build(BuildContext context) {
    return doctors.isEmpty
        ? Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Aucun therapeute populaire pour le moment.',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          )
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 16,
              children: [
                ...List.generate(
                  doctors.length,
                  (index) => PopularDoctorCard(
                    doctor: doctors[index],
                    onTap: () => Get.toNamed(AppPages.kDoctorDetails, arguments: {'doctor': doctors[index]}),
                  ),
                ),
              ],
            ),
          );
  }
}

class _CategoriesSection extends StatelessWidget {
  const _CategoriesSection({
    Key? key,
    required this.categories,
    required this.onCategoryPressed,
  }) : super(key: key);

  final List<CategoryModel> categories;
  final void Function([CategoryModel? category]) onCategoryPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Spécialités',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 20),
        categories.isEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Aucune spécialité pour le moment.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  spacing: 12,
                  children: List.generate(
                    categories.length,
                    (index) => ItemChip(
                      text: categories[index].name,
                      textColor: AppThemes.lightPalette,
                      bgColor: AppThemes.lightPalette.shade50,
                      icon: Icons.medical_services_outlined,
                      iconColor: AppThemes.lightPalette,
                      onTap: () => onCategoryPressed(categories[index]),
                    ),
                  ).toList(),
                ),
              ),
      ],
    );
  }
}

class _DoctorsSection extends StatelessWidget {
  const _DoctorsSection({
    Key? key,
    required this.doctors,
    required this.onShowMore,
  }) : super(key: key);

  final List<UserObjectModel> doctors;
  final void Function([CategoryModel? category]) onShowMore;

  bool get _canShowAll => doctors.length > 3;

  List<UserObjectModel> get _shownDoctors => doctors.take(3).toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, _canShowAll ? 0 : 12, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Thérapeutes',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Visibility(
                visible: _canShowAll,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: AppIconButton(
                    onPressed: onShowMore,
                    icon: Icons.arrow_forward,
                    tooltip: 'Afficher tous les therapeutes',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: _canShowAll ? 10 : 20),
            child: _shownDoctors.isEmpty
                ? Text(
                    'Aucun therapeute pour le moment.',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                        ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _shownDoctors.length,
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
                    itemBuilder: (BuildContext context, int index) => DoctorCard(
                      doctor: _shownDoctors[index],
                      onTap: () => Get.toNamed(AppPages.kDoctorDetails, arguments: {'doctor': _shownDoctors[index]}),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
