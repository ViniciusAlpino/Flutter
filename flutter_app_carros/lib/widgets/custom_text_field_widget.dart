import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onPressed;
  final String label;
  final bool obscureText;

  const CustomTextFieldWidget({
    super.key,
    required this.onPressed,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(label)),
      onChanged: onPressed,
      obscureText: obscureText,
    );
  }
}
