import 'package:checheneca/presentation/resources/themes.dart';
import 'package:flutter/material.dart';

import 'domain/models/guard_request.dart';
import 'domain/models/user.dart';
import 'presentation/resources/router.dart';
import 'utils/get_it.dart';

final User user1 = User(1, 'Alexander Georgiev');
final User user2 = User(2, 'VtoroIme PurvoIme');
final List<RequestModel> requests = [];

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          radioTheme: RadioThemeData(
            fillColor: MaterialStateColor.resolveWith(
              (states) => Themes.complementaryColor,
            ),
          ),
        ),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.requests,
      );
}
