import 'package:flutter/material.dart';

class Routes {}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (context) => const SizedBox.shrink());
    }
  }
}
