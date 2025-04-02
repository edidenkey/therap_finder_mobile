import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/services/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';
import 'components/index.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _controller = ProfileController.instance;

  // Email
  final _emailFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  // Name
  final _nameFormKey = GlobalKey<FormState>();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();

  // Address
  final _addressFormKey = GlobalKey<FormState>();
  final _streetController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _departementController = TextEditingController();
  final _regionController = TextEditingController();
  final _countryController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.getLostPickerData();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _firstnameController.dispose();
    _lastnameController.dispose();
    _streetController.dispose();
    _postalCodeController.dispose();
    _departementController.dispose();
    _regionController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  void _showProfilePhotoPickerBottomSheet() async {
    await AppUtils.showBottomSheet(
      ProfilePhotoPickerBottomSheet(controller: _controller),
      borderRadius: 10,
    );
  }

  void _showEmailEditBottomSheet() async {
    await AppUtils.showBottomSheet(
      EmailEditBottomSheet(
        controller: _controller,
        formKey: _emailFormKey,
        emailController: _emailController,
      ),
      borderRadius: 10,
    );
  }

  void _showNameEditBottomSheet() async {
    await AppUtils.showBottomSheet(
      NameEditBottomSheet(
        controller: _controller,
        formKey: _nameFormKey,
        firstnameController: _firstnameController,
        lastnameController: _lastnameController,
      ),
      borderRadius: 10,
    );
  }

  void _showAddressEditBottomSheet() async {
    await AppUtils.showBottomSheet(
      AddressEditBottomSheet(
        controller: _controller,
        formKey: _addressFormKey,
        streetController: _streetController,
        postalCodeController: _postalCodeController,
        departementController: _departementController,
        regionController: _regionController,
        countryController: _countryController,
      ),
      borderRadius: 10,
    );
  }

  void _confirmUpdateUserLocation() async {
    await AppUtils.showConfirmationDialog(
      message: 'Voulez-vous définir votre position sur votre position actuelle ?',
      confirmText: 'Définir',
      onConfirm: _controller.handleUpdateUserPosition,
      onCancel: () => Get.until((_) => !Get.isDialogOpen!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _controller.onWillPop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text('Profil'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => _controller.isLoading.value ? null : Get.back(closeOverlays: true),
          ),
        ),
        body: SafeArea(
          top: false,
          bottom: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Obx(
                  () => ProfilePhoto(
                    imageUrl: AppUtils.getUserProfileUrl(AppService.instance.authUser.value!),
                    oPressed: _showProfilePhotoPickerBottomSheet,
                  ),
                ),
                Obx(
                  () => ProfileTile(
                    title: 'Type de compte',
                    subtitle: AppService.instance.authUser.value!.role == AppRoles.client ? 'Client' : 'Thérapeute',
                    icon: Icons.account_circle,
                  ),
                ),
                const Divider(height: 0),
                Obx(
                  () => ProfileTile(
                    title: 'Nom',
                    subtitle:
                        '${AppService.instance.authUser.value!.lastname} ${AppService.instance.authUser.value!.firstname}',
                    icon: Icons.person_rounded,
                    onPressed: _showNameEditBottomSheet,
                  ),
                ),
                const Divider(height: 0),
                Obx(
                  () => ProfileTile(
                    title: 'Adresse email',
                    subtitle: AppService.instance.authUser.value!.email,
                    icon: Icons.mail_rounded,
                    onPressed: _showEmailEditBottomSheet,
                  ),
                ),
                const Divider(height: 0),
                Obx(
                  () => ProfileTile(
                    title: 'Téléphone',
                    subtitle: AppService.instance.authUser.value!.phone,
                    icon: Icons.call_rounded,
                    onPressed: () => Get.toNamed(AppPages.kChangePhone),
                  ),
                ),
                const Divider(height: 0),
                Obx(
                  () => ProfileTile(
                    title: 'Adresse',
                    subtitle: AppUtils.getUserFullAddress(AppService.instance.authUser.value!),
                    icon: Icons.home_rounded,
                    onPressed: _showAddressEditBottomSheet,
                  ),
                ),
                const Divider(height: 0),
                Obx(
                  () => ProfileTile(
                    title: 'Position',
                    subtitle: 'Lat : ${AppService.instance.authUser.value!.latitude} \n'
                        'Long : ${AppService.instance.authUser.value!.longitude}',
                    icon: Icons.my_location_outlined,
                    onPressed: _confirmUpdateUserLocation,
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
