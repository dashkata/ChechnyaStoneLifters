part of '../create_request.dart';

class _CustomRadioTile extends StatelessWidget {
  const _CustomRadioTile({
    Key? key,
    required this.bodyGuard,
    required this.viewModel,
  }) : super(key: key);
  final BodyGuardType bodyGuard;
  final CreateRequestViewModel viewModel;

  @override
  Widget build(BuildContext context) => RadioListTile<BodyGuardType>(
        title: Text(bodyGuard.name),
        value: bodyGuard,
        groupValue: viewModel.bodyGuardType,
        onChanged: (value) => viewModel.changeRadioTile(value),
      );
}
