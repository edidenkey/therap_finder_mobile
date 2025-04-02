import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final _controller = AddressController.instance;
  final _formKey = GlobalKey<FormState>();
  final _streetController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _departementController = TextEditingController();
  final _regionController = TextEditingController();
  final _countryController = TextEditingController();

  final String _firstname = Get.parameters['firstname']!;
  final String _lastname = Get.parameters['lastname']!;
  final String _email = Get.parameters['email']!;
  final String _phone = Get.parameters['phone']!;
  final String _password = Get.parameters['password']!;
  final String _confirmPassword = Get.parameters['confirmPassword']!;

  @override
  void dispose() {
    _streetController.dispose();
    _postalCodeController.dispose();
    _departementController.dispose();
    _regionController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: WillPopScope(
        onWillPop: _controller.onWillPop,
        child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: AppUtils.headerImageHeight(context),
                              child: SvgPicture.asset('assets/images/register.svg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'Localisation',
                                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: RichText(
                                textAlign: TextAlign.center,
                                textScaleFactor: context.textScaleFactor,
                                text: TextSpan(
                                  text: 'Ajoutez vos informations de localisation.',
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        color: Colors.black87,
                                      ),
                                ),
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Obx(
                                    () => AppTextFormField(
                                      controller: _streetController,
                                      validator: _controller.validateStreet,
                                      onChanged: (value) => _controller.updateStreet(value, _formKey),
                                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.home_outline,
                                      labelText: 'Rue',
                                      hintText: 'Rue',
                                      inputType: TextInputType.text,
                                      textCapitalization: TextCapitalization.sentences,
                                      inputAction: TextInputAction.next,
                                      minLines: 1,
                                      maxLines: 3,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Obx(
                                    () => AppTextFormField(
                                      controller: _postalCodeController,
                                      validator: _controller.validatePostalCode,
                                      onChanged: (value) => _controller.updatePostalCode(value, _formKey),
                                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.home_outline,
                                      labelText: 'Code postal',
                                      hintText: 'Code postal',
                                      inputType: TextInputType.text,
                                      textCapitalization: TextCapitalization.sentences,
                                      inputAction: TextInputAction.next,
                                      minLines: 1,
                                      maxLines: 3,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Obx(
                                    () => AppTextFormField(
                                      controller: _departementController,
                                      validator: _controller.validateDepartement,
                                      onChanged: (value) => _controller.updateDepartement(value, _formKey),
                                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.home_outline,
                                      labelText: 'Département',
                                      hintText: 'Département',
                                      inputType: TextInputType.text,
                                      textCapitalization: TextCapitalization.sentences,
                                      inputAction: TextInputAction.next,
                                      minLines: 1,
                                      maxLines: 3,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Obx(
                                    () => AppTextFormField(
                                      controller: _regionController,
                                      validator: _controller.validateRegion,
                                      onChanged: (value) => _controller.updateRegion(value, _formKey),
                                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.home_outline,
                                      labelText: 'Région',
                                      hintText: 'Région',
                                      inputType: TextInputType.text,
                                      textCapitalization: TextCapitalization.sentences,
                                      inputAction: TextInputAction.next,
                                      minLines: 1,
                                      maxLines: 3,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Obx(
                                    () => AppTextFormField(
                                      controller: _countryController,
                                      validator: _controller.validateCountry,
                                      onChanged: (value) => _controller.updateCountry(value, _formKey),
                                      onEditingComplete: () => _controller.handleSubmit(
                                        formKey: _formKey,
                                        firstname: _firstname,
                                        lastname: _lastname,
                                        email: _email,
                                        phone: _phone,
                                        password: _password,
                                        confirmPassword: _confirmPassword,
                                      ),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.home_outline,
                                      labelText: 'Pays',
                                      hintText: 'Pays',
                                      inputType: TextInputType.text,
                                      textCapitalization: TextCapitalization.words,
                                      minLines: 1,
                                      maxLines: 3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: Obx(
                        () => AppButton(
                          disabled: !_controller.isFormValid.value,
                          loading: _controller.isSubmitting.value,
                          onPressed: () => _controller.handleSubmit(
                            formKey: _formKey,
                            firstname: _firstname,
                            lastname: _lastname,
                            email: _email,
                            phone: _phone,
                            password: _password,
                            confirmPassword: _confirmPassword,
                          ),
                          width: context.width,
                          text: 'Terminer',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => _controller.isSubmitting.value ? null : Get.back(closeOverlays: true),
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
