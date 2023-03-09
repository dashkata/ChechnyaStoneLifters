import 'package:checheneca/presentation/resources/vm_builder.dart';
import 'package:checheneca/presentation/screens/create_request/create_request_vm.dart';
import 'package:flutter/material.dart';

import '../../utils/get_it.dart';
import '../screens/create_request/create_request.dart';

class Routes {
  static const String createRequest = 'create_request';
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
      default:
        return MaterialPageRoute(builder: (context) => const SizedBox.shrink());
    }
  }
}
