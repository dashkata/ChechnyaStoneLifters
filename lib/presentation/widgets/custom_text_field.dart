import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    required this.controller,
    this.maxLength,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;
  final int? maxLength;

  @override
  Widget build(BuildContext context) => TextField(
        decoration: InputDecoration(
          label: Text(label),
        ),
        controller: controller,
        maxLength: maxLength,
      );
}
