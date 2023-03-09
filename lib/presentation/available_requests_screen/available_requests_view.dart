import 'package:flutter/material.dart';

import 'components/request_card.dart';

class AvailableRequestsScreen extends StatelessWidget {
  const AvailableRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: null,
          title: const Text('Available requests'),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => RequestCard(),
        ),
      );
}
