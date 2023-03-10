part of '../create_request.dart';

class _CustomRadioTile extends StatelessWidget {
  const _CustomRadioTile({
    required this.bodyGuard,
    required this.viewModel,
  });

  final BodyGuardType bodyGuard;
  final CreateRequestViewModel viewModel;

  @override
  Widget build(BuildContext context) => Expanded(
          child: RadioListTile(
        value: bodyGuard,
        groupValue: viewModel.bodyGuardType,
        onChanged: viewModel.changeRadioTile,
        title: Text(
          bodyGuard.name,
          style: TextStyle(
            color: Themes.accentColor,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
      )
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SizedBox(
          //       width: 0,
          //       child: Radio<BodyGuardType>(
          //         value: bodyGuard,
          //         groupValue: viewModel.bodyGuardType,
          //         onChanged: viewModel.changeRadioTile,
          //         fillColor: MaterialStateColor.resolveWith(
          //           (states) => Themes.complementaryColor,
          //         ),
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 20,
          //     ),

          // ),
          );
}
