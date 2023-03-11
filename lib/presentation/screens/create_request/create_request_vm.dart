import 'dart:math';

import 'package:checheneca/utils/bodyguard_type_enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/models/request_model.dart';
import '../../../domain/models/user.dart';
import '../../../domain/repositories/request_repo.dart';

class CreateRequestViewModel extends ChangeNotifier {
  CreateRequestViewModel({
    required RequestRepo requestRepo,
  }) : _requestRepo = requestRepo;
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController startingAddressController =
      TextEditingController();
  final TextEditingController endingAddressController = TextEditingController();
  final TextEditingController rentHoursController = TextEditingController();
  final RequestRepo _requestRepo;
  DateTime? pickedDate;
  TimeOfDay? pickedTime;
  DateTime? _selectedDateTime;
  List<String> skills = ['Gun', 'Vehicle'];
  Map<String, bool> skillsCheck = {};
  BodyGuardType _bodyGuardType = BodyGuardType.driver;

  BodyGuardType get bodyGuardType => _bodyGuardType;

  Future<void> init() async {
    for (final skill in skills) {
      skillsCheck[skill] = false;
    }
  }

  void changeCheckbox(int index, bool newValue) {
    skillsCheck.update(skillsCheck.keys.elementAt(index), (value) => newValue);
    notifyListeners();
  }

  void changeRadioTile(BodyGuardType? bodyGuardType) {
    if (bodyGuardType != null) {
      _bodyGuardType = bodyGuardType;
    }
    notifyListeners();
  }

  Future<void> submitRequest() async {
    await _requestRepo.createRequest(
      request: RequestModel(
        id: 0,
        startingAddress: startingAddressController.text,
        date: _selectedDateTime ?? DateTime.now(),
        user: UserModel(Random().nextInt(4) + 1, ''),
        description: descriptionController.text,
        isDriver: _bodyGuardType == BodyGuardType.driver,
        endAddress: endingAddressController.text,
        hasGun: skillsCheck['Gun'] ?? false,
        isGuard: _bodyGuardType == BodyGuardType.security,
        hasVehicle: skillsCheck['Vehicle'] ?? false,
        rentHours: int.parse(rentHoursController.text),
      ),
    );
  }

  void setPickedDate() {
    if (pickedDate != null && pickedTime != null) {
      _selectedDateTime = DateTime(
        pickedDate!.year,
        pickedDate!.month,
        pickedDate!.day,
        pickedTime!.hour,
        pickedTime!.minute,
      );
      notifyListeners();
    }
  }

  String? getTimeAsString() {
    if (_selectedDateTime != null) {
      return DateFormat('EEE, MMM d, yyyy, hh:mm a').format(_selectedDateTime!);
    }
    return null;
  }
}
