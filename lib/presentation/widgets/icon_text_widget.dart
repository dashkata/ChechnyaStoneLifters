import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    required this.text,
    required this.icon,
    required this.fontSize,
    required this.fontWeight,
    super.key,
  });

  final IconData icon;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          bottom: 8.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      );
}
