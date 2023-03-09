import 'package:flutter/material.dart';

import '../../global_widgets/icon_text_widget.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                IconTextWidget(
                  text: 'Ime Familiq',
                  icon: Icons.person,
                ),
                IconTextWidget(
                  text: 'Date - ',
                  icon: Icons.calendar_month_outlined,
                ),
                IconTextWidget(
                  text: 'Starting point - ',
                  icon: Icons.location_pin,
                ),
              ],
            ),
          ),
        ),
      );
}
