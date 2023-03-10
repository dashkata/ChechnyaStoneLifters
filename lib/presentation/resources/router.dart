import 'package:flutter/material.dart';

import '../../domain/models/request_model.dart';
import '../../utils/get_it.dart';
import '../screens/available_requests_screen/available_requests_view.dart';
import '../screens/available_requests_screen/available_requests_view_model.dart';
import '../screens/create_request/create_request.dart';
import '../screens/create_request/create_request_vm.dart';
import '../screens/request_description_screen/request_description_view.dart';
import '../screens/request_description_screen/request_description_viewmodel.dart';
import '../screens/requests/requests.dart';
import '../screens/requests/requests_vm.dart';
import 'vm_builder.dart';

class Routes {
  static const String createRequest = 'create_request';
  static const String requests = 'requests';
  static const String availableRequestsScreen = 'available_requests_screen';
  static const String requestDescriptionScreen = 'request_description_screen';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.createRequest:
        return MaterialPageRoute(
          builder: (context) => ViewModelBuilder<CreateRequestViewModel>(
            builder: (context, viewmodel) => const CreateRequestScreen(),
            onModelReady: (viewmodel) => viewmodel.init(),
            viewModelBuilder: getIt<CreateRequestViewModel>,
          ),
        );
      case Routes.requests:
        return MaterialPageRoute(
          builder: (context) => ViewModelBuilder<RequestsViewModel>(
            builder: (context, viewmodel) => const RequestsScreen(),
            onModelReady: (viewmodel) => viewmodel.init(),
            viewModelBuilder: getIt<RequestsViewModel>,
          ),
        );
      case Routes.availableRequestsScreen:
        return MaterialPageRoute(
          builder: (context) => ViewModelBuilder<AvailableRequestsVM>(
            builder: (context, viewModel) => const AvailableRequestsScreen(),
            onModelReady: (viewmodel) => viewmodel.init(),
            viewModelBuilder: getIt<AvailableRequestsVM>,
          ),
        );
      case Routes.requestDescriptionScreen:
        return MaterialPageRoute(
          builder: (context) => ViewModelBuilder<RequestDescriptionVM>(
            builder: (context, viewModel) => RequestDescriptionScreen(
              guardRequest: settings.arguments as RequestModel,
            ),
            viewModelBuilder: getIt<RequestDescriptionVM>,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SizedBox.shrink(),
        );
    }
  }
}
