import 'package:flutter/cupertino.dart';

class CreateRequestViewModel extends ChangeNotifier {
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController startingAddressController =
      TextEditingController();
  final List<bool> checkBoxList = [];
  List<String> skills = ['driver', 'weapon', ' kyr'];
  Map<String, bool> skillsCheck = {};

  Future<void> init() async {
    for (final skill in skills) {
      skillsCheck[skill] = false;
    }
  }

  void changeCheckbox(int index, bool newValue) {
    skillsCheck.update(skillsCheck.keys.elementAt(index), (value) => newValue);
    notifyListeners();
  }

  Future<void> submitRequest() async {

    // skillsCheck.map((key, value) => )

  }
}
