import 'package:flutter/material.dart';

import '../../../../domain/models/request_model.dart';
import '../../../resources/router.dart';
import '../../../resources/themes.dart';
import '../../../widgets/icon_text_widget.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    required this.guardRequest,
    super.key,
  });

  final RequestModel guardRequest;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => Navigator.pushReplacementNamed(
          context,
          Routes.requestDescriptionScreen,
          arguments: guardRequest,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            elevation: 8,
            shape: StadiumBorder(
              side: BorderSide(
                color: Themes.accentColor,
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  IconTextWidget(
                    text: guardRequest.user.name,
                    icon: Icons.person,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  IconTextWidget(
                    text: 'Date - ${guardRequest.date}',
                    icon: Icons.calendar_month_outlined,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  IconTextWidget(
                    text: 'Starting point - ${guardRequest.startingAddress}',
                    icon: Icons.location_pin,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
