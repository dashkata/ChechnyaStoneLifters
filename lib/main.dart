import 'package:checheneca/presentation/resources/router.dart';
import 'package:checheneca/utils/get_it.dart';
import 'package:flutter/material.dart';

import 'domain/models/guard_request.dart';
import 'domain/models/user.dart';

final User user1 = User(1, 'PurvoIme VtoroIme');
final User user2 = User(2, 'VtoroIme PurvoIme');
final List<GuardRequest> requests = [];

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.createRequest,
      );
}
