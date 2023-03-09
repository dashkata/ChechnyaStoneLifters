import 'package:checheneca/presentation/screens/create_request/create_request_vm.dart';
import 'package:checheneca/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateRequestScreen extends StatelessWidget {
  const CreateRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<CreateRequestViewModel>(
          builder: (context, viewModel, child) => Column(
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
              ElevatedButton(
                onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (_) => Container(),
                ),
                child: const Text(
                  'Select skills',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
