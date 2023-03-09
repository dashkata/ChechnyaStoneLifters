import 'package:checheneca/presentation/resources/router.dart';
import 'package:checheneca/utils/get_it.dart';
import 'package:flutter/material.dart';

import 'domain/models/guard_request.dart';
import 'domain/models/user.dart';

final User user1 = User(1, 'PurvoIme VtoroIme');
final User user2 = User(2, 'VtoroIme PurvoIme');
final List<GuardRequest> requests = [
  GuardRequest(
    id: 1,
    startAddress: 'Bankya, st. Samo Sinite',
    date: DateTime(1),
    creator: user1,
  ),
  GuardRequest(
    id: 2,
    startAddress: 'Bankya, st. Samo Sinite',
    date: DateTime(2),
    creator: user2,
  ),
  GuardRequest(
    id: 3,
    startAddress: 'Bankya, st. Samo Sinite',
    date: DateTime(1111),
    creator: user1,
  ),
];

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
        initialRoute: Routes.requests,
      );
}
