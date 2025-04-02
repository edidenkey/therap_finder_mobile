import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final _controller = BookingController.instance;
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();

  late final MeetingModel? _meeting;
  late final UserObjectModel _doctor;

  @override
  void initState() {
    super.initState();
    _meeting = Get.arguments['meeting'];
    _doctor = _meeting != null ? _meeting!.service!.therapeute : Get.arguments['doctor'];
    _controller.selectedService.value =
        _doctor.services!.firstWhereOrNull((service) => service.id == _meeting?.serviceId);
    _controller.selectedService.value ??= _doctor.services!.first;
    _controller.meetingDateTime = _meeting?.date ?? DateTime.now();
    _formatDateTime();
  }

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  void _formatDateTime() {
    _dateController.text = AppUtils.formatDate(_controller.meetingDateTime);
    _timeController.text = AppUtils.formatTime(_controller.meetingDateTime);
  }

  void _showDatePicker(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _controller.meetingDateTime,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30 * 3)),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(onPrimary: Colors.white),
        ),
        child: child!,
      ),
    );
    if (pickedDate != null) {
      _controller.updateDate(
        year: pickedDate.year,
        month: pickedDate.month,
        day: pickedDate.day,
      );
      _formatDateTime();
    }
  }

  void _showTimePicker(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_controller.meetingDateTime),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(onPrimary: Colors.white),
        ),
        child: child!,
      ),
    );
    if (pickedTime != null) {
      _controller.updateDate(hour: pickedTime.hour, minute: pickedTime.minute);
      _formatDateTime();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _controller.onWillPop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text('Prendre rendez-vous'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => _controller.isSubmitting.value ? null : Get.back(closeOverlays: true),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  children: [
                    ProfileTile(
                      hasPadding: false,
                      title: 'Thérapeute',
                      subtitle: '${_doctor.user!.lastname} ${_doctor.user!.firstname}',
                      icon: Icons.person_rounded,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Sélectionnez le service à offrir :',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.3),
                    ),
                    const SizedBox(height: 15),
                    Obx(
                      () => DropdownButtonFormField(
                        elevation: 4,
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        value: _controller.selectedService.value,
                        onChanged:
                            _controller.isSubmitting.value || _meeting != null ? null : _controller.selectService,
                        items: _doctor.services!
                            .map<DropdownMenuItem<ServiceModel>>((service) => DropdownMenuItem<ServiceModel>(
                                  value: service,
                                  onTap: FocusManager.instance.primaryFocus?.unfocus,
                                  child: Text(service.name),
                                ))
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Sélectionnez la date :',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.3),
                    ),
                    const SizedBox(height: 15),
                    AppTextFormField(
                      controller: _dateController,
                      onTap: () => _showDatePicker(context),
                      prefixIcon: Ionicons.calendar_number_outline,
                      labelText: 'Date',
                      hintText: 'Date',
                      inputType: TextInputType.datetime,
                      enableInteractiveSelection: false,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Sélectionnez l'heure :",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.3),
                    ),
                    const SizedBox(height: 15),
                    AppTextFormField(
                      controller: _timeController,
                      onTap: () => _showTimePicker(context),
                      prefixIcon: Ionicons.time_outline,
                      labelText: 'Heure',
                      hintText: 'Heure',
                      inputType: TextInputType.datetime,
                      enableInteractiveSelection: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Obx(
                  () => AppButton(
                    disabled: !_controller.isFormValid.value,
                    loading: _controller.isSubmitting.value,
                    onPressed: () => _controller.handleSubmit(_meeting?.id),
                    text: 'Enregistrer',
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
