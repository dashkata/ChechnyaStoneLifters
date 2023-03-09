import 'package:checheneca/presentation/screens/requests/requests_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../available_requests_screen/components/request_card.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: context.watch<RequestsViewModel>().isLoading
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: context.read<RequestsViewModel>().requests.length,
                  itemBuilder: (_, index) => RequestCard(
                    guardRequest:
                        context.read<RequestsViewModel>().requests[index],
                  ),
                ),
        ),
      );
}