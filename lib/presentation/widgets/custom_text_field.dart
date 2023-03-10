import 'package:flutter/material.dart';

import '../resources/themes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.label,
    required this.controller,
    Key? key,
    this.maxLength,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;
  final int? maxLength;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: TextField(
          maxLines: null,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            label: Text(
              label,
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
          ),
          controller: controller,
          maxLength: maxLength,
        ),
      );
}
