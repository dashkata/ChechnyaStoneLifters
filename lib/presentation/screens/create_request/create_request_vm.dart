import 'package:checheneca/utils/bodyguard_type_enum.dart';
import 'package:flutter/cupertino.dart';

class CreateRequestViewModel extends ChangeNotifier {
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController startingAddressController =
      TextEditingController();
  final List<bool> checkBoxList = [];
  List<String> skills = ['driver', 'weapon', ' kyr'];
  Map<String, bool> skillsCheck = {};
  BodyGuardType _bodyGuardType = BodyGuardType.security;

  get bodyGuardType => _bodyGuardType;

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
    // skillsCheck.map((key, value) => )
  }
}
