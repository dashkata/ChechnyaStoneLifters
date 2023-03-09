import 'package:checheneca/presentation/screens/requests/requests_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: context.watch<RequestsViewModel>().isLoading
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: context.read<RequestsViewModel>().requests.length,
                  itemBuilder: (_, index) => Text(
                    context.read<RequestsViewModel>().requests[index],
                  ),
                ),
        ),
      );
}
