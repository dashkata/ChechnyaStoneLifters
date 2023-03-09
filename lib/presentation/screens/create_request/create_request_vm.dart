import 'package:flutter/cupertino.dart';

class CreateRequestViewModel extends ChangeNotifier {
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController startingAddressController = TextEditingController();
  Future<void> init() async {}
}
