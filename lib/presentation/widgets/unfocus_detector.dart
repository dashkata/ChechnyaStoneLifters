import 'package:flutter/material.dart';

class UnfocusDetector extends StatelessWidget {
  const UnfocusDetector({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: child,
      );
}
