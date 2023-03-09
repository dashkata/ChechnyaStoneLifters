import 'package:checheneca/presentation/screens/create_request/create_request_vm.dart';
import 'package:checheneca/presentation/widgets/custom_text_field.dart';
import 'package:checheneca/presentation/widgets/unfocus_detector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/bodyguard_type_enum.dart';

part 'widgets/skills_list.dart';

part 'widgets/custom_radio_tile.dart';

class CreateRequestScreen extends StatelessWidget {
  const CreateRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnfocusDetector(
      child: SafeArea(
        child: Scaffold(
          body: Consumer<CreateRequestViewModel>(
            builder: (context, viewModel, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    _CustomRadioTile(
                      bodyGuard: BodyGuardType.driver,
                      viewModel: viewModel,
                    ),
                    _CustomRadioTile(
                      bodyGuard: BodyGuardType.security,
                      viewModel: viewModel,
                    ),
                  ],
                ),
                CustomTextField(
                  label: 'Description',
                  controller: viewModel.descriptionController,
                  maxLength: 250,
                ),
                CustomTextField(
                  label: 'Starting address',
                  controller: viewModel.descriptionController,
                ),
                viewModel.bodyGuardType == BodyGuardType.driver
                    ? CustomTextField(
                        label: 'Ending address',
                        controller: viewModel.descriptionController,
                      )
                    : const SizedBox.shrink(),
                _SkillsList(
                  viewModel: viewModel,
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
