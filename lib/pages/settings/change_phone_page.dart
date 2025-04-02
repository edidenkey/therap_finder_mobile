import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class ChangePhonePage extends StatefulWidget {
  const ChangePhonePage({Key? key}) : super(key: key);

  @override
  State<ChangePhonePage> createState() => _ChangePhonePageState();
}

class _ChangePhonePageState extends State<ChangePhonePage> {
  final _controller = ChangePhoneController.instance;
  final _formKey = GlobalKey<FormState>();
  final _oldPhoneController = TextEditingController();
  final _newPhoneController = TextEditingController();

  @override
  void dispose() {
    _oldPhoneController.dispose();
    _newPhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _controller.onWillPop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text('Changer mon numéro'),
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
                          'Saisissez votre ancien numéro de téléphone :',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.3),
                        ),
                      ),
                      Obx(
                        () => AppTextFormField(
                          controller: _oldPhoneController,
                          validator: _controller.validateOldPhone,
                          onChanged: (value) => _controller.updateOldPhone(value, _formKey),
                          onEditingComplete: () => FocusScope.of(context).nextFocus(),
                          enabled: !_controller.isSubmitting.value,
                          prefixIcon: Ionicons.phone_portrait_outline,
                          labelText: 'Numéro de téléphone',
                          hintText: 'Numéro de téléphone',
                          inputType: TextInputType.phone,
                          inputAction: TextInputAction.next,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 15),
                        child: Text(
                          'Saisissez votre nouveau numéro de téléphone :',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.3),
                        ),
                      ),
                      Obx(
                        () => AppTextFormField(
                          controller: _newPhoneController,
                          validator: _controller.validateNewPhone,
                          onChanged: (value) => _controller.updateNewPhone(value, _formKey),
                          onEditingComplete: () => _controller.handleSubmit(_formKey),
                          enabled: !_controller.isSubmitting.value,
                          prefixIcon: Ionicons.phone_portrait_outline,
                          labelText: 'Numéro de téléphone',
                          hintText: 'Numéro de téléphone',
                          inputType: TextInputType.phone,
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
