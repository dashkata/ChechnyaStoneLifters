part of '../create_request.dart';

class _SkillsList extends StatelessWidget {
  const _SkillsList({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  final CreateRequestViewModel viewModel;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select bodyguard skills: ',
              style: TextStyle(
                color: Themes.accentColor,
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
                border: Border.all(
                  color: Themes.accentColor,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.7,
                ),
                itemCount: viewModel.skillsCheck.length,
                itemBuilder: (_, index) => Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 30,
                      child: Checkbox(
                        value: viewModel.skillsCheck.values.elementAt(index),
                        onChanged: (value) => viewModel.changeCheckbox(
                          index,
                          value!,
                        ),
                        fillColor: MaterialStateColor.resolveWith(
                          (states) => Themes.complementaryColor,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        viewModel.skillsCheck.keys.elementAt(index),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
