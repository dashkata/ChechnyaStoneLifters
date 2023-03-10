import 'package:flutter/material.dart';

import '../../../main.dart';
import 'components/request_card.dart';

class AvailableRequestsScreen extends StatelessWidget {
  const AvailableRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Available requests'),
        ),
        body: ListView.builder(
          itemCount: requests.length,
          itemBuilder: (BuildContext context, int index) => RequestCard(
            guardRequest: requests[index],
          ),
        ),
      );
}
