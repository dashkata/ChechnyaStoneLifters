import 'package:checheneca/presentation/resources/vm_builder.dart';
import 'package:checheneca/presentation/screens/create_request/create_request_vm.dart';
import 'package:checheneca/presentation/screens/requests/requests.dart';
import 'package:checheneca/presentation/screens/requests/requests_vm.dart';
import 'package:flutter/material.dart';

import '../../utils/get_it.dart';
import '../screens/create_request/create_request.dart';

class Routes {
  static const String createRequest = 'create_request';
  static const String requests = 'requests';
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
      default:
        return MaterialPageRoute(builder: (context) => const SizedBox.shrink());
    }
  }
}
