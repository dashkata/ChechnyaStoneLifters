import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/user_type_enum.dart';
import '../../resources/themes.dart';
import 'available_requests_view_model.dart';
import 'components/request_card.dart';

class AvailableRequestsScreen extends StatelessWidget {
  const AvailableRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Available requests'),
          backgroundColor: Themes.complementaryColor,
        ),
        body: Consumer<AvailableRequestsVM>(
          builder: (context, viewModel, child) => viewModel.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Themes.complementaryColor,
                  ),
                )
              : ListView.builder(
                  itemCount: viewModel.requests.length,
                  itemBuilder: (BuildContext context, int index) => RequestCard(
                    userType: UserType.bodyguard,
                    guardRequest: viewModel.requests[index],
                  ),
                ),
        ),
      );
}
