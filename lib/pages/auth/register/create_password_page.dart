import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({Key? key}) : super(key: key);

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  final _controller = CreatePasswordController.instance;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _confirmPasswordFocusNode = FocusNode();
  bool _showPassword = false;

  final String _firstname = Get.parameters['firstname']!;
  final String _lastname = Get.parameters['lastname']!;
  final String _email = Get.parameters['email']!;
  final String _phone = Get.parameters['phone']!;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  void _toggleNewPassword() => setState(() => _showPassword = !_showPassword);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
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
                              'Mot de passe',
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
                                text: 'Créez un mot de passe pour votre compte ${AppConfigs.appName}.',
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
                                AppTextFormField(
                                  controller: _passwordController,
                                  validator: _controller.validatePassword,
                                  onChanged: (value) => _controller.updatePassword(value, _formKey),
                                  onEditingComplete: () => _confirmPasswordFocusNode.requestFocus(),
                                  prefixIcon: Ionicons.lock_closed_outline,
                                  suffixIcon: _showPassword ? Ionicons.eye_outline : Ionicons.eye_off_outline,
                                  onSuffixIconPressed: _toggleNewPassword,
                                  labelText: 'Mot de passe',
                                  hintText: 'Mot de passe',
                                  inputType: TextInputType.text,
                                  inputAction: TextInputAction.next,
                                  obscureText: !_showPassword,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                ),
                                const SizedBox(height: 30),
                                AppTextFormField(
                                  controller: _confirmPasswordController,
                                  focusNode: _confirmPasswordFocusNode,
                                  validator: _controller.validateConfirmPassword,
                                  onChanged: (value) => _controller.updateConfirmNewPassword(value, _formKey),
                                  onEditingComplete: () => _controller.handleNext(
                                    formKey: _formKey,
                                    firstname: _firstname,
                                    lastname: _lastname,
                                    email: _email,
                                    phone: _phone,
                                  ),
                                  prefixIcon: Ionicons.lock_closed_outline,
                                  labelText: 'Confirmez le mot de passe',
                                  hintText: 'Confirmez le mot de passe',
                                  inputType: TextInputType.text,
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
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
                        onPressed: () => _controller.handleNext(
                          formKey: _formKey,
                          firstname: _firstname,
                          lastname: _lastname,
                          email: _email,
                          phone: _phone,
                        ),
                        width: context.width,
                        text: 'Suivant',
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
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
