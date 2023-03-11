import 'package:checheneca/presentation/screens/create_request/create_request_vm.dart';
import 'package:checheneca/presentation/widgets/custom_text_field.dart';
import 'package:checheneca/presentation/widgets/unfocus_detector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/bodyguard_type_enum.dart';
import '../../resources/router.dart';
import '../../resources/themes.dart';
import 'widgets/date_time_row.dart';

part 'widgets/skills_list.dart';

part 'widgets/custom_radio_tile.dart';

class CreateRequestScreen extends StatelessWidget {
  const CreateRequestScreen({super.key});

  @override
  Widget build(BuildContext context) => UnfocusDetector(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Themes.complementaryColor,
            title: const Text('Create Request'),
          ),
          body: SafeArea(
            child: Consumer<CreateRequestViewModel>(
              builder: (context, viewModel, child) => SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Select bodyguard type: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: Row(
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
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: DateTimeRow(),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomTextField(
                      label: 'Description',
                      controller: viewModel.descriptionController,
                      maxLength: 250,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      label: 'Starting address',
                      controller: viewModel.startingAddressController,
                      maxLength: 100,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    if (viewModel.bodyGuardType == BodyGuardType.driver)
                      CustomTextField(
                        label: 'Ending address',
                        controller: viewModel.endingAddressController,
                        maxLength: 100,
                      ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      label: 'Rent hours',
                      controller: viewModel.rentHoursController,
                      maxLength: 3,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    _SkillsList(
                      viewModel: viewModel,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      onPressed: () async =>
                          await viewModel.submitRequest().then(
                                (value) => Navigator.pushReplacementNamed(
                                  context,
                                  Routes.requests,
                                ),
                              ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: const StadiumBorder(),
                        side: BorderSide(
                          color: Themes.complementaryColor,
                          width: 3,
                        ),
                      ),
                      child: Text(
                        'Submit request',
                        style: TextStyle(
                          color: Themes.accentColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
