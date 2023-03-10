import 'package:checheneca/presentation/screens/requests/requests_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/user_type_enum.dart';
import '../../resources/router.dart';
import '../../resources/themes.dart';
import '../available_requests_screen/components/request_card.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Requests'),
          backgroundColor: Themes.complementaryColor,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Themes.complementaryColor,
          onPressed: () => Navigator.pushNamed(
            context,
            Routes.createRequest,
          ),
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: context.watch<RequestsViewModel>().isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Themes.complementaryColor,
                  ),
                )
              : ListView.builder(
                  itemCount: context.read<RequestsViewModel>().requests.length,
                  itemBuilder: (_, index) => RequestCard(
                    userType: UserType.user,
                    guardRequest:
                        context.read<RequestsViewModel>().requests[index],
                  ),
                ),
        ),
      );
}
