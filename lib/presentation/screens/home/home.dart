import 'package:flutter/material.dart';

import '../../resources/router.dart';
import '../../resources/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(
                    context,
                    Routes.availableRequestsScreen,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Themes.complementaryColor,
                  ),
                  child: const Text(
                    'Bodyguard',
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(
                    context,
                    Routes.requests,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Themes.complementaryColor,
                  ),
                  child: const Text(
                    'Client',
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
