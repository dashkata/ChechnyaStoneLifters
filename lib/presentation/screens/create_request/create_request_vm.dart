import 'package:checheneca/utils/bodyguard_type_enum.dart';
import 'package:flutter/cupertino.dart';

import '../../../domain/models/guard_request.dart';
import '../../../domain/models/user.dart';
import '../../../domain/repositories/request_repo.dart';

class CreateRequestViewModel extends ChangeNotifier {
  CreateRequestViewModel({
    required RequestRepo requestRepo,
  }) : _requestRepo = requestRepo;
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController startingAddressController =
      TextEditingController();
  final List<bool> checkBoxList = [];
  final RequestRepo _requestRepo;
  List<String> skills = ['driver', 'weapon'];
  Map<String, bool> skillsCheck = {};
  BodyGuardType _bodyGuardType = BodyGuardType.security;

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
    final List<String> selectedSkills = [];
    for (final value in skillsCheck.keys) {
      if (skillsCheck[value] != null) {
        if (skillsCheck[value]!) {
          selectedSkills.add(value);
        }
      }
    }
    await _requestRepo.createRequest(
      request: GuardRequest(
        id: 0,
        startAddress: startingAddressController.text,
        date: DateTime.now(),
        creator: User(0, ''),
        description: descriptionController.text,
        skills: selectedSkills,
      ),
    );
  }
}
