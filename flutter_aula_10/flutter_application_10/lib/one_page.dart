import 'package:flutter/material.dart';
import 'package:flutter_application_10/custom_button_widget.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Page 1'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      backgroundColor: Colors.purple.shade300,
      body: Center(
        child: CustomButtonWidget(
          disabled: false,
          onPressed: () {},
          title: 'Custom BTN',
          titleSize: 20,
          ),
        ),
      );
  }
}
