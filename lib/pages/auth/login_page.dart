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

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = LoginController.instance;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePassword() => setState(() => _showPassword = !_showPassword);

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
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: AppUtils.headerImageHeight(context),
                        child: SvgPicture.asset('assets/images/login.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text(
                          'Connexion',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                        child: RichText(
                          textAlign: TextAlign.center,
                          textScaleFactor: context.textScaleFactor,
                          text: TextSpan(
                            text: 'Saisissez vos identifiants pour vous connecter à ${AppConfigs.appName}.',
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
                                controller: _passwordController,
                                validator: _controller.validatePassword,
                                onChanged: (value) => _controller.updatePassword(value, _formKey),
                                onEditingComplete: () => _controller.handleSubmit(_formKey),
                                enabled: !_controller.isSubmitting.value,
                                prefixIcon: Ionicons.lock_closed_outline,
                                suffixIcon: _showPassword ? Ionicons.eye_outline : Ionicons.eye_off_outline,
                                onSuffixIconPressed: _togglePassword,
                                labelText: 'Mot de passe',
                                hintText: 'Mot de passe',
                                inputType: TextInputType.text,
                                obscureText: !_showPassword,
                                enableSuggestions: false,
                                autocorrect: false,
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
                        onPressed: () => _controller.handleSubmit(_formKey),
                        width: context.width,
                        text: 'Se connecter',
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      textAlign: TextAlign.center,
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        text: "Vous n'avez pas de compte ? ",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.black87,
                            ),
                        children: [
                          TextSpan(
                            text: 'Inscrivez-vous',
                            style: TextStyle(color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                Get.toNamed(AppPages.kRegisterAccountDetails);
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
        ),
      ),
    );
  }
}
