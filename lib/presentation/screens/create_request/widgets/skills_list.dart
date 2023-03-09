part of '../create_request.dart';

class _SkillsList extends StatelessWidget {
  const _SkillsList({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  final CreateRequestViewModel viewModel;

  @override
  Widget build(BuildContext context) => GridView(
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
      );
}
