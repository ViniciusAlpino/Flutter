import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? titleSize;
  final bool disabled;
  const CustomButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.disabled,
    required this.titleSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      child: Text(title),
      style: ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith((states) {
          if(states.contains(WidgetState.pressed))
          return TextStyle(
            fontSize: titleSize != null? titleSize! *2 : 28,);
            return TextStyle(fontSize: titleSize);
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((state) {
          return Colors.white;
        }),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((state) {
          if (state.contains(WidgetState.disabled)) return Colors.red;
          if (state.contains(WidgetState.pressed)) return Colors.green;
          return Colors.black;
        }),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),
          )
        ),
      ),
    );
  }
}
