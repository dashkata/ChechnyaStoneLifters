import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    required this.text,
    required this.icon,
    super.key,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Icon(icon),
          Text(text),
        ],
      );
}
