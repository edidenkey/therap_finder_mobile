import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class AccountDetailsPage extends StatefulWidget {
  const AccountDetailsPage({Key? key}) : super(key: key);

  @override
  State<AccountDetailsPage> createState() => _AccountDetailsPageState();
}

class _AccountDetailsPageState extends State<AccountDetailsPage> {
  final _controller = AccountDetailsController.instance;
  final _formKey = GlobalKey<FormState>();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _firstnameController.dispose();
    _lastnameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
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
                                'Identification',
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
                                  text: 'Saisissez vos informations pour créer un compte client ${AppConfigs.appName}.',
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
                                      controller: _lastnameController,
                                      validator: _controller.validateLastName,
                                      onChanged: (value) => _controller.updateLastName(value, _formKey),
                                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.person_outline,
                                      labelText: 'Nom',
                                      hintText: 'Nom',
                                      inputType: TextInputType.text,
                                      textCapitalization: TextCapitalization.words,
                                      inputAction: TextInputAction.next,
                                      minLines: 1,
                                      maxLines: 3,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Obx(
                                    () => AppTextFormField(
                                      controller: _firstnameController,
                                      validator: _controller.validateFirstName,
                                      onChanged: (value) => _controller.updateFirstName(value, _formKey),
                                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.person_outline,
                                      labelText: 'Prénom',
                                      hintText: 'Prénom',
                                      inputType: TextInputType.text,
                                      textCapitalization: TextCapitalization.words,
                                      inputAction: TextInputAction.next,
                                      minLines: 1,
                                      maxLines: 3,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Obx(
                                    () => AppTextFormField(
                                      controller: _emailController,
                                      validator: _controller.validateEmail,
                                      onChanged: (value) => _controller.updateEmail(value, _formKey),
                                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.mail_outline,
                                      labelText: 'Adresse email',
                                      hintText: 'Adresse email',
                                      inputType: TextInputType.emailAddress,
                                      inputAction: TextInputAction.next,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Obx(
                                    () => AppTextFormField(
                                      controller: _phoneController,
                                      validator: _controller.validatePhone,
                                      onChanged: (value) => _controller.updatePhone(value, _formKey),
                                      onEditingComplete: () => _controller.handleNext(_formKey),
                                      enabled: !_controller.isSubmitting.value,
                                      prefixIcon: Ionicons.phone_portrait_outline,
                                      labelText: 'Numéro de téléphone',
                                      hintText: 'Numéro de téléphone',
                                      inputType: TextInputType.phone,
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
                      child: Column(
                        children: [
                          Obx(
                            () => AppButton(
                              disabled: !_controller.isFormValid.value,
                              loading: _controller.isSubmitting.value,
                              onPressed: () => _controller.handleNext(_formKey),
                              width: context.width,
                              text: 'Suivant',
                            ),
                          ),
                          const SizedBox(height: 20),
                          RichText(
                            textAlign: TextAlign.center,
                            textScaleFactor: MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              text: 'Vous avez déjà un compte ? ',
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.black87,
                                  ),
                              children: [
                                TextSpan(
                                  text: 'Connectez-vous',
                                  style: TextStyle(color: Theme.of(context).primaryColor),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      FocusManager.instance.primaryFocus?.unfocus();
                                      Get.back(closeOverlays: true);
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
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
