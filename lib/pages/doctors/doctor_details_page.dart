import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class DoctorDetailsPage extends StatefulWidget {
  const DoctorDetailsPage({Key? key}) : super(key: key);

  @override
  State<DoctorDetailsPage> createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage> {
  final UserObjectModel _doctor = Get.arguments['doctor'];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppThemes.lightPalette,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: AppThemes.lightPalette,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 40),
                                  child: Avatar(
                                    imageUrl: AppUtils.getUserProfileUrl(_doctor.user!),
                                    size: 120,
                                    placeholderPadding: 24,
                                    errorPadding: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 100,
                                color: AppThemes.lightPalette,
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(context.isTablet ? 40 : 30),
                                    topRight: Radius.circular(context.isTablet ? 40 : 30),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. ${_doctor.user!.lastname} ${_doctor.user!.firstname}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      _doctor.categoryObjects == null || _doctor.categoryObjects!.isEmpty
                                          ? 'Spécialité inconnue'
                                          : _doctor.categoryObjects![0].category.name,
                                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      child: Row(
                                        children: [
                                          const Icon(Icons.location_on_rounded, size: 20, color: Colors.black38),
                                          const SizedBox(width: 5),
                                          Text(
                                            AppUtils.getUserFullAddress(_doctor.user!),
                                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    DescriptionBox(
                                      text: _doctor.descriptionProfil,
                                      paddingTop: 5,
                                      paddingBottom: 10,
                                    ),
                                    if (_doctor.services != null) _ServicesList(services: _doctor.services!),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _doctor.services!.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: AppButton(
                        onPressed: () => Get.toNamed(AppPages.kBooking, arguments: {'doctor': _doctor}),
                        width: context.width,
                        text: 'Prendre rendez-vous',
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Get.back(closeOverlays: true),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ServicesList extends StatelessWidget {
  const _ServicesList({
    Key? key,
    required this.services,
  }) : super(key: key);

  final List<ServiceModel> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Services',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 20,
                ),
          ),
        ),
        services.isNotEmpty
            ? ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: services.length,
                itemBuilder: (context, index) => ServiceCard(service: services[index]),
                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
              )
            : Text(
                'Aucun service',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),
              ),
      ],
    );
  }
}
