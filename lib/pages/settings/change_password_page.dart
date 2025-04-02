import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _controller = ChangePasswordController.instance;
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();
  final _newPasswordFocusNode = FocusNode();
  final _confirmNewPasswordFocusNode = FocusNode();
  bool _showCurrentPassword = false;
  bool _showNewPassword = false;

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();
    _newPasswordFocusNode.dispose();
    _confirmNewPasswordFocusNode.dispose();
    super.dispose();
  }

  void _toggleCurrentPassword() => setState(() => _showCurrentPassword = !_showCurrentPassword);

  void _toggleNewPassword() => setState(() => _showNewPassword = !_showNewPassword);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _controller.onWillPop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text('Changer mon mot de passe'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => _controller.isSubmitting.value ? null : Get.back(closeOverlays: true),
          ),
        ),
        body: SafeArea(
          top: false,
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Form(
                  key: _formKey,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 15),
                        child: Text(
                          'Saisissez votre mot de passe actuel :',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.3),
                        ),
                      ),
                      Obx(
                        () => AppTextFormField(
                          controller: _currentPasswordController,
                          validator: _controller.validateCurrentPassword,
                          onChanged: (value) => _controller.updateCurrentPassword(value, _formKey),
                          onEditingComplete: () => _newPasswordFocusNode.requestFocus(),
                          enabled: !_controller.isSubmitting.value,
                          prefixIcon: Ionicons.lock_closed_outline,
                          suffixIcon: _showCurrentPassword ? Ionicons.eye_outline : Ionicons.eye_off_outline,
                          onSuffixIconPressed: _toggleCurrentPassword,
                          labelText: 'Mot de passe',
                          hintText: 'Mot de passe',
                          inputType: TextInputType.text,
                          inputAction: TextInputAction.next,
                          obscureText: !_showCurrentPassword,
                          enableSuggestions: false,
                          autocorrect: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 15),
                        child: Text(
                          'Saisissez votre nouveau mot de passe :',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.3),
                        ),
                      ),
                      Obx(
                        () => AppTextFormField(
                          controller: _newPasswordController,
                          focusNode: _newPasswordFocusNode,
                          validator: _controller.validateNewPassword,
                          onChanged: (value) => _controller.updateNewPassword(value, _formKey),
                          onEditingComplete: () => _confirmNewPasswordFocusNode.requestFocus(),
                          enabled: !_controller.isSubmitting.value,
                          prefixIcon: Ionicons.lock_closed_outline,
                          suffixIcon: _showNewPassword ? Ionicons.eye_outline : Ionicons.eye_off_outline,
                          onSuffixIconPressed: _toggleNewPassword,
                          labelText: 'Mot de passe',
                          hintText: 'Mot de passe',
                          inputType: TextInputType.text,
                          inputAction: TextInputAction.next,
                          obscureText: !_showNewPassword,
                          enableSuggestions: false,
                          autocorrect: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 15),
                        child: Text(
                          'Confirmez votre nouveau mot de passe :',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.3),
                        ),
                      ),
                      Obx(
                        () => AppTextFormField(
                          controller: _confirmNewPasswordController,
                          focusNode: _confirmNewPasswordFocusNode,
                          validator: _controller.validateConfirmNewPassword,
                          onChanged: (value) => _controller.updateConfirmNewPassword(value, _formKey),
                          onEditingComplete: () => _controller.handleSubmit(_formKey),
                          enabled: !_controller.isSubmitting.value,
                          prefixIcon: Ionicons.lock_closed_outline,
                          labelText: 'Confirmez le mot de passe',
                          hintText: 'Confirmez le mot de passe',
                          inputType: TextInputType.text,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                        ),
                      ),
                      const SizedBox(height: 20),
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
                    onPressed: () => _controller.handleSubmit(_formKey),
                    text: 'Mettre à jour',
                    width: context.width,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
