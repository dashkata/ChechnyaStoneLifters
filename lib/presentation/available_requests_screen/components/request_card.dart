import 'package:flutter/material.dart';

import '../../global_widgets/icon_text_widget.dart';
import '../../resources/router.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    required this.name,
    required this.date,
    required this.startingPoint,
    super.key,
  });

  final String name;
  final String date;
  final String startingPoint;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.requestDescriptionScreen);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconTextWidget(
                  text: name,
                  icon: Icons.person,
                ),
                IconTextWidget(
                  text: 'Date - $date',
                  icon: Icons.calendar_month_outlined,
                ),
                IconTextWidget(
                  text: 'Starting point - $startingPoint',
                  icon: Icons.location_pin,
                ),
              ],
            ),
          ),
        ),
      );
}
