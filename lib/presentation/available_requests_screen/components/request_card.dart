import 'package:flutter/material.dart';

import '../../../domain/models/guard_request.dart';
import '../../global_widgets/icon_text_widget.dart';
import '../../resources/router.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    required this.guardRequest,
    super.key,
  });

  final RequestModel guardRequest;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            Routes.requestDescriptionScreen,
            arguments: guardRequest,
          );
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
                  text: guardRequest.user.name,
                  icon: Icons.person,
                ),
                IconTextWidget(
                  text: 'Date - ${guardRequest.date}',
                  icon: Icons.calendar_month_outlined,
                ),
                IconTextWidget(
                  text: 'Starting point - ${guardRequest.startingAddress}',
                  icon: Icons.location_pin,
                ),
              ],
            ),
          ),
        ),
      );
}
