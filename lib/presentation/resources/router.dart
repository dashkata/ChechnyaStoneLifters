import 'package:flutter/material.dart';

import '../../utils/get_it.dart';
import '../available_requests_screen/available_requests_view.dart';
import '../available_requests_screen/available_requests_view_model.dart';
import 'vm_builder.dart';

class Routes {}

class AppRouter {
  static const String availableRequestsScreen = 'available-requests-screen';
  static const String requestDescriptionScreen = 'request-description-screen';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case availableRequestsScreen:
        return MaterialPageRoute(
          builder: (context) => ViewModelBuilder<AvailableRequestsVM>(
            builder: (context, viewModel) => const AvailableRequestsScreen(),
            viewModelBuilder: getIt<AvailableRequestsVM>,
          ),
        );
      case requestDescriptionScreen:
      default:
        return MaterialPageRoute(builder: (context) => const SizedBox.shrink());
    }
  }
}
