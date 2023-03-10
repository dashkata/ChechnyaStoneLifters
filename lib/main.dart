import 'package:checheneca/presentation/resources/router.dart';
import 'package:checheneca/utils/get_it.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
