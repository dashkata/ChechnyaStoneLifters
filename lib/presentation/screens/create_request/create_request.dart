import 'package:checheneca/presentation/screens/create_request/create_request_vm.dart';
import 'package:checheneca/presentation/widgets/custom_text_field.dart';
import 'package:checheneca/presentation/widgets/unfocus_detector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateRequestScreen extends StatelessWidget {
  const CreateRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> skills = ['driver', 'weapon'];
    List<bool> skillsValue = [true, false];
    return UnfocusDetector(
      child: SafeArea(
        child: Scaffold(
          body: Consumer<CreateRequestViewModel>(
            builder: (context, viewModel, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  label: 'Description',
                  controller: viewModel.descriptionController,
                  maxLength: 250,
                ),
                CustomTextField(
                  label: 'Starting address',
                  controller: viewModel.descriptionController,
                ),
                GridView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    left: 30,
                    // top: 100,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  children: List.generate(
                    viewModel.skillsCheck.length,
                    (index) => Row(
                      children: [
                        Checkbox(
                          value: viewModel.skillsCheck.values.elementAt(index),
                          onChanged: (value) => viewModel.changeCheckbox(
                            index,
                            value!,
                          ),
                        ),
                        Text(
                          viewModel.skillsCheck.keys.elementAt(index),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async => await viewModel.submitRequest(),
                  child: const Text(
                    'Submit request',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
